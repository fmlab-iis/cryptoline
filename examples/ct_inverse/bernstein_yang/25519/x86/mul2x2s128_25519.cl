(* quine: -v mul2x2s128_25519.cl
Parsing Cryptoline file:                [OK]            0.008058 seconds
Checking well-formedness:               [OK]            0.000921 seconds
Transforming to SSA form:               [OK]            0.000298 seconds
Rewriting assignments:                  [OK]            0.003160 seconds
Verifying program safety:               [OK]            0.045604 seconds
Verifying range assertions:             [OK]            3.480671 seconds
Verifying range specification:          [OK]            0.158799 seconds
Rewriting value-preserved casting:      [OK]            0.000040 seconds
Verifying algebraic assertions:         [OK]            0.058375 seconds
Verifying algebraic specification:      [OK]            0.002003 seconds
Verification result:                    [OK]            3.758537 seconds
*)
proc main (uint64 x0, uint64 x1, uint64 x2, uint64 x3, uint64 x4, uint64 x5, uint64 x6, uint64 x7, uint64 y0, uint64 y1, uint64 y2, uint64 y3, uint64 y4, uint64 y5, uint64 y6, uint64 y7) =
{true && true}

mov L0x7fffffffdf10 x0;
mov L0x7fffffffdf18 x1;
mov L0x7fffffffdf20 x2;
mov L0x7fffffffdf28 x3;
mov L0x7fffffffdf30 x4;
mov L0x7fffffffdf38 x5;
mov L0x7fffffffdf40 x6;
mov L0x7fffffffdf48 x7;

mov L0x7fffffffded0 y0;
mov L0x7fffffffded8 y1;
mov L0x7fffffffdee0 y2;
mov L0x7fffffffdee8 y3;
mov L0x7fffffffdef0 y4;
mov L0x7fffffffdef8 y5;
mov L0x7fffffffdf00 y6;
mov L0x7fffffffdf08 y7;


