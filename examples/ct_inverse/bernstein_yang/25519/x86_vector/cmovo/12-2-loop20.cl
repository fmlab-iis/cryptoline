(* replace 12 with 0..19; 13 with 12+1; 14 with 12+2 *)
proc main (sint64 fuv, sint64 grs, sint64 m, sint20 f, sint20 g, sint21 u, sint13 v, sint21 r, sint13 s) =
{
  true
  &&
  and[
      (-1 * 2**(12))@21    <=s u, u <=s (2**(12) - 1)@21,
      (-1 * 2**(12))@(12+1) <=s v, v <=s (2**(12) - 1)@(12+1),
      (-1 * 2**(12))@21    <=s r, r <=s (2**(12) - 1)@21,
      (-1 * 2**(12))@(12+1) <=s s, s <=s (2**(12) - 1)@(12+1),
      
      (sext v (21-12)) + (sext s (21-12)) >s (-1)@22 * (2**(12+1))@22,
      
      eqmod f 1@20 2@20,
      fuv = (sext f 44) + (sext u 43) * (2**(41-12))@64 + (sext v (63-12)) * (2**(62-12))@64,
      grs = (sext g 44) + (sext r 43) * (2**(41-12))@64 + (sext s (63-12)) * (2**(62-12))@64
      ]
}

(* Boolector case 2 premise *)
assume true &&
  and[ 
       m >=s const 64 0, eqmod g const 20 1 const 20 2 
];


(* mov  %rdi,%r8 *)
(* mov  %rdx,%r9 *)
(* shl  $44,%r8 *)
(* shl  $44,%r9 *)
(* sar  $44,%r8 *)
(* sar  $44,%r9 *)
(* addq 744(%rsp),%r8 *)
(* addq 752(%rsp),%r9 *)

mov r9 grs;
mov r8 fuv;
mov rsi m;

(* xor  %rax,%rax *)
mov rax 0@sint64;
(* mov  %r9,%r10 *)
mov r10 r9;
(* lea  (%r9,%r8),%r11 *)
adds dontcare r11 r9 r8;
(* test  $1,%r9 *)
and Tr9@sint64 0x1@sint64 r9;
subb ZF dontcare Tr9 1@sint64;
(* cmovne %rsi,%rax *)
cmov rax ZF rax rsi;
(* cmove %r9,%r11 *)
cmov r11 ZF r9 r11;
(* lea  -1(%rsi),%r12 *)
adds dontcare r12 rsi (-1)@sint64;
(* sub  %r8,%r9 *)
subb carry r9 r9 r8;
(* sar  $1,%r9 *)
ssplit r9 dontcare r9 1;
(* sar  $1,%r11 *)
ssplit r11 dontcare r11 1;
(* not  %rsi *)
not rsi@sint64 rsi;
(* cmp  $0,%rax *)
subb SFeOF dontcare rax (-(2)**(63))@sint64;
(* cmovl %r10,%r8 *)
cmov r8 SFeOF r8 r10;
(* cmovge %r11,%r9 *)
cmov r9 SFeOF r11 r9;
(* cmovge %r12,%rsi *)
cmov rsi SFeOF r12 rsi;

(* extract *)

mov grs1 r9;
mov fuv1 r8;
mov m1 rsi;

cast f1@sint20 fuv1;

adds dontcare tmp fuv1 (2**(39-12))@sint64;
ssplit tmp dontcare tmp (40-12);
cast u1@sint21 tmp;

adds dontcare tmp fuv1 (2**(39-12))@sint64;
adds dontcare tmp tmp (2**(60-12))@sint64;
ssplit tmp dontcare tmp (61-12);
cast v1@sint14 tmp;

cast g1@sint20 grs1;

adds dontcare tmp grs1 (2**(39-12))@sint64;
ssplit tmp dontcare tmp (40-12);
cast r1@sint21 tmp;

adds dontcare tmp grs1 (2**(39-12))@sint64;
adds dontcare tmp tmp (2**(60-12))@sint64;
ssplit tmp dontcare tmp (61-12);
cast s1@sint14 tmp;

assert true && and[g1 * 2@20 = g + f,
                   f1 = f,

                   m1 = (-1)@64 + m,

                   u1 = u * 2@21,
                   v1 = (sext v 1) * 2@(12+2),
                   r1 = r + u,
                   s1 = (sext s 1) + (sext v 1),

                   (-1 * (2**(12+1)))@21    <=s u1, u1 <=s (2**(12+1) - 1)@21,
                   (-1 * (2**(12+1)))@(12+2) <=s v1, v1 <=s (2**(12+1) - 1)@(12+2),
                   (-1 * (2**(12+1)))@21    <=s r1, r1 <=s (2**(12+1) - 1)@21,
                   (-1 * (2**(12+1)))@(12+2) <=s s1, s1 <=s (2**(12+1) - 1)@(12+2),

                   (sext v1 (20-12)) + (sext s1 (20-12)) >s (-1)@22 * (2**(12+2))@22,
      
                   eqmod f1 1@20 2@20,
                   fuv1 = (sext f1 44) + (sext u1 43) * (2**(40-12))@64 + (sext v1 (62-12)) * (2**(61-12))@64,
                   grs1 = (sext g1 44) + (sext r1 43) * (2**(40-12))@64 + (sext s1 (62-12)) * (2**(61-12))@64
                   
                   ];

{
  true
  &&
  true
}

