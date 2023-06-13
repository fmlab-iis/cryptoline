(* quine: -v -jobs 10 -btor -slicing lastloop.cl
Parsing Cryptoline file:                [OK]            0.002047 seconds
Checking well-formedness:               [OK]            0.000695 seconds
Transforming to SSA form:               [OK]            0.000241 seconds
Normalizing specification:              [OK]            0.000141 seconds
Rewriting assignments:                  [OK]            0.000144 seconds
Verifying program safety:               [OK]            0.642011 seconds
Verifying range assertions:             [OK]            6252.449697 seconds
Verifying range specification:          [OK]            0.985771 seconds
Rewriting value-preserved casting:      [OK]            0.000050 seconds
Verifying algebraic assertions:         [OK]            0.000887 seconds
Verifying algebraic specification:      [OK]            0.310186 seconds
Verification result:                    [OK]            6254.392674 seconds
*)
proc main (sint64 fuv, sint64 grs, sint64 m, uint20 f, uint20 g, sint21 u, sint21 v, sint21 r, sint21 s, sint64 uo, sint64 vo, sint64 ro, sint64 so) =
{
  true
  &&
  and[
      (-(2**(40)))@64 <=s uo, uo <=s (2**(40))@64,
      (-(2**(40)))@64 <=s vo, vo <=s (2**(40))@64,
      (-(2**(40)))@64 <=s ro, ro <=s (2**(40))@64,
      (-(2**(40)))@64 <=s so, so <=s (2**(40))@64,


      (-(2**(19)))@20 <=s f, f <=s (2**(19) - 1)@20,
      (-(2**(19)))@20 <=s f, g <=s (2**(19) - 1)@20,

      (-1 * 2**(20))@21    <=s u, u <=s (2**(20) - 1)@21,
      (-1 * 2**(20))@(20+1) <=s v, v <=s (2**(20) - 1)@(20+1),
      (-1 * 2**(20))@21    <=s r, r <=s (2**(20) - 1)@21,
      (-1 * 2**(20))@(20+1) <=s s, s <=s (2**(20) - 1)@(20+1),
      
      (sext v (21-20)) + (sext s (21-20)) >s (-1)@22 * (2**(20+1))@22,
      
      eqmod f 1@20 2@20,
      fuv = (sext f 44) + (sext u 43) * (2**(41-20))@64 + (sext v (63-20)) * (2**(62-20))@64,
      grs = (sext g 44) + (sext r 43) * (2**(41-20))@64 + (sext s (63-20)) * (2**(62-20))@64

      ]
}

mov r10 grs;
mov rax fuv;

mov rsp_544 uo;
mov rsp_576 vo;
mov rsp_592 ro;
mov rsp_560 so;

mov rsp_768 ((2**(20)) + (2**(41)))@sint64;
mov rsp_744 (2**(20))@sint64;


(* ._lastloop: *)
(* movq 768(%rsp),%rdi *)
mov rdi rsp_768;
(* lea  (%r10,%rdi),%rdx *)
adds dontcare rdx r10 rdi;
(* sar  $42,%rdx *)
ssplit rdx dontcare rdx 42;

mov s_ rdx;

(* lea  (%rax,%rdi),%r11 *)
adds dontcare r11 rax rdi;
(* sar  $42,%r11 *)
ssplit r11 dontcare r11 42;

mov v_ r11;

(* movq 592(%rsp),%rdi *)
mov rdi rsp_592;
(* imul  %r11,%rdi *)
mov tmp rdi;
smull dontcare rdi r11 rdi;
assert true && (sext rdi 64) = slimbs 64 [rdi, dontcare];
assume true && (sext rdi 64) = slimbs 64 [rdi, dontcare];
assume rdi = r11 * tmp && true;
(* movq 560(%rsp),%r9 *)
mov r9 rsp_560;
(* imul  %r9,%r11 *)
mov tmp r11;
smull dontcare r11 r9 r11;
assert true && (sext r11 64) = slimbs 64 [r11, dontcare];
assume true && (sext r11 64) = slimbs 64 [r11, dontcare];
assume r11 = r9 * tmp && true;
(* imul  %rdx,%r9 *)
mov tmp r9;
smull dontcare r9 rdx r9;
assert true && (sext r9 64) = slimbs 64 [r9, dontcare];
assume true && (sext r9 64) = slimbs 64 [r9, dontcare];
assume r9 = rdx * tmp && true;
(* movq 744(%rsp),%r12 *)
mov r12 rsp_744;
(* lea  (%r10,%r12),%r13 *)
adds dontcare r13 r10 r12;
(* shl  $22,%r13 *)
and r13@uint64 r13 (2**(42)-1)@sint64;
shl r13 r13 22;
cast r13@sint64 r13;
(* sar  $43,%r13 *)
ssplit r13 dontcare r13 43;

