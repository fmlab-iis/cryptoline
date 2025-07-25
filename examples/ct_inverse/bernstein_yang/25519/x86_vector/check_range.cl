(* popper: cv.exe -jobs 64 -isafety -v -slicing -f main check_range.cl
Parsing CryptoLine file:                    [OK]            0.0065 seconds
Checking well-formedness:                   [OK]            0.0037 seconds

Procedure main
==============
Transforming to SSA form:                   [OK]            0.0022 seconds
Normalizing specification:                  [OK]            0.0029 seconds
Rewriting assignments:                      [OK]            0.0040 seconds
Verifying program safety:                   [OK]            1.0611 seconds
Verifying range assertions:                 [OK]            47.8805 seconds
Verifying range specification:              [OK]            0.0001 seconds
Rewriting value-preserved casting:          [OK]            0.0011 seconds
Verifying algebraic assertions:             [OK]            0.9835 seconds
Verifying algebraic specification:          [OK]            0.0001 seconds

Procedure Summary
-----------------
Procedure verification:                     [OK]            49.9373 seconds

Summary
=======
Verification result:                        [OK]            49.9475 seconds
*)

(* loop is verified in *-loop20.cl. only pre- and post-conditions are given here *)
proc loop (sint64 f0, sint64 g0, sint64 delta_,
           sint64 f_, sint64 g_,
           sint64 r_, sint64 u_, sint64 v_, sint64 q_, sint64 m_;
           sint64 DELTA_,
           sint64 F_, sint64 G_,
           sint64 R_, sint64 U_, sint64 V_, sint64 Q_, sint64 M_) =
{true && true}

mov [delta, f, g, r, u, v, q, m] [delta_, f_, g_, r_, u_, v_, q_, m_];

assert eqmod (2**61) 0 m
    && and [ const 64 (-(2**63)) <s delta, delta <s const 64 (2**63) - 1@64,
             eqmod f const 64 1 const 64 2,
             (-1)@64 * m <=s r, r <=s m, 
             (-1)@64 * m <=s u, u <=s m, 
             (-1)@64 * m <=s v, v <=s m, 
             (-1)@64 * m <=s q, q <=s m,
             1@64 <=s m, m <=s const 64 (2**61)];

nondet pos@uint1;

assert true &&
  and[(pos - 0@1)*(pos - 1@1) = 0@1];
assume
  and[(pos - 0)*(pos - 1) = 0] && true;

cast LSB_g@sint1 g;
assert true && 
  and[eqmod (g - (sext LSB_g 63)) 0@64 2@64];
assume  
  and[eqmod (g - LSB_g) 0 2] && true;


smul M m 2@sint64;

########nondet########
nondet DELTA@sint64;
nondet F@sint64;
nondet G@sint64;
nondet R@sint64;
nondet U@sint64;
nondet V@sint64;
nondet Q@sint64;

assume true &&
  or[
      (* case 1 *)
      and[delta <=s const 64 0, eqmod g const 64 1 const 64 2,
          
          G * 2@64 = f + g,
          F = f,
          (sext DELTA 1) = 1@65 + (sext delta 1),
          (sext U 1) = (sext u 1) * 2@65,
          (sext V 1) = (sext v 1) * 2@65,
          (sext Q 1) = (sext q 1) + (sext u 1),
          (sext R 1) = (sext r 1) + (sext v 1),
          (-1)@64 * M <=s R, R <=s M,
          (-1)@64 * M <=s U, U <=s M,
          (-1)@64 * M <=s V, V <=s M,
          (-1)@64 * M <=s Q, Q <=s M,
          1@64 <s M, M <=s const 64 (2**62),
          M = m * 2@64
         ],

      (* case 2 *)
      and[delta  >s const 64 0, eqmod g const 64 1 const 64 2,
          
          G * 2@64 = g - f,
          F = g,
          (sext DELTA 1) = 1@65 - (sext delta 1),
          (sext U 1) = (sext q 1) * 2@65,
          (sext V 1) = (sext r 1) * 2@65,
          (sext Q 1) = (sext q 1) - (sext u 1),
          (sext R 1) = (sext r 1) - (sext v 1),
          (-1)@64 * M <=s R, R <=s M,
          (-1)@64 * M <=s U, U <=s M,
          (-1)@64 * M <=s V, V <=s M,
          (-1)@64 * M <=s Q, Q <=s M,
          1@64 <s M, M <=s const 64 (2**62),
          M = m * 2@64
         ],

      (* case 3 *)
      and[eqmod g const 64 0 const 64 2,

          (sext G 1) * 2@65 = (sext g 1),
          F = f,
          (sext DELTA 1) = 1@65 + (sext delta 1),
          (sext U 1) = (sext u 1) * 2@65,
          (sext V 1) = (sext v 1) * 2@65,
          Q = q,
          R = r,
          (-1)@64 * M <=s R, R <=s M,
          (-1)@64 * M <=s U, U <=s M,
          (-1)@64 * M <=s V, V <=s M,
          (-1)@64 * M <=s Q, Q <=s M,
          1@64 <s M, M <=s const 64 (2**62),
          M = m * 2@64
         ]
  ];

