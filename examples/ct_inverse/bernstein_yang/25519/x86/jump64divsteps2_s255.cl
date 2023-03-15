(* quine: -v -jobs 10 jump64divsteps2_s255.cl
Parsing Cryptoline file:                [OK]            0.015249 seconds
Checking well-formedness:               [OK]            0.005597 seconds
Transforming to SSA form:               [OK]            0.003783 seconds
Normalizing specification:              [OK]            0.003347 seconds
Rewriting assignments:                  [OK]            0.003288 seconds
Verifying program safety:               [OK]            3507.001460 seconds
Verifying range assertions:             [OK]            77.383713 seconds
Verifying range specification:          [OK]            1991.552543 seconds
Rewriting value-preserved casting:      [OK]            0.001665 seconds
Verifying algebraic assertions:         [OK]            8.240947 seconds
Verifying algebraic specification:      [OK]            0.246746 seconds
Verification result:                    [OK]            5584.460529 seconds
*)
proc loop (sint64 f0, sint64 g0, sint64 DELTA, sint64 F, sint64 G0, sint64 G, sint64 R0, sint64 R, sint64 U, sint64 V, sint64 Q0, sint64 Q, sint64 M) =
{true && true}

assert
  eqmod 2**(61) 0 M
  &&
  and[ const 64 (-(2**63)) <s DELTA, DELTA <s const 64 (2**63) - 1@64,
       eqmod F const 64 1 const 64 2,
       (-1)@64 * M <=s R0, R0 <=s M, 
       (-1)@64 * M <=s U , U  <=s M, 
       (-1)@64 * M <=s V , V  <=s M, 
       (-1)@64 * M <=s Q0, Q0 <=s M,
       1@64 <=s M, M <=s const 64 (2**61)
  ];

mov delta DELTA;
mov f F;
mov g G0;
mov r R0;
mov u U;
mov v V;
mov q Q0;

nondet pos@uint1;

assert true &&
  and[(pos - 0@1)*(pos - 1@1) = 0@1];
assume
  and[(pos - 0)*(pos - 1) = 0] && true;

cast LSB_g@sint1 g;
assert true && 
  and[eqmod g - (sext LSB_g 63) 0@64 2@64];
assume  
  and[eqmod g - LSB_g 0 2] && true;


mov M0 M;
smul M M 2@sint64;

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
          M = M0 * 2@64
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
          M = M0 * 2@64
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
          M = M0 * 2@64
         ]
  ];

assume and[
      eqmod
      U * f0 + V * g0
      0
      M,
      eqmod
      Q * f0 + R * g0
      0
      M,
      eqmod
      U * f0 + V * g0
      F * M
      2**(64),
      eqmod
      Q * f0 + R * g0
      G * M
      2**(64)] && true;

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

(* 01 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), rcx (* G0 *), r15 (* G *),
            r8  (* R0 *), r12 (* R *), r9  (* U *),
            rax (* V *), r10 (* Q0 *), rbx (* Q *),
            M   (* M *));

(* 02 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), r15 (* G0 *), rcx (* G *),
            r12 (* R0 *), r8  (* R *), r9  (* U *),
            rax (* V *), rbx (* Q0 *), r10 (* Q *),
            M   (* M *));

(* 03 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), rcx (* G0 *), r15 (* G *),
            r8  (* R0 *), r12 (* R *), r9  (* U *),
            rax (* V *), r10 (* Q0 *), rbx (* Q *),
            M   (* M *));

(* 04 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), r15 (* G0 *), rcx (* G *),
            r12 (* R0 *), r8  (* R *), r9  (* U *),
            rax (* V *), rbx (* Q0 *), r10 (* Q *),
            M   (* M *));

(* 05 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), rcx (* G0 *), r15 (* G *),
            r8  (* R0 *), r12 (* R *), r9  (* U *),
            rax (* V *), r10 (* Q0 *), rbx (* Q *),
            M   (* M *));

(* 06 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), r15 (* G0 *), rcx (* G *),
            r12 (* R0 *), r8  (* R *), r9  (* U *),
            rax (* V *), rbx (* Q0 *), r10 (* Q *),
            M   (* M *));

(* 07 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), rcx (* G0 *), r15 (* G *),
            r8  (* R0 *), r12 (* R *), r9  (* U *),
            rax (* V *), r10 (* Q0 *), rbx (* Q *),
            M   (* M *));

(* 08 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), r15 (* G0 *), rcx (* G *),
            r12 (* R0 *), r8  (* R *), r9  (* U *),
            rax (* V *), rbx (* Q0 *), r10 (* Q *),
            M   (* M *));

(* 09 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), rcx (* G0 *), r15 (* G *),
            r8  (* R0 *), r12 (* R *), r9  (* U *),
            rax (* V *), r10 (* Q0 *), rbx (* Q *),
            M   (* M *));

(* 10 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), r15 (* G0 *), rcx (* G *),
            r12 (* R0 *), r8  (* R *), r9  (* U *),
            rax (* V *), rbx (* Q0 *), r10 (* Q *),
            M   (* M *));

(* 11 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), rcx (* G0 *), r15 (* G *),
            r8  (* R0 *), r12 (* R *), r9  (* U *),
            rax (* V *), r10 (* Q0 *), rbx (* Q *),
            M   (* M *));

(* 12 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), r15 (* G0 *), rcx (* G *),
            r12 (* R0 *), r8  (* R *), r9  (* U *),
            rax (* V *), rbx (* Q0 *), r10 (* Q *),
            M   (* M *));

(* 13 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), rcx (* G0 *), r15 (* G *),
            r8  (* R0 *), r12 (* R *), r9  (* U *),
            rax (* V *), r10 (* Q0 *), rbx (* Q *),
            M   (* M *));

(* 14 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), r15 (* G0 *), rcx (* G *),
            r12 (* R0 *), r8  (* R *), r9  (* U *),
            rax (* V *), rbx (* Q0 *), r10 (* Q *),
            M   (* M *));

(* 15 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), rcx (* G0 *), r15 (* G *),
            r8  (* R0 *), r12 (* R *), r9  (* U *),
            rax (* V *), r10 (* Q0 *), rbx (* Q *),
            M   (* M *));

(* 16 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), r15 (* G0 *), rcx (* G *),
            r12 (* R0 *), r8  (* R *), r9  (* U *),
            rax (* V *), rbx (* Q0 *), r10 (* Q *),
            M   (* M *));

(* 17 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), rcx (* G0 *), r15 (* G *),
            r8  (* R0 *), r12 (* R *), r9  (* U *),
            rax (* V *), r10 (* Q0 *), rbx (* Q *),
            M   (* M *));

(* 18 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), r15 (* G0 *), rcx (* G *),
            r12 (* R0 *), r8  (* R *), r9  (* U *),
            rax (* V *), rbx (* Q0 *), r10 (* Q *),
            M   (* M *));

(* 19 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), rcx (* G0 *), r15 (* G *),
            r8  (* R0 *), r12 (* R *), r9  (* U *),
            rax (* V *), r10 (* Q0 *), rbx (* Q *),
            M   (* M *));

(* 20 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), r15 (* G0 *), rcx (* G *),
            r12 (* R0 *), r8  (* R *), r9  (* U *),
            rax (* V *), rbx (* Q0 *), r10 (* Q *),
            M   (* M *));

(* 21 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), rcx (* G0 *), r15 (* G *),
            r8  (* R0 *), r12 (* R *), r9  (* U *),
            rax (* V *), r10 (* Q0 *), rbx (* Q *),
            M   (* M *));

(* 22 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), r15 (* G0 *), rcx (* G *),
            r12 (* R0 *), r8  (* R *), r9  (* U *),
            rax (* V *), rbx (* Q0 *), r10 (* Q *),
            M   (* M *));

(* 23 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), rcx (* G0 *), r15 (* G *),
            r8  (* R0 *), r12 (* R *), r9  (* U *),
            rax (* V *), r10 (* Q0 *), rbx (* Q *),
            M   (* M *));

(* 24 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), r15 (* G0 *), rcx (* G *),
            r12 (* R0 *), r8  (* R *), r9  (* U *),
            rax (* V *), rbx (* Q0 *), r10 (* Q *),
            M   (* M *));

(* 25 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), rcx (* G0 *), r15 (* G *),
            r8  (* R0 *), r12 (* R *), r9  (* U *),
            rax (* V *), r10 (* Q0 *), rbx (* Q *),
            M   (* M *));

(* 26 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), r15 (* G0 *), rcx (* G *),
            r12 (* R0 *), r8  (* R *), r9  (* U *),
            rax (* V *), rbx (* Q0 *), r10 (* Q *),
            M   (* M *));

