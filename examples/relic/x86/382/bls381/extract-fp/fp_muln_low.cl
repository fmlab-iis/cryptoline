proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 a5,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3, uint64 b4, uint64 b5) =
{
  true
&&
  and [
    limbs 64 [a0, a1, a2, a3, a4, a5] <
    limbs 64 [0xb9feffffffffaaab@64, 0x1eabfffeb153ffff@64,
              0x6730d2a0f6b0f624@64, 0x64774b84f38512bf@64,
              0x4b1ba7b6434bacd7@64, 0x1a0111ea397fe69a@64],
    limbs 64 [b0, b1, b2, b3, b4, b5] <
    limbs 64 [0xb9feffffffffaaab@64, 0x1eabfffeb153ffff@64,
              0x6730d2a0f6b0f624@64, 0x64774b84f38512bf@64,
              0x4b1ba7b6434bacd7@64, 0x1a0111ea397fe69a@64]
  ]
}

mov L0x7fffffffdf80 a0;
mov L0x7fffffffdf88 a1;
mov L0x7fffffffdf90 a2;
mov L0x7fffffffdf98 a3;
mov L0x7fffffffdfa0 a4;
mov L0x7fffffffdfa8 a5;

mov L0x7fffffffdf50 b0;
mov L0x7fffffffdf58 b1;
mov L0x7fffffffdf60 b2;
mov L0x7fffffffdf68 b3;
mov L0x7fffffffdf70 b4;
mov L0x7fffffffdf78 b5;

