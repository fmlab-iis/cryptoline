(* quine: -v -isafety -jobs 10 -btor -no_carry_constraint add_fp2.cl
Parsing Cryptoline file:                [OK]            0.002848 seconds
Checking well-formedness:               [OK]            0.000435 seconds
Transforming to SSA form:               [OK]            0.000183 seconds
Rewriting assignments:                  [OK]            0.001074 seconds
Verifying program safety:               [OK]            0.000118 seconds
Verifying range assertions:             [OK]            0.741093 seconds
Verifying range specification:          [OK]            0.038848 seconds
Rewriting value-preserved casting:      [OK]            0.000014 seconds
Verifying algebraic assertions:         [OK]            0.002981 seconds
Verifying algebraic specification:      [OK]            0.070303 seconds
Verification result:                    [OK]            0.858512 seconds
*)

proc main (uint64 x0, uint64 x1, uint64 x2, uint64 x3, uint64 x4, uint64 x5, uint64 y0, uint64 y1, uint64 y2, uint64 y3, uint64 y4, uint64 y5, uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 a5, uint64 b0, uint64 b1, uint64 b2, uint64 b3, uint64 b4, uint64 b5, uint64 m0, uint64 m1, uint64 m2, uint64 m3, uint64 m4, uint64 m5) =
{
  true
  &&
  and
	[
    	 limbs 64 [x0, x1, x2, x3, x4, x5] <u limbs 64 [m0, m1, m2, m3, m4, m5],
    	 limbs 64 [y0, y1, y2, y3, y4, y5] <u limbs 64 [m0, m1, m2, m3, m4, m5],
    	 limbs 64 [a0, a1, a2, a3, a4, a5] <u limbs 64 [m0, m1, m2, m3, m4, m5],
    	 limbs 64 [b0, b1, b2, b3, b4, b5] <u limbs 64 [m0, m1, m2, m3, m4, m5]
  	]
}

mov L0x7fffffffdb80 x0;
mov L0x7fffffffdb88 x1;
mov L0x7fffffffdb90 x2;
mov L0x7fffffffdb98 x3;
mov L0x7fffffffdba0 x4;
mov L0x7fffffffdba8 x5;
mov L0x7fffffffdbe0 y0;
mov L0x7fffffffdbe8 y1;
mov L0x7fffffffdbf0 y2;
mov L0x7fffffffdbf8 y3;
mov L0x7fffffffdc00 y4;
mov L0x7fffffffdc08 y5;

mov L0x7fffffffdb50 a0;
mov L0x7fffffffdb58 a1;
mov L0x7fffffffdb60 a2;
mov L0x7fffffffdb68 a3;
mov L0x7fffffffdb70 a4;
mov L0x7fffffffdb78 a5;
mov L0x7fffffffdbb0 b0;
mov L0x7fffffffdbb8 b1;
mov L0x7fffffffdbc0 b2;
mov L0x7fffffffdbc8 b3;
mov L0x7fffffffdbd0 b4;
mov L0x7fffffffdbd8 b5;

(* prime *)
mov L0x55555556e4c0 m0;
mov L0x55555556e4c8 m1;
mov L0x55555556e4d0 m2;
mov L0x55555556e4d8 m3;
mov L0x55555556e4e0 m4;
mov L0x55555556e4e8 m5;



