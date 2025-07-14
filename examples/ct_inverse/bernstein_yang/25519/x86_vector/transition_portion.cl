proc main (sint64 f0, sint64 f, sint64 g0, sint64 g, sint64 u, sint64 v, sint64 r, sint64 s) =
{
  and[
      eqmod (g * v + f * u) 0 (2**(60)),
      eqmod (g * s + f * r) 0 (2**(60))
      ]
  &&
  and[
      (-(2**(60)))@64 <=s u, u <=s (2**(60))@64,
      (-(2**(60)))@64 <=s v, v <=s (2**(60))@64,
      (-(2**(60)))@64 <=s r, r <=s (2**(60))@64,
      (-(2**(60)))@64 <=s s, s <=s (2**(60))@64,

      (-(2**(63)))@64 <=s f, f <s (2**(63))@64,
      (-(2**(63)))@64 <=s g, g <s (2**(63))@64,
      (-(2**(63)))@64 <=s f0, f0 <s (2**(63))@64,
      (-(2**(63)))@64 <=s g0, g0 <s (2**(63))@64
      ]
}

mov r14 f0;
mov r15 g0;
mov rdi f;
mov r9 g;
mov r10 u;
mov r11 v;
mov r13 r;
mov r12 s;

(* ._bigloop: *)
(* mov  %r9,%rax *)
mov rax r9;
(* imul %r12 *)
smull rdx rax r12 rax;
assert rax + rdx * (2**(64)) = g * s && true;
(* mov  %rax,%rbx *)
mov rbx rax;
(* mov  %rdx,%rbp *)
mov rbp rdx;
(* mov  %rdi,%rax *)
mov rax rdi;
(* imul %r13 *)
smull rdx rax r13 rax;
(* add  %rax,%rbx *)
adds carry rbx rax rbx;
(* adc %rdx,%rbp *)
adcs carry rbp rdx rbp carry;
assert rbx + rbp * (2**(64)) = g * s + f * r && true;
(* shrd $60,%rbp,%rbx *)

mov low rbx;
mov high rbp;

join tmp rbp rbx;
cast tmp@uint128 tmp;
usplit tmp dontcare tmp 60;
cast rbx@uint64 tmp;

assert true && (uext rbx 60) * (2**(60))@124 = (uext low 60) + (sext high 60) * (2**(64))@124;
assume eqmod (rbx * (2**(60))) (low + high * (2**(64))) (2**(124)) && true;

(* mov  %rdi,%rax *)
mov rax rdi;
(* imul %r10 *)
smull rdx rax r10 rax;
(* mov  %rax,%rdi *)
mov rdi rax;
(* mov  %rdx,%rbp *)
mov rbp rdx;
(* mov  %r9,%rax *)
mov rax r9;
(* imul %r11 *)
smull rdx rax r11 rax;
(* add  %rax,%rdi *)
adds carry rdi rax rdi;
(* adc %rdx,%rbp *)
adcs carry rbp rdx rbp carry;
(* shrd $60,%rbp,%rdi *)

mov low rdi;
mov high rbp;

join tmp rbp rdi;
cast tmp@uint128 tmp;
usplit tmp dontcare tmp 60;
cast rdi@uint64 tmp;

assert true && (uext rdi 60) * (2**(60))@124 = (uext low 60) + (sext high 60) * (2**(64))@124;
assume eqmod (rdi * (2**(60))) (low + high * (2**(64))) (2**(124)) && true;

(* imul  %r15,%r11 *)
smull dontcare r11 r15 r11;
(* imul  %r12,%r15 *)
smull dontcare r15 r12 r15;
(* imul  %r14,%r13 *)
smull dontcare r13 r14 r13;
(* imul  %r10,%r14 *)
smull dontcare r14 r10 r14;
(* add  %r11,%r14 *)
adds carry r14 r11 r14;
(* add  %r13,%r15 *)
adds carry r15 r13 r15;
(* add  %r14,%rdi *)
adds carry rdi r14 rdi;
(* lea  (%rbx,%r15),%rdx *)
adds dontcare rdx rbx r15;

mov F rdi;
mov G rdx;

{
  and[
      eqmod (F * (2**60))
            (u * f + v * g + (u * f0 + v * g0) * (2**60))
            (2**124),
      eqmod (G * (2**60))
            (r * f + s * g + (r * f0 + s * g0) * (2**60))
            (2**124)
      ]
  &&
  true
}

