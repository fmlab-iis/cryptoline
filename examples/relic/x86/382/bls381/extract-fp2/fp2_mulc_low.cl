proc main (EA, L0x1505, L0x3e, L0x4003c0, L0x400420, L0x400425, L0x40070d, L0x40070e, L0x40070f, L0x400710, L0x400711, L0x400712, L0x400713, L0x400714, L0x400715, L0x400716, L0x400717, L0x400718, L0x400719, L0x40071a, L0x400826, L0x4008d8, L0x4008e0, L0x46beb0, L0x46bec0, L0x46bf30, L0x46bf90, L0x46c008, L0x46c110, L0x566628, L0x566630, L0x566638, L0x566640, L0x566648, L0x566650, L0x7ffff7b5b430, L0x7ffff7b5b434, L0x7ffff7b5b436, L0x7ffff7b5b438, L0x7ffff7b602c0, L0x7ffff7dd0d88, L0x7ffff7dd0d98, L0x7ffff7dd2421, L0x7ffff7dd2429, L0x7ffff7dd242e, L0x7ffff7dd4d20, L0x7ffff7dd5170, L0x7ffff7dd5a78, L0x7ffff7ff6000, L0x7ffff7ff6028, L0x7ffff7ff6068, L0x7ffff7ff6070, L0x7ffff7ff62ec, L0x7ffff7ff62f0, L0x7ffff7ff62f4, L0x7ffff7ff62f8, L0x7ffff7ff6300, L0x7ffff7ff6308, L0x7ffff7ff6314, L0x7ffff7ff6315, L0x7ffff7ff6330, L0x7ffff7ff63cc, L0x7ffff7ff6a28, L0x7ffff7ff6a30, L0x7ffff7ff6a50, L0x7ffff7ffcca0, L0x7ffff7ffcce8, L0x7ffff7ffcd50, L0x7ffff7ffd9b8, L0x7ffff7ffe168, L0x7ffff7ffe190, L0x7ffff7ffe1d0, L0x7ffff7ffe1d8, L0x7ffff7ffe260, L0x7ffff7ffe330, L0x7ffff7ffe420, L0x7ffff7ffe428, L0x7ffff7ffe448, L0x7ffff7ffe454, L0x7ffff7ffe458, L0x7ffff7ffe45c, L0x7ffff7ffe460, L0x7ffff7ffe47d, L0x7ffff7ffe4c0, L0x7ffff7ffe4e8, L0x7fffffffc0e0, L0x7fffffffc0e8, L0x7fffffffc0f0, L0x7fffffffc178, L0x7fffffffc194, L0x7fffffffc198, L0x7fffffffc1e0, L0x7fffffffc1e8, L0x7fffffffc1f0, L0x7fffffffc1f8, L0x7fffffffc200, L0x7fffffffc208, L0x7fffffffc228, L0x7fffffffc230, L0x7fffffffc238, L0x7fffffffc244, L0x7fffffffc248, L0x7fffffffc250, L0x7fffffffc258, L0x7fffffffc260, L0x7fffffffc270, L0x7fffffffc278, L0x7fffffffc310, L0x7fffffffc318, L0x7fffffffc380, L0x7fffffffcd40, L0x7fffffffcd48, L0x7fffffffcd50, L0x7fffffffd350, L0x7fffffffd358, L0x7fffffffd360, L0x7fffffffd368, L0x7fffffffd370, L0x7fffffffd378, L0x7fffffffd380, L0x7fffffffd388, L0x7fffffffd390, L0x7fffffffd398, L0x7fffffffd3a0, L0x7fffffffd3a8, L0x7fffffffd3b0, L0x7fffffffd3b8, L0x7fffffffd3c0, L0x7fffffffd3c8, L0x7fffffffd3d0, L0x7fffffffd3d8, L0x7fffffffd3e0, L0x7fffffffd3e8, L0x7fffffffd3f0, L0x7fffffffd3f8, L0x7fffffffd400, L0x7fffffffd408, __gmpn_lshift, __gmpn_rshift, _dl_fixup, _dl_lookup_symbol_x, _rtld_global, _rtld_global_ro, addq, al, ax, bn_lshb_low, bn_rshb_low, bnd, bsf, bt, callq, carry, check_match, cl, cmp, cmpq, cmpw, core_get, dec, div, dl, do_lookup_x, fp2_mulc_low, fp_addd_low, fp_addn_low, fp_muln_low, fp_prime_get, fp_subd_low, fs, ja, jae, je, jg, jle, jmp, jmpq, jne, lea, movhpd, movl, movlpd, movq, movslq, movzbl, movzwl, nopl, pcmpeqb, plt, pmovmskb, pop, psubb, push, pushq, pxor, r10b, r10d, r12, r12d, r13, r13d, r14, r15, r15d, r8d, r9d, rbp, rbx, rdi, rdx, retq, rsi, rsp, sar, sete, shld, shr, shrd, strcmp, subb, test, testb, uint64, xchg, xmm0, xmm1, xmm2, xrstor, xsavec) =
{
  true
  &&
  true
}

