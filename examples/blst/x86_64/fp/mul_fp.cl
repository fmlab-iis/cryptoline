(* quine: -v mul_fp.cl
Parsing Cryptoline file:                [OK]            0.009508 seconds
Checking well-formedness:               [OK]            0.001370 seconds
Transforming to SSA form:               [OK]            0.000383 seconds
Normalizing specification:              [OK]            0.000939 seconds
Rewriting assignments:                  [OK]            0.000463 seconds
Verifying program safety:               [OK]            0.056042 seconds
Verifying range assertions:             [OK]            203.079328 seconds
Verifying range specification:          [OK]            10.421470 seconds
Rewriting value-preserved casting:      [OK]            0.000227 seconds
Verifying algebraic assertions:         [OK]            1.842367 seconds
Verifying algebraic specification:      [OK]            4.861713 seconds
Verification result:                    [OK]            220.274825 seconds
*)

proc main (uint64 x0, uint64 x1, uint64 x2, uint64 x3, uint64 x4, uint64 x5, uint64 y0, uint64 y1, uint64 y2, uint64 y3, uint64 y4, uint64 y5, uint64 m0, uint64 m1, uint64 m2, uint64 m3, uint64 m4, uint64 m5, uint64 n0) =
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

mov L0x7fffffffdf08 x0;
mov L0x7fffffffdf10 x1;
mov L0x7fffffffdf18 x2;
mov L0x7fffffffdf20 x3;
mov L0x7fffffffdf28 x4;
mov L0x7fffffffdf30 x5;
mov L0x7fffffffdf38 y0;
mov L0x7fffffffdf40 y1;
mov L0x7fffffffdf48 y2;
mov L0x7fffffffdf50 y3;
mov L0x7fffffffdf58 y4;
mov L0x7fffffffdf60 y5;

mov L0x7fffffffde90 n0;

(* prime *)
mov L0x5555555658e0 m0;
mov L0x5555555658e8 m1;
mov L0x5555555658f0 m2;
mov L0x5555555658f8 m3;
mov L0x555555565900 m4;
mov L0x555555565908 m5;


