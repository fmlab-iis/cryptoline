(* quine: -v sub_fp2.cl
Parsing Cryptoline file:                [OK]            0.003602 seconds
Checking well-formedness:               [OK]            0.001052 seconds
Transforming to SSA form:               [OK]            0.000437 seconds
Normalizing specification:              [OK]            0.000442 seconds
Rewriting assignments:                  [OK]            0.001499 seconds
Verifying program safety:               [OK]            0.032777 seconds
Verifying range assertions:             [OK]            1.964575 seconds
Verifying range specification:          [OK]            4.603298 seconds
Rewriting value-preserved casting:      [OK]            0.000051 seconds
Verifying algebraic assertions:         [OK]            0.000499 seconds
Verifying algebraic specification:      [OK]            0.228542 seconds
Verification result:                    [OK]            6.837827 seconds
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


(* #callq  0x555555567120 <sub_mod_384x>           #! PC = 0x93824992242448 *)
#callq  0x555555567120 <sub_mod_384x>           #! 0x93824992242448 = 0x93824992242448;
(* #callq  0x555555567080 <__sub_mod_384>          #! PC = 0x93824992309575 *)
#callq  0x555555567080 <__sub_mod_384>          #! 0x93824992309575 = 0x93824992309575;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffdb80; Value = 0x0000000000000000; PC = 0x93824992309380 *)
mov r8 L0x7fffffffdb80;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffdb88; Value = 0x0000000000000000; PC = 0x93824992309383 *)
mov r9 L0x7fffffffdb88;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffdb90; Value = 0x0000000000000000; PC = 0x93824992309387 *)
mov r10 L0x7fffffffdb90;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffdb98; Value = 0x0000000000000000; PC = 0x93824992309391 *)
mov r11 L0x7fffffffdb98;
(* mov    0x20(%rsi),%r12                          #! EA = L0x7fffffffdba0; Value = 0x0000000000000000; PC = 0x93824992309395 *)
mov r12 L0x7fffffffdba0;
(* mov    0x28(%rsi),%r13                          #! EA = L0x7fffffffdba8; Value = 0x0000000000000000; PC = 0x93824992309399 *)
mov r13 L0x7fffffffdba8;
(* sub    (%rdx),%r8                               #! EA = L0x7fffffffdbe0; Value = 0x00007fffffffdc06; PC = 0x93824992309403 *)
subb carry r8 r8 L0x7fffffffdbe0;
(* mov    (%rcx),%r14                              #! EA = L0x55555556e4c0; Value = 0xb9feffffffffaaab; PC = 0x93824992309406 *)
mov r14 L0x55555556e4c0;
(* sbb    0x8(%rdx),%r9                            #! EA = L0x7fffffffdbe8; Value = 0x000055555556d84d; PC = 0x93824992309409 *)
sbbs carry r9 r9 L0x7fffffffdbe8 carry;
(* mov    0x8(%rcx),%r15                           #! EA = L0x55555556e4c8; Value = 0x1eabfffeb153ffff; PC = 0x93824992309413 *)
mov r15 L0x55555556e4c8;
(* sbb    0x10(%rdx),%r10                          #! EA = L0x7fffffffdbf0; Value = 0x00007ffff7fb6fc8; PC = 0x93824992309417 *)
sbbs carry r10 r10 L0x7fffffffdbf0 carry;
(* mov    0x10(%rcx),%rax                          #! EA = L0x55555556e4d0; Value = 0x6730d2a0f6b0f624; PC = 0x93824992309421 *)
mov rax L0x55555556e4d0;
(* sbb    0x18(%rdx),%r11                          #! EA = L0x7fffffffdbf8; Value = 0x000055555556d800; PC = 0x93824992309425 *)
sbbs carry r11 r11 L0x7fffffffdbf8 carry;
(* mov    0x18(%rcx),%rbx                          #! EA = L0x55555556e4d8; Value = 0x64774b84f38512bf; PC = 0x93824992309429 *)
mov rbx L0x55555556e4d8;
(* sbb    0x20(%rdx),%r12                          #! EA = L0x7fffffffdc00; Value = 0x0000000000000000; PC = 0x93824992309433 *)
sbbs carry r12 r12 L0x7fffffffdc00 carry;
(* mov    0x20(%rcx),%rbp                          #! EA = L0x55555556e4e0; Value = 0x4b1ba7b6434bacd7; PC = 0x93824992309437 *)
mov rbp L0x55555556e4e0;
(* sbb    0x28(%rdx),%r13                          #! EA = L0x7fffffffdc08; Value = 0x0000555555555080; PC = 0x93824992309441 *)
sbbs carry r13 r13 L0x7fffffffdc08 carry;
mov carryA carry;
(* mov    0x28(%rcx),%rsi                          #! EA = L0x55555556e4e8; Value = 0x1a0111ea397fe69a; PC = 0x93824992309445 *)
mov rsi L0x55555556e4e8;

(* Explicitly define rdx here, rdx can be anything *)
nondet rdx@uint64;

(* sbb    %rdx,%rdx                                #! PC = 0x93824992309449 *)
sbbs carry rdx rdx rdx carry;
(* and    %rdx,%r14                                #! PC = 0x93824992309452 *)
and r14@uint64 rdx r14;
(* and    %rdx,%r15                                #! PC = 0x93824992309455 *)
and r15@uint64 rdx r15;
(* and    %rdx,%rax                                #! PC = 0x93824992309458 *)
and rax@uint64 rdx rax;
(* and    %rdx,%rbx                                #! PC = 0x93824992309461 *)
and rbx@uint64 rdx rbx;
(* and    %rdx,%rbp                                #! PC = 0x93824992309464 *)
and rbp@uint64 rdx rbp;
(* and    %rdx,%rsi                                #! PC = 0x93824992309467 *)
and rsi@uint64 rdx rsi;

assert true && or [
		   and [(carryA = 0@1), (r14 = 0@64), (r15 = 0@64), (rax = 0@64), (rbx = 0@64), (rbp = 0@64), (rsi = 0@64)]
		       , 
		   and [(carryA = 1@1), (r14 = m0), (r15 = m1), (rax = m2), (rbx = m3), (rbp = m4), (rsi = m5)]
		];

assume (carryA * (limbs 64 [r14, r15, rax, rbx, rbp, rsi] - limbs 64 [m0, m1, m2, m3, m4, m5]) = 0) && true;
assume ((carryA - 1) * (limbs 64 [r14, r15, rax, rbx, rbp, rsi]) = 0) && true;

(* add    %r14,%r8                                 #! PC = 0x93824992309470 *)
adds carry r8 r14 r8;
(* adc    %r15,%r9                                 #! PC = 0x93824992309473 *)
adcs carry r9 r15 r9 carry;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffdb20; PC = 0x93824992309476 *)
mov L0x7fffffffdb20 r8;
(* adc    %rax,%r10                                #! PC = 0x93824992309479 *)
adcs carry r10 rax r10 carry;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffdb28; PC = 0x93824992309482 *)
mov L0x7fffffffdb28 r9;
(* adc    %rbx,%r11                                #! PC = 0x93824992309486 *)
adcs carry r11 rbx r11 carry;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffdb30; PC = 0x93824992309489 *)
mov L0x7fffffffdb30 r10;
(* adc    %rbp,%r12                                #! PC = 0x93824992309493 *)
adcs carry r12 rbp r12 carry;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffdb38; PC = 0x93824992309496 *)
mov L0x7fffffffdb38 r11;
(* adc    %rsi,%r13                                #! PC = 0x93824992309500 *)
adcs carry r13 rsi r13 carry;
mov carryB carry;
assert true && carryA = carryB;
assume carryA = carryB && true;
(* mov    %r12,0x20(%rdi)                          #! EA = L0x7fffffffdb40; PC = 0x93824992309503 *)
mov L0x7fffffffdb40 r12;
(* mov    %r13,0x28(%rdi)                          #! EA = L0x7fffffffdb48; PC = 0x93824992309507 *)
mov L0x7fffffffdb48 r13;
(* #repz retq                                      #! PC = 0x93824992309511 *)
#repz retq                                      #! 0x93824992309511 = 0x93824992309511;
(* #callq  0x555555567080 <__sub_mod_384>          #! PC = 0x93824992309593 *)
#callq  0x555555567080 <__sub_mod_384>          #! 0x93824992309593 = 0x93824992309593;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffdb50; Value = 0x000009c0000009c0; PC = 0x93824992309380 *)
mov r8 L0x7fffffffdb50;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffdb58; Value = 0x000009c0000009c0; PC = 0x93824992309383 *)
mov r9 L0x7fffffffdb58;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffdb60; Value = 0x0000000000000000; PC = 0x93824992309387 *)
mov r10 L0x7fffffffdb60;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffdb68; Value = 0x0000004000000100; PC = 0x93824992309391 *)
mov r11 L0x7fffffffdb68;
(* mov    0x20(%rsi),%r12                          #! EA = L0x7fffffffdb70; Value = 0x0000004000000000; PC = 0x93824992309395 *)
mov r12 L0x7fffffffdb70;
(* mov    0x28(%rsi),%r13                          #! EA = L0x7fffffffdb78; Value = 0x0000040000000200; PC = 0x93824992309399 *)
mov r13 L0x7fffffffdb78;
(* sub    (%rdx),%r8                               #! EA = L0x7fffffffdbb0; Value = 0x0000000000000000; PC = 0x93824992309403 *)
subb carry r8 r8 L0x7fffffffdbb0;
(* mov    (%rcx),%r14                              #! EA = L0x55555556e4c0; Value = 0xb9feffffffffaaab; PC = 0x93824992309406 *)
mov r14 L0x55555556e4c0;
(* sbb    0x8(%rdx),%r9                            #! EA = L0x7fffffffdbb8; Value = 0x0000000000000000; PC = 0x93824992309409 *)
sbbs carry r9 r9 L0x7fffffffdbb8 carry;
(* mov    0x8(%rcx),%r15                           #! EA = L0x55555556e4c8; Value = 0x1eabfffeb153ffff; PC = 0x93824992309413 *)
mov r15 L0x55555556e4c8;
(* sbb    0x10(%rdx),%r10                          #! EA = L0x7fffffffdbc0; Value = 0x0000555555554040; PC = 0x93824992309417 *)
sbbs carry r10 r10 L0x7fffffffdbc0 carry;
(* mov    0x10(%rcx),%rax                          #! EA = L0x55555556e4d0; Value = 0x6730d2a0f6b0f624; PC = 0x93824992309421 *)
mov rax L0x55555556e4d0;
(* sbb    0x18(%rdx),%r11                          #! EA = L0x7fffffffdbc8; Value = 0x0000000000f0b5ff; PC = 0x93824992309425 *)
sbbs carry r11 r11 L0x7fffffffdbc8 carry;
(* mov    0x18(%rcx),%rbx                          #! EA = L0x55555556e4d8; Value = 0x64774b84f38512bf; PC = 0x93824992309429 *)
mov rbx L0x55555556e4d8;
(* sbb    0x20(%rdx),%r12                          #! EA = L0x7fffffffdbd0; Value = 0x00000000000000c2; PC = 0x93824992309433 *)
sbbs carry r12 r12 L0x7fffffffdbd0 carry;
(* mov    0x20(%rcx),%rbp                          #! EA = L0x55555556e4e0; Value = 0x4b1ba7b6434bacd7; PC = 0x93824992309437 *)
mov rbp L0x55555556e4e0;
(* sbb    0x28(%rdx),%r13                          #! EA = L0x7fffffffdbd8; Value = 0x00007fffffffdc07; PC = 0x93824992309441 *)
sbbs carry r13 r13 L0x7fffffffdbd8 carry;
mov carryA carry;
(* mov    0x28(%rcx),%rsi                          #! EA = L0x55555556e4e8; Value = 0x1a0111ea397fe69a; PC = 0x93824992309445 *)
mov rsi L0x55555556e4e8;
(* sbb    %rdx,%rdx                                #! PC = 0x93824992309449 *)
sbbs carry rdx rdx rdx carry;
(* and    %rdx,%r14                                #! PC = 0x93824992309452 *)
and r14@uint64 rdx r14;
(* and    %rdx,%r15                                #! PC = 0x93824992309455 *)
and r15@uint64 rdx r15;
(* and    %rdx,%rax                                #! PC = 0x93824992309458 *)
and rax@uint64 rdx rax;
(* and    %rdx,%rbx                                #! PC = 0x93824992309461 *)
and rbx@uint64 rdx rbx;
(* and    %rdx,%rbp                                #! PC = 0x93824992309464 *)
and rbp@uint64 rdx rbp;
(* and    %rdx,%rsi                                #! PC = 0x93824992309467 *)
and rsi@uint64 rdx rsi;

assert true && or [
		   and [(carryA = 0@1), (r14 = 0@64), (r15 = 0@64), (rax = 0@64), (rbx = 0@64), (rbp = 0@64), (rsi = 0@64)]
		       , 
		   and [(carryA = 1@1), (r14 = m0), (r15 = m1), (rax = m2), (rbx = m3), (rbp = m4), (rsi = m5)]
		];

assume (carryA * (limbs 64 [r14, r15, rax, rbx, rbp, rsi] - limbs 64 [m0, m1, m2, m3, m4, m5]) = 0) && true;
assume ((carryA - 1) * (limbs 64 [r14, r15, rax, rbx, rbp, rsi]) = 0) && true;

(* add    %r14,%r8                                 #! PC = 0x93824992309470 *)
adds carry r8 r14 r8;
(* adc    %r15,%r9                                 #! PC = 0x93824992309473 *)
adcs carry r9 r15 r9 carry;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffdaf0; PC = 0x93824992309476 *)
mov L0x7fffffffdaf0 r8;
(* adc    %rax,%r10                                #! PC = 0x93824992309479 *)
adcs carry r10 rax r10 carry;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffdaf8; PC = 0x93824992309482 *)
mov L0x7fffffffdaf8 r9;
(* adc    %rbx,%r11                                #! PC = 0x93824992309486 *)
adcs carry r11 rbx r11 carry;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffdb00; PC = 0x93824992309489 *)
mov L0x7fffffffdb00 r10;
(* adc    %rbp,%r12                                #! PC = 0x93824992309493 *)
adcs carry r12 rbp r12 carry;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffdb08; PC = 0x93824992309496 *)
mov L0x7fffffffdb08 r11;
(* adc    %rsi,%r13                                #! PC = 0x93824992309500 *)
adcs carry r13 rsi r13 carry;
mov carryB carry;
assert true && carryA = carryB;
assume carryA = carryB && true;
(* mov    %r12,0x20(%rdi)                          #! EA = L0x7fffffffdb10; PC = 0x93824992309503 *)
mov L0x7fffffffdb10 r12;
(* mov    %r13,0x28(%rdi)                          #! EA = L0x7fffffffdb18; PC = 0x93824992309507 *)
mov L0x7fffffffdb18 r13;
(* #repz retq                                      #! PC = 0x93824992309511 *)
#repz retq                                      #! 0x93824992309511 = 0x93824992309511;
(* #repz retq                                      #! PC = 0x93824992309633 *)
#repz retq                                      #! 0x93824992309633 = 0x93824992309633;
(* #retq                                           #! PC = 0x93824992242455 *)
#retq                                           #! 0x93824992242455 = 0x93824992242455;

{
 and [ 
  eqmod
  	(limbs 64 [x0, x1, x2, x3, x4, x5] 
	 -
	 limbs 64 [y0, y1, y2, y3, y4, y5])

	(limbs 64 [L0x7fffffffdb20, L0x7fffffffdb28, L0x7fffffffdb30, L0x7fffffffdb38, L0x7fffffffdb40, L0x7fffffffdb48])
	
	(limbs 64 [m0, m1, m2, m3, m4, m5])
  ,
  eqmod
  	(limbs 64 [a0, a1, a2, a3, a4, a5] 
	 -
	 limbs 64 [b0, b1, b2, b3, b4, b5])

	(limbs 64 [L0x7fffffffdaf0, L0x7fffffffdaf8, L0x7fffffffdb00, L0x7fffffffdb08, L0x7fffffffdb10, L0x7fffffffdb18])
	
	(limbs 64 [m0, m1, m2, m3, m4, m5])
 ]
  &&
 and[
     limbs 64 [L0x7fffffffdb20, L0x7fffffffdb28, L0x7fffffffdb30, L0x7fffffffdb38, L0x7fffffffdb40, L0x7fffffffdb48] <u
     limbs 64 [m0, m1, m2, m3, m4, m5],
     limbs 64 [L0x7fffffffdaf0, L0x7fffffffdaf8, L0x7fffffffdb00, L0x7fffffffdb08, L0x7fffffffdb10, L0x7fffffffdb18] <u
     limbs 64 [m0, m1, m2, m3, m4, m5]
     ]
}
