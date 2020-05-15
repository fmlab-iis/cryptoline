proc main (uint64 c0_0, uint64 c0_1, uint64 c0_2, uint64 c0_3, uint64 c0_4,  uint64 c0_5,
           uint64 c0_6, uint64 c0_7, uint64 c0_8, uint64 c0_9, uint64 c0_10, uint64 c0_11,
           uint64 c1_0, uint64 c1_1, uint64 c1_2, uint64 c1_3, uint64 c1_4,  uint64 c1_5,
           uint64 c1_6, uint64 c1_7, uint64 c1_8, uint64 c1_9, uint64 c1_10, uint64 c1_11) =
{
  true
&&
  and [
  limbs 64 [c0_0, c0_1, c0_2, c0_3,  c0_4,  c0_5,
              c0_6, c0_7, c0_8, c0_9, c0_10, c0_11] <
    sq (limbs 64 [0xb9feffffffffaaab@64, 0x1eabfffeb153ffff@64,
                0x6730d2a0f6b0f624@64, 0x64774b84f38512bf@64,
                0x4b1ba7b6434bacd7@64, 0x1a0111ea397fe69a@64,
                0@64, 0@64, 0@64, 0@64, 0@64, 0@64]),
  limbs 64 [c1_0, c1_1, c1_2, c1_3,  c1_4,  c1_5,
              c1_6, c1_7, c1_8, c1_9, c1_10, c1_11] <
    sq (limbs 64 [0xb9feffffffffaaab@64, 0x1eabfffeb153ffff@64,
                0x6730d2a0f6b0f624@64, 0x64774b84f38512bf@64,
                0x4b1ba7b6434bacd7@64, 0x1a0111ea397fe69a@64,
                0@64, 0@64, 0@64, 0@64, 0@64, 0@64])
                ]
}
mov L0x7fffffffd0d0 c0_0;
mov L0x7fffffffd0d8 c0_1;
mov L0x7fffffffd0e0 c0_2;
mov L0x7fffffffd0e8 c0_3;
mov L0x7fffffffd0f0 c0_4;
mov L0x7fffffffd0f8 c0_5;
mov L0x7fffffffd100 c0_6;
mov L0x7fffffffd108 c0_7;
mov L0x7fffffffd110 c0_8;
mov L0x7fffffffd118 c0_9;
mov L0x7fffffffd120 c0_10;
mov L0x7fffffffd128 c0_11;

mov L0x7fffffffd1e0 c1_0;
mov L0x7fffffffd1e8 c1_1;
mov L0x7fffffffd1f0 c1_2;
mov L0x7fffffffd1f8 c1_3;
mov L0x7fffffffd200 c1_4;
mov L0x7fffffffd208 c1_5;
mov L0x7fffffffd210 c1_6;
mov L0x7fffffffd218 c1_7;
mov L0x7fffffffd220 c1_8;
mov L0x7fffffffd228 c1_9;
mov L0x7fffffffd230 c1_10;
mov L0x7fffffffd238 c1_11;

mov L0x46c0d0 0xb9feffffffffaaab@uint64;
mov L0x46c0d8 0x1eabfffeb153ffff@uint64;
mov L0x46c0e0 0x6730d2a0f6b0f624@uint64;
mov L0x46c0e8 0x64774b84f38512bf@uint64;
mov L0x46c0f0 0x4b1ba7b6434bacd7@uint64;
mov L0x46c0f8 0x1a0111ea397fe69a@uint64;

