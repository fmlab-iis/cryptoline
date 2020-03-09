(* NOTE: check why "assume r8 = 0 && true" doesn't work but
         "assume r8 + 0 = 0 && true" does...                 *)
(* quine: -no_carry_constraint -btor -v -jobs 20 -isafety -qfbv_args '-SE minisat' fp_rdcn_low.cl
Parsing Cryptoline file:                [OK]            0.002626 seconds
Checking well-formedness:               [OK]            0.000518 seconds
Transforming to SSA form:               [OK]            0.000238 seconds
Rewriting assignments:                  [OK]            0.001682 seconds
Verifying program safety:               [OK]            3.625717 seconds
Verifying range assertions:             [OK]            5.576500 seconds
Verifying range specification:          [OK]            3.700668 seconds
Rewriting value-preserved casting:      [OK]            0.000016 seconds
Verifying algebraic assertions:         [OK]            0.185656 seconds
Verifying algebraic specification:      [OK]            0.095359 seconds
Verification result:                    [OK]            13.189592 seconds
*)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
           uint64 a4, uint64 a5, uint64 a6, uint64 a7) =
{
  true
&&
  limbs 64 [a0, a1, a2, a3, a4, a5, a6, a7] <
  (limbs 64 [0xa700000000000013@64, 0x6121000000000013@64,
             0xba344d8000000008@64, 0x2523648240000001@64,
             0@64, 0@64, 0@64, 0@64]) *
  (limbs 64 [0xa700000000000013@64, 0x6121000000000013@64,
             0xba344d8000000008@64, 0x2523648240000001@64,
             0@64, 0@64, 0@64, 0@64])
}

mov L0x7fffffffda20 a0;
mov L0x7fffffffda28 a1;
mov L0x7fffffffda30 a2;
mov L0x7fffffffda38 a3;
mov L0x7fffffffda40 a4;
mov L0x7fffffffda48 a5;
mov L0x7fffffffda50 a6;
mov L0x7fffffffda58 a7;

