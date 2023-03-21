(* Disable safety since singular is unused *)
(* quine: -v -disable_safety -vo lex 3-divstep.cl
Parsing Cryptoline file:                [OK]            0.001612 seconds
Checking well-formedness:               [OK]            0.000577 seconds
Transforming to SSA form:               [OK]            0.000194 seconds
Normalizing specification:              [OK]            0.000172 seconds
Rewriting assignments:                  [OK]            0.000149 seconds
Verifying range assertions:             [OK]            0.724266 seconds
Verifying range specification:          [OK]            0.018930 seconds
Rewriting value-preserved casting:      [OK]            0.000062 seconds
Verifying algebraic assertions:         [OK]            0.000701 seconds
Verifying algebraic specification:      [OK]            35.603078 seconds
Verification result:                    [OK]            36.350443 seconds
*)
proc main (sint64 f0, sint64 g0, sint64 delta, sint64 f, sint64 g, sint64 r, sint64 u, sint64 v, sint64 q, sint64 M) =
{
  eqmod 2**(61) 0 M
  &&
  and[ const 64 (-(2**63)) <s delta, delta <s const 64 (2**63) - 1@64,
       eqmod f const 64 1 const 64 2, 
       (-1)@64 * M <=s r, r <=s M, 
       (-1)@64 * M <=s u, u <=s M, 
       (-1)@64 * M <=s v, v <=s M, 
       (-1)@64 * M <=s q, q <=s M,
       1@64 <=s M, M <=s const 64 (2**61)
  ]
}


(* Boolector case 3 premise *)
assume true &&
  and[ 
       eqmod g const 64 0 const 64 2 
];

mov rsi delta;
mov rdx f;
mov rcx g;
mov r8  r;
mov r9  u;
mov rax v;
mov r10 q;

mov M0 M;
smul M M 2@sint64;

