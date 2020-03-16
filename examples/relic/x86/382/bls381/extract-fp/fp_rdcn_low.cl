proc main (uint64 c0, uint64 c1, uint64 c2, uint64 c3,  uint64 c4,  uint64 c5,
           uint64 c6, uint64 c7, uint64 c8, uint64 c9, uint64 c10, uint64 c11) =
{
  true
&&
  limbs 64 [c0, c1, c2, c3,  c4,  c5,
            c6, c7, c8, c9, c10, c11] <
  sq (limbs 64 [0xb9feffffffffaaab@64, 0x1eabfffeb153ffff@64,
              0x6730d2a0f6b0f624@64, 0x64774b84f38512bf@64,
              0x4b1ba7b6434bacd7@64, 0x1a0111ea397fe69a@64,
              0@64, 0@64, 0@64, 0@64, 0@64, 0@64])
}

mov L0x7fffffffdd80 c0;
mov L0x7fffffffdd88 c1;
mov L0x7fffffffdd90 c2;
mov L0x7fffffffdd98 c3;
mov L0x7fffffffdda0 c4;
mov L0x7fffffffdda8 c5;
mov L0x7fffffffddb0 c6;
mov L0x7fffffffddb8 c7;
mov L0x7fffffffddc0 c8;
mov L0x7fffffffddc8 c9;
mov L0x7fffffffddd0 c10;
mov L0x7fffffffddd8 c11;

mov L0x405030 0xb9feffffffffaaab@uint64;
mov L0x405038 0x1eabfffeb153ffff@uint64;
mov L0x405040 0x6730d2a0f6b0f624@uint64;
mov L0x405048 0x64774b84f38512bf@uint64;
mov L0x405050 0x4b1ba7b6434bacd7@uint64;
mov L0x405058 0x1a0111ea397fe69a@uint64;



