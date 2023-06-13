proc main (uint64 f0, uint64 g0, uint64 f, uint64 g, sint64 u, sint64 v) =
{
  and[
      eqmod
      (f + f0 * (2**60)) * u + (g + g0 * (2**60)) * v
      0
      (2**60)
      ]
  &&
  and[
      0@64 <=u f0, f0 <=u (2**(60)-1)@64,
      0@64 <=u g0, g0 <=u (2**(60)-1)@64,
      0@64 <=u f , f  <=u (2**(60)-1)@64,
      0@64 <=u g , g  <=u (2**(60)-1)@64,

      (-(2**(60)))@64 <=s u, u <=s (2**(59))@64,
      (-(2**(60)))@64 <=s v, v <=s (2**(59))@64
      ]
}

mov r14 f0;
mov r15 g0;
mov rdi f;
mov r9  g;
mov r10 u;
mov r11 v;


(* shl  $60,%r14 *)
and r14@uint64 r14 (2**(64-60)-1)@uint64;
shl r14 r14 60;
(* shl  $60,%r15 *)
and r15@uint64 r15 (2**(64-60)-1)@uint64;
shl r15 r15 60;
(* add  %r14,%rdi *)
adds carry rdi r14 rdi;
(* add  %r15,%r9 *)
adds carry r9 r15 r9;

assert true && rdi = f + f0 * (2**60)@64;
assume eqmod rdi f + f0 * (2**60) (2**64) && true;
assert true && r9 = g + g0 * (2**60)@64;
assume eqmod r9  g + g0 * (2**60) (2**64) && true;

(* imul  %r10,%rdi *)
cast tmp@uint64 r10;
umull dontcare rdi tmp rdi;
assert eqmod rdi (f + f0 * (2**60)) * u (2**64) && true;
(* imul  %r11,%r9 *)
cast tmp@uint64 r11;
umull dontcare r9 tmp r9;
(* lea  (%rdi,%r9),%rdi *)
adds dontcare rdi rdi r9;
assert eqmod rdi (f + f0 * (2**60)) * u + (g + g0 * (2**60)) * v (2**64)  && true;
assume true && rdi = (f + f0 * (2**60)@64) * u + (g + g0 * (2**60)@64) * v;
assert eqmod rdi 0 (2**60)  && true;
assume true && eqmod rdi 0@64 (2**60)@64;
(* sar  $60,%rdi *)
cast rdi@sint64 rdi;
ssplit rdi dontcare rdi 60;
assert true && dontcare = 0@64;
assume dontcare = 0 && true;
(* imul  %rdi,%r10 *)
smull dontcare r10 rdi r10;
(* imul  %rdi,%r11 *)
smull dontcare r11 rdi r11;

mov t0 rdi;

(* the final f *)
assume (t0-1)*(1-t0) = 0 && or[t0 = 1@64, t0 = (-1)@64];

mov U r10;
mov V r11;

{
  and[eqmod
      U
      t0 * u
      (2**64),
      eqmod
      V
      t0 * v
      (2**64),

      eqmod
      t0 * (2**60)
      (f + f0 * (2**60)) * u + (g + g0 * (2**60)) * v
      (2**64)

      ]
  &&
  and[
      (-(2**(60)))@64 <=s U, U <=s (2**(60))@64,
      (-(2**(60)))@64 <=s V, V <=s (2**(60))@64
      ]
}

