(* quine: -v -isafety -jobs 10 -btor -no_carry_constraint -slicing lshift_fp2.cl
Parsing Cryptoline file:                [OK]            0.002901 seconds
Checking well-formedness:               [OK]            0.000701 seconds
Transforming to SSA form:               [OK]            0.000343 seconds
Rewriting assignments:                  [OK]            0.001869 seconds
Verifying program safety:               [OK]            0.000074 seconds
Verifying range specification:          [OK]            0.679853 seconds
Rewriting value-preserved casting:      [OK]            0.000009 seconds
Verifying algebraic specification:      [OK]            0.000141 seconds
Verification result:                    [OK]            0.686573 seconds
*)

proc main (uint64 x0, uint64 x1, uint64 x2, uint64 x3, uint64 x4, uint64 x5, uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 a5, uint64 m0, uint64 m1, uint64 m2, uint64 m3, uint64 m4, uint64 m5) =
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
     limbs 64 [a0, a1, a2, a3, a4, a5] <u limbs 64 [m0, m1, m2, m3, m4, m5]
  	]
}

mov L0x7fffffffdb50 x0;
mov L0x7fffffffdb58 x1;
mov L0x7fffffffdb60 x2;
mov L0x7fffffffdb68 x3;
mov L0x7fffffffdb70 x4;
mov L0x7fffffffdb78 x5;
mov L0x7fffffffdb80 a0;
mov L0x7fffffffdb88 a1;
mov L0x7fffffffdb90 a2;
mov L0x7fffffffdb98 a3;
mov L0x7fffffffdba0 a4;
mov L0x7fffffffdba8 a5;

(* prime *)
mov L0x55555556e4c0 m0;
mov L0x55555556e4c8 m1;
mov L0x55555556e4d0 m2;
mov L0x55555556e4d8 m3;
mov L0x55555556e4e0 m4;
mov L0x55555556e4e8 m5;


