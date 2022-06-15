(* quine: -v -jobs 10 sqr_fp2.cl
Parsing Cryptoline file:                [OK]            0.018660 seconds
Checking well-formedness:               [OK]            0.002071 seconds
Transforming to SSA form:               [OK]            0.001129 seconds
Normalizing specification:              [OK]            0.001959 seconds
Rewriting assignments:                  [OK]            0.002688 seconds
Verifying program safety:               [OK]            0.170586 seconds
Verifying range assertions:             [OK]            361.037916 seconds
Verifying range specification:          [OK]            14.182793 seconds
Rewriting value-preserved casting:      [OK]            0.001402 seconds
Verifying algebraic assertions:         [OK]            21.489470 seconds
Verifying algebraic specification:      [OK]            79.375154 seconds
Verification result:                    [OK]            476.285170 seconds
*)
proc main (uint64 x0, uint64 x1, uint64 x2, uint64 x3, uint64 x4, uint64 x5, uint64 y0, uint64 y1, uint64 y2, uint64 y3, uint64 y4, uint64 y5, uint64 m0, uint64 m1, uint64 m2, uint64 m3, uint64 m4, uint64 m5, uint64 n0, uint64 I) =
{
  and[
	  m0 = 0xb9feffffffffaaab,
      m1 = 0x1eabfffeb153ffff,
      m2 = 0x6730d2a0f6b0f624,
      m3 = 0x64774b84f38512bf,
      m4 = 0x4b1ba7b6434bacd7,
      m5 = 0x1a0111ea397fe69a,
      eqmod m0 1 2,
      eqmod (1 + m0 * n0) 0 (2**64)
    ]
  &&
  and[
	  m0 = 0xb9feffffffffaaab@64,
	  m1 = 0x1eabfffeb153ffff@64,
	  m2 = 0x6730d2a0f6b0f624@64,
	  m3 = 0x64774b84f38512bf@64,
	  m4 = 0x4b1ba7b6434bacd7@64,
	  m5 = 0x1a0111ea397fe69a@64,
	  eqmod m0 (1@64) (2@64),
      add 1@64 (mul m0 n0) = 0@64,
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

mov L0x7fffffffd980 n0;

(* prime *)
mov L0x55555556e4c0 m0;
mov L0x55555556e4c8 m1;
mov L0x55555556e4d0 m2;
mov L0x55555556e4d8 m3;
mov L0x55555556e4e0 m4;
mov L0x55555556e4e8 m5;

nondet rdx@uint64;
nondet L0x7fffffffd990@uint64;

(* #callq  0x5555555678a0 <__add_mod_384>          #! PC = 0x93824992312111 *)
#callq  0x5555555678a0 <__add_mod_384>          #! 0x93824992312111 = 0x93824992312111;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffdb50; Value = 0x000009c0000009c0; PC = 0x93824992311460 *)
mov r8 L0x7fffffffdb50;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffdb58; Value = 0x000009c0000009c0; PC = 0x93824992311463 *)
mov r9 L0x7fffffffdb58;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffdb60; Value = 0x0000000000000000; PC = 0x93824992311467 *)
mov r10 L0x7fffffffdb60;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffdb68; Value = 0x0000004000000100; PC = 0x93824992311471 *)
mov r11 L0x7fffffffdb68;
(* mov    0x20(%rsi),%r12                          #! EA = L0x7fffffffdb70; Value = 0x0000004000000000; PC = 0x93824992311475 *)
mov r12 L0x7fffffffdb70;
(* mov    0x28(%rsi),%r13                          #! EA = L0x7fffffffdb78; Value = 0x0000040000000200; PC = 0x93824992311479 *)
mov r13 L0x7fffffffdb78;
(* add    (%rdx),%r8                               #! EA = L0x7fffffffdb80; Value = 0x0000000000000000; PC = 0x93824992311483 *)
adds carry r8 L0x7fffffffdb80 r8;
(* adc    0x8(%rdx),%r9                            #! EA = L0x7fffffffdb88; Value = 0x0000000000000000; PC = 0x93824992311486 *)
adcs carry r9 L0x7fffffffdb88 r9 carry;
(* adc    0x10(%rdx),%r10                          #! EA = L0x7fffffffdb90; Value = 0x0000000000000000; PC = 0x93824992311490 *)
adcs carry r10 L0x7fffffffdb90 r10 carry;
(* mov    %r8,%r14                                 #! PC = 0x93824992311494 *)
mov r14 r8;
(* adc    0x18(%rdx),%r11                          #! EA = L0x7fffffffdb98; Value = 0x0000000000000000; PC = 0x93824992311497 *)
adcs carry r11 L0x7fffffffdb98 r11 carry;
(* mov    %r9,%r15                                 #! PC = 0x93824992311501 *)
mov r15 r9;
(* adc    0x20(%rdx),%r12                          #! EA = L0x7fffffffdba0; Value = 0x0000000000000000; PC = 0x93824992311504 *)
adcs carry r12 L0x7fffffffdba0 r12 carry;
(* mov    %r10,%rax                                #! PC = 0x93824992311508 *)
mov rax r10;
(* adc    0x28(%rdx),%r13                          #! EA = L0x7fffffffdba8; Value = 0x0000000000000000; PC = 0x93824992311511 *)
adcs carry r13 L0x7fffffffdba8 r13 carry;
(* mov    %r11,%rbx                                #! PC = 0x93824992311515 *)
mov rbx r11;
(* sbb    %rdx,%rdx                                #! PC = 0x93824992311518 *)
sbbs carry rdx rdx rdx carry;
(* sub    (%rcx),%r8                               #! EA = L0x55555556e4c0; Value = 0xb9feffffffffaaab; PC = 0x93824992311521 *)
subb carry r8 r8 L0x55555556e4c0;
(* sbb    0x8(%rcx),%r9                            #! EA = L0x55555556e4c8; Value = 0x1eabfffeb153ffff; PC = 0x93824992311524 *)
sbbs carry r9 r9 L0x55555556e4c8 carry;
(* mov    %r12,%rbp                                #! PC = 0x93824992311528 *)
mov rbp r12;
(* sbb    0x10(%rcx),%r10                          #! EA = L0x55555556e4d0; Value = 0x6730d2a0f6b0f624; PC = 0x93824992311531 *)
sbbs carry r10 r10 L0x55555556e4d0 carry;
(* sbb    0x18(%rcx),%r11                          #! EA = L0x55555556e4d8; Value = 0x64774b84f38512bf; PC = 0x93824992311535 *)
sbbs carry r11 r11 L0x55555556e4d8 carry;
(* sbb    0x20(%rcx),%r12                          #! EA = L0x55555556e4e0; Value = 0x4b1ba7b6434bacd7; PC = 0x93824992311539 *)
sbbs carry r12 r12 L0x55555556e4e0 carry;
(* mov    %r13,%rsi                                #! PC = 0x93824992311543 *)
mov rsi r13;
(* sbb    0x28(%rcx),%r13                          #! EA = L0x55555556e4e8; Value = 0x1a0111ea397fe69a; PC = 0x93824992311546 *)
sbbs carry r13 r13 L0x55555556e4e8 carry;
(* sbb    $0x0,%rdx                                #! PC = 0x93824992311550 *)
sbbs carry rdx rdx 0@uint64 carry;
(* cmovb  %r14,%r8                                 #! PC = 0x93824992311554 *)
cmov r8 carry r14 r8;
(* cmovb  %r15,%r9                                 #! PC = 0x93824992311558 *)
cmov r9 carry r15 r9;
(* cmovb  %rax,%r10                                #! PC = 0x93824992311562 *)
cmov r10 carry rax r10;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffd9a0; PC = 0x93824992311566 *)
mov L0x7fffffffd9a0 r8;
(* cmovb  %rbx,%r11                                #! PC = 0x93824992311569 *)
cmov r11 carry rbx r11;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffd9a8; PC = 0x93824992311573 *)
mov L0x7fffffffd9a8 r9;
(* cmovb  %rbp,%r12                                #! PC = 0x93824992311577 *)
cmov r12 carry rbp r12;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffd9b0; PC = 0x93824992311581 *)
mov L0x7fffffffd9b0 r10;
(* cmovb  %rsi,%r13                                #! PC = 0x93824992311585 *)
cmov r13 carry rsi r13;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffd9b8; PC = 0x93824992311589 *)
mov L0x7fffffffd9b8 r11;
(* mov    %r12,0x20(%rdi)                          #! EA = L0x7fffffffd9c0; PC = 0x93824992311593 *)
mov L0x7fffffffd9c0 r12;
(* mov    %r13,0x28(%rdi)                          #! EA = L0x7fffffffd9c8; PC = 0x93824992311597 *)
mov L0x7fffffffd9c8 r13;
(* #repz retq                                      #! PC = 0x93824992311601 *)
#repz retq                                      #! 0x93824992311601 = 0x93824992311601;

mov c0 L0x7fffffffd9a0;
mov c1 L0x7fffffffd9a8;
mov c2 L0x7fffffffd9b0;
mov c3 L0x7fffffffd9b8;
mov c4 L0x7fffffffd9c0;
mov c5 L0x7fffffffd9c8;

assert true && and[eqmod
                   limbs 64 [c0, c1, c2, c3, c4, c5]
                   limbs 64 [x0, x1, x2, x3, x4, x5] + limbs 64 [y0, y1, y2, y3, y4, y5]
                   limbs 64 [m0, m1, m2, m3, m4, m5],
                   limbs 64 [c0, c1, c2, c3, c4, c5] <u limbs 64 [m0, m1, m2, m3, m4, m5]
                   ];
assume and[eqmod
           limbs 64 [c0, c1, c2, c3, c4, c5]
           limbs 64 [x0, x1, x2, x3, x4, x5] + limbs 64 [y0, y1, y2, y3, y4, y5]
           limbs 64 [m0, m1, m2, m3, m4, m5]
           ] && true;

(* mov    0x10(%rsp),%rsi                          #! EA = L0x7fffffffd990; Value = 0x00007fffffffdb50; PC = 0x93824992312116 *)
mov rsi L0x7fffffffd990;
(* #lea    0x30(%rsi),%rdx                          #! PC = 0x93824992312121 *)
#lea    %%EA,%%rdx                          #! 0x93824992312121 = 0x93824992312121;
(* #lea    0x50(%rsp),%rdi                          #! PC = 0x93824992312125 *)
#lea    %%EA,%%rdi                          #! 0x93824992312125 = 0x93824992312125;
(* #callq  0x555555567940 <__sub_mod_384>          #! PC = 0x93824992312130 *)
#callq  0x555555567940 <__sub_mod_384>          #! 0x93824992312130 = 0x93824992312130;
(* #endbr64                                         #! PC = 0x93824992311616 *)
#endbr64                                         #! 0x93824992311616 = 0x93824992311616;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffdb50; Value = 0x000009c0000009c0; PC = 0x93824992311620 *)
mov r8 L0x7fffffffdb50;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffdb58; Value = 0x000009c0000009c0; PC = 0x93824992311623 *)
mov r9 L0x7fffffffdb58;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffdb60; Value = 0x0000000000000000; PC = 0x93824992311627 *)
mov r10 L0x7fffffffdb60;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffdb68; Value = 0x0000004000000100; PC = 0x93824992311631 *)
mov r11 L0x7fffffffdb68;
(* mov    0x20(%rsi),%r12                          #! EA = L0x7fffffffdb70; Value = 0x0000004000000000; PC = 0x93824992311635 *)
mov r12 L0x7fffffffdb70;
(* mov    0x28(%rsi),%r13                          #! EA = L0x7fffffffdb78; Value = 0x0000040000000200; PC = 0x93824992311639 *)
mov r13 L0x7fffffffdb78;
(* sub    (%rdx),%r8                               #! EA = L0x7fffffffdb80; Value = 0x0000000000000000; PC = 0x93824992311643 *)
subb carry r8 r8 L0x7fffffffdb80;
(* mov    (%rcx),%r14                              #! EA = L0x55555556e4c0; Value = 0xb9feffffffffaaab; PC = 0x93824992311646 *)
mov r14 L0x55555556e4c0;
(* sbb    0x8(%rdx),%r9                            #! EA = L0x7fffffffdb88; Value = 0x0000000000000000; PC = 0x93824992311649 *)
sbbs carry r9 r9 L0x7fffffffdb88 carry;
(* mov    0x8(%rcx),%r15                           #! EA = L0x55555556e4c8; Value = 0x1eabfffeb153ffff; PC = 0x93824992311653 *)
mov r15 L0x55555556e4c8;
(* sbb    0x10(%rdx),%r10                          #! EA = L0x7fffffffdb90; Value = 0x0000000000000000; PC = 0x93824992311657 *)
sbbs carry r10 r10 L0x7fffffffdb90 carry;
(* mov    0x10(%rcx),%rax                          #! EA = L0x55555556e4d0; Value = 0x6730d2a0f6b0f624; PC = 0x93824992311661 *)
mov rax L0x55555556e4d0;
(* sbb    0x18(%rdx),%r11                          #! EA = L0x7fffffffdb98; Value = 0x0000000000000000; PC = 0x93824992311665 *)
sbbs carry r11 r11 L0x7fffffffdb98 carry;
(* mov    0x18(%rcx),%rbx                          #! EA = L0x55555556e4d8; Value = 0x64774b84f38512bf; PC = 0x93824992311669 *)
mov rbx L0x55555556e4d8;
(* sbb    0x20(%rdx),%r12                          #! EA = L0x7fffffffdba0; Value = 0x0000000000000000; PC = 0x93824992311673 *)
sbbs carry r12 r12 L0x7fffffffdba0 carry;
(* mov    0x20(%rcx),%rbp                          #! EA = L0x55555556e4e0; Value = 0x4b1ba7b6434bacd7; PC = 0x93824992311677 *)
mov rbp L0x55555556e4e0;
(* sbb    0x28(%rdx),%r13                          #! EA = L0x7fffffffdba8; Value = 0x0000000000000000; PC = 0x93824992311681 *)
sbbs carry r13 r13 L0x7fffffffdba8 carry;
mov carryA carry;
(* mov    0x28(%rcx),%rsi                          #! EA = L0x55555556e4e8; Value = 0x1a0111ea397fe69a; PC = 0x93824992311685 *)
mov rsi L0x55555556e4e8;
(* sbb    %rdx,%rdx                                #! PC = 0x93824992311689 *)
sbbs carry rdx rdx rdx carry;
(* and    %rdx,%r14                                #! PC = 0x93824992311692 *)
and r14@uint64 rdx r14;
(* and    %rdx,%r15                                #! PC = 0x93824992311695 *)
and r15@uint64 rdx r15;
(* and    %rdx,%rax                                #! PC = 0x93824992311698 *)
and rax@uint64 rdx rax;
(* and    %rdx,%rbx                                #! PC = 0x93824992311701 *)
and rbx@uint64 rdx rbx;
(* and    %rdx,%rbp                                #! PC = 0x93824992311704 *)
and rbp@uint64 rdx rbp;
(* and    %rdx,%rsi                                #! PC = 0x93824992311707 *)
and rsi@uint64 rdx rsi;

assert true && or [
		   and [(carryA = 0@1), (r14 = 0@64), (r15 = 0@64), (rax = 0@64), (rbx = 0@64), (rbp = 0@64), (rsi = 0@64)]
		       , 
		   and [(carryA = 1@1), (r14 = m0), (r15 = m1), (rax = m2), (rbx = m3), (rbp = m4), (rsi = m5)]
		];

assume (carryA * (limbs 64 [r14, r15, rax, rbx, rbp, rsi] - limbs 64 [m0, m1, m2, m3, m4, m5]) = 0) && true;
assume ((carryA - 1) * (limbs 64 [r14, r15, rax, rbx, rbp, rsi]) = 0) && true;

(* add    %r14,%r8                                 #! PC = 0x93824992311710 *)
adds carry r8 r14 r8;
(* adc    %r15,%r9                                 #! PC = 0x93824992311713 *)
adcs carry r9 r15 r9 carry;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffd9d0; PC = 0x93824992311716 *)
mov L0x7fffffffd9d0 r8;
(* adc    %rax,%r10                                #! PC = 0x93824992311719 *)
adcs carry r10 rax r10 carry;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffd9d8; PC = 0x93824992311722 *)
mov L0x7fffffffd9d8 r9;
(* adc    %rbx,%r11                                #! PC = 0x93824992311726 *)
adcs carry r11 rbx r11 carry;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffd9e0; PC = 0x93824992311729 *)
mov L0x7fffffffd9e0 r10;
(* adc    %rbp,%r12                                #! PC = 0x93824992311733 *)
adcs carry r12 rbp r12 carry;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffd9e8; PC = 0x93824992311736 *)
mov L0x7fffffffd9e8 r11;
(* adc    %rsi,%r13                                #! PC = 0x93824992311740 *)
adcs carry r13 rsi r13 carry;
mov carryB carry;
assert true && carryA = carryB;
assume carryA = carryB && true;
(* mov    %r12,0x20(%rdi)                          #! EA = L0x7fffffffd9f0; PC = 0x93824992311743 *)
mov L0x7fffffffd9f0 r12;
(* mov    %r13,0x28(%rdi)                          #! EA = L0x7fffffffd9f8; PC = 0x93824992311747 *)
mov L0x7fffffffd9f8 r13;


mov d0 L0x7fffffffd9d0;
mov d1 L0x7fffffffd9d8;
mov d2 L0x7fffffffd9e0;
mov d3 L0x7fffffffd9e8;
mov d4 L0x7fffffffd9f0;
mov d5 L0x7fffffffd9f8;

assert and[eqmod
           limbs 64 [d0, d1, d2, d3, d4, d5]
           limbs 64 [x0, x1, x2, x3, x4, x5] - limbs 64 [y0, y1, y2, y3, y4, y5]
           limbs 64 [m0, m1, m2, m3, m4, m5]
           ] &&
       limbs 64 [d0, d1, d2, d3, d4, d5] <u limbs 64 [m0, m1, m2, m3, m4, m5];

assume true &&
       and[eqmod
           limbs 64 [d0, d1, d2, d3, d4, d5]
           limbs 64 [x0, x1, x2, x3, x4, x5] - limbs 64 [y0, y1, y2, y3, y4, y5]
           limbs 64 [m0, m1, m2, m3, m4, m5]];

cut and[m0 = 0xb9feffffffffaaab,
        m1 = 0x1eabfffeb153ffff,
        m2 = 0x6730d2a0f6b0f624,
        m3 = 0x64774b84f38512bf,
        m4 = 0x4b1ba7b6434bacd7,
        m5 = 0x1a0111ea397fe69a,
        eqmod (1 + m0 * n0) 0 (2**64),

        L0x7fffffffdb50 = x0, L0x7fffffffdb58 = x1, L0x7fffffffdb60 = x2,
        L0x7fffffffdb68 = x3, L0x7fffffffdb70 = x4, L0x7fffffffdb78 = x5,
 
        L0x7fffffffdb80 = y0, L0x7fffffffdb88 = y1, L0x7fffffffdb90 = y2,
        L0x7fffffffdb98 = y3, L0x7fffffffdba0 = y4, L0x7fffffffdba8 = y5,

        L0x55555556e4c0 = m0, L0x55555556e4c8 = m1, L0x55555556e4d0 = m2,
        L0x55555556e4d8 = m3, L0x55555556e4e0 = m4, L0x55555556e4e8 = m5,

        L0x7fffffffd980 = n0,
        
        eqmod
        limbs 64 [c0, c1, c2, c3, c4, c5]
        limbs 64 [x0, x1, x2, x3, x4, x5] + limbs 64 [y0, y1, y2, y3, y4, y5]
        limbs 64 [m0, m1, m2, m3, m4, m5],
        eqmod
        limbs 64 [d0, d1, d2, d3, d4, d5]
        limbs 64 [x0, x1, x2, x3, x4, x5] - limbs 64 [y0, y1, y2, y3, y4, y5]
        limbs 64 [m0, m1, m2, m3, m4, m5]

        ] &&
    and[m0 = 0xb9feffffffffaaab@64,
        m1 = 0x1eabfffeb153ffff@64,
        m2 = 0x6730d2a0f6b0f624@64,
        m3 = 0x64774b84f38512bf@64,
        m4 = 0x4b1ba7b6434bacd7@64,
        m5 = 0x1a0111ea397fe69a@64,
        add 1@64 (mul m0 n0) = 0@64,

        L0x55555556e4c0 = m0, L0x55555556e4c8 = m1, L0x55555556e4d0 = m2,
        L0x55555556e4d8 = m3, L0x55555556e4e0 = m4, L0x55555556e4e8 = m5,

        L0x7fffffffd980 = n0,

        eqmod
        limbs 64 [c0, c1, c2, c3, c4, c5]
        limbs 64 [x0, x1, x2, x3, x4, x5] + limbs 64 [y0, y1, y2, y3, y4, y5]
        limbs 64 [m0, m1, m2, m3, m4, m5],
        eqmod
        limbs 64 [d0, d1, d2, d3, d4, d5]
        limbs 64 [x0, x1, x2, x3, x4, x5] - limbs 64 [y0, y1, y2, y3, y4, y5]
        limbs 64 [m0, m1, m2, m3, m4, m5],

        limbs 64 [x0, x1, x2, x3, x4, x5] <u limbs 64 [m0, m1, m2, m3, m4, m5],
        limbs 64 [y0, y1, y2, y3, y4, y5] <u limbs 64 [m0, m1, m2, m3, m4, m5],
        limbs 64 [c0, c1, c2, c3, c4, c5] <u limbs 64 [m0, m1, m2, m3, m4, m5],
        limbs 64 [d0, d1, d2, d3, d4, d5] <u limbs 64 [m0, m1, m2, m3, m4, m5]];

(* #repz retq                                      #! PC = 0x93824992311751 *)
#repz retq                                      #! 0x93824992311751 = 0x93824992311751;
(* mov    0x10(%rsp),%rsi                          #! EA = L0x7fffffffd990; Value = 0x00007fffffffdb50; PC = 0x93824992312135 *)
mov rsi L0x7fffffffd990;
(* #lea    0x30(%rsi),%rbx                          #! PC = 0x93824992312140 *)
#lea    %%EA,%%rbx                          #! 0x93824992312140 = 0x93824992312140;
(* mov    0x30(%rsi),%rax                          #! EA = L0x7fffffffdb80; Value = 0x0000000000000000; PC = 0x93824992312144 *)
mov rax L0x7fffffffdb80;
(* mov    (%rsi),%r14                              #! EA = L0x7fffffffdb50; Value = 0x000009c0000009c0; PC = 0x93824992312148 *)
mov r14 L0x7fffffffdb50;
(* mov    0x8(%rsi),%r15                           #! EA = L0x7fffffffdb58; Value = 0x000009c0000009c0; PC = 0x93824992312151 *)
mov r15 L0x7fffffffdb58;
(* mov    0x10(%rsi),%r12                          #! EA = L0x7fffffffdb60; Value = 0x0000000000000000; PC = 0x93824992312155 *)
mov r12 L0x7fffffffdb60;
(* mov    0x18(%rsi),%r13                          #! EA = L0x7fffffffdb68; Value = 0x0000004000000100; PC = 0x93824992312159 *)
mov r13 L0x7fffffffdb68;
(* #callq  0x555555568c80 <__mulq_mont_384>        #! PC = 0x93824992312163 *)
#callq  0x555555568c80 <__mulq_mont_384>        #! 0x93824992312163 = 0x93824992312163;
(* endbr64                                         #! PC = 0x93824992316544 *)
#endbr64                                         #! 0x93824992316544 = 0x93824992316544;
(* mov    %rax,%rdi                                #! PC = 0x93824992316548 *)
mov rdi rax;
(* mul    %r14                                     #! PC = 0x93824992316551 *)
umull rdx rax r14 rax;
(* mov    %rax,%r8                                 #! PC = 0x93824992316554 *)
mov r8 rax;
(* mov    %rdi,%rax                                #! PC = 0x93824992316557 *)
mov rax rdi;
(* mov    %rdx,%r9                                 #! PC = 0x93824992316560 *)
mov r9 rdx;
(* mul    %r15                                     #! PC = 0x93824992316563 *)
umull rdx rax r15 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992316566 *)
adds carry r9 rax r9;
(* mov    %rdi,%rax                                #! PC = 0x93824992316569 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316572 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992316576 *)
mov r10 rdx;
(* mul    %r12                                     #! PC = 0x93824992316579 *)
umull rdx rax r12 rax;
(* add    %rax,%r10                                #! PC = 0x93824992316582 *)
adds carry r10 rax r10;
(* mov    %rdi,%rax                                #! PC = 0x93824992316585 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316588 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992316592 *)
mov r11 rdx;
(* mov    %r8,%rbp                                 #! PC = 0x93824992316595 *)
mov rbp r8;
(* imul   0x8(%rsp),%r8                            #! EA = L0x7fffffffd980; Value = 0x89f3fffcfffcfffd; PC = 0x93824992316598 *)
umull dontcare r8 L0x7fffffffd980 r8;
(* mul    %r13                                     #! PC = 0x93824992316604 *)
umull rdx rax r13 rax;
(* add    %rax,%r11                                #! PC = 0x93824992316607 *)
adds carry r11 rax r11;
(* mov    %rdi,%rax                                #! PC = 0x93824992316610 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316613 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r12                                #! PC = 0x93824992316617 *)
mov r12 rdx;
(* mulq   0x20(%rsi)                               #! EA = L0x7fffffffdb70; PC = 0x93824992316620 *)
umull rdx rax L0x7fffffffdb70 rax;
(* add    %rax,%r12                                #! PC = 0x93824992316624 *)
adds carry r12 rax r12;
(* mov    %rdi,%rax                                #! PC = 0x93824992316627 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316630 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r13                                #! PC = 0x93824992316634 *)
mov r13 rdx;
(* mulq   0x28(%rsi)                               #! EA = L0x7fffffffdb78; PC = 0x93824992316637 *)
umull rdx rax L0x7fffffffdb78 rax;
(* add    %rax,%r13                                #! PC = 0x93824992316641 *)
adds carry r13 rax r13;
(* mov    %r8,%rax                                 #! PC = 0x93824992316644 *)
mov rax r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316647 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* xor    %r15,%r15                                #! PC = 0x93824992316651 *)
mov r15 0@uint64;
(* mov    %rdx,%r14                                #! PC = 0x93824992316654 *)
mov r14 rdx;
(* mulq   (%rcx)                                   #! EA = L0x55555556e4c0; PC = 0x93824992316657 *)
umull rdx rax L0x55555556e4c0 rax;
(* add    %rax,%rbp                                #! PC = 0x93824992316660 *)
adds carry rbp rax rbp;

(* NOTE: Montgomery reduction *)
assert eqmod rbp 0 (2**64) && true;
assume rbp = 0 && rbp = 0@64;

(* mov    %r8,%rax                                 #! PC = 0x93824992316663 *)
mov rax r8;
(* adc    %rdx,%rbp                                #! PC = 0x93824992316666 *)
adcs carry rbp rdx rbp carry;

assert true && carry = 0@1;
assume carry = 0 && true;

(* mulq   0x8(%rcx)                                #! EA = L0x55555556e4c8; PC = 0x93824992316669 *)
umull rdx rax L0x55555556e4c8 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992316673 *)
adds carry r9 rax r9;
(* mov    %r8,%rax                                 #! PC = 0x93824992316676 *)
mov rax r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316679 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r9                                 #! PC = 0x93824992316683 *)
adds carry r9 rbp r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316686 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992316690 *)
mov rbp rdx;
(* mulq   0x10(%rcx)                               #! EA = L0x55555556e4d0; PC = 0x93824992316693 *)
umull rdx rax L0x55555556e4d0 rax;
(* add    %rax,%r10                                #! PC = 0x93824992316697 *)
adds carry r10 rax r10;
(* mov    %r8,%rax                                 #! PC = 0x93824992316700 *)
mov rax r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316703 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r10                                #! PC = 0x93824992316707 *)
adds carry r10 rbp r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316710 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992316714 *)
mov rbp rdx;
(* mulq   0x18(%rcx)                               #! EA = L0x55555556e4d8; PC = 0x93824992316717 *)
umull rdx rax L0x55555556e4d8 rax;
(* add    %rbp,%r11                                #! PC = 0x93824992316721 *)
adds carry r11 rbp r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316724 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rax,%r11                                #! PC = 0x93824992316728 *)
adds carry r11 rax r11;
(* mov    %r8,%rax                                 #! PC = 0x93824992316731 *)
mov rax r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316734 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992316738 *)
mov rbp rdx;
(* mulq   0x20(%rcx)                               #! EA = L0x55555556e4e0; PC = 0x93824992316741 *)
umull rdx rax L0x55555556e4e0 rax;
(* add    %rax,%r12                                #! PC = 0x93824992316745 *)
adds carry r12 rax r12;
(* mov    %r8,%rax                                 #! PC = 0x93824992316748 *)
mov rax r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316751 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r12                                #! PC = 0x93824992316755 *)
adds carry r12 rbp r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316758 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992316762 *)
mov rbp rdx;
(* mulq   0x28(%rcx)                               #! EA = L0x55555556e4e8; PC = 0x93824992316765 *)
umull rdx rax L0x55555556e4e8 rax;
(* add    %rax,%r13                                #! PC = 0x93824992316769 *)
adds carry r13 rax r13;
(* mov    0x8(%rbx),%rax                           #! EA = L0x7fffffffdb88; Value = 0x0000000000000000; PC = 0x93824992316772 *)
mov rax L0x7fffffffdb88;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316776 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r13                                #! PC = 0x93824992316780 *)
adds carry r13 rbp r13;
(* adc    %rdx,%r14                                #! PC = 0x93824992316783 *)
adcs carry r14 rdx r14 carry;
(* adc    $0x0,%r15                                #! PC = 0x93824992316786 *)
adcs carry r15 0@uint64 r15 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rax,%rdi                                #! PC = 0x93824992316790 *)
mov rdi rax;
(* mulq   (%rsi)                                   #! EA = L0x7fffffffdb50; PC = 0x93824992316793 *)
umull rdx rax L0x7fffffffdb50 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992316796 *)
adds carry r9 rax r9;
(* mov    %rdi,%rax                                #! PC = 0x93824992316799 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316802 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992316806 *)
mov r8 rdx;
(* mulq   0x8(%rsi)                                #! EA = L0x7fffffffdb58; PC = 0x93824992316809 *)
umull rdx rax L0x7fffffffdb58 rax;
(* add    %rax,%r10                                #! PC = 0x93824992316813 *)
adds carry r10 rax r10;
(* mov    %rdi,%rax                                #! PC = 0x93824992316816 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316819 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r8,%r10                                 #! PC = 0x93824992316823 *)
adds carry r10 r8 r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316826 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992316830 *)
mov r8 rdx;
(* mulq   0x10(%rsi)                               #! EA = L0x7fffffffdb60; PC = 0x93824992316833 *)
umull rdx rax L0x7fffffffdb60 rax;
(* add    %rax,%r11                                #! PC = 0x93824992316837 *)
adds carry r11 rax r11;
(* mov    %rdi,%rax                                #! PC = 0x93824992316840 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316843 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r8,%r11                                 #! PC = 0x93824992316847 *)
adds carry r11 r8 r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316850 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992316854 *)
mov r8 rdx;
(* mov    %r9,%rbp                                 #! PC = 0x93824992316857 *)
mov rbp r9;
(* imul   0x8(%rsp),%r9                            #! EA = L0x7fffffffd980; Value = 0x89f3fffcfffcfffd; PC = 0x93824992316860 *)
umull dontcare r9 L0x7fffffffd980 r9;
(* mulq   0x18(%rsi)                               #! EA = L0x7fffffffdb68; PC = 0x93824992316866 *)
umull rdx rax L0x7fffffffdb68 rax;
(* add    %rax,%r12                                #! PC = 0x93824992316870 *)
adds carry r12 rax r12;
(* mov    %rdi,%rax                                #! PC = 0x93824992316873 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316876 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r8,%r12                                 #! PC = 0x93824992316880 *)
adds carry r12 r8 r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316883 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992316887 *)
mov r8 rdx;
(* mulq   0x20(%rsi)                               #! EA = L0x7fffffffdb70; PC = 0x93824992316890 *)
umull rdx rax L0x7fffffffdb70 rax;
(* add    %rax,%r13                                #! PC = 0x93824992316894 *)
adds carry r13 rax r13;
(* mov    %rdi,%rax                                #! PC = 0x93824992316897 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316900 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r8,%r13                                 #! PC = 0x93824992316904 *)
adds carry r13 r8 r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316907 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992316911 *)
mov r8 rdx;
(* mulq   0x28(%rsi)                               #! EA = L0x7fffffffdb78; PC = 0x93824992316914 *)
umull rdx rax L0x7fffffffdb78 rax;
(* add    %r8,%r14                                 #! PC = 0x93824992316918 *)
adds carry r14 r8 r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316921 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* xor    %r8,%r8                                  #! PC = 0x93824992316925 *)
mov r8 0@uint64;
(* add    %rax,%r14                                #! PC = 0x93824992316928 *)
adds carry r14 rax r14;
(* mov    %r9,%rax                                 #! PC = 0x93824992316931 *)
mov rax r9;
(* adc    %rdx,%r15                                #! PC = 0x93824992316934 *)
adcs carry r15 rdx r15 carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992316937 *)
adcs carry r8 0@uint64 r8 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mulq   (%rcx)                                   #! EA = L0x55555556e4c0; PC = 0x93824992316941 *)
umull rdx rax L0x55555556e4c0 rax;
(* add    %rax,%rbp                                #! PC = 0x93824992316944 *)
adds carry rbp rax rbp;

(* NOTE: Montgomery reduction *)
assert eqmod rbp 0 (2**64) && true;
assume rbp = 0 && rbp = 0@64;

(* mov    %r9,%rax                                 #! PC = 0x93824992316947 *)
mov rax r9;
(* adc    %rdx,%rbp                                #! PC = 0x93824992316950 *)
adcs carry rbp rdx rbp carry;

assert true && carry = 0@1;
assume carry = 0 && true;

(* mulq   0x8(%rcx)                                #! EA = L0x55555556e4c8; PC = 0x93824992316953 *)
umull rdx rax L0x55555556e4c8 rax;
(* add    %rax,%r10                                #! PC = 0x93824992316957 *)
adds carry r10 rax r10;
(* mov    %r9,%rax                                 #! PC = 0x93824992316960 *)
mov rax r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316963 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r10                                #! PC = 0x93824992316967 *)
adds carry r10 rbp r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316970 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992316974 *)
mov rbp rdx;
(* mulq   0x10(%rcx)                               #! EA = L0x55555556e4d0; PC = 0x93824992316977 *)
umull rdx rax L0x55555556e4d0 rax;
(* add    %rax,%r11                                #! PC = 0x93824992316981 *)
adds carry r11 rax r11;
(* mov    %r9,%rax                                 #! PC = 0x93824992316984 *)
mov rax r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316987 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r11                                #! PC = 0x93824992316991 *)
adds carry r11 rbp r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316994 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992316998 *)
mov rbp rdx;
(* mulq   0x18(%rcx)                               #! EA = L0x55555556e4d8; PC = 0x93824992317001 *)
umull rdx rax L0x55555556e4d8 rax;
(* add    %rbp,%r12                                #! PC = 0x93824992317005 *)
adds carry r12 rbp r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317008 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rax,%r12                                #! PC = 0x93824992317012 *)
adds carry r12 rax r12;
(* mov    %r9,%rax                                 #! PC = 0x93824992317015 *)
mov rax r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317018 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992317022 *)
mov rbp rdx;
(* mulq   0x20(%rcx)                               #! EA = L0x55555556e4e0; PC = 0x93824992317025 *)
umull rdx rax L0x55555556e4e0 rax;
(* add    %rax,%r13                                #! PC = 0x93824992317029 *)
adds carry r13 rax r13;
(* mov    %r9,%rax                                 #! PC = 0x93824992317032 *)
mov rax r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317035 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r13                                #! PC = 0x93824992317039 *)
adds carry r13 rbp r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317042 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992317046 *)
mov rbp rdx;
(* mulq   0x28(%rcx)                               #! EA = L0x55555556e4e8; PC = 0x93824992317049 *)
umull rdx rax L0x55555556e4e8 rax;
(* add    %rax,%r14                                #! PC = 0x93824992317053 *)
adds carry r14 rax r14;
(* mov    0x10(%rbx),%rax                          #! EA = L0x7fffffffdb90; Value = 0x0000000000000000; PC = 0x93824992317056 *)
mov rax L0x7fffffffdb90;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317060 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r14                                #! PC = 0x93824992317064 *)
adds carry r14 rbp r14;
(* adc    %rdx,%r15                                #! PC = 0x93824992317067 *)
adcs carry r15 rdx r15 carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992317070 *)
adcs carry r8 0@uint64 r8 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rax,%rdi                                #! PC = 0x93824992317074 *)
mov rdi rax;
(* mulq   (%rsi)                                   #! EA = L0x7fffffffdb50; PC = 0x93824992317077 *)
umull rdx rax L0x7fffffffdb50 rax;
(* add    %rax,%r10                                #! PC = 0x93824992317080 *)
adds carry r10 rax r10;
(* mov    %rdi,%rax                                #! PC = 0x93824992317083 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317086 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992317090 *)
mov r9 rdx;
(* mulq   0x8(%rsi)                                #! EA = L0x7fffffffdb58; PC = 0x93824992317093 *)
umull rdx rax L0x7fffffffdb58 rax;
(* add    %rax,%r11                                #! PC = 0x93824992317097 *)
adds carry r11 rax r11;
(* mov    %rdi,%rax                                #! PC = 0x93824992317100 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317103 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r9,%r11                                 #! PC = 0x93824992317107 *)
adds carry r11 r9 r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317110 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992317114 *)
mov r9 rdx;
(* mulq   0x10(%rsi)                               #! EA = L0x7fffffffdb60; PC = 0x93824992317117 *)
umull rdx rax L0x7fffffffdb60 rax;
(* add    %rax,%r12                                #! PC = 0x93824992317121 *)
adds carry r12 rax r12;
(* mov    %rdi,%rax                                #! PC = 0x93824992317124 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317127 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r9,%r12                                 #! PC = 0x93824992317131 *)
adds carry r12 r9 r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317134 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992317138 *)
mov r9 rdx;
(* mov    %r10,%rbp                                #! PC = 0x93824992317141 *)
mov rbp r10;
(* imul   0x8(%rsp),%r10                           #! EA = L0x7fffffffd980; Value = 0x89f3fffcfffcfffd; PC = 0x93824992317144 *)
umull dontcare r10 L0x7fffffffd980 r10;
(* mulq   0x18(%rsi)                               #! EA = L0x7fffffffdb68; PC = 0x93824992317150 *)
umull rdx rax L0x7fffffffdb68 rax;
(* add    %rax,%r13                                #! PC = 0x93824992317154 *)
adds carry r13 rax r13;
(* mov    %rdi,%rax                                #! PC = 0x93824992317157 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317160 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r9,%r13                                 #! PC = 0x93824992317164 *)
adds carry r13 r9 r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317167 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992317171 *)
mov r9 rdx;
(* mulq   0x20(%rsi)                               #! EA = L0x7fffffffdb70; PC = 0x93824992317174 *)
umull rdx rax L0x7fffffffdb70 rax;
(* add    %rax,%r14                                #! PC = 0x93824992317178 *)
adds carry r14 rax r14;
(* mov    %rdi,%rax                                #! PC = 0x93824992317181 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317184 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r9,%r14                                 #! PC = 0x93824992317188 *)
adds carry r14 r9 r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317191 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992317195 *)
mov r9 rdx;
(* mulq   0x28(%rsi)                               #! EA = L0x7fffffffdb78; PC = 0x93824992317198 *)
umull rdx rax L0x7fffffffdb78 rax;
(* add    %r9,%r15                                 #! PC = 0x93824992317202 *)
adds carry r15 r9 r15;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317205 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* xor    %r9,%r9                                  #! PC = 0x93824992317209 *)
mov r9 0@uint64;
(* add    %rax,%r15                                #! PC = 0x93824992317212 *)
adds carry r15 rax r15;
(* mov    %r10,%rax                                #! PC = 0x93824992317215 *)
mov rax r10;
(* adc    %rdx,%r8                                 #! PC = 0x93824992317218 *)
adcs carry r8 rdx r8 carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992317221 *)
adcs carry r9 0@uint64 r9 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mulq   (%rcx)                                   #! EA = L0x55555556e4c0; PC = 0x93824992317225 *)
umull rdx rax L0x55555556e4c0 rax;
(* add    %rax,%rbp                                #! PC = 0x93824992317228 *)
adds carry rbp rax rbp;

(* NOTE: Montgomery reduction *)
assert eqmod rbp 0 (2**64) && true;
assume rbp = 0 && rbp = 0@64;

(* mov    %r10,%rax                                #! PC = 0x93824992317231 *)
mov rax r10;
(* adc    %rdx,%rbp                                #! PC = 0x93824992317234 *)
adcs carry rbp rdx rbp carry;

assert true && carry = 0@1;
assume carry = 0 && true;

(* mulq   0x8(%rcx)                                #! EA = L0x55555556e4c8; PC = 0x93824992317237 *)
umull rdx rax L0x55555556e4c8 rax;
(* add    %rax,%r11                                #! PC = 0x93824992317241 *)
adds carry r11 rax r11;
(* mov    %r10,%rax                                #! PC = 0x93824992317244 *)
mov rax r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317247 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r11                                #! PC = 0x93824992317251 *)
adds carry r11 rbp r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317254 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992317258 *)
mov rbp rdx;
(* mulq   0x10(%rcx)                               #! EA = L0x55555556e4d0; PC = 0x93824992317261 *)
umull rdx rax L0x55555556e4d0 rax;
(* add    %rax,%r12                                #! PC = 0x93824992317265 *)
adds carry r12 rax r12;
(* mov    %r10,%rax                                #! PC = 0x93824992317268 *)
mov rax r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317271 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r12                                #! PC = 0x93824992317275 *)
adds carry r12 rbp r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317278 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992317282 *)
mov rbp rdx;
(* mulq   0x18(%rcx)                               #! EA = L0x55555556e4d8; PC = 0x93824992317285 *)
umull rdx rax L0x55555556e4d8 rax;
(* add    %rbp,%r13                                #! PC = 0x93824992317289 *)
adds carry r13 rbp r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317292 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rax,%r13                                #! PC = 0x93824992317296 *)
adds carry r13 rax r13;
(* mov    %r10,%rax                                #! PC = 0x93824992317299 *)
mov rax r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317302 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992317306 *)
mov rbp rdx;
(* mulq   0x20(%rcx)                               #! EA = L0x55555556e4e0; PC = 0x93824992317309 *)
umull rdx rax L0x55555556e4e0 rax;
(* add    %rax,%r14                                #! PC = 0x93824992317313 *)
adds carry r14 rax r14;
(* mov    %r10,%rax                                #! PC = 0x93824992317316 *)
mov rax r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317319 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r14                                #! PC = 0x93824992317323 *)
adds carry r14 rbp r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317326 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992317330 *)
mov rbp rdx;
(* mulq   0x28(%rcx)                               #! EA = L0x55555556e4e8; PC = 0x93824992317333 *)
umull rdx rax L0x55555556e4e8 rax;
(* add    %rax,%r15                                #! PC = 0x93824992317337 *)
adds carry r15 rax r15;
(* mov    0x18(%rbx),%rax                          #! EA = L0x7fffffffdb98; Value = 0x0000000000000000; PC = 0x93824992317340 *)
mov rax L0x7fffffffdb98;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317344 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r15                                #! PC = 0x93824992317348 *)
adds carry r15 rbp r15;
(* adc    %rdx,%r8                                 #! PC = 0x93824992317351 *)
adcs carry r8 rdx r8 carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992317354 *)
adcs carry r9 0@uint64 r9 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rax,%rdi                                #! PC = 0x93824992317358 *)
mov rdi rax;
(* mulq   (%rsi)                                   #! EA = L0x7fffffffdb50; PC = 0x93824992317361 *)
umull rdx rax L0x7fffffffdb50 rax;
(* add    %rax,%r11                                #! PC = 0x93824992317364 *)
adds carry r11 rax r11;
(* mov    %rdi,%rax                                #! PC = 0x93824992317367 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317370 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992317374 *)
mov r10 rdx;
(* mulq   0x8(%rsi)                                #! EA = L0x7fffffffdb58; PC = 0x93824992317377 *)
umull rdx rax L0x7fffffffdb58 rax;
(* add    %rax,%r12                                #! PC = 0x93824992317381 *)
adds carry r12 rax r12;
(* mov    %rdi,%rax                                #! PC = 0x93824992317384 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317387 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r10,%r12                                #! PC = 0x93824992317391 *)
adds carry r12 r10 r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317394 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992317398 *)
mov r10 rdx;
(* mulq   0x10(%rsi)                               #! EA = L0x7fffffffdb60; PC = 0x93824992317401 *)
umull rdx rax L0x7fffffffdb60 rax;
(* add    %rax,%r13                                #! PC = 0x93824992317405 *)
adds carry r13 rax r13;
(* mov    %rdi,%rax                                #! PC = 0x93824992317408 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317411 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r10,%r13                                #! PC = 0x93824992317415 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317418 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992317422 *)
mov r10 rdx;
(* mov    %r11,%rbp                                #! PC = 0x93824992317425 *)
mov rbp r11;
(* imul   0x8(%rsp),%r11                           #! EA = L0x7fffffffd980; Value = 0x89f3fffcfffcfffd; PC = 0x93824992317428 *)
umull dontcare r11 L0x7fffffffd980 r11;
(* mulq   0x18(%rsi)                               #! EA = L0x7fffffffdb68; PC = 0x93824992317434 *)
umull rdx rax L0x7fffffffdb68 rax;
(* add    %rax,%r14                                #! PC = 0x93824992317438 *)
adds carry r14 rax r14;
(* mov    %rdi,%rax                                #! PC = 0x93824992317441 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317444 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r10,%r14                                #! PC = 0x93824992317448 *)
adds carry r14 r10 r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317451 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992317455 *)
mov r10 rdx;
(* mulq   0x20(%rsi)                               #! EA = L0x7fffffffdb70; PC = 0x93824992317458 *)
umull rdx rax L0x7fffffffdb70 rax;
(* add    %rax,%r15                                #! PC = 0x93824992317462 *)
adds carry r15 rax r15;
(* mov    %rdi,%rax                                #! PC = 0x93824992317465 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317468 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r10,%r15                                #! PC = 0x93824992317472 *)
adds carry r15 r10 r15;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317475 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992317479 *)
mov r10 rdx;
(* mulq   0x28(%rsi)                               #! EA = L0x7fffffffdb78; PC = 0x93824992317482 *)
umull rdx rax L0x7fffffffdb78 rax;
(* add    %r10,%r8                                 #! PC = 0x93824992317486 *)
adds carry r8 r10 r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317489 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* xor    %r10,%r10                                #! PC = 0x93824992317493 *)
mov r10 0@uint64;
(* add    %rax,%r8                                 #! PC = 0x93824992317496 *)
adds carry r8 rax r8;
(* mov    %r11,%rax                                #! PC = 0x93824992317499 *)
mov rax r11;
(* adc    %rdx,%r9                                 #! PC = 0x93824992317502 *)
adcs carry r9 rdx r9 carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992317505 *)
adcs carry r10 0@uint64 r10 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mulq   (%rcx)                                   #! EA = L0x55555556e4c0; PC = 0x93824992317509 *)
umull rdx rax L0x55555556e4c0 rax;
(* add    %rax,%rbp                                #! PC = 0x93824992317512 *)
adds carry rbp rax rbp;

(* NOTE: Montgomery reduction *)
assert eqmod rbp 0 (2**64) && true;
assume rbp = 0 && rbp = 0@64;

(* mov    %r11,%rax                                #! PC = 0x93824992317515 *)
mov rax r11;
(* adc    %rdx,%rbp                                #! PC = 0x93824992317518 *)
adcs carry rbp rdx rbp carry;

assert true && carry = 0@1;
assume carry = 0 && true;

(* mulq   0x8(%rcx)                                #! EA = L0x55555556e4c8; PC = 0x93824992317521 *)
umull rdx rax L0x55555556e4c8 rax;
(* add    %rax,%r12                                #! PC = 0x93824992317525 *)
adds carry r12 rax r12;
(* mov    %r11,%rax                                #! PC = 0x93824992317528 *)
mov rax r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317531 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r12                                #! PC = 0x93824992317535 *)
adds carry r12 rbp r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317538 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992317542 *)
mov rbp rdx;
(* mulq   0x10(%rcx)                               #! EA = L0x55555556e4d0; PC = 0x93824992317545 *)
umull rdx rax L0x55555556e4d0 rax;
(* add    %rax,%r13                                #! PC = 0x93824992317549 *)
adds carry r13 rax r13;
(* mov    %r11,%rax                                #! PC = 0x93824992317552 *)
mov rax r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317555 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r13                                #! PC = 0x93824992317559 *)
adds carry r13 rbp r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317562 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992317566 *)
mov rbp rdx;
(* mulq   0x18(%rcx)                               #! EA = L0x55555556e4d8; PC = 0x93824992317569 *)
umull rdx rax L0x55555556e4d8 rax;
(* add    %rbp,%r14                                #! PC = 0x93824992317573 *)
adds carry r14 rbp r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317576 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rax,%r14                                #! PC = 0x93824992317580 *)
adds carry r14 rax r14;
(* mov    %r11,%rax                                #! PC = 0x93824992317583 *)
mov rax r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317586 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992317590 *)
mov rbp rdx;
(* mulq   0x20(%rcx)                               #! EA = L0x55555556e4e0; PC = 0x93824992317593 *)
umull rdx rax L0x55555556e4e0 rax;
(* add    %rax,%r15                                #! PC = 0x93824992317597 *)
adds carry r15 rax r15;
(* mov    %r11,%rax                                #! PC = 0x93824992317600 *)
mov rax r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317603 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r15                                #! PC = 0x93824992317607 *)
adds carry r15 rbp r15;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317610 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992317614 *)
mov rbp rdx;
(* mulq   0x28(%rcx)                               #! EA = L0x55555556e4e8; PC = 0x93824992317617 *)
umull rdx rax L0x55555556e4e8 rax;
(* add    %rax,%r8                                 #! PC = 0x93824992317621 *)
adds carry r8 rax r8;
(* mov    0x20(%rbx),%rax                          #! EA = L0x7fffffffdba0; Value = 0x0000000000000000; PC = 0x93824992317624 *)
mov rax L0x7fffffffdba0;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317628 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r8                                 #! PC = 0x93824992317632 *)
adds carry r8 rbp r8;
(* adc    %rdx,%r9                                 #! PC = 0x93824992317635 *)
adcs carry r9 rdx r9 carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992317638 *)
adcs carry r10 0@uint64 r10 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rax,%rdi                                #! PC = 0x93824992317642 *)
mov rdi rax;
(* mulq   (%rsi)                                   #! EA = L0x7fffffffdb50; PC = 0x93824992317645 *)
umull rdx rax L0x7fffffffdb50 rax;
(* add    %rax,%r12                                #! PC = 0x93824992317648 *)
adds carry r12 rax r12;
(* mov    %rdi,%rax                                #! PC = 0x93824992317651 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317654 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992317658 *)
mov r11 rdx;
(* mulq   0x8(%rsi)                                #! EA = L0x7fffffffdb58; PC = 0x93824992317661 *)
umull rdx rax L0x7fffffffdb58 rax;
(* add    %rax,%r13                                #! PC = 0x93824992317665 *)
adds carry r13 rax r13;
(* mov    %rdi,%rax                                #! PC = 0x93824992317668 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317671 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r13                                #! PC = 0x93824992317675 *)
adds carry r13 r11 r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317678 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992317682 *)
mov r11 rdx;
(* mulq   0x10(%rsi)                               #! EA = L0x7fffffffdb60; PC = 0x93824992317685 *)
umull rdx rax L0x7fffffffdb60 rax;
(* add    %rax,%r14                                #! PC = 0x93824992317689 *)
adds carry r14 rax r14;
(* mov    %rdi,%rax                                #! PC = 0x93824992317692 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317695 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r14                                #! PC = 0x93824992317699 *)
adds carry r14 r11 r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317702 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992317706 *)
mov r11 rdx;
(* mov    %r12,%rbp                                #! PC = 0x93824992317709 *)
mov rbp r12;
(* imul   0x8(%rsp),%r12                           #! EA = L0x7fffffffd980; Value = 0x89f3fffcfffcfffd; PC = 0x93824992317712 *)
umull dontcare r12 L0x7fffffffd980 r12;
(* mulq   0x18(%rsi)                               #! EA = L0x7fffffffdb68; PC = 0x93824992317718 *)
umull rdx rax L0x7fffffffdb68 rax;
(* add    %rax,%r15                                #! PC = 0x93824992317722 *)
adds carry r15 rax r15;
(* mov    %rdi,%rax                                #! PC = 0x93824992317725 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317728 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r15                                #! PC = 0x93824992317732 *)
adds carry r15 r11 r15;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317735 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992317739 *)
mov r11 rdx;
(* mulq   0x20(%rsi)                               #! EA = L0x7fffffffdb70; PC = 0x93824992317742 *)
umull rdx rax L0x7fffffffdb70 rax;
(* add    %rax,%r8                                 #! PC = 0x93824992317746 *)
adds carry r8 rax r8;
(* mov    %rdi,%rax                                #! PC = 0x93824992317749 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317752 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r8                                 #! PC = 0x93824992317756 *)
adds carry r8 r11 r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317759 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992317763 *)
mov r11 rdx;
(* mulq   0x28(%rsi)                               #! EA = L0x7fffffffdb78; PC = 0x93824992317766 *)
umull rdx rax L0x7fffffffdb78 rax;
(* add    %r11,%r9                                 #! PC = 0x93824992317770 *)
adds carry r9 r11 r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317773 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* xor    %r11,%r11                                #! PC = 0x93824992317777 *)
mov r11 0@uint64;
(* add    %rax,%r9                                 #! PC = 0x93824992317780 *)
adds carry r9 rax r9;
(* mov    %r12,%rax                                #! PC = 0x93824992317783 *)
mov rax r12;
(* adc    %rdx,%r10                                #! PC = 0x93824992317786 *)
adcs carry r10 rdx r10 carry;
(* adc    $0x0,%r11                                #! PC = 0x93824992317789 *)
adcs carry r11 0@uint64 r11 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mulq   (%rcx)                                   #! EA = L0x55555556e4c0; PC = 0x93824992317793 *)
umull rdx rax L0x55555556e4c0 rax;
(* add    %rax,%rbp                                #! PC = 0x93824992317796 *)
adds carry rbp rax rbp;

(* NOTE: Montgomery reduction *)
assert eqmod rbp 0 (2**64) && true;
assume rbp = 0 && rbp = 0@64;

(* mov    %r12,%rax                                #! PC = 0x93824992317799 *)
mov rax r12;
(* adc    %rdx,%rbp                                #! PC = 0x93824992317802 *)
adcs carry rbp rdx rbp carry;

assert true && carry = 0@1;
assume carry = 0 && true;

(* mulq   0x8(%rcx)                                #! EA = L0x55555556e4c8; PC = 0x93824992317805 *)
umull rdx rax L0x55555556e4c8 rax;
(* add    %rax,%r13                                #! PC = 0x93824992317809 *)
adds carry r13 rax r13;
(* mov    %r12,%rax                                #! PC = 0x93824992317812 *)
mov rax r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317815 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r13                                #! PC = 0x93824992317819 *)
adds carry r13 rbp r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317822 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992317826 *)
mov rbp rdx;
(* mulq   0x10(%rcx)                               #! EA = L0x55555556e4d0; PC = 0x93824992317829 *)
umull rdx rax L0x55555556e4d0 rax;
(* add    %rax,%r14                                #! PC = 0x93824992317833 *)
adds carry r14 rax r14;
(* mov    %r12,%rax                                #! PC = 0x93824992317836 *)
mov rax r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317839 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r14                                #! PC = 0x93824992317843 *)
adds carry r14 rbp r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317846 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992317850 *)
mov rbp rdx;
(* mulq   0x18(%rcx)                               #! EA = L0x55555556e4d8; PC = 0x93824992317853 *)
umull rdx rax L0x55555556e4d8 rax;
(* add    %rbp,%r15                                #! PC = 0x93824992317857 *)
adds carry r15 rbp r15;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317860 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rax,%r15                                #! PC = 0x93824992317864 *)
adds carry r15 rax r15;
(* mov    %r12,%rax                                #! PC = 0x93824992317867 *)
mov rax r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317870 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992317874 *)
mov rbp rdx;
(* mulq   0x20(%rcx)                               #! EA = L0x55555556e4e0; PC = 0x93824992317877 *)
umull rdx rax L0x55555556e4e0 rax;
(* add    %rax,%r8                                 #! PC = 0x93824992317881 *)
adds carry r8 rax r8;
(* mov    %r12,%rax                                #! PC = 0x93824992317884 *)
mov rax r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317887 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r8                                 #! PC = 0x93824992317891 *)
adds carry r8 rbp r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317894 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992317898 *)
mov rbp rdx;
(* mulq   0x28(%rcx)                               #! EA = L0x55555556e4e8; PC = 0x93824992317901 *)
umull rdx rax L0x55555556e4e8 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992317905 *)
adds carry r9 rax r9;
(* mov    0x28(%rbx),%rax                          #! EA = L0x7fffffffdba8; Value = 0x0000000000000000; PC = 0x93824992317908 *)
mov rax L0x7fffffffdba8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317912 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r9                                 #! PC = 0x93824992317916 *)
adds carry r9 rbp r9;
(* adc    %rdx,%r10                                #! PC = 0x93824992317919 *)
adcs carry r10 rdx r10 carry;
(* adc    $0x0,%r11                                #! PC = 0x93824992317922 *)
adcs carry r11 0@uint64 r11 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rax,%rdi                                #! PC = 0x93824992317926 *)
mov rdi rax;
(* mulq   (%rsi)                                   #! EA = L0x7fffffffdb50; PC = 0x93824992317929 *)
umull rdx rax L0x7fffffffdb50 rax;
(* add    %rax,%r13                                #! PC = 0x93824992317932 *)
adds carry r13 rax r13;
(* mov    %rdi,%rax                                #! PC = 0x93824992317935 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317938 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r12                                #! PC = 0x93824992317942 *)
mov r12 rdx;
(* mulq   0x8(%rsi)                                #! EA = L0x7fffffffdb58; PC = 0x93824992317945 *)
umull rdx rax L0x7fffffffdb58 rax;
(* add    %rax,%r14                                #! PC = 0x93824992317949 *)
adds carry r14 rax r14;
(* mov    %rdi,%rax                                #! PC = 0x93824992317952 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317955 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r12,%r14                                #! PC = 0x93824992317959 *)
adds carry r14 r12 r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317962 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r12                                #! PC = 0x93824992317966 *)
mov r12 rdx;
(* mulq   0x10(%rsi)                               #! EA = L0x7fffffffdb60; PC = 0x93824992317969 *)
umull rdx rax L0x7fffffffdb60 rax;
(* add    %rax,%r15                                #! PC = 0x93824992317973 *)
adds carry r15 rax r15;
(* mov    %rdi,%rax                                #! PC = 0x93824992317976 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317979 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r12,%r15                                #! PC = 0x93824992317983 *)
adds carry r15 r12 r15;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317986 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r12                                #! PC = 0x93824992317990 *)
mov r12 rdx;
(* mov    %r13,%rbp                                #! PC = 0x93824992317993 *)
mov rbp r13;
(* imul   0x8(%rsp),%r13                           #! EA = L0x7fffffffd980; Value = 0x89f3fffcfffcfffd; PC = 0x93824992317996 *)
umull dontcare r13 L0x7fffffffd980 r13;
(* mulq   0x18(%rsi)                               #! EA = L0x7fffffffdb68; PC = 0x93824992318002 *)
umull rdx rax L0x7fffffffdb68 rax;
(* add    %rax,%r8                                 #! PC = 0x93824992318006 *)
adds carry r8 rax r8;
(* mov    %rdi,%rax                                #! PC = 0x93824992318009 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992318012 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r12,%r8                                 #! PC = 0x93824992318016 *)
adds carry r8 r12 r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992318019 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r12                                #! PC = 0x93824992318023 *)
mov r12 rdx;
(* mulq   0x20(%rsi)                               #! EA = L0x7fffffffdb70; PC = 0x93824992318026 *)
umull rdx rax L0x7fffffffdb70 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992318030 *)
adds carry r9 rax r9;
(* mov    %rdi,%rax                                #! PC = 0x93824992318033 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992318036 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r12,%r9                                 #! PC = 0x93824992318040 *)
adds carry r9 r12 r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992318043 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r12                                #! PC = 0x93824992318047 *)
mov r12 rdx;
(* mulq   0x28(%rsi)                               #! EA = L0x7fffffffdb78; PC = 0x93824992318050 *)
umull rdx rax L0x7fffffffdb78 rax;
(* add    %r12,%r10                                #! PC = 0x93824992318054 *)
adds carry r10 r12 r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992318057 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* xor    %r12,%r12                                #! PC = 0x93824992318061 *)
mov r12 0@uint64;
(* add    %rax,%r10                                #! PC = 0x93824992318064 *)
adds carry r10 rax r10;
(* mov    %r13,%rax                                #! PC = 0x93824992318067 *)
mov rax r13;
(* adc    %rdx,%r11                                #! PC = 0x93824992318070 *)
adcs carry r11 rdx r11 carry;
(* adc    $0x0,%r12                                #! PC = 0x93824992318073 *)
adcs carry r12 0@uint64 r12 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mulq   (%rcx)                                   #! EA = L0x55555556e4c0; PC = 0x93824992318077 *)
umull rdx rax L0x55555556e4c0 rax;
(* add    %rax,%rbp                                #! PC = 0x93824992318080 *)
adds carry rbp rax rbp;

(* NOTE: Montgomery reduction *)
assert eqmod rbp 0 (2**64) && true;
assume rbp = 0 && rbp = 0@64;

(* mov    %r13,%rax                                #! PC = 0x93824992318083 *)
mov rax r13;
(* adc    %rdx,%rbp                                #! PC = 0x93824992318086 *)
adcs carry rbp rdx rbp carry;

assert true && carry = 0@1;
assume carry = 0 && true;

(* mulq   0x8(%rcx)                                #! EA = L0x55555556e4c8; PC = 0x93824992318089 *)
umull rdx rax L0x55555556e4c8 rax;
(* add    %rax,%r14                                #! PC = 0x93824992318093 *)
adds carry r14 rax r14;
(* mov    %r13,%rax                                #! PC = 0x93824992318096 *)
mov rax r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992318099 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r14                                #! PC = 0x93824992318103 *)
adds carry r14 rbp r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992318106 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992318110 *)
mov rbp rdx;
(* mulq   0x10(%rcx)                               #! EA = L0x55555556e4d0; PC = 0x93824992318113 *)
umull rdx rax L0x55555556e4d0 rax;
(* add    %rax,%r15                                #! PC = 0x93824992318117 *)
adds carry r15 rax r15;
(* mov    %r13,%rax                                #! PC = 0x93824992318120 *)
mov rax r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992318123 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r15                                #! PC = 0x93824992318127 *)
adds carry r15 rbp r15;
(* adc    $0x0,%rdx                                #! PC = 0x93824992318130 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992318134 *)
mov rbp rdx;
(* mulq   0x18(%rcx)                               #! EA = L0x55555556e4d8; PC = 0x93824992318137 *)
umull rdx rax L0x55555556e4d8 rax;
(* add    %rbp,%r8                                 #! PC = 0x93824992318141 *)
adds carry r8 rbp r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992318144 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rax,%r8                                 #! PC = 0x93824992318148 *)
adds carry r8 rax r8;
(* mov    %r13,%rax                                #! PC = 0x93824992318151 *)
mov rax r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992318154 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992318158 *)
mov rbp rdx;
(* mulq   0x20(%rcx)                               #! EA = L0x55555556e4e0; PC = 0x93824992318161 *)
umull rdx rax L0x55555556e4e0 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992318165 *)
adds carry r9 rax r9;
(* mov    %r13,%rax                                #! PC = 0x93824992318168 *)
mov rax r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992318171 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r9                                 #! PC = 0x93824992318175 *)
adds carry r9 rbp r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992318178 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992318182 *)
mov rbp rdx;
(* mulq   0x28(%rcx)                               #! EA = L0x55555556e4e8; PC = 0x93824992318185 *)
umull rdx rax L0x55555556e4e8 rax;
(* add    %rax,%r10                                #! PC = 0x93824992318189 *)
adds carry r10 rax r10;
(* mov    %r14,%rax                                #! PC = 0x93824992318192 *)
mov rax r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992318195 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r10                                #! PC = 0x93824992318199 *)
adds carry r10 rbp r10;
(* adc    %rdx,%r11                                #! PC = 0x93824992318202 *)
adcs carry r11 rdx r11 carry;
(* adc    $0x0,%r12                                #! PC = 0x93824992318205 *)
adcs carry r12 0@uint64 r12 carry;
assert true && carry = 0@1;
assume carry = 0 && true;


mov q0 r14;
mov q1 r15;
mov q2 r8;
mov q3 r9;
mov q4 r10;
mov q5 r11;
mov q6 r12;

assert eqmod (limbs 64 [0, 0, 0, 0, 0, 0, q0, q1, q2, q3, q4, q5, q6])
             ((limbs 64 [x0, x1, x2, x3, x4, x5]) * (limbs 64 [y0, y1, y2, y3, y4, y5]))
             (limbs 64 [m0, m1, m2, m3, m4, m5]) && true;
assume true && eqmod (limbs 64 [q0, q1, q2, q3, q4, q5, q6]) * const 448 (2*384)
               ((limbs 64 [x0, x1, x2, x3, x4, x5, 0@64]) * (limbs 64 [y0, y1, y2, y3, y4, y5, 0@64]))
               (limbs 64 [m0, m1, m2, m3, m4, m5, 0@64]);



(* movq   %xmm0,%rdi                               #! PC = 0x93824992318209 *)
#movq   %xmm0,%%rdi                               #! 0x93824992318209 = 0x93824992318209;
(* sub    (%rcx),%r14                              #! EA = L0x55555556e4c0; Value = 0xb9feffffffffaaab; PC = 0x93824992318214 *)
subb carry r14 r14 L0x55555556e4c0;
(* mov    %r15,%rdx                                #! PC = 0x93824992318217 *)
mov rdx r15;
(* sbb    0x8(%rcx),%r15                           #! EA = L0x55555556e4c8; Value = 0x1eabfffeb153ffff; PC = 0x93824992318220 *)
sbbs carry r15 r15 L0x55555556e4c8 carry;
(* mov    %r8,%rbx                                 #! PC = 0x93824992318224 *)
mov rbx r8;
(* sbb    0x10(%rcx),%r8                           #! EA = L0x55555556e4d0; Value = 0x6730d2a0f6b0f624; PC = 0x93824992318227 *)
sbbs carry r8 r8 L0x55555556e4d0 carry;
(* mov    %r9,%rsi                                 #! PC = 0x93824992318231 *)
mov rsi r9;
(* sbb    0x18(%rcx),%r9                           #! EA = L0x55555556e4d8; Value = 0x64774b84f38512bf; PC = 0x93824992318234 *)
sbbs carry r9 r9 L0x55555556e4d8 carry;
(* mov    %r10,%rbp                                #! PC = 0x93824992318238 *)
mov rbp r10;
(* sbb    0x20(%rcx),%r10                          #! EA = L0x55555556e4e0; Value = 0x4b1ba7b6434bacd7; PC = 0x93824992318241 *)
sbbs carry r10 r10 L0x55555556e4e0 carry;
(* mov    %r11,%r13                                #! PC = 0x93824992318245 *)
mov r13 r11;
(* sbb    0x28(%rcx),%r11                          #! EA = L0x55555556e4e8; Value = 0x1a0111ea397fe69a; PC = 0x93824992318248 *)
sbbs carry r11 r11 L0x55555556e4e8 carry;
(* sbb    $0x0,%r12                                #! PC = 0x93824992318252 *)
sbbs carry r12 r12 0@uint64 carry;
(* cmovb  %rax,%r14                                #! PC = 0x93824992318256 *)
cmov r14 carry rax r14;
(* cmovb  %rdx,%r15                                #! PC = 0x93824992318260 *)
cmov r15 carry rdx r15;
(* cmovb  %rbx,%r8                                 #! PC = 0x93824992318264 *)
cmov r8 carry rbx r8;
(* mov    %r14,(%rdi)                              #! EA = L0x7fffffffdaf0; PC = 0x93824992318268 *)
mov L0x7fffffffdaf0 r14;
(* cmovb  %rsi,%r9                                 #! PC = 0x93824992318271 *)
cmov r9 carry rsi r9;
(* mov    %r15,0x8(%rdi)                           #! EA = L0x7fffffffdaf8; PC = 0x93824992318275 *)
mov L0x7fffffffdaf8 r15;
(* cmovb  %rbp,%r10                                #! PC = 0x93824992318279 *)
cmov r10 carry rbp r10;
(* mov    %r8,0x10(%rdi)                           #! EA = L0x7fffffffdb00; PC = 0x93824992318283 *)
mov L0x7fffffffdb00 r8;
(* cmovb  %r13,%r11                                #! PC = 0x93824992318287 *)
cmov r11 carry r13 r11;
(* mov    %r9,0x18(%rdi)                           #! EA = L0x7fffffffdb08; PC = 0x93824992318291 *)
mov L0x7fffffffdb08 r9;
(* mov    %r10,0x20(%rdi)                          #! EA = L0x7fffffffdb10; PC = 0x93824992318295 *)
mov L0x7fffffffdb10 r10;
(* mov    %r11,0x28(%rdi)                          #! EA = L0x7fffffffdb18; PC = 0x93824992318299 *)
mov L0x7fffffffdb18 r11;
(* #repz retq                                      #! PC = 0x93824992318303 *)
#repz retq                                      #! 0x93824992318303 = 0x93824992318303;

mov e0 L0x7fffffffdaf0;
mov e1 L0x7fffffffdaf8;
mov e2 L0x7fffffffdb00;
mov e3 L0x7fffffffdb08;
mov e4 L0x7fffffffdb10;
mov e5 L0x7fffffffdb18;

assert true &&
       eqmod (limbs 64 [q0, q1, q2, q3, q4, q5, q6])
             (limbs 64 [e0, e1, e2, e3, e4, e5, 0@64])
             (limbs 64 [m0, m1, m2, m3, m4, m5, 0@64]);

assume eqmod (limbs 64 [q0, q1, q2, q3, q4, q5, q6])
             (limbs 64 [e0, e1, e2, e3, e4, e5, 0])
             (limbs 64 [m0, m1, m2, m3, m4, m5, 0]) && true;

assert true && limbs 64 [e0, e1, e2, e3, e4, e5] <u limbs 64 [m0, m1, m2, m3, m4, m5];

(* add    %r14,%r14                                #! PC = 0x93824992312168 *)
adds carry r14 r14 r14;
(* adc    %r15,%r15                                #! PC = 0x93824992312171 *)
adcs carry r15 r15 r15 carry;
(* adc    %r8,%r8                                  #! PC = 0x93824992312174 *)
adcs carry r8 r8 r8 carry;
(* mov    %r14,%r12                                #! PC = 0x93824992312177 *)
mov r12 r14;
(* adc    %r9,%r9                                  #! PC = 0x93824992312180 *)
adcs carry r9 r9 r9 carry;
(* mov    %r15,%r13                                #! PC = 0x93824992312183 *)
mov r13 r15;
(* adc    %r10,%r10                                #! PC = 0x93824992312186 *)
adcs carry r10 r10 r10 carry;
(* mov    %r8,%rax                                 #! PC = 0x93824992312189 *)
mov rax r8;
(* adc    %r11,%r11                                #! PC = 0x93824992312192 *)
adcs carry r11 r11 r11 carry;
(* mov    %r9,%rbx                                 #! PC = 0x93824992312195 *)
mov rbx r9;
(* sbb    %rdx,%rdx                                #! PC = 0x93824992312198 *)
sbbs carry rdx rdx rdx carry;
(* sub    (%rcx),%r14                              #! EA = L0x55555556e4c0; Value = 0xb9feffffffffaaab; PC = 0x93824992312201 *)
subb carry r14 r14 L0x55555556e4c0;
(* sbb    0x8(%rcx),%r15                           #! EA = L0x55555556e4c8; Value = 0x1eabfffeb153ffff; PC = 0x93824992312204 *)
sbbs carry r15 r15 L0x55555556e4c8 carry;
(* mov    %r10,%rbp                                #! PC = 0x93824992312208 *)
mov rbp r10;
(* sbb    0x10(%rcx),%r8                           #! EA = L0x55555556e4d0; Value = 0x6730d2a0f6b0f624; PC = 0x93824992312211 *)
sbbs carry r8 r8 L0x55555556e4d0 carry;
(* sbb    0x18(%rcx),%r9                           #! EA = L0x55555556e4d8; Value = 0x64774b84f38512bf; PC = 0x93824992312215 *)
sbbs carry r9 r9 L0x55555556e4d8 carry;
(* sbb    0x20(%rcx),%r10                          #! EA = L0x55555556e4e0; Value = 0x4b1ba7b6434bacd7; PC = 0x93824992312219 *)
sbbs carry r10 r10 L0x55555556e4e0 carry;
(* mov    %r11,%rsi                                #! PC = 0x93824992312223 *)
mov rsi r11;
(* sbb    0x28(%rcx),%r11                          #! EA = L0x55555556e4e8; Value = 0x1a0111ea397fe69a; PC = 0x93824992312226 *)
sbbs carry r11 r11 L0x55555556e4e8 carry;
(* sbb    $0x0,%rdx                                #! PC = 0x93824992312230 *)
sbbs carry rdx rdx 0@uint64 carry;
(* cmovb  %r12,%r14                                #! PC = 0x93824992312234 *)
cmov r14 carry r12 r14;
(* cmovb  %r13,%r15                                #! PC = 0x93824992312238 *)
cmov r15 carry r13 r15;
(* cmovb  %rax,%r8                                 #! PC = 0x93824992312242 *)
cmov r8 carry rax r8;
(* mov    %r14,0x30(%rdi)                          #! EA = L0x7fffffffdb20; PC = 0x93824992312246 *)
mov L0x7fffffffdb20 r14;
(* cmovb  %rbx,%r9                                 #! PC = 0x93824992312250 *)
cmov r9 carry rbx r9;
(* mov    %r15,0x38(%rdi)                          #! EA = L0x7fffffffdb28; PC = 0x93824992312254 *)
mov L0x7fffffffdb28 r15;
(* cmovb  %rbp,%r10                                #! PC = 0x93824992312258 *)
cmov r10 carry rbp r10;
(* mov    %r8,0x40(%rdi)                           #! EA = L0x7fffffffdb30; PC = 0x93824992312262 *)
mov L0x7fffffffdb30 r8;
(* cmovb  %rsi,%r11                                #! PC = 0x93824992312266 *)
cmov r11 carry rsi r11;
(* mov    %r9,0x48(%rdi)                           #! EA = L0x7fffffffdb38; PC = 0x93824992312270 *)
mov L0x7fffffffdb38 r9;
(* mov    %r10,0x50(%rdi)                          #! EA = L0x7fffffffdb40; PC = 0x93824992312274 *)
mov L0x7fffffffdb40 r10;
(* mov    %r11,0x58(%rdi)                          #! EA = L0x7fffffffdb48; PC = 0x93824992312278 *)
mov L0x7fffffffdb48 r11;

mov f0 L0x7fffffffdb20;
mov f1 L0x7fffffffdb28;
mov f2 L0x7fffffffdb30;
mov f3 L0x7fffffffdb38;
mov f4 L0x7fffffffdb40;
mov f5 L0x7fffffffdb48;

assert true &&
       eqmod (limbs 64 [e0, e1, e2, e3, e4, e5, 0@64] * const 448 2)
             (limbs 64 [f0, f1, f2, f3, f4, f5, 0@64])
             (limbs 64 [m0, m1, m2, m3, m4, m5, 0@64]);

assume eqmod (limbs 64 [e0, e1, e2, e3, e4, e5, 0] * 2)
             (limbs 64 [f0, f1, f2, f3, f4, f5, 0])
             (limbs 64 [m0, m1, m2, m3, m4, m5, 0]) && true;

assert true && limbs 64 [f0, f1, f2, f3, f4, f5] <u limbs 64 [m0, m1, m2, m3, m4, m5];

cut and[m0 = 0xb9feffffffffaaab,
        m1 = 0x1eabfffeb153ffff,
        m2 = 0x6730d2a0f6b0f624,
        m3 = 0x64774b84f38512bf,
        m4 = 0x4b1ba7b6434bacd7,
        m5 = 0x1a0111ea397fe69a,
        eqmod (1 + m0 * n0) 0 (2**64),

        L0x55555556e4c0 = m0, L0x55555556e4c8 = m1, L0x55555556e4d0 = m2,
        L0x55555556e4d8 = m3, L0x55555556e4e0 = m4, L0x55555556e4e8 = m5,

        L0x7fffffffd980 = n0,
        
        eqmod
        limbs 64 [c0, c1, c2, c3, c4, c5]
        limbs 64 [x0, x1, x2, x3, x4, x5] + limbs 64 [y0, y1, y2, y3, y4, y5]
        limbs 64 [m0, m1, m2, m3, m4, m5],
        eqmod
        limbs 64 [d0, d1, d2, d3, d4, d5]
        limbs 64 [x0, x1, x2, x3, x4, x5] - limbs 64 [y0, y1, y2, y3, y4, y5]
        limbs 64 [m0, m1, m2, m3, m4, m5],

        eqmod
        limbs 64 [f0, f1, f2, f3, f4, f5] * (2**383)
        limbs 64 [x0, x1, x2, x3, x4, x5] * limbs 64 [y0, y1, y2, y3, y4, y5]
        limbs 64 [m0, m1, m2, m3, m4, m5]
        ] &&
    and[m0 = 0xb9feffffffffaaab@64,
        m1 = 0x1eabfffeb153ffff@64,
        m2 = 0x6730d2a0f6b0f624@64,
        m3 = 0x64774b84f38512bf@64,
        m4 = 0x4b1ba7b6434bacd7@64,
        m5 = 0x1a0111ea397fe69a@64,
        add 1@64 (mul m0 n0) = 0@64,

        L0x55555556e4c0 = m0, L0x55555556e4c8 = m1, L0x55555556e4d0 = m2,
        L0x55555556e4d8 = m3, L0x55555556e4e0 = m4, L0x55555556e4e8 = m5,

        L0x7fffffffd980 = n0,

        eqmod
        limbs 64 [c0, c1, c2, c3, c4, c5]
        limbs 64 [x0, x1, x2, x3, x4, x5] + limbs 64 [y0, y1, y2, y3, y4, y5]
        limbs 64 [m0, m1, m2, m3, m4, m5],
        eqmod
        limbs 64 [d0, d1, d2, d3, d4, d5]
        limbs 64 [x0, x1, x2, x3, x4, x5] - limbs 64 [y0, y1, y2, y3, y4, y5]
        limbs 64 [m0, m1, m2, m3, m4, m5],

        limbs 64 [x0, x1, x2, x3, x4, x5] <u limbs 64 [m0, m1, m2, m3, m4, m5],
        limbs 64 [y0, y1, y2, y3, y4, y5] <u limbs 64 [m0, m1, m2, m3, m4, m5],
        limbs 64 [c0, c1, c2, c3, c4, c5] <u limbs 64 [m0, m1, m2, m3, m4, m5],
        limbs 64 [d0, d1, d2, d3, d4, d5] <u limbs 64 [m0, m1, m2, m3, m4, m5],

        limbs 64 [f0, f1, f2, f3, f4, f5] <u limbs 64 [m0, m1, m2, m3, m4, m5]];


(* #lea    0x20(%rsp),%rsi                          #! PC = 0x93824992312282 *)
#lea    %%EA,%%rsi                          #! 0x93824992312282 = 0x93824992312282;
(* #lea    0x50(%rsp),%rbx                          #! PC = 0x93824992312287 *)
#lea    %%EA,%%rbx                          #! 0x93824992312287 = 0x93824992312287;
(* mov    0x50(%rsp),%rax                          #! EA = L0x7fffffffd9d0; Value = 0x000009c0000009c0; PC = 0x93824992312292 *)
mov rax L0x7fffffffd9d0;
(* mov    0x20(%rsp),%r14                          #! EA = L0x7fffffffd9a0; Value = 0x000009c0000009c0; PC = 0x93824992312297 *)
mov r14 L0x7fffffffd9a0;
(* mov    0x28(%rsp),%r15                          #! EA = L0x7fffffffd9a8; Value = 0x000009c0000009c0; PC = 0x93824992312302 *)
mov r15 L0x7fffffffd9a8;
(* mov    0x30(%rsp),%r12                          #! EA = L0x7fffffffd9b0; Value = 0x0000000000000000; PC = 0x93824992312307 *)
mov r12 L0x7fffffffd9b0;
(* mov    0x38(%rsp),%r13                          #! EA = L0x7fffffffd9b8; Value = 0x0000004000000100; PC = 0x93824992312312 *)
mov r13 L0x7fffffffd9b8;
(* #callq  0x555555568c80 <__mulq_mont_384>        #! PC = 0x93824992312317 *)
#callq  0x555555568c80 <__mulq_mont_384>        #! 0x93824992312317 = 0x93824992312317;
(* endbr64                                         #! PC = 0x93824992316544 *)
#endbr64                                         #! 0x93824992316544 = 0x93824992316544;
(* mov    %rax,%rdi                                #! PC = 0x93824992316548 *)
mov rdi rax;
(* mul    %r14                                     #! PC = 0x93824992316551 *)
umull rdx rax r14 rax;
(* mov    %rax,%r8                                 #! PC = 0x93824992316554 *)
mov r8 rax;
(* mov    %rdi,%rax                                #! PC = 0x93824992316557 *)
mov rax rdi;
(* mov    %rdx,%r9                                 #! PC = 0x93824992316560 *)
mov r9 rdx;
(* mul    %r15                                     #! PC = 0x93824992316563 *)
umull rdx rax r15 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992316566 *)
adds carry r9 rax r9;
(* mov    %rdi,%rax                                #! PC = 0x93824992316569 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316572 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992316576 *)
mov r10 rdx;
(* mul    %r12                                     #! PC = 0x93824992316579 *)
umull rdx rax r12 rax;
(* add    %rax,%r10                                #! PC = 0x93824992316582 *)
adds carry r10 rax r10;
(* mov    %rdi,%rax                                #! PC = 0x93824992316585 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316588 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992316592 *)
mov r11 rdx;
(* mov    %r8,%rbp                                 #! PC = 0x93824992316595 *)
mov rbp r8;
(* imul   0x8(%rsp),%r8                            #! EA = L0x7fffffffd980; Value = 0x89f3fffcfffcfffd; PC = 0x93824992316598 *)
umull dontcare r8 L0x7fffffffd980 r8;
(* mul    %r13                                     #! PC = 0x93824992316604 *)
umull rdx rax r13 rax;
(* add    %rax,%r11                                #! PC = 0x93824992316607 *)
adds carry r11 rax r11;
(* mov    %rdi,%rax                                #! PC = 0x93824992316610 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316613 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r12                                #! PC = 0x93824992316617 *)
mov r12 rdx;
(* mulq   0x20(%rsi)                               #! EA = L0x7fffffffd9c0; PC = 0x93824992316620 *)
umull rdx rax L0x7fffffffd9c0 rax;
(* add    %rax,%r12                                #! PC = 0x93824992316624 *)
adds carry r12 rax r12;
(* mov    %rdi,%rax                                #! PC = 0x93824992316627 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316630 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r13                                #! PC = 0x93824992316634 *)
mov r13 rdx;
(* mulq   0x28(%rsi)                               #! EA = L0x7fffffffd9c8; PC = 0x93824992316637 *)
umull rdx rax L0x7fffffffd9c8 rax;
(* add    %rax,%r13                                #! PC = 0x93824992316641 *)
adds carry r13 rax r13;
(* mov    %r8,%rax                                 #! PC = 0x93824992316644 *)
mov rax r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316647 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* xor    %r15,%r15                                #! PC = 0x93824992316651 *)
mov r15 0@uint64;
(* mov    %rdx,%r14                                #! PC = 0x93824992316654 *)
mov r14 rdx;
(* mulq   (%rcx)                                   #! EA = L0x55555556e4c0; PC = 0x93824992316657 *)
umull rdx rax L0x55555556e4c0 rax;
(* add    %rax,%rbp                                #! PC = 0x93824992316660 *)
adds carry rbp rax rbp;

(* NOTE: Montgomery reduction *)
assert eqmod rbp 0 (2**64) && true;
assume rbp = 0 && rbp = 0@64;

(* mov    %r8,%rax                                 #! PC = 0x93824992316663 *)
mov rax r8;
(* adc    %rdx,%rbp                                #! PC = 0x93824992316666 *)
adcs carry rbp rdx rbp carry;

assert true && carry = 0@1;
assume carry = 0 && true;

(* mulq   0x8(%rcx)                                #! EA = L0x55555556e4c8; PC = 0x93824992316669 *)
umull rdx rax L0x55555556e4c8 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992316673 *)
adds carry r9 rax r9;
(* mov    %r8,%rax                                 #! PC = 0x93824992316676 *)
mov rax r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316679 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r9                                 #! PC = 0x93824992316683 *)
adds carry r9 rbp r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316686 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992316690 *)
mov rbp rdx;
(* mulq   0x10(%rcx)                               #! EA = L0x55555556e4d0; PC = 0x93824992316693 *)
umull rdx rax L0x55555556e4d0 rax;
(* add    %rax,%r10                                #! PC = 0x93824992316697 *)
adds carry r10 rax r10;
(* mov    %r8,%rax                                 #! PC = 0x93824992316700 *)
mov rax r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316703 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r10                                #! PC = 0x93824992316707 *)
adds carry r10 rbp r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316710 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992316714 *)
mov rbp rdx;
(* mulq   0x18(%rcx)                               #! EA = L0x55555556e4d8; PC = 0x93824992316717 *)
umull rdx rax L0x55555556e4d8 rax;
(* add    %rbp,%r11                                #! PC = 0x93824992316721 *)
adds carry r11 rbp r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316724 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rax,%r11                                #! PC = 0x93824992316728 *)
adds carry r11 rax r11;
(* mov    %r8,%rax                                 #! PC = 0x93824992316731 *)
mov rax r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316734 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992316738 *)
mov rbp rdx;
(* mulq   0x20(%rcx)                               #! EA = L0x55555556e4e0; PC = 0x93824992316741 *)
umull rdx rax L0x55555556e4e0 rax;
(* add    %rax,%r12                                #! PC = 0x93824992316745 *)
adds carry r12 rax r12;
(* mov    %r8,%rax                                 #! PC = 0x93824992316748 *)
mov rax r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316751 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r12                                #! PC = 0x93824992316755 *)
adds carry r12 rbp r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316758 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992316762 *)
mov rbp rdx;
(* mulq   0x28(%rcx)                               #! EA = L0x55555556e4e8; PC = 0x93824992316765 *)
umull rdx rax L0x55555556e4e8 rax;
(* add    %rax,%r13                                #! PC = 0x93824992316769 *)
adds carry r13 rax r13;
(* mov    0x8(%rbx),%rax                           #! EA = L0x7fffffffd9d8; Value = 0x000009c0000009c0; PC = 0x93824992316772 *)
mov rax L0x7fffffffd9d8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316776 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r13                                #! PC = 0x93824992316780 *)
adds carry r13 rbp r13;
(* adc    %rdx,%r14                                #! PC = 0x93824992316783 *)
adcs carry r14 rdx r14 carry;
(* adc    $0x0,%r15                                #! PC = 0x93824992316786 *)
adcs carry r15 0@uint64 r15 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rax,%rdi                                #! PC = 0x93824992316790 *)
mov rdi rax;
(* mulq   (%rsi)                                   #! EA = L0x7fffffffd9a0; PC = 0x93824992316793 *)
umull rdx rax L0x7fffffffd9a0 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992316796 *)
adds carry r9 rax r9;
(* mov    %rdi,%rax                                #! PC = 0x93824992316799 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316802 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992316806 *)
mov r8 rdx;
(* mulq   0x8(%rsi)                                #! EA = L0x7fffffffd9a8; PC = 0x93824992316809 *)
umull rdx rax L0x7fffffffd9a8 rax;
(* add    %rax,%r10                                #! PC = 0x93824992316813 *)
adds carry r10 rax r10;
(* mov    %rdi,%rax                                #! PC = 0x93824992316816 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316819 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r8,%r10                                 #! PC = 0x93824992316823 *)
adds carry r10 r8 r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316826 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992316830 *)
mov r8 rdx;
(* mulq   0x10(%rsi)                               #! EA = L0x7fffffffd9b0; PC = 0x93824992316833 *)
umull rdx rax L0x7fffffffd9b0 rax;
(* add    %rax,%r11                                #! PC = 0x93824992316837 *)
adds carry r11 rax r11;
(* mov    %rdi,%rax                                #! PC = 0x93824992316840 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316843 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r8,%r11                                 #! PC = 0x93824992316847 *)
adds carry r11 r8 r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316850 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992316854 *)
mov r8 rdx;
(* mov    %r9,%rbp                                 #! PC = 0x93824992316857 *)
mov rbp r9;
(* imul   0x8(%rsp),%r9                            #! EA = L0x7fffffffd980; Value = 0x89f3fffcfffcfffd; PC = 0x93824992316860 *)
umull dontcare r9 L0x7fffffffd980 r9;
(* mulq   0x18(%rsi)                               #! EA = L0x7fffffffd9b8; PC = 0x93824992316866 *)
umull rdx rax L0x7fffffffd9b8 rax;
(* add    %rax,%r12                                #! PC = 0x93824992316870 *)
adds carry r12 rax r12;
(* mov    %rdi,%rax                                #! PC = 0x93824992316873 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316876 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r8,%r12                                 #! PC = 0x93824992316880 *)
adds carry r12 r8 r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316883 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992316887 *)
mov r8 rdx;
(* mulq   0x20(%rsi)                               #! EA = L0x7fffffffd9c0; PC = 0x93824992316890 *)
umull rdx rax L0x7fffffffd9c0 rax;
(* add    %rax,%r13                                #! PC = 0x93824992316894 *)
adds carry r13 rax r13;
(* mov    %rdi,%rax                                #! PC = 0x93824992316897 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316900 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r8,%r13                                 #! PC = 0x93824992316904 *)
adds carry r13 r8 r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316907 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992316911 *)
mov r8 rdx;
(* mulq   0x28(%rsi)                               #! EA = L0x7fffffffd9c8; PC = 0x93824992316914 *)
umull rdx rax L0x7fffffffd9c8 rax;
(* add    %r8,%r14                                 #! PC = 0x93824992316918 *)
adds carry r14 r8 r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316921 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* xor    %r8,%r8                                  #! PC = 0x93824992316925 *)
mov r8 0@uint64;
(* add    %rax,%r14                                #! PC = 0x93824992316928 *)
adds carry r14 rax r14;
(* mov    %r9,%rax                                 #! PC = 0x93824992316931 *)
mov rax r9;
(* adc    %rdx,%r15                                #! PC = 0x93824992316934 *)
adcs carry r15 rdx r15 carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992316937 *)
adcs carry r8 0@uint64 r8 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mulq   (%rcx)                                   #! EA = L0x55555556e4c0; PC = 0x93824992316941 *)
umull rdx rax L0x55555556e4c0 rax;
(* add    %rax,%rbp                                #! PC = 0x93824992316944 *)
adds carry rbp rax rbp;

(* NOTE: Montgomery reduction *)
assert eqmod rbp 0 (2**64) && true;
assume rbp = 0 && rbp = 0@64;

(* mov    %r9,%rax                                 #! PC = 0x93824992316947 *)
mov rax r9;
(* adc    %rdx,%rbp                                #! PC = 0x93824992316950 *)
adcs carry rbp rdx rbp carry;

assert true && carry = 0@1;
assume carry = 0 && true;

(* mulq   0x8(%rcx)                                #! EA = L0x55555556e4c8; PC = 0x93824992316953 *)
umull rdx rax L0x55555556e4c8 rax;
(* add    %rax,%r10                                #! PC = 0x93824992316957 *)
adds carry r10 rax r10;
(* mov    %r9,%rax                                 #! PC = 0x93824992316960 *)
mov rax r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316963 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r10                                #! PC = 0x93824992316967 *)
adds carry r10 rbp r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316970 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992316974 *)
mov rbp rdx;
(* mulq   0x10(%rcx)                               #! EA = L0x55555556e4d0; PC = 0x93824992316977 *)
umull rdx rax L0x55555556e4d0 rax;
(* add    %rax,%r11                                #! PC = 0x93824992316981 *)
adds carry r11 rax r11;
(* mov    %r9,%rax                                 #! PC = 0x93824992316984 *)
mov rax r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316987 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r11                                #! PC = 0x93824992316991 *)
adds carry r11 rbp r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992316994 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992316998 *)
mov rbp rdx;
(* mulq   0x18(%rcx)                               #! EA = L0x55555556e4d8; PC = 0x93824992317001 *)
umull rdx rax L0x55555556e4d8 rax;
(* add    %rbp,%r12                                #! PC = 0x93824992317005 *)
adds carry r12 rbp r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317008 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rax,%r12                                #! PC = 0x93824992317012 *)
adds carry r12 rax r12;
(* mov    %r9,%rax                                 #! PC = 0x93824992317015 *)
mov rax r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317018 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992317022 *)
mov rbp rdx;
(* mulq   0x20(%rcx)                               #! EA = L0x55555556e4e0; PC = 0x93824992317025 *)
umull rdx rax L0x55555556e4e0 rax;
(* add    %rax,%r13                                #! PC = 0x93824992317029 *)
adds carry r13 rax r13;
(* mov    %r9,%rax                                 #! PC = 0x93824992317032 *)
mov rax r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317035 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r13                                #! PC = 0x93824992317039 *)
adds carry r13 rbp r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317042 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992317046 *)
mov rbp rdx;
(* mulq   0x28(%rcx)                               #! EA = L0x55555556e4e8; PC = 0x93824992317049 *)
umull rdx rax L0x55555556e4e8 rax;
(* add    %rax,%r14                                #! PC = 0x93824992317053 *)
adds carry r14 rax r14;
(* mov    0x10(%rbx),%rax                          #! EA = L0x7fffffffd9e0; Value = 0x0000000000000000; PC = 0x93824992317056 *)
mov rax L0x7fffffffd9e0;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317060 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r14                                #! PC = 0x93824992317064 *)
adds carry r14 rbp r14;
(* adc    %rdx,%r15                                #! PC = 0x93824992317067 *)
adcs carry r15 rdx r15 carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992317070 *)
adcs carry r8 0@uint64 r8 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rax,%rdi                                #! PC = 0x93824992317074 *)
mov rdi rax;
(* mulq   (%rsi)                                   #! EA = L0x7fffffffd9a0; PC = 0x93824992317077 *)
umull rdx rax L0x7fffffffd9a0 rax;
(* add    %rax,%r10                                #! PC = 0x93824992317080 *)
adds carry r10 rax r10;
(* mov    %rdi,%rax                                #! PC = 0x93824992317083 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317086 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992317090 *)
mov r9 rdx;
(* mulq   0x8(%rsi)                                #! EA = L0x7fffffffd9a8; PC = 0x93824992317093 *)
umull rdx rax L0x7fffffffd9a8 rax;
(* add    %rax,%r11                                #! PC = 0x93824992317097 *)
adds carry r11 rax r11;
(* mov    %rdi,%rax                                #! PC = 0x93824992317100 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317103 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r9,%r11                                 #! PC = 0x93824992317107 *)
adds carry r11 r9 r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317110 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992317114 *)
mov r9 rdx;
(* mulq   0x10(%rsi)                               #! EA = L0x7fffffffd9b0; PC = 0x93824992317117 *)
umull rdx rax L0x7fffffffd9b0 rax;
(* add    %rax,%r12                                #! PC = 0x93824992317121 *)
adds carry r12 rax r12;
(* mov    %rdi,%rax                                #! PC = 0x93824992317124 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317127 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r9,%r12                                 #! PC = 0x93824992317131 *)
adds carry r12 r9 r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317134 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992317138 *)
mov r9 rdx;
(* mov    %r10,%rbp                                #! PC = 0x93824992317141 *)
mov rbp r10;
(* imul   0x8(%rsp),%r10                           #! EA = L0x7fffffffd980; Value = 0x89f3fffcfffcfffd; PC = 0x93824992317144 *)
umull dontcare r10 L0x7fffffffd980 r10;
(* mulq   0x18(%rsi)                               #! EA = L0x7fffffffd9b8; PC = 0x93824992317150 *)
umull rdx rax L0x7fffffffd9b8 rax;
(* add    %rax,%r13                                #! PC = 0x93824992317154 *)
adds carry r13 rax r13;
(* mov    %rdi,%rax                                #! PC = 0x93824992317157 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317160 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r9,%r13                                 #! PC = 0x93824992317164 *)
adds carry r13 r9 r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317167 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992317171 *)
mov r9 rdx;
(* mulq   0x20(%rsi)                               #! EA = L0x7fffffffd9c0; PC = 0x93824992317174 *)
umull rdx rax L0x7fffffffd9c0 rax;
(* add    %rax,%r14                                #! PC = 0x93824992317178 *)
adds carry r14 rax r14;
(* mov    %rdi,%rax                                #! PC = 0x93824992317181 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317184 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r9,%r14                                 #! PC = 0x93824992317188 *)
adds carry r14 r9 r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317191 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992317195 *)
mov r9 rdx;
(* mulq   0x28(%rsi)                               #! EA = L0x7fffffffd9c8; PC = 0x93824992317198 *)
umull rdx rax L0x7fffffffd9c8 rax;
(* add    %r9,%r15                                 #! PC = 0x93824992317202 *)
adds carry r15 r9 r15;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317205 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* xor    %r9,%r9                                  #! PC = 0x93824992317209 *)
mov r9 0@uint64;
(* add    %rax,%r15                                #! PC = 0x93824992317212 *)
adds carry r15 rax r15;
(* mov    %r10,%rax                                #! PC = 0x93824992317215 *)
mov rax r10;
(* adc    %rdx,%r8                                 #! PC = 0x93824992317218 *)
adcs carry r8 rdx r8 carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992317221 *)
adcs carry r9 0@uint64 r9 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mulq   (%rcx)                                   #! EA = L0x55555556e4c0; PC = 0x93824992317225 *)
umull rdx rax L0x55555556e4c0 rax;
(* add    %rax,%rbp                                #! PC = 0x93824992317228 *)
adds carry rbp rax rbp;

(* NOTE: Montgomery reduction *)
assert eqmod rbp 0 (2**64) && true;
assume rbp = 0 && rbp = 0@64;

(* mov    %r10,%rax                                #! PC = 0x93824992317231 *)
mov rax r10;
(* adc    %rdx,%rbp                                #! PC = 0x93824992317234 *)
adcs carry rbp rdx rbp carry;

assert true && carry = 0@1;
assume carry = 0 && true;

(* mulq   0x8(%rcx)                                #! EA = L0x55555556e4c8; PC = 0x93824992317237 *)
umull rdx rax L0x55555556e4c8 rax;
(* add    %rax,%r11                                #! PC = 0x93824992317241 *)
adds carry r11 rax r11;
(* mov    %r10,%rax                                #! PC = 0x93824992317244 *)
mov rax r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317247 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r11                                #! PC = 0x93824992317251 *)
adds carry r11 rbp r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317254 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992317258 *)
mov rbp rdx;
(* mulq   0x10(%rcx)                               #! EA = L0x55555556e4d0; PC = 0x93824992317261 *)
umull rdx rax L0x55555556e4d0 rax;
(* add    %rax,%r12                                #! PC = 0x93824992317265 *)
adds carry r12 rax r12;
(* mov    %r10,%rax                                #! PC = 0x93824992317268 *)
mov rax r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317271 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r12                                #! PC = 0x93824992317275 *)
adds carry r12 rbp r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317278 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992317282 *)
mov rbp rdx;
(* mulq   0x18(%rcx)                               #! EA = L0x55555556e4d8; PC = 0x93824992317285 *)
umull rdx rax L0x55555556e4d8 rax;
(* add    %rbp,%r13                                #! PC = 0x93824992317289 *)
adds carry r13 rbp r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317292 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rax,%r13                                #! PC = 0x93824992317296 *)
adds carry r13 rax r13;
(* mov    %r10,%rax                                #! PC = 0x93824992317299 *)
mov rax r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317302 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992317306 *)
mov rbp rdx;
(* mulq   0x20(%rcx)                               #! EA = L0x55555556e4e0; PC = 0x93824992317309 *)
umull rdx rax L0x55555556e4e0 rax;
(* add    %rax,%r14                                #! PC = 0x93824992317313 *)
adds carry r14 rax r14;
(* mov    %r10,%rax                                #! PC = 0x93824992317316 *)
mov rax r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317319 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r14                                #! PC = 0x93824992317323 *)
adds carry r14 rbp r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317326 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992317330 *)
mov rbp rdx;
(* mulq   0x28(%rcx)                               #! EA = L0x55555556e4e8; PC = 0x93824992317333 *)
umull rdx rax L0x55555556e4e8 rax;
(* add    %rax,%r15                                #! PC = 0x93824992317337 *)
adds carry r15 rax r15;
(* mov    0x18(%rbx),%rax                          #! EA = L0x7fffffffd9e8; Value = 0x0000004000000100; PC = 0x93824992317340 *)
mov rax L0x7fffffffd9e8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317344 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r15                                #! PC = 0x93824992317348 *)
adds carry r15 rbp r15;
(* adc    %rdx,%r8                                 #! PC = 0x93824992317351 *)
adcs carry r8 rdx r8 carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992317354 *)
adcs carry r9 0@uint64 r9 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rax,%rdi                                #! PC = 0x93824992317358 *)
mov rdi rax;
(* mulq   (%rsi)                                   #! EA = L0x7fffffffd9a0; PC = 0x93824992317361 *)
umull rdx rax L0x7fffffffd9a0 rax;
(* add    %rax,%r11                                #! PC = 0x93824992317364 *)
adds carry r11 rax r11;
(* mov    %rdi,%rax                                #! PC = 0x93824992317367 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317370 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992317374 *)
mov r10 rdx;
(* mulq   0x8(%rsi)                                #! EA = L0x7fffffffd9a8; PC = 0x93824992317377 *)
umull rdx rax L0x7fffffffd9a8 rax;
(* add    %rax,%r12                                #! PC = 0x93824992317381 *)
adds carry r12 rax r12;
(* mov    %rdi,%rax                                #! PC = 0x93824992317384 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317387 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r10,%r12                                #! PC = 0x93824992317391 *)
adds carry r12 r10 r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317394 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992317398 *)
mov r10 rdx;
(* mulq   0x10(%rsi)                               #! EA = L0x7fffffffd9b0; PC = 0x93824992317401 *)
umull rdx rax L0x7fffffffd9b0 rax;
(* add    %rax,%r13                                #! PC = 0x93824992317405 *)
adds carry r13 rax r13;
(* mov    %rdi,%rax                                #! PC = 0x93824992317408 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317411 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r10,%r13                                #! PC = 0x93824992317415 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317418 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992317422 *)
mov r10 rdx;
(* mov    %r11,%rbp                                #! PC = 0x93824992317425 *)
mov rbp r11;
(* imul   0x8(%rsp),%r11                           #! EA = L0x7fffffffd980; Value = 0x89f3fffcfffcfffd; PC = 0x93824992317428 *)
umull dontcare r11 L0x7fffffffd980 r11;
(* mulq   0x18(%rsi)                               #! EA = L0x7fffffffd9b8; PC = 0x93824992317434 *)
umull rdx rax L0x7fffffffd9b8 rax;
(* add    %rax,%r14                                #! PC = 0x93824992317438 *)
adds carry r14 rax r14;
(* mov    %rdi,%rax                                #! PC = 0x93824992317441 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317444 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r10,%r14                                #! PC = 0x93824992317448 *)
adds carry r14 r10 r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317451 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992317455 *)
mov r10 rdx;
(* mulq   0x20(%rsi)                               #! EA = L0x7fffffffd9c0; PC = 0x93824992317458 *)
umull rdx rax L0x7fffffffd9c0 rax;
(* add    %rax,%r15                                #! PC = 0x93824992317462 *)
adds carry r15 rax r15;
(* mov    %rdi,%rax                                #! PC = 0x93824992317465 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317468 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r10,%r15                                #! PC = 0x93824992317472 *)
adds carry r15 r10 r15;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317475 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992317479 *)
mov r10 rdx;
(* mulq   0x28(%rsi)                               #! EA = L0x7fffffffd9c8; PC = 0x93824992317482 *)
umull rdx rax L0x7fffffffd9c8 rax;
(* add    %r10,%r8                                 #! PC = 0x93824992317486 *)
adds carry r8 r10 r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317489 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* xor    %r10,%r10                                #! PC = 0x93824992317493 *)
mov r10 0@uint64;
(* add    %rax,%r8                                 #! PC = 0x93824992317496 *)
adds carry r8 rax r8;
(* mov    %r11,%rax                                #! PC = 0x93824992317499 *)
mov rax r11;
(* adc    %rdx,%r9                                 #! PC = 0x93824992317502 *)
adcs carry r9 rdx r9 carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992317505 *)
adcs carry r10 0@uint64 r10 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mulq   (%rcx)                                   #! EA = L0x55555556e4c0; PC = 0x93824992317509 *)
umull rdx rax L0x55555556e4c0 rax;
(* add    %rax,%rbp                                #! PC = 0x93824992317512 *)
adds carry rbp rax rbp;

(* NOTE: Montgomery reduction *)
assert eqmod rbp 0 (2**64) && true;
assume rbp = 0 && rbp = 0@64;

(* mov    %r11,%rax                                #! PC = 0x93824992317515 *)
mov rax r11;
(* adc    %rdx,%rbp                                #! PC = 0x93824992317518 *)
adcs carry rbp rdx rbp carry;

assert true && carry = 0@1;
assume carry = 0 && true;

(* mulq   0x8(%rcx)                                #! EA = L0x55555556e4c8; PC = 0x93824992317521 *)
umull rdx rax L0x55555556e4c8 rax;
(* add    %rax,%r12                                #! PC = 0x93824992317525 *)
adds carry r12 rax r12;
(* mov    %r11,%rax                                #! PC = 0x93824992317528 *)
mov rax r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317531 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r12                                #! PC = 0x93824992317535 *)
adds carry r12 rbp r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317538 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992317542 *)
mov rbp rdx;
(* mulq   0x10(%rcx)                               #! EA = L0x55555556e4d0; PC = 0x93824992317545 *)
umull rdx rax L0x55555556e4d0 rax;
(* add    %rax,%r13                                #! PC = 0x93824992317549 *)
adds carry r13 rax r13;
(* mov    %r11,%rax                                #! PC = 0x93824992317552 *)
mov rax r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317555 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r13                                #! PC = 0x93824992317559 *)
adds carry r13 rbp r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317562 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992317566 *)
mov rbp rdx;
(* mulq   0x18(%rcx)                               #! EA = L0x55555556e4d8; PC = 0x93824992317569 *)
umull rdx rax L0x55555556e4d8 rax;
(* add    %rbp,%r14                                #! PC = 0x93824992317573 *)
adds carry r14 rbp r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317576 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rax,%r14                                #! PC = 0x93824992317580 *)
adds carry r14 rax r14;
(* mov    %r11,%rax                                #! PC = 0x93824992317583 *)
mov rax r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317586 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992317590 *)
mov rbp rdx;
(* mulq   0x20(%rcx)                               #! EA = L0x55555556e4e0; PC = 0x93824992317593 *)
umull rdx rax L0x55555556e4e0 rax;
(* add    %rax,%r15                                #! PC = 0x93824992317597 *)
adds carry r15 rax r15;
(* mov    %r11,%rax                                #! PC = 0x93824992317600 *)
mov rax r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317603 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r15                                #! PC = 0x93824992317607 *)
adds carry r15 rbp r15;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317610 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992317614 *)
mov rbp rdx;
(* mulq   0x28(%rcx)                               #! EA = L0x55555556e4e8; PC = 0x93824992317617 *)
umull rdx rax L0x55555556e4e8 rax;
(* add    %rax,%r8                                 #! PC = 0x93824992317621 *)
adds carry r8 rax r8;
(* mov    0x20(%rbx),%rax                          #! EA = L0x7fffffffd9f0; Value = 0x0000004000000000; PC = 0x93824992317624 *)
mov rax L0x7fffffffd9f0;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317628 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r8                                 #! PC = 0x93824992317632 *)
adds carry r8 rbp r8;
(* adc    %rdx,%r9                                 #! PC = 0x93824992317635 *)
adcs carry r9 rdx r9 carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992317638 *)
adcs carry r10 0@uint64 r10 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rax,%rdi                                #! PC = 0x93824992317642 *)
mov rdi rax;
(* mulq   (%rsi)                                   #! EA = L0x7fffffffd9a0; PC = 0x93824992317645 *)
umull rdx rax L0x7fffffffd9a0 rax;
(* add    %rax,%r12                                #! PC = 0x93824992317648 *)
adds carry r12 rax r12;
(* mov    %rdi,%rax                                #! PC = 0x93824992317651 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317654 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992317658 *)
mov r11 rdx;
(* mulq   0x8(%rsi)                                #! EA = L0x7fffffffd9a8; PC = 0x93824992317661 *)
umull rdx rax L0x7fffffffd9a8 rax;
(* add    %rax,%r13                                #! PC = 0x93824992317665 *)
adds carry r13 rax r13;
(* mov    %rdi,%rax                                #! PC = 0x93824992317668 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317671 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r13                                #! PC = 0x93824992317675 *)
adds carry r13 r11 r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317678 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992317682 *)
mov r11 rdx;
(* mulq   0x10(%rsi)                               #! EA = L0x7fffffffd9b0; PC = 0x93824992317685 *)
umull rdx rax L0x7fffffffd9b0 rax;
(* add    %rax,%r14                                #! PC = 0x93824992317689 *)
adds carry r14 rax r14;
(* mov    %rdi,%rax                                #! PC = 0x93824992317692 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317695 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r14                                #! PC = 0x93824992317699 *)
adds carry r14 r11 r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317702 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992317706 *)
mov r11 rdx;
(* mov    %r12,%rbp                                #! PC = 0x93824992317709 *)
mov rbp r12;
(* imul   0x8(%rsp),%r12                           #! EA = L0x7fffffffd980; Value = 0x89f3fffcfffcfffd; PC = 0x93824992317712 *)
umull dontcare r12 L0x7fffffffd980 r12;
(* mulq   0x18(%rsi)                               #! EA = L0x7fffffffd9b8; PC = 0x93824992317718 *)
umull rdx rax L0x7fffffffd9b8 rax;
(* add    %rax,%r15                                #! PC = 0x93824992317722 *)
adds carry r15 rax r15;
(* mov    %rdi,%rax                                #! PC = 0x93824992317725 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317728 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r15                                #! PC = 0x93824992317732 *)
adds carry r15 r11 r15;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317735 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992317739 *)
mov r11 rdx;
(* mulq   0x20(%rsi)                               #! EA = L0x7fffffffd9c0; PC = 0x93824992317742 *)
umull rdx rax L0x7fffffffd9c0 rax;
(* add    %rax,%r8                                 #! PC = 0x93824992317746 *)
adds carry r8 rax r8;
(* mov    %rdi,%rax                                #! PC = 0x93824992317749 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317752 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r8                                 #! PC = 0x93824992317756 *)
adds carry r8 r11 r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317759 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992317763 *)
mov r11 rdx;
(* mulq   0x28(%rsi)                               #! EA = L0x7fffffffd9c8; PC = 0x93824992317766 *)
umull rdx rax L0x7fffffffd9c8 rax;
(* add    %r11,%r9                                 #! PC = 0x93824992317770 *)
adds carry r9 r11 r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317773 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* xor    %r11,%r11                                #! PC = 0x93824992317777 *)
mov r11 0@uint64;
(* add    %rax,%r9                                 #! PC = 0x93824992317780 *)
adds carry r9 rax r9;
(* mov    %r12,%rax                                #! PC = 0x93824992317783 *)
mov rax r12;
(* adc    %rdx,%r10                                #! PC = 0x93824992317786 *)
adcs carry r10 rdx r10 carry;
(* adc    $0x0,%r11                                #! PC = 0x93824992317789 *)
adcs carry r11 0@uint64 r11 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mulq   (%rcx)                                   #! EA = L0x55555556e4c0; PC = 0x93824992317793 *)
umull rdx rax L0x55555556e4c0 rax;
(* add    %rax,%rbp                                #! PC = 0x93824992317796 *)
adds carry rbp rax rbp;

(* NOTE: Montgomery reduction *)
assert eqmod rbp 0 (2**64) && true;
assume rbp = 0 && rbp = 0@64;

(* mov    %r12,%rax                                #! PC = 0x93824992317799 *)
mov rax r12;
(* adc    %rdx,%rbp                                #! PC = 0x93824992317802 *)
adcs carry rbp rdx rbp carry;

assert true && carry = 0@1;
assume carry = 0 && true;

(* mulq   0x8(%rcx)                                #! EA = L0x55555556e4c8; PC = 0x93824992317805 *)
umull rdx rax L0x55555556e4c8 rax;
(* add    %rax,%r13                                #! PC = 0x93824992317809 *)
adds carry r13 rax r13;
(* mov    %r12,%rax                                #! PC = 0x93824992317812 *)
mov rax r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317815 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r13                                #! PC = 0x93824992317819 *)
adds carry r13 rbp r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317822 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992317826 *)
mov rbp rdx;
(* mulq   0x10(%rcx)                               #! EA = L0x55555556e4d0; PC = 0x93824992317829 *)
umull rdx rax L0x55555556e4d0 rax;
(* add    %rax,%r14                                #! PC = 0x93824992317833 *)
adds carry r14 rax r14;
(* mov    %r12,%rax                                #! PC = 0x93824992317836 *)
mov rax r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317839 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r14                                #! PC = 0x93824992317843 *)
adds carry r14 rbp r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317846 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992317850 *)
mov rbp rdx;
(* mulq   0x18(%rcx)                               #! EA = L0x55555556e4d8; PC = 0x93824992317853 *)
umull rdx rax L0x55555556e4d8 rax;
(* add    %rbp,%r15                                #! PC = 0x93824992317857 *)
adds carry r15 rbp r15;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317860 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rax,%r15                                #! PC = 0x93824992317864 *)
adds carry r15 rax r15;
(* mov    %r12,%rax                                #! PC = 0x93824992317867 *)
mov rax r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317870 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992317874 *)
mov rbp rdx;
(* mulq   0x20(%rcx)                               #! EA = L0x55555556e4e0; PC = 0x93824992317877 *)
umull rdx rax L0x55555556e4e0 rax;
(* add    %rax,%r8                                 #! PC = 0x93824992317881 *)
adds carry r8 rax r8;
(* mov    %r12,%rax                                #! PC = 0x93824992317884 *)
mov rax r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317887 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r8                                 #! PC = 0x93824992317891 *)
adds carry r8 rbp r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317894 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992317898 *)
mov rbp rdx;
(* mulq   0x28(%rcx)                               #! EA = L0x55555556e4e8; PC = 0x93824992317901 *)
umull rdx rax L0x55555556e4e8 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992317905 *)
adds carry r9 rax r9;
(* mov    0x28(%rbx),%rax                          #! EA = L0x7fffffffd9f8; Value = 0x0000040000000200; PC = 0x93824992317908 *)
mov rax L0x7fffffffd9f8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317912 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r9                                 #! PC = 0x93824992317916 *)
adds carry r9 rbp r9;
(* adc    %rdx,%r10                                #! PC = 0x93824992317919 *)
adcs carry r10 rdx r10 carry;
(* adc    $0x0,%r11                                #! PC = 0x93824992317922 *)
adcs carry r11 0@uint64 r11 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rax,%rdi                                #! PC = 0x93824992317926 *)
mov rdi rax;
(* mulq   (%rsi)                                   #! EA = L0x7fffffffd9a0; PC = 0x93824992317929 *)
umull rdx rax L0x7fffffffd9a0 rax;
(* add    %rax,%r13                                #! PC = 0x93824992317932 *)
adds carry r13 rax r13;
(* mov    %rdi,%rax                                #! PC = 0x93824992317935 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317938 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r12                                #! PC = 0x93824992317942 *)
mov r12 rdx;
(* mulq   0x8(%rsi)                                #! EA = L0x7fffffffd9a8; PC = 0x93824992317945 *)
umull rdx rax L0x7fffffffd9a8 rax;
(* add    %rax,%r14                                #! PC = 0x93824992317949 *)
adds carry r14 rax r14;
(* mov    %rdi,%rax                                #! PC = 0x93824992317952 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317955 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r12,%r14                                #! PC = 0x93824992317959 *)
adds carry r14 r12 r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317962 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r12                                #! PC = 0x93824992317966 *)
mov r12 rdx;
(* mulq   0x10(%rsi)                               #! EA = L0x7fffffffd9b0; PC = 0x93824992317969 *)
umull rdx rax L0x7fffffffd9b0 rax;
(* add    %rax,%r15                                #! PC = 0x93824992317973 *)
adds carry r15 rax r15;
(* mov    %rdi,%rax                                #! PC = 0x93824992317976 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317979 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r12,%r15                                #! PC = 0x93824992317983 *)
adds carry r15 r12 r15;
(* adc    $0x0,%rdx                                #! PC = 0x93824992317986 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r12                                #! PC = 0x93824992317990 *)
mov r12 rdx;
(* mov    %r13,%rbp                                #! PC = 0x93824992317993 *)
mov rbp r13;
(* imul   0x8(%rsp),%r13                           #! EA = L0x7fffffffd980; Value = 0x89f3fffcfffcfffd; PC = 0x93824992317996 *)
umull dontcare r13 L0x7fffffffd980 r13;
(* mulq   0x18(%rsi)                               #! EA = L0x7fffffffd9b8; PC = 0x93824992318002 *)
umull rdx rax L0x7fffffffd9b8 rax;
(* add    %rax,%r8                                 #! PC = 0x93824992318006 *)
adds carry r8 rax r8;
(* mov    %rdi,%rax                                #! PC = 0x93824992318009 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992318012 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r12,%r8                                 #! PC = 0x93824992318016 *)
adds carry r8 r12 r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992318019 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r12                                #! PC = 0x93824992318023 *)
mov r12 rdx;
(* mulq   0x20(%rsi)                               #! EA = L0x7fffffffd9c0; PC = 0x93824992318026 *)
umull rdx rax L0x7fffffffd9c0 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992318030 *)
adds carry r9 rax r9;
(* mov    %rdi,%rax                                #! PC = 0x93824992318033 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992318036 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r12,%r9                                 #! PC = 0x93824992318040 *)
adds carry r9 r12 r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992318043 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r12                                #! PC = 0x93824992318047 *)
mov r12 rdx;
(* mulq   0x28(%rsi)                               #! EA = L0x7fffffffd9c8; PC = 0x93824992318050 *)
umull rdx rax L0x7fffffffd9c8 rax;
(* add    %r12,%r10                                #! PC = 0x93824992318054 *)
adds carry r10 r12 r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992318057 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* xor    %r12,%r12                                #! PC = 0x93824992318061 *)
mov r12 0@uint64;
(* add    %rax,%r10                                #! PC = 0x93824992318064 *)
adds carry r10 rax r10;
(* mov    %r13,%rax                                #! PC = 0x93824992318067 *)
mov rax r13;
(* adc    %rdx,%r11                                #! PC = 0x93824992318070 *)
adcs carry r11 rdx r11 carry;
(* adc    $0x0,%r12                                #! PC = 0x93824992318073 *)
adcs carry r12 0@uint64 r12 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mulq   (%rcx)                                   #! EA = L0x55555556e4c0; PC = 0x93824992318077 *)
umull rdx rax L0x55555556e4c0 rax;
(* add    %rax,%rbp                                #! PC = 0x93824992318080 *)
adds carry rbp rax rbp;

(* NOTE: Montgomery reduction *)
assert eqmod rbp 0 (2**64) && true;
assume rbp = 0 && rbp = 0@64;

(* mov    %r13,%rax                                #! PC = 0x93824992318083 *)
mov rax r13;
(* adc    %rdx,%rbp                                #! PC = 0x93824992318086 *)
adcs carry rbp rdx rbp carry;

assert true && carry = 0@1;
assume carry = 0 && true;

(* mulq   0x8(%rcx)                                #! EA = L0x55555556e4c8; PC = 0x93824992318089 *)
umull rdx rax L0x55555556e4c8 rax;
(* add    %rax,%r14                                #! PC = 0x93824992318093 *)
adds carry r14 rax r14;
(* mov    %r13,%rax                                #! PC = 0x93824992318096 *)
mov rax r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992318099 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r14                                #! PC = 0x93824992318103 *)
adds carry r14 rbp r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992318106 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992318110 *)
mov rbp rdx;
(* mulq   0x10(%rcx)                               #! EA = L0x55555556e4d0; PC = 0x93824992318113 *)
umull rdx rax L0x55555556e4d0 rax;
(* add    %rax,%r15                                #! PC = 0x93824992318117 *)
adds carry r15 rax r15;
(* mov    %r13,%rax                                #! PC = 0x93824992318120 *)
mov rax r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992318123 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r15                                #! PC = 0x93824992318127 *)
adds carry r15 rbp r15;
(* adc    $0x0,%rdx                                #! PC = 0x93824992318130 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992318134 *)
mov rbp rdx;
(* mulq   0x18(%rcx)                               #! EA = L0x55555556e4d8; PC = 0x93824992318137 *)
umull rdx rax L0x55555556e4d8 rax;
(* add    %rbp,%r8                                 #! PC = 0x93824992318141 *)
adds carry r8 rbp r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992318144 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rax,%r8                                 #! PC = 0x93824992318148 *)
adds carry r8 rax r8;
(* mov    %r13,%rax                                #! PC = 0x93824992318151 *)
mov rax r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992318154 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992318158 *)
mov rbp rdx;
(* mulq   0x20(%rcx)                               #! EA = L0x55555556e4e0; PC = 0x93824992318161 *)
umull rdx rax L0x55555556e4e0 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992318165 *)
adds carry r9 rax r9;
(* mov    %r13,%rax                                #! PC = 0x93824992318168 *)
mov rax r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992318171 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r9                                 #! PC = 0x93824992318175 *)
adds carry r9 rbp r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992318178 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992318182 *)
mov rbp rdx;
(* mulq   0x28(%rcx)                               #! EA = L0x55555556e4e8; PC = 0x93824992318185 *)
umull rdx rax L0x55555556e4e8 rax;
(* add    %rax,%r10                                #! PC = 0x93824992318189 *)
adds carry r10 rax r10;
(* mov    %r14,%rax                                #! PC = 0x93824992318192 *)
mov rax r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992318195 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r10                                #! PC = 0x93824992318199 *)
adds carry r10 rbp r10;
(* adc    %rdx,%r11                                #! PC = 0x93824992318202 *)
adcs carry r11 rdx r11 carry;
(* adc    $0x0,%r12                                #! PC = 0x93824992318205 *)
adcs carry r12 0@uint64 r12 carry;
assert true && carry = 0@1;
assume carry = 0 && true;

mov q0 r14;
mov q1 r15;
mov q2 r8;
mov q3 r9;
mov q4 r10;
mov q5 r11;
mov q6 r12;

assert eqmod (limbs 64 [0, 0, 0, 0, 0, 0, q0, q1, q2, q3, q4, q5, q6])
             ((limbs 64 [c0, c1, c2, c3, c4, c5]) * (limbs 64 [d0, d1, d2, d3, d4, d5]))
             (limbs 64 [m0, m1, m2, m3, m4, m5]) && true;


(* movq   %xmm0,%rdi                               #! PC = 0x93824992318209 *)
#movq   %xmm0,%%rdi                               #! 0x93824992318209 = 0x93824992318209;
(* sub    (%rcx),%r14                              #! EA = L0x55555556e4c0; Value = 0xb9feffffffffaaab; PC = 0x93824992318214 *)
subb carry r14 r14 L0x55555556e4c0;
(* mov    %r15,%rdx                                #! PC = 0x93824992318217 *)
mov rdx r15;
(* sbb    0x8(%rcx),%r15                           #! EA = L0x55555556e4c8; Value = 0x1eabfffeb153ffff; PC = 0x93824992318220 *)
sbbs carry r15 r15 L0x55555556e4c8 carry;
(* mov    %r8,%rbx                                 #! PC = 0x93824992318224 *)
mov rbx r8;
(* sbb    0x10(%rcx),%r8                           #! EA = L0x55555556e4d0; Value = 0x6730d2a0f6b0f624; PC = 0x93824992318227 *)
sbbs carry r8 r8 L0x55555556e4d0 carry;
(* mov    %r9,%rsi                                 #! PC = 0x93824992318231 *)
mov rsi r9;
(* sbb    0x18(%rcx),%r9                           #! EA = L0x55555556e4d8; Value = 0x64774b84f38512bf; PC = 0x93824992318234 *)
sbbs carry r9 r9 L0x55555556e4d8 carry;
(* mov    %r10,%rbp                                #! PC = 0x93824992318238 *)
mov rbp r10;
(* sbb    0x20(%rcx),%r10                          #! EA = L0x55555556e4e0; Value = 0x4b1ba7b6434bacd7; PC = 0x93824992318241 *)
sbbs carry r10 r10 L0x55555556e4e0 carry;
(* mov    %r11,%r13                                #! PC = 0x93824992318245 *)
mov r13 r11;
(* sbb    0x28(%rcx),%r11                          #! EA = L0x55555556e4e8; Value = 0x1a0111ea397fe69a; PC = 0x93824992318248 *)
sbbs carry r11 r11 L0x55555556e4e8 carry;
(* sbb    $0x0,%r12                                #! PC = 0x93824992318252 *)
sbbs carry r12 r12 0@uint64 carry;
(* cmovb  %rax,%r14                                #! PC = 0x93824992318256 *)
cmov r14 carry rax r14;
(* cmovb  %rdx,%r15                                #! PC = 0x93824992318260 *)
cmov r15 carry rdx r15;
(* cmovb  %rbx,%r8                                 #! PC = 0x93824992318264 *)
cmov r8 carry rbx r8;
(* mov    %r14,(%rdi)                              #! EA = L0x7fffffffdaf0; PC = 0x93824992318268 *)
mov L0x7fffffffdaf0 r14;
(* cmovb  %rsi,%r9                                 #! PC = 0x93824992318271 *)
cmov r9 carry rsi r9;
(* mov    %r15,0x8(%rdi)                           #! EA = L0x7fffffffdaf8; PC = 0x93824992318275 *)
mov L0x7fffffffdaf8 r15;
(* cmovb  %rbp,%r10                                #! PC = 0x93824992318279 *)
cmov r10 carry rbp r10;
(* mov    %r8,0x10(%rdi)                           #! EA = L0x7fffffffdb00; PC = 0x93824992318283 *)
mov L0x7fffffffdb00 r8;
(* cmovb  %r13,%r11                                #! PC = 0x93824992318287 *)
cmov r11 carry r13 r11;
(* mov    %r9,0x18(%rdi)                           #! EA = L0x7fffffffdb08; PC = 0x93824992318291 *)
mov L0x7fffffffdb08 r9;
(* mov    %r10,0x20(%rdi)                          #! EA = L0x7fffffffdb10; PC = 0x93824992318295 *)
mov L0x7fffffffdb10 r10;
(* mov    %r11,0x28(%rdi)                          #! EA = L0x7fffffffdb18; PC = 0x93824992318299 *)
mov L0x7fffffffdb18 r11;

mov e0 L0x7fffffffdaf0;
mov e1 L0x7fffffffdaf8;
mov e2 L0x7fffffffdb00;
mov e3 L0x7fffffffdb08;
mov e4 L0x7fffffffdb10;
mov e5 L0x7fffffffdb18;

assert true &&
       eqmod (limbs 64 [q0, q1, q2, q3, q4, q5, q6])
             (limbs 64 [e0, e1, e2, e3, e4, e5, 0@64])
             (limbs 64 [m0, m1, m2, m3, m4, m5, 0@64]);

assume eqmod (limbs 64 [q0, q1, q2, q3, q4, q5, q6])
             (limbs 64 [e0, e1, e2, e3, e4, e5, 0])
             (limbs 64 [m0, m1, m2, m3, m4, m5, 0]) && true;

assert true && limbs 64 [e0, e1, e2, e3, e4, e5] <u limbs 64 [m0, m1, m2, m3, m4, m5];


(* #repz retq                                      #! PC = 0x93824992318303 *)
#repz retq                                      #! 0x93824992318303 = 0x93824992318303;
(* #lea    0x88(%rsp),%r8                           #! PC = 0x93824992312322 *)
#lea    %%EA,%%r8                           #! 0x93824992312322 = 0x93824992312322;
(* #lea    0x30(%r8),%rsp                           #! PC = 0x93824992312353 *)
#lea    0x30(%%r8),%rsp                           #! 0x93824992312353 = 0x93824992312353;
(* #repz retq                                      #! PC = 0x93824992312357 *)
#repz retq                                      #! 0x93824992312357 = 0x93824992312357;
(* #leaveq                                          #! PC = 0x93824992242747 *)
#leaveq                                          #! 0x93824992242747 = 0x93824992242747;
(* #retq                                           #! PC = 0x93824992242748 *)
#retq                                           #! 0x93824992242748 = 0x93824992242748;

{
  and[eqmod
      (limbs 64 [e0, e1, e2, e3, e4, e5] + limbs 64 [f0, f1, f2, f3, f4, f5] * I) * (2**384)

      (limbs 64 [x0, x1, x2, x3, x4, x5] + limbs 64 [y0, y1, y2, y3, y4, y5] * I) *
      (limbs 64 [x0, x1, x2, x3, x4, x5] + limbs 64 [y0, y1, y2, y3, y4, y5] * I)
      
      [limbs 64 [m0, m1, m2, m3, m4, m5], I * I + 1]
      ]
  &&
  and[limbs 64 [e0, e1, e2, e3, e4, e5] <u limbs 64 [m0, m1, m2, m3, m4, m5],
      limbs 64 [f0, f1, f2, f3, f4, f5] <u limbs 64 [m0, m1, m2, m3, m4, m5]
      ]
}