(* fp_muln_low: *)
/* fp_muln_low:; */
(* mov    %rdx,%rcx                                #! PC = 0x4201101 *)
/* mov rcx rdx; */
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdf80; Value = 0x00007fffffffdfae; PC = 0x4201104 *)
mov rax L0x7fffffffdf80;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffdf50; PC = 0x4201107 *)
mull rdx rax rax L0x7fffffffdf50;
(* mov    %rax,(%rdi)                              #! EA = L0x7fffffffdec0; PC = 0x4201110 *)
mov L0x7fffffffdec0 rax;
(* mov    %rdx,%r8                                 #! PC = 0x4201113 *)
mov r8 rdx;
(* xor    %r9,%r9                                  #! PC = 0x4201116 *)
mov r9 0@uint64;
(* xor    %r10,%r10                                #! PC = 0x4201119 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdf80; Value = 0x00007fffffffdfae; PC = 0x4201122 *)
mov rax L0x7fffffffdf80;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffdf58; PC = 0x4201125 *)
mull rdx rax rax L0x7fffffffdf58;
(* add    %rax,%r8                                 #! PC = 0x4201129 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4201132 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4201135 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdf88; Value = 0x0000000000000000; PC = 0x4201139 *)
mov rax L0x7fffffffdf88;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffdf50; PC = 0x4201143 *)
mull rdx rax rax L0x7fffffffdf50;
(* add    %rax,%r8                                 #! PC = 0x4201146 *)
adds carry r8 r8 rax;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x7fffffffdec8; PC = 0x4201149 *)
mov L0x7fffffffdec8 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4201153 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4201156 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4201160 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdf80; Value = 0x00007fffffffdfae; PC = 0x4201163 *)
mov rax L0x7fffffffdf80;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffdf60; PC = 0x4201166 *)
mull rdx rax rax L0x7fffffffdf60;
(* add    %rax,%r9                                 #! PC = 0x4201170 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4201173 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4201176 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdf88; Value = 0x0000000000000000; PC = 0x4201180 *)
mov rax L0x7fffffffdf88;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffdf58; PC = 0x4201184 *)
mull rdx rax rax L0x7fffffffdf58;
(* add    %rax,%r9                                 #! PC = 0x4201188 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4201191 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4201194 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdf90; Value = 0x0000000000402860; PC = 0x4201198 *)
mov rax L0x7fffffffdf90;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffdf50; PC = 0x4201202 *)
mull rdx rax rax L0x7fffffffdf50;
(* add    %rax,%r9                                 #! PC = 0x4201205 *)
adds carry r9 r9 rax;
(* mov    %r9,0x10(%rdi)                           #! EA = L0x7fffffffded0; PC = 0x4201208 *)
mov L0x7fffffffded0 r9;
(* adc    %rdx,%r10                                #! PC = 0x4201212 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4201215 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4201219 *)
mov r9 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdf80; Value = 0x00007fffffffdfae; PC = 0x4201222 *)
mov rax L0x7fffffffdf80;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffdf68; PC = 0x4201225 *)
mull rdx rax rax L0x7fffffffdf68;
(* add    %rax,%r10                                #! PC = 0x4201229 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4201232 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4201235 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdf88; Value = 0x0000000000000000; PC = 0x4201239 *)
mov rax L0x7fffffffdf88;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffdf60; PC = 0x4201243 *)
mull rdx rax rax L0x7fffffffdf60;
(* add    %rax,%r10                                #! PC = 0x4201247 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4201250 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4201253 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdf90; Value = 0x0000000000402860; PC = 0x4201257 *)
mov rax L0x7fffffffdf90;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffdf58; PC = 0x4201261 *)
mull rdx rax rax L0x7fffffffdf58;
(* add    %rax,%r10                                #! PC = 0x4201265 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4201268 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4201271 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdf98; Value = 0x0000000000401050; PC = 0x4201275 *)
mov rax L0x7fffffffdf98;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffdf50; PC = 0x4201279 *)
mull rdx rax rax L0x7fffffffdf50;
(* add    %rax,%r10                                #! PC = 0x4201282 *)
adds carry r10 r10 rax;
(* mov    %r10,0x18(%rdi)                          #! EA = L0x7fffffffded8; PC = 0x4201285 *)
mov L0x7fffffffded8 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4201289 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4201292 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4201296 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdf80; Value = 0x00007fffffffdfae; PC = 0x4201299 *)
mov rax L0x7fffffffdf80;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffdf70; PC = 0x4201302 *)
mull rdx rax rax L0x7fffffffdf70;
(* add    %rax,%r8                                 #! PC = 0x4201306 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4201309 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4201312 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdf88; Value = 0x0000000000000000; PC = 0x4201316 *)
mov rax L0x7fffffffdf88;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffdf68; PC = 0x4201320 *)
mull rdx rax rax L0x7fffffffdf68;
(* add    %rax,%r8                                 #! PC = 0x4201324 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4201327 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4201330 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdf90; Value = 0x0000000000402860; PC = 0x4201334 *)
mov rax L0x7fffffffdf90;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffdf60; PC = 0x4201338 *)
mull rdx rax rax L0x7fffffffdf60;
(* add    %rax,%r8                                 #! PC = 0x4201342 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4201345 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4201348 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdf98; Value = 0x0000000000401050; PC = 0x4201352 *)
mov rax L0x7fffffffdf98;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffdf58; PC = 0x4201356 *)
mull rdx rax rax L0x7fffffffdf58;
(* add    %rax,%r8                                 #! PC = 0x4201360 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4201363 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4201366 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdfa0; Value = 0x00007fffffffe090; PC = 0x4201370 *)
mov rax L0x7fffffffdfa0;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffdf50; PC = 0x4201374 *)
mull rdx rax rax L0x7fffffffdf50;
(* add    %rax,%r8                                 #! PC = 0x4201377 *)
adds carry r8 r8 rax;
(* mov    %r8,0x20(%rdi)                           #! EA = L0x7fffffffdee0; PC = 0x4201380 *)
mov L0x7fffffffdee0 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4201384 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4201387 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4201391 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdf80; Value = 0x00007fffffffdfae; PC = 0x4201394 *)
mov rax L0x7fffffffdf80;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffdf78; PC = 0x4201397 *)
mull rdx rax rax L0x7fffffffdf78;
(* add    %rax,%r9                                 #! PC = 0x4201401 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4201404 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4201407 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdf88; Value = 0x0000000000000000; PC = 0x4201411 *)
mov rax L0x7fffffffdf88;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffdf70; PC = 0x4201415 *)
mull rdx rax rax L0x7fffffffdf70;
(* add    %rax,%r9                                 #! PC = 0x4201419 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4201422 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4201425 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdf90; Value = 0x0000000000402860; PC = 0x4201429 *)
mov rax L0x7fffffffdf90;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffdf68; PC = 0x4201433 *)
mull rdx rax rax L0x7fffffffdf68;
(* add    %rax,%r9                                 #! PC = 0x4201437 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4201440 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4201443 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdf98; Value = 0x0000000000401050; PC = 0x4201447 *)
mov rax L0x7fffffffdf98;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffdf60; PC = 0x4201451 *)
mull rdx rax rax L0x7fffffffdf60;
(* add    %rax,%r9                                 #! PC = 0x4201455 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4201458 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4201461 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdfa0; Value = 0x00007fffffffe090; PC = 0x4201465 *)
mov rax L0x7fffffffdfa0;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffdf58; PC = 0x4201469 *)
mull rdx rax rax L0x7fffffffdf58;
(* add    %rax,%r9                                 #! PC = 0x4201473 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4201476 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4201479 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdfa8; Value = 0x0000000000000000; PC = 0x4201483 *)
mov rax L0x7fffffffdfa8;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffdf50; PC = 0x4201487 *)
mull rdx rax rax L0x7fffffffdf50;
(* add    %rax,%r9                                 #! PC = 0x4201490 *)
adds carry r9 r9 rax;
(* mov    %r9,0x28(%rdi)                           #! EA = L0x7fffffffdee8; PC = 0x4201493 *)
mov L0x7fffffffdee8 r9;
(* adc    %rdx,%r10                                #! PC = 0x4201497 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4201500 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4201504 *)
mov r9 0@uint64;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdf88; Value = 0x0000000000000000; PC = 0x4201507 *)
mov rax L0x7fffffffdf88;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffdf78; PC = 0x4201511 *)
mull rdx rax rax L0x7fffffffdf78;
(* add    %rax,%r10                                #! PC = 0x4201515 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4201518 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4201521 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdf90; Value = 0x0000000000402860; PC = 0x4201525 *)
mov rax L0x7fffffffdf90;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffdf70; PC = 0x4201529 *)
mull rdx rax rax L0x7fffffffdf70;
(* add    %rax,%r10                                #! PC = 0x4201533 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4201536 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4201539 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdf98; Value = 0x0000000000401050; PC = 0x4201543 *)
mov rax L0x7fffffffdf98;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffdf68; PC = 0x4201547 *)
mull rdx rax rax L0x7fffffffdf68;
(* add    %rax,%r10                                #! PC = 0x4201551 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4201554 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4201557 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdfa0; Value = 0x00007fffffffe090; PC = 0x4201561 *)
mov rax L0x7fffffffdfa0;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffdf60; PC = 0x4201565 *)
mull rdx rax rax L0x7fffffffdf60;
(* add    %rax,%r10                                #! PC = 0x4201569 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4201572 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4201575 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdfa8; Value = 0x0000000000000000; PC = 0x4201579 *)
mov rax L0x7fffffffdfa8;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffdf58; PC = 0x4201583 *)
mull rdx rax rax L0x7fffffffdf58;
(* add    %rax,%r10                                #! PC = 0x4201587 *)
adds carry r10 r10 rax;
(* mov    %r10,0x30(%rdi)                          #! EA = L0x7fffffffdef0; PC = 0x4201590 *)
mov L0x7fffffffdef0 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4201594 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4201597 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4201601 *)
mov r10 0@uint64;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdf90; Value = 0x0000000000402860; PC = 0x4201604 *)
mov rax L0x7fffffffdf90;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffdf78; PC = 0x4201608 *)
mull rdx rax rax L0x7fffffffdf78;
(* add    %rax,%r8                                 #! PC = 0x4201612 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4201615 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4201618 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdf98; Value = 0x0000000000401050; PC = 0x4201622 *)
mov rax L0x7fffffffdf98;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffdf70; PC = 0x4201626 *)
mull rdx rax rax L0x7fffffffdf70;
(* add    %rax,%r8                                 #! PC = 0x4201630 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4201633 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4201636 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdfa0; Value = 0x00007fffffffe090; PC = 0x4201640 *)
mov rax L0x7fffffffdfa0;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffdf68; PC = 0x4201644 *)
mull rdx rax rax L0x7fffffffdf68;
(* add    %rax,%r8                                 #! PC = 0x4201648 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4201651 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4201654 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdfa8; Value = 0x0000000000000000; PC = 0x4201658 *)
mov rax L0x7fffffffdfa8;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffdf60; PC = 0x4201662 *)
mull rdx rax rax L0x7fffffffdf60;
(* add    %rax,%r8                                 #! PC = 0x4201666 *)
adds carry r8 r8 rax;
(* mov    %r8,0x38(%rdi)                           #! EA = L0x7fffffffdef8; PC = 0x4201669 *)
mov L0x7fffffffdef8 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4201673 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4201676 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4201680 *)
mov r8 0@uint64;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdf98; Value = 0x0000000000401050; PC = 0x4201683 *)
mov rax L0x7fffffffdf98;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffdf78; PC = 0x4201687 *)
mull rdx rax rax L0x7fffffffdf78;
(* add    %rax,%r9                                 #! PC = 0x4201691 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4201694 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4201697 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdfa0; Value = 0x00007fffffffe090; PC = 0x4201701 *)
mov rax L0x7fffffffdfa0;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffdf70; PC = 0x4201705 *)
mull rdx rax rax L0x7fffffffdf70;
(* add    %rax,%r9                                 #! PC = 0x4201709 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4201712 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4201715 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdfa8; Value = 0x0000000000000000; PC = 0x4201719 *)
mov rax L0x7fffffffdfa8;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffdf68; PC = 0x4201723 *)
mull rdx rax rax L0x7fffffffdf68;
(* add    %rax,%r9                                 #! PC = 0x4201727 *)
adds carry r9 r9 rax;
(* mov    %r9,0x40(%rdi)                           #! EA = L0x7fffffffdf00; PC = 0x4201730 *)
mov L0x7fffffffdf00 r9;
(* adc    %rdx,%r10                                #! PC = 0x4201734 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4201737 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4201741 *)
mov r9 0@uint64;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdfa0; Value = 0x00007fffffffe090; PC = 0x4201744 *)
mov rax L0x7fffffffdfa0;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffdf78; PC = 0x4201748 *)
mull rdx rax rax L0x7fffffffdf78;
(* add    %rax,%r10                                #! PC = 0x4201752 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4201755 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4201758 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdfa8; Value = 0x0000000000000000; PC = 0x4201762 *)
mov rax L0x7fffffffdfa8;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffdf70; PC = 0x4201766 *)
mull rdx rax rax L0x7fffffffdf70;
(* add    %rax,%r10                                #! PC = 0x4201770 *)
adds carry r10 r10 rax;
(* mov    %r10,0x48(%rdi)                          #! EA = L0x7fffffffdf08; PC = 0x4201773 *)
mov L0x7fffffffdf08 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4201777 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4201780 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdfa8; Value = 0x0000000000000000; PC = 0x4201784 *)
mov rax L0x7fffffffdfa8;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffdf78; PC = 0x4201788 *)
mull rdx rax rax L0x7fffffffdf78;
(* add    %rax,%r8                                 #! PC = 0x4201792 *)
adds carry r8 r8 rax;
(* mov    %r8,0x50(%rdi)                           #! EA = L0x7fffffffdf10; PC = 0x4201795 *)
mov L0x7fffffffdf10 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4201799 *)
adc r9 r9 rdx carry;
(* mov    %r9,0x58(%rdi)                           #! EA = L0x7fffffffdf18; PC = 0x4201802 *)
mov L0x7fffffffdf18 r9;
(* #retq                                           #! PC = 0x4201806 *)
#retq                                           #! 0x4201806 = 0x4201806;

mov r0 L0x7fffffffdec0;
mov r1 L0x7fffffffdec8;
mov r2 L0x7fffffffded0;
mov r3 L0x7fffffffded8;
mov r4 L0x7fffffffdee0;
mov r5 L0x7fffffffdee8;
mov r6 L0x7fffffffdef0;
mov r7 L0x7fffffffdef8;
mov r8 L0x7fffffffdf00;
mov r9 L0x7fffffffdf08;
mov r10 L0x7fffffffdf10;
mov r11 L0x7fffffffdf18;


{
  eqmod (limbs 64 [r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11])
        (limbs 64 [a0, a1, a2, a3, a4, a5] *
         limbs 64 [b0, b1, b2, b3, b4, b5])
         (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
         0x6730d2a0f6b0f624, 0x64774b84f38512bf,
         0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a])
  &&
  true
}
