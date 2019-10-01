proc main (uint64 inp0, uint64 inp1,
           uint64 r0, uint64 r1,
           uint64 h0, uint64 h1, uint64 h2, uint64 padbit) =
{
  true
&&
  and [
    (* precondition for normal inputs *)
    h0 <=u 0xfffffffffff@64, h1 <=u 0xfffffffffff@64, h2 <=u 0x3ffffffffff@64,
    padbit <u 2@64,
    or [ padbit = 1@64,
         inp1 & 0xff00000000000000@64 = 0x0100000000000000@64,
         inp1 & 0xffff000000000000@64 = 0x0001000000000000@64,
         inp1 & 0xffffff0000000000@64 = 0x0000010000000000@64,
         inp1 & 0xffffffff00000000@64 = 0x0000000100000000@64,
         inp1 & 0xffffffffff000000@64 = 0x0000000001000000@64,
         inp1 & 0xffffffffffff0000@64 = 0x0000000000010000@64,
         inp1 & 0xffffffffffffff00@64 = 0x0000000000000100@64,
         inp1 & 0xffffffffffffffff@64 = 0x0000000000000001@64,
         and [ inp1 = 0@64,
               inp0 & 0xff00000000000000@64 = 0x0100000000000000@64],
         and [ inp1 = 0@64,
               inp0 & 0xffff000000000000@64 = 0x0001000000000000@64],
         and [ inp1 = 0@64,
               inp0 & 0xffffff0000000000@64 = 0x0000010000000000@64],
         and [ inp1 = 0@64,
               inp0 & 0xffffffff00000000@64 = 0x0000000100000000@64],
         and [ inp1 = 0@64,
               inp0 & 0xffffffffff000000@64 = 0x0000000001000000@64],
         and [ inp1 = 0@64,
               inp0 & 0xffffffffffff0000@64 = 0x0000000000010000@64],
         and [ inp1 = 0@64,
               inp0 & 0xffffffffffffff00@64 = 0x0000000000000100@64]
       ]
   ]
}

mov L0x605060 inp0;
mov L0x605068 inp1;
mov L0x605080 r0;
mov L0x605088 r1;

