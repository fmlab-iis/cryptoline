(* quine: -v -isafety -jobs 10 -no_carry_constraint -slicing mul_fp2.cl
Parsing Cryptoline file:                [OK]            0.021915 seconds
Checking well-formedness:               [OK]            0.005164 seconds
Transforming to SSA form:               [OK]            0.001370 seconds
Rewriting assignments:                  [OK]            0.082659 seconds
Verifying program safety:               [OK]            0.000194 seconds
Verifying range assertions:             [OK]            653.685133 seconds
Verifying range specification:          [OK]            19.581087 seconds
Rewriting value-preserved casting:      [OK]            0.000176 seconds
Verifying algebraic assertions:         [OK]            1.895329 seconds
Verifying algebraic specification:      [OK]            6.672937 seconds
Verification result:                    [OK]            681.948773 seconds
*)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 a5,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3, uint64 b4, uint64 b5,
           uint64 c0, uint64 c1, uint64 c2, uint64 c3, uint64 c4, uint64 c5,
           uint64 d0, uint64 d1, uint64 d2, uint64 d3, uint64 d4, uint64 d5,
           uint64 m0, uint64 m1, uint64 m2, uint64 m3, uint64 m4, uint64 m5,
           uint64 n,
           uint64 I) =
{
  and [
    m0 = 0xb9feffffffffaaab, m1 = 0x1eabfffeb153ffff,
    m2 = 0x6730d2a0f6b0f624, m3 = 0x64774b84f38512bf,
    m4 = 0x4b1ba7b6434bacd7, m5 = 0x1a0111ea397fe69a,
    eqmod m0 1 2,
    eqmod (1 + m0 * n) 0 (2**64)
  ]
&&
  and [
    m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
    m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
    m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64,
    add 1@64 (mul m0 n) = 0@64,
    limbs 64 [a0, a1, a2, a3, a4, a5] <u limbs 64 [m0, m1, m2, m3, m4, m5],
    limbs 64 [b0, b1, b2, b3, b4, b5] <u limbs 64 [m0, m1, m2, m3, m4, m5],
    limbs 64 [c0, c1, c2, c3, c4, c5] <u limbs 64 [m0, m1, m2, m3, m4, m5],
    limbs 64 [d0, d1, d2, d3, d4, d5] <u limbs 64 [m0, m1, m2, m3, m4, m5]
  ]
}

mov L0x7fffffffe028 a0;
mov L0x7fffffffe030 a1;
mov L0x7fffffffe038 a2;
mov L0x7fffffffe040 a3;
mov L0x7fffffffe048 a4;
mov L0x7fffffffe050 a5;
mov L0x7fffffffe058 b0;
mov L0x7fffffffe060 b1;
mov L0x7fffffffe068 b2;
mov L0x7fffffffe070 b3;
mov L0x7fffffffe078 b4;
mov L0x7fffffffe080 b5;

mov L0x7fffffffdfc8 c0;
mov L0x7fffffffdfd0 c1;
mov L0x7fffffffdfd8 c2;
mov L0x7fffffffdfe0 c3;
mov L0x7fffffffdfe8 c4;
mov L0x7fffffffdff0 c5;
mov L0x7fffffffdff8 d0;
mov L0x7fffffffe000 d1;
mov L0x7fffffffe008 d2;
mov L0x7fffffffe010 d3;
mov L0x7fffffffe018 d4;
mov L0x7fffffffe020 d5;

mov L0x5555555658e0 m0;
mov L0x5555555658e8 m1;
mov L0x5555555658f0 m2;
mov L0x5555555658f8 m3;
mov L0x555555565900 m4;
mov L0x555555565908 m5;

mov L0x7fffffffdd50 n;