(* mov    (%rdx),%rax                              #! EA = L0x7fffffffdf38; Value = 0x0000000000000000; PC = 0x93824992274320 *)
mov rax L0x7fffffffdf38;
(* mov    (%rsi),%r14                              #! EA = L0x7fffffffdf08; Value = 0x0000000000000000; PC = 0x93824992274323 *)
mov r14 L0x7fffffffdf08;
(* mov    0x8(%rsi),%r15                           #! EA = L0x7fffffffdf10; Value = 0x0000000000000001; PC = 0x93824992274326 *)
mov r15 L0x7fffffffdf10;
(* mov    0x10(%rsi),%r12                          #! EA = L0x7fffffffdf18; Value = 0x0000000103ae75f6; PC = 0x93824992274330 *)
mov r12 L0x7fffffffdf18;
(* mov    0x18(%rsi),%r13                          #! EA = L0x7fffffffdf20; Value = 0x0000000000000000; PC = 0x93824992274334 *)
mov r13 L0x7fffffffdf20;
(* #callq  0x55555555e7e0 <__mulq_mont_384>        #! PC = 0x93824992274346 *)
#callq  0x55555555e7e0 <__mulq_mont_384>        #! 0x93824992274346 = 0x93824992274346;
(* mov    %rax,%rdi                                #! PC = 0x93824992274404 *)
mov rdi rax;
(* mul    %r14                                     #! PC = 0x93824992274407 *)
umull rdx rax r14 rax;
(* mov    %rax,%r8                                 #! PC = 0x93824992274410 *)
mov r8 rax;
(* mov    %rdi,%rax                                #! PC = 0x93824992274413 *)
mov rax rdi;
(* mov    %rdx,%r9                                 #! PC = 0x93824992274416 *)
mov r9 rdx;
(* mul    %r15                                     #! PC = 0x93824992274419 *)
umull rdx rax r15 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992274422 *)
adds carry r9 rax r9;
(* mov    %rdi,%rax                                #! PC = 0x93824992274425 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992274428 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992274432 *)
mov r10 rdx;
(* mul    %r12                                     #! PC = 0x93824992274435 *)
umull rdx rax r12 rax;
(* add    %rax,%r10                                #! PC = 0x93824992274438 *)
adds carry r10 rax r10;
(* mov    %rdi,%rax                                #! PC = 0x93824992274441 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992274444 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992274448 *)
mov r11 rdx;
(* mov    %r8,%rbp                                 #! PC = 0x93824992274451 *)
mov rbp r8;
(* imul   0x8(%rsp),%r8                            #! EA = L0x7fffffffde90; Value = 0x89f3fffcfffcfffd; PC = 0x93824992274454 *)
umull dontcare r8 L0x7fffffffde90 r8;
(* mul    %r13                                     #! PC = 0x93824992274460 *)
umull rdx rax r13 rax;
(* add    %rax,%r11                                #! PC = 0x93824992274463 *)
adds carry r11 rax r11;
(* mov    %rdi,%rax                                #! PC = 0x93824992274466 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992274469 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r12                                #! PC = 0x93824992274473 *)
mov r12 rdx;
(* mulq   0x20(%rsi)                               #! EA = L0x7fffffffdf28; PC = 0x93824992274476 *)
umull rdx rax L0x7fffffffdf28 rax;
(* add    %rax,%r12                                #! PC = 0x93824992274480 *)
adds carry r12 rax r12;
(* mov    %rdi,%rax                                #! PC = 0x93824992274483 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992274486 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r13                                #! PC = 0x93824992274490 *)
mov r13 rdx;
(* mulq   0x28(%rsi)                               #! EA = L0x7fffffffdf30; PC = 0x93824992274493 *)
umull rdx rax L0x7fffffffdf30 rax;
(* add    %rax,%r13                                #! PC = 0x93824992274497 *)
adds carry r13 rax r13;
(* mov    %r8,%rax                                 #! PC = 0x93824992274500 *)
mov rax r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992274503 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* xor    %r15,%r15                                #! PC = 0x93824992274507 *)
mov r15 0@uint64;
(* mov    %rdx,%r14                                #! PC = 0x93824992274510 *)
mov r14 rdx;
(* mulq   (%rcx)                                   #! EA = L0x5555555658e0; PC = 0x93824992274513 *)
umull rdx rax L0x5555555658e0 rax;
(* add    %rax,%rbp                                #! PC = 0x93824992274516 *)
adds carry rbp rax rbp;

(* NOTE: Montgomery reduction *)
assert eqmod rbp 0 (2**64) && true;
assume rbp = 0 && rbp = 0@64;

(* mov    %r8,%rax                                 #! PC = 0x93824992274519 *)
mov rax r8;
(* adc    %rdx,%rbp                                #! PC = 0x93824992274522 *)
adcs carry rbp rdx rbp carry;

assert true && carry = 0@1;
assume carry = 0 && true;

(* mulq   0x8(%rcx)                                #! EA = L0x5555555658e8; PC = 0x93824992274525 *)
umull rdx rax L0x5555555658e8 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992274529 *)
adds carry r9 rax r9;
(* mov    %r8,%rax                                 #! PC = 0x93824992274532 *)
mov rax r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992274535 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r9                                 #! PC = 0x93824992274539 *)
adds carry r9 rbp r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992274542 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992274546 *)
mov rbp rdx;
(* mulq   0x10(%rcx)                               #! EA = L0x5555555658f0; PC = 0x93824992274549 *)
umull rdx rax L0x5555555658f0 rax;
(* add    %rax,%r10                                #! PC = 0x93824992274553 *)
adds carry r10 rax r10;
(* mov    %r8,%rax                                 #! PC = 0x93824992274556 *)
mov rax r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992274559 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r10                                #! PC = 0x93824992274563 *)
adds carry r10 rbp r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992274566 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992274570 *)
mov rbp rdx;
(* mulq   0x18(%rcx)                               #! EA = L0x5555555658f8; PC = 0x93824992274573 *)
umull rdx rax L0x5555555658f8 rax;
(* add    %rbp,%r11                                #! PC = 0x93824992274577 *)
adds carry r11 rbp r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992274580 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rax,%r11                                #! PC = 0x93824992274584 *)
adds carry r11 rax r11;
(* mov    %r8,%rax                                 #! PC = 0x93824992274587 *)
mov rax r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992274590 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992274594 *)
mov rbp rdx;
(* mulq   0x20(%rcx)                               #! EA = L0x555555565900; PC = 0x93824992274597 *)
umull rdx rax L0x555555565900 rax;
(* add    %rax,%r12                                #! PC = 0x93824992274601 *)
adds carry r12 rax r12;
(* mov    %r8,%rax                                 #! PC = 0x93824992274604 *)
mov rax r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992274607 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r12                                #! PC = 0x93824992274611 *)
adds carry r12 rbp r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992274614 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992274618 *)
mov rbp rdx;
(* mulq   0x28(%rcx)                               #! EA = L0x555555565908; PC = 0x93824992274621 *)
umull rdx rax L0x555555565908 rax;
(* add    %rax,%r13                                #! PC = 0x93824992274625 *)
adds carry r13 rax r13;
(* mov    0x8(%rbx),%rax                           #! EA = L0x7fffffffdf40; Value = 0x0000000000000000; PC = 0x93824992274628 *)
mov rax L0x7fffffffdf40;
(* adc    $0x0,%rdx                                #! PC = 0x93824992274632 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r13                                #! PC = 0x93824992274636 *)
adds carry r13 rbp r13;
(* adc    %rdx,%r14                                #! PC = 0x93824992274639 *)
adcs carry r14 rdx r14 carry;
(* adc    $0x0,%r15                                #! PC = 0x93824992274642 *)
adcs carry r15 0@uint64 r15 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rax,%rdi                                #! PC = 0x93824992274646 *)
mov rdi rax;
(* mulq   (%rsi)                                   #! EA = L0x7fffffffdf08; PC = 0x93824992274649 *)
umull rdx rax L0x7fffffffdf08 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992274652 *)
adds carry r9 rax r9;
(* mov    %rdi,%rax                                #! PC = 0x93824992274655 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992274658 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992274662 *)
mov r8 rdx;
(* mulq   0x8(%rsi)                                #! EA = L0x7fffffffdf10; PC = 0x93824992274665 *)
umull rdx rax L0x7fffffffdf10 rax;
(* add    %rax,%r10                                #! PC = 0x93824992274669 *)
adds carry r10 rax r10;
(* mov    %rdi,%rax                                #! PC = 0x93824992274672 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992274675 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r8,%r10                                 #! PC = 0x93824992274679 *)
adds carry r10 r8 r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992274682 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992274686 *)
mov r8 rdx;
(* mulq   0x10(%rsi)                               #! EA = L0x7fffffffdf18; PC = 0x93824992274689 *)
umull rdx rax L0x7fffffffdf18 rax;
(* add    %rax,%r11                                #! PC = 0x93824992274693 *)
adds carry r11 rax r11;
(* mov    %rdi,%rax                                #! PC = 0x93824992274696 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992274699 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r8,%r11                                 #! PC = 0x93824992274703 *)
adds carry r11 r8 r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992274706 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992274710 *)
mov r8 rdx;
(* mov    %r9,%rbp                                 #! PC = 0x93824992274713 *)
mov rbp r9;
(* imul   0x8(%rsp),%r9                            #! EA = L0x7fffffffde90; Value = 0x89f3fffcfffcfffd; PC = 0x93824992274716 *)
umull dontcare r9 L0x7fffffffde90 r9;
(* mulq   0x18(%rsi)                               #! EA = L0x7fffffffdf20; PC = 0x93824992274722 *)
umull rdx rax L0x7fffffffdf20 rax;
(* add    %rax,%r12                                #! PC = 0x93824992274726 *)
adds carry r12 rax r12;
(* mov    %rdi,%rax                                #! PC = 0x93824992274729 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992274732 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r8,%r12                                 #! PC = 0x93824992274736 *)
adds carry r12 r8 r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992274739 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992274743 *)
mov r8 rdx;
(* mulq   0x20(%rsi)                               #! EA = L0x7fffffffdf28; PC = 0x93824992274746 *)
umull rdx rax L0x7fffffffdf28 rax;
(* add    %rax,%r13                                #! PC = 0x93824992274750 *)
adds carry r13 rax r13;
(* mov    %rdi,%rax                                #! PC = 0x93824992274753 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992274756 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r8,%r13                                 #! PC = 0x93824992274760 *)
adds carry r13 r8 r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992274763 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x93824992274767 *)
mov r8 rdx;
(* mulq   0x28(%rsi)                               #! EA = L0x7fffffffdf30; PC = 0x93824992274770 *)
umull rdx rax L0x7fffffffdf30 rax;
(* add    %r8,%r14                                 #! PC = 0x93824992274774 *)
adds carry r14 r8 r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992274777 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* xor    %r8,%r8                                  #! PC = 0x93824992274781 *)
mov r8 0@uint64;
(* add    %rax,%r14                                #! PC = 0x93824992274784 *)
adds carry r14 rax r14;
(* mov    %r9,%rax                                 #! PC = 0x93824992274787 *)
mov rax r9;
(* adc    %rdx,%r15                                #! PC = 0x93824992274790 *)
adcs carry r15 rdx r15 carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992274793 *)
adcs carry r8 0@uint64 r8 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mulq   (%rcx)                                   #! EA = L0x5555555658e0; PC = 0x93824992274797 *)
umull rdx rax L0x5555555658e0 rax;
(* add    %rax,%rbp                                #! PC = 0x93824992274800 *)
adds carry rbp rax rbp;

(* NOTE: Montgomery reduction *)
assert eqmod rbp 0 (2**64) && true;
assume rbp = 0 && rbp = 0@64;

(* mov    %r9,%rax                                 #! PC = 0x93824992274803 *)
mov rax r9;
(* adc    %rdx,%rbp                                #! PC = 0x93824992274806 *)
adcs carry rbp rdx rbp carry;

assert true && carry = 0@1;
assume carry = 0 && true;

(* mulq   0x8(%rcx)                                #! EA = L0x5555555658e8; PC = 0x93824992274809 *)
umull rdx rax L0x5555555658e8 rax;
(* add    %rax,%r10                                #! PC = 0x93824992274813 *)
adds carry r10 rax r10;
(* mov    %r9,%rax                                 #! PC = 0x93824992274816 *)
mov rax r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992274819 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r10                                #! PC = 0x93824992274823 *)
adds carry r10 rbp r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992274826 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992274830 *)
mov rbp rdx;
(* mulq   0x10(%rcx)                               #! EA = L0x5555555658f0; PC = 0x93824992274833 *)
umull rdx rax L0x5555555658f0 rax;
(* add    %rax,%r11                                #! PC = 0x93824992274837 *)
adds carry r11 rax r11;
(* mov    %r9,%rax                                 #! PC = 0x93824992274840 *)
mov rax r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992274843 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r11                                #! PC = 0x93824992274847 *)
adds carry r11 rbp r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992274850 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992274854 *)
mov rbp rdx;
(* mulq   0x18(%rcx)                               #! EA = L0x5555555658f8; PC = 0x93824992274857 *)
umull rdx rax L0x5555555658f8 rax;
(* add    %rbp,%r12                                #! PC = 0x93824992274861 *)
adds carry r12 rbp r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992274864 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rax,%r12                                #! PC = 0x93824992274868 *)
adds carry r12 rax r12;
(* mov    %r9,%rax                                 #! PC = 0x93824992274871 *)
mov rax r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992274874 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992274878 *)
mov rbp rdx;
(* mulq   0x20(%rcx)                               #! EA = L0x555555565900; PC = 0x93824992274881 *)
umull rdx rax L0x555555565900 rax;
(* add    %rax,%r13                                #! PC = 0x93824992274885 *)
adds carry r13 rax r13;
(* mov    %r9,%rax                                 #! PC = 0x93824992274888 *)
mov rax r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992274891 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r13                                #! PC = 0x93824992274895 *)
adds carry r13 rbp r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992274898 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992274902 *)
mov rbp rdx;
(* mulq   0x28(%rcx)                               #! EA = L0x555555565908; PC = 0x93824992274905 *)
umull rdx rax L0x555555565908 rax;
(* add    %rax,%r14                                #! PC = 0x93824992274909 *)
adds carry r14 rax r14;
(* mov    0x10(%rbx),%rax                          #! EA = L0x7fffffffdf48; Value = 0x0000000000000000; PC = 0x93824992274912 *)
mov rax L0x7fffffffdf48;
(* adc    $0x0,%rdx                                #! PC = 0x93824992274916 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r14                                #! PC = 0x93824992274920 *)
adds carry r14 rbp r14;
(* adc    %rdx,%r15                                #! PC = 0x93824992274923 *)
adcs carry r15 rdx r15 carry;
(* adc    $0x0,%r8                                 #! PC = 0x93824992274926 *)
adcs carry r8 0@uint64 r8 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rax,%rdi                                #! PC = 0x93824992274930 *)
mov rdi rax;
(* mulq   (%rsi)                                   #! EA = L0x7fffffffdf08; PC = 0x93824992274933 *)
umull rdx rax L0x7fffffffdf08 rax;
(* add    %rax,%r10                                #! PC = 0x93824992274936 *)
adds carry r10 rax r10;
(* mov    %rdi,%rax                                #! PC = 0x93824992274939 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992274942 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992274946 *)
mov r9 rdx;
(* mulq   0x8(%rsi)                                #! EA = L0x7fffffffdf10; PC = 0x93824992274949 *)
umull rdx rax L0x7fffffffdf10 rax;
(* add    %rax,%r11                                #! PC = 0x93824992274953 *)
adds carry r11 rax r11;
(* mov    %rdi,%rax                                #! PC = 0x93824992274956 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992274959 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r9,%r11                                 #! PC = 0x93824992274963 *)
adds carry r11 r9 r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992274966 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992274970 *)
mov r9 rdx;
(* mulq   0x10(%rsi)                               #! EA = L0x7fffffffdf18; PC = 0x93824992274973 *)
umull rdx rax L0x7fffffffdf18 rax;
(* add    %rax,%r12                                #! PC = 0x93824992274977 *)
adds carry r12 rax r12;
(* mov    %rdi,%rax                                #! PC = 0x93824992274980 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992274983 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r9,%r12                                 #! PC = 0x93824992274987 *)
adds carry r12 r9 r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992274990 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992274994 *)
mov r9 rdx;
(* mov    %r10,%rbp                                #! PC = 0x93824992274997 *)
mov rbp r10;
(* imul   0x8(%rsp),%r10                           #! EA = L0x7fffffffde90; Value = 0x89f3fffcfffcfffd; PC = 0x93824992275000 *)
umull dontcare r10 L0x7fffffffde90 r10;
(* mulq   0x18(%rsi)                               #! EA = L0x7fffffffdf20; PC = 0x93824992275006 *)
umull rdx rax L0x7fffffffdf20 rax;
(* add    %rax,%r13                                #! PC = 0x93824992275010 *)
adds carry r13 rax r13;
(* mov    %rdi,%rax                                #! PC = 0x93824992275013 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275016 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r9,%r13                                 #! PC = 0x93824992275020 *)
adds carry r13 r9 r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275023 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992275027 *)
mov r9 rdx;
(* mulq   0x20(%rsi)                               #! EA = L0x7fffffffdf28; PC = 0x93824992275030 *)
umull rdx rax L0x7fffffffdf28 rax;
(* add    %rax,%r14                                #! PC = 0x93824992275034 *)
adds carry r14 rax r14;
(* mov    %rdi,%rax                                #! PC = 0x93824992275037 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275040 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r9,%r14                                 #! PC = 0x93824992275044 *)
adds carry r14 r9 r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275047 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x93824992275051 *)
mov r9 rdx;
(* mulq   0x28(%rsi)                               #! EA = L0x7fffffffdf30; PC = 0x93824992275054 *)
umull rdx rax L0x7fffffffdf30 rax;
(* add    %r9,%r15                                 #! PC = 0x93824992275058 *)
adds carry r15 r9 r15;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275061 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* xor    %r9,%r9                                  #! PC = 0x93824992275065 *)
mov r9 0@uint64;
(* add    %rax,%r15                                #! PC = 0x93824992275068 *)
adds carry r15 rax r15;
(* mov    %r10,%rax                                #! PC = 0x93824992275071 *)
mov rax r10;
(* adc    %rdx,%r8                                 #! PC = 0x93824992275074 *)
adcs carry r8 rdx r8 carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992275077 *)
adcs carry r9 0@uint64 r9 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mulq   (%rcx)                                   #! EA = L0x5555555658e0; PC = 0x93824992275081 *)
umull rdx rax L0x5555555658e0 rax;
(* add    %rax,%rbp                                #! PC = 0x93824992275084 *)
adds carry rbp rax rbp;

(* NOTE: Montgomery reduction *)
assert eqmod rbp 0 (2**64) && true;
assume rbp = 0 && rbp = 0@64;

(* mov    %r10,%rax                                #! PC = 0x93824992275087 *)
mov rax r10;
(* adc    %rdx,%rbp                                #! PC = 0x93824992275090 *)
adcs carry rbp rdx rbp carry;

assert true && carry = 0@1;
assume carry = 0 && true;

(* mulq   0x8(%rcx)                                #! EA = L0x5555555658e8; PC = 0x93824992275093 *)
umull rdx rax L0x5555555658e8 rax;
(* add    %rax,%r11                                #! PC = 0x93824992275097 *)
adds carry r11 rax r11;
(* mov    %r10,%rax                                #! PC = 0x93824992275100 *)
mov rax r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275103 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r11                                #! PC = 0x93824992275107 *)
adds carry r11 rbp r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275110 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992275114 *)
mov rbp rdx;
(* mulq   0x10(%rcx)                               #! EA = L0x5555555658f0; PC = 0x93824992275117 *)
umull rdx rax L0x5555555658f0 rax;
(* add    %rax,%r12                                #! PC = 0x93824992275121 *)
adds carry r12 rax r12;
(* mov    %r10,%rax                                #! PC = 0x93824992275124 *)
mov rax r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275127 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r12                                #! PC = 0x93824992275131 *)
adds carry r12 rbp r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275134 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992275138 *)
mov rbp rdx;
(* mulq   0x18(%rcx)                               #! EA = L0x5555555658f8; PC = 0x93824992275141 *)
umull rdx rax L0x5555555658f8 rax;
(* add    %rbp,%r13                                #! PC = 0x93824992275145 *)
adds carry r13 rbp r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275148 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rax,%r13                                #! PC = 0x93824992275152 *)
adds carry r13 rax r13;
(* mov    %r10,%rax                                #! PC = 0x93824992275155 *)
mov rax r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275158 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992275162 *)
mov rbp rdx;
(* mulq   0x20(%rcx)                               #! EA = L0x555555565900; PC = 0x93824992275165 *)
umull rdx rax L0x555555565900 rax;
(* add    %rax,%r14                                #! PC = 0x93824992275169 *)
adds carry r14 rax r14;
(* mov    %r10,%rax                                #! PC = 0x93824992275172 *)
mov rax r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275175 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r14                                #! PC = 0x93824992275179 *)
adds carry r14 rbp r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275182 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992275186 *)
mov rbp rdx;
(* mulq   0x28(%rcx)                               #! EA = L0x555555565908; PC = 0x93824992275189 *)
umull rdx rax L0x555555565908 rax;
(* add    %rax,%r15                                #! PC = 0x93824992275193 *)
adds carry r15 rax r15;
(* mov    0x18(%rbx),%rax                          #! EA = L0x7fffffffdf50; Value = 0x0000000000000000; PC = 0x93824992275196 *)
mov rax L0x7fffffffdf50;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275200 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r15                                #! PC = 0x93824992275204 *)
adds carry r15 rbp r15;
(* adc    %rdx,%r8                                 #! PC = 0x93824992275207 *)
adcs carry r8 rdx r8 carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992275210 *)
adcs carry r9 0@uint64 r9 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rax,%rdi                                #! PC = 0x93824992275214 *)
mov rdi rax;
(* mulq   (%rsi)                                   #! EA = L0x7fffffffdf08; PC = 0x93824992275217 *)
umull rdx rax L0x7fffffffdf08 rax;
(* add    %rax,%r11                                #! PC = 0x93824992275220 *)
adds carry r11 rax r11;
(* mov    %rdi,%rax                                #! PC = 0x93824992275223 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275226 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992275230 *)
mov r10 rdx;
(* mulq   0x8(%rsi)                                #! EA = L0x7fffffffdf10; PC = 0x93824992275233 *)
umull rdx rax L0x7fffffffdf10 rax;
(* add    %rax,%r12                                #! PC = 0x93824992275237 *)
adds carry r12 rax r12;
(* mov    %rdi,%rax                                #! PC = 0x93824992275240 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275243 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r10,%r12                                #! PC = 0x93824992275247 *)
adds carry r12 r10 r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275250 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992275254 *)
mov r10 rdx;
(* mulq   0x10(%rsi)                               #! EA = L0x7fffffffdf18; PC = 0x93824992275257 *)
umull rdx rax L0x7fffffffdf18 rax;
(* add    %rax,%r13                                #! PC = 0x93824992275261 *)
adds carry r13 rax r13;
(* mov    %rdi,%rax                                #! PC = 0x93824992275264 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275267 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r10,%r13                                #! PC = 0x93824992275271 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275274 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992275278 *)
mov r10 rdx;
(* mov    %r11,%rbp                                #! PC = 0x93824992275281 *)
mov rbp r11;
(* imul   0x8(%rsp),%r11                           #! EA = L0x7fffffffde90; Value = 0x89f3fffcfffcfffd; PC = 0x93824992275284 *)
umull dontcare r11 L0x7fffffffde90 r11;
(* mulq   0x18(%rsi)                               #! EA = L0x7fffffffdf20; PC = 0x93824992275290 *)
umull rdx rax L0x7fffffffdf20 rax;
(* add    %rax,%r14                                #! PC = 0x93824992275294 *)
adds carry r14 rax r14;
(* mov    %rdi,%rax                                #! PC = 0x93824992275297 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275300 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r10,%r14                                #! PC = 0x93824992275304 *)
adds carry r14 r10 r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275307 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992275311 *)
mov r10 rdx;
(* mulq   0x20(%rsi)                               #! EA = L0x7fffffffdf28; PC = 0x93824992275314 *)
umull rdx rax L0x7fffffffdf28 rax;
(* add    %rax,%r15                                #! PC = 0x93824992275318 *)
adds carry r15 rax r15;
(* mov    %rdi,%rax                                #! PC = 0x93824992275321 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275324 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r10,%r15                                #! PC = 0x93824992275328 *)
adds carry r15 r10 r15;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275331 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992275335 *)
mov r10 rdx;
(* mulq   0x28(%rsi)                               #! EA = L0x7fffffffdf30; PC = 0x93824992275338 *)
umull rdx rax L0x7fffffffdf30 rax;
(* add    %r10,%r8                                 #! PC = 0x93824992275342 *)
adds carry r8 r10 r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275345 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* xor    %r10,%r10                                #! PC = 0x93824992275349 *)
mov r10 0@uint64;
(* add    %rax,%r8                                 #! PC = 0x93824992275352 *)
adds carry r8 rax r8;
(* mov    %r11,%rax                                #! PC = 0x93824992275355 *)
mov rax r11;
(* adc    %rdx,%r9                                 #! PC = 0x93824992275358 *)
adcs carry r9 rdx r9 carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992275361 *)
adcs carry r10 0@uint64 r10 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mulq   (%rcx)                                   #! EA = L0x5555555658e0; PC = 0x93824992275365 *)
umull rdx rax L0x5555555658e0 rax;
(* add    %rax,%rbp                                #! PC = 0x93824992275368 *)
adds carry rbp rax rbp;

(* NOTE: Montgomery reduction *)
assert eqmod rbp 0 (2**64) && true;
assume rbp = 0 && rbp = 0@64;

(* mov    %r11,%rax                                #! PC = 0x93824992275371 *)
mov rax r11;
(* adc    %rdx,%rbp                                #! PC = 0x93824992275374 *)
adcs carry rbp rdx rbp carry;

assert true && carry = 0@1;
assume carry = 0 && true;

(* mulq   0x8(%rcx)                                #! EA = L0x5555555658e8; PC = 0x93824992275377 *)
umull rdx rax L0x5555555658e8 rax;
(* add    %rax,%r12                                #! PC = 0x93824992275381 *)
adds carry r12 rax r12;
(* mov    %r11,%rax                                #! PC = 0x93824992275384 *)
mov rax r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275387 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r12                                #! PC = 0x93824992275391 *)
adds carry r12 rbp r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275394 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992275398 *)
mov rbp rdx;
(* mulq   0x10(%rcx)                               #! EA = L0x5555555658f0; PC = 0x93824992275401 *)
umull rdx rax L0x5555555658f0 rax;
(* add    %rax,%r13                                #! PC = 0x93824992275405 *)
adds carry r13 rax r13;
(* mov    %r11,%rax                                #! PC = 0x93824992275408 *)
mov rax r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275411 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r13                                #! PC = 0x93824992275415 *)
adds carry r13 rbp r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275418 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992275422 *)
mov rbp rdx;
(* mulq   0x18(%rcx)                               #! EA = L0x5555555658f8; PC = 0x93824992275425 *)
umull rdx rax L0x5555555658f8 rax;
(* add    %rbp,%r14                                #! PC = 0x93824992275429 *)
adds carry r14 rbp r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275432 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rax,%r14                                #! PC = 0x93824992275436 *)
adds carry r14 rax r14;
(* mov    %r11,%rax                                #! PC = 0x93824992275439 *)
mov rax r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275442 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992275446 *)
mov rbp rdx;
(* mulq   0x20(%rcx)                               #! EA = L0x555555565900; PC = 0x93824992275449 *)
umull rdx rax L0x555555565900 rax;
(* add    %rax,%r15                                #! PC = 0x93824992275453 *)
adds carry r15 rax r15;
(* mov    %r11,%rax                                #! PC = 0x93824992275456 *)
mov rax r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275459 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r15                                #! PC = 0x93824992275463 *)
adds carry r15 rbp r15;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275466 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992275470 *)
mov rbp rdx;
(* mulq   0x28(%rcx)                               #! EA = L0x555555565908; PC = 0x93824992275473 *)
umull rdx rax L0x555555565908 rax;
(* add    %rax,%r8                                 #! PC = 0x93824992275477 *)
adds carry r8 rax r8;
(* mov    0x20(%rbx),%rax                          #! EA = L0x7fffffffdf58; Value = 0x0000034000000240; PC = 0x93824992275480 *)
mov rax L0x7fffffffdf58;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275484 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r8                                 #! PC = 0x93824992275488 *)
adds carry r8 rbp r8;
(* adc    %rdx,%r9                                 #! PC = 0x93824992275491 *)
adcs carry r9 rdx r9 carry;
(* adc    $0x0,%r10                                #! PC = 0x93824992275494 *)
adcs carry r10 0@uint64 r10 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rax,%rdi                                #! PC = 0x93824992275498 *)
mov rdi rax;
(* mulq   (%rsi)                                   #! EA = L0x7fffffffdf08; PC = 0x93824992275501 *)
umull rdx rax L0x7fffffffdf08 rax;
(* add    %rax,%r12                                #! PC = 0x93824992275504 *)
adds carry r12 rax r12;
(* mov    %rdi,%rax                                #! PC = 0x93824992275507 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275510 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992275514 *)
mov r11 rdx;
(* mulq   0x8(%rsi)                                #! EA = L0x7fffffffdf10; PC = 0x93824992275517 *)
umull rdx rax L0x7fffffffdf10 rax;
(* add    %rax,%r13                                #! PC = 0x93824992275521 *)
adds carry r13 rax r13;
(* mov    %rdi,%rax                                #! PC = 0x93824992275524 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275527 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r13                                #! PC = 0x93824992275531 *)
adds carry r13 r11 r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275534 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992275538 *)
mov r11 rdx;
(* mulq   0x10(%rsi)                               #! EA = L0x7fffffffdf18; PC = 0x93824992275541 *)
umull rdx rax L0x7fffffffdf18 rax;
(* add    %rax,%r14                                #! PC = 0x93824992275545 *)
adds carry r14 rax r14;
(* mov    %rdi,%rax                                #! PC = 0x93824992275548 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275551 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r14                                #! PC = 0x93824992275555 *)
adds carry r14 r11 r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275558 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992275562 *)
mov r11 rdx;
(* mov    %r12,%rbp                                #! PC = 0x93824992275565 *)
mov rbp r12;
(* imul   0x8(%rsp),%r12                           #! EA = L0x7fffffffde90; Value = 0x89f3fffcfffcfffd; PC = 0x93824992275568 *)
umull dontcare r12 L0x7fffffffde90 r12;
(* mulq   0x18(%rsi)                               #! EA = L0x7fffffffdf20; PC = 0x93824992275574 *)
umull rdx rax L0x7fffffffdf20 rax;
(* add    %rax,%r15                                #! PC = 0x93824992275578 *)
adds carry r15 rax r15;
(* mov    %rdi,%rax                                #! PC = 0x93824992275581 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275584 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r15                                #! PC = 0x93824992275588 *)
adds carry r15 r11 r15;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275591 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992275595 *)
mov r11 rdx;
(* mulq   0x20(%rsi)                               #! EA = L0x7fffffffdf28; PC = 0x93824992275598 *)
umull rdx rax L0x7fffffffdf28 rax;
(* add    %rax,%r8                                 #! PC = 0x93824992275602 *)
adds carry r8 rax r8;
(* mov    %rdi,%rax                                #! PC = 0x93824992275605 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275608 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r8                                 #! PC = 0x93824992275612 *)
adds carry r8 r11 r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275615 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992275619 *)
mov r11 rdx;
(* mulq   0x28(%rsi)                               #! EA = L0x7fffffffdf30; PC = 0x93824992275622 *)
umull rdx rax L0x7fffffffdf30 rax;
(* add    %r11,%r9                                 #! PC = 0x93824992275626 *)
adds carry r9 r11 r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275629 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* xor    %r11,%r11                                #! PC = 0x93824992275633 *)
mov r11 0@uint64;
(* add    %rax,%r9                                 #! PC = 0x93824992275636 *)
adds carry r9 rax r9;
(* mov    %r12,%rax                                #! PC = 0x93824992275639 *)
mov rax r12;
(* adc    %rdx,%r10                                #! PC = 0x93824992275642 *)
adcs carry r10 rdx r10 carry;
(* adc    $0x0,%r11                                #! PC = 0x93824992275645 *)
adcs carry r11 0@uint64 r11 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mulq   (%rcx)                                   #! EA = L0x5555555658e0; PC = 0x93824992275649 *)
umull rdx rax L0x5555555658e0 rax;
(* add    %rax,%rbp                                #! PC = 0x93824992275652 *)
adds carry rbp rax rbp;

(* NOTE: Montgomery reduction *)
assert eqmod rbp 0 (2**64) && true;
assume rbp = 0 && rbp = 0@64;

(* mov    %r12,%rax                                #! PC = 0x93824992275655 *)
mov rax r12;
(* adc    %rdx,%rbp                                #! PC = 0x93824992275658 *)
adcs carry rbp rdx rbp carry;

assert true && carry = 0@1;
assume carry = 0 && true;

(* mulq   0x8(%rcx)                                #! EA = L0x5555555658e8; PC = 0x93824992275661 *)
umull rdx rax L0x5555555658e8 rax;
(* add    %rax,%r13                                #! PC = 0x93824992275665 *)
adds carry r13 rax r13;
(* mov    %r12,%rax                                #! PC = 0x93824992275668 *)
mov rax r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275671 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r13                                #! PC = 0x93824992275675 *)
adds carry r13 rbp r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275678 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992275682 *)
mov rbp rdx;
(* mulq   0x10(%rcx)                               #! EA = L0x5555555658f0; PC = 0x93824992275685 *)
umull rdx rax L0x5555555658f0 rax;
(* add    %rax,%r14                                #! PC = 0x93824992275689 *)
adds carry r14 rax r14;
(* mov    %r12,%rax                                #! PC = 0x93824992275692 *)
mov rax r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275695 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r14                                #! PC = 0x93824992275699 *)
adds carry r14 rbp r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275702 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992275706 *)
mov rbp rdx;
(* mulq   0x18(%rcx)                               #! EA = L0x5555555658f8; PC = 0x93824992275709 *)
umull rdx rax L0x5555555658f8 rax;
(* add    %rbp,%r15                                #! PC = 0x93824992275713 *)
adds carry r15 rbp r15;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275716 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rax,%r15                                #! PC = 0x93824992275720 *)
adds carry r15 rax r15;
(* mov    %r12,%rax                                #! PC = 0x93824992275723 *)
mov rax r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275726 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992275730 *)
mov rbp rdx;
(* mulq   0x20(%rcx)                               #! EA = L0x555555565900; PC = 0x93824992275733 *)
umull rdx rax L0x555555565900 rax;
(* add    %rax,%r8                                 #! PC = 0x93824992275737 *)
adds carry r8 rax r8;
(* mov    %r12,%rax                                #! PC = 0x93824992275740 *)
mov rax r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275743 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r8                                 #! PC = 0x93824992275747 *)
adds carry r8 rbp r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275750 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992275754 *)
mov rbp rdx;
(* mulq   0x28(%rcx)                               #! EA = L0x555555565908; PC = 0x93824992275757 *)
umull rdx rax L0x555555565908 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992275761 *)
adds carry r9 rax r9;
(* mov    0x28(%rbx),%rax                          #! EA = L0x7fffffffdf60; Value = 0x0000038000000380; PC = 0x93824992275764 *)
mov rax L0x7fffffffdf60;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275768 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r9                                 #! PC = 0x93824992275772 *)
adds carry r9 rbp r9;
(* adc    %rdx,%r10                                #! PC = 0x93824992275775 *)
adcs carry r10 rdx r10 carry;
(* adc    $0x0,%r11                                #! PC = 0x93824992275778 *)
adcs carry r11 0@uint64 r11 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rax,%rdi                                #! PC = 0x93824992275782 *)
mov rdi rax;
(* mulq   (%rsi)                                   #! EA = L0x7fffffffdf08; PC = 0x93824992275785 *)
umull rdx rax L0x7fffffffdf08 rax;
(* add    %rax,%r13                                #! PC = 0x93824992275788 *)
adds carry r13 rax r13;
(* mov    %rdi,%rax                                #! PC = 0x93824992275791 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275794 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r12                                #! PC = 0x93824992275798 *)
mov r12 rdx;
(* mulq   0x8(%rsi)                                #! EA = L0x7fffffffdf10; PC = 0x93824992275801 *)
umull rdx rax L0x7fffffffdf10 rax;
(* add    %rax,%r14                                #! PC = 0x93824992275805 *)
adds carry r14 rax r14;
(* mov    %rdi,%rax                                #! PC = 0x93824992275808 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275811 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r12,%r14                                #! PC = 0x93824992275815 *)
adds carry r14 r12 r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275818 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r12                                #! PC = 0x93824992275822 *)
mov r12 rdx;
(* mulq   0x10(%rsi)                               #! EA = L0x7fffffffdf18; PC = 0x93824992275825 *)
umull rdx rax L0x7fffffffdf18 rax;
(* add    %rax,%r15                                #! PC = 0x93824992275829 *)
adds carry r15 rax r15;
(* mov    %rdi,%rax                                #! PC = 0x93824992275832 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275835 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r12,%r15                                #! PC = 0x93824992275839 *)
adds carry r15 r12 r15;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275842 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r12                                #! PC = 0x93824992275846 *)
mov r12 rdx;
(* mov    %r13,%rbp                                #! PC = 0x93824992275849 *)
mov rbp r13;
(* imul   0x8(%rsp),%r13                           #! EA = L0x7fffffffde90; Value = 0x89f3fffcfffcfffd; PC = 0x93824992275852 *)
umull dontcare r13 L0x7fffffffde90 r13;
(* mulq   0x18(%rsi)                               #! EA = L0x7fffffffdf20; PC = 0x93824992275858 *)
umull rdx rax L0x7fffffffdf20 rax;
(* add    %rax,%r8                                 #! PC = 0x93824992275862 *)
adds carry r8 rax r8;
(* mov    %rdi,%rax                                #! PC = 0x93824992275865 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275868 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r12,%r8                                 #! PC = 0x93824992275872 *)
adds carry r8 r12 r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275875 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r12                                #! PC = 0x93824992275879 *)
mov r12 rdx;
(* mulq   0x20(%rsi)                               #! EA = L0x7fffffffdf28; PC = 0x93824992275882 *)
umull rdx rax L0x7fffffffdf28 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992275886 *)
adds carry r9 rax r9;
(* mov    %rdi,%rax                                #! PC = 0x93824992275889 *)
mov rax rdi;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275892 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r12,%r9                                 #! PC = 0x93824992275896 *)
adds carry r9 r12 r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275899 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r12                                #! PC = 0x93824992275903 *)
mov r12 rdx;
(* mulq   0x28(%rsi)                               #! EA = L0x7fffffffdf30; PC = 0x93824992275906 *)
umull rdx rax L0x7fffffffdf30 rax;
(* add    %r12,%r10                                #! PC = 0x93824992275910 *)
adds carry r10 r12 r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275913 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* xor    %r12,%r12                                #! PC = 0x93824992275917 *)
mov r12 0@uint64;
(* add    %rax,%r10                                #! PC = 0x93824992275920 *)
adds carry r10 rax r10;
(* mov    %r13,%rax                                #! PC = 0x93824992275923 *)
mov rax r13;
(* adc    %rdx,%r11                                #! PC = 0x93824992275926 *)
adcs carry r11 rdx r11 carry;
(* adc    $0x0,%r12                                #! PC = 0x93824992275929 *)
adcs carry r12 0@uint64 r12 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mulq   (%rcx)                                   #! EA = L0x5555555658e0; PC = 0x93824992275933 *)
umull rdx rax L0x5555555658e0 rax;
(* add    %rax,%rbp                                #! PC = 0x93824992275936 *)
adds carry rbp rax rbp;

(* NOTE: Montgomery reduction *)
assert eqmod rbp 0 (2**64) && true;
assume rbp = 0 && rbp = 0@64;

(* mov    %r13,%rax                                #! PC = 0x93824992275939 *)
mov rax r13;
(* adc    %rdx,%rbp                                #! PC = 0x93824992275942 *)
adcs carry rbp rdx rbp carry;

assert true && carry = 0@1;
assume carry = 0 && true;

(* mulq   0x8(%rcx)                                #! EA = L0x5555555658e8; PC = 0x93824992275945 *)
umull rdx rax L0x5555555658e8 rax;
(* add    %rax,%r14                                #! PC = 0x93824992275949 *)
adds carry r14 rax r14;
(* mov    %r13,%rax                                #! PC = 0x93824992275952 *)
mov rax r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275955 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r14                                #! PC = 0x93824992275959 *)
adds carry r14 rbp r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275962 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992275966 *)
mov rbp rdx;
(* mulq   0x10(%rcx)                               #! EA = L0x5555555658f0; PC = 0x93824992275969 *)
umull rdx rax L0x5555555658f0 rax;
(* add    %rax,%r15                                #! PC = 0x93824992275973 *)
adds carry r15 rax r15;
(* mov    %r13,%rax                                #! PC = 0x93824992275976 *)
mov rax r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275979 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r15                                #! PC = 0x93824992275983 *)
adds carry r15 rbp r15;
(* adc    $0x0,%rdx                                #! PC = 0x93824992275986 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992275990 *)
mov rbp rdx;
(* mulq   0x18(%rcx)                               #! EA = L0x5555555658f8; PC = 0x93824992275993 *)
umull rdx rax L0x5555555658f8 rax;
(* add    %rbp,%r8                                 #! PC = 0x93824992275997 *)
adds carry r8 rbp r8;
(* adc    $0x0,%rdx                                #! PC = 0x93824992276000 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rax,%r8                                 #! PC = 0x93824992276004 *)
adds carry r8 rax r8;
(* mov    %r13,%rax                                #! PC = 0x93824992276007 *)
mov rax r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992276010 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992276014 *)
mov rbp rdx;
(* mulq   0x20(%rcx)                               #! EA = L0x555555565900; PC = 0x93824992276017 *)
umull rdx rax L0x555555565900 rax;
(* add    %rax,%r9                                 #! PC = 0x93824992276021 *)
adds carry r9 rax r9;
(* mov    %r13,%rax                                #! PC = 0x93824992276024 *)
mov rax r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992276027 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r9                                 #! PC = 0x93824992276031 *)
adds carry r9 rbp r9;
(* adc    $0x0,%rdx                                #! PC = 0x93824992276034 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x93824992276038 *)
mov rbp rdx;
(* mulq   0x28(%rcx)                               #! EA = L0x555555565908; PC = 0x93824992276041 *)
umull rdx rax L0x555555565908 rax;
(* add    %rax,%r10                                #! PC = 0x93824992276045 *)
adds carry r10 rax r10;
(* mov    %r14,%rax                                #! PC = 0x93824992276048 *)
mov rax r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992276051 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %rbp,%r10                                #! PC = 0x93824992276055 *)
adds carry r10 rbp r10;
(* adc    %rdx,%r11                                #! PC = 0x93824992276058 *)
adcs carry r11 rdx r11 carry;
(* adc    $0x0,%r12                                #! PC = 0x93824992276061 *)
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

(*
assert true && or[q6 = 0@64, q6 = 1@64];
assert true && (limbs 64 [q0, q1, q2, q3, q4, q5, q6] <u 2@448 * (limbs 64 [m0, m1, m2, m3, m4, m5, 0@64]));
assume true && (limbs 64 [q0, q1, q2, q3, q4, q5, q6] <u 2@448 * (limbs 64 [m0, m1, m2, m3, m4, m5, 0@64]));
assert eqmod (limbs 64 [0, 0, 0, 0, 0, 0, q0, q1, q2, q3, q4, q5, q6])
             ((limbs 64 [x0, x1, x2, x3, x4, x5]) * (limbs 64 [y0, y1, y2, y3, y4, y5]))
             (limbs 64 [m0, m1, m2, m3, m4, m5]) && true;
*)

(* sub    (%rcx),%r14                              #! EA = L0x5555555658e0; Value = 0xb9feffffffffaaab; PC = 0x93824992276070 *)
subb carry r14 r14 L0x5555555658e0;
(* mov    %r15,%rdx                                #! PC = 0x93824992276073 *)
mov rdx r15;
(* sbb    0x8(%rcx),%r15                           #! EA = L0x5555555658e8; Value = 0x1eabfffeb153ffff; PC = 0x93824992276076 *)
sbbs carry r15 r15 L0x5555555658e8 carry;
(* mov    %r8,%rbx                                 #! PC = 0x93824992276080 *)
mov rbx r8;
(* sbb    0x10(%rcx),%r8                           #! EA = L0x5555555658f0; Value = 0x6730d2a0f6b0f624; PC = 0x93824992276083 *)
sbbs carry r8 r8 L0x5555555658f0 carry;
(* mov    %r9,%rsi                                 #! PC = 0x93824992276087 *)
mov rsi r9;
(* sbb    0x18(%rcx),%r9                           #! EA = L0x5555555658f8; Value = 0x64774b84f38512bf; PC = 0x93824992276090 *)
sbbs carry r9 r9 L0x5555555658f8 carry;
(* mov    %r10,%rbp                                #! PC = 0x93824992276094 *)
mov rbp r10;
(* sbb    0x20(%rcx),%r10                          #! EA = L0x555555565900; Value = 0x4b1ba7b6434bacd7; PC = 0x93824992276097 *)
sbbs carry r10 r10 L0x555555565900 carry;
(* mov    %r11,%r13                                #! PC = 0x93824992276101 *)
mov r13 r11;
(* sbb    0x28(%rcx),%r11                          #! EA = L0x555555565908; Value = 0x1a0111ea397fe69a; PC = 0x93824992276104 *)
sbbs carry r11 r11 L0x555555565908 carry;
(* sbb    $0x0,%r12                                #! PC = 0x93824992276108 *)
sbbs carry r12 r12 0@uint64 carry;
(* cmovb  %rax,%r14                                #! PC = 0x93824992276112 *)
cmov r14 carry rax r14;
(* cmovb  %rdx,%r15                                #! PC = 0x93824992276116 *)
cmov r15 carry rdx r15;
(* cmovb  %rbx,%r8                                 #! PC = 0x93824992276120 *)
cmov r8 carry rbx r8;
(* mov    %r14,(%rdi)                              #! EA = L0x7fffffffded8; PC = 0x93824992276124 *)
mov L0x7fffffffded8 r14;
(* cmovb  %rsi,%r9                                 #! PC = 0x93824992276127 *)
cmov r9 carry rsi r9;
(* mov    %r15,0x8(%rdi)                           #! EA = L0x7fffffffdee0; PC = 0x93824992276131 *)
mov L0x7fffffffdee0 r15;
(* cmovb  %rbp,%r10                                #! PC = 0x93824992276135 *)
cmov r10 carry rbp r10;
(* mov    %r8,0x10(%rdi)                           #! EA = L0x7fffffffdee8; PC = 0x93824992276139 *)
mov L0x7fffffffdee8 r8;
(* cmovb  %r13,%r11                                #! PC = 0x93824992276143 *)
cmov r11 carry r13 r11;
(* mov    %r9,0x18(%rdi)                           #! EA = L0x7fffffffdef0; PC = 0x93824992276147 *)
mov L0x7fffffffdef0 r9;
(* mov    %r10,0x20(%rdi)                          #! EA = L0x7fffffffdef8; PC = 0x93824992276151 *)
mov L0x7fffffffdef8 r10;
(* mov    %r11,0x28(%rdi)                          #! EA = L0x7fffffffdf00; PC = 0x93824992276155 *)
mov L0x7fffffffdf00 r11;
(* #repz retq                                      #! PC = 0x93824992276159 *)
#repz retq                                      #! 0x93824992276159 = 0x93824992276159;
(* #repz retq                                      #! PC = 0x93824992274386 *)
#repz retq                                      #! 0x93824992274386 = 0x93824992274386;



mov c0 L0x7fffffffded8;
mov c1 L0x7fffffffdee0;
mov c2 L0x7fffffffdee8;
mov c3 L0x7fffffffdef0;
mov c4 L0x7fffffffdef8;
mov c5 L0x7fffffffdf00;

assert true &&
       eqmod (limbs 64 [q0, q1, q2, q3, q4, q5, q6])
             (limbs 64 [c0, c1, c2, c3, c4, c5, 0@64])
             (limbs 64 [m0, m1, m2, m3, m4, m5, 0@64]);

assume eqmod (limbs 64 [q0, q1, q2, q3, q4, q5, q6])
             (limbs 64 [c0, c1, c2, c3, c4, c5, 0])
             (limbs 64 [m0, m1, m2, m3, m4, m5, 0]) && true;

{
  eqmod (limbs 64 [0, 0, 0, 0, 0, 0, c0, c1, c2, c3, c4, c5])
        ((limbs 64 [x0, x1, x2, x3, x4, x5]) * (limbs 64 [y0, y1, y2, y3, y4, y5]))
        (limbs 64 [m0, m1, m2, m3, m4, m5])
&&
  limbs 64 [c0, c1, c2, c3, c4, c5] <u limbs 64 [m0, m1, m2, m3, m4, m5]
}