(* 27 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), rcx (* G0 *), r15 (* G *),
            r8  (* R0 *), r12 (* R *), r9  (* U *),
            rax (* V *), r10 (* Q0 *), rbx (* Q *),
            M   (* M *));

(* 28 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), r15 (* G0 *), rcx (* G *),
            r12 (* R0 *), r8  (* R *), r9  (* U *),
            rax (* V *), rbx (* Q0 *), r10 (* Q *),
            M   (* M *));

(* 29 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), rcx (* G0 *), r15 (* G *),
            r8  (* R0 *), r12 (* R *), r9  (* U *),
            rax (* V *), r10 (* Q0 *), rbx (* Q *),
            M   (* M *));

(* 30 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), r15 (* G0 *), rcx (* G *),
            r12 (* R0 *), r8  (* R *), r9  (* U *),
            rax (* V *), rbx (* Q0 *), r10 (* Q *),
            M   (* M *));

(* 31 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), rcx (* G0 *), r15 (* G *),
            r8  (* R0 *), r12 (* R *), r9  (* U *),
            rax (* V *), r10 (* Q0 *), rbx (* Q *),
            M   (* M *));

(* 32 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), r15 (* G0 *), rcx (* G *),
            r12 (* R0 *), r8  (* R *), r9  (* U *),
            rax (* V *), rbx (* Q0 *), r10 (* Q *),
            M   (* M *));

(* 33 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), rcx (* G0 *), r15 (* G *),
            r8  (* R0 *), r12 (* R *), r9  (* U *),
            rax (* V *), r10 (* Q0 *), rbx (* Q *),
            M   (* M *));

(* 34 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), r15 (* G0 *), rcx (* G *),
            r12 (* R0 *), r8  (* R *), r9  (* U *),
            rax (* V *), rbx (* Q0 *), r10 (* Q *),
            M   (* M *));

(* 35 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), rcx (* G0 *), r15 (* G *),
            r8  (* R0 *), r12 (* R *), r9  (* U *),
            rax (* V *), r10 (* Q0 *), rbx (* Q *),
            M   (* M *));

(* 36 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), r15 (* G0 *), rcx (* G *),
            r12 (* R0 *), r8  (* R *), r9  (* U *),
            rax (* V *), rbx (* Q0 *), r10 (* Q *),
            M   (* M *));

(* 37 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), rcx (* G0 *), r15 (* G *),
            r8  (* R0 *), r12 (* R *), r9  (* U *),
            rax (* V *), r10 (* Q0 *), rbx (* Q *),
            M   (* M *));

(* 38 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), r15 (* G0 *), rcx (* G *),
            r12 (* R0 *), r8  (* R *), r9  (* U *),
            rax (* V *), rbx (* Q0 *), r10 (* Q *),
            M   (* M *));

(* 39 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), rcx (* G0 *), r15 (* G *),
            r8  (* R0 *), r12 (* R *), r9  (* U *),
            rax (* V *), r10 (* Q0 *), rbx (* Q *),
            M   (* M *));

(* 40 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), r15 (* G0 *), rcx (* G *),
            r12 (* R0 *), r8  (* R *), r9  (* U *),
            rax (* V *), rbx (* Q0 *), r10 (* Q *),
            M   (* M *));

(* 41 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), rcx (* G0 *), r15 (* G *),
            r8  (* R0 *), r12 (* R *), r9  (* U *),
            rax (* V *), r10 (* Q0 *), rbx (* Q *),
            M   (* M *));

(* 42 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), r15 (* G0 *), rcx (* G *),
            r12 (* R0 *), r8  (* R *), r9  (* U *),
            rax (* V *), rbx (* Q0 *), r10 (* Q *),
            M   (* M *));

(* 43 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), rcx (* G0 *), r15 (* G *),
            r8  (* R0 *), r12 (* R *), r9  (* U *),
            rax (* V *), r10 (* Q0 *), rbx (* Q *),
            M   (* M *));

(* 44 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), r15 (* G0 *), rcx (* G *),
            r12 (* R0 *), r8  (* R *), r9  (* U *),
            rax (* V *), rbx (* Q0 *), r10 (* Q *),
            M   (* M *));

(* 45 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), rcx (* G0 *), r15 (* G *),
            r8  (* R0 *), r12 (* R *), r9  (* U *),
            rax (* V *), r10 (* Q0 *), rbx (* Q *),
            M   (* M *));

(* 46 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), r15 (* G0 *), rcx (* G *),
            r12 (* R0 *), r8  (* R *), r9  (* U *),
            rax (* V *), rbx (* Q0 *), r10 (* Q *),
            M   (* M *));

(* 47 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), rcx (* G0 *), r15 (* G *),
            r8  (* R0 *), r12 (* R *), r9  (* U *),
            rax (* V *), r10 (* Q0 *), rbx (* Q *),
            M   (* M *));

(* 48 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), r15 (* G0 *), rcx (* G *),
            r12 (* R0 *), r8  (* R *), r9  (* U *),
            rax (* V *), rbx (* Q0 *), r10 (* Q *),
            M   (* M *));

(* 49 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), rcx (* G0 *), r15 (* G *),
            r8  (* R0 *), r12 (* R *), r9  (* U *),
            rax (* V *), r10 (* Q0 *), rbx (* Q *),
            M   (* M *));

(* 50 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), r15 (* G0 *), rcx (* G *),
            r12 (* R0 *), r8  (* R *), r9  (* U *),
            rax (* V *), rbx (* Q0 *), r10 (* Q *),
            M   (* M *));

(* 51 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), rcx (* G0 *), r15 (* G *),
            r8  (* R0 *), r12 (* R *), r9  (* U *),
            rax (* V *), r10 (* Q0 *), rbx (* Q *),
            M   (* M *));

(* 52 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), r15 (* G0 *), rcx (* G *),
            r12 (* R0 *), r8  (* R *), r9  (* U *),
            rax (* V *), rbx (* Q0 *), r10 (* Q *),
            M   (* M *));

(* 53 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), rcx (* G0 *), r15 (* G *),
            r8  (* R0 *), r12 (* R *), r9  (* U *),
            rax (* V *), r10 (* Q0 *), rbx (* Q *),
            M   (* M *));

(* 54 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), r15 (* G0 *), rcx (* G *),
            r12 (* R0 *), r8  (* R *), r9  (* U *),
            rax (* V *), rbx (* Q0 *), r10 (* Q *),
            M   (* M *));

(* 55 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), rcx (* G0 *), r15 (* G *),
            r8  (* R0 *), r12 (* R *), r9  (* U *),
            rax (* V *), r10 (* Q0 *), rbx (* Q *),
            M   (* M *));

(* 56 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), r15 (* G0 *), rcx (* G *),
            r12 (* R0 *), r8  (* R *), r9  (* U *),
            rax (* V *), rbx (* Q0 *), r10 (* Q *),
            M   (* M *));

(* 57 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), rcx (* G0 *), r15 (* G *),
            r8  (* R0 *), r12 (* R *), r9  (* U *),
            rax (* V *), r10 (* Q0 *), rbx (* Q *),
            M   (* M *));

(* 58 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), r15 (* G0 *), rcx (* G *),
            r12 (* R0 *), r8  (* R *), r9  (* U *),
            rax (* V *), rbx (* Q0 *), r10 (* Q *),
            M   (* M *));

(* 59 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), rcx (* G0 *), r15 (* G *),
            r8  (* R0 *), r12 (* R *), r9  (* U *),
            rax (* V *), r10 (* Q0 *), rbx (* Q *),
            M   (* M *));

(* 60 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), r15 (* G0 *), rcx (* G *),
            r12 (* R0 *), r8  (* R *), r9  (* U *),
            rax (* V *), rbx (* Q0 *), r10 (* Q *),
            M   (* M *));

(* 61 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), rcx (* G0 *), r15 (* G *),
            r8  (* R0 *), r12 (* R *), r9  (* U *),
            rax (* V *), r10 (* Q0 *), rbx (* Q *),
            M   (* M *));

(* 62 *)
call loop ( f0_init, g0_init, rsi (* DELTA *),
            rdx (* F *), r15 (* G0 *), rcx (* G *),
            r12 (* R0 *), r8  (* R *), r9  (* U *),
            rax (* V *), rbx (* Q0 *), r10 (* Q *),
            M   (* M *));

ghost r_out@sint64, u_out@sint64, v_out@sint64, q_out@sint64, G_out@sint64, DELTA_out@sint64:
     and[r_out = r8, u_out = r9, v_out = rax, q_out = r10, G_out = rcx, DELTA_out = rsi]
  && and[r_out = r8, u_out = r9, v_out = rax, q_out = r10, G_out = rcx, DELTA_out = rsi];


