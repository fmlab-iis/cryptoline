(* quine: -v -isafety -jobs 10 -btor -no_carry_constraint add_fp.cl
Parsing Cryptoline file:                [OK]            0.002208 seconds
Checking well-formedness:               [OK]            0.000446 seconds
Transforming to SSA form:               [OK]            0.000222 seconds
Rewriting assignments:                  [OK]            0.000752 seconds
Verifying program safety:               [OK]            0.001391 seconds
Verifying range specification:          [OK]            2.488842 seconds
Rewriting value-preserved casting:      [OK]            0.000008 seconds
Verifying algebraic specification:      [OK]            0.000220 seconds
Verification result:                    [OK]            2.494769 seconds
*)

proc main (uint64 x0, uint64 x1, uint64 x2, uint64 x3, uint64 x4, uint64 x5, uint64 y0, uint64 y1, uint64 y2, uint64 y3, uint64 y4, uint64 y5, uint64 m0, uint64 m1, uint64 m2, uint64 m3, uint64 m4, uint64 m5) =
{
  true
  &&
  and
	[
	 m0 = 0xb9feffffffffaaab@64,
	 m1 = 0x1eabfffeb153ffff@64,
	 m2 = 0x6730d2a0f6b0f624@64,
	 m3 = 0x64774b84f38512bf@64,
	 m4 = 0x4b1ba7b6434bacd7@64,
	 m5 = 0x1a0111ea397fe69a@64,
     limbs 64 [x0, x1, x2, x3, x4, x5] <u limbs 64 [m0, m1, m2, m3, m4, m5],
     limbs 64 [y0, y1, y2, y3, y4, y5] <u limbs 64 [m0, m1, m2, m3, m4, m5]
  	]
}

mov L0x7fffffffda90 x0;
mov L0x7fffffffda98 x1;
mov L0x7fffffffdaa0 x2;
mov L0x7fffffffdaa8 x3;
mov L0x7fffffffdab0 x4;
mov L0x7fffffffdab8 x5;
mov L0x7fffffffdac0 y0;
mov L0x7fffffffdac8 y1;
mov L0x7fffffffdad0 y2;
mov L0x7fffffffdad8 y3;
mov L0x7fffffffdae0 y4;
mov L0x7fffffffdae8 y5;

(* prime *)
mov L0x55555556e4c0 m0;
mov L0x55555556e4c8 m1;
mov L0x55555556e4d0 m2;
mov L0x55555556e4d8 m3;
mov L0x55555556e4e0 m4;
mov L0x55555556e4e8 m5;


