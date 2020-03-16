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

(* push   %r12                                     #! PC = 0x4201781 *)
/* push   %%r12                                     #! 0x4201781 = 0x4201781; */
(* push   %r13                                     #! PC = 0x4201783 *)
/* push   %%r13                                     #! 0x4201783 = 0x4201783; */
(* push   %r14                                     #! PC = 0x4201785 *)
/* push   %%r14                                     #! 0x4201785 = 0x4201785; */
(* push   %r15                                     #! PC = 0x4201787 *)
/* push   %%r15                                     #! 0x4201787 = 0x4201787; */
(* push   %rbx                                     #! PC = 0x4201789 *)
/* push   %%rbx                                     #! 0x4201789 = 0x4201789; */
(* push   %rbp                                     #! PC = 0x4201790 *)
/* push   %%rbp                                     #! 0x4201790 = 0x4201790; */
(* sub    $0x60,%rsp                               #! PC = 0x4201791 *)
/* sub    $0x60,%rsp                               #! 0x4201791 = 0x4201791; */
(* mov    %rdx,%rcx                                #! PC = 0x4201795 *)
/* mov rcx rdx; */
(* lea    0x32e3(%rip),%rbx        # 0x405030      #! PC = 0x4201798 *)
/* lea    %%EA,%%rbx        # 0x405030      #! 0x4201798 = 0x4201798; */
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffde40; Value = 0x00007fffffffde6e; PC = 0x4201805 *)
mov rax L0x7fffffffde40;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffde10; PC = 0x4201808 *)
mull rdx rax rax L0x7fffffffde10;
(* mov    %rax,(%rsp)                              #! EA = L0x7fffffffdc88; PC = 0x4201811 *)
mov L0x7fffffffdc88 rax;
(* mov    %rdx,%r8                                 #! PC = 0x4201815 *)
mov r8 rdx;
(* xor    %r9,%r9                                  #! PC = 0x4201818 *)
mov r9 0@uint64;
(* xor    %r10,%r10                                #! PC = 0x4201821 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffde40; Value = 0x00007fffffffde6e; PC = 0x4201824 *)
mov rax L0x7fffffffde40;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffde18; PC = 0x4201827 *)
mull rdx rax rax L0x7fffffffde18;
(* add    %rax,%r8                                 #! PC = 0x4201831 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4201834 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4201837 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffde48; Value = 0x0000000000000000; PC = 0x4201841 *)
mov rax L0x7fffffffde48;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffde10; PC = 0x4201845 *)
mull rdx rax rax L0x7fffffffde10;
(* add    %rax,%r8                                 #! PC = 0x4201848 *)
adds carry r8 r8 rax;
(* mov    %r8,0x8(%rsp)                            #! EA = L0x7fffffffdc90; PC = 0x4201851 *)
mov L0x7fffffffdc90 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4201856 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4201859 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4201863 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffde40; Value = 0x00007fffffffde6e; PC = 0x4201866 *)
mov rax L0x7fffffffde40;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffde20; PC = 0x4201869 *)
mull rdx rax rax L0x7fffffffde20;
(* add    %rax,%r9                                 #! PC = 0x4201873 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4201876 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4201879 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffde48; Value = 0x0000000000000000; PC = 0x4201883 *)
mov rax L0x7fffffffde48;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffde18; PC = 0x4201887 *)
mull rdx rax rax L0x7fffffffde18;
(* add    %rax,%r9                                 #! PC = 0x4201891 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4201894 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4201897 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffde50; Value = 0x0000000000402840; PC = 0x4201901 *)
mov rax L0x7fffffffde50;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffde10; PC = 0x4201905 *)
mull rdx rax rax L0x7fffffffde10;
(* add    %rax,%r9                                 #! PC = 0x4201908 *)
adds carry r9 r9 rax;
(* mov    %r9,0x10(%rsp)                           #! EA = L0x7fffffffdc98; PC = 0x4201911 *)
mov L0x7fffffffdc98 r9;
(* adc    %rdx,%r10                                #! PC = 0x4201916 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4201919 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4201923 *)
mov r9 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffde40; Value = 0x00007fffffffde6e; PC = 0x4201926 *)
mov rax L0x7fffffffde40;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffde28; PC = 0x4201929 *)
mull rdx rax rax L0x7fffffffde28;
(* add    %rax,%r10                                #! PC = 0x4201933 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4201936 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4201939 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffde48; Value = 0x0000000000000000; PC = 0x4201943 *)
mov rax L0x7fffffffde48;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffde20; PC = 0x4201947 *)
mull rdx rax rax L0x7fffffffde20;
(* add    %rax,%r10                                #! PC = 0x4201951 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4201954 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4201957 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffde50; Value = 0x0000000000402840; PC = 0x4201961 *)
mov rax L0x7fffffffde50;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffde18; PC = 0x4201965 *)
mull rdx rax rax L0x7fffffffde18;
(* add    %rax,%r10                                #! PC = 0x4201969 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4201972 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4201975 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffde58; Value = 0x0000000000401050; PC = 0x4201979 *)
mov rax L0x7fffffffde58;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffde10; PC = 0x4201983 *)
mull rdx rax rax L0x7fffffffde10;
(* add    %rax,%r10                                #! PC = 0x4201986 *)
adds carry r10 r10 rax;
(* mov    %r10,0x18(%rsp)                          #! EA = L0x7fffffffdca0; PC = 0x4201989 *)
mov L0x7fffffffdca0 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4201994 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4201997 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4202001 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffde40; Value = 0x00007fffffffde6e; PC = 0x4202004 *)
mov rax L0x7fffffffde40;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffde30; PC = 0x4202007 *)
mull rdx rax rax L0x7fffffffde30;
(* add    %rax,%r8                                 #! PC = 0x4202011 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4202014 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4202017 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffde48; Value = 0x0000000000000000; PC = 0x4202021 *)
mov rax L0x7fffffffde48;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffde28; PC = 0x4202025 *)
mull rdx rax rax L0x7fffffffde28;
(* add    %rax,%r8                                 #! PC = 0x4202029 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4202032 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4202035 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffde50; Value = 0x0000000000402840; PC = 0x4202039 *)
mov rax L0x7fffffffde50;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffde20; PC = 0x4202043 *)
mull rdx rax rax L0x7fffffffde20;
(* add    %rax,%r8                                 #! PC = 0x4202047 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4202050 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4202053 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffde58; Value = 0x0000000000401050; PC = 0x4202057 *)
mov rax L0x7fffffffde58;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffde18; PC = 0x4202061 *)
mull rdx rax rax L0x7fffffffde18;
(* add    %rax,%r8                                 #! PC = 0x4202065 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4202068 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4202071 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffde60; Value = 0x00007fffffffdf50; PC = 0x4202075 *)
mov rax L0x7fffffffde60;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffde10; PC = 0x4202079 *)
mull rdx rax rax L0x7fffffffde10;
(* add    %rax,%r8                                 #! PC = 0x4202082 *)
adds carry r8 r8 rax;
(* mov    %r8,0x20(%rsp)                           #! EA = L0x7fffffffdca8; PC = 0x4202085 *)
mov L0x7fffffffdca8 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4202090 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4202093 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4202097 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffde40; Value = 0x00007fffffffde6e; PC = 0x4202100 *)
mov rax L0x7fffffffde40;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffde38; PC = 0x4202103 *)
mull rdx rax rax L0x7fffffffde38;
(* add    %rax,%r9                                 #! PC = 0x4202107 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4202110 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4202113 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffde48; Value = 0x0000000000000000; PC = 0x4202117 *)
mov rax L0x7fffffffde48;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffde30; PC = 0x4202121 *)
mull rdx rax rax L0x7fffffffde30;
(* add    %rax,%r9                                 #! PC = 0x4202125 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4202128 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4202131 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffde50; Value = 0x0000000000402840; PC = 0x4202135 *)
mov rax L0x7fffffffde50;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffde28; PC = 0x4202139 *)
mull rdx rax rax L0x7fffffffde28;
(* add    %rax,%r9                                 #! PC = 0x4202143 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4202146 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4202149 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffde58; Value = 0x0000000000401050; PC = 0x4202153 *)
mov rax L0x7fffffffde58;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffde20; PC = 0x4202157 *)
mull rdx rax rax L0x7fffffffde20;
(* add    %rax,%r9                                 #! PC = 0x4202161 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4202164 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4202167 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffde60; Value = 0x00007fffffffdf50; PC = 0x4202171 *)
mov rax L0x7fffffffde60;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffde18; PC = 0x4202175 *)
mull rdx rax rax L0x7fffffffde18;
(* add    %rax,%r9                                 #! PC = 0x4202179 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4202182 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4202185 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffde68; Value = 0x0000000000000000; PC = 0x4202189 *)
mov rax L0x7fffffffde68;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffde10; PC = 0x4202193 *)
mull rdx rax rax L0x7fffffffde10;
(* add    %rax,%r9                                 #! PC = 0x4202196 *)
adds carry r9 r9 rax;
(* mov    %r9,0x28(%rsp)                           #! EA = L0x7fffffffdcb0; PC = 0x4202199 *)
mov L0x7fffffffdcb0 r9;
(* adc    %rdx,%r10                                #! PC = 0x4202204 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4202207 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4202211 *)
mov r9 0@uint64;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffde48; Value = 0x0000000000000000; PC = 0x4202214 *)
mov rax L0x7fffffffde48;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffde38; PC = 0x4202218 *)
mull rdx rax rax L0x7fffffffde38;
(* add    %rax,%r10                                #! PC = 0x4202222 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4202225 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4202228 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffde50; Value = 0x0000000000402840; PC = 0x4202232 *)
mov rax L0x7fffffffde50;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffde30; PC = 0x4202236 *)
mull rdx rax rax L0x7fffffffde30;
(* add    %rax,%r10                                #! PC = 0x4202240 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4202243 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4202246 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffde58; Value = 0x0000000000401050; PC = 0x4202250 *)
mov rax L0x7fffffffde58;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffde28; PC = 0x4202254 *)
mull rdx rax rax L0x7fffffffde28;
(* add    %rax,%r10                                #! PC = 0x4202258 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4202261 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4202264 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffde60; Value = 0x00007fffffffdf50; PC = 0x4202268 *)
mov rax L0x7fffffffde60;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffde20; PC = 0x4202272 *)
mull rdx rax rax L0x7fffffffde20;
(* add    %rax,%r10                                #! PC = 0x4202276 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4202279 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4202282 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffde68; Value = 0x0000000000000000; PC = 0x4202286 *)
mov rax L0x7fffffffde68;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffde18; PC = 0x4202290 *)
mull rdx rax rax L0x7fffffffde18;
(* add    %rax,%r10                                #! PC = 0x4202294 *)
adds carry r10 r10 rax;
(* mov    %r10,0x30(%rsp)                          #! EA = L0x7fffffffdcb8; PC = 0x4202297 *)
mov L0x7fffffffdcb8 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4202302 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4202305 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4202309 *)
mov r10 0@uint64;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffde50; Value = 0x0000000000402840; PC = 0x4202312 *)
mov rax L0x7fffffffde50;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffde38; PC = 0x4202316 *)
mull rdx rax rax L0x7fffffffde38;
(* add    %rax,%r8                                 #! PC = 0x4202320 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4202323 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4202326 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffde58; Value = 0x0000000000401050; PC = 0x4202330 *)
mov rax L0x7fffffffde58;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffde30; PC = 0x4202334 *)
mull rdx rax rax L0x7fffffffde30;
(* add    %rax,%r8                                 #! PC = 0x4202338 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4202341 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4202344 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffde60; Value = 0x00007fffffffdf50; PC = 0x4202348 *)
mov rax L0x7fffffffde60;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffde28; PC = 0x4202352 *)
mull rdx rax rax L0x7fffffffde28;
(* add    %rax,%r8                                 #! PC = 0x4202356 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4202359 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4202362 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffde68; Value = 0x0000000000000000; PC = 0x4202366 *)
mov rax L0x7fffffffde68;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffde20; PC = 0x4202370 *)
mull rdx rax rax L0x7fffffffde20;
(* add    %rax,%r8                                 #! PC = 0x4202374 *)
adds carry r8 r8 rax;
(* mov    %r8,0x38(%rsp)                           #! EA = L0x7fffffffdcc0; PC = 0x4202377 *)
mov L0x7fffffffdcc0 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4202382 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4202385 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4202389 *)
mov r8 0@uint64;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffde58; Value = 0x0000000000401050; PC = 0x4202392 *)
mov rax L0x7fffffffde58;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffde38; PC = 0x4202396 *)
mull rdx rax rax L0x7fffffffde38;
(* add    %rax,%r9                                 #! PC = 0x4202400 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4202403 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4202406 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffde60; Value = 0x00007fffffffdf50; PC = 0x4202410 *)
mov rax L0x7fffffffde60;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffde30; PC = 0x4202414 *)
mull rdx rax rax L0x7fffffffde30;
(* add    %rax,%r9                                 #! PC = 0x4202418 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4202421 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4202424 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffde68; Value = 0x0000000000000000; PC = 0x4202428 *)
mov rax L0x7fffffffde68;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffde28; PC = 0x4202432 *)
mull rdx rax rax L0x7fffffffde28;
(* add    %rax,%r9                                 #! PC = 0x4202436 *)
adds carry r9 r9 rax;
(* mov    %r9,0x40(%rsp)                           #! EA = L0x7fffffffdcc8; PC = 0x4202439 *)
mov L0x7fffffffdcc8 r9;
(* adc    %rdx,%r10                                #! PC = 0x4202444 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4202447 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4202451 *)
mov r9 0@uint64;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffde60; Value = 0x00007fffffffdf50; PC = 0x4202454 *)
mov rax L0x7fffffffde60;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffde38; PC = 0x4202458 *)
mull rdx rax rax L0x7fffffffde38;
(* add    %rax,%r10                                #! PC = 0x4202462 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4202465 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4202468 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffde68; Value = 0x0000000000000000; PC = 0x4202472 *)
mov rax L0x7fffffffde68;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffde30; PC = 0x4202476 *)
mull rdx rax rax L0x7fffffffde30;
(* add    %rax,%r10                                #! PC = 0x4202480 *)
adds carry r10 r10 rax;
(* mov    %r10,0x48(%rsp)                          #! EA = L0x7fffffffdcd0; PC = 0x4202483 *)
mov L0x7fffffffdcd0 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4202488 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4202491 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffde68; Value = 0x0000000000000000; PC = 0x4202495 *)
mov rax L0x7fffffffde68;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffde38; PC = 0x4202499 *)
mull rdx rax rax L0x7fffffffde38;
(* add    %rax,%r8                                 #! PC = 0x4202503 *)
adds carry r8 r8 rax;
(* mov    %r8,0x50(%rsp)                           #! EA = L0x7fffffffdcd8; PC = 0x4202506 *)
mov L0x7fffffffdcd8 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4202511 *)
adc r9 r9 rdx carry;
(* mov    %r9,0x58(%rsp)                           #! EA = L0x7fffffffdce0; PC = 0x4202514 *)
mov L0x7fffffffdce0 r9;
(* xor    %r9,%r9                                  #! PC = 0x4202519 *)
mov r9 0@uint64;
(* movabs $0x89f3fffcfffcfffd,%rcx                 #! PC = 0x4202522 *)
mov rcx 0x89f3fffcfffcfffd@uint64;
(* mov    (%rsp),%r8                               #! EA = L0x7fffffffdc88; Value = 0x00007fffffffde6e; PC = 0x4202532 *)
mov r8 L0x7fffffffdc88;
(* mov    %r8,%rax                                 #! PC = 0x4202536 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x4202539 *)
mull rdx rax rax rcx;
(* mov    %rax,(%rsp)                              #! EA = L0x7fffffffdc88; PC = 0x4202542 *)
mov L0x7fffffffdc88 rax;
(* mulq   (%rbx)                                   #! EA = L0x405030; PC = 0x4202546 *)
mull rdx rax rax L0x405030;
(* add    %rax,%r8                                 #! PC = 0x4202549 *)
adds carry r8 r8 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r8 0 (2**64) && true;
assume r8 = 0 && true;
(* adc    %rdx,%r9                                 #! PC = 0x4202552 *)
adc r9 r9 rdx carry;
(* xor    %r10,%r10                                #! PC = 0x4202555 *)
mov r10 0@uint64;
(* xor    %r8,%r8                                  #! PC = 0x4202558 *)
mov r8 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffdc88; Value = 0x5ed6e4b664b664b6; PC = 0x4202561 *)
mov rax L0x7fffffffdc88;
(* mulq   0x8(%rbx)                                #! EA = L0x405038; PC = 0x4202565 *)
mull rdx rax rax L0x405038;
(* add    %rax,%r9                                 #! PC = 0x4202569 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4202572 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4202575 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x8(%rsp),%r9                            #! EA = L0x7fffffffdc90; Value = 0xde7f0000046281e0; PC = 0x4202579 *)
adds carry r9 r9 L0x7fffffffdc90;
(* adc    $0x0,%r10                                #! PC = 0x4202584 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4202588 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,%rax                                 #! PC = 0x4202592 *)
mov rax r9;
(* mul    %rcx                                     #! PC = 0x4202595 *)
mull rdx rax rax rcx;
(* mov    %rax,0x8(%rsp)                           #! EA = L0x7fffffffdc90; PC = 0x4202598 *)
mov L0x7fffffffdc90 rax;
(* mulq   (%rbx)                                   #! EA = L0x405030; PC = 0x4202603 *)
mull rdx rax rax L0x405030;
(* add    %rax,%r9                                 #! PC = 0x4202606 *)
adds carry r9 r9 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r9 0 (2**64) && true;
assume r9 = 0 && true;
(* adc    %rdx,%r10                                #! PC = 0x4202609 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4202612 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4202616 *)
mov r9 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffdc88; Value = 0x5ed6e4b664b664b6; PC = 0x4202619 *)
mov rax L0x7fffffffdc88;
(* mulq   0x10(%rbx)                               #! EA = L0x405040; PC = 0x4202623 *)
mull rdx rax rax L0x405040;
(* add    %rax,%r10                                #! PC = 0x4202627 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4202630 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4202633 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffdc90; Value = 0xb7908a5e4068a5f7; PC = 0x4202637 *)
mov rax L0x7fffffffdc90;
(* mulq   0x8(%rbx)                                #! EA = L0x405038; PC = 0x4202642 *)
mull rdx rax rax L0x405038;
(* add    %rax,%r10                                #! PC = 0x4202646 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4202649 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4202652 *)
adc r9 r9 0x0@uint64 carry;
(* add    0x10(%rsp),%r10                          #! EA = L0x7fffffffdc98; Value = 0xdfeb010cd44332ef; PC = 0x4202656 *)
adds carry r10 r10 L0x7fffffffdc98;
(* adc    $0x0,%r8                                 #! PC = 0x4202661 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4202665 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x4202669 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x4202672 *)
mull rdx rax rax rcx;
(* mov    %rax,0x10(%rsp)                          #! EA = L0x7fffffffdc98; PC = 0x4202675 *)
mov L0x7fffffffdc98 rax;
(* mulq   (%rbx)                                   #! EA = L0x405030; PC = 0x4202680 *)
mull rdx rax rax L0x405030;
(* add    %rax,%r10                                #! PC = 0x4202683 *)
adds carry r10 r10 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r10 0 (2**64) && true;
assume r10 = 0 && true;
(* adc    %rdx,%r8                                 #! PC = 0x4202686 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4202689 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4202693 *)
mov r10 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffdc88; Value = 0x5ed6e4b664b664b6; PC = 0x4202696 *)
mov rax L0x7fffffffdc88;
(* mulq   0x18(%rbx)                               #! EA = L0x405048; PC = 0x4202700 *)
mull rdx rax rax L0x405048;
(* add    %rax,%r8                                 #! PC = 0x4202704 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4202707 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4202710 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffdc90; Value = 0xb7908a5e4068a5f7; PC = 0x4202714 *)
mov rax L0x7fffffffdc90;
(* mulq   0x10(%rbx)                               #! EA = L0x405040; PC = 0x4202719 *)
mull rdx rax rax L0x405040;
(* add    %rax,%r8                                 #! PC = 0x4202723 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4202726 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4202729 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffdc98; Value = 0x070afae419e8b4a3; PC = 0x4202733 *)
mov rax L0x7fffffffdc98;
(* mulq   0x8(%rbx)                                #! EA = L0x405038; PC = 0x4202738 *)
mull rdx rax rax L0x405038;
(* add    %rax,%r8                                 #! PC = 0x4202742 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4202745 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4202748 *)
adc r10 r10 0x0@uint64 carry;
(* add    0x18(%rsp),%r8                           #! EA = L0x7fffffffdca0; Value = 0x6f1f7fd84e4085e1; PC = 0x4202752 *)
adds carry r8 r8 L0x7fffffffdca0;
(* adc    $0x0,%r9                                 #! PC = 0x4202757 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4202761 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r8,%rax                                 #! PC = 0x4202765 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x4202768 *)
mull rdx rax rax rcx;
(* mov    %rax,0x18(%rsp)                          #! EA = L0x7fffffffdca0; PC = 0x4202771 *)
mov L0x7fffffffdca0 rax;
(* mulq   (%rbx)                                   #! EA = L0x405030; PC = 0x4202776 *)
mull rdx rax rax L0x405030;
(* add    %rax,%r8                                 #! PC = 0x4202779 *)
adds carry r8 r8 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r8 0 (2**64) && true;
assume r8 = 0 && true;
(* adc    %rdx,%r9                                 #! PC = 0x4202782 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4202785 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4202789 *)
mov r8 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffdc88; Value = 0x5ed6e4b664b664b6; PC = 0x4202792 *)
mov rax L0x7fffffffdc88;
(* mulq   0x20(%rbx)                               #! EA = L0x405050; PC = 0x4202796 *)
mull rdx rax rax L0x405050;
(* add    %rax,%r9                                 #! PC = 0x4202800 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4202803 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4202806 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffdc90; Value = 0xb7908a5e4068a5f7; PC = 0x4202810 *)
mov rax L0x7fffffffdc90;
(* mulq   0x18(%rbx)                               #! EA = L0x405048; PC = 0x4202815 *)
mull rdx rax rax L0x405048;
(* add    %rax,%r9                                 #! PC = 0x4202819 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4202822 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4202825 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffdc98; Value = 0x070afae419e8b4a3; PC = 0x4202829 *)
mov rax L0x7fffffffdc98;
(* mulq   0x10(%rbx)                               #! EA = L0x405040; PC = 0x4202834 *)
mull rdx rax rax L0x405040;
(* add    %rax,%r9                                 #! PC = 0x4202838 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4202841 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4202844 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffdca0; Value = 0x756c5e8857013945; PC = 0x4202848 *)
mov rax L0x7fffffffdca0;
(* mulq   0x8(%rbx)                                #! EA = L0x405038; PC = 0x4202853 *)
mull rdx rax rax L0x405038;
(* add    %rax,%r9                                 #! PC = 0x4202857 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4202860 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4202863 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x20(%rsp),%r9                           #! EA = L0x7fffffffdca8; Value = 0x1c46feadf70ee556; PC = 0x4202867 *)
adds carry r9 r9 L0x7fffffffdca8;
(* adc    $0x0,%r10                                #! PC = 0x4202872 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4202876 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,%rax                                 #! PC = 0x4202880 *)
mov rax r9;
(* mul    %rcx                                     #! PC = 0x4202883 *)
mull rdx rax rax rcx;
(* mov    %rax,0x20(%rsp)                          #! EA = L0x7fffffffdca8; PC = 0x4202886 *)
mov L0x7fffffffdca8 rax;
(* mulq   (%rbx)                                   #! EA = L0x405030; PC = 0x4202891 *)
mull rdx rax rax L0x405030;
(* add    %rax,%r9                                 #! PC = 0x4202894 *)
adds carry r9 r9 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r9 0 (2**64) && true;
assume r9 = 0 && true;
(* adc    %rdx,%r10                                #! PC = 0x4202897 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4202900 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4202904 *)
mov r9 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffdc88; Value = 0x5ed6e4b664b664b6; PC = 0x4202907 *)
mov rax L0x7fffffffdc88;
(* mulq   0x28(%rbx)                               #! EA = L0x405058; PC = 0x4202911 *)
mull rdx rax rax L0x405058;
(* add    %rax,%r10                                #! PC = 0x4202915 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4202918 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4202921 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffdc90; Value = 0xb7908a5e4068a5f7; PC = 0x4202925 *)
mov rax L0x7fffffffdc90;
(* mulq   0x20(%rbx)                               #! EA = L0x405050; PC = 0x4202930 *)
mull rdx rax rax L0x405050;
(* add    %rax,%r10                                #! PC = 0x4202934 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4202937 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4202940 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffdc98; Value = 0x070afae419e8b4a3; PC = 0x4202944 *)
mov rax L0x7fffffffdc98;
(* mulq   0x18(%rbx)                               #! EA = L0x405048; PC = 0x4202949 *)
mull rdx rax rax L0x405048;
(* add    %rax,%r10                                #! PC = 0x4202953 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4202956 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4202959 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffdca0; Value = 0x756c5e8857013945; PC = 0x4202963 *)
mov rax L0x7fffffffdca0;
(* mulq   0x10(%rbx)                               #! EA = L0x405040; PC = 0x4202968 *)
mull rdx rax rax L0x405040;
(* add    %rax,%r10                                #! PC = 0x4202972 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4202975 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4202978 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffdca8; Value = 0x1c40678ad33340cf; PC = 0x4202982 *)
mov rax L0x7fffffffdca8;
(* mulq   0x8(%rbx)                                #! EA = L0x405038; PC = 0x4202987 *)
mull rdx rax rax L0x405038;
(* add    %rax,%r10                                #! PC = 0x4202991 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4202994 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4202997 *)
adc r9 r9 0x0@uint64 carry;
(* add    0x28(%rsp),%r10                          #! EA = L0x7fffffffdcb0; Value = 0xfb5cbbc0caddf816; PC = 0x4203001 *)
adds carry r10 r10 L0x7fffffffdcb0;
(* adc    $0x0,%r8                                 #! PC = 0x4203006 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4203010 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x4203014 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x4203017 *)
mull rdx rax rax rcx;
(* mov    %rax,0x28(%rsp)                          #! EA = L0x7fffffffdcb0; PC = 0x4203020 *)
mov L0x7fffffffdcb0 rax;
(* mulq   (%rbx)                                   #! EA = L0x405030; PC = 0x4203025 *)
mull rdx rax rax L0x405030;
(* add    %rax,%r10                                #! PC = 0x4203028 *)
adds carry r10 r10 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r10 0 (2**64) && true;
assume r10 = 0 && true;
(* adc    %rdx,%r8                                 #! PC = 0x4203031 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4203034 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4203038 *)
mov r10 0@uint64;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffdc90; Value = 0xb7908a5e4068a5f7; PC = 0x4203041 *)
mov rax L0x7fffffffdc90;
(* mulq   0x28(%rbx)                               #! EA = L0x405058; PC = 0x4203046 *)
mull rdx rax rax L0x405058;
(* add    %rax,%r8                                 #! PC = 0x4203050 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4203053 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4203056 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffdc98; Value = 0x070afae419e8b4a3; PC = 0x4203060 *)
mov rax L0x7fffffffdc98;
(* mulq   0x20(%rbx)                               #! EA = L0x405050; PC = 0x4203065 *)
mull rdx rax rax L0x405050;
(* add    %rax,%r8                                 #! PC = 0x4203069 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4203072 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4203075 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffdca0; Value = 0x756c5e8857013945; PC = 0x4203079 *)
mov rax L0x7fffffffdca0;
(* mulq   0x18(%rbx)                               #! EA = L0x405048; PC = 0x4203084 *)
mull rdx rax rax L0x405048;
(* add    %rax,%r8                                 #! PC = 0x4203088 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4203091 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4203094 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffdca8; Value = 0x1c40678ad33340cf; PC = 0x4203098 *)
mov rax L0x7fffffffdca8;
(* mulq   0x10(%rbx)                               #! EA = L0x405040; PC = 0x4203103 *)
mull rdx rax rax L0x405040;
(* add    %rax,%r8                                 #! PC = 0x4203107 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4203110 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4203113 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffdcb0; Value = 0x8b0a1f6542ff41ea; PC = 0x4203117 *)
mov rax L0x7fffffffdcb0;
(* mulq   0x8(%rbx)                                #! EA = L0x405038; PC = 0x4203122 *)
mull rdx rax rax L0x405038;
(* add    %rax,%r8                                 #! PC = 0x4203126 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4203129 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4203132 *)
adc r10 r10 0x0@uint64 carry;
(* add    0x30(%rsp),%r8                           #! EA = L0x7fffffffdcb8; Value = 0xe05c3d429a8100af; PC = 0x4203136 *)
adds carry r8 r8 L0x7fffffffdcb8;
(* adc    $0x0,%r9                                 #! PC = 0x4203141 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4203145 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r8,0x30(%rsp)                           #! EA = L0x7fffffffdcb8; PC = 0x4203149 *)
mov L0x7fffffffdcb8 r8;
(* xor    %r8,%r8                                  #! PC = 0x4203154 *)
mov r8 0@uint64;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffdc98; Value = 0x070afae419e8b4a3; PC = 0x4203157 *)
mov rax L0x7fffffffdc98;
(* mulq   0x28(%rbx)                               #! EA = L0x405058; PC = 0x4203162 *)
mull rdx rax rax L0x405058;
(* add    %rax,%r9                                 #! PC = 0x4203166 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4203169 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4203172 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffdca0; Value = 0x756c5e8857013945; PC = 0x4203176 *)
mov rax L0x7fffffffdca0;
(* mulq   0x20(%rbx)                               #! EA = L0x405050; PC = 0x4203181 *)
mull rdx rax rax L0x405050;
(* add    %rax,%r9                                 #! PC = 0x4203185 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4203188 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4203191 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffdca8; Value = 0x1c40678ad33340cf; PC = 0x4203195 *)
mov rax L0x7fffffffdca8;
(* mulq   0x18(%rbx)                               #! EA = L0x405048; PC = 0x4203200 *)
mull rdx rax rax L0x405048;
(* add    %rax,%r9                                 #! PC = 0x4203204 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4203207 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4203210 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffdcb0; Value = 0x8b0a1f6542ff41ea; PC = 0x4203214 *)
mov rax L0x7fffffffdcb0;
(* mulq   0x10(%rbx)                               #! EA = L0x405040; PC = 0x4203219 *)
mull rdx rax rax L0x405040;
(* add    %rax,%r9                                 #! PC = 0x4203223 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4203226 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4203229 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x38(%rsp),%r9                           #! EA = L0x7fffffffdcc0; Value = 0x5aff8ff5bda3383f; PC = 0x4203233 *)
adds carry r9 r9 L0x7fffffffdcc0;
(* adc    $0x0,%r10                                #! PC = 0x4203238 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4203242 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,0x38(%rsp)                           #! EA = L0x7fffffffdcc0; PC = 0x4203246 *)
mov L0x7fffffffdcc0 r9;
(* xor    %r9,%r9                                  #! PC = 0x4203251 *)
mov r9 0@uint64;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffdca0; Value = 0x756c5e8857013945; PC = 0x4203254 *)
mov rax L0x7fffffffdca0;
(* mulq   0x28(%rbx)                               #! EA = L0x405058; PC = 0x4203259 *)
mull rdx rax rax L0x405058;
(* add    %rax,%r10                                #! PC = 0x4203263 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4203266 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4203269 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffdca8; Value = 0x1c40678ad33340cf; PC = 0x4203273 *)
mov rax L0x7fffffffdca8;
(* mulq   0x20(%rbx)                               #! EA = L0x405050; PC = 0x4203278 *)
mull rdx rax rax L0x405050;
(* add    %rax,%r10                                #! PC = 0x4203282 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4203285 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4203288 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffdcb0; Value = 0x8b0a1f6542ff41ea; PC = 0x4203292 *)
mov rax L0x7fffffffdcb0;
(* mulq   0x18(%rbx)                               #! EA = L0x405048; PC = 0x4203297 *)
mull rdx rax rax L0x405048;
(* add    %rax,%r10                                #! PC = 0x4203301 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4203304 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4203307 *)
adc r9 r9 0x0@uint64 carry;
(* add    0x40(%rsp),%r10                          #! EA = L0x7fffffffdcc8; Value = 0x0000900e39d55bd8; PC = 0x4203311 *)
adds carry r10 r10 L0x7fffffffdcc8;
(* adc    $0x0,%r8                                 #! PC = 0x4203316 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4203320 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,0x40(%rsp)                          #! EA = L0x7fffffffdcc8; PC = 0x4203324 *)
mov L0x7fffffffdcc8 r10;
(* xor    %r10,%r10                                #! PC = 0x4203329 *)
mov r10 0@uint64;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffdca8; Value = 0x1c40678ad33340cf; PC = 0x4203332 *)
mov rax L0x7fffffffdca8;
(* mulq   0x28(%rbx)                               #! EA = L0x405058; PC = 0x4203337 *)
mull rdx rax rax L0x405058;
(* add    %rax,%r8                                 #! PC = 0x4203341 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4203344 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4203347 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffdcb0; Value = 0x8b0a1f6542ff41ea; PC = 0x4203351 *)
mov rax L0x7fffffffdcb0;
(* mulq   0x20(%rbx)                               #! EA = L0x405050; PC = 0x4203356 *)
mull rdx rax rax L0x405050;
(* add    %rax,%r8                                 #! PC = 0x4203360 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4203363 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4203366 *)
adc r10 r10 0x0@uint64 carry;
(* add    0x48(%rsp),%r8                           #! EA = L0x7fffffffdcd0; Value = 0x14467ff7ced27f10; PC = 0x4203370 *)
adds carry r8 r8 L0x7fffffffdcd0;
(* adc    $0x0,%r9                                 #! PC = 0x4203375 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4203379 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r8,0x48(%rsp)                           #! EA = L0x7fffffffdcd0; PC = 0x4203383 *)
mov L0x7fffffffdcd0 r8;
(* xor    %r8,%r8                                  #! PC = 0x4203388 *)
mov r8 0@uint64;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffdcb0; Value = 0x8b0a1f6542ff41ea; PC = 0x4203391 *)
mov rax L0x7fffffffdcb0;
(* mulq   0x28(%rbx)                               #! EA = L0x405058; PC = 0x4203396 *)
mull rdx rax rax L0x405058;
(* add    %rax,%r9                                 #! PC = 0x4203400 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4203403 *)
adcs carry r10 r10 rdx carry;
(* NOTE: cannot carry *)
assert true && carry = 0@1;
assume carry = 0 && true;
(* adc    $0x0,%r8                                 #! PC = 0x4203406 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x50(%rsp),%r9                           #! EA = L0x7fffffffdcd8; Value = 0x0000000000000020; PC = 0x4203410 *)
adds carry r9 r9 L0x7fffffffdcd8;
(* adc    $0x0,%r10                                #! PC = 0x4203415 *)
adcs carry r10 r10 0x0@uint64 carry;
(* NOTE: cannot carry *)
assert true && carry = 0@1;
assume carry = 0 && true;
(* adc    $0x0,%r8                                 #! PC = 0x4203419 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,0x50(%rsp)                           #! EA = L0x7fffffffdcd8; PC = 0x4203423 *)
mov L0x7fffffffdcd8 r9;
(* xor    %r9,%r9                                  #! PC = 0x4203428 *)
mov r9 0@uint64;
(* add    0x58(%rsp),%r10                          #! EA = L0x7fffffffdce0; Value = 0x0000000000000000; PC = 0x4203431 *)
adds carry r10 r10 L0x7fffffffdce0;
(* NOTE: cannot carry *)
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r10,0x58(%rsp)                          #! EA = L0x7fffffffdce0; PC = 0x4203436 *)
mov L0x7fffffffdce0 r10;
(* mov    0x30(%rsp),%r11                          #! EA = L0x7fffffffdcb8; Value = 0x294fcfbbea5b36f5; PC = 0x4203441 *)
mov r11 L0x7fffffffdcb8;
(* mov    0x38(%rsp),%r12                          #! EA = L0x7fffffffdcc0; Value = 0x35829b9d6d8a69cb; PC = 0x4203446 *)
mov r12 L0x7fffffffdcc0;
(* mov    0x40(%rsp),%r13                          #! EA = L0x7fffffffdcc8; Value = 0x7a70991d7dd7bd21; PC = 0x4203451 *)
mov r13 L0x7fffffffdcc8;
(* mov    0x48(%rsp),%r14                          #! EA = L0x7fffffffdcd0; Value = 0x29a1319c5c10054e; PC = 0x4203456 *)
mov r14 L0x7fffffffdcd0;
(* mov    0x50(%rsp),%r15                          #! EA = L0x7fffffffdcd8; Value = 0x3db95e67a37a3608; PC = 0x4203461 *)
mov r15 L0x7fffffffdcd8;
(* mov    0x58(%rsp),%rcx                          #! EA = L0x7fffffffdce0; Value = 0x0e1f9bf54ac453f5; PC = 0x4203466 *)
mov rcx L0x7fffffffdce0;
(* sub    0x2c5a(%rip),%r11        # 0x405030      #! EA = L0x405030; Value = 0xb9feffffffffaaab; PC = 0x4203471 *)
subb carry r11 r11 L0x405030;
(* sbb    0x2c5b(%rip),%r12        # 0x405038      #! EA = L0x405038; Value = 0x1eabfffeb153ffff; PC = 0x4203478 *)
sbbs carry r12 r12 L0x405038 carry;
(* sbb    0x2c5c(%rip),%r13        # 0x405040      #! EA = L0x405040; Value = 0x6730d2a0f6b0f624; PC = 0x4203485 *)
sbbs carry r13 r13 L0x405040 carry;
(* sbb    0x2c5d(%rip),%r14        # 0x405048      #! EA = L0x405048; Value = 0x64774b84f38512bf; PC = 0x4203492 *)
sbbs carry r14 r14 L0x405048 carry;
(* sbb    0x2c5e(%rip),%r15        # 0x405050      #! EA = L0x405050; Value = 0x4b1ba7b6434bacd7; PC = 0x4203499 *)
sbbs carry r15 r15 L0x405050 carry;
(* sbb    0x2c5f(%rip),%rcx        # 0x405058      #! EA = L0x405058; Value = 0x1a0111ea397fe69a; PC = 0x4203506 *)
sbbs carry rcx rcx L0x405058 carry;
(* cmovb  0x30(%rsp),%r11                          #! EA = L0x7fffffffdcb8; Value = 0x294fcfbbea5b36f5; PC = 0x4203513 *)
cmov r11 carry L0x7fffffffdcb8 r11;
(* cmovb  0x38(%rsp),%r12                          #! EA = L0x7fffffffdcc0; Value = 0x35829b9d6d8a69cb; PC = 0x4203519 *)
cmov r12 carry L0x7fffffffdcc0 r12;
(* cmovb  0x40(%rsp),%r13                          #! EA = L0x7fffffffdcc8; Value = 0x7a70991d7dd7bd21; PC = 0x4203525 *)
cmov r13 carry L0x7fffffffdcc8 r13;
(* cmovb  0x48(%rsp),%r14                          #! EA = L0x7fffffffdcd0; Value = 0x29a1319c5c10054e; PC = 0x4203531 *)
cmov r14 carry L0x7fffffffdcd0 r14;
(* cmovb  0x50(%rsp),%r15                          #! EA = L0x7fffffffdcd8; Value = 0x3db95e67a37a3608; PC = 0x4203537 *)
cmov r15 carry L0x7fffffffdcd8 r15;
(* cmovb  0x58(%rsp),%rcx                          #! EA = L0x7fffffffdce0; Value = 0x0e1f9bf54ac453f5; PC = 0x4203543 *)
cmov rcx carry L0x7fffffffdce0 rcx;
(* mov    %r11,(%rdi)                              #! EA = L0x7fffffffdde0; PC = 0x4203549 *)
mov L0x7fffffffdde0 r11;
(* mov    %r12,0x8(%rdi)                           #! EA = L0x7fffffffdde8; PC = 0x4203552 *)
mov L0x7fffffffdde8 r12;
(* mov    %r13,0x10(%rdi)                          #! EA = L0x7fffffffddf0; PC = 0x4203556 *)
mov L0x7fffffffddf0 r13;
(* mov    %r14,0x18(%rdi)                          #! EA = L0x7fffffffddf8; PC = 0x4203560 *)
mov L0x7fffffffddf8 r14;
(* mov    %r15,0x20(%rdi)                          #! EA = L0x7fffffffde00; PC = 0x4203564 *)
mov L0x7fffffffde00 r15;
(* mov    %rcx,0x28(%rdi)                          #! EA = L0x7fffffffde08; PC = 0x4203568 *)
mov L0x7fffffffde08 rcx;
(* add    $0x60,%rsp                               #! PC = 0x4203572 *)
/* add    $0x60,%rsp                               #! 0x4203572 = 0x4203572; */
(* pop    %rbp                                     #! PC = 0x4203576 *)
/* pop    %%rbp                                     #! 0x4203576 = 0x4203576; */
(* pop    %rbx                                     #! PC = 0x4203577 *)
/* pop    %%rbx                                     #! 0x4203577 = 0x4203577; */
(* pop    %r15                                     #! PC = 0x4203578 *)
/* pop    %%r15                                     #! 0x4203578 = 0x4203578; */
(* pop    %r14                                     #! PC = 0x4203580 *)
/* pop    %%r14                                     #! 0x4203580 = 0x4203580; */
(* pop    %r13                                     #! PC = 0x4203582 *)
/* pop    %%r13                                     #! 0x4203582 = 0x4203582; */
(* pop    %r12                                     #! PC = 0x4203584 *)
/* pop    %%r12                                     #! 0x4203584 = 0x4203584; */
(* #retq                                           #! PC = 0x4203586 *)
/* #retq                                           #! 0x4203586 = 0x4203586; */

mov r0 L0x7fffffffdde0;
mov r1 L0x7fffffffdde8;
mov r2 L0x7fffffffddf0;
mov r3 L0x7fffffffddf8;
mov r4 L0x7fffffffde00;
mov r5 L0x7fffffffde08;

{
  eqmod (limbs 64 [0, 0, 0, 0, 0, 0, r0, r1, r2, r3, r4, r5])
        (limbs 64 [a0, a1, a2, a3, a4, a5] *
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
