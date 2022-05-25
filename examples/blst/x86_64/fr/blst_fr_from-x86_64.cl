(* quine -v -jobs 10 blst_fr_from-x86_64.cl
Parsing Cryptoline file:                [OK]            0.004588 seconds
Checking well-formedness:               [OK]            0.001110 seconds
Transforming to SSA form:               [OK]            0.000118 seconds
Normalizing specification:              [OK]            0.000171 seconds
Rewriting assignments:                  [OK]            0.000145 seconds
Verifying program safety:               [OK]            0.034778 seconds
Verifying range assertions:             [OK]            50.177296 seconds
Verifying range specification:          [OK]            1.333192 seconds
Rewriting value-preserved casting:      [OK]            0.000069 seconds
Verifying algebraic assertions:         [OK]            0.367874 seconds
Verifying algebraic specification:      [OK]            0.203683 seconds
Verification result:                    [OK]            52.124496 seconds
*)
proc main (uint64 x0, uint64 x1, uint64 x2, uint64 x3, uint64 m0, uint64 m1, uint64 m2, uint64 m3, uint64 n0) =
{
  and[
	  m0 = 0xffffffff00000001,
	  m1 = 0x53bda402fffe5bfe,
	  m2 = 0x3339d80809a1d805,
	  m3 = 0x73eda753299d7d48,
      eqmod m0 1 2,
      eqmod (1 + m0 * n0) 0 (2**64)
  ]
  &&
  and[
	  m0 = 0xffffffff00000001@64,
	  m1 = 0x53bda402fffe5bfe@64,
	  m2 = 0x3339d80809a1d805@64,
	  m3 = 0x73eda753299d7d48@64,
	  eqmod m0 (1@64) (2@64),
      add 1@64 (mul m0 n0) = 0@64,
      limbs 64 [x0, x1, x2, x3] <u limbs 64 [m0, m1, m2, m3]
  ]
}

mov L0x7fffffffdb30 x0;
mov L0x7fffffffdb38 x1;
mov L0x7fffffffdb40 x2;
mov L0x7fffffffdb48 x3;

mov rcx n0;

(* prime *)
mov L0x55555556c660 m0;
mov L0x55555556c668 m1;
mov L0x55555556c670 m2;
mov L0x55555556c678 m3;