(* fp2_mulc_low: *)
(* #callq  0x417fda <fp_addn_low>                  #! PC = 0x4283767 *)
#callq  0x417fda <fp_addn_low>                  #! 0x4283767 = 0x4283767;
(* xor    %rax,%rax                                #! PC = 0x4292570 *)
mov rax 0@uint64;
(* mov    (%rdx),%r11                              #! EA = L0x7fffffffd3e0; Value = 0xcc2702ecb00c12f3; PC = 0x4292573 *)
mov r11 L0x7fffffffd3e0;
(* add    (%rsi),%r11                              #! EA = L0x7fffffffd3b0; Value = 0xdbe30ccfda3f8f9a; PC = 0x4292576 *)
adds carry r11 r11 L0x7fffffffd3b0;
(* mov    %r11,(%rdi)                              #! EA = L0x7fffffffcd60; PC = 0x4292579 *)
mov L0x7fffffffcd60 r11;
(* mov    0x8(%rdx),%r11                           #! EA = L0x7fffffffd3e8; Value = 0x9e986e412d15441d; PC = 0x4292582 *)
mov r11 L0x7fffffffd3e8;
(* adc    0x8(%rsi),%r11                           #! EA = L0x7fffffffd3b8; Value = 0x503ac7e077341649; PC = 0x4292586 *)
adcs carry r11 r11 L0x7fffffffd3b8 carry;
(* mov    %r11,0x8(%rdi)                           #! EA = L0x7fffffffcd68; PC = 0x4292590 *)
mov L0x7fffffffcd68 r11;
(* mov    0x10(%rdx),%r11                          #! EA = L0x7fffffffd3f0; Value = 0x86f0d9c57740f069; PC = 0x4292594 *)
mov r11 L0x7fffffffd3f0;
(* adc    0x10(%rsi),%r11                          #! EA = L0x7fffffffd3c0; Value = 0xb8204e4d53f347c6; PC = 0x4292598 *)
adcs carry r11 r11 L0x7fffffffd3c0 carry;
(* mov    %r11,0x10(%rdi)                          #! EA = L0x7fffffffcd70; PC = 0x4292602 *)
mov L0x7fffffffcd70 r11;
(* mov    0x18(%rdx),%r11                          #! EA = L0x7fffffffd3f8; Value = 0xa11bfbdc54933a3a; PC = 0x4292606 *)
mov r11 L0x7fffffffd3f8;
(* adc    0x18(%rsi),%r11                          #! EA = L0x7fffffffd3c8; Value = 0x9556b7b8bf86a204; PC = 0x4292610 *)
adcs carry r11 r11 L0x7fffffffd3c8 carry;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffcd78; PC = 0x4292614 *)
mov L0x7fffffffcd78 r11;
(* mov    0x20(%rdx),%r11                          #! EA = L0x7fffffffd400; Value = 0x669130b9104fd5b1; PC = 0x4292618 *)
mov r11 L0x7fffffffd400;
(* adc    0x20(%rsi),%r11                          #! EA = L0x7fffffffd3d0; Value = 0xcffc640545f98dd1; PC = 0x4292622 *)
adcs carry r11 r11 L0x7fffffffd3d0 carry;
(* mov    %r11,0x20(%rdi)                          #! EA = L0x7fffffffcd80; PC = 0x4292626 *)
mov L0x7fffffffcd80 r11;
(* mov    0x28(%rdx),%r11                          #! EA = L0x7fffffffd408; Value = 0x1550e902af6321cb; PC = 0x4292630 *)
mov r11 L0x7fffffffd408;
(* adc    0x28(%rsi),%r11                          #! EA = L0x7fffffffd3d8; Value = 0x179e19613154296d; PC = 0x4292634 *)
adcs carry r11 r11 L0x7fffffffd3d8 carry;
(* mov    %r11,0x28(%rdi)                          #! EA = L0x7fffffffcd88; PC = 0x4292638 *)
mov L0x7fffffffcd88 r11;
(* adc    $0x0,%rax                                #! PC = 0x4292642 *)
adc rax rax 0x0@uint64 carry;
(* #retq                                           #! PC = 0x4292646 *)
#retq                                           #! 0x4292646 = 0x4292646;
(* #callq  0x417fda <fp_addn_low>                  #! PC = 0x4283783 *)
#callq  0x417fda <fp_addn_low>                  #! 0x4283783 = 0x4283783;
(* xor    %rax,%rax                                #! PC = 0x4292570 *)
mov rax 0@uint64;
(* mov    (%rdx),%r11                              #! EA = L0x7fffffffd380; Value = 0xc8110b28fcc2318f; PC = 0x4292573 *)
mov r11 L0x7fffffffd380;
(* add    (%rsi),%r11                              #! EA = L0x7fffffffd350; Value = 0x4e7fcc2814fc66de; PC = 0x4292576 *)
adds carry r11 r11 L0x7fffffffd350;
(* mov    %r11,(%rdi)                              #! EA = L0x7fffffffcdc0; PC = 0x4292579 *)
mov L0x7fffffffcdc0 r11;
(* mov    0x8(%rdx),%r11                           #! EA = L0x7fffffffd388; Value = 0x7a7dc5f221361761; PC = 0x4292582 *)
mov r11 L0x7fffffffd388;
(* adc    0x8(%rsi),%r11                           #! EA = L0x7fffffffd358; Value = 0xfb1508e931f91c7b; PC = 0x4292586 *)
adcs carry r11 r11 L0x7fffffffd358 carry;
(* mov    %r11,0x8(%rdi)                           #! EA = L0x7fffffffcdc8; PC = 0x4292590 *)
mov L0x7fffffffcdc8 r11;
(* mov    0x10(%rdx),%r11                          #! EA = L0x7fffffffd390; Value = 0x40e5122034114574; PC = 0x4292594 *)
mov r11 L0x7fffffffd390;
(* adc    0x10(%rsi),%r11                          #! EA = L0x7fffffffd360; Value = 0x6ae9a37b421b5d3b; PC = 0x4292598 *)
adcs carry r11 r11 L0x7fffffffd360 carry;
(* mov    %r11,0x10(%rdi)                          #! EA = L0x7fffffffcdd0; PC = 0x4292602 *)
mov L0x7fffffffcdd0 r11;
(* mov    0x18(%rdx),%r11                          #! EA = L0x7fffffffd398; Value = 0x8835e8f5e91c9fa5; PC = 0x4292606 *)
mov r11 L0x7fffffffd398;
(* adc    0x18(%rsi),%r11                          #! EA = L0x7fffffffd368; Value = 0x99cfddfcf7b331b5; PC = 0x4292610 *)
adcs carry r11 r11 L0x7fffffffd368 carry;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffcdd8; PC = 0x4292614 *)
mov L0x7fffffffcdd8 r11;
(* mov    0x20(%rdx),%r11                          #! EA = L0x7fffffffd3a0; Value = 0x9761002bb49a04e5; PC = 0x4292618 *)
mov r11 L0x7fffffffd3a0;
(* adc    0x20(%rsi),%r11                          #! EA = L0x7fffffffd370; Value = 0xcf9f2e2ff43bb0b2; PC = 0x4292622 *)
adcs carry r11 r11 L0x7fffffffd370 carry;
(* mov    %r11,0x20(%rdi)                          #! EA = L0x7fffffffcde0; PC = 0x4292626 *)
mov L0x7fffffffcde0 r11;
(* mov    0x28(%rdx),%r11                          #! EA = L0x7fffffffd3a8; Value = 0x16548c1ed1c3ed9b; PC = 0x4292630 *)
mov r11 L0x7fffffffd3a8;
(* adc    0x28(%rsi),%r11                          #! EA = L0x7fffffffd378; Value = 0x13b75aea6b8527c2; PC = 0x4292634 *)
adcs carry r11 r11 L0x7fffffffd378 carry;
(* mov    %r11,0x28(%rdi)                          #! EA = L0x7fffffffcde8; PC = 0x4292638 *)
mov L0x7fffffffcde8 r11;
(* adc    $0x0,%rax                                #! PC = 0x4292642 *)
adc rax rax 0x0@uint64 carry;
(* #retq                                           #! PC = 0x4292646 *)
#retq                                           #! 0x4292646 = 0x4292646;
(* #callq  0x418845 <fp_muln_low>                  #! PC = 0x4283808 *)
#callq  0x418845 <fp_muln_low>                  #! 0x4283808 = 0x4283808;
(* mov    %rdx,%rcx                                #! PC = 0x4294725 *)
mov rcx rdx;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd3b0; Value = 0xdbe30ccfda3f8f9a; PC = 0x4294728 *)
mov rax L0x7fffffffd3b0;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd350; PC = 0x4294731 *)
mull rdx rax rax L0x7fffffffd350;
(* mov    %rax,(%rdi)                              #! EA = L0x7fffffffd0d0; PC = 0x4294734 *)
mov L0x7fffffffd0d0 rax;
(* mov    %rdx,%r8                                 #! PC = 0x4294737 *)
mov r8 rdx;
(* xor    %r9,%r9                                  #! PC = 0x4294740 *)
mov r9 0@uint64;
(* xor    %r10,%r10                                #! PC = 0x4294743 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd3b0; Value = 0xdbe30ccfda3f8f9a; PC = 0x4294746 *)
mov rax L0x7fffffffd3b0;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd358; PC = 0x4294749 *)
mull rdx rax rax L0x7fffffffd358;
(* add    %rax,%r8                                 #! PC = 0x4294753 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294756 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294759 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd3b8; Value = 0x503ac7e077341649; PC = 0x4294763 *)
mov rax L0x7fffffffd3b8;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd350; PC = 0x4294767 *)
mull rdx rax rax L0x7fffffffd350;
(* add    %rax,%r8                                 #! PC = 0x4294770 *)
adds carry r8 r8 rax;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x7fffffffd0d8; PC = 0x4294773 *)
mov L0x7fffffffd0d8 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4294777 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294780 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4294784 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd3b0; Value = 0xdbe30ccfda3f8f9a; PC = 0x4294787 *)
mov rax L0x7fffffffd3b0;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd360; PC = 0x4294790 *)
mull rdx rax rax L0x7fffffffd360;
(* add    %rax,%r9                                 #! PC = 0x4294794 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294797 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294800 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd3b8; Value = 0x503ac7e077341649; PC = 0x4294804 *)
mov rax L0x7fffffffd3b8;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd358; PC = 0x4294808 *)
mull rdx rax rax L0x7fffffffd358;
(* add    %rax,%r9                                 #! PC = 0x4294812 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294815 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294818 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd3c0; Value = 0xb8204e4d53f347c6; PC = 0x4294822 *)
mov rax L0x7fffffffd3c0;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd350; PC = 0x4294826 *)
mull rdx rax rax L0x7fffffffd350;
(* add    %rax,%r9                                 #! PC = 0x4294829 *)
adds carry r9 r9 rax;
(* mov    %r9,0x10(%rdi)                           #! EA = L0x7fffffffd0e0; PC = 0x4294832 *)
mov L0x7fffffffd0e0 r9;
(* adc    %rdx,%r10                                #! PC = 0x4294836 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294839 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4294843 *)
mov r9 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd3b0; Value = 0xdbe30ccfda3f8f9a; PC = 0x4294846 *)
mov rax L0x7fffffffd3b0;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd368; PC = 0x4294849 *)
mull rdx rax rax L0x7fffffffd368;
(* add    %rax,%r10                                #! PC = 0x4294853 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4294856 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294859 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd3b8; Value = 0x503ac7e077341649; PC = 0x4294863 *)
mov rax L0x7fffffffd3b8;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd360; PC = 0x4294867 *)
mull rdx rax rax L0x7fffffffd360;
(* add    %rax,%r10                                #! PC = 0x4294871 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4294874 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294877 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd3c0; Value = 0xb8204e4d53f347c6; PC = 0x4294881 *)
mov rax L0x7fffffffd3c0;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd358; PC = 0x4294885 *)
mull rdx rax rax L0x7fffffffd358;
(* add    %rax,%r10                                #! PC = 0x4294889 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4294892 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294895 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd3c8; Value = 0x9556b7b8bf86a204; PC = 0x4294899 *)
mov rax L0x7fffffffd3c8;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd350; PC = 0x4294903 *)
mull rdx rax rax L0x7fffffffd350;
(* add    %rax,%r10                                #! PC = 0x4294906 *)
adds carry r10 r10 rax;
(* mov    %r10,0x18(%rdi)                          #! EA = L0x7fffffffd0e8; PC = 0x4294909 *)
mov L0x7fffffffd0e8 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4294913 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294916 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4294920 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd3b0; Value = 0xdbe30ccfda3f8f9a; PC = 0x4294923 *)
mov rax L0x7fffffffd3b0;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd370; PC = 0x4294926 *)
mull rdx rax rax L0x7fffffffd370;
(* add    %rax,%r8                                 #! PC = 0x4294930 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294933 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294936 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd3b8; Value = 0x503ac7e077341649; PC = 0x4294940 *)
mov rax L0x7fffffffd3b8;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd368; PC = 0x4294944 *)
mull rdx rax rax L0x7fffffffd368;
(* add    %rax,%r8                                 #! PC = 0x4294948 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294951 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294954 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd3c0; Value = 0xb8204e4d53f347c6; PC = 0x4294958 *)
mov rax L0x7fffffffd3c0;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd360; PC = 0x4294962 *)
mull rdx rax rax L0x7fffffffd360;
(* add    %rax,%r8                                 #! PC = 0x4294966 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294969 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294972 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd3c8; Value = 0x9556b7b8bf86a204; PC = 0x4294976 *)
mov rax L0x7fffffffd3c8;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd358; PC = 0x4294980 *)
mull rdx rax rax L0x7fffffffd358;
(* add    %rax,%r8                                 #! PC = 0x4294984 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294987 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294990 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd3d0; Value = 0xcffc640545f98dd1; PC = 0x4294994 *)
mov rax L0x7fffffffd3d0;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd350; PC = 0x4294998 *)
mull rdx rax rax L0x7fffffffd350;
(* add    %rax,%r8                                 #! PC = 0x4295001 *)
adds carry r8 r8 rax;
(* mov    %r8,0x20(%rdi)                           #! EA = L0x7fffffffd0f0; PC = 0x4295004 *)
mov L0x7fffffffd0f0 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4295008 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295011 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4295015 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd3b0; Value = 0xdbe30ccfda3f8f9a; PC = 0x4295018 *)
mov rax L0x7fffffffd3b0;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd378; PC = 0x4295021 *)
mull rdx rax rax L0x7fffffffd378;
(* add    %rax,%r9                                 #! PC = 0x4295025 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295028 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295031 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd3b8; Value = 0x503ac7e077341649; PC = 0x4295035 *)
mov rax L0x7fffffffd3b8;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd370; PC = 0x4295039 *)
mull rdx rax rax L0x7fffffffd370;
(* add    %rax,%r9                                 #! PC = 0x4295043 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295046 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295049 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd3c0; Value = 0xb8204e4d53f347c6; PC = 0x4295053 *)
mov rax L0x7fffffffd3c0;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd368; PC = 0x4295057 *)
mull rdx rax rax L0x7fffffffd368;
(* add    %rax,%r9                                 #! PC = 0x4295061 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295064 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295067 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd3c8; Value = 0x9556b7b8bf86a204; PC = 0x4295071 *)
mov rax L0x7fffffffd3c8;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd360; PC = 0x4295075 *)
mull rdx rax rax L0x7fffffffd360;
(* add    %rax,%r9                                 #! PC = 0x4295079 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295082 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295085 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd3d0; Value = 0xcffc640545f98dd1; PC = 0x4295089 *)
mov rax L0x7fffffffd3d0;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd358; PC = 0x4295093 *)
mull rdx rax rax L0x7fffffffd358;
(* add    %rax,%r9                                 #! PC = 0x4295097 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295100 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295103 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd3d8; Value = 0x179e19613154296d; PC = 0x4295107 *)
mov rax L0x7fffffffd3d8;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd350; PC = 0x4295111 *)
mull rdx rax rax L0x7fffffffd350;
(* add    %rax,%r9                                 #! PC = 0x4295114 *)
adds carry r9 r9 rax;
(* mov    %r9,0x28(%rdi)                           #! EA = L0x7fffffffd0f8; PC = 0x4295117 *)
mov L0x7fffffffd0f8 r9;
(* adc    %rdx,%r10                                #! PC = 0x4295121 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295124 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4295128 *)
mov r9 0@uint64;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd3b8; Value = 0x503ac7e077341649; PC = 0x4295131 *)
mov rax L0x7fffffffd3b8;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd378; PC = 0x4295135 *)
mull rdx rax rax L0x7fffffffd378;
(* add    %rax,%r10                                #! PC = 0x4295139 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295142 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295145 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd3c0; Value = 0xb8204e4d53f347c6; PC = 0x4295149 *)
mov rax L0x7fffffffd3c0;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd370; PC = 0x4295153 *)
mull rdx rax rax L0x7fffffffd370;
(* add    %rax,%r10                                #! PC = 0x4295157 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295160 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295163 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd3c8; Value = 0x9556b7b8bf86a204; PC = 0x4295167 *)
mov rax L0x7fffffffd3c8;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd368; PC = 0x4295171 *)
mull rdx rax rax L0x7fffffffd368;
(* add    %rax,%r10                                #! PC = 0x4295175 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295178 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295181 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd3d0; Value = 0xcffc640545f98dd1; PC = 0x4295185 *)
mov rax L0x7fffffffd3d0;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd360; PC = 0x4295189 *)
mull rdx rax rax L0x7fffffffd360;
(* add    %rax,%r10                                #! PC = 0x4295193 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295196 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295199 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd3d8; Value = 0x179e19613154296d; PC = 0x4295203 *)
mov rax L0x7fffffffd3d8;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd358; PC = 0x4295207 *)
mull rdx rax rax L0x7fffffffd358;
(* add    %rax,%r10                                #! PC = 0x4295211 *)
adds carry r10 r10 rax;
(* mov    %r10,0x30(%rdi)                          #! EA = L0x7fffffffd100; PC = 0x4295214 *)
mov L0x7fffffffd100 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4295218 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295221 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4295225 *)
mov r10 0@uint64;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd3c0; Value = 0xb8204e4d53f347c6; PC = 0x4295228 *)
mov rax L0x7fffffffd3c0;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd378; PC = 0x4295232 *)
mull rdx rax rax L0x7fffffffd378;
(* add    %rax,%r8                                 #! PC = 0x4295236 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295239 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295242 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd3c8; Value = 0x9556b7b8bf86a204; PC = 0x4295246 *)
mov rax L0x7fffffffd3c8;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd370; PC = 0x4295250 *)
mull rdx rax rax L0x7fffffffd370;
(* add    %rax,%r8                                 #! PC = 0x4295254 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295257 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295260 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd3d0; Value = 0xcffc640545f98dd1; PC = 0x4295264 *)
mov rax L0x7fffffffd3d0;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd368; PC = 0x4295268 *)
mull rdx rax rax L0x7fffffffd368;
(* add    %rax,%r8                                 #! PC = 0x4295272 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295275 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295278 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd3d8; Value = 0x179e19613154296d; PC = 0x4295282 *)
mov rax L0x7fffffffd3d8;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd360; PC = 0x4295286 *)
mull rdx rax rax L0x7fffffffd360;
(* add    %rax,%r8                                 #! PC = 0x4295290 *)
adds carry r8 r8 rax;
(* mov    %r8,0x38(%rdi)                           #! EA = L0x7fffffffd108; PC = 0x4295293 *)
mov L0x7fffffffd108 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4295297 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295300 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4295304 *)
mov r8 0@uint64;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd3c8; Value = 0x9556b7b8bf86a204; PC = 0x4295307 *)
mov rax L0x7fffffffd3c8;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd378; PC = 0x4295311 *)
mull rdx rax rax L0x7fffffffd378;
(* add    %rax,%r9                                 #! PC = 0x4295315 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295318 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295321 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd3d0; Value = 0xcffc640545f98dd1; PC = 0x4295325 *)
mov rax L0x7fffffffd3d0;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd370; PC = 0x4295329 *)
mull rdx rax rax L0x7fffffffd370;
(* add    %rax,%r9                                 #! PC = 0x4295333 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295336 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295339 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd3d8; Value = 0x179e19613154296d; PC = 0x4295343 *)
mov rax L0x7fffffffd3d8;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd368; PC = 0x4295347 *)
mull rdx rax rax L0x7fffffffd368;
(* add    %rax,%r9                                 #! PC = 0x4295351 *)
adds carry r9 r9 rax;
(* mov    %r9,0x40(%rdi)                           #! EA = L0x7fffffffd110; PC = 0x4295354 *)
mov L0x7fffffffd110 r9;
(* adc    %rdx,%r10                                #! PC = 0x4295358 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295361 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4295365 *)
mov r9 0@uint64;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd3d0; Value = 0xcffc640545f98dd1; PC = 0x4295368 *)
mov rax L0x7fffffffd3d0;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd378; PC = 0x4295372 *)
mull rdx rax rax L0x7fffffffd378;
(* add    %rax,%r10                                #! PC = 0x4295376 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295379 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295382 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd3d8; Value = 0x179e19613154296d; PC = 0x4295386 *)
mov rax L0x7fffffffd3d8;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd370; PC = 0x4295390 *)
mull rdx rax rax L0x7fffffffd370;
(* add    %rax,%r10                                #! PC = 0x4295394 *)
adds carry r10 r10 rax;
(* mov    %r10,0x48(%rdi)                          #! EA = L0x7fffffffd118; PC = 0x4295397 *)
mov L0x7fffffffd118 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4295401 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295404 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd3d8; Value = 0x179e19613154296d; PC = 0x4295408 *)
mov rax L0x7fffffffd3d8;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd378; PC = 0x4295412 *)
mull rdx rax rax L0x7fffffffd378;
(* add    %rax,%r8                                 #! PC = 0x4295416 *)
adds carry r8 r8 rax;
(* mov    %r8,0x50(%rdi)                           #! EA = L0x7fffffffd120; PC = 0x4295419 *)
mov L0x7fffffffd120 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4295423 *)
adc r9 r9 rdx carry;
(* mov    %r9,0x58(%rdi)                           #! EA = L0x7fffffffd128; PC = 0x4295426 *)
mov L0x7fffffffd128 r9;
(* #retq                                           #! PC = 0x4295430 *)
#retq                                           #! 0x4295430 = 0x4295430;
(* #callq  0x418845 <fp_muln_low>                  #! PC = 0x4283822 *)
#callq  0x418845 <fp_muln_low>                  #! 0x4283822 = 0x4283822;
(* mov    %rdx,%rcx                                #! PC = 0x4294725 *)
mov rcx rdx;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd3e0; Value = 0xcc2702ecb00c12f3; PC = 0x4294728 *)
mov rax L0x7fffffffd3e0;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd380; PC = 0x4294731 *)
mull rdx rax rax L0x7fffffffd380;
(* mov    %rax,(%rdi)                              #! EA = L0x7fffffffd1e0; PC = 0x4294734 *)
mov L0x7fffffffd1e0 rax;
(* mov    %rdx,%r8                                 #! PC = 0x4294737 *)
mov r8 rdx;
(* xor    %r9,%r9                                  #! PC = 0x4294740 *)
mov r9 0@uint64;
(* xor    %r10,%r10                                #! PC = 0x4294743 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd3e0; Value = 0xcc2702ecb00c12f3; PC = 0x4294746 *)
mov rax L0x7fffffffd3e0;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd388; PC = 0x4294749 *)
mull rdx rax rax L0x7fffffffd388;
(* add    %rax,%r8                                 #! PC = 0x4294753 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294756 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294759 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd3e8; Value = 0x9e986e412d15441d; PC = 0x4294763 *)
mov rax L0x7fffffffd3e8;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd380; PC = 0x4294767 *)
mull rdx rax rax L0x7fffffffd380;
(* add    %rax,%r8                                 #! PC = 0x4294770 *)
adds carry r8 r8 rax;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x7fffffffd1e8; PC = 0x4294773 *)
mov L0x7fffffffd1e8 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4294777 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294780 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4294784 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd3e0; Value = 0xcc2702ecb00c12f3; PC = 0x4294787 *)
mov rax L0x7fffffffd3e0;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd390; PC = 0x4294790 *)
mull rdx rax rax L0x7fffffffd390;
(* add    %rax,%r9                                 #! PC = 0x4294794 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294797 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294800 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd3e8; Value = 0x9e986e412d15441d; PC = 0x4294804 *)
mov rax L0x7fffffffd3e8;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd388; PC = 0x4294808 *)
mull rdx rax rax L0x7fffffffd388;
(* add    %rax,%r9                                 #! PC = 0x4294812 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294815 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294818 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd3f0; Value = 0x86f0d9c57740f069; PC = 0x4294822 *)
mov rax L0x7fffffffd3f0;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd380; PC = 0x4294826 *)
mull rdx rax rax L0x7fffffffd380;
(* add    %rax,%r9                                 #! PC = 0x4294829 *)
adds carry r9 r9 rax;
(* mov    %r9,0x10(%rdi)                           #! EA = L0x7fffffffd1f0; PC = 0x4294832 *)
mov L0x7fffffffd1f0 r9;
(* adc    %rdx,%r10                                #! PC = 0x4294836 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294839 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4294843 *)
mov r9 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd3e0; Value = 0xcc2702ecb00c12f3; PC = 0x4294846 *)
mov rax L0x7fffffffd3e0;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd398; PC = 0x4294849 *)
mull rdx rax rax L0x7fffffffd398;
(* add    %rax,%r10                                #! PC = 0x4294853 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4294856 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294859 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd3e8; Value = 0x9e986e412d15441d; PC = 0x4294863 *)
mov rax L0x7fffffffd3e8;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd390; PC = 0x4294867 *)
mull rdx rax rax L0x7fffffffd390;
(* add    %rax,%r10                                #! PC = 0x4294871 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4294874 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294877 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd3f0; Value = 0x86f0d9c57740f069; PC = 0x4294881 *)
mov rax L0x7fffffffd3f0;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd388; PC = 0x4294885 *)
mull rdx rax rax L0x7fffffffd388;
(* add    %rax,%r10                                #! PC = 0x4294889 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4294892 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294895 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd3f8; Value = 0xa11bfbdc54933a3a; PC = 0x4294899 *)
mov rax L0x7fffffffd3f8;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd380; PC = 0x4294903 *)
mull rdx rax rax L0x7fffffffd380;
(* add    %rax,%r10                                #! PC = 0x4294906 *)
adds carry r10 r10 rax;
(* mov    %r10,0x18(%rdi)                          #! EA = L0x7fffffffd1f8; PC = 0x4294909 *)
mov L0x7fffffffd1f8 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4294913 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294916 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4294920 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd3e0; Value = 0xcc2702ecb00c12f3; PC = 0x4294923 *)
mov rax L0x7fffffffd3e0;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd3a0; PC = 0x4294926 *)
mull rdx rax rax L0x7fffffffd3a0;
(* add    %rax,%r8                                 #! PC = 0x4294930 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294933 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294936 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd3e8; Value = 0x9e986e412d15441d; PC = 0x4294940 *)
mov rax L0x7fffffffd3e8;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd398; PC = 0x4294944 *)
mull rdx rax rax L0x7fffffffd398;
(* add    %rax,%r8                                 #! PC = 0x4294948 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294951 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294954 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd3f0; Value = 0x86f0d9c57740f069; PC = 0x4294958 *)
mov rax L0x7fffffffd3f0;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd390; PC = 0x4294962 *)
mull rdx rax rax L0x7fffffffd390;
(* add    %rax,%r8                                 #! PC = 0x4294966 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294969 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294972 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd3f8; Value = 0xa11bfbdc54933a3a; PC = 0x4294976 *)
mov rax L0x7fffffffd3f8;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd388; PC = 0x4294980 *)
mull rdx rax rax L0x7fffffffd388;
(* add    %rax,%r8                                 #! PC = 0x4294984 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294987 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294990 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd400; Value = 0x669130b9104fd5b1; PC = 0x4294994 *)
mov rax L0x7fffffffd400;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd380; PC = 0x4294998 *)
mull rdx rax rax L0x7fffffffd380;
(* add    %rax,%r8                                 #! PC = 0x4295001 *)
adds carry r8 r8 rax;
(* mov    %r8,0x20(%rdi)                           #! EA = L0x7fffffffd200; PC = 0x4295004 *)
mov L0x7fffffffd200 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4295008 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295011 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4295015 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd3e0; Value = 0xcc2702ecb00c12f3; PC = 0x4295018 *)
mov rax L0x7fffffffd3e0;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd3a8; PC = 0x4295021 *)
mull rdx rax rax L0x7fffffffd3a8;
(* add    %rax,%r9                                 #! PC = 0x4295025 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295028 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295031 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd3e8; Value = 0x9e986e412d15441d; PC = 0x4295035 *)
mov rax L0x7fffffffd3e8;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd3a0; PC = 0x4295039 *)
mull rdx rax rax L0x7fffffffd3a0;
(* add    %rax,%r9                                 #! PC = 0x4295043 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295046 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295049 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd3f0; Value = 0x86f0d9c57740f069; PC = 0x4295053 *)
mov rax L0x7fffffffd3f0;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd398; PC = 0x4295057 *)
mull rdx rax rax L0x7fffffffd398;
(* add    %rax,%r9                                 #! PC = 0x4295061 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295064 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295067 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd3f8; Value = 0xa11bfbdc54933a3a; PC = 0x4295071 *)
mov rax L0x7fffffffd3f8;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd390; PC = 0x4295075 *)
mull rdx rax rax L0x7fffffffd390;
(* add    %rax,%r9                                 #! PC = 0x4295079 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295082 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295085 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd400; Value = 0x669130b9104fd5b1; PC = 0x4295089 *)
mov rax L0x7fffffffd400;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd388; PC = 0x4295093 *)
mull rdx rax rax L0x7fffffffd388;
(* add    %rax,%r9                                 #! PC = 0x4295097 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295100 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295103 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd408; Value = 0x1550e902af6321cb; PC = 0x4295107 *)
mov rax L0x7fffffffd408;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd380; PC = 0x4295111 *)
mull rdx rax rax L0x7fffffffd380;
(* add    %rax,%r9                                 #! PC = 0x4295114 *)
adds carry r9 r9 rax;
(* mov    %r9,0x28(%rdi)                           #! EA = L0x7fffffffd208; PC = 0x4295117 *)
mov L0x7fffffffd208 r9;
(* adc    %rdx,%r10                                #! PC = 0x4295121 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295124 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4295128 *)
mov r9 0@uint64;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd3e8; Value = 0x9e986e412d15441d; PC = 0x4295131 *)
mov rax L0x7fffffffd3e8;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd3a8; PC = 0x4295135 *)
mull rdx rax rax L0x7fffffffd3a8;
(* add    %rax,%r10                                #! PC = 0x4295139 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295142 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295145 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd3f0; Value = 0x86f0d9c57740f069; PC = 0x4295149 *)
mov rax L0x7fffffffd3f0;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd3a0; PC = 0x4295153 *)
mull rdx rax rax L0x7fffffffd3a0;
(* add    %rax,%r10                                #! PC = 0x4295157 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295160 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295163 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd3f8; Value = 0xa11bfbdc54933a3a; PC = 0x4295167 *)
mov rax L0x7fffffffd3f8;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd398; PC = 0x4295171 *)
mull rdx rax rax L0x7fffffffd398;
(* add    %rax,%r10                                #! PC = 0x4295175 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295178 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295181 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd400; Value = 0x669130b9104fd5b1; PC = 0x4295185 *)
mov rax L0x7fffffffd400;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd390; PC = 0x4295189 *)
mull rdx rax rax L0x7fffffffd390;
(* add    %rax,%r10                                #! PC = 0x4295193 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295196 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295199 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd408; Value = 0x1550e902af6321cb; PC = 0x4295203 *)
mov rax L0x7fffffffd408;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd388; PC = 0x4295207 *)
mull rdx rax rax L0x7fffffffd388;
(* add    %rax,%r10                                #! PC = 0x4295211 *)
adds carry r10 r10 rax;
(* mov    %r10,0x30(%rdi)                          #! EA = L0x7fffffffd210; PC = 0x4295214 *)
mov L0x7fffffffd210 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4295218 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295221 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4295225 *)
mov r10 0@uint64;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd3f0; Value = 0x86f0d9c57740f069; PC = 0x4295228 *)
mov rax L0x7fffffffd3f0;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd3a8; PC = 0x4295232 *)
mull rdx rax rax L0x7fffffffd3a8;
(* add    %rax,%r8                                 #! PC = 0x4295236 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295239 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295242 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd3f8; Value = 0xa11bfbdc54933a3a; PC = 0x4295246 *)
mov rax L0x7fffffffd3f8;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd3a0; PC = 0x4295250 *)
mull rdx rax rax L0x7fffffffd3a0;
(* add    %rax,%r8                                 #! PC = 0x4295254 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295257 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295260 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd400; Value = 0x669130b9104fd5b1; PC = 0x4295264 *)
mov rax L0x7fffffffd400;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd398; PC = 0x4295268 *)
mull rdx rax rax L0x7fffffffd398;
(* add    %rax,%r8                                 #! PC = 0x4295272 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295275 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295278 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd408; Value = 0x1550e902af6321cb; PC = 0x4295282 *)
mov rax L0x7fffffffd408;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd390; PC = 0x4295286 *)
mull rdx rax rax L0x7fffffffd390;
(* add    %rax,%r8                                 #! PC = 0x4295290 *)
adds carry r8 r8 rax;
(* mov    %r8,0x38(%rdi)                           #! EA = L0x7fffffffd218; PC = 0x4295293 *)
mov L0x7fffffffd218 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4295297 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295300 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4295304 *)
mov r8 0@uint64;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd3f8; Value = 0xa11bfbdc54933a3a; PC = 0x4295307 *)
mov rax L0x7fffffffd3f8;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd3a8; PC = 0x4295311 *)
mull rdx rax rax L0x7fffffffd3a8;
(* add    %rax,%r9                                 #! PC = 0x4295315 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295318 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295321 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd400; Value = 0x669130b9104fd5b1; PC = 0x4295325 *)
mov rax L0x7fffffffd400;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd3a0; PC = 0x4295329 *)
mull rdx rax rax L0x7fffffffd3a0;
(* add    %rax,%r9                                 #! PC = 0x4295333 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295336 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295339 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd408; Value = 0x1550e902af6321cb; PC = 0x4295343 *)
mov rax L0x7fffffffd408;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd398; PC = 0x4295347 *)
mull rdx rax rax L0x7fffffffd398;
(* add    %rax,%r9                                 #! PC = 0x4295351 *)
adds carry r9 r9 rax;
(* mov    %r9,0x40(%rdi)                           #! EA = L0x7fffffffd220; PC = 0x4295354 *)
mov L0x7fffffffd220 r9;
(* adc    %rdx,%r10                                #! PC = 0x4295358 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295361 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4295365 *)
mov r9 0@uint64;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd400; Value = 0x669130b9104fd5b1; PC = 0x4295368 *)
mov rax L0x7fffffffd400;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd3a8; PC = 0x4295372 *)
mull rdx rax rax L0x7fffffffd3a8;
(* add    %rax,%r10                                #! PC = 0x4295376 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295379 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295382 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd408; Value = 0x1550e902af6321cb; PC = 0x4295386 *)
mov rax L0x7fffffffd408;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd3a0; PC = 0x4295390 *)
mull rdx rax rax L0x7fffffffd3a0;
(* add    %rax,%r10                                #! PC = 0x4295394 *)
adds carry r10 r10 rax;
(* mov    %r10,0x48(%rdi)                          #! EA = L0x7fffffffd228; PC = 0x4295397 *)
mov L0x7fffffffd228 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4295401 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295404 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd408; Value = 0x1550e902af6321cb; PC = 0x4295408 *)
mov rax L0x7fffffffd408;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd3a8; PC = 0x4295412 *)
mull rdx rax rax L0x7fffffffd3a8;
(* add    %rax,%r8                                 #! PC = 0x4295416 *)
adds carry r8 r8 rax;
(* mov    %r8,0x50(%rdi)                           #! EA = L0x7fffffffd230; PC = 0x4295419 *)
mov L0x7fffffffd230 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4295423 *)
adc r9 r9 rdx carry;
(* mov    %r9,0x58(%rdi)                           #! EA = L0x7fffffffd238; PC = 0x4295426 *)
mov L0x7fffffffd238 r9;
(* #retq                                           #! PC = 0x4295430 *)
#retq                                           #! 0x4295430 = 0x4295430;
(* #callq  0x418845 <fp_muln_low>                  #! PC = 0x4283843 *)
#callq  0x418845 <fp_muln_low>                  #! 0x4283843 = 0x4283843;
(* mov    %rdx,%rcx                                #! PC = 0x4294725 *)
mov rcx rdx;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffcd60; Value = 0xa80a0fbc8a4ba28d; PC = 0x4294728 *)
mov rax L0x7fffffffcd60;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffcdc0; PC = 0x4294731 *)
mull rdx rax rax L0x7fffffffcdc0;
(* mov    %rax,(%rdi)                              #! EA = L0x7fffffffce20; PC = 0x4294734 *)
mov L0x7fffffffce20 rax;
(* mov    %rdx,%r8                                 #! PC = 0x4294737 *)
mov r8 rdx;
(* xor    %r9,%r9                                  #! PC = 0x4294740 *)
mov r9 0@uint64;
(* xor    %r10,%r10                                #! PC = 0x4294743 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffcd60; Value = 0xa80a0fbc8a4ba28d; PC = 0x4294746 *)
mov rax L0x7fffffffcd60;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffcdc8; PC = 0x4294749 *)
mull rdx rax rax L0x7fffffffcdc8;
(* add    %rax,%r8                                 #! PC = 0x4294753 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294756 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294759 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffcd68; Value = 0xeed33621a4495a67; PC = 0x4294763 *)
mov rax L0x7fffffffcd68;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffcdc0; PC = 0x4294767 *)
mull rdx rax rax L0x7fffffffcdc0;
(* add    %rax,%r8                                 #! PC = 0x4294770 *)
adds carry r8 r8 rax;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x7fffffffce28; PC = 0x4294773 *)
mov L0x7fffffffce28 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4294777 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294780 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4294784 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffcd60; Value = 0xa80a0fbc8a4ba28d; PC = 0x4294787 *)
mov rax L0x7fffffffcd60;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffcdd0; PC = 0x4294790 *)
mull rdx rax rax L0x7fffffffcdd0;
(* add    %rax,%r9                                 #! PC = 0x4294794 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294797 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294800 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffcd68; Value = 0xeed33621a4495a67; PC = 0x4294804 *)
mov rax L0x7fffffffcd68;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffcdc8; PC = 0x4294808 *)
mull rdx rax rax L0x7fffffffcdc8;
(* add    %rax,%r9                                 #! PC = 0x4294812 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294815 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294818 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffcd70; Value = 0x3f112812cb34382f; PC = 0x4294822 *)
mov rax L0x7fffffffcd70;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffcdc0; PC = 0x4294826 *)
mull rdx rax rax L0x7fffffffcdc0;
(* add    %rax,%r9                                 #! PC = 0x4294829 *)
adds carry r9 r9 rax;
(* mov    %r9,0x10(%rdi)                           #! EA = L0x7fffffffce30; PC = 0x4294832 *)
mov L0x7fffffffce30 r9;
(* adc    %rdx,%r10                                #! PC = 0x4294836 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294839 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4294843 *)
mov r9 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffcd60; Value = 0xa80a0fbc8a4ba28d; PC = 0x4294846 *)
mov rax L0x7fffffffcd60;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffcdd8; PC = 0x4294849 *)
mull rdx rax rax L0x7fffffffcdd8;
(* add    %rax,%r10                                #! PC = 0x4294853 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4294856 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294859 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffcd68; Value = 0xeed33621a4495a67; PC = 0x4294863 *)
mov rax L0x7fffffffcd68;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffcdd0; PC = 0x4294867 *)
mull rdx rax rax L0x7fffffffcdd0;
(* add    %rax,%r10                                #! PC = 0x4294871 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4294874 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294877 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffcd70; Value = 0x3f112812cb34382f; PC = 0x4294881 *)
mov rax L0x7fffffffcd70;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffcdc8; PC = 0x4294885 *)
mull rdx rax rax L0x7fffffffcdc8;
(* add    %rax,%r10                                #! PC = 0x4294889 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4294892 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294895 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffcd78; Value = 0x3672b3951419dc3f; PC = 0x4294899 *)
mov rax L0x7fffffffcd78;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffcdc0; PC = 0x4294903 *)
mull rdx rax rax L0x7fffffffcdc0;
(* add    %rax,%r10                                #! PC = 0x4294906 *)
adds carry r10 r10 rax;
(* mov    %r10,0x18(%rdi)                          #! EA = L0x7fffffffce38; PC = 0x4294909 *)
mov L0x7fffffffce38 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4294913 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294916 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4294920 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffcd60; Value = 0xa80a0fbc8a4ba28d; PC = 0x4294923 *)
mov rax L0x7fffffffcd60;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffcde0; PC = 0x4294926 *)
mull rdx rax rax L0x7fffffffcde0;
(* add    %rax,%r8                                 #! PC = 0x4294930 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294933 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294936 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffcd68; Value = 0xeed33621a4495a67; PC = 0x4294940 *)
mov rax L0x7fffffffcd68;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffcdd8; PC = 0x4294944 *)
mull rdx rax rax L0x7fffffffcdd8;
(* add    %rax,%r8                                 #! PC = 0x4294948 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294951 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294954 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffcd70; Value = 0x3f112812cb34382f; PC = 0x4294958 *)
mov rax L0x7fffffffcd70;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffcdd0; PC = 0x4294962 *)
mull rdx rax rax L0x7fffffffcdd0;
(* add    %rax,%r8                                 #! PC = 0x4294966 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294969 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294972 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffcd78; Value = 0x3672b3951419dc3f; PC = 0x4294976 *)
mov rax L0x7fffffffcd78;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffcdc8; PC = 0x4294980 *)
mull rdx rax rax L0x7fffffffcdc8;
(* add    %rax,%r8                                 #! PC = 0x4294984 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294987 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294990 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffcd80; Value = 0x368d94be56496383; PC = 0x4294994 *)
mov rax L0x7fffffffcd80;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffcdc0; PC = 0x4294998 *)
mull rdx rax rax L0x7fffffffcdc0;
(* add    %rax,%r8                                 #! PC = 0x4295001 *)
adds carry r8 r8 rax;
(* mov    %r8,0x20(%rdi)                           #! EA = L0x7fffffffce40; PC = 0x4295004 *)
mov L0x7fffffffce40 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4295008 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295011 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4295015 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffcd60; Value = 0xa80a0fbc8a4ba28d; PC = 0x4295018 *)
mov rax L0x7fffffffcd60;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffcde8; PC = 0x4295021 *)
mull rdx rax rax L0x7fffffffcde8;
(* add    %rax,%r9                                 #! PC = 0x4295025 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295028 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295031 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffcd68; Value = 0xeed33621a4495a67; PC = 0x4295035 *)
mov rax L0x7fffffffcd68;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffcde0; PC = 0x4295039 *)
mull rdx rax rax L0x7fffffffcde0;
(* add    %rax,%r9                                 #! PC = 0x4295043 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295046 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295049 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffcd70; Value = 0x3f112812cb34382f; PC = 0x4295053 *)
mov rax L0x7fffffffcd70;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffcdd8; PC = 0x4295057 *)
mull rdx rax rax L0x7fffffffcdd8;
(* add    %rax,%r9                                 #! PC = 0x4295061 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295064 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295067 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffcd78; Value = 0x3672b3951419dc3f; PC = 0x4295071 *)
mov rax L0x7fffffffcd78;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffcdd0; PC = 0x4295075 *)
mull rdx rax rax L0x7fffffffcdd0;
(* add    %rax,%r9                                 #! PC = 0x4295079 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295082 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295085 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffcd80; Value = 0x368d94be56496383; PC = 0x4295089 *)
mov rax L0x7fffffffcd80;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffcdc8; PC = 0x4295093 *)
mull rdx rax rax L0x7fffffffcdc8;
(* add    %rax,%r9                                 #! PC = 0x4295097 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295100 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295103 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffcd88; Value = 0x2cef0263e0b74b39; PC = 0x4295107 *)
mov rax L0x7fffffffcd88;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffcdc0; PC = 0x4295111 *)
mull rdx rax rax L0x7fffffffcdc0;
(* add    %rax,%r9                                 #! PC = 0x4295114 *)
adds carry r9 r9 rax;
(* mov    %r9,0x28(%rdi)                           #! EA = L0x7fffffffce48; PC = 0x4295117 *)
mov L0x7fffffffce48 r9;
(* adc    %rdx,%r10                                #! PC = 0x4295121 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295124 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4295128 *)
mov r9 0@uint64;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffcd68; Value = 0xeed33621a4495a67; PC = 0x4295131 *)
mov rax L0x7fffffffcd68;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffcde8; PC = 0x4295135 *)
mull rdx rax rax L0x7fffffffcde8;
(* add    %rax,%r10                                #! PC = 0x4295139 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295142 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295145 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffcd70; Value = 0x3f112812cb34382f; PC = 0x4295149 *)
mov rax L0x7fffffffcd70;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffcde0; PC = 0x4295153 *)
mull rdx rax rax L0x7fffffffcde0;
(* add    %rax,%r10                                #! PC = 0x4295157 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295160 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295163 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffcd78; Value = 0x3672b3951419dc3f; PC = 0x4295167 *)
mov rax L0x7fffffffcd78;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffcdd8; PC = 0x4295171 *)
mull rdx rax rax L0x7fffffffcdd8;
(* add    %rax,%r10                                #! PC = 0x4295175 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295178 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295181 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffcd80; Value = 0x368d94be56496383; PC = 0x4295185 *)
mov rax L0x7fffffffcd80;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffcdd0; PC = 0x4295189 *)
mull rdx rax rax L0x7fffffffcdd0;
(* add    %rax,%r10                                #! PC = 0x4295193 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295196 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295199 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffcd88; Value = 0x2cef0263e0b74b39; PC = 0x4295203 *)
mov rax L0x7fffffffcd88;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffcdc8; PC = 0x4295207 *)
mull rdx rax rax L0x7fffffffcdc8;
(* add    %rax,%r10                                #! PC = 0x4295211 *)
adds carry r10 r10 rax;
(* mov    %r10,0x30(%rdi)                          #! EA = L0x7fffffffce50; PC = 0x4295214 *)
mov L0x7fffffffce50 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4295218 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295221 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4295225 *)
mov r10 0@uint64;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffcd70; Value = 0x3f112812cb34382f; PC = 0x4295228 *)
mov rax L0x7fffffffcd70;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffcde8; PC = 0x4295232 *)
mull rdx rax rax L0x7fffffffcde8;
(* add    %rax,%r8                                 #! PC = 0x4295236 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295239 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295242 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffcd78; Value = 0x3672b3951419dc3f; PC = 0x4295246 *)
mov rax L0x7fffffffcd78;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffcde0; PC = 0x4295250 *)
mull rdx rax rax L0x7fffffffcde0;
(* add    %rax,%r8                                 #! PC = 0x4295254 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295257 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295260 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffcd80; Value = 0x368d94be56496383; PC = 0x4295264 *)
mov rax L0x7fffffffcd80;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffcdd8; PC = 0x4295268 *)
mull rdx rax rax L0x7fffffffcdd8;
(* add    %rax,%r8                                 #! PC = 0x4295272 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295275 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295278 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffcd88; Value = 0x2cef0263e0b74b39; PC = 0x4295282 *)
mov rax L0x7fffffffcd88;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffcdd0; PC = 0x4295286 *)
mull rdx rax rax L0x7fffffffcdd0;
(* add    %rax,%r8                                 #! PC = 0x4295290 *)
adds carry r8 r8 rax;
(* mov    %r8,0x38(%rdi)                           #! EA = L0x7fffffffce58; PC = 0x4295293 *)
mov L0x7fffffffce58 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4295297 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295300 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4295304 *)
mov r8 0@uint64;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffcd78; Value = 0x3672b3951419dc3f; PC = 0x4295307 *)
mov rax L0x7fffffffcd78;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffcde8; PC = 0x4295311 *)
mull rdx rax rax L0x7fffffffcde8;
(* add    %rax,%r9                                 #! PC = 0x4295315 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295318 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295321 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffcd80; Value = 0x368d94be56496383; PC = 0x4295325 *)
mov rax L0x7fffffffcd80;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffcde0; PC = 0x4295329 *)
mull rdx rax rax L0x7fffffffcde0;
(* add    %rax,%r9                                 #! PC = 0x4295333 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295336 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295339 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffcd88; Value = 0x2cef0263e0b74b39; PC = 0x4295343 *)
mov rax L0x7fffffffcd88;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffcdd8; PC = 0x4295347 *)
mull rdx rax rax L0x7fffffffcdd8;
(* add    %rax,%r9                                 #! PC = 0x4295351 *)
adds carry r9 r9 rax;
(* mov    %r9,0x40(%rdi)                           #! EA = L0x7fffffffce60; PC = 0x4295354 *)
mov L0x7fffffffce60 r9;
(* adc    %rdx,%r10                                #! PC = 0x4295358 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295361 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4295365 *)
mov r9 0@uint64;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffcd80; Value = 0x368d94be56496383; PC = 0x4295368 *)
mov rax L0x7fffffffcd80;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffcde8; PC = 0x4295372 *)
mull rdx rax rax L0x7fffffffcde8;
(* add    %rax,%r10                                #! PC = 0x4295376 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295379 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295382 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffcd88; Value = 0x2cef0263e0b74b39; PC = 0x4295386 *)
mov rax L0x7fffffffcd88;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffcde0; PC = 0x4295390 *)
mull rdx rax rax L0x7fffffffcde0;
(* add    %rax,%r10                                #! PC = 0x4295394 *)
adds carry r10 r10 rax;
(* mov    %r10,0x48(%rdi)                          #! EA = L0x7fffffffce68; PC = 0x4295397 *)
mov L0x7fffffffce68 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4295401 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295404 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffcd88; Value = 0x2cef0263e0b74b39; PC = 0x4295408 *)
mov rax L0x7fffffffcd88;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffcde8; PC = 0x4295412 *)
mull rdx rax rax L0x7fffffffcde8;
(* add    %rax,%r8                                 #! PC = 0x4295416 *)
adds carry r8 r8 rax;
(* mov    %r8,0x50(%rdi)                           #! EA = L0x7fffffffce70; PC = 0x4295419 *)
mov L0x7fffffffce70 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4295423 *)
adc r9 r9 rdx carry;
(* mov    %r9,0x58(%rdi)                           #! EA = L0x7fffffffce78; PC = 0x4295426 *)
mov L0x7fffffffce78 r9;
(* #retq                                           #! PC = 0x4295430 *)
#retq                                           #! 0x4295430 = 0x4295430;
(* mov    %rbp,%rdx                                #! PC = 0x4283848 *)
mov rdx rbp;
(* mov    %rbx,%rsi                                #! PC = 0x4283851 *)
mov rsi rbx;
(* mov    %rsp,%rdi                                #! PC = 0x4283854 *)
mov rdi rsp;
(* #callq  0x4180cd <fp_addd_low>                  #! PC = 0x4283857 *)
#callq  0x4180cd <fp_addd_low>                  #! 0x4283857 = 0x4283857;
(* mov    (%rdx),%r11                              #! EA = L0x7fffffffd1e0; Value = 0xd6d9a2ae368518bd; PC = 0x4292813 *)
mov r11 L0x7fffffffd1e0;
(* add    (%rsi),%r11                              #! EA = L0x7fffffffd0d0; Value = 0xe96ae30df9ede38c; PC = 0x4292816 *)
adds carry r11 r11 L0x7fffffffd0d0;
(* mov    %r11,(%rdi)                              #! EA = L0x7fffffffcd60; PC = 0x4292819 *)
mov L0x7fffffffcd60 r11;
(* mov    0x8(%rdx),%r11                           #! EA = L0x7fffffffd1e8; Value = 0xfe0e17b4ff78a063; PC = 0x4292822 *)
mov r11 L0x7fffffffd1e8;
(* adc    0x8(%rsi),%r11                           #! EA = L0x7fffffffd0d8; Value = 0x1ad3a0adc6440ed5; PC = 0x4292826 *)
adcs carry r11 r11 L0x7fffffffd0d8 carry;
(* mov    %r11,0x8(%rdi)                           #! EA = L0x7fffffffcd68; PC = 0x4292830 *)
mov L0x7fffffffcd68 r11;
(* mov    0x10(%rdx),%r11                          #! EA = L0x7fffffffd1f0; Value = 0x8762a805d9a4a8a3; PC = 0x4292834 *)
mov r11 L0x7fffffffd1f0;
(* adc    0x10(%rsi),%r11                          #! EA = L0x7fffffffd0e0; Value = 0x4a3cfa93e6b97972; PC = 0x4292838 *)
adcs carry r11 r11 L0x7fffffffd0e0 carry;
(* mov    %r11,0x10(%rdi)                          #! EA = L0x7fffffffcd70; PC = 0x4292842 *)
mov L0x7fffffffcd70 r11;
(* mov    0x18(%rdx),%r11                          #! EA = L0x7fffffffd1f8; Value = 0xd6cd55f7c9687a24; PC = 0x4292846 *)
mov r11 L0x7fffffffd1f8;
(* adc    0x18(%rsi),%r11                          #! EA = L0x7fffffffd0e8; Value = 0x0fc8d99ac1392fba; PC = 0x4292850 *)
adcs carry r11 r11 L0x7fffffffd0e8 carry;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffcd78; PC = 0x4292854 *)
mov L0x7fffffffcd78 r11;
(* mov    0x20(%rdx),%r11                          #! EA = L0x7fffffffd200; Value = 0x76a65642209259d5; PC = 0x4292858 *)
mov r11 L0x7fffffffd200;
(* adc    0x20(%rsi),%r11                          #! EA = L0x7fffffffd0f0; Value = 0x9ea475c7c2e12177; PC = 0x4292862 *)
adcs carry r11 r11 L0x7fffffffd0f0 carry;
(* mov    %r11,0x20(%rdi)                          #! EA = L0x7fffffffcd80; PC = 0x4292866 *)
mov L0x7fffffffcd80 r11;
(* mov    0x28(%rdx),%r11                          #! EA = L0x7fffffffd208; Value = 0xd6dd8bade9136610; PC = 0x4292870 *)
mov r11 L0x7fffffffd208;
(* adc    0x28(%rsi),%r11                          #! EA = L0x7fffffffd0f8; Value = 0x000a95a56b78fe6a; PC = 0x4292874 *)
adcs carry r11 r11 L0x7fffffffd0f8 carry;
(* mov    %r11,0x28(%rdi)                          #! EA = L0x7fffffffcd88; PC = 0x4292878 *)
mov L0x7fffffffcd88 r11;
(* mov    0x30(%rdx),%r11                          #! EA = L0x7fffffffd210; Value = 0xcae66c06b1aa7b57; PC = 0x4292882 *)
mov r11 L0x7fffffffd210;
(* adc    0x30(%rsi),%r11                          #! EA = L0x7fffffffd100; Value = 0x171e354a0eb86fa6; PC = 0x4292886 *)
adcs carry r11 r11 L0x7fffffffd100 carry;
(* mov    %r11,0x30(%rdi)                          #! EA = L0x7fffffffcd90; PC = 0x4292890 *)
mov L0x7fffffffcd90 r11;
(* mov    0x38(%rdx),%r11                          #! EA = L0x7fffffffd218; Value = 0x1d3de5aa2f64325e; PC = 0x4292894 *)
mov r11 L0x7fffffffd218;
(* adc    0x38(%rsi),%r11                          #! EA = L0x7fffffffd108; Value = 0x3ba4f17f7fb4c47c; PC = 0x4292898 *)
adcs carry r11 r11 L0x7fffffffd108 carry;
(* mov    %r11,0x38(%rdi)                          #! EA = L0x7fffffffcd98; PC = 0x4292902 *)
mov L0x7fffffffcd98 r11;
(* mov    0x40(%rdx),%r11                          #! EA = L0x7fffffffd220; Value = 0x5c5c5dd163c443ab; PC = 0x4292906 *)
mov r11 L0x7fffffffd220;
(* adc    0x40(%rsi),%r11                          #! EA = L0x7fffffffd110; Value = 0xedf480f543c41a47; PC = 0x4292910 *)
adcs carry r11 r11 L0x7fffffffd110 carry;
(* mov    %r11,0x40(%rdi)                          #! EA = L0x7fffffffcda0; PC = 0x4292914 *)
mov L0x7fffffffcda0 r11;
(* mov    0x48(%rdx),%r11                          #! EA = L0x7fffffffd228; Value = 0x582938907022e3c3; PC = 0x4292918 *)
mov r11 L0x7fffffffd228;
(* adc    0x48(%rsi),%r11                          #! EA = L0x7fffffffd118; Value = 0x389e1450165585a2; PC = 0x4292922 *)
adcs carry r11 r11 L0x7fffffffd118 carry;
(* mov    %r11,0x48(%rdi)                          #! EA = L0x7fffffffcda8; PC = 0x4292926 *)
mov L0x7fffffffcda8 r11;
(* mov    0x50(%rdx),%r11                          #! EA = L0x7fffffffd230; Value = 0xe03238f696dc5682; PC = 0x4292930 *)
mov r11 L0x7fffffffd230;
(* adc    0x50(%rsi),%r11                          #! EA = L0x7fffffffd120; Value = 0x4f5f40868b458094; PC = 0x4292934 *)
adcs carry r11 r11 L0x7fffffffd120 carry;
(* mov    %r11,0x50(%rdi)                          #! EA = L0x7fffffffcdb0; PC = 0x4292938 *)
mov L0x7fffffffcdb0 r11;
(* mov    0x58(%rdx),%r11                          #! EA = L0x7fffffffd238; Value = 0x01dbfe3d8054364e; PC = 0x4292942 *)
mov r11 L0x7fffffffd238;
(* adc    0x58(%rsi),%r11                          #! EA = L0x7fffffffd128; Value = 0x01d1a649907e3dd5; PC = 0x4292946 *)
adc r11 r11 L0x7fffffffd128 carry;
(* mov    %r11,0x58(%rdi)                          #! EA = L0x7fffffffcdb8; PC = 0x4292950 *)
mov L0x7fffffffcdb8 r11;
(* #retq                                           #! PC = 0x4292954 *)
#retq                                           #! 0x4292954 = 0x4292954;
(* #callq  0x418391 <fp_subd_low>                  #! PC = 0x4283871 *)
#callq  0x418391 <fp_subd_low>                  #! 0x4283871 = 0x4283871;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffd0d0; Value = 0xe96ae30df9ede38c; PC = 0x4293521 *)
mov r8 L0x7fffffffd0d0;
(* sub    (%rdx),%r8                               #! EA = L0x7fffffffd1e0; Value = 0xd6d9a2ae368518bd; PC = 0x4293524 *)
subb carry r8 r8 L0x7fffffffd1e0;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffd0d0; PC = 0x4293527 *)
mov L0x7fffffffd0d0 r8;
(* mov    0x8(%rsi),%r8                            #! EA = L0x7fffffffd0d8; Value = 0x1ad3a0adc6440ed5; PC = 0x4293530 *)
mov r8 L0x7fffffffd0d8;
(* sbb    0x8(%rdx),%r8                            #! EA = L0x7fffffffd1e8; Value = 0xfe0e17b4ff78a063; PC = 0x4293534 *)
sbbs carry r8 r8 L0x7fffffffd1e8 carry;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x7fffffffd0d8; PC = 0x4293538 *)
mov L0x7fffffffd0d8 r8;
(* mov    0x10(%rsi),%r8                           #! EA = L0x7fffffffd0e0; Value = 0x4a3cfa93e6b97972; PC = 0x4293542 *)
mov r8 L0x7fffffffd0e0;
(* sbb    0x10(%rdx),%r8                           #! EA = L0x7fffffffd1f0; Value = 0x8762a805d9a4a8a3; PC = 0x4293546 *)
sbbs carry r8 r8 L0x7fffffffd1f0 carry;
(* mov    %r8,0x10(%rdi)                           #! EA = L0x7fffffffd0e0; PC = 0x4293550 *)
mov L0x7fffffffd0e0 r8;
(* mov    0x18(%rsi),%r8                           #! EA = L0x7fffffffd0e8; Value = 0x0fc8d99ac1392fba; PC = 0x4293554 *)
mov r8 L0x7fffffffd0e8;
(* sbb    0x18(%rdx),%r8                           #! EA = L0x7fffffffd1f8; Value = 0xd6cd55f7c9687a24; PC = 0x4293558 *)
sbbs carry r8 r8 L0x7fffffffd1f8 carry;
(* mov    %r8,0x18(%rdi)                           #! EA = L0x7fffffffd0e8; PC = 0x4293562 *)
mov L0x7fffffffd0e8 r8;
(* mov    0x20(%rsi),%r8                           #! EA = L0x7fffffffd0f0; Value = 0x9ea475c7c2e12177; PC = 0x4293566 *)
mov r8 L0x7fffffffd0f0;
(* sbb    0x20(%rdx),%r8                           #! EA = L0x7fffffffd200; Value = 0x76a65642209259d5; PC = 0x4293570 *)
sbbs carry r8 r8 L0x7fffffffd200 carry;
(* mov    %r8,0x20(%rdi)                           #! EA = L0x7fffffffd0f0; PC = 0x4293574 *)
mov L0x7fffffffd0f0 r8;
(* mov    0x28(%rsi),%r8                           #! EA = L0x7fffffffd0f8; Value = 0x000a95a56b78fe6a; PC = 0x4293578 *)
mov r8 L0x7fffffffd0f8;
(* sbb    0x28(%rdx),%r8                           #! EA = L0x7fffffffd208; Value = 0xd6dd8bade9136610; PC = 0x4293582 *)
sbbs carry r8 r8 L0x7fffffffd208 carry;
(* mov    %r8,0x28(%rdi)                           #! EA = L0x7fffffffd0f8; PC = 0x4293586 *)
mov L0x7fffffffd0f8 r8;
(* mov    0x30(%rsi),%r8                           #! EA = L0x7fffffffd100; Value = 0x171e354a0eb86fa6; PC = 0x4293590 *)
mov r8 L0x7fffffffd100;
(* sbb    0x30(%rdx),%r8                           #! EA = L0x7fffffffd210; Value = 0xcae66c06b1aa7b57; PC = 0x4293594 *)
sbbs carry r8 r8 L0x7fffffffd210 carry;
(* mov    %r8,0x30(%rdi)                           #! EA = L0x7fffffffd100; PC = 0x4293598 *)
mov L0x7fffffffd100 r8;
(* mov    0x38(%rsi),%r8                           #! EA = L0x7fffffffd108; Value = 0x3ba4f17f7fb4c47c; PC = 0x4293602 *)
mov r8 L0x7fffffffd108;
(* sbb    0x38(%rdx),%r8                           #! EA = L0x7fffffffd218; Value = 0x1d3de5aa2f64325e; PC = 0x4293606 *)
sbbs carry r8 r8 L0x7fffffffd218 carry;
(* mov    %r8,0x38(%rdi)                           #! EA = L0x7fffffffd108; PC = 0x4293610 *)
mov L0x7fffffffd108 r8;
(* mov    0x40(%rsi),%r8                           #! EA = L0x7fffffffd110; Value = 0xedf480f543c41a47; PC = 0x4293614 *)
mov r8 L0x7fffffffd110;
(* sbb    0x40(%rdx),%r8                           #! EA = L0x7fffffffd220; Value = 0x5c5c5dd163c443ab; PC = 0x4293618 *)
sbbs carry r8 r8 L0x7fffffffd220 carry;
(* mov    %r8,0x40(%rdi)                           #! EA = L0x7fffffffd110; PC = 0x4293622 *)
mov L0x7fffffffd110 r8;
(* mov    0x48(%rsi),%r8                           #! EA = L0x7fffffffd118; Value = 0x389e1450165585a2; PC = 0x4293626 *)
mov r8 L0x7fffffffd118;
(* sbb    0x48(%rdx),%r8                           #! EA = L0x7fffffffd228; Value = 0x582938907022e3c3; PC = 0x4293630 *)
sbbs carry r8 r8 L0x7fffffffd228 carry;
(* mov    %r8,0x48(%rdi)                           #! EA = L0x7fffffffd118; PC = 0x4293634 *)
mov L0x7fffffffd118 r8;
(* mov    0x50(%rsi),%r8                           #! EA = L0x7fffffffd120; Value = 0x4f5f40868b458094; PC = 0x4293638 *)
mov r8 L0x7fffffffd120;
(* sbb    0x50(%rdx),%r8                           #! EA = L0x7fffffffd230; Value = 0xe03238f696dc5682; PC = 0x4293642 *)
sbbs carry r8 r8 L0x7fffffffd230 carry;
(* mov    %r8,0x50(%rdi)                           #! EA = L0x7fffffffd120; PC = 0x4293646 *)
mov L0x7fffffffd120 r8;
(* mov    0x58(%rsi),%r8                           #! EA = L0x7fffffffd128; Value = 0x01d1a649907e3dd5; PC = 0x4293650 *)
mov r8 L0x7fffffffd128;
(* sbb    0x58(%rdx),%r8                           #! EA = L0x7fffffffd238; Value = 0x01dbfe3d8054364e; PC = 0x4293654 *)
sbbs carry r8 r8 L0x7fffffffd238 carry;
(* mov    %r8,0x58(%rdi)                           #! EA = L0x7fffffffd128; PC = 0x4293658 *)
mov L0x7fffffffd128 r8;
(* #retq                                           #! PC = 0x4293662 *)
#retq                                           #! 0x4293662 = 0x4293662;
(* #callq  0x418391 <fp_subd_low>                  #! PC = 0x4283890 *)
#callq  0x418391 <fp_subd_low>                  #! 0x4283890 = 0x4283890;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffce20; Value = 0x8d8128eecc5dee09; PC = 0x4293521 *)
mov r8 L0x7fffffffce20;
(* sub    (%rdx),%r8                               #! EA = L0x7fffffffcd60; Value = 0xc04485bc3072fc49; PC = 0x4293524 *)
subb carry r8 r8 L0x7fffffffcd60;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffd1e0; PC = 0x4293527 *)
mov L0x7fffffffd1e0 r8;
(* mov    0x8(%rsi),%r8                            #! EA = L0x7fffffffce28; Value = 0x410672c62be77475; PC = 0x4293530 *)
mov r8 L0x7fffffffce28;
(* sbb    0x8(%rdx),%r8                            #! EA = L0x7fffffffcd68; Value = 0x18e1b862c5bcaf39; PC = 0x4293534 *)
sbbs carry r8 r8 L0x7fffffffcd68 carry;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x7fffffffd1e8; PC = 0x4293538 *)
mov L0x7fffffffd1e8 r8;
(* mov    0x10(%rsi),%r8                           #! EA = L0x7fffffffce30; Value = 0x33ec7626354f2a10; PC = 0x4293542 *)
mov r8 L0x7fffffffce30;
(* sbb    0x10(%rdx),%r8                           #! EA = L0x7fffffffcd70; Value = 0xd19fa299c05e2216; PC = 0x4293546 *)
sbbs carry r8 r8 L0x7fffffffcd70 carry;
(* mov    %r8,0x10(%rdi)                           #! EA = L0x7fffffffd1f0; PC = 0x4293550 *)
mov L0x7fffffffd1f0 r8;
(* mov    0x18(%rsi),%r8                           #! EA = L0x7fffffffce38; Value = 0x17e0039b9d94ac86; PC = 0x4293554 *)
mov r8 L0x7fffffffce38;
(* sbb    0x18(%rdx),%r8                           #! EA = L0x7fffffffcd78; Value = 0xe6962f928aa1a9de; PC = 0x4293558 *)
sbbs carry r8 r8 L0x7fffffffcd78 carry;
(* mov    %r8,0x18(%rdi)                           #! EA = L0x7fffffffd1f8; PC = 0x4293562 *)
mov L0x7fffffffd1f8 r8;
(* mov    0x20(%rsi),%r8                           #! EA = L0x7fffffffce40; Value = 0x822032cd2be0c1ed; PC = 0x4293566 *)
mov r8 L0x7fffffffce40;
(* sbb    0x20(%rdx),%r8                           #! EA = L0x7fffffffcd80; Value = 0x154acc09e3737b4c; PC = 0x4293570 *)
sbbs carry r8 r8 L0x7fffffffcd80 carry;
(* mov    %r8,0x20(%rdi)                           #! EA = L0x7fffffffd200; PC = 0x4293574 *)
mov L0x7fffffffd200 r8;
(* mov    0x28(%rsi),%r8                           #! EA = L0x7fffffffce48; Value = 0xd62622af11be618c; PC = 0x4293578 *)
mov r8 L0x7fffffffce48;
(* sbb    0x28(%rdx),%r8                           #! EA = L0x7fffffffcd88; Value = 0xd6e82153548c647b; PC = 0x4293582 *)
sbbs carry r8 r8 L0x7fffffffcd88 carry;
(* mov    %r8,0x28(%rdi)                           #! EA = L0x7fffffffd208; PC = 0x4293586 *)
mov L0x7fffffffd208 r8;
(* mov    0x30(%rsi),%r8                           #! EA = L0x7fffffffce50; Value = 0xe633864f06aa9a21; PC = 0x4293590 *)
mov r8 L0x7fffffffce50;
(* sbb    0x30(%rdx),%r8                           #! EA = L0x7fffffffcd90; Value = 0xe204a150c062eafd; PC = 0x4293594 *)
sbbs carry r8 r8 L0x7fffffffcd90 carry;
(* mov    %r8,0x30(%rdi)                           #! EA = L0x7fffffffd210; PC = 0x4293598 *)
mov L0x7fffffffd210 r8;
(* mov    0x38(%rsi),%r8                           #! EA = L0x7fffffffce58; Value = 0x483304facecc5b67; PC = 0x4293602 *)
mov r8 L0x7fffffffce58;
(* sbb    0x38(%rdx),%r8                           #! EA = L0x7fffffffcd98; Value = 0x58e2d729af18f6da; PC = 0x4293606 *)
sbbs carry r8 r8 L0x7fffffffcd98 carry;
(* mov    %r8,0x38(%rdi)                           #! EA = L0x7fffffffd218; PC = 0x4293610 *)
mov L0x7fffffffd218 r8;
(* mov    0x40(%rsi),%r8                           #! EA = L0x7fffffffce60; Value = 0x754af9f48e06fda9; PC = 0x4293614 *)
mov r8 L0x7fffffffce60;
(* sbb    0x40(%rdx),%r8                           #! EA = L0x7fffffffcda0; Value = 0x4a50dec6a7885df2; PC = 0x4293618 *)
sbbs carry r8 r8 L0x7fffffffcda0 carry;
(* mov    %r8,0x40(%rdi)                           #! EA = L0x7fffffffd220; PC = 0x4293622 *)
mov L0x7fffffffd220 r8;
(* mov    0x48(%rsi),%r8                           #! EA = L0x7fffffffce68; Value = 0x87bc69b04d83f8d0; PC = 0x4293626 *)
mov r8 L0x7fffffffce68;
(* sbb    0x48(%rdx),%r8                           #! EA = L0x7fffffffcda8; Value = 0x90c74ce086786966; PC = 0x4293630 *)
sbbs carry r8 r8 L0x7fffffffcda8 carry;
(* mov    %r8,0x48(%rdi)                           #! EA = L0x7fffffffd228; PC = 0x4293634 *)
mov L0x7fffffffd228 r8;
(* mov    0x50(%rsi),%r8                           #! EA = L0x7fffffffce70; Value = 0x91cadd1f24c13cc8; PC = 0x4293638 *)
mov r8 L0x7fffffffce70;
(* sbb    0x50(%rdx),%r8                           #! EA = L0x7fffffffcdb0; Value = 0x2f91797d2221d716; PC = 0x4293642 *)
sbbs carry r8 r8 L0x7fffffffcdb0 carry;
(* mov    %r8,0x50(%rdi)                           #! EA = L0x7fffffffd230; PC = 0x4293646 *)
mov L0x7fffffffd230 r8;
(* mov    0x58(%rsi),%r8                           #! EA = L0x7fffffffce78; Value = 0x07614d36c779b6f9; PC = 0x4293650 *)
mov r8 L0x7fffffffce78;
(* sbb    0x58(%rdx),%r8                           #! EA = L0x7fffffffcdb8; Value = 0x03ada48710d27424; PC = 0x4293654 *)
sbbs carry r8 r8 L0x7fffffffcdb8 carry;
(* mov    %r8,0x58(%rdi)                           #! EA = L0x7fffffffd238; PC = 0x4293658 *)
mov L0x7fffffffd238 r8;
(* #retq                                           #! PC = 0x4293662 *)
#retq                                           #! 0x4293662 = 0x4293662;
(* #callq  0x447ae0 <bn_lshb_low>                  #! PC = 0x4283911 *)
#callq  0x447ae0 <bn_lshb_low>                  #! 0x4283911 = 0x4283911;

/* NOTE: real gmpn_lshift start */


mov rax 0@uint64;
(* test   $0x1,%dl                                 #! PC = 0x140737349424178 *)
test   $0x1,%dl                                 #! 0x140737349424178 = 0x140737349424178;
(* #jne    0x7ffff7b8145e <__gmpn_lshift+46>       #! PC = 0x140737349424181 *)
#jne    0x7ffff7b8145e <__gmpn_lshift+46>       #! 0x140737349424181 = 0x140737349424181;
(* test   $0x2,%dl                                 #! PC = 0x140737349424222 *)
test   $0x2,%dl                                 #! 0x140737349424222 = 0x140737349424222;
(* #jne    0x7ffff7b814b0 <__gmpn_lshift+128>      #! PC = 0x140737349424225 *)
#jne    0x7ffff7b814b0 <__gmpn_lshift+128>      #! 0x140737349424225 = 0x140737349424225;
(* lea    -0x20(%rsi,%rdx,8),%rsi                  #! PC = 0x140737349424304 *)
lea    -0x20(%%rsi,%%rdx,8),%%rsi                  #! 0x140737349424304 = 0x140737349424304;
(* lea    -0x8(%rdi,%rdx,8),%rdi                   #! PC = 0x140737349424309 *)
lea    -0x8(%%rdi,%%rdx,8),%%rdi                   #! 0x140737349424309 = 0x140737349424309;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffd128; Value = 0xfff5a80c102a0786; PC = 0x140737349424314 *)
mov r11 L0x7fffffffd128;
(* mov    0x10(%rsi),%r8                           #! EA = L0x7fffffffd120; Value = 0x6f2d078ff4692a11; PC = 0x140737349424318 *)
mov r8 L0x7fffffffd120;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffd118; Value = 0xe074dbbfa632a1df; PC = 0x140737349424322 *)
mov r9 L0x7fffffffd118;
(* shld   %cl,%r11,%rax                            #! PC = 0x140737349424326 *)
shld   %cl,%%r11,%%rax                            #! 0x140737349424326 = 0x140737349424326;
(* shr    $0x2,%rdx                                #! PC = 0x140737349424330 *)
shr    $0x2,%%rdx                                #! 0x140737349424330 = 0x140737349424330;
(* #je     0x7ffff7b8150b <__gmpn_lshift+219>      #! PC = 0x140737349424334 *)
#je     0x7ffff7b8150b <__gmpn_lshift+219>      #! 0x140737349424334 = 0x140737349424334;
(* shld   %cl,%r8,%r11                             #! PC = 0x140737349424336 *)
shld   %cl,%%r8,%%r11                             #! 0x140737349424336 = 0x140737349424336;
(* mov    (%rsi),%r10                              #! EA = L0x7fffffffd110; Value = 0x91982323dfffd69c; PC = 0x140737349424340 *)
mov r10 L0x7fffffffd110;
(* mov    %r11,(%rdi)                              #! EA = L0x7fffffffd128; PC = 0x140737349424343 *)
mov L0x7fffffffd128 r11;
(* shld   %cl,%r9,%r8                              #! PC = 0x140737349424346 *)
shld   %cl,%%r9,%%r8                              #! 0x140737349424346 = 0x140737349424346;
(* mov    -0x8(%rsi),%r11                          #! EA = L0x7fffffffd108; Value = 0x1e670bd55050921d; PC = 0x140737349424350 *)
mov    -%%L0x7fffffffd108,%%r11                          #! L0x7fffffffd108 = L0x7fffffffd108; 0x1e670bd55050921d = 0x1e670bd55050921d; 0x140737349424350 = 0x140737349424350;
(* mov    %r8,-0x8(%rdi)                           #! EA = L0x7fffffffd120; PC = 0x140737349424354 *)
mov    %%r8,-%%L0x7fffffffd120                           #! L0x7fffffffd120 = L0x7fffffffd120; 0x140737349424354 = 0x140737349424354;
(* shld   %cl,%r10,%r9                             #! PC = 0x140737349424358 *)
shld   %cl,%%r10,%%r9                             #! 0x140737349424358 = 0x140737349424358;
(* mov    -0x10(%rsi),%r8                          #! EA = L0x7fffffffd100; Value = 0x4c37c9435d0df44e; PC = 0x140737349424362 *)
mov    -%%L0x7fffffffd100,%%r8                          #! L0x7fffffffd100 = L0x7fffffffd100; 0x4c37c9435d0df44e = 0x4c37c9435d0df44e; 0x140737349424362 = 0x140737349424362;
(* mov    %r9,-0x10(%rdi)                          #! EA = L0x7fffffffd118; PC = 0x140737349424366 *)
mov    %%r9,-%%L0x7fffffffd118                          #! L0x7fffffffd118 = L0x7fffffffd118; 0x140737349424366 = 0x140737349424366;
(* shld   %cl,%r11,%r10                            #! PC = 0x140737349424370 *)
shld   %cl,%%r11,%%r10                            #! 0x140737349424370 = 0x140737349424370;
(* mov    -0x18(%rsi),%r9                          #! EA = L0x7fffffffd0f8; Value = 0x292d09f78265985a; PC = 0x140737349424374 *)
mov    -%%L0x7fffffffd0f8,%%r9                          #! L0x7fffffffd0f8 = L0x7fffffffd0f8; 0x292d09f78265985a = 0x292d09f78265985a; 0x140737349424374 = 0x140737349424374;
(* add    $0xffffffffffffffe0,%rsi                 #! PC = 0x140737349424378 *)
adds carry rsi rsi 0xffffffffffffffe0;
(* mov    %r10,-0x18(%rdi)                         #! EA = L0x7fffffffd110; PC = 0x140737349424382 *)
mov    %%r10,-%%L0x7fffffffd110                         #! L0x7fffffffd110 = L0x7fffffffd110; 0x140737349424382 = 0x140737349424382;
(* add    $0xffffffffffffffe0,%rdi                 #! PC = 0x140737349424386 *)
adds carry rdi rdi 0xffffffffffffffe0;
(* dec    %rdx                                     #! PC = 0x140737349424390 *)
dec    %%rdx                                     #! 0x140737349424390 = 0x140737349424390;
(* #jne    0x7ffff7b814d0 <__gmpn_lshift+160>      #! PC = 0x140737349424393 *)
#jne    0x7ffff7b814d0 <__gmpn_lshift+160>      #! 0x140737349424393 = 0x140737349424393;
(* shld   %cl,%r8,%r11                             #! PC = 0x140737349424395 *)
shld   %cl,%%r8,%%r11                             #! 0x140737349424395 = 0x140737349424395;
(* mov    %r11,(%rdi)                              #! EA = L0x7fffffffd108; PC = 0x140737349424399 *)
mov L0x7fffffffd108 r11;
(* shld   %cl,%r9,%r8                              #! PC = 0x140737349424402 *)
shld   %cl,%%r9,%%r8                              #! 0x140737349424402 = 0x140737349424402;
(* mov    %r8,-0x8(%rdi)                           #! EA = L0x7fffffffd100; PC = 0x140737349424406 *)
mov    %%r8,-%%L0x7fffffffd100                           #! L0x7fffffffd100 = L0x7fffffffd100; 0x140737349424406 = 0x140737349424406;
(* shl    %cl,%r9                                  #! PC = 0x140737349424410 *)
shl    %cl,%%r9                                  #! 0x140737349424410 = 0x140737349424410;
(* mov    %r9,-0x10(%rdi)                          #! EA = L0x7fffffffd0f8; PC = 0x140737349424413 *)
mov    %%r9,-%%L0x7fffffffd0f8                          #! L0x7fffffffd0f8 = L0x7fffffffd0f8; 0x140737349424413 = 0x140737349424413;
(* #retq                                           #! PC = 0x140737349424417 *)
#retq                                           #! 0x140737349424417 = 0x140737349424417;
/* NOTE: real gmpn_lshift end */

(* #callq  0x401d10 <fp_prime_get>                 #! PC = 0x4283916 *)
#callq  0x401d10 <fp_prime_get>                 #! 0x4283916 = 0x4283916;
(* sub    $0x8,%rsp                                #! PC = 0x4201744 *)
subb carry rsp rsp 0x8@uint64;
(* #callq  0x401520 <core_get>                     #! PC = 0x4201748 *)
#callq  0x401520 <core_get>                     #! 0x4201748 = 0x4201748;
(* mov    0x6abe9(%rip),%rax        # 0x46c110 <core_ctx>#! EA = L0x46c110; Value = 0x000000000046c120; PC = 0x4199712 *)
mov rax L0x46c110;
(* #retq                                           #! PC = 0x4199719 *)
#retq                                           #! 0x4199719 = 0x4199719;
(* add    $0x8,%rsp                                #! PC = 0x4201753 *)
adds carry rsp rsp 0x8;
(* add    $0xfa508,%rax                            #! PC = 0x4201757 *)
adds carry rax rax 0xfa508;
(* #retq                                           #! PC = 0x4201763 *)
#retq                                           #! 0x4201763 = 0x4201763;
(* lea    0x30(%rbx),%rdi                          #! PC = 0x4283921 *)
lea    %%EA,%%rdi                          #! 0x4283921 = 0x4283921;
(* mov    %rax,%rdx                                #! PC = 0x4283925 *)
mov rdx rax;
(* mov    %rdi,%rsi                                #! PC = 0x4283928 *)
mov rsi rdi;
(* #callq  0x417fda <fp_addn_low>                  #! PC = 0x4283931 *)
#callq  0x417fda <fp_addn_low>                  #! 0x4283931 = 0x4283931;
(* xor    %rax,%rax                                #! PC = 0x4292570 *)
mov rax 0@uint64;
(* mov    (%rdx),%r11                              #! EA = L0x566628; Value = 0xb9feffffffffaaab; PC = 0x4292573 *)
mov r11 L0x566628;
(* add    (%rsi),%r11                              #! EA = L0x7fffffffd100; Value = 0x30df250d7437d138; PC = 0x4292576 *)
adds carry r11 r11 L0x7fffffffd100;
(* mov    %r11,(%rdi)                              #! EA = L0x7fffffffd100; PC = 0x4292579 *)
mov L0x7fffffffd100 r11;
(* mov    0x8(%rdx),%r11                           #! EA = L0x566630; Value = 0x1eabfffeb153ffff; PC = 0x4292582 *)
mov r11 L0x566630;
(* adc    0x8(%rsi),%r11                           #! EA = L0x7fffffffd108; Value = 0x799c2f5541424875; PC = 0x4292586 *)
adcs carry r11 r11 L0x7fffffffd108 carry;
(* mov    %r11,0x8(%rdi)                           #! EA = L0x7fffffffd108; PC = 0x4292590 *)
mov L0x7fffffffd108 r11;
(* mov    0x10(%rdx),%r11                          #! EA = L0x566638; Value = 0x6730d2a0f6b0f624; PC = 0x4292594 *)
mov r11 L0x566638;
(* adc    0x10(%rsi),%r11                          #! EA = L0x7fffffffd110; Value = 0x46608c8f7fff5a70; PC = 0x4292598 *)
adcs carry r11 r11 L0x7fffffffd110 carry;
(* mov    %r11,0x10(%rdi)                          #! EA = L0x7fffffffd110; PC = 0x4292602 *)
mov L0x7fffffffd110 r11;
(* mov    0x18(%rdx),%r11                          #! EA = L0x566640; Value = 0x64774b84f38512bf; PC = 0x4292606 *)
mov r11 L0x566640;
(* adc    0x18(%rsi),%r11                          #! EA = L0x7fffffffd118; Value = 0x81d36efe98ca877e; PC = 0x4292610 *)
adcs carry r11 r11 L0x7fffffffd118 carry;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffd118; PC = 0x4292614 *)
mov L0x7fffffffd118 r11;
(* mov    0x20(%rdx),%r11                          #! EA = L0x566648; Value = 0x4b1ba7b6434bacd7; PC = 0x4292618 *)
mov r11 L0x566648;
(* adc    0x20(%rsi),%r11                          #! EA = L0x7fffffffd120; Value = 0xbcb41e3fd1a4a847; PC = 0x4292622 *)
adcs carry r11 r11 L0x7fffffffd120 carry;
(* mov    %r11,0x20(%rdi)                          #! EA = L0x7fffffffd120; PC = 0x4292626 *)
mov L0x7fffffffd120 r11;
(* mov    0x28(%rdx),%r11                          #! EA = L0x566650; Value = 0x1a0111ea397fe69a; PC = 0x4292630 *)
mov r11 L0x566650;
(* adc    0x28(%rsi),%r11                          #! EA = L0x7fffffffd128; Value = 0xffd6a03040a81e19; PC = 0x4292634 *)
adcs carry r11 r11 L0x7fffffffd128 carry;
(* mov    %r11,0x28(%rdi)                          #! EA = L0x7fffffffd128; PC = 0x4292638 *)
mov L0x7fffffffd128 r11;
(* adc    $0x0,%rax                                #! PC = 0x4292642 *)
adc rax rax 0x0@uint64 carry;
(* #retq                                           #! PC = 0x4292646 *)
#retq                                           #! 0x4292646 = 0x4292646;
(* mov    %r12,%rsi                                #! PC = 0x4283936 *)
mov rsi r12;
(* mov    %r12,%rdi                                #! PC = 0x4283939 *)
mov rdi r12;
(* mov    $0x2,%ecx                                #! PC = 0x4283942 *)
mov rcx 0x2@uint64;
(* mov    $0x7,%edx                                #! PC = 0x4283947 *)
mov rdx 0x7@uint64;
(* #callq  0x448050 <bn_rshb_low>                  #! PC = 0x4283952 *)
#callq  0x448050 <bn_rshb_low>                  #! 0x4283952 = 0x4283952;
(* movslq %edx,%rdx                                #! PC = 0x4489296 *)
movslq %%rdx,%%rdx                                #! 0x4489296 = 0x4489296;
(* #jmpq   0x401050 <__gmpn_rshift@plt>            #! PC = 0x4489299 *)
#jmpq   0x401050 <__gmpn_rshift@plt>            #! 0x4489299 = 0x4489299;
(* #jmpq   *0x6afd2(%rip)        # 0x46c028        #! PC = 0x4198480 *)
#jmpq   *%%EA        # 0x46c028        #! 0x4198480 = 0x4198480;
(* xor    %eax,%eax                                #! PC = 0x140737349424432 *)
mov rax 0@uint64;
(* test   $0x1,%dl                                 #! PC = 0x140737349424434 *)
test   $0x1,%dl                                 #! 0x140737349424434 = 0x140737349424434;
(* #jne    0x7ffff7b8155c <__gmpn_rshift+44>       #! PC = 0x140737349424437 *)
#jne    0x7ffff7b8155c <__gmpn_rshift+44>       #! 0x140737349424437 = 0x140737349424437;
(* test   $0x2,%dl                                 #! PC = 0x140737349424476 *)
test   $0x2,%dl                                 #! 0x140737349424476 = 0x140737349424476;
(* #jne    0x7ffff7b815a4 <__gmpn_rshift+116>      #! PC = 0x140737349424479 *)
#jne    0x7ffff7b815a4 <__gmpn_rshift+116>      #! 0x140737349424479 = 0x140737349424479;
(* lea    0x20(%rsi),%rsi                          #! PC = 0x140737349424548 *)
lea    %%EA,%%rsi                          #! 0x140737349424548 = 0x140737349424548;
(* mov    -0x20(%rsi),%r11                         #! EA = L0x7fffffffd0f8; Value = 0xa4b427de09966168; PC = 0x140737349424552 *)
mov    -%%L0x7fffffffd0f8,%%r11                         #! L0x7fffffffd0f8 = L0x7fffffffd0f8; 0xa4b427de09966168 = 0xa4b427de09966168; 0x140737349424552 = 0x140737349424552;
(* mov    -0x18(%rsi),%r8                          #! EA = L0x7fffffffd100; Value = 0xeade250d74377be3; PC = 0x140737349424556 *)
mov    -%%L0x7fffffffd100,%%r8                          #! L0x7fffffffd100 = L0x7fffffffd100; 0xeade250d74377be3 = 0xeade250d74377be3; 0x140737349424556 = 0x140737349424556;
(* mov    -0x10(%rsi),%r9                          #! EA = L0x7fffffffd108; Value = 0x98482f53f2964874; PC = 0x140737349424560 *)
mov    -%%L0x7fffffffd108,%%r9                          #! L0x7fffffffd108 = L0x7fffffffd108; 0x98482f53f2964874 = 0x98482f53f2964874; 0x140737349424560 = 0x140737349424560;
(* shrd   %cl,%r11,%rax                            #! PC = 0x140737349424564 *)
shrd   %cl,%%r11,%%rax                            #! 0x140737349424564 = 0x140737349424564;
(* shr    $0x2,%rdx                                #! PC = 0x140737349424568 *)
shr    $0x2,%%rdx                                #! 0x140737349424568 = 0x140737349424568;
(* #je     0x7ffff7b815fb <__gmpn_rshift+203>      #! PC = 0x140737349424572 *)
#je     0x7ffff7b815fb <__gmpn_rshift+203>      #! 0x140737349424572 = 0x140737349424572;
(* xchg   %ax,%ax                                  #! PC = 0x140737349424574 *)
xchg   %ax,%ax                                  #! 0x140737349424574 = 0x140737349424574;
(* shrd   %cl,%r8,%r11                             #! PC = 0x140737349424576 *)
shrd   %cl,%%r8,%%r11                             #! 0x140737349424576 = 0x140737349424576;
(* mov    -0x8(%rsi),%r10                          #! EA = L0x7fffffffd110; Value = 0xad915f3076b05094; PC = 0x140737349424580 *)
mov    -%%L0x7fffffffd110,%%r10                          #! L0x7fffffffd110 = L0x7fffffffd110; 0xad915f3076b05094 = 0xad915f3076b05094; 0x140737349424580 = 0x140737349424580;
(* mov    %r11,(%rdi)                              #! EA = L0x7fffffffd0f8; PC = 0x140737349424584 *)
mov L0x7fffffffd0f8 r11;
(* shrd   %cl,%r9,%r8                              #! PC = 0x140737349424587 *)
shrd   %cl,%%r9,%%r8                              #! 0x140737349424587 = 0x140737349424587;
(* mov    (%rsi),%r11                              #! EA = L0x7fffffffd118; Value = 0xe64aba838c4f9a3d; PC = 0x140737349424591 *)
mov r11 L0x7fffffffd118;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x7fffffffd100; PC = 0x140737349424594 *)
mov L0x7fffffffd100 r8;
(* shrd   %cl,%r10,%r9                             #! PC = 0x140737349424598 *)
shrd   %cl,%%r10,%%r9                             #! 0x140737349424598 = 0x140737349424598;
(* mov    0x8(%rsi),%r8                            #! EA = L0x7fffffffd120; Value = 0x07cfc5f614f0551e; PC = 0x140737349424602 *)
mov r8 L0x7fffffffd120;
(* mov    %r9,0x10(%rdi)                           #! EA = L0x7fffffffd108; PC = 0x140737349424606 *)
mov L0x7fffffffd108 r9;
(* shrd   %cl,%r11,%r10                            #! PC = 0x140737349424610 *)
shrd   %cl,%%r11,%%r10                            #! 0x140737349424610 = 0x140737349424610;
(* mov    0x10(%rsi),%r9                           #! EA = L0x7fffffffd128; Value = 0x19d7b21a7a2804b4; PC = 0x140737349424614 *)
mov r9 L0x7fffffffd128;
(* add    $0x20,%rsi                               #! PC = 0x140737349424618 *)
adds carry rsi rsi 0x20;
(* mov    %r10,0x18(%rdi)                          #! EA = L0x7fffffffd110; PC = 0x140737349424622 *)
mov L0x7fffffffd110 r10;
(* add    $0x20,%rdi                               #! PC = 0x140737349424626 *)
adds carry rdi rdi 0x20;
(* dec    %rdx                                     #! PC = 0x140737349424630 *)
dec    %%rdx                                     #! 0x140737349424630 = 0x140737349424630;
(* #jne    0x7ffff7b815c0 <__gmpn_rshift+144>      #! PC = 0x140737349424633 *)
#jne    0x7ffff7b815c0 <__gmpn_rshift+144>      #! 0x140737349424633 = 0x140737349424633;
(* shrd   %cl,%r8,%r11                             #! PC = 0x140737349424635 *)
shrd   %cl,%%r8,%%r11                             #! 0x140737349424635 = 0x140737349424635;
(* mov    %r11,(%rdi)                              #! EA = L0x7fffffffd118; PC = 0x140737349424639 *)
mov L0x7fffffffd118 r11;
(* shrd   %cl,%r9,%r8                              #! PC = 0x140737349424642 *)
shrd   %cl,%%r9,%%r8                              #! 0x140737349424642 = 0x140737349424642;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x7fffffffd120; PC = 0x140737349424646 *)
mov L0x7fffffffd120 r8;
(* shr    %cl,%r9                                  #! PC = 0x140737349424650 *)
shr    %cl,%%r9                                  #! 0x140737349424650 = 0x140737349424650;
(* mov    %r9,0x10(%rdi)                           #! EA = L0x7fffffffd128; PC = 0x140737349424653 *)
mov L0x7fffffffd128 r9;
(* #retq                                           #! PC = 0x140737349424657 *)
#retq                                           #! 0x140737349424657 = 0x140737349424657;
(* add    $0x120,%rsp                              #! PC = 0x4283957 *)
adds carry rsp rsp 0x120;
(* pop    %rbx                                     #! PC = 0x4283964 *)
pop rbx;
(* pop    %rbp                                     #! PC = 0x4283965 *)
pop rbp;
(* pop    %r12                                     #! PC = 0x4283966 *)
pop r12;
(* pop    %r13                                     #! PC = 0x4283968 *)
pop r13;
(* pop    %r14                                     #! PC = 0x4283970 *)
pop r14;
(* #retq                                           #! PC = 0x4283972 *)
#retq                                           #! 0x4283972 = 0x4283972;

{
  true
  &&
  true
}
