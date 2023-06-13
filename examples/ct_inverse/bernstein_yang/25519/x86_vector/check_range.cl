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

assert true && and[ r9  = 1@64,
                    rax = 0@64,
                    r10 = 0@64,
                    r8  = 1@64
                   ];

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


ghost r_out@sint64, u_out@sint64, v_out@sint64, q_out@sint64, G_out@sint64, DELTA_out@sint64:
     and[r_out = r8, u_out = r9, v_out = rax, q_out = r10, G_out = rcx, DELTA_out = rsi]
  && and[r_out = r8, u_out = r9, v_out = rax, q_out = r10, G_out = rcx, DELTA_out = rsi];

assert true && and[(-(2**(60)))@64 <=s u_out + v_out, u_out + v_out <=s ((2**(60)))@64];
assert true && and[(-(2**(60)))@64 <=s u_out - v_out, u_out - v_out <=s ((2**(60)))@64];
assert true && and[(-(2**(60)))@64 <=s q_out + r_out, q_out + r_out <=s ((2**(60)))@64];
assert true && and[(-(2**(60)))@64 <=s q_out - r_out, q_out - r_out <=s ((2**(60)))@64];