(* #push   %rbp                                     #! PC = 0x4196022 *)
#push   %%rbp                                     #! 0x4196022 = 0x4196022;
(* #mov    %rsp,%rbp                                #! PC = 0x4196023 *)
#mov    %rsp,%%rbp                                #! 0x4196023 = 0x4196023;
(* #mov    $0x605080,%esi                           #! PC = 0x4196026 *)
#mov    $0x605080,%esi                           #! 0x4196026 = 0x4196026;
(* #mov    $0x6050c0,%edi                           #! PC = 0x4196031 *)
#mov    $0x6050c0,%edi                           #! 0x4196031 = 0x4196031;
(* #mov    $0x0,%eax                                #! PC = 0x4196036 *)
#mov    $0x0,%eax                                #! 0x4196036 = 0x4196036;
(* #callq  0x402840 <poly1305_init_base2_44>       #! PC = 0x4196041 *)
#callq  0x402840 <poly1305_init_base2_44>       #! 0x4196041 = 0x4196041;
(* xor    %rax,%rax                                #! PC = 0x4204608 *)
mov rax 0@uint64;
(* mov    %rax,(%rdi)                              #! EA = L0x6050c0; PC = 0x4204611 *)
mov L0x6050c0 rax;
(* mov    %rax,0x8(%rdi)                           #! EA = L0x6050c8; PC = 0x4204614 *)
mov L0x6050c8 rax;
(* mov    %rax,0x10(%rdi)                          #! EA = L0x6050d0; PC = 0x4204618 *)
mov L0x6050d0 rax;
(* #lea    0x1eb(%rip),%r10        # 0x402a40 <poly1305_blocks_vpmadd52>#! PC = 0x4204622 *)
#lea    0x1eb(%rip),%%r10        # 0x402a40 <poly1305_blocks_vpmadd52>#! 0x4204622 = 0x4204622;
(* #lea    0x84(%rip),%r10        # 0x4028e0 <poly1305_blocks_base2_44>#! PC = 0x4204629 *)
#lea    0x84(%rip),%%r10        # 0x4028e0 <poly1305_blocks_base2_44>#! 0x4204629 = 0x4204629;
(* #lea    0xb1d(%rip),%r11        # 0x403380 <poly1305_emit_base2_44>#! PC = 0x4204636 *)
#lea    0xb1d(%rip),%%r11        # 0x403380 <poly1305_emit_base2_44>#! 0x4204636 = 0x4204636;
(* movabs $0xffffffc0fffffff,%rax                  #! PC = 0x4204643 *)
mov rax 0xffffffc0fffffff@uint64;
(* movabs $0xffffffc0ffffffc,%rcx                  #! PC = 0x4204653 *)
mov rcx 0xffffffc0ffffffc@uint64;
(* and    (%rsi),%rax                              #! EA = L0x605080; Value = 0x78899aabbccddeef; PC = 0x4204663 *)
(* NOTE: use naive translation *)
and rax@uint64 L0x605080 rax;
(* movabs $0xfffffffffff,%r8                       #! PC = 0x4204666 *)
mov r8 0xfffffffffff@uint64;
(* and    0x8(%rsi),%rcx                           #! EA = L0x605088; Value = 0x9887766554433221; PC = 0x4204676 *)
(* NOTE: use naive translation *)
and rcx@uint64 L0x605088 rcx;
(* movabs $0xfffffffffff,%r9                       #! PC = 0x4204680 *)
mov r9 0xfffffffffff@uint64;
(* and    %rax,%r8                                 #! PC = 0x4204690 *)
(* NOTE: use usplit *)
usplit dontcare r8 rax 44;
(* shrd   $0x2c,%rcx,%rax                          #! PC = 0x4204693 *)
usplit rcx_H rcx_L rcx 44;
usplit rax_H rax_L rax 44;
shl rcx_L20 rcx_L 20;
uadd rax rcx_L20 rax_H;
(* mov    %r8,0x28(%rdi)                           #! EA = L0x6050e8; PC = 0x4204698 *)
mov L0x6050e8 r8;
(* and    %r9,%rax                                 #! PC = 0x4204702 *)
(* NOTE: use usplit *)
usplit dontcare rax rax 44;
(* shr    $0x18,%rcx                               #! PC = 0x4204705 *)
usplit rcx dontcareL rcx 24;
(* NOTE: add relation *)
assert true && dontcare + rcx_H * (2**20)@64 = rcx;
assume dontcare + rcx_H * 2**20 = rcx && true;
(* mov    %rax,0x30(%rdi)                          #! EA = L0x6050f0; PC = 0x4204709 *)
mov L0x6050f0 rax;
(* lea    (%rax,%rax,4),%rax                       #! PC = 0x4204713 *)
umul rax rax 5@uint64;
(* mov    %rcx,0x38(%rdi)                          #! EA = L0x6050f8; PC = 0x4204717 *)
mov L0x6050f8 rcx;
(* shl    $0x2,%rax                                #! PC = 0x4204721 *)
shl rax rax 2;
(* lea    (%rcx,%rcx,4),%rcx                       #! PC = 0x4204725 *)
umul rcx rcx 5@uint64;
(* shl    $0x2,%rcx                                #! PC = 0x4204729 *)
shl rcx rcx 2;
(* mov    %rax,0x18(%rdi)                          #! EA = L0x6050d8; PC = 0x4204733 *)
mov L0x6050d8 rax;
(* mov    %rcx,0x20(%rdi)                          #! EA = L0x6050e0; PC = 0x4204737 *)
mov L0x6050e0 rcx;
(* movq   $0xffffffffffffffff,0x40(%rdi)           #! EA = L0x605100; PC = 0x4204741 *)
mov L0x605100 0xffffffffffffffff@uint64;
(* #mov    %r10,(%rdx)                              #! EA = L0x7ffeba38ebb8; PC = 0x4204749 *)
#mov    %%r10,%%L0x7ffeba38ebb8                              #! L0x7ffeba38ebb8 = L0x7ffeba38ebb8; 0x4204749 = 0x4204749;
(* #mov    %r11,0x8(%rdx)                           #! EA = L0x7ffeba38ebc0; PC = 0x4204752 *)
#mov    %%r11,%%L0x7ffeba38ebc0                           #! L0x7ffeba38ebc0 = L0x7ffeba38ebc0; 0x4204752 = 0x4204752;
(* #mov    $0x1,%eax                                #! PC = 0x4204756 *)
#mov    $0x1,%eax                                #! 0x4204756 = 0x4204756;
(* #repz retq                                      #! PC = 0x4204761 *)
#repz retq                                      #! 0x4204761 = 0x4204761;
(* NOTE: summary of poly1305_init_base2_44 *)
assert true &&
       limbs 64 [L0x6050e8, 0@64] +
       limbs 64 [L0x6050f0, 0@64] * (2**44)@128 +
       limbs 64 [L0x6050f8, 0@64] * (2**88)@128 =
       limbs 64 [r0, r1] &
       limbs 64 [ 0xffffffc0fffffff@64, 0xffffffc0ffffffc@64 ];
assume limbs 44 [L0x6050e8, L0x6050f0, L0x6050f8] = limbs 64 [r0, r1] && true;
(* #mov    $0x1,%ecx                                #! PC = 0x4196046 *)
#mov    $0x1,%ecx                                #! 0x4196046 = 0x4196046;
(* NOTE: set rcx to padbit *)
mov rcx padbit;
(* #mov    $0x10,%edx                               #! PC = 0x4196051 *)
#mov    $0x10,%edx                               #! 0x4196051 = 0x4196051;
(* #mov    $0x605060,%esi                           #! PC = 0x4196056 *)
#mov    $0x605060,%esi                           #! 0x4196056 = 0x4196056;
(* #mov    $0x6050c0,%edi                           #! PC = 0x4196061 *)
#mov    $0x6050c0,%edi                           #! 0x4196061 = 0x4196061;
(* #mov    $0x0,%eax                                #! PC = 0x4196066 *)
#mov    $0x0,%eax                                #! 0x4196066 = 0x4196066;
(* #callq  0x4028e0 <poly1305_blocks_base2_44>     #! PC = 0x4196071 *)
#callq  0x4028e0 <poly1305_blocks_base2_44>     #! 0x4196071 = 0x4196071;
(* #push   %rbx                                     #! PC = 0x4204768 *)
#push   %%rbx                                     #! 0x4204768 = 0x4204768;
(* #push   %rbp                                     #! PC = 0x4204769 *)
#push   %%rbp                                     #! 0x4204769 = 0x4204769;
(* #push   %r12                                     #! PC = 0x4204770 *)
#push   %%r12                                     #! 0x4204770 = 0x4204770;
(* #push   %r13                                     #! PC = 0x4204772 *)
#push   %%r13                                     #! 0x4204772 = 0x4204772;
(* #push   %r14                                     #! PC = 0x4204774 *)
#push   %%r14                                     #! 0x4204774 = 0x4204774;
(* #push   %r15                                     #! PC = 0x4204776 *)
#push   %%r15                                     #! 0x4204776 = 0x4204776;
(* #and    $0xfffffffffffffff0,%rdx                 #! PC = 0x4204778 *)
#and    $0xfffffffffffffff0,%%rdx                 #! 0x4204778 = 0x4204778;
(* #add    %rsi,%rdx                                #! PC = 0x4204782 *)
#add    %rsi,%%rdx                                #! 0x4204782 = 0x4204782;
(* shl    $0x28,%rcx                               #! PC = 0x4204785 *)
shl rcx rcx 40;
(* #push   %rdx                                     #! PC = 0x4204789 *)
#push   %%rdx                                     #! 0x4204789 = 0x4204789;
(* NOTE: set h0, h1, h2 *)
mov L0x6050c0 h0;
mov L0x6050c8 h1;
mov L0x6050d0 h2;
(* mov    (%rdi),%rdx                              #! EA = L0x6050c0; Value = 0x0000000000000000; PC = 0x4204790 *)
mov rdx L0x6050c0;
(* mov    0x8(%rdi),%r8                            #! EA = L0x6050c8; Value = 0x0000000000000000; PC = 0x4204793 *)
mov r8 L0x6050c8;
(* mov    0x10(%rdi),%r9                           #! EA = L0x6050d0; Value = 0x0000000000000000; PC = 0x4204797 *)
mov r9 L0x6050d0;
(* mov    0x28(%rdi),%r13                          #! EA = L0x6050e8; Value = 0x00000aa80ccddeef; PC = 0x4204801 *)
mov r13 L0x6050e8;
(* mov    0x30(%rdi),%r14                          #! EA = L0x6050f0; Value = 0x0000043322008899; PC = 0x4204805 *)
mov r14 L0x6050f0;
(* mov    0x20(%rdi),%r15                          #! EA = L0x6050e0; Value = 0x000000aa953fd050; PC = 0x4204809 *)
mov r15 L0x6050e0;
(* movabs $0xfffff00000000000,%rax                 #! PC = 0x4204813 *)
mov rax 0xfffff00000000000@uint64;
(* #jmp    0x402920 <poly1305_blocks_base2_44+64>  #! PC = 0x4204823 *)
#jmp    0x402920 <poly1305_blocks_base2_44+64>  #! 0x4204823 = 0x4204823;
(* mov    (%rsi),%r11                              #! EA = L0x605060; Value = 0x8978675645342312; PC = 0x4204832 *)
mov r11 L0x605060;
(* mov    0x8(%rsi),%r12                           #! EA = L0x605068; Value = 0x8798a9bacbdcedfe; PC = 0x4204835 *)
mov r12 L0x605068;
(* #lea    0x10(%rsi),%rsi                          #! PC = 0x4204839 *)
#lea    %%EA,%rsi                          #! 0x4204839 = 0x4204839;
(* andn   %r11,%rax,%r10                           #! PC = 0x4204843 *)
assert true && rax = 0xfffff00000000000@64;
usplit r11_HH r10 r11 44;
(* shrd   $0x2c,%r12,%r11                          #! PC = 0x4204848 *)
usplit r12_H r12_L r12 44;
usplit r11_H r11_L r11 44;
shl r12_L20 r12_L 20;
uadd r11 r12_L20 r11_H;
(* NOTE: add relation *)
assert true && r11_HH = r11_H;
assume r11_HH = r11_H && true;
(* add    %r10,%rdx                                #! PC = 0x4204853 *)
uadd rdx r10 rdx;
(* shr    $0x18,%r12                               #! PC = 0x4204856 *)
usplit r12 dontcare r12 24;
(* andn   %r11,%rax,%r11                           #! PC = 0x4204860 *)
assert true && rax = 0xfffff00000000000@64;
usplit r11_HH r11 r11 44;
(* NOTE: add relation *)
assert true && r11 = dontcare * (2**20)@64 + r11_H;
assume r11 = dontcare * 2**20 + r11_H && true;
(* add    %rcx,%r9                                 #! PC = 0x4204865 *)
uadd r9 rcx r9;
(* add    %r11,%r8                                 #! PC = 0x4204868 *)
uadd r8 r11 r8;
(* add    %r12,%r9                                 #! PC = 0x4204871 *)
uadd r9 r12 r9;
(* mulx   %r13,%r10,%rbx                           #! PC = 0x4204874 *)
umull rbx r10 r13 rdx;
(* mulx   %r14,%r11,%rcx                           #! PC = 0x4204879 *)
umull rcx r11 r14 rdx;
(* mulx   0x38(%rdi),%r12,%rbp                     #! EA = L0x6050f8; Value = 0x0000000887766404; PC = 0x4204884 *)
umull rbp r12 L0x6050f8 rdx;
(* mov    %r8,%rdx                                 #! PC = 0x4204890 *)
mov rdx r8;
(* mulx   %r15,%rax,%r8                            #! PC = 0x4204893 *)
umull r8 rax r15 rdx;
(* add    %rax,%r10                                #! PC = 0x4204898 *)
uadds carry r10 rax r10;
(* adc    %rbx,%r8                                 #! PC = 0x4204901 *)
uadc r8 rbx r8 carry;
(* mulx   %r13,%rax,%rbx                           #! PC = 0x4204904 *)
umull rbx rax r13 rdx;
(* add    %rax,%r11                                #! PC = 0x4204909 *)
uadds carry r11 rax r11;
(* adc    %rbx,%rcx                                #! PC = 0x4204912 *)
uadc rcx rbx rcx carry;
(* mulx   %r14,%rax,%rbx                           #! PC = 0x4204915 *)
umull rbx rax r14 rdx;
(* mov    %r9,%rdx                                 #! PC = 0x4204920 *)
mov rdx r9;
(* add    %rax,%r12                                #! PC = 0x4204923 *)
uadds carry r12 rax r12;
(* adc    %rbx,%rbp                                #! PC = 0x4204926 *)
uadc rbp rbx rbp carry;
(* mulx   0x18(%rdi),%rax,%rbx                     #! EA = L0x6050d8; Value = 0x000053fea80aabf4; PC = 0x4204929 *)
umull rbx rax L0x6050d8 rdx;
(* add    %rax,%r10                                #! PC = 0x4204935 *)
uadds carry r10 rax r10;
(* adc    %rbx,%r8                                 #! PC = 0x4204938 *)
uadc r8 rbx r8 carry;
(* mulx   %r15,%rax,%r9                            #! PC = 0x4204941 *)
umull r9 rax r15 rdx;
(* add    %rax,%r11                                #! PC = 0x4204946 *)
uadds carry r11 rax r11;
(* adc    %rcx,%r9                                 #! PC = 0x4204949 *)
uadc r9 rcx r9 carry;
(* mulx   %r13,%rax,%rbx                           #! PC = 0x4204952 *)
umull rbx rax r13 rdx;
(* add    %rax,%r12                                #! PC = 0x4204957 *)
uadds carry r12 rax r12;
(* adc    %rbx,%rbp                                #! PC = 0x4204960 *)
uadc rbp rbx rbp carry;
(* movabs $0xfffff00000000000,%rax                 #! PC = 0x4204963 *)
mov rax 0xfffff00000000000@uint64;
(* andn   %r10,%rax,%rdx                           #! PC = 0x4204973 *)
assert true && rax = 0xfffff00000000000@64;
usplit r10_H rdx r10 44;
(* shrd   $0x2c,%r8,%r10                           #! PC = 0x4204978 *)
usplit r8_H r8_L r8 44;
usplit r10_H r10_L r10 44;
shl r8_L20 r8_L 20;
uadd r10 r8_L20 r10_H;
(* NOTE: add relation *)
assert true && r10_L = rdx;
assume r10_L = rdx && true;
assert true && r8_H = 0@64;
assume r8_H = 0 && true;
(* add    %r10,%r11                                #! PC = 0x4204983 *)
uadds carry r11 r10 r11;
(* adc    $0x0,%r9                                 #! PC = 0x4204986 *)
uadc r9 r9 0@uint64 carry;
(* andn   %r11,%rax,%r8                            #! PC = 0x4204990 *)
assert true && rax = 0xfffff00000000000@64;
usplit r11_H r8 r11 44;
(* shrd   $0x2c,%r9,%r11                           #! PC = 0x4204995 *)
usplit r9_H r9_L r9 44;
usplit r11_H r11_L r11 44;
shl r9_L20 r9_L 20;
uadd r11 r9_L20 r11_H;
(* NOTE: add relation *)
assert true && r11_L = r8;
assume r11_L = r8 && true;
assert true && r9_H = 0@64;
assume r9_H = 0 && true;
(* movabs $0x3ffffffffff,%r9                       #! PC = 0x4205000 *)
mov r9 0x3ffffffffff@uint64;
(* add    %r11,%r12                                #! PC = 0x4205010 *)
uadds carry r12 r11 r12;
(* WARNING: carry can be 1 *)
(*
assert true && carry = 0@1;
assume carry = 0 && true;
*)
(* #?#adc	\$0,%rbp *)
#?#adc	\$0,%%rbp;
uadc rbp rbp 0@uint64 carry;
(* and    %r12,%r9                                 #! PC = 0x4205013 *)
assert true && r9 = 0x3ffffffffff@64;
usplit r12_H r9 r12 42;
(* shrd   $0x2a,%rbp,%r12                          #! PC = 0x4205016 *)
usplit rbp_H rbp_L rbp 42;
usplit r12_H r12_L r12 42;
shl rbp_L22 rbp_L 22;
uadd r12 rbp_L22 r12_H;
(* NOTE: add relation *)
assert true && r12_L = r9;
assume r12_L = r9 && true;
assert true && rbp_H = 0@64;
assume rbp_H = 0 && true;
(* movabs $0x10000000000,%rcx                      #! PC = 0x4205021 *)
mov rcx 0x10000000000@uint64;
(* lea    (%r12,%r12,4),%r12                       #! PC = 0x4205031 *)
umul r12 r12 5@uint64;
(* add    %r12,%rdx                                #! PC = 0x4205035 *)
uadd rdx r12 rdx;
(* #cmp    (%rsp),%rsi                              #! EA = L0x7ffeba38ea80; Value = 0x0000000000605070; PC = 0x4205038 *)
#cmp    (%rsp),%rsi                              #! L0x7ffeba38ea80 = L0x7ffeba38ea80; 0x0000000000605070 = 0x0000000000605070; 0x4205038 = 0x4205038;
(* #jb     0x402920 <poly1305_blocks_base2_44+64>  #! PC = 0x4205042 *)
#jb     0x402920 <poly1305_blocks_base2_44+64>  #! 0x4205042 = 0x4205042;
(* mov    %rdx,(%rdi)                              #! EA = L0x6050c0; PC = 0x4205048 *)
mov L0x6050c0 rdx;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x6050c8; PC = 0x4205051 *)
mov L0x6050c8 r8;
(* mov    %r9,0x10(%rdi)                           #! EA = L0x6050d0; PC = 0x4205055 *)
mov L0x6050d0 r9;
(* #mov    0x8(%rsp),%r15                           #! EA = L0x7ffeba38ea88; Value = 0x0000000000000000; PC = 0x4205059 *)
#mov    0x8(%rsp),%%r15                           #! L0x7ffeba38ea88 = L0x7ffeba38ea88; 0x0000000000000000 = 0x0000000000000000; 0x4205059 = 0x4205059;
(* #mov    0x10(%rsp),%r14                          #! EA = L0x7ffeba38ea90; Value = 0x0000000000000000; PC = 0x4205064 *)
#mov    0x10(%rsp),%%r14                          #! L0x7ffeba38ea90 = L0x7ffeba38ea90; 0x0000000000000000 = 0x0000000000000000; 0x4205064 = 0x4205064;
(* #mov    0x18(%rsp),%r13                          #! EA = L0x7ffeba38ea98; Value = 0x00007ffeba38eba0; PC = 0x4205069 *)
#mov    0x18(%rsp),%%r13                          #! L0x7ffeba38ea98 = L0x7ffeba38ea98; 0x00007ffeba38eba0 = 0x00007ffeba38eba0; 0x4205069 = 0x4205069;
(* #mov    0x20(%rsp),%r12                          #! EA = L0x7ffeba38eaa0; Value = 0x00000000004005c0; PC = 0x4205074 *)
#mov    0x20(%rsp),%%r12                          #! L0x7ffeba38eaa0 = L0x7ffeba38eaa0; 0x00000000004005c0 = 0x00000000004005c0; 0x4205074 = 0x4205074;
(* #mov    0x28(%rsp),%rbp                          #! EA = L0x7ffeba38eaa8; Value = 0x00007ffeba38eac0; PC = 0x4205079 *)
#mov    0x28(%rsp),%%rbp                          #! L0x7ffeba38eaa8 = L0x7ffeba38eaa8; 0x00007ffeba38eac0 = 0x00007ffeba38eac0; 0x4205079 = 0x4205079;
(* #mov    0x30(%rsp),%rbx                          #! EA = L0x7ffeba38eab0; Value = 0x0000000000000000; PC = 0x4205084 *)
#mov    0x30(%rsp),%%rbx                          #! L0x7ffeba38eab0 = L0x7ffeba38eab0; 0x0000000000000000 = 0x0000000000000000; 0x4205084 = 0x4205084;
(* #lea    0x38(%rsp),%rsp                          #! PC = 0x4205089 *)
#lea    0x38(%rsp),%rsp                          #! 0x4205089 = 0x4205089;
(* #repz retq                                      #! PC = 0x4205094 *)
#repz retq                                      #! 0x4205094 = 0x4205094;
(* #nop                                             #! PC = 0x4196076 *)
#nop                                             #! 0x4196076 = 0x4196076;
(* #pop    %rbp                                     #! PC = 0x4196077 *)
#pop    %%rbp                                     #! 0x4196077 = 0x4196077;
(* #retq                                           #! PC = 0x4196078 *)
#retq                                           #! 0x4196078 = 0x4196078;

mov H0 L0x6050c0;
mov H1 L0x6050c8;
mov H2 L0x6050d0;

{
  eqmod (limbs 44 [H0, H1, H2])
        (((limbs 44 [h0, h1, h2]) + (limbs 64 [inp0, inp1, padbit]))
         *
         (limbs 64 [r0, r1]))
        (2**130-5)
&&
  true
}