(* #callq  0x555555566860 <__add_mod_384>          #! PC = 0x93824992307250 *)
#callq  0x555555566860 <__add_mod_384>          #! 0x93824992307250 = 0x93824992307250;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffda90; Value = 0x0000000000000000; PC = 0x93824992307300 *)
mov r8 L0x7fffffffda90;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffda98; Value = 0x0000000000000000; PC = 0x93824992307303 *)
mov r9 L0x7fffffffda98;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffdaa0; Value = 0x0000000000000001; PC = 0x93824992307307 *)
mov r10 L0x7fffffffdaa0;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffdaa8; Value = 0x0000000103ae75f6; PC = 0x93824992307311 *)
mov r11 L0x7fffffffdaa8;
(* mov    0x20(%rsi),%r12                          #! EA = L0x7fffffffdab0; Value = 0x0000000000000000; PC = 0x93824992307315 *)
mov r12 L0x7fffffffdab0;
(* mov    0x28(%rsi),%r13                          #! EA = L0x7fffffffdab8; Value = 0x0000000000000000; PC = 0x93824992307319 *)
mov r13 L0x7fffffffdab8;
(* add    (%rdx),%r8                               #! EA = L0x7fffffffdac0; Value = 0x0000000000000000; PC = 0x93824992307323 *)
adds carry r8 L0x7fffffffdac0 r8;
(* adc    0x8(%rdx),%r9                            #! EA = L0x7fffffffdac8; Value = 0x0000000000000000; PC = 0x93824992307326 *)
adcs carry r9 L0x7fffffffdac8 r9 carry;
(* adc    0x10(%rdx),%r10                          #! EA = L0x7fffffffdad0; Value = 0x0000000000000000; PC = 0x93824992307330 *)
adcs carry r10 L0x7fffffffdad0 r10 carry;
(* mov    %r8,%r14                                 #! PC = 0x93824992307334 *)
mov r14 r8;
(* adc    0x18(%rdx),%r11                          #! EA = L0x7fffffffdad8; Value = 0x0000000000000000; PC = 0x93824992307337 *)
adcs carry r11 L0x7fffffffdad8 r11 carry;
(* mov    %r9,%r15                                 #! PC = 0x93824992307341 *)
mov r15 r9;
(* adc    0x20(%rdx),%r12                          #! EA = L0x7fffffffdae0; Value = 0x0000000000000000; PC = 0x93824992307344 *)
adcs carry r12 L0x7fffffffdae0 r12 carry;
(* mov    %r10,%rax                                #! PC = 0x93824992307348 *)
mov rax r10;
(* adc    0x28(%rdx),%r13                          #! EA = L0x7fffffffdae8; Value = 0x0000034000000240; PC = 0x93824992307351 *)
adcs carry r13 L0x7fffffffdae8 r13 carry;
mov carryA carry;
(* mov    %r11,%rbx                                #! PC = 0x93824992307355 *)
mov rbx r11;

(* Explicitly define rdx here, rdx can be anything *)
nondet rdx@uint64;

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
(*
assert true && (carryA - carryB + (carryB * carryC)) = 0@1;
assume eq carryA - carryB + (carryB * carryC) 0 && true;
*)
(* cmovb  %r14,%r8                                 #! PC = 0x93824992307394 *)
cmov r8 carry r14 r8;
(* cmovb  %r15,%r9                                 #! PC = 0x93824992307398 *)
cmov r9 carry r15 r9;
(* cmovb  %rax,%r10                                #! PC = 0x93824992307402 *)
cmov r10 carry rax r10;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffda60; PC = 0x93824992307406 *)
mov L0x7fffffffda60 r8;
(* cmovb  %rbx,%r11                                #! PC = 0x93824992307409 *)
cmov r11 carry rbx r11;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffda68; PC = 0x93824992307413 *)
mov L0x7fffffffda68 r9;
(* cmovb  %rbp,%r12                                #! PC = 0x93824992307417 *)
cmov r12 carry rbp r12;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffda70; PC = 0x93824992307421 *)
mov L0x7fffffffda70 r10;
(* cmovb  %rsi,%r13                                #! PC = 0x93824992307425 *)
cmov r13 carry rsi r13;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffda78; PC = 0x93824992307429 *)
mov L0x7fffffffda78 r11;
(* mov    %r12,0x20(%rdi)                          #! EA = L0x7fffffffda80; PC = 0x93824992307433 *)
mov L0x7fffffffda80 r12;
(* mov    %r13,0x28(%rdi)                          #! EA = L0x7fffffffda88; PC = 0x93824992307437 *)
mov L0x7fffffffda88 r13;
(* #repz retq                                      #! PC = 0x93824992307441 *)
#repz retq                                      #! 0x93824992307441 = 0x93824992307441;
(* #repz retq                                      #! PC = 0x93824992307290 *)
#repz retq                                      #! 0x93824992307290 = 0x93824992307290;
(* #retq                                           #! PC = 0x93824992241893 *)
#retq                                           #! 0x93824992241893 = 0x93824992241893;

{
  true
  &&
  and[
  	eqmod
  		((limbs 64 [x0, x1, x2, x3, x4, x5]) + (limbs 64 [y0, y1, y2, y3, y4, y5]))
		(limbs 64 [L0x7fffffffda60, L0x7fffffffda68, L0x7fffffffda70, L0x7fffffffda78, L0x7fffffffda80, L0x7fffffffda88])
		(limbs 64 [m0, m1, m2, m3, m4, m5])
	,
		(limbs 64 [L0x7fffffffda60, L0x7fffffffda68, L0x7fffffffda70, L0x7fffffffda78, L0x7fffffffda80, L0x7fffffffda88])
		<u (limbs 64 [m0, m1, m2, m3, m4, m5])
  ]
}

