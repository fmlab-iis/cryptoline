proc main (sint64 f0, sint64 g0, sint64 fuv, sint64 grs, sint64 m, sint20 f, sint20 g, sint21 u, sint21 v, sint21 r, sint21 s) =
{
  true
  &&
  and[
      (-1 * 2**(20))@21    <=s u, u <=s (2**(20) - 1)@21,
      (-1 * 2**(20))@(20+1) <=s v, v <=s (2**(20) - 1)@(20+1),
      (-1 * 2**(20))@21    <=s r, r <=s (2**(20) - 1)@21,
      (-1 * 2**(20))@(20+1) <=s s, s <=s (2**(20) - 1)@(20+1),
      
      (sext v (21-20)) + (sext s (21-20)) >s (-1)@22 * (2**(20+1))@22,
      
      eqmod f 1@20 2@20,
      fuv = (sext f 44) + (sext u 43) * (2**(41-20))@64 + (sext v (63-20)) * (2**(62-20))@64,
      grs = (sext g 44) + (sext r 43) * (2**(41-20))@64 + (sext s (63-20)) * (2**(62-20))@64,

      (-(2**(63)))@64 <=s f0, f0 <=s (2**(63)-1)@64,
      (-(2**(63)))@64 <=s g0, g0 <=s (2**(63)-1)@64
      ]
}

assume true && and[
                   eqmod ((sext u 43) * f0 + g0 * (sext v 43)) 0@64 (2**(20))@64,
                   eqmod ((sext r 43) * f0 + g0 * (sext s 43)) 0@64 (2**(20))@64
                         ];

mov r9 grs;
mov r8 fuv;

mov rdx g0;
mov rdi f0;

(* movq 760(%rsp),%rax *)
mov rax ((2**(20)) + (2**(41)))@sint64;
(* lea  (%r9,%rax),%r10 *)
adds dontcare r10 r9 rax;
(* sar  $42,%r10 *)
ssplit r10 dontcare r10 42;

mov s_ r10;

(* mov  %rdx,%r11 *)
mov r11 rdx;
(* imul  %r10,%rdx *)
smull dontcare rdx r10 rdx;
(* lea  (%r8,%rax),%rax *)
adds dontcare rax r8 rax;
(* sar  $42,%rax *)
ssplit rax dontcare rax 42;

mov v_ rax;

(* imul  %rax,%r11 *)
smull dontcare r11 rax r11;
(* movq 736(%rsp),%r12 *)
mov r12 (2**(20))@sint64;
(* lea  (%r9,%r12),%r9 *)
adds dontcare r9 r9 r12;
(* shl  $22,%r9 *)
and r9@uint64 r9 (2**(42)-1)@sint64;
shl r9 r9 22;
cast r9@sint64 r9;
(* sar  $43,%r9 *)
ssplit r9 dontcare r9 43;

mov r_ r9;

(* mov  %rdi,%r13 *)
mov r13 rdi;
(* imul  %r9,%r13 *)
smull dontcare r13 r9 r13;
(* lea  (%r8,%r12),%r8 *)
adds dontcare r8 r8 r12;
(* shl  $22,%r8 *)
and r8@uint64 r8 (2**(42)-1)@sint64;
shl r8 r8 22;
cast r8@sint64 r8;
(* sar  $43,%r8 *)
ssplit r8 dontcare r8 43;

mov u_ r8;

(* imul  %r8,%rdi *)
smull dontcare rdi r8 rdi;
(* add  %r11,%rdi *)
adds carry rdi r11 rdi;
(* add  %r13,%rdx *)
adds carry rdx r13 rdx;

assert true && and[
      (sext u 43) = u_,
      (sext v 43) = v_,
      (sext r 43) = r_,
      (sext s 43) = s_
      ];
assert true && eqmod ((sext u 43) * f0 + g0 * (sext v 43)) 0@64 (2**(20))@64; 
assert true && eqmod ((sext r 43) * f0 + g0 * (sext s 43)) 0@64 (2**(20))@64; 

assume true && eqmod (u_ * f0 + g0 * v_) 0@64 (2**20)@64; 
assume true && eqmod (r_ * f0 + g0 * s_) 0@64 (2**20)@64; 

(* sar  $20,%rdi *)

assert true && rdi = u_ * f0 + g0 * v_;
assume eqmod rdi (u_ * f0 + g0 * v_) (2**64) && true;
assert true && eqmod rdi 0@64 (2**(20))@64;
assume eqmod rdi 0 (2**(20)) && true;

mov rdio rdi; 

cast rdi@sint64 rdi;

ssplit rdi dontcare rdi 20;

assert true && rdi * (2**20)@64 = rdio;
assume eqmod (rdi * (2**20)) rdio (2**64) && true;

(* sar  $20,%rdx *)

assert true && rdx = r_ * f0 + g0 * s_;
assume eqmod rdx (r_ * f0 + g0 * s_) (2**64) && true;
assert true && eqmod rdx 0@64 (2**(20))@64;
assume eqmod rdx 0 (2**(20)) && true;

mov rdxo rdx; 

cast rdx@sint64 rdx;

ssplit rdx dontcare rdx 20;

assert true && rdx * (2**20)@64 = rdxo;
assume eqmod (rdx * (2**20)) rdxo (2**64) && true;


mov f_ rdi;
mov g_ rdx;

{
  and[
      eqmod 
      (f_ * (2**20))
      (u_ * f0 + g0 * v_)
      (2**64),
      eqmod 
      (g_ * (2**20))
      (r_ * f0 + g0 * s_)
      (2**64)
      ]
  &&
  and[
      (sext u 43) = u_,
      (sext v 43) = v_,
      (sext r 43) = r_,
      (sext s 43) = s_
                  ]
}

