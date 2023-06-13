(* replace 3 with 0..19; 4 with 3+1; 5 with 3+2 *)
  proc main (sint64 fuv, sint64 grs, sint64 m, sint20 f, sint20 g, sint21 u, sint4 v, sint21 r, sint4 s) =
{
  true
  &&
  and[
      (-1 * 2**(3))@21    <=s u, u <=s (2**(3) - 1)@21,
      (-1 * 2**(3))@(3+1) <=s v, v <=s (2**(3) - 1)@(3+1),
      (-1 * 2**(3))@21    <=s r, r <=s (2**(3) - 1)@21,
      (-1 * 2**(3))@(3+1) <=s s, s <=s (2**(3) - 1)@(3+1),
      
      (sext v (21-3)) + (sext s (21-3)) >s (-1)@22 * (2**(3+1))@22,
      
      eqmod f 1@20 2@20,
      fuv = (sext f 44) + (sext u 43) * (2**(41-3))@64 + (sext v (63-3)) * (2**(62-3))@64,
      grs = (sext g 44) + (sext r 43) * (2**(41-3))@64 + (sext s (63-3)) * (2**(62-3))@64
      ]
}

(* ._loop20_init: *)
(* andn  %rdi,%rcx,%r9 *)
(* andn  %rdx,%rcx,%rax *)
(* addq 752(%rsp),%r9 *)
(* addq 760(%rsp),%rax *)

mov rax grs;
mov r9 fuv;
mov rsi m;

(* mov  $-1,%r10 *)
mov r10 (-1)@sint64;
(* mov  %rax,%r11 *)
mov r11 rax;
(* lea  (%rax,%r9),%r12 *)
adds dontcare r12 rax r9;
(* test  $1,%rax *)
and Trax@sint64 0x1@sint64 rax;
subb ZF dontcare Trax 1@sint64;
(* cmovne %rsi,%r10 *)
cmov r10 ZF r10 rsi;
(* cmove %rax,%r12 *)
cmov r12 ZF rax r12;
(* lea  1(%rsi),%r13 *)
adds dontcare r13 rsi 1@sint64;
(* sub  %r9,%rax *)
subb carry rax rax r9;
(* sar  $1,%rax *)
ssplit rax dontcare rax 1;
(* sar  $1,%r12 *)
ssplit r12 dontcare r12 1;
(* neg  %rsi *)
subb dontcare rsi 0@sint64 rsi;
(* cmp  $0,%r10 *)
subb SFeOF dontcare r10 (-(2)**(63))@sint64;
(* cmovge %r11,%r9 *)
cmov r9 SFeOF r11 r9;
(* cmovl %r12,%rax *)
cmov rax SFeOF rax r12;
(* cmovl %r13,%rsi *)
cmov rsi SFeOF rsi r13;

(* extract *)

mov grs1 rax;
mov fuv1 r9;
mov m1 rsi;

cast f1@sint20 fuv1;

adds dontcare tmp fuv1 (2**(39-3))@sint64;
ssplit tmp dontcare tmp (40-3);
cast u1@sint21 tmp;

adds dontcare tmp fuv1 (2**(39-3))@sint64;
adds dontcare tmp tmp (2**(60-3))@sint64;
ssplit tmp dontcare tmp (61-3);
cast v1@sint5 tmp;

cast g1@sint20 grs1;

adds dontcare tmp grs1 (2**(39-3))@sint64;
ssplit tmp dontcare tmp (40-3);
cast r1@sint21 tmp;

adds dontcare tmp grs1 (2**(39-3))@sint64;
adds dontcare tmp tmp (2**(60-3))@sint64;
ssplit tmp dontcare tmp (61-3);
cast s1@sint5 tmp;