rcut and[or[const 64 (-(60)) - delta0 <=s DELTA_out,
            const 64 (-(60)) + delta0 <=s DELTA_out],
         DELTA_out <=s const 64 62 + delta0,
         M = const 64 (2**(62)),

         (* copy precondition *)
         const 64 (-(2**(60))) <=s delta0, delta0 <=s const 64 (2**(60)),
         count = 62@64,
         eqmod f0 const 64 1 const 64 2,

         f0_init = f0, g0_init = g0,
         L0x7fffffffde10 = f0,
         L0x7fffffffde18 = f1,
         L0x7fffffffde20 = f2,
         L0x7fffffffde28 = f3,
         L0x7fffffffde30 = g0,
         L0x7fffffffde38 = g1,
         L0x7fffffffde40 = g2,
         L0x7fffffffde48 = g3,
         L0x7fffffffdd58 = count,

         (-1)@64 * M <s r_out , r_out <=s M,
         (-1)@64 * M <s u_out , u_out <=s M,
         (-1)@64 * M <s v_out , v_out <=s M,
         (-1)@64 * M <s q_out , q_out <=s M,

(* Failed to prove this
         ((sext u_out 256) * (sext (slimbs 64 [f0, f1, f2, f3]) 64)
        + (sext v_out 256) * (sext (slimbs 64 [g0, g1, g2, g3]) 64))
         <s const 320 (2**(317)),
         ((sext u_out 256) * (sext (slimbs 64 [f0, f1, f2, f3]) 64)
        + (sext v_out 256) * (sext (slimbs 64 [g0, g1, g2, g3]) 64))
         >=s (-1)@320 * const 320 (2**(317)),

         ((sext q_out 256) * (sext (slimbs 64 [f0, f1, f2, f3]) 64)
        + (sext r_out 256) * (sext (slimbs 64 [g0, g1, g2, g3]) 64))
         <s const 320 (2**(317)),
         ((sext q_out 256) * (sext (slimbs 64 [f0, f1, f2, f3]) 64)
        + (sext r_out 256) * (sext (slimbs 64 [g0, g1, g2, g3]) 64))
         >=s (-1)@320 * const 320 (2**(317)),
*)

(* Prove this instead *)
         (sext u_out 256) + (sext v_out 256) <=s const 320 (2**(62)),
         (sext u_out 256) - (sext v_out 256) <=s const 320 (2**(62)),
         (sext v_out 256) - (sext u_out 256) <=s const 320 (2**(62)),
         (sext u_out 256) + (sext v_out 256) >s (-1)@320 * const 320 (2**(62)),
         (sext q_out 256) + (sext r_out 256) <=s const 320 (2**(62)),
         (sext q_out 256) - (sext r_out 256) <=s const 320 (2**(62)),
         (sext r_out 256) - (sext q_out 256) <=s const 320 (2**(62)),
         (sext q_out 256) + (sext r_out 256) >s (-1)@320 * const 320 (2**(62)),
         (sext (slimbs 64 [f0, f1, f2, f3]) 64) <s const 320 (2**(255)),
         (sext (slimbs 64 [f0, f1, f2, f3]) 64) >=s (-1)@320 * const 320 (2**(255)),
         (sext (slimbs 64 [g0, g1, g2, g3]) 64) <s const 320 (2**(255)),
         (sext (slimbs 64 [g0, g1, g2, g3]) 64) >=s (-1)@320 * const 320 (2**(255)),

         r_out = r8, u_out = r9, v_out = rax, q_out = r10, G_out = rcx, DELTA_out = rsi];

(* We can prove that the above properties imply this with coq *)

assume true && and[
         ((sext u_out 256) * (sext (slimbs 64 [f0, f1, f2, f3]) 64)
        + (sext v_out 256) * (sext (slimbs 64 [g0, g1, g2, g3]) 64))
         <s const 320 (2**(317)),
         ((sext u_out 256) * (sext (slimbs 64 [f0, f1, f2, f3]) 64)
        + (sext v_out 256) * (sext (slimbs 64 [g0, g1, g2, g3]) 64))
         >=s (-1)@320 * const 320 (2**(317)),

         ((sext q_out 256) * (sext (slimbs 64 [f0, f1, f2, f3]) 64)
        + (sext r_out 256) * (sext (slimbs 64 [g0, g1, g2, g3]) 64))
         <s const 320 (2**(317)),
         ((sext q_out 256) * (sext (slimbs 64 [f0, f1, f2, f3]) 64)
        + (sext r_out 256) * (sext (slimbs 64 [g0, g1, g2, g3]) 64))
         >=s (-1)@320 * const 320 (2**(317))];


ecut
  and[
      eqmod
      r9  * f0_init + rax * g0_init
      0
      M,
      eqmod
      r9  * f0_init + rax * g0_init
      rdx * M
      2**(64),
      eqmod
      r10 * f0_init + r8  * g0_init
      0
      M,
      eqmod
      r10 * f0_init + r8  * g0_init
      rcx * M
      2**(64),
      r_out = r8, u_out = r9, v_out = rax, q_out = r10
];

assume true &&
  and[
      eqmod
      r9  * f0_init + rax * g0_init
      0@64
      M,
      r9  * f0_init + rax * g0_init = rdx * M,
      eqmod
      r10 * f0_init + r8  * g0_init
      0@64
      M,
      r10 * f0_init + r8  * g0_init = rcx * M
];

(* loop_no_extra *)