assume and[
      eqmod
      (U * f0 + V * g0)
      0
      M,
      eqmod
      (Q * f0 + R * g0)
      0
      M,
      eqmod
      (U * f0 + V * g0)
      (F * M)
      (2**64),
      eqmod
      (Q * f0 + R * g0)
      (G * M)
      (2**64)] && true;

mov [DELTA_, F_, G_, R_, U_, V_, Q_, M_] [DELTA, F, G, R, U, V, Q, M];
{true && true}



proc main (uint64 count, sint64 delta0, uint64 f0, uint64 f1, uint64 f2, sint64 f3, uint64 g0, uint64 g1, uint64 g2, sint64 g3) =
{
  and[ eqmod f0 1 2] 
  &&
  and[ const 64 (-(2**(60))) <=s delta0, delta0 <=s const 64 (2**(60)),
       eqmod f0 const 64 1 const 64 2,
       count = 62@64
  ]
}


nondet rdx@sint64;
nondet rcx@sint64;
nondet rbx@sint64;
nondet r8@sint64;
nondet r12@sint64;
nondet r15@sint64;
mov rdi count;
mov rsi delta0;
mov L0x7fffffffde10 f0;
mov L0x7fffffffde18 f1;
mov L0x7fffffffde20 f2;
mov L0x7fffffffde28 f3;
mov L0x7fffffffde30 g0;
mov L0x7fffffffde38 g1;
mov L0x7fffffffde40 g2;
mov L0x7fffffffde48 g3;