(* xor    %r11,%r11                                #! PC = 0x401528 *)
mov r11 0@sint64;
(* xor    %r12,%r12                                #! PC = 0x40152b *)
mov r12 0@sint64;
(* mov    0xffffffffffffffff,%r13                            #! PC = 0x40152e *)
mov r13 0xffffffffffffffff@sint64;
(* mov    1,%r14                            #! PC = 0x401536 *)
mov r14 1@sint64;
(* sub    %rsi,%r11                                #! PC = 0x40153e *)
subb carry r11 r11 rsi;

ssplit SF dontcare r11 63;
cast SF@uint1 SF;

(* cmovge %r14,%r13                                #! PC = 0x401541 *)
cmov r13 SF r13 r14;
(* and    %rcx,%r14                                #! PC = 0x401545 *)
and r14@sint64 rcx r14;
(* sub    %r14,%r12                                #! PC = 0x401548 *)
subb carry r12 r12 r14;
(* mov    %rdx,%r15                                #! PC = 0x40154b *)
mov r15 rdx;
(* mov    %r9,%rbx                                 #! PC = 0x40154e *)
mov rbx r9;
(* and    %r13,%r12                                #! PC = 0x401551 *)
and r12@sint64 r13 r12;
(* imul   %r12,%r15                                #! PC = 0x401554 *)
smull dontcare r15 r12 r15;
cast r15@sint64 r15;
(* imul   %r12,%rbx                                #! PC = 0x401558 *)
smull dontcare rbx r12 rbx;
cast rbx@sint64 rbx;
(* imul   %rax,%r12                                #! PC = 0x40155c *)
smull dontcare r12 rax r12;
cast r12@sint64 r12;
(* add    %rcx,%r15                                #! PC = 0x401560 *)
sadds carry r15 rcx r15;
(* add    %r13,%r14                                #! PC = 0x401563 *)
sadds carry r14 r13 r14;

subb ZF dontcare r14 1@sint64;

(* cmove  %r11,%rsi                                #! PC = 0x401566 *)
cmov rsi ZF r11 rsi;
(* lea    0x1(%rsi),%rsi                           #! PC = 0x40156a *)
adds dontcare rsi rsi 1@sint64;
(* cmove  %r10,%r9                                 #! PC = 0x40156e *)
cmov r9 ZF r10 r9;
(* cmove  %r8,%rax                                 #! PC = 0x401572 *)
cmov rax ZF r8 rax;
(* cmove  %rcx,%rdx                                #! PC = 0x401576 *)
cmov rdx ZF rcx rdx;
(* add    %r9,%r9                                  #! PC = 0x40157a *)
adds carry r9 r9 r9;
(* add    %rax,%rax                                #! PC = 0x40157d *)
adds carry rax rax rax;
(* sar    %r15                                     #! PC = 0x401580 *)
ssplit r15 dontcare r15 1;
(* add    %r10,%rbx                                #! PC = 0x401583 *)
adds carry rbx r10 rbx;
(* add    %r8,%r12                                 #! PC = 0x401586 *)
adds carry r12 r8 r12;

mov DELTA rsi;
mov F rdx;
mov G1 r15;
mov R1 r12;
mov U r9;
mov V rax;
mov Q1 rbx;

assert true &&
  and[ (sext G1 1) * 2@65 = (sext g 1),
       F = f,
       (sext DELTA 1) = 1@65 + (sext delta 1),
       (sext U 1) = (sext u 1) * 2@65,
       (sext V 1) = (sext v 1) * 2@65,
       Q1 = q,
       R1 = r,
       (-1)@64 * M <=s R1, R1 <=s M, 
       (-1)@64 * M <=s U , U  <=s M, 
       (-1)@64 * M <=s V , V  <=s M, 
       (-1)@64 * M <=s Q1, Q1 <=s M,
       1@64 <s M, M <=s const 64 (2**62),
       M = M0 * 2@64
];

(* Singular is unused until now *)

ecut true;

(* divstep premise *)
assume 
      and[
      eqmod f 1 2,
      eqmod
      u * f0 + v * g0
      0
      M0,
      eqmod
      q * f0 + r * g0
      0
      M0,
      eqmod
      u * f0 + v * g0
      f * M0
      2**(64),
      eqmod
      q * f0 + r * g0
      g * M0
      2**(64),
      M = M0 * 2,
      eqmod 2**(61) 0 M0] && true;


nondet pos@uint1;

assert true &&
  and[(pos - 0@1)*(pos - 1@1) = 0@1];
assume
  and[(pos - 0)*(pos - 1) = 0] && true;

ssplit Hg LSB_g g 1;
assert true &&
  and[eqmod g - LSB_g 0@64 2@64];
assume
  and[eqmod g - LSB_g 0 2] && true;

nondet Xh@sint64;

(* g_is_odd V g_is_even *)
assume (LSB_g - 1)*(LSB_g - 0) = 0 && true;

(* case_1 V delta > 0 V g_is_even *)
assume (LSB_g - 0)*(pos - 0)*((Xh*(2**(64)))+ G1 * 2 - f - g) = 0 && true;
assume (LSB_g - 0)*(pos - 0)*(F - f) = 0 && true;
assume (LSB_g - 0)*(pos - 0)*(U - u * 2) = 0 && true;
assume (LSB_g - 0)*(pos - 0)*(V - v * 2) = 0 && true;
assume (LSB_g - 0)*(pos - 0)*(Q1 - q - u) = 0 && true;
assume (LSB_g - 0)*(pos - 0)*(R1 - r - v) = 0 && true;

(* delta <= 0 V case_2 V g_is_even *)
assume (LSB_g - 0)*(pos - 1)*((Xh*(2**(64)))+ G1 * 2 + f - g) = 0 && true;
assume (LSB_g - 0)*(pos - 1)*(F - g) = 0 && true;
assume (LSB_g - 0)*(pos - 1)*(U - q * 2) = 0 && true;
assume (LSB_g - 0)*(pos - 1)*(V - r * 2) = 0 && true;
assume (LSB_g - 0)*(pos - 1)*(Q1 - q + u) = 0 && true;
assume (LSB_g - 0)*(pos - 1)*(R1 - r + v) = 0 && true;

(* g_is_odd V case_3 *)
assume (LSB_g - 1)*((Xh*(2**(64)))+ G1 * 2     - g) = 0 && true;
assume (LSB_g - 1)*(F - f) = 0 && true;
assume (LSB_g - 1)*(U - u * 2) = 0 && true;
assume (LSB_g - 1)*(V - v * 2) = 0 && true;
assume (LSB_g - 1)*(Q1 - q    ) = 0 && true;
assume (LSB_g - 1)*(R1 - r    ) = 0 && true;



(* Singular case 2 premise *)

assume LSB_g = 0 && true;

ecut and[
      eqmod
      U * f0 + V * g0
      0
      M,
      eqmod
      Q1 * f0 + R1 * g0
      0
      M,
      eqmod
      U * f0 + V * g0
      F * M
      2**(64),
      eqmod
      Q1 * f0 + R1 * g0
      G1 * M
      2**(64),
      M = M0 * 2];