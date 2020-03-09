(* quine: -v -jobs 10 -isafety -qfbv_args '-SE minisat' fp_addm_low.cl
Parsing Cryptoline file:                [OK]            0.000903 seconds
Checking well-formedness:               [OK]            0.000161 seconds
Transforming to SSA form:               [OK]            0.000075 seconds
Rewriting assignments:                  [OK]            0.000172 seconds
Verifying program safety:               [OK]            0.000117 seconds
Verifying range specification:          [OK]            3.462311 seconds
Rewriting value-preserved casting:      [OK]            0.000009 seconds
Verifying algebraic specification:      [OK]            0.000105 seconds
Verification result:                    [OK]            3.464158 seconds
*)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
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

(* #push   %r12                                     #! PC = 0x93824992233367 *)
#push   %%r12                                     #! 0x93824992233367 = 0x93824992233367;
(* mov    (%rdx),%r8                               #! EA = L0x7fffffffd9e0; Value = 0x00007ffff7ffa268; PC = 0x93824992233369 *)
mov r8 L0x7fffffffd9e0;
(* add    (%rsi),%r8                               #! EA = L0x7fffffffd9c0; Value = 0x0000004000000000; PC = 0x93824992233372 *)
adds carry r8 r8 L0x7fffffffd9c0;
(* mov    0x8(%rdx),%r9                            #! EA = L0x7fffffffd9e8; Value = 0x00007ffff7ffe710; PC = 0x93824992233375 *)
mov r9 L0x7fffffffd9e8;
(* adc    0x8(%rsi),%r9                            #! EA = L0x7fffffffd9c8; Value = 0x0000040000000200; PC = 0x93824992233379 *)
adcs carry r9 r9 L0x7fffffffd9c8 carry;
(* mov    0x10(%rdx),%r10                          #! EA = L0x7fffffffd9f0; Value = 0x0000000000000000; PC = 0x93824992233383 *)
mov r10 L0x7fffffffd9f0;
(* adc    0x10(%rsi),%r10                          #! EA = L0x7fffffffd9d0; Value = 0x00000000ffffffff; PC = 0x93824992233387 *)
adcs carry r10 r10 L0x7fffffffd9d0 carry;
(* mov    0x18(%rdx),%r11                          #! EA = L0x7fffffffd9f8; Value = 0x0000000000000000; PC = 0x93824992233391 *)
mov r11 L0x7fffffffd9f8;
(* adc    0x18(%rsi),%r11                          #! EA = L0x7fffffffd9d8; Value = 0x0000000000000000; PC = 0x93824992233395 *)
adcs carry r11 r11 L0x7fffffffd9d8 carry;
(* xor    %rax,%rax                                #! PC = 0x93824992233399 *)
mov rax 0@uint64;
(* mov    %r8,%rax                                 #! PC = 0x93824992233402 *)
mov rax r8;
(* mov    %r9,%rcx                                 #! PC = 0x93824992233405 *)
mov rcx r9;
(* mov    %r10,%rdx                                #! PC = 0x93824992233408 *)
mov rdx r10;
(* mov    %r11,%rsi                                #! PC = 0x93824992233411 *)
mov rsi r11;
(* movabs $0xa700000000000013,%r12                 #! PC = 0x93824992233414 *)
mov r12 0xa700000000000013@uint64;
(* sub    %r12,%rax                                #! PC = 0x93824992233424 *)
subb carry rax rax r12;
(* movabs $0x6121000000000013,%r12                 #! PC = 0x93824992233427 *)
mov r12 0x6121000000000013@uint64;
(* sbb    %r12,%rcx                                #! PC = 0x93824992233437 *)
sbbs carry rcx rcx r12 carry;
(* movabs $0xba344d8000000008,%r12                 #! PC = 0x93824992233440 *)
mov r12 0xba344d8000000008@uint64;
(* sbb    %r12,%rdx                                #! PC = 0x93824992233450 *)
sbbs carry rdx rdx r12 carry;
(* movabs $0x2523648240000001,%r12                 #! PC = 0x93824992233453 *)
mov r12 0x2523648240000001@uint64;
(* sbb    %r12,%rsi                                #! PC = 0x93824992233463 *)
sbbs carry rsi rsi r12 carry;
(* cmovae %rax,%r8                                 #! PC = 0x93824992233466 *)
cmov r8 carry r8 rax;
(* cmovae %rcx,%r9                                 #! PC = 0x93824992233470 *)
cmov r9 carry r9 rcx;
(* cmovae %rdx,%r10                                #! PC = 0x93824992233474 *)
cmov r10 carry r10 rdx;
(* cmovae %rsi,%r11                                #! PC = 0x93824992233478 *)
cmov r11 carry r11 rsi;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffda00; PC = 0x93824992233482 *)
mov L0x7fffffffda00 r8;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffda08; PC = 0x93824992233485 *)
mov L0x7fffffffda08 r9;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffda10; PC = 0x93824992233489 *)
mov L0x7fffffffda10 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffda18; PC = 0x93824992233493 *)
mov L0x7fffffffda18 r11;
(* xor    %rax,%rax                                #! PC = 0x93824992233497 *)
mov rax 0@uint64;
(* #pop    %r12                                     #! PC = 0x93824992233500 *)
#pop    %%r12                                     #! 0x93824992233500 = 0x93824992233500;
(* #retq                                           #! PC = 0x93824992233502 *)
#retq                                           #! 0x93824992233502 = 0x93824992233502;

mov c0 L0x7fffffffda00;
mov c1 L0x7fffffffda08;
mov c2 L0x7fffffffda10;
mov c3 L0x7fffffffda18;

{
  true
&&
  and [
    limbs 64 [c0, c1, c2, c3] <
    limbs 64 [0xa700000000000013@64, 0x6121000000000013@64,
              0xba344d8000000008@64, 0x2523648240000001@64],
    eqmod (limbs 64 [c0, c1, c2, c3])
          (limbs 64 [a0, a1, a2, a3] + limbs 64 [b0, b1, b2, b3])
          (limbs 64 [0xa700000000000013@64, 0x6121000000000013@64,
                     0xba344d8000000008@64, 0x2523648240000001@64])
  ]
}