(* mov    (%rsi),%r8                               #! EA = L0x7fffffffdb50; Value = 0x000009c0000009c0; PC = 0x93824992307599 *)
mov r8 L0x7fffffffdb50;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffdb58; Value = 0x000009c0000009c0; PC = 0x93824992307602 *)
mov r9 L0x7fffffffdb58;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffdb60; Value = 0x0000000000000000; PC = 0x93824992307606 *)
mov r10 L0x7fffffffdb60;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffdb68; Value = 0x0000004000000100; PC = 0x93824992307610 *)
mov r11 L0x7fffffffdb68;
(* mov    0x20(%rsi),%r12                          #! EA = L0x7fffffffdb70; Value = 0x0000004000000000; PC = 0x93824992307614 *)
mov r12 L0x7fffffffdb70;
(* mov    0x28(%rsi),%r13                          #! EA = L0x7fffffffdb78; Value = 0x0000040000000200; PC = 0x93824992307618 *)
mov r13 L0x7fffffffdb78;
(* add    %r8,%r8                                  #! PC = 0x93824992307622 *)
adds carry r8 r8 r8;
(* adc    %r9,%r9                                  #! PC = 0x93824992307625 *)
adcs carry r9 r9 r9 carry;
(* adc    %r10,%r10                                #! PC = 0x93824992307628 *)
adcs carry r10 r10 r10 carry;
(* mov    %r8,%r14                                 #! PC = 0x93824992307631 *)
mov r14 r8;
(* adc    %r11,%r11                                #! PC = 0x93824992307634 *)
adcs carry r11 r11 r11 carry;
(* mov    %r9,%r15                                 #! PC = 0x93824992307637 *)
mov r15 r9;
(* adc    %r12,%r12                                #! PC = 0x93824992307640 *)
adcs carry r12 r12 r12 carry;
(* mov    %r10,%rax                                #! PC = 0x93824992307643 *)
mov rax r10;
(* adc    %r13,%r13                                #! PC = 0x93824992307646 *)
adcs carry r13 r13 r13 carry;
(* mov    %r11,%rbx                                #! PC = 0x93824992307649 *)
mov rbx r11;

(* Explicitly define rdi here, rdi can be anything *)
nondet rdi@uint64;

(* sbb    %rdi,%rdi                                #! PC = 0x93824992307652 *)
sbbs carry rdi rdi rdi carry;
(* sub    (%rcx),%r8                               #! EA = L0x55555556e4c0; Value = 0xb9feffffffffaaab; PC = 0x93824992307655 *)
subb carry r8 r8 L0x55555556e4c0;
(* sbb    0x8(%rcx),%r9                            #! EA = L0x55555556e4c8; Value = 0x1eabfffeb153ffff; PC = 0x93824992307658 *)
sbbs carry r9 r9 L0x55555556e4c8 carry;
(* mov    %r12,%rbp                                #! PC = 0x93824992307662 *)
mov rbp r12;
(* sbb    0x10(%rcx),%r10                          #! EA = L0x55555556e4d0; Value = 0x6730d2a0f6b0f624; PC = 0x93824992307665 *)
sbbs carry r10 r10 L0x55555556e4d0 carry;
(* sbb    0x18(%rcx),%r11                          #! EA = L0x55555556e4d8; Value = 0x64774b84f38512bf; PC = 0x93824992307669 *)
sbbs carry r11 r11 L0x55555556e4d8 carry;
(* sbb    0x20(%rcx),%r12                          #! EA = L0x55555556e4e0; Value = 0x4b1ba7b6434bacd7; PC = 0x93824992307673 *)
sbbs carry r12 r12 L0x55555556e4e0 carry;
(* mov    %r13,%rsi                                #! PC = 0x93824992307677 *)
mov rsi r13;
(* sbb    0x28(%rcx),%r13                          #! EA = L0x55555556e4e8; Value = 0x1a0111ea397fe69a; PC = 0x93824992307680 *)
sbbs carry r13 r13 L0x55555556e4e8 carry;
(* sbb    $0x0,%rdi                                #! PC = 0x93824992307684 *)
sbbs carry rdi rdi 0@uint64 carry;
(* mov    (%rsp),%rdi                              #! EA = L0x7fffffffd9f0; Value = 0x00007fffffffdaf0; PC = 0x93824992307688 *)
#mov rdi L0x7fffffffd9f0;
(* cmovb  %r14,%r8                                 #! PC = 0x93824992307692 *)
cmov r8 carry r14 r8;
(* cmovb  %r15,%r9                                 #! PC = 0x93824992307696 *)
cmov r9 carry r15 r9;
(* cmovb  %rax,%r10                                #! PC = 0x93824992307700 *)
cmov r10 carry rax r10;
(* cmovb  %rbx,%r11                                #! PC = 0x93824992307704 *)
cmov r11 carry rbx r11;
(* cmovb  %rbp,%r12                                #! PC = 0x93824992307708 *)
cmov r12 carry rbp r12;
(* cmovb  %rsi,%r13                                #! PC = 0x93824992307712 *)
cmov r13 carry rsi r13;
(* #dec    %edx                                     #! PC = 0x93824992307716 *)
#dec    %edx                                     #! 0x93824992307716 = 0x93824992307716;
(* #jne    0x5555555669a6 <lshift_mod_384+38>      #! PC = 0x93824992307718 *)
#jne    0x5555555669a6 <lshift_mod_384+38>      #! 0x93824992307718 = 0x93824992307718;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffdaf0; PC = 0x93824992307720 *)
mov L0x7fffffffdaf0 r8;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffdaf8; PC = 0x93824992307723 *)
mov L0x7fffffffdaf8 r9;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffdb00; PC = 0x93824992307727 *)
mov L0x7fffffffdb00 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffdb08; PC = 0x93824992307731 *)
mov L0x7fffffffdb08 r11;
(* mov    %r12,0x20(%rdi)                          #! EA = L0x7fffffffdb10; PC = 0x93824992307735 *)
mov L0x7fffffffdb10 r12;
(* mov    %r13,0x28(%rdi)                          #! EA = L0x7fffffffdb18; PC = 0x93824992307739 *)
mov L0x7fffffffdb18 r13;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffdb80; Value = 0x0000000000000000; PC = 0x93824992307599 *)
mov r8 L0x7fffffffdb80;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffdb88; Value = 0x0000000000000000; PC = 0x93824992307602 *)
mov r9 L0x7fffffffdb88;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffdb90; Value = 0x0000000000000000; PC = 0x93824992307606 *)
mov r10 L0x7fffffffdb90;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffdb98; Value = 0x0000000000000000; PC = 0x93824992307610 *)
mov r11 L0x7fffffffdb98;
(* mov    0x20(%rsi),%r12                          #! EA = L0x7fffffffdba0; Value = 0x0000000000000000; PC = 0x93824992307614 *)
mov r12 L0x7fffffffdba0;
(* mov    0x28(%rsi),%r13                          #! EA = L0x7fffffffdba8; Value = 0x0000000000000000; PC = 0x93824992307618 *)
mov r13 L0x7fffffffdba8;
(* add    %r8,%r8                                  #! PC = 0x93824992307622 *)
adds carry r8 r8 r8;
(* adc    %r9,%r9                                  #! PC = 0x93824992307625 *)
adcs carry r9 r9 r9 carry;
(* adc    %r10,%r10                                #! PC = 0x93824992307628 *)
adcs carry r10 r10 r10 carry;
(* mov    %r8,%r14                                 #! PC = 0x93824992307631 *)
mov r14 r8;
(* adc    %r11,%r11                                #! PC = 0x93824992307634 *)
adcs carry r11 r11 r11 carry;
(* mov    %r9,%r15                                 #! PC = 0x93824992307637 *)
mov r15 r9;
(* adc    %r12,%r12                                #! PC = 0x93824992307640 *)
adcs carry r12 r12 r12 carry;
(* mov    %r10,%rax                                #! PC = 0x93824992307643 *)
mov rax r10;
(* adc    %r13,%r13                                #! PC = 0x93824992307646 *)
adcs carry r13 r13 r13 carry;
(* mov    %r11,%rbx                                #! PC = 0x93824992307649 *)
mov rbx r11;
(* sbb    %rdi,%rdi                                #! PC = 0x93824992307652 *)
sbbs carry rdi rdi rdi carry;
(* sub    (%rcx),%r8                               #! EA = L0x55555556e4c0; Value = 0xb9feffffffffaaab; PC = 0x93824992307655 *)
subb carry r8 r8 L0x55555556e4c0;
(* sbb    0x8(%rcx),%r9                            #! EA = L0x55555556e4c8; Value = 0x1eabfffeb153ffff; PC = 0x93824992307658 *)
sbbs carry r9 r9 L0x55555556e4c8 carry;
(* mov    %r12,%rbp                                #! PC = 0x93824992307662 *)
mov rbp r12;
(* sbb    0x10(%rcx),%r10                          #! EA = L0x55555556e4d0; Value = 0x6730d2a0f6b0f624; PC = 0x93824992307665 *)
sbbs carry r10 r10 L0x55555556e4d0 carry;
(* sbb    0x18(%rcx),%r11                          #! EA = L0x55555556e4d8; Value = 0x64774b84f38512bf; PC = 0x93824992307669 *)
sbbs carry r11 r11 L0x55555556e4d8 carry;
(* sbb    0x20(%rcx),%r12                          #! EA = L0x55555556e4e0; Value = 0x4b1ba7b6434bacd7; PC = 0x93824992307673 *)
sbbs carry r12 r12 L0x55555556e4e0 carry;
(* mov    %r13,%rsi                                #! PC = 0x93824992307677 *)
mov rsi r13;
(* sbb    0x28(%rcx),%r13                          #! EA = L0x55555556e4e8; Value = 0x1a0111ea397fe69a; PC = 0x93824992307680 *)
sbbs carry r13 r13 L0x55555556e4e8 carry;
(* sbb    $0x0,%rdi                                #! PC = 0x93824992307684 *)
sbbs carry rdi rdi 0@uint64 carry;
(* mov    (%rsp),%rdi                              #! EA = L0x7fffffffd9f0; Value = 0x00007fffffffdb20; PC = 0x93824992307688 *)
#mov rdi L0x7fffffffd9f0;
(* cmovb  %r14,%r8                                 #! PC = 0x93824992307692 *)
cmov r8 carry r14 r8;
(* cmovb  %r15,%r9                                 #! PC = 0x93824992307696 *)
cmov r9 carry r15 r9;
(* cmovb  %rax,%r10                                #! PC = 0x93824992307700 *)
cmov r10 carry rax r10;
(* cmovb  %rbx,%r11                                #! PC = 0x93824992307704 *)
cmov r11 carry rbx r11;
(* cmovb  %rbp,%r12                                #! PC = 0x93824992307708 *)
cmov r12 carry rbp r12;
(* cmovb  %rsi,%r13                                #! PC = 0x93824992307712 *)
cmov r13 carry rsi r13;
(* #dec    %edx                                     #! PC = 0x93824992307716 *)
#dec    %edx                                     #! 0x93824992307716 = 0x93824992307716;
(* #jne    0x5555555669a6 <lshift_mod_384+38>      #! PC = 0x93824992307718 *)
#jne    0x5555555669a6 <lshift_mod_384+38>      #! 0x93824992307718 = 0x93824992307718;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffdb20; PC = 0x93824992307720 *)
mov L0x7fffffffdb20 r8;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffdb28; PC = 0x93824992307723 *)
mov L0x7fffffffdb28 r9;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffdb30; PC = 0x93824992307727 *)
mov L0x7fffffffdb30 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffdb38; PC = 0x93824992307731 *)
mov L0x7fffffffdb38 r11;
(* mov    %r12,0x20(%rdi)                          #! EA = L0x7fffffffdb40; PC = 0x93824992307735 *)
mov L0x7fffffffdb40 r12;
(* mov    %r13,0x28(%rdi)                          #! EA = L0x7fffffffdb48; PC = 0x93824992307739 *)
mov L0x7fffffffdb48 r13;
(* #retq                                           #! PC = 0x93824992242630 *)
#retq                                           #! 0x93824992242630 = 0x93824992242630;

mov c0 L0x7fffffffdaf0;
mov c1 L0x7fffffffdaf8;
mov c2 L0x7fffffffdb00;
mov c3 L0x7fffffffdb08;
mov c4 L0x7fffffffdb10;
mov c5 L0x7fffffffdb18;

mov d0 L0x7fffffffdb20;
mov d1 L0x7fffffffdb28;
mov d2 L0x7fffffffdb30;
mov d3 L0x7fffffffdb38;
mov d4 L0x7fffffffdb40;
mov d5 L0x7fffffffdb48;


{
  true
  &&
  and[
  	eqmod
  		((limbs 64 [x0, x1, x2, x3, x4, x5]) * 2@384)
		(limbs 64 [c0, c1, c2, c3, c4, c5])
		(limbs 64 [m0, m1, m2, m3, m4, m5])
	,
		(limbs 64 [c0, c1, c2, c3, c4, c5]) <u (limbs 64 [m0, m1, m2, m3, m4, m5])
  	,
  	eqmod
  		((limbs 64 [a0, a1, a2, a3, a4, a5]) * 2@384)
		(limbs 64 [d0, d1, d2, d3, d4, d5])
		(limbs 64 [m0, m1, m2, m3, m4, m5])
	,
		(limbs 64 [d0, d1, d2, d3, d4, d5]) <u (limbs 64 [m0, m1, m2, m3, m4, m5])
  ]
}

