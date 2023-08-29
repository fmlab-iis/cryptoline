proc fp_mul (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 a5,
             uint64 b0, uint64 b1, uint64 b2, uint64 b3, uint64 b4, uint64 b5;
             uint64 r0, uint64 r1, uint64 r2, uint64 r3, uint64 r4, uint64 r5) =
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
proc fp2_add (uint64 a1_0, uint64 a1_1, uint64 a1_2, uint64 a1_3, uint64 a1_4, uint64 a1_5,
              uint64 a2_0, uint64 a2_1, uint64 a2_2, uint64 a2_3, uint64 a2_4, uint64 a2_5,
              uint64 b1_0, uint64 b1_1, uint64 b1_2, uint64 b1_3, uint64 b1_4, uint64 b1_5,
              uint64 b2_0, uint64 b2_1, uint64 b2_2, uint64 b2_3, uint64 b2_4, uint64 b2_5;
              uint64 r1_0, uint64 r1_1, uint64 r1_2, uint64 r1_3, uint64 r1_4, uint64 r1_5,
              uint64 r2_0, uint64 r2_1, uint64 r2_2, uint64 r2_3, uint64 r2_4, uint64 r2_5) =
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

(* fp2_add_integ: *)
/* fp2_add_integ:; */
(* #jmpq   0x415550 <fp2_addm_low>                 #! PC = 0x4210992 *)
#jmpq   0x415550 <fp2_addm_low>                 #! 0x4210992 = 0x4210992;
(* push   %r12                                     #! PC = 0x4281680 *)
/* push r12; */
(* push   %rbp                                     #! PC = 0x4281682 *)
/* push rbp; */
(* mov    %rdx,%r12                                #! PC = 0x4281683 *)
/* mov r12 rdx; */
(* push   %rbx                                     #! PC = 0x4281686 *)
/* push rbx; */
(* mov    %rsi,%rbp                                #! PC = 0x4281687 *)
/* mov rbp rsi; */
(* mov    %rdi,%rbx                                #! PC = 0x4281690 *)
/* mov rbx rdi; */
(* #callq  0x417fc7 <fp_addm_low>                  #! PC = 0x4281693 *)
#callq  0x417fc7 <fp_addm_low>                  #! 0x4281693 = 0x4281693;
(* push   %rbx                                     #! PC = 0x4292551 *)
/* push rbx; */
(* push   %rbp                                     #! PC = 0x4292552 *)
/* push rbp; */
(* push   %r12                                     #! PC = 0x4292553 *)
/* push r12; */
(* push   %r13                                     #! PC = 0x4292555 *)
/* push r13; */
(* mov    (%rdx),%r8                               #! EA = L0x7fffffffddb0; Value = 0xc10da178007b0587; PC = 0x4292557 *)
mov r8 L0x7fffffffddb0;
(* add    (%rsi),%r8                               #! EA = L0x7fffffffde10; Value = 0x129cdc6ad3c13bcd; PC = 0x4292560 *)
adds carry r8 r8 L0x7fffffffde10;
(* mov    0x8(%rdx),%r9                            #! EA = L0x7fffffffddb8; Value = 0x001cd99920b3b193; PC = 0x4292563 *)
mov r9 L0x7fffffffddb8;
(* adc    0x8(%rsi),%r9                            #! EA = L0x7fffffffde18; Value = 0xa9b8565e480910dc; PC = 0x4292567 *)
adcs carry r9 r9 L0x7fffffffde18 carry;
(* mov    0x10(%rdx),%r10                          #! EA = L0x7fffffffddc0; Value = 0x8d3e0bb4a25434d2; PC = 0x4292571 *)
mov r10 L0x7fffffffddc0;
(* adc    0x10(%rsi),%r10                          #! EA = L0x7fffffffde20; Value = 0x317889804f6aafb0; PC = 0x4292575 *)
adcs carry r10 r10 L0x7fffffffde20 carry;
(* mov    0x18(%rdx),%r11                          #! EA = L0x7fffffffddc8; Value = 0x1a37309b52a2dd61; PC = 0x4292579 *)
mov r11 L0x7fffffffddc8;
(* adc    0x18(%rsi),%r11                          #! EA = L0x7fffffffde28; Value = 0x22b851cc8a89e743; PC = 0x4292583 *)
adcs carry r11 r11 L0x7fffffffde28 carry;
(* mov    0x20(%rdx),%r12                          #! EA = L0x7fffffffddd0; Value = 0x88aaf2a7df5756b1; PC = 0x4292587 *)
mov r12 L0x7fffffffddd0;
(* adc    0x20(%rsi),%r12                          #! EA = L0x7fffffffde30; Value = 0xa7c4939142430057; PC = 0x4292591 *)
adcs carry r12 r12 L0x7fffffffde30 carry;
(* mov    0x28(%rdx),%r13                          #! EA = L0x7fffffffddd8; Value = 0x19317b65f587facd; PC = 0x4292595 *)
mov r13 L0x7fffffffddd8;
(* adc    0x28(%rsi),%r13                          #! EA = L0x7fffffffde38; Value = 0x11ecdf3d87d7475b; PC = 0x4292599 *)
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
/* pop r13; */
(* pop    %r12                                     #! PC = 0x4292712 *)
/* pop r12; */
(* pop    %rbp                                     #! PC = 0x4292714 *)
/* pop rbp; */
(* pop    %rbx                                     #! PC = 0x4292715 *)
/* pop rbx; */
(* #retq                                           #! PC = 0x4292716 *)
#retq                                           #! 0x4292716 = 0x4292716;
(* lea    0x30(%r12),%rdx                          #! PC = 0x4281698 *)
/* lea    %%EA,%%rdx                          #! 0x4281698 = 0x4281698; */
(* lea    0x30(%rbp),%rsi                          #! PC = 0x4281703 *)
/* lea    %%EA,%%rsi                          #! 0x4281703 = 0x4281703; */
(* lea    0x30(%rbx),%rdi                          #! PC = 0x4281707 *)
/* lea    %%EA,%%rdi                          #! 0x4281707 = 0x4281707; */
(* pop    %rbx                                     #! PC = 0x4281711 *)
/* pop rbx; */
(* pop    %rbp                                     #! PC = 0x4281712 *)
/* pop rbp; */
(* pop    %r12                                     #! PC = 0x4281713 *)
/* pop r12; */
(* #jmpq   0x417fc7 <fp_addm_low>                  #! PC = 0x4281715 *)
#jmpq   0x417fc7 <fp_addm_low>                  #! 0x4281715 = 0x4281715;
(* push   %rbx                                     #! PC = 0x4292551 *)
/* push rbx; */
(* push   %rbp                                     #! PC = 0x4292552 *)
/* push rbp; */
(* push   %r12                                     #! PC = 0x4292553 *)
/* push r12; */
(* push   %r13                                     #! PC = 0x4292555 *)
/* push r13; */
(* mov    (%rdx),%r8                               #! EA = L0x7fffffffdde0; Value = 0xdd0976383e6b275c; PC = 0x4292557 *)
mov r8 L0x7fffffffdde0;
(* add    (%rsi),%r8                               #! EA = L0x7fffffffde40; Value = 0x542191b2012038ac; PC = 0x4292560 *)
adds carry r8 r8 L0x7fffffffde40;
(* mov    0x8(%rdx),%r9                            #! EA = L0x7fffffffdde8; Value = 0xc539cf6e43063789; PC = 0x4292563 *)
mov r9 L0x7fffffffdde8;
(* adc    0x8(%rsi),%r9                            #! EA = L0x7fffffffde48; Value = 0x8fbcfd2ae98dc149; PC = 0x4292567 *)
adcs carry r9 r9 L0x7fffffffde48 carry;
(* mov    0x10(%rdx),%r10                          #! EA = L0x7fffffffddf0; Value = 0xa2d080278b0c7a4f; PC = 0x4292571 *)
mov r10 L0x7fffffffddf0;
(* adc    0x10(%rsi),%r10                          #! EA = L0x7fffffffde50; Value = 0x22c8811009b2c1a3; PC = 0x4292575 *)
adcs carry r10 r10 L0x7fffffffde50 carry;
(* mov    0x18(%rdx),%r11                          #! EA = L0x7fffffffddf8; Value = 0x1e832db99322dbb9; PC = 0x4292579 *)
mov r11 L0x7fffffffddf8;
(* adc    0x18(%rsi),%r11                          #! EA = L0x7fffffffde58; Value = 0x6cbae752865e7f76; PC = 0x4292583 *)
adcs carry r11 r11 L0x7fffffffde58 carry;
(* mov    0x20(%rdx),%r12                          #! EA = L0x7fffffffde00; Value = 0x8422e853620fe882; PC = 0x4292587 *)
mov r12 L0x7fffffffde00;
(* adc    0x20(%rsi),%r12                          #! EA = L0x7fffffffde60; Value = 0xa177553322cbf45f; PC = 0x4292591 *)
adcs carry r12 r12 L0x7fffffffde60 carry;
(* mov    0x28(%rdx),%r13                          #! EA = L0x7fffffffde08; Value = 0x17a19e512eb3d0f0; PC = 0x4292595 *)
mov r13 L0x7fffffffde08;
(* adc    0x28(%rsi),%r13                          #! EA = L0x7fffffffde68; Value = 0x0cad6a5c4c7f4f49; PC = 0x4292599 *)
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
/* pop r13; */
(* pop    %r12                                     #! PC = 0x4292712 *)
/* pop r12; */
(* pop    %rbp                                     #! PC = 0x4292714 *)
/* pop rbp; */
(* pop    %rbx                                     #! PC = 0x4292715 *)
/* pop rbx; */
(* #retq                                           #! PC = 0x4292716 *)
#retq                                           #! 0x4292716 = 0x4292716;

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

proc fp2_sub (uint64 a1_0, uint64 a1_1, uint64 a1_2, uint64 a1_3, uint64 a1_4, uint64 a1_5,
              uint64 a2_0, uint64 a2_1, uint64 a2_2, uint64 a2_3, uint64 a2_4, uint64 a2_5,
              uint64 b1_0, uint64 b1_1, uint64 b1_2, uint64 b1_3, uint64 b1_4, uint64 b1_5,
              uint64 b2_0, uint64 b2_1, uint64 b2_2, uint64 b2_3, uint64 b2_4, uint64 b2_5;
              uint64 r1_0, uint64 r1_1, uint64 r1_2, uint64 r1_3, uint64 r1_4, uint64 r1_5,
              uint64 r2_0, uint64 r2_1, uint64 r2_2, uint64 r2_3, uint64 r2_4, uint64 r2_5) =
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

(* fp2_sub_integ: *)
/* fp2_sub_integ:; */
(* #jmpq   0x415630 <fp2_subm_low>                 #! PC = 0x4211008 *)
#jmpq   0x415630 <fp2_subm_low>                 #! 0x4211008 = 0x4211008;
(* push   %r12                                     #! PC = 0x4281904 *)
/* push r12; */
(* push   %rbp                                     #! PC = 0x4281906 *)
/* push rbp; */
(* mov    %rdx,%r12                                #! PC = 0x4281907 *)
/* mov r12 rdx; */
(* push   %rbx                                     #! PC = 0x4281910 *)
/* push rbx; */
(* mov    %rsi,%rbp                                #! PC = 0x4281911 *)
/* mov rbp rsi; */
(* mov    %rdi,%rbx                                #! PC = 0x4281914 *)
/* mov rbx rdi; */
(* #callq  0x418282 <fp_subm_low>                  #! PC = 0x4281917 *)
#callq  0x418282 <fp_subm_low>                  #! 0x4281917 = 0x4281917;
(* xor    %rax,%rax                                #! PC = 0x4293250 *)
mov rax 0@uint64;
(* xor    %rcx,%rcx                                #! PC = 0x4293253 *)
mov rcx 0@uint64;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffde10; Value = 0x61af70d625ae41dc; PC = 0x4293256 *)
mov r8 L0x7fffffffde10;
(* sub    (%rdx),%r8                               #! EA = L0x7fffffffddb0; Value = 0x6554f03fa676ebc2; PC = 0x4293259 *)
subb carry r8 r8 L0x7fffffffddb0;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffdd50; PC = 0x4293262 *)
mov L0x7fffffffdd50 r8;
(* mov    0x8(%rsi),%r8                            #! EA = L0x7fffffffde18; Value = 0xb5028de6c3f873ae; PC = 0x4293265 *)
mov r8 L0x7fffffffde18;
(* sbb    0x8(%rdx),%r8                            #! EA = L0x7fffffffddb8; Value = 0x671deefe5e9b6ee0; PC = 0x4293269 *)
sbbs carry r8 r8 L0x7fffffffddb8 carry;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x7fffffffdd58; PC = 0x4293273 *)
mov L0x7fffffffdd58 r8;
(* mov    0x10(%rsi),%r8                           #! EA = L0x7fffffffde20; Value = 0x321478394dd04c39; PC = 0x4293277 *)
mov r8 L0x7fffffffde20;
(* sbb    0x10(%rdx),%r8                           #! EA = L0x7fffffffddc0; Value = 0x90417a044420b036; PC = 0x4293281 *)
sbbs carry r8 r8 L0x7fffffffddc0 carry;
(* mov    %r8,0x10(%rdi)                           #! EA = L0x7fffffffdd60; PC = 0x4293285 *)
mov L0x7fffffffdd60 r8;
(* mov    0x18(%rsi),%r8                           #! EA = L0x7fffffffde28; Value = 0xf479c47ee7c81292; PC = 0x4293289 *)
mov r8 L0x7fffffffde28;
(* sbb    0x18(%rdx),%r8                           #! EA = L0x7fffffffddc8; Value = 0x043e0b1855e71450; PC = 0x4293293 *)
sbbs carry r8 r8 L0x7fffffffddc8 carry;
(* mov    %r8,0x18(%rdi)                           #! EA = L0x7fffffffdd68; PC = 0x4293297 *)
mov L0x7fffffffdd68 r8;
(* mov    0x20(%rsi),%r8                           #! EA = L0x7fffffffde30; Value = 0x02618ad44aec0f93; PC = 0x4293301 *)
mov r8 L0x7fffffffde30;
(* sbb    0x20(%rdx),%r8                           #! EA = L0x7fffffffddd0; Value = 0xcd6353a76ada3a27; PC = 0x4293305 *)
sbbs carry r8 r8 L0x7fffffffddd0 carry;
(* mov    %r8,0x20(%rdi)                           #! EA = L0x7fffffffdd70; PC = 0x4293309 *)
mov L0x7fffffffdd70 r8;
(* mov    0x28(%rsi),%r8                           #! EA = L0x7fffffffde38; Value = 0x02a6618448a16259; PC = 0x4293313 *)
mov r8 L0x7fffffffde38;
(* sbb    0x28(%rdx),%r8                           #! EA = L0x7fffffffddd8; Value = 0x0725bf73124b9a62; PC = 0x4293317 *)
sbbs carry r8 r8 L0x7fffffffddd8 carry;

/* NOTE: keey carry */
mov carry_1 carry;

(* mov    %r8,0x28(%rdi)                           #! EA = L0x7fffffffdd78; PC = 0x4293321 *)
mov L0x7fffffffdd78 r8;
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
(* add    %rax,(%rdi)                              #! EA = L0x7fffffffdd50; PC = 0x4293401 *)
adds carry L0x7fffffffdd50 L0x7fffffffdd50 rax;
(* adc    %rcx,0x8(%rdi)                           #! EA = L0x7fffffffdd58; PC = 0x4293404 *)
adcs carry L0x7fffffffdd58 L0x7fffffffdd58 rcx carry;
(* adc    %r8,0x10(%rdi)                           #! EA = L0x7fffffffdd60; PC = 0x4293408 *)
adcs carry L0x7fffffffdd60 L0x7fffffffdd60 r8 carry;
(* adc    %r9,0x18(%rdi)                           #! EA = L0x7fffffffdd68; PC = 0x4293412 *)
adcs carry L0x7fffffffdd68 L0x7fffffffdd68 r9 carry;
(* adc    %r10,0x20(%rdi)                          #! EA = L0x7fffffffdd70; PC = 0x4293416 *)
adcs carry L0x7fffffffdd70 L0x7fffffffdd70 r10 carry;
(* adc    %r11,0x28(%rdi)                          #! EA = L0x7fffffffdd78; PC = 0x4293420 *)
adcs carry L0x7fffffffdd78 L0x7fffffffdd78 r11 carry;

assert true && carry = carry_1;
assume carry = carry_1 && true;

(* #retq                                           #! PC = 0x4293424 *)
#retq                                           #! 0x4293424 = 0x4293424;
(* lea    0x30(%r12),%rdx                          #! PC = 0x4281922 *)
/* lea    %%EA,%%rdx                          #! 0x4281922 = 0x4281922; */
(* lea    0x30(%rbp),%rsi                          #! PC = 0x4281927 *)
/* lea    %%EA,%%rsi                          #! 0x4281927 = 0x4281927; */
(* lea    0x30(%rbx),%rdi                          #! PC = 0x4281931 *)
/* lea    %%EA,%%rdi                          #! 0x4281931 = 0x4281931; */
(* pop    %rbx                                     #! PC = 0x4281935 *)
/* pop rbx; */
(* pop    %rbp                                     #! PC = 0x4281936 *)
/* pop rbp; */
(* pop    %r12                                     #! PC = 0x4281937 *)
/* pop r12; */
(* #jmpq   0x418282 <fp_subm_low>                  #! PC = 0x4281939 *)
#jmpq   0x418282 <fp_subm_low>                  #! 0x4281939 = 0x4281939;
(* xor    %rax,%rax                                #! PC = 0x4293250 *)
mov rax 0@uint64;
(* xor    %rcx,%rcx                                #! PC = 0x4293253 *)
mov rcx 0@uint64;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffde40; Value = 0x1532f0df3f146daa; PC = 0x4293256 *)
mov r8 L0x7fffffffde40;
(* sub    (%rdx),%r8                               #! EA = L0x7fffffffdde0; Value = 0x7f3db5a828e80302; PC = 0x4293259 *)
subb carry r8 r8 L0x7fffffffdde0;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffdd80; PC = 0x4293262 *)
mov L0x7fffffffdd80 r8;
(* mov    0x8(%rsi),%r8                            #! EA = L0x7fffffffde48; Value = 0x999646578ba5a4d3; PC = 0x4293265 *)
mov r8 L0x7fffffffde48;
(* sbb    0x8(%rdx),%r8                            #! EA = L0x7fffffffdde8; Value = 0x084debd1084a79b1; PC = 0x4293269 *)
sbbs carry r8 r8 L0x7fffffffdde8 carry;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x7fffffffdd88; PC = 0x4293273 *)
mov L0x7fffffffdd88 r8;
(* mov    0x10(%rsi),%r8                           #! EA = L0x7fffffffde50; Value = 0x5c1786ddd135d9bf; PC = 0x4293277 *)
mov r8 L0x7fffffffde50;
(* sbb    0x10(%rdx),%r8                           #! EA = L0x7fffffffddf0; Value = 0xa84f4f5449ae9de8; PC = 0x4293281 *)
sbbs carry r8 r8 L0x7fffffffddf0 carry;
(* mov    %r8,0x10(%rdi)                           #! EA = L0x7fffffffdd90; PC = 0x4293285 *)
mov L0x7fffffffdd90 r8;
(* mov    0x18(%rsi),%r8                           #! EA = L0x7fffffffde58; Value = 0x8d49bdb61b783d36; PC = 0x4293289 *)
mov r8 L0x7fffffffde58;
(* sbb    0x18(%rdx),%r8                           #! EA = L0x7fffffffddf8; Value = 0x0be1e75c11a8b49b; PC = 0x4293293 *)
sbbs carry r8 r8 L0x7fffffffddf8 carry;
(* mov    %r8,0x18(%rdi)                           #! EA = L0x7fffffffdd98; PC = 0x4293297 *)
mov L0x7fffffffdd98 r8;
(* mov    0x20(%rsi),%r8                           #! EA = L0x7fffffffde60; Value = 0x6c8876daa6495909; PC = 0x4293301 *)
mov r8 L0x7fffffffde60;
(* sbb    0x20(%rdx),%r8                           #! EA = L0x7fffffffde00; Value = 0x552536a997c4efa4; PC = 0x4293305 *)
sbbs carry r8 r8 L0x7fffffffde00 carry;
(* mov    %r8,0x20(%rdi)                           #! EA = L0x7fffffffdda0; PC = 0x4293309 *)
mov L0x7fffffffdda0 r8;
(* mov    0x28(%rsi),%r8                           #! EA = L0x7fffffffde68; Value = 0x080b1a7f7b9dc094; PC = 0x4293313 *)
mov r8 L0x7fffffffde68;
(* sbb    0x28(%rdx),%r8                           #! EA = L0x7fffffffde08; Value = 0x0ed1baf42e741570; PC = 0x4293317 *)
sbbs carry r8 r8 L0x7fffffffde08 carry;

/* NOTE: keey carry */
mov carry_1 carry;

(* mov    %r8,0x28(%rdi)                           #! EA = L0x7fffffffdda8; PC = 0x4293321 *)
mov L0x7fffffffdda8 r8;
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
(* add    %rax,(%rdi)                              #! EA = L0x7fffffffdd80; PC = 0x4293401 *)
adds carry L0x7fffffffdd80 L0x7fffffffdd80 rax;
(* adc    %rcx,0x8(%rdi)                           #! EA = L0x7fffffffdd88; PC = 0x4293404 *)
adcs carry L0x7fffffffdd88 L0x7fffffffdd88 rcx carry;
(* adc    %r8,0x10(%rdi)                           #! EA = L0x7fffffffdd90; PC = 0x4293408 *)
adcs carry L0x7fffffffdd90 L0x7fffffffdd90 r8 carry;
(* adc    %r9,0x18(%rdi)                           #! EA = L0x7fffffffdd98; PC = 0x4293412 *)
adcs carry L0x7fffffffdd98 L0x7fffffffdd98 r9 carry;
(* adc    %r10,0x20(%rdi)                          #! EA = L0x7fffffffdda0; PC = 0x4293416 *)
adcs carry L0x7fffffffdda0 L0x7fffffffdda0 r10 carry;
(* adc    %r11,0x28(%rdi)                          #! EA = L0x7fffffffdda8; PC = 0x4293420 *)
adcs carry L0x7fffffffdda8 L0x7fffffffdda8 r11 carry;

assert true && carry = carry_1;
assume carry = carry_1 && true;
(* #retq                                           #! PC = 0x4293424 *)
#retq                                           #! 0x4293424 = 0x4293424;

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
      (limbs 64 [a1_0, a1_1, a1_2, a1_3, a1_4, a1_5] -
      limbs 64 [b1_0, b1_1, b1_2, b1_3, b1_4, b1_5])
      (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
      0x6730d2a0f6b0f624, 0x64774b84f38512bf,
      0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a]),
      eqmod (limbs 64 [r2_0, r2_1, r2_2, r2_3, r2_4, r2_5])
      (limbs 64 [a2_0, a2_1, a2_2, a2_3, a2_4, a2_5] -
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

proc fp2_dbl (uint64 a1_0, uint64 a1_1, uint64 a1_2, uint64 a1_3, uint64 a1_4, uint64 a1_5,
              uint64 a2_0, uint64 a2_1, uint64 a2_2, uint64 a2_3, uint64 a2_4, uint64 a2_5;
              uint64 r1_0, uint64 r1_1, uint64 r1_2, uint64 r1_3, uint64 r1_4, uint64 r1_5,
              uint64 r2_0, uint64 r2_1, uint64 r2_2, uint64 r2_3, uint64 r2_4, uint64 r2_5) =
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

(* fp2_dbl_integ: *)
/* fp2_dbl_integ:; */
(* #jmpq   0x415710 <fp2_dblm_low>                 #! PC = 0x4211024 *)
#jmpq   0x415710 <fp2_dblm_low>                 #! 0x4211024 = 0x4211024;
(* push   %rbp                                     #! PC = 0x4282128 *)
/* push rbp; */
(* push   %rbx                                     #! PC = 0x4282129 *)
/* push rbx; */
(* mov    %rsi,%rbp                                #! PC = 0x4282130 *)
/* mov rbp rsi; */
(* mov    %rdi,%rbx                                #! PC = 0x4282133 *)
/* mov rbx rdi; */
(* sub    $0x8,%rsp                                #! PC = 0x4282136 *)
/* subb carry rsp rsp 0x8@uint64; */
(* #callq  0x418566 <fp_dblm_low>                  #! PC = 0x4282140 *)
#callq  0x418566 <fp_dblm_low>                  #! 0x4282140 = 0x4282140;
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
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffde10; Value = 0x218e66fb99ccde4d; PC = 0x4294005 *)
mov r8 L0x7fffffffde10;
(* add    %r8,%r8                                  #! PC = 0x4294008 *)
adds carry r8 r8 r8;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffde18; Value = 0x967f68357ef55c75; PC = 0x4294011 *)
mov r9 L0x7fffffffde18;
(* adc    %r9,%r9                                  #! PC = 0x4294015 *)
adcs carry r9 r9 r9 carry;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffde20; Value = 0xeaab249ff402b964; PC = 0x4294018 *)
mov r10 L0x7fffffffde20;
(* adc    %r10,%r10                                #! PC = 0x4294022 *)
adcs carry r10 r10 r10 carry;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffde28; Value = 0xaebb22f2e66ff00d; PC = 0x4294025 *)
mov r11 L0x7fffffffde28;
(* adc    %r11,%r11                                #! PC = 0x4294029 *)
adcs carry r11 r11 r11 carry;
(* mov    0x20(%rsi),%r12                          #! EA = L0x7fffffffde30; Value = 0xabdd9fc5bd1d03d5; PC = 0x4294032 *)
mov r12 L0x7fffffffde30;
(* adc    %r12,%r12                                #! PC = 0x4294036 *)
adcs carry r12 r12 r12 carry;
(* mov    0x28(%rsi),%r13                          #! EA = L0x7fffffffde38; Value = 0x12497b59b1d01b77; PC = 0x4294039 *)
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
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffdd50; PC = 0x4294130 *)
mov L0x7fffffffdd50 r8;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffdd58; PC = 0x4294133 *)
mov L0x7fffffffdd58 r9;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffdd60; PC = 0x4294137 *)
mov L0x7fffffffdd60 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffdd68; PC = 0x4294141 *)
mov L0x7fffffffdd68 r11;
(* mov    %r12,0x20(%rdi)                          #! EA = L0x7fffffffdd70; PC = 0x4294145 *)
mov L0x7fffffffdd70 r12;
(* mov    %r13,0x28(%rdi)                          #! EA = L0x7fffffffdd78; PC = 0x4294149 *)
mov L0x7fffffffdd78 r13;
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
(* add    $0x8,%rsp                                #! PC = 0x4282145 *)
/* adds carry rsp rsp 0x8; */
(* lea    0x30(%rbp),%rsi                          #! PC = 0x4282149 *)
/* lea    %%EA,%%rsi                          #! 0x4282149 = 0x4282149; */
(* lea    0x30(%rbx),%rdi                          #! PC = 0x4282153 *)
/* lea    %%EA,%%rdi                          #! 0x4282153 = 0x4282153; */
(* pop    %rbx                                     #! PC = 0x4282157 *)
/* pop rbx; */
(* pop    %rbp                                     #! PC = 0x4282158 *)
/* pop rbp; */
(* #jmpq   0x418566 <fp_dblm_low>                  #! PC = 0x4282159 *)
#jmpq   0x418566 <fp_dblm_low>                  #! 0x4282159 = 0x4282159;
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
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffde40; Value = 0xf841ac9defb5a4eb; PC = 0x4294005 *)
mov r8 L0x7fffffffde40;
(* add    %r8,%r8                                  #! PC = 0x4294008 *)
adds carry r8 r8 r8;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffde48; Value = 0x037fbce7fc1d6b89; PC = 0x4294011 *)
mov r9 L0x7fffffffde48;
(* adc    %r9,%r9                                  #! PC = 0x4294015 *)
adcs carry r9 r9 r9 carry;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffde50; Value = 0x676f4b9ddf9dc687; PC = 0x4294018 *)
mov r10 L0x7fffffffde50;
(* adc    %r10,%r10                                #! PC = 0x4294022 *)
adcs carry r10 r10 r10 carry;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffde58; Value = 0xb473fb2fae837f82; PC = 0x4294025 *)
mov r11 L0x7fffffffde58;
(* adc    %r11,%r11                                #! PC = 0x4294029 *)
adcs carry r11 r11 r11 carry;
(* mov    0x20(%rsi),%r12                          #! EA = L0x7fffffffde60; Value = 0xcaca76383ee0e1b2; PC = 0x4294032 *)
mov r12 L0x7fffffffde60;
(* adc    %r12,%r12                                #! PC = 0x4294036 *)
adcs carry r12 r12 r12 carry;
(* mov    0x28(%rsi),%r13                          #! EA = L0x7fffffffde68; Value = 0x0ae0f776a021746d; PC = 0x4294039 *)
mov r13 L0x7fffffffde68;
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
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffdd80; PC = 0x4294130 *)
mov L0x7fffffffdd80 r8;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffdd88; PC = 0x4294133 *)
mov L0x7fffffffdd88 r9;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffdd90; PC = 0x4294137 *)
mov L0x7fffffffdd90 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffdd98; PC = 0x4294141 *)
mov L0x7fffffffdd98 r11;
(* mov    %r12,0x20(%rdi)                          #! EA = L0x7fffffffdda0; PC = 0x4294145 *)
mov L0x7fffffffdda0 r12;
(* mov    %r13,0x28(%rdi)                          #! EA = L0x7fffffffdda8; PC = 0x4294149 *)
mov L0x7fffffffdda8 r13;
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
      (limbs 64 [a1_0, a1_1, a1_2, a1_3, a1_4, a1_5] * 2)
      (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
      0x6730d2a0f6b0f624, 0x64774b84f38512bf,
      0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a]),
      eqmod (limbs 64 [r2_0, r2_1, r2_2, r2_3, r2_4, r2_5])
      (limbs 64 [a2_0, a2_1, a2_2, a2_3, a2_4, a2_5] * 2)
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

proc fp2_mul (uint64 a1_0, uint64 a1_1, uint64 a1_2, uint64 a1_3, uint64 a1_4, uint64 a1_5,
              uint64 a2_0, uint64 a2_1, uint64 a2_2, uint64 a2_3, uint64 a2_4, uint64 a2_5,
              uint64 b1_0, uint64 b1_1, uint64 b1_2, uint64 b1_3, uint64 b1_4, uint64 b1_5,
              uint64 b2_0, uint64 b2_1, uint64 b2_2, uint64 b2_3, uint64 b2_4, uint64 b2_5;
              uint64 c1_0, uint64 c1_1, uint64 c1_2, uint64 c1_3, uint64 c1_4, uint64 c1_5,
              uint64 c2_0, uint64 c2_1, uint64 c2_2, uint64 c2_3, uint64 c2_4, uint64 c2_5) =
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


proc fp2_sqr (uint64 a1_0, uint64 a1_1, uint64 a1_2, uint64 a1_3, uint64 a1_4, uint64 a1_5,
              uint64 a2_0, uint64 a2_1, uint64 a2_2, uint64 a2_3, uint64 a2_4, uint64 a2_5;
              uint64 c1_0, uint64 c1_1, uint64 c1_2, uint64 c1_3, uint64 c1_4, uint64 c1_5,
              uint64 c2_0, uint64 c2_1, uint64 c2_2, uint64 c2_3, uint64 c2_4, uint64 c2_5) =
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

proc main (uint64 QX0_0, uint64 QX0_1, uint64 QX0_2, uint64 QX0_3, uint64 QX0_4, uint64 QX0_5,
           uint64 QX1_0, uint64 QX1_1, uint64 QX1_2, uint64 QX1_3, uint64 QX1_4, uint64 QX1_5,
           uint64 QY0_0, uint64 QY0_1, uint64 QY0_2, uint64 QY0_3, uint64 QY0_4, uint64 QY0_5,
           uint64 QY1_0, uint64 QY1_1, uint64 QY1_2, uint64 QY1_3, uint64 QY1_4, uint64 QY1_5,
           uint64 QZ0_0, uint64 QZ0_1, uint64 QZ0_2, uint64 QZ0_3, uint64 QZ0_4, uint64 QZ0_5,
           uint64 QZ1_0, uint64 QZ1_1, uint64 QZ1_2, uint64 QZ1_3, uint64 QZ1_4, uint64 QZ1_5,
           uint64 PX0_0, uint64 PX0_1, uint64 PX0_2, uint64 PX0_3, uint64 PX0_4, uint64 PX0_5,
           uint64 PY0_0, uint64 PY0_1, uint64 PY0_2, uint64 PY0_3, uint64 PY0_4, uint64 PY0_5) =
{
  true
  &&
  and [
    limbs 64 [QX0_0, QX0_1, QX0_2, QX0_3, QX0_4, QX0_5] <
    limbs 64 [0xb9feffffffffaaab@64, 0x1eabfffeb153ffff@64,
              0x6730d2a0f6b0f624@64, 0x64774b84f38512bf@64,
              0x4b1ba7b6434bacd7@64, 0x1a0111ea397fe69a@64],
    limbs 64 [QX1_0, QX1_1, QX1_2, QX1_3, QX1_4, QX1_5] <
    limbs 64 [0xb9feffffffffaaab@64, 0x1eabfffeb153ffff@64,
              0x6730d2a0f6b0f624@64, 0x64774b84f38512bf@64,
              0x4b1ba7b6434bacd7@64, 0x1a0111ea397fe69a@64],
    limbs 64 [QY0_0, QY0_1, QY0_2, QY0_3, QY0_4, QY0_5] <
    limbs 64 [0xb9feffffffffaaab@64, 0x1eabfffeb153ffff@64,
              0x6730d2a0f6b0f624@64, 0x64774b84f38512bf@64,
              0x4b1ba7b6434bacd7@64, 0x1a0111ea397fe69a@64],
    limbs 64 [QY1_0, QY1_1, QY1_2, QY1_3, QY1_4, QY1_5] <
    limbs 64 [0xb9feffffffffaaab@64, 0x1eabfffeb153ffff@64,
              0x6730d2a0f6b0f624@64, 0x64774b84f38512bf@64,
              0x4b1ba7b6434bacd7@64, 0x1a0111ea397fe69a@64],
    limbs 64 [QZ0_0, QZ0_1, QZ0_2, QZ0_3, QZ0_4, QZ0_5] <
    limbs 64 [0xb9feffffffffaaab@64, 0x1eabfffeb153ffff@64,
              0x6730d2a0f6b0f624@64, 0x64774b84f38512bf@64,
              0x4b1ba7b6434bacd7@64, 0x1a0111ea397fe69a@64],
    limbs 64 [QZ1_0, QZ1_1, QZ1_2, QZ1_3, QZ1_4, QZ1_5] <
    limbs 64 [0xb9feffffffffaaab@64, 0x1eabfffeb153ffff@64,
              0x6730d2a0f6b0f624@64, 0x64774b84f38512bf@64,
              0x4b1ba7b6434bacd7@64, 0x1a0111ea397fe69a@64],
    limbs 64 [PX0_0, PX0_1, PX0_2, PX0_3, PX0_4, PX0_5] <
    limbs 64 [0xb9feffffffffaaab@64, 0x1eabfffeb153ffff@64,
              0x6730d2a0f6b0f624@64, 0x64774b84f38512bf@64,
              0x4b1ba7b6434bacd7@64, 0x1a0111ea397fe69a@64],
    limbs 64 [PY0_0, PY0_1, PY0_2, PY0_3, PY0_4, PY0_5] <
    limbs 64 [0xb9feffffffffaaab@64, 0x1eabfffeb153ffff@64,
              0x6730d2a0f6b0f624@64, 0x64774b84f38512bf@64,
              0x4b1ba7b6434bacd7@64, 0x1a0111ea397fe69a@64]
  ]
}

/* mov L0x7fffffffd870 QX0_0; */
/* mov L0x7fffffffd878 QX0_1; */
/* mov L0x7fffffffd880 QX0_2; */
/* mov L0x7fffffffd888 QX0_3; */
/* mov L0x7fffffffd890 QX0_4; */
/* mov L0x7fffffffd898 QX0_5; */

/* mov L0x7fffffffd8a0 QX1_0; */
/* mov L0x7fffffffd8a8 QX1_1; */
/* mov L0x7fffffffd8b0 QX1_2; */
/* mov L0x7fffffffd8b8 QX1_3; */
/* mov L0x7fffffffd8c0 QX1_4; */
/* mov L0x7fffffffd8c8 QX1_5; */

/* mov L0x7fffffffd8d0 QY0_0; */
/* mov L0x7fffffffd8d8 QY0_1; */
/* mov L0x7fffffffd8e0 QY0_2; */
/* mov L0x7fffffffd8e8 QY0_3; */
/* mov L0x7fffffffd8f0 QY0_4; */
/* mov L0x7fffffffd8f8 QY0_5; */

/* mov L0x7fffffffd900 QY1_0; */
/* mov L0x7fffffffd908 QY1_1; */
/* mov L0x7fffffffd910 QY1_2; */
/* mov L0x7fffffffd918 QY1_3; */
/* mov L0x7fffffffd920 QY1_4; */
/* mov L0x7fffffffd928 QY1_5; */

/* mov L0x7fffffffd830 QZ0_0; */
/* mov L0x7fffffffd838 QZ0_1; */
/* mov L0x7fffffffd840 QZ0_2; */
/* mov L0x7fffffffd848 QZ0_3; */
/* mov L0x7fffffffd850 QZ0_4; */
/* mov L0x7fffffffd858 QZ0_5; */

/* mov L0x7fffffffd960 QZ1_0; */
/* mov L0x7fffffffd968 QZ1_1; */
/* mov L0x7fffffffd970 QZ1_2; */
/* mov L0x7fffffffd978 QZ1_3; */
/* mov L0x7fffffffd980 QZ1_4; */
/* mov L0x7fffffffd988 QZ1_5; */

/* mov L0x7fffffffd9a0 RX0_0; */
/* mov L0x7fffffffd9a8 RX0_1; */
/* mov L0x7fffffffd9b0 RX0_2; */
/* mov L0x7fffffffd9b8 RX0_3; */
/* mov L0x7fffffffd9c0 RX0_4; */
/* mov L0x7fffffffd9c8 RX0_5; */

/* mov L0x7fffffffd9d0 RX1_0; */
/* mov L0x7fffffffd9d8 RX1_1; */
/* mov L0x7fffffffd9e0 RX1_2; */
/* mov L0x7fffffffd9e8 RX1_3; */
/* mov L0x7fffffffd9f0 RX1_4; */
/* mov L0x7fffffffd9f8 RX1_5; */

/* mov L0x7fffffffda00 RY0_0; */
/* mov L0x7fffffffda08 RY0_1; */
/* mov L0x7fffffffda10 RY0_2; */
/* mov L0x7fffffffda18 RY0_3; */
/* mov L0x7fffffffda20 RY0_4; */
/* mov L0x7fffffffda28 RY0_5; */

/* mov L0x7fffffffda30 RY1_0; */
/* mov L0x7fffffffda38 RY1_1; */
/* mov L0x7fffffffda40 RY1_2; */
/* mov L0x7fffffffda48 RY1_3; */
/* mov L0x7fffffffda50 RY1_4; */
/* mov L0x7fffffffda58 RY1_5; */

/* mov L0x7fffffffda60 RZ0_0; */
/* mov L0x7fffffffda68 RZ0_1; */
/* mov L0x7fffffffda70 RZ0_2; */
/* mov L0x7fffffffda78 RZ0_3; */
/* mov L0x7fffffffda80 RZ0_4; */
/* mov L0x7fffffffda88 RZ0_5; */

/* mov L0x7fffffffda90 RZ1_0; */
/* mov L0x7fffffffda98 RZ1_1; */
/* mov L0x7fffffffdaa0 RZ1_2; */
/* mov L0x7fffffffdaa8 RZ1_3; */
/* mov L0x7fffffffdab0 RZ1_4; */
/* mov L0x7fffffffdab8 RZ1_5; */

/* mov L0x7fffffffdad0 PX0_0; */
/* mov L0x7fffffffdad8 PX0_1; */
/* mov L0x7fffffffdae0 PX0_2; */
/* mov L0x7fffffffdae8 PX0_3; */
/* mov L0x7fffffffdaf0 PX0_4; */
/* mov L0x7fffffffdaf8 PX0_5; */

/* mov L0x7fffffffdb00 PY0_0; */
/* mov L0x7fffffffdb08 PY0_1; */
/* mov L0x7fffffffdb10 PY0_2; */
/* mov L0x7fffffffdb18 PY0_3; */
/* mov L0x7fffffffdb20 PY0_4; */
/* mov L0x7fffffffdb28 PY0_5; */

/* mov L0x7fffffffdb30 PZ0_0; */
/* mov L0x7fffffffdb38 PZ0_1; */
/* mov L0x7fffffffdb40 PZ0_2; */
/* mov L0x7fffffffdb48 PZ0_3; */
/* mov L0x7fffffffdb50 PZ0_4; */
/* mov L0x7fffffffdb58 PZ0_5; */

(* pp_dbl_k12_projc_lazyr: *)
/* pp_dbl_k12_projc_lazyr:; */

/* mov T00_0 L0x7fffffffd150; */
/* mov T00_1 L0x7fffffffd158; */
/* mov T00_2 L0x7fffffffd160; */
/* mov T00_3 L0x7fffffffd168; */
/* mov T00_4 L0x7fffffffd170; */
/* mov T00_5 L0x7fffffffd178; */

/* mov T01_0 L0x7fffffffd180; */
/* mov T01_1 L0x7fffffffd188; */
/* mov T01_2 L0x7fffffffd190; */
/* mov T01_3 L0x7fffffffd198; */
/* mov T01_4 L0x7fffffffd1a0; */
/* mov T01_5 L0x7fffffffd1a8; */

/* A = x1^2. */
/* NOTE: fp2_sqr(t0, q->x); */

(* #callq  0x42c400 <fp2_sqr_integ>                #! PC = 0x4292736 *)
#callq  0x42c400 <fp2_sqr_integ>                #! 0x4292736 = 0x4292736;
inline fp2_sqr(QX0_0, QX0_1, QX0_2, QX0_3, QX0_4, QX0_5, QX1_0, QX1_1, QX1_2, QX1_3, QX1_4, QX1_5,
T00_0, T00_1, T00_2, T00_3, T00_4, T00_5, T01_0, T01_1, T01_2, T01_3, T01_4, T01_5);
/* /\* NOTE: end fp2_sqr *\/ */

ghost A0_0@uint64, A0_1@uint64, A0_2@uint64, A0_3@uint64, A0_4@uint64, A0_5@uint64,
      A1_0@uint64, A1_1@uint64, A1_2@uint64, A1_3@uint64, A1_4@uint64, A1_5@uint64:
and [
    A0_0 = T00_0, A0_1 = T00_1, A0_2 = T00_2, A0_3 = T00_3, A0_4 = T00_4, A0_5 = T00_5,
    A1_0 = T01_0, A1_1 = T01_1, A1_2 = T01_2, A1_3 = T01_3, A1_4 = T01_4, A1_5 = T01_5
] &&
and [
    A0_0 = T00_0, A0_1 = T00_1, A0_2 = T00_2, A0_3 = T00_3, A0_4 = T00_4, A0_5 = T00_5,
    A1_0 = T01_0, A1_1 = T01_1, A1_2 = T01_2, A1_3 = T01_3, A1_4 = T01_4, A1_5 = T01_5
];

/* ecut 0 */
ecut
  and [
  (limbs 64 [0, 0, 0, 0, 0, 0, A0_0, A0_1, A0_2, A0_3, A0_4, A0_5])
  = (
    (limbs 64 [QX0_0, QX0_1, QX0_2, QX0_3, QX0_4, QX0_5]) *
    (limbs 64 [QX0_0, QX0_1, QX0_2, QX0_3, QX0_4, QX0_5]) -
    (limbs 64 [QX1_0, QX1_1, QX1_2, QX1_3, QX1_4, QX1_5]) *
    (limbs 64 [QX1_0, QX1_1, QX1_2, QX1_3, QX1_4, QX1_5])
  )
  (mod (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
         0x6730d2a0f6b0f624, 0x64774b84f38512bf,
         0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a])),
  (limbs 64 [0, 0, 0, 0, 0, 0, A1_0, A1_1, A1_2, A1_3, A1_4, A1_5])
  = (
    (limbs 64 [QX1_0, QX1_1, QX1_2, QX1_3, QX1_4, QX1_5]) *
    (limbs 64 [QX0_0, QX0_1, QX0_2, QX0_3, QX0_4, QX0_5]) +
    (limbs 64 [QX0_0, QX0_1, QX0_2, QX0_3, QX0_4, QX0_5]) *
    (limbs 64 [QX1_0, QX1_1, QX1_2, QX1_3, QX1_4, QX1_5])
  )
  (mod (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
         0x6730d2a0f6b0f624, 0x64774b84f38512bf,
        0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a]))
 ] prove with all ghosts, all cuts;
 /* && */
  /* and [ */
  /*     limbs 64 [A0_0, A0_1, A0_2, A0_3, A0_4, A0_5] < */
  /*     limbs 64 [0xb9feffffffffaaab@64, 0x1eabfffeb153ffff@64, */
  /*     0x6730d2a0f6b0f624@64, 0x64774b84f38512bf@64, */
  /*     0x4b1ba7b6434bacd7@64, 0x1a0111ea397fe69a@64], */
  /*     limbs 64 [A1_0, A1_1, A1_2, A1_3, A1_4, A1_5] < */
  /*     limbs 64 [0xb9feffffffffaaab@64, 0x1eabfffeb153ffff@64, */
  /*     0x6730d2a0f6b0f624@64, 0x64774b84f38512bf@64, */
  /*     0x4b1ba7b6434bacd7@64, 0x1a0111ea397fe69a@64] */
  /* ]; */




/* mov T10_0 L0x7fffffffd1b0; */
/* mov T10_1 L0x7fffffffd1b8; */
/* mov T10_2 L0x7fffffffd1c0; */
/* mov T10_3 L0x7fffffffd1c8; */
/* mov T10_4 L0x7fffffffd1d0; */
/* mov T10_5 L0x7fffffffd1d8; */

/* mov T11_0 L0x7fffffffd1e0; */
/* mov T11_1 L0x7fffffffd1e8; */
/* mov T11_2 L0x7fffffffd1f0; */
/* mov T11_3 L0x7fffffffd1f8; */
/* mov T11_4 L0x7fffffffd200; */
/* mov T11_5 L0x7fffffffd208; */

/* B = y1^2. */
/* fp2_sqr(t1, q->y); */
(* #callq  0x42c400 <fp2_sqr_integ>                #! PC = 0x4292752 *)
#callq  0x42c400 <fp2_sqr_integ>                #! 0x4292752 = 0x4292752;

inline fp2_sqr(QY0_0, QY0_1, QY0_2, QY0_3, QY0_4, QY0_5, QY1_0, QY1_1, QY1_2, QY1_3, QY1_4, QY1_5,
             T10_0, T10_1, T10_2, T10_3, T10_4, T10_5, T11_0, T11_1, T11_2, T11_3, T11_4, T11_5);

ghost B0_0@uint64, B0_1@uint64, B0_2@uint64, B0_3@uint64, B0_4@uint64, B0_5@uint64,
      B1_0@uint64, B1_1@uint64, B1_2@uint64, B1_3@uint64, B1_4@uint64, B1_5@uint64:
and [
    B0_0 = T10_0, B0_1 = T10_1, B0_2 = T10_2, B0_3 = T10_3, B0_4 = T10_4, B0_5 = T10_5,
    B1_0 = T11_0, B1_1 = T11_1, B1_2 = T11_2, B1_3 = T11_3, B1_4 = T11_4, B1_5 = T11_5
] &&
and [
    B0_0 = T10_0, B0_1 = T10_1, B0_2 = T10_2, B0_3 = T10_3, B0_4 = T10_4, B0_5 = T10_5,
    B1_0 = T11_0, B1_1 = T11_1, B1_2 = T11_2, B1_3 = T11_3, B1_4 = T11_4, B1_5 = T11_5
];


/* ecut 1 */
ecut
  and [
  (limbs 64 [0, 0, 0, 0, 0, 0, B0_0, B0_1, B0_2, B0_3, B0_4, B0_5])
  = (
    (limbs 64 [QY0_0, QY0_1, QY0_2, QY0_3, QY0_4, QY0_5]) *
    (limbs 64 [QY0_0, QY0_1, QY0_2, QY0_3, QY0_4, QY0_5]) -
    (limbs 64 [QY1_0, QY1_1, QY1_2, QY1_3, QY1_4, QY1_5]) *
    (limbs 64 [QY1_0, QY1_1, QY1_2, QY1_3, QY1_4, QY1_5])
  )
  (mod (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
         0x6730d2a0f6b0f624, 0x64774b84f38512bf,
         0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a])),
  (limbs 64 [0, 0, 0, 0, 0, 0, B1_0, B1_1, B1_2, B1_3, B1_4, B1_5])
  = (
    (limbs 64 [QY1_0, QY1_1, QY1_2, QY1_3, QY1_4, QY1_5]) *
    (limbs 64 [QY0_0, QY0_1, QY0_2, QY0_3, QY0_4, QY0_5]) +
    (limbs 64 [QY0_0, QY0_1, QY0_2, QY0_3, QY0_4, QY0_5]) *
    (limbs 64 [QY1_0, QY1_1, QY1_2, QY1_3, QY1_4, QY1_5])
  )
  (mod (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
         0x6730d2a0f6b0f624, 0x64774b84f38512bf,
        0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a]))
 ] prove with all ghosts, all cuts;

/* mov T20_0 L0x7fffffffd210; */
/* mov T20_1 L0x7fffffffd218; */
/* mov T20_2 L0x7fffffffd220; */
/* mov T20_3 L0x7fffffffd228; */
/* mov T20_4 L0x7fffffffd230; */
/* mov T20_5 L0x7fffffffd238; */

/* mov T21_0 L0x7fffffffd240; */
/* mov T21_1 L0x7fffffffd248; */
/* mov T21_2 L0x7fffffffd250; */
/* mov T21_3 L0x7fffffffd258; */
/* mov T21_4 L0x7fffffffd260; */
/* mov T21_5 L0x7fffffffd268; */

/* C = z1^2. */
/* NOTE: fp2_sqr(t2, q->z); */

(* #callq  0x42c400 <fp2_sqr_integ>                #! PC = 0x4292752 *)
#callq  0x42c400 <fp2_sqr_integ>                #! 0x4292752 = 0x4292752;
inline fp2_sqr(QZ0_0, QZ0_1, QZ0_2, QZ0_3, QZ0_4, QZ0_5, QZ1_0, QZ1_1, QZ1_2, QZ1_3, QZ1_4, QZ1_5,
             T20_0, T20_1, T20_2, T20_3, T20_4, T20_5, T21_0, T21_1, T21_2, T21_3, T21_4, T21_5);

ghost C0_0@uint64, C0_1@uint64, C0_2@uint64, C0_3@uint64, C0_4@uint64, C0_5@uint64,
      C1_0@uint64, C1_1@uint64, C1_2@uint64, C1_3@uint64, C1_4@uint64, C1_5@uint64:
and [
    C0_0 = T20_0, C0_1 = T20_1, C0_2 = T20_2, C0_3 = T20_3, C0_4 = T20_4, C0_5 = T20_5,
    C1_0 = T21_0, C1_1 = T21_1, C1_2 = T21_2, C1_3 = T21_3, C1_4 = T21_4, C1_5 = T21_5
] &&
and [
    C0_0 = T20_0, C0_1 = T20_1, C0_2 = T20_2, C0_3 = T20_3, C0_4 = T20_4, C0_5 = T20_5,
    C1_0 = T21_0, C1_1 = T21_1, C1_2 = T21_2, C1_3 = T21_3, C1_4 = T21_4, C1_5 = T21_5
];


/* ecut 2 */
ecut
  and [
  (limbs 64 [0, 0, 0, 0, 0, 0, C0_0, C0_1, C0_2, C0_3, C0_4, C0_5])
  = (
    (limbs 64 [QZ0_0, QZ0_1, QZ0_2, QZ0_3, QZ0_4, QZ0_5]) *
    (limbs 64 [QZ0_0, QZ0_1, QZ0_2, QZ0_3, QZ0_4, QZ0_5]) -
    (limbs 64 [QZ1_0, QZ1_1, QZ1_2, QZ1_3, QZ1_4, QZ1_5]) *
    (limbs 64 [QZ1_0, QZ1_1, QZ1_2, QZ1_3, QZ1_4, QZ1_5])
  )
  (mod (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
         0x6730d2a0f6b0f624, 0x64774b84f38512bf,
         0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a])),
  (limbs 64 [0, 0, 0, 0, 0, 0, C1_0, C1_1, C1_2, C1_3, C1_4, C1_5])
  = (
    (limbs 64 [QZ1_0, QZ1_1, QZ1_2, QZ1_3, QZ1_4, QZ1_5]) *
    (limbs 64 [QZ0_0, QZ0_1, QZ0_2, QZ0_3, QZ0_4, QZ0_5]) +
    (limbs 64 [QZ0_0, QZ0_1, QZ0_2, QZ0_3, QZ0_4, QZ0_5]) *
    (limbs 64 [QZ1_0, QZ1_1, QZ1_2, QZ1_3, QZ1_4, QZ1_5])
  )
  (mod (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
         0x6730d2a0f6b0f624, 0x64774b84f38512bf,
        0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a]))
 ] prove with all ghosts, all cuts;
(* #retq                                           #! PC = 0x4313227 *)
#retq                                           #! 0x4313227 = 0x4313227;

/* mov T30_0 L0x7fffffffd270; */
/* mov T30_1 L0x7fffffffd278; */
/* mov T30_2 L0x7fffffffd280; */
/* mov T30_3 L0x7fffffffd288; */
/* mov T30_4 L0x7fffffffd290; */
/* mov T30_5 L0x7fffffffd298; */

/* mov T31_0 L0x7fffffffd2a0; */
/* mov T31_1 L0x7fffffffd2a8; */
/* mov T31_2 L0x7fffffffd2b0; */
/* mov T31_3 L0x7fffffffd2b8; */
/* mov T31_4 L0x7fffffffd2c0; */
/* mov T31_5 L0x7fffffffd2c8; */


/* D = 3bC, for general b. */
/* NOTE: fp2_dbl(t3, t2); */
(* #callq  0x42ce10 <fp2_dbl_integ>                #! PC = 0x4292801 *)
#callq  0x42ce10 <fp2_dbl_integ>                #! 0x4292801 = 0x4292801;
inline fp2_dbl(T20_0, T20_1, T20_2, T20_3, T20_4, T20_5, T21_0, T21_1, T21_2, T21_3, T21_4, T21_5,
             T30_0, T30_1, T30_2, T30_3, T30_4, T30_5, T31_0, T31_1, T31_2, T31_3, T31_4, T31_5);
/* NOTE: fp2_add(t3, t3, t2); */
(* #callq  0x42cdf0 <fp2_add_integ>                #! PC = 0x4292825 *)
#callq  0x42cdf0 <fp2_add_integ>                #! 0x4292825 = 0x4292825;
inline fp2_add(T30_0, T30_1, T30_2, T30_3, T30_4, T30_5, T31_0, T31_1, T31_2, T31_3, T31_4, T31_5,
             T20_0, T20_1, T20_2, T20_3, T20_4, T20_5, T21_0, T21_1, T21_2, T21_3, T21_4, T21_5,
             T30_0, T30_1, T30_2, T30_3, T30_4, T30_5, T31_0, T31_1, T31_2, T31_3, T31_4, T31_5);

(* #retq                                           #! PC = 0x4307788 *)
#retq                                           #! 0x4307788 = 0x4307788;
(* lea    0x1b0(%rsp),%rdi                         #! PC = 0x4292830 *)
/* lea    %%EA,%%rdi                         #! 0x4292830 = 0x4292830; */
(* #callq  0x40f2d0 <ep2_curve_get_b>              #! PC = 0x4292838 *)
#callq  0x40f2d0 <ep2_curve_get_b>              #! 0x4292838 = 0x4292838;
(* push   %rbp                                     #! PC = 0x4256464 *)
/* push rbp; */
(* push   %rbx                                     #! PC = 0x4256465 *)
/* push rbx; */
(* mov    %rdi,%rbx                                #! PC = 0x4256466 *)
/* mov rbx rdi; */
(* sub    $0x8,%rsp                                #! PC = 0x4256469 *)
/* subb carry rsp rsp 0x8@uint64; */
(* #callq  0x401450 <core_get>                     #! PC = 0x4256473 *)
#callq  0x401450 <core_get>                     #! 0x4256473 = 0x4256473;
(* mov    0x6ccb9(%rip),%rax        # 0x46e110 <core_ctx>#! EA = L0x46e110; Value = 0x000000000046e120; PC = 0x4199504 *)
/* mov rax L0x46e110; */
(* #retq                                           #! PC = 0x4199511 *)
#retq                                           #! 0x4199511 = 0x4199511;
(* lea    0xfc020(%rax),%rsi                       #! PC = 0x4256478 *)
/* lea    %%EA,%%rsi                       #! 0x4256478 = 0x4256478; */
(* mov    %rbx,%rdi                                #! PC = 0x4256485 *)
/* mov rdi rbx; */
(* mov    %rax,%rbp                                #! PC = 0x4256488 *)
/* mov rbp rax; */
(* #callq  0x403f20 <fp_copy>                      #! PC = 0x4256491 *)
#callq  0x403f20 <fp_copy>                      #! 0x4256491 = 0x4256491;
(* mov    $0x6,%edx                                #! PC = 0x4210464 *)
/* mov rdx 0x6@uint64; */
(* #jmpq   0x428ca0 <dv_copy>                      #! PC = 0x4210469 *)
#jmpq   0x428ca0 <dv_copy>                      #! 0x4210469 = 0x4210469;
(* movslq %edx,%rdx                                #! PC = 0x4361376 *)
/* movslq %%rdx,%%rdx                                #! 0x4361376 = 0x4361376; */
(* shl    $0x3,%rdx                                #! PC = 0x4361379 *)
/* shl    $0x3,%%rdx                                #! 0x4361379 = 0x4361379; */
(* #jmpq   0x4010c0 <memcpy@plt>                   #! PC = 0x4361383 *)
#jmpq   0x4010c0 <memcpy@plt>                   #! 0x4361383 = 0x4361383;
(* #jmpq   *0x6cf9a(%rip)        # 0x46e060        #! PC = 0x4198592 *)
#jmpq   *%%EA        # 0x46e060        #! 0x4198592 = 0x4198592;
(* mov    %rdi,%rax                                #! PC = 0x140737346649760 *)
/* mov rax rdi; */
(* cmp    $0x100,%rdx                              #! PC = 0x140737346649763 *)
/* cmp    $0x100,%%rdx                              #! 0x140737346649763 = 0x140737346649763; */
(* #jae    0x7ffff78dc070 <__memcpy_avx_unaligned+464>#! PC = 0x140737346649770 *)
#jae    0x7ffff78dc070 <__memcpy_avx_unaligned+464>#! 0x140737346649770 = 0x140737346649770;
(* cmp    $0x10,%dl                                #! PC = 0x140737346649776 *)
/* cmp    $0x10,%dl                                #! 0x140737346649776 = 0x140737346649776; */
(* #jb     0x7ffff78dc020 <__memcpy_avx_unaligned+384>#! PC = 0x140737346649779 *)
#jb     0x7ffff78dc020 <__memcpy_avx_unaligned+384>#! 0x140737346649779 = 0x140737346649779;
(* cmp    $0x80,%dl                                #! PC = 0x140737346649785 *)
/* cmp    $0x80,%dl                                #! 0x140737346649785 = 0x140737346649785; */
(* #jb     0x7ffff78dbf70 <__memcpy_avx_unaligned+208>#! PC = 0x140737346649788 *)
#jb     0x7ffff78dbf70 <__memcpy_avx_unaligned+208>#! 0x140737346649788 = 0x140737346649788;
(* cmp    $0x40,%dl                                #! PC = 0x140737346649968 *)
/* cmp    $0x40,%dl                                #! 0x140737346649968 = 0x140737346649968; */
(* #jb     0x7ffff78dbfd0 <__memcpy_avx_unaligned+304>#! PC = 0x140737346649971 *)
#jb     0x7ffff78dbfd0 <__memcpy_avx_unaligned+304>#! 0x140737346649971 = 0x140737346649971;
(* cmp    $0x20,%dl                                #! PC = 0x140737346650064 *)
/* cmp    $0x20,%dl                                #! 0x140737346650064 = 0x140737346650064; */
(* #jb     0x7ffff78dc000 <__memcpy_avx_unaligned+352>#! PC = 0x140737346650067 *)
#jb     0x7ffff78dc000 <__memcpy_avx_unaligned+352>#! 0x140737346650067 = 0x140737346650067;
(* vmovdqu (%rsi),%xmm0                            #! EA = L0x56a140; Value = 0xaa270000000cfff3; PC = 0x140737346650069 *)
/* mov ymm0_00 L0x56a140; */
/* mov ymm0_01 L0x56a148; */
(* vmovdqu 0x10(%rsi),%xmm1                        #! EA = L0x56a150; Value = 0x478fe97a6b0a807f; PC = 0x140737346650073 *)
/* mov ymm1_00 L0x56a150; */
/* mov ymm1_01 L0x56a158; */
(* vmovdqu -0x20(%rsi,%rdx,1),%xmm6                #! EA = L0x56a150; Value = 0x478fe97a6b0a807f; PC = 0x140737346650078 *)
/* vmovdqu -0x20(%%rsi,%%rdx,1),%%xmm6                #! L0x56a150 = L0x56a150; 0x478fe97a6b0a807f = 0x478fe97a6b0a807f; 0x140737346650078 = 0x140737346650078; */
(* vmovdqu -0x10(%rsi,%rdx,1),%xmm7                #! EA = L0x56a160; Value = 0x8ec9733bbf78ab2f; PC = 0x140737346650084 *)
/* vmovdqu -0x10(%%rsi,%%rdx,1),%%xmm7                #! L0x56a160 = L0x56a160; 0x8ec9733bbf78ab2f = 0x8ec9733bbf78ab2f; 0x140737346650084 = 0x140737346650084; */
(* vmovdqu %xmm0,(%rdi)                            #! EA = L0x7fffffffd2d0; PC = 0x140737346650090 *)
/* vmovdqu %%xmm0,%%L0x7fffffffd2d0                            #! L0x7fffffffd2d0 = L0x7fffffffd2d0; 0x140737346650090 = 0x140737346650090; */
(* vmovdqu %xmm1,0x10(%rdi)                        #! EA = L0x7fffffffd2e0; PC = 0x140737346650094 *)
/* vmovdqu %%xmm1,%%L0x7fffffffd2e0                        #! L0x7fffffffd2e0 = L0x7fffffffd2e0; 0x140737346650094 = 0x140737346650094; */
(* vmovdqu %xmm6,-0x20(%rdi,%rdx,1)                #! EA = L0x7fffffffd2e0; PC = 0x140737346650099 *)
/* vmovdqu %%xmm6,-0x20(%%rdi,%%rdx,1)                #! L0x7fffffffd2e0 = L0x7fffffffd2e0; 0x140737346650099 = 0x140737346650099; */
(* vmovdqu %xmm7,-0x10(%rdi,%rdx,1)                #! EA = L0x7fffffffd2f0; PC = 0x140737346650105 *)
/* vmovdqu %%xmm7,-0x10(%%rdi,%%rdx,1)                #! L0x7fffffffd2f0 = L0x7fffffffd2f0; 0x140737346650105 = 0x140737346650105; */
(* #retq                                           #! PC = 0x140737346650111 *)
#retq                                           #! 0x140737346650111 = 0x140737346650111;
(* add    $0x8,%rsp                                #! PC = 0x4256496 *)
/* adds carry rsp rsp 0x8; */
(* lea    0xfc050(%rbp),%rsi                       #! PC = 0x4256500 *)
/* lea    %%EA,%%rsi                       #! 0x4256500 = 0x4256500; */
(* lea    0x30(%rbx),%rdi                          #! PC = 0x4256507 *)
/* lea    %%EA,%%rdi                          #! 0x4256507 = 0x4256507; */
(* pop    %rbx                                     #! PC = 0x4256511 *)
/* pop rbx; */
(* pop    %rbp                                     #! PC = 0x4256512 *)
/* pop rbp; */
(* #jmpq   0x403f20 <fp_copy>                      #! PC = 0x4256513 *)
#jmpq   0x403f20 <fp_copy>                      #! 0x4256513 = 0x4256513;
(* mov    $0x6,%edx                                #! PC = 0x4210464 *)
/* mov rdx 0x6@uint64; */
(* #jmpq   0x428ca0 <dv_copy>                      #! PC = 0x4210469 *)
#jmpq   0x428ca0 <dv_copy>                      #! 0x4210469 = 0x4210469;
(* movslq %edx,%rdx                                #! PC = 0x4361376 *)
/* movslq %%rdx,%%rdx                                #! 0x4361376 = 0x4361376; */
(* shl    $0x3,%rdx                                #! PC = 0x4361379 *)
/* shl    $0x3,%%rdx                                #! 0x4361379 = 0x4361379; */
(* #jmpq   0x4010c0 <memcpy@plt>                   #! PC = 0x4361383 *)
#jmpq   0x4010c0 <memcpy@plt>                   #! 0x4361383 = 0x4361383;
(* #jmpq   *0x6cf9a(%rip)        # 0x46e060        #! PC = 0x4198592 *)
#jmpq   *%%EA        # 0x46e060        #! 0x4198592 = 0x4198592;
(* mov    %rdi,%rax                                #! PC = 0x140737346649760 *)
/* mov rax rdi; */
(* cmp    $0x100,%rdx                              #! PC = 0x140737346649763 *)
/* cmp    $0x100,%%rdx                              #! 0x140737346649763 = 0x140737346649763; */
(* #jae    0x7ffff78dc070 <__memcpy_avx_unaligned+464>#! PC = 0x140737346649770 *)
#jae    0x7ffff78dc070 <__memcpy_avx_unaligned+464>#! 0x140737346649770 = 0x140737346649770;
(* cmp    $0x10,%dl                                #! PC = 0x140737346649776 *)
/* cmp    $0x10,%dl                                #! 0x140737346649776 = 0x140737346649776; */
(* #jb     0x7ffff78dc020 <__memcpy_avx_unaligned+384>#! PC = 0x140737346649779 *)
#jb     0x7ffff78dc020 <__memcpy_avx_unaligned+384>#! 0x140737346649779 = 0x140737346649779;
(* cmp    $0x80,%dl                                #! PC = 0x140737346649785 *)
/* cmp    $0x80,%dl                                #! 0x140737346649785 = 0x140737346649785; */
(* #jb     0x7ffff78dbf70 <__memcpy_avx_unaligned+208>#! PC = 0x140737346649788 *)
#jb     0x7ffff78dbf70 <__memcpy_avx_unaligned+208>#! 0x140737346649788 = 0x140737346649788;
(* cmp    $0x40,%dl                                #! PC = 0x140737346649968 *)
/* cmp    $0x40,%dl                                #! 0x140737346649968 = 0x140737346649968; */
(* #jb     0x7ffff78dbfd0 <__memcpy_avx_unaligned+304>#! PC = 0x140737346649971 *)
#jb     0x7ffff78dbfd0 <__memcpy_avx_unaligned+304>#! 0x140737346649971 = 0x140737346649971;
(* cmp    $0x20,%dl                                #! PC = 0x140737346650064 *)
/* cmp    $0x20,%dl                                #! 0x140737346650064 = 0x140737346650064; */
(* #jb     0x7ffff78dc000 <__memcpy_avx_unaligned+352>#! PC = 0x140737346650067 *)
#jb     0x7ffff78dc000 <__memcpy_avx_unaligned+352>#! 0x140737346650067 = 0x140737346650067;
(* vmovdqu (%rsi),%xmm0                            #! EA = L0x56a170; Value = 0xaa270000000cfff3; PC = 0x140737346650069 *)
/* mov ymm0_00 L0x56a170; */
/* mov ymm0_01 L0x56a178; */
(* vmovdqu 0x10(%rsi),%xmm1                        #! EA = L0x56a180; Value = 0x478fe97a6b0a807f; PC = 0x140737346650073 *)
/* mov ymm1_00 L0x56a180; */
/* mov ymm1_01 L0x56a188; */
(* vmovdqu -0x20(%rsi,%rdx,1),%xmm6                #! EA = L0x56a180; Value = 0x478fe97a6b0a807f; PC = 0x140737346650078 *)
/* vmovdqu -0x20(%%rsi,%%rdx,1),%%xmm6                #! L0x56a180 = L0x56a180; 0x478fe97a6b0a807f = 0x478fe97a6b0a807f; 0x140737346650078 = 0x140737346650078; */
(* vmovdqu -0x10(%rsi,%rdx,1),%xmm7                #! EA = L0x56a190; Value = 0x8ec9733bbf78ab2f; PC = 0x140737346650084 *)
/* vmovdqu -0x10(%%rsi,%%rdx,1),%%xmm7                #! L0x56a190 = L0x56a190; 0x8ec9733bbf78ab2f = 0x8ec9733bbf78ab2f; 0x140737346650084 = 0x140737346650084; */
(* vmovdqu %xmm0,(%rdi)                            #! EA = L0x7fffffffd300; PC = 0x140737346650090 *)
/* vmovdqu %%xmm0,%%L0x7fffffffd300                            #! L0x7fffffffd300 = L0x7fffffffd300; 0x140737346650090 = 0x140737346650090; */
(* vmovdqu %xmm1,0x10(%rdi)                        #! EA = L0x7fffffffd310; PC = 0x140737346650094 *)
/* vmovdqu %%xmm1,%%L0x7fffffffd310                        #! L0x7fffffffd310 = L0x7fffffffd310; 0x140737346650094 = 0x140737346650094; */
(* vmovdqu %xmm6,-0x20(%rdi,%rdx,1)                #! EA = L0x7fffffffd310; PC = 0x140737346650099 *)
/* vmovdqu %%xmm6,-0x20(%%rdi,%%rdx,1)                #! L0x7fffffffd310 = L0x7fffffffd310; 0x140737346650099 = 0x140737346650099; */
(* vmovdqu %xmm7,-0x10(%rdi,%rdx,1)                #! EA = L0x7fffffffd320; PC = 0x140737346650105 *)
/* vmovdqu %%xmm7,-0x10(%%rdi,%%rdx,1)                #! L0x7fffffffd320 = L0x7fffffffd320; 0x140737346650105 = 0x140737346650105; */
(* #retq                                           #! PC = 0x140737346650111 *)
#retq                                           #! 0x140737346650111 = 0x140737346650111;

/* mov T40_0 L0x7fffffffd2d0; */
/* mov T40_1 L0x7fffffffd2d8; */
/* mov T40_2 L0x7fffffffd2e0; */
/* mov T40_3 L0x7fffffffd2e8; */
/* mov T40_4 L0x7fffffffd2f0; */
/* mov T40_5 L0x7fffffffd2f8; */

/* mov T41_0 L0x7fffffffd300; */
/* mov T41_1 L0x7fffffffd308; */
/* mov T41_2 L0x7fffffffd310; */
/* mov T41_3 L0x7fffffffd318; */
/* mov T41_4 L0x7fffffffd320; */
/* mov T41_5 L0x7fffffffd328; */

(* #callq  0x42c1c0 <fp2_mul_integ>                #! PC = 0x4292862 *)
#callq  0x42c1c0 <fp2_mul_integ>                #! 0x4292862 = 0x4292862;

/* some constant */

mov T40_0 0x4@uint64;
mov T40_1 0@uint64;
mov T40_2 0@uint64;
mov T40_3 0@uint64;
mov T40_4 0@uint64;
mov T40_5 0@uint64;

mov T41_0 0x4@uint64;
mov T41_1 0@uint64;
mov T41_2 0@uint64;
mov T41_3 0@uint64;
mov T41_4 0@uint64;
mov T41_5 0@uint64;

inline fp2_mul(T30_0, T30_1, T30_2, T30_3, T30_4, T30_5, T31_0, T31_1, T31_2, T31_3, T31_4, T31_5,
             T40_0, T40_1, T40_2, T40_3, T40_4, T40_5, T41_0, T41_1, T41_2, T41_3, T41_4, T41_5,
             T30_0, T30_1, T30_2, T30_3, T30_4, T30_5, T31_0, T31_1, T31_2, T31_3, T31_4, T31_5);

ghost D0_0@uint64, D0_1@uint64, D0_2@uint64, D0_3@uint64, D0_4@uint64, D0_5@uint64,
      D1_0@uint64, D1_1@uint64, D1_2@uint64, D1_3@uint64, D1_4@uint64, D1_5@uint64:
and [
    D0_0 = T30_0, D0_1 = T30_1, D0_2 = T30_2, D0_3 = T30_3, D0_4 = T30_4, D0_5 = T30_5,
    D1_0 = T31_0, D1_1 = T31_1, D1_2 = T31_2, D1_3 = T31_3, D1_4 = T31_4, D1_5 = T31_5
] &&
and [
    D0_0 = T30_0, D0_1 = T30_1, D0_2 = T30_2, D0_3 = T30_3, D0_4 = T30_4, D0_5 = T30_5,
    D1_0 = T31_0, D1_1 = T31_1, D1_2 = T31_2, D1_3 = T31_3, D1_4 = T31_4, D1_5 = T31_5
];


/* ecut 3 */
ecut
  and [
  (limbs 64 [0, 0, 0, 0, 0, 0, D0_0, D0_1, D0_2, D0_3, D0_4, D0_5])
  = (
    12 * ((limbs 64 [C0_0, C0_1, C0_2, C0_3, C0_4, C0_5]) - (limbs 64 [C1_0, C1_1, C1_2, C1_3, C1_4, C1_5]))
  )
  (mod (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
         0x6730d2a0f6b0f624, 0x64774b84f38512bf,
         0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a])),
  (limbs 64 [0, 0 ,0 ,0 , 0, 0, D1_0, D1_1, D1_2, D1_3, D1_4, D1_5])
  = (
    12 * ((limbs 64 [C0_0, C0_1, C0_2, C0_3, C0_4, C0_5]) + (limbs 64 [C1_0, C1_1, C1_2, C1_3, C1_4, C1_5]))
  )
  (mod (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
         0x6730d2a0f6b0f624, 0x64774b84f38512bf,
         0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a]))
 ] prove with all ghosts, all cuts;

/* ghost D0_0@uint64, D0_1@uint64, D0_2@uint64, D0_3@uint64, D0_4@uint64, D0_5@uint64, */
/*       D1_0@uint64, D1_1@uint64, D1_2@uint64, D1_3@uint64, D1_4@uint64, D1_5@uint64: */
/* and [ */
/*     D0_0 = T30_0, D0_1 = T30_1, D0_2 = T30_2, D0_3 = T30_3, D0_4 = T30_4, D0_5 = T30_5, */
/*     D1_0 = T31_0, D1_1 = T31_1, D1_2 = T31_2, D1_3 = T31_3, D1_4 = T31_4, D1_5 = T31_5 */
/* ] && */
/* and [ */
/*     D0_0 = T30_0, D0_1 = T30_1, D0_2 = T30_2, D0_3 = T30_3, D0_4 = T30_4, D0_5 = T30_5, */
/*     D1_0 = T31_0, D1_1 = T31_1, D1_2 = T31_2, D1_3 = T31_3, D1_4 = T31_4, D1_5 = T31_5 */
/* ]; */


/* ecut */
/*   and [ */
/*   (limbs 64 [0, 0, 0, 0, 0, 0, D0_0, D0_1, D0_2, D0_3, D0_4, D0_5]) */
/*   = ( */
/*     12 * (limbs 64 [0, 0, 0, 0, 0, 0, C0_0, C0_1, C0_2, C0_3, C0_4, C0_5]) */
/*   ) */
/*   (mod (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff, */
/*          0x6730d2a0f6b0f624, 0x64774b84f38512bf, */
/*          0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a])), */
/*   (limbs 64 [0, 0, 0, 0, 0, 0, D1_0, D1_1, D1_2, D1_3, D1_4, D1_5]) */
/*   = ( */
/*     12 * (limbs 64 [0, 0, 0, 0, 0, 0, C1_0, C1_1, C1_2, C1_3, C1_4, C1_5]) */
/*   ) */
/*   (mod (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff, */
/*          0x6730d2a0f6b0f624, 0x64774b84f38512bf, */
/*          0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a])) */
/*  ] prove with all ghosts, all cuts; */


/* E = (x1 + y1)^2 - A - B. */

/* NOTE: fp2_add(t4, q->x, q->y); */
(* #callq  0x42cdf0 <fp2_add_integ>                #! PC = 0x4292885 *)
#callq  0x42cdf0 <fp2_add_integ>                #! 0x4292885 = 0x4292885;
inline fp2_add(QX0_0, QX0_1, QX0_2, QX0_3, QX0_4, QX0_5, QX1_0, QX1_1, QX1_2, QX1_3, QX1_4, QX1_5,
             QY0_0, QY0_1, QY0_2, QY0_3, QY0_4, QY0_5, QY1_0, QY1_1, QY1_2, QY1_3, QY1_4, QY1_5,
             T40_0, T40_1, T40_2, T40_3, T40_4, T40_5, T41_0, T41_1, T41_2, T41_3, T41_4, T41_5);
(* #retq                                           #! PC = 0x4307788 *)
#retq                                           #! 0x4307788 = 0x4307788;
/* NOTE: fp2_sqr(t4, t4); */
(* #callq  0x42c400 <fp2_sqr_integ>                #! PC = 0x4292901 *)
#callq  0x42c400 <fp2_sqr_integ>                #! 0x4292901 = 0x4292901;
inline fp2_sqr(T40_0, T40_1, T40_2, T40_3, T40_4, T40_5, T41_0, T41_1, T41_2, T41_3, T41_4, T41_5,
             T40_0, T40_1, T40_2, T40_3, T40_4, T40_5, T41_0, T41_1, T41_2, T41_3, T41_4, T41_5);


/* NOTE: fp2_sub(t4, t4, t0); */
(* #callq  0x42ce00 <fp2_sub_integ>                #! PC = 0x4292922 *)
#callq  0x42ce00 <fp2_sub_integ>                #! 0x4292922 = 0x4292922;
inline fp2_sub(T40_0, T40_1, T40_2, T40_3, T40_4, T40_5, T41_0, T41_1, T41_2, T41_3, T41_4, T41_5,
             T00_0, T00_1, T00_2, T00_3, T00_4, T00_5, T01_0, T01_1, T01_2, T01_3, T01_4, T01_5,
             T40_0, T40_1, T40_2, T40_3, T40_4, T40_5, T41_0, T41_1, T41_2, T41_3, T41_4, T41_5);
(* #retq                                           #! PC = 0x4308496 *)
#retq                                           #! 0x4308496 = 0x4308496;
/* NOTE: fp2_sub(t4, t4, t1); */
(* #callq  0x42ce00 <fp2_sub_integ>                #! PC = 0x4292946 *)
#callq  0x42ce00 <fp2_sub_integ>                #! 0x4292946 = 0x4292946;
inline fp2_sub(T40_0, T40_1, T40_2, T40_3, T40_4, T40_5, T41_0, T41_1, T41_2, T41_3, T41_4, T41_5,
             T10_0, T10_1, T10_2, T10_3, T10_4, T10_5, T11_0, T11_1, T11_2, T11_3, T11_4, T11_5,
             T40_0, T40_1, T40_2, T40_3, T40_4, T40_5, T41_0, T41_1, T41_2, T41_3, T41_4, T41_5);
(* #retq                                           #! PC = 0x4308496 *)
#retq                                           #! 0x4308496 = 0x4308496;

ghost E0_0@uint64, E0_1@uint64, E0_2@uint64, E0_3@uint64, E0_4@uint64, E0_5@uint64,
      E1_0@uint64, E1_1@uint64, E1_2@uint64, E1_3@uint64, E1_4@uint64, E1_5@uint64:
and [
    E0_0 = T40_0, E0_1 = T40_1, E0_2 = T40_2, E0_3 = T40_3, E0_4 = T40_4, E0_5 = T40_5,
    E1_0 = T41_0, E1_1 = T41_1, E1_2 = T41_2, E1_3 = T41_3, E1_4 = T41_4, E1_5 = T41_5
] &&
and [
    E0_0 = T40_0, E0_1 = T40_1, E0_2 = T40_2, E0_3 = T40_3, E0_4 = T40_4, E0_5 = T40_5,
    E1_0 = T41_0, E1_1 = T41_1, E1_2 = T41_2, E1_3 = T41_3, E1_4 = T41_4, E1_5 = T41_5
];


/* ecut 4 */
ecut
  and [
  (limbs 64 [0, 0, 0, 0, 0, 0, E0_0, E0_1, E0_2, E0_3, E0_4, E0_5])
  = (
    ((limbs 64 [QX0_0, QX0_1, QX0_2, QX0_3, QX0_4, QX0_5]) + (limbs 64 [QY0_0, QY0_1, QY0_2, QY0_3, QY0_4, QY0_5])) ** 2
    -
    ((limbs 64 [QX1_0, QX1_1, QX1_2, QX1_3, QX1_4, QX1_5]) + (limbs 64 [QY1_0, QY1_1, QY1_2, QY1_3, QY1_4, QY1_5])) ** 2
    - (limbs 64 [0, 0, 0, 0, 0, 0, A0_0, A0_1, A0_2, A0_3, A0_4, A0_5])
    - (limbs 64 [0, 0, 0, 0, 0, 0, B0_0, B0_1, B0_2, B0_3, B0_4, B0_5])
  )
  (mod (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
         0x6730d2a0f6b0f624, 0x64774b84f38512bf,
         0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a])),
  (limbs 64 [0, 0, 0, 0, 0, 0, E1_0, E1_1, E1_2, E1_3, E1_4, E1_5])
  = (
     2 * ((limbs 64 [QX0_0, QX0_1, QX0_2, QX0_3, QX0_4, QX0_5]) + (limbs 64 [QY0_0, QY0_1, QY0_2, QY0_3, QY0_4, QY0_5]))
     * ((limbs 64 [QX1_0, QX1_1, QX1_2, QX1_3, QX1_4, QX1_5]) + (limbs 64 [QY1_0, QY1_1, QY1_2, QY1_3, QY1_4, QY1_5]))
    - (limbs 64 [0, 0, 0, 0, 0, 0, A1_0, A1_1, A1_2, A1_3, A1_4, A1_5])
    - (limbs 64 [0, 0, 0, 0, 0, 0, B1_0, B1_1, B1_2, B1_3, B1_4, B1_5])
  )
  (mod (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
         0x6730d2a0f6b0f624, 0x64774b84f38512bf,
         0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a]))
 ] prove with all ghosts, all cuts;



/* F = (y1 + z1)^2 - B - C. */
/* NOTE: fp2_add(t5, q->y, q->z); */
(* #callq  0x42cdf0 <fp2_add_integ>                #! PC = 0x4292977 *)
#callq  0x42cdf0 <fp2_add_integ>                #! 0x4292977 = 0x4292977;
/* mov T50_0 L0x7fffffffd330; */
/* mov T50_1 L0x7fffffffd338; */
/* mov T50_2 L0x7fffffffd340; */
/* mov T50_3 L0x7fffffffd348; */
/* mov T50_4 L0x7fffffffd350; */
/* mov T50_5 L0x7fffffffd358; */

/* mov T51_0 L0x7fffffffd360; */
/* mov T51_1 L0x7fffffffd368; */
/* mov T51_2 L0x7fffffffd370; */
/* mov T51_3 L0x7fffffffd378; */
/* mov T51_4 L0x7fffffffd380; */
/* mov T51_5 L0x7fffffffd388; */

inline fp2_add(QY0_0, QY0_1, QY0_2, QY0_3, QY0_4, QY0_5, QY1_0, QY1_1, QY1_2, QY1_3, QY1_4, QY1_5,
            QZ0_0, QZ0_1, QZ0_2, QZ0_3, QZ0_4, QZ0_5, QZ1_0, QZ1_1, QZ1_2, QZ1_3, QZ1_4, QZ1_5,
            T50_0, T50_1, T50_2, T50_3, T50_4, T50_5, T51_0, T51_1, T51_2, T51_3, T51_4, T51_5);

(* #retq                                           #! PC = 0x4307788 *)
#retq                                           #! 0x4307788 = 0x4307788;
/* NOTE: fp2_sqr(t5, t5); */
(* #callq  0x42c400 <fp2_sqr_integ>                #! PC = 0x4292993 *)
#callq  0x42c400 <fp2_sqr_integ>                #! 0x4292993 = 0x4292993;
inline fp2_sqr(T50_0, T50_1, T50_2, T50_3, T50_4, T50_5, T51_0, T51_1, T51_2, T51_3, T51_4, T51_5,
             T50_0, T50_1, T50_2, T50_3, T50_4, T50_5, T51_0, T51_1, T51_2, T51_3, T51_4, T51_5);
(* #retq                                           #! PC = 0x4313227 *)
#retq                                           #! 0x4313227 = 0x4313227;
/* NOTE: fp2_sub(t5, t5, t1); */
(* #callq  0x42ce00 <fp2_sub_integ>                #! PC = 0x4293017 *)
#callq  0x42ce00 <fp2_sub_integ>                #! 0x4293017 = 0x4293017;
inline fp2_sub(T50_0, T50_1, T50_2, T50_3, T50_4, T50_5, T51_0, T51_1, T51_2, T51_3, T51_4, T51_5,
             T10_0, T10_1, T10_2, T10_3, T10_4, T10_5, T11_0, T11_1, T11_2, T11_3, T11_4, T11_5,
             T50_0, T50_1, T50_2, T50_3, T50_4, T50_5, T51_0, T51_1, T51_2, T51_3, T51_4, T51_5);

(* #retq                                           #! PC = 0x4308496 *)
#retq                                           #! 0x4308496 = 0x4308496;
/* NOTE: fp2_sub(t5, t5, t2); */
(* #callq  0x42ce00 <fp2_sub_integ>                #! PC = 0x4293041 *)
#callq  0x42ce00 <fp2_sub_integ>                #! 0x4293041 = 0x4293041;
inline fp2_sub(T50_0, T50_1, T50_2, T50_3, T50_4, T50_5, T51_0, T51_1, T51_2, T51_3, T51_4, T51_5,
             T20_0, T20_1, T20_2, T20_3, T20_4, T20_5, T21_0, T21_1, T21_2, T21_3, T21_4, T21_5,
             T50_0, T50_1, T50_2, T50_3, T50_4, T50_5, T51_0, T51_1, T51_2, T51_3, T51_4, T51_5);
(* #retq                                           #! PC = 0x4308496 *)
#retq                                           #! 0x4308496 = 0x4308496;

ghost F0_0@uint64, F0_1@uint64, F0_2@uint64, F0_3@uint64, F0_4@uint64, F0_5@uint64,
      F1_0@uint64, F1_1@uint64, F1_2@uint64, F1_3@uint64, F1_4@uint64, F1_5@uint64:
and [
    F0_0 = T50_0, F0_1 = T50_1, F0_2 = T50_2, F0_3 = T50_3, F0_4 = T50_4, F0_5 = T50_5,
    F1_0 = T51_0, F1_1 = T51_1, F1_2 = T51_2, F1_3 = T51_3, F1_4 = T51_4, F1_5 = T51_5
] &&
and [
    F0_0 = T50_0, F0_1 = T50_1, F0_2 = T50_2, F0_3 = T50_3, F0_4 = T50_4, F0_5 = T50_5,
    F1_0 = T51_0, F1_1 = T51_1, F1_2 = T51_2, F1_3 = T51_3, F1_4 = T51_4, F1_5 = T51_5
];


/* ecut 5 */
ecut
  and [
  (limbs 64 [0, 0, 0, 0, 0, 0, F0_0, F0_1, F0_2, F0_3, F0_4, F0_5])
  = (
    ((limbs 64 [QY0_0, QY0_1, QY0_2, QY0_3, QY0_4, QY0_5]) + (limbs 64 [QZ0_0, QZ0_1, QZ0_2, QZ0_3, QZ0_4, QZ0_5])) ** 2
    -
    ((limbs 64 [QY1_0, QY1_1, QY1_2, QY1_3, QY1_4, QY1_5]) + (limbs 64 [QZ1_0, QZ1_1, QZ1_2, QZ1_3, QZ1_4, QZ1_5])) ** 2
    - (limbs 64 [0, 0, 0, 0, 0, 0, B0_0, B0_1, B0_2, B0_3, B0_4, B0_5])
    - (limbs 64 [0, 0, 0, 0, 0, 0, C0_0, C0_1, C0_2, C0_3, C0_4, C0_5])
  )
  (mod (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
         0x6730d2a0f6b0f624, 0x64774b84f38512bf,
         0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a])),
  (limbs 64 [0, 0, 0, 0, 0, 0, F1_0, F1_1, F1_2, F1_3, F1_4, F1_5])
  = (
     2 * ((limbs 64 [QY0_0, QY0_1, QY0_2, QY0_3, QY0_4, QY0_5]) + (limbs 64 [QZ0_0, QZ0_1, QZ0_2, QZ0_3, QZ0_4, QZ0_5]))
     * ((limbs 64 [QY1_0, QY1_1, QY1_2, QY1_3, QY1_4, QY1_5]) + (limbs 64 [QZ1_0, QZ1_1, QZ1_2, QZ1_3, QZ1_4, QZ1_5]))
    - (limbs 64 [0, 0, 0, 0, 0, 0, B1_0, B1_1, B1_2, B1_3, B1_4, B1_5])
    - (limbs 64 [0, 0, 0, 0, 0, 0, C1_0, C1_1, C1_2, C1_3, C1_4, C1_5])
  )
  (mod (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
         0x6730d2a0f6b0f624, 0x64774b84f38512bf,
         0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a]))
 ] prove with all ghosts, all cuts;

/* G = 3D. */
/* NOTE: fp2_dbl(t6, t3); */
/* mov T60_0 L0x7fffffffd390; */
/* mov T60_1 L0x7fffffffd398; */
/* mov T60_2 L0x7fffffffd3a0; */
/* mov T60_3 L0x7fffffffd3a8; */
/* mov T60_4 L0x7fffffffd3b0; */
/* mov T60_5 L0x7fffffffd3b8; */

/* mov T61_0 L0x7fffffffd3c0; */
/* mov T61_1 L0x7fffffffd3c8; */
/* mov T61_2 L0x7fffffffd3d0; */
/* mov T61_3 L0x7fffffffd3d8; */
/* mov T61_4 L0x7fffffffd3e0; */
/* mov T61_5 L0x7fffffffd3e8; */
(* #callq  0x42ce10 <fp2_dbl_integ>                #! PC = 0x4293062 *)
#callq  0x42ce10 <fp2_dbl_integ>                #! 0x4293062 = 0x4293062;
inline fp2_dbl(T30_0, T30_1, T30_2, T30_3, T30_4, T30_5, T31_0, T31_1, T31_2, T31_3, T31_4, T31_5,
             T60_0, T60_1, T60_2, T60_3, T60_4, T60_5, T61_0, T61_1, T61_2, T61_3, T61_4, T61_5);
(* #retq                                           #! PC = 0x4309234 *)
#retq                                           #! 0x4309234 = 0x4309234;
/* NOTE: fp2_add(t6, t6, t3); */
(* #callq  0x42cdf0 <fp2_add_integ>                #! PC = 0x4293086 *)
#callq  0x42cdf0 <fp2_add_integ>                #! 0x4293086 = 0x4293086;
inline fp2_add(T60_0, T60_1, T60_2, T60_3, T60_4, T60_5, T61_0, T61_1, T61_2, T61_3, T61_4, T61_5,
             T30_0, T30_1, T30_2, T30_3, T30_4, T30_5, T31_0, T31_1, T31_2, T31_3, T31_4, T31_5,
             T60_0, T60_1, T60_2, T60_3, T60_4, T60_5, T61_0, T61_1, T61_2, T61_3, T61_4, T61_5);
(* #retq                                           #! PC = 0x4307788 *)
#retq                                           #! 0x4307788 = 0x4307788;
ghost G0_0@uint64, G0_1@uint64, G0_2@uint64, G0_3@uint64, G0_4@uint64, G0_5@uint64,
      G1_0@uint64, G1_1@uint64, G1_2@uint64, G1_3@uint64, G1_4@uint64, G1_5@uint64:
and [
    G0_0 = T60_0, G0_1 = T60_1, G0_2 = T60_2, G0_3 = T60_3, G0_4 = T60_4, G0_5 = T60_5,
    G1_0 = T61_0, G1_1 = T61_1, G1_2 = T61_2, G1_3 = T61_3, G1_4 = T61_4, G1_5 = T61_5
] &&
and [
    G0_0 = T60_0, G0_1 = T60_1, G0_2 = T60_2, G0_3 = T60_3, G0_4 = T60_4, G0_5 = T60_5,
    G1_0 = T61_0, G1_1 = T61_1, G1_2 = T61_2, G1_3 = T61_3, G1_4 = T61_4, G1_5 = T61_5
];

/* ecut 6 */
ecut
  and [
  (limbs 64 [0, 0, 0, 0, 0, 0, G0_0, G0_1, G0_2, G0_3, G0_4, G0_5])
  = (
    3 * (limbs 64 [0, 0, 0, 0, 0, 0, D0_0, D0_1, D0_2, D0_3, D0_4, D0_5])
  )
  (mod (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
         0x6730d2a0f6b0f624, 0x64774b84f38512bf,
         0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a])),
  (limbs 64 [0, 0, 0, 0, 0, 0, G1_0, G1_1, G1_2, G1_3, G1_4, G1_5])
  = (
    3 * (limbs 64 [0, 0, 0, 0, 0, 0, D1_0, D1_1, D1_2, D1_3, D1_4, D1_5])
  )
  (mod (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
         0x6730d2a0f6b0f624, 0x64774b84f38512bf,
         0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a]))
 ] prove with all ghosts, all cuts;

/* x3 = E * (B - G). */
/* NOTE: fp2_sub(r->x, t1, t6); */
(* #callq  0x42ce00 <fp2_sub_integ>                #! PC = 0x4293110 *)
#callq  0x42ce00 <fp2_sub_integ>                #! 0x4293110 = 0x4293110;
inline fp2_sub(T10_0, T10_1, T10_2, T10_3, T10_4, T10_5, T11_0, T11_1, T11_2, T11_3, T11_4, T11_5,
             T60_0, T60_1, T60_2, T60_3, T60_4, T60_5, T61_0, T61_1, T61_2, T61_3, T61_4, T61_5,
             RX0_0, RX0_1, RX0_2, RX0_3, RX0_4, RX0_5, RX1_0, RX1_1, RX1_2, RX1_3, RX1_4, RX1_5);
(* #retq                                           #! PC = 0x4308496 *)
#retq                                           #! 0x4308496 = 0x4308496;

/* ecut 7 */
ecut
  and [
  (limbs 64 [RX0_0, RX0_1, RX0_2, RX0_3, RX0_4, RX0_5])
  = (
    ((limbs 64 [B0_0, B0_1, B0_2, B0_3, B0_4, B0_5]) - (limbs 64 [G0_0, G0_1, G0_2, G0_3, G0_4, G0_5]))
  )
  (mod (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
         0x6730d2a0f6b0f624, 0x64774b84f38512bf,
         0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a])),
  (limbs 64 [RX1_0, RX1_1, RX1_2, RX1_3, RX1_4, RX1_5])
  = (
    ((limbs 64 [B1_0, B1_1, B1_2, B1_3, B1_4, B1_5]) - (limbs 64 [G1_0, G1_1, G1_2, G1_3, G1_4, G1_5]))
  )
  (mod (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
         0x6730d2a0f6b0f624, 0x64774b84f38512bf,
         0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a]))
 ] prove with all ghosts, all cuts;

/* NOTE: fp2_mul(r->x, r->x, t4); */
(* #callq  0x42c1c0 <fp2_mul_integ>                #! PC = 0x4293129 *)
#callq  0x42c1c0 <fp2_mul_integ>                #! 0x4293129 = 0x4293129;
inline fp2_mul(RX0_0, RX0_1, RX0_2, RX0_3, RX0_4, RX0_5, RX1_0, RX1_1, RX1_2, RX1_3, RX1_4, RX1_5,
            T40_0, T40_1, T40_2, T40_3, T40_4, T40_5, T41_0, T41_1, T41_2, T41_3, T41_4, T41_5,
            RX0_0, RX0_1, RX0_2, RX0_3, RX0_4, RX0_5, RX1_0, RX1_1, RX1_2, RX1_3, RX1_4, RX1_5);
(* #retq                                           #! PC = 0x4313227 *)
#retq                                           #! 0x4313227 = 0x4313227;

/* ecut 8 */
ecut
  and [
  (limbs 64 [0, 0, 0, 0, 0, 0, RX0_0, RX0_1, RX0_2, RX0_3, RX0_4, RX0_5])
  = (
    (limbs 64 [E0_0, E0_1, E0_2, E0_3, E0_4, E0_5])
    *
    ((limbs 64 [B0_0, B0_1, B0_2, B0_3, B0_4, B0_5]) - (limbs 64 [G0_0, G0_1, G0_2, G0_3, G0_4, G0_5]))
    -
    (limbs 64 [E1_0, E1_1, E1_2, E1_3, E1_4, E1_5])
    *
    ((limbs 64 [B1_0, B1_1, B1_2, B1_3, B1_4, B1_5]) - (limbs 64 [G1_0, G1_1, G1_2, G1_3, G1_4, G1_5]))
  )
  (mod (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
         0x6730d2a0f6b0f624, 0x64774b84f38512bf,
         0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a])),
  (limbs 64 [0, 0, 0, 0, 0, 0, RX1_0, RX1_1, RX1_2, RX1_3, RX1_4, RX1_5])
  = (
    (limbs 64 [E0_0, E0_1, E0_2, E0_3, E0_4, E0_5]) *
    ((limbs 64 [B1_0, B1_1, B1_2, B1_3, B1_4, B1_5]) - (limbs 64 [G1_0, G1_1, G1_2, G1_3, G1_4, G1_5]))
    +
    (limbs 64 [E1_0, E1_1, E1_2, E1_3, E1_4, E1_5])
    *
    ((limbs 64 [B0_0, B0_1, B0_2, B0_3, B0_4, B0_5]) - (limbs 64 [G0_0, G0_1, G0_2, G0_3, G0_4, G0_5]))
  )
  (mod (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
         0x6730d2a0f6b0f624, 0x64774b84f38512bf,
         0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a]))
 ] prove with all ghosts, all cuts;

/* y3 = (B + G)^2 -12D^2. */
/* NOTE: fp2_add(t6, t6, t1); */

mov VB0_0 T10_0;
mov VB0_1 T10_1;
mov VB0_2 T10_2;
mov VB0_3 T10_3;
mov VB0_4 T10_4;
mov VB0_5 T10_5;
mov VB1_0 T11_0;
mov VB1_1 T11_1;
mov VB1_2 T11_2;
mov VB1_3 T11_3;
mov VB1_4 T11_4;
mov VB1_5 T11_5;

mov VG0_0 T60_0;
mov VG0_1 T60_1;
mov VG0_2 T60_2;
mov VG0_3 T60_3;
mov VG0_4 T60_4;
mov VG0_5 T60_5;
mov VG1_0 T61_0;
mov VG1_1 T61_1;
mov VG1_2 T61_2;
mov VG1_3 T61_3;
mov VG1_4 T61_4;
mov VG1_5 T61_5;

mov VD0_0 T30_0;
mov VD0_1 T30_1;
mov VD0_2 T30_2;
mov VD0_3 T30_3;
mov VD0_4 T30_4;
mov VD0_5 T30_5;
mov VD1_0 T31_0;
mov VD1_1 T31_1;
mov VD1_2 T31_2;
mov VD1_3 T31_3;
mov VD1_4 T31_4;
mov VD1_5 T31_5;


(* #callq  0x42cdf0 <fp2_add_integ>                #! PC = 0x4293153 *)
#callq  0x42cdf0 <fp2_add_integ>                #! 0x4293153 = 0x4293153;
inline fp2_add(T60_0, T60_1, T60_2, T60_3, T60_4, T60_5, T61_0, T61_1, T61_2, T61_3, T61_4, T61_5,
             T10_0, T10_1, T10_2, T10_3, T10_4, T10_5, T11_0, T11_1, T11_2, T11_3, T11_4, T11_5,
             T60_0, T60_1, T60_2, T60_3, T60_4, T60_5, T61_0, T61_1, T61_2, T61_3, T61_4, T61_5);
(* #retq                                           #! PC = 0x4307788 *)
#retq                                           #! 0x4307788 = 0x4307788;
/* NOTE: fp2_sqr(t6, t6); */
(* #callq  0x42c400 <fp2_sqr_integ>                #! PC = 0x4293169 *)
#callq  0x42c400 <fp2_sqr_integ>                #! 0x4293169 = 0x4293169;
inline fp2_sqr(T60_0, T60_1, T60_2, T60_3, T60_4, T60_5, T61_0, T61_1, T61_2, T61_3, T61_4, T61_5,
             T60_0, T60_1, T60_2, T60_3, T60_4, T60_5, T61_0, T61_1, T61_2, T61_3, T61_4, T61_5);
(* #retq                                           #! PC = 0x4313227 *)
#retq                                           #! 0x4313227 = 0x4313227;
/* NOTE: fp2_sqr(t2, t3); */
(* #callq  0x42c400 <fp2_sqr_integ>                #! PC = 0x4293190 *)
#callq  0x42c400 <fp2_sqr_integ>                #! 0x4293190 = 0x4293190;
inline fp2_sqr(T30_0, T30_1, T30_2, T30_3, T30_4, T30_5, T31_0, T31_1, T31_2, T31_3, T31_4, T31_5,
             T20_0, T20_1, T20_2, T20_3, T20_4, T20_5, T21_0, T21_1, T21_2, T21_3, T21_4, T21_5);
(* #retq                                           #! PC = 0x4313227 *)
#retq                                           #! 0x4313227 = 0x4313227;
/* NOTE: fp2_dbl(r->y, t2); */
(* #callq  0x42ce10 <fp2_dbl_integ>                #! PC = 0x4293206 *)
#callq  0x42ce10 <fp2_dbl_integ>                #! 0x4293206 = 0x4293206;
inline fp2_dbl(T20_0, T20_1, T20_2, T20_3, T20_4, T20_5, T21_0, T21_1, T21_2, T21_3, T21_4, T21_5,
            RY0_0, RY0_1, RY0_2, RY0_3, RY0_4, RY0_5, RY1_0, RY1_1, RY1_2, RY1_3, RY1_4, RY1_5);
(* #retq                                           #! PC = 0x4309234 *)
#retq                                           #! 0x4309234 = 0x4309234;
/* NOTE: fp2_dbl(t2, r->y); */
(* #callq  0x42ce10 <fp2_dbl_integ>                #! PC = 0x4293222 *)
#callq  0x42ce10 <fp2_dbl_integ>                #! 0x4293222 = 0x4293222;
inline fp2_dbl(RY0_0, RY0_1, RY0_2, RY0_3, RY0_4, RY0_5, RY1_0, RY1_1, RY1_2, RY1_3, RY1_4, RY1_5,
            T20_0, T20_1, T20_2, T20_3, T20_4, T20_5, T21_0, T21_1, T21_2, T21_3, T21_4, T21_5);
(* #retq                                           #! PC = 0x4309234 *)
#retq                                           #! 0x4309234 = 0x4309234;
/* NOTE: fp2_dbl(r->y, t2); */
(* #callq  0x42ce10 <fp2_dbl_integ>                #! PC = 0x4293238 *)
#callq  0x42ce10 <fp2_dbl_integ>                #! 0x4293238 = 0x4293238;
inline fp2_dbl(T20_0, T20_1, T20_2, T20_3, T20_4, T20_5, T21_0, T21_1, T21_2, T21_3, T21_4, T21_5,
            RY0_0, RY0_1, RY0_2, RY0_3, RY0_4, RY0_5, RY1_0, RY1_1, RY1_2, RY1_3, RY1_4, RY1_5);
(* #retq                                           #! PC = 0x4309234 *)
#retq                                           #! 0x4309234 = 0x4309234;
/* NOTE: fp2_add(r->y, r->y, t2); */
(* #callq  0x42cdf0 <fp2_add_integ>                #! PC = 0x4293257 *)
#callq  0x42cdf0 <fp2_add_integ>                #! 0x4293257 = 0x4293257;
inline fp2_add(RY0_0, RY0_1, RY0_2, RY0_3, RY0_4, RY0_5, RY1_0, RY1_1, RY1_2, RY1_3, RY1_4, RY1_5,
             T20_0, T20_1, T20_2, T20_3, T20_4, T20_5, T21_0, T21_1, T21_2, T21_3, T21_4, T21_5,
             RY0_0, RY0_1, RY0_2, RY0_3, RY0_4, RY0_5, RY1_0, RY1_1, RY1_2, RY1_3, RY1_4, RY1_5);
(* #retq                                           #! PC = 0x4307788 *)
#retq                                           #! 0x4307788 = 0x4307788;
/* NOTE: fp2_sub(r->y, t6, r->y); */
(* #callq  0x42ce00 <fp2_sub_integ>                #! PC = 0x4293276 *)
#callq  0x42ce00 <fp2_sub_integ>                #! 0x4293276 = 0x4293276;
inline fp2_sub(T60_0, T60_1, T60_2, T60_3, T60_4, T60_5, T61_0, T61_1, T61_2, T61_3, T61_4, T61_5,
             RY0_0, RY0_1, RY0_2, RY0_3, RY0_4, RY0_5, RY1_0, RY1_1, RY1_2, RY1_3, RY1_4, RY1_5,
             RY0_0, RY0_1, RY0_2, RY0_3, RY0_4, RY0_5, RY1_0, RY1_1, RY1_2, RY1_3, RY1_4, RY1_5);
(* #retq                                           #! PC = 0x4308496 *)
#retq                                           #! 0x4308496 = 0x4308496;

/* ecut 9 */
/* ecut */
/*   and [ */
/*   (limbs 64 [0, 0, 0, 0, 0, 0, RY0_0, RY0_1, RY0_2, RY0_3, RY0_4, RY0_5]) */
/*   = ( */
/*     ((limbs 64 [B0_0, B0_1, B0_2, B0_3, B0_4, B0_5]) + (limbs 64 [G0_0, G0_1, G0_2, G0_3, G0_4, G0_5])) ** 2 */
/*     - */
/*     ((limbs 64 [B1_0, B1_1, B1_2, B1_3, B1_4, B1_5]) + (limbs 64 [G1_0, G1_1, G1_2, G1_3, G1_4, G1_5])) ** 2 */
/*     - 12 * ((limbs 64 [D0_0, D0_1, D0_2, D0_3, D0_4, D0_5]) ** 2 */
/*           - (limbs 64 [D1_0, D1_1, D1_2, D1_3, D1_4, D1_5]) ** 2 ) */
/*   ) */
/*   (mod (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff, */
/*          0x6730d2a0f6b0f624, 0x64774b84f38512bf, */
/*          0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a])), */
/*   (limbs 64 [0, 0, 0, 0, 0, 0, RY1_0, RY1_1, RY1_2, RY1_3, RY1_4, RY1_5]) */
/*   = ( */
/*      2 * ((limbs 64 [B0_0, B0_1, B0_2, B0_3, B0_4, B0_5]) + (limbs 64 [G0_0, G0_1, G0_2, G0_3, G0_4, G0_5])) */
/*      * ((limbs 64 [B1_0, B1_1, B1_2, B1_3, B1_4, B1_5]) + (limbs 64 [G1_0, G1_1, G1_2, G1_3, G1_4, G1_5])) */
/*      - 12 * 2 * ((limbs 64 [D0_0, D0_1, D0_2, D0_3, D0_4, D0_5]) */
/*           * (limbs 64 [D1_0, D1_1, D1_2, D1_3, D1_4, D1_5]))) */
/*   (mod (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff, */
/*          0x6730d2a0f6b0f624, 0x64774b84f38512bf, */
/*          0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a])) */
 /* ] prove with all ghosts, all cuts; */
ecut
  and [
  (limbs 64 [0, 0, 0, 0, 0, 0, RY0_0, RY0_1, RY0_2, RY0_3, RY0_4, RY0_5])
  = (
    ((limbs 64 [VB0_0, VB0_1, VB0_2, VB0_3, VB0_4, VB0_5]) + (limbs 64 [VG0_0, VG0_1, VG0_2, VG0_3, VG0_4, VG0_5])) ** 2
    -
    ((limbs 64 [VB1_0, VB1_1, VB1_2, VB1_3, VB1_4, VB1_5]) + (limbs 64 [VG1_0, VG1_1, VG1_2, VG1_3, VG1_4, VG1_5])) ** 2
    - 12 * ((limbs 64 [VD0_0, VD0_1, VD0_2, VD0_3, VD0_4, VD0_5]) ** 2
          - (limbs 64 [VD1_0, VD1_1, VD1_2, VD1_3, VD1_4, VD1_5]) ** 2 )
  )
  (mod (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
         0x6730d2a0f6b0f624, 0x64774b84f38512bf,
         0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a])),
  (limbs 64 [0, 0, 0, 0, 0, 0, RY1_0, RY1_1, RY1_2, RY1_3, RY1_4, RY1_5])
  = (
     2 * ((limbs 64 [VB0_0, VB0_1, VB0_2, VB0_3, VB0_4, VB0_5]) + (limbs 64 [VG0_0, VG0_1, VG0_2, VG0_3, VG0_4, VG0_5]))
     * ((limbs 64 [VB1_0, VB1_1, VB1_2, VB1_3, VB1_4, VB1_5]) + (limbs 64 [VG1_0, VG1_1, VG1_2, VG1_3, VG1_4, VG1_5]))
     - 12 * 2 * ((limbs 64 [VD0_0, VD0_1, VD0_2, VD0_3, VD0_4, VD0_5])
          * (limbs 64 [VD1_0, VD1_1, VD1_2, VD1_3, VD1_4, VD1_5])))
  (mod (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
         0x6730d2a0f6b0f624, 0x64774b84f38512bf,
         0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a]))
 ];


mov VB0_0 T10_0;
mov VB0_1 T10_1;
mov VB0_2 T10_2;
mov VB0_3 T10_3;
mov VB0_4 T10_4;
mov VB0_5 T10_5;
mov VB1_0 T11_0;
mov VB1_1 T11_1;
mov VB1_2 T11_2;
mov VB1_3 T11_3;
mov VB1_4 T11_4;
mov VB1_5 T11_5;

mov VF0_0 T50_0;
mov VF0_1 T50_1;
mov VF0_2 T50_2;
mov VF0_3 T50_3;
mov VF0_4 T50_4;
mov VF0_5 T50_5;
mov VF1_0 T51_0;
mov VF1_1 T51_1;
mov VF1_2 T51_2;
mov VF1_3 T51_3;
mov VF1_4 T51_4;
mov VF1_5 T51_5;

/* NOTE: z3 = 4B * F. */
/* NOTE: fp2_dbl(r->z, t1); */
(* #callq  0x42ce10 <fp2_dbl_integ>                #! PC = 0x4293292 *)
#callq  0x42ce10 <fp2_dbl_integ>                #! 0x4293292 = 0x4293292;
inline fp2_dbl(T10_0, T10_1, T10_2, T10_3, T10_4, T10_5, T11_0, T11_1, T11_2, T11_3, T11_4, T11_5,
             RZ0_0, RZ0_1, RZ0_2, RZ0_3, RZ0_4, RZ0_5, RZ1_0, RZ1_1, RZ1_2, RZ1_3, RZ1_4, RZ1_5);
(* #retq                                           #! PC = 0x4309234 *)
#retq                                           #! 0x4309234 = 0x4309234;
/* NOTE: fp2_dbl(r->z, r->z); */
(* #callq  0x42ce10 <fp2_dbl_integ>                #! PC = 0x4293303 *)
#callq  0x42ce10 <fp2_dbl_integ>                #! 0x4293303 = 0x4293303;
inline fp2_dbl(RZ0_0, RZ0_1, RZ0_2, RZ0_3, RZ0_4, RZ0_5, RZ1_0, RZ1_1, RZ1_2, RZ1_3, RZ1_4, RZ1_5,
             RZ0_0, RZ0_1, RZ0_2, RZ0_3, RZ0_4, RZ0_5, RZ1_0, RZ1_1, RZ1_2, RZ1_3, RZ1_4, RZ1_5);
(* #retq                                           #! PC = 0x4309234 *)
#retq                                           #! 0x4309234 = 0x4309234;
/* NOTE: fp2_mul(r->z, r->z, t5); */
(* #callq  0x42c1c0 <fp2_mul_integ>                #! PC = 0x4293322 *)
#callq  0x42c1c0 <fp2_mul_integ>                #! 0x4293322 = 0x4293322;
inline fp2_mul(RZ0_0, RZ0_1, RZ0_2, RZ0_3, RZ0_4, RZ0_5, RZ1_0, RZ1_1, RZ1_2, RZ1_3, RZ1_4, RZ1_5,
             T50_0, T50_1, T50_2, T50_3, T50_4, T50_5, T51_0, T51_1, T51_2, T51_3, T51_4, T51_5,
             RZ0_0, RZ0_1, RZ0_2, RZ0_3, RZ0_4, RZ0_5, RZ1_0, RZ1_1, RZ1_2, RZ1_3, RZ1_4, RZ1_5);
(* #retq                                           #! PC = 0x4313227 *)
#retq                                           #! 0x4313227 = 0x4313227;


/* ecut 10 */
ecut
  and [
  (limbs 64 [0, 0, 0, 0, 0, 0, RZ0_0, RZ0_1, RZ0_2, RZ0_3, RZ0_4, RZ0_5])
  = (4 * ((limbs 64 [VB0_0, VB0_1, VB0_2, VB0_3, VB0_4, VB0_5]) *
          (limbs 64 [VF0_0, VF0_1, VF0_2, VF0_3, VF0_4, VF0_5]) -
          (limbs 64 [VB1_0, VB1_1, VB1_2, VB1_3, VB1_4, VB1_5]) *
          (limbs 64 [VF1_0, VF1_1, VF1_2, VF1_3, VF1_4, VF1_5])))
  (mod (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
         0x6730d2a0f6b0f624, 0x64774b84f38512bf,
         0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a])),
  (limbs 64 [0, 0, 0, 0, 0, 0, RZ1_0, RZ1_1, RZ1_2, RZ1_3, RZ1_4, RZ1_5])
  = (4 * ((limbs 64 [VB1_0, VB1_1, VB1_2, VB1_3, VB1_4, VB1_5]) *
          (limbs 64 [VF0_0, VF0_1, VF0_2, VF0_3, VF0_4, VF0_5]) +
          (limbs 64 [VB0_0, VB0_1, VB0_2, VB0_3, VB0_4, VB0_5]) *
          (limbs 64 [VF1_0, VF1_1, VF1_2, VF1_3, VF1_4, VF1_5])))
  (mod (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
         0x6730d2a0f6b0f624, 0x64774b84f38512bf,
         0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a]))
 ];


(* movslq 0x18(%rsp),%r11                          #! EA = L0x7fffffffd138; Value = 0x1e517d0900000000; PC = 0x4293327 *)
/* movslq %%L0x7fffffffd138,%%r11                          #! L0x7fffffffd138 = L0x7fffffffd138; 0x1e517d0900000000 = 0x1e517d0900000000; 0x4293327 = 0x4293327; */
(* lea    0x90(%rsp),%rdx                          #! PC = 0x4293332 *)
/* lea    %%EA,%%rdx                          #! 0x4293332 = 0x4293332; */
(* lea    0x150(%rsp),%rsi                         #! PC = 0x4293340 *)
/* lea    %%EA,%%rsi                         #! 0x4293340 = 0x4293340; */
(* lea    (%r11,%r11,1),%rdi                       #! PC = 0x4293348 *)
/* lea    (%%r11,%%r11,1),%%rdi                       #! 0x4293348 = 0x4293348; */
(* add    %r11,%rdi                                #! PC = 0x4293352 *)
/* adds carry rdi rdi r11; */
(* shl    $0x5,%rdi                                #! PC = 0x4293355 *)
/* shl    $0x5,%%rdi                                #! 0x4293355 = 0x4293355; */
(* add    %rbx,%rdi                                #! PC = 0x4293359 *)
/* adds carry rdi rdi rbx; */
/* l00 = D - B. */
/* NOTE: fp2_sub(l[one][one], t3, t1); */
/* mov L000_0 L0x7fffffffdb70; */
/* mov L000_1 L0x7fffffffdb78; */
/* mov L000_2 L0x7fffffffdb80; */
/* mov L000_3 L0x7fffffffdb88; */
/* mov L000_4 L0x7fffffffdb90; */
/* mov L000_5 L0x7fffffffdb98; */

/* mov L001_0 L0x7fffffffdba0; */
/* mov L001_1 L0x7fffffffdba8; */
/* mov L001_2 L0x7fffffffdbb0; */
/* mov L001_3 L0x7fffffffdbb8; */
/* mov L001_4 L0x7fffffffdbc0; */
/* mov L001_5 L0x7fffffffdbc8; */

mov VB0_0 T10_0;
mov VB0_1 T10_1;
mov VB0_2 T10_2;
mov VB0_3 T10_3;
mov VB0_4 T10_4;
mov VB0_5 T10_5;
mov VB1_0 T11_0;
mov VB1_1 T11_1;
mov VB1_2 T11_2;
mov VB1_3 T11_3;
mov VB1_4 T11_4;
mov VB1_5 T11_5;

mov VD0_0 T30_0;
mov VD0_1 T30_1;
mov VD0_2 T30_2;
mov VD0_3 T30_3;
mov VD0_4 T30_4;
mov VD0_5 T30_5;
mov VD1_0 T31_0;
mov VD1_1 T31_1;
mov VD1_2 T31_2;
mov VD1_3 T31_3;
mov VD1_4 T31_4;
mov VD1_5 T31_5;

/* l00 = D - B. */
(* #callq  0x42ce00 <fp2_sub_integ>                #! PC = 0x4293362 *)
#callq  0x42ce00 <fp2_sub_integ>                #! 0x4293362 = 0x4293362;
inline fp2_sub(T30_0, T30_1, T30_2, T30_3, T30_4, T30_5, T31_0, T31_1, T31_2, T31_3, T31_4, T31_5,
             T10_0, T10_1, T10_2, T10_3, T10_4, T10_5, T11_0, T11_1, T11_2, T11_3, T11_4, T11_5,
             L000_0, L000_1, L000_2, L000_3, L000_4, L000_5, L001_0, L001_1, L001_2, L001_3, L001_4, L001_5);
(* #retq                                           #! PC = 0x4308496 *)
#retq                                           #! 0x4308496 = 0x4308496;

/* ecut 11 */
ecut
  and [
  (limbs 64 [L000_0, L000_1, L000_2, L000_3, L000_4, L000_5])
  = ((limbs 64 [VD0_0, VD0_1, VD0_2, VD0_3, VD0_4, VD0_5]) -
    (limbs 64 [VB0_0, VB0_1, VB0_2, VB0_3, VB0_4, VB0_5]))
  (mod (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
         0x6730d2a0f6b0f624, 0x64774b84f38512bf,
         0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a])),
  (limbs 64 [L001_0, L001_1, L001_2, L001_3, L001_4, L001_5])
  = ((limbs 64 [VD1_0, VD1_1, VD1_2, VD1_3, VD1_4, VD1_5]) -
    (limbs 64 [VB1_0, VB1_1, VB1_2, VB1_3, VB1_4, VB1_5]))
  (mod (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
         0x6730d2a0f6b0f624, 0x64774b84f38512bf,
         0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a]))
 ];



/* l10 = (3 * xp) * A. */
/* NOTE: fp_mul(l[one][zero][0], p->x, t0[0]); */
/* mov L100_0 L0x7fffffffdbd0; */
/* mov L100_1 L0x7fffffffdbd8; */
/* mov L100_2 L0x7fffffffdbe0; */
/* mov L100_3 L0x7fffffffdbe8; */
/* mov L100_4 L0x7fffffffdbf0; */
/* mov L100_5 L0x7fffffffdbf8; */

/* mov L101_0 L0x7fffffffdc00; */
/* mov L101_1 L0x7fffffffdc08; */
/* mov L101_2 L0x7fffffffdc10; */
/* mov L101_3 L0x7fffffffdc18; */
/* mov L101_4 L0x7fffffffdc20; */
/* mov L101_5 L0x7fffffffdc28; */
mov VA0_0 T00_0;
mov VA0_1 T00_1;
mov VA0_2 T00_2;
mov VA0_3 T00_3;
mov VA0_4 T00_4;
mov VA0_5 T00_5;
mov VA1_0 T01_0;
mov VA1_1 T01_1;
mov VA1_2 T01_2;
mov VA1_3 T01_3;
mov VA1_4 T01_4;
mov VA1_5 T01_5;

(* #callq  0x42ba80 <fp_mul_integ>                 #! PC = 0x4293399 *)
#callq  0x42ba80 <fp_mul_integ>                 #! 0x4293399 = 0x4293399;
inline fp_mul (PX0_0, PX0_1, PX0_2, PX0_3, PX0_4, PX0_5,
             T00_0, T00_1, T00_2, T00_3, T00_4, T00_5,
             L100_0, L100_1, L100_2, L100_3, L100_4, L100_5);
/* NOTE: fp_mul(l[one][zero][1], p->x, t0[1]); */
(* #callq  0x42ba80 <fp_mul_integ>                 #! PC = 0x4293420 *)
#callq  0x42ba80 <fp_mul_integ>                 #! 0x4293420 = 0x4293420;
inline fp_mul (PX0_0, PX0_1, PX0_2, PX0_3, PX0_4, PX0_5,
             T01_0, T01_1, T01_2, T01_3, T01_4, T01_5,
             L101_0, L101_1, L101_2, L101_3, L101_4, L101_5);
(* #retq                                           #! PC = 0x4312212 *)
#retq                                           #! 0x4312212 = 0x4312212;

/* ecut 12 */
ecut
  and [
  (limbs 64 [0, 0, 0, 0, 0, 0, L100_0, L100_1, L100_2, L100_3, L100_4, L100_5])
   = ((limbs 64 [PX0_0, PX0_1, PX0_2, PX0_3, PX0_4, PX0_5]) *
      (limbs 64 [VA0_0, VA0_1, VA0_2, VA0_3, VA0_4, VA0_5]))
  (mod (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
         0x6730d2a0f6b0f624, 0x64774b84f38512bf,
         0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a])),
  (limbs 64 [0, 0, 0, 0, 0, 0, L101_0, L101_1, L101_2, L101_3, L101_4, L101_5])
   = ((limbs 64 [PX0_0, PX0_1, PX0_2, PX0_3, PX0_4, PX0_5]) *
      (limbs 64 [VA1_0, VA1_1, VA1_2, VA1_3, VA1_4, VA1_5]))
  (mod (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
         0x6730d2a0f6b0f624, 0x64774b84f38512bf,
         0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a]))
 ];
/* l01 = F * (-yp). */
/* mov L010_0 L0x7fffffffdcf0; */
/* mov L010_1 L0x7fffffffdcf8; */
/* mov L010_2 L0x7fffffffdd00; */
/* mov L010_3 L0x7fffffffdd08; */
/* mov L010_4 L0x7fffffffdd10; */
/* mov L010_5 L0x7fffffffdd18; */

/* mov L011_0 L0x7fffffffdd20; */
/* mov L011_1 L0x7fffffffdd28; */
/* mov L011_2 L0x7fffffffdd30; */
/* mov L011_3 L0x7fffffffdd38; */
/* mov L011_4 L0x7fffffffdd40; */
/* mov L011_5 L0x7fffffffdd48; */

mov VF0_0 T50_0;
mov VF0_1 T50_1;
mov VF0_2 T50_2;
mov VF0_3 T50_3;
mov VF0_4 T50_4;
mov VF0_5 T50_5;
mov VF1_0 T51_0;
mov VF1_1 T51_1;
mov VF1_2 T51_2;
mov VF1_3 T51_3;
mov VF1_4 T51_4;
mov VF1_5 T51_5;
/* NOTE: fp_mul(l[zero][zero][0], t5[0], p->y); */
(* add    0x10(%rsp),%r14                          #! EA = L0x7fffffffd130; Value = 0x0000000000000120; PC = 0x4293425 *)
(* #callq  0x42ba80 <fp_mul_integ>                 #! PC = 0x4293445 *)
#callq  0x42ba80 <fp_mul_integ>                 #! 0x4293445 = 0x4293445;
inline fp_mul (T50_0, T50_1, T50_2, T50_3, T50_4, T50_5,
             PY0_0, PY0_1, PY0_2, PY0_3, PY0_4, PY0_5,
             L010_0, L010_1, L010_2, L010_3, L010_4, L010_5);
(* #retq                                           #! PC = 0x4312212 *)
#retq                                           #! 0x4312212 = 0x4312212;
/* NOTE: fp_mul(l[zero][zero][1], t5[1], p->y); */
(* #callq  0x42ba80 <fp_mul_integ>                 #! PC = 0x4293465 *)
#callq  0x42ba80 <fp_mul_integ>                 #! 0x4293465 = 0x4293465;
inline fp_mul (T51_0, T51_1, T51_2, T51_3, T51_4, T51_5,
             PY0_0, PY0_1, PY0_2, PY0_3, PY0_4, PY0_5,
             L011_0, L011_1, L011_2, L011_3, L011_4, L011_5);
(* #retq                                           #! PC = 0x4293497 *)
#retq                                           #! 0x4293497 = 0x4293497;

/* ecut 13 */
ecut
  and [
  (limbs 64 [0, 0 ,0 ,0 ,0 ,0, L010_0, L010_1, L010_2, L010_3, L010_4, L010_5])
   = ((limbs 64 [VF0_0, VF0_1, VF0_2, VF0_3, VF0_4, VF0_5]) *
      (limbs 64 [PY0_0, PY0_1, PY0_2, PY0_3, PY0_4, PY0_5]))
  (mod (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
         0x6730d2a0f6b0f624, 0x64774b84f38512bf,
         0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a])),
  (limbs 64 [0, 0, 0, 0, 0, 0, L011_0, L011_1, L011_2, L011_3, L011_4, L011_5])
   = ((limbs 64 [VF1_0, VF1_1, VF1_2, VF1_3, VF1_4, VF1_5]) *
      (limbs 64 [PY0_0, PY0_1, PY0_2, PY0_3, PY0_4, PY0_5]))
  (mod (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
         0x6730d2a0f6b0f624, 0x64774b84f38512bf,
         0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a]))
 ];




{
  true
  &&
  true
}