{
  true
  &&
  or[          and[m >=s 0@64, eqmod g const 20 1 const 20 2,
                   g1 * 2@20 = g - f,
                   f1 = g,

                   m1 = (0)@64 - m,

                   u1 = r * 2@21,
                   v1 = (sext s 1) * 2@(3+2),
                   r1 = r - u,
                   s1 = (sext s 1) - (sext v 1),

                   (-1 * (2**(3+1)))@21    <=s u1, u1 <=s (2**(3+1) - 1)@21,
                   (-1 * (2**(3+1)))@(3+2) <=s v1, v1 <=s (2**(3+1) - 1)@(3+2),
                   (-1 * (2**(3+1)))@21    <=s r1, r1 <=s (2**(3+1) - 1)@21,
                   (-1 * (2**(3+1)))@(3+2) <=s s1, s1 <=s (2**(3+1) - 1)@(3+2),

                   (sext v1 (20-3)) + (sext s1 (20-3)) >s (-1)@22 * (2**(3+2))@22,
      
                   eqmod f1 1@20 2@20,
                   fuv1 = (sext f1 44) + (sext u1 43) * (2**(40-3))@64 + (sext v1 (62-3)) * (2**(61-3))@64,
                   grs1 = (sext g1 44) + (sext r1 43) * (2**(40-3))@64 + (sext s1 (62-3)) * (2**(61-3))@64
                  ],
               and[m <s const 64 0, eqmod g const 20 1 const 20 2,
                   g1 * 2@20 = g + f,
                   f1 = f,

                   m1 = (1)@64 + m,

                   u1 = u * 2@21,
                   v1 = (sext v 1) * 2@(3+2),
                   r1 = r + u,
                   s1 = (sext s 1) + (sext v 1),

                   (-1 * (2**(3+1)))@21    <=s u1, u1 <=s (2**(3+1) - 1)@21,
                   (-1 * (2**(3+1)))@(3+2) <=s v1, v1 <=s (2**(3+1) - 1)@(3+2),
                   (-1 * (2**(3+1)))@21    <=s r1, r1 <=s (2**(3+1) - 1)@21,
                   (-1 * (2**(3+1)))@(3+2) <=s s1, s1 <=s (2**(3+1) - 1)@(3+2),

                   (sext v1 (20-3)) + (sext s1 (20-3)) >s (-1)@22 * (2**(3+2))@22,
      
                   eqmod f1 1@20 2@20,
                   fuv1 = (sext f1 44) + (sext u1 43) * (2**(40-3))@64 + (sext v1 (62-3)) * (2**(61-3))@64,
                   grs1 = (sext g1 44) + (sext r1 43) * (2**(40-3))@64 + (sext s1 (62-3)) * (2**(61-3))@64],
               and[eqmod g const 20 0 const 20 2,
                   g1 * 2@20 = g,
                   f1 = f,

                   m1 = (1)@64 + m,

                   u1 = u * 2@21,
                   v1 = (sext v 1) * 2@(3+2),
                   r1 = r,
                   s1 = (sext s 1),

                   (-1 * (2**(3+1)))@21    <=s u1, u1 <=s (2**(3+1) - 1)@21,
                   (-1 * (2**(3+1)))@(3+2) <=s v1, v1 <=s (2**(3+1) - 1)@(3+2),
                   (-1 * (2**(3+1)))@21    <=s r1, r1 <=s (2**(3+1) - 1)@21,
                   (-1 * (2**(3+1)))@(3+2) <=s s1, s1 <=s (2**(3+1) - 1)@(3+2),

                   (sext v1 (20-3)) + (sext s1 (20-3)) >s (-1)@22 * (2**(3+2))@22,
      
                   eqmod f1 1@20 2@20,
                   fuv1 = (sext f1 44) + (sext u1 43) * (2**(40-3))@64 + (sext v1 (62-3)) * (2**(61-3))@64,
                   grs1 = (sext g1 44) + (sext r1 43) * (2**(40-3))@64 + (sext s1 (62-3)) * (2**(61-3))@64]
      ]
}