(* fp2_rdcn_low: *)
/* fp2_rdcn_low:; */
(* push   %rbp                                     #! PC = 0x4284992 *)
/* push rbp; */
(* push   %rbx                                     #! PC = 0x4284993 *)
/* push rbx; */
(* mov    %rsi,%rbp                                #! PC = 0x4284994 *)
/* mov rbp rsi; */
(* mov    %rdi,%rbx                                #! PC = 0x4284997 *)
/* mov rbx rdi; */
(* sub    $0x8,%rsp                                #! PC = 0x4285000 *)
/* subb carry rsp rsp 0x8@uint64; */
(* #callq  0x419215 <fp_rdcn_low>                  #! PC = 0x4285004 *)
#callq  0x419215 <fp_rdcn_low>                  #! 0x4285004 = 0x4285004;
(* push   %r12                                     #! PC = 0x4297237 *)
/* push r12; */
(* push   %r13                                     #! PC = 0x4297239 *)
/* push r13; */
(* push   %r14                                     #! PC = 0x4297241 *)
/* push r14; */
(* push   %r15                                     #! PC = 0x4297243 *)
/* push r15; */
(* push   %rbx                                     #! PC = 0x4297245 *)
/* push rbx; */
(* push   %rbp                                     #! PC = 0x4297246 *)
/* push rbp; */
(* lea    0x52eaa(%rip),%rbx        # 0x46c0d0     #! PC = 0x4297247 *)
/* lea    %%EA,%%rbx        # 0x46c0d0     #! 0x4297247 = 0x4297247; */
(* xor    %r9,%r9                                  #! PC = 0x4297254 *)
mov r9 0@uint64;
(* movabs $0x89f3fffcfffcfffd,%rcx                 #! PC = 0x4297257 *)
mov rcx 0x89f3fffcfffcfffd@uint64;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffd0d0; Value = 0xaed251f6ee29a7f5; PC = 0x4297267 *)
mov r8 L0x7fffffffd0d0;
(* mov    %r8,%rax                                 #! PC = 0x4297270 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x4297273 *)
mull rdx rax rax rcx;
(* mov    %rax,(%rsi)                              #! EA = L0x7fffffffd0d0; PC = 0x4297276 *)
mov L0x7fffffffd0d0 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4297279 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r8                                 #! PC = 0x4297282 *)
adds carry r8 r8 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r8 0 (2**64) && true;
assume r8 + 0 = 0 && true;
(* adc    %rdx,%r9                                 #! PC = 0x4297285 *)
adc r9 r9 rdx carry;
(* xor    %r10,%r10                                #! PC = 0x4297288 *)
mov r10 0@uint64;
(* xor    %r8,%r8                                  #! PC = 0x4297291 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd0d0; Value = 0x65ab47bf3da40821; PC = 0x4297294 *)
mov rax L0x7fffffffd0d0;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297297 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r9                                 #! PC = 0x4297301 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297304 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297307 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x8(%rsi),%r9                            #! EA = L0x7fffffffd0d8; Value = 0x96f38ca710f80ec9; PC = 0x4297311 *)
adds carry r9 r9 L0x7fffffffd0d8;
(* adc    $0x0,%r10                                #! PC = 0x4297315 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297319 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,%rax                                 #! PC = 0x4297323 *)
mov rax r9;
(* mul    %rcx                                     #! PC = 0x4297326 *)
mull rdx rax rax rcx;
(* mov    %rax,0x8(%rsi)                           #! EA = L0x7fffffffd0d8; PC = 0x4297329 *)
mov L0x7fffffffd0d8 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4297333 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r9                                 #! PC = 0x4297336 *)
adds carry r9 r9 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r9 0 (2**64) && true;
assume r9 = 0 && true;
(* adc    %rdx,%r10                                #! PC = 0x4297339 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297342 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4297346 *)
mov r9 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd0d0; Value = 0x65ab47bf3da40821; PC = 0x4297349 *)
mov rax L0x7fffffffd0d0;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297352 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r10                                #! PC = 0x4297356 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297359 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297362 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd0d8; Value = 0xf81ce4a8924f80e5; PC = 0x4297366 *)
mov rax L0x7fffffffd0d8;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297370 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r10                                #! PC = 0x4297374 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297377 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297380 *)
adc r9 r9 0x0@uint64 carry;
(* add    0x10(%rsi),%r10                          #! EA = L0x7fffffffd0e0; Value = 0x0680000da19cb54a; PC = 0x4297384 *)
adds carry r10 r10 L0x7fffffffd0e0;
(* adc    $0x0,%r8                                 #! PC = 0x4297388 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297392 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x4297396 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x4297399 *)
mull rdx rax rax rcx;
(* mov    %rax,0x10(%rsi)                          #! EA = L0x7fffffffd0e0; PC = 0x4297402 *)
mov L0x7fffffffd0e0 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4297406 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r10                                #! PC = 0x4297409 *)
adds carry r10 r10 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r10 0 (2**64) && true;
assume r10 = 0 && true;
(* adc    %rdx,%r8                                 #! PC = 0x4297412 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297415 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4297419 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd0d0; Value = 0x65ab47bf3da40821; PC = 0x4297422 *)
mov rax L0x7fffffffd0d0;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297425 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r8                                 #! PC = 0x4297429 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297432 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297435 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd0d8; Value = 0xf81ce4a8924f80e5; PC = 0x4297439 *)
mov rax L0x7fffffffd0d8;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297443 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r8                                 #! PC = 0x4297447 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297450 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297453 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd0e0; Value = 0xffeb453dc132a18e; PC = 0x4297457 *)
mov rax L0x7fffffffd0e0;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297461 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r8                                 #! PC = 0x4297465 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297468 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297471 *)
adc r10 r10 0x0@uint64 carry;
(* add    0x18(%rsi),%r8                           #! EA = L0x7fffffffd0e8; Value = 0x070228da11fd35d5; PC = 0x4297475 *)
adds carry r8 r8 L0x7fffffffd0e8;
(* adc    $0x0,%r9                                 #! PC = 0x4297479 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4297483 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r8,%rax                                 #! PC = 0x4297487 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x4297490 *)
mull rdx rax rax rcx;
(* mov    %rax,0x18(%rsi)                          #! EA = L0x7fffffffd0e8; PC = 0x4297493 *)
mov L0x7fffffffd0e8 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4297497 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r8                                 #! PC = 0x4297500 *)
adds carry r8 r8 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r8 0 (2**64) && true;
assume r8 = 0 && true;
(* adc    %rdx,%r9                                 #! PC = 0x4297503 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297506 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4297510 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd0d0; Value = 0x65ab47bf3da40821; PC = 0x4297513 *)
mov rax L0x7fffffffd0d0;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297516 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r9                                 #! PC = 0x4297520 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297523 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297526 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd0d8; Value = 0xf81ce4a8924f80e5; PC = 0x4297530 *)
mov rax L0x7fffffffd0d8;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297534 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r9                                 #! PC = 0x4297538 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297541 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297544 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd0e0; Value = 0xffeb453dc132a18e; PC = 0x4297548 *)
mov rax L0x7fffffffd0e0;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297552 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r9                                 #! PC = 0x4297556 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297559 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297562 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd0e8; Value = 0xb183b92718026004; PC = 0x4297566 *)
mov rax L0x7fffffffd0e8;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297570 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r9                                 #! PC = 0x4297574 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297577 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297580 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x20(%rsi),%r9                           #! EA = L0x7fffffffd0f0; Value = 0xf89eee5499fceee2; PC = 0x4297584 *)
adds carry r9 r9 L0x7fffffffd0f0;
(* adc    $0x0,%r10                                #! PC = 0x4297588 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297592 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,%rax                                 #! PC = 0x4297596 *)
mov rax r9;
(* mul    %rcx                                     #! PC = 0x4297599 *)
mull rdx rax rax rcx;
(* mov    %rax,0x20(%rsi)                          #! EA = L0x7fffffffd0f0; PC = 0x4297602 *)
mov L0x7fffffffd0f0 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4297606 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r9                                 #! PC = 0x4297609 *)
adds carry r9 r9 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r9 0 (2**64) && true;
assume r9 = 0 && true;
(* adc    %rdx,%r10                                #! PC = 0x4297612 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297615 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4297619 *)
mov r9 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd0d0; Value = 0x65ab47bf3da40821; PC = 0x4297622 *)
mov rax L0x7fffffffd0d0;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4297625 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r10                                #! PC = 0x4297629 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297632 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297635 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd0d8; Value = 0xf81ce4a8924f80e5; PC = 0x4297639 *)
mov rax L0x7fffffffd0d8;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297643 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r10                                #! PC = 0x4297647 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297650 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297653 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd0e0; Value = 0xffeb453dc132a18e; PC = 0x4297657 *)
mov rax L0x7fffffffd0e0;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297661 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r10                                #! PC = 0x4297665 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297668 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297671 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd0e8; Value = 0xb183b92718026004; PC = 0x4297675 *)
mov rax L0x7fffffffd0e8;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297679 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r10                                #! PC = 0x4297683 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297686 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297689 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd0f0; Value = 0x926af0fac0de14aa; PC = 0x4297693 *)
mov rax L0x7fffffffd0f0;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297697 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r10                                #! PC = 0x4297701 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297704 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297707 *)
adc r9 r9 0x0@uint64 carry;
(* add    0x28(%rsi),%r10                          #! EA = L0x7fffffffd0f8; Value = 0xa024265a0dd9dd03; PC = 0x4297711 *)
adds carry r10 r10 L0x7fffffffd0f8;
(* adc    $0x0,%r8                                 #! PC = 0x4297715 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297719 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x4297723 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x4297726 *)
mull rdx rax rax rcx;
(* mov    %rax,0x28(%rsi)                          #! EA = L0x7fffffffd0f8; PC = 0x4297729 *)
mov L0x7fffffffd0f8 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4297733 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r10                                #! PC = 0x4297736 *)
adds carry r10 r10 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r10 0 (2**64) && true;
assume r10 = 0 && true;
(* adc    %rdx,%r8                                 #! PC = 0x4297739 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297742 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4297746 *)
mov r10 0@uint64;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd0d8; Value = 0xf81ce4a8924f80e5; PC = 0x4297749 *)
mov rax L0x7fffffffd0d8;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4297753 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r8                                 #! PC = 0x4297757 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297760 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297763 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd0e0; Value = 0xffeb453dc132a18e; PC = 0x4297767 *)
mov rax L0x7fffffffd0e0;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297771 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r8                                 #! PC = 0x4297775 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297778 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297781 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd0e8; Value = 0xb183b92718026004; PC = 0x4297785 *)
mov rax L0x7fffffffd0e8;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297789 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r8                                 #! PC = 0x4297793 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297796 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297799 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd0f0; Value = 0x926af0fac0de14aa; PC = 0x4297803 *)
mov rax L0x7fffffffd0f0;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297807 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r8                                 #! PC = 0x4297811 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297814 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297817 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd0f8; Value = 0x0653e2b0c5549b75; PC = 0x4297821 *)
mov rax L0x7fffffffd0f8;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297825 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r8                                 #! PC = 0x4297829 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297832 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297835 *)
adc r10 r10 0x0@uint64 carry;
(* add    0x30(%rsi),%r8                           #! EA = L0x7fffffffd100; Value = 0xfbc31445e2c5fe73; PC = 0x4297839 *)
adds carry r8 r8 L0x7fffffffd100;
(* adc    $0x0,%r9                                 #! PC = 0x4297843 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4297847 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r8,0x30(%rsi)                           #! EA = L0x7fffffffd100; PC = 0x4297851 *)
mov L0x7fffffffd100 r8;
(* xor    %r8,%r8                                  #! PC = 0x4297855 *)
mov r8 0@uint64;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd0e0; Value = 0xffeb453dc132a18e; PC = 0x4297858 *)
mov rax L0x7fffffffd0e0;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4297862 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r9                                 #! PC = 0x4297866 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297869 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297872 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd0e8; Value = 0xb183b92718026004; PC = 0x4297876 *)
mov rax L0x7fffffffd0e8;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297880 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r9                                 #! PC = 0x4297884 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297887 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297890 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd0f0; Value = 0x926af0fac0de14aa; PC = 0x4297894 *)
mov rax L0x7fffffffd0f0;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297898 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r9                                 #! PC = 0x4297902 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297905 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297908 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd0f8; Value = 0x0653e2b0c5549b75; PC = 0x4297912 *)
mov rax L0x7fffffffd0f8;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297916 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r9                                 #! PC = 0x4297920 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297923 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297926 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x38(%rsi),%r9                           #! EA = L0x7fffffffd108; Value = 0xa0d4fa52ed929d33; PC = 0x4297930 *)
adds carry r9 r9 L0x7fffffffd108;
(* adc    $0x0,%r10                                #! PC = 0x4297934 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297938 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,0x38(%rsi)                           #! EA = L0x7fffffffd108; PC = 0x4297942 *)
mov L0x7fffffffd108 r9;
(* xor    %r9,%r9                                  #! PC = 0x4297946 *)
mov r9 0@uint64;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd0e8; Value = 0xb183b92718026004; PC = 0x4297949 *)
mov rax L0x7fffffffd0e8;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4297953 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r10                                #! PC = 0x4297957 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297960 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297963 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd0f0; Value = 0x926af0fac0de14aa; PC = 0x4297967 *)
mov rax L0x7fffffffd0f0;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297971 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r10                                #! PC = 0x4297975 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297978 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297981 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd0f8; Value = 0x0653e2b0c5549b75; PC = 0x4297985 *)
mov rax L0x7fffffffd0f8;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297989 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r10                                #! PC = 0x4297993 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297996 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297999 *)
adc r9 r9 0x0@uint64 carry;
(* add    0x40(%rsi),%r10                          #! EA = L0x7fffffffd110; Value = 0x6787af563584b43a; PC = 0x4298003 *)
adds carry r10 r10 L0x7fffffffd110;
(* adc    $0x0,%r8                                 #! PC = 0x4298007 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4298011 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,0x40(%rsi)                          #! EA = L0x7fffffffd110; PC = 0x4298015 *)
mov L0x7fffffffd110 r10;
(* xor    %r10,%r10                                #! PC = 0x4298019 *)
mov r10 0@uint64;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd0f0; Value = 0x926af0fac0de14aa; PC = 0x4298022 *)
mov rax L0x7fffffffd0f0;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4298026 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r8                                 #! PC = 0x4298030 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4298033 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4298036 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd0f8; Value = 0x0653e2b0c5549b75; PC = 0x4298040 *)
mov rax L0x7fffffffd0f8;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4298044 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r8                                 #! PC = 0x4298048 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4298051 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4298054 *)
adc r10 r10 0x0@uint64 carry;
(* add    0x48(%rsi),%r8                           #! EA = L0x7fffffffd118; Value = 0x5b732a5dbc5764f1; PC = 0x4298058 *)
adds carry r8 r8 L0x7fffffffd118;
(* adc    $0x0,%r9                                 #! PC = 0x4298062 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4298066 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r8,0x48(%rsi)                           #! EA = L0x7fffffffd118; PC = 0x4298070 *)
mov L0x7fffffffd118 r8;
(* xor    %r8,%r8                                  #! PC = 0x4298074 *)
mov r8 0@uint64;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd0f8; Value = 0x0653e2b0c5549b75; PC = 0x4298077 *)
mov rax L0x7fffffffd0f8;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4298081 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r9                                 #! PC = 0x4298085 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4298088 *)
adcs carry r10 r10 rdx carry;
(* NOTE: cannot carry *)
assert true && carry = 0@1;
assume carry = 0 && true;
(* adc    $0x0,%r8                                 #! PC = 0x4298091 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x50(%rsi),%r9                           #! EA = L0x7fffffffd120; Value = 0x0d20b231f03b75d0; PC = 0x4298095 *)
adds carry r9 r9 L0x7fffffffd120;
(* adc    $0x0,%r10                                #! PC = 0x4298099 *)
adcs carry r10 r10 0x0@uint64 carry;
(* NOTE: cannot carry *)
assert true && carry = 0@1;
assume carry = 0 && true;
(* adc    $0x0,%r8                                 #! PC = 0x4298103 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,0x50(%rsi)                           #! EA = L0x7fffffffd120; PC = 0x4298107 *)
mov L0x7fffffffd120 r9;
(* xor    %r9,%r9                                  #! PC = 0x4298111 *)
mov r9 0@uint64;
(* add    0x58(%rsi),%r10                          #! EA = L0x7fffffffd128; Value = 0x06f3fc4d32efcf7a; PC = 0x4298114 *)
adds carry r10 r10 L0x7fffffffd128;
(* NOTE: cannot carry *)
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r10,0x58(%rsi)                          #! EA = L0x7fffffffd128; PC = 0x4298118 *)
mov L0x7fffffffd128 r10;
(* mov    0x30(%rsi),%r11                          #! EA = L0x7fffffffd100; Value = 0xf2e9f7ea77dbe017; PC = 0x4298122 *)
mov r11 L0x7fffffffd100;
(* mov    0x38(%rsi),%r12                          #! EA = L0x7fffffffd108; Value = 0x9cd11ccd4c917957; PC = 0x4298126 *)
mov r12 L0x7fffffffd108;
(* mov    0x40(%rsi),%r13                          #! EA = L0x7fffffffd110; Value = 0x39b24139696d2477; PC = 0x4298130 *)
mov r13 L0x7fffffffd110;
(* mov    0x48(%rsi),%r14                          #! EA = L0x7fffffffd118; Value = 0x0a39a84d2763dc17; PC = 0x4298134 *)
mov r14 L0x7fffffffd118;
(* mov    0x50(%rsi),%r15                          #! EA = L0x7fffffffd120; Value = 0x96bc36e63aaf30d2; PC = 0x4298138 *)
mov r15 L0x7fffffffd120;
(* mov    0x58(%rsi),%rcx                          #! EA = L0x7fffffffd128; Value = 0x0798881865d1f611; PC = 0x4298142 *)
mov rcx L0x7fffffffd128;
(* sub    0x52b27(%rip),%r11        # 0x46c0d0     #! EA = L0x46c0d0; Value = 0xb9feffffffffaaab; PC = 0x4298146 *)
subb carry r11 r11 L0x46c0d0;
(* sbb    0x52b28(%rip),%r12        # 0x46c0d8     #! EA = L0x46c0d8; Value = 0x1eabfffeb153ffff; PC = 0x4298153 *)
sbbs carry r12 r12 L0x46c0d8 carry;
(* sbb    0x52b29(%rip),%r13        # 0x46c0e0     #! EA = L0x46c0e0; Value = 0x6730d2a0f6b0f624; PC = 0x4298160 *)
sbbs carry r13 r13 L0x46c0e0 carry;
(* sbb    0x52b2a(%rip),%r14        # 0x46c0e8     #! EA = L0x46c0e8; Value = 0x64774b84f38512bf; PC = 0x4298167 *)
sbbs carry r14 r14 L0x46c0e8 carry;
(* sbb    0x52b2b(%rip),%r15        # 0x46c0f0     #! EA = L0x46c0f0; Value = 0x4b1ba7b6434bacd7; PC = 0x4298174 *)
sbbs carry r15 r15 L0x46c0f0 carry;
(* sbb    0x52b2c(%rip),%rcx        # 0x46c0f8     #! EA = L0x46c0f8; Value = 0x1a0111ea397fe69a; PC = 0x4298181 *)
sbbs carry rcx rcx L0x46c0f8 carry;
(* cmovb  0x30(%rsi),%r11                          #! EA = L0x7fffffffd100; Value = 0xf2e9f7ea77dbe017; PC = 0x4298188 *)
cmov r11 carry L0x7fffffffd100 r11;
(* cmovb  0x38(%rsi),%r12                          #! EA = L0x7fffffffd108; Value = 0x9cd11ccd4c917957; PC = 0x4298193 *)
cmov r12 carry L0x7fffffffd108 r12;
(* cmovb  0x40(%rsi),%r13                          #! EA = L0x7fffffffd110; Value = 0x39b24139696d2477; PC = 0x4298198 *)
cmov r13 carry L0x7fffffffd110 r13;
(* cmovb  0x48(%rsi),%r14                          #! EA = L0x7fffffffd118; Value = 0x0a39a84d2763dc17; PC = 0x4298203 *)
cmov r14 carry L0x7fffffffd118 r14;
(* cmovb  0x50(%rsi),%r15                          #! EA = L0x7fffffffd120; Value = 0x96bc36e63aaf30d2; PC = 0x4298208 *)
cmov r15 carry L0x7fffffffd120 r15;
(* cmovb  0x58(%rsi),%rcx                          #! EA = L0x7fffffffd128; Value = 0x0798881865d1f611; PC = 0x4298213 *)
cmov rcx carry L0x7fffffffd128 rcx;
(* mov    %r11,(%rdi)                              #! EA = L0x7fffffffd2f0; PC = 0x4298218 *)
mov L0x7fffffffd2f0 r11;
(* mov    %r12,0x8(%rdi)                           #! EA = L0x7fffffffd2f8; PC = 0x4298221 *)
mov L0x7fffffffd2f8 r12;
(* mov    %r13,0x10(%rdi)                          #! EA = L0x7fffffffd300; PC = 0x4298225 *)
mov L0x7fffffffd300 r13;
(* mov    %r14,0x18(%rdi)                          #! EA = L0x7fffffffd308; PC = 0x4298229 *)
mov L0x7fffffffd308 r14;
(* mov    %r15,0x20(%rdi)                          #! EA = L0x7fffffffd310; PC = 0x4298233 *)
mov L0x7fffffffd310 r15;
(* mov    %rcx,0x28(%rdi)                          #! EA = L0x7fffffffd318; PC = 0x4298237 *)
mov L0x7fffffffd318 rcx;

mov r0_0 L0x7fffffffd2f0;
mov r0_1 L0x7fffffffd2f8;
mov r0_2 L0x7fffffffd300;
mov r0_3 L0x7fffffffd308;
mov r0_4 L0x7fffffffd310;
mov r0_5 L0x7fffffffd318;

(* pop    %rbp                                     #! PC = 0x4298241 *)
/* pop rbp; */
(* pop    %rbx                                     #! PC = 0x4298242 *)
/* pop rbx; */
(* pop    %r15                                     #! PC = 0x4298243 *)
/* pop r15; */
(* pop    %r14                                     #! PC = 0x4298245 *)
/* pop r14; */
(* pop    %r13                                     #! PC = 0x4298247 *)
/* pop r13; */
(* pop    %r12                                     #! PC = 0x4298249 *)
/* pop r12; */
(* #retq                                           #! PC = 0x4298251 *)
#retq                                           #! 0x4298251 = 0x4298251;
(* add    $0x8,%rsp                                #! PC = 0x4285009 *)
/* adds carry rsp rsp 0x8; */
(* lea    0x110(%rbp),%rsi                         #! PC = 0x4285013 *)
/* lea    %%EA,%%rsi                         #! 0x4285013 = 0x4285013; */
(* lea    0x30(%rbx),%rdi                          #! PC = 0x4285020 *)
/* lea    %%EA,%%rdi                          #! 0x4285020 = 0x4285020; */
(* pop    %rbx                                     #! PC = 0x4285024 *)
/* pop rbx; */
(* pop    %rbp                                     #! PC = 0x4285025 *)
/* pop rbp; */
(* #jmpq   0x419215 <fp_rdcn_low>                  #! PC = 0x4285026 *)
#jmpq   0x419215 <fp_rdcn_low>                  #! 0x4285026 = 0x4285026;
(* push   %r12                                     #! PC = 0x4297237 *)
/* push r12; */
(* push   %r13                                     #! PC = 0x4297239 *)
/* push r13; */
(* push   %r14                                     #! PC = 0x4297241 *)
/* push r14; */
(* push   %r15                                     #! PC = 0x4297243 *)
/* push r15; */
(* push   %rbx                                     #! PC = 0x4297245 *)
/* push rbx; */
(* push   %rbp                                     #! PC = 0x4297246 *)
/* push rbp; */
(* lea    0x52eaa(%rip),%rbx        # 0x46c0d0     #! PC = 0x4297247 *)
/* lea    %%EA,%%rbx        # 0x46c0d0     #! 0x4297247 = 0x4297247; */
(* xor    %r9,%r9                                  #! PC = 0x4297254 *)
mov r9 0@uint64;
(* movabs $0x89f3fffcfffcfffd,%rcx                 #! PC = 0x4297257 *)
mov rcx 0x89f3fffcfffcfffd@uint64;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffd1e0; Value = 0x8969498c06dc8acb; PC = 0x4297267 *)
mov r8 L0x7fffffffd1e0;
(* mov    %r8,%rax                                 #! PC = 0x4297270 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x4297273 *)
mull rdx rax rax rcx;
(* mov    %rax,(%rsi)                              #! EA = L0x7fffffffd1e0; PC = 0x4297276 *)
mov L0x7fffffffd1e0 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4297279 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r8                                 #! PC = 0x4297282 *)
adds carry r8 r8 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r8 0 (2**64) && true;
assume r8 + 0 = 0 && true;
(* adc    %rdx,%r9                                 #! PC = 0x4297285 *)
adc r9 r9 rdx carry;
(* xor    %r10,%r10                                #! PC = 0x4297288 *)
mov r10 0@uint64;
(* xor    %r8,%r8                                  #! PC = 0x4297291 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd1e0; Value = 0x5f066e654b095f9f; PC = 0x4297294 *)
mov rax L0x7fffffffd1e0;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297297 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r9                                 #! PC = 0x4297301 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297304 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297307 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x8(%rsi),%r9                            #! EA = L0x7fffffffd1e8; Value = 0x55bb75b53a9ed848; PC = 0x4297311 *)
adds carry r9 r9 L0x7fffffffd1e8;
(* adc    $0x0,%r10                                #! PC = 0x4297315 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297319 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,%rax                                 #! PC = 0x4297323 *)
mov rax r9;
(* mul    %rcx                                     #! PC = 0x4297326 *)
mull rdx rax rax rcx;
(* mov    %rax,0x8(%rsi)                           #! EA = L0x7fffffffd1e8; PC = 0x4297329 *)
mov L0x7fffffffd1e8 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4297333 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r9                                 #! PC = 0x4297336 *)
adds carry r9 r9 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r9 0 (2**64) && true;
assume r9 = 0 && true;
(* adc    %rdx,%r10                                #! PC = 0x4297339 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297342 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4297346 *)
mov r9 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd1e0; Value = 0x5f066e654b095f9f; PC = 0x4297349 *)
mov rax L0x7fffffffd1e0;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297352 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r10                                #! PC = 0x4297356 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297359 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297362 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd1e8; Value = 0xbe111ec22d1667b9; PC = 0x4297366 *)
mov rax L0x7fffffffd1e8;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297370 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r10                                #! PC = 0x4297374 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297377 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297380 *)
adc r9 r9 0x0@uint64 carry;
(* add    0x10(%rsi),%r10                          #! EA = L0x7fffffffd1f0; Value = 0x6657ac0da6b65031; PC = 0x4297384 *)
adds carry r10 r10 L0x7fffffffd1f0;
(* adc    $0x0,%r8                                 #! PC = 0x4297388 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297392 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x4297396 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x4297399 *)
mull rdx rax rax rcx;
(* mov    %rax,0x10(%rsi)                          #! EA = L0x7fffffffd1f0; PC = 0x4297402 *)
mov L0x7fffffffd1f0 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4297406 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r10                                #! PC = 0x4297409 *)
adds carry r10 r10 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r10 0 (2**64) && true;
assume r10 = 0 && true;
(* adc    %rdx,%r8                                 #! PC = 0x4297412 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297415 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4297419 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd1e0; Value = 0x5f066e654b095f9f; PC = 0x4297422 *)
mov rax L0x7fffffffd1e0;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297425 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r8                                 #! PC = 0x4297429 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297432 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297435 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd1e8; Value = 0xbe111ec22d1667b9; PC = 0x4297439 *)
mov rax L0x7fffffffd1e8;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297443 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r8                                 #! PC = 0x4297447 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297450 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297453 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd1f0; Value = 0x107b2e6217e82b4e; PC = 0x4297457 *)
mov rax L0x7fffffffd1f0;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297461 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r8                                 #! PC = 0x4297465 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297468 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297471 *)
adc r10 r10 0x0@uint64 carry;
(* add    0x18(%rsi),%r8                           #! EA = L0x7fffffffd1f8; Value = 0x42fe8f6cd26d2d03; PC = 0x4297475 *)
adds carry r8 r8 L0x7fffffffd1f8;
(* adc    $0x0,%r9                                 #! PC = 0x4297479 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4297483 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r8,%rax                                 #! PC = 0x4297487 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x4297490 *)
mull rdx rax rax rcx;
(* mov    %rax,0x18(%rsi)                          #! EA = L0x7fffffffd1f8; PC = 0x4297493 *)
mov L0x7fffffffd1f8 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4297497 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r8                                 #! PC = 0x4297500 *)
adds carry r8 r8 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r8 0 (2**64) && true;
assume r8 = 0 && true;
(* adc    %rdx,%r9                                 #! PC = 0x4297503 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297506 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4297510 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd1e0; Value = 0x5f066e654b095f9f; PC = 0x4297513 *)
mov rax L0x7fffffffd1e0;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297516 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r9                                 #! PC = 0x4297520 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297523 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297526 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd1e8; Value = 0xbe111ec22d1667b9; PC = 0x4297530 *)
mov rax L0x7fffffffd1e8;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297534 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r9                                 #! PC = 0x4297538 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297541 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297544 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd1f0; Value = 0x107b2e6217e82b4e; PC = 0x4297548 *)
mov rax L0x7fffffffd1f0;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297552 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r9                                 #! PC = 0x4297556 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297559 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297562 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd1f8; Value = 0xa933b297550b9724; PC = 0x4297566 *)
mov rax L0x7fffffffd1f8;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297570 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r9                                 #! PC = 0x4297574 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297577 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297580 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x20(%rsi),%r9                           #! EA = L0x7fffffffd200; Value = 0xe9229fc1b1ed05fe; PC = 0x4297584 *)
adds carry r9 r9 L0x7fffffffd200;
(* adc    $0x0,%r10                                #! PC = 0x4297588 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297592 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,%rax                                 #! PC = 0x4297596 *)
mov rax r9;
(* mul    %rcx                                     #! PC = 0x4297599 *)
mull rdx rax rax rcx;
(* mov    %rax,0x20(%rsi)                          #! EA = L0x7fffffffd200; PC = 0x4297602 *)
mov L0x7fffffffd200 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4297606 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r9                                 #! PC = 0x4297609 *)
adds carry r9 r9 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r9 0 (2**64) && true;
assume r9 = 0 && true;
(* adc    %rdx,%r10                                #! PC = 0x4297612 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297615 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4297619 *)
mov r9 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd1e0; Value = 0x5f066e654b095f9f; PC = 0x4297622 *)
mov rax L0x7fffffffd1e0;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4297625 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r10                                #! PC = 0x4297629 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297632 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297635 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd1e8; Value = 0xbe111ec22d1667b9; PC = 0x4297639 *)
mov rax L0x7fffffffd1e8;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297643 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r10                                #! PC = 0x4297647 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297650 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297653 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd1f0; Value = 0x107b2e6217e82b4e; PC = 0x4297657 *)
mov rax L0x7fffffffd1f0;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297661 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r10                                #! PC = 0x4297665 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297668 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297671 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd1f8; Value = 0xa933b297550b9724; PC = 0x4297675 *)
mov rax L0x7fffffffd1f8;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297679 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r10                                #! PC = 0x4297683 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297686 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297689 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd200; Value = 0xe46c8ce054c0904b; PC = 0x4297693 *)
mov rax L0x7fffffffd200;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297697 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r10                                #! PC = 0x4297701 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297704 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297707 *)
adc r9 r9 0x0@uint64 carry;
(* add    0x28(%rsi),%r10                          #! EA = L0x7fffffffd208; Value = 0x314e053fcd78bb36; PC = 0x4297711 *)
adds carry r10 r10 L0x7fffffffd208;
(* adc    $0x0,%r8                                 #! PC = 0x4297715 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297719 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x4297723 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x4297726 *)
mull rdx rax rax rcx;
(* mov    %rax,0x28(%rsi)                          #! EA = L0x7fffffffd208; PC = 0x4297729 *)
mov L0x7fffffffd208 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4297733 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r10                                #! PC = 0x4297736 *)
adds carry r10 r10 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r10 0 (2**64) && true;
assume r10 = 0 && true;
(* adc    %rdx,%r8                                 #! PC = 0x4297739 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297742 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4297746 *)
mov r10 0@uint64;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd1e8; Value = 0xbe111ec22d1667b9; PC = 0x4297749 *)
mov rax L0x7fffffffd1e8;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4297753 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r8                                 #! PC = 0x4297757 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297760 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297763 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd1f0; Value = 0x107b2e6217e82b4e; PC = 0x4297767 *)
mov rax L0x7fffffffd1f0;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297771 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r8                                 #! PC = 0x4297775 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297778 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297781 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd1f8; Value = 0xa933b297550b9724; PC = 0x4297785 *)
mov rax L0x7fffffffd1f8;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297789 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r8                                 #! PC = 0x4297793 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297796 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297799 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd200; Value = 0xe46c8ce054c0904b; PC = 0x4297803 *)
mov rax L0x7fffffffd200;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297807 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r8                                 #! PC = 0x4297811 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297814 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297817 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd208; Value = 0xe6b5b9a163c66ed6; PC = 0x4297821 *)
mov rax L0x7fffffffd208;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297825 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r8                                 #! PC = 0x4297829 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297832 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297835 *)
adc r10 r10 0x0@uint64 carry;
(* add    0x30(%rsi),%r8                           #! EA = L0x7fffffffd210; Value = 0x5239491a3786b5e0; PC = 0x4297839 *)
adds carry r8 r8 L0x7fffffffd210;
(* adc    $0x0,%r9                                 #! PC = 0x4297843 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4297847 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r8,0x30(%rsi)                           #! EA = L0x7fffffffd210; PC = 0x4297851 *)
mov L0x7fffffffd210 r8;
(* xor    %r8,%r8                                  #! PC = 0x4297855 *)
mov r8 0@uint64;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd1f0; Value = 0x107b2e6217e82b4e; PC = 0x4297858 *)
mov rax L0x7fffffffd1f0;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4297862 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r9                                 #! PC = 0x4297866 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297869 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297872 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd1f8; Value = 0xa933b297550b9724; PC = 0x4297876 *)
mov rax L0x7fffffffd1f8;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297880 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r9                                 #! PC = 0x4297884 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297887 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297890 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd200; Value = 0xe46c8ce054c0904b; PC = 0x4297894 *)
mov rax L0x7fffffffd200;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297898 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r9                                 #! PC = 0x4297902 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297905 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297908 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd208; Value = 0xe6b5b9a163c66ed6; PC = 0x4297912 *)
mov rax L0x7fffffffd208;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297916 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r9                                 #! PC = 0x4297920 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297923 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297926 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x38(%rsi),%r9                           #! EA = L0x7fffffffd218; Value = 0x058c55429125c82c; PC = 0x4297930 *)
adds carry r9 r9 L0x7fffffffd218;
(* adc    $0x0,%r10                                #! PC = 0x4297934 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297938 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,0x38(%rsi)                           #! EA = L0x7fffffffd218; PC = 0x4297942 *)
mov L0x7fffffffd218 r9;
(* xor    %r9,%r9                                  #! PC = 0x4297946 *)
mov r9 0@uint64;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd1f8; Value = 0xa933b297550b9724; PC = 0x4297949 *)
mov rax L0x7fffffffd1f8;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4297953 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r10                                #! PC = 0x4297957 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297960 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297963 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd200; Value = 0xe46c8ce054c0904b; PC = 0x4297967 *)
mov rax L0x7fffffffd200;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297971 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r10                                #! PC = 0x4297975 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297978 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297981 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd208; Value = 0xe6b5b9a163c66ed6; PC = 0x4297985 *)
mov rax L0x7fffffffd208;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297989 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r10                                #! PC = 0x4297993 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297996 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297999 *)
adc r9 r9 0x0@uint64 carry;
(* add    0x40(%rsi),%r10                          #! EA = L0x7fffffffd220; Value = 0x21ffe11acb4db5d2; PC = 0x4298003 *)
adds carry r10 r10 L0x7fffffffd220;
(* adc    $0x0,%r8                                 #! PC = 0x4298007 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4298011 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,0x40(%rsi)                          #! EA = L0x7fffffffd220; PC = 0x4298015 *)
mov L0x7fffffffd220 r10;
(* xor    %r10,%r10                                #! PC = 0x4298019 *)
mov r10 0@uint64;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd200; Value = 0xe46c8ce054c0904b; PC = 0x4298022 *)
mov rax L0x7fffffffd200;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4298026 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r8                                 #! PC = 0x4298030 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4298033 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4298036 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd208; Value = 0xe6b5b9a163c66ed6; PC = 0x4298040 *)
mov rax L0x7fffffffd208;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4298044 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r8                                 #! PC = 0x4298048 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4298051 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4298054 *)
adc r10 r10 0x0@uint64 carry;
(* add    0x48(%rsi),%r8                           #! EA = L0x7fffffffd228; Value = 0x6b3115f81d4be7f7; PC = 0x4298058 *)
adds carry r8 r8 L0x7fffffffd228;
(* adc    $0x0,%r9                                 #! PC = 0x4298062 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4298066 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r8,0x48(%rsi)                           #! EA = L0x7fffffffd228; PC = 0x4298070 *)
mov L0x7fffffffd228 r8;
(* xor    %r8,%r8                                  #! PC = 0x4298074 *)
mov r8 0@uint64;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd208; Value = 0xe6b5b9a163c66ed6; PC = 0x4298077 *)
mov rax L0x7fffffffd208;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4298081 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r9                                 #! PC = 0x4298085 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4298088 *)
adcs carry r10 r10 rdx carry;
(* NOTE: cannot carry *)
assert true && carry = 0@1;
assume carry = 0 && true;
(* adc    $0x0,%r8                                 #! PC = 0x4298091 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x50(%rsi),%r9                           #! EA = L0x7fffffffd230; Value = 0x612248f5ab2860a7; PC = 0x4298095 *)
adds carry r9 r9 L0x7fffffffd230;
(* adc    $0x0,%r10                                #! PC = 0x4298099 *)
adcs carry r10 r10 0x0@uint64 carry;
(* NOTE: cannot carry *)
assert true && carry = 0@1;
assume carry = 0 && true;
(* adc    $0x0,%r8                                 #! PC = 0x4298103 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,0x50(%rsi)                           #! EA = L0x7fffffffd230; PC = 0x4298107 *)
mov L0x7fffffffd230 r9;
(* xor    %r9,%r9                                  #! PC = 0x4298111 *)
mov r9 0@uint64;
(* add    0x58(%rsi),%r10                          #! EA = L0x7fffffffd238; Value = 0x013ec0f4a002ee3b; PC = 0x4298114 *)
adds carry r10 r10 L0x7fffffffd238;
(* NOTE: cannot carry *)
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r10,0x58(%rsi)                          #! EA = L0x7fffffffd238; PC = 0x4298118 *)
mov L0x7fffffffd238 r10;
(* mov    0x30(%rsi),%r11                          #! EA = L0x7fffffffd210; Value = 0xb8db131721257bc4; PC = 0x4298122 *)
mov r11 L0x7fffffffd210;
(* mov    0x38(%rsi),%r12                          #! EA = L0x7fffffffd218; Value = 0x62c0934e547e6196; PC = 0x4298126 *)
mov r12 L0x7fffffffd218;
(* mov    0x40(%rsi),%r13                          #! EA = L0x7fffffffd220; Value = 0x626836321de2f38a; PC = 0x4298130 *)
mov r13 L0x7fffffffd220;
(* mov    0x48(%rsi),%r14                          #! EA = L0x7fffffffd228; Value = 0x8e8a00bab44be6c0; PC = 0x4298134 *)
mov r14 L0x7fffffffd228;
(* mov    0x50(%rsi),%r15                          #! EA = L0x7fffffffd230; Value = 0x5bfa4bd3cdd3d645; PC = 0x4298138 *)
mov r15 L0x7fffffffd230;
(* mov    0x58(%rsi),%rcx                          #! EA = L0x7fffffffd238; Value = 0x18ae2ca9e50798b7; PC = 0x4298142 *)
mov rcx L0x7fffffffd238;
(* sub    0x52b27(%rip),%r11        # 0x46c0d0     #! EA = L0x46c0d0; Value = 0xb9feffffffffaaab; PC = 0x4298146 *)
subb carry r11 r11 L0x46c0d0;
(* sbb    0x52b28(%rip),%r12        # 0x46c0d8     #! EA = L0x46c0d8; Value = 0x1eabfffeb153ffff; PC = 0x4298153 *)
sbbs carry r12 r12 L0x46c0d8 carry;
(* sbb    0x52b29(%rip),%r13        # 0x46c0e0     #! EA = L0x46c0e0; Value = 0x6730d2a0f6b0f624; PC = 0x4298160 *)
sbbs carry r13 r13 L0x46c0e0 carry;
(* sbb    0x52b2a(%rip),%r14        # 0x46c0e8     #! EA = L0x46c0e8; Value = 0x64774b84f38512bf; PC = 0x4298167 *)
sbbs carry r14 r14 L0x46c0e8 carry;
(* sbb    0x52b2b(%rip),%r15        # 0x46c0f0     #! EA = L0x46c0f0; Value = 0x4b1ba7b6434bacd7; PC = 0x4298174 *)
sbbs carry r15 r15 L0x46c0f0 carry;
(* sbb    0x52b2c(%rip),%rcx        # 0x46c0f8     #! EA = L0x46c0f8; Value = 0x1a0111ea397fe69a; PC = 0x4298181 *)
sbbs carry rcx rcx L0x46c0f8 carry;
(* cmovb  0x30(%rsi),%r11                          #! EA = L0x7fffffffd210; Value = 0xb8db131721257bc4; PC = 0x4298188 *)
cmov r11 carry L0x7fffffffd210 r11;
(* cmovb  0x38(%rsi),%r12                          #! EA = L0x7fffffffd218; Value = 0x62c0934e547e6196; PC = 0x4298193 *)
cmov r12 carry L0x7fffffffd218 r12;
(* cmovb  0x40(%rsi),%r13                          #! EA = L0x7fffffffd220; Value = 0x626836321de2f38a; PC = 0x4298198 *)
cmov r13 carry L0x7fffffffd220 r13;
(* cmovb  0x48(%rsi),%r14                          #! EA = L0x7fffffffd228; Value = 0x8e8a00bab44be6c0; PC = 0x4298203 *)
cmov r14 carry L0x7fffffffd228 r14;
(* cmovb  0x50(%rsi),%r15                          #! EA = L0x7fffffffd230; Value = 0x5bfa4bd3cdd3d645; PC = 0x4298208 *)
cmov r15 carry L0x7fffffffd230 r15;
(* cmovb  0x58(%rsi),%rcx                          #! EA = L0x7fffffffd238; Value = 0x18ae2ca9e50798b7; PC = 0x4298213 *)
cmov rcx carry L0x7fffffffd238 rcx;
(* mov    %r11,(%rdi)                              #! EA = L0x7fffffffd320; PC = 0x4298218 *)
mov L0x7fffffffd320 r11;
(* mov    %r12,0x8(%rdi)                           #! EA = L0x7fffffffd328; PC = 0x4298221 *)
mov L0x7fffffffd328 r12;
(* mov    %r13,0x10(%rdi)                          #! EA = L0x7fffffffd330; PC = 0x4298225 *)
mov L0x7fffffffd330 r13;
(* mov    %r14,0x18(%rdi)                          #! EA = L0x7fffffffd338; PC = 0x4298229 *)
mov L0x7fffffffd338 r14;
(* mov    %r15,0x20(%rdi)                          #! EA = L0x7fffffffd340; PC = 0x4298233 *)
mov L0x7fffffffd340 r15;
(* mov    %rcx,0x28(%rdi)                          #! EA = L0x7fffffffd348; PC = 0x4298237 *)
mov L0x7fffffffd348 rcx;
(* pop    %rbp                                     #! PC = 0x4298241 *)
/* pop rbp; */
(* pop    %rbx                                     #! PC = 0x4298242 *)
/* pop rbx; */
(* pop    %r15                                     #! PC = 0x4298243 *)
/* pop r15; */
(* pop    %r14                                     #! PC = 0x4298245 *)
/* pop r14; */
(* pop    %r13                                     #! PC = 0x4298247 *)
/* pop r13; */
(* pop    %r12                                     #! PC = 0x4298249 *)
/* pop r12; */
(* #retq                                           #! PC = 0x4298251 *)
#retq                                           #! 0x4298251 = 0x4298251;
mov r1_0 L0x7fffffffd320;
mov r1_1 L0x7fffffffd328;
mov r1_2 L0x7fffffffd330;
mov r1_3 L0x7fffffffd338;
mov r1_4 L0x7fffffffd340;
mov r1_5 L0x7fffffffd348;


{
  and [
      eqmod (limbs 64 [0, 0, 0, 0, 0, 0, r0_0, r0_1, r0_2, r0_3, r0_4, r0_5])
        (limbs 64 [c0_0, c0_1, c0_2, c0_3, c0_4, c0_5,
                   c0_6, c0_7, c0_8, c0_9, c0_10, c0_11])
         (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
         0x6730d2a0f6b0f624, 0x64774b84f38512bf,
         0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a]),
      eqmod (limbs 64 [0, 0, 0, 0, 0, 0, r1_0, r1_1, r1_2, r1_3, r1_4, r1_5])
        (limbs 64 [c1_0, c1_1, c1_2, c1_3, c1_4, c1_5,
                   c1_6, c1_7, c1_8, c1_9, c1_10, c1_11])
         (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
         0x6730d2a0f6b0f624, 0x64774b84f38512bf,
         0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a])
       ]
  &&
  and [
    limbs 64 [r0_0, r0_1, r0_2, r0_3, r0_4, r0_5] <
    limbs 64 [0xb9feffffffffaaab@64, 0x1eabfffeb153ffff@64,
    0x6730d2a0f6b0f624@64, 0x64774b84f38512bf@64,
    0x4b1ba7b6434bacd7@64, 0x1a0111ea397fe69a@64],
    limbs 64 [r1_0, r1_1, r1_2, r1_3, r1_4, r1_5] <
    limbs 64 [0xb9feffffffffaaab@64, 0x1eabfffeb153ffff@64,
    0x6730d2a0f6b0f624@64, 0x64774b84f38512bf@64,
    0x4b1ba7b6434bacd7@64, 0x1a0111ea397fe69a@64]
  ]
}
