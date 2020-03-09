(* quine: -jobs 20 -v -isafety -qfbv_args "-SE minisat" fp_addm_low.cl
Parsing Cryptoline file:                [OK]            0.001454 seconds
Checking well-formedness:               [OK]            0.000285 seconds
Transforming to SSA form:               [OK]            0.000129 seconds
Rewriting assignments:                  [OK]            0.000504 seconds
Verifying program safety:               [OK]            0.134905 seconds
Verifying range assertions:             [OK]            1.695344 seconds
Verifying range specification:          [OK]            0.285665 seconds
Rewriting value-preserved casting:      [OK]            0.000012 seconds
Verifying algebraic assertions:         [OK]            0.035086 seconds
Verifying algebraic specification:      [OK]            0.066178 seconds
Verification result:                    [OK]            2.220065 seconds
*)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 a5,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3, uint64 b4, uint64 b5) =
{
  true
&&
  and [
    limbs 64 [a0, a1, a2, a3, a4, a5] <
    limbs 64 [0x004e000000000013@64, 0x09480097801382be@64,
              0xa6e58dbe43002a06@64, 0x6f82cefbe47879bb@64,
              0x2d996cc179c6d166@64, 0x24009015183f9489@64],
    limbs 64 [b0, b1, b2, b3, b4, b5] <
    limbs 64 [0x004e000000000013@64, 0x09480097801382be@64,
              0xa6e58dbe43002a06@64, 0x6f82cefbe47879bb@64,
              0x2d996cc179c6d166@64, 0x24009015183f9489@64]
  ]
}

mov L0x7fffffffd970 a0;
mov L0x7fffffffd978 a1;
mov L0x7fffffffd980 a2;
mov L0x7fffffffd988 a3;
mov L0x7fffffffd990 a4;
mov L0x7fffffffd998 a5;

mov L0x7fffffffd9a0 b0;
mov L0x7fffffffd9a8 b1;
mov L0x7fffffffd9b0 b2;
mov L0x7fffffffd9b8 b3;
mov L0x7fffffffd9c0 b4;
mov L0x7fffffffd9c8 b5;

(* prime *)
mov L0x555555757010 0x004e000000000013@uint64;
mov L0x555555757018 0x09480097801382be@uint64;
mov L0x555555757020 0xa6e58dbe43002a06@uint64;
mov L0x555555757028 0x6f82cefbe47879bb@uint64;
mov L0x555555757030 0x2d996cc179c6d166@uint64;
mov L0x555555757038 0x24009015183f9489@uint64;

