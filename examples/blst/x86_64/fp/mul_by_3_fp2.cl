(* quine:  -v -isafety -jobs 10 -btor -no_carry_constraint -slicing mul_by_3_fp2.cl
Parsing Cryptoline file:                [OK]            0.003765 seconds
Checking well-formedness:               [OK]            0.000895 seconds
Transforming to SSA form:               [OK]            0.001155 seconds
Rewriting assignments:                  [OK]            0.000711 seconds
Verifying program safety:               [OK]            0.000145 seconds
Verifying range assertions:             [OK]            1.790636 seconds
Verifying range specification:          [OK]            0.032639 seconds
Rewriting value-preserved casting:      [OK]            0.000017 seconds
Verifying algebraic assertions:         [OK]            0.004752 seconds
Verifying algebraic specification:      [OK]            0.072740 seconds
Verification result:                    [OK]            1.908230 seconds
*)

proc main (uint64 x0, uint64 x1, uint64 x2, uint64 x3, uint64 x4, uint64 x5, uint64 y0, uint64 y1, uint64 y2, uint64 y3, uint64 y4, uint64 y5, uint64 m0, uint64 m1, uint64 m2, uint64 m3, uint64 m4, uint64 m5) =
{
  true
  &&
  and
	[
    	 limbs 64 [x0, x1, x2, x3, x4, x5] <u limbs 64 [m0, m1, m2, m3, m4, m5],
    	 limbs 64 [y0, y1, y2, y3, y4, y5] <u limbs 64 [m0, m1, m2, m3, m4, m5]
  	]
}

mov L0x7fffffffdb50 x0;
mov L0x7fffffffdb58 x1;
mov L0x7fffffffdb60 x2;
mov L0x7fffffffdb68 x3;
mov L0x7fffffffdb70 x4;
mov L0x7fffffffdb78 x5;
mov L0x7fffffffdb80 y0;
mov L0x7fffffffdb88 y1;
mov L0x7fffffffdb90 y2;
mov L0x7fffffffdb98 y3;
mov L0x7fffffffdba0 y4;
mov L0x7fffffffdba8 y5;

(* prime *)
mov L0x55555556e4c0 m0;
mov L0x55555556e4c8 m1;
mov L0x55555556e4d0 m2;
mov L0x55555556e4d8 m3;
mov L0x55555556e4e0 m4;
mov L0x55555556e4e8 m5;