mov r_ r13;

(* lea  (%rax,%r12),%rax *)
adds dontcare rax rax r12;
(* shl  $22,%rax *)
and rax@uint64 rax (2**(42)-1)@sint64;
shl rax rax 22;
cast rax@sint64 rax;
(* sar  $43,%rax *)
ssplit rax dontcare rax 43;

mov u_ rax;

(* movq 544(%rsp),%r10 *)
mov r10 rsp_544;
(* imul  %rax,%r10 *)
mov tmp r10;
smull dontcare r10 rax r10;
assert true && (sext r10 64) = slimbs 64 [r10, dontcare];
assume true && (sext r10 64) = slimbs 64 [r10, dontcare];
assume r10 = rax * tmp && true;
(* movq 576(%rsp),%r12 *)
mov r12 rsp_576;
(* imul  %r12,%rax *)
mov tmp rax;
smull dontcare rax r12 rax;
assert true && (sext rax 64) = slimbs 64 [rax, dontcare];
assume true && (sext rax 64) = slimbs 64 [rax, dontcare];
assume rax = r12 * tmp && true;
(* imul  %r13,%r12 *)
mov tmp r12;
smull dontcare r12 r13 r12;
assert true && (sext r12 64) = slimbs 64 [r12, dontcare];
assume true && (sext r12 64) = slimbs 64 [r12, dontcare];
assume r12 = r13 * tmp && true;
(* imulq 592(%rsp),%rdx *)
mov tmp rdx;
smull dontcare rdx rsp_592 rdx;
assert true && (sext rdx 64) = slimbs 64 [rdx, dontcare];
assume true && (sext rdx 64) = slimbs 64 [rdx, dontcare];
assume rdx = rsp_592 * tmp && true;
(* imulq 544(%rsp),%r13 *)
mov tmp r13;
smull dontcare r13 rsp_544 r13;
assert true && (sext r13 64) = slimbs 64 [r13, dontcare];
assume true && (sext r13 64) = slimbs 64 [r13, dontcare];
assume r13 = rsp_544 * tmp && true;
(* add  %rax,%r11 *)

mov tmp r11;
adds carry r11 rax r11;
assert true && (sext r11 64) = (sext rax 64) + (sext tmp 64);
assume r11 = rax + tmp && true;

(* lea  (%r10,%rdi),%r10 *)

mov tmp r10;
adds dontcare r10 r10 rdi;
assert true && (sext r10 64) = (sext rdi 64) + (sext tmp 64);
assume r10 = rdi + tmp && true;

(* add  %rdx,%r13 *)

mov tmp r13;
adds carry r13 rdx r13;
assert true && (sext r13 64) = (sext rdx 64) + (sext tmp 64);
assume r13 = rdx + tmp && true;

(* lea  (%r12,%r9),%r12 *)

mov tmp r12;
adds dontcare r12 r12 r9;
assert true && (sext r12 64) = (sext r9 64) + (sext tmp 64);
assume r12 = r9 + tmp && true;


mov U r10;
mov V r11;
mov R r13;
mov S r12;

assert true && 
  and[
      (sext u 43) = u_,
      (sext v 43) = v_,
      (sext r 43) = r_,
      (sext s 43) = s_
                  ];

assume 
  and[u = u_,
      v = v_,
      r = r_,
      s = s_ ] && true;


{
  and[
      U = uo * u_ + ro * v_,
      V = vo * u_ + so * v_,
      R = uo * r_ + ro * s_,
      S = vo * r_ + so * s_
      ]
  &&
  and[
      (sext u 43) = u_,
      (sext v 43) = v_,
      (sext r 43) = r_,
      (sext s 43) = s_
                  ]
}

