(* quine: $ cv -v -isafety ecp_nistz256_mul_by_3.cl
Parsing CryptoLine file:    [OK]    0.002165 seconds
Checking well-formedness:   [OK]    0.000339 seconds
Transforming to SSA form:   [OK]    0.000121 seconds
Normalizing specification:    [OK]    0.000136 seconds
Rewriting assignments:      [OK]    0.000140 seconds
Verifying program safety:   
   Cut 0
       Round 1 (2 safety conditions, timeout = 300 seconds)
     Safety condition #0  [OK]
     Safety condition #1  [OK]
   Overall      [OK]    0.075613 seconds
Verifying range assertions:   [OK]    0.126139 seconds
Verifying range specification:    [OK]    0.119801 seconds
Rewriting value-preserved casting:  [OK]    0.000039 seconds
Verifying algebraic assertions:   [OK]    0.007701 seconds
Verifying algebraic specification:  [OK]    0.099905 seconds
Verification result:      [OK]    0.432691 seconds
*)
proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
          uint64 m0, uint64 m1, uint64 m2, uint64 m3) =
{
  and [ m0 = 0xffffffffffffffff, m1 = 0x00000000ffffffff,
        m2 = 0x0000000000000000, m3 = 0xffffffff00000001
      ]
  &&
  and [ m0 = 0xffffffffffffffff@64, m1 = 0x00000000ffffffff@64,
        m2 = 0x0000000000000000@64, m3 = 0xffffffff00000001@64,
        limbs 64 [a0, a1, a2, a3] <u limbs 64 [m0, m1, m2, m3]
      ]
}

mov L0x7fffffffdc50 a0;
mov L0x7fffffffdc58 a1;
mov L0x7fffffffdc60 a2;
mov L0x7fffffffdc68 a3;

mov L0x55555557c000 0xffffffffffffffff@uint64;
mov L0x55555557c008 0x00000000ffffffff@uint64;
mov L0x55555557c010 0x0000000000000000@uint64;
mov L0x55555557c018 0xffffffff00000001@uint64;