(* #callq  0x555555566900 <add_mod_384x>           #! PC = 0x93824992242398 *)
#callq  0x555555566900 <add_mod_384x>           #! 0x93824992242398 = 0x93824992242398;
(* #callq  0x555555566860 <__add_mod_384>          #! PC = 0x93824992307495 *)
#callq  0x555555566860 <__add_mod_384>          #! 0x93824992307495 = 0x93824992307495;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffdb80; Value = 0x0000000000000000; PC = 0x93824992307300 *)
mov r8 L0x7fffffffdb80;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffdb88; Value = 0x0000000000000000; PC = 0x93824992307303 *)
mov r9 L0x7fffffffdb88;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffdb90; Value = 0x0000000000000000; PC = 0x93824992307307 *)
mov r10 L0x7fffffffdb90;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffdb98; Value = 0x0000000000000000; PC = 0x93824992307311 *)
mov r11 L0x7fffffffdb98;
(* mov    0x20(%rsi),%r12                          #! EA = L0x7fffffffdba0; Value = 0x0000000000000000; PC = 0x93824992307315 *)
mov r12 L0x7fffffffdba0;
(* mov    0x28(%rsi),%r13                          #! EA = L0x7fffffffdba8; Value = 0x0000000000000000; PC = 0x93824992307319 *)
mov r13 L0x7fffffffdba8;
(* add    (%rdx),%r8                               #! EA = L0x7fffffffdbe0; Value = 0x00007fffffffdc06; PC = 0x93824992307323 *)
adds carry r8 L0x7fffffffdbe0 r8;
(* adc    0x8(%rdx),%r9                            #! EA = L0x7fffffffdbe8; Value = 0x000055555556d84d; PC = 0x93824992307326 *)
adcs carry r9 L0x7fffffffdbe8 r9 carry;
(* adc    0x10(%rdx),%r10                          #! EA = L0x7fffffffdbf0; Value = 0x00007ffff7fb6fc8; PC = 0x93824992307330 *)
adcs carry r10 L0x7fffffffdbf0 r10 carry;
(* mov    %r8,%r14                                 #! PC = 0x93824992307334 *)
mov r14 r8;
(* adc    0x18(%rdx),%r11                          #! EA = L0x7fffffffdbf8; Value = 0x000055555556d800; PC = 0x93824992307337 *)
adcs carry r11 L0x7fffffffdbf8 r11 carry;
(* mov    %r9,%r15                                 #! PC = 0x93824992307341 *)
mov r15 r9;
(* adc    0x20(%rdx),%r12                          #! EA = L0x7fffffffdc00; Value = 0x0000000000000000; PC = 0x93824992307344 *)
adcs carry r12 L0x7fffffffdc00 r12 carry;
(* mov    %r10,%rax                                #! PC = 0x93824992307348 *)
mov rax r10;
(* adc    0x28(%rdx),%r13                          #! EA = L0x7fffffffdc08; Value = 0x0000555555555080; PC = 0x93824992307351 *)
adcs carry r13 L0x7fffffffdc08 r13 carry;
mov carryA carry;
(* mov    %r11,%rbx                                #! PC = 0x93824992307355 *)
mov rbx r11;

(* Explicitly define rdx here, rdx can be anything *)
mov rdx 0@uint64;

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
(* mov    (%rsp),%rsi                              #! EA = L0x7fffffffd9e0; Value = 0x00007fffffffdb50; PC = 0x93824992307500 *)
#mov rsi L0x7fffffffd9e0;
(* mov    0x8(%rsp),%rdx                           #! EA = L0x7fffffffd9e8; Value = 0x00007fffffffdbb0; PC = 0x93824992307504 *)
#mov rdx L0x7fffffffd9e8;
(* #callq  0x555555566860 <__add_mod_384>          #! PC = 0x93824992307513 *)
#callq  0x555555566860 <__add_mod_384>          #! 0x93824992307513 = 0x93824992307513;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffdb50; Value = 0x000009c0000009c0; PC = 0x93824992307300 *)
mov r8 L0x7fffffffdb50;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffdb58; Value = 0x000009c0000009c0; PC = 0x93824992307303 *)
mov r9 L0x7fffffffdb58;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffdb60; Value = 0x0000000000000000; PC = 0x93824992307307 *)
mov r10 L0x7fffffffdb60;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffdb68; Value = 0x0000004000000100; PC = 0x93824992307311 *)
mov r11 L0x7fffffffdb68;
(* mov    0x20(%rsi),%r12                          #! EA = L0x7fffffffdb70; Value = 0x0000004000000000; PC = 0x93824992307315 *)
mov r12 L0x7fffffffdb70;
(* mov    0x28(%rsi),%r13                          #! EA = L0x7fffffffdb78; Value = 0x0000040000000200; PC = 0x93824992307319 *)
mov r13 L0x7fffffffdb78;
(* add    (%rdx),%r8                               #! EA = L0x7fffffffdbb0; Value = 0x0000000000000000; PC = 0x93824992307323 *)
adds carry r8 L0x7fffffffdbb0 r8;
(* adc    0x8(%rdx),%r9                            #! EA = L0x7fffffffdbb8; Value = 0x0000000000000000; PC = 0x93824992307326 *)
adcs carry r9 L0x7fffffffdbb8 r9 carry;
(* adc    0x10(%rdx),%r10                          #! EA = L0x7fffffffdbc0; Value = 0x0000555555554040; PC = 0x93824992307330 *)
adcs carry r10 L0x7fffffffdbc0 r10 carry;
(* mov    %r8,%r14                                 #! PC = 0x93824992307334 *)
mov r14 r8;
(* adc    0x18(%rdx),%r11                          #! EA = L0x7fffffffdbc8; Value = 0x0000000000f0b5ff; PC = 0x93824992307337 *)
adcs carry r11 L0x7fffffffdbc8 r11 carry;
(* mov    %r9,%r15                                 #! PC = 0x93824992307341 *)
mov r15 r9;
(* adc    0x20(%rdx),%r12                          #! EA = L0x7fffffffdbd0; Value = 0x00000000000000c2; PC = 0x93824992307344 *)
adcs carry r12 L0x7fffffffdbd0 r12 carry;
(* mov    %r10,%rax                                #! PC = 0x93824992307348 *)
mov rax r10;
(* adc    0x28(%rdx),%r13                          #! EA = L0x7fffffffdbd8; Value = 0x00007fffffffdc07; PC = 0x93824992307351 *)
adcs carry r13 L0x7fffffffdbd8 r13 carry;
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
(* #repz retq                                      #! PC = 0x93824992307553 *)
#repz retq                                      #! 0x93824992307553 = 0x93824992307553;
(* #retq                                           #! PC = 0x93824992242405 *)
#retq                                           #! 0x93824992242405 = 0x93824992242405;

{
 and [ 
  eqmod
  	(limbs 64 [x0, x1, x2, x3, x4, x5] 
	 +
	 limbs 64 [y0, y1, y2, y3, y4, y5])

	(limbs 64 [L0x7fffffffdb20, L0x7fffffffdb28, L0x7fffffffdb30, L0x7fffffffdb38, L0x7fffffffdb40, L0x7fffffffdb48])
	
	(limbs 64 [m0, m1, m2, m3, m4, m5])
  ,
  eqmod
  	(limbs 64 [a0, a1, a2, a3, a4, a5] 
	 +
	 limbs 64 [b0, b1, b2, b3, b4, b5])

	(limbs 64 [L0x7fffffffdaf0, L0x7fffffffdaf8, L0x7fffffffdb00, L0x7fffffffdb08, L0x7fffffffdb10, L0x7fffffffdb18])
	
	(limbs 64 [m0, m1, m2, m3, m4, m5])
 ]
  &&
  true
}
