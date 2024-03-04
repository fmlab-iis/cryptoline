(* quine: -btor -v -jobs 20 -isafety -qfbv_args '-SE minisat' fp_mulm_low.cl
Parsing Cryptoline file:                [OK]            0.004202 seconds
Checking well-formedness:               [OK]            0.001761 seconds
Transforming to SSA form:               [OK]            0.000290 seconds
Rewriting assignments:                  [OK]            0.001923 seconds
Verifying program safety:               [OK]            11.647881 seconds
Verifying range assertions:             [OK]            11.756405 seconds
Verifying range specification:          [OK]            10.974483 seconds
Rewriting value-preserved casting:      [OK]            0.000021 seconds
Verifying algebraic assertions:         [OK]            0.227597 seconds
Verifying algebraic specification:      [OK]            0.198699 seconds
Verification result:                    [OK]            34.813882 seconds
*)                                                                                                                                                    proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3) =
{
  true
&&
  and [
    limbs 64 [a0, a1, a2, a3] <
    limbs 64 [0xa700000000000013@64, 0x6121000000000013@64,
              0xba344d8000000008@64, 0x2523648240000001@64],
    limbs 64 [b0, b1, b2, b3] <
    limbs 64 [0xa700000000000013@64, 0x6121000000000013@64,
              0xba344d8000000008@64, 0x2523648240000001@64]
  ]
}

mov L0x7fffffffd9c0 a0;
mov L0x7fffffffd9c8 a1;
mov L0x7fffffffd9d0 a2;
mov L0x7fffffffd9d8 a3;

mov L0x7fffffffd9e0 b0;
mov L0x7fffffffd9e8 b1;
mov L0x7fffffffd9f0 b2;
mov L0x7fffffffd9f8 b3;