(* mov    (%rbx),%rax                              #! EA = L0x7fffffffe028; Value = 0x0000000000000000; PC = 0x93824992270980 *)
mov rax L0x7fffffffe028;
(* mov    %rax,%rbp                                #! PC = 0x93824992270983 *)
mov rbp rax;
(* mulq   (%rsi)                                   #! EA = L0x7fffffffdfc8; PC = 0x93824992270986 *)
umull rdx rax L0x7fffffffdfc8 rax;
(* mov    %rax,(%rdi)                              #! EA = L0x7fffffffdd78; PC = 0x93824992270989 *)
mov L0x7fffffffdd78 rax;
(* mov    %rbp,%rax                                #! PC = 0x93824992270992 *)
mov rax rbp;
(* mov    %rdx,%rcx                                #! PC = 0x93824992270995 *)
mov rcx rdx;
(* mulq   0x8(%rsi)                                #! EA = L0x7fffffffdfd0; PC = 0x93824992270998 *)
umull rdx rax L0x7fffffffdfd0 rax;
(* add    %rax,%rcx                                #! PC = 0x93824992271002 *)
adds carry rcx rax rcx;
(* mov    %rbp,%rax                                #! PC = 0x93824992271005 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271008 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992271012 *)
mov r8 rdx;
(* mulq   0x10(%rsi)                               #! EA = L0x7fffffffdfd8; PC = 0x93824992271015 *)
umull rdx rax L0x7fffffffdfd8 rax;
(* add    %rax,%r8                                 #! PC = 0x93824992271019 *)
adds carry r8 rax r8;
(* mov    %rbp,%rax                                #! PC = 0x93824992271022 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271025 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992271029 *)
mov r9 rdx;
(* mulq   0x18(%rsi)                               #! EA = L0x7fffffffdfe0; PC = 0x93824992271032 *)
umull rdx rax L0x7fffffffdfe0 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992271036 *)
adds carry r9 rax r9;
(* mov    %rbp,%rax                                #! PC = 0x93824992271039 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271042 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992271046 *)
mov r10 rdx;
(* mulq   0x20(%rsi)                               #! EA = L0x7fffffffdfe8; PC = 0x93824992271049 *)
umull rdx rax L0x7fffffffdfe8 rax;
(* add    %rax,%r10                                #! PC = 0x93824992271053 *)
adds carry r10 rax r10;
(* mov    %rbp,%rax                                #! PC = 0x93824992271056 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271059 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992271063 *)
mov r11 rdx;
(* mulq   0x28(%rsi)                               #! EA = L0x7fffffffdff0; PC = 0x93824992271066 *)
umull rdx rax L0x7fffffffdff0 rax;
(* add    %rax,%r11                                #! PC = 0x93824992271070 *)
adds carry r11 rax r11;
(* mov    0x8(%rbx),%rax                           #! EA = L0x7fffffffe030; Value = 0x0000555555554040; PC = 0x93824992271073 *)
mov rax L0x7fffffffe030;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271077 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r12                                #! PC = 0x93824992271081 *)
mov r12 rdx;
(* mov    %rax,%rbp                                #! PC = 0x93824992271084 *)
mov rbp rax;
(* mulq   (%rsi)                                   #! EA = L0x7fffffffdfc8; PC = 0x93824992271087 *)
umull rdx rax L0x7fffffffdfc8 rax;
(* add    %rax,%rcx                                #! PC = 0x93824992271090 *)
adds carry rcx rax rcx;
(* mov    %rbp,%rax                                #! PC = 0x93824992271093 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271096 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rcx,0x8(%rdi)                           #! EA = L0x7fffffffdd80; PC = 0x93824992271100 *)
mov L0x7fffffffdd80 rcx;
(* mov    %rdx,%rcx                                #! PC = 0x93824992271104 *)
mov rcx rdx;
(* mulq   0x8(%rsi)                                #! EA = L0x7fffffffdfd0; PC = 0x93824992271107 *)
umull rdx rax L0x7fffffffdfd0 rax;
(* add    %rax,%r8                                 #! PC = 0x93824992271111 *)
adds carry r8 rax r8;
(* mov    %rbp,%rax                                #! PC = 0x93824992271114 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271117 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r8,%rcx                                 #! PC = 0x93824992271121 *)
adds carry rcx r8 rcx;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271124 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992271128 *)
mov r8 rdx;
(* mulq   0x10(%rsi)                               #! EA = L0x7fffffffdfd8; PC = 0x93824992271131 *)
umull rdx rax L0x7fffffffdfd8 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992271135 *)
adds carry r9 rax r9;
(* mov    %rbp,%rax                                #! PC = 0x93824992271138 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271141 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r9,%r8                                  #! PC = 0x93824992271145 *)
adds carry r8 r9 r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271148 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992271152 *)
mov r9 rdx;
(* mulq   0x18(%rsi)                               #! EA = L0x7fffffffdfe0; PC = 0x93824992271155 *)
umull rdx rax L0x7fffffffdfe0 rax;
(* add    %rax,%r10                                #! PC = 0x93824992271159 *)
adds carry r10 rax r10;
(* mov    %rbp,%rax                                #! PC = 0x93824992271162 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271165 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r10,%r9                                 #! PC = 0x93824992271169 *)
adds carry r9 r10 r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271172 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992271176 *)
mov r10 rdx;
(* mulq   0x20(%rsi)                               #! EA = L0x7fffffffdfe8; PC = 0x93824992271179 *)
umull rdx rax L0x7fffffffdfe8 rax;
(* add    %rax,%r11                                #! PC = 0x93824992271183 *)
adds carry r11 rax r11;
(* mov    %rbp,%rax                                #! PC = 0x93824992271186 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271189 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r10                                #! PC = 0x93824992271193 *)
adds carry r10 r11 r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271196 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992271200 *)
mov r11 rdx;
(* mulq   0x28(%rsi)                               #! EA = L0x7fffffffdff0; PC = 0x93824992271203 *)
umull rdx rax L0x7fffffffdff0 rax;
(* add    %rax,%r12                                #! PC = 0x93824992271207 *)
adds carry r12 rax r12;
(* mov    0x10(%rbx),%rax                          #! EA = L0x7fffffffe038; Value = 0x0000000000f0b5ff; PC = 0x93824992271210 *)
mov rax L0x7fffffffe038;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271214 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r12,%r11                                #! PC = 0x93824992271218 *)
adds carry r11 r12 r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271221 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r12                                #! PC = 0x93824992271225 *)
mov r12 rdx;
(* mov    %rax,%rbp                                #! PC = 0x93824992271228 *)
mov rbp rax;
(* mulq   (%rsi)                                   #! EA = L0x7fffffffdfc8; PC = 0x93824992271231 *)
umull rdx rax L0x7fffffffdfc8 rax;
(* add    %rax,%rcx                                #! PC = 0x93824992271234 *)
adds carry rcx rax rcx;
(* mov    %rbp,%rax                                #! PC = 0x93824992271237 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271240 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rcx,0x10(%rdi)                          #! EA = L0x7fffffffdd88; PC = 0x93824992271244 *)
mov L0x7fffffffdd88 rcx;
(* mov    %rdx,%rcx                                #! PC = 0x93824992271248 *)
mov rcx rdx;
(* mulq   0x8(%rsi)                                #! EA = L0x7fffffffdfd0; PC = 0x93824992271251 *)
umull rdx rax L0x7fffffffdfd0 rax;
(* add    %rax,%r8                                 #! PC = 0x93824992271255 *)
adds carry r8 rax r8;
(* mov    %rbp,%rax                                #! PC = 0x93824992271258 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271261 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r8,%rcx                                 #! PC = 0x93824992271265 *)
adds carry rcx r8 rcx;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271268 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992271272 *)
mov r8 rdx;
(* mulq   0x10(%rsi)                               #! EA = L0x7fffffffdfd8; PC = 0x93824992271275 *)
umull rdx rax L0x7fffffffdfd8 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992271279 *)
adds carry r9 rax r9;
(* mov    %rbp,%rax                                #! PC = 0x93824992271282 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271285 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r9,%r8                                  #! PC = 0x93824992271289 *)
adds carry r8 r9 r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271292 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992271296 *)
mov r9 rdx;
(* mulq   0x18(%rsi)                               #! EA = L0x7fffffffdfe0; PC = 0x93824992271299 *)
umull rdx rax L0x7fffffffdfe0 rax;
(* add    %rax,%r10                                #! PC = 0x93824992271303 *)
adds carry r10 rax r10;
(* mov    %rbp,%rax                                #! PC = 0x93824992271306 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271309 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r10,%r9                                 #! PC = 0x93824992271313 *)
adds carry r9 r10 r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271316 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992271320 *)
mov r10 rdx;
(* mulq   0x20(%rsi)                               #! EA = L0x7fffffffdfe8; PC = 0x93824992271323 *)
umull rdx rax L0x7fffffffdfe8 rax;
(* add    %rax,%r11                                #! PC = 0x93824992271327 *)
adds carry r11 rax r11;
(* mov    %rbp,%rax                                #! PC = 0x93824992271330 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271333 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r10                                #! PC = 0x93824992271337 *)
adds carry r10 r11 r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271340 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992271344 *)
mov r11 rdx;
(* mulq   0x28(%rsi)                               #! EA = L0x7fffffffdff0; PC = 0x93824992271347 *)
umull rdx rax L0x7fffffffdff0 rax;
(* add    %rax,%r12                                #! PC = 0x93824992271351 *)
adds carry r12 rax r12;
(* mov    0x18(%rbx),%rax                          #! EA = L0x7fffffffe040; Value = 0x00000000000000c2; PC = 0x93824992271354 *)
mov rax L0x7fffffffe040;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271358 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r12,%r11                                #! PC = 0x93824992271362 *)
adds carry r11 r12 r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271365 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r12                                #! PC = 0x93824992271369 *)
mov r12 rdx;
(* mov    %rax,%rbp                                #! PC = 0x93824992271372 *)
mov rbp rax;
(* mulq   (%rsi)                                   #! EA = L0x7fffffffdfc8; PC = 0x93824992271375 *)
umull rdx rax L0x7fffffffdfc8 rax;
(* add    %rax,%rcx                                #! PC = 0x93824992271378 *)
adds carry rcx rax rcx;
(* mov    %rbp,%rax                                #! PC = 0x93824992271381 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271384 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rcx,0x18(%rdi)                          #! EA = L0x7fffffffdd90; PC = 0x93824992271388 *)
mov L0x7fffffffdd90 rcx;
(* mov    %rdx,%rcx                                #! PC = 0x93824992271392 *)
mov rcx rdx;
(* mulq   0x8(%rsi)                                #! EA = L0x7fffffffdfd0; PC = 0x93824992271395 *)
umull rdx rax L0x7fffffffdfd0 rax;
(* add    %rax,%r8                                 #! PC = 0x93824992271399 *)
adds carry r8 rax r8;
(* mov    %rbp,%rax                                #! PC = 0x93824992271402 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271405 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r8,%rcx                                 #! PC = 0x93824992271409 *)
adds carry rcx r8 rcx;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271412 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992271416 *)
mov r8 rdx;
(* mulq   0x10(%rsi)                               #! EA = L0x7fffffffdfd8; PC = 0x93824992271419 *)
umull rdx rax L0x7fffffffdfd8 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992271423 *)
adds carry r9 rax r9;
(* mov    %rbp,%rax                                #! PC = 0x93824992271426 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271429 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r9,%r8                                  #! PC = 0x93824992271433 *)
adds carry r8 r9 r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271436 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992271440 *)
mov r9 rdx;
(* mulq   0x18(%rsi)                               #! EA = L0x7fffffffdfe0; PC = 0x93824992271443 *)
umull rdx rax L0x7fffffffdfe0 rax;
(* add    %rax,%r10                                #! PC = 0x93824992271447 *)
adds carry r10 rax r10;
(* mov    %rbp,%rax                                #! PC = 0x93824992271450 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271453 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r10,%r9                                 #! PC = 0x93824992271457 *)
adds carry r9 r10 r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271460 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992271464 *)
mov r10 rdx;
(* mulq   0x20(%rsi)                               #! EA = L0x7fffffffdfe8; PC = 0x93824992271467 *)
umull rdx rax L0x7fffffffdfe8 rax;
(* add    %rax,%r11                                #! PC = 0x93824992271471 *)
adds carry r11 rax r11;
(* mov    %rbp,%rax                                #! PC = 0x93824992271474 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271477 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r10                                #! PC = 0x93824992271481 *)
adds carry r10 r11 r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271484 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992271488 *)
mov r11 rdx;
(* mulq   0x28(%rsi)                               #! EA = L0x7fffffffdff0; PC = 0x93824992271491 *)
umull rdx rax L0x7fffffffdff0 rax;
(* add    %rax,%r12                                #! PC = 0x93824992271495 *)
adds carry r12 rax r12;
(* mov    0x20(%rbx),%rax                          #! EA = L0x7fffffffe048; Value = 0x00007fffffffe077; PC = 0x93824992271498 *)
mov rax L0x7fffffffe048;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271502 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r12,%r11                                #! PC = 0x93824992271506 *)
adds carry r11 r12 r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271509 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r12                                #! PC = 0x93824992271513 *)
mov r12 rdx;
(* mov    %rax,%rbp                                #! PC = 0x93824992271516 *)
mov rbp rax;
(* mulq   (%rsi)                                   #! EA = L0x7fffffffdfc8; PC = 0x93824992271519 *)
umull rdx rax L0x7fffffffdfc8 rax;
(* add    %rax,%rcx                                #! PC = 0x93824992271522 *)
adds carry rcx rax rcx;
(* mov    %rbp,%rax                                #! PC = 0x93824992271525 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271528 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rcx,0x20(%rdi)                          #! EA = L0x7fffffffdd98; PC = 0x93824992271532 *)
mov L0x7fffffffdd98 rcx;
(* mov    %rdx,%rcx                                #! PC = 0x93824992271536 *)
mov rcx rdx;
(* mulq   0x8(%rsi)                                #! EA = L0x7fffffffdfd0; PC = 0x93824992271539 *)
umull rdx rax L0x7fffffffdfd0 rax;
(* add    %rax,%r8                                 #! PC = 0x93824992271543 *)
adds carry r8 rax r8;
(* mov    %rbp,%rax                                #! PC = 0x93824992271546 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271549 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r8,%rcx                                 #! PC = 0x93824992271553 *)
adds carry rcx r8 rcx;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271556 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992271560 *)
mov r8 rdx;
(* mulq   0x10(%rsi)                               #! EA = L0x7fffffffdfd8; PC = 0x93824992271563 *)
umull rdx rax L0x7fffffffdfd8 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992271567 *)
adds carry r9 rax r9;
(* mov    %rbp,%rax                                #! PC = 0x93824992271570 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271573 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r9,%r8                                  #! PC = 0x93824992271577 *)
adds carry r8 r9 r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271580 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992271584 *)
mov r9 rdx;
(* mulq   0x18(%rsi)                               #! EA = L0x7fffffffdfe0; PC = 0x93824992271587 *)
umull rdx rax L0x7fffffffdfe0 rax;
(* add    %rax,%r10                                #! PC = 0x93824992271591 *)
adds carry r10 rax r10;
(* mov    %rbp,%rax                                #! PC = 0x93824992271594 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271597 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r10,%r9                                 #! PC = 0x93824992271601 *)
adds carry r9 r10 r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271604 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992271608 *)
mov r10 rdx;
(* mulq   0x20(%rsi)                               #! EA = L0x7fffffffdfe8; PC = 0x93824992271611 *)
umull rdx rax L0x7fffffffdfe8 rax;
(* add    %rax,%r11                                #! PC = 0x93824992271615 *)
adds carry r11 rax r11;
(* mov    %rbp,%rax                                #! PC = 0x93824992271618 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271621 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r10                                #! PC = 0x93824992271625 *)
adds carry r10 r11 r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271628 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992271632 *)
mov r11 rdx;
(* mulq   0x28(%rsi)                               #! EA = L0x7fffffffdff0; PC = 0x93824992271635 *)
umull rdx rax L0x7fffffffdff0 rax;
(* add    %rax,%r12                                #! PC = 0x93824992271639 *)
adds carry r12 rax r12;
(* mov    0x28(%rbx),%rax                          #! EA = L0x7fffffffe050; Value = 0x00007fffffffe076; PC = 0x93824992271642 *)
mov rax L0x7fffffffe050;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271646 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r12,%r11                                #! PC = 0x93824992271650 *)
adds carry r11 r12 r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271653 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r12                                #! PC = 0x93824992271657 *)
mov r12 rdx;
(* mov    %rax,%rbp                                #! PC = 0x93824992271660 *)
mov rbp rax;
(* mulq   (%rsi)                                   #! EA = L0x7fffffffdfc8; PC = 0x93824992271663 *)
umull rdx rax L0x7fffffffdfc8 rax;
(* add    %rax,%rcx                                #! PC = 0x93824992271666 *)
adds carry rcx rax rcx;
(* mov    %rbp,%rax                                #! PC = 0x93824992271669 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271672 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rcx,0x28(%rdi)                          #! EA = L0x7fffffffdda0; PC = 0x93824992271676 *)
mov L0x7fffffffdda0 rcx;
(* mov    %rdx,%rcx                                #! PC = 0x93824992271680 *)
mov rcx rdx;
(* mulq   0x8(%rsi)                                #! EA = L0x7fffffffdfd0; PC = 0x93824992271683 *)
umull rdx rax L0x7fffffffdfd0 rax;
(* add    %rax,%r8                                 #! PC = 0x93824992271687 *)
adds carry r8 rax r8;
(* mov    %rbp,%rax                                #! PC = 0x93824992271690 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271693 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r8,%rcx                                 #! PC = 0x93824992271697 *)
adds carry rcx r8 rcx;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271700 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992271704 *)
mov r8 rdx;
(* mulq   0x10(%rsi)                               #! EA = L0x7fffffffdfd8; PC = 0x93824992271707 *)
umull rdx rax L0x7fffffffdfd8 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992271711 *)
adds carry r9 rax r9;
(* mov    %rbp,%rax                                #! PC = 0x93824992271714 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271717 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r9,%r8                                  #! PC = 0x93824992271721 *)
adds carry r8 r9 r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271724 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992271728 *)
mov r9 rdx;
(* mulq   0x18(%rsi)                               #! EA = L0x7fffffffdfe0; PC = 0x93824992271731 *)
umull rdx rax L0x7fffffffdfe0 rax;
(* add    %rax,%r10                                #! PC = 0x93824992271735 *)
adds carry r10 rax r10;
(* mov    %rbp,%rax                                #! PC = 0x93824992271738 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271741 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r10,%r9                                 #! PC = 0x93824992271745 *)
adds carry r9 r10 r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271748 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992271752 *)
mov r10 rdx;
(* mulq   0x20(%rsi)                               #! EA = L0x7fffffffdfe8; PC = 0x93824992271755 *)
umull rdx rax L0x7fffffffdfe8 rax;
(* add    %rax,%r11                                #! PC = 0x93824992271759 *)
adds carry r11 rax r11;
(* mov    %rbp,%rax                                #! PC = 0x93824992271762 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271765 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r10                                #! PC = 0x93824992271769 *)
adds carry r10 r11 r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271772 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992271776 *)
mov r11 rdx;
(* mulq   0x28(%rsi)                               #! EA = L0x7fffffffdff0; PC = 0x93824992271779 *)
umull rdx rax L0x7fffffffdff0 rax;
(* add    %rax,%r12                                #! PC = 0x93824992271783 *)
adds carry r12 rax r12;
(* mov    %rax,%rax                                #! PC = 0x93824992271786 *)
mov rax rax;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271789 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r12,%r11                                #! PC = 0x93824992271793 *)
adds carry r11 r12 r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271796 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r12                                #! PC = 0x93824992271800 *)
mov r12 rdx;
(* mov    %rcx,0x30(%rdi)                          #! EA = L0x7fffffffdda8; PC = 0x93824992271803 *)
mov L0x7fffffffdda8 rcx;
(* mov    %r8,0x38(%rdi)                           #! EA = L0x7fffffffddb0; PC = 0x93824992271807 *)
mov L0x7fffffffddb0 r8;
(* mov    %r9,0x40(%rdi)                           #! EA = L0x7fffffffddb8; PC = 0x93824992271811 *)
mov L0x7fffffffddb8 r9;
(* mov    %r10,0x48(%rdi)                          #! EA = L0x7fffffffddc0; PC = 0x93824992271815 *)
mov L0x7fffffffddc0 r10;
(* mov    %r11,0x50(%rdi)                          #! EA = L0x7fffffffddc8; PC = 0x93824992271819 *)
mov L0x7fffffffddc8 r11;
(* mov    %r12,0x58(%rdi)                          #! EA = L0x7fffffffddd0; PC = 0x93824992271823 *)
mov L0x7fffffffddd0 r12;


assert ((limbs 64 [a0, a1, a2, a3, a4, a5]) *
        (limbs 64 [c0, c1, c2, c3, c4, c5])) =
       (limbs 64 [L0x7fffffffdd78, L0x7fffffffdd80, L0x7fffffffdd88, L0x7fffffffdd90,
                  L0x7fffffffdd98, L0x7fffffffdda0, L0x7fffffffdda8, L0x7fffffffddb0,
                  L0x7fffffffddb8, L0x7fffffffddc0, L0x7fffffffddc8, L0x7fffffffddd0])
    && true;


(* #repz retq                                      #! PC = 0x93824992271827 *)
#repz retq                                      #! 0x93824992271827 = 0x93824992271827;
(* #lea    0x30(%rbx),%rbx                          #! PC = 0x93824992269690 *)
#lea    %%EA,%%rbx                          #! 0x93824992269690 = 0x93824992269690;
(* #lea    0x30(%rsi),%rsi                          #! PC = 0x93824992269694 *)
#lea    %%EA,%%rsi                          #! 0x93824992269694 = 0x93824992269694;
(* #lea    0x88(%rsp),%rdi                          #! PC = 0x93824992269698 *)
#lea    %%EA,%%rdi                          #! 0x93824992269698 = 0x93824992269698;
(* #callq  0x55555555da80 <__mulq_384>             #! PC = 0x93824992269706 *)
#callq  0x55555555da80 <__mulq_384>             #! 0x93824992269706 = 0x93824992269706;
(* mov    (%rbx),%rax                              #! EA = L0x7fffffffe058; Value = 0x000055555556338d; PC = 0x93824992270980 *)
mov rax L0x7fffffffe058;
(* mov    %rax,%rbp                                #! PC = 0x93824992270983 *)
mov rbp rax;
(* mulq   (%rsi)                                   #! EA = L0x7fffffffdff8; PC = 0x93824992270986 *)
umull rdx rax L0x7fffffffdff8 rax;
(* mov    %rax,(%rdi)                              #! EA = L0x7fffffffddd8; PC = 0x93824992270989 *)
mov L0x7fffffffddd8 rax;
(* mov    %rbp,%rax                                #! PC = 0x93824992270992 *)
mov rax rbp;
(* mov    %rdx,%rcx                                #! PC = 0x93824992270995 *)
mov rcx rdx;
(* mulq   0x8(%rsi)                                #! EA = L0x7fffffffe000; PC = 0x93824992270998 *)
umull rdx rax L0x7fffffffe000 rax;
(* add    %rax,%rcx                                #! PC = 0x93824992271002 *)
adds carry rcx rax rcx;
(* mov    %rbp,%rax                                #! PC = 0x93824992271005 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271008 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992271012 *)
mov r8 rdx;
(* mulq   0x10(%rsi)                               #! EA = L0x7fffffffe008; PC = 0x93824992271015 *)
umull rdx rax L0x7fffffffe008 rax;
(* add    %rax,%r8                                 #! PC = 0x93824992271019 *)
adds carry r8 rax r8;
(* mov    %rbp,%rax                                #! PC = 0x93824992271022 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271025 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992271029 *)
mov r9 rdx;
(* mulq   0x18(%rsi)                               #! EA = L0x7fffffffe010; PC = 0x93824992271032 *)
umull rdx rax L0x7fffffffe010 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992271036 *)
adds carry r9 rax r9;
(* mov    %rbp,%rax                                #! PC = 0x93824992271039 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271042 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992271046 *)
mov r10 rdx;
(* mulq   0x20(%rsi)                               #! EA = L0x7fffffffe018; PC = 0x93824992271049 *)
umull rdx rax L0x7fffffffe018 rax;
(* add    %rax,%r10                                #! PC = 0x93824992271053 *)
adds carry r10 rax r10;
(* mov    %rbp,%rax                                #! PC = 0x93824992271056 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271059 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992271063 *)
mov r11 rdx;
(* mulq   0x28(%rsi)                               #! EA = L0x7fffffffe020; PC = 0x93824992271066 *)
umull rdx rax L0x7fffffffe020 rax;
(* add    %rax,%r11                                #! PC = 0x93824992271070 *)
adds carry r11 rax r11;
(* mov    0x8(%rbx),%rax                           #! EA = L0x7fffffffe060; Value = 0x00007ffff7fb7fc8; PC = 0x93824992271073 *)
mov rax L0x7fffffffe060;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271077 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r12                                #! PC = 0x93824992271081 *)
mov r12 rdx;
(* mov    %rax,%rbp                                #! PC = 0x93824992271084 *)
mov rbp rax;
(* mulq   (%rsi)                                   #! EA = L0x7fffffffdff8; PC = 0x93824992271087 *)
umull rdx rax L0x7fffffffdff8 rax;
(* add    %rax,%rcx                                #! PC = 0x93824992271090 *)
adds carry rcx rax rcx;
(* mov    %rbp,%rax                                #! PC = 0x93824992271093 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271096 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rcx,0x8(%rdi)                           #! EA = L0x7fffffffdde0; PC = 0x93824992271100 *)
mov L0x7fffffffdde0 rcx;
(* mov    %rdx,%rcx                                #! PC = 0x93824992271104 *)
mov rcx rdx;
(* mulq   0x8(%rsi)                                #! EA = L0x7fffffffe000; PC = 0x93824992271107 *)
umull rdx rax L0x7fffffffe000 rax;
(* add    %rax,%r8                                 #! PC = 0x93824992271111 *)
adds carry r8 rax r8;
(* mov    %rbp,%rax                                #! PC = 0x93824992271114 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271117 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r8,%rcx                                 #! PC = 0x93824992271121 *)
adds carry rcx r8 rcx;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271124 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992271128 *)
mov r8 rdx;
(* mulq   0x10(%rsi)                               #! EA = L0x7fffffffe008; PC = 0x93824992271131 *)
umull rdx rax L0x7fffffffe008 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992271135 *)
adds carry r9 rax r9;
(* mov    %rbp,%rax                                #! PC = 0x93824992271138 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271141 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r9,%r8                                  #! PC = 0x93824992271145 *)
adds carry r8 r9 r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271148 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992271152 *)
mov r9 rdx;
(* mulq   0x18(%rsi)                               #! EA = L0x7fffffffe010; PC = 0x93824992271155 *)
umull rdx rax L0x7fffffffe010 rax;
(* add    %rax,%r10                                #! PC = 0x93824992271159 *)
adds carry r10 rax r10;
(* mov    %rbp,%rax                                #! PC = 0x93824992271162 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271165 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r10,%r9                                 #! PC = 0x93824992271169 *)
adds carry r9 r10 r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271172 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992271176 *)
mov r10 rdx;
(* mulq   0x20(%rsi)                               #! EA = L0x7fffffffe018; PC = 0x93824992271179 *)
umull rdx rax L0x7fffffffe018 rax;
(* add    %rax,%r11                                #! PC = 0x93824992271183 *)
adds carry r11 rax r11;
(* mov    %rbp,%rax                                #! PC = 0x93824992271186 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271189 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r10                                #! PC = 0x93824992271193 *)
adds carry r10 r11 r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271196 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992271200 *)
mov r11 rdx;
(* mulq   0x28(%rsi)                               #! EA = L0x7fffffffe020; PC = 0x93824992271203 *)
umull rdx rax L0x7fffffffe020 rax;
(* add    %rax,%r12                                #! PC = 0x93824992271207 *)
adds carry r12 rax r12;
(* mov    0x10(%rbx),%rax                          #! EA = L0x7fffffffe068; Value = 0x0000555555563340; PC = 0x93824992271210 *)
mov rax L0x7fffffffe068;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271214 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r12,%r11                                #! PC = 0x93824992271218 *)
adds carry r11 r12 r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271221 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r12                                #! PC = 0x93824992271225 *)
mov r12 rdx;
(* mov    %rax,%rbp                                #! PC = 0x93824992271228 *)
mov rbp rax;
(* mulq   (%rsi)                                   #! EA = L0x7fffffffdff8; PC = 0x93824992271231 *)
umull rdx rax L0x7fffffffdff8 rax;
(* add    %rax,%rcx                                #! PC = 0x93824992271234 *)
adds carry rcx rax rcx;
(* mov    %rbp,%rax                                #! PC = 0x93824992271237 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271240 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rcx,0x10(%rdi)                          #! EA = L0x7fffffffdde8; PC = 0x93824992271244 *)
mov L0x7fffffffdde8 rcx;
(* mov    %rdx,%rcx                                #! PC = 0x93824992271248 *)
mov rcx rdx;
(* mulq   0x8(%rsi)                                #! EA = L0x7fffffffe000; PC = 0x93824992271251 *)
umull rdx rax L0x7fffffffe000 rax;
(* add    %rax,%r8                                 #! PC = 0x93824992271255 *)
adds carry r8 rax r8;
(* mov    %rbp,%rax                                #! PC = 0x93824992271258 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271261 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r8,%rcx                                 #! PC = 0x93824992271265 *)
adds carry rcx r8 rcx;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271268 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992271272 *)
mov r8 rdx;
(* mulq   0x10(%rsi)                               #! EA = L0x7fffffffe008; PC = 0x93824992271275 *)
umull rdx rax L0x7fffffffe008 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992271279 *)
adds carry r9 rax r9;
(* mov    %rbp,%rax                                #! PC = 0x93824992271282 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271285 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r9,%r8                                  #! PC = 0x93824992271289 *)
adds carry r8 r9 r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271292 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992271296 *)
mov r9 rdx;
(* mulq   0x18(%rsi)                               #! EA = L0x7fffffffe010; PC = 0x93824992271299 *)
umull rdx rax L0x7fffffffe010 rax;
(* add    %rax,%r10                                #! PC = 0x93824992271303 *)
adds carry r10 rax r10;
(* mov    %rbp,%rax                                #! PC = 0x93824992271306 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271309 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r10,%r9                                 #! PC = 0x93824992271313 *)
adds carry r9 r10 r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271316 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992271320 *)
mov r10 rdx;
(* mulq   0x20(%rsi)                               #! EA = L0x7fffffffe018; PC = 0x93824992271323 *)
umull rdx rax L0x7fffffffe018 rax;
(* add    %rax,%r11                                #! PC = 0x93824992271327 *)
adds carry r11 rax r11;
(* mov    %rbp,%rax                                #! PC = 0x93824992271330 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271333 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r10                                #! PC = 0x93824992271337 *)
adds carry r10 r11 r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271340 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992271344 *)
mov r11 rdx;
(* mulq   0x28(%rsi)                               #! EA = L0x7fffffffe020; PC = 0x93824992271347 *)
umull rdx rax L0x7fffffffe020 rax;
(* add    %rax,%r12                                #! PC = 0x93824992271351 *)
adds carry r12 rax r12;
(* mov    0x18(%rbx),%rax                          #! EA = L0x7fffffffe070; Value = 0x0000000000000000; PC = 0x93824992271354 *)
mov rax L0x7fffffffe070;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271358 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r12,%r11                                #! PC = 0x93824992271362 *)
adds carry r11 r12 r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271365 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r12                                #! PC = 0x93824992271369 *)
mov r12 rdx;
(* mov    %rax,%rbp                                #! PC = 0x93824992271372 *)
mov rbp rax;
(* mulq   (%rsi)                                   #! EA = L0x7fffffffdff8; PC = 0x93824992271375 *)
umull rdx rax L0x7fffffffdff8 rax;
(* add    %rax,%rcx                                #! PC = 0x93824992271378 *)
adds carry rcx rax rcx;
(* mov    %rbp,%rax                                #! PC = 0x93824992271381 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271384 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rcx,0x18(%rdi)                          #! EA = L0x7fffffffddf0; PC = 0x93824992271388 *)
mov L0x7fffffffddf0 rcx;
(* mov    %rdx,%rcx                                #! PC = 0x93824992271392 *)
mov rcx rdx;
(* mulq   0x8(%rsi)                                #! EA = L0x7fffffffe000; PC = 0x93824992271395 *)
umull rdx rax L0x7fffffffe000 rax;
(* add    %rax,%r8                                 #! PC = 0x93824992271399 *)
adds carry r8 rax r8;
(* mov    %rbp,%rax                                #! PC = 0x93824992271402 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271405 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r8,%rcx                                 #! PC = 0x93824992271409 *)
adds carry rcx r8 rcx;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271412 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992271416 *)
mov r8 rdx;
(* mulq   0x10(%rsi)                               #! EA = L0x7fffffffe008; PC = 0x93824992271419 *)
umull rdx rax L0x7fffffffe008 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992271423 *)
adds carry r9 rax r9;
(* mov    %rbp,%rax                                #! PC = 0x93824992271426 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271429 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r9,%r8                                  #! PC = 0x93824992271433 *)
adds carry r8 r9 r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271436 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992271440 *)
mov r9 rdx;
(* mulq   0x18(%rsi)                               #! EA = L0x7fffffffe010; PC = 0x93824992271443 *)
umull rdx rax L0x7fffffffe010 rax;
(* add    %rax,%r10                                #! PC = 0x93824992271447 *)
adds carry r10 rax r10;
(* mov    %rbp,%rax                                #! PC = 0x93824992271450 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271453 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r10,%r9                                 #! PC = 0x93824992271457 *)
adds carry r9 r10 r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271460 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992271464 *)
mov r10 rdx;
(* mulq   0x20(%rsi)                               #! EA = L0x7fffffffe018; PC = 0x93824992271467 *)
umull rdx rax L0x7fffffffe018 rax;
(* add    %rax,%r11                                #! PC = 0x93824992271471 *)
adds carry r11 rax r11;
(* mov    %rbp,%rax                                #! PC = 0x93824992271474 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271477 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r10                                #! PC = 0x93824992271481 *)
adds carry r10 r11 r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271484 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992271488 *)
mov r11 rdx;
(* mulq   0x28(%rsi)                               #! EA = L0x7fffffffe020; PC = 0x93824992271491 *)
umull rdx rax L0x7fffffffe020 rax;
(* add    %rax,%r12                                #! PC = 0x93824992271495 *)
adds carry r12 rax r12;
(* mov    0x20(%rbx),%rax                          #! EA = L0x7fffffffe078; Value = 0x0000555555555100; PC = 0x93824992271498 *)
mov rax L0x7fffffffe078;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271502 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r12,%r11                                #! PC = 0x93824992271506 *)
adds carry r11 r12 r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271509 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r12                                #! PC = 0x93824992271513 *)
mov r12 rdx;
(* mov    %rax,%rbp                                #! PC = 0x93824992271516 *)
mov rbp rax;
(* mulq   (%rsi)                                   #! EA = L0x7fffffffdff8; PC = 0x93824992271519 *)
umull rdx rax L0x7fffffffdff8 rax;
(* add    %rax,%rcx                                #! PC = 0x93824992271522 *)
adds carry rcx rax rcx;
(* mov    %rbp,%rax                                #! PC = 0x93824992271525 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271528 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rcx,0x20(%rdi)                          #! EA = L0x7fffffffddf8; PC = 0x93824992271532 *)
mov L0x7fffffffddf8 rcx;
(* mov    %rdx,%rcx                                #! PC = 0x93824992271536 *)
mov rcx rdx;
(* mulq   0x8(%rsi)                                #! EA = L0x7fffffffe000; PC = 0x93824992271539 *)
umull rdx rax L0x7fffffffe000 rax;
(* add    %rax,%r8                                 #! PC = 0x93824992271543 *)
adds carry r8 rax r8;
(* mov    %rbp,%rax                                #! PC = 0x93824992271546 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271549 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r8,%rcx                                 #! PC = 0x93824992271553 *)
adds carry rcx r8 rcx;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271556 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992271560 *)
mov r8 rdx;
(* mulq   0x10(%rsi)                               #! EA = L0x7fffffffe008; PC = 0x93824992271563 *)
umull rdx rax L0x7fffffffe008 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992271567 *)
adds carry r9 rax r9;
(* mov    %rbp,%rax                                #! PC = 0x93824992271570 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271573 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r9,%r8                                  #! PC = 0x93824992271577 *)
adds carry r8 r9 r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271580 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992271584 *)
mov r9 rdx;
(* mulq   0x18(%rsi)                               #! EA = L0x7fffffffe010; PC = 0x93824992271587 *)
umull rdx rax L0x7fffffffe010 rax;
(* add    %rax,%r10                                #! PC = 0x93824992271591 *)
adds carry r10 rax r10;
(* mov    %rbp,%rax                                #! PC = 0x93824992271594 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271597 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r10,%r9                                 #! PC = 0x93824992271601 *)
adds carry r9 r10 r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271604 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992271608 *)
mov r10 rdx;
(* mulq   0x20(%rsi)                               #! EA = L0x7fffffffe018; PC = 0x93824992271611 *)
umull rdx rax L0x7fffffffe018 rax;
(* add    %rax,%r11                                #! PC = 0x93824992271615 *)
adds carry r11 rax r11;
(* mov    %rbp,%rax                                #! PC = 0x93824992271618 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271621 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r10                                #! PC = 0x93824992271625 *)
adds carry r10 r11 r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271628 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992271632 *)
mov r11 rdx;
(* mulq   0x28(%rsi)                               #! EA = L0x7fffffffe020; PC = 0x93824992271635 *)
umull rdx rax L0x7fffffffe020 rax;
(* add    %rax,%r12                                #! PC = 0x93824992271639 *)
adds carry r12 rax r12;
(* mov    0x28(%rbx),%rax                          #! EA = L0x7fffffffe080; Value = 0x00007fffffffe180; PC = 0x93824992271642 *)
mov rax L0x7fffffffe080;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271646 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r12,%r11                                #! PC = 0x93824992271650 *)
adds carry r11 r12 r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271653 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r12                                #! PC = 0x93824992271657 *)
mov r12 rdx;
(* mov    %rax,%rbp                                #! PC = 0x93824992271660 *)
mov rbp rax;
(* mulq   (%rsi)                                   #! EA = L0x7fffffffdff8; PC = 0x93824992271663 *)
umull rdx rax L0x7fffffffdff8 rax;
(* add    %rax,%rcx                                #! PC = 0x93824992271666 *)
adds carry rcx rax rcx;
(* mov    %rbp,%rax                                #! PC = 0x93824992271669 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271672 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rcx,0x28(%rdi)                          #! EA = L0x7fffffffde00; PC = 0x93824992271676 *)
mov L0x7fffffffde00 rcx;
(* mov    %rdx,%rcx                                #! PC = 0x93824992271680 *)
mov rcx rdx;
(* mulq   0x8(%rsi)                                #! EA = L0x7fffffffe000; PC = 0x93824992271683 *)
umull rdx rax L0x7fffffffe000 rax;
(* add    %rax,%r8                                 #! PC = 0x93824992271687 *)
adds carry r8 rax r8;
(* mov    %rbp,%rax                                #! PC = 0x93824992271690 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271693 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r8,%rcx                                 #! PC = 0x93824992271697 *)
adds carry rcx r8 rcx;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271700 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992271704 *)
mov r8 rdx;
(* mulq   0x10(%rsi)                               #! EA = L0x7fffffffe008; PC = 0x93824992271707 *)
umull rdx rax L0x7fffffffe008 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992271711 *)
adds carry r9 rax r9;
(* mov    %rbp,%rax                                #! PC = 0x93824992271714 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271717 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r9,%r8                                  #! PC = 0x93824992271721 *)
adds carry r8 r9 r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271724 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992271728 *)
mov r9 rdx;
(* mulq   0x18(%rsi)                               #! EA = L0x7fffffffe010; PC = 0x93824992271731 *)
umull rdx rax L0x7fffffffe010 rax;
(* add    %rax,%r10                                #! PC = 0x93824992271735 *)
adds carry r10 rax r10;
(* mov    %rbp,%rax                                #! PC = 0x93824992271738 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271741 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r10,%r9                                 #! PC = 0x93824992271745 *)
adds carry r9 r10 r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271748 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992271752 *)
mov r10 rdx;
(* mulq   0x20(%rsi)                               #! EA = L0x7fffffffe018; PC = 0x93824992271755 *)
umull rdx rax L0x7fffffffe018 rax;
(* add    %rax,%r11                                #! PC = 0x93824992271759 *)
adds carry r11 rax r11;
(* mov    %rbp,%rax                                #! PC = 0x93824992271762 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271765 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r10                                #! PC = 0x93824992271769 *)
adds carry r10 r11 r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271772 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992271776 *)
mov r11 rdx;
(* mulq   0x28(%rsi)                               #! EA = L0x7fffffffe020; PC = 0x93824992271779 *)
umull rdx rax L0x7fffffffe020 rax;
(* add    %rax,%r12                                #! PC = 0x93824992271783 *)
adds carry r12 rax r12;
(* mov    %rax,%rax                                #! PC = 0x93824992271786 *)
mov rax rax;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271789 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r12,%r11                                #! PC = 0x93824992271793 *)
adds carry r11 r12 r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271796 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r12                                #! PC = 0x93824992271800 *)
mov r12 rdx;
(* mov    %rcx,0x30(%rdi)                          #! EA = L0x7fffffffde08; PC = 0x93824992271803 *)
mov L0x7fffffffde08 rcx;
(* mov    %r8,0x38(%rdi)                           #! EA = L0x7fffffffde10; PC = 0x93824992271807 *)
mov L0x7fffffffde10 r8;
(* mov    %r9,0x40(%rdi)                           #! EA = L0x7fffffffde18; PC = 0x93824992271811 *)
mov L0x7fffffffde18 r9;
(* mov    %r10,0x48(%rdi)                          #! EA = L0x7fffffffde20; PC = 0x93824992271815 *)
mov L0x7fffffffde20 r10;
(* mov    %r11,0x50(%rdi)                          #! EA = L0x7fffffffde28; PC = 0x93824992271819 *)
mov L0x7fffffffde28 r11;
(* mov    %r12,0x58(%rdi)                          #! EA = L0x7fffffffde30; PC = 0x93824992271823 *)
mov L0x7fffffffde30 r12;


assert ((limbs 64 [b0, b1, b2, b3, b4, b5]) *
        (limbs 64 [d0, d1, d2, d3, d4, d5])) =
	(limbs 64 [L0x7fffffffddd8, L0x7fffffffdde0, L0x7fffffffdde8, L0x7fffffffddf0,
                  L0x7fffffffddf8, L0x7fffffffde00, L0x7fffffffde08, L0x7fffffffde10,
                  L0x7fffffffde18, L0x7fffffffde20, L0x7fffffffde28, L0x7fffffffde30])    
	&& true;


(* #repz retq                                      #! PC = 0x93824992271827 *)
#repz retq                                      #! 0x93824992271827 = 0x93824992271827;
(* mov    0x8(%rsp),%rcx                           #! EA = L0x7fffffffdd58; Value = 0x00005555555658e0; PC = 0x93824992269711 *)
#mov rcx L0x7fffffffdd58;
(* #lea    -0x30(%rsi),%rdx                         #! PC = 0x93824992269716 *)
#lea    -%%EA,%%rdx                         #! 0x93824992269716 = 0x93824992269716;
(* #lea    0x118(%rsp),%rdi                         #! PC = 0x93824992269720 *)
#lea    %%EA,%%rdi                         #! 0x93824992269720 = 0x93824992269720;
(* #callq  0x55555555d400 <__add_mod_384>          #! PC = 0x93824992269728 *)
#callq  0x55555555d400 <__add_mod_384>          #! 0x93824992269728 = 0x93824992269728;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffdff8; Value = 0x0000000000000000; PC = 0x93824992269316 *)
mov r8 L0x7fffffffdff8;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffe000; Value = 0x0000000000000000; PC = 0x93824992269319 *)
mov r9 L0x7fffffffe000;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffe008; Value = 0x0000000000000000; PC = 0x93824992269323 *)
mov r10 L0x7fffffffe008;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffe010; Value = 0x0000000000000000; PC = 0x93824992269327 *)
mov r11 L0x7fffffffe010;
(* mov    0x20(%rsi),%r12                          #! EA = L0x7fffffffe018; Value = 0x0000000000000000; PC = 0x93824992269331 *)
mov r12 L0x7fffffffe018;
(* mov    0x28(%rsi),%r13                          #! EA = L0x7fffffffe020; Value = 0x0000000000000000; PC = 0x93824992269335 *)
mov r13 L0x7fffffffe020;
(* add    (%rdx),%r8                               #! EA = L0x7fffffffdfc8; Value = 0x000009c0000009c0; PC = 0x93824992269339 *)
adds carry r8 L0x7fffffffdfc8 r8;
(* adc    0x8(%rdx),%r9                            #! EA = L0x7fffffffdfd0; Value = 0x0000000000000000; PC = 0x93824992269342 *)
adcs carry r9 L0x7fffffffdfd0 r9 carry;
(* adc    0x10(%rdx),%r10                          #! EA = L0x7fffffffdfd8; Value = 0x0000004000000100; PC = 0x93824992269346 *)
adcs carry r10 L0x7fffffffdfd8 r10 carry;
(* mov    %r8,%r14                                 #! PC = 0x93824992269350 *)
mov r14 r8;
(* adc    0x18(%rdx),%r11                          #! EA = L0x7fffffffdfe0; Value = 0x0000004000000000; PC = 0x93824992269353 *)
adcs carry r11 L0x7fffffffdfe0 r11 carry;
(* mov    %r9,%r15                                 #! PC = 0x93824992269357 *)
mov r15 r9;
(* adc    0x20(%rdx),%r12                          #! EA = L0x7fffffffdfe8; Value = 0x0000040000000200; PC = 0x93824992269360 *)
adcs carry r12 L0x7fffffffdfe8 r12 carry;
(* mov    %r10,%rax                                #! PC = 0x93824992269364 *)
mov rax r10;
(* adc    0x28(%rdx),%r13                          #! EA = L0x7fffffffdff0; Value = 0x0000000000000000; PC = 0x93824992269367 *)
adcs carry r13 L0x7fffffffdff0 r13 carry;
(* mov    %r11,%rbx                                #! PC = 0x93824992269371 *)
mov rbx r11;
(* sbb    %rdx,%rdx                                #! PC = 0x93824992269374 *)
sbbs carry rdx rdx rdx carry;
(* sub    (%rcx),%r8                               #! EA = L0x5555555658e0; Value = 0xb9feffffffffaaab; PC = 0x93824992269377 *)
subb carry r8 r8 L0x5555555658e0;
(* sbb    0x8(%rcx),%r9                            #! EA = L0x5555555658e8; Value = 0x1eabfffeb153ffff; PC = 0x93824992269380 *)
sbbs carry r9 r9 L0x5555555658e8 carry;
(* mov    %r12,%rbp                                #! PC = 0x93824992269384 *)
mov rbp r12;
(* sbb    0x10(%rcx),%r10                          #! EA = L0x5555555658f0; Value = 0x6730d2a0f6b0f624; PC = 0x93824992269387 *)
sbbs carry r10 r10 L0x5555555658f0 carry;
(* sbb    0x18(%rcx),%r11                          #! EA = L0x5555555658f8; Value = 0x64774b84f38512bf; PC = 0x93824992269391 *)
sbbs carry r11 r11 L0x5555555658f8 carry;
(* sbb    0x20(%rcx),%r12                          #! EA = L0x555555565900; Value = 0x4b1ba7b6434bacd7; PC = 0x93824992269395 *)
sbbs carry r12 r12 L0x555555565900 carry;
(* mov    %r13,%rsi                                #! PC = 0x93824992269399 *)
mov rsi r13;
(* sbb    0x28(%rcx),%r13                          #! EA = L0x555555565908; Value = 0x1a0111ea397fe69a; PC = 0x93824992269402 *)
sbbs carry r13 r13 L0x555555565908 carry;
(* sbb    $0x0,%rdx                                #! PC = 0x93824992269406 *)
sbbs carry rdx rdx 0@uint64 carry;
(* cmovb  %r14,%r8                                 #! PC = 0x93824992269410 *)
cmov r8 carry r14 r8;
(* cmovb  %r15,%r9                                 #! PC = 0x93824992269414 *)
cmov r9 carry r15 r9;
(* cmovb  %rax,%r10                                #! PC = 0x93824992269418 *)
cmov r10 carry rax r10;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffde68; PC = 0x93824992269422 *)
mov L0x7fffffffde68 r8;
(* cmovb  %rbx,%r11                                #! PC = 0x93824992269425 *)
cmov r11 carry rbx r11;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffde70; PC = 0x93824992269429 *)
mov L0x7fffffffde70 r9;
(* cmovb  %rbp,%r12                                #! PC = 0x93824992269433 *)
cmov r12 carry rbp r12;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffde78; PC = 0x93824992269437 *)
mov L0x7fffffffde78 r10;
(* cmovb  %rsi,%r13                                #! PC = 0x93824992269441 *)
cmov r13 carry rsi r13;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffde80; PC = 0x93824992269445 *)
mov L0x7fffffffde80 r11;
(* mov    %r12,0x20(%rdi)                          #! EA = L0x7fffffffde88; PC = 0x93824992269449 *)
mov L0x7fffffffde88 r12;
(* mov    %r13,0x28(%rdi)                          #! EA = L0x7fffffffde90; PC = 0x93824992269453 *)
mov L0x7fffffffde90 r13;


assert true
    && eqmod (limbs 64 [L0x7fffffffde68, L0x7fffffffde70, L0x7fffffffde78,
                        L0x7fffffffde80, L0x7fffffffde88, L0x7fffffffde90])
             ((limbs 64 [c0, c1, c2, c3, c4, c5]) +
              (limbs 64 [d0, d1, d2, d3, d4, d5]))
             (limbs 64 [m0, m1, m2, m3, m4, m5]);

assume eqmod (limbs 64 [L0x7fffffffde68, L0x7fffffffde70, L0x7fffffffde78,
                        L0x7fffffffde80, L0x7fffffffde88, L0x7fffffffde90])
             ((limbs 64 [c0, c1, c2, c3, c4, c5]) +
              (limbs 64 [d0, d1, d2, d3, d4, d5]))
             (limbs 64 [m0, m1, m2, m3, m4, m5]) && true;


(* #repz retq                                      #! PC = 0x93824992269457 *)
#repz retq                                      #! 0x93824992269457 = 0x93824992269457;
(* mov    0x10(%rsp),%rsi                          #! EA = L0x7fffffffdd60; Value = 0x00007fffffffe028; PC = 0x93824992269733 *)
#mov rsi L0x7fffffffdd60;
(* #lea    0x30(%rsi),%rdx                          #! PC = 0x93824992269738 *)
#lea    %%EA,%%rdx                          #! 0x93824992269738 = 0x93824992269738;
(* #lea    -0x30(%rdi),%rdi                         #! PC = 0x93824992269742 *)
#lea    -%%EA,%%rdi                         #! 0x93824992269742 = 0x93824992269742;
(* #callq  0x55555555d400 <__add_mod_384>          #! PC = 0x93824992269746 *)
#callq  0x55555555d400 <__add_mod_384>          #! 0x93824992269746 = 0x93824992269746;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffe028; Value = 0x0000000000000000; PC = 0x93824992269316 *)
mov r8 L0x7fffffffe028;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffe030; Value = 0x0000555555554040; PC = 0x93824992269319 *)
mov r9 L0x7fffffffe030;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffe038; Value = 0x0000000000f0b5ff; PC = 0x93824992269323 *)
mov r10 L0x7fffffffe038;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffe040; Value = 0x00000000000000c2; PC = 0x93824992269327 *)
mov r11 L0x7fffffffe040;
(* mov    0x20(%rsi),%r12                          #! EA = L0x7fffffffe048; Value = 0x00007fffffffe077; PC = 0x93824992269331 *)
mov r12 L0x7fffffffe048;
(* mov    0x28(%rsi),%r13                          #! EA = L0x7fffffffe050; Value = 0x00007fffffffe076; PC = 0x93824992269335 *)
mov r13 L0x7fffffffe050;
(* add    (%rdx),%r8                               #! EA = L0x7fffffffe058; Value = 0x000055555556338d; PC = 0x93824992269339 *)
adds carry r8 L0x7fffffffe058 r8;
(* adc    0x8(%rdx),%r9                            #! EA = L0x7fffffffe060; Value = 0x00007ffff7fb7fc8; PC = 0x93824992269342 *)
adcs carry r9 L0x7fffffffe060 r9 carry;
(* adc    0x10(%rdx),%r10                          #! EA = L0x7fffffffe068; Value = 0x0000555555563340; PC = 0x93824992269346 *)
adcs carry r10 L0x7fffffffe068 r10 carry;
(* mov    %r8,%r14                                 #! PC = 0x93824992269350 *)
mov r14 r8;
(* adc    0x18(%rdx),%r11                          #! EA = L0x7fffffffe070; Value = 0x0000000000000000; PC = 0x93824992269353 *)
adcs carry r11 L0x7fffffffe070 r11 carry;
(* mov    %r9,%r15                                 #! PC = 0x93824992269357 *)
mov r15 r9;
(* adc    0x20(%rdx),%r12                          #! EA = L0x7fffffffe078; Value = 0x0000555555555100; PC = 0x93824992269360 *)
adcs carry r12 L0x7fffffffe078 r12 carry;
(* mov    %r10,%rax                                #! PC = 0x93824992269364 *)
mov rax r10;
(* adc    0x28(%rdx),%r13                          #! EA = L0x7fffffffe080; Value = 0x00007fffffffe180; PC = 0x93824992269367 *)
adcs carry r13 L0x7fffffffe080 r13 carry;
(* mov    %r11,%rbx                                #! PC = 0x93824992269371 *)
mov rbx r11;
(* sbb    %rdx,%rdx                                #! PC = 0x93824992269374 *)
sbbs carry rdx rdx rdx carry;
(* sub    (%rcx),%r8                               #! EA = L0x5555555658e0; Value = 0xb9feffffffffaaab; PC = 0x93824992269377 *)
subb carry r8 r8 L0x5555555658e0;
(* sbb    0x8(%rcx),%r9                            #! EA = L0x5555555658e8; Value = 0x1eabfffeb153ffff; PC = 0x93824992269380 *)
sbbs carry r9 r9 L0x5555555658e8 carry;
(* mov    %r12,%rbp                                #! PC = 0x93824992269384 *)
mov rbp r12;
(* sbb    0x10(%rcx),%r10                          #! EA = L0x5555555658f0; Value = 0x6730d2a0f6b0f624; PC = 0x93824992269387 *)
sbbs carry r10 r10 L0x5555555658f0 carry;
(* sbb    0x18(%rcx),%r11                          #! EA = L0x5555555658f8; Value = 0x64774b84f38512bf; PC = 0x93824992269391 *)
sbbs carry r11 r11 L0x5555555658f8 carry;
(* sbb    0x20(%rcx),%r12                          #! EA = L0x555555565900; Value = 0x4b1ba7b6434bacd7; PC = 0x93824992269395 *)
sbbs carry r12 r12 L0x555555565900 carry;
(* mov    %r13,%rsi                                #! PC = 0x93824992269399 *)
mov rsi r13;
(* sbb    0x28(%rcx),%r13                          #! EA = L0x555555565908; Value = 0x1a0111ea397fe69a; PC = 0x93824992269402 *)
sbbs carry r13 r13 L0x555555565908 carry;
(* sbb    $0x0,%rdx                                #! PC = 0x93824992269406 *)
sbbs carry rdx rdx 0@uint64 carry;
(* cmovb  %r14,%r8                                 #! PC = 0x93824992269410 *)
cmov r8 carry r14 r8;
(* cmovb  %r15,%r9                                 #! PC = 0x93824992269414 *)
cmov r9 carry r15 r9;
(* cmovb  %rax,%r10                                #! PC = 0x93824992269418 *)
cmov r10 carry rax r10;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffde38; PC = 0x93824992269422 *)
mov L0x7fffffffde38 r8;
(* cmovb  %rbx,%r11                                #! PC = 0x93824992269425 *)
cmov r11 carry rbx r11;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffde40; PC = 0x93824992269429 *)
mov L0x7fffffffde40 r9;
(* cmovb  %rbp,%r12                                #! PC = 0x93824992269433 *)
cmov r12 carry rbp r12;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffde48; PC = 0x93824992269437 *)
mov L0x7fffffffde48 r10;
(* cmovb  %rsi,%r13                                #! PC = 0x93824992269441 *)
cmov r13 carry rsi r13;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffde50; PC = 0x93824992269445 *)
mov L0x7fffffffde50 r11;
(* mov    %r12,0x20(%rdi)                          #! EA = L0x7fffffffde58; PC = 0x93824992269449 *)
mov L0x7fffffffde58 r12;
(* mov    %r13,0x28(%rdi)                          #! EA = L0x7fffffffde60; PC = 0x93824992269453 *)
mov L0x7fffffffde60 r13;


assert true
    && eqmod (limbs 64 [L0x7fffffffde38, L0x7fffffffde40, L0x7fffffffde48,
                        L0x7fffffffde50, L0x7fffffffde58, L0x7fffffffde60])
             ((limbs 64 [a0, a1, a2, a3, a4, a5]) +
              (limbs 64 [b0, b1, b2, b3, b4, b5]))
             (limbs 64 [m0, m1, m2, m3, m4, m5]);

assume eqmod (limbs 64 [L0x7fffffffde38, L0x7fffffffde40, L0x7fffffffde48,
                        L0x7fffffffde50, L0x7fffffffde58, L0x7fffffffde60])
             ((limbs 64 [a0, a1, a2, a3, a4, a5]) +
              (limbs 64 [b0, b1, b2, b3, b4, b5]))
             (limbs 64 [m0, m1, m2, m3, m4, m5]) && true;


(* #repz retq                                      #! PC = 0x93824992269457 *)
#repz retq                                      #! 0x93824992269457 = 0x93824992269457;
(* #lea    (%rdi),%rbx                              #! PC = 0x93824992269751 *)
#lea    %%EA,%%rbx                              #! 0x93824992269751 = 0x93824992269751;
(* #lea    0x30(%rdi),%rsi                          #! PC = 0x93824992269754 *)
#lea    %%EA,%%rsi                          #! 0x93824992269754 = 0x93824992269754;
(* #callq  0x55555555da80 <__mulq_384>             #! PC = 0x93824992269758 *)
#callq  0x55555555da80 <__mulq_384>             #! 0x93824992269758 = 0x93824992269758;
(* mov    (%rbx),%rax                              #! EA = L0x7fffffffde38; Value = 0x000055555556338d; PC = 0x93824992270980 *)
mov rax L0x7fffffffde38;
(* mov    %rax,%rbp                                #! PC = 0x93824992270983 *)
mov rbp rax;
(* mulq   (%rsi)                                   #! EA = L0x7fffffffde68; PC = 0x93824992270986 *)
umull rdx rax L0x7fffffffde68 rax;
(* mov    %rax,(%rdi)                              #! EA = L0x7fffffffde38; PC = 0x93824992270989 *)
mov L0x7fffffffde38 rax;
(* mov    %rbp,%rax                                #! PC = 0x93824992270992 *)
mov rax rbp;
(* mov    %rdx,%rcx                                #! PC = 0x93824992270995 *)
mov rcx rdx;
(* mulq   0x8(%rsi)                                #! EA = L0x7fffffffde70; PC = 0x93824992270998 *)
umull rdx rax L0x7fffffffde70 rax;
(* add    %rax,%rcx                                #! PC = 0x93824992271002 *)
adds carry rcx rax rcx;
(* mov    %rbp,%rax                                #! PC = 0x93824992271005 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271008 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992271012 *)
mov r8 rdx;
(* mulq   0x10(%rsi)                               #! EA = L0x7fffffffde78; PC = 0x93824992271015 *)
umull rdx rax L0x7fffffffde78 rax;
(* add    %rax,%r8                                 #! PC = 0x93824992271019 *)
adds carry r8 rax r8;
(* mov    %rbp,%rax                                #! PC = 0x93824992271022 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271025 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992271029 *)
mov r9 rdx;
(* mulq   0x18(%rsi)                               #! EA = L0x7fffffffde80; PC = 0x93824992271032 *)
umull rdx rax L0x7fffffffde80 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992271036 *)
adds carry r9 rax r9;
(* mov    %rbp,%rax                                #! PC = 0x93824992271039 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271042 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992271046 *)
mov r10 rdx;
(* mulq   0x20(%rsi)                               #! EA = L0x7fffffffde88; PC = 0x93824992271049 *)
umull rdx rax L0x7fffffffde88 rax;
(* add    %rax,%r10                                #! PC = 0x93824992271053 *)
adds carry r10 rax r10;
(* mov    %rbp,%rax                                #! PC = 0x93824992271056 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271059 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992271063 *)
mov r11 rdx;
(* mulq   0x28(%rsi)                               #! EA = L0x7fffffffde90; PC = 0x93824992271066 *)
umull rdx rax L0x7fffffffde90 rax;
(* add    %rax,%r11                                #! PC = 0x93824992271070 *)
adds carry r11 rax r11;
(* mov    0x8(%rbx),%rax                           #! EA = L0x7fffffffde40; Value = 0x0000d5554d50c008; PC = 0x93824992271073 *)
mov rax L0x7fffffffde40;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271077 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r12                                #! PC = 0x93824992271081 *)
mov r12 rdx;
(* mov    %rax,%rbp                                #! PC = 0x93824992271084 *)
mov rbp rax;
(* mulq   (%rsi)                                   #! EA = L0x7fffffffde68; PC = 0x93824992271087 *)
umull rdx rax L0x7fffffffde68 rax;
(* add    %rax,%rcx                                #! PC = 0x93824992271090 *)
adds carry rcx rax rcx;
(* mov    %rbp,%rax                                #! PC = 0x93824992271093 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271096 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rcx,0x8(%rdi)                           #! EA = L0x7fffffffde40; PC = 0x93824992271100 *)
mov L0x7fffffffde40 rcx;
(* mov    %rdx,%rcx                                #! PC = 0x93824992271104 *)
mov rcx rdx;
(* mulq   0x8(%rsi)                                #! EA = L0x7fffffffde70; PC = 0x93824992271107 *)
umull rdx rax L0x7fffffffde70 rax;
(* add    %rax,%r8                                 #! PC = 0x93824992271111 *)
adds carry r8 rax r8;
(* mov    %rbp,%rax                                #! PC = 0x93824992271114 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271117 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r8,%rcx                                 #! PC = 0x93824992271121 *)
adds carry rcx r8 rcx;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271124 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992271128 *)
mov r8 rdx;
(* mulq   0x10(%rsi)                               #! EA = L0x7fffffffde78; PC = 0x93824992271131 *)
umull rdx rax L0x7fffffffde78 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992271135 *)
adds carry r9 rax r9;
(* mov    %rbp,%rax                                #! PC = 0x93824992271138 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271141 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r9,%r8                                  #! PC = 0x93824992271145 *)
adds carry r8 r9 r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271148 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992271152 *)
mov r9 rdx;
(* mulq   0x18(%rsi)                               #! EA = L0x7fffffffde80; PC = 0x93824992271155 *)
umull rdx rax L0x7fffffffde80 rax;
(* add    %rax,%r10                                #! PC = 0x93824992271159 *)
adds carry r10 rax r10;
(* mov    %rbp,%rax                                #! PC = 0x93824992271162 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271165 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r10,%r9                                 #! PC = 0x93824992271169 *)
adds carry r9 r10 r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271172 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992271176 *)
mov r10 rdx;
(* mulq   0x20(%rsi)                               #! EA = L0x7fffffffde88; PC = 0x93824992271179 *)
umull rdx rax L0x7fffffffde88 rax;
(* add    %rax,%r11                                #! PC = 0x93824992271183 *)
adds carry r11 rax r11;
(* mov    %rbp,%rax                                #! PC = 0x93824992271186 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271189 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r10                                #! PC = 0x93824992271193 *)
adds carry r10 r11 r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271196 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992271200 *)
mov r11 rdx;
(* mulq   0x28(%rsi)                               #! EA = L0x7fffffffde90; PC = 0x93824992271203 *)
umull rdx rax L0x7fffffffde90 rax;
(* add    %rax,%r12                                #! PC = 0x93824992271207 *)
adds carry r12 rax r12;
(* mov    0x10(%rbx),%rax                          #! EA = L0x7fffffffde48; Value = 0x000055555646e93f; PC = 0x93824992271210 *)
mov rax L0x7fffffffde48;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271214 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r12,%r11                                #! PC = 0x93824992271218 *)
adds carry r11 r12 r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271221 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r12                                #! PC = 0x93824992271225 *)
mov r12 rdx;
(* mov    %rax,%rbp                                #! PC = 0x93824992271228 *)
mov rbp rax;
(* mulq   (%rsi)                                   #! EA = L0x7fffffffde68; PC = 0x93824992271231 *)
umull rdx rax L0x7fffffffde68 rax;
(* add    %rax,%rcx                                #! PC = 0x93824992271234 *)
adds carry rcx rax rcx;
(* mov    %rbp,%rax                                #! PC = 0x93824992271237 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271240 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rcx,0x10(%rdi)                          #! EA = L0x7fffffffde48; PC = 0x93824992271244 *)
mov L0x7fffffffde48 rcx;
(* mov    %rdx,%rcx                                #! PC = 0x93824992271248 *)
mov rcx rdx;
(* mulq   0x8(%rsi)                                #! EA = L0x7fffffffde70; PC = 0x93824992271251 *)
umull rdx rax L0x7fffffffde70 rax;
(* add    %rax,%r8                                 #! PC = 0x93824992271255 *)
adds carry r8 rax r8;
(* mov    %rbp,%rax                                #! PC = 0x93824992271258 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271261 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r8,%rcx                                 #! PC = 0x93824992271265 *)
adds carry rcx r8 rcx;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271268 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992271272 *)
mov r8 rdx;
(* mulq   0x10(%rsi)                               #! EA = L0x7fffffffde78; PC = 0x93824992271275 *)
umull rdx rax L0x7fffffffde78 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992271279 *)
adds carry r9 rax r9;
(* mov    %rbp,%rax                                #! PC = 0x93824992271282 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271285 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r9,%r8                                  #! PC = 0x93824992271289 *)
adds carry r8 r9 r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271292 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992271296 *)
mov r9 rdx;
(* mulq   0x18(%rsi)                               #! EA = L0x7fffffffde80; PC = 0x93824992271299 *)
umull rdx rax L0x7fffffffde80 rax;
(* add    %rax,%r10                                #! PC = 0x93824992271303 *)
adds carry r10 rax r10;
(* mov    %rbp,%rax                                #! PC = 0x93824992271306 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271309 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r10,%r9                                 #! PC = 0x93824992271313 *)
adds carry r9 r10 r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271316 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992271320 *)
mov r10 rdx;
(* mulq   0x20(%rsi)                               #! EA = L0x7fffffffde88; PC = 0x93824992271323 *)
umull rdx rax L0x7fffffffde88 rax;
(* add    %rax,%r11                                #! PC = 0x93824992271327 *)
adds carry r11 rax r11;
(* mov    %rbp,%rax                                #! PC = 0x93824992271330 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271333 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r10                                #! PC = 0x93824992271337 *)
adds carry r10 r11 r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271340 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992271344 *)
mov r11 rdx;
(* mulq   0x28(%rsi)                               #! EA = L0x7fffffffde90; PC = 0x93824992271347 *)
umull rdx rax L0x7fffffffde90 rax;
(* add    %rax,%r12                                #! PC = 0x93824992271351 *)
adds carry r12 rax r12;
(* mov    0x18(%rbx),%rax                          #! EA = L0x7fffffffde50; Value = 0x00000000000000c2; PC = 0x93824992271354 *)
mov rax L0x7fffffffde50;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271358 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r12,%r11                                #! PC = 0x93824992271362 *)
adds carry r11 r12 r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271365 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r12                                #! PC = 0x93824992271369 *)
mov r12 rdx;
(* mov    %rax,%rbp                                #! PC = 0x93824992271372 *)
mov rbp rax;
(* mulq   (%rsi)                                   #! EA = L0x7fffffffde68; PC = 0x93824992271375 *)
umull rdx rax L0x7fffffffde68 rax;
(* add    %rax,%rcx                                #! PC = 0x93824992271378 *)
adds carry rcx rax rcx;
(* mov    %rbp,%rax                                #! PC = 0x93824992271381 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271384 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rcx,0x18(%rdi)                          #! EA = L0x7fffffffde50; PC = 0x93824992271388 *)
mov L0x7fffffffde50 rcx;
(* mov    %rdx,%rcx                                #! PC = 0x93824992271392 *)
mov rcx rdx;
(* mulq   0x8(%rsi)                                #! EA = L0x7fffffffde70; PC = 0x93824992271395 *)
umull rdx rax L0x7fffffffde70 rax;
(* add    %rax,%r8                                 #! PC = 0x93824992271399 *)
adds carry r8 rax r8;
(* mov    %rbp,%rax                                #! PC = 0x93824992271402 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271405 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r8,%rcx                                 #! PC = 0x93824992271409 *)
adds carry rcx r8 rcx;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271412 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992271416 *)
mov r8 rdx;
(* mulq   0x10(%rsi)                               #! EA = L0x7fffffffde78; PC = 0x93824992271419 *)
umull rdx rax L0x7fffffffde78 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992271423 *)
adds carry r9 rax r9;
(* mov    %rbp,%rax                                #! PC = 0x93824992271426 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271429 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r9,%r8                                  #! PC = 0x93824992271433 *)
adds carry r8 r9 r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271436 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992271440 *)
mov r9 rdx;
(* mulq   0x18(%rsi)                               #! EA = L0x7fffffffde80; PC = 0x93824992271443 *)
umull rdx rax L0x7fffffffde80 rax;
(* add    %rax,%r10                                #! PC = 0x93824992271447 *)
adds carry r10 rax r10;
(* mov    %rbp,%rax                                #! PC = 0x93824992271450 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271453 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r10,%r9                                 #! PC = 0x93824992271457 *)
adds carry r9 r10 r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271460 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992271464 *)
mov r10 rdx;
(* mulq   0x20(%rsi)                               #! EA = L0x7fffffffde88; PC = 0x93824992271467 *)
umull rdx rax L0x7fffffffde88 rax;
(* add    %rax,%r11                                #! PC = 0x93824992271471 *)
adds carry r11 rax r11;
(* mov    %rbp,%rax                                #! PC = 0x93824992271474 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271477 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r10                                #! PC = 0x93824992271481 *)
adds carry r10 r11 r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271484 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992271488 *)
mov r11 rdx;
(* mulq   0x28(%rsi)                               #! EA = L0x7fffffffde90; PC = 0x93824992271491 *)
umull rdx rax L0x7fffffffde90 rax;
(* add    %rax,%r12                                #! PC = 0x93824992271495 *)
adds carry r12 rax r12;
(* mov    0x20(%rbx),%rax                          #! EA = L0x7fffffffde58; Value = 0x0000d55555553177; PC = 0x93824992271498 *)
mov rax L0x7fffffffde58;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271502 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r12,%r11                                #! PC = 0x93824992271506 *)
adds carry r11 r12 r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271509 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r12                                #! PC = 0x93824992271513 *)
mov r12 rdx;
(* mov    %rax,%rbp                                #! PC = 0x93824992271516 *)
mov rbp rax;
(* mulq   (%rsi)                                   #! EA = L0x7fffffffde68; PC = 0x93824992271519 *)
umull rdx rax L0x7fffffffde68 rax;
(* add    %rax,%rcx                                #! PC = 0x93824992271522 *)
adds carry rcx rax rcx;
(* mov    %rbp,%rax                                #! PC = 0x93824992271525 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271528 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rcx,0x20(%rdi)                          #! EA = L0x7fffffffde58; PC = 0x93824992271532 *)
mov L0x7fffffffde58 rcx;
(* mov    %rdx,%rcx                                #! PC = 0x93824992271536 *)
mov rcx rdx;
(* mulq   0x8(%rsi)                                #! EA = L0x7fffffffde70; PC = 0x93824992271539 *)
umull rdx rax L0x7fffffffde70 rax;
(* add    %rax,%r8                                 #! PC = 0x93824992271543 *)
adds carry r8 rax r8;
(* mov    %rbp,%rax                                #! PC = 0x93824992271546 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271549 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r8,%rcx                                 #! PC = 0x93824992271553 *)
adds carry rcx r8 rcx;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271556 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992271560 *)
mov r8 rdx;
(* mulq   0x10(%rsi)                               #! EA = L0x7fffffffde78; PC = 0x93824992271563 *)
umull rdx rax L0x7fffffffde78 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992271567 *)
adds carry r9 rax r9;
(* mov    %rbp,%rax                                #! PC = 0x93824992271570 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271573 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r9,%r8                                  #! PC = 0x93824992271577 *)
adds carry r8 r9 r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271580 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992271584 *)
mov r9 rdx;
(* mulq   0x18(%rsi)                               #! EA = L0x7fffffffde80; PC = 0x93824992271587 *)
umull rdx rax L0x7fffffffde80 rax;
(* add    %rax,%r10                                #! PC = 0x93824992271591 *)
adds carry r10 rax r10;
(* mov    %rbp,%rax                                #! PC = 0x93824992271594 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271597 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r10,%r9                                 #! PC = 0x93824992271601 *)
adds carry r9 r10 r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271604 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992271608 *)
mov r10 rdx;
(* mulq   0x20(%rsi)                               #! EA = L0x7fffffffde88; PC = 0x93824992271611 *)
umull rdx rax L0x7fffffffde88 rax;
(* add    %rax,%r11                                #! PC = 0x93824992271615 *)
adds carry r11 rax r11;
(* mov    %rbp,%rax                                #! PC = 0x93824992271618 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271621 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r10                                #! PC = 0x93824992271625 *)
adds carry r10 r11 r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271628 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992271632 *)
mov r11 rdx;
(* mulq   0x28(%rsi)                               #! EA = L0x7fffffffde90; PC = 0x93824992271635 *)
umull rdx rax L0x7fffffffde90 rax;
(* add    %rax,%r12                                #! PC = 0x93824992271639 *)
adds carry r12 rax r12;
(* mov    0x28(%rbx),%rax                          #! EA = L0x7fffffffde60; Value = 0x0000ffffffffc1f6; PC = 0x93824992271642 *)
mov rax L0x7fffffffde60;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271646 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r12,%r11                                #! PC = 0x93824992271650 *)
adds carry r11 r12 r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271653 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r12                                #! PC = 0x93824992271657 *)
mov r12 rdx;
(* mov    %rax,%rbp                                #! PC = 0x93824992271660 *)
mov rbp rax;
(* mulq   (%rsi)                                   #! EA = L0x7fffffffde68; PC = 0x93824992271663 *)
umull rdx rax L0x7fffffffde68 rax;
(* add    %rax,%rcx                                #! PC = 0x93824992271666 *)
adds carry rcx rax rcx;
(* mov    %rbp,%rax                                #! PC = 0x93824992271669 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271672 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rcx,0x28(%rdi)                          #! EA = L0x7fffffffde60; PC = 0x93824992271676 *)
mov L0x7fffffffde60 rcx;
(* mov    %rdx,%rcx                                #! PC = 0x93824992271680 *)
mov rcx rdx;
(* mulq   0x8(%rsi)                                #! EA = L0x7fffffffde70; PC = 0x93824992271683 *)
umull rdx rax L0x7fffffffde70 rax;
(* add    %rax,%r8                                 #! PC = 0x93824992271687 *)
adds carry r8 rax r8;
(* mov    %rbp,%rax                                #! PC = 0x93824992271690 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271693 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r8,%rcx                                 #! PC = 0x93824992271697 *)
adds carry rcx r8 rcx;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271700 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992271704 *)
mov r8 rdx;
(* mulq   0x10(%rsi)                               #! EA = L0x7fffffffde78; PC = 0x93824992271707 *)
umull rdx rax L0x7fffffffde78 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992271711 *)
adds carry r9 rax r9;
(* mov    %rbp,%rax                                #! PC = 0x93824992271714 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271717 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r9,%r8                                  #! PC = 0x93824992271721 *)
adds carry r8 r9 r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271724 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992271728 *)
mov r9 rdx;
(* mulq   0x18(%rsi)                               #! EA = L0x7fffffffde80; PC = 0x93824992271731 *)
umull rdx rax L0x7fffffffde80 rax;
(* add    %rax,%r10                                #! PC = 0x93824992271735 *)
adds carry r10 rax r10;
(* mov    %rbp,%rax                                #! PC = 0x93824992271738 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271741 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r10,%r9                                 #! PC = 0x93824992271745 *)
adds carry r9 r10 r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271748 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992271752 *)
mov r10 rdx;
(* mulq   0x20(%rsi)                               #! EA = L0x7fffffffde88; PC = 0x93824992271755 *)
umull rdx rax L0x7fffffffde88 rax;
(* add    %rax,%r11                                #! PC = 0x93824992271759 *)
adds carry r11 rax r11;
(* mov    %rbp,%rax                                #! PC = 0x93824992271762 *)
mov rax rbp;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271765 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r10                                #! PC = 0x93824992271769 *)
adds carry r10 r11 r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271772 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992271776 *)
mov r11 rdx;
(* mulq   0x28(%rsi)                               #! EA = L0x7fffffffde90; PC = 0x93824992271779 *)
umull rdx rax L0x7fffffffde90 rax;
(* add    %rax,%r12                                #! PC = 0x93824992271783 *)
adds carry r12 rax r12;
(* mov    %rax,%rax                                #! PC = 0x93824992271786 *)
mov rax rax;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271789 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r12,%r11                                #! PC = 0x93824992271793 *)
adds carry r11 r12 r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992271796 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r12                                #! PC = 0x93824992271800 *)
mov r12 rdx;
(* mov    %rcx,0x30(%rdi)                          #! EA = L0x7fffffffde68; PC = 0x93824992271803 *)
mov L0x7fffffffde68 rcx;
(* mov    %r8,0x38(%rdi)                           #! EA = L0x7fffffffde70; PC = 0x93824992271807 *)
mov L0x7fffffffde70 r8;
(* mov    %r9,0x40(%rdi)                           #! EA = L0x7fffffffde78; PC = 0x93824992271811 *)
mov L0x7fffffffde78 r9;
(* mov    %r10,0x48(%rdi)                          #! EA = L0x7fffffffde80; PC = 0x93824992271815 *)
mov L0x7fffffffde80 r10;
(* mov    %r11,0x50(%rdi)                          #! EA = L0x7fffffffde88; PC = 0x93824992271819 *)
mov L0x7fffffffde88 r11;
(* mov    %r12,0x58(%rdi)                          #! EA = L0x7fffffffde90; PC = 0x93824992271823 *)
mov L0x7fffffffde90 r12;


rcut and [
       m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
       m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
       m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64,
         
       L0x5555555658e0 = m0, L0x5555555658e8 = m1, L0x5555555658f0 = m2,
       L0x5555555658f8 = m3, L0x555555565900 = m4, L0x555555565908 = m5,

       limbs 64 [L0x7fffffffdd78, L0x7fffffffdd80, L0x7fffffffdd88, L0x7fffffffdd90,
                 L0x7fffffffdd98, L0x7fffffffdda0, L0x7fffffffdda8, L0x7fffffffddb0,
                 L0x7fffffffddb8, L0x7fffffffddc0, L0x7fffffffddc8, L0x7fffffffddd0] <u
       limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                   m0,   m1,   m2,   m3,   m4,   m5],
  
       limbs 64 [L0x7fffffffddd8, L0x7fffffffdde0, L0x7fffffffdde8, L0x7fffffffddf0,
                 L0x7fffffffddf8, L0x7fffffffde00, L0x7fffffffde08, L0x7fffffffde10,
                 L0x7fffffffde18, L0x7fffffffde20, L0x7fffffffde28, L0x7fffffffde30] <u
       limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                   m0,   m1,   m2,   m3,   m4,   m5],
       limbs 64 [L0x7fffffffde38, L0x7fffffffde40, L0x7fffffffde48,
                 L0x7fffffffde50, L0x7fffffffde58, L0x7fffffffde60,
       		 L0x7fffffffde68, L0x7fffffffde70, L0x7fffffffde78,
                 L0x7fffffffde80, L0x7fffffffde88, L0x7fffffffde90] <u 
       limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                   m0,   m1,   m2,   m3,   m4,   m5]
     ];

ghost L0x7fffffffde38p@uint64, L0x7fffffffde40p@uint64, L0x7fffffffde48p@uint64,
      L0x7fffffffde50p@uint64, L0x7fffffffde58p@uint64, L0x7fffffffde60p@uint64,
      L0x7fffffffde68p@uint64, L0x7fffffffde70p@uint64, L0x7fffffffde78p@uint64,
      L0x7fffffffde80p@uint64, L0x7fffffffde88p@uint64, L0x7fffffffde90p@uint64 :
      and[L0x7fffffffde38p = L0x7fffffffde38, L0x7fffffffde40p = L0x7fffffffde40,
	  L0x7fffffffde48p = L0x7fffffffde48, L0x7fffffffde50p = L0x7fffffffde50,
	  L0x7fffffffde58p = L0x7fffffffde58, L0x7fffffffde60p = L0x7fffffffde60,
          L0x7fffffffde68p = L0x7fffffffde68, L0x7fffffffde70p = L0x7fffffffde70,
	  L0x7fffffffde78p = L0x7fffffffde78, L0x7fffffffde80p = L0x7fffffffde80,
	  L0x7fffffffde88p = L0x7fffffffde88, L0x7fffffffde90p = L0x7fffffffde90]
   && and[L0x7fffffffde38p = L0x7fffffffde38, L0x7fffffffde40p = L0x7fffffffde40,
	  L0x7fffffffde48p = L0x7fffffffde48, L0x7fffffffde50p = L0x7fffffffde50,
	  L0x7fffffffde58p = L0x7fffffffde58, L0x7fffffffde60p = L0x7fffffffde60,
          L0x7fffffffde68p = L0x7fffffffde68, L0x7fffffffde70p = L0x7fffffffde70,
	  L0x7fffffffde78p = L0x7fffffffde78, L0x7fffffffde80p = L0x7fffffffde80,
	  L0x7fffffffde88p = L0x7fffffffde88, L0x7fffffffde90p = L0x7fffffffde90];


(* #repz retq                                      #! PC = 0x93824992271827 *)
#repz retq                                      #! 0x93824992271827 = 0x93824992271827;
(* #lea    (%rdi),%rsi                              #! PC = 0x93824992269763 *)
#lea    %%EA,%%rsi                              #! 0x93824992269763 = 0x93824992269763;
(* #lea    0x28(%rsp),%rdx                          #! PC = 0x93824992269766 *)
#lea    %%EA,%%rdx                          #! 0x93824992269766 = 0x93824992269766;
(* mov    0x8(%rsp),%rcx                           #! EA = L0x7fffffffdd58; Value = 0x00005555555658e0; PC = 0x93824992269771 *)
#mov rcx L0x7fffffffdd58;
(* #callq  0x55555555d320 <__sub_mod_384x384>      #! PC = 0x93824992269776 *)
#callq  0x55555555d320 <__sub_mod_384x384>      #! 0x93824992269776 = 0x93824992269776;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffde38; Value = 0x0bb69ec008769ec0; PC = 0x93824992269092 *)
mov r8 L0x7fffffffde38;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffde40; Value = 0xdb704db1d6904e00; PC = 0x93824992269095 *)
mov r9 L0x7fffffffde40;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffde48; Value = 0x8c845ede91b5b2f1; PC = 0x93824992269099 *)
mov r10 L0x7fffffffde48;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffde50; Value = 0xaa999e0d541cc0de; PC = 0x93824992269103 *)
mov r11 L0x7fffffffde50;
(* mov    0x20(%rsi),%r12                          #! EA = L0x7fffffffde58; Value = 0x467ace00f23d4be8; PC = 0x93824992269107 *)
mov r12 L0x7fffffffde58;
(* mov    0x28(%rsi),%r13                          #! EA = L0x7fffffffde60; Value = 0xddc8695aa8e3f07e; PC = 0x93824992269111 *)
mov r13 L0x7fffffffde60;
(* mov    0x30(%rsi),%r14                          #! EA = L0x7fffffffde68; Value = 0x72718a41f02e9f8a; PC = 0x93824992269115 *)
mov r14 L0x7fffffffde68;
(* sub    (%rdx),%r8                               #! EA = L0x7fffffffdd78; Value = 0x0000000000000000; PC = 0x93824992269119 *)
subb carry r8 r8 L0x7fffffffdd78;
(* mov    0x38(%rsi),%r15                          #! EA = L0x7fffffffde70; Value = 0x563fe340014e24ae; PC = 0x93824992269122 *)
mov r15 L0x7fffffffde70;
(* sbb    0x8(%rdx),%r9                            #! EA = L0x7fffffffdd80; Value = 0x02726fffff327000; PC = 0x93824992269126 *)
sbbs carry r9 r9 L0x7fffffffdd80 carry;
(* mov    0x40(%rsi),%rax                          #! EA = L0x7fffffffde78; Value = 0x5661042aaad84355; PC = 0x93824992269130 *)
mov rax L0x7fffffffde78;
(* sbb    0x10(%rdx),%r10                          #! EA = L0x7fffffffdd88; Value = 0x2aee76492e2e7640; PC = 0x93824992269134 *)
sbbs carry r10 r10 L0x7fffffffdd88 carry;
(* mov    0x48(%rsi),%rbx                          #! EA = L0x7fffffffde80; Value = 0x0107d80003194155; PC = 0x93824992269138 *)
mov rbx L0x7fffffffde80;
(* sbb    0x18(%rdx),%r11                          #! EA = L0x7fffffffdd90; Value = 0x55acc8d55547a389; PC = 0x93824992269142 *)
sbbs carry r11 r11 L0x7fffffffdd90 carry;
(* mov    0x50(%rsi),%rbp                          #! EA = L0x7fffffffde88; Value = 0x0000000004000000; PC = 0x93824992269146 *)
mov rbp L0x7fffffffde88;
(* sbb    0x20(%rdx),%r12                          #! EA = L0x7fffffffdd98; Value = 0x952a1800ef97dc95; PC = 0x93824992269150 *)
sbbs carry r12 r12 L0x7fffffffdd98 carry;
(* mov    0x58(%rsi),%rsi                          #! EA = L0x7fffffffde90; Value = 0x0000000000000000; PC = 0x93824992269154 *)
mov rsi L0x7fffffffde90;
(* sbb    0x28(%rdx),%r13                          #! EA = L0x7fffffffdda0; Value = 0x9585d96aae4315d5; PC = 0x93824992269158 *)
sbbs carry r13 r13 L0x7fffffffdda0 carry;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffde38; PC = 0x93824992269162 *)
mov L0x7fffffffde38 r8;
(* sbb    0x30(%rdx),%r14                          #! EA = L0x7fffffffdda8; Value = 0xc3504a41e781ca55; PC = 0x93824992269165 *)
sbbs carry r14 r14 L0x7fffffffdda8 carry;
(* mov    (%rcx),%r8                               #! EA = L0x5555555658e0; Value = 0xb9feffffffffaaab; PC = 0x93824992269169 *)
mov r8 L0x5555555658e0;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffde40; PC = 0x93824992269172 *)
mov L0x7fffffffde40 r9;
(* sbb    0x38(%rdx),%r15                          #! EA = L0x7fffffffddb0; Value = 0x007343400001fa03; PC = 0x93824992269176 *)
sbbs carry r15 r15 L0x7fffffffddb0 carry;
(* mov    0x8(%rcx),%r9                            #! EA = L0x5555555658e8; Value = 0x1eabfffeb153ffff; PC = 0x93824992269180 *)
mov r9 L0x5555555658e8;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffde48; PC = 0x93824992269184 *)
mov L0x7fffffffde48 r10;
(* sbb    0x40(%rdx),%rax                          #! EA = L0x7fffffffddb8; Value = 0x0079f9800000ee00; PC = 0x93824992269188 *)
sbbs carry rax rax L0x7fffffffddb8 carry;
(* mov    0x10(%rcx),%r10                          #! EA = L0x5555555658f0; Value = 0x6730d2a0f6b0f624; PC = 0x93824992269192 *)
mov r10 L0x5555555658f0;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffde50; PC = 0x93824992269196 *)
mov L0x7fffffffde50 r11;
(* sbb    0x48(%rdx),%rbx                          #! EA = L0x7fffffffddc0; Value = 0x0081d80001e0ec00; PC = 0x93824992269200 *)
sbbs carry rbx rbx L0x7fffffffddc0 carry;
(* mov    0x18(%rcx),%r11                          #! EA = L0x5555555658f8; Value = 0x64774b84f38512bf; PC = 0x93824992269204 *)
mov r11 L0x5555555658f8;
(* mov    %r12,0x20(%rdi)                          #! EA = L0x7fffffffde58; PC = 0x93824992269208 *)
mov L0x7fffffffde58 r12;
(* sbb    0x50(%rdx),%rbp                          #! EA = L0x7fffffffddc8; Value = 0x0000000002000000; PC = 0x93824992269212 *)
sbbs carry rbp rbp L0x7fffffffddc8 carry;
(* mov    0x20(%rcx),%r12                          #! EA = L0x555555565900; Value = 0x4b1ba7b6434bacd7; PC = 0x93824992269216 *)
mov r12 L0x555555565900;
(* mov    %r13,0x28(%rdi)                          #! EA = L0x7fffffffde60; PC = 0x93824992269220 *)
mov L0x7fffffffde60 r13;
(* sbb    0x58(%rdx),%rsi                          #! EA = L0x7fffffffddd0; Value = 0x0000000000000000; PC = 0x93824992269224 *)
sbbs carry rsi rsi L0x7fffffffddd0 carry;
(* mov    0x28(%rcx),%r13                          #! EA = L0x555555565908; Value = 0x1a0111ea397fe69a; PC = 0x93824992269228 *)
mov r13 L0x555555565908;
(* sbb    %rdx,%rdx                                #! PC = 0x93824992269232 *)
sbbs carry rdx rdx rdx carry;
(* and    %rdx,%r8                                 #! PC = 0x93824992269235 *)
and r8@uint64 rdx r8;
(* and    %rdx,%r9                                 #! PC = 0x93824992269238 *)
and r9@uint64 rdx r9;
(* and    %rdx,%r10                                #! PC = 0x93824992269241 *)
and r10@uint64 rdx r10;
(* and    %rdx,%r11                                #! PC = 0x93824992269244 *)
and r11@uint64 rdx r11;
(* and    %rdx,%r12                                #! PC = 0x93824992269247 *)
and r12@uint64 rdx r12;
(* and    %rdx,%r13                                #! PC = 0x93824992269250 *)
and r13@uint64 rdx r13;
(* add    %r8,%r14                                 #! PC = 0x93824992269253 *)
adds carry r14 r8 r14;
(* adc    %r9,%r15                                 #! PC = 0x93824992269256 *)
adcs carry r15 r9 r15 carry;
(* mov    %r14,0x30(%rdi)                          #! EA = L0x7fffffffde68; PC = 0x93824992269259 *)
mov L0x7fffffffde68 r14;
(* adc    %r10,%rax                                #! PC = 0x93824992269263 *)
adcs carry rax r10 rax carry;
(* mov    %r15,0x38(%rdi)                          #! EA = L0x7fffffffde70; PC = 0x93824992269266 *)
mov L0x7fffffffde70 r15;
(* adc    %r11,%rbx                                #! PC = 0x93824992269270 *)
adcs carry rbx r11 rbx carry;
(* mov    %rax,0x40(%rdi)                          #! EA = L0x7fffffffde78; PC = 0x93824992269273 *)
mov L0x7fffffffde78 rax;
(* adc    %r12,%rbp                                #! PC = 0x93824992269277 *)
adcs carry rbp r12 rbp carry;
(* mov    %rbx,0x48(%rdi)                          #! EA = L0x7fffffffde80; PC = 0x93824992269280 *)
mov L0x7fffffffde80 rbx;
(* adc    %r13,%rsi                                #! PC = 0x93824992269284 *)
adcs carry rsi r13 rsi carry;
(* mov    %rbp,0x50(%rdi)                          #! EA = L0x7fffffffde88; PC = 0x93824992269287 *)
mov L0x7fffffffde88 rbp;
(* mov    %rsi,0x58(%rdi)                          #! EA = L0x7fffffffde90; PC = 0x93824992269291 *)
mov L0x7fffffffde90 rsi;
(* #repz retq                                      #! PC = 0x93824992269295 *)
#repz retq                                      #! 0x93824992269295 = 0x93824992269295;


assert true
    && eqmod ((limbs 64 [L0x7fffffffde38, L0x7fffffffde40, L0x7fffffffde48,
                 	 L0x7fffffffde50, L0x7fffffffde58, L0x7fffffffde60,
                 	 L0x7fffffffde68, L0x7fffffffde70, L0x7fffffffde78,
                 	 L0x7fffffffde80, L0x7fffffffde88, L0x7fffffffde90]) + 
	      (limbs 64 [L0x7fffffffdd78, L0x7fffffffdd80, L0x7fffffffdd88,
			 L0x7fffffffdd90, L0x7fffffffdd98, L0x7fffffffdda0,
			 L0x7fffffffdda8, L0x7fffffffddb0, L0x7fffffffddb8,
			 L0x7fffffffddc0, L0x7fffffffddc8, L0x7fffffffddd0]))
	     (limbs 64 [L0x7fffffffde38p, L0x7fffffffde40p, L0x7fffffffde48p,
                        L0x7fffffffde50p, L0x7fffffffde58p, L0x7fffffffde60p,
                        L0x7fffffffde68p, L0x7fffffffde70p, L0x7fffffffde78p,
                        L0x7fffffffde80p, L0x7fffffffde88p, L0x7fffffffde90p])
	     (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
	                  m0,   m1,   m2,   m3,   m4,   m5]);

assume eqmod ((limbs 64 [L0x7fffffffde38, L0x7fffffffde40, L0x7fffffffde48,
                 	 L0x7fffffffde50, L0x7fffffffde58, L0x7fffffffde60,
                 	 L0x7fffffffde68, L0x7fffffffde70, L0x7fffffffde78,
                 	 L0x7fffffffde80, L0x7fffffffde88, L0x7fffffffde90]) + 
	      (limbs 64 [L0x7fffffffdd78, L0x7fffffffdd80, L0x7fffffffdd88,
			 L0x7fffffffdd90, L0x7fffffffdd98, L0x7fffffffdda0,
			 L0x7fffffffdda8, L0x7fffffffddb0, L0x7fffffffddb8,
			 L0x7fffffffddc0, L0x7fffffffddc8, L0x7fffffffddd0]))
	     (limbs 64 [L0x7fffffffde38p, L0x7fffffffde40p, L0x7fffffffde48p,
                        L0x7fffffffde50p, L0x7fffffffde58p, L0x7fffffffde60p,
                        L0x7fffffffde68p, L0x7fffffffde70p, L0x7fffffffde78p,
                        L0x7fffffffde80p, L0x7fffffffde88p, L0x7fffffffde90p])
	     (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5])
    && true;

assert eqmod ((limbs 64 [L0x7fffffffde38, L0x7fffffffde40, L0x7fffffffde48,
                 	 L0x7fffffffde50, L0x7fffffffde58, L0x7fffffffde60,
                 	 L0x7fffffffde68, L0x7fffffffde70, L0x7fffffffde78,
                 	 L0x7fffffffde80, L0x7fffffffde88, L0x7fffffffde90]) + 
	      ((limbs 64 [a0, a1, a2, a3, a4, a5]) *
               (limbs 64 [c0, c1, c2, c3, c4, c5])))
	     (limbs 64 [L0x7fffffffde38p, L0x7fffffffde40p, L0x7fffffffde48p,
                        L0x7fffffffde50p, L0x7fffffffde58p, L0x7fffffffde60p,
                        L0x7fffffffde68p, L0x7fffffffde70p, L0x7fffffffde78p,
                        L0x7fffffffde80p, L0x7fffffffde88p, L0x7fffffffde90p])
	     (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5])
    && true;

ghost L0x7fffffffde38q@uint64, L0x7fffffffde40q@uint64, L0x7fffffffde48q@uint64,
      L0x7fffffffde50q@uint64, L0x7fffffffde58q@uint64, L0x7fffffffde60q@uint64,
      L0x7fffffffde68q@uint64, L0x7fffffffde70q@uint64, L0x7fffffffde78q@uint64,
      L0x7fffffffde80q@uint64, L0x7fffffffde88q@uint64, L0x7fffffffde90q@uint64 :
      and[L0x7fffffffde38q = L0x7fffffffde38, L0x7fffffffde40q = L0x7fffffffde40,
	  L0x7fffffffde48q = L0x7fffffffde48, L0x7fffffffde50q = L0x7fffffffde50,
	  L0x7fffffffde58q = L0x7fffffffde58, L0x7fffffffde60q = L0x7fffffffde60,
          L0x7fffffffde68q = L0x7fffffffde68, L0x7fffffffde70q = L0x7fffffffde70,
	  L0x7fffffffde78q = L0x7fffffffde78, L0x7fffffffde80q = L0x7fffffffde80,
	  L0x7fffffffde88q = L0x7fffffffde88, L0x7fffffffde90q = L0x7fffffffde90]
   && and[L0x7fffffffde38q = L0x7fffffffde38, L0x7fffffffde40q = L0x7fffffffde40,
	  L0x7fffffffde48q = L0x7fffffffde48, L0x7fffffffde50q = L0x7fffffffde50,
	  L0x7fffffffde58q = L0x7fffffffde58, L0x7fffffffde60q = L0x7fffffffde60,
          L0x7fffffffde68q = L0x7fffffffde68, L0x7fffffffde70q = L0x7fffffffde70,
	  L0x7fffffffde78q = L0x7fffffffde78, L0x7fffffffde80q = L0x7fffffffde80,
	  L0x7fffffffde88q = L0x7fffffffde88, L0x7fffffffde90q = L0x7fffffffde90];



(* #lea    (%rdi),%rsi                              #! PC = 0x93824992269781 *)
#lea    %%EA,%%rsi                              #! 0x93824992269781 = 0x93824992269781;
(* #lea    -0x60(%rdi),%rdx                         #! PC = 0x93824992269784 *)
#lea    -%%EA,%%rdx                         #! 0x93824992269784 = 0x93824992269784;
(* #callq  0x55555555d320 <__sub_mod_384x384>      #! PC = 0x93824992269788 *)
#callq  0x55555555d320 <__sub_mod_384x384>      #! 0x93824992269788 = 0x93824992269788;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffde38; Value = 0x0bb69ec008769ec0; PC = 0x93824992269092 *)
mov r8 L0x7fffffffde38;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffde40; Value = 0xd8fdddb1d75dde00; PC = 0x93824992269095 *)
mov r9 L0x7fffffffde40;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffde48; Value = 0x6195e89563873cb1; PC = 0x93824992269099 *)
mov r10 L0x7fffffffde48;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffde50; Value = 0x54ecd537fed51d55; PC = 0x93824992269103 *)
mov r11 L0x7fffffffde50;
(* mov    0x20(%rsi),%r12                          #! EA = L0x7fffffffde58; Value = 0xb150b60002a56f53; PC = 0x93824992269107 *)
mov r12 L0x7fffffffde58;
(* mov    0x28(%rsi),%r13                          #! EA = L0x7fffffffde60; Value = 0x48428feffaa0daa8; PC = 0x93824992269111 *)
mov r13 L0x7fffffffde60;
(* mov    0x30(%rsi),%r14                          #! EA = L0x7fffffffde68; Value = 0xaf21400008acd535; PC = 0x93824992269115 *)
mov r14 L0x7fffffffde68;
(* sub    (%rdx),%r8                               #! EA = L0x7fffffffddd8; Value = 0x0000000000000000; PC = 0x93824992269119 *)
subb carry r8 r8 L0x7fffffffddd8;
(* mov    0x38(%rsi),%r15                          #! EA = L0x7fffffffde70; Value = 0x55cca000014c2aaa; PC = 0x93824992269122 *)
mov r15 L0x7fffffffde70;
(* sbb    0x8(%rdx),%r9                            #! EA = L0x7fffffffdde0; Value = 0x0000000000000000; PC = 0x93824992269126 *)
sbbs carry r9 r9 L0x7fffffffdde0 carry;
(* mov    0x40(%rsi),%rax                          #! EA = L0x7fffffffde78; Value = 0x55e70aaaaad75555; PC = 0x93824992269130 *)
mov rax L0x7fffffffde78;
(* sbb    0x10(%rdx),%r10                          #! EA = L0x7fffffffdde8; Value = 0x0000000000000000; PC = 0x93824992269134 *)
sbbs carry r10 r10 L0x7fffffffdde8 carry;
(* mov    0x48(%rsi),%rbx                          #! EA = L0x7fffffffde80; Value = 0x0086000001385555; PC = 0x93824992269138 *)
mov rbx L0x7fffffffde80;
(* sbb    0x18(%rdx),%r11                          #! EA = L0x7fffffffddf0; Value = 0x0000000000000000; PC = 0x93824992269142 *)
sbbs carry r11 r11 L0x7fffffffddf0 carry;
(* mov    0x50(%rsi),%rbp                          #! EA = L0x7fffffffde88; Value = 0x0000000002000000; PC = 0x93824992269146 *)
mov rbp L0x7fffffffde88;
(* sbb    0x20(%rdx),%r12                          #! EA = L0x7fffffffddf8; Value = 0x0000000000000000; PC = 0x93824992269150 *)
sbbs carry r12 r12 L0x7fffffffddf8 carry;
(* mov    0x58(%rsi),%rsi                          #! EA = L0x7fffffffde90; Value = 0x0000000000000000; PC = 0x93824992269154 *)
mov rsi L0x7fffffffde90;
(* sbb    0x28(%rdx),%r13                          #! EA = L0x7fffffffde00; Value = 0x0000000000000000; PC = 0x93824992269158 *)
sbbs carry r13 r13 L0x7fffffffde00 carry;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffde38; PC = 0x93824992269162 *)
mov L0x7fffffffde38 r8;
(* sbb    0x30(%rdx),%r14                          #! EA = L0x7fffffffde08; Value = 0x0000000000000000; PC = 0x93824992269165 *)
sbbs carry r14 r14 L0x7fffffffde08 carry;
(* mov    (%rcx),%r8                               #! EA = L0x5555555658e0; Value = 0xb9feffffffffaaab; PC = 0x93824992269169 *)
mov r8 L0x5555555658e0;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffde40; PC = 0x93824992269172 *)
mov L0x7fffffffde40 r9;
(* sbb    0x38(%rdx),%r15                          #! EA = L0x7fffffffde10; Value = 0x0000000000000000; PC = 0x93824992269176 *)
sbbs carry r15 r15 L0x7fffffffde10 carry;
(* mov    0x8(%rcx),%r9                            #! EA = L0x5555555658e8; Value = 0x1eabfffeb153ffff; PC = 0x93824992269180 *)
mov r9 L0x5555555658e8;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffde48; PC = 0x93824992269184 *)
mov L0x7fffffffde48 r10;
(* sbb    0x40(%rdx),%rax                          #! EA = L0x7fffffffde18; Value = 0x0000000000000000; PC = 0x93824992269188 *)
sbbs carry rax rax L0x7fffffffde18 carry;
(* mov    0x10(%rcx),%r10                          #! EA = L0x5555555658f0; Value = 0x6730d2a0f6b0f624; PC = 0x93824992269192 *)
mov r10 L0x5555555658f0;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffde50; PC = 0x93824992269196 *)
mov L0x7fffffffde50 r11;
(* sbb    0x48(%rdx),%rbx                          #! EA = L0x7fffffffde20; Value = 0x0000000000000000; PC = 0x93824992269200 *)
sbbs carry rbx rbx L0x7fffffffde20 carry;
(* mov    0x18(%rcx),%r11                          #! EA = L0x5555555658f8; Value = 0x64774b84f38512bf; PC = 0x93824992269204 *)
mov r11 L0x5555555658f8;
(* mov    %r12,0x20(%rdi)                          #! EA = L0x7fffffffde58; PC = 0x93824992269208 *)
mov L0x7fffffffde58 r12;
(* sbb    0x50(%rdx),%rbp                          #! EA = L0x7fffffffde28; Value = 0x0000000000000000; PC = 0x93824992269212 *)
sbbs carry rbp rbp L0x7fffffffde28 carry;
(* mov    0x20(%rcx),%r12                          #! EA = L0x555555565900; Value = 0x4b1ba7b6434bacd7; PC = 0x93824992269216 *)
mov r12 L0x555555565900;
(* mov    %r13,0x28(%rdi)                          #! EA = L0x7fffffffde60; PC = 0x93824992269220 *)
mov L0x7fffffffde60 r13;
(* sbb    0x58(%rdx),%rsi                          #! EA = L0x7fffffffde30; Value = 0x0000000000000000; PC = 0x93824992269224 *)
sbbs carry rsi rsi L0x7fffffffde30 carry;
(* mov    0x28(%rcx),%r13                          #! EA = L0x555555565908; Value = 0x1a0111ea397fe69a; PC = 0x93824992269228 *)
mov r13 L0x555555565908;
(* sbb    %rdx,%rdx                                #! PC = 0x93824992269232 *)
sbbs carry rdx rdx rdx carry;
(* and    %rdx,%r8                                 #! PC = 0x93824992269235 *)
and r8@uint64 rdx r8;
(* and    %rdx,%r9                                 #! PC = 0x93824992269238 *)
and r9@uint64 rdx r9;
(* and    %rdx,%r10                                #! PC = 0x93824992269241 *)
and r10@uint64 rdx r10;
(* and    %rdx,%r11                                #! PC = 0x93824992269244 *)
and r11@uint64 rdx r11;
(* and    %rdx,%r12                                #! PC = 0x93824992269247 *)
and r12@uint64 rdx r12;
(* and    %rdx,%r13                                #! PC = 0x93824992269250 *)
and r13@uint64 rdx r13;
(* add    %r8,%r14                                 #! PC = 0x93824992269253 *)
adds carry r14 r8 r14;
(* adc    %r9,%r15                                 #! PC = 0x93824992269256 *)
adcs carry r15 r9 r15 carry;
(* mov    %r14,0x30(%rdi)                          #! EA = L0x7fffffffde68; PC = 0x93824992269259 *)
mov L0x7fffffffde68 r14;
(* adc    %r10,%rax                                #! PC = 0x93824992269263 *)
adcs carry rax r10 rax carry;
(* mov    %r15,0x38(%rdi)                          #! EA = L0x7fffffffde70; PC = 0x93824992269266 *)
mov L0x7fffffffde70 r15;
(* adc    %r11,%rbx                                #! PC = 0x93824992269270 *)
adcs carry rbx r11 rbx carry;
(* mov    %rax,0x40(%rdi)                          #! EA = L0x7fffffffde78; PC = 0x93824992269273 *)
mov L0x7fffffffde78 rax;
(* adc    %r12,%rbp                                #! PC = 0x93824992269277 *)
adcs carry rbp r12 rbp carry;
(* mov    %rbx,0x48(%rdi)                          #! EA = L0x7fffffffde80; PC = 0x93824992269280 *)
mov L0x7fffffffde80 rbx;
(* adc    %r13,%rsi                                #! PC = 0x93824992269284 *)
adcs carry rsi r13 rsi carry;
(* mov    %rbp,0x50(%rdi)                          #! EA = L0x7fffffffde88; PC = 0x93824992269287 *)
mov L0x7fffffffde88 rbp;
(* mov    %rsi,0x58(%rdi)                          #! EA = L0x7fffffffde90; PC = 0x93824992269291 *)
mov L0x7fffffffde90 rsi;
(* #repz retq                                      #! PC = 0x93824992269295 *)
#repz retq                                      #! 0x93824992269295 = 0x93824992269295;


assert true
    && eqmod ((limbs 64 [L0x7fffffffde38, L0x7fffffffde40, L0x7fffffffde48,
                 	 L0x7fffffffde50, L0x7fffffffde58, L0x7fffffffde60,
                 	 L0x7fffffffde68, L0x7fffffffde70, L0x7fffffffde78,
                 	 L0x7fffffffde80, L0x7fffffffde88, L0x7fffffffde90]) + 
	      (limbs 64 [L0x7fffffffddd8, L0x7fffffffdde0, L0x7fffffffdde8,
			 L0x7fffffffddf0, L0x7fffffffddf8, L0x7fffffffde00,
			 L0x7fffffffde08, L0x7fffffffde10, L0x7fffffffde18,
			 L0x7fffffffde20, L0x7fffffffde28, L0x7fffffffde30]))
	     (limbs 64 [L0x7fffffffde38q, L0x7fffffffde40q, L0x7fffffffde48q,
                        L0x7fffffffde50q, L0x7fffffffde58q, L0x7fffffffde60q,
                        L0x7fffffffde68q, L0x7fffffffde70q, L0x7fffffffde78q,
                        L0x7fffffffde80q, L0x7fffffffde88q, L0x7fffffffde90q])
	     (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
	                  m0,   m1,   m2,   m3,   m4,   m5]);

assume eqmod ((limbs 64 [L0x7fffffffde38, L0x7fffffffde40, L0x7fffffffde48,
                 	 L0x7fffffffde50, L0x7fffffffde58, L0x7fffffffde60,
                 	 L0x7fffffffde68, L0x7fffffffde70, L0x7fffffffde78,
                 	 L0x7fffffffde80, L0x7fffffffde88, L0x7fffffffde90]) + 
	      (limbs 64 [L0x7fffffffddd8, L0x7fffffffdde0, L0x7fffffffdde8,
			 L0x7fffffffddf0, L0x7fffffffddf8, L0x7fffffffde00,
			 L0x7fffffffde08, L0x7fffffffde10, L0x7fffffffde18,
			 L0x7fffffffde20, L0x7fffffffde28, L0x7fffffffde30]))
	     (limbs 64 [L0x7fffffffde38q, L0x7fffffffde40q, L0x7fffffffde48q,
                        L0x7fffffffde50q, L0x7fffffffde58q, L0x7fffffffde60q,
                        L0x7fffffffde68q, L0x7fffffffde70q, L0x7fffffffde78q,
                        L0x7fffffffde80q, L0x7fffffffde88q, L0x7fffffffde90q])
	     (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5])
    && true;

assert eqmod ((limbs 64 [L0x7fffffffde38, L0x7fffffffde40, L0x7fffffffde48,
                 	 L0x7fffffffde50, L0x7fffffffde58, L0x7fffffffde60,
                 	 L0x7fffffffde68, L0x7fffffffde70, L0x7fffffffde78,
                 	 L0x7fffffffde80, L0x7fffffffde88, L0x7fffffffde90]) + 
	      ((limbs 64 [b0, b1, b2, b3, b4, b5]) *
               (limbs 64 [d0, d1, d2, d3, d4, d5])) +
              ((limbs 64 [a0, a1, a2, a3, a4, a5]) *
               (limbs 64 [c0, c1, c2, c3, c4, c5])))
	     (limbs 64 [L0x7fffffffde38p, L0x7fffffffde40p, L0x7fffffffde48p,
                        L0x7fffffffde50p, L0x7fffffffde58p, L0x7fffffffde60p,
                        L0x7fffffffde68p, L0x7fffffffde70p, L0x7fffffffde78p,
                        L0x7fffffffde80p, L0x7fffffffde88p, L0x7fffffffde90p])
	     (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5])
    && true;

ghost L0x7fffffffdd78o@uint64, L0x7fffffffdd80o@uint64, L0x7fffffffdd88o@uint64,
      L0x7fffffffdd90o@uint64, L0x7fffffffdd98o@uint64, L0x7fffffffdda0o@uint64,
      L0x7fffffffdda8o@uint64, L0x7fffffffddb0o@uint64, L0x7fffffffddb8o@uint64,
      L0x7fffffffddc0o@uint64, L0x7fffffffddc8o@uint64, L0x7fffffffddd0o@uint64 :
      and[L0x7fffffffdd78o = L0x7fffffffdd78, L0x7fffffffdd80o = L0x7fffffffdd80,
	  L0x7fffffffdd88o = L0x7fffffffdd88, L0x7fffffffdd90o = L0x7fffffffdd90,
	  L0x7fffffffdd98o = L0x7fffffffdd98, L0x7fffffffdda0o = L0x7fffffffdda0,
	  L0x7fffffffdda8o = L0x7fffffffdda8, L0x7fffffffddb0o = L0x7fffffffddb0,
	  L0x7fffffffddb8o = L0x7fffffffddb8, L0x7fffffffddc0o = L0x7fffffffddc0,
	  L0x7fffffffddc8o = L0x7fffffffddc8, L0x7fffffffddd0o = L0x7fffffffddd0]
   && and[L0x7fffffffdd78o = L0x7fffffffdd78, L0x7fffffffdd80o = L0x7fffffffdd80,
          L0x7fffffffdd88o = L0x7fffffffdd88, L0x7fffffffdd90o = L0x7fffffffdd90,
          L0x7fffffffdd98o = L0x7fffffffdd98, L0x7fffffffdda0o = L0x7fffffffdda0,
          L0x7fffffffdda8o = L0x7fffffffdda8, L0x7fffffffddb0o = L0x7fffffffddb0,
          L0x7fffffffddb8o = L0x7fffffffddb8, L0x7fffffffddc0o = L0x7fffffffddc0,
          L0x7fffffffddc8o = L0x7fffffffddc8, L0x7fffffffddd0o = L0x7fffffffddd0];


(* #lea    0x28(%rsp),%rsi                          #! PC = 0x93824992269793 *)
#lea    %%EA,%%rsi                          #! 0x93824992269793 = 0x93824992269793;
(* #lea    0x88(%rsp),%rdx                          #! PC = 0x93824992269798 *)
#lea    %%EA,%%rdx                          #! 0x93824992269798 = 0x93824992269798;
(* #lea    0x28(%rsp),%rdi                          #! PC = 0x93824992269806 *)
#lea    %%EA,%%rdi                          #! 0x93824992269806 = 0x93824992269806;
(* #callq  0x55555555d320 <__sub_mod_384x384>      #! PC = 0x93824992269811 *)
#callq  0x55555555d320 <__sub_mod_384x384>      #! 0x93824992269811 = 0x93824992269811;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffdd78; Value = 0x0000000000000000; PC = 0x93824992269092 *)
mov r8 L0x7fffffffdd78;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffdd80; Value = 0x02726fffff327000; PC = 0x93824992269095 *)
mov r9 L0x7fffffffdd80;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffdd88; Value = 0x2aee76492e2e7640; PC = 0x93824992269099 *)
mov r10 L0x7fffffffdd88;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffdd90; Value = 0x55acc8d55547a389; PC = 0x93824992269103 *)
mov r11 L0x7fffffffdd90;
(* mov    0x20(%rsi),%r12                          #! EA = L0x7fffffffdd98; Value = 0x952a1800ef97dc95; PC = 0x93824992269107 *)
mov r12 L0x7fffffffdd98;
(* mov    0x28(%rsi),%r13                          #! EA = L0x7fffffffdda0; Value = 0x9585d96aae4315d5; PC = 0x93824992269111 *)
mov r13 L0x7fffffffdda0;
(* mov    0x30(%rsi),%r14                          #! EA = L0x7fffffffdda8; Value = 0xc3504a41e781ca55; PC = 0x93824992269115 *)
mov r14 L0x7fffffffdda8;
(* sub    (%rdx),%r8                               #! EA = L0x7fffffffddd8; Value = 0x0000000000000000; PC = 0x93824992269119 *)
subb carry r8 r8 L0x7fffffffddd8;
(* mov    0x38(%rsi),%r15                          #! EA = L0x7fffffffddb0; Value = 0x007343400001fa03; PC = 0x93824992269122 *)
mov r15 L0x7fffffffddb0;
(* sbb    0x8(%rdx),%r9                            #! EA = L0x7fffffffdde0; Value = 0x0000000000000000; PC = 0x93824992269126 *)
sbbs carry r9 r9 L0x7fffffffdde0 carry;
(* mov    0x40(%rsi),%rax                          #! EA = L0x7fffffffddb8; Value = 0x0079f9800000ee00; PC = 0x93824992269130 *)
mov rax L0x7fffffffddb8;
(* sbb    0x10(%rdx),%r10                          #! EA = L0x7fffffffdde8; Value = 0x0000000000000000; PC = 0x93824992269134 *)
sbbs carry r10 r10 L0x7fffffffdde8 carry;
(* mov    0x48(%rsi),%rbx                          #! EA = L0x7fffffffddc0; Value = 0x0081d80001e0ec00; PC = 0x93824992269138 *)
mov rbx L0x7fffffffddc0;
(* sbb    0x18(%rdx),%r11                          #! EA = L0x7fffffffddf0; Value = 0x0000000000000000; PC = 0x93824992269142 *)
sbbs carry r11 r11 L0x7fffffffddf0 carry;
(* mov    0x50(%rsi),%rbp                          #! EA = L0x7fffffffddc8; Value = 0x0000000002000000; PC = 0x93824992269146 *)
mov rbp L0x7fffffffddc8;
(* sbb    0x20(%rdx),%r12                          #! EA = L0x7fffffffddf8; Value = 0x0000000000000000; PC = 0x93824992269150 *)
sbbs carry r12 r12 L0x7fffffffddf8 carry;
(* mov    0x58(%rsi),%rsi                          #! EA = L0x7fffffffddd0; Value = 0x0000000000000000; PC = 0x93824992269154 *)
mov rsi L0x7fffffffddd0;
(* sbb    0x28(%rdx),%r13                          #! EA = L0x7fffffffde00; Value = 0x0000000000000000; PC = 0x93824992269158 *)
sbbs carry r13 r13 L0x7fffffffde00 carry;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffdd78; PC = 0x93824992269162 *)
mov L0x7fffffffdd78 r8;
(* sbb    0x30(%rdx),%r14                          #! EA = L0x7fffffffde08; Value = 0x0000000000000000; PC = 0x93824992269165 *)
sbbs carry r14 r14 L0x7fffffffde08 carry;
(* mov    (%rcx),%r8                               #! EA = L0x5555555658e0; Value = 0xb9feffffffffaaab; PC = 0x93824992269169 *)
mov r8 L0x5555555658e0;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffdd80; PC = 0x93824992269172 *)
mov L0x7fffffffdd80 r9;
(* sbb    0x38(%rdx),%r15                          #! EA = L0x7fffffffde10; Value = 0x0000000000000000; PC = 0x93824992269176 *)
sbbs carry r15 r15 L0x7fffffffde10 carry;
(* mov    0x8(%rcx),%r9                            #! EA = L0x5555555658e8; Value = 0x1eabfffeb153ffff; PC = 0x93824992269180 *)
mov r9 L0x5555555658e8;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffdd88; PC = 0x93824992269184 *)
mov L0x7fffffffdd88 r10;
(* sbb    0x40(%rdx),%rax                          #! EA = L0x7fffffffde18; Value = 0x0000000000000000; PC = 0x93824992269188 *)
sbbs carry rax rax L0x7fffffffde18 carry;
(* mov    0x10(%rcx),%r10                          #! EA = L0x5555555658f0; Value = 0x6730d2a0f6b0f624; PC = 0x93824992269192 *)
mov r10 L0x5555555658f0;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffdd90; PC = 0x93824992269196 *)
mov L0x7fffffffdd90 r11;
(* sbb    0x48(%rdx),%rbx                          #! EA = L0x7fffffffde20; Value = 0x0000000000000000; PC = 0x93824992269200 *)
sbbs carry rbx rbx L0x7fffffffde20 carry;
(* mov    0x18(%rcx),%r11                          #! EA = L0x5555555658f8; Value = 0x64774b84f38512bf; PC = 0x93824992269204 *)
mov r11 L0x5555555658f8;
(* mov    %r12,0x20(%rdi)                          #! EA = L0x7fffffffdd98; PC = 0x93824992269208 *)
mov L0x7fffffffdd98 r12;
(* sbb    0x50(%rdx),%rbp                          #! EA = L0x7fffffffde28; Value = 0x0000000000000000; PC = 0x93824992269212 *)
sbbs carry rbp rbp L0x7fffffffde28 carry;
(* mov    0x20(%rcx),%r12                          #! EA = L0x555555565900; Value = 0x4b1ba7b6434bacd7; PC = 0x93824992269216 *)
mov r12 L0x555555565900;
(* mov    %r13,0x28(%rdi)                          #! EA = L0x7fffffffdda0; PC = 0x93824992269220 *)
mov L0x7fffffffdda0 r13;
(* sbb    0x58(%rdx),%rsi                          #! EA = L0x7fffffffde30; Value = 0x0000000000000000; PC = 0x93824992269224 *)
sbbs carry rsi rsi L0x7fffffffde30 carry;
(* mov    0x28(%rcx),%r13                          #! EA = L0x555555565908; Value = 0x1a0111ea397fe69a; PC = 0x93824992269228 *)
mov r13 L0x555555565908;
(* sbb    %rdx,%rdx                                #! PC = 0x93824992269232 *)
sbbs carry rdx rdx rdx carry;
(* and    %rdx,%r8                                 #! PC = 0x93824992269235 *)
and r8@uint64 rdx r8;
(* and    %rdx,%r9                                 #! PC = 0x93824992269238 *)
and r9@uint64 rdx r9;
(* and    %rdx,%r10                                #! PC = 0x93824992269241 *)
and r10@uint64 rdx r10;
(* and    %rdx,%r11                                #! PC = 0x93824992269244 *)
and r11@uint64 rdx r11;
(* and    %rdx,%r12                                #! PC = 0x93824992269247 *)
and r12@uint64 rdx r12;
(* and    %rdx,%r13                                #! PC = 0x93824992269250 *)
and r13@uint64 rdx r13;
(* add    %r8,%r14                                 #! PC = 0x93824992269253 *)
adds carry r14 r8 r14;
(* adc    %r9,%r15                                 #! PC = 0x93824992269256 *)
adcs carry r15 r9 r15 carry;
(* mov    %r14,0x30(%rdi)                          #! EA = L0x7fffffffdda8; PC = 0x93824992269259 *)
mov L0x7fffffffdda8 r14;
(* adc    %r10,%rax                                #! PC = 0x93824992269263 *)
adcs carry rax r10 rax carry;
(* mov    %r15,0x38(%rdi)                          #! EA = L0x7fffffffddb0; PC = 0x93824992269266 *)
mov L0x7fffffffddb0 r15;
(* adc    %r11,%rbx                                #! PC = 0x93824992269270 *)
adcs carry rbx r11 rbx carry;
(* mov    %rax,0x40(%rdi)                          #! EA = L0x7fffffffddb8; PC = 0x93824992269273 *)
mov L0x7fffffffddb8 rax;
(* adc    %r12,%rbp                                #! PC = 0x93824992269277 *)
adcs carry rbp r12 rbp carry;
(* mov    %rbx,0x48(%rdi)                          #! EA = L0x7fffffffddc0; PC = 0x93824992269280 *)
mov L0x7fffffffddc0 rbx;
(* adc    %r13,%rsi                                #! PC = 0x93824992269284 *)
adcs carry rsi r13 rsi carry;
(* mov    %rbp,0x50(%rdi)                          #! EA = L0x7fffffffddc8; PC = 0x93824992269287 *)
mov L0x7fffffffddc8 rbp;
(* mov    %rsi,0x58(%rdi)                          #! EA = L0x7fffffffddd0; PC = 0x93824992269291 *)
mov L0x7fffffffddd0 rsi;
(* #repz retq                                      #! PC = 0x93824992269295 *)
#repz retq                                      #! 0x93824992269295 = 0x93824992269295;
(* mov    %rcx,%rbx                                #! PC = 0x93824992269816 *)
mov rbx rcx;


assert true
    && eqmod ((limbs 64 [L0x7fffffffdd78, L0x7fffffffdd80, L0x7fffffffdd88,
			 L0x7fffffffdd90, L0x7fffffffdd98, L0x7fffffffdda0,
			 L0x7fffffffdda8, L0x7fffffffddb0, L0x7fffffffddb8,
			 L0x7fffffffddc0, L0x7fffffffddc8, L0x7fffffffddd0]) +
	      (limbs 64 [L0x7fffffffddd8, L0x7fffffffdde0, L0x7fffffffdde8,
			 L0x7fffffffddf0, L0x7fffffffddf8, L0x7fffffffde00,
			 L0x7fffffffde08, L0x7fffffffde10, L0x7fffffffde18,
			 L0x7fffffffde20, L0x7fffffffde28, L0x7fffffffde30]))
	     (limbs 64 [L0x7fffffffdd78o, L0x7fffffffdd80o, L0x7fffffffdd88o,
			L0x7fffffffdd90o, L0x7fffffffdd98o, L0x7fffffffdda0o,
			L0x7fffffffdda8o, L0x7fffffffddb0o, L0x7fffffffddb8o,
			L0x7fffffffddc0o, L0x7fffffffddc8o, L0x7fffffffddd0o])
             (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                          m0,   m1,   m2,   m3,   m4,   m5]);

assume eqmod ((limbs 64 [L0x7fffffffdd78, L0x7fffffffdd80, L0x7fffffffdd88,
			 L0x7fffffffdd90, L0x7fffffffdd98, L0x7fffffffdda0,
			 L0x7fffffffdda8, L0x7fffffffddb0, L0x7fffffffddb8,
			 L0x7fffffffddc0, L0x7fffffffddc8, L0x7fffffffddd0]) +
	      (limbs 64 [L0x7fffffffddd8, L0x7fffffffdde0, L0x7fffffffdde8,
			 L0x7fffffffddf0, L0x7fffffffddf8, L0x7fffffffde00,
			 L0x7fffffffde08, L0x7fffffffde10, L0x7fffffffde18,
			 L0x7fffffffde20, L0x7fffffffde28, L0x7fffffffde30]))
	     (limbs 64 [L0x7fffffffdd78o, L0x7fffffffdd80o, L0x7fffffffdd88o,
			L0x7fffffffdd90o, L0x7fffffffdd98o, L0x7fffffffdda0o,
			L0x7fffffffdda8o, L0x7fffffffddb0o, L0x7fffffffddb8o,
			L0x7fffffffddc0o, L0x7fffffffddc8o, L0x7fffffffddd0o])
             (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5]) && true;

(* Location of bd and ac *)

assert eqmod (limbs 64 [L0x7fffffffddd8, L0x7fffffffdde0, L0x7fffffffdde8,
                        L0x7fffffffddf0, L0x7fffffffddf8, L0x7fffffffde00,
                        L0x7fffffffde08, L0x7fffffffde10, L0x7fffffffde18,
                        L0x7fffffffde20, L0x7fffffffde28, L0x7fffffffde30])
	     ((limbs 64 [b0, b1, b2, b3, b4, b5]) *
               (limbs 64 [d0, d1, d2, d3, d4, d5]))
	     (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5]) && true;

assert eqmod (limbs 64 [L0x7fffffffdd78o, L0x7fffffffdd80o, L0x7fffffffdd88o,
                        L0x7fffffffdd90o, L0x7fffffffdd98o, L0x7fffffffdda0o,
                        L0x7fffffffdda8o, L0x7fffffffddb0o, L0x7fffffffddb8o,
                        L0x7fffffffddc0o, L0x7fffffffddc8o, L0x7fffffffddd0o])
	     ((limbs 64 [a0, a1, a2, a3, a4, a5]) *
              (limbs 64 [c0, c1, c2, c3, c4, c5]))
	     (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5]) && true;


assert eqmod ((limbs 64 [L0x7fffffffdd78, L0x7fffffffdd80, L0x7fffffffdd88,
                         L0x7fffffffdd90, L0x7fffffffdd98, L0x7fffffffdda0,
                         L0x7fffffffdda8, L0x7fffffffddb0, L0x7fffffffddb8,
                         L0x7fffffffddc0, L0x7fffffffddc8, L0x7fffffffddd0]) +
              ((limbs 64 [b0, b1, b2, b3, b4, b5]) *
               (limbs 64 [d0, d1, d2, d3, d4, d5])))
             ((limbs 64 [a0, a1, a2, a3, a4, a5]) *
              (limbs 64 [c0, c1, c2, c3, c4, c5]))
	     (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5]) && true;

(* NOTE: results before Montgomery reduction *)

assert eqmod ((limbs 64 [L0x7fffffffdd78, L0x7fffffffdd80, L0x7fffffffdd88,
                         L0x7fffffffdd90, L0x7fffffffdd98, L0x7fffffffdda0,
                         L0x7fffffffdda8, L0x7fffffffddb0, L0x7fffffffddb8,
                         L0x7fffffffddc0, L0x7fffffffddc8, L0x7fffffffddd0]) +
              (limbs 64 [L0x7fffffffde38, L0x7fffffffde40, L0x7fffffffde48,
                         L0x7fffffffde50, L0x7fffffffde58, L0x7fffffffde60,
                         L0x7fffffffde68, L0x7fffffffde70, L0x7fffffffde78,
                         L0x7fffffffde80, L0x7fffffffde88, L0x7fffffffde90]) * I)
             (((limbs 64 [a0, a1, a2, a3, a4, a5]) +
               (limbs 64 [b0, b1, b2, b3, b4, b5]) * I) *
              ((limbs 64 [c0, c1, c2, c3, c4, c5]) +
               (limbs 64 [d0, d1, d2, d3, d4, d5]) * I))
             [limbs 64 [m0, m1, m2, m3, m4, m5], I * I + 1]
    && true;

cut and [
      eqmod ((limbs 64 [L0x7fffffffdd78, L0x7fffffffdd80, L0x7fffffffdd88,
                         L0x7fffffffdd90, L0x7fffffffdd98, L0x7fffffffdda0,
                         L0x7fffffffdda8, L0x7fffffffddb0, L0x7fffffffddb8,
                         L0x7fffffffddc0, L0x7fffffffddc8, L0x7fffffffddd0]) +
              (limbs 64 [L0x7fffffffde38, L0x7fffffffde40, L0x7fffffffde48,
                         L0x7fffffffde50, L0x7fffffffde58, L0x7fffffffde60,
                         L0x7fffffffde68, L0x7fffffffde70, L0x7fffffffde78,
                         L0x7fffffffde80, L0x7fffffffde88, L0x7fffffffde90]) * I)
             (((limbs 64 [a0, a1, a2, a3, a4, a5]) +
               (limbs 64 [b0, b1, b2, b3, b4, b5]) * I) *
              ((limbs 64 [c0, c1, c2, c3, c4, c5]) +
               (limbs 64 [d0, d1, d2, d3, d4, d5]) * I))
             [limbs 64 [m0, m1, m2, m3, m4, m5], I * I + 1],
            
      eqmod m0 1 2,
      eqmod (1 + m0 * n) 0 (2**64),

      L0x5555555658e0 = m0, L0x5555555658e8 = m1, L0x5555555658f0 = m2,
      L0x5555555658f8 = m3, L0x555555565900 = m4, L0x555555565908 = m5,
      L0x7fffffffdd50 = n
    ]
 && and [
      m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
      m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
      m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64,
    
      L0x5555555658e0 = m0, L0x5555555658e8 = m1, L0x5555555658f0 = m2,
      L0x5555555658f8 = m3, L0x555555565900 = m4, L0x555555565908 = m5,
      
      limbs 64 [L0x7fffffffdd78, L0x7fffffffdd80, L0x7fffffffdd88,
                L0x7fffffffdd90, L0x7fffffffdd98, L0x7fffffffdda0,
                L0x7fffffffdda8, L0x7fffffffddb0, L0x7fffffffddb8,
                L0x7fffffffddc0, L0x7fffffffddc8, L0x7fffffffddd0] <u
      limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                  m0,   m1,   m2,   m3,   m4,   m5],
      limbs 64 [L0x7fffffffde38, L0x7fffffffde40, L0x7fffffffde48,
                L0x7fffffffde50, L0x7fffffffde58, L0x7fffffffde60,
                L0x7fffffffde68, L0x7fffffffde70, L0x7fffffffde78,
                L0x7fffffffde80, L0x7fffffffde88, L0x7fffffffde90] <u
      limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                  m0,   m1,   m2,   m3,   m4,   m5]
    ];

(* NOTE: simplify assumptions just for reduction *)

ecut and [
       eqmod m0 1 2,
       eqmod (1 + m0 * n) 0 (2**64),

       L0x5555555658e0 = m0, L0x5555555658e8 = m1, L0x5555555658f0 = m2,
       L0x5555555658f8 = m3, L0x555555565900 = m4, L0x555555565908 = m5,
       L0x7fffffffdd50 = n
     ];


(* #lea    0x28(%rsp),%rsi                          #! PC = 0x93824992269819 *)
#lea    %%EA,%%rsi                          #! 0x93824992269819 = 0x93824992269819;
(* mov    (%rsp),%rcx                              #! EA = L0x7fffffffdd50; Value = 0x89f3fffcfffcfffd; PC = 0x93824992269824 *)
mov rcx L0x7fffffffdd50;
(* mov    0x20(%rsp),%rdi                          #! EA = L0x7fffffffdd70; Value = 0x00007fffffffdf68; PC = 0x93824992269828 *)
#mov rdi L0x7fffffffdd70;
(* #callq  0x55555555e1c0 <__mulq_by_1_mont_384>   #! PC = 0x93824992269833 *)
#callq  0x55555555e1c0 <__mulq_by_1_mont_384>   #! 0x93824992269833 = 0x93824992269833;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdd78; Value = 0x0000000000000000; PC = 0x93824992272836 *)
mov rax L0x7fffffffdd78;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffdd80; Value = 0x02726fffff327000; PC = 0x93824992272839 *)
mov r9 L0x7fffffffdd80;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffdd88; Value = 0x2aee76492e2e7640; PC = 0x93824992272843 *)
mov r10 L0x7fffffffdd88;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffdd90; Value = 0x55acc8d55547a389; PC = 0x93824992272847 *)
mov r11 L0x7fffffffdd90;
(* mov    0x20(%rsi),%r12                          #! EA = L0x7fffffffdd98; Value = 0x952a1800ef97dc95; PC = 0x93824992272851 *)
mov r12 L0x7fffffffdd98;
(* mov    0x28(%rsi),%r13                          #! EA = L0x7fffffffdda0; Value = 0x9585d96aae4315d5; PC = 0x93824992272855 *)
mov r13 L0x7fffffffdda0;
(* mov    %rax,%r14                                #! PC = 0x93824992272859 *)
mov r14 rax;
(* imul   %rcx,%rax                                #! PC = 0x93824992272862 *)
umull dontcare rax rcx rax;
(* mov    %rax,%r8                                 #! PC = 0x93824992272866 *)
mov r8 rax;
(* mulq   (%rbx)                                   #! EA = L0x5555555658e0; PC = 0x93824992272869 *)
umull rdx rax L0x5555555658e0 rax;
(* add    %rax,%r14                                #! PC = 0x93824992272872 *)
adds carry r14 rax r14;

(* NOTE: Montgomery reduction *)
assert eqmod r14 0 (2**64) && true;
assume r14 = 0 && r14 = 0@64;

(* mov    %r8,%rax                                 #! PC = 0x93824992272875 *)
mov rax r8;
(* adc    %rdx,%r14                                #! PC = 0x93824992272878 *)
adcs carry r14 rdx r14 carry;

assert true && carry = 0@1;
assume carry = 0 && true;

(* mulq   0x8(%rbx)                                #! EA = L0x5555555658e8; PC = 0x93824992272881 *)
umull rdx rax L0x5555555658e8 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992272885 *)
adds carry r9 rax r9;
(* mov    %r8,%rax                                 #! PC = 0x93824992272888 *)
mov rax r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992272891 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r14,%r9                                 #! PC = 0x93824992272895 *)
adds carry r9 r14 r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992272898 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r14                                #! PC = 0x93824992272902 *)
mov r14 rdx;
(* mulq   0x10(%rbx)                               #! EA = L0x5555555658f0; PC = 0x93824992272905 *)
umull rdx rax L0x5555555658f0 rax;
(* add    %rax,%r10                                #! PC = 0x93824992272909 *)
adds carry r10 rax r10;
(* mov    %r8,%rax                                 #! PC = 0x93824992272912 *)
mov rax r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992272915 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r14,%r10                                #! PC = 0x93824992272919 *)
adds carry r10 r14 r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992272922 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r14                                #! PC = 0x93824992272926 *)
mov r14 rdx;
(* mulq   0x18(%rbx)                               #! EA = L0x5555555658f8; PC = 0x93824992272929 *)
umull rdx rax L0x5555555658f8 rax;
(* add    %rax,%r11                                #! PC = 0x93824992272933 *)
adds carry r11 rax r11;
(* mov    %r8,%rax                                 #! PC = 0x93824992272936 *)
mov rax r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992272939 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r9,%r15                                 #! PC = 0x93824992272943 *)
mov r15 r9;
(* imul   %rcx,%r9                                 #! PC = 0x93824992272946 *)
umull dontcare r9 rcx r9;
(* add    %r14,%r11                                #! PC = 0x93824992272950 *)
adds carry r11 r14 r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992272953 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r14                                #! PC = 0x93824992272957 *)
mov r14 rdx;
(* mulq   0x20(%rbx)                               #! EA = L0x555555565900; PC = 0x93824992272960 *)
umull rdx rax L0x555555565900 rax;
(* add    %rax,%r12                                #! PC = 0x93824992272964 *)
adds carry r12 rax r12;
(* mov    %r8,%rax                                 #! PC = 0x93824992272967 *)
mov rax r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992272970 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r14,%r12                                #! PC = 0x93824992272974 *)
adds carry r12 r14 r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992272977 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r14                                #! PC = 0x93824992272981 *)
mov r14 rdx;
(* mulq   0x28(%rbx)                               #! EA = L0x555555565908; PC = 0x93824992272984 *)
umull rdx rax L0x555555565908 rax;
(* add    %rax,%r13                                #! PC = 0x93824992272988 *)
adds carry r13 rax r13;
(* mov    %r9,%rax                                 #! PC = 0x93824992272991 *)
mov rax r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992272994 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r14,%r13                                #! PC = 0x93824992272998 *)
adds carry r13 r14 r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273001 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r14                                #! PC = 0x93824992273005 *)
mov r14 rdx;
(* mulq   (%rbx)                                   #! EA = L0x5555555658e0; PC = 0x93824992273008 *)
umull rdx rax L0x5555555658e0 rax;
(* add    %rax,%r15                                #! PC = 0x93824992273011 *)
adds carry r15 rax r15;

(* NOTE: Montgomery reduction *)
assert eqmod r15 0 (2**64) && true;
assume r15 = 0 && r15 = 0@64;

(* mov    %r9,%rax                                 #! PC = 0x93824992273014 *)
mov rax r9;
(* adc    %rdx,%r15                                #! PC = 0x93824992273017 *)
adcs carry r15 rdx r15 carry;

assert true && carry = 0@1;
assume carry = 0 && true;

(* mulq   0x8(%rbx)                                #! EA = L0x5555555658e8; PC = 0x93824992273020 *)
umull rdx rax L0x5555555658e8 rax;
(* add    %rax,%r10                                #! PC = 0x93824992273024 *)
adds carry r10 rax r10;
(* mov    %r9,%rax                                 #! PC = 0x93824992273027 *)
mov rax r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273030 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r15,%r10                                #! PC = 0x93824992273034 *)
adds carry r10 r15 r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273037 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r15                                #! PC = 0x93824992273041 *)
mov r15 rdx;
(* mulq   0x10(%rbx)                               #! EA = L0x5555555658f0; PC = 0x93824992273044 *)
umull rdx rax L0x5555555658f0 rax;
(* add    %rax,%r11                                #! PC = 0x93824992273048 *)
adds carry r11 rax r11;
(* mov    %r9,%rax                                 #! PC = 0x93824992273051 *)
mov rax r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273054 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r15,%r11                                #! PC = 0x93824992273058 *)
adds carry r11 r15 r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273061 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r15                                #! PC = 0x93824992273065 *)
mov r15 rdx;
(* mulq   0x18(%rbx)                               #! EA = L0x5555555658f8; PC = 0x93824992273068 *)
umull rdx rax L0x5555555658f8 rax;
(* add    %rax,%r12                                #! PC = 0x93824992273072 *)
adds carry r12 rax r12;
(* mov    %r9,%rax                                 #! PC = 0x93824992273075 *)
mov rax r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273078 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r10,%r8                                 #! PC = 0x93824992273082 *)
mov r8 r10;
(* imul   %rcx,%r10                                #! PC = 0x93824992273085 *)
umull dontcare r10 rcx r10;
(* add    %r15,%r12                                #! PC = 0x93824992273089 *)
adds carry r12 r15 r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273092 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r15                                #! PC = 0x93824992273096 *)
mov r15 rdx;
(* mulq   0x20(%rbx)                               #! EA = L0x555555565900; PC = 0x93824992273099 *)
umull rdx rax L0x555555565900 rax;
(* add    %rax,%r13                                #! PC = 0x93824992273103 *)
adds carry r13 rax r13;
(* mov    %r9,%rax                                 #! PC = 0x93824992273106 *)
mov rax r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273109 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r15,%r13                                #! PC = 0x93824992273113 *)
adds carry r13 r15 r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273116 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r15                                #! PC = 0x93824992273120 *)
mov r15 rdx;
(* mulq   0x28(%rbx)                               #! EA = L0x555555565908; PC = 0x93824992273123 *)
umull rdx rax L0x555555565908 rax;
(* add    %rax,%r14                                #! PC = 0x93824992273127 *)
adds carry r14 rax r14;
(* mov    %r10,%rax                                #! PC = 0x93824992273130 *)
mov rax r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273133 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r15,%r14                                #! PC = 0x93824992273137 *)
adds carry r14 r15 r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273140 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r15                                #! PC = 0x93824992273144 *)
mov r15 rdx;
(* mulq   (%rbx)                                   #! EA = L0x5555555658e0; PC = 0x93824992273147 *)
umull rdx rax L0x5555555658e0 rax;
(* add    %rax,%r8                                 #! PC = 0x93824992273150 *)
adds carry r8 rax r8;

(* NOTE: Montgomery reduction *)
assert eqmod r8 0 (2**64) && true;
assume r8 = 0 && r8 = 0@64;

(* mov    %r10,%rax                                #! PC = 0x93824992273153 *)
mov rax r10;
(* adc    %rdx,%r8                                 #! PC = 0x93824992273156 *)
adcs carry r8 rdx r8 carry;

assert true && carry = 0@1;
assume carry = 0 && true;

(* mulq   0x8(%rbx)                                #! EA = L0x5555555658e8; PC = 0x93824992273159 *)
umull rdx rax L0x5555555658e8 rax;
(* add    %rax,%r11                                #! PC = 0x93824992273163 *)
adds carry r11 rax r11;
(* mov    %r10,%rax                                #! PC = 0x93824992273166 *)
mov rax r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273169 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r8,%r11                                 #! PC = 0x93824992273173 *)
adds carry r11 r8 r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273176 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992273180 *)
mov r8 rdx;
(* mulq   0x10(%rbx)                               #! EA = L0x5555555658f0; PC = 0x93824992273183 *)
umull rdx rax L0x5555555658f0 rax;
(* add    %rax,%r12                                #! PC = 0x93824992273187 *)
adds carry r12 rax r12;
(* mov    %r10,%rax                                #! PC = 0x93824992273190 *)
mov rax r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273193 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r8,%r12                                 #! PC = 0x93824992273197 *)
adds carry r12 r8 r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273200 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992273204 *)
mov r8 rdx;
(* mulq   0x18(%rbx)                               #! EA = L0x5555555658f8; PC = 0x93824992273207 *)
umull rdx rax L0x5555555658f8 rax;
(* add    %rax,%r13                                #! PC = 0x93824992273211 *)
adds carry r13 rax r13;
(* mov    %r10,%rax                                #! PC = 0x93824992273214 *)
mov rax r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273217 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r11,%r9                                 #! PC = 0x93824992273221 *)
mov r9 r11;
(* imul   %rcx,%r11                                #! PC = 0x93824992273224 *)
umull dontcare r11 rcx r11;
(* add    %r8,%r13                                 #! PC = 0x93824992273228 *)
adds carry r13 r8 r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273231 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992273235 *)
mov r8 rdx;
(* mulq   0x20(%rbx)                               #! EA = L0x555555565900; PC = 0x93824992273238 *)
umull rdx rax L0x555555565900 rax;
(* add    %rax,%r14                                #! PC = 0x93824992273242 *)
adds carry r14 rax r14;
(* mov    %r10,%rax                                #! PC = 0x93824992273245 *)
mov rax r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273248 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r8,%r14                                 #! PC = 0x93824992273252 *)
adds carry r14 r8 r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273255 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992273259 *)
mov r8 rdx;
(* mulq   0x28(%rbx)                               #! EA = L0x555555565908; PC = 0x93824992273262 *)
umull rdx rax L0x555555565908 rax;
(* add    %rax,%r15                                #! PC = 0x93824992273266 *)
adds carry r15 rax r15;
(* mov    %r11,%rax                                #! PC = 0x93824992273269 *)
mov rax r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273272 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r8,%r15                                 #! PC = 0x93824992273276 *)
adds carry r15 r8 r15;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273279 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992273283 *)
mov r8 rdx;
(* mulq   (%rbx)                                   #! EA = L0x5555555658e0; PC = 0x93824992273286 *)
umull rdx rax L0x5555555658e0 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992273289 *)
adds carry r9 rax r9;

(* NOTE: Montgomery reduction *)
assert eqmod r9 0 (2**64) && true;
assume r9 = 0 && r9 = 0@64;

(* mov    %r11,%rax                                #! PC = 0x93824992273292 *)
mov rax r11;
(* adc    %rdx,%r9                                 #! PC = 0x93824992273295 *)
adcs carry r9 rdx r9 carry;

assert true && carry = 0@1;
assume carry = 0 && true;

(* mulq   0x8(%rbx)                                #! EA = L0x5555555658e8; PC = 0x93824992273298 *)
umull rdx rax L0x5555555658e8 rax;
(* add    %rax,%r12                                #! PC = 0x93824992273302 *)
adds carry r12 rax r12;
(* mov    %r11,%rax                                #! PC = 0x93824992273305 *)
mov rax r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273308 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r9,%r12                                 #! PC = 0x93824992273312 *)
adds carry r12 r9 r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273315 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992273319 *)
mov r9 rdx;
(* mulq   0x10(%rbx)                               #! EA = L0x5555555658f0; PC = 0x93824992273322 *)
umull rdx rax L0x5555555658f0 rax;
(* add    %rax,%r13                                #! PC = 0x93824992273326 *)
adds carry r13 rax r13;
(* mov    %r11,%rax                                #! PC = 0x93824992273329 *)
mov rax r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273332 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r9,%r13                                 #! PC = 0x93824992273336 *)
adds carry r13 r9 r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273339 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992273343 *)
mov r9 rdx;
(* mulq   0x18(%rbx)                               #! EA = L0x5555555658f8; PC = 0x93824992273346 *)
umull rdx rax L0x5555555658f8 rax;
(* add    %rax,%r14                                #! PC = 0x93824992273350 *)
adds carry r14 rax r14;
(* mov    %r11,%rax                                #! PC = 0x93824992273353 *)
mov rax r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273356 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r12,%r10                                #! PC = 0x93824992273360 *)
mov r10 r12;
(* imul   %rcx,%r12                                #! PC = 0x93824992273363 *)
umull dontcare r12 rcx r12;
(* add    %r9,%r14                                 #! PC = 0x93824992273367 *)
adds carry r14 r9 r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273370 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992273374 *)
mov r9 rdx;
(* mulq   0x20(%rbx)                               #! EA = L0x555555565900; PC = 0x93824992273377 *)
umull rdx rax L0x555555565900 rax;
(* add    %rax,%r15                                #! PC = 0x93824992273381 *)
adds carry r15 rax r15;
(* mov    %r11,%rax                                #! PC = 0x93824992273384 *)
mov rax r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273387 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r9,%r15                                 #! PC = 0x93824992273391 *)
adds carry r15 r9 r15;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273394 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992273398 *)
mov r9 rdx;
(* mulq   0x28(%rbx)                               #! EA = L0x555555565908; PC = 0x93824992273401 *)
umull rdx rax L0x555555565908 rax;
(* add    %rax,%r8                                 #! PC = 0x93824992273405 *)
adds carry r8 rax r8;
(* mov    %r12,%rax                                #! PC = 0x93824992273408 *)
mov rax r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273411 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r9,%r8                                  #! PC = 0x93824992273415 *)
adds carry r8 r9 r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273418 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992273422 *)
mov r9 rdx;
(* mulq   (%rbx)                                   #! EA = L0x5555555658e0; PC = 0x93824992273425 *)
umull rdx rax L0x5555555658e0 rax;
(* add    %rax,%r10                                #! PC = 0x93824992273428 *)
adds carry r10 rax r10;

(* NOTE: Montgomery reduction *)
assert eqmod r10 0 (2**64) && true;
assume r10 = 0 && r10 = 0@64;

(* mov    %r12,%rax                                #! PC = 0x93824992273431 *)
mov rax r12;
(* adc    %rdx,%r10                                #! PC = 0x93824992273434 *)
adcs carry r10 rdx r10 carry;

assert true && carry = 0@1;
assume carry = 0 && true;

(* mulq   0x8(%rbx)                                #! EA = L0x5555555658e8; PC = 0x93824992273437 *)
umull rdx rax L0x5555555658e8 rax;
(* add    %rax,%r13                                #! PC = 0x93824992273441 *)
adds carry r13 rax r13;
(* mov    %r12,%rax                                #! PC = 0x93824992273444 *)
mov rax r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273447 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r10,%r13                                #! PC = 0x93824992273451 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273454 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992273458 *)
mov r10 rdx;
(* mulq   0x10(%rbx)                               #! EA = L0x5555555658f0; PC = 0x93824992273461 *)
umull rdx rax L0x5555555658f0 rax;
(* add    %rax,%r14                                #! PC = 0x93824992273465 *)
adds carry r14 rax r14;
(* mov    %r12,%rax                                #! PC = 0x93824992273468 *)
mov rax r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273471 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r10,%r14                                #! PC = 0x93824992273475 *)
adds carry r14 r10 r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273478 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992273482 *)
mov r10 rdx;
(* mulq   0x18(%rbx)                               #! EA = L0x5555555658f8; PC = 0x93824992273485 *)
umull rdx rax L0x5555555658f8 rax;
(* add    %rax,%r15                                #! PC = 0x93824992273489 *)
adds carry r15 rax r15;
(* mov    %r12,%rax                                #! PC = 0x93824992273492 *)
mov rax r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273495 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r13,%r11                                #! PC = 0x93824992273499 *)
mov r11 r13;
(* imul   %rcx,%r13                                #! PC = 0x93824992273502 *)
umull dontcare r13 rcx r13;
(* add    %r10,%r15                                #! PC = 0x93824992273506 *)
adds carry r15 r10 r15;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273509 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992273513 *)
mov r10 rdx;
(* mulq   0x20(%rbx)                               #! EA = L0x555555565900; PC = 0x93824992273516 *)
umull rdx rax L0x555555565900 rax;
(* add    %rax,%r8                                 #! PC = 0x93824992273520 *)
adds carry r8 rax r8;
(* mov    %r12,%rax                                #! PC = 0x93824992273523 *)
mov rax r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273526 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r10,%r8                                 #! PC = 0x93824992273530 *)
adds carry r8 r10 r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273533 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992273537 *)
mov r10 rdx;
(* mulq   0x28(%rbx)                               #! EA = L0x555555565908; PC = 0x93824992273540 *)
umull rdx rax L0x555555565908 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992273544 *)
adds carry r9 rax r9;
(* mov    %r13,%rax                                #! PC = 0x93824992273547 *)
mov rax r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273550 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r10,%r9                                 #! PC = 0x93824992273554 *)
adds carry r9 r10 r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273557 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992273561 *)
mov r10 rdx;
(* mulq   (%rbx)                                   #! EA = L0x5555555658e0; PC = 0x93824992273564 *)
umull rdx rax L0x5555555658e0 rax;
(* add    %rax,%r11                                #! PC = 0x93824992273567 *)
adds carry r11 rax r11;

(* NOTE: Montgomery reduction *)
assert eqmod r11 0 (2**64) && true;
assume r11 = 0 && r11 = 0@64;

(* mov    %r13,%rax                                #! PC = 0x93824992273570 *)
mov rax r13;
(* adc    %rdx,%r11                                #! PC = 0x93824992273573 *)
adcs carry r11 rdx r11 carry;

assert true && carry = 0@1;
assume carry = 0 && true;

(* mulq   0x8(%rbx)                                #! EA = L0x5555555658e8; PC = 0x93824992273576 *)
umull rdx rax L0x5555555658e8 rax;
(* add    %rax,%r14                                #! PC = 0x93824992273580 *)
adds carry r14 rax r14;
(* mov    %r13,%rax                                #! PC = 0x93824992273583 *)
mov rax r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273586 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r14                                #! PC = 0x93824992273590 *)
adds carry r14 r11 r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273593 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992273597 *)
mov r11 rdx;
(* mulq   0x10(%rbx)                               #! EA = L0x5555555658f0; PC = 0x93824992273600 *)
umull rdx rax L0x5555555658f0 rax;
(* add    %rax,%r15                                #! PC = 0x93824992273604 *)
adds carry r15 rax r15;
(* mov    %r13,%rax                                #! PC = 0x93824992273607 *)
mov rax r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273610 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r15                                #! PC = 0x93824992273614 *)
adds carry r15 r11 r15;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273617 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992273621 *)
mov r11 rdx;
(* mulq   0x18(%rbx)                               #! EA = L0x5555555658f8; PC = 0x93824992273624 *)
umull rdx rax L0x5555555658f8 rax;
(* add    %rax,%r8                                 #! PC = 0x93824992273628 *)
adds carry r8 rax r8;
(* mov    %r13,%rax                                #! PC = 0x93824992273631 *)
mov rax r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273634 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r8                                 #! PC = 0x93824992273638 *)
adds carry r8 r11 r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273641 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992273645 *)
mov r11 rdx;
(* mulq   0x20(%rbx)                               #! EA = L0x555555565900; PC = 0x93824992273648 *)
umull rdx rax L0x555555565900 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992273652 *)
adds carry r9 rax r9;
(* mov    %r13,%rax                                #! PC = 0x93824992273655 *)
mov rax r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273658 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r9                                 #! PC = 0x93824992273662 *)
adds carry r9 r11 r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273665 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992273669 *)
mov r11 rdx;
(* mulq   0x28(%rbx)                               #! EA = L0x555555565908; PC = 0x93824992273672 *)
umull rdx rax L0x555555565908 rax;
(* add    %rax,%r10                                #! PC = 0x93824992273676 *)
adds carry r10 rax r10;
(* mov    %r14,%rax                                #! PC = 0x93824992273679 *)
mov rax r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273682 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r10                                #! PC = 0x93824992273686 *)
adds carry r10 r11 r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273689 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992273693 *)
mov r11 rdx;
(* #repz retq                                      #! PC = 0x93824992273696 *)
#repz retq                                      #! 0x93824992273696 = 0x93824992273696;


(* end of redc *)

(* NOTE: simplify for later reduction *)

ecut and [
       eqmod (limbs 64 [0, 0, 0, 0, 0, 0, r14, r15, r8, r9, r10, r11])
             (limbs 64 [L0x7fffffffdd78, L0x7fffffffdd80, L0x7fffffffdd88,
                        L0x7fffffffdd90, L0x7fffffffdd98, L0x7fffffffdda0])
             (limbs 64 [m0, m1, m2, m3, m4, m5]),
             
       eqmod m0 1 2,
       eqmod (1 + m0 * n) 0 (2**64),
             
       L0x5555555658e0 = m0, L0x5555555658e8 = m1, L0x5555555658f0 = m2,
       L0x5555555658f8 = m3, L0x555555565900 = m4, L0x555555565908 = m5,
       L0x7fffffffdd50 = n
     ];
rcut and [
      m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
      m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
      m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64,
    
      L0x5555555658e0 = m0, L0x5555555658e8 = m1, L0x5555555658f0 = m2,
      L0x5555555658f8 = m3, L0x555555565900 = m4, L0x555555565908 = m5,
      
      limbs 64 [L0x7fffffffdd78, L0x7fffffffdd80, L0x7fffffffdd88,
                L0x7fffffffdd90, L0x7fffffffdd98, L0x7fffffffdda0,
                L0x7fffffffdda8, L0x7fffffffddb0, L0x7fffffffddb8,
                L0x7fffffffddc0, L0x7fffffffddc8, L0x7fffffffddd0] <u
      limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                  m0,   m1,   m2,   m3,   m4,   m5],
      limbs 64 [L0x7fffffffde38, L0x7fffffffde40, L0x7fffffffde48,
                L0x7fffffffde50, L0x7fffffffde58, L0x7fffffffde60,
                L0x7fffffffde68, L0x7fffffffde70, L0x7fffffffde78,
                L0x7fffffffde80, L0x7fffffffde88, L0x7fffffffde90] <u
      limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                  m0,   m1,   m2,   m3,   m4,   m5],

      limbs 64 [r14, r15, r8, r9, r10, r11] <u
      2@384 * (limbs 64 [m0, m1, m2, m3, m4, m5])
    ];

ghost r14o@uint64, r15o@uint64, r8o@uint64,
      r9o@uint64, r10o@uint64, r11o@uint64 :
      and [r14o = r14, r15o = r15, r8o = r8,
           r9o = r9, r10o = r10, r11o = r11]
   && and [r14o = r14, r15o = r15, r8o = r8,
           r9o = r9, r10o = r10, r11o = r11];


(* #callq  0x55555555e540 <__redc_tail_mont_384>   #! PC = 0x93824992269838 *)
#callq  0x55555555e540 <__redc_tail_mont_384>   #! 0x93824992269838 = 0x93824992269838;
(* add    0x30(%rsi),%r14                          #! EA = L0x7fffffffdda8; Value = 0xc3504a41e781ca55; PC = 0x93824992273732 *)
adds carry r14 L0x7fffffffdda8 r14;
(* mov    %r14,%rax                                #! PC = 0x93824992273736 *)
mov rax r14;
(* adc    0x38(%rsi),%r15                          #! EA = L0x7fffffffddb0; Value = 0x007343400001fa03; PC = 0x93824992273739 *)
adcs carry r15 L0x7fffffffddb0 r15 carry;
(* adc    0x40(%rsi),%r8                           #! EA = L0x7fffffffddb8; Value = 0x0079f9800000ee00; PC = 0x93824992273743 *)
adcs carry r8 L0x7fffffffddb8 r8 carry;
(* adc    0x48(%rsi),%r9                           #! EA = L0x7fffffffddc0; Value = 0x0081d80001e0ec00; PC = 0x93824992273747 *)
adcs carry r9 L0x7fffffffddc0 r9 carry;
(* mov    %r15,%rcx                                #! PC = 0x93824992273751 *)
mov rcx r15;
(* adc    0x50(%rsi),%r10                          #! EA = L0x7fffffffddc8; Value = 0x0000000002000000; PC = 0x93824992273754 *)
adcs carry r10 L0x7fffffffddc8 r10 carry;
(* adc    0x58(%rsi),%r11                          #! EA = L0x7fffffffddd0; Value = 0x0000000000000000; PC = 0x93824992273758 *)
adcs carry r11 L0x7fffffffddd0 r11 carry;
(* sbb    %r12,%r12                                #! PC = 0x93824992273762 *)
sbbs carry r12 r12 r12 carry;
(* mov    %r8,%rdx                                 #! PC = 0x93824992273765 *)
mov rdx r8;
(* mov    %r9,%rbp                                 #! PC = 0x93824992273768 *)
mov rbp r9;
(* sub    (%rbx),%r14                              #! EA = L0x5555555658e0; Value = 0xb9feffffffffaaab; PC = 0x93824992273771 *)
subb carry r14 r14 L0x5555555658e0;
(* sbb    0x8(%rbx),%r15                           #! EA = L0x5555555658e8; Value = 0x1eabfffeb153ffff; PC = 0x93824992273774 *)
sbbs carry r15 r15 L0x5555555658e8 carry;
(* mov    %r10,%r13                                #! PC = 0x93824992273778 *)
mov r13 r10;
(* sbb    0x10(%rbx),%r8                           #! EA = L0x5555555658f0; Value = 0x6730d2a0f6b0f624; PC = 0x93824992273781 *)
sbbs carry r8 r8 L0x5555555658f0 carry;
(* sbb    0x18(%rbx),%r9                           #! EA = L0x5555555658f8; Value = 0x64774b84f38512bf; PC = 0x93824992273785 *)
sbbs carry r9 r9 L0x5555555658f8 carry;
(* sbb    0x20(%rbx),%r10                          #! EA = L0x555555565900; Value = 0x4b1ba7b6434bacd7; PC = 0x93824992273789 *)
sbbs carry r10 r10 L0x555555565900 carry;
(* mov    %r11,%rsi                                #! PC = 0x93824992273793 *)
mov rsi r11;
(* sbb    0x28(%rbx),%r11                          #! EA = L0x555555565908; Value = 0x1a0111ea397fe69a; PC = 0x93824992273796 *)
sbbs carry r11 r11 L0x555555565908 carry;
(* sbb    $0x0,%r12                                #! PC = 0x93824992273800 *)
sbbs carry r12 r12 0@uint64 carry;
(* cmovb  %rax,%r14                                #! PC = 0x93824992273804 *)
cmov r14 carry rax r14;
(* cmovb  %rcx,%r15                                #! PC = 0x93824992273808 *)
cmov r15 carry rcx r15;
(* cmovb  %rdx,%r8                                 #! PC = 0x93824992273812 *)
cmov r8 carry rdx r8;
(* mov    %r14,(%rdi)                              #! EA = L0x7fffffffdf68; PC = 0x93824992273816 *)
mov L0x7fffffffdf68 r14;
(* cmovb  %rbp,%r9                                 #! PC = 0x93824992273819 *)
cmov r9 carry rbp r9;
(* mov    %r15,0x8(%rdi)                           #! EA = L0x7fffffffdf70; PC = 0x93824992273823 *)
mov L0x7fffffffdf70 r15;
(* cmovb  %r13,%r10                                #! PC = 0x93824992273827 *)
cmov r10 carry r13 r10;
(* mov    %r8,0x10(%rdi)                           #! EA = L0x7fffffffdf78; PC = 0x93824992273831 *)
mov L0x7fffffffdf78 r8;
(* cmovb  %rsi,%r11                                #! PC = 0x93824992273835 *)
cmov r11 carry rsi r11;
(* mov    %r9,0x18(%rdi)                           #! EA = L0x7fffffffdf80; PC = 0x93824992273839 *)
mov L0x7fffffffdf80 r9;
(* mov    %r10,0x20(%rdi)                          #! EA = L0x7fffffffdf88; PC = 0x93824992273843 *)
mov L0x7fffffffdf88 r10;
(* mov    %r11,0x28(%rdi)                          #! EA = L0x7fffffffdf90; PC = 0x93824992273847 *)
mov L0x7fffffffdf90 r11;
(* #repz retq                                      #! PC = 0x93824992273851 *)
#repz retq                                      #! 0x93824992273851 = 0x93824992273851;


assert true
    && eqmod (limbs 64 [L0x7fffffffdf68, L0x7fffffffdf70, L0x7fffffffdf78,
                        L0x7fffffffdf80, L0x7fffffffdf88, L0x7fffffffdf90])
             ((limbs 64 [r14o, r15o, r8o, r9o, r10o, r11o]) +
              (limbs 64 [L0x7fffffffdda8, L0x7fffffffddb0, L0x7fffffffddb8,
                         L0x7fffffffddc0, L0x7fffffffddc8, L0x7fffffffddd0]))
             (limbs 64 [m0, m1, m2, m3, m4, m5]);

assume eqmod (limbs 64 [L0x7fffffffdf68, L0x7fffffffdf70, L0x7fffffffdf78,
                        L0x7fffffffdf80, L0x7fffffffdf88, L0x7fffffffdf90])
             ((limbs 64 [r14o, r15o, r8o, r9o, r10o, r11o]) +
              (limbs 64 [L0x7fffffffdda8, L0x7fffffffddb0, L0x7fffffffddb8,
                         L0x7fffffffddc0, L0x7fffffffddc8, L0x7fffffffddd0]))
             (limbs 64 [m0, m1, m2, m3, m4, m5]) && true;

(* NOTE: simplify assumptions just for reduction *)

ecut and [
       eqmod (limbs 64 [0, 0, 0, 0, 0, 0,
                        L0x7fffffffdf68, L0x7fffffffdf70, L0x7fffffffdf78,
                        L0x7fffffffdf80, L0x7fffffffdf88, L0x7fffffffdf90])
             (limbs 64 [L0x7fffffffdd78, L0x7fffffffdd80, L0x7fffffffdd88,
                        L0x7fffffffdd90, L0x7fffffffdd98, L0x7fffffffdda0,
                        L0x7fffffffdda8, L0x7fffffffddb0, L0x7fffffffddb8,
                        L0x7fffffffddc0, L0x7fffffffddc8, L0x7fffffffddd0])
             (limbs 64 [m0, m1, m2, m3, m4, m5]),
             
       eqmod m0 1 2,
       eqmod (1 + m0 * n) 0 (2**64),

       L0x5555555658e0 = m0, L0x5555555658e8 = m1, L0x5555555658f0 = m2,
       L0x5555555658f8 = m3, L0x555555565900 = m4, L0x555555565908 = m5,
       L0x7fffffffdd50 = n
     ];

(* #lea    0xe8(%rsp),%rsi                          #! PC = 0x93824992269843 *)
#lea    %%EA,%%rsi                          #! 0x93824992269843 = 0x93824992269843;
(* mov    (%rsp),%rcx                              #! EA = L0x7fffffffdd50; Value = 0x89f3fffcfffcfffd; PC = 0x93824992269851 *)
mov rcx L0x7fffffffdd50;
(* #lea    0x30(%rdi),%rdi                          #! PC = 0x93824992269855 *)
#lea    %%EA,%%rdi                          #! 0x93824992269855 = 0x93824992269855;
(* #callq  0x55555555e1c0 <__mulq_by_1_mont_384>   #! PC = 0x93824992269859 *)
#callq  0x55555555e1c0 <__mulq_by_1_mont_384>   #! 0x93824992269859 = 0x93824992269859;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffde38; Value = 0x0bb69ec008769ec0; PC = 0x93824992272836 *)
mov rax L0x7fffffffde38;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffde40; Value = 0xd8fdddb1d75dde00; PC = 0x93824992272839 *)
mov r9 L0x7fffffffde40;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffde48; Value = 0x6195e89563873cb1; PC = 0x93824992272843 *)
mov r10 L0x7fffffffde48;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffde50; Value = 0x54ecd537fed51d55; PC = 0x93824992272847 *)
mov r11 L0x7fffffffde50;
(* mov    0x20(%rsi),%r12                          #! EA = L0x7fffffffde58; Value = 0xb150b60002a56f53; PC = 0x93824992272851 *)
mov r12 L0x7fffffffde58;
(* mov    0x28(%rsi),%r13                          #! EA = L0x7fffffffde60; Value = 0x48428feffaa0daa8; PC = 0x93824992272855 *)
mov r13 L0x7fffffffde60;
(* mov    %rax,%r14                                #! PC = 0x93824992272859 *)
mov r14 rax;
(* imul   %rcx,%rax                                #! PC = 0x93824992272862 *)
umull dontcare rax rcx rax;
(* mov    %rax,%r8                                 #! PC = 0x93824992272866 *)
mov r8 rax;
(* mulq   (%rbx)                                   #! EA = L0x5555555658e0; PC = 0x93824992272869 *)
umull rdx rax L0x5555555658e0 rax;
(* add    %rax,%r14                                #! PC = 0x93824992272872 *)
adds carry r14 rax r14;

(* NOTE: Montgomery reduction *)
assert eqmod r14 0 (2**64) && true;
assume r14 = 0 && r14 = 0@64;

(* mov    %r8,%rax                                 #! PC = 0x93824992272875 *)
mov rax r8;
(* adc    %rdx,%r14                                #! PC = 0x93824992272878 *)
adcs carry r14 rdx r14 carry;

assert true && carry = 0@1;
assume carry = 0 && true;

(* mulq   0x8(%rbx)                                #! EA = L0x5555555658e8; PC = 0x93824992272881 *)
umull rdx rax L0x5555555658e8 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992272885 *)
adds carry r9 rax r9;
(* mov    %r8,%rax                                 #! PC = 0x93824992272888 *)
mov rax r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992272891 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r14,%r9                                 #! PC = 0x93824992272895 *)
adds carry r9 r14 r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992272898 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r14                                #! PC = 0x93824992272902 *)
mov r14 rdx;
(* mulq   0x10(%rbx)                               #! EA = L0x5555555658f0; PC = 0x93824992272905 *)
umull rdx rax L0x5555555658f0 rax;
(* add    %rax,%r10                                #! PC = 0x93824992272909 *)
adds carry r10 rax r10;
(* mov    %r8,%rax                                 #! PC = 0x93824992272912 *)
mov rax r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992272915 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r14,%r10                                #! PC = 0x93824992272919 *)
adds carry r10 r14 r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992272922 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r14                                #! PC = 0x93824992272926 *)
mov r14 rdx;
(* mulq   0x18(%rbx)                               #! EA = L0x5555555658f8; PC = 0x93824992272929 *)
umull rdx rax L0x5555555658f8 rax;
(* add    %rax,%r11                                #! PC = 0x93824992272933 *)
adds carry r11 rax r11;
(* mov    %r8,%rax                                 #! PC = 0x93824992272936 *)
mov rax r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992272939 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r9,%r15                                 #! PC = 0x93824992272943 *)
mov r15 r9;
(* imul   %rcx,%r9                                 #! PC = 0x93824992272946 *)
umull dontcare r9 rcx r9;
(* add    %r14,%r11                                #! PC = 0x93824992272950 *)
adds carry r11 r14 r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992272953 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r14                                #! PC = 0x93824992272957 *)
mov r14 rdx;
(* mulq   0x20(%rbx)                               #! EA = L0x555555565900; PC = 0x93824992272960 *)
umull rdx rax L0x555555565900 rax;
(* add    %rax,%r12                                #! PC = 0x93824992272964 *)
adds carry r12 rax r12;
(* mov    %r8,%rax                                 #! PC = 0x93824992272967 *)
mov rax r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992272970 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r14,%r12                                #! PC = 0x93824992272974 *)
adds carry r12 r14 r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992272977 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r14                                #! PC = 0x93824992272981 *)
mov r14 rdx;
(* mulq   0x28(%rbx)                               #! EA = L0x555555565908; PC = 0x93824992272984 *)
umull rdx rax L0x555555565908 rax;
(* add    %rax,%r13                                #! PC = 0x93824992272988 *)
adds carry r13 rax r13;
(* mov    %r9,%rax                                 #! PC = 0x93824992272991 *)
mov rax r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992272994 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r14,%r13                                #! PC = 0x93824992272998 *)
adds carry r13 r14 r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273001 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r14                                #! PC = 0x93824992273005 *)
mov r14 rdx;
(* mulq   (%rbx)                                   #! EA = L0x5555555658e0; PC = 0x93824992273008 *)
umull rdx rax L0x5555555658e0 rax;
(* add    %rax,%r15                                #! PC = 0x93824992273011 *)
adds carry r15 rax r15;

(* NOTE: Montgomery reduction *)
assert eqmod r15 0 (2**64) && true;
assume r15 = 0 && r15 = 0@64;

(* mov    %r9,%rax                                 #! PC = 0x93824992273014 *)
mov rax r9;
(* adc    %rdx,%r15                                #! PC = 0x93824992273017 *)
adcs carry r15 rdx r15 carry;

assert true && carry = 0@1;
assume carry = 0 && true;

(* mulq   0x8(%rbx)                                #! EA = L0x5555555658e8; PC = 0x93824992273020 *)
umull rdx rax L0x5555555658e8 rax;
(* add    %rax,%r10                                #! PC = 0x93824992273024 *)
adds carry r10 rax r10;
(* mov    %r9,%rax                                 #! PC = 0x93824992273027 *)
mov rax r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273030 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r15,%r10                                #! PC = 0x93824992273034 *)
adds carry r10 r15 r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273037 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r15                                #! PC = 0x93824992273041 *)
mov r15 rdx;
(* mulq   0x10(%rbx)                               #! EA = L0x5555555658f0; PC = 0x93824992273044 *)
umull rdx rax L0x5555555658f0 rax;
(* add    %rax,%r11                                #! PC = 0x93824992273048 *)
adds carry r11 rax r11;
(* mov    %r9,%rax                                 #! PC = 0x93824992273051 *)
mov rax r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273054 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r15,%r11                                #! PC = 0x93824992273058 *)
adds carry r11 r15 r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273061 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r15                                #! PC = 0x93824992273065 *)
mov r15 rdx;
(* mulq   0x18(%rbx)                               #! EA = L0x5555555658f8; PC = 0x93824992273068 *)
umull rdx rax L0x5555555658f8 rax;
(* add    %rax,%r12                                #! PC = 0x93824992273072 *)
adds carry r12 rax r12;
(* mov    %r9,%rax                                 #! PC = 0x93824992273075 *)
mov rax r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273078 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r10,%r8                                 #! PC = 0x93824992273082 *)
mov r8 r10;
(* imul   %rcx,%r10                                #! PC = 0x93824992273085 *)
umull dontcare r10 rcx r10;
(* add    %r15,%r12                                #! PC = 0x93824992273089 *)
adds carry r12 r15 r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273092 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r15                                #! PC = 0x93824992273096 *)
mov r15 rdx;
(* mulq   0x20(%rbx)                               #! EA = L0x555555565900; PC = 0x93824992273099 *)
umull rdx rax L0x555555565900 rax;
(* add    %rax,%r13                                #! PC = 0x93824992273103 *)
adds carry r13 rax r13;
(* mov    %r9,%rax                                 #! PC = 0x93824992273106 *)
mov rax r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273109 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r15,%r13                                #! PC = 0x93824992273113 *)
adds carry r13 r15 r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273116 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r15                                #! PC = 0x93824992273120 *)
mov r15 rdx;
(* mulq   0x28(%rbx)                               #! EA = L0x555555565908; PC = 0x93824992273123 *)
umull rdx rax L0x555555565908 rax;
(* add    %rax,%r14                                #! PC = 0x93824992273127 *)
adds carry r14 rax r14;
(* mov    %r10,%rax                                #! PC = 0x93824992273130 *)
mov rax r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273133 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r15,%r14                                #! PC = 0x93824992273137 *)
adds carry r14 r15 r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273140 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r15                                #! PC = 0x93824992273144 *)
mov r15 rdx;
(* mulq   (%rbx)                                   #! EA = L0x5555555658e0; PC = 0x93824992273147 *)
umull rdx rax L0x5555555658e0 rax;
(* add    %rax,%r8                                 #! PC = 0x93824992273150 *)
adds carry r8 rax r8;

(* NOTE: Montgomery reduction *)
assert eqmod r8 0 (2**64) && true;
assume r8 = 0 && r8 = 0@64;

(* mov    %r10,%rax                                #! PC = 0x93824992273153 *)
mov rax r10;
(* adc    %rdx,%r8                                 #! PC = 0x93824992273156 *)
adcs carry r8 rdx r8 carry;

assert true && carry = 0@1;
assume carry = 0 && true;

(* mulq   0x8(%rbx)                                #! EA = L0x5555555658e8; PC = 0x93824992273159 *)
umull rdx rax L0x5555555658e8 rax;
(* add    %rax,%r11                                #! PC = 0x93824992273163 *)
adds carry r11 rax r11;
(* mov    %r10,%rax                                #! PC = 0x93824992273166 *)
mov rax r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273169 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r8,%r11                                 #! PC = 0x93824992273173 *)
adds carry r11 r8 r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273176 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992273180 *)
mov r8 rdx;
(* mulq   0x10(%rbx)                               #! EA = L0x5555555658f0; PC = 0x93824992273183 *)
umull rdx rax L0x5555555658f0 rax;
(* add    %rax,%r12                                #! PC = 0x93824992273187 *)
adds carry r12 rax r12;
(* mov    %r10,%rax                                #! PC = 0x93824992273190 *)
mov rax r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273193 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r8,%r12                                 #! PC = 0x93824992273197 *)
adds carry r12 r8 r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273200 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992273204 *)
mov r8 rdx;
(* mulq   0x18(%rbx)                               #! EA = L0x5555555658f8; PC = 0x93824992273207 *)
umull rdx rax L0x5555555658f8 rax;
(* add    %rax,%r13                                #! PC = 0x93824992273211 *)
adds carry r13 rax r13;
(* mov    %r10,%rax                                #! PC = 0x93824992273214 *)
mov rax r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273217 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r11,%r9                                 #! PC = 0x93824992273221 *)
mov r9 r11;
(* imul   %rcx,%r11                                #! PC = 0x93824992273224 *)
umull dontcare r11 rcx r11;
(* add    %r8,%r13                                 #! PC = 0x93824992273228 *)
adds carry r13 r8 r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273231 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992273235 *)
mov r8 rdx;
(* mulq   0x20(%rbx)                               #! EA = L0x555555565900; PC = 0x93824992273238 *)
umull rdx rax L0x555555565900 rax;
(* add    %rax,%r14                                #! PC = 0x93824992273242 *)
adds carry r14 rax r14;
(* mov    %r10,%rax                                #! PC = 0x93824992273245 *)
mov rax r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273248 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r8,%r14                                 #! PC = 0x93824992273252 *)
adds carry r14 r8 r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273255 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992273259 *)
mov r8 rdx;
(* mulq   0x28(%rbx)                               #! EA = L0x555555565908; PC = 0x93824992273262 *)
umull rdx rax L0x555555565908 rax;
(* add    %rax,%r15                                #! PC = 0x93824992273266 *)
adds carry r15 rax r15;
(* mov    %r11,%rax                                #! PC = 0x93824992273269 *)
mov rax r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273272 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r8,%r15                                 #! PC = 0x93824992273276 *)
adds carry r15 r8 r15;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273279 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992273283 *)
mov r8 rdx;
(* mulq   (%rbx)                                   #! EA = L0x5555555658e0; PC = 0x93824992273286 *)
umull rdx rax L0x5555555658e0 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992273289 *)
adds carry r9 rax r9;

(* NOTE: Montgomery reduction *)
assert eqmod r9 0 (2**64) && true;
assume r9 = 0 && r9 = 0@64;

(* mov    %r11,%rax                                #! PC = 0x93824992273292 *)
mov rax r11;
(* adc    %rdx,%r9                                 #! PC = 0x93824992273295 *)
adcs carry r9 rdx r9 carry;

assert true && carry = 0@1;
assume carry = 0 && true;

(* mulq   0x8(%rbx)                                #! EA = L0x5555555658e8; PC = 0x93824992273298 *)
umull rdx rax L0x5555555658e8 rax;
(* add    %rax,%r12                                #! PC = 0x93824992273302 *)
adds carry r12 rax r12;
(* mov    %r11,%rax                                #! PC = 0x93824992273305 *)
mov rax r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273308 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r9,%r12                                 #! PC = 0x93824992273312 *)
adds carry r12 r9 r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273315 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992273319 *)
mov r9 rdx;
(* mulq   0x10(%rbx)                               #! EA = L0x5555555658f0; PC = 0x93824992273322 *)
umull rdx rax L0x5555555658f0 rax;
(* add    %rax,%r13                                #! PC = 0x93824992273326 *)
adds carry r13 rax r13;
(* mov    %r11,%rax                                #! PC = 0x93824992273329 *)
mov rax r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273332 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r9,%r13                                 #! PC = 0x93824992273336 *)
adds carry r13 r9 r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273339 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992273343 *)
mov r9 rdx;
(* mulq   0x18(%rbx)                               #! EA = L0x5555555658f8; PC = 0x93824992273346 *)
umull rdx rax L0x5555555658f8 rax;
(* add    %rax,%r14                                #! PC = 0x93824992273350 *)
adds carry r14 rax r14;
(* mov    %r11,%rax                                #! PC = 0x93824992273353 *)
mov rax r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273356 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r12,%r10                                #! PC = 0x93824992273360 *)
mov r10 r12;
(* imul   %rcx,%r12                                #! PC = 0x93824992273363 *)
umull dontcare r12 rcx r12;
(* add    %r9,%r14                                 #! PC = 0x93824992273367 *)
adds carry r14 r9 r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273370 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992273374 *)
mov r9 rdx;
(* mulq   0x20(%rbx)                               #! EA = L0x555555565900; PC = 0x93824992273377 *)
umull rdx rax L0x555555565900 rax;
(* add    %rax,%r15                                #! PC = 0x93824992273381 *)
adds carry r15 rax r15;
(* mov    %r11,%rax                                #! PC = 0x93824992273384 *)
mov rax r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273387 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r9,%r15                                 #! PC = 0x93824992273391 *)
adds carry r15 r9 r15;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273394 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992273398 *)
mov r9 rdx;
(* mulq   0x28(%rbx)                               #! EA = L0x555555565908; PC = 0x93824992273401 *)
umull rdx rax L0x555555565908 rax;
(* add    %rax,%r8                                 #! PC = 0x93824992273405 *)
adds carry r8 rax r8;
(* mov    %r12,%rax                                #! PC = 0x93824992273408 *)
mov rax r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273411 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r9,%r8                                  #! PC = 0x93824992273415 *)
adds carry r8 r9 r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273418 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992273422 *)
mov r9 rdx;
(* mulq   (%rbx)                                   #! EA = L0x5555555658e0; PC = 0x93824992273425 *)
umull rdx rax L0x5555555658e0 rax;
(* add    %rax,%r10                                #! PC = 0x93824992273428 *)
adds carry r10 rax r10;

(* NOTE: Montgomery reduction *)
assert eqmod r10 0 (2**64) && true;
assume r10 = 0 && r10 = 0@64;

(* mov    %r12,%rax                                #! PC = 0x93824992273431 *)
mov rax r12;
(* adc    %rdx,%r10                                #! PC = 0x93824992273434 *)
adcs carry r10 rdx r10 carry;

assert true && carry = 0@1;
assume carry = 0 && true;

(* mulq   0x8(%rbx)                                #! EA = L0x5555555658e8; PC = 0x93824992273437 *)
umull rdx rax L0x5555555658e8 rax;
(* add    %rax,%r13                                #! PC = 0x93824992273441 *)
adds carry r13 rax r13;
(* mov    %r12,%rax                                #! PC = 0x93824992273444 *)
mov rax r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273447 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r10,%r13                                #! PC = 0x93824992273451 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273454 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992273458 *)
mov r10 rdx;
(* mulq   0x10(%rbx)                               #! EA = L0x5555555658f0; PC = 0x93824992273461 *)
umull rdx rax L0x5555555658f0 rax;
(* add    %rax,%r14                                #! PC = 0x93824992273465 *)
adds carry r14 rax r14;
(* mov    %r12,%rax                                #! PC = 0x93824992273468 *)
mov rax r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273471 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r10,%r14                                #! PC = 0x93824992273475 *)
adds carry r14 r10 r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273478 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992273482 *)
mov r10 rdx;
(* mulq   0x18(%rbx)                               #! EA = L0x5555555658f8; PC = 0x93824992273485 *)
umull rdx rax L0x5555555658f8 rax;
(* add    %rax,%r15                                #! PC = 0x93824992273489 *)
adds carry r15 rax r15;
(* mov    %r12,%rax                                #! PC = 0x93824992273492 *)
mov rax r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273495 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r13,%r11                                #! PC = 0x93824992273499 *)
mov r11 r13;
(* imul   %rcx,%r13                                #! PC = 0x93824992273502 *)
umull dontcare r13 rcx r13;
(* add    %r10,%r15                                #! PC = 0x93824992273506 *)
adds carry r15 r10 r15;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273509 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992273513 *)
mov r10 rdx;
(* mulq   0x20(%rbx)                               #! EA = L0x555555565900; PC = 0x93824992273516 *)
umull rdx rax L0x555555565900 rax;
(* add    %rax,%r8                                 #! PC = 0x93824992273520 *)
adds carry r8 rax r8;
(* mov    %r12,%rax                                #! PC = 0x93824992273523 *)
mov rax r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273526 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r10,%r8                                 #! PC = 0x93824992273530 *)
adds carry r8 r10 r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273533 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992273537 *)
mov r10 rdx;
(* mulq   0x28(%rbx)                               #! EA = L0x555555565908; PC = 0x93824992273540 *)
umull rdx rax L0x555555565908 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992273544 *)
adds carry r9 rax r9;
(* mov    %r13,%rax                                #! PC = 0x93824992273547 *)
mov rax r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273550 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r10,%r9                                 #! PC = 0x93824992273554 *)
adds carry r9 r10 r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273557 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992273561 *)
mov r10 rdx;
(* mulq   (%rbx)                                   #! EA = L0x5555555658e0; PC = 0x93824992273564 *)
umull rdx rax L0x5555555658e0 rax;
(* add    %rax,%r11                                #! PC = 0x93824992273567 *)
adds carry r11 rax r11;

(* NOTE: Montgomery reduction *)
assert eqmod r11 0 (2**64) && true;
assume r11 = 0 && r11 = 0@64;

(* mov    %r13,%rax                                #! PC = 0x93824992273570 *)
mov rax r13;
(* adc    %rdx,%r11                                #! PC = 0x93824992273573 *)
adcs carry r11 rdx r11 carry;

assert true && carry = 0@1;
assume carry = 0 && true;

(* mulq   0x8(%rbx)                                #! EA = L0x5555555658e8; PC = 0x93824992273576 *)
umull rdx rax L0x5555555658e8 rax;
(* add    %rax,%r14                                #! PC = 0x93824992273580 *)
adds carry r14 rax r14;
(* mov    %r13,%rax                                #! PC = 0x93824992273583 *)
mov rax r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273586 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r14                                #! PC = 0x93824992273590 *)
adds carry r14 r11 r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273593 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992273597 *)
mov r11 rdx;
(* mulq   0x10(%rbx)                               #! EA = L0x5555555658f0; PC = 0x93824992273600 *)
umull rdx rax L0x5555555658f0 rax;
(* add    %rax,%r15                                #! PC = 0x93824992273604 *)
adds carry r15 rax r15;
(* mov    %r13,%rax                                #! PC = 0x93824992273607 *)
mov rax r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273610 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r15                                #! PC = 0x93824992273614 *)
adds carry r15 r11 r15;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273617 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992273621 *)
mov r11 rdx;
(* mulq   0x18(%rbx)                               #! EA = L0x5555555658f8; PC = 0x93824992273624 *)
umull rdx rax L0x5555555658f8 rax;
(* add    %rax,%r8                                 #! PC = 0x93824992273628 *)
adds carry r8 rax r8;
(* mov    %r13,%rax                                #! PC = 0x93824992273631 *)
mov rax r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273634 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r8                                 #! PC = 0x93824992273638 *)
adds carry r8 r11 r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273641 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992273645 *)
mov r11 rdx;
(* mulq   0x20(%rbx)                               #! EA = L0x555555565900; PC = 0x93824992273648 *)
umull rdx rax L0x555555565900 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992273652 *)
adds carry r9 rax r9;
(* mov    %r13,%rax                                #! PC = 0x93824992273655 *)
mov rax r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273658 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r9                                 #! PC = 0x93824992273662 *)
adds carry r9 r11 r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273665 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992273669 *)
mov r11 rdx;
(* mulq   0x28(%rbx)                               #! EA = L0x555555565908; PC = 0x93824992273672 *)
umull rdx rax L0x555555565908 rax;
(* add    %rax,%r10                                #! PC = 0x93824992273676 *)
adds carry r10 rax r10;
(* mov    %r14,%rax                                #! PC = 0x93824992273679 *)
mov rax r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273682 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r10                                #! PC = 0x93824992273686 *)
adds carry r10 r11 r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992273689 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992273693 *)
mov r11 rdx;
(* #repz retq                                      #! PC = 0x93824992273696 *)
#repz retq                                      #! 0x93824992273696 = 0x93824992273696;


ghost r14p@uint64, r15p@uint64, r8p@uint64,
      r9p@uint64, r10p@uint64, r11p@uint64 :
      and [r14p = r14, r15p = r15, r8p = r8,
           r9p = r9, r10p = r10, r11p = r11]
   && and [r14p = r14, r15p = r15, r8p = r8,
           r9p = r9, r10p = r10, r11p = r11];


(* #callq  0x55555555e540 <__redc_tail_mont_384>   #! PC = 0x93824992269864 *)
#callq  0x55555555e540 <__redc_tail_mont_384>   #! 0x93824992269864 = 0x93824992269864;
(* add    0x30(%rsi),%r14                          #! EA = L0x7fffffffde68; Value = 0xaf21400008acd535; PC = 0x93824992273732 *)
adds carry r14 L0x7fffffffde68 r14;
(* mov    %r14,%rax                                #! PC = 0x93824992273736 *)
mov rax r14;
(* adc    0x38(%rsi),%r15                          #! EA = L0x7fffffffde70; Value = 0x55cca000014c2aaa; PC = 0x93824992273739 *)
adcs carry r15 L0x7fffffffde70 r15 carry;
(* adc    0x40(%rsi),%r8                           #! EA = L0x7fffffffde78; Value = 0x55e70aaaaad75555; PC = 0x93824992273743 *)
adcs carry r8 L0x7fffffffde78 r8 carry;
(* adc    0x48(%rsi),%r9                           #! EA = L0x7fffffffde80; Value = 0x0086000001385555; PC = 0x93824992273747 *)
adcs carry r9 L0x7fffffffde80 r9 carry;
(* mov    %r15,%rcx                                #! PC = 0x93824992273751 *)
mov rcx r15;
(* adc    0x50(%rsi),%r10                          #! EA = L0x7fffffffde88; Value = 0x0000000002000000; PC = 0x93824992273754 *)
adcs carry r10 L0x7fffffffde88 r10 carry;
(* adc    0x58(%rsi),%r11                          #! EA = L0x7fffffffde90; Value = 0x0000000000000000; PC = 0x93824992273758 *)
adcs carry r11 L0x7fffffffde90 r11 carry;
(* sbb    %r12,%r12                                #! PC = 0x93824992273762 *)
sbbs carry r12 r12 r12 carry;
(* mov    %r8,%rdx                                 #! PC = 0x93824992273765 *)
mov rdx r8;
(* mov    %r9,%rbp                                 #! PC = 0x93824992273768 *)
mov rbp r9;
(* sub    (%rbx),%r14                              #! EA = L0x5555555658e0; Value = 0xb9feffffffffaaab; PC = 0x93824992273771 *)
subb carry r14 r14 L0x5555555658e0;
(* sbb    0x8(%rbx),%r15                           #! EA = L0x5555555658e8; Value = 0x1eabfffeb153ffff; PC = 0x93824992273774 *)
sbbs carry r15 r15 L0x5555555658e8 carry;
(* mov    %r10,%r13                                #! PC = 0x93824992273778 *)
mov r13 r10;
(* sbb    0x10(%rbx),%r8                           #! EA = L0x5555555658f0; Value = 0x6730d2a0f6b0f624; PC = 0x93824992273781 *)
sbbs carry r8 r8 L0x5555555658f0 carry;
(* sbb    0x18(%rbx),%r9                           #! EA = L0x5555555658f8; Value = 0x64774b84f38512bf; PC = 0x93824992273785 *)
sbbs carry r9 r9 L0x5555555658f8 carry;
(* sbb    0x20(%rbx),%r10                          #! EA = L0x555555565900; Value = 0x4b1ba7b6434bacd7; PC = 0x93824992273789 *)
sbbs carry r10 r10 L0x555555565900 carry;
(* mov    %r11,%rsi                                #! PC = 0x93824992273793 *)
mov rsi r11;
(* sbb    0x28(%rbx),%r11                          #! EA = L0x555555565908; Value = 0x1a0111ea397fe69a; PC = 0x93824992273796 *)
sbbs carry r11 r11 L0x555555565908 carry;
(* sbb    $0x0,%r12                                #! PC = 0x93824992273800 *)
sbbs carry r12 r12 0@uint64 carry;
(* cmovb  %rax,%r14                                #! PC = 0x93824992273804 *)
cmov r14 carry rax r14;
(* cmovb  %rcx,%r15                                #! PC = 0x93824992273808 *)
cmov r15 carry rcx r15;
(* cmovb  %rdx,%r8                                 #! PC = 0x93824992273812 *)
cmov r8 carry rdx r8;
(* mov    %r14,(%rdi)                              #! EA = L0x7fffffffdf98; PC = 0x93824992273816 *)
mov L0x7fffffffdf98 r14;
(* cmovb  %rbp,%r9                                 #! PC = 0x93824992273819 *)
cmov r9 carry rbp r9;
(* mov    %r15,0x8(%rdi)                           #! EA = L0x7fffffffdfa0; PC = 0x93824992273823 *)
mov L0x7fffffffdfa0 r15;
(* cmovb  %r13,%r10                                #! PC = 0x93824992273827 *)
cmov r10 carry r13 r10;
(* mov    %r8,0x10(%rdi)                           #! EA = L0x7fffffffdfa8; PC = 0x93824992273831 *)
mov L0x7fffffffdfa8 r8;
(* cmovb  %rsi,%r11                                #! PC = 0x93824992273835 *)
cmov r11 carry rsi r11;
(* mov    %r9,0x18(%rdi)                           #! EA = L0x7fffffffdfb0; PC = 0x93824992273839 *)
mov L0x7fffffffdfb0 r9;
(* mov    %r10,0x20(%rdi)                          #! EA = L0x7fffffffdfb8; PC = 0x93824992273843 *)
mov L0x7fffffffdfb8 r10;
(* mov    %r11,0x28(%rdi)                          #! EA = L0x7fffffffdfc0; PC = 0x93824992273847 *)
mov L0x7fffffffdfc0 r11;
(* #repz retq                                      #! PC = 0x93824992273851 *)
#repz retq                                      #! 0x93824992273851 = 0x93824992273851;
(* #lea    0x148(%rsp),%r8                          #! PC = 0x93824992269869 *)
#lea    %%EA,%%r8                          #! 0x93824992269869 = 0x93824992269869;
(* #lea    0x30(%r8),%rsp                           #! PC = 0x93824992269900 *)
#lea    0x30(%%r8),%rsp                           #! 0x93824992269900 = 0x93824992269900;
(* #repz retq                                      #! PC = 0x93824992269904 *)
#repz retq                                      #! 0x93824992269904 = 0x93824992269904;


assert true
    && eqmod (limbs 64 [L0x7fffffffdf98, L0x7fffffffdfa0, L0x7fffffffdfa8,
                        L0x7fffffffdfb0, L0x7fffffffdfb8, L0x7fffffffdfc0])
             ((limbs 64 [r14p, r15p, r8p, r9p, r10p, r11p]) +
              (limbs 64 [L0x7fffffffde68, L0x7fffffffde70, L0x7fffffffde78,
                         L0x7fffffffde80, L0x7fffffffde88, L0x7fffffffde90]))
             (limbs 64 [m0, m1, m2, m3, m4, m5]);

assume eqmod (limbs 64 [L0x7fffffffdf98, L0x7fffffffdfa0, L0x7fffffffdfa8,
                        L0x7fffffffdfb0, L0x7fffffffdfb8, L0x7fffffffdfc0])
             ((limbs 64 [r14p, r15p, r8p, r9p, r10p, r11p]) +
              (limbs 64 [L0x7fffffffde68, L0x7fffffffde70, L0x7fffffffde78,
                         L0x7fffffffde80, L0x7fffffffde88, L0x7fffffffde90]))
             (limbs 64 [m0, m1, m2, m3, m4, m5]) && true;

(* NOTE: simplify assumptions just for reduction *)

ecut and [
       eqmod (limbs 64 [0, 0, 0, 0, 0, 0,
                        L0x7fffffffdf98, L0x7fffffffdfa0, L0x7fffffffdfa8,
                        L0x7fffffffdfb0, L0x7fffffffdfb8, L0x7fffffffdfc0])
             (limbs 64 [L0x7fffffffde38, L0x7fffffffde40, L0x7fffffffde48,
                        L0x7fffffffde50, L0x7fffffffde58, L0x7fffffffde60,
                        L0x7fffffffde68, L0x7fffffffde70, L0x7fffffffde78,
                        L0x7fffffffde80, L0x7fffffffde88, L0x7fffffffde90])
             (limbs 64 [m0, m1, m2, m3, m4, m5])
     ];


(* NOTE: summary for computation *)

ecut and [

       eqmod ((limbs 64 [L0x7fffffffdd78, L0x7fffffffdd80, L0x7fffffffdd88,
                         L0x7fffffffdd90, L0x7fffffffdd98, L0x7fffffffdda0,
                         L0x7fffffffdda8, L0x7fffffffddb0, L0x7fffffffddb8,
                         L0x7fffffffddc0, L0x7fffffffddc8, L0x7fffffffddd0]) +
              (limbs 64 [L0x7fffffffde38, L0x7fffffffde40, L0x7fffffffde48,
                         L0x7fffffffde50, L0x7fffffffde58, L0x7fffffffde60,
                         L0x7fffffffde68, L0x7fffffffde70, L0x7fffffffde78,
                         L0x7fffffffde80, L0x7fffffffde88, L0x7fffffffde90]) * I)
             (((limbs 64 [a0, a1, a2, a3, a4, a5]) +
               (limbs 64 [b0, b1, b2, b3, b4, b5]) * I) *
              ((limbs 64 [c0, c1, c2, c3, c4, c5]) +
               (limbs 64 [d0, d1, d2, d3, d4, d5]) * I))
             [limbs 64 [m0, m1, m2, m3, m4, m5], I * I + 1],

       eqmod (limbs 64 [0, 0, 0, 0, 0, 0,
                        L0x7fffffffdf68, L0x7fffffffdf70, L0x7fffffffdf78,
                        L0x7fffffffdf80, L0x7fffffffdf88, L0x7fffffffdf90])
             (limbs 64 [L0x7fffffffdd78, L0x7fffffffdd80, L0x7fffffffdd88,
                        L0x7fffffffdd90, L0x7fffffffdd98, L0x7fffffffdda0,
                        L0x7fffffffdda8, L0x7fffffffddb0, L0x7fffffffddb8,
                        L0x7fffffffddc0, L0x7fffffffddc8, L0x7fffffffddd0])
             (limbs 64 [m0, m1, m2, m3, m4, m5]),

       eqmod (limbs 64 [0, 0, 0, 0, 0, 0,
                        L0x7fffffffdf98, L0x7fffffffdfa0, L0x7fffffffdfa8,
                        L0x7fffffffdfb0, L0x7fffffffdfb8, L0x7fffffffdfc0])
             (limbs 64 [L0x7fffffffde38, L0x7fffffffde40, L0x7fffffffde48,
                        L0x7fffffffde50, L0x7fffffffde58, L0x7fffffffde60,
                        L0x7fffffffde68, L0x7fffffffde70, L0x7fffffffde78,
                        L0x7fffffffde80, L0x7fffffffde88, L0x7fffffffde90])
             (limbs 64 [m0, m1, m2, m3, m4, m5])
     ] prove with all cuts;


mov e0 L0x7fffffffdf68;
mov e1 L0x7fffffffdf70;
mov e2 L0x7fffffffdf78;
mov e3 L0x7fffffffdf80;
mov e4 L0x7fffffffdf88;
mov e5 L0x7fffffffdf90;

mov f0 L0x7fffffffdf98;
mov f1 L0x7fffffffdfa0;
mov f2 L0x7fffffffdfa8;
mov f3 L0x7fffffffdfb0;
mov f4 L0x7fffffffdfb8;
mov f5 L0x7fffffffdfc0;

{
  eqmod ((limbs 64 [0, 0, 0, 0, 0, 0, e0, e1, e2, e3, e4, e5]) +
         (limbs 64 [0, 0, 0, 0, 0, 0, f0, f1, f2, f3, f4, f5]) * I)
        (((limbs 64 [a0, a1, a2, a3, a4, a5]) +
          (limbs 64 [b0, b1, b2, b3, b4, b5]) * I) *
         ((limbs 64 [c0, c1, c2, c3, c4, c5]) +
          (limbs 64 [d0, d1, d2, d3, d4, d5]) * I))
        [ limbs 64 [m0, m1, m2, m3, m4, m5], I * I + 1 ]
&&
  true
}