(* push   %r12                                     #! PC = 0x4203587 *)
/* push   %%r12                                     #! 0x4203587 = 0x4203587; */
(* push   %r13                                     #! PC = 0x4203589 *)
/* push   %%r13                                     #! 0x4203589 = 0x4203589; */
(* push   %r14                                     #! PC = 0x4203591 *)
/* push   %%r14                                     #! 0x4203591 = 0x4203591; */
(* push   %r15                                     #! PC = 0x4203593 *)
/* push   %%r15                                     #! 0x4203593 = 0x4203593; */
(* push   %rbx                                     #! PC = 0x4203595 *)
/* push   %rbx                                     #! 0x4203595 = 0x4203595; */
(* push   %rbp                                     #! PC = 0x4203596 *)
/* push   %rbp                                     #! 0x4203596 = 0x4203596; */
(* lea    0x2bdc(%rip),%rbx        # 0x405030      #! PC = 0x4203597 *)
/* lea    %%EA,%rbx        # 0x405030      #! 0x4203597 = 0x4203597; */
(* xor    %r9,%r9                                  #! PC = 0x4203604 *)
mov r9 0@uint64;
(* movabs $0x89f3fffcfffcfffd,%rcx                 #! PC = 0x4203607 *)
mov rcx 0x89f3fffcfffcfffd@uint64;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffdd80; Value = 0x000000006562b026; PC = 0x4203617 *)
mov r8 L0x7fffffffdd80;
(* mov    %r8,%rax                                 #! PC = 0x4203620 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x4203623 *)
mull rdx rax rax rcx;
(* mov    %rax,(%rsi)                              #! EA = L0x7fffffffdd80; PC = 0x4203626 *)
mov L0x7fffffffdd80 rax;
(* mulq   (%rbx)                                   #! EA = L0x405030; PC = 0x4203629 *)
mull rdx rax rax L0x405030;
(* add    %rax,%r8                                 #! PC = 0x4203632 *)
adds carry r8 r8 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r8 0 (2**64) && true;
assume r8 + 0 = 0 && true;
(* adc    %rdx,%r9                                 #! PC = 0x4203635 *)
adc r9 r9 rdx carry;
(* xor    %r10,%r10                                #! PC = 0x4203638 *)
mov r10 0@uint64;
(* xor    %r8,%r8                                  #! PC = 0x4203641 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdd80; Value = 0x0a0ebf64bf65ef8e; PC = 0x4203644 *)
mov rax L0x7fffffffdd80;
(* mulq   0x8(%rbx)                                #! EA = L0x405038; PC = 0x4203647 *)
mull rdx rax rax L0x405038;
(* add    %rax,%r9                                 #! PC = 0x4203651 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4203654 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4203657 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x8(%rsi),%r9                            #! EA = L0x7fffffffdd88; Value = 0x00007ffff791c627; PC = 0x4203661 *)
adds carry r9 r9 L0x7fffffffdd88;
(* adc    $0x0,%r10                                #! PC = 0x4203665 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4203669 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,%rax                                 #! PC = 0x4203673 *)
mov rax r9;
(* mul    %rcx                                     #! PC = 0x4203676 *)
mull rdx rax rax rcx;
(* mov    %rax,0x8(%rsi)                           #! EA = L0x7fffffffdd88; PC = 0x4203679 *)
mov L0x7fffffffdd88 rax;
(* mulq   (%rbx)                                   #! EA = L0x405030; PC = 0x4203683 *)
mull rdx rax rax L0x405030;
(* add    %rax,%r9                                 #! PC = 0x4203686 *)
adds carry r9 r9 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r9 0 (2**64) && true;
assume r9 = 0 && true;
(* adc    %rdx,%r10                                #! PC = 0x4203689 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4203692 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4203696 *)
mov r9 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdd80; Value = 0x0a0ebf64bf65ef8e; PC = 0x4203699 *)
mov rax L0x7fffffffdd80;
(* mulq   0x10(%rbx)                               #! EA = L0x405040; PC = 0x4203702 *)
mull rdx rax rax L0x405040;
(* add    %rax,%r10                                #! PC = 0x4203706 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4203709 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4203712 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdd88; Value = 0xca6db3463700944e; PC = 0x4203716 *)
mov rax L0x7fffffffdd88;
(* mulq   0x8(%rbx)                                #! EA = L0x405038; PC = 0x4203720 *)
mull rdx rax rax L0x405038;
(* add    %rax,%r10                                #! PC = 0x4203724 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4203727 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4203730 *)
adc r9 r9 0x0@uint64 carry;
(* add    0x10(%rsi),%r10                          #! EA = L0x7fffffffdd90; Value = 0x00000000ffffffff; PC = 0x4203734 *)
adds carry r10 r10 L0x7fffffffdd90;
(* adc    $0x0,%r8                                 #! PC = 0x4203738 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4203742 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x4203746 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x4203749 *)
mull rdx rax rax rcx;
(* mov    %rax,0x10(%rsi)                          #! EA = L0x7fffffffdd90; PC = 0x4203752 *)
mov L0x7fffffffdd90 rax;
(* mulq   (%rbx)                                   #! EA = L0x405030; PC = 0x4203756 *)
mull rdx rax rax L0x405030;
(* add    %rax,%r10                                #! PC = 0x4203759 *)
adds carry r10 r10 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r10 0 (2**64) && true;
assume r10 = 0 && true;
(* adc    %rdx,%r8                                 #! PC = 0x4203762 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4203765 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4203769 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdd80; Value = 0x0a0ebf64bf65ef8e; PC = 0x4203772 *)
mov rax L0x7fffffffdd80;
(* mulq   0x18(%rbx)                               #! EA = L0x405048; PC = 0x4203775 *)
mull rdx rax rax L0x405048;
(* add    %rax,%r8                                 #! PC = 0x4203779 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4203782 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4203785 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdd88; Value = 0xca6db3463700944e; PC = 0x4203789 *)
mov rax L0x7fffffffdd88;
(* mulq   0x10(%rbx)                               #! EA = L0x405040; PC = 0x4203793 *)
mull rdx rax rax L0x405040;
(* add    %rax,%r8                                 #! PC = 0x4203797 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4203800 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4203803 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdd90; Value = 0xd1d24ec1b124dc5d; PC = 0x4203807 *)
mov rax L0x7fffffffdd90;
(* mulq   0x8(%rbx)                                #! EA = L0x405038; PC = 0x4203811 *)
mull rdx rax rax L0x405038;
(* add    %rax,%r8                                 #! PC = 0x4203815 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4203818 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4203821 *)
adc r10 r10 0x0@uint64 carry;
(* add    0x18(%rsi),%r8                           #! EA = L0x7fffffffdd98; Value = 0x00007ffff7ffe718; PC = 0x4203825 *)
adds carry r8 r8 L0x7fffffffdd98;
(* adc    $0x0,%r9                                 #! PC = 0x4203829 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4203833 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r8,%rax                                 #! PC = 0x4203837 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x4203840 *)
mull rdx rax rax rcx;
(* mov    %rax,0x18(%rsi)                          #! EA = L0x7fffffffdd98; PC = 0x4203843 *)
mov L0x7fffffffdd98 rax;
(* mulq   (%rbx)                                   #! EA = L0x405030; PC = 0x4203847 *)
mull rdx rax rax L0x405030;
(* add    %rax,%r8                                 #! PC = 0x4203850 *)
adds carry r8 r8 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r8 0 (2**64) && true;
assume r8 = 0 && true;
(* adc    %rdx,%r9                                 #! PC = 0x4203853 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4203856 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4203860 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdd80; Value = 0x0a0ebf64bf65ef8e; PC = 0x4203863 *)
mov rax L0x7fffffffdd80;
(* mulq   0x20(%rbx)                               #! EA = L0x405050; PC = 0x4203866 *)
mull rdx rax rax L0x405050;
(* add    %rax,%r9                                 #! PC = 0x4203870 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4203873 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4203876 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdd88; Value = 0xca6db3463700944e; PC = 0x4203880 *)
mov rax L0x7fffffffdd88;
(* mulq   0x18(%rbx)                               #! EA = L0x405048; PC = 0x4203884 *)
mull rdx rax rax L0x405048;
(* add    %rax,%r9                                 #! PC = 0x4203888 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4203891 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4203894 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdd90; Value = 0xd1d24ec1b124dc5d; PC = 0x4203898 *)
mov rax L0x7fffffffdd90;
(* mulq   0x10(%rbx)                               #! EA = L0x405040; PC = 0x4203902 *)
mull rdx rax rax L0x405040;
(* add    %rax,%r9                                 #! PC = 0x4203906 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4203909 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4203912 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdd98; Value = 0x41e88fc6ade64fe8; PC = 0x4203916 *)
mov rax L0x7fffffffdd98;
(* mulq   0x8(%rbx)                                #! EA = L0x405038; PC = 0x4203920 *)
mull rdx rax rax L0x405038;
(* add    %rax,%r9                                 #! PC = 0x4203924 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4203927 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4203930 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x20(%rsi),%r9                           #! EA = L0x7fffffffdda0; Value = 0x00007ffff7ffa280; PC = 0x4203934 *)
adds carry r9 r9 L0x7fffffffdda0;
(* adc    $0x0,%r10                                #! PC = 0x4203938 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4203942 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,%rax                                 #! PC = 0x4203946 *)
mov rax r9;
(* mul    %rcx                                     #! PC = 0x4203949 *)
mull rdx rax rax rcx;
(* mov    %rax,0x20(%rsi)                          #! EA = L0x7fffffffdda0; PC = 0x4203952 *)
mov L0x7fffffffdda0 rax;
(* mulq   (%rbx)                                   #! EA = L0x405030; PC = 0x4203956 *)
mull rdx rax rax L0x405030;
(* add    %rax,%r9                                 #! PC = 0x4203959 *)
adds carry r9 r9 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r9 0 (2**64) && true;
assume r9 = 0 && true;
(* adc    %rdx,%r10                                #! PC = 0x4203962 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4203965 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4203969 *)
mov r9 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdd80; Value = 0x0a0ebf64bf65ef8e; PC = 0x4203972 *)
mov rax L0x7fffffffdd80;
(* mulq   0x28(%rbx)                               #! EA = L0x405058; PC = 0x4203975 *)
mull rdx rax rax L0x405058;
(* add    %rax,%r10                                #! PC = 0x4203979 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4203982 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4203985 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdd88; Value = 0xca6db3463700944e; PC = 0x4203989 *)
mov rax L0x7fffffffdd88;
(* mulq   0x20(%rbx)                               #! EA = L0x405050; PC = 0x4203993 *)
mull rdx rax rax L0x405050;
(* add    %rax,%r10                                #! PC = 0x4203997 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4204000 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4204003 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdd90; Value = 0xd1d24ec1b124dc5d; PC = 0x4204007 *)
mov rax L0x7fffffffdd90;
(* mulq   0x18(%rbx)                               #! EA = L0x405048; PC = 0x4204011 *)
mull rdx rax rax L0x405048;
(* add    %rax,%r10                                #! PC = 0x4204015 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4204018 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4204021 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdd98; Value = 0x41e88fc6ade64fe8; PC = 0x4204025 *)
mov rax L0x7fffffffdd98;
(* mulq   0x10(%rbx)                               #! EA = L0x405040; PC = 0x4204029 *)
mull rdx rax rax L0x405040;
(* add    %rax,%r10                                #! PC = 0x4204033 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4204036 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4204039 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdda0; Value = 0x7531d2c34c0eddfa; PC = 0x4204043 *)
mov rax L0x7fffffffdda0;
(* mulq   0x8(%rbx)                                #! EA = L0x405038; PC = 0x4204047 *)
mull rdx rax rax L0x405038;
(* add    %rax,%r10                                #! PC = 0x4204051 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4204054 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4204057 *)
adc r9 r9 0x0@uint64 carry;
(* add    0x28(%rsi),%r10                          #! EA = L0x7fffffffdda8; Value = 0x00007ffff7ffe700; PC = 0x4204061 *)
adds carry r10 r10 L0x7fffffffdda8;
(* adc    $0x0,%r8                                 #! PC = 0x4204065 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4204069 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x4204073 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x4204076 *)
mull rdx rax rax rcx;
(* mov    %rax,0x28(%rsi)                          #! EA = L0x7fffffffdda8; PC = 0x4204079 *)
mov L0x7fffffffdda8 rax;
(* mulq   (%rbx)                                   #! EA = L0x405030; PC = 0x4204083 *)
mull rdx rax rax L0x405030;
(* add    %rax,%r10                                #! PC = 0x4204086 *)
adds carry r10 r10 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r10 0 (2**64) && true;
assume r10 = 0 && true;
(* adc    %rdx,%r8                                 #! PC = 0x4204089 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4204092 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4204096 *)
mov r10 0@uint64;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdd88; Value = 0xca6db3463700944e; PC = 0x4204099 *)
mov rax L0x7fffffffdd88;
(* mulq   0x28(%rbx)                               #! EA = L0x405058; PC = 0x4204103 *)
mull rdx rax rax L0x405058;
(* add    %rax,%r8                                 #! PC = 0x4204107 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4204110 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4204113 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdd90; Value = 0xd1d24ec1b124dc5d; PC = 0x4204117 *)
mov rax L0x7fffffffdd90;
(* mulq   0x20(%rbx)                               #! EA = L0x405050; PC = 0x4204121 *)
mull rdx rax rax L0x405050;
(* add    %rax,%r8                                 #! PC = 0x4204125 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4204128 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4204131 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdd98; Value = 0x41e88fc6ade64fe8; PC = 0x4204135 *)
mov rax L0x7fffffffdd98;
(* mulq   0x18(%rbx)                               #! EA = L0x405048; PC = 0x4204139 *)
mull rdx rax rax L0x405048;
(* add    %rax,%r8                                 #! PC = 0x4204143 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4204146 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4204149 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdda0; Value = 0x7531d2c34c0eddfa; PC = 0x4204153 *)
mov rax L0x7fffffffdda0;
(* mulq   0x10(%rbx)                               #! EA = L0x405040; PC = 0x4204157 *)
mull rdx rax rax L0x405040;
(* add    %rax,%r8                                 #! PC = 0x4204161 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4204164 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4204167 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdda8; Value = 0xb61cd510845bc998; PC = 0x4204171 *)
mov rax L0x7fffffffdda8;
(* mulq   0x8(%rbx)                                #! EA = L0x405038; PC = 0x4204175 *)
mull rdx rax rax L0x405038;
(* add    %rax,%r8                                 #! PC = 0x4204179 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4204182 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4204185 *)
adc r10 r10 0x0@uint64 carry;
(* add    0x30(%rsi),%r8                           #! EA = L0x7fffffffddb0; Value = 0x00007fffffffdd01; PC = 0x4204189 *)
adds carry r8 r8 L0x7fffffffddb0;
(* adc    $0x0,%r9                                 #! PC = 0x4204193 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4204197 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r8,0x30(%rsi)                           #! EA = L0x7fffffffddb0; PC = 0x4204201 *)
mov L0x7fffffffddb0 r8;
(* xor    %r8,%r8                                  #! PC = 0x4204205 *)
mov r8 0@uint64;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdd90; Value = 0xd1d24ec1b124dc5d; PC = 0x4204208 *)
mov rax L0x7fffffffdd90;
(* mulq   0x28(%rbx)                               #! EA = L0x405058; PC = 0x4204212 *)
mull rdx rax rax L0x405058;
(* add    %rax,%r9                                 #! PC = 0x4204216 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4204219 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4204222 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdd98; Value = 0x41e88fc6ade64fe8; PC = 0x4204226 *)
mov rax L0x7fffffffdd98;
(* mulq   0x20(%rbx)                               #! EA = L0x405050; PC = 0x4204230 *)
mull rdx rax rax L0x405050;
(* add    %rax,%r9                                 #! PC = 0x4204234 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4204237 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4204240 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdda0; Value = 0x7531d2c34c0eddfa; PC = 0x4204244 *)
mov rax L0x7fffffffdda0;
(* mulq   0x18(%rbx)                               #! EA = L0x405048; PC = 0x4204248 *)
mull rdx rax rax L0x405048;
(* add    %rax,%r9                                 #! PC = 0x4204252 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4204255 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4204258 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdda8; Value = 0xb61cd510845bc998; PC = 0x4204262 *)
mov rax L0x7fffffffdda8;
(* mulq   0x10(%rbx)                               #! EA = L0x405040; PC = 0x4204266 *)
mull rdx rax rax L0x405040;
(* add    %rax,%r9                                 #! PC = 0x4204270 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4204273 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4204276 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x38(%rsi),%r9                           #! EA = L0x7fffffffddb8; Value = 0x0165df0cba1a2e88; PC = 0x4204280 *)
adds carry r9 r9 L0x7fffffffddb8;
(* adc    $0x0,%r10                                #! PC = 0x4204284 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4204288 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,0x38(%rsi)                           #! EA = L0x7fffffffddb8; PC = 0x4204292 *)
mov L0x7fffffffddb8 r9;
(* xor    %r9,%r9                                  #! PC = 0x4204296 *)
mov r9 0@uint64;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdd98; Value = 0x41e88fc6ade64fe8; PC = 0x4204299 *)
mov rax L0x7fffffffdd98;
(* mulq   0x28(%rbx)                               #! EA = L0x405058; PC = 0x4204303 *)
mull rdx rax rax L0x405058;
(* add    %rax,%r10                                #! PC = 0x4204307 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4204310 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4204313 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdda0; Value = 0x7531d2c34c0eddfa; PC = 0x4204317 *)
mov rax L0x7fffffffdda0;
(* mulq   0x20(%rbx)                               #! EA = L0x405050; PC = 0x4204321 *)
mull rdx rax rax L0x405050;
(* add    %rax,%r10                                #! PC = 0x4204325 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4204328 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4204331 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdda8; Value = 0xb61cd510845bc998; PC = 0x4204335 *)
mov rax L0x7fffffffdda8;
(* mulq   0x18(%rbx)                               #! EA = L0x405048; PC = 0x4204339 *)
mull rdx rax rax L0x405048;
(* add    %rax,%r10                                #! PC = 0x4204343 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4204346 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4204349 *)
adc r9 r9 0x0@uint64 carry;
(* add    0x40(%rsi),%r10                          #! EA = L0x7fffffffddc0; Value = 0x0000000000000000; PC = 0x4204353 *)
adds carry r10 r10 L0x7fffffffddc0;
(* adc    $0x0,%r8                                 #! PC = 0x4204357 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4204361 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,0x40(%rsi)                          #! EA = L0x7fffffffddc0; PC = 0x4204365 *)
mov L0x7fffffffddc0 r10;
(* xor    %r10,%r10                                #! PC = 0x4204369 *)
mov r10 0@uint64;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdda0; Value = 0x7531d2c34c0eddfa; PC = 0x4204372 *)
mov rax L0x7fffffffdda0;
(* mulq   0x28(%rbx)                               #! EA = L0x405058; PC = 0x4204376 *)
mull rdx rax rax L0x405058;
(* add    %rax,%r8                                 #! PC = 0x4204380 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4204383 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4204386 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdda8; Value = 0xb61cd510845bc998; PC = 0x4204390 *)
mov rax L0x7fffffffdda8;
(* mulq   0x20(%rbx)                               #! EA = L0x405050; PC = 0x4204394 *)
mull rdx rax rax L0x405050;
(* add    %rax,%r8                                 #! PC = 0x4204398 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4204401 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4204404 *)
adc r10 r10 0x0@uint64 carry;
(* add    0x48(%rsi),%r8                           #! EA = L0x7fffffffddc8; Value = 0x0000000000000000; PC = 0x4204408 *)
adds carry r8 r8 L0x7fffffffddc8;
(* adc    $0x0,%r9                                 #! PC = 0x4204412 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4204416 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r8,0x48(%rsi)                           #! EA = L0x7fffffffddc8; PC = 0x4204420 *)
mov L0x7fffffffddc8 r8;
(* xor    %r8,%r8                                  #! PC = 0x4204424 *)
mov r8 0@uint64;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdda8; Value = 0xb61cd510845bc998; PC = 0x4204427 *)
mov rax L0x7fffffffdda8;
(* mulq   0x28(%rbx)                               #! EA = L0x405058; PC = 0x4204431 *)
mull rdx rax rax L0x405058;
(* add    %rax,%r9                                 #! PC = 0x4204435 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4204438 *)
adcs carry r10 r10 rdx carry;
(* NOTE: cannot carry *)
assert true && carry = 0@1;
assume carry = 0 && true;
(* adc    $0x0,%r8                                 #! PC = 0x4204441 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x50(%rsi),%r9                           #! EA = L0x7fffffffddd0; Value = 0x0000000000000000; PC = 0x4204445 *)
adds carry r9 r9 L0x7fffffffddd0;
(* adc    $0x0,%r10                                #! PC = 0x4204449 *)
adcs carry r10 r10 0x0@uint64 carry;
(* NOTE: cannot carry *)
assert true && carry = 0@1;
assume carry = 0 && true;
(* adc    $0x0,%r8                                 #! PC = 0x4204453 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,0x50(%rsi)                           #! EA = L0x7fffffffddd0; PC = 0x4204457 *)
mov L0x7fffffffddd0 r9;
(* xor    %r9,%r9                                  #! PC = 0x4204461 *)
mov r9 0@uint64;
(* add    0x58(%rsi),%r10                          #! EA = L0x7fffffffddd8; Value = 0x0000000000000000; PC = 0x4204464 *)
adds carry r10 r10 L0x7fffffffddd8;
(* NOTE: cannot carry *)
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r10,0x58(%rsi)                          #! EA = L0x7fffffffddd8; PC = 0x4204468 *)
mov L0x7fffffffddd8 r10;
(* mov    0x30(%rsi),%r11                          #! EA = L0x7fffffffddb0; Value = 0x2335b9938ea71a25; PC = 0x4204472 *)
mov r11 L0x7fffffffddb0;
(* mov    0x38(%rsi),%r12                          #! EA = L0x7fffffffddb8; Value = 0x9c0a8cf4d1cc1324; PC = 0x4204476 *)
mov r12 L0x7fffffffddb8;
(* mov    0x40(%rsi),%r13                          #! EA = L0x7fffffffddc0; Value = 0x9535ac94c6ac3ecd; PC = 0x4204480 *)
mov r13 L0x7fffffffddc0;
(* mov    0x48(%rsi),%r14                          #! EA = L0x7fffffffddc8; Value = 0x57a562e6f554622e; PC = 0x4204484 *)
mov r14 L0x7fffffffddc8;
(* mov    0x50(%rsi),%r15                          #! EA = L0x7fffffffddd0; Value = 0x64a624c7e8f862cf; PC = 0x4204488 *)
mov r15 L0x7fffffffddd0;
(* mov    0x58(%rsi),%rcx                          #! EA = L0x7fffffffddd8; Value = 0x127fb07f0bea1882; PC = 0x4204492 *)
mov rcx L0x7fffffffddd8;
(* sub    0x2859(%rip),%r11        # 0x405030      #! EA = L0x405030; Value = 0xb9feffffffffaaab; PC = 0x4204496 *)
subb carry r11 r11 L0x405030;
(* sbb    0x285a(%rip),%r12        # 0x405038      #! EA = L0x405038; Value = 0x1eabfffeb153ffff; PC = 0x4204503 *)
sbbs carry r12 r12 L0x405038 carry;
(* sbb    0x285b(%rip),%r13        # 0x405040      #! EA = L0x405040; Value = 0x6730d2a0f6b0f624; PC = 0x4204510 *)
sbbs carry r13 r13 L0x405040 carry;
(* sbb    0x285c(%rip),%r14        # 0x405048      #! EA = L0x405048; Value = 0x64774b84f38512bf; PC = 0x4204517 *)
sbbs carry r14 r14 L0x405048 carry;
(* sbb    0x285d(%rip),%r15        # 0x405050      #! EA = L0x405050; Value = 0x4b1ba7b6434bacd7; PC = 0x4204524 *)
sbbs carry r15 r15 L0x405050 carry;
(* sbb    0x285e(%rip),%rcx        # 0x405058      #! EA = L0x405058; Value = 0x1a0111ea397fe69a; PC = 0x4204531 *)
sbbs carry rcx rcx L0x405058 carry;
(* cmovb  0x30(%rsi),%r11                          #! EA = L0x7fffffffddb0; Value = 0x2335b9938ea71a25; PC = 0x4204538 *)
cmov r11 carry L0x7fffffffddb0 r11;
(* cmovb  0x38(%rsi),%r12                          #! EA = L0x7fffffffddb8; Value = 0x9c0a8cf4d1cc1324; PC = 0x4204543 *)
cmov r12 carry L0x7fffffffddb8 r12;
(* cmovb  0x40(%rsi),%r13                          #! EA = L0x7fffffffddc0; Value = 0x9535ac94c6ac3ecd; PC = 0x4204548 *)
cmov r13 carry L0x7fffffffddc0 r13;
(* cmovb  0x48(%rsi),%r14                          #! EA = L0x7fffffffddc8; Value = 0x57a562e6f554622e; PC = 0x4204553 *)
cmov r14 carry L0x7fffffffddc8 r14;
(* cmovb  0x50(%rsi),%r15                          #! EA = L0x7fffffffddd0; Value = 0x64a624c7e8f862cf; PC = 0x4204558 *)
cmov r15 carry L0x7fffffffddd0 r15;
(* cmovb  0x58(%rsi),%rcx                          #! EA = L0x7fffffffddd8; Value = 0x127fb07f0bea1882; PC = 0x4204563 *)
cmov rcx carry L0x7fffffffddd8 rcx;
(* mov    %r11,(%rdi)                              #! EA = L0x7fffffffdde0; PC = 0x4204568 *)
mov L0x7fffffffdde0 r11;
(* mov    %r12,0x8(%rdi)                           #! EA = L0x7fffffffdde8; PC = 0x4204571 *)
mov L0x7fffffffdde8 r12;
(* mov    %r13,0x10(%rdi)                          #! EA = L0x7fffffffddf0; PC = 0x4204575 *)
mov L0x7fffffffddf0 r13;
(* mov    %r14,0x18(%rdi)                          #! EA = L0x7fffffffddf8; PC = 0x4204579 *)
mov L0x7fffffffddf8 r14;
(* mov    %r15,0x20(%rdi)                          #! EA = L0x7fffffffde00; PC = 0x4204583 *)
mov L0x7fffffffde00 r15;
(* mov    %rcx,0x28(%rdi)                          #! EA = L0x7fffffffde08; PC = 0x4204587 *)
mov L0x7fffffffde08 rcx;
(* pop    %rbp                                     #! PC = 0x4204591 *)
/* pop    %rbp                                     #! 0x4204591 = 0x4204591; */
(* pop    %rbx                                     #! PC = 0x4204592 *)
/* pop    %rbx                                     #! 0x4204592 = 0x4204592; */
/* (* pop    %r15                                     #! PC = 0x4204593 *) */
/* pop    %%r15                                     #! 0x4204593 = 0x4204593; */
(* pop    %r14                                     #! PC = 0x4204595 *)
/* pop    %%r14                                     #! 0x4204595 = 0x4204595; */
(* pop    %r13                                     #! PC = 0x4204597 *)
/* pop    %%r13                                     #! 0x4204597 = 0x4204597; */
(* pop    %r12                                     #! PC = 0x4204599 *)
/* pop    %%r12                                     #! 0x4204599 = 0x4204599; */
(* #retq                                           #! PC = 0x4204601 *)
/* #retq                                           #! 0x4204601 = 0x4204601; */

mov r0 L0x7fffffffdde0;
mov r1 L0x7fffffffdde8;
mov r2 L0x7fffffffddf0;
mov r3 L0x7fffffffddf8;
mov r4 L0x7fffffffde00;
mov r5 L0x7fffffffde08;

{
  eqmod (limbs 64 [0, 0, 0, 0, 0, 0, r0, r1, r2, r3, r4, r5])
        (limbs 64 [c0, c1, c2, c3, c4, c5,
                   c6, c7, c8, c9, c10, c11])
         (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
         0x6730d2a0f6b0f624, 0x64774b84f38512bf,
         0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a])
  &&
  limbs 64 [r0, r1, r2, r3, r4, r5] <
  limbs 64 [0xb9feffffffffaaab@64, 0x1eabfffeb153ffff@64,
  0x6730d2a0f6b0f624@64, 0x64774b84f38512bf@64,
  0x4b1ba7b6434bacd7@64, 0x1a0111ea397fe69a@64]
}