(* #callq  0x555555566ca0 <mul_by_3_mod_384x>      #! PC = 0x93824992242493 *)
#callq  0x555555566ca0 <mul_by_3_mod_384x>      #! 0x93824992242493 = 0x93824992242493;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffdb50; Value = 0x000009c0000009c0; PC = 0x93824992308399 *)
mov r8 L0x7fffffffdb50;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffdb58; Value = 0x000009c0000009c0; PC = 0x93824992308402 *)
mov r9 L0x7fffffffdb58;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffdb60; Value = 0x0000000000000000; PC = 0x93824992308406 *)
mov r10 L0x7fffffffdb60;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffdb68; Value = 0x0000004000000100; PC = 0x93824992308410 *)
mov r11 L0x7fffffffdb68;
(* mov    0x20(%rsi),%r12                          #! EA = L0x7fffffffdb70; Value = 0x0000004000000000; PC = 0x93824992308414 *)
mov r12 L0x7fffffffdb70;
(* mov    0x28(%rsi),%r13                          #! EA = L0x7fffffffdb78; Value = 0x0000040000000200; PC = 0x93824992308418 *)
mov r13 L0x7fffffffdb78;
(* #callq  0x555555566a60 <__lshift_mod_384>       #! PC = 0x93824992308425 *)
#callq  0x555555566a60 <__lshift_mod_384>       #! 0x93824992308425 = 0x93824992308425;
(* add    %r8,%r8                                  #! PC = 0x93824992307812 *)
adds carry r8 r8 r8;
(* adc    %r9,%r9                                  #! PC = 0x93824992307815 *)
adcs carry r9 r9 r9 carry;
(* adc    %r10,%r10                                #! PC = 0x93824992307818 *)
adcs carry r10 r10 r10 carry;
(* mov    %r8,%r14                                 #! PC = 0x93824992307821 *)
mov r14 r8;
(* adc    %r11,%r11                                #! PC = 0x93824992307824 *)
adcs carry r11 r11 r11 carry;
(* mov    %r9,%r15                                 #! PC = 0x93824992307827 *)
mov r15 r9;
(* adc    %r12,%r12                                #! PC = 0x93824992307830 *)
adcs carry r12 r12 r12 carry;
(* mov    %r10,%rax                                #! PC = 0x93824992307833 *)
mov rax r10;
(* adc    %r13,%r13                                #! PC = 0x93824992307836 *)
adcs carry r13 r13 r13 carry;
mov carryA carry;
(* mov    %r11,%rbx                                #! PC = 0x93824992307839 *)
mov rbx r11;

(* Explicitly define rdx here, rdx can be anything *)
mov rdx 0@uint64;

(* sbb    %rdx,%rdx                                #! PC = 0x93824992307842 *)
sbbs carry rdx rdx rdx carry;
(* sub    (%rcx),%r8                               #! EA = L0x55555556e4c0; Value = 0xb9feffffffffaaab; PC = 0x93824992307845 *)
subb carry r8 r8 L0x55555556e4c0;
(* sbb    0x8(%rcx),%r9                            #! EA = L0x55555556e4c8; Value = 0x1eabfffeb153ffff; PC = 0x93824992307848 *)
sbbs carry r9 r9 L0x55555556e4c8 carry;
(* mov    %r12,%rbp                                #! PC = 0x93824992307852 *)
mov rbp r12;
(* sbb    0x10(%rcx),%r10                          #! EA = L0x55555556e4d0; Value = 0x6730d2a0f6b0f624; PC = 0x93824992307855 *)
sbbs carry r10 r10 L0x55555556e4d0 carry;
(* sbb    0x18(%rcx),%r11                          #! EA = L0x55555556e4d8; Value = 0x64774b84f38512bf; PC = 0x93824992307859 *)
sbbs carry r11 r11 L0x55555556e4d8 carry;
(* sbb    0x20(%rcx),%r12                          #! EA = L0x55555556e4e0; Value = 0x4b1ba7b6434bacd7; PC = 0x93824992307863 *)
sbbs carry r12 r12 L0x55555556e4e0 carry;
(* mov    %r13,%rsi                                #! PC = 0x93824992307867 *)
mov rsi r13;
(* sbb    0x28(%rcx),%r13                          #! EA = L0x55555556e4e8; Value = 0x1a0111ea397fe69a; PC = 0x93824992307870 *)
sbbs carry r13 r13 L0x55555556e4e8 carry;
mov carryB carry;
(* sbb    $0x0,%rdx                                #! PC = 0x93824992307874 *)
sbbs carry rdx rdx 0@uint64 carry;
mov carryC carry;

assert true && (carryA - carryB + (carryB * carryC)) = 0@1;
assume eq carryA - carryB + (carryB * carryC) 0 && true;

(* cmovb  %r14,%r8                                 #! PC = 0x93824992307878 *)
cmov r8 carry r14 r8;
(* cmovb  %r15,%r9                                 #! PC = 0x93824992307882 *)
cmov r9 carry r15 r9;
(* cmovb  %rax,%r10                                #! PC = 0x93824992307886 *)
cmov r10 carry rax r10;
(* cmovb  %rbx,%r11                                #! PC = 0x93824992307890 *)
cmov r11 carry rbx r11;
(* cmovb  %rbp,%r12                                #! PC = 0x93824992307894 *)
cmov r12 carry rbp r12;
(* cmovb  %rsi,%r13                                #! PC = 0x93824992307898 *)
cmov r13 carry rsi r13;
(* #repz retq                                      #! PC = 0x93824992307902 *)
#repz retq                                      #! 0x93824992307902 = 0x93824992307902;
(* #callq  0x55555556687b <__add_mod_384+27>       #! PC = 0x93824992308434 *)
#callq  0x55555556687b <__add_mod_384+27>       #! 0x93824992308434 = 0x93824992308434;
(* add    (%rdx),%r8                               #! EA = L0x7fffffffdb50; Value = 0x000009c0000009c0; PC = 0x93824992307323 *)
adds carry r8 L0x7fffffffdb50 r8;
(* adc    0x8(%rdx),%r9                            #! EA = L0x7fffffffdb58; Value = 0x000009c0000009c0; PC = 0x93824992307326 *)
adcs carry r9 L0x7fffffffdb58 r9 carry;
(* adc    0x10(%rdx),%r10                          #! EA = L0x7fffffffdb60; Value = 0x0000000000000000; PC = 0x93824992307330 *)
adcs carry r10 L0x7fffffffdb60 r10 carry;
(* mov    %r8,%r14                                 #! PC = 0x93824992307334 *)
mov r14 r8;
(* adc    0x18(%rdx),%r11                          #! EA = L0x7fffffffdb68; Value = 0x0000004000000100; PC = 0x93824992307337 *)
adcs carry r11 L0x7fffffffdb68 r11 carry;
(* mov    %r9,%r15                                 #! PC = 0x93824992307341 *)
mov r15 r9;
(* adc    0x20(%rdx),%r12                          #! EA = L0x7fffffffdb70; Value = 0x0000004000000000; PC = 0x93824992307344 *)
adcs carry r12 L0x7fffffffdb70 r12 carry;
(* mov    %r10,%rax                                #! PC = 0x93824992307348 *)
mov rax r10;
(* adc    0x28(%rdx),%r13                          #! EA = L0x7fffffffdb78; Value = 0x0000040000000200; PC = 0x93824992307351 *)
adcs carry r13 L0x7fffffffdb78 r13 carry;
mov carryA carry;
(* mov    %r11,%rbx                                #! PC = 0x93824992307355 *)
mov rbx r11;
(* sbb    %rdx,%rdx                                #! PC = 0x93824992307358 *)
sbbs carry rdx rdx rdx carry;
(* sub    (%rcx),%r8                               #! EA = L0x55555556e4c0; Value = 0xb9feffffffffaaab; PC = 0x93824992307361 *)
subb carry r8 r8 L0x55555556e4c0;
(* sbb    0x8(%rcx),%r9                            #! EA = L0x55555556e4c8; Value = 0x1eabfffeb153ffff; PC = 0x93824992307364 *)
sbbs carry r9 r9 L0x55555556e4c8 carry;
(* mov    %r12,%rbp                                #! PC = 0x93824992307368 *)
mov rbp r12;
(* sbb    0x10(%rcx),%r10                          #! EA = L0x55555556e4d0; Value = 0x6730d2a0f6b0f624; PC = 0x93824992307371 *)
sbbs carry r10 r10 L0x55555556e4d0 carry;
(* sbb    0x18(%rcx),%r11                          #! EA = L0x55555556e4d8; Value = 0x64774b84f38512bf; PC = 0x93824992307375 *)
sbbs carry r11 r11 L0x55555556e4d8 carry;
(* sbb    0x20(%rcx),%r12                          #! EA = L0x55555556e4e0; Value = 0x4b1ba7b6434bacd7; PC = 0x93824992307379 *)
sbbs carry r12 r12 L0x55555556e4e0 carry;
(* mov    %r13,%rsi                                #! PC = 0x93824992307383 *)
mov rsi r13;
(* sbb    0x28(%rcx),%r13                          #! EA = L0x55555556e4e8; Value = 0x1a0111ea397fe69a; PC = 0x93824992307386 *)
sbbs carry r13 r13 L0x55555556e4e8 carry;
mov carryB carry;
(* sbb    $0x0,%rdx                                #! PC = 0x93824992307390 *)
sbbs carry rdx rdx 0@uint64 carry;
mov carryC carry;

assert true && (carryA - carryB + (carryB * carryC)) = 0@1;
assume eq carryA - carryB + (carryB * carryC) 0 && true;

(* cmovb  %r14,%r8                                 #! PC = 0x93824992307394 *)
cmov r8 carry r14 r8;
(* cmovb  %r15,%r9                                 #! PC = 0x93824992307398 *)
cmov r9 carry r15 r9;
(* cmovb  %rax,%r10                                #! PC = 0x93824992307402 *)
cmov r10 carry rax r10;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffdaf0; PC = 0x93824992307406 *)
mov L0x7fffffffdaf0 r8;
(* cmovb  %rbx,%r11                                #! PC = 0x93824992307409 *)
cmov r11 carry rbx r11;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffdaf8; PC = 0x93824992307413 *)
mov L0x7fffffffdaf8 r9;
(* cmovb  %rbp,%r12                                #! PC = 0x93824992307417 *)
cmov r12 carry rbp r12;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffdb00; PC = 0x93824992307421 *)
mov L0x7fffffffdb00 r10;
(* cmovb  %rsi,%r13                                #! PC = 0x93824992307425 *)
cmov r13 carry rsi r13;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffdb08; PC = 0x93824992307429 *)
mov L0x7fffffffdb08 r11;
(* mov    %r12,0x20(%rdi)                          #! EA = L0x7fffffffdb10; PC = 0x93824992307433 *)
mov L0x7fffffffdb10 r12;
(* mov    %r13,0x28(%rdi)                          #! EA = L0x7fffffffdb18; PC = 0x93824992307437 *)
mov L0x7fffffffdb18 r13;
(* #repz retq                                      #! PC = 0x93824992307441 *)
#repz retq                                      #! 0x93824992307441 = 0x93824992307441;
(* mov    0x30(%rsi),%r8                           #! EA = L0x7fffffffdb80; Value = 0x0000000000000000; PC = 0x93824992308447 *)
mov r8 L0x7fffffffdb80;
(* mov    0x38(%rsi),%r9                           #! EA = L0x7fffffffdb88; Value = 0x0000000000000000; PC = 0x93824992308451 *)
mov r9 L0x7fffffffdb88;
(* mov    0x40(%rsi),%r10                          #! EA = L0x7fffffffdb90; Value = 0x0000000000000000; PC = 0x93824992308455 *)
mov r10 L0x7fffffffdb90;
(* mov    0x48(%rsi),%r11                          #! EA = L0x7fffffffdb98; Value = 0x0000000000000000; PC = 0x93824992308459 *)
mov r11 L0x7fffffffdb98;
(* mov    0x50(%rsi),%r12                          #! EA = L0x7fffffffdba0; Value = 0x0000000000000000; PC = 0x93824992308463 *)
mov r12 L0x7fffffffdba0;
(* mov    0x58(%rsi),%r13                          #! EA = L0x7fffffffdba8; Value = 0x0000000000000000; PC = 0x93824992308467 *)
mov r13 L0x7fffffffdba8;
(* #callq  0x555555566a60 <__lshift_mod_384>       #! PC = 0x93824992308471 *)
#callq  0x555555566a60 <__lshift_mod_384>       #! 0x93824992308471 = 0x93824992308471;
(* add    %r8,%r8                                  #! PC = 0x93824992307812 *)
adds carry r8 r8 r8;
(* adc    %r9,%r9                                  #! PC = 0x93824992307815 *)
adcs carry r9 r9 r9 carry;
(* adc    %r10,%r10                                #! PC = 0x93824992307818 *)
adcs carry r10 r10 r10 carry;
(* mov    %r8,%r14                                 #! PC = 0x93824992307821 *)
mov r14 r8;
(* adc    %r11,%r11                                #! PC = 0x93824992307824 *)
adcs carry r11 r11 r11 carry;
(* mov    %r9,%r15                                 #! PC = 0x93824992307827 *)
mov r15 r9;
(* adc    %r12,%r12                                #! PC = 0x93824992307830 *)
adcs carry r12 r12 r12 carry;
(* mov    %r10,%rax                                #! PC = 0x93824992307833 *)
mov rax r10;
(* adc    %r13,%r13                                #! PC = 0x93824992307836 *)
adcs carry r13 r13 r13 carry;
mov carryA carry;
(* mov    %r11,%rbx                                #! PC = 0x93824992307839 *)
mov rbx r11;
(* sbb    %rdx,%rdx                                #! PC = 0x93824992307842 *)
sbbs carry rdx rdx rdx carry;
(* sub    (%rcx),%r8                               #! EA = L0x55555556e4c0; Value = 0xb9feffffffffaaab; PC = 0x93824992307845 *)
subb carry r8 r8 L0x55555556e4c0;
(* sbb    0x8(%rcx),%r9                            #! EA = L0x55555556e4c8; Value = 0x1eabfffeb153ffff; PC = 0x93824992307848 *)
sbbs carry r9 r9 L0x55555556e4c8 carry;
(* mov    %r12,%rbp                                #! PC = 0x93824992307852 *)
mov rbp r12;
(* sbb    0x10(%rcx),%r10                          #! EA = L0x55555556e4d0; Value = 0x6730d2a0f6b0f624; PC = 0x93824992307855 *)
sbbs carry r10 r10 L0x55555556e4d0 carry;
(* sbb    0x18(%rcx),%r11                          #! EA = L0x55555556e4d8; Value = 0x64774b84f38512bf; PC = 0x93824992307859 *)
sbbs carry r11 r11 L0x55555556e4d8 carry;
(* sbb    0x20(%rcx),%r12                          #! EA = L0x55555556e4e0; Value = 0x4b1ba7b6434bacd7; PC = 0x93824992307863 *)
sbbs carry r12 r12 L0x55555556e4e0 carry;
(* mov    %r13,%rsi                                #! PC = 0x93824992307867 *)
mov rsi r13;
(* sbb    0x28(%rcx),%r13                          #! EA = L0x55555556e4e8; Value = 0x1a0111ea397fe69a; PC = 0x93824992307870 *)
sbbs carry r13 r13 L0x55555556e4e8 carry;
mov carryB carry;
(* sbb    $0x0,%rdx                                #! PC = 0x93824992307874 *)
sbbs carry rdx rdx 0@uint64 carry;
mov carryC carry;

assert true && (carryA - carryB + (carryB * carryC)) = 0@1;
assume eq carryA - carryB + (carryB * carryC) 0 && true;

(* cmovb  %r14,%r8                                 #! PC = 0x93824992307878 *)
cmov r8 carry r14 r8;
(* cmovb  %r15,%r9                                 #! PC = 0x93824992307882 *)
cmov r9 carry r15 r9;
(* cmovb  %rax,%r10                                #! PC = 0x93824992307886 *)
cmov r10 carry rax r10;
(* cmovb  %rbx,%r11                                #! PC = 0x93824992307890 *)
cmov r11 carry rbx r11;
(* cmovb  %rbp,%r12                                #! PC = 0x93824992307894 *)
cmov r12 carry rbp r12;
(* cmovb  %rsi,%r13                                #! PC = 0x93824992307898 *)
cmov r13 carry rsi r13;
(* #repz retq                                      #! PC = 0x93824992307902 *)
#repz retq                                      #! 0x93824992307902 = 0x93824992307902;
(* #callq  0x55555556687b <__add_mod_384+27>       #! PC = 0x93824992308487 *)
#callq  0x55555556687b <__add_mod_384+27>       #! 0x93824992308487 = 0x93824992308487;
(* add    (%rdx),%r8                               #! EA = L0x7fffffffdb80; Value = 0x0000000000000000; PC = 0x93824992307323 *)
adds carry r8 L0x7fffffffdb80 r8;
(* adc    0x8(%rdx),%r9                            #! EA = L0x7fffffffdb88; Value = 0x0000000000000000; PC = 0x93824992307326 *)
adcs carry r9 L0x7fffffffdb88 r9 carry;
(* adc    0x10(%rdx),%r10                          #! EA = L0x7fffffffdb90; Value = 0x0000000000000000; PC = 0x93824992307330 *)
adcs carry r10 L0x7fffffffdb90 r10 carry;
(* mov    %r8,%r14                                 #! PC = 0x93824992307334 *)
mov r14 r8;
(* adc    0x18(%rdx),%r11                          #! EA = L0x7fffffffdb98; Value = 0x0000000000000000; PC = 0x93824992307337 *)
adcs carry r11 L0x7fffffffdb98 r11 carry;
(* mov    %r9,%r15                                 #! PC = 0x93824992307341 *)
mov r15 r9;
(* adc    0x20(%rdx),%r12                          #! EA = L0x7fffffffdba0; Value = 0x0000000000000000; PC = 0x93824992307344 *)
adcs carry r12 L0x7fffffffdba0 r12 carry;
(* mov    %r10,%rax                                #! PC = 0x93824992307348 *)
mov rax r10;
(* adc    0x28(%rdx),%r13                          #! EA = L0x7fffffffdba8; Value = 0x0000000000000000; PC = 0x93824992307351 *)
adcs carry r13 L0x7fffffffdba8 r13 carry;
mov carryA carry;
(* mov    %r11,%rbx                                #! PC = 0x93824992307355 *)
mov rbx r11;
(* sbb    %rdx,%rdx                                #! PC = 0x93824992307358 *)
sbbs carry rdx rdx rdx carry;
(* sub    (%rcx),%r8                               #! EA = L0x55555556e4c0; Value = 0xb9feffffffffaaab; PC = 0x93824992307361 *)
subb carry r8 r8 L0x55555556e4c0;
(* sbb    0x8(%rcx),%r9                            #! EA = L0x55555556e4c8; Value = 0x1eabfffeb153ffff; PC = 0x93824992307364 *)
sbbs carry r9 r9 L0x55555556e4c8 carry;
(* mov    %r12,%rbp                                #! PC = 0x93824992307368 *)
mov rbp r12;
(* sbb    0x10(%rcx),%r10                          #! EA = L0x55555556e4d0; Value = 0x6730d2a0f6b0f624; PC = 0x93824992307371 *)
sbbs carry r10 r10 L0x55555556e4d0 carry;
(* sbb    0x18(%rcx),%r11                          #! EA = L0x55555556e4d8; Value = 0x64774b84f38512bf; PC = 0x93824992307375 *)
sbbs carry r11 r11 L0x55555556e4d8 carry;
(* sbb    0x20(%rcx),%r12                          #! EA = L0x55555556e4e0; Value = 0x4b1ba7b6434bacd7; PC = 0x93824992307379 *)
sbbs carry r12 r12 L0x55555556e4e0 carry;
(* mov    %r13,%rsi                                #! PC = 0x93824992307383 *)
mov rsi r13;
(* sbb    0x28(%rcx),%r13                          #! EA = L0x55555556e4e8; Value = 0x1a0111ea397fe69a; PC = 0x93824992307386 *)
sbbs carry r13 r13 L0x55555556e4e8 carry;
mov carryB carry;
(* sbb    $0x0,%rdx                                #! PC = 0x93824992307390 *)
sbbs carry rdx rdx 0@uint64 carry;
mov carryC carry;

assert true && (carryA - carryB + (carryB * carryC)) = 0@1;
assume eq carryA - carryB + (carryB * carryC) 0 && true;

(* cmovb  %r14,%r8                                 #! PC = 0x93824992307394 *)
cmov r8 carry r14 r8;
(* cmovb  %r15,%r9                                 #! PC = 0x93824992307398 *)
cmov r9 carry r15 r9;
(* cmovb  %rax,%r10                                #! PC = 0x93824992307402 *)
cmov r10 carry rax r10;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffdb20; PC = 0x93824992307406 *)
mov L0x7fffffffdb20 r8;
(* cmovb  %rbx,%r11                                #! PC = 0x93824992307409 *)
cmov r11 carry rbx r11;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffdb28; PC = 0x93824992307413 *)
mov L0x7fffffffdb28 r9;
(* cmovb  %rbp,%r12                                #! PC = 0x93824992307417 *)
cmov r12 carry rbp r12;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffdb30; PC = 0x93824992307421 *)
mov L0x7fffffffdb30 r10;
(* cmovb  %rsi,%r13                                #! PC = 0x93824992307425 *)
cmov r13 carry rsi r13;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffdb38; PC = 0x93824992307429 *)
mov L0x7fffffffdb38 r11;
(* mov    %r12,0x20(%rdi)                          #! EA = L0x7fffffffdb40; PC = 0x93824992307433 *)
mov L0x7fffffffdb40 r12;
(* mov    %r13,0x28(%rdi)                          #! EA = L0x7fffffffdb48; PC = 0x93824992307437 *)
mov L0x7fffffffdb48 r13;
(* #repz retq                                      #! PC = 0x93824992307441 *)
#repz retq                                      #! 0x93824992307441 = 0x93824992307441;
(* #repz retq                                      #! PC = 0x93824992308527 *)
#repz retq                                      #! 0x93824992308527 = 0x93824992308527;
(* #retq                                           #! PC = 0x93824992242500 *)
#retq                                           #! 0x93824992242500 = 0x93824992242500;

{
 and[
  eqmod
      (limbs 64 [L0x7fffffffdaf0, L0x7fffffffdaf8, L0x7fffffffdb00, L0x7fffffffdb08, L0x7fffffffdb10, L0x7fffffffdb18])
      (mul
       (limbs 64 [x0, x1, x2, x3, x4, x5])
       (3)
      )
      (limbs 64 [m0, m1, m2, m3, m4, m5])
  ,
  eqmod
      (limbs 64 [L0x7fffffffdb20, L0x7fffffffdb28, L0x7fffffffdb30, L0x7fffffffdb38, L0x7fffffffdb40, L0x7fffffffdb48])
      (mul
       (limbs 64 [y0, y1, y2, y3, y4, y5])
       (3)
      )
      (limbs 64 [m0, m1, m2, m3, m4, m5])
 ]
  && 
  true
}