(* mov    %rdi,0x38(%rsp)                          #! EA = L0x7fffffffdd58; PC = 0x4014f3 *)
mov L0x7fffffffdd58 rdi;
(* lea    -0x1(%rdi),%rdi                          #! PC = 0x4014f8 *)
subb dontcare rdi rdi 1@uint64;
(* mov    %rdx,0x40(%rsp)                          #! EA = L0x7fffffffdd60; PC = 0x4014fc *)
mov L0x7fffffffdd60 rdx;
(* mov    %rcx,0x48(%rsp)                          #! EA = L0x7fffffffdd68; PC = 0x401501 *)
mov L0x7fffffffdd68 rcx;
(* mov    %rsi,%rsi                                #! PC = 0x401506 *)
mov rsi rsi;
(* mov    (%rdx),%rdx                              #! EA = L0x7fffffffde10; Value = 0xffffffffffffffed; PC = 0x401509 *)
mov rdx L0x7fffffffde10;
(* mov    (%rcx),%rcx                              #! EA = L0x7fffffffde30; Value = 0x327b23c66b8b4567; PC = 0x40150c *)
mov rcx L0x7fffffffde30;
(* mov    %r8,0x50(%rsp)                           #! EA = L0x7fffffffdd70; PC = 0x40150f *)
mov L0x7fffffffdd70 r8;
(* mov    $0x1,%r8                                 #! PC = 0x401514 *)
mov r8 0x1@sint64;
(* mov    %r8,%r9                                  #! PC = 0x40151b *)
mov r9 r8;
(* mov    $0x0,%rax                                #! PC = 0x40151e *)
mov rax 0x0@sint64;
(* mov    %rax,%r10                                #! PC = 0x401525 *)
mov r10 rax;

cast rdx@sint64 rdx;
cast rcx@sint64 rcx;

mov f0_init rdx;
mov g0_init rcx;

(* call 62 times*)

mov M 1@sint64;

assert true && and[ r9  = 1@64,
                    rax = 0@64,
                    r10 = 0@64,
                    r8  = 1@64
                   ];

(* 01 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), rcx (* g *),
              r8  (* r *), r9 (* u *), rax (* v *), r10 (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), r15 (* G *),
              r12 (* R *), r9 (* U *), rax (* V *), rbx (* Q *), M (* M *) );

(* 02 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), r15 (* g *),
              r12 (* r *), r9 (* u *), rax (* v *), rbx (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), rcx (* G *),
              r8  (* R *), r9 (* U *), rax (* V *), r10 (* Q *), M (* M *) );

(* 03 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), rcx (* g *),
              r8  (* r *), r9 (* u *), rax (* v *), r10 (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), r15 (* G *),
              r12 (* R *), r9 (* U *), rax (* V *), rbx (* Q *), M (* M *) );

(* 04 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), r15 (* g *),
              r12 (* r *), r9 (* u *), rax (* v *), rbx (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), rcx (* G *),
              r8  (* R *), r9 (* U *), rax (* V *), r10 (* Q *), M (* M *) );

(* 05 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), rcx (* g *),
              r8  (* r *), r9 (* u *), rax (* v *), r10 (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), r15 (* G *),
              r12 (* R *), r9 (* U *), rax (* V *), rbx (* Q *), M (* M *) );

(* 06 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), r15 (* g *),
              r12 (* r *), r9 (* u *), rax (* v *), rbx (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), rcx (* G *),
              r8  (* R *), r9 (* U *), rax (* V *), r10 (* Q *), M (* M *) );

(* 07 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), rcx (* g *),
              r8  (* r *), r9 (* u *), rax (* v *), r10 (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), r15 (* G *),
              r12 (* R *), r9 (* U *), rax (* V *), rbx (* Q *), M (* M *) );

(* 08 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), r15 (* g *),
              r12 (* r *), r9 (* u *), rax (* v *), rbx (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), rcx (* G *),
              r8  (* R *), r9 (* U *), rax (* V *), r10 (* Q *), M (* M *) );

(* 09 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), rcx (* g *),
              r8  (* r *), r9 (* u *), rax (* v *), r10 (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), r15 (* G *),
              r12 (* R *), r9 (* U *), rax (* V *), rbx (* Q *), M (* M *) );

(* 10 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), r15 (* g *),
              r12 (* r *), r9 (* u *), rax (* v *), rbx (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), rcx (* G *),
              r8  (* R *), r9 (* U *), rax (* V *), r10 (* Q *), M (* M *) );

(* 11 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), rcx (* g *),
              r8  (* r *), r9 (* u *), rax (* v *), r10 (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), r15 (* G *),
              r12 (* R *), r9 (* U *), rax (* V *), rbx (* Q *), M (* M *) );

(* 12 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), r15 (* g *),
              r12 (* r *), r9 (* u *), rax (* v *), rbx (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), rcx (* G *),
              r8  (* R *), r9 (* U *), rax (* V *), r10 (* Q *), M (* M *) );

(* 13 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), rcx (* g *),
              r8  (* r *), r9 (* u *), rax (* v *), r10 (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), r15 (* G *),
              r12 (* R *), r9 (* U *), rax (* V *), rbx (* Q *), M (* M *) );

(* 14 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), r15 (* g *),
              r12 (* r *), r9 (* u *), rax (* v *), rbx (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), rcx (* G *),
              r8  (* R *), r9 (* U *), rax (* V *), r10 (* Q *), M (* M *) );