(* #callq  0x555555567f00 <__mulx_by_1_mont_256>   #! PC = 0x93824992312821 *)
#callq  0x555555567f00 <__mulx_by_1_mont_256>   #! 0x93824992312821 = 0x93824992312821;
(* #endbr64                                         #! PC = 0x93824992313088 *)
#endbr64                                         #! 0x93824992313088 = 0x93824992313088;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdb30; Value = 0x000009c0000009c0; PC = 0x93824992313092 *)
mov rax L0x7fffffffdb30;
(* mov    0x8(%rsi),%r11                           #! EA = L0x7fffffffdb38; Value = 0x000009c0000009c0; PC = 0x93824992313095 *)
mov r11 L0x7fffffffdb38;
(* mov    0x10(%rsi),%r12                          #! EA = L0x7fffffffdb40; Value = 0x000009c0000009c0; PC = 0x93824992313099 *)
mov r12 L0x7fffffffdb40;
(* mov    0x18(%rsi),%r13                          #! EA = L0x7fffffffdb48; Value = 0x000009c0000009c0; PC = 0x93824992313103 *)
mov r13 L0x7fffffffdb48;
(* mov    %rax,%r14                                #! PC = 0x93824992313107 *)
mov r14 rax;
(* imul   %rcx,%rax                                #! PC = 0x93824992313110 *)
umull dontcare rax rcx rax;
(* mov    %rax,%r10                                #! PC = 0x93824992313114 *)
mov r10 rax;
(* mulq   (%rbx)                                   #! EA = L0x55555556c660; PC = 0x93824992313117 *)
umull rdx rax L0x55555556c660 rax;
(* add    %rax,%r14                                #! PC = 0x93824992313120 *)
adds carry r14 rax r14;

(* NOTE: Montgomery reduction *)
assert eqmod r14 0 (2**64) && true;
assume r14 = 0 && r14 = 0@64;

(* mov    %r10,%rax                                #! PC = 0x93824992313123 *)
mov rax r10;
(* adc    %rdx,%r14                                #! PC = 0x93824992313126 *)
adcs carry r14 rdx r14 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mulq   0x8(%rbx)                                #! EA = L0x55555556c668; PC = 0x93824992313129 *)
umull rdx rax L0x55555556c668 rax;
(* add    %rax,%r11                                #! PC = 0x93824992313133 *)
adds carry r11 rax r11;
(* mov    %r10,%rax                                #! PC = 0x93824992313136 *)
mov rax r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992313139 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r14,%r11                                #! PC = 0x93824992313143 *)
adds carry r11 r14 r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992313146 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r14                                #! PC = 0x93824992313150 *)
mov r14 rdx;
(* mulq   0x10(%rbx)                               #! EA = L0x55555556c670; PC = 0x93824992313153 *)
umull rdx rax L0x55555556c670 rax;
(* mov    %r11,%r15                                #! PC = 0x93824992313157 *)
mov r15 r11;
(* imul   %rcx,%r11                                #! PC = 0x93824992313160 *)
umull dontcare r11 rcx r11;
(* add    %rax,%r12                                #! PC = 0x93824992313164 *)
adds carry r12 rax r12;
(* mov    %r10,%rax                                #! PC = 0x93824992313167 *)
mov rax r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992313170 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r14,%r12                                #! PC = 0x93824992313174 *)
adds carry r12 r14 r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992313177 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r14                                #! PC = 0x93824992313181 *)
mov r14 rdx;
(* mulq   0x18(%rbx)                               #! EA = L0x55555556c678; PC = 0x93824992313184 *)
umull rdx rax L0x55555556c678 rax;
(* add    %rax,%r13                                #! PC = 0x93824992313188 *)
adds carry r13 rax r13;
(* mov    %r11,%rax                                #! PC = 0x93824992313191 *)
mov rax r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992313194 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r14,%r13                                #! PC = 0x93824992313198 *)
adds carry r13 r14 r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992313201 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r14                                #! PC = 0x93824992313205 *)
mov r14 rdx;
(* mulq   (%rbx)                                   #! EA = L0x55555556c660; PC = 0x93824992313208 *)
umull rdx rax L0x55555556c660 rax;
(* add    %rax,%r15                                #! PC = 0x93824992313211 *)
adds carry r15 rax r15;

(* NOTE: Montgomery reduction *)
assert eqmod r15 0 (2**64) && true;
assume r15 = 0 && r15 = 0@64;

(* mov    %r11,%rax                                #! PC = 0x93824992313214 *)
mov rax r11;
(* adc    %rdx,%r15                                #! PC = 0x93824992313217 *)
adcs carry r15 rdx r15 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mulq   0x8(%rbx)                                #! EA = L0x55555556c668; PC = 0x93824992313220 *)
umull rdx rax L0x55555556c668 rax;
(* add    %rax,%r12                                #! PC = 0x93824992313224 *)
adds carry r12 rax r12;
(* mov    %r11,%rax                                #! PC = 0x93824992313227 *)
mov rax r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992313230 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r15,%r12                                #! PC = 0x93824992313234 *)
adds carry r12 r15 r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992313237 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r15                                #! PC = 0x93824992313241 *)
mov r15 rdx;
(* mulq   0x10(%rbx)                               #! EA = L0x55555556c670; PC = 0x93824992313244 *)
umull rdx rax L0x55555556c670 rax;
(* mov    %r12,%r10                                #! PC = 0x93824992313248 *)
mov r10 r12;
(* imul   %rcx,%r12                                #! PC = 0x93824992313251 *)
umull dontcare r12 rcx r12;
(* add    %rax,%r13                                #! PC = 0x93824992313255 *)
adds carry r13 rax r13;
(* mov    %r11,%rax                                #! PC = 0x93824992313258 *)
mov rax r11;
(* adc    $0x0,%rdx                                #! PC = 0x93824992313261 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r15,%r13                                #! PC = 0x93824992313265 *)
adds carry r13 r15 r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992313268 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r15                                #! PC = 0x93824992313272 *)
mov r15 rdx;
(* mulq   0x18(%rbx)                               #! EA = L0x55555556c678; PC = 0x93824992313275 *)
umull rdx rax L0x55555556c678 rax;
(* add    %rax,%r14                                #! PC = 0x93824992313279 *)
adds carry r14 rax r14;
(* mov    %r12,%rax                                #! PC = 0x93824992313282 *)
mov rax r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992313285 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r15,%r14                                #! PC = 0x93824992313289 *)
adds carry r14 r15 r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992313292 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r15                                #! PC = 0x93824992313296 *)
mov r15 rdx;
(* mulq   (%rbx)                                   #! EA = L0x55555556c660; PC = 0x93824992313299 *)
umull rdx rax L0x55555556c660 rax;
(* add    %rax,%r10                                #! PC = 0x93824992313302 *)
adds carry r10 rax r10;

(* NOTE: Montgomery reduction *)
assert eqmod r10 0 (2**64) && true;
assume r10 = 0 && r10 = 0@64;

(* mov    %r12,%rax                                #! PC = 0x93824992313305 *)
mov rax r12;
(* adc    %rdx,%r10                                #! PC = 0x93824992313308 *)
adcs carry r10 rdx r10 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mulq   0x8(%rbx)                                #! EA = L0x55555556c668; PC = 0x93824992313311 *)
umull rdx rax L0x55555556c668 rax;
(* add    %rax,%r13                                #! PC = 0x93824992313315 *)
adds carry r13 rax r13;
(* mov    %r12,%rax                                #! PC = 0x93824992313318 *)
mov rax r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992313321 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r10,%r13                                #! PC = 0x93824992313325 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992313328 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992313332 *)
mov r10 rdx;
(* mulq   0x10(%rbx)                               #! EA = L0x55555556c670; PC = 0x93824992313335 *)
umull rdx rax L0x55555556c670 rax;
(* mov    %r13,%r11                                #! PC = 0x93824992313339 *)
mov r11 r13;
(* imul   %rcx,%r13                                #! PC = 0x93824992313342 *)
umull dontcare r13 rcx r13;
(* add    %rax,%r14                                #! PC = 0x93824992313346 *)
adds carry r14 rax r14;
(* mov    %r12,%rax                                #! PC = 0x93824992313349 *)
mov rax r12;
(* adc    $0x0,%rdx                                #! PC = 0x93824992313352 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r10,%r14                                #! PC = 0x93824992313356 *)
adds carry r14 r10 r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992313359 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992313363 *)
mov r10 rdx;
(* mulq   0x18(%rbx)                               #! EA = L0x55555556c678; PC = 0x93824992313366 *)
umull rdx rax L0x55555556c678 rax;
(* add    %rax,%r15                                #! PC = 0x93824992313370 *)
adds carry r15 rax r15;
(* mov    %r13,%rax                                #! PC = 0x93824992313373 *)
mov rax r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992313376 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r10,%r15                                #! PC = 0x93824992313380 *)
adds carry r15 r10 r15;
(* adc    $0x0,%rdx                                #! PC = 0x93824992313383 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r10                                #! PC = 0x93824992313387 *)
mov r10 rdx;
(* mulq   (%rbx)                                   #! EA = L0x55555556c660; PC = 0x93824992313390 *)
umull rdx rax L0x55555556c660 rax;
(* add    %rax,%r11                                #! PC = 0x93824992313393 *)
adds carry r11 rax r11;

(* NOTE: Montgomery reduction *)
assert eqmod r11 0 (2**64) && true;
assume r11 = 0 && r11 = 0@64;

(* mov    %r13,%rax                                #! PC = 0x93824992313396 *)
mov rax r13;
(* adc    %rdx,%r11                                #! PC = 0x93824992313399 *)
adcs carry r11 rdx r11 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mulq   0x8(%rbx)                                #! EA = L0x55555556c668; PC = 0x93824992313402 *)
umull rdx rax L0x55555556c668 rax;
(* add    %rax,%r14                                #! PC = 0x93824992313406 *)
adds carry r14 rax r14;
(* mov    %r13,%rax                                #! PC = 0x93824992313409 *)
mov rax r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992313412 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r14                                #! PC = 0x93824992313416 *)
adds carry r14 r11 r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992313419 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992313423 *)
mov r11 rdx;
(* mulq   0x10(%rbx)                               #! EA = L0x55555556c670; PC = 0x93824992313426 *)
umull rdx rax L0x55555556c670 rax;
(* add    %rax,%r15                                #! PC = 0x93824992313430 *)
adds carry r15 rax r15;
(* mov    %r13,%rax                                #! PC = 0x93824992313433 *)
mov rax r13;
(* adc    $0x0,%rdx                                #! PC = 0x93824992313436 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r15                                #! PC = 0x93824992313440 *)
adds carry r15 r11 r15;
(* adc    $0x0,%rdx                                #! PC = 0x93824992313443 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992313447 *)
mov r11 rdx;
(* mulq   0x18(%rbx)                               #! EA = L0x55555556c678; PC = 0x93824992313450 *)
umull rdx rax L0x55555556c678 rax;
(* add    %rax,%r10                                #! PC = 0x93824992313454 *)
adds carry r10 rax r10;
(* mov    %r14,%rax                                #! PC = 0x93824992313457 *)
mov rax r14;
(* adc    $0x0,%rdx                                #! PC = 0x93824992313460 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    %r11,%r10                                #! PC = 0x93824992313464 *)
adds carry r10 r11 r10;
(* adc    $0x0,%rdx                                #! PC = 0x93824992313467 *)
adcs carry rdx 0@uint64 rdx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdx,%r11                                #! PC = 0x93824992313471 *)
mov r11 rdx;
(* #repz retq                                      #! PC = 0x93824992313474 *)
#repz retq                                      #! 0x93824992313474 = 0x93824992313474;

mov q0 r14;
mov q1 r15;
mov q2 r10;
mov q3 r11;

assert eqmod (limbs 64 [q0, q1, q2, q3] * (2**256))
             (limbs 64 [x0, x1, x2, x3])
             (limbs 64 [m0, m1, m2, m3]) && true;



(* mov    %r15,%rdx                                #! PC = 0x93824992312826 *)
mov rdx r15;
(* mov    %r10,%r12                                #! PC = 0x93824992312829 *)
mov r12 r10;
(* mov    %r11,%r13                                #! PC = 0x93824992312832 *)
mov r13 r11;
(* sub    (%rbx),%r14                              #! EA = L0x55555556c660; Value = 0xffffffff00000001; PC = 0x93824992312835 *)
subb carry r14 r14 L0x55555556c660;
(* sbb    0x8(%rbx),%r15                           #! EA = L0x55555556c668; Value = 0x53bda402fffe5bfe; PC = 0x93824992312838 *)
sbbs carry r15 r15 L0x55555556c668 carry;
(* sbb    0x10(%rbx),%r10                          #! EA = L0x55555556c670; Value = 0x3339d80809a1d805; PC = 0x93824992312842 *)
sbbs carry r10 r10 L0x55555556c670 carry;
(* sbb    0x18(%rbx),%r11                          #! EA = L0x55555556c678; Value = 0x73eda753299d7d48; PC = 0x93824992312846 *)
sbbs carry r11 r11 L0x55555556c678 carry;
(* cmovae %r14,%rax                                #! PC = 0x93824992312850 *)
cmov rax carry rax r14;
(* cmovae %r15,%rdx                                #! PC = 0x93824992312854 *)
cmov rdx carry rdx r15;
(* cmovae %r10,%r12                                #! PC = 0x93824992312858 *)
cmov r12 carry r12 r10;
(* mov    %rax,(%rdi)                              #! EA = L0x7fffffffdb70; PC = 0x93824992312862 *)
mov L0x7fffffffdb70 rax;
(* cmovae %r11,%r13                                #! PC = 0x93824992312865 *)
cmov r13 carry r13 r11;
(* mov    %rdx,0x8(%rdi)                           #! EA = L0x7fffffffdb78; PC = 0x93824992312869 *)
mov L0x7fffffffdb78 rdx;
(* mov    %r12,0x10(%rdi)                          #! EA = L0x7fffffffdb80; PC = 0x93824992312873 *)
mov L0x7fffffffdb80 r12;
(* mov    %r13,0x18(%rdi)                          #! EA = L0x7fffffffdb88; PC = 0x93824992312877 *)
mov L0x7fffffffdb88 r13;


mov c0 L0x7fffffffdb70;
mov c1 L0x7fffffffdb78;
mov c2 L0x7fffffffdb80;
mov c3 L0x7fffffffdb88;

assert true &&
       eqmod (limbs 64 [q0, q1, q2, q3])
             (limbs 64 [c0, c1, c2, c3])
             (limbs 64 [m0, m1, m2, m3]);

assume eqmod (limbs 64 [q0, q1, q2, q3])
             (limbs 64 [c0, c1, c2, c3])
             (limbs 64 [m0, m1, m2, m3]) && true;

{
  eqmod (limbs 64 [c0, c1, c2, c3]) * (2**256)
        (limbs 64 [x0, x1, x2, x3])
        (limbs 64 [m0, m1, m2, m3])
&&
  limbs 64 [c0, c1, c2, c3] <u limbs 64 [m0, m1, m2, m3]
}