(* #push   %r12                                     #! PC = 0x93824992236278 *)
#push   %%r12                                     #! 0x93824992236278 = 0x93824992236278;
(* #push   %r13                                     #! PC = 0x93824992236280 *)
#push   %%r13                                     #! 0x93824992236280 = 0x93824992236280;
(* #push   %r14                                     #! PC = 0x93824992236282 *)
#push   %%r14                                     #! 0x93824992236282 = 0x93824992236282;
(* xor    %r10,%r10                                #! PC = 0x93824992236284 *)
mov r10 0@uint64;
(* movabs $0x8435e50d79435e5,%rcx                  #! PC = 0x93824992236287 *)
mov rcx 0x8435e50d79435e5@uint64;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffda20; Value = 0x0000000000000000; PC = 0x93824992236297 *)
mov r8 L0x7fffffffda20;
(* mov    %r8,%rax                                 #! PC = 0x93824992236300 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x93824992236303 *)
mull rdx rax rax rcx;
(* mov    %rax,%r14                                #! PC = 0x93824992236306 *)
mov r14 rax;
(* movabs $0xa700000000000013,%r11                 #! PC = 0x93824992236309 *)
mov r11 0xa700000000000013@uint64;
(* mul    %r11                                     #! PC = 0x93824992236319 *)
mull rdx rax rax r11;
(* add    %rax,%r8                                 #! PC = 0x93824992236322 *)
adds carry r8 r8 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r8 0 (2**64) && true;
assume (r8 + 0) = 0 && true;
(* movabs $0x6121000000000013,%r12                 #! PC = 0x93824992236325 *)
mov r12 0x6121000000000013@uint64;
(* adc    0x8(%rsi),%rdx                           #! EA = L0x7fffffffda28; Value = 0x0001000000001000; PC = 0x93824992236335 *)
adcs carry rdx rdx L0x7fffffffda28 carry;
(* mov    %rdx,%r9                                 #! PC = 0x93824992236339 *)
mov r9 rdx;
(* adc    $0x0,%r10                                #! PC = 0x93824992236342 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r14,%rax                                #! PC = 0x93824992236346 *)
mov rax r14;
(* mul    %r12                                     #! PC = 0x93824992236349 *)
mull rdx rax rax r12;
(* add    %rax,%r9                                 #! PC = 0x93824992236352 *)
adds carry r9 r9 rax;
(* mov    %r9,%rax                                 #! PC = 0x93824992236355 *)
mov rax r9;
(* adc    %rdx,%r10                                #! PC = 0x93824992236358 *)
adc r10 r10 rdx carry;
(* mul    %rcx                                     #! PC = 0x93824992236361 *)
mull rdx rax rax rcx;
(* mov    %rax,0x8(%rsi)                           #! EA = L0x7fffffffda28; PC = 0x93824992236364 *)
mov L0x7fffffffda28 rax;
(* xor    %r8,%r8                                  #! PC = 0x93824992236368 *)
mov r8 0@uint64;
(* mul    %r11                                     #! PC = 0x93824992236371 *)
mull rdx rax rax r11;
(* add    %rax,%r9                                 #! PC = 0x93824992236374 *)
adds carry r9 r9 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r9 0 (2**64) && true;
assume r9 = 0 && true;
(* movabs $0xba344d8000000008,%r13                 #! PC = 0x93824992236377 *)
mov r13 0xba344d8000000008@uint64;
(* adc    %rdx,%r10                                #! PC = 0x93824992236387 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992236390 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r14,%rax                                #! PC = 0x93824992236394 *)
mov rax r14;
(* mul    %r13                                     #! PC = 0x93824992236397 *)
mull rdx rax rax r13;
(* add    0x10(%rsi),%r10                          #! EA = L0x7fffffffda30; Value = 0x000fff8000060000; PC = 0x93824992236400 *)
adds carry r10 r10 L0x7fffffffda30;
(* adc    $0x0,%r8                                 #! PC = 0x93824992236404 *)
adc r8 r8 0x0@uint64 carry;
(* add    %rax,%r10                                #! PC = 0x93824992236408 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x93824992236411 *)
adc r8 r8 rdx carry;
(* xor    %r9,%r9                                  #! PC = 0x93824992236414 *)
mov r9 0@uint64;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffda28; Value = 0x6bca0d79435e5000; PC = 0x93824992236417 *)
mov rax L0x7fffffffda28;
(* mul    %r12                                     #! PC = 0x93824992236421 *)
mull rdx rax rax r12;
(* add    %rax,%r10                                #! PC = 0x93824992236424 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x93824992236427 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992236430 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x93824992236434 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x93824992236437 *)
mull rdx rax rax rcx;
(* mov    %rax,0x10(%rsi)                          #! EA = L0x7fffffffda30; PC = 0x93824992236440 *)
mov L0x7fffffffda30 rax;
(* mul    %r11                                     #! PC = 0x93824992236444 *)
mull rdx rax rax r11;
(* add    %rax,%r10                                #! PC = 0x93824992236447 *)
adds carry r10 r10 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r10 0 (2**64) && true;
assume r10 = 0 && true;
(* mov    %r14,%rax                                #! PC = 0x93824992236450 *)
mov rax r14;
(* adc    %rdx,%r8                                 #! PC = 0x93824992236453 *)
adcs carry r8 r8 rdx carry;
(* movabs $0x2523648240000001,%r14                 #! PC = 0x93824992236456 *)
mov r14 0x2523648240000001@uint64;
(* adc    $0x0,%r9                                 #! PC = 0x93824992236466 *)
adc r9 r9 0x0@uint64 carry;
(* mul    %r14                                     #! PC = 0x93824992236470 *)
mull rdx rax rax r14;
(* add    0x18(%rsi),%r8                           #! EA = L0x7fffffffda38; Value = 0xfffffc00000ffc80; PC = 0x93824992236473 *)
adds carry r8 r8 L0x7fffffffda38;
(* adc    $0x0,%r9                                 #! PC = 0x93824992236477 *)
adc r9 r9 0x0@uint64 carry;
(* add    %rax,%r8                                 #! PC = 0x93824992236481 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x93824992236484 *)
adc r9 r9 rdx carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffda28; Value = 0x6bca0d79435e5000; PC = 0x93824992236487 *)
mov rax L0x7fffffffda28;
(* mul    %r13                                     #! PC = 0x93824992236491 *)
mull rdx rax rax r13;
(* add    %rax,%r8                                 #! PC = 0x93824992236494 *)
adds carry r8 r8 rax;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffda30; Value = 0x329ca44cf11b5818; PC = 0x93824992236497 *)
mov rax L0x7fffffffda30;
(* adc    %rdx,%r9                                 #! PC = 0x93824992236501 *)
adc r9 r9 rdx carry;
(* xor    %r10,%r10                                #! PC = 0x93824992236504 *)
mov r10 0@uint64;
(* mul    %r12                                     #! PC = 0x93824992236507 *)
mull rdx rax rax r12;
(* add    %rax,%r8                                 #! PC = 0x93824992236510 *)
adds carry r8 r8 rax;
(* mov    %r8,%rax                                 #! PC = 0x93824992236513 *)
mov rax r8;
(* adc    %rdx,%r9                                 #! PC = 0x93824992236516 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992236519 *)
adc r10 r10 0x0@uint64 carry;
(* mul    %rcx                                     #! PC = 0x93824992236523 *)
mull rdx rax rax rcx;
(* mov    %rax,0x18(%rsi)                          #! EA = L0x7fffffffda38; PC = 0x93824992236526 *)
mov L0x7fffffffda38 rax;
(* mul    %r11                                     #! PC = 0x93824992236530 *)
mull rdx rax rax r11;
(* add    %rax,%r8                                 #! PC = 0x93824992236533 *)
adds carry r8 r8 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r8 0 (2**64) && true;
assume r8 = 0 && true;
(* adc    %rdx,%r9                                 #! PC = 0x93824992236536 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992236539 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffda28; Value = 0x6bca0d79435e5000; PC = 0x93824992236543 *)
mov rax L0x7fffffffda28;
(* mul    %r14                                     #! PC = 0x93824992236547 *)
mull rdx rax rax r14;
(* add    0x20(%rsi),%r9                           #! EA = L0x7fffffffda40; Value = 0xfffffffe00000800; PC = 0x93824992236550 *)
adds carry r9 r9 L0x7fffffffda40;
(* adc    $0x0,%r10                                #! PC = 0x93824992236554 *)
adc r10 r10 0x0@uint64 carry;
(* add    %rax,%r9                                 #! PC = 0x93824992236558 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x93824992236561 *)
adc r10 r10 rdx carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffda30; Value = 0x329ca44cf11b5818; PC = 0x93824992236564 *)
mov rax L0x7fffffffda30;
(* mul    %r13                                     #! PC = 0x93824992236568 *)
mull rdx rax rax r13;
(* add    %rax,%r9                                 #! PC = 0x93824992236571 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x93824992236574 *)
adc r10 r10 rdx carry;
(* xor    %r8,%r8                                  #! PC = 0x93824992236577 *)
mov r8 0@uint64;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffda38; Value = 0xded55b1d378db8d4; PC = 0x93824992236580 *)
mov rax L0x7fffffffda38;
(* mul    %r12                                     #! PC = 0x93824992236584 *)
mull rdx rax rax r12;
(* add    %rax,%r9                                 #! PC = 0x93824992236587 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x93824992236590 *)
adcs carry r10 r10 rdx carry;
(* mov    %r9,%r12                                 #! PC = 0x93824992236593 *)
mov r12 r9;
(* adc    $0x0,%r8                                 #! PC = 0x93824992236596 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r11,%r11                                #! PC = 0x93824992236600 *)
mov r11 0@uint64;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffda30; Value = 0x329ca44cf11b5818; PC = 0x93824992236603 *)
mov rax L0x7fffffffda30;
(* mul    %r14                                     #! PC = 0x93824992236607 *)
mull rdx rax rax r14;
(* add    %rax,%r10                                #! PC = 0x93824992236610 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x93824992236613 *)
adc r8 r8 rdx carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffda38; Value = 0xded55b1d378db8d4; PC = 0x93824992236616 *)
mov rax L0x7fffffffda38;
(* mul    %r13                                     #! PC = 0x93824992236620 *)
mull rdx rax rax r13;
(* add    %rax,%r10                                #! PC = 0x93824992236623 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x93824992236626 *)
adc r8 r8 rdx carry;
(* add    0x28(%rsi),%r10                          #! EA = L0x7fffffffda48; Value = 0x0000000000000000; PC = 0x93824992236629 *)
adds carry r10 r10 L0x7fffffffda48;
(* mov    %r10,%r13                                #! PC = 0x93824992236633 *)
mov r13 r10;
(* adc    $0x0,%r8                                 #! PC = 0x93824992236636 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffda38; Value = 0xded55b1d378db8d4; PC = 0x93824992236640 *)
mov rax L0x7fffffffda38;
(* mul    %r14                                     #! PC = 0x93824992236644 *)
mull rdx rax rax r14;
(* add    %rax,%r8                                 #! PC = 0x93824992236647 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r11                                #! PC = 0x93824992236650 *)
adc r11 r11 rdx carry;
(* add    0x30(%rsi),%r8                           #! EA = L0x7fffffffda50; Value = 0x0000000000000000; PC = 0x93824992236653 *)
adds carry r8 r8 L0x7fffffffda50;
(* mov    %r8,%r14                                 #! PC = 0x93824992236657 *)
mov r14 r8;
(* adc    $0x0,%r11                                #! PC = 0x93824992236660 *)
adc r11 r11 0x0@uint64 carry;
(* add    0x38(%rsi),%r11                          #! EA = L0x7fffffffda58; Value = 0x0000000000000000; PC = 0x93824992236664 *)
adds carry r11 r11 L0x7fffffffda58;
(* NOTE: cannot carry *)
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r11,%rcx                                #! PC = 0x93824992236668 *)
mov rcx r11;
(* movabs $0xa700000000000013,%rax                 #! PC = 0x93824992236671 *)
mov rax 0xa700000000000013@uint64;
(* sub    %rax,%r9                                 #! PC = 0x93824992236681 *)
subb carry r9 r9 rax;
(* movabs $0x6121000000000013,%rax                 #! PC = 0x93824992236684 *)
mov rax 0x6121000000000013@uint64;
(* sbb    %rax,%r10                                #! PC = 0x93824992236694 *)
sbbs carry r10 r10 rax carry;
(* movabs $0xba344d8000000008,%rax                 #! PC = 0x93824992236697 *)
mov rax 0xba344d8000000008@uint64;
(* sbb    %rax,%r8                                 #! PC = 0x93824992236707 *)
sbbs carry r8 r8 rax carry;
(* movabs $0x2523648240000001,%rax                 #! PC = 0x93824992236710 *)
mov rax 0x2523648240000001@uint64;
(* sbb    %rax,%r11                                #! PC = 0x93824992236720 *)
sbbs carry r11 r11 rax carry;

(* NOTE: final reduction *)
assert true
    && eqmod (limbs 64 [r9, r10, r8, r11])
             (limbs 64 [r12, r13, r14, rcx])
             (limbs 64 [0xa700000000000013@64, 0x6121000000000013@64,
                        0xba344d8000000008@64, 0x2523648240000001@64]);
assume eqmod (limbs 64 [r9, r10, r8, r11])
             (limbs 64 [r12, r13, r14, rcx])
             (limbs 64 [0xa700000000000013, 0x6121000000000013,
                        0xba344d8000000008, 0x2523648240000001])
    && true;

(* cmovae %r9,%r12                                 #! PC = 0x93824992236723 *)
cmov r12 carry r12 r9;
(* mov    %r12,(%rdi)                              #! EA = L0x7fffffffda00; PC = 0x93824992236727 *)
mov L0x7fffffffda00 r12;
(* cmovae %r10,%r13                                #! PC = 0x93824992236730 *)
cmov r13 carry r13 r10;
(* mov    %r13,0x8(%rdi)                           #! EA = L0x7fffffffda08; PC = 0x93824992236734 *)
mov L0x7fffffffda08 r13;
(* cmovae %r8,%r14                                 #! PC = 0x93824992236738 *)
cmov r14 carry r14 r8;
(* mov    %r14,0x10(%rdi)                          #! EA = L0x7fffffffda10; PC = 0x93824992236742 *)
mov L0x7fffffffda10 r14;
(* cmovae %r11,%rcx                                #! PC = 0x93824992236746 *)
cmov rcx carry rcx r11;
(* mov    %rcx,0x18(%rdi)                          #! EA = L0x7fffffffda18; PC = 0x93824992236750 *)
mov L0x7fffffffda18 rcx;
(* #pop    %r14                                     #! PC = 0x93824992236754 *)
#pop    %%r14                                     #! 0x93824992236754 = 0x93824992236754;
(* #pop    %r13                                     #! PC = 0x93824992236756 *)
#pop    %%r13                                     #! 0x93824992236756 = 0x93824992236756;
(* #pop    %r12                                     #! PC = 0x93824992236758 *)
#pop    %%r12                                     #! 0x93824992236758 = 0x93824992236758;
(* #retq                                           #! PC = 0x93824992236760 *)
#retq                                           #! 0x93824992236760 = 0x93824992236760;

mov r0 L0x7fffffffda00;
mov r1 L0x7fffffffda08;
mov r2 L0x7fffffffda10;
mov r3 L0x7fffffffda18;

{
  eqmod (limbs 64 [0, 0, 0, 0, r0, r1, r2, r3])
        (limbs 64 [a0, a1, a2, a3, a4, a5, a6, a7])
        (limbs 64 [0xa700000000000013, 0x6121000000000013,
                   0xba344d8000000008, 0x2523648240000001])
&&
  limbs 64 [r0, r1, r2, r3] <
  limbs 64 [0xa700000000000013@64, 0x6121000000000013@64,
            0xba344d8000000008@64, 0x2523648240000001@64]
}