(* mov    (%rdi),%rax                              #! EA = L0x7fffffffdf10; Value = 0x5c9ae3ea75758e00; PC = 0x401969 *)
mov rax L0x7fffffffdf10;
(* mulq   (%rsi)                                   #! EA = L0x7fffffffded0; PC = 0x40196c *)
umull rdx rax L0x7fffffffded0 rax;
(* mov    %rax,%rcx                                #! PC = 0x40196f *)
mov rcx rax;
(* mov    %rdx,%r8                                 #! PC = 0x401972 *)
mov r8 rdx;
(* mov    0x8(%rdi),%rax                           #! EA = L0x7fffffffdf18; Value = 0xfffffffffffffff2; PC = 0x401975 *)
mov rax L0x7fffffffdf18;
(* imulq  0x8(%rsi)                                #! EA = L0x7fffffffded8; PC = 0x401979 *)
smull rdx rax L0x7fffffffded8 rax;
(* mov    %rax,%r9                                 #! PC = 0x40197d *)
mov r9 rax;
(* mov    %rdx,%r10                                #! PC = 0x401980 *)
mov r10 rdx;
(* mov    0x8(%rdi),%rax                           #! EA = L0x7fffffffdf18; Value = 0xfffffffffffffff2; PC = 0x401983 *)
mov rax L0x7fffffffdf18;
(* mov    %rax,%r11                                #! PC = 0x401987 *)
mov r11 rax;
(* sar    $0x3f,%r11                               #! PC = 0x40198a *)

and msb@uint64 r11 0x8000000000000000@uint64;
subc flag dontcare msb 1@uint64;
cmov r11 flag 0xffffffffffffffff@uint64 0@uint64;

assert true && or[and[flag = 0@1, r11 = 0@64],
		  and[flag = 1@1, r11 = 0xffffffffffffffff@64]];
assume (r11) * (flag - 1) = 0 && true;
assume (r11 - 0xffffffffffffffff) * (flag) = 0 && true;

(* mov    (%rsi),%r12                              #! EA = L0x7fffffffded0; Value = 0x1d0dc0f80f74a6f8; PC = 0x40198e *)
mov r12 L0x7fffffffded0;
(* mul    %r12                                     #! PC = 0x401991 *)
umull rdx rax r12 rax;
(* and    %r11,%r12                                #! PC = 0x401994 *)
and r12@uint64 r11 r12;
(* add    %rax,%r8                                 #! PC = 0x401997 *)
adds carry r8 rax r8;
(* adc    %rdx,%r9                                 #! PC = 0x40199a *)
adcs carry r9 rdx r9 carry;
(* adc    $0x0,%r10                                #! PC = 0x40199d *)
adcs carry r10 0@uint64 r10 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* sub    %r12,%r9                                 #! PC = 0x4019a1 *)
subb carry r9 r9 r12;
(* sbb    $0x0,%r10                                #! PC = 0x4019a4 *)
sbbs carry r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffded8; Value = 0xffffffffffffffff; PC = 0x4019a8 *)
mov rax L0x7fffffffded8;
(* mov    %rax,%rsi                                #! PC = 0x4019ac *)
mov rsi rax;
(* sar    $0x3f,%rsi                               #! PC = 0x4019af *)
and msb@uint64 rsi 0x8000000000000000@uint64;
subc flag dontcare msb 1@uint64;
cmov rsi flag 0xffffffffffffffff@uint64 0@uint64;

assert true && or[and[flag = 0@1, rsi = 0@64],
		  and[flag = 1@1, rsi = 0xffffffffffffffff@64]];
assume (rsi) * (flag - 1) = 0 && true;
assume (rsi - 0xffffffffffffffff) * (flag) = 0 && true;

(* mov    (%rdi),%rdi                              #! EA = L0x7fffffffdf10; Value = 0x5c9ae3ea75758e00; PC = 0x4019b3 *)
mov rdi L0x7fffffffdf10;
(* mul    %rdi                                     #! PC = 0x4019b6 *)
umull rdx rax rdi rax;
(* and    %rsi,%rdi                                #! PC = 0x4019b9 *)
and rdi@uint64 rsi rdi;
(* add    %rax,%r8                                 #! PC = 0x4019bc *)
adds carry r8 rax r8;
(* adc    %rdx,%r9                                 #! PC = 0x4019bf *)
adcs carry r9 rdx r9 carry;
(* adc    $0x0,%r10                                #! PC = 0x4019c2 *)
adcs carry r10 0@uint64 r10 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* sub    %rdi,%r9                                 #! PC = 0x4019c6 *)
subb carry r9 r9 rdi;
(* sbb    $0x0,%r10                                #! PC = 0x4019c9 *)
sbbs carry r10 r10 0x0@uint64 carry;
(* mov    $0x10,%rdi                               #! PC = 0x4019cd *)
mov rdi 0x10@uint64;
(* mov    $0x20,%rsi                               #! PC = 0x4019d4 *)
mov rsi 0x20@uint64;
(* #add    0x38(%rsp),%rdi                          #! EA = L0x7fffffffdd78; Value = 0x00007fffffffdf10; PC = 0x4019db *)
#add    %%L0x7fffffffdd78,%%rdi                          #! L0x7fffffffdd78 = L0x7fffffffdd78; 0x00007fffffffdf10 = 0x00007fffffffdf10; 0x4019db = 0x4019db;
(* #add    0x40(%rsp),%rsi                          #! EA = L0x7fffffffdd80; Value = 0x00007fffffffded0; PC = 0x4019e0 *)
#add    %%L0x7fffffffdd80,%%rsi                          #! L0x7fffffffdd80 = L0x7fffffffdd80; 0x00007fffffffded0 = 0x00007fffffffded0; 0x4019e0 = 0x4019e0;
(* mov    (%rdi),%rax                              #! EA = L0x7fffffffdf20; Value = 0x0a947171d8d48020; PC = 0x4019e5 *)
mov rax L0x7fffffffdf20;
(* mulq   (%rsi)                                   #! EA = L0x7fffffffdef0; PC = 0x4019e8 *)
umull rdx rax L0x7fffffffdef0 rax;
(* mov    %rax,%r11                                #! PC = 0x4019eb *)
mov r11 rax;
(* mov    %rdx,%r12                                #! PC = 0x4019ee *)
mov r12 rdx;
(* mov    0x8(%rdi),%rax                           #! EA = L0x7fffffffdf28; Value = 0xffffffffffffffe9; PC = 0x4019f1 *)
mov rax L0x7fffffffdf28;
(* imulq  0x8(%rsi)                                #! EA = L0x7fffffffdef8; PC = 0x4019f5 *)
smull rdx rax L0x7fffffffdef8 rax;
(* mov    %rax,%r13                                #! PC = 0x4019f9 *)
mov r13 rax;
(* mov    %rdx,%r14                                #! PC = 0x4019fc *)
mov r14 rdx;
(* mov    0x8(%rdi),%rax                           #! EA = L0x7fffffffdf28; Value = 0xffffffffffffffe9; PC = 0x4019ff *)
mov rax L0x7fffffffdf28;
(* mov    %rax,%r15                                #! PC = 0x401a03 *)
mov r15 rax;
(* sar    $0x3f,%r15                               #! PC = 0x401a06 *)
and msb@uint64 r15 0x8000000000000000@uint64;
subc flag dontcare msb 1@uint64;
cmov r15 flag 0xffffffffffffffff@uint64 0@uint64;

assert true && or[and[flag = 0@1, r15 = 0@64],
		  and[flag = 1@1, r15 = 0xffffffffffffffff@64]];
assume (r15) * (flag - 1) = 0 && true;
assume (r15 - 0xffffffffffffffff) * (flag) = 0 && true;

(* mov    (%rsi),%rbx                              #! EA = L0x7fffffffdef0; Value = 0x5e82755d1aa0574f; PC = 0x401a0a *)
mov rbx L0x7fffffffdef0;
(* mul    %rbx                                     #! PC = 0x401a0d *)
umull rdx rax rbx rax;
(* and    %r15,%rbx                                #! PC = 0x401a10 *)
and rbx@uint64 r15 rbx;
(* add    %rax,%r12                                #! PC = 0x401a13 *)
adds carry r12 rax r12;
(* adc    %rdx,%r13                                #! PC = 0x401a16 *)
adcs carry r13 rdx r13 carry;
(* adc    $0x0,%r14                                #! PC = 0x401a19 *)
adcs carry r14 0@uint64 r14 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* sub    %rbx,%r13                                #! PC = 0x401a1d *)
subb carry r13 r13 rbx;
(* sbb    $0x0,%r14                                #! PC = 0x401a20 *)
sbbs carry r14 r14 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdef8; Value = 0x0000000000000001; PC = 0x401a24 *)
mov rax L0x7fffffffdef8;
(* mov    %rax,%rsi                                #! PC = 0x401a28 *)
mov rsi rax;
(* sar    $0x3f,%rsi                               #! PC = 0x401a2b *)
and msb@uint64 rsi 0x8000000000000000@uint64;
subc flag dontcare msb 1@uint64;
cmov rsi flag 0xffffffffffffffff@uint64 0@uint64;

assert true && or[and[flag = 0@1, rsi = 0@64],
		  and[flag = 1@1, rsi = 0xffffffffffffffff@64]];
assume (rsi) * (flag - 1) = 0 && true;
assume (rsi - 0xffffffffffffffff) * (flag) = 0 && true;

(* mov    (%rdi),%rdi                              #! EA = L0x7fffffffdf20; Value = 0x0a947171d8d48020; PC = 0x401a2f *)
mov rdi L0x7fffffffdf20;
(* mul    %rdi                                     #! PC = 0x401a32 *)
umull rdx rax rdi rax;
(* and    %rsi,%rdi                                #! PC = 0x401a35 *)
and rdi@uint64 rsi rdi;
(* add    %rax,%r12                                #! PC = 0x401a38 *)
adds carry r12 rax r12;
(* adc    %rdx,%r13                                #! PC = 0x401a3b *)
adcs carry r13 rdx r13 carry;
(* adc    $0x0,%r14                                #! PC = 0x401a3e *)
adcs carry r14 0@uint64 r14 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* sub    %rdi,%r13                                #! PC = 0x401a42 *)
subb carry r13 r13 rdi;
(* sbb    $0x0,%r14                                #! PC = 0x401a45 *)
sbbs carry r14 r14 0x0@uint64 carry;
(* add    %rcx,%r11                                #! PC = 0x401a49 *)
adds carry r11 rcx r11;
(* adc    %r8,%r12                                 #! PC = 0x401a4c *)
adcs carry r12 r8 r12 carry;
(* adc    %r9,%r13                                 #! PC = 0x401a4f *)
adcs carry r13 r9 r13 carry;
(* adc    %r10,%r14                                #! PC = 0x401a52 *)
adcs carry r14 r10 r14 carry;
(* mov    %r14,%rdi                                #! PC = 0x401a55 *)
mov rdi r14;
(* sar    $0x3f,%rdi                               #! PC = 0x401a58 *)
and msb@uint64 rdi 0x8000000000000000@uint64;
subc flag dontcare msb 1@uint64;
cmov rdi flag 0xffffffffffffffff@uint64 0@uint64;

assert true && or[and[flag = 0@1, rdi = 0@64],
		  and[flag = 1@1, rdi = 0xffffffffffffffff@64]];
assume (rdi) * (flag - 1) = 0 && true;
assume (rdi - 0xffffffffffffffff) * (flag) = 0 && true;

(* mov    $0xffffffffffffffed,%rsi                 #! PC = 0x401a5c *)
mov rsi 0xffffffffffffffed@uint64;
(* and    %rdi,%rsi                                #! PC = 0x401a63 *)
and rsi@uint64 rdi rsi;
(* movabs $0x7fffffffffffffff,%rdx                 #! PC = 0x401a66 *)
mov rdx 0x7fffffffffffffff@uint64;
(* and    %rdi,%rdx                                #! PC = 0x401a70 *)
and rdx@uint64 rdi rdx;
(* add    %rsi,%r11                                #! PC = 0x401a73 *)
adds carry r11 rsi r11;
(* adc    %rdi,%r12                                #! PC = 0x401a76 *)
adcs carry r12 rdi r12 carry;
(* adc    %rdi,%r13                                #! PC = 0x401a79 *)
adcs carry r13 rdi r13 carry;
(* adc    %rdx,%r14                                #! PC = 0x401a7c *)
adcs carry r14 rdx r14 carry;
(* #mov    0x48(%rsp),%rdi                          #! EA = L0x7fffffffdd88; Value = 0x00007fffffffdf50; PC = 0x401a7f *)
#mov    %%L0x7fffffffdd88,%%rdi                          #! L0x7fffffffdd88 = L0x7fffffffdd88; 0x00007fffffffdf50 = 0x00007fffffffdf50; 0x401a7f = 0x401a7f;
(* mov    %r11,(%rdi)                              #! EA = L0x7fffffffdf50; PC = 0x401a84 *)
mov L0x7fffffffdf50 r11;
(* mov    %r12,0x8(%rdi)                           #! EA = L0x7fffffffdf58; PC = 0x401a87 *)
mov L0x7fffffffdf58 r12;
(* mov    %r13,0x10(%rdi)                          #! EA = L0x7fffffffdf60; PC = 0x401a8b *)
mov L0x7fffffffdf60 r13;
(* mov    %r14,0x18(%rdi)                          #! EA = L0x7fffffffdf68; PC = 0x401a8f *)
mov L0x7fffffffdf68 r14;
(* add    $0x20,%rdi                               #! PC = 0x401a93 *)
adds carry rdi 0x20@uint64 rdi;
(* #mov    %rdi,0x48(%rsp)                          #! EA = L0x7fffffffdd88; PC = 0x401a97 *)
#mov    %%rdi,%%L0x7fffffffdd88                          #! L0x7fffffffdd88 = L0x7fffffffdd88; 0x401a97 = 0x401a97;
(* #mov    0x38(%rsp),%rdi                          #! EA = L0x7fffffffdd78; Value = 0x00007fffffffdf10; PC = 0x401a9c *)
#mov    %%L0x7fffffffdd78,%%rdi                          #! L0x7fffffffdd78 = L0x7fffffffdd78; 0x00007fffffffdf10 = 0x00007fffffffdf10; 0x401a9c = 0x401a9c;
(* mov    $0x10,%rsi                               #! PC = 0x401aa1 *)
mov rsi 0x10@uint64;
(* #add    0x40(%rsp),%rsi                          #! EA = L0x7fffffffdd80; Value = 0x00007fffffffded0; PC = 0x401aa8 *)
#add    %%L0x7fffffffdd80,%%rsi                          #! L0x7fffffffdd80 = L0x7fffffffdd80; 0x00007fffffffded0 = 0x00007fffffffded0; 0x401aa8 = 0x401aa8;
(* mov    (%rdi),%rax                              #! EA = L0x7fffffffdf10; Value = 0x5c9ae3ea75758e00; PC = 0x401aad *)
mov rax L0x7fffffffdf10;
(* mulq   (%rsi)                                   #! EA = L0x7fffffffdee0; PC = 0x401ab0 *)
umull rdx rax L0x7fffffffdee0 rax;
(* mov    %rax,%rcx                                #! PC = 0x401ab3 *)
mov rcx rax;
(* mov    %rdx,%r8                                 #! PC = 0x401ab6 *)
mov r8 rdx;
(* mov    0x8(%rdi),%rax                           #! EA = L0x7fffffffdf18; Value = 0xfffffffffffffff2; PC = 0x401ab9 *)
mov rax L0x7fffffffdf18;
(* imulq  0x8(%rsi)                                #! EA = L0x7fffffffdee8; PC = 0x401abd *)
smull rdx rax L0x7fffffffdee8 rax;
(* mov    %rax,%r9                                 #! PC = 0x401ac1 *)
mov r9 rax;
(* mov    %rdx,%r10                                #! PC = 0x401ac4 *)
mov r10 rdx;
(* mov    0x8(%rdi),%rax                           #! EA = L0x7fffffffdf18; Value = 0xfffffffffffffff2; PC = 0x401ac7 *)
mov rax L0x7fffffffdf18;
(* mov    %rax,%r11                                #! PC = 0x401acb *)
mov r11 rax;
(* sar    $0x3f,%r11                               #! PC = 0x401ace *)
and msb@uint64 r11 0x8000000000000000@uint64;
subc flag dontcare msb 1@uint64;
cmov r11 flag 0xffffffffffffffff@uint64 0@uint64;

assert true && or[and[flag = 0@1, r11 = 0@64],
		  and[flag = 1@1, r11 = 0xffffffffffffffff@64]];
assume (r11) * (flag - 1) = 0 && true;
assume (r11 - 0xffffffffffffffff) * (flag) = 0 && true;

(* mov    (%rsi),%r12                              #! EA = L0x7fffffffdee0; Value = 0x02f1d498675c8f58; PC = 0x401ad2 *)
mov r12 L0x7fffffffdee0;
(* mul    %r12                                     #! PC = 0x401ad5 *)
umull rdx rax r12 rax;
(* and    %r11,%r12                                #! PC = 0x401ad8 *)
and r12@uint64 r11 r12;
(* add    %rax,%r8                                 #! PC = 0x401adb *)
adds carry r8 rax r8;
(* adc    %rdx,%r9                                 #! PC = 0x401ade *)
adcs carry r9 rdx r9 carry;
(* adc    $0x0,%r10                                #! PC = 0x401ae1 *)
adcs carry r10 0@uint64 r10 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* sub    %r12,%r9                                 #! PC = 0x401ae5 *)
subb carry r9 r9 r12;
(* sbb    $0x0,%r10                                #! PC = 0x401ae8 *)
sbbs carry r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdee8; Value = 0x0000000000000001; PC = 0x401aec *)
mov rax L0x7fffffffdee8;
(* mov    %rax,%rsi                                #! PC = 0x401af0 *)
mov rsi rax;
(* sar    $0x3f,%rsi                               #! PC = 0x401af3 *)
and msb@uint64 rsi 0x8000000000000000@uint64;
subc flag dontcare msb 1@uint64;
cmov rsi flag 0xffffffffffffffff@uint64 0@uint64;

assert true && or[and[flag = 0@1, rsi = 0@64],
		  and[flag = 1@1, rsi = 0xffffffffffffffff@64]];
assume (rsi) * (flag - 1) = 0 && true;
assume (rsi - 0xffffffffffffffff) * (flag) = 0 && true;

(* mov    (%rdi),%rdi                              #! EA = L0x7fffffffdf10; Value = 0x5c9ae3ea75758e00; PC = 0x401af7 *)
mov rdi L0x7fffffffdf10;
(* mul    %rdi                                     #! PC = 0x401afa *)
umull rdx rax rdi rax;
(* and    %rsi,%rdi                                #! PC = 0x401afd *)
and rdi@uint64 rsi rdi;
(* add    %rax,%r8                                 #! PC = 0x401b00 *)
adds carry r8 rax r8;
(* adc    %rdx,%r9                                 #! PC = 0x401b03 *)
adcs carry r9 rdx r9 carry;
(* adc    $0x0,%r10                                #! PC = 0x401b06 *)
adcs carry r10 0@uint64 r10 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* sub    %rdi,%r9                                 #! PC = 0x401b0a *)
subb carry r9 r9 rdi;
(* sbb    $0x0,%r10                                #! PC = 0x401b0d *)
sbbs carry r10 r10 0x0@uint64 carry;
(* mov    $0x10,%rdi                               #! PC = 0x401b11 *)
mov rdi 0x10@uint64;
(* mov    $0x30,%rsi                               #! PC = 0x401b18 *)
mov rsi 0x30@uint64;
(* #add    0x38(%rsp),%rdi                          #! EA = L0x7fffffffdd78; Value = 0x00007fffffffdf10; PC = 0x401b1f *)
#add    %%L0x7fffffffdd78,%%rdi                          #! L0x7fffffffdd78 = L0x7fffffffdd78; 0x00007fffffffdf10 = 0x00007fffffffdf10; 0x401b1f = 0x401b1f;
(* #add    0x40(%rsp),%rsi                          #! EA = L0x7fffffffdd80; Value = 0x00007fffffffded0; PC = 0x401b24 *)
#add    %%L0x7fffffffdd80,%%rsi                          #! L0x7fffffffdd80 = L0x7fffffffdd80; 0x00007fffffffded0 = 0x00007fffffffded0; 0x401b24 = 0x401b24;
(* mov    (%rdi),%rax                              #! EA = L0x7fffffffdf20; Value = 0x0a947171d8d48020; PC = 0x401b29 *)
mov rax L0x7fffffffdf20;
(* mulq   (%rsi)                                   #! EA = L0x7fffffffdf00; PC = 0x401b2c *)
umull rdx rax L0x7fffffffdf00 rax;
(* mov    %rax,%r11                                #! PC = 0x401b2f *)
mov r11 rax;
(* mov    %rdx,%r12                                #! PC = 0x401b32 *)
mov r12 rdx;
(* mov    0x8(%rdi),%rax                           #! EA = L0x7fffffffdf28; Value = 0xffffffffffffffe9; PC = 0x401b35 *)
mov rax L0x7fffffffdf28;
(* imulq  0x8(%rsi)                                #! EA = L0x7fffffffdf08; PC = 0x401b39 *)
smull rdx rax L0x7fffffffdf08 rax;
(* mov    %rax,%r13                                #! PC = 0x401b3d *)
mov r13 rax;
(* mov    %rdx,%r14                                #! PC = 0x401b40 *)
mov r14 rdx;
(* mov    0x8(%rdi),%rax                           #! EA = L0x7fffffffdf28; Value = 0xffffffffffffffe9; PC = 0x401b43 *)
mov rax L0x7fffffffdf28;
(* mov    %rax,%r15                                #! PC = 0x401b47 *)
mov r15 rax;
(* sar    $0x3f,%r15                               #! PC = 0x401b4a *)
and msb@uint64 r15 0x8000000000000000@uint64;
subc flag dontcare msb 1@uint64;
cmov r15 flag 0xffffffffffffffff@uint64 0@uint64;

assert true && or[and[flag = 0@1, r15 = 0@64],
		  and[flag = 1@1, r15 = 0xffffffffffffffff@64]];
assume (r15) * (flag - 1) = 0 && true;
assume (r15 - 0xffffffffffffffff) * (flag) = 0 && true;

(* mov    (%rsi),%rbx                              #! EA = L0x7fffffffdf00; Value = 0x5e05972aaa5def1b; PC = 0x401b4e *)
mov rbx L0x7fffffffdf00;
(* mul    %rbx                                     #! PC = 0x401b51 *)
umull rdx rax rbx rax;
(* and    %r15,%rbx                                #! PC = 0x401b54 *)
and rbx@uint64 r15 rbx;
(* add    %rax,%r12                                #! PC = 0x401b57 *)
adds carry r12 rax r12;
(* adc    %rdx,%r13                                #! PC = 0x401b5a *)
adcs carry r13 rdx r13 carry;
(* adc    $0x0,%r14                                #! PC = 0x401b5d *)
adcs carry r14 0@uint64 r14 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* sub    %rbx,%r13                                #! PC = 0x401b61 *)
subb carry r13 r13 rbx;
(* sbb    $0x0,%r14                                #! PC = 0x401b64 *)
sbbs carry r14 r14 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdf08; Value = 0xfffffffffffffffe; PC = 0x401b68 *)
mov rax L0x7fffffffdf08;
(* mov    %rax,%rsi                                #! PC = 0x401b6c *)
mov rsi rax;
(* sar    $0x3f,%rsi                               #! PC = 0x401b6f *)
and msb@uint64 rsi 0x8000000000000000@uint64;
subc flag dontcare msb 1@uint64;
cmov rsi flag 0xffffffffffffffff@uint64 0@uint64;

assert true && or[and[flag = 0@1, rsi = 0@64],
		  and[flag = 1@1, rsi = 0xffffffffffffffff@64]];
assume (rsi) * (flag - 1) = 0 && true;
assume (rsi - 0xffffffffffffffff) * (flag) = 0 && true;

(* mov    (%rdi),%rdi                              #! EA = L0x7fffffffdf20; Value = 0x0a947171d8d48020; PC = 0x401b73 *)
mov rdi L0x7fffffffdf20;
(* mul    %rdi                                     #! PC = 0x401b76 *)
umull rdx rax rdi rax;
(* and    %rsi,%rdi                                #! PC = 0x401b79 *)
and rdi@uint64 rsi rdi;
(* add    %rax,%r12                                #! PC = 0x401b7c *)
adds carry r12 rax r12;
(* adc    %rdx,%r13                                #! PC = 0x401b7f *)
adcs carry r13 rdx r13 carry;
(* adc    $0x0,%r14                                #! PC = 0x401b82 *)
adcs carry r14 0@uint64 r14 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* sub    %rdi,%r13                                #! PC = 0x401b86 *)
subb carry r13 r13 rdi;
(* sbb    $0x0,%r14                                #! PC = 0x401b89 *)
sbbs carry r14 r14 0x0@uint64 carry;
(* add    %rcx,%r11                                #! PC = 0x401b8d *)
adds carry r11 rcx r11;
(* adc    %r8,%r12                                 #! PC = 0x401b90 *)
adcs carry r12 r8 r12 carry;
(* adc    %r9,%r13                                 #! PC = 0x401b93 *)
adcs carry r13 r9 r13 carry;
(* adc    %r10,%r14                                #! PC = 0x401b96 *)
adcs carry r14 r10 r14 carry;
(* mov    %r14,%rdi                                #! PC = 0x401b99 *)
mov rdi r14;
(* sar    $0x3f,%rdi                               #! PC = 0x401b9c *)
and msb@uint64 rdi 0x8000000000000000@uint64;
subc flag dontcare msb 1@uint64;
cmov rdi flag 0xffffffffffffffff@uint64 0@uint64;

assert true && or[and[flag = 0@1, rdi = 0@64],
		  and[flag = 1@1, rdi = 0xffffffffffffffff@64]];
assume (rdi) * (flag - 1) = 0 && true;
assume (rdi - 0xffffffffffffffff) * (flag) = 0 && true;

(* mov    $0xffffffffffffffed,%rsi                 #! PC = 0x401ba0 *)
mov rsi 0xffffffffffffffed@uint64;
(* and    %rdi,%rsi                                #! PC = 0x401ba7 *)
and rsi@uint64 rdi rsi;
(* movabs $0x7fffffffffffffff,%rdx                 #! PC = 0x401baa *)
mov rdx 0x7fffffffffffffff@uint64;
(* and    %rdi,%rdx                                #! PC = 0x401bb4 *)
and rdx@uint64 rdi rdx;
(* add    %rsi,%r11                                #! PC = 0x401bb7 *)
adds carry r11 rsi r11;
(* adc    %rdi,%r12                                #! PC = 0x401bba *)
adcs carry r12 rdi r12 carry;
(* adc    %rdi,%r13                                #! PC = 0x401bbd *)
adcs carry r13 rdi r13 carry;
(* adc    %rdx,%r14                                #! PC = 0x401bc0 *)
adcs carry r14 rdx r14 carry;
(* #mov    0x48(%rsp),%rdi                          #! EA = L0x7fffffffdd88; Value = 0x00007fffffffdf70; PC = 0x401bc3 *)
#mov    %%L0x7fffffffdd88,%%rdi                          #! L0x7fffffffdd88 = L0x7fffffffdd88; 0x00007fffffffdf70 = 0x00007fffffffdf70; 0x401bc3 = 0x401bc3;
(* mov    %r11,(%rdi)                              #! EA = L0x7fffffffdf70; PC = 0x401bc8 *)
mov L0x7fffffffdf70 r11;
(* mov    %r12,0x8(%rdi)                           #! EA = L0x7fffffffdf78; PC = 0x401bcb *)
mov L0x7fffffffdf78 r12;
(* mov    %r13,0x10(%rdi)                          #! EA = L0x7fffffffdf80; PC = 0x401bcf *)
mov L0x7fffffffdf80 r13;
(* mov    %r14,0x18(%rdi)                          #! EA = L0x7fffffffdf88; PC = 0x401bd3 *)
mov L0x7fffffffdf88 r14;
(* add    $0x20,%rdi                               #! PC = 0x401bd7 *)
adds carry rdi 0x20@uint64 rdi;
(* #mov    %rdi,0x48(%rsp)                          #! EA = L0x7fffffffdd88; PC = 0x401bdb *)
#mov    %%rdi,%%L0x7fffffffdd88                          #! L0x7fffffffdd88 = L0x7fffffffdd88; 0x401bdb = 0x401bdb;
(* mov    $0x20,%rdi                               #! PC = 0x401be0 *)
mov rdi 0x20@uint64;
(* #add    0x38(%rsp),%rdi                          #! EA = L0x7fffffffdd78; Value = 0x00007fffffffdf10; PC = 0x401be7 *)
#add    %%L0x7fffffffdd78,%%rdi                          #! L0x7fffffffdd78 = L0x7fffffffdd78; 0x00007fffffffdf10 = 0x00007fffffffdf10; 0x401be7 = 0x401be7;
(* #mov    0x40(%rsp),%rsi                          #! EA = L0x7fffffffdd80; Value = 0x00007fffffffded0; PC = 0x401bec *)
#mov    %%L0x7fffffffdd80,%%rsi                          #! L0x7fffffffdd80 = L0x7fffffffdd80; 0x00007fffffffded0 = 0x00007fffffffded0; 0x401bec = 0x401bec;
(* mov    (%rdi),%rax                              #! EA = L0x7fffffffdf30; Value = 0x34367b50c0c98250; PC = 0x401bf1 *)
mov rax L0x7fffffffdf30;
(* mulq   (%rsi)                                   #! EA = L0x7fffffffded0; PC = 0x401bf4 *)
umull rdx rax L0x7fffffffded0 rax;
(* mov    %rax,%rcx                                #! PC = 0x401bf7 *)
mov rcx rax;
(* mov    %rdx,%r8                                 #! PC = 0x401bfa *)
mov r8 rdx;
(* mov    0x8(%rdi),%rax                           #! EA = L0x7fffffffdf38; Value = 0x0000000000000000; PC = 0x401bfd *)
mov rax L0x7fffffffdf38;
(* imulq  0x8(%rsi)                                #! EA = L0x7fffffffded8; PC = 0x401c01 *)
smull rdx rax L0x7fffffffded8 rax;
(* mov    %rax,%r9                                 #! PC = 0x401c05 *)
mov r9 rax;
(* mov    %rdx,%r10                                #! PC = 0x401c08 *)
mov r10 rdx;
(* mov    0x8(%rdi),%rax                           #! EA = L0x7fffffffdf38; Value = 0x0000000000000000; PC = 0x401c0b *)
mov rax L0x7fffffffdf38;
(* mov    %rax,%r11                                #! PC = 0x401c0f *)
mov r11 rax;
(* sar    $0x3f,%r11                               #! PC = 0x401c12 *)
and msb@uint64 r11 0x8000000000000000@uint64;
subc flag dontcare msb 1@uint64;
cmov r11 flag 0xffffffffffffffff@uint64 0@uint64;

assert true && or[and[flag = 0@1, r11 = 0@64],
		  and[flag = 1@1, r11 = 0xffffffffffffffff@64]];
assume (r11) * (flag - 1) = 0 && true;
assume (r11 - 0xffffffffffffffff) * (flag) = 0 && true;

(* mov    (%rsi),%r12                              #! EA = L0x7fffffffded0; Value = 0x1d0dc0f80f74a6f8; PC = 0x401c16 *)
mov r12 L0x7fffffffded0;
(* mul    %r12                                     #! PC = 0x401c19 *)
umull rdx rax r12 rax;
(* and    %r11,%r12                                #! PC = 0x401c1c *)
and r12@uint64 r11 r12;
(* add    %rax,%r8                                 #! PC = 0x401c1f *)
adds carry r8 rax r8;
(* adc    %rdx,%r9                                 #! PC = 0x401c22 *)
adcs carry r9 rdx r9 carry;
(* adc    $0x0,%r10                                #! PC = 0x401c25 *)
adcs carry r10 0@uint64 r10 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* sub    %r12,%r9                                 #! PC = 0x401c29 *)
subb carry r9 r9 r12;
(* sbb    $0x0,%r10                                #! PC = 0x401c2c *)
sbbs carry r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffded8; Value = 0xffffffffffffffff; PC = 0x401c30 *)
mov rax L0x7fffffffded8;
(* mov    %rax,%rsi                                #! PC = 0x401c34 *)
mov rsi rax;
(* sar    $0x3f,%rsi                               #! PC = 0x401c37 *)
and msb@uint64 rsi 0x8000000000000000@uint64;
subc flag dontcare msb 1@uint64;
cmov rsi flag 0xffffffffffffffff@uint64 0@uint64;

assert true && or[and[flag = 0@1, rsi = 0@64],
		  and[flag = 1@1, rsi = 0xffffffffffffffff@64]];
assume (rsi) * (flag - 1) = 0 && true;
assume (rsi - 0xffffffffffffffff) * (flag) = 0 && true;

(* mov    (%rdi),%rdi                              #! EA = L0x7fffffffdf30; Value = 0x34367b50c0c98250; PC = 0x401c3b *)
mov rdi L0x7fffffffdf30;
(* mul    %rdi                                     #! PC = 0x401c3e *)
umull rdx rax rdi rax;
(* and    %rsi,%rdi                                #! PC = 0x401c41 *)
and rdi@uint64 rsi rdi;
(* add    %rax,%r8                                 #! PC = 0x401c44 *)
adds carry r8 rax r8;
(* adc    %rdx,%r9                                 #! PC = 0x401c47 *)
adcs carry r9 rdx r9 carry;
(* adc    $0x0,%r10                                #! PC = 0x401c4a *)
adcs carry r10 0@uint64 r10 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* sub    %rdi,%r9                                 #! PC = 0x401c4e *)
subb carry r9 r9 rdi;
(* sbb    $0x0,%r10                                #! PC = 0x401c51 *)
sbbs carry r10 r10 0x0@uint64 carry;
(* mov    $0x30,%rdi                               #! PC = 0x401c55 *)
mov rdi 0x30@uint64;
(* mov    $0x20,%rsi                               #! PC = 0x401c5c *)
mov rsi 0x20@uint64;
(* #add    0x38(%rsp),%rdi                          #! EA = L0x7fffffffdd78; Value = 0x00007fffffffdf10; PC = 0x401c63 *)
#add    %%L0x7fffffffdd78,%%rdi                          #! L0x7fffffffdd78 = L0x7fffffffdd78; 0x00007fffffffdf10 = 0x00007fffffffdf10; 0x401c63 = 0x401c63;
(* #add    0x40(%rsp),%rsi                          #! EA = L0x7fffffffdd80; Value = 0x00007fffffffded0; PC = 0x401c68 *)
#add    %%L0x7fffffffdd80,%%rsi                          #! L0x7fffffffdd80 = L0x7fffffffdd80; 0x00007fffffffded0 = 0x00007fffffffded0; 0x401c68 = 0x401c68;
(* mov    (%rdi),%rax                              #! EA = L0x7fffffffdf40; Value = 0x56b8d383d2e5b5b3; PC = 0x401c6d *)
mov rax L0x7fffffffdf40;
(* mulq   (%rsi)                                   #! EA = L0x7fffffffdef0; PC = 0x401c70 *)
umull rdx rax L0x7fffffffdef0 rax;
(* mov    %rax,%r11                                #! PC = 0x401c73 *)
mov r11 rax;
(* mov    %rdx,%r12                                #! PC = 0x401c76 *)
mov r12 rdx;
(* mov    0x8(%rdi),%rax                           #! EA = L0x7fffffffdf48; Value = 0x0000000000000000; PC = 0x401c79 *)
mov rax L0x7fffffffdf48;
(* imulq  0x8(%rsi)                                #! EA = L0x7fffffffdef8; PC = 0x401c7d *)
smull rdx rax L0x7fffffffdef8 rax;
(* mov    %rax,%r13                                #! PC = 0x401c81 *)
mov r13 rax;
(* mov    %rdx,%r14                                #! PC = 0x401c84 *)
mov r14 rdx;
(* mov    0x8(%rdi),%rax                           #! EA = L0x7fffffffdf48; Value = 0x0000000000000000; PC = 0x401c87 *)
mov rax L0x7fffffffdf48;
(* mov    %rax,%r15                                #! PC = 0x401c8b *)
mov r15 rax;
(* sar    $0x3f,%r15                               #! PC = 0x401c8e *)
and msb@uint64 r15 0x8000000000000000@uint64;
subc flag dontcare msb 1@uint64;
cmov r15 flag 0xffffffffffffffff@uint64 0@uint64;

assert true && or[and[flag = 0@1, r15 = 0@64],
		  and[flag = 1@1, r15 = 0xffffffffffffffff@64]];
assume (r15) * (flag - 1) = 0 && true;
assume (r15 - 0xffffffffffffffff) * (flag) = 0 && true;

(* mov    (%rsi),%rbx                              #! EA = L0x7fffffffdef0; Value = 0x5e82755d1aa0574f; PC = 0x401c92 *)
mov rbx L0x7fffffffdef0;
(* mul    %rbx                                     #! PC = 0x401c95 *)
umull rdx rax rbx rax;
(* and    %r15,%rbx                                #! PC = 0x401c98 *)
and rbx@uint64 r15 rbx;
(* add    %rax,%r12                                #! PC = 0x401c9b *)
adds carry r12 rax r12;
(* adc    %rdx,%r13                                #! PC = 0x401c9e *)
adcs carry r13 rdx r13 carry;
(* adc    $0x0,%r14                                #! PC = 0x401ca1 *)
adcs carry r14 0@uint64 r14 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* sub    %rbx,%r13                                #! PC = 0x401ca5 *)
subb carry r13 r13 rbx;
(* sbb    $0x0,%r14                                #! PC = 0x401ca8 *)
sbbs carry r14 r14 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdef8; Value = 0x0000000000000001; PC = 0x401cac *)
mov rax L0x7fffffffdef8;
(* mov    %rax,%rsi                                #! PC = 0x401cb0 *)
mov rsi rax;
(* sar    $0x3f,%rsi                               #! PC = 0x401cb3 *)
and msb@uint64 rsi 0x8000000000000000@uint64;
subc flag dontcare msb 1@uint64;
cmov rsi flag 0xffffffffffffffff@uint64 0@uint64;

assert true && or[and[flag = 0@1, rsi = 0@64],
		  and[flag = 1@1, rsi = 0xffffffffffffffff@64]];
assume (rsi) * (flag - 1) = 0 && true;
assume (rsi - 0xffffffffffffffff) * (flag) = 0 && true;

(* mov    (%rdi),%rdi                              #! EA = L0x7fffffffdf40; Value = 0x56b8d383d2e5b5b3; PC = 0x401cb7 *)
mov rdi L0x7fffffffdf40;
(* mul    %rdi                                     #! PC = 0x401cba *)
umull rdx rax rdi rax;
(* and    %rsi,%rdi                                #! PC = 0x401cbd *)
and rdi@uint64 rsi rdi;
(* add    %rax,%r12                                #! PC = 0x401cc0 *)
adds carry r12 rax r12;
(* adc    %rdx,%r13                                #! PC = 0x401cc3 *)
adcs carry r13 rdx r13 carry;
(* adc    $0x0,%r14                                #! PC = 0x401cc6 *)
adcs carry r14 0@uint64 r14 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* sub    %rdi,%r13                                #! PC = 0x401cca *)
subb carry r13 r13 rdi;
(* sbb    $0x0,%r14                                #! PC = 0x401ccd *)
sbbs carry r14 r14 0x0@uint64 carry;
(* add    %rcx,%r11                                #! PC = 0x401cd1 *)
adds carry r11 rcx r11;
(* adc    %r8,%r12                                 #! PC = 0x401cd4 *)
adcs carry r12 r8 r12 carry;
(* adc    %r9,%r13                                 #! PC = 0x401cd7 *)
adcs carry r13 r9 r13 carry;
(* adc    %r10,%r14                                #! PC = 0x401cda *)
adcs carry r14 r10 r14 carry;
(* mov    %r14,%rdi                                #! PC = 0x401cdd *)
mov rdi r14;
(* sar    $0x3f,%rdi                               #! PC = 0x401ce0 *)
and msb@uint64 rdi 0x8000000000000000@uint64;
subc flag dontcare msb 1@uint64;
cmov rdi flag 0xffffffffffffffff@uint64 0@uint64;

assert true && or[and[flag = 0@1, rdi = 0@64],
		  and[flag = 1@1, rdi = 0xffffffffffffffff@64]];
assume (rdi) * (flag - 1) = 0 && true;
assume (rdi - 0xffffffffffffffff) * (flag) = 0 && true;

(* mov    $0xffffffffffffffed,%rsi                 #! PC = 0x401ce4 *)
mov rsi 0xffffffffffffffed@uint64;
(* and    %rdi,%rsi                                #! PC = 0x401ceb *)
and rsi@uint64 rdi rsi;
(* movabs $0x7fffffffffffffff,%rdx                 #! PC = 0x401cee *)
mov rdx 0x7fffffffffffffff@uint64;
(* and    %rdi,%rdx                                #! PC = 0x401cf8 *)
and rdx@uint64 rdi rdx;
(* add    %rsi,%r11                                #! PC = 0x401cfb *)
adds carry r11 rsi r11;
(* adc    %rdi,%r12                                #! PC = 0x401cfe *)
adcs carry r12 rdi r12 carry;
(* adc    %rdi,%r13                                #! PC = 0x401d01 *)
adcs carry r13 rdi r13 carry;
(* adc    %rdx,%r14                                #! PC = 0x401d04 *)
adcs carry r14 rdx r14 carry;
(* #mov    0x48(%rsp),%rdi                          #! EA = L0x7fffffffdd88; Value = 0x00007fffffffdf90; PC = 0x401d07 *)
#mov    %%L0x7fffffffdd88,%%rdi                          #! L0x7fffffffdd88 = L0x7fffffffdd88; 0x00007fffffffdf90 = 0x00007fffffffdf90; 0x401d07 = 0x401d07;
(* mov    %r11,(%rdi)                              #! EA = L0x7fffffffdf90; PC = 0x401d0c *)
mov L0x7fffffffdf90 r11;
(* mov    %r12,0x8(%rdi)                           #! EA = L0x7fffffffdf98; PC = 0x401d0f *)
mov L0x7fffffffdf98 r12;
(* mov    %r13,0x10(%rdi)                          #! EA = L0x7fffffffdfa0; PC = 0x401d13 *)
mov L0x7fffffffdfa0 r13;
(* mov    %r14,0x18(%rdi)                          #! EA = L0x7fffffffdfa8; PC = 0x401d17 *)
mov L0x7fffffffdfa8 r14;
(* add    $0x20,%rdi                               #! PC = 0x401d1b *)
adds carry rdi 0x20@uint64 rdi;
(* #mov    %rdi,0x48(%rsp)                          #! EA = L0x7fffffffdd88; PC = 0x401d1f *)
#mov    %%rdi,%%L0x7fffffffdd88                          #! L0x7fffffffdd88 = L0x7fffffffdd88; 0x401d1f = 0x401d1f;
(* mov    $0x20,%rdi                               #! PC = 0x401d24 *)
mov rdi 0x20@uint64;
(* mov    $0x10,%rsi                               #! PC = 0x401d2b *)
mov rsi 0x10@uint64;
(* #add    0x38(%rsp),%rdi                          #! EA = L0x7fffffffdd78; Value = 0x00007fffffffdf10; PC = 0x401d32 *)
#add    %%L0x7fffffffdd78,%%rdi                          #! L0x7fffffffdd78 = L0x7fffffffdd78; 0x00007fffffffdf10 = 0x00007fffffffdf10; 0x401d32 = 0x401d32;
(* #add    0x40(%rsp),%rsi                          #! EA = L0x7fffffffdd80; Value = 0x00007fffffffded0; PC = 0x401d37 *)
#add    %%L0x7fffffffdd80,%%rsi                          #! L0x7fffffffdd80 = L0x7fffffffdd80; 0x00007fffffffded0 = 0x00007fffffffded0; 0x401d37 = 0x401d37;
(* mov    (%rdi),%rax                              #! EA = L0x7fffffffdf30; Value = 0x34367b50c0c98250; PC = 0x401d3c *)
mov rax L0x7fffffffdf30;
(* mulq   (%rsi)                                   #! EA = L0x7fffffffdee0; PC = 0x401d3f *)
umull rdx rax L0x7fffffffdee0 rax;
(* mov    %rax,%rcx                                #! PC = 0x401d42 *)
mov rcx rax;
(* mov    %rdx,%r8                                 #! PC = 0x401d45 *)
mov r8 rdx;
(* mov    0x8(%rdi),%rax                           #! EA = L0x7fffffffdf38; Value = 0x0000000000000000; PC = 0x401d48 *)
mov rax L0x7fffffffdf38;
(* imulq  0x8(%rsi)                                #! EA = L0x7fffffffdee8; PC = 0x401d4c *)
smull rdx rax L0x7fffffffdee8 rax;
(* mov    %rax,%r9                                 #! PC = 0x401d50 *)
mov r9 rax;
(* mov    %rdx,%r10                                #! PC = 0x401d53 *)
mov r10 rdx;
(* mov    0x8(%rdi),%rax                           #! EA = L0x7fffffffdf38; Value = 0x0000000000000000; PC = 0x401d56 *)
mov rax L0x7fffffffdf38;
(* mov    %rax,%r11                                #! PC = 0x401d5a *)
mov r11 rax;
(* sar    $0x3f,%r11                               #! PC = 0x401d5d *)
and msb@uint64 r11 0x8000000000000000@uint64;
subc flag dontcare msb 1@uint64;
cmov r11 flag 0xffffffffffffffff@uint64 0@uint64;

assert true && or[and[flag = 0@1, r11 = 0@64],
		  and[flag = 1@1, r11 = 0xffffffffffffffff@64]];
assume (r11) * (flag - 1) = 0 && true;
assume (r11 - 0xffffffffffffffff) * (flag) = 0 && true;

(* mov    (%rsi),%r12                              #! EA = L0x7fffffffdee0; Value = 0x02f1d498675c8f58; PC = 0x401d61 *)
mov r12 L0x7fffffffdee0;
(* mul    %r12                                     #! PC = 0x401d64 *)
umull rdx rax r12 rax;
(* and    %r11,%r12                                #! PC = 0x401d67 *)
and r12@uint64 r11 r12;
(* add    %rax,%r8                                 #! PC = 0x401d6a *)
adds carry r8 rax r8;
(* adc    %rdx,%r9                                 #! PC = 0x401d6d *)
adcs carry r9 rdx r9 carry;
(* adc    $0x0,%r10                                #! PC = 0x401d70 *)
adcs carry r10 0@uint64 r10 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* sub    %r12,%r9                                 #! PC = 0x401d74 *)
subb carry r9 r9 r12;
(* sbb    $0x0,%r10                                #! PC = 0x401d77 *)
sbbs carry r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdee8; Value = 0x0000000000000001; PC = 0x401d7b *)
mov rax L0x7fffffffdee8;
(* mov    %rax,%rsi                                #! PC = 0x401d7f *)
mov rsi rax;
(* sar    $0x3f,%rsi                               #! PC = 0x401d82 *)
and msb@uint64 rsi 0x8000000000000000@uint64;
subc flag dontcare msb 1@uint64;
cmov rsi flag 0xffffffffffffffff@uint64 0@uint64;

assert true && or[and[flag = 0@1, rsi = 0@64],
		  and[flag = 1@1, rsi = 0xffffffffffffffff@64]];
assume (rsi) * (flag - 1) = 0 && true;
assume (rsi - 0xffffffffffffffff) * (flag) = 0 && true;

(* mov    (%rdi),%rdi                              #! EA = L0x7fffffffdf30; Value = 0x34367b50c0c98250; PC = 0x401d86 *)
mov rdi L0x7fffffffdf30;
(* mul    %rdi                                     #! PC = 0x401d89 *)
umull rdx rax rdi rax;
(* and    %rsi,%rdi                                #! PC = 0x401d8c *)
and rdi@uint64 rsi rdi;
(* add    %rax,%r8                                 #! PC = 0x401d8f *)
adds carry r8 rax r8;
(* adc    %rdx,%r9                                 #! PC = 0x401d92 *)
adcs carry r9 rdx r9 carry;
(* adc    $0x0,%r10                                #! PC = 0x401d95 *)
adcs carry r10 0@uint64 r10 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* sub    %rdi,%r9                                 #! PC = 0x401d99 *)
subb carry r9 r9 rdi;
(* sbb    $0x0,%r10                                #! PC = 0x401d9c *)
sbbs carry r10 r10 0x0@uint64 carry;
(* mov    $0x30,%rdi                               #! PC = 0x401da0 *)
mov rdi 0x30@uint64;
(* mov    $0x30,%rsi                               #! PC = 0x401da7 *)
mov rsi 0x30@uint64;
(* #add    0x38(%rsp),%rdi                          #! EA = L0x7fffffffdd78; Value = 0x00007fffffffdf10; PC = 0x401dae *)
#add    %%L0x7fffffffdd78,%%rdi                          #! L0x7fffffffdd78 = L0x7fffffffdd78; 0x00007fffffffdf10 = 0x00007fffffffdf10; 0x401dae = 0x401dae;
(* #add    0x40(%rsp),%rsi                          #! EA = L0x7fffffffdd80; Value = 0x00007fffffffded0; PC = 0x401db3 *)
#add    %%L0x7fffffffdd80,%%rsi                          #! L0x7fffffffdd80 = L0x7fffffffdd80; 0x00007fffffffded0 = 0x00007fffffffded0; 0x401db3 = 0x401db3;
(* mov    (%rdi),%rax                              #! EA = L0x7fffffffdf40; Value = 0x56b8d383d2e5b5b3; PC = 0x401db8 *)
mov rax L0x7fffffffdf40;
(* mulq   (%rsi)                                   #! EA = L0x7fffffffdf00; PC = 0x401dbb *)
umull rdx rax L0x7fffffffdf00 rax;
(* mov    %rax,%r11                                #! PC = 0x401dbe *)
mov r11 rax;
(* mov    %rdx,%r12                                #! PC = 0x401dc1 *)
mov r12 rdx;
(* mov    0x8(%rdi),%rax                           #! EA = L0x7fffffffdf48; Value = 0x0000000000000000; PC = 0x401dc4 *)
mov rax L0x7fffffffdf48;
(* imulq  0x8(%rsi)                                #! EA = L0x7fffffffdf08; PC = 0x401dc8 *)
smull rdx rax L0x7fffffffdf08 rax;
(* mov    %rax,%r13                                #! PC = 0x401dcc *)
mov r13 rax;
(* mov    %rdx,%r14                                #! PC = 0x401dcf *)
mov r14 rdx;
(* mov    0x8(%rdi),%rax                           #! EA = L0x7fffffffdf48; Value = 0x0000000000000000; PC = 0x401dd2 *)
mov rax L0x7fffffffdf48;
(* mov    %rax,%r15                                #! PC = 0x401dd6 *)
mov r15 rax;
(* sar    $0x3f,%r15                               #! PC = 0x401dd9 *)
and msb@uint64 r15 0x8000000000000000@uint64;
subc flag dontcare msb 1@uint64;
cmov r15 flag 0xffffffffffffffff@uint64 0@uint64;

assert true && or[and[flag = 0@1, r15 = 0@64],
		  and[flag = 1@1, r15 = 0xffffffffffffffff@64]];
assume (r15) * (flag - 1) = 0 && true;
assume (r15 - 0xffffffffffffffff) * (flag) = 0 && true;

(* mov    (%rsi),%rbx                              #! EA = L0x7fffffffdf00; Value = 0x5e05972aaa5def1b; PC = 0x401ddd *)
mov rbx L0x7fffffffdf00;
(* mul    %rbx                                     #! PC = 0x401de0 *)
umull rdx rax rbx rax;
(* and    %r15,%rbx                                #! PC = 0x401de3 *)
and rbx@uint64 r15 rbx;
(* add    %rax,%r12                                #! PC = 0x401de6 *)
adds carry r12 rax r12;
(* adc    %rdx,%r13                                #! PC = 0x401de9 *)
adcs carry r13 rdx r13 carry;
(* adc    $0x0,%r14                                #! PC = 0x401dec *)
adcs carry r14 0@uint64 r14 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* sub    %rbx,%r13                                #! PC = 0x401df0 *)
subb carry r13 r13 rbx;
(* sbb    $0x0,%r14                                #! PC = 0x401df3 *)
sbbs carry r14 r14 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdf08; Value = 0xfffffffffffffffe; PC = 0x401df7 *)
mov rax L0x7fffffffdf08;
(* mov    %rax,%rsi                                #! PC = 0x401dfb *)
mov rsi rax;
(* sar    $0x3f,%rsi                               #! PC = 0x401dfe *)
and msb@uint64 rsi 0x8000000000000000@uint64;
subc flag dontcare msb 1@uint64;
cmov rsi flag 0xffffffffffffffff@uint64 0@uint64;

assert true && or[and[flag = 0@1, rsi = 0@64],
		  and[flag = 1@1, rsi = 0xffffffffffffffff@64]];
assume (rsi) * (flag - 1) = 0 && true;
assume (rsi - 0xffffffffffffffff) * (flag) = 0 && true;

(* mov    (%rdi),%rdi                              #! EA = L0x7fffffffdf40; Value = 0x56b8d383d2e5b5b3; PC = 0x401e02 *)
mov rdi L0x7fffffffdf40;
(* mul    %rdi                                     #! PC = 0x401e05 *)
umull rdx rax rdi rax;
(* and    %rsi,%rdi                                #! PC = 0x401e08 *)
and rdi@uint64 rsi rdi;
(* add    %rax,%r12                                #! PC = 0x401e0b *)
adds carry r12 rax r12;
(* adc    %rdx,%r13                                #! PC = 0x401e0e *)
adcs carry r13 rdx r13 carry;
(* adc    $0x0,%r14                                #! PC = 0x401e11 *)
adcs carry r14 0@uint64 r14 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* sub    %rdi,%r13                                #! PC = 0x401e15 *)
subb carry r13 r13 rdi;
(* sbb    $0x0,%r14                                #! PC = 0x401e18 *)
sbbs carry r14 r14 0x0@uint64 carry;
(* add    %rcx,%r11                                #! PC = 0x401e1c *)
adds carry r11 rcx r11;
(* adc    %r8,%r12                                 #! PC = 0x401e1f *)
adcs carry r12 r8 r12 carry;
(* adc    %r9,%r13                                 #! PC = 0x401e22 *)
adcs carry r13 r9 r13 carry;
(* adc    %r10,%r14                                #! PC = 0x401e25 *)
adcs carry r14 r10 r14 carry;
(* mov    %r14,%rdi                                #! PC = 0x401e28 *)
mov rdi r14;
(* sar    $0x3f,%rdi                               #! PC = 0x401e2b *)
and msb@uint64 rdi 0x8000000000000000@uint64;
subc flag dontcare msb 1@uint64;
cmov rdi flag 0xffffffffffffffff@uint64 0@uint64;

assert true && or[and[flag = 0@1, rdi = 0@64],
		  and[flag = 1@1, rdi = 0xffffffffffffffff@64]];
assume (rdi) * (flag - 1) = 0 && true;
assume (rdi - 0xffffffffffffffff) * (flag) = 0 && true;

(* mov    $0xffffffffffffffed,%rsi                 #! PC = 0x401e2f *)
mov rsi 0xffffffffffffffed@uint64;
(* and    %rdi,%rsi                                #! PC = 0x401e36 *)
and rsi@uint64 rdi rsi;
(* movabs $0x7fffffffffffffff,%rdx                 #! PC = 0x401e39 *)
mov rdx 0x7fffffffffffffff@uint64;
(* and    %rdi,%rdx                                #! PC = 0x401e43 *)
and rdx@uint64 rdi rdx;
(* add    %rsi,%r11                                #! PC = 0x401e46 *)
adds carry r11 rsi r11;
(* adc    %rdi,%r12                                #! PC = 0x401e49 *)
adcs carry r12 rdi r12 carry;
(* adc    %rdi,%r13                                #! PC = 0x401e4c *)
adcs carry r13 rdi r13 carry;
(* adc    %rdx,%r14                                #! PC = 0x401e4f *)
adcs carry r14 rdx r14 carry;
(* #mov    0x48(%rsp),%rdi                          #! EA = L0x7fffffffdd88; Value = 0x00007fffffffdfb0; PC = 0x401e52 *)
#mov    %%L0x7fffffffdd88,%%rdi                          #! L0x7fffffffdd88 = L0x7fffffffdd88; 0x00007fffffffdfb0 = 0x00007fffffffdfb0; 0x401e52 = 0x401e52;
(* mov    %r11,(%rdi)                              #! EA = L0x7fffffffdfb0; PC = 0x401e57 *)
mov L0x7fffffffdfb0 r11;
(* mov    %r12,0x8(%rdi)                           #! EA = L0x7fffffffdfb8; PC = 0x401e5a *)
mov L0x7fffffffdfb8 r12;
(* mov    %r13,0x10(%rdi)                          #! EA = L0x7fffffffdfc0; PC = 0x401e5e *)
mov L0x7fffffffdfc0 r13;
(* mov    %r14,0x18(%rdi)                          #! EA = L0x7fffffffdfc8; PC = 0x401e62 *)
mov L0x7fffffffdfc8 r14;
(* #mov    (%rsp),%r11                              #! EA = L0x7fffffffdd40; Value = 0x0000000000000068; PC = 0x401e66 *)
#mov    %%L0x7fffffffdd40,%%r11                              #! L0x7fffffffdd40 = L0x7fffffffdd40; 0x0000000000000068 = 0x0000000000000068; 0x401e66 = 0x401e66;
(* #mov    0x8(%rsp),%r12                           #! EA = L0x7fffffffdd48; Value = 0x00007fffffffde10; PC = 0x401e6a *)
#mov    %%L0x7fffffffdd48,%%r12                           #! L0x7fffffffdd48 = L0x7fffffffdd48; 0x00007fffffffde10 = 0x00007fffffffde10; 0x401e6a = 0x401e6a;
(* #mov    0x10(%rsp),%r13                          #! EA = L0x7fffffffdd50; Value = 0x00007fffffffde30; PC = 0x401e6f *)
#mov    %%L0x7fffffffdd50,%%r13                          #! L0x7fffffffdd50 = L0x7fffffffdd50; 0x00007fffffffde30 = 0x00007fffffffde30; 0x401e6f = 0x401e6f;
(* #mov    0x18(%rsp),%r14                          #! EA = L0x7fffffffdd58; Value = 0x00007fffffffde50; PC = 0x401e74 *)
#mov    %%L0x7fffffffdd58,%%r14                          #! L0x7fffffffdd58 = L0x7fffffffdd58; 0x00007fffffffde50 = 0x00007fffffffde50; 0x401e74 = 0x401e74;
(* #mov    0x20(%rsp),%r15                          #! EA = L0x7fffffffdd60; Value = 0x0000000000000003; PC = 0x401e79 *)
#mov    %%L0x7fffffffdd60,%%r15                          #! L0x7fffffffdd60 = L0x7fffffffdd60; 0x0000000000000003 = 0x0000000000000003; 0x401e79 = 0x401e79;
(* #mov    0x28(%rsp),%rbx                          #! EA = L0x7fffffffdd68; Value = 0x00007fffffffde90; PC = 0x401e7e *)
#mov    %%L0x7fffffffdd68,%%rbx                          #! L0x7fffffffdd68 = L0x7fffffffdd68; 0x00007fffffffde90 = 0x00007fffffffde90; 0x401e7e = 0x401e7e;
(* #mov    0x30(%rsp),%rbp                          #! EA = L0x7fffffffdd70; Value = 0x00007fffffffde68; PC = 0x401e83 *)
#mov    %%L0x7fffffffdd70,%%rbp                          #! L0x7fffffffdd70 = L0x7fffffffdd70; 0x00007fffffffde68 = 0x00007fffffffde68; 0x401e83 = 0x401e83;
(* #add    %r11,%rsp                                #! PC = 0x401e88 *)
#add    %%r11,%%rsp                                #! 0x401e88 = 0x401e88;
(* #! <- SP = 0x7fffffffdda8 *)
#! 0x7fffffffdda8 = 0x7fffffffdda8;
(* #retq                                           #! PC = 0x401e8b *)
#retq                                           #! 0x401e8b = 0x401e8b;


mov c0 L0x7fffffffdf50; 
mov c1 L0x7fffffffdf58; 
mov c2 L0x7fffffffdf60; 
mov c3 L0x7fffffffdf68; 
mov c4 L0x7fffffffdf70; 
mov c5 L0x7fffffffdf78; 
mov c6 L0x7fffffffdf80; 
mov c7 L0x7fffffffdf88; 
mov c8 L0x7fffffffdf90; 
mov c9 L0x7fffffffdf98; 
mov c10 L0x7fffffffdfa0; 
mov c11 L0x7fffffffdfa8; 
mov c12 L0x7fffffffdfb0; 
mov c13 L0x7fffffffdfb8; 
mov c14 L0x7fffffffdfc0; 
mov c15 L0x7fffffffdfc8; 

{
  true
  &&
  and [
	eqmod 
	 (sext slimbs 64 [c0, c1, c2, c3] 64)
	 (sext slimbs 64 [x0, x1] 192) * (sext slimbs 64 [y0, y1] 192) + (sext slimbs 64 [x2, x3] 192) * (sext slimbs 64 [y4, y5] 192)
	 slimbs 64 [1@64, 0@64, 0@64, 0@64, 0@64],
	eqmod 
	 (sext slimbs 64 [c4, c5, c6, c7] 64)
	 (sext slimbs 64 [x0, x1] 192) * (sext slimbs 64 [y2, y3] 192) + (sext slimbs 64 [x2, x3] 192) * (sext slimbs 64 [y6, y7] 192)
	 slimbs 64 [1@64, 0@64, 0@64, 0@64, 0@64],
	eqmod 
	 (sext slimbs 64 [c8, c9, c10, c11] 64)
	 (sext slimbs 64 [x4, x5] 192) * (sext slimbs 64 [y0, y1] 192) + (sext slimbs 64 [x6, x7] 192) * (sext slimbs 64 [y4, y5] 192)
	 slimbs 64 [1@64, 0@64, 0@64, 0@64, 0@64],
	eqmod 
	 (sext slimbs 64 [c12, c13, c14, c15] 64)
	 (sext slimbs 64 [x4, x5] 192) * (sext slimbs 64 [y2, y3] 192) + (sext slimbs 64 [x6, x7] 192) * (sext slimbs 64 [y6, y7] 192)
	 slimbs 64 [1@64, 0@64, 0@64, 0@64, 0@64]
       ]
}