(* 15 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), rcx (* g *),
              r8  (* r *), r9 (* u *), rax (* v *), r10 (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), r15 (* G *),
              r12 (* R *), r9 (* U *), rax (* V *), rbx (* Q *), M (* M *) );

(* 16 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), r15 (* g *),
              r12 (* r *), r9 (* u *), rax (* v *), rbx (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), rcx (* G *),
              r8  (* R *), r9 (* U *), rax (* V *), r10 (* Q *), M (* M *) );

(* 17 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), rcx (* g *),
              r8  (* r *), r9 (* u *), rax (* v *), r10 (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), r15 (* G *),
              r12 (* R *), r9 (* U *), rax (* V *), rbx (* Q *), M (* M *) );

(* 18 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), r15 (* g *),
              r12 (* r *), r9 (* u *), rax (* v *), rbx (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), rcx (* G *),
              r8  (* R *), r9 (* U *), rax (* V *), r10 (* Q *), M (* M *) );

(* 19 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), rcx (* g *),
              r8  (* r *), r9 (* u *), rax (* v *), r10 (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), r15 (* G *),
              r12 (* R *), r9 (* U *), rax (* V *), rbx (* Q *), M (* M *) );

(* 20 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), r15 (* g *),
              r12 (* r *), r9 (* u *), rax (* v *), rbx (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), rcx (* G *),
              r8  (* R *), r9 (* U *), rax (* V *), r10 (* Q *), M (* M *) );

(* 21 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), rcx (* g *),
              r8  (* r *), r9 (* u *), rax (* v *), r10 (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), r15 (* G *),
              r12 (* R *), r9 (* U *), rax (* V *), rbx (* Q *), M (* M *) );

(* 22 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), r15 (* g *),
              r12 (* r *), r9 (* u *), rax (* v *), rbx (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), rcx (* G *),
              r8  (* R *), r9 (* U *), rax (* V *), r10 (* Q *), M (* M *) );

(* 23 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), rcx (* g *),
              r8  (* r *), r9 (* u *), rax (* v *), r10 (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), r15 (* G *),
              r12 (* R *), r9 (* U *), rax (* V *), rbx (* Q *), M (* M *) );

(* 24 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), r15 (* g *),
              r12 (* r *), r9 (* u *), rax (* v *), rbx (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), rcx (* G *),
              r8  (* R *), r9 (* U *), rax (* V *), r10 (* Q *), M (* M *) );

(* 25 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), rcx (* g *),
              r8  (* r *), r9 (* u *), rax (* v *), r10 (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), r15 (* G *),
              r12 (* R *), r9 (* U *), rax (* V *), rbx (* Q *), M (* M *) );

(* 26 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), r15 (* g *),
              r12 (* r *), r9 (* u *), rax (* v *), rbx (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), rcx (* G *),
              r8  (* R *), r9 (* U *), rax (* V *), r10 (* Q *), M (* M *) );

(* 27 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), rcx (* g *),
              r8  (* r *), r9 (* u *), rax (* v *), r10 (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), r15 (* G *),
              r12 (* R *), r9 (* U *), rax (* V *), rbx (* Q *), M (* M *) );

(* 28 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), r15 (* g *),
              r12 (* r *), r9 (* u *), rax (* v *), rbx (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), rcx (* G *),
              r8  (* R *), r9 (* U *), rax (* V *), r10 (* Q *), M (* M *) );

(* 29 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), rcx (* g *),
              r8  (* r *), r9 (* u *), rax (* v *), r10 (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), r15 (* G *),
              r12 (* R *), r9 (* U *), rax (* V *), rbx (* Q *), M (* M *) );

(* 30 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), r15 (* g *),
              r12 (* r *), r9 (* u *), rax (* v *), rbx (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), rcx (* G *),
              r8  (* R *), r9 (* U *), rax (* V *), r10 (* Q *), M (* M *) );

(* 31 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), rcx (* g *),
              r8  (* r *), r9 (* u *), rax (* v *), r10 (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), r15 (* G *),
              r12 (* R *), r9 (* U *), rax (* V *), rbx (* Q *), M (* M *) );