(* #push   %rbx                                     #! PC = 0x93824992233407 *)
#push   %%rbx                                     #! 0x93824992233407 = 0x93824992233407;
(* #push   %rbp                                     #! PC = 0x93824992233408 *)
#push   %%rbp                                     #! 0x93824992233408 = 0x93824992233408;
(* #push   %r12                                     #! PC = 0x93824992233409 *)
#push   %%r12                                     #! 0x93824992233409 = 0x93824992233409;
(* #push   %r13                                     #! PC = 0x93824992233411 *)
#push   %%r13                                     #! 0x93824992233411 = 0x93824992233411;
(* mov    (%rdx),%r8                               #! EA = L0x7fffffffd9a0; Value = 0x00007fffffffd9d0; PC = 0x93824992233413 *)
mov r8 L0x7fffffffd9a0;
(* add    (%rsi),%r8                               #! EA = L0x7fffffffd970; Value = 0x0000000000000000; PC = 0x93824992233416 *)
adds carry r8 r8 L0x7fffffffd970;
(* mov    0x8(%rdx),%r9                            #! EA = L0x7fffffffd9a8; Value = 0x00007fffffffd9e0; PC = 0x93824992233419 *)
mov r9 L0x7fffffffd9a8;
(* adc    0x8(%rsi),%r9                            #! EA = L0x7fffffffd978; Value = 0x0000000000000000; PC = 0x93824992233423 *)
adcs carry r9 r9 L0x7fffffffd978 carry;
(* mov    0x10(%rdx),%r10                          #! EA = L0x7fffffffd9b0; Value = 0x00007ffff7ffea98; PC = 0x93824992233427 *)
mov r10 L0x7fffffffd9b0;
(* adc    0x10(%rsi),%r10                          #! EA = L0x7fffffffd980; Value = 0x0000000000000000; PC = 0x93824992233431 *)
adcs carry r10 r10 L0x7fffffffd980 carry;
(* mov    0x18(%rdx),%r11                          #! EA = L0x7fffffffd9b8; Value = 0x0000000000000000; PC = 0x93824992233435 *)
mov r11 L0x7fffffffd9b8;
(* adc    0x18(%rsi),%r11                          #! EA = L0x7fffffffd988; Value = 0x00007ffff7ffe710; PC = 0x93824992233439 *)
adcs carry r11 r11 L0x7fffffffd988 carry;
(* mov    0x20(%rdx),%r12                          #! EA = L0x7fffffffd9c0; Value = 0x0000004000000000; PC = 0x93824992233443 *)
mov r12 L0x7fffffffd9c0;
(* adc    0x20(%rsi),%r12                          #! EA = L0x7fffffffd990; Value = 0x00007ffff7b97787; PC = 0x93824992233447 *)
adcs carry r12 r12 L0x7fffffffd990 carry;
(* mov    0x28(%rdx),%r13                          #! EA = L0x7fffffffd9c8; Value = 0x0000040000000200; PC = 0x93824992233451 *)
mov r13 L0x7fffffffd9c8;
(* adc    0x28(%rsi),%r13                          #! EA = L0x7fffffffd998; Value = 0x00000000000009c0; PC = 0x93824992233455 *)
adc r13 r13 L0x7fffffffd998 carry;
(* mov    %r8,%rax                                 #! PC = 0x93824992233459 *)
mov rax r8;
(* mov    %r9,%rcx                                 #! PC = 0x93824992233462 *)
mov rcx r9;
(* mov    %r10,%rdx                                #! PC = 0x93824992233465 *)
mov rdx r10;
(* mov    %r11,%rsi                                #! PC = 0x93824992233468 *)
mov rsi r11;
(* mov    %r12,%rbx                                #! PC = 0x93824992233471 *)
mov rbx r12;
(* mov    %r13,%rbp                                #! PC = 0x93824992233474 *)
mov rbp r13;

(* NOTE: summary of full addition *)
assert limbs 64 [r8, r9, r10, r11, r12, r13] =
       limbs 64 [a0, a1, a2, a3, a4, a5] +
       limbs 64 [b0, b1, b2, b3, b4, b5]
    && true;

(* sub    0x202804(%rip),%rax        # 0x555555757010#! EA = L0x555555757010; Value = 0x004e000000000013; PC = 0x93824992233477 *)
subb carry rax rax L0x555555757010;
(* sbb    0x202805(%rip),%rcx        # 0x555555757018#! EA = L0x555555757018; Value = 0x09480097801382be; PC = 0x93824992233484 *)
sbbs carry rcx rcx L0x555555757018 carry;
(* sbb    0x202806(%rip),%rdx        # 0x555555757020#! EA = L0x555555757020; Value = 0xa6e58dbe43002a06; PC = 0x93824992233491 *)
sbbs carry rdx rdx L0x555555757020 carry;
(* sbb    0x202807(%rip),%rsi        # 0x555555757028#! EA = L0x555555757028; Value = 0x6f82cefbe47879bb; PC = 0x93824992233498 *)
sbbs carry rsi rsi L0x555555757028 carry;
(* sbb    0x202808(%rip),%rbx        # 0x555555757030#! EA = L0x555555757030; Value = 0x2d996cc179c6d166; PC = 0x93824992233505 *)
sbbs carry rbx rbx L0x555555757030 carry;
(* sbb    0x202809(%rip),%rbp        # 0x555555757038#! EA = L0x555555757038; Value = 0x24009015183f9489; PC = 0x93824992233512 *)
sbbs carry rbp rbp L0x555555757038 carry;
(* cmovae %rax,%r8                                 #! PC = 0x93824992233519 *)
cmov r8 carry r8 rax;
(* cmovae %rcx,%r9                                 #! PC = 0x93824992233523 *)
cmov r9 carry r9 rcx;
(* cmovae %rdx,%r10                                #! PC = 0x93824992233527 *)
cmov r10 carry r10 rdx;
(* cmovae %rsi,%r11                                #! PC = 0x93824992233531 *)
cmov r11 carry r11 rsi;
(* cmovae %rbx,%r12                                #! PC = 0x93824992233535 *)
cmov r12 carry r12 rbx;
(* cmovae %rbp,%r13                                #! PC = 0x93824992233539 *)
cmov r13 carry r13 rbp;

assert true
    && eqmod (limbs 64 [r8, r9, r10, r11, r12, r13])
             (limbs 64 [rax, rcx, rdx, rsi, rbx, rbp])
             (limbs 64 [0x004e000000000013@64, 0x09480097801382be@64,
                        0xa6e58dbe43002a06@64, 0x6f82cefbe47879bb@64,
                        0x2d996cc179c6d166@64, 0x24009015183f9489@64]);
assume eqmod (limbs 64 [r8, r9, r10, r11, r12, r13])
             (limbs 64 [rax, rcx, rdx, rsi, rbx, rbp])
             (limbs 64 [0x004e000000000013, 0x09480097801382be,
                        0xa6e58dbe43002a06, 0x6f82cefbe47879bb,
                        0x2d996cc179c6d166, 0x24009015183f9489])
    && true;

(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffd9d0; PC = 0x93824992233543 *)
mov L0x7fffffffd9d0 r8;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffd9d8; PC = 0x93824992233546 *)
mov L0x7fffffffd9d8 r9;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffd9e0; PC = 0x93824992233550 *)
mov L0x7fffffffd9e0 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffd9e8; PC = 0x93824992233554 *)
mov L0x7fffffffd9e8 r11;
(* mov    %r12,0x20(%rdi)                          #! EA = L0x7fffffffd9f0; PC = 0x93824992233558 *)
mov L0x7fffffffd9f0 r12;
(* mov    %r13,0x28(%rdi)                          #! EA = L0x7fffffffd9f8; PC = 0x93824992233562 *)
mov L0x7fffffffd9f8 r13;
(* #pop    %r13                                     #! PC = 0x93824992233566 *)
#pop    %%r13                                     #! 0x93824992233566 = 0x93824992233566;
(* #pop    %r12                                     #! PC = 0x93824992233568 *)
#pop    %%r12                                     #! 0x93824992233568 = 0x93824992233568;
(* #pop    %rbp                                     #! PC = 0x93824992233570 *)
#pop    %%rbp                                     #! 0x93824992233570 = 0x93824992233570;
(* #pop    %rbx                                     #! PC = 0x93824992233571 *)
#pop    %%rbx                                     #! 0x93824992233571 = 0x93824992233571;
(* #retq                                           #! PC = 0x93824992233572 *)
#retq                                           #! 0x93824992233572 = 0x93824992233572;

mov r0 L0x7fffffffd9d0;
mov r1 L0x7fffffffd9d8;
mov r2 L0x7fffffffd9e0;
mov r3 L0x7fffffffd9e8;
mov r4 L0x7fffffffd9f0;
mov r5 L0x7fffffffd9f8;
{
  eqmod (limbs 64 [r0, r1, r2, r3, r4, r5])
        (limbs 64 [a0, a1, a2, a3, a4, a5] +
         limbs 64 [b0, b1, b2, b3, b4, b5])
        (limbs 64 [0x004e000000000013, 0x09480097801382be,
                   0xa6e58dbe43002a06, 0x6f82cefbe47879bb,
                   0x2d996cc179c6d166, 0x24009015183f9489])
&&
  limbs 64 [r0, r1, r2, r3, r4, r5] <
  limbs 64 [0x004e000000000013@64, 0x09480097801382be@64,
            0xa6e58dbe43002a06@64, 0x6f82cefbe47879bb@64,
            0x2d996cc179c6d166@64, 0x24009015183f9489@64]
}

