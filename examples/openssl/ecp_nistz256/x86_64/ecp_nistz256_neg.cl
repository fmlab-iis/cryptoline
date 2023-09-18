(* quine:$ cv -v -isafety ecp_nistz256_neg.cl
Parsing CryptoLine file:    [OK]    0.001846 seconds
Checking well-formedness:   [OK]    0.000422 seconds
Transforming to SSA form:   [OK]    0.000166 seconds
Normalizing specification:    [OK]    0.000175 seconds
Rewriting assignments:      [OK]    0.000228 seconds
Verifying program safety:   
   Cut 0
       Round 1 (0 safety conditions, timeout = 300 seconds)
   Overall      [OK]    0.000239 seconds
Verifying range assertions:   [OK]    0.086027 seconds
Verifying range specification:    [OK]    0.110942 seconds
Rewriting value-preserved casting:  [OK]    0.000048 seconds
Verifying algebraic assertions:   [OK]    0.005236 seconds
Verifying algebraic specification:  [OK]    0.107595 seconds
Verification result:      [OK]    0.313623 seconds
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

mov L0x7fffffffdc60 a0;
mov L0x7fffffffdc68 a1;
mov L0x7fffffffdc70 a2;
mov L0x7fffffffdc78 a3;

mov L0x55555557c000 0xffffffffffffffff@uint64;
mov L0x55555557c008 0x00000000ffffffff@uint64;
mov L0x55555557c010 0x0000000000000000@uint64;
mov L0x55555557c018 0xffffffff00000001@uint64;

(* ecp_nistz256_neg: *)
#ecp_nistz256_neg:;
(* #! -> SP = 0x7fffffffdc48 *)
#! 0x7fffffffdc48 = 0x7fffffffdc48;
(* push   %r12                                     #! EA = L0x7fffffffdc40; PC = 0x55555557c420 *)
#push   %%r12                                     #! L0x7fffffffdc40 = L0x7fffffffdc40; 0x55555557c420 = 0x55555557c420;
(* push   %r13                                     #! EA = L0x7fffffffdc38; PC = 0x55555557c422 *)
#push   %%r13                                     #! L0x7fffffffdc38 = L0x7fffffffdc38; 0x55555557c422 = 0x55555557c422;
(* xor    %r8,%r8                                  #! PC = 0x55555557c424 *)
mov r8 0@uint64;
clear carry;
clear overflow;
(* xor    %r9,%r9                                  #! PC = 0x55555557c427 *)
mov r9 0@uint64;
clear carry;
clear overflow;
(* xor    %r10,%r10                                #! PC = 0x55555557c42a *)
mov r10 0@uint64;
clear carry;
clear overflow;
(* xor    %r11,%r11                                #! PC = 0x55555557c42d *)
mov r11 0@uint64;
clear carry;
clear overflow;
(* xor    %r13,%r13                                #! PC = 0x55555557c430 *)
mov r13 0@uint64;
clear carry;
clear overflow;
(* sub    (%rsi),%r8                               #! EA = L0x7fffffffdc60; Value = 0x0000000000000000; PC = 0x55555557c433 *)
subb carry r8 r8 L0x7fffffffdc60;
(* sbb    0x8(%rsi),%r9                            #! EA = L0x7fffffffdc68; Value = 0x0000005000000019; PC = 0x55555557c436 *)
sbbs carry r9 r9 L0x7fffffffdc68 carry;
(* sbb    0x10(%rsi),%r10                          #! EA = L0x7fffffffdc70; Value = 0x0000001000000000; PC = 0x55555557c43a *)
sbbs carry r10 r10 L0x7fffffffdc70 carry;
(* mov    %r8,%rax                                 #! PC = 0x55555557c43e *)
mov rax r8;
(* sbb    0x18(%rsi),%r11                          #! EA = L0x7fffffffdc78; Value = 0x0000000000000000; PC = 0x55555557c441 *)
sbbs carry r11 r11 L0x7fffffffdc78 carry;

ghost carryo@bit:
      carryo = carry && carryo = carry;

(* lea    -0x44c(%rip),%rsi        # 0x55555557c000#! PC = 0x55555557c445 *)
#lea    %%EA,%%rsi        # 0x55555557c000#! 0x55555557c445 = 0x55555557c445;
(* mov    %r9,%rdx                                 #! PC = 0x55555557c44c *)
mov rdx r9;
(* sbb    $0x0,%r13                                #! PC = 0x55555557c44f *)
sbbs carry r13 r13 0x0@uint64 carry;
(* add    (%rsi),%r8                               #! EA = L0x55555557c000; Value = 0xffffffffffffffff; PC = 0x55555557c453 *)
adds carry r8 r8 L0x55555557c000;
(* mov    %r10,%rcx                                #! PC = 0x55555557c456 *)
mov rcx r10;
(* adc    0x8(%rsi),%r9                            #! EA = L0x55555557c008; Value = 0x00000000ffffffff; PC = 0x55555557c459 *)
adcs carry r9 r9 L0x55555557c008 carry;
(* adc    0x10(%rsi),%r10                          #! EA = L0x55555557c010; Value = 0x0000000000000000; PC = 0x55555557c45d *)
adcs carry r10 r10 L0x55555557c010 carry;
(* mov    %r11,%r12                                #! PC = 0x55555557c461 *)
mov r12 r11;
(* adc    0x18(%rsi),%r11                          #! EA = L0x55555557c018; Value = 0xffffffff00000001; PC = 0x55555557c464 *)
adcs carry r11 r11 L0x55555557c018 carry;
(* test   %r13,%r13                                #! PC = 0x55555557c468 *)
subb zero dontcare r13 1@uint64;

(* 000 011 100 101 *)
(* 001 010 110 111 false *)
assert true && or [and [zero = 0@1, carryo = 0@1, carry = 0@1],
                   and [zero = 0@1, carryo = 1@1, carry = 1@1],
                   and [zero = 1@1, carryo = 0@1, carry = 0@1],
                   and [zero = 1@1, carryo = 0@1, carry = 1@1]];

assume (zero - 0) * (carryo  - 0) = 0 && true;
assume (zero - 1) * (carryo  - 0) * (carry - 1) = 0 && true;
assume (zero - 1) * (carryo  - 1) * (carry - 0) = 0 && true;

(* cmove  %rax,%r8                                 #! PC = 0x55555557c46b *)
cmov r8 zero rax r8;
(* cmove  %rdx,%r9                                 #! PC = 0x55555557c46f *)
cmov r9 zero rdx r9;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffdca0; PC = 0x55555557c473 *)
mov L0x7fffffffdca0 r8;
(* cmove  %rcx,%r10                                #! PC = 0x55555557c476 *)
cmov r10 zero rcx r10;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffdca8; PC = 0x55555557c47a *)
mov L0x7fffffffdca8 r9;
(* cmove  %r12,%r11                                #! PC = 0x55555557c47e *)
cmov r11 zero r12 r11;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffdcb0; PC = 0x55555557c482 *)
mov L0x7fffffffdcb0 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffdcb8; PC = 0x55555557c486 *)
mov L0x7fffffffdcb8 r11;
(* mov    (%rsp),%r13                              #! EA = L0x7fffffffdc38; Value = 0x00007fffffffddf8; PC = 0x55555557c48a *)
#mov    (%rsp),%%r13                              #! L0x7fffffffdc38 = L0x7fffffffdc38; 0x00007fffffffddf8 = 0x00007fffffffddf8; 0x55555557c48a = 0x55555557c48a;
(* mov    0x8(%rsp),%r12                           #! EA = L0x7fffffffdc40; Value = 0x0000000000000000; PC = 0x55555557c48e *)
#mov    0x8(%rsp),%%r12                           #! L0x7fffffffdc40 = L0x7fffffffdc40; 0x0000000000000000 = 0x0000000000000000; 0x55555557c48e = 0x55555557c48e;
(* lea    0x10(%rsp),%rsp                          #! PC = 0x55555557c493 *)
#lea    0x10(%rsp),%rsp                          #! 0x55555557c493 = 0x55555557c493;
(* #! <- SP = 0x7fffffffdc48 *)
#! 0x7fffffffdc48 = 0x7fffffffdc48;
(* #repz ret                                       #! PC = 0x55555557c498 *)
#repz ret                                       #! 0x55555557c498 = 0x55555557c498;

mov c0 L0x7fffffffdca0;
mov c1 L0x7fffffffdca8;
mov c2 L0x7fffffffdcb0;
mov c3 L0x7fffffffdcb8;
{
  eqmod  (limbs 64 [c0, c1, c2, c3, 0] +
          limbs 64 [a0, a1, a2, a3, 0])
         (limbs 64 [0, 0, 0, 0, 0])
         (limbs 64 [m0, m1, m2, m3, 0])
  &&
  and [ 
      limbs 64 [c0, c1, c2, c3] <u limbs 64 [m0, m1, m2, m3]
  ]
}