(* 32 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), r15 (* g *),
              r12 (* r *), r9 (* u *), rax (* v *), rbx (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), rcx (* G *),
              r8  (* R *), r9 (* U *), rax (* V *), r10 (* Q *), M (* M *) );

(* 33 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), rcx (* g *),
              r8  (* r *), r9 (* u *), rax (* v *), r10 (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), r15 (* G *),
              r12 (* R *), r9 (* U *), rax (* V *), rbx (* Q *), M (* M *) );

(* 34 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), r15 (* g *),
              r12 (* r *), r9 (* u *), rax (* v *), rbx (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), rcx (* G *),
              r8  (* R *), r9 (* U *), rax (* V *), r10 (* Q *), M (* M *) );

(* 35 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), rcx (* g *),
              r8  (* r *), r9 (* u *), rax (* v *), r10 (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), r15 (* G *),
              r12 (* R *), r9 (* U *), rax (* V *), rbx (* Q *), M (* M *) );

(* 36 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), r15 (* g *),
              r12 (* r *), r9 (* u *), rax (* v *), rbx (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), rcx (* G *),
              r8  (* R *), r9 (* U *), rax (* V *), r10 (* Q *), M (* M *) );

(* 37 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), rcx (* g *),
              r8  (* r *), r9 (* u *), rax (* v *), r10 (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), r15 (* G *),
              r12 (* R *), r9 (* U *), rax (* V *), rbx (* Q *), M (* M *) );

(* 38 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), r15 (* g *),
              r12 (* r *), r9 (* u *), rax (* v *), rbx (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), rcx (* G *),
              r8  (* R *), r9 (* U *), rax (* V *), r10 (* Q *), M (* M *) );

(* 39 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), rcx (* g *),
              r8  (* r *), r9 (* u *), rax (* v *), r10 (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), r15 (* G *),
              r12 (* R *), r9 (* U *), rax (* V *), rbx (* Q *), M (* M *) );

(* 40 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), r15 (* g *),
              r12 (* r *), r9 (* u *), rax (* v *), rbx (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), rcx (* G *),
              r8  (* R *), r9 (* U *), rax (* V *), r10 (* Q *), M (* M *) );

(* 41 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), rcx (* g *),
              r8  (* r *), r9 (* u *), rax (* v *), r10 (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), r15 (* G *),
              r12 (* R *), r9 (* U *), rax (* V *), rbx (* Q *), M (* M *) );

(* 42 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), r15 (* g *),
              r12 (* r *), r9 (* u *), rax (* v *), rbx (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), rcx (* G *),
              r8  (* R *), r9 (* U *), rax (* V *), r10 (* Q *), M (* M *) );

(* 43 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), rcx (* g *),
              r8  (* r *), r9 (* u *), rax (* v *), r10 (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), r15 (* G *),
              r12 (* R *), r9 (* U *), rax (* V *), rbx (* Q *), M (* M *) );

(* 44 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), r15 (* g *),
              r12 (* r *), r9 (* u *), rax (* v *), rbx (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), rcx (* G *),
              r8  (* R *), r9 (* U *), rax (* V *), r10 (* Q *), M (* M *) );

(* 45 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), rcx (* g *),
              r8  (* r *), r9 (* u *), rax (* v *), r10 (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), r15 (* G *),
              r12 (* R *), r9 (* U *), rax (* V *), rbx (* Q *), M (* M *) );

(* 46 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), r15 (* g *),
              r12 (* r *), r9 (* u *), rax (* v *), rbx (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), rcx (* G *),
              r8  (* R *), r9 (* U *), rax (* V *), r10 (* Q *), M (* M *) );

(* 47 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), rcx (* g *),
              r8  (* r *), r9 (* u *), rax (* v *), r10 (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), r15 (* G *),
              r12 (* R *), r9 (* U *), rax (* V *), rbx (* Q *), M (* M *) );

(* 48 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), r15 (* g *),
              r12 (* r *), r9 (* u *), rax (* v *), rbx (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), rcx (* G *),
              r8  (* R *), r9 (* U *), rax (* V *), r10 (* Q *), M (* M *) );