(* #push   %r12                                     #! PC = 0x93824992234877 *)
#push   %%r12                                     #! 0x93824992234877 = 0x93824992234877;
(* #push   %r13                                     #! PC = 0x93824992234879 *)
#push   %%r13                                     #! 0x93824992234879 = 0x93824992234879;
(* #push   %r14                                     #! PC = 0x93824992234881 *)
#push   %%r14                                     #! 0x93824992234881 = 0x93824992234881;
(* #sub    $0x40,%rsp                               #! PC = 0x93824992234883 *)
#sub    $0x40,%rsp                               #! 0x93824992234883 = 0x93824992234883;
(* mov    %rdx,%rcx                                #! PC = 0x93824992234887 *)
#mov rcx rdx;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd9c0; Value = 0x0000004000000000; PC = 0x93824992234890 *)
mov rax L0x7fffffffd9c0;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd9e0; PC = 0x93824992234893 *)
mull rdx rax rax L0x7fffffffd9e0;
(* mov    %rax,(%rsp)                              #! EA = L0x7fffffffd960; PC = 0x93824992234896 *)
mov L0x7fffffffd960 rax;
(* mov    %rdx,%r8                                 #! PC = 0x93824992234900 *)
mov r8 rdx;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd9c0; Value = 0x0000004000000000; PC = 0x93824992234903 *)
mov rax L0x7fffffffd9c0;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd9e8; PC = 0x93824992234906 *)
mull rdx rax rax L0x7fffffffd9e8;
(* add    %rax,%r8                                 #! PC = 0x93824992234910 *)
adds carry r8 r8 rax;
(* mov    %rdx,%r9                                 #! PC = 0x93824992234913 *)
mov r9 rdx;
(* adc    $0x0,%r9                                 #! PC = 0x93824992234916 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x93824992234920 *)
mov r10 0@uint64;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd9c8; Value = 0x0000040000000200; PC = 0x93824992234923 *)
mov rax L0x7fffffffd9c8;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd9e0; PC = 0x93824992234927 *)
mull rdx rax rax L0x7fffffffd9e0;
(* add    %rax,%r8                                 #! PC = 0x93824992234930 *)
adds carry r8 r8 rax;
(* mov    %r8,0x8(%rsp)                            #! EA = L0x7fffffffd968; PC = 0x93824992234933 *)
mov L0x7fffffffd968 r8;
(* adc    %rdx,%r9                                 #! PC = 0x93824992234938 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992234941 *)
adc r10 r10 0x0@uint64 carry;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd9c0; Value = 0x0000004000000000; PC = 0x93824992234945 *)
mov rax L0x7fffffffd9c0;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd9f0; PC = 0x93824992234948 *)
mull rdx rax rax L0x7fffffffd9f0;
(* add    %rax,%r9                                 #! PC = 0x93824992234952 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x93824992234955 *)
adc r10 r10 rdx carry;
(* xor    %r8,%r8                                  #! PC = 0x93824992234958 *)
mov r8 0@uint64;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd9c8; Value = 0x0000040000000200; PC = 0x93824992234961 *)
mov rax L0x7fffffffd9c8;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd9e8; PC = 0x93824992234965 *)
mull rdx rax rax L0x7fffffffd9e8;
(* add    %rax,%r9                                 #! PC = 0x93824992234969 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x93824992234972 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992234975 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd9d0; Value = 0x00000000ffffffff; PC = 0x93824992234979 *)
mov rax L0x7fffffffd9d0;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd9e0; PC = 0x93824992234983 *)
mull rdx rax rax L0x7fffffffd9e0;
(* add    %rax,%r9                                 #! PC = 0x93824992234986 *)
adds carry r9 r9 rax;
(* mov    %r9,0x10(%rsp)                           #! EA = L0x7fffffffd970; PC = 0x93824992234989 *)
mov L0x7fffffffd970 r9;
(* adc    %rdx,%r10                                #! PC = 0x93824992234994 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992234997 *)
adc r8 r8 0x0@uint64 carry;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd9c0; Value = 0x0000004000000000; PC = 0x93824992235001 *)
mov rax L0x7fffffffd9c0;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd9f8; PC = 0x93824992235004 *)
mull rdx rax rax L0x7fffffffd9f8;
(* add    %rax,%r10                                #! PC = 0x93824992235008 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x93824992235011 *)
adc r8 r8 rdx carry;
(* xor    %r9,%r9                                  #! PC = 0x93824992235014 *)
mov r9 0@uint64;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd9c8; Value = 0x0000040000000200; PC = 0x93824992235017 *)
mov rax L0x7fffffffd9c8;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd9f0; PC = 0x93824992235021 *)
mull rdx rax rax L0x7fffffffd9f0;
(* add    %rax,%r10                                #! PC = 0x93824992235025 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x93824992235028 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992235031 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd9d0; Value = 0x00000000ffffffff; PC = 0x93824992235035 *)
mov rax L0x7fffffffd9d0;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd9e8; PC = 0x93824992235039 *)
mull rdx rax rax L0x7fffffffd9e8;
(* add    %rax,%r10                                #! PC = 0x93824992235043 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x93824992235046 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992235049 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd9d8; Value = 0x0000000000000000; PC = 0x93824992235053 *)
mov rax L0x7fffffffd9d8;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd9e0; PC = 0x93824992235057 *)
mull rdx rax rax L0x7fffffffd9e0;
(* add    %rax,%r10                                #! PC = 0x93824992235060 *)
adds carry r10 r10 rax;
(* mov    %r10,0x18(%rsp)                          #! EA = L0x7fffffffd978; PC = 0x93824992235063 *)
mov L0x7fffffffd978 r10;
(* adc    %rdx,%r8                                 #! PC = 0x93824992235068 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992235071 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd9c8; Value = 0x0000040000000200; PC = 0x93824992235075 *)
mov rax L0x7fffffffd9c8;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd9f8; PC = 0x93824992235079 *)
mull rdx rax rax L0x7fffffffd9f8;
(* add    %rax,%r8                                 #! PC = 0x93824992235083 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x93824992235086 *)
adc r9 r9 rdx carry;
(* xor    %r10,%r10                                #! PC = 0x93824992235089 *)
mov r10 0@uint64;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd9d0; Value = 0x00000000ffffffff; PC = 0x93824992235092 *)
mov rax L0x7fffffffd9d0;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd9f0; PC = 0x93824992235096 *)
mull rdx rax rax L0x7fffffffd9f0;
(* add    %rax,%r8                                 #! PC = 0x93824992235100 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x93824992235103 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992235106 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd9d8; Value = 0x0000000000000000; PC = 0x93824992235110 *)
mov rax L0x7fffffffd9d8;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd9e8; PC = 0x93824992235114 *)
mull rdx rax rax L0x7fffffffd9e8;
(* add    %rax,%r8                                 #! PC = 0x93824992235118 *)
adds carry r8 r8 rax;
(* mov    %r8,0x20(%rsp)                           #! EA = L0x7fffffffd980; PC = 0x93824992235121 *)
mov L0x7fffffffd980 r8;
(* adc    %rdx,%r9                                 #! PC = 0x93824992235126 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992235129 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd9d0; Value = 0x00000000ffffffff; PC = 0x93824992235133 *)
mov rax L0x7fffffffd9d0;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd9f8; PC = 0x93824992235137 *)
mull rdx rax rax L0x7fffffffd9f8;
(* add    %rax,%r9                                 #! PC = 0x93824992235141 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x93824992235144 *)
adc r10 r10 rdx carry;
(* xor    %r8,%r8                                  #! PC = 0x93824992235147 *)
mov r8 0@uint64;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd9d8; Value = 0x0000000000000000; PC = 0x93824992235150 *)
mov rax L0x7fffffffd9d8;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd9f0; PC = 0x93824992235154 *)
mull rdx rax rax L0x7fffffffd9f0;
(* add    %rax,%r9                                 #! PC = 0x93824992235158 *)
adds carry r9 r9 rax;
(* mov    %r9,0x28(%rsp)                           #! EA = L0x7fffffffd988; PC = 0x93824992235161 *)
mov L0x7fffffffd988 r9;
(* adc    %rdx,%r10                                #! PC = 0x93824992235166 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992235169 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd9d8; Value = 0x0000000000000000; PC = 0x93824992235173 *)
mov rax L0x7fffffffd9d8;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd9f8; PC = 0x93824992235177 *)
mull rdx rax rax L0x7fffffffd9f8;
(* add    %rax,%r10                                #! PC = 0x93824992235181 *)
adds carry r10 r10 rax;
(* mov    %r10,0x30(%rsp)                          #! EA = L0x7fffffffd990; PC = 0x93824992235184 *)
mov L0x7fffffffd990 r10;
(* adc    %rdx,%r8                                 #! PC = 0x93824992235189 *)
adc r8 r8 rdx carry;
(* mov    %r8,0x38(%rsp)                           #! EA = L0x7fffffffd998; PC = 0x93824992235192 *)
mov L0x7fffffffd998 r8;

(* NOTE: summary of multiplication *)
assert limbs 64 [L0x7fffffffd960, L0x7fffffffd968,
                 L0x7fffffffd970, L0x7fffffffd978,
                 L0x7fffffffd980, L0x7fffffffd988,
                 L0x7fffffffd990, L0x7fffffffd998] =
       limbs 64 [a0, a1, a2, a3] * limbs 64 [b0, b1, b2, b3]
    && true;

(* xor    %r10,%r10                                #! PC = 0x93824992235197 *)
mov r10 0@uint64;
(* movabs $0x8435e50d79435e5,%rcx                  #! PC = 0x93824992235200 *)
mov rcx 0x8435e50d79435e5@uint64;
(* mov    (%rsp),%r8                               #! EA = L0x7fffffffd960; Value = 0xffe89a0000000000; PC = 0x93824992235210 *)
mov r8 L0x7fffffffd960;
(* mov    %r8,%rax                                 #! PC = 0x93824992235214 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x93824992235217 *)
mull rdx rax rax rcx;
(* mov    %rax,%r14                                #! PC = 0x93824992235220 *)
mov r14 rax;
(* movabs $0xa700000000000013,%r11                 #! PC = 0x93824992235223 *)
mov r11 0xa700000000000013@uint64;
(* mul    %r11                                     #! PC = 0x93824992235233 *)
mull rdx rax rax r11;
(* add    %rax,%r8                                 #! PC = 0x93824992235236 *)
adds carry r8 r8 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r8 0 (2**64) && true;
assume r8 = 0 && true;
(* movabs $0x6121000000000013,%r12                 #! PC = 0x93824992235239 *)
mov r12 0x6121000000000013@uint64;
(* adc    0x8(%rsp),%rdx                           #! EA = L0x7fffffffd968; Value = 0xff8363efff64cffd; PC = 0x93824992235249 *)
adcs carry rdx rdx L0x7fffffffd968 carry;
(* mov    %rdx,%r9                                 #! PC = 0x93824992235254 *)
mov r9 rdx;
(* adc    $0x0,%r10                                #! PC = 0x93824992235257 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r14,%rax                                #! PC = 0x93824992235261 *)
mov rax r14;
(* mul    %r12                                     #! PC = 0x93824992235264 *)
mull rdx rax rax r12;
(* add    %rax,%r9                                 #! PC = 0x93824992235267 *)
adds carry r9 r9 rax;
(* mov    %r9,%rax                                 #! PC = 0x93824992235270 *)
mov rax r9;
(* adc    %rdx,%r10                                #! PC = 0x93824992235273 *)
adc r10 r10 rdx carry;
(* mul    %rcx                                     #! PC = 0x93824992235276 *)
mull rdx rax rax rcx;
(* mov    %rax,0x8(%rsp)                           #! EA = L0x7fffffffd968; PC = 0x93824992235279 *)
mov L0x7fffffffd968 rax;
(* xor    %r8,%r8                                  #! PC = 0x93824992235284 *)
mov r8 0@uint64;
(* mul    %r11                                     #! PC = 0x93824992235287 *)
mull rdx rax rax r11;
(* add    %rax,%r9                                 #! PC = 0x93824992235290 *)
adds carry r9 r9 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r9 0 (2**64) && true;
assume r9 = 0 && true;
(* movabs $0xba344d8000000008,%r13                 #! PC = 0x93824992235293 *)
mov r13 0xba344d8000000008@uint64;
(* adc    %rdx,%r10                                #! PC = 0x93824992235303 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992235306 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r14,%rax                                #! PC = 0x93824992235310 *)
mov rax r14;
(* mul    %r13                                     #! PC = 0x93824992235313 *)
mull rdx rax rax r13;
(* add    0x10(%rsp),%r10                          #! EA = L0x7fffffffd970; Value = 0xf89b625809ee7d75; PC = 0x93824992235316 *)
adds carry r10 r10 L0x7fffffffd970;
(* adc    $0x0,%r8                                 #! PC = 0x93824992235321 *)
adc r8 r8 0x0@uint64 carry;
(* add    %rax,%r10                                #! PC = 0x93824992235325 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x93824992235328 *)
adc r8 r8 rdx carry;
(* xor    %r9,%r9                                  #! PC = 0x93824992235331 *)
mov r9 0@uint64;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd968; Value = 0x2784388d943e1000; PC = 0x93824992235334 *)
mov rax L0x7fffffffd968;
(* mul    %r12                                     #! PC = 0x93824992235339 *)
mull rdx rax rax r12;
(* add    %rax,%r10                                #! PC = 0x93824992235342 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x93824992235345 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992235348 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x93824992235352 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x93824992235355 *)
mull rdx rax rax rcx;
(* mov    %rax,0x10(%rsp)                          #! EA = L0x7fffffffd970; PC = 0x93824992235358 *)
mov L0x7fffffffd970 rax;
(* mul    %r11                                     #! PC = 0x93824992235363 *)
mull rdx rax rax r11;
(* add    %rax,%r10                                #! PC = 0x93824992235366 *)
adds carry r10 r10 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r10 0 (2**64) && true;
assume r10 = 0 && true;
(* mov    %r14,%rax                                #! PC = 0x93824992235369 *)
mov rax r14;
(* adc    %rdx,%r8                                 #! PC = 0x93824992235372 *)
adcs carry r8 r8 rdx carry;
(* movabs $0x2523648240000001,%r14                 #! PC = 0x93824992235375 *)
mov r14 0x2523648240000001@uint64;
(* adc    $0x0,%r9                                 #! PC = 0x93824992235385 *)
adc r9 r9 0x0@uint64 carry;
(* mul    %r14                                     #! PC = 0x93824992235389 *)
mull rdx rax rax r14;
(* add    0x18(%rsp),%r8                           #! EA = L0x7fffffffd978; Value = 0xf7ff67100a0098cf; PC = 0x93824992235392 *)
adds carry r8 r8 L0x7fffffffd978;
(* adc    $0x0,%r9                                 #! PC = 0x93824992235397 *)
adc r9 r9 0x0@uint64 carry;
(* add    %rax,%r8                                 #! PC = 0x93824992235401 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x93824992235404 *)
adc r9 r9 rdx carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd968; Value = 0x2784388d943e1000; PC = 0x93824992235407 *)
mov rax L0x7fffffffd968;
(* mul    %r13                                     #! PC = 0x93824992235412 *)
mull rdx rax rax r13;
(* add    %rax,%r8                                 #! PC = 0x93824992235415 *)
adds carry r8 r8 rax;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd970; Value = 0xa3ff6f62b7252637; PC = 0x93824992235418 *)
mov rax L0x7fffffffd970;
(* adc    %rdx,%r9                                 #! PC = 0x93824992235423 *)
adc r9 r9 rdx carry;
(* xor    %r10,%r10                                #! PC = 0x93824992235426 *)
mov r10 0@uint64;
(* mul    %r12                                     #! PC = 0x93824992235429 *)
mull rdx rax rax r12;
(* add    %rax,%r8                                 #! PC = 0x93824992235432 *)
adds carry r8 r8 rax;
(* mov    %r8,%rax                                 #! PC = 0x93824992235435 *)
mov rax r8;
(* adc    %rdx,%r9                                 #! PC = 0x93824992235438 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992235441 *)
adc r10 r10 0x0@uint64 carry;
(* mul    %rcx                                     #! PC = 0x93824992235445 *)
mull rdx rax rax rcx;
(* mov    %rax,0x18(%rsp)                          #! EA = L0x7fffffffd978; PC = 0x93824992235448 *)
mov L0x7fffffffd978 rax;
(* mul    %r11                                     #! PC = 0x93824992235453 *)
mull rdx rax rax r11;
(* add    %rax,%r8                                 #! PC = 0x93824992235456 *)
adds carry r8 r8 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r8 0 (2**64) && true;
assume r8 = 0 && true;
(* adc    %rdx,%r9                                 #! PC = 0x93824992235459 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992235462 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd968; Value = 0x2784388d943e1000; PC = 0x93824992235466 *)
mov rax L0x7fffffffd968;
(* mul    %r14                                     #! PC = 0x93824992235471 *)
mull rdx rax rax r14;
(* add    0x20(%rsp),%r9                           #! EA = L0x7fffffffd980; Value = 0x0000000000007fff; PC = 0x93824992235474 *)
adds carry r9 r9 L0x7fffffffd980;
(* adc    $0x0,%r10                                #! PC = 0x93824992235479 *)
adc r10 r10 0x0@uint64 carry;
(* add    %rax,%r9                                 #! PC = 0x93824992235483 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x93824992235486 *)
adc r10 r10 rdx carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd970; Value = 0xa3ff6f62b7252637; PC = 0x93824992235489 *)
mov rax L0x7fffffffd970;
(* mul    %r13                                     #! PC = 0x93824992235494 *)
mull rdx rax rax r13;
(* add    %rax,%r9                                 #! PC = 0x93824992235497 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x93824992235500 *)
adc r10 r10 rdx carry;
(* xor    %r8,%r8                                  #! PC = 0x93824992235503 *)
mov r8 0@uint64;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd978; Value = 0xbf2e70c2610fda5f; PC = 0x93824992235506 *)
mov rax L0x7fffffffd978;
(* mul    %r12                                     #! PC = 0x93824992235511 *)
mull rdx rax rax r12;
(* add    %rax,%r9                                 #! PC = 0x93824992235514 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x93824992235517 *)
adcs carry r10 r10 rdx carry;
(* mov    %r9,%r12                                 #! PC = 0x93824992235520 *)
mov r12 r9;
(* adc    $0x0,%r8                                 #! PC = 0x93824992235523 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r11,%r11                                #! PC = 0x93824992235527 *)
mov r11 0@uint64;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd970; Value = 0xa3ff6f62b7252637; PC = 0x93824992235530 *)
mov rax L0x7fffffffd970;
(* mul    %r14                                     #! PC = 0x93824992235535 *)
mull rdx rax rax r14;
(* add    %rax,%r10                                #! PC = 0x93824992235538 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x93824992235541 *)
adc r8 r8 rdx carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd978; Value = 0xbf2e70c2610fda5f; PC = 0x93824992235544 *)
mov rax L0x7fffffffd978;
(* mul    %r13                                     #! PC = 0x93824992235549 *)
mull rdx rax rax r13;
(* add    %rax,%r10                                #! PC = 0x93824992235552 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x93824992235555 *)
adc r8 r8 rdx carry;
(* add    0x28(%rsp),%r10                          #! EA = L0x7fffffffd988; Value = 0x0000000000000000; PC = 0x93824992235558 *)
adds carry r10 r10 L0x7fffffffd988;
(* mov    %r10,%r13                                #! PC = 0x93824992235563 *)
mov r13 r10;
(* adc    $0x0,%r8                                 #! PC = 0x93824992235566 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd978; Value = 0xbf2e70c2610fda5f; PC = 0x93824992235570 *)
mov rax L0x7fffffffd978;
(* mul    %r14                                     #! PC = 0x93824992235575 *)
mull rdx rax rax r14;
(* add    %rax,%r8                                 #! PC = 0x93824992235578 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r11                                #! PC = 0x93824992235581 *)
adc r11 r11 rdx carry;
(* add    0x30(%rsp),%r8                           #! EA = L0x7fffffffd990; Value = 0x0000000000000000; PC = 0x93824992235584 *)
adds carry r8 r8 L0x7fffffffd990;
(* mov    %r8,%r14                                 #! PC = 0x93824992235589 *)
mov r14 r8;
(* adc    $0x0,%r11                                #! PC = 0x93824992235592 *)
adc r11 r11 0x0@uint64 carry;
(* add    0x38(%rsp),%r11                          #! EA = L0x7fffffffd998; Value = 0x0000000000000000; PC = 0x93824992235596 *)
adds carry r11 r11 L0x7fffffffd998;
(* NOTE: cannot carry *)
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r11,%rcx                                #! PC = 0x93824992235601 *)
mov rcx r11;
(* movabs $0xa700000000000013,%rax                 #! PC = 0x93824992235604 *)
mov rax 0xa700000000000013@uint64;
(* sub    %rax,%r9                                 #! PC = 0x93824992235614 *)
subb carry r9 r9 rax;
(* movabs $0x6121000000000013,%rax                 #! PC = 0x93824992235617 *)
mov rax 0x6121000000000013@uint64;
(* sbb    %rax,%r10                                #! PC = 0x93824992235627 *)
sbbs carry r10 r10 rax carry;
(* movabs $0xba344d8000000008,%rax                 #! PC = 0x93824992235630 *)
mov rax 0xba344d8000000008@uint64;
(* sbb    %rax,%r8                                 #! PC = 0x93824992235640 *)
sbbs carry r8 r8 rax carry;
(* movabs $0x2523648240000001,%rax                 #! PC = 0x93824992235643 *)
mov rax 0x2523648240000001@uint64;
(* sbb    %rax,%r11                                #! PC = 0x93824992235653 *)
sbbs carry r11 r11 rax carry;

(* NOTE: final reduction *)
assert true
    && eqsmod (limbs 64 [r9, r10, r8, r11])
              (limbs 64 [r12, r13, r14, rcx])
              (limbs 64 [0xa700000000000013@64, 0x6121000000000013@64,
                         0xba344d8000000008@64, 0x2523648240000001@64]);
assume eqmod (limbs 64 [r9, r10, r8, r11])
             (limbs 64 [r12, r13, r14, rcx])
             (limbs 64 [0xa700000000000013, 0x6121000000000013,
                        0xba344d8000000008, 0x2523648240000001])
    && true;

(* cmovae %r9,%r12                                 #! PC = 0x93824992235656 *)
cmov r12 carry r12 r9;
(* mov    %r12,(%rdi)                              #! EA = L0x7fffffffda00; PC = 0x93824992235660 *)
mov L0x7fffffffda00 r12;
(* cmovae %r10,%r13                                #! PC = 0x93824992235663 *)
cmov r13 carry r13 r10;
(* mov    %r13,0x8(%rdi)                           #! EA = L0x7fffffffda08; PC = 0x93824992235667 *)
mov L0x7fffffffda08 r13;
(* cmovae %r8,%r14                                 #! PC = 0x93824992235671 *)
cmov r14 carry r14 r8;
(* mov    %r14,0x10(%rdi)                          #! EA = L0x7fffffffda10; PC = 0x93824992235675 *)
mov L0x7fffffffda10 r14;
(* cmovae %r11,%rcx                                #! PC = 0x93824992235679 *)
cmov rcx carry rcx r11;
(* mov    %rcx,0x18(%rdi)                          #! EA = L0x7fffffffda18; PC = 0x93824992235683 *)
mov L0x7fffffffda18 rcx;
(* #add    $0x40,%rsp                               #! PC = 0x93824992235687 *)
#add    $0x40,%rsp                               #! 0x93824992235687 = 0x93824992235687;
(* #pop    %r14                                     #! PC = 0x93824992235691 *)
#pop    %%r14                                     #! 0x93824992235691 = 0x93824992235691;
(* #pop    %r13                                     #! PC = 0x93824992235693 *)
#pop    %%r13                                     #! 0x93824992235693 = 0x93824992235693;
(* #pop    %r12                                     #! PC = 0x93824992235695 *)
#pop    %%r12                                     #! 0x93824992235695 = 0x93824992235695;
(* #retq                                           #! PC = 0x93824992235697 *)
#retq                                           #! 0x93824992235697 = 0x93824992235697;

mov c0 L0x7fffffffda00;
mov c1 L0x7fffffffda08;
mov c2 L0x7fffffffda10;
mov c3 L0x7fffffffda18;

{
  eqmod (limbs 64 [0, 0, 0, 0, c0, c1, c2, c3])
        (limbs 64 [a0, a1, a2, a3] * limbs 64 [b0, b1, b2, b3])
        (limbs 64 [0xa700000000000013, 0x6121000000000013,
                   0xba344d8000000008, 0x2523648240000001])
&&
  limbs 64 [c0, c1, c2, c3] <
  limbs 64 [0xa700000000000013@64, 0x6121000000000013@64,
            0xba344d8000000008@64, 0x2523648240000001@64]
}

