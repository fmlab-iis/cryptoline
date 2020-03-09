(* quine: -jobs 20 -v -btor -isafety -qfbv_args "-SE minisat" fp_mulm_low.cl
Parsing Cryptoline file:                [OK]            0.009824 seconds
Checking well-formedness:               [OK]            0.002490 seconds
Transforming to SSA form:               [OK]            0.000668 seconds
Rewriting assignments:                  [OK]            0.004187 seconds
Verifying program safety:               [OK]            14.483787 seconds
Verifying range assertions:             [OK]            7.517185 seconds
Verifying range specification:          [OK]            26.138754 seconds
Rewriting value-preserved casting:      [OK]            0.000033 seconds
Verifying algebraic assertions:         [OK]            0.865198 seconds
Verifying algebraic specification:      [OK]            4.596330 seconds
Verification result:                    [OK]            53.619446 seconds
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

(* #push   %r12                                     #! PC = 0x93824992236191 *)
#push   %%r12                                     #! 0x93824992236191 = 0x93824992236191;
(* #push   %r13                                     #! PC = 0x93824992236193 *)
#push   %%r13                                     #! 0x93824992236193 = 0x93824992236193;
(* #push   %r14                                     #! PC = 0x93824992236195 *)
#push   %%r14                                     #! 0x93824992236195 = 0x93824992236195;
(* #push   %r15                                     #! PC = 0x93824992236197 *)
#push   %%r15                                     #! 0x93824992236197 = 0x93824992236197;
(* #push   %rbx                                     #! PC = 0x93824992236199 *)
#push   %%rbx                                     #! 0x93824992236199 = 0x93824992236199;
(* #push   %rbp                                     #! PC = 0x93824992236200 *)
#push   %%rbp                                     #! 0x93824992236200 = 0x93824992236200;
(* #sub    $0x60,%rsp                               #! PC = 0x93824992236201 *)
#sub    $0x60,%rsp                               #! 0x93824992236201 = 0x93824992236201;
(* #mov    %rdx,%rcx                                #! PC = 0x93824992236205 *)
#mov    %%rdx,%%rcx                                #! 0x93824992236205 = 0x93824992236205;
(* #lea    0x201d59(%rip),%rbx        # 0x555555757010#! PC = 0x93824992236208 *)
#lea    %%EA,%%rbx        # 0x555555757010#! 0x93824992236208 = 0x93824992236208;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd970; Value = 0x0000000000000000; PC = 0x93824992236215 *)
mov rax L0x7fffffffd970;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd9a0; PC = 0x93824992236218 *)
mull rdx rax rax L0x7fffffffd9a0;
(* mov    %rax,(%rsp)                              #! EA = L0x7fffffffd8d8; PC = 0x93824992236221 *)
mov L0x7fffffffd8d8 rax;
(* mov    %rdx,%r8                                 #! PC = 0x93824992236225 *)
mov r8 rdx;
(* xor    %r9,%r9                                  #! PC = 0x93824992236228 *)
mov r9 0@uint64;
(* xor    %r10,%r10                                #! PC = 0x93824992236231 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd970; Value = 0x0000000000000000; PC = 0x93824992236234 *)
mov rax L0x7fffffffd970;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd9a8; PC = 0x93824992236237 *)
mull rdx rax rax L0x7fffffffd9a8;
(* add    %rax,%r8                                 #! PC = 0x93824992236241 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x93824992236244 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992236247 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd978; Value = 0x0000000000000000; PC = 0x93824992236251 *)
mov rax L0x7fffffffd978;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd9a0; PC = 0x93824992236255 *)
mull rdx rax rax L0x7fffffffd9a0;
(* add    %rax,%r8                                 #! PC = 0x93824992236258 *)
adds carry r8 r8 rax;
(* mov    %r8,0x8(%rsp)                            #! EA = L0x7fffffffd8e0; PC = 0x93824992236261 *)
mov L0x7fffffffd8e0 r8;
(* adc    %rdx,%r9                                 #! PC = 0x93824992236266 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992236269 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x93824992236273 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd970; Value = 0x0000000000000000; PC = 0x93824992236276 *)
mov rax L0x7fffffffd970;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd9b0; PC = 0x93824992236279 *)
mull rdx rax rax L0x7fffffffd9b0;
(* add    %rax,%r9                                 #! PC = 0x93824992236283 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x93824992236286 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992236289 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd978; Value = 0x0000000000000000; PC = 0x93824992236293 *)
mov rax L0x7fffffffd978;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd9a8; PC = 0x93824992236297 *)
mull rdx rax rax L0x7fffffffd9a8;
(* add    %rax,%r9                                 #! PC = 0x93824992236301 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x93824992236304 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992236307 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd980; Value = 0x0000000000000000; PC = 0x93824992236311 *)
mov rax L0x7fffffffd980;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd9a0; PC = 0x93824992236315 *)
mull rdx rax rax L0x7fffffffd9a0;
(* add    %rax,%r9                                 #! PC = 0x93824992236318 *)
adds carry r9 r9 rax;
(* mov    %r9,0x10(%rsp)                           #! EA = L0x7fffffffd8e8; PC = 0x93824992236321 *)
mov L0x7fffffffd8e8 r9;
(* adc    %rdx,%r10                                #! PC = 0x93824992236326 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992236329 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x93824992236333 *)
mov r9 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd970; Value = 0x0000000000000000; PC = 0x93824992236336 *)
mov rax L0x7fffffffd970;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd9b8; PC = 0x93824992236339 *)
mull rdx rax rax L0x7fffffffd9b8;
(* add    %rax,%r10                                #! PC = 0x93824992236343 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x93824992236346 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992236349 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd978; Value = 0x0000000000000000; PC = 0x93824992236353 *)
mov rax L0x7fffffffd978;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd9b0; PC = 0x93824992236357 *)
mull rdx rax rax L0x7fffffffd9b0;
(* add    %rax,%r10                                #! PC = 0x93824992236361 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x93824992236364 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992236367 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd980; Value = 0x0000000000000000; PC = 0x93824992236371 *)
mov rax L0x7fffffffd980;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd9a8; PC = 0x93824992236375 *)
mull rdx rax rax L0x7fffffffd9a8;
(* add    %rax,%r10                                #! PC = 0x93824992236379 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x93824992236382 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992236385 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd988; Value = 0x00007ffff7ffe710; PC = 0x93824992236389 *)
mov rax L0x7fffffffd988;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd9a0; PC = 0x93824992236393 *)
mull rdx rax rax L0x7fffffffd9a0;
(* add    %rax,%r10                                #! PC = 0x93824992236396 *)
adds carry r10 r10 rax;
(* mov    %r10,0x18(%rsp)                          #! EA = L0x7fffffffd8f0; PC = 0x93824992236399 *)
mov L0x7fffffffd8f0 r10;
(* adc    %rdx,%r8                                 #! PC = 0x93824992236404 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992236407 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x93824992236411 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd970; Value = 0x0000000000000000; PC = 0x93824992236414 *)
mov rax L0x7fffffffd970;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd9c0; PC = 0x93824992236417 *)
mull rdx rax rax L0x7fffffffd9c0;
(* add    %rax,%r8                                 #! PC = 0x93824992236421 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x93824992236424 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992236427 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd978; Value = 0x0000000000000000; PC = 0x93824992236431 *)
mov rax L0x7fffffffd978;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd9b8; PC = 0x93824992236435 *)
mull rdx rax rax L0x7fffffffd9b8;
(* add    %rax,%r8                                 #! PC = 0x93824992236439 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x93824992236442 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992236445 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd980; Value = 0x0000000000000000; PC = 0x93824992236449 *)
mov rax L0x7fffffffd980;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd9b0; PC = 0x93824992236453 *)
mull rdx rax rax L0x7fffffffd9b0;
(* add    %rax,%r8                                 #! PC = 0x93824992236457 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x93824992236460 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992236463 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd988; Value = 0x00007ffff7ffe710; PC = 0x93824992236467 *)
mov rax L0x7fffffffd988;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd9a8; PC = 0x93824992236471 *)
mull rdx rax rax L0x7fffffffd9a8;
(* add    %rax,%r8                                 #! PC = 0x93824992236475 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x93824992236478 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992236481 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd990; Value = 0x00007ffff7b97787; PC = 0x93824992236485 *)
mov rax L0x7fffffffd990;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd9a0; PC = 0x93824992236489 *)
mull rdx rax rax L0x7fffffffd9a0;
(* add    %rax,%r8                                 #! PC = 0x93824992236492 *)
adds carry r8 r8 rax;
(* mov    %r8,0x20(%rsp)                           #! EA = L0x7fffffffd8f8; PC = 0x93824992236495 *)
mov L0x7fffffffd8f8 r8;
(* adc    %rdx,%r9                                 #! PC = 0x93824992236500 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992236503 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x93824992236507 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd970; Value = 0x0000000000000000; PC = 0x93824992236510 *)
mov rax L0x7fffffffd970;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd9c8; PC = 0x93824992236513 *)
mull rdx rax rax L0x7fffffffd9c8;
(* add    %rax,%r9                                 #! PC = 0x93824992236517 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x93824992236520 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992236523 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd978; Value = 0x0000000000000000; PC = 0x93824992236527 *)
mov rax L0x7fffffffd978;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd9c0; PC = 0x93824992236531 *)
mull rdx rax rax L0x7fffffffd9c0;
(* add    %rax,%r9                                 #! PC = 0x93824992236535 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x93824992236538 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992236541 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd980; Value = 0x0000000000000000; PC = 0x93824992236545 *)
mov rax L0x7fffffffd980;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd9b8; PC = 0x93824992236549 *)
mull rdx rax rax L0x7fffffffd9b8;
(* add    %rax,%r9                                 #! PC = 0x93824992236553 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x93824992236556 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992236559 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd988; Value = 0x00007ffff7ffe710; PC = 0x93824992236563 *)
mov rax L0x7fffffffd988;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd9b0; PC = 0x93824992236567 *)
mull rdx rax rax L0x7fffffffd9b0;
(* add    %rax,%r9                                 #! PC = 0x93824992236571 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x93824992236574 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992236577 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd990; Value = 0x00007ffff7b97787; PC = 0x93824992236581 *)
mov rax L0x7fffffffd990;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd9a8; PC = 0x93824992236585 *)
mull rdx rax rax L0x7fffffffd9a8;
(* add    %rax,%r9                                 #! PC = 0x93824992236589 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x93824992236592 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992236595 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd998; Value = 0x00000000000009c0; PC = 0x93824992236599 *)
mov rax L0x7fffffffd998;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd9a0; PC = 0x93824992236603 *)
mull rdx rax rax L0x7fffffffd9a0;
(* add    %rax,%r9                                 #! PC = 0x93824992236606 *)
adds carry r9 r9 rax;
(* mov    %r9,0x28(%rsp)                           #! EA = L0x7fffffffd900; PC = 0x93824992236609 *)
mov L0x7fffffffd900 r9;
(* adc    %rdx,%r10                                #! PC = 0x93824992236614 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992236617 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x93824992236621 *)
mov r9 0@uint64;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd978; Value = 0x0000000000000000; PC = 0x93824992236624 *)
mov rax L0x7fffffffd978;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd9c8; PC = 0x93824992236628 *)
mull rdx rax rax L0x7fffffffd9c8;
(* add    %rax,%r10                                #! PC = 0x93824992236632 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x93824992236635 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992236638 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd980; Value = 0x0000000000000000; PC = 0x93824992236642 *)
mov rax L0x7fffffffd980;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd9c0; PC = 0x93824992236646 *)
mull rdx rax rax L0x7fffffffd9c0;
(* add    %rax,%r10                                #! PC = 0x93824992236650 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x93824992236653 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992236656 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd988; Value = 0x00007ffff7ffe710; PC = 0x93824992236660 *)
mov rax L0x7fffffffd988;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd9b8; PC = 0x93824992236664 *)
mull rdx rax rax L0x7fffffffd9b8;
(* add    %rax,%r10                                #! PC = 0x93824992236668 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x93824992236671 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992236674 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd990; Value = 0x00007ffff7b97787; PC = 0x93824992236678 *)
mov rax L0x7fffffffd990;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd9b0; PC = 0x93824992236682 *)
mull rdx rax rax L0x7fffffffd9b0;
(* add    %rax,%r10                                #! PC = 0x93824992236686 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x93824992236689 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992236692 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd998; Value = 0x00000000000009c0; PC = 0x93824992236696 *)
mov rax L0x7fffffffd998;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd9a8; PC = 0x93824992236700 *)
mull rdx rax rax L0x7fffffffd9a8;
(* add    %rax,%r10                                #! PC = 0x93824992236704 *)
adds carry r10 r10 rax;
(* mov    %r10,0x30(%rsp)                          #! EA = L0x7fffffffd908; PC = 0x93824992236707 *)
mov L0x7fffffffd908 r10;
(* adc    %rdx,%r8                                 #! PC = 0x93824992236712 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992236715 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x93824992236719 *)
mov r10 0@uint64;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd980; Value = 0x0000000000000000; PC = 0x93824992236722 *)
mov rax L0x7fffffffd980;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd9c8; PC = 0x93824992236726 *)
mull rdx rax rax L0x7fffffffd9c8;
(* add    %rax,%r8                                 #! PC = 0x93824992236730 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x93824992236733 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992236736 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd988; Value = 0x00007ffff7ffe710; PC = 0x93824992236740 *)
mov rax L0x7fffffffd988;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd9c0; PC = 0x93824992236744 *)
mull rdx rax rax L0x7fffffffd9c0;
(* add    %rax,%r8                                 #! PC = 0x93824992236748 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x93824992236751 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992236754 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd990; Value = 0x00007ffff7b97787; PC = 0x93824992236758 *)
mov rax L0x7fffffffd990;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd9b8; PC = 0x93824992236762 *)
mull rdx rax rax L0x7fffffffd9b8;
(* add    %rax,%r8                                 #! PC = 0x93824992236766 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x93824992236769 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992236772 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd998; Value = 0x00000000000009c0; PC = 0x93824992236776 *)
mov rax L0x7fffffffd998;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd9b0; PC = 0x93824992236780 *)
mull rdx rax rax L0x7fffffffd9b0;
(* add    %rax,%r8                                 #! PC = 0x93824992236784 *)
adds carry r8 r8 rax;
(* mov    %r8,0x38(%rsp)                           #! EA = L0x7fffffffd910; PC = 0x93824992236787 *)
mov L0x7fffffffd910 r8;
(* adc    %rdx,%r9                                 #! PC = 0x93824992236792 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992236795 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x93824992236799 *)
mov r8 0@uint64;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd988; Value = 0x00007ffff7ffe710; PC = 0x93824992236802 *)
mov rax L0x7fffffffd988;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd9c8; PC = 0x93824992236806 *)
mull rdx rax rax L0x7fffffffd9c8;
(* add    %rax,%r9                                 #! PC = 0x93824992236810 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x93824992236813 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992236816 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd990; Value = 0x00007ffff7b97787; PC = 0x93824992236820 *)
mov rax L0x7fffffffd990;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd9c0; PC = 0x93824992236824 *)
mull rdx rax rax L0x7fffffffd9c0;
(* add    %rax,%r9                                 #! PC = 0x93824992236828 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x93824992236831 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992236834 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd998; Value = 0x00000000000009c0; PC = 0x93824992236838 *)
mov rax L0x7fffffffd998;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd9b8; PC = 0x93824992236842 *)
mull rdx rax rax L0x7fffffffd9b8;
(* add    %rax,%r9                                 #! PC = 0x93824992236846 *)
adds carry r9 r9 rax;
(* mov    %r9,0x40(%rsp)                           #! EA = L0x7fffffffd918; PC = 0x93824992236849 *)
mov L0x7fffffffd918 r9;
(* adc    %rdx,%r10                                #! PC = 0x93824992236854 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992236857 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x93824992236861 *)
mov r9 0@uint64;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd990; Value = 0x00007ffff7b97787; PC = 0x93824992236864 *)
mov rax L0x7fffffffd990;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd9c8; PC = 0x93824992236868 *)
mull rdx rax rax L0x7fffffffd9c8;
(* add    %rax,%r10                                #! PC = 0x93824992236872 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x93824992236875 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992236878 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd998; Value = 0x00000000000009c0; PC = 0x93824992236882 *)
mov rax L0x7fffffffd998;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd9c0; PC = 0x93824992236886 *)
mull rdx rax rax L0x7fffffffd9c0;
(* add    %rax,%r10                                #! PC = 0x93824992236890 *)
adds carry r10 r10 rax;
(* mov    %r10,0x48(%rsp)                          #! EA = L0x7fffffffd920; PC = 0x93824992236893 *)
mov L0x7fffffffd920 r10;
(* adc    %rdx,%r8                                 #! PC = 0x93824992236898 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992236901 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd998; Value = 0x00000000000009c0; PC = 0x93824992236905 *)
mov rax L0x7fffffffd998;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd9c8; PC = 0x93824992236909 *)
mull rdx rax rax L0x7fffffffd9c8;
(* add    %rax,%r8                                 #! PC = 0x93824992236913 *)
adds carry r8 r8 rax;
(* mov    %r8,0x50(%rsp)                           #! EA = L0x7fffffffd928; PC = 0x93824992236916 *)
mov L0x7fffffffd928 r8;
(* adc    %rdx,%r9                                 #! PC = 0x93824992236921 *)
adc r9 r9 rdx carry;
(* mov    %r9,0x58(%rsp)                           #! EA = L0x7fffffffd930; PC = 0x93824992236924 *)
mov L0x7fffffffd930 r9;

(* NOTE: summary of multiplication *)
assert limbs 64 [L0x7fffffffd8d8, L0x7fffffffd8e0,
                 L0x7fffffffd8e8, L0x7fffffffd8f0,
                 L0x7fffffffd8f8, L0x7fffffffd900,
                 L0x7fffffffd908, L0x7fffffffd910,
                 L0x7fffffffd918, L0x7fffffffd920,
                 L0x7fffffffd928, L0x7fffffffd930] =
       limbs 64 [a0, a1, a2, a3, a4, a5] *
       limbs 64 [b0, b1, b2, b3, b4, b5]
    && true;

(* xor    %r9,%r9                                  #! PC = 0x93824992236929 *)
mov r9 0@uint64;
(* movabs $0xdf615e50d79435e5,%rcx                 #! PC = 0x93824992236932 *)
mov rcx 0xdf615e50d79435e5@uint64;
(* mov    (%rsp),%r8                               #! EA = L0x7fffffffd8d8; Value = 0x0000000000000000; PC = 0x93824992236942 *)
mov r8 L0x7fffffffd8d8;
(* mov    %r8,%rax                                 #! PC = 0x93824992236946 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x93824992236949 *)
mull rdx rax rax rcx;
(* mov    %rax,(%rsp)                              #! EA = L0x7fffffffd8d8; PC = 0x93824992236952 *)
mov L0x7fffffffd8d8 rax;
(* mulq   (%rbx)                                   #! EA = L0x555555757010; PC = 0x93824992236956 *)
mull rdx rax rax L0x555555757010;
(* add    %rax,%r8                                 #! PC = 0x93824992236959 *)
adds carry r8 r8 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r8 0 (2**64) && true;
assume r8 = 0 && true;
(* adc    %rdx,%r9                                 #! PC = 0x93824992236962 *)
adc r9 r9 rdx carry;
(* xor    %r10,%r10                                #! PC = 0x93824992236965 *)
mov r10 0@uint64;
(* xor    %r8,%r8                                  #! PC = 0x93824992236968 *)
mov r8 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd8d8; Value = 0x0000000000000000; PC = 0x93824992236971 *)
mov rax L0x7fffffffd8d8;
(* mulq   0x8(%rbx)                                #! EA = L0x555555757018; PC = 0x93824992236975 *)
mull rdx rax rax L0x555555757018;
(* add    %rax,%r9                                 #! PC = 0x93824992236979 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x93824992236982 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992236985 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x8(%rsp),%r9                            #! EA = L0x7fffffffd8e0; Value = 0x0000000000000000; PC = 0x93824992236989 *)
adds carry r9 r9 L0x7fffffffd8e0;
(* adc    $0x0,%r10                                #! PC = 0x93824992236994 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992236998 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,%rax                                 #! PC = 0x93824992237002 *)
mov rax r9;
(* mul    %rcx                                     #! PC = 0x93824992237005 *)
mull rdx rax rax rcx;
(* mov    %rax,0x8(%rsp)                           #! EA = L0x7fffffffd8e0; PC = 0x93824992237008 *)
mov L0x7fffffffd8e0 rax;
(* mulq   (%rbx)                                   #! EA = L0x555555757010; PC = 0x93824992237013 *)
mull rdx rax rax L0x555555757010;
(* add    %rax,%r9                                 #! PC = 0x93824992237016 *)
adds carry r9 r9 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r9 0 (2**64) && true;
assume r9 = 0 && true;
(* adc    %rdx,%r10                                #! PC = 0x93824992237019 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992237022 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x93824992237026 *)
mov r9 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd8d8; Value = 0x0000000000000000; PC = 0x93824992237029 *)
mov rax L0x7fffffffd8d8;
(* mulq   0x10(%rbx)                               #! EA = L0x555555757020; PC = 0x93824992237033 *)
mull rdx rax rax L0x555555757020;
(* add    %rax,%r10                                #! PC = 0x93824992237037 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x93824992237040 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992237043 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd8e0; Value = 0x0000000000000000; PC = 0x93824992237047 *)
mov rax L0x7fffffffd8e0;
(* mulq   0x8(%rbx)                                #! EA = L0x555555757018; PC = 0x93824992237052 *)
mull rdx rax rax L0x555555757018;
(* add    %rax,%r10                                #! PC = 0x93824992237056 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x93824992237059 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992237062 *)
adc r9 r9 0x0@uint64 carry;
(* add    0x10(%rsp),%r10                          #! EA = L0x7fffffffd8e8; Value = 0x0000000000000000; PC = 0x93824992237066 *)
adds carry r10 r10 L0x7fffffffd8e8;
(* adc    $0x0,%r8                                 #! PC = 0x93824992237071 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992237075 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x93824992237079 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x93824992237082 *)
mull rdx rax rax rcx;
(* mov    %rax,0x10(%rsp)                          #! EA = L0x7fffffffd8e8; PC = 0x93824992237085 *)
mov L0x7fffffffd8e8 rax;
(* mulq   (%rbx)                                   #! EA = L0x555555757010; PC = 0x93824992237090 *)
mull rdx rax rax L0x555555757010;
(* add    %rax,%r10                                #! PC = 0x93824992237093 *)
adds carry r10 r10 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r10 0 (2**64) && true;
assume r10 = 0 && true;
(* adc    %rdx,%r8                                 #! PC = 0x93824992237096 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992237099 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x93824992237103 *)
mov r10 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd8d8; Value = 0x0000000000000000; PC = 0x93824992237106 *)
mov rax L0x7fffffffd8d8;
(* mulq   0x18(%rbx)                               #! EA = L0x555555757028; PC = 0x93824992237110 *)
mull rdx rax rax L0x555555757028;
(* add    %rax,%r8                                 #! PC = 0x93824992237114 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x93824992237117 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992237120 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd8e0; Value = 0x0000000000000000; PC = 0x93824992237124 *)
mov rax L0x7fffffffd8e0;
(* mulq   0x10(%rbx)                               #! EA = L0x555555757020; PC = 0x93824992237129 *)
mull rdx rax rax L0x555555757020;
(* add    %rax,%r8                                 #! PC = 0x93824992237133 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x93824992237136 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992237139 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd8e8; Value = 0x0000000000000000; PC = 0x93824992237143 *)
mov rax L0x7fffffffd8e8;
(* mulq   0x8(%rbx)                                #! EA = L0x555555757018; PC = 0x93824992237148 *)
mull rdx rax rax L0x555555757018;
(* add    %rax,%r8                                 #! PC = 0x93824992237152 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x93824992237155 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992237158 *)
adc r10 r10 0x0@uint64 carry;
(* add    0x18(%rsp),%r8                           #! EA = L0x7fffffffd8f0; Value = 0xe070013183b84d00; PC = 0x93824992237162 *)
adds carry r8 r8 L0x7fffffffd8f0;
(* adc    $0x0,%r9                                 #! PC = 0x93824992237167 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992237171 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r8,%rax                                 #! PC = 0x93824992237175 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x93824992237178 *)
mull rdx rax rax rcx;
(* mov    %rax,0x18(%rsp)                          #! EA = L0x7fffffffd8f0; PC = 0x93824992237181 *)
mov L0x7fffffffd8f0 rax;
(* mulq   (%rbx)                                   #! EA = L0x555555757010; PC = 0x93824992237186 *)
mull rdx rax rax L0x555555757010;
(* add    %rax,%r8                                 #! PC = 0x93824992237189 *)
adds carry r8 r8 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r8 0 (2**64) && true;
assume r8 = 0 && true;
(* adc    %rdx,%r9                                 #! PC = 0x93824992237192 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992237195 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x93824992237199 *)
mov r8 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd8d8; Value = 0x0000000000000000; PC = 0x93824992237202 *)
mov rax L0x7fffffffd8d8;
(* mulq   0x20(%rbx)                               #! EA = L0x555555757030; PC = 0x93824992237206 *)
mull rdx rax rax L0x555555757030;
(* add    %rax,%r9                                 #! PC = 0x93824992237210 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x93824992237213 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992237216 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd8e0; Value = 0x0000000000000000; PC = 0x93824992237220 *)
mov rax L0x7fffffffd8e0;
(* mulq   0x18(%rbx)                               #! EA = L0x555555757028; PC = 0x93824992237225 *)
mull rdx rax rax L0x555555757028;
(* add    %rax,%r9                                 #! PC = 0x93824992237229 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x93824992237232 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992237235 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd8e8; Value = 0x0000000000000000; PC = 0x93824992237239 *)
mov rax L0x7fffffffd8e8;
(* mulq   0x10(%rbx)                               #! EA = L0x555555757020; PC = 0x93824992237244 *)
mull rdx rax rax L0x555555757020;
(* add    %rax,%r9                                 #! PC = 0x93824992237248 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x93824992237251 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992237254 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd8f0; Value = 0x3d8e50c77fcde100; PC = 0x93824992237258 *)
mov rax L0x7fffffffd8f0;
(* mulq   0x8(%rbx)                                #! EA = L0x555555757018; PC = 0x93824992237263 *)
mull rdx rax rax L0x555555757018;
(* add    %rax,%r9                                 #! PC = 0x93824992237267 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x93824992237270 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992237273 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x20(%rsp),%r9                           #! EA = L0x7fffffffd8f8; Value = 0x8923826d493246af; PC = 0x93824992237277 *)
adds carry r9 r9 L0x7fffffffd8f8;
(* adc    $0x0,%r10                                #! PC = 0x93824992237282 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992237286 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,%rax                                 #! PC = 0x93824992237290 *)
mov rax r9;
(* mul    %rcx                                     #! PC = 0x93824992237293 *)
mull rdx rax rax rcx;
(* mov    %rax,0x20(%rsp)                          #! EA = L0x7fffffffd8f8; PC = 0x93824992237296 *)
mov L0x7fffffffd8f8 rax;
(* mulq   (%rbx)                                   #! EA = L0x555555757010; PC = 0x93824992237301 *)
mull rdx rax rax L0x555555757010;
(* add    %rax,%r9                                 #! PC = 0x93824992237304 *)
adds carry r9 r9 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r9 0 (2**64) && true;
assume r9 = 0 && true;
(* adc    %rdx,%r10                                #! PC = 0x93824992237307 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992237310 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x93824992237314 *)
mov r9 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd8d8; Value = 0x0000000000000000; PC = 0x93824992237317 *)
mov rax L0x7fffffffd8d8;
(* mulq   0x28(%rbx)                               #! EA = L0x555555757038; PC = 0x93824992237321 *)
mull rdx rax rax L0x555555757038;
(* add    %rax,%r10                                #! PC = 0x93824992237325 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x93824992237328 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992237331 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd8e0; Value = 0x0000000000000000; PC = 0x93824992237335 *)
mov rax L0x7fffffffd8e0;
(* mulq   0x20(%rbx)                               #! EA = L0x555555757030; PC = 0x93824992237340 *)
mull rdx rax rax L0x555555757030;
(* add    %rax,%r10                                #! PC = 0x93824992237344 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x93824992237347 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992237350 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd8e8; Value = 0x0000000000000000; PC = 0x93824992237354 *)
mov rax L0x7fffffffd8e8;
(* mulq   0x18(%rbx)                               #! EA = L0x555555757028; PC = 0x93824992237359 *)
mull rdx rax rax L0x555555757028;
(* add    %rax,%r10                                #! PC = 0x93824992237363 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x93824992237366 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992237369 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd8f0; Value = 0x3d8e50c77fcde100; PC = 0x93824992237373 *)
mov rax L0x7fffffffd8f0;
(* mulq   0x10(%rbx)                               #! EA = L0x555555757020; PC = 0x93824992237378 *)
mull rdx rax rax L0x555555757020;
(* add    %rax,%r10                                #! PC = 0x93824992237382 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x93824992237385 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992237388 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd8f8; Value = 0x2001f706435dc74b; PC = 0x93824992237392 *)
mov rax L0x7fffffffd8f8;
(* mulq   0x8(%rbx)                                #! EA = L0x555555757018; PC = 0x93824992237397 *)
mull rdx rax rax L0x555555757018;
(* add    %rax,%r10                                #! PC = 0x93824992237401 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x93824992237404 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992237407 *)
adc r9 r9 0x0@uint64 carry;
(* add    0x28(%rsp),%r10                          #! EA = L0x7fffffffd900; Value = 0x96a782aec1b47a7c; PC = 0x93824992237411 *)
adds carry r10 r10 L0x7fffffffd900;
(* adc    $0x0,%r8                                 #! PC = 0x93824992237416 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992237420 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x93824992237424 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x93824992237427 *)
mull rdx rax rax rcx;
(* mov    %rax,0x28(%rsp)                          #! EA = L0x7fffffffd900; PC = 0x93824992237430 *)
mov L0x7fffffffd900 rax;
(* mulq   (%rbx)                                   #! EA = L0x555555757010; PC = 0x93824992237435 *)
mull rdx rax rax L0x555555757010;
(* add    %rax,%r10                                #! PC = 0x93824992237438 *)
adds carry r10 r10 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r10 0 (2**64) && true;
assume r10 = 0 && true;
(* adc    %rdx,%r8                                 #! PC = 0x93824992237441 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992237444 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x93824992237448 *)
mov r10 0@uint64;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd8e0; Value = 0x0000000000000000; PC = 0x93824992237451 *)
mov rax L0x7fffffffd8e0;
(* mulq   0x28(%rbx)                               #! EA = L0x555555757038; PC = 0x93824992237456 *)
mull rdx rax rax L0x555555757038;
(* add    %rax,%r8                                 #! PC = 0x93824992237460 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x93824992237463 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992237466 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd8e8; Value = 0x0000000000000000; PC = 0x93824992237470 *)
mov rax L0x7fffffffd8e8;
(* mulq   0x20(%rbx)                               #! EA = L0x555555757030; PC = 0x93824992237475 *)
mull rdx rax rax L0x555555757030;
(* add    %rax,%r8                                 #! PC = 0x93824992237479 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x93824992237482 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992237485 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd8f0; Value = 0x3d8e50c77fcde100; PC = 0x93824992237489 *)
mov rax L0x7fffffffd8f0;
(* mulq   0x18(%rbx)                               #! EA = L0x555555757028; PC = 0x93824992237494 *)
mull rdx rax rax L0x555555757028;
(* add    %rax,%r8                                 #! PC = 0x93824992237498 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x93824992237501 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992237504 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd8f8; Value = 0x2001f706435dc74b; PC = 0x93824992237508 *)
mov rax L0x7fffffffd8f8;
(* mulq   0x10(%rbx)                               #! EA = L0x555555757020; PC = 0x93824992237513 *)
mull rdx rax rax L0x555555757020;
(* add    %rax,%r8                                 #! PC = 0x93824992237517 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x93824992237520 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992237523 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd900; Value = 0x5c3893b595ff1b8c; PC = 0x93824992237527 *)
mov rax L0x7fffffffd900;
(* mulq   0x8(%rbx)                                #! EA = L0x555555757018; PC = 0x93824992237532 *)
mull rdx rax rax L0x555555757018;
(* add    %rax,%r8                                 #! PC = 0x93824992237536 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x93824992237539 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992237542 *)
adc r10 r10 0x0@uint64 carry;
(* add    0x30(%rsp),%r8                           #! EA = L0x7fffffffd908; Value = 0xb631b4f56c659a04; PC = 0x93824992237546 *)
adds carry r8 r8 L0x7fffffffd908;
(* adc    $0x0,%r9                                 #! PC = 0x93824992237551 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992237555 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r8,0x30(%rsp)                           #! EA = L0x7fffffffd908; PC = 0x93824992237559 *)
mov L0x7fffffffd908 r8;
(* xor    %r8,%r8                                  #! PC = 0x93824992237564 *)
mov r8 0@uint64;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd8e8; Value = 0x0000000000000000; PC = 0x93824992237567 *)
mov rax L0x7fffffffd8e8;
(* mulq   0x28(%rbx)                               #! EA = L0x555555757038; PC = 0x93824992237572 *)
mull rdx rax rax L0x555555757038;
(* add    %rax,%r9                                 #! PC = 0x93824992237576 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x93824992237579 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992237582 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd8f0; Value = 0x3d8e50c77fcde100; PC = 0x93824992237586 *)
mov rax L0x7fffffffd8f0;
(* mulq   0x20(%rbx)                               #! EA = L0x555555757030; PC = 0x93824992237591 *)
mull rdx rax rax L0x555555757030;
(* add    %rax,%r9                                 #! PC = 0x93824992237595 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x93824992237598 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992237601 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd8f8; Value = 0x2001f706435dc74b; PC = 0x93824992237605 *)
mov rax L0x7fffffffd8f8;
(* mulq   0x18(%rbx)                               #! EA = L0x555555757028; PC = 0x93824992237610 *)
mull rdx rax rax L0x555555757028;
(* add    %rax,%r9                                 #! PC = 0x93824992237614 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x93824992237617 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992237620 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd900; Value = 0x5c3893b595ff1b8c; PC = 0x93824992237624 *)
mov rax L0x7fffffffd900;
(* mulq   0x10(%rbx)                               #! EA = L0x555555757020; PC = 0x93824992237629 *)
mull rdx rax rax L0x555555757020;
(* add    %rax,%r9                                 #! PC = 0x93824992237633 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x93824992237636 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992237639 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x38(%rsp),%r9                           #! EA = L0x7fffffffd910; Value = 0x04d9c3b23f2f41dc; PC = 0x93824992237643 *)
adds carry r9 r9 L0x7fffffffd910;
(* adc    $0x0,%r10                                #! PC = 0x93824992237648 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992237652 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,0x38(%rsp)                           #! EA = L0x7fffffffd910; PC = 0x93824992237656 *)
mov L0x7fffffffd910 r9;
(* xor    %r9,%r9                                  #! PC = 0x93824992237661 *)
mov r9 0@uint64;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd8f0; Value = 0x3d8e50c77fcde100; PC = 0x93824992237664 *)
mov rax L0x7fffffffd8f0;
(* mulq   0x28(%rbx)                               #! EA = L0x555555757038; PC = 0x93824992237669 *)
mull rdx rax rax L0x555555757038;
(* add    %rax,%r10                                #! PC = 0x93824992237673 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x93824992237676 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992237679 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd8f8; Value = 0x2001f706435dc74b; PC = 0x93824992237683 *)
mov rax L0x7fffffffd8f8;
(* mulq   0x20(%rbx)                               #! EA = L0x555555757030; PC = 0x93824992237688 *)
mull rdx rax rax L0x555555757030;
(* add    %rax,%r10                                #! PC = 0x93824992237692 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x93824992237695 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992237698 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd900; Value = 0x5c3893b595ff1b8c; PC = 0x93824992237702 *)
mov rax L0x7fffffffd900;
(* mulq   0x18(%rbx)                               #! EA = L0x555555757028; PC = 0x93824992237707 *)
mull rdx rax rax L0x555555757028;
(* add    %rax,%r10                                #! PC = 0x93824992237711 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x93824992237714 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992237717 *)
adc r9 r9 0x0@uint64 carry;
(* add    0x40(%rsp),%r10                          #! EA = L0x7fffffffd918; Value = 0xeefa21afffee1ffe; PC = 0x93824992237721 *)
adds carry r10 r10 L0x7fffffffd918;
(* adc    $0x0,%r8                                 #! PC = 0x93824992237726 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992237730 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,0x40(%rsp)                          #! EA = L0x7fffffffd918; PC = 0x93824992237734 *)
mov L0x7fffffffd918 r10;
(* xor    %r10,%r10                                #! PC = 0x93824992237739 *)
mov r10 0@uint64;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd8f8; Value = 0x2001f706435dc74b; PC = 0x93824992237742 *)
mov rax L0x7fffffffd8f8;
(* mulq   0x28(%rbx)                               #! EA = L0x555555757038; PC = 0x93824992237747 *)
mull rdx rax rax L0x555555757038;
(* add    %rax,%r8                                 #! PC = 0x93824992237751 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x93824992237754 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992237757 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd900; Value = 0x5c3893b595ff1b8c; PC = 0x93824992237761 *)
mov rax L0x7fffffffd900;
(* mulq   0x20(%rbx)                               #! EA = L0x555555757030; PC = 0x93824992237766 *)
mull rdx rax rax L0x555555757030;
(* add    %rax,%r8                                 #! PC = 0x93824992237770 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x93824992237773 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992237776 *)
adc r10 r10 0x0@uint64 carry;
(* add    0x48(%rsp),%r8                           #! EA = L0x7fffffffd920; Value = 0xe6e08bef750f0ddd; PC = 0x93824992237780 *)
adds carry r8 r8 L0x7fffffffd920;
(* adc    $0x0,%r9                                 #! PC = 0x93824992237785 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992237789 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r8,0x48(%rsp)                           #! EA = L0x7fffffffd920; PC = 0x93824992237793 *)
mov L0x7fffffffd920 r8;
(* xor    %r8,%r8                                  #! PC = 0x93824992237798 *)
mov r8 0@uint64;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd900; Value = 0x5c3893b595ff1b8c; PC = 0x93824992237801 *)
mov rax L0x7fffffffd900;
(* mulq   0x28(%rbx)                               #! EA = L0x555555757038; PC = 0x93824992237806 *)
mull rdx rax rax L0x555555757038;
(* add    %rax,%r9                                 #! PC = 0x93824992237810 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x93824992237813 *)
adcs carry r10 r10 rdx carry;
(* NOTE: cannot carry *)
assert true && carry = 0@1;
assume carry = 0 && true;
(* adc    $0x0,%r8                                 #! PC = 0x93824992237816 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x50(%rsp),%r9                           #! EA = L0x7fffffffd928; Value = 0x0027000002137fde; PC = 0x93824992237820 *)
adds carry r9 r9 L0x7fffffffd928;
(* adc    $0x0,%r10                                #! PC = 0x93824992237825 *)
adcs carry r10 r10 0x0@uint64 carry;
(* NOTE: cannot carry *)
assert true && carry = 0@1;
assume carry = 0 && true;
(* adc    $0x0,%r8                                 #! PC = 0x93824992237829 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,0x50(%rsp)                           #! EA = L0x7fffffffd928; PC = 0x93824992237833 *)
mov L0x7fffffffd928 r9;
(* xor    %r9,%r9                                  #! PC = 0x93824992237838 *)
mov r9 0@uint64;
(* add    0x58(%rsp),%r10                          #! EA = L0x7fffffffd930; Value = 0x0000000000000000; PC = 0x93824992237841 *)
adds carry r10 r10 L0x7fffffffd930;
(* NOTE: cannot carry *)
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r10,0x58(%rsp)                          #! EA = L0x7fffffffd930; PC = 0x93824992237846 *)
mov L0x7fffffffd930 r10;
(* mov    0x30(%rsp),%r11                          #! EA = L0x7fffffffd908; Value = 0x39f8e38e77ee7d49; PC = 0x93824992237851 *)
mov r11 L0x7fffffffd908;
(* mov    0x38(%rsp),%r12                          #! EA = L0x7fffffffd910; Value = 0x867580890c7d2928; PC = 0x93824992237856 *)
mov r12 L0x7fffffffd910;
(* mov    0x40(%rsp),%r13                          #! EA = L0x7fffffffd918; Value = 0x7c6029a03f723470; PC = 0x93824992237861 *)
mov r13 L0x7fffffffd918;
(* mov    0x48(%rsp),%r14                          #! EA = L0x7fffffffd920; Value = 0x5e041f5f42a3b0d4; PC = 0x93824992237866 *)
mov r14 L0x7fffffffd920;
(* mov    0x50(%rsp),%r15                          #! EA = L0x7fffffffd928; Value = 0x01ec6d730e531aef; PC = 0x93824992237871 *)
mov r15 L0x7fffffffd928;
(* mov    0x58(%rsp),%rcx                          #! EA = L0x7fffffffd930; Value = 0x0cf828acf58e576c; PC = 0x93824992237876 *)
mov rcx L0x7fffffffd930;
(* sub    0x2016d0(%rip),%r11        #! EA = L0x555555757010; Value = 0x004e000000000013; PC = 0x93824992237881 *)
subb carry r11 r11 L0x555555757010;
(* sbb    0x2016d1(%rip),%r12        #! EA = L0x555555757018; Value = 0x09480097801382be; PC = 0x93824992237888 *)
sbbs carry r12 r12 L0x555555757018 carry;
(* sbb    0x2016d2(%rip),%r13        #! EA = L0x555555757020; Value = 0xa6e58dbe43002a06; PC = 0x93824992237895 *)
sbbs carry r13 r13 L0x555555757020 carry;
(* sbb    0x2016d3(%rip),%r14        #! EA = L0x555555757028; Value = 0x6f82cefbe47879bb; PC = 0x93824992237902 *)
sbbs carry r14 r14 L0x555555757028 carry;
(* sbb    0x2016d4(%rip),%r15        #! EA = L0x555555757030; Value = 0x2d996cc179c6d166; PC = 0x93824992237909 *)
sbbs carry r15 r15 L0x555555757030 carry;
(* sbb    0x2016d5(%rip),%rcx        #! EA = L0x555555757038; Value = 0x24009015183f9489; PC = 0x93824992237916 *)
sbbs carry rcx rcx L0x555555757038 carry;
(* cmovb  0x30(%rsp),%r11                          #! EA = L0x7fffffffd908; Value = 0x39f8e38e77ee7d49; PC = 0x93824992237923 *)
cmov r11 carry L0x7fffffffd908 r11;
(* cmovb  0x38(%rsp),%r12                          #! EA = L0x7fffffffd910; Value = 0x867580890c7d2928; PC = 0x93824992237929 *)
cmov r12 carry L0x7fffffffd910 r12;
(* cmovb  0x40(%rsp),%r13                          #! EA = L0x7fffffffd918; Value = 0x7c6029a03f723470; PC = 0x93824992237935 *)
cmov r13 carry L0x7fffffffd918 r13;
(* cmovb  0x48(%rsp),%r14                          #! EA = L0x7fffffffd920; Value = 0x5e041f5f42a3b0d4; PC = 0x93824992237941 *)
cmov r14 carry L0x7fffffffd920 r14;
(* cmovb  0x50(%rsp),%r15                          #! EA = L0x7fffffffd928; Value = 0x01ec6d730e531aef; PC = 0x93824992237947 *)
cmov r15 carry L0x7fffffffd928 r15;
(* cmovb  0x58(%rsp),%rcx                          #! EA = L0x7fffffffd930; Value = 0x0cf828acf58e576c; PC = 0x93824992237953 *)
cmov rcx carry L0x7fffffffd930 rcx;
(* mov    %r11,(%rdi)                              #! EA = L0x7fffffffd9d0; PC = 0x93824992237959 *)
mov L0x7fffffffd9d0 r11;
(* mov    %r12,0x8(%rdi)                           #! EA = L0x7fffffffd9d8; PC = 0x93824992237962 *)
mov L0x7fffffffd9d8 r12;
(* mov    %r13,0x10(%rdi)                          #! EA = L0x7fffffffd9e0; PC = 0x93824992237966 *)
mov L0x7fffffffd9e0 r13;
(* mov    %r14,0x18(%rdi)                          #! EA = L0x7fffffffd9e8; PC = 0x93824992237970 *)
mov L0x7fffffffd9e8 r14;
(* mov    %r15,0x20(%rdi)                          #! EA = L0x7fffffffd9f0; PC = 0x93824992237974 *)
mov L0x7fffffffd9f0 r15;
(* mov    %rcx,0x28(%rdi)                          #! EA = L0x7fffffffd9f8; PC = 0x93824992237978 *)
mov L0x7fffffffd9f8 rcx;
(* #add    $0x60,%rsp                               #! PC = 0x93824992237982 *)
#add    $0x60,%rsp                               #! 0x93824992237982 = 0x93824992237982;
(* #pop    %rbp                                     #! PC = 0x93824992237986 *)
#pop    %%rbp                                     #! 0x93824992237986 = 0x93824992237986;
(* #pop    %rbx                                     #! PC = 0x93824992237987 *)
#pop    %%rbx                                     #! 0x93824992237987 = 0x93824992237987;
(* #pop    %r15                                     #! PC = 0x93824992237988 *)
#pop    %%r15                                     #! 0x93824992237988 = 0x93824992237988;
(* #pop    %r14                                     #! PC = 0x93824992237990 *)
#pop    %%r14                                     #! 0x93824992237990 = 0x93824992237990;
(* #pop    %r13                                     #! PC = 0x93824992237992 *)
#pop    %%r13                                     #! 0x93824992237992 = 0x93824992237992;
(* #pop    %r12                                     #! PC = 0x93824992237994 *)
#pop    %%r12                                     #! 0x93824992237994 = 0x93824992237994;
(* #retq                                           #! PC = 0x93824992237996 *)
#retq                                           #! 0x93824992237996 = 0x93824992237996;

mov r0 L0x7fffffffd9d0;
mov r1 L0x7fffffffd9d8;
mov r2 L0x7fffffffd9e0;
mov r3 L0x7fffffffd9e8;
mov r4 L0x7fffffffd9f0;
mov r5 L0x7fffffffd9f8;
{
  eqmod (limbs 64 [ 0,  0,  0,  0 , 0,  0,
                   r0, r1, r2, r3, r4, r5])
        (limbs 64 [a0, a1, a2, a3, a4, a5] *
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
