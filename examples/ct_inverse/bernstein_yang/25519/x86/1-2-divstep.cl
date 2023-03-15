(* Disable safety since singular is unused *)
(* quine: -v -disable_safety -vo lex 1-2-divstep.cl
Parsing Cryptoline file:                [OK]            0.002352 seconds
Checking well-formedness:               [OK]            0.000421 seconds
Transforming to SSA form:               [OK]            0.000138 seconds
Normalizing specification:              [OK]            0.000104 seconds
Rewriting assignments:                  [OK]            0.000115 seconds
Verifying range assertions:             [OK]            1.519997 seconds
Verifying range specification:          [OK]            0.003573 seconds
Rewriting value-preserved casting:      [OK]            0.000741 seconds
Verifying algebraic assertions:         [OK]            0.000639 seconds
Verifying algebraic specification:      [OK]            73.774737 seconds
Verification result:                    [OK]            75.303445 seconds
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


(* Boolector case 1 premise *)
assume true &&
  and[
       delta >s const 64 0, eqmod g const 64 1 const 64 2
];

mov rsi delta;
mov rdx f;
mov r15 g;
mov r12 r;
mov r9  u;
mov rax v;
mov rbx q;

mov M0 M;
smul M M 2@sint64;

(* xor    %r11,%r11                                #! PC = 0x401589 *)
mov r11 0@sint64;
(* xor    %r8,%r8                                  #! PC = 0x40158c *)
mov r8 0@sint64;
(* mov    0xffffffffffffffff,%r13                  #! PC = 0x40158f *)
mov r13 0xffffffffffffffff@sint64;
(* mov    1,%r14                                   #! PC = 0x401597 *)
mov r14 1@sint64;
(* sub    %rsi,%r11                                #! PC = 0x40159f *)
subb carry r11 r11 rsi;

ssplit SF dontcare r11 63;
cast SF@uint1 SF;

(* cmovge %r14,%r13                                #! PC = 0x4015a2 *)
cmov r13 SF r13 r14;
(* and    %r15,%r14                                #! PC = 0x4015a6 *)
and r14@sint64 r15 r14;
(* sub    %r14,%r8                                 #! PC = 0x4015a9 *)
subb carry r8 r8 r14;
(* mov    %rdx,%rcx                                #! PC = 0x4015ac *)
mov rcx rdx;
(* mov    %r9,%r10                                 #! PC = 0x4015af *)
mov r10 r9;
(* and    %r13,%r8                                 #! PC = 0x4015b2 *)
and r8@sint64 r13 r8;

assert true && r8 = 0xffffffffffffffff@64;

(* imul   %r8,%rcx                                 #! PC = 0x4015b5 *)

assert true && r8 = (-1)@64;
assert true && rcx >s 0x8000000000000000@64; 
assume true && rcx >s 0x8000000000000000@64; 
mov rcxo rcx;
nondet rcx@sint64;
assume true && rcx = (-1)@64 * rcxo;

(* imul   %r8,%r10                                 #! PC = 0x4015b9 *)

assert true && r8 = (-1)@64;
assert true && r10 >s 0x8000000000000000@64;
assume true && r10 >s 0x8000000000000000@64;
mov r10o r10;
nondet r10@sint64;
assume true && r10 = (-1)@64 * r10o;

(* imul   %rax,%r8                                 #! PC = 0x4015bd *)

assert true && r8 = (-1)@64;
assert true && rax >s 0x8000000000000000@64;
assume true && rax >s 0x8000000000000000@64;
nondet r8@sint64;
assume true && r8 = (-1)@64 * rax;

(* add    %r15,%rcx                                #! PC = 0x4015c1 *)
adds carry rcx r15 rcx;
(* add    %r13,%r14                                #! PC = 0x4015c4 *)
adds carry r14 r13 r14;

subb ZF dontcare r14 1@sint64;

(* cmove  %r11,%rsi                                #! PC = 0x4015c7 *)
cmov rsi ZF r11 rsi;
(* lea    0x1(%rsi),%rsi                           #! PC = 0x4015cb *)
adds dontcare rsi rsi 1@sint64;
(* cmove  %rbx,%r9                                 #! PC = 0x4015cf *)
cmov r9 ZF rbx r9;
(* cmove  %r12,%rax                                #! PC = 0x4015d3 *)
cmov rax ZF r12 rax;
(* cmove  %r15,%rdx                                #! PC = 0x4015d7 *)
cmov rdx ZF r15 rdx;
(* add    %r9,%r9                                  #! PC = 0x4015db *)
adds carry r9 r9 r9;
(* add    %rax,%rax                                #! PC = 0x4015de *)
adds carry rax rax rax;
(* sar    %rcx                                     #! PC = 0x4015e1 *)
ssplit rcx dontcare rcx 1;
(* add    %rbx,%r10                                #! PC = 0x4015e4 *)
adds carry r10 rbx r10;
(* add    %r12,%r8                                 #! PC = 0x4015e7 *)
adds carry r8 r12 r8;
(* sub    $0x2,%rdi                                #! PC = 0x4015ea *)
#subb carry rdi rdi 0x2@uint64;
(* #jg     0x401528 <._loop>                       #! PC = 0x4015ee *)
#jg     0x401528 <._loop>                       #! 0x4015ee = 0x4015ee;


mov DELTA rsi;
mov F rdx;
mov G1 rcx;
mov R1 r8;
mov U r9;
mov V rax;
mov Q1 r10;


assert true &&
  and[ G1 * 2@64 = g - f,
       F = g,
       (sext DELTA 1) = 1@65 - (sext delta 1),
       (sext U 1) = (sext q 1) * 2@65,
       (sext V 1) = (sext r 1) * 2@65,
       (sext Q1 1) = (sext q 1) - (sext u 1),
       (sext R1 1) = (sext r 1) - (sext v 1),
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



(* Singular case 1 premise *)

assume LSB_g = 1 && true;
assume pos = 1 && true;

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