(* 49 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), rcx (* g *),
              r8  (* r *), r9 (* u *), rax (* v *), r10 (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), r15 (* G *),
              r12 (* R *), r9 (* U *), rax (* V *), rbx (* Q *), M (* M *) );

(* 50 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), r15 (* g *),
              r12 (* r *), r9 (* u *), rax (* v *), rbx (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), rcx (* G *),
              r8  (* R *), r9 (* U *), rax (* V *), r10 (* Q *), M (* M *) );

(* 51 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), rcx (* g *),
              r8  (* r *), r9 (* u *), rax (* v *), r10 (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), r15 (* G *),
              r12 (* R *), r9 (* U *), rax (* V *), rbx (* Q *), M (* M *) );

(* 52 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), r15 (* g *),
              r12 (* r *), r9 (* u *), rax (* v *), rbx (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), rcx (* G *),
              r8  (* R *), r9 (* U *), rax (* V *), r10 (* Q *), M (* M *) );

(* 53 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), rcx (* g *),
              r8  (* r *), r9 (* u *), rax (* v *), r10 (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), r15 (* G *),
              r12 (* R *), r9 (* U *), rax (* V *), rbx (* Q *), M (* M *) );

(* 54 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), r15 (* g *),
              r12 (* r *), r9 (* u *), rax (* v *), rbx (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), rcx (* G *),
              r8  (* R *), r9 (* U *), rax (* V *), r10 (* Q *), M (* M *) );

(* 55 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), rcx (* g *),
              r8  (* r *), r9 (* u *), rax (* v *), r10 (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), r15 (* G *),
              r12 (* R *), r9 (* U *), rax (* V *), rbx (* Q *), M (* M *) );

(* 56 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), r15 (* g *),
              r12 (* r *), r9 (* u *), rax (* v *), rbx (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), rcx (* G *),
              r8  (* R *), r9 (* U *), rax (* V *), r10 (* Q *), M (* M *) );

(* 57 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), rcx (* g *),
              r8  (* r *), r9 (* u *), rax (* v *), r10 (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), r15 (* G *),
              r12 (* R *), r9 (* U *), rax (* V *), rbx (* Q *), M (* M *) );

(* 58 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), r15 (* g *),
              r12 (* r *), r9 (* u *), rax (* v *), rbx (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), rcx (* G *),
              r8  (* R *), r9 (* U *), rax (* V *), r10 (* Q *), M (* M *) );

(* 59 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), rcx (* g *),
              r8  (* r *), r9 (* u *), rax (* v *), r10 (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), r15 (* G *),
              r12 (* R *), r9 (* U *), rax (* V *), rbx (* Q *), M (* M *) );

(* 60 *)
inline loop ( f0_init, g0_init,
              rsi (* delta *), rdx (* f *), r15 (* g *),
              r12 (* r *), r9 (* u *), rax (* v *), rbx (* q *), M (* m *);
              rsi (* DELTA *), rdx (* F *), rcx (* G *),
              r8  (* R *), r9 (* U *), rax (* V *), r10 (* Q *), M (* M *) );


ghost r_out@sint64, u_out@sint64, v_out@sint64, q_out@sint64, G_out@sint64, DELTA_out@sint64:
     and[r_out = r8, u_out = r9, v_out = rax, q_out = r10, G_out = rcx, DELTA_out = rsi]
  && and[r_out = r8, u_out = r9, v_out = rax, q_out = r10, G_out = rcx, DELTA_out = rsi];

assert true && and[(-(2**(60)))@64 <=s u_out + v_out, u_out + v_out <=s ((2**(60)))@64];
assert true && and[(-(2**(60)))@64 <=s u_out - v_out, u_out - v_out <=s ((2**(60)))@64];
assert true && and[(-(2**(60)))@64 <=s q_out + r_out, q_out + r_out <=s ((2**(60)))@64];
assert true && and[(-(2**(60)))@64 <=s q_out - r_out, q_out - r_out <=s ((2**(60)))@64];
