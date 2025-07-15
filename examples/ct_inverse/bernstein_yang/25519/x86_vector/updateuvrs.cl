(* popper: cv.exe -v -isafety -jobs 64 -slicing updateuvrs.cl
Parsing CryptoLine file:                        [OK]            0.0006 seconds
Checking well-formedness:                       [OK]            0.0002 seconds

Procedure main
==============
Transforming to SSA form:                       [OK]            0.0001 seconds
Normalizing specification:                      [OK]            0.0001 seconds
Rewriting assignments:                          [OK]            0.0001 seconds
Verifying program safety:                       [OK]            0.0000 seconds
Verifying range assertions:                     [OK]            1054.0656 seconds
Verifying range specification:                  [OK]            0.0001 seconds
Rewriting value-preserved casting:              [OK]            0.0000 seconds
Verifying algebraic assertions:                 [OK]            0.0002 seconds
Verifying algebraic specification:              [OK]            0.0334 seconds

Procedure Summary
-----------------
Procedure verification:                         [OK]            1054.0998 seconds

Summary
=======
Verification result:                            [OK]            1054.1008 seconds
*)
(* quine -v -jobs 10 updateuvrs.cl
Parsing Cryptoline file:                [OK]            0.001087 seconds
Checking well-formedness:               [OK]            0.000382 seconds
Transforming to SSA form:               [OK]            0.000138 seconds
Normalizing specification:              [OK]            0.000126 seconds
Rewriting assignments:                  [OK]            0.000172 seconds
Verifying program safety:               [OK]            0.037332 seconds
Verifying range assertions:             [OK]            10775.411653 seconds
Verifying range specification:          [OK]            0.003750 seconds
Rewriting value-preserved casting:      [OK]            0.000045 seconds
Verifying algebraic assertions:         [OK]            0.000715 seconds
Verifying algebraic specification:      [OK]            0.283489 seconds
Verification result:                    [OK]            10775.739977 seconds
*)
proc main (sint64 u, sint64 v, sint64 r, sint64 s, sint64 u20, sint64 v20, sint64 r20, sint64 s20) =
{
  true
  &&
  and[
      (-(2**(40)))@64 <=s u, u <=s (2**(40))@64,
      (-(2**(40)))@64 <=s v, v <=s (2**(40))@64,
      (-(2**(40)))@64 <=s r, r <=s (2**(40))@64,
      (-(2**(40)))@64 <=s s, s <=s (2**(40))@64,
      
      (-(2**(20)))@64 <=s u20, u20 <=s (2**(20))@64,
      (-(2**(20)))@64 <=s v20, v20 <=s (2**(20))@64,
      (-(2**(20)))@64 <=s r20, r20 <=s (2**(20))@64,
      (-(2**(20)))@64 <=s s20, s20 <=s (2**(20))@64
      ]
}

mov rsp_544 u;
mov rsp_576 v;
mov rsp_592 r;
mov rsp_560 s;

mov rax u20;
mov r11 v20;
mov r10 r20;
mov r12 s20;


(* movq 544(%rsp),%r13 *)
mov r13 rsp_544;
(* imul  %rax,%r13 *)
mov tmp r13;
smull dontcare r13 rax tmp;
assert true && (sext r13 64) = slimbs 64 [r13, dontcare];
assume true && (sext r13 64) = slimbs 64 [r13, dontcare];
assume r13 = rax * tmp && true;
(* movq 592(%rsp),%r14 *)
mov r14 rsp_592;
(* imul  %r11,%r14 *)
mov tmp r14;
smull dontcare r14 r11 tmp;
assert true && (sext r14 64) = slimbs 64 [r14, dontcare];
assume true && (sext r14 64) = slimbs 64 [r14, dontcare];
assume r14 = r11 * tmp && true;
(* movq 576(%rsp),%r15 *)
mov r15 rsp_576;
(* imul  %r15,%rax *)
mov tmp rax;
smull dontcare rax r15 tmp;
assert true && (sext rax 64) = slimbs 64 [rax, dontcare];
assume true && (sext rax 64) = slimbs 64 [rax, dontcare];
assume rax = r15 * tmp && true;
(* movq 560(%rsp),%rbx *)
mov rbx rsp_560;
(* imul  %rbx,%r11 *)
mov tmp r11;
smull dontcare r11 rbx tmp;
assert true && (sext r11 64) = slimbs 64 [r11, dontcare];
assume true && (sext r11 64) = slimbs 64 [r11, dontcare];
assume r11 = rbx * tmp && true;
(* imul  %r10,%r15 *)
mov tmp r15;
smull dontcare r15 r10 tmp;
assert true && (sext r15 64) = slimbs 64 [r15, dontcare];
assume true && (sext r15 64) = slimbs 64 [r15, dontcare];
assume r15 = r10 * tmp && true;
(* imul  %r12,%rbx *)
mov tmp rbx;
smull dontcare rbx r12 tmp;
assert true && (sext rbx 64) = slimbs 64 [rbx, dontcare];
assume true && (sext rbx 64) = slimbs 64 [rbx, dontcare];
assume rbx = r12 * tmp && true;
(* imulq 544(%rsp),%r10 *)
mov tmp r10;
smull dontcare r10 rsp_544 tmp;
assert true && (sext r10 64) = slimbs 64 [r10, dontcare];
assume true && (sext r10 64) = slimbs 64 [r10, dontcare];
assume r10 = rsp_544 * tmp && true;
(* imulq 592(%rsp),%r12 *)
mov tmp r12;
smull dontcare r12 rsp_592 tmp;
assert true && (sext r12 64) = slimbs 64 [r12, dontcare];
assume true && (sext r12 64) = slimbs 64 [r12, dontcare];
assume r12 = rsp_592 * tmp && true;
(* add  %rax,%r11 *)

mov tmp r11;
adds carry r11 rax r11;
assert true && (sext r11 64) = (sext rax 64) + (sext tmp 64);
assume r11 = rax + tmp && true;

(* lea  (%r13,%r14),%rax *)

adds dontcare rax r13 r14;
assert true && (sext rax 64) = (sext r13 64) + (sext r14 64);
assume rax = r13 + r14 && true;

(* add  %r12,%r10 *)

mov tmp r10;
adds carry r10 r12 r10;
assert true && (sext r10 64) = (sext r12 64) + (sext tmp 64);
assume r10 = r12 + tmp && true;

(* lea  (%r15,%rbx),%r12 *)

adds dontcare r12 r15 rbx;
assert true && (sext r12 64) = (sext r15 64) + (sext rbx 64);
assume r12 = r15 + rbx && true;

(* ._first_loop: *)
(* movq %r11,576(%rsp) *)
mov rsp_576 r11;
(* movq %rax,544(%rsp) *)
mov rsp_544 rax;
(* movq %r12,560(%rsp) *)
mov rsp_560 r12;
(* movq %r10,592(%rsp) *)
mov rsp_592 r10;


mov U rsp_544;
mov V rsp_576;
mov R rsp_592;
mov S rsp_560;

{
  and[
      U = u * u20 + r * v20,
      V = v * u20 + s * v20,
      R = u * r20 + r * s20,
      S = v * r20 + s * s20
      ]
  &&
  true
}