(* ecp_nistz256_mul_by_3: *)
#ecp_nistz256_mul_by_3:;
(* #! -> SP = 0x7fffffffdc38 *)
#! 0x7fffffffdc38 = 0x7fffffffdc38;
(* push   %r12                                     #! EA = L0x7fffffffdc30; PC = 0x55555557c240 *)
#push   %%r12                                     #! L0x7fffffffdc30 = L0x7fffffffdc30; 0x55555557c240 = 0x55555557c240;
(* push   %r13                                     #! EA = L0x7fffffffdc28; PC = 0x55555557c242 *)
#push   %%r13                                     #! L0x7fffffffdc28 = L0x7fffffffdc28; 0x55555557c242 = 0x55555557c242;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffdc50; Value = 0x0000000080000002; PC = 0x55555557c244 *)
mov r8 L0x7fffffffdc50;
(* xor    %r13,%r13                                #! PC = 0x55555557c247 *)
mov r13 0@uint64;
clear carry;
clear overflow;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffdc58; Value = 0x6b80000000000000; PC = 0x55555557c24a *)
mov r9 L0x7fffffffdc58;
(* add    %r8,%r8                                  #! PC = 0x55555557c24e *)
adds carry r8 r8 r8;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffdc60; Value = 0x0000000000000000; PC = 0x55555557c251 *)
mov r10 L0x7fffffffdc60;
(* adc    %r9,%r9                                  #! PC = 0x55555557c255 *)
adcs carry r9 r9 r9 carry;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffdc68; Value = 0x0000000000000000; PC = 0x55555557c258 *)
mov r11 L0x7fffffffdc68;
(* mov    %r8,%rax                                 #! PC = 0x55555557c25c *)
mov rax r8;
(* adc    %r10,%r10                                #! PC = 0x55555557c25f *)
adcs carry r10 r10 r10 carry;
(* adc    %r11,%r11                                #! PC = 0x55555557c262 *)
adcs carry r11 r11 r11 carry;
(* mov    %r9,%rdx                                 #! PC = 0x55555557c265 *)
mov rdx r9;
(* adc    $0x0,%r13                                #! PC = 0x55555557c268 *)
adc r13 r13 0x0@uint64 carry;

ghost carryo1@bit:
      carryo1 = carry && carryo1 = carry;

(* sub    $0xffffffffffffffff,%r8                  #! PC = 0x55555557c26c *)
subb carry r8 r8 0xffffffffffffffff@uint64;
(* mov    %r10,%rcx                                #! PC = 0x55555557c270 *)
mov rcx r10;
(* sbb    -0x272(%rip),%r9        # 0x55555557c008 #! EA = L0x55555557c008; Value = 0x00000000ffffffff; PC = 0x55555557c273 *)
sbbs carry r9 r9 L0x55555557c008 carry;
(* sbb    $0x0,%r10                                #! PC = 0x55555557c27a *)
sbbs carry r10 r10 0x0@uint64 carry;
(* mov    %r11,%r12                                #! PC = 0x55555557c27e *)
mov r12 r11;
(* sbb    -0x270(%rip),%r11        # 0x55555557c018#! EA = L0x55555557c018; Value = 0xffffffff00000001; PC = 0x55555557c281 *)
sbbs carry r11 r11 L0x55555557c018 carry;

ghost carryo2@bit:
      carryo2 = carry && carryo2 = carry;

(* sbb    $0x0,%r13                                #! PC = 0x55555557c288 *)
sbbs carry r13 r13 0x0@uint64 carry;

ghost carryo3@bit:
      carryo3 = carry && carryo3 = carry;

assert true && or [and [carryo2=0@1, carryo1=0@1, carryo3=0@1],
                   and [carryo2=1@1, carryo1=1@1, carryo3=0@1],
                   and [carryo2=1@1, carryo1=0@1, carryo3=1@1]];

assume (carryo2 - 0) * (carryo1 - 1) * (carryo3 - 1) = 0 && true;
assume (carryo1 - 0) * (carryo3 - 0) = 0 && true;

assume (carryo2 - 1) * (carryo1 - 1) = 1 && true;
assume (carryo2 - 1) * (carryo3 - 1) = 1 && true;

(* cmovb  %rax,%r8                                 #! PC = 0x55555557c28c *)
cmov r8 carry rax r8;
(* cmovb  %rdx,%r9                                 #! PC = 0x55555557c290 *)
cmov r9 carry rdx r9;
(* cmovb  %rcx,%r10                                #! PC = 0x55555557c294 *)
cmov r10 carry rcx r10;
(* cmovb  %r12,%r11                                #! PC = 0x55555557c298 *)
cmov r11 carry r12 r11;
(* xor    %r13,%r13                                #! PC = 0x55555557c29c *)
mov r13 0@uint64;
clear carry;
clear overflow;
(* add    (%rsi),%r8                               #! EA = L0x7fffffffdc50; Value = 0x0000000080000002; PC = 0x55555557c29f *)
adds carry r8 r8 L0x7fffffffdc50;
(* adc    0x8(%rsi),%r9                            #! EA = L0x7fffffffdc58; Value = 0x6b80000000000000; PC = 0x55555557c2a2 *)
adcs carry r9 r9 L0x7fffffffdc58 carry;
(* mov    %r8,%rax                                 #! PC = 0x55555557c2a6 *)
mov rax r8;
(* adc    0x10(%rsi),%r10                          #! EA = L0x7fffffffdc60; Value = 0x0000000000000000; PC = 0x55555557c2a9 *)
adcs carry r10 r10 L0x7fffffffdc60 carry;
(* adc    0x18(%rsi),%r11                          #! EA = L0x7fffffffdc68; Value = 0x0000000000000000; PC = 0x55555557c2ad *)
adcs carry r11 r11 L0x7fffffffdc68 carry;
(* mov    %r9,%rdx                                 #! PC = 0x55555557c2b1 *)
mov rdx r9;
(* adc    $0x0,%r13                                #! PC = 0x55555557c2b4 *)
adc r13 r13 0x0@uint64 carry;

ghost carryo4@bit:
      carryo4 = carry && carryo4 = carry;

(* sub    $0xffffffffffffffff,%r8                  #! PC = 0x55555557c2b8 *)
subb carry r8 r8 0xffffffffffffffff@uint64;
(* mov    %r10,%rcx                                #! PC = 0x55555557c2bc *)
mov rcx r10;
(* sbb    -0x2be(%rip),%r9        # 0x55555557c008 #! EA = L0x55555557c008; Value = 0x00000000ffffffff; PC = 0x55555557c2bf *)
sbbs carry r9 r9 L0x55555557c008 carry;
(* sbb    $0x0,%r10                                #! PC = 0x55555557c2c6 *)
sbbs carry r10 r10 0x0@uint64 carry;
(* mov    %r11,%r12                                #! PC = 0x55555557c2ca *)
mov r12 r11;
(* sbb    -0x2bc(%rip),%r11        # 0x55555557c018#! EA = L0x55555557c018; Value = 0xffffffff00000001; PC = 0x55555557c2cd *)
sbbs carry r11 r11 L0x55555557c018 carry;

ghost carryo5@bit:
      carryo5 = carry && carryo5 = carry;

(* sbb    $0x0,%r13                                #! PC = 0x55555557c2d4 *)
sbbs carry r13 r13 0x0@uint64 carry;

ghost carryo6@bit:
      carryo6 = carry && carryo6 = carry;

assert true && or [and [carryo5=0@1, carryo4=0@1, carryo6=0@1],
                   and [carryo5=1@1, carryo4=1@1, carryo6=0@1],
                   and [carryo5=1@1, carryo4=0@1, carryo6=1@1]];

assume (carryo5 - 0) * (carryo4 - 1) * (carryo6 - 1) = 0 && true;
assume (carryo4 - 0) * (carryo6 - 0) = 0 && true;

assume (carryo5 - 1) * (carryo4 - 1) = 1 && true;
assume (carryo5 - 1) * (carryo6 - 1) = 1 && true;

(* cmovb  %rax,%r8                                 #! PC = 0x55555557c2d8 *)
cmov r8 carry rax r8;
(* cmovb  %rdx,%r9                                 #! PC = 0x55555557c2dc *)
cmov r9 carry rdx r9;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffdc90; PC = 0x55555557c2e0 *)
mov L0x7fffffffdc90 r8;
(* cmovb  %rcx,%r10                                #! PC = 0x55555557c2e3 *)
cmov r10 carry rcx r10;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffdc98; PC = 0x55555557c2e7 *)
mov L0x7fffffffdc98 r9;
(* cmovb  %r12,%r11                                #! PC = 0x55555557c2eb *)
cmov r11 carry r12 r11;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffdca0; PC = 0x55555557c2ef *)
mov L0x7fffffffdca0 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffdca8; PC = 0x55555557c2f3 *)
mov L0x7fffffffdca8 r11;
(* mov    (%rsp),%r13                              #! EA = L0x7fffffffdc28; Value = 0x00007fffffffdde8; PC = 0x55555557c2f7 *)
#mov    (%rsp),%%r13                              #! L0x7fffffffdc28 = L0x7fffffffdc28; 0x00007fffffffdde8 = 0x00007fffffffdde8; 0x55555557c2f7 = 0x55555557c2f7;
(* mov    0x8(%rsp),%r12                           #! EA = L0x7fffffffdc30; Value = 0x0000000000000000; PC = 0x55555557c2fb *)
#mov    0x8(%rsp),%%r12                           #! L0x7fffffffdc30 = L0x7fffffffdc30; 0x0000000000000000 = 0x0000000000000000; 0x55555557c2fb = 0x55555557c2fb;
(* lea    0x10(%rsp),%rsp                          #! PC = 0x55555557c300 *)
#lea    0x10(%rsp),%rsp                          #! 0x55555557c300 = 0x55555557c300;
(* #! <- SP = 0x7fffffffdc38 *)
#! 0x7fffffffdc38 = 0x7fffffffdc38;
(* #repz ret                                       #! PC = 0x55555557c305 *)
#repz ret                                       #! 0x55555557c305 = 0x55555557c305;

mov c0 L0x7fffffffdc90;
mov c1 L0x7fffffffdc98;
mov c2 L0x7fffffffdca0;
mov c3 L0x7fffffffdca8;

{
  eqmod (limbs 64 [c0, c1, c2, c3])
        (limbs 64 [a0, a1, a2, a3] * 3)
        (limbs 64 [m0, m1, m2, m3])
  &&
  limbs 64 [c0, c1, c2, c3] <u limbs 64 [m0, m1, m2, m3]
}