(* mov    0x50(%rsp),%rdi                          #! EA = L0x7fffffffdd70; Value = 0x00007fffffffde50; PC = 0x401660 *)
mov rdi L0x7fffffffdd70;
(* mov    %rsi,(%rdi)                              #! EA = L0x7fffffffde50; PC = 0x401665 *)
mov L0x7fffffffde50 rsi;
(* mov    %rdx,0x8(%rdi)                           #! EA = L0x7fffffffde58; PC = 0x401668 *)
mov L0x7fffffffde58 rdx;
(* mov    %rcx,0x10(%rdi)                          #! EA = L0x7fffffffde60; PC = 0x40166c *)
mov L0x7fffffffde60 rcx;
(* mov    %r9,0x18(%rdi)                           #! EA = L0x7fffffffde68; PC = 0x401670 *)
mov L0x7fffffffde68 r9;
(* mov    %rax,0x20(%rdi)                          #! EA = L0x7fffffffde70; PC = 0x401674 *)
mov L0x7fffffffde70 rax;
(* mov    %r10,0x28(%rdi)                          #! EA = L0x7fffffffde78; PC = 0x401678 *)
mov L0x7fffffffde78 r10;
(* mov    %r8,0x30(%rdi)                           #! EA = L0x7fffffffde80; PC = 0x40167c *)
mov L0x7fffffffde80 r8;
(* mov    0x40(%rsp),%rdi                          #! EA = L0x7fffffffdd60; Value = 0x00007fffffffde10; PC = 0x401680 *)
mov rdi L0x7fffffffdd60;
(* mov    %r9,%rsi                                 #! PC = 0x401685 *)
mov rsi r9;
(* sar    $0x3f,%rsi                               #! PC = 0x401688 *)

and msb@uint64 rsi 0x8000000000000000@uint64;
subc flag dontcare msb 1@uint64;
cmov rsi flag 0xffffffffffffffff@uint64 0@uint64;

assert true && or[and[flag = 0@1, rsi = 0@64],
		          and[flag = 1@1, rsi = 0xffffffffffffffff@64]];
assume (flag) * (flag - 1) = 0 && true;
assume (rsi) * (flag - 1) = 0 && true;
assume (rsi - 0xffffffffffffffff) * (flag) = 0 && true;

(* mov    %r9,%rax                                 #! PC = 0x40168c *)
mov rax r9;
(* mulq   (%rdi)                                   #! EA = L0x7fffffffde10; PC = 0x40168f *)

mov raxo rax;

cast rax@uint64 rax;
usplit raxh raxl rax 63;
assert true && raxh * const 64 (2**63) + raxl = raxo;
assume raxl - raxh * (2**63) = raxo && true;

cast flagn@uint64 flag;
assert true && flagn = raxh;
assume flag = raxh && true;

umull rdx rax L0x7fffffffde10 rax;

assert true && limbs 64 [rax, rdx] = (uext L0x7fffffffde10 64) * ((uext raxh 64) * (const 128 (2**63)) + (uext raxl 64));
assume limbs 64 [rax, rdx] = L0x7fffffffde10 * (raxh * 2**63 + raxl) && true;

(* mov    %rax,%r8                                 #! PC = 0x401692 *)
mov r8 rax;
(* mov    %rdx,%r10                                #! PC = 0x401695 *)
mov r10 rdx;
(* mov    %r9,%rax                                 #! PC = 0x401698 *)
mov rax r9;
(* mulq   0x8(%rdi)                                #! EA = L0x7fffffffde18; PC = 0x40169b *)

mov raxo rax;

cast rax@uint64 rax;
usplit raxh raxl rax 63;
assert true && raxh * const 64 (2**63) + raxl = raxo;
assume raxl - raxh * (2**63) = raxo && true;

cast flagn@uint64 flag;
assert true && flagn = raxh;
assume flag = raxh && true;

umull rdx rax L0x7fffffffde18 rax;

assert true && limbs 64 [rax, rdx] = (uext L0x7fffffffde18 64) * ((uext raxh 64) * (const 128 (2**63)) + (uext raxl 64));
assume limbs 64 [rax, rdx] = L0x7fffffffde18 * (raxh * 2**63 + raxl) && true;

(* mov    %rax,%rcx                                #! PC = 0x40169f *)
mov rcx rax;
(* mov    %rdx,%r11                                #! PC = 0x4016a2 *)
mov r11 rdx;
(* mov    %r9,%rax                                 #! PC = 0x4016a5 *)
mov rax r9;
(* mulq   0x10(%rdi)                               #! EA = L0x7fffffffde20; PC = 0x4016a8 *)

mov raxo rax;

cast rax@uint64 rax;
usplit raxh raxl rax 63;
assert true && raxh * const 64 (2**63) + raxl = raxo;
assume raxl - raxh * (2**63) = raxo && true;

cast flagn@uint64 flag;
assert true && flagn = raxh;
assume flag = raxh && true;

umull rdx rax L0x7fffffffde20 rax;

assert true && limbs 64 [rax, rdx] = (uext L0x7fffffffde20 64) * ((uext raxh 64) * (const 128 (2**63)) + (uext raxl 64));
assume limbs 64 [rax, rdx] = L0x7fffffffde20 * (raxh * 2**63 + raxl) && true;

(* mov    %rax,%r12                                #! PC = 0x4016ac *)
mov r12 rax;
(* mov    %rdx,%r13                                #! PC = 0x4016af *)
mov r13 rdx;
(* mov    %r9,%rax                                 #! PC = 0x4016b2 *)
mov rax r9;
(* imulq  0x18(%rdi)                               #! EA = L0x7fffffffde28; PC = 0x4016b5 *)
smull rdx rax L0x7fffffffde28 rax;
(* mov    %rax,%r9                                 #! PC = 0x4016b9 *)
mov r9 rax;
(* mov    %rdx,%r14                                #! PC = 0x4016bc *)
mov r14 rdx;
(* add    %rcx,%r10                                #! PC = 0x4016bf *)
adds carry r10 rcx r10;
(* adc    %r11,%r12                                #! PC = 0x4016c2 *)
adcs carry r12 r11 r12 carry;
(* adc    %r9,%r13                                 #! PC = 0x4016c5 *)
adcs carry r13 r9 r13 carry;
(* adc    $0x0,%r14                                #! PC = 0x4016c8 *)
adcs carry r14 0@sint64 r14 carry;
(* mov    (%rdi),%rdx                              #! EA = L0x7fffffffde10; Value = 0xffffffffffffffed; PC = 0x4016cc *)
mov rdx L0x7fffffffde10;
(* mov    0x8(%rdi),%rcx                           #! EA = L0x7fffffffde18; Value = 0xffffffffffffffff; PC = 0x4016cf *)
mov rcx L0x7fffffffde18;
(* mov    0x10(%rdi),%rdi                          #! EA = L0x7fffffffde20; Value = 0xffffffffffffffff; PC = 0x4016d3 *)
mov rdi L0x7fffffffde20;
(* and    %rsi,%rdx                                #! PC = 0x4016d7 *)

mov rdxo rdx;

and rdx@uint64 rsi rdx;

assert true && or[and[flag = 0@1, rdx = 0@64],
                  and[flag = 1@1, rdx = rdxo]];
assume (flag) * (rdx - rdxo) = 0 && true;
assume (flag - 1) * (rdx) = 0 && true;

(* and    %rsi,%rcx                                #! PC = 0x4016da *)

mov rcxo rcx;

and rcx@uint64 rsi rcx;

assert true && or[and[flag = 0@1, rcx = 0@64],
                  and[flag = 1@1, rcx = rcxo]];
assume (flag) * (rcx - rcxo) = 0 && true;
assume (flag - 1) * (rcx) = 0 && true;

(* and    %rsi,%rdi                                #! PC = 0x4016dd *)

mov rdio rdi;

and rdi@uint64 rsi rdi;

assert true && or[and[flag = 0@1, rdi = 0@64],
                  and[flag = 1@1, rdi = rdio]];
assume (flag) * (rdi - rdio) = 0 && true;
assume (flag - 1) * (rdi) = 0 && true;

(* sub    %rdx,%r10                                #! PC = 0x4016e0 *)
subb carry r10 r10 rdx;
(* sbb    %rcx,%r12                                #! PC = 0x4016e3 *)
sbbs carry r12 r12 rcx carry;
(* sbb    %rdi,%r13                                #! PC = 0x4016e6 *)
sbbs carry r13 r13 rdi carry;
(* sbb    $0x0,%r14                                #! PC = 0x4016e9 *)
sbbs carry r14 r14 0x0@sint64 carry;

mov a0 r8;
mov a1 r10;
mov a2 r12;
mov a3 r13;
mov a4 r14;

assert 
  and[limbs 64 [a0, a1, a2, a3, a4] = u_out  * limbs 64 [f0, f1, f2, f3]] && true;

assume true &&
  and[slimbs 64 [a0, a1, a2, a3, a4] = (sext u_out 256) * (sext (slimbs 64 [f0, f1, f2, f3]) 64)];

(* mov    0x50(%rsp),%rdi                          #! EA = L0x7fffffffdd70; Value = 0x00007fffffffde50; PC = 0x4016ed *)
mov rdi L0x7fffffffdd70;
(* mov    0x20(%rdi),%rdi                          #! EA = L0x7fffffffde70; Value = 0xfffffffe675dcbf4; PC = 0x4016f2 *)
mov rdi L0x7fffffffde70;
(* mov    %rdi,%rsi                                #! PC = 0x4016f6 *)
mov rsi rdi;
(* sar    $0x3f,%rsi                               #! PC = 0x4016f9 *)

and msb@uint64 rsi 0x8000000000000000@uint64;
subc flag dontcare msb 1@uint64;
cmov rsi flag 0xffffffffffffffff@uint64 0@uint64;

assert true && or[and[flag = 0@1, rsi = 0@64],
		          and[flag = 1@1, rsi = 0xffffffffffffffff@64]];
assume (flag) * (flag - 1) = 0 && true;
assume (rsi) * (flag - 1) = 0 && true;
assume (rsi - 0xffffffffffffffff) * (flag) = 0 && true;

(* mov    0x48(%rsp),%rcx                          #! EA = L0x7fffffffdd68; Value = 0x00007fffffffde30; PC = 0x4016fd *)
mov rcx L0x7fffffffdd68;
(* mov    %rdi,%rax                                #! PC = 0x401702 *)
mov rax rdi;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffde30; PC = 0x401705 *)

mov raxo rax;

cast rax@uint64 rax;
usplit raxh raxl rax 63;
assert true && raxh * const 64 (2**63) + raxl = raxo;
assume raxl - raxh * (2**63) = raxo && true;

cast flagn@uint64 flag;
assert true && flagn = raxh;
assume flag = raxh && true;

umull rdx rax L0x7fffffffde30 rax;

assert true && limbs 64 [rax, rdx] = (uext L0x7fffffffde30 64) * ((uext raxh 64) * (const 128 (2**63)) + (uext raxl 64));
assume limbs 64 [rax, rdx] = L0x7fffffffde30 * (raxh * 2**63 + raxl) && true;

(* mov    %rax,%r9                                 #! PC = 0x401708 *)
mov r9 rax;
(* mov    %rdx,%r11                                #! PC = 0x40170b *)
mov r11 rdx;
(* mov    %rdi,%rax                                #! PC = 0x40170e *)
mov rax rdi;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffde40; PC = 0x401711 *)

mov raxo rax;

cast rax@uint64 rax;
usplit raxh raxl rax 63;
assert true && raxh * const 64 (2**63) + raxl = raxo;
assume raxl - raxh * (2**63) = raxo && true;

cast flagn@uint64 flag;
assert true && flagn = raxh;
assume flag = raxh && true;

umull rdx rax L0x7fffffffde40 rax;

assert true && limbs 64 [rax, rdx] = (uext L0x7fffffffde40 64) * ((uext raxh 64) * (const 128 (2**63)) + (uext raxl 64));
assume limbs 64 [rax, rdx] = L0x7fffffffde40 * (raxh * 2**63 + raxl) && true;

(* mov    %rax,%r15                                #! PC = 0x401715 *)
mov r15 rax;
(* mov    %rdx,%rbx                                #! PC = 0x401718 *)
mov rbx rdx;
(* mov    %rdi,%rax                                #! PC = 0x40171b *)
mov rax rdi;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffde38; PC = 0x40171e *)

mov raxo rax;

cast rax@uint64 rax;
usplit raxh raxl rax 63;
assert true && raxh * const 64 (2**63) + raxl = raxo;
assume raxl - raxh * (2**63) = raxo && true;

cast flagn@uint64 flag;
assert true && flagn = raxh;
assume flag = raxh && true;

umull rdx rax L0x7fffffffde38 rax;

assert true && limbs 64 [rax, rdx] = (uext L0x7fffffffde38 64) * ((uext raxh 64) * (const 128 (2**63)) + (uext raxl 64));
assume limbs 64 [rax, rdx] = L0x7fffffffde38 * (raxh * 2**63 + raxl) && true;

(* add    %rax,%r11                                #! PC = 0x401722 *)
adds carry r11 rax r11;
(* adc    %rdx,%r15                                #! PC = 0x401725 *)
adcs carry r15 rdx r15 carry;
(* adc    $0x0,%rbx                                #! PC = 0x401728 *)
adcs carry rbx 0@uint64 rbx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdi,%rax                                #! PC = 0x40172c *)
mov rax rdi;
(* imulq  0x18(%rcx)                               #! EA = L0x7fffffffde48; PC = 0x40172f *)
smull rdx rax L0x7fffffffde48 rax;
(* add    %rax,%rbx                                #! PC = 0x401733 *)
adds carry rbx rax rbx;
(* mov    %rdx,%rdi                                #! PC = 0x401736 *)
mov rdi rdx;
(* adc    $0x0,%rdi                                #! PC = 0x401739 *)
adcs carry rdi 0@sint64 rdi carry;
(* add    %r9,%r8                                  #! PC = 0x40173d *)
adds carry r8 r9 r8;
(* adc    %r11,%r10                                #! PC = 0x401740 *)
adcs carry r10 r11 r10 carry;
(* adc    %r15,%r12                                #! PC = 0x401743 *)
adcs carry r12 r15 r12 carry;
(* adc    %rbx,%r13                                #! PC = 0x401746 *)
adcs carry r13 rbx r13 carry;
(* adc    %rdi,%r14                                #! PC = 0x401749 *)
adcs carry r14 rdi r14 carry;
(* mov    (%rcx),%rdi                              #! EA = L0x7fffffffde30; Value = 0x327b23c66b8b4567; PC = 0x40174c *)
mov rdi L0x7fffffffde30;
(* mov    0x8(%rcx),%rdx                           #! EA = L0x7fffffffde38; Value = 0x66334873643c9869; PC = 0x40174f *)
mov rdx L0x7fffffffde38;
(* mov    0x10(%rcx),%rcx                          #! EA = L0x7fffffffde40; Value = 0x19495cff74b0dc51; PC = 0x401753 *)
mov rcx L0x7fffffffde40;
(* and    %rsi,%rdi                                #! PC = 0x401757 *)

mov rdio rdi;

and rdi@uint64 rsi rdi;

assert true && or[and[flag = 0@1, rdi = 0@64],
                  and[flag = 1@1, rdi = rdio]];
assume (flag) * (rdi - rdio) = 0 && true;
assume (flag - 1) * (rdi) = 0 && true;

(* and    %rsi,%rdx                                #! PC = 0x40175a *)

mov rdxo rdx;

and rdx@uint64 rsi rdx;

assert true && or[and[flag = 0@1, rdx = 0@64],
                  and[flag = 1@1, rdx = rdxo]];
assume (flag) * (rdx - rdxo) = 0 && true;
assume (flag - 1) * (rdx) = 0 && true;

(* and    %rsi,%rcx                                #! PC = 0x40175d *)

mov rcxo rcx;

and rcx@uint64 rsi rcx;

assert true && or[and[flag = 0@1, rcx = 0@64],
                  and[flag = 1@1, rcx = rcxo]];
assume (flag) * (rcx - rcxo) = 0 && true;
assume (flag - 1) * (rcx) = 0 && true;

(* sub    %rdi,%r10                                #! PC = 0x401760 *)
subb carry r10 r10 rdi;
(* sbb    %rdx,%r12                                #! PC = 0x401763 *)
sbbs carry r12 r12 rdx carry;
(* sbb    %rcx,%r13                                #! PC = 0x401766 *)
sbbs carry r13 r13 rcx carry;
(* sbb    $0x0,%r14                                #! PC = 0x401769 *)
sbbs carry r14 r14 0x0@sint64 carry;

mov a0 r8;
mov a1 r10;
mov a2 r12;
mov a3 r13;
mov a4 r14;

assert 
  and[limbs 64 [a0, a1, a2, a3, a4] = u_out  * limbs 64 [f0, f1, f2, f3] 
                                    + v_out  * limbs 64 [g0, g1, g2, g3]] && true;
assume true &&
  and[slimbs 64 [a0, a1, a2, a3, a4] = (sext u_out 256) * (sext (slimbs 64 [f0, f1, f2, f3]) 64)
                                     + (sext v_out 256) * (sext (slimbs 64 [g0, g1, g2, g3]) 64)];


(* mov    0x38(%rsp),%rcx                          #! EA = L0x7fffffffdd58; Value = 0x000000000000003e; PC = 0x40176d *)
mov rcx L0x7fffffffdd58;

(* define cl *)
cast cl@uint8 rcx;

(* shrd   %cl,%r10,%r8                             #! PC = 0x401772 *)
assert true && cl = 62@8;
join tmp r10 r8;
usplit tmp dontcare tmp 62;
cast r8@uint64 tmp;
(* shrd   %cl,%r12,%r10                            #! PC = 0x401776 *)
assert true && cl = 62@8;
join tmp r12 r10;
usplit tmp dontcare tmp 62;
cast r10@uint64 tmp;
(* shrd   %cl,%r13,%r12                            #! PC = 0x40177a *)
assert true && cl = 62@8;
join tmp r13 r12;
usplit tmp dontcare tmp 62;
cast r12@uint64 tmp;
(* shrd   %cl,%r14,%r13                            #! PC = 0x40177e *)
assert true && cl = 62@8;
join tmp r14 r13;
ssplit tmp dontcare tmp 62;
cast r13@sint64 tmp;
(* mov    %r8,0x58(%rsp)                           #! EA = L0x7fffffffdd78; PC = 0x401782 *)
mov L0x7fffffffdd78 r8;
(* mov    %r10,0x60(%rsp)                          #! EA = L0x7fffffffdd80; PC = 0x401787 *)
mov L0x7fffffffdd80 r10;
(* mov    %r12,0x68(%rsp)                          #! EA = L0x7fffffffdd88; PC = 0x40178c *)
mov L0x7fffffffdd88 r12;
(* mov    %r13,0x70(%rsp)                          #! EA = L0x7fffffffdd90; PC = 0x401791 *)
mov L0x7fffffffdd90 r13;

(*
mov a0s L0x7fffffffdd78;
mov a1s L0x7fffffffdd80;
mov a2s L0x7fffffffdd88;
mov a3s L0x7fffffffdd90;

assert true &&
  and[slimbs 64 [0@64, a0s, a1s, a2s, a3s] = (4@320 * slimbs 64 [a0, a1, a2, a3, a4]) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000@320 ];

assert true &&
  and[slimbs 64 [0@64, a0s, a1s, a2s, a3s] = (4@320 * slimbs 64 [a0, a1, a2, a3, a4])];
*)

rcut and[
         M = const 64 (2**(62)),
         (* copy precondition *)
         count = 62@64,
         eqmod f0 const 64 1 const 64 2,
         f0_init = f0, g0_init = g0,
         L0x7fffffffde10 = f0,
         L0x7fffffffde18 = f1,
         L0x7fffffffde20 = f2,
         L0x7fffffffde28 = f3,
         L0x7fffffffde30 = g0,
         L0x7fffffffde38 = g1,
         L0x7fffffffde40 = g2,
         L0x7fffffffde48 = g3,
         L0x7fffffffde50 = DELTA_out,
         L0x7fffffffdd58 = count,
         (-1)@64 * M <s u_out, u_out <=s M,
         (-1)@64 * M <s v_out, v_out <=s M,
         (-1)@64 * M <s q_out, q_out <=s M,
         (-1)@64 * M <s r_out, r_out <=s M,
         r_out = L0x7fffffffde80, q_out = L0x7fffffffde78,
         eqmod
         q_out * f0_init + r_out * g0_init
         0@64
         M,
         q_out * f0_init + r_out * g0_init = G_out * M,

         ((sext u_out 256) * (sext (slimbs 64 [f0, f1, f2, f3]) 64)
        + (sext v_out 256) * (sext (slimbs 64 [g0, g1, g2, g3]) 64))
         <s const 320 (2**(317)),
         ((sext u_out 256) * (sext (slimbs 64 [f0, f1, f2, f3]) 64)
        + (sext v_out 256) * (sext (slimbs 64 [g0, g1, g2, g3]) 64))
         >=s (-1)@320 * const 320 (2**(317)),

         ((sext q_out 256) * (sext (slimbs 64 [f0, f1, f2, f3]) 64)
        + (sext r_out 256) * (sext (slimbs 64 [g0, g1, g2, g3]) 64))
         <s const 320 (2**(317)),
         ((sext q_out 256) * (sext (slimbs 64 [f0, f1, f2, f3]) 64)
        + (sext r_out 256) * (sext (slimbs 64 [g0, g1, g2, g3]) 64))
         >=s (-1)@320 * const 320 (2**(317)),

         (sext slimbs 64 [L0x7fffffffdd78, L0x7fffffffdd80, L0x7fffffffdd88, L0x7fffffffdd90] 64) * const 320 (2**(62))
      = ((sext u_out 256) * (sext (slimbs 64 [f0, f1, f2, f3]) 64)
       + (sext v_out 256) * (sext (slimbs 64 [g0, g1, g2, g3]) 64))];

(* mov    0x40(%rsp),%rdi                          #! EA = L0x7fffffffdd60; Value = 0x00007fffffffde10; PC = 0x401796 *)
mov rdi L0x7fffffffdd60;
(* mov    0x50(%rsp),%rsi                          #! EA = L0x7fffffffdd70; Value = 0x00007fffffffde50; PC = 0x40179b *)
mov rsi L0x7fffffffdd70;
(* mov    0x28(%rsi),%rsi                          #! EA = L0x7fffffffde78; Value = 0xffffffff6fc5368b; PC = 0x4017a0 *)
mov rsi L0x7fffffffde78;
(* mov    %rsi,%rcx                                #! PC = 0x4017a4 *)
mov rcx rsi;
(* sar    $0x3f,%rcx                               #! PC = 0x4017a7 *)

and msb@uint64 rcx 0x8000000000000000@uint64;
subc flag dontcare msb 1@uint64;
cmov rcx flag 0xffffffffffffffff@uint64 0@uint64;

assert true && or[and[flag = 0@1, rcx = 0@64],
		          and[flag = 1@1, rcx = 0xffffffffffffffff@64]];
assume (flag) * (flag - 1) = 0 && true;
assume (rcx) * (flag - 1) = 0 && true;
assume (rcx - 0xffffffffffffffff) * (flag) = 0 && true;


(* mov    %rsi,%rax                                #! PC = 0x4017ab *)
mov rax rsi;
(* mulq   (%rdi)                                   #! EA = L0x7fffffffde10; PC = 0x4017ae *)

mov raxo rax;

cast rax@uint64 rax;
usplit raxh raxl rax 63;
assert true && raxh * const 64 (2**63) + raxl = raxo;
assume raxl - raxh * (2**63) = raxo && true;

cast flagn@uint64 flag;
assert true && flagn = raxh;
assume flag = raxh && true;

umull rdx rax L0x7fffffffde10 rax;

assert true && limbs 64 [rax, rdx] = (uext L0x7fffffffde10 64) * ((uext raxh 64) * (const 128 (2**63)) + (uext raxl 64));
assume limbs 64 [rax, rdx] = L0x7fffffffde10 * (raxh * 2**63 + raxl) && true;

(* mov    %rax,%r8                                 #! PC = 0x4017b1 *)
mov r8 rax;
(* mov    %rdx,%r9                                 #! PC = 0x4017b4 *)
mov r9 rdx;
(* mov    %rsi,%rax                                #! PC = 0x4017b7 *)
mov rax rsi;
(* mulq   0x8(%rdi)                                #! EA = L0x7fffffffde18; PC = 0x4017ba *)

mov raxo rax;

cast rax@uint64 rax;
usplit raxh raxl rax 63;
assert true && raxh * const 64 (2**63) + raxl = raxo;
assume raxl - raxh * (2**63) = raxo && true;

cast flagn@uint64 flag;
assert true && flagn = raxh;
assume flag = raxh && true;

umull rdx rax L0x7fffffffde18 rax;

assert true && limbs 64 [rax, rdx] = (uext L0x7fffffffde18 64) * ((uext raxh 64) * (const 128 (2**63)) + (uext raxl 64));
assume limbs 64 [rax, rdx] = L0x7fffffffde18 * (raxh * 2**63 + raxl) && true;

(* mov    %rax,%r10                                #! PC = 0x4017be *)
mov r10 rax;
(* mov    %rdx,%r11                                #! PC = 0x4017c1 *)
mov r11 rdx;
(* mov    %rsi,%rax                                #! PC = 0x4017c4 *)
mov rax rsi;
(* mulq   0x10(%rdi)                               #! EA = L0x7fffffffde20; PC = 0x4017c7 *)

mov raxo rax;

cast rax@uint64 rax;
usplit raxh raxl rax 63;
assert true && raxh * const 64 (2**63) + raxl = raxo;
assume raxl - raxh * (2**63) = raxo && true;

cast flagn@uint64 flag;
assert true && flagn = raxh;
assume flag = raxh && true;

umull rdx rax L0x7fffffffde20 rax;

assert true && limbs 64 [rax, rdx] = (uext L0x7fffffffde20 64) * ((uext raxh 64) * (const 128 (2**63)) + (uext raxl 64));
assume limbs 64 [rax, rdx] = L0x7fffffffde20 * (raxh * 2**63 + raxl) && true;

(* mov    %rax,%r12                                #! PC = 0x4017cb *)
mov r12 rax;
(* mov    %rdx,%r13                                #! PC = 0x4017ce *)
mov r13 rdx;
(* mov    %rsi,%rax                                #! PC = 0x4017d1 *)
mov rax rsi;
(* imulq  0x18(%rdi)                               #! EA = L0x7fffffffde28; PC = 0x4017d4 *)
smull rdx rax L0x7fffffffde28 rax;
(* mov    %rax,%rsi                                #! PC = 0x4017d8 *)
mov rsi rax;
(* mov    %rdx,%r14                                #! PC = 0x4017db *)
mov r14 rdx;
(* add    %r10,%r9                                 #! PC = 0x4017de *)
adds carry r9 r10 r9;
(* adc    %r11,%r12                                #! PC = 0x4017e1 *)
adcs carry r12 r11 r12 carry;
(* adc    %rsi,%r13                                #! PC = 0x4017e4 *)
adcs carry r13 rsi r13 carry;
(* adc    $0x0,%r14                                #! PC = 0x4017e7 *)
adcs carry r14 0@sint64 r14 carry;
(* mov    (%rdi),%rsi                              #! EA = L0x7fffffffde10; Value = 0xffffffffffffffed; PC = 0x4017eb *)
mov rsi L0x7fffffffde10;
(* mov    0x8(%rdi),%rdx                           #! EA = L0x7fffffffde18; Value = 0xffffffffffffffff; PC = 0x4017ee *)
mov rdx L0x7fffffffde18;
(* mov    0x10(%rdi),%rdi                          #! EA = L0x7fffffffde20; Value = 0xffffffffffffffff; PC = 0x4017f2 *)
mov rdi L0x7fffffffde20;
(* and    %rcx,%rsi                                #! PC = 0x4017f6 *)

mov rsio rsi;

and rsi@uint64 rcx rsi;

assert true && or[and[flag = 0@1, rsi = 0@64],
                  and[flag = 1@1, rsi = rsio]];
assume (flag) * (rsi - rsio) = 0 && true;
assume (flag - 1) * (rsi) = 0 && true;

(* and    %rcx,%rdx                                #! PC = 0x4017f9 *)

mov rdxo rdx;

and rdx@uint64 rcx rdx;

assert true && or[and[flag = 0@1, rdx = 0@64],
                  and[flag = 1@1, rdx = rdxo]];
assume (flag) * (rdx - rdxo) = 0 && true;
assume (flag - 1) * (rdx) = 0 && true;

(* and    %rcx,%rdi                                #! PC = 0x4017fc *)

mov rdio rdi;

and rdi@uint64 rcx rdi;

assert true && or[and[flag = 0@1, rdi = 0@64],
                  and[flag = 1@1, rdi = rdio]];
assume (flag) * (rdi - rdio) = 0 && true;
assume (flag - 1) * (rdi) = 0 && true;

(* sub    %rsi,%r9                                 #! PC = 0x4017ff *)
subb carry r9 r9 rsi;
(* sbb    %rdx,%r12                                #! PC = 0x401802 *)
sbbs carry r12 r12 rdx carry;
(* sbb    %rdi,%r13                                #! PC = 0x401805 *)
sbbs carry r13 r13 rdi carry;
(* sbb    $0x0,%r14                                #! PC = 0x401808 *)
sbbs carry r14 r14 0x0@sint64 carry;
(* mov    0x50(%rsp),%rdi                          #! EA = L0x7fffffffdd70; Value = 0x00007fffffffde50; PC = 0x40180c *)
mov rdi L0x7fffffffdd70;
(* mov    0x30(%rdi),%rdi                          #! EA = L0x7fffffffde80; Value = 0x00000000c3801587; PC = 0x401811 *)
mov rdi L0x7fffffffde80;
(* mov    %rdi,%rsi                                #! PC = 0x401815 *)
mov rsi rdi;
(* sar    $0x3f,%rsi                               #! PC = 0x401818 *)

and msb@uint64 rsi 0x8000000000000000@uint64;
subc flag dontcare msb 1@uint64;
cmov rsi flag 0xffffffffffffffff@uint64 0@uint64;

assert true && or[and[flag = 0@1, rsi = 0@64],
		          and[flag = 1@1, rsi = 0xffffffffffffffff@64]];
assume (flag) * (flag - 1) = 0 && true;
assume (rsi) * (flag - 1) = 0 && true;
assume (rsi - 0xffffffffffffffff) * (flag) = 0 && true;

(* mov    0x48(%rsp),%r10                          #! EA = L0x7fffffffdd68; Value = 0x00007fffffffde30; PC = 0x40181c *)
mov r10 L0x7fffffffdd68;
(* mov    %rdi,%rax                                #! PC = 0x401821 *)
mov rax rdi;
(* mulq   (%r10)                                   #! EA = L0x7fffffffde30; PC = 0x401824 *)

mov raxo rax;

cast rax@uint64 rax;
usplit raxh raxl rax 63;
assert true && raxh * const 64 (2**63) + raxl = raxo;
assume raxl - raxh * (2**63) = raxo && true;

cast flagn@uint64 flag;
assert true && flagn = raxh;
assume flag = raxh && true;

umull rdx rax L0x7fffffffde30 rax;

assert true && limbs 64 [rax, rdx] = (uext L0x7fffffffde30 64) * ((uext raxh 64) * (const 128 (2**63)) + (uext raxl 64));
assume limbs 64 [rax, rdx] = L0x7fffffffde30 * (raxh * 2**63 + raxl) && true;

(* mov    %rax,%rcx                                #! PC = 0x401827 *)
mov rcx rax;
(* mov    %rdx,%r11                                #! PC = 0x40182a *)
mov r11 rdx;
(* mov    %rdi,%rax                                #! PC = 0x40182d *)
mov rax rdi;
(* mulq   0x10(%r10)                               #! EA = L0x7fffffffde40; PC = 0x401830 *)

mov raxo rax;

cast rax@uint64 rax;
usplit raxh raxl rax 63;
assert true && raxh * const 64 (2**63) + raxl = raxo;
assume raxl - raxh * (2**63) = raxo && true;

cast flagn@uint64 flag;
assert true && flagn = raxh;
assume flag = raxh && true;

umull rdx rax L0x7fffffffde40 rax;

assert true && limbs 64 [rax, rdx] = (uext L0x7fffffffde40 64) * ((uext raxh 64) * (const 128 (2**63)) + (uext raxl 64));
assume limbs 64 [rax, rdx] = L0x7fffffffde40 * (raxh * 2**63 + raxl) && true;

(* mov    %rax,%r15                                #! PC = 0x401834 *)
mov r15 rax;
(* mov    %rdx,%rbx                                #! PC = 0x401837 *)
mov rbx rdx;
(* mov    %rdi,%rax                                #! PC = 0x40183a *)
mov rax rdi;
(* mulq   0x8(%r10)                                #! EA = L0x7fffffffde38; PC = 0x40183d *)

mov raxo rax;

cast rax@uint64 rax;
usplit raxh raxl rax 63;
assert true && raxh * const 64 (2**63) + raxl = raxo;
assume raxl - raxh * (2**63) = raxo && true;

cast flagn@uint64 flag;
assert true && flagn = raxh;
assume flag = raxh && true;

umull rdx rax L0x7fffffffde38 rax;

assert true && limbs 64 [rax, rdx] = (uext L0x7fffffffde38 64) * ((uext raxh 64) * (const 128 (2**63)) + (uext raxl 64));
assume limbs 64 [rax, rdx] = L0x7fffffffde38 * (raxh * 2**63 + raxl) && true;

(* add    %rax,%r11                                #! PC = 0x401841 *)
adds carry r11 rax r11;
(* adc    %rdx,%r15                                #! PC = 0x401844 *)
adcs carry r15 rdx r15 carry;
(* adc    $0x0,%rbx                                #! PC = 0x401847 *)
adcs carry rbx 0@uint64 rbx carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rdi,%rax                                #! PC = 0x40184b *)
mov rax rdi;
(* imulq  0x18(%r10)                               #! EA = L0x7fffffffde48; PC = 0x40184e *)
smull rdx rax L0x7fffffffde48 rax;
(* add    %rax,%rbx                                #! PC = 0x401852 *)
adds carry rbx rax rbx;
(* mov    %rdx,%rdi                                #! PC = 0x401855 *)
mov rdi rdx;
(* adc    $0x0,%rdi                                #! PC = 0x401858 *)
adcs carry rdi 0@sint64 rdi carry;
(* add    %rcx,%r8                                 #! PC = 0x40185c *)
adds carry r8 rcx r8;
(* adc    %r11,%r9                                 #! PC = 0x40185f *)
adcs carry r9 r11 r9 carry;
(* adc    %r15,%r12                                #! PC = 0x401862 *)
adcs carry r12 r15 r12 carry;
(* adc    %rbx,%r13                                #! PC = 0x401865 *)
adcs carry r13 rbx r13 carry;
(* adc    %rdi,%r14                                #! PC = 0x401868 *)
adcs carry r14 rdi r14 carry;
(* mov    (%r10),%rdi                              #! EA = L0x7fffffffde30; Value = 0x327b23c66b8b4567; PC = 0x40186b *)
mov rdi L0x7fffffffde30;
(* mov    0x8(%r10),%rdx                           #! EA = L0x7fffffffde38; Value = 0x66334873643c9869; PC = 0x40186e *)
mov rdx L0x7fffffffde38;
(* mov    0x10(%r10),%rcx                          #! EA = L0x7fffffffde40; Value = 0x19495cff74b0dc51; PC = 0x401872 *)
mov rcx L0x7fffffffde40;
(* and    %rsi,%rdi                                #! PC = 0x401876 *)

mov rdio rdi;

and rdi@uint64 rsi rdi;

assert true && or[and[flag = 0@1, rdi = 0@64],
                  and[flag = 1@1, rdi = rdio]];
assume (flag) * (rdi - rdio) = 0 && true;
assume (flag - 1) * (rdi) = 0 && true;

(* and    %rsi,%rdx                                #! PC = 0x401879 *)

mov rdxo rdx;

and rdx@uint64 rsi rdx;

assert true && or[and[flag = 0@1, rdx = 0@64],
                  and[flag = 1@1, rdx = rdxo]];
assume (flag) * (rdx - rdxo) = 0 && true;
assume (flag - 1) * (rdx) = 0 && true;

(* and    %rsi,%rcx                                #! PC = 0x40187c *)

mov rcxo rcx;

and rcx@uint64 rsi rcx;

assert true && or[and[flag = 0@1, rcx = 0@64],
                  and[flag = 1@1, rcx = rcxo]];
assume (flag) * (rcx - rcxo) = 0 && true;
assume (flag - 1) * (rcx) = 0 && true;

(* sub    %rdi,%r9                                 #! PC = 0x40187f *)
subb carry r9 r9 rdi;
(* sbb    %rdx,%r12                                #! PC = 0x401882 *)
sbbs carry r12 r12 rdx carry;
(* sbb    %rcx,%r13                                #! PC = 0x401885 *)
sbbs carry r13 r13 rcx carry;
(* sbb    $0x0,%r14                                #! PC = 0x401888 *)
sbbs carry r14 r14 0x0@sint64 carry;

mov b0 r8;
mov b1 r9;
mov b2 r12;
mov b3 r13;
mov b4 r14;

assert
  and[limbs 64 [b0, b1, b2, b3, b4] = q_out  * limbs 64 [f0, f1, f2, f3]
                                    + r_out  * limbs 64 [g0, g1, g2, g3]] && true;
assume true &&
  and[slimbs 64 [b0, b1, b2, b3, b4] = (sext q_out 256) * (sext (slimbs 64 [f0, f1, f2, f3]) 64)
                                     + (sext r_out 256) * (sext (slimbs 64 [g0, g1, g2, g3]) 64)];

(* mov    0x38(%rsp),%rcx                          #! EA = L0x7fffffffdd58; Value = 0x000000000000003e; PC = 0x40188c *)
mov rcx L0x7fffffffdd58;

(* define cl *)
cast cl@uint8 rcx;

(* shrd   %cl,%r9,%r8                              #! PC = 0x401891 *)
assert true && cl = 62@8;
join tmp r9 r8;
usplit tmp dontcare tmp 62;
cast r8@uint64 tmp;
(* shrd   %cl,%r12,%r9                             #! PC = 0x401895 *)
assert true && cl = 62@8;
join tmp r12 r9;
usplit tmp dontcare tmp 62;
cast r9@uint64 tmp;
(* shrd   %cl,%r13,%r12                            #! PC = 0x401899 *)
assert true && cl = 62@8;
join tmp r13 r12;
usplit tmp dontcare tmp 62;
cast r12@uint64 tmp;
(* shrd   %cl,%r14,%r13                            #! PC = 0x40189d *)
assert true && cl = 62@8;
join tmp r14 r13;
ssplit tmp dontcare tmp 62;
cast r13@uint64 tmp;
(* mov    %r8,(%r10)                               #! EA = L0x7fffffffde30; PC = 0x4018a1 *)
mov L0x7fffffffde30 r8;
(* mov    %r9,0x8(%r10)                            #! EA = L0x7fffffffde38; PC = 0x4018a4 *)
mov L0x7fffffffde38 r9;
(* mov    %r12,0x10(%r10)                          #! EA = L0x7fffffffde40; PC = 0x4018a8 *)
mov L0x7fffffffde40 r12;
(* mov    %r13,0x18(%r10)                          #! EA = L0x7fffffffde48; PC = 0x4018ac *)
mov L0x7fffffffde48 r13;

(*
mov b0s L0x7fffffffde30;
mov b1s L0x7fffffffde38;
mov b2s L0x7fffffffde40;
mov b3s L0x7fffffffde48;

assert true &&
  and[slimbs 64 [0@64, b0s, b1s, b2s, b3s] = (4@320 * slimbs 64 [b0, b1, b2, b3, b4]) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000@320 ];

assert true &&
  and[slimbs 64 [0@64, b0s, b1s, b2s, b3s] = (4@320 * slimbs 64 [b0, b1, b2, b3, b4])];
*)

(* mov    0x58(%rsp),%rdi                          #! EA = L0x7fffffffdd78; Value = 0x286ca3eb8cb5277f; PC = 0x4018b0 *)
mov rdi L0x7fffffffdd78;
(* mov    0x60(%rsp),%rsi                          #! EA = L0x7fffffffdd80; Value = 0xb8282515d242ee04; PC = 0x4018b5 *)
mov rsi L0x7fffffffdd80;
(* mov    0x68(%rsp),%rdx                          #! EA = L0x7fffffffdd88; Value = 0x906822cb3f244aff; PC = 0x4018ba *)
mov rdx L0x7fffffffdd88;
(* mov    0x70(%rsp),%rcx                          #! EA = L0x7fffffffdd90; Value = 0x000000008eb2ac65; PC = 0x4018bf *)
mov rcx L0x7fffffffdd90;
(* mov    0x40(%rsp),%r8                           #! EA = L0x7fffffffdd60; Value = 0x00007fffffffde10; PC = 0x4018c4 *)
mov r8 L0x7fffffffdd60;
(* mov    %rdi,(%r8)                               #! EA = L0x7fffffffde10; PC = 0x4018c9 *)
mov L0x7fffffffde10 rdi;
(* mov    %rsi,0x8(%r8)                            #! EA = L0x7fffffffde18; PC = 0x4018cc *)
mov L0x7fffffffde18 rsi;
(* mov    %rdx,0x10(%r8)                           #! EA = L0x7fffffffde20; PC = 0x4018d0 *)
mov L0x7fffffffde20 rdx;
(* mov    %rcx,0x18(%r8)                           #! EA = L0x7fffffffde28; PC = 0x4018d4 *)
mov L0x7fffffffde28 rcx;
(* mov    0x50(%rsp),%rdi                          #! EA = L0x7fffffffdd70; Value = 0x00007fffffffde50; PC = 0x4018d8 *)
mov rdi L0x7fffffffdd70;
(* mov    (%rdi),%rax                              #! EA = L0x7fffffffde50; Value = 0x0000000000000001; PC = 0x4018dd *)
mov rax L0x7fffffffde50;

mov f0_62 L0x7fffffffde10;
mov f1_62 L0x7fffffffde18;
mov f2_62 L0x7fffffffde20;
mov f3_62 L0x7fffffffde28;
mov g0_62 L0x7fffffffde30;
mov g1_62 L0x7fffffffde38;
mov g2_62 L0x7fffffffde40;
mov g3_62 L0x7fffffffde48;

mov DELTA_62 rax;

rcut
  and[
      (sext slimbs 64 [f0_62, f1_62, f2_62, f3_62] 64) * const 320 (2**(62))
   = ((sext u_out 256) * (sext (slimbs 64 [f0, f1, f2, f3]) 64)
    + (sext v_out 256) * (sext (slimbs 64 [g0, g1, g2, g3]) 64)),

      (sext slimbs 64 [g0_62, g1_62, g2_62, g3_62] 64) * const 320 (2**(62))
   = ((sext q_out 256) * (sext (slimbs 64 [f0, f1, f2, f3]) 64)
    + (sext r_out 256) * (sext (slimbs 64 [g0, g1, g2, g3]) 64)),
      (-1)@64 * const 64 (2**(62)) <s u_out, u_out <=s const 64 (2**(62)),
      (-1)@64 * const 64 (2**(62)) <s v_out, v_out <=s const 64 (2**(62)),
      (-1)@64 * const 64 (2**(62)) <s q_out, q_out <=s const 64 (2**(62)),
      (-1)@64 * const 64 (2**(62)) <s r_out, r_out <=s const 64 (2**(62)),
      or[const 64 (-(60)) - delta0 <=s DELTA_62,
         const 64 (-(60)) + delta0 <=s DELTA_62],
      DELTA_62 <=s const 64 62 + delta0
  ]prove with [all cuts, precondition];

{
  true
  &&
  and[
      (sext slimbs 64 [f0_62, f1_62, f2_62, f3_62] 64) * const 320 (2**(62))
   = ((sext u_out 256) * (sext (slimbs 64 [f0, f1, f2, f3]) 64)
    + (sext v_out 256) * (sext (slimbs 64 [g0, g1, g2, g3]) 64)),

      (sext slimbs 64 [g0_62, g1_62, g2_62, g3_62] 64) * const 320 (2**(62))
   = ((sext q_out 256) * (sext (slimbs 64 [f0, f1, f2, f3]) 64)
    + (sext r_out 256) * (sext (slimbs 64 [g0, g1, g2, g3]) 64)),
      
      (-1)@64 * const 64 (2**(62)) <s u_out, u_out <=s const 64 (2**(62)),
      (-1)@64 * const 64 (2**(62)) <s v_out, v_out <=s const 64 (2**(62)),
      (-1)@64 * const 64 (2**(62)) <s q_out, q_out <=s const 64 (2**(62)),
      (-1)@64 * const 64 (2**(62)) <s r_out, r_out <=s const 64 (2**(62)),

      or[const 64 (-(60)) - delta0 <=s DELTA_62,
         const 64 (-(60)) + delta0 <=s DELTA_62],
      DELTA_62 <=s const 64 62 + delta0
  ]
}
