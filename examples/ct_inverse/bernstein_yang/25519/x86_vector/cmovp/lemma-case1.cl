(* Use Sigular to check whether uF+vG, rF+sG \equiv 0 mod 2^k *)
(* quine: -v -vo lex lemma-case1.cl
Parsing Cryptoline file:                [OK]            0.000333 seconds
Checking well-formedness:               [OK]            0.000070 seconds
Transforming to SSA form:               [OK]            0.000036 seconds
Normalizing specification:              [OK]            0.000025 seconds
Rewriting assignments:                  [OK]            0.000013 seconds
Verifying program safety:               [OK]            0.025463 seconds
Verifying range specification:          [OK]            0.002837 seconds
Rewriting value-preserved casting:      [OK]            0.000015 seconds
Verifying algebraic specification:      [OK]            0.222611 seconds
Verification result:                    [OK]            0.251728 seconds
*)
proc main (sint64 f0, sint64 g0, sint64 m, sint64 f, sint64 g, sint64 u, sint64 v, sint64 r, sint64 s, sint64 M0, sint64 M) =
{
  and[
      eqmod 2**(60) 0 M0,
      eqmod f 1 2,
      eqmod
      u * f0 + v * g0
      0
      M0,
      eqmod
      r * f0 + s * g0
      0
      M0,
      eqmod
      u * f0 + v * g0
      f * M0
      2**(64),
      eqmod
      r * f0 + s * g0
      g * M0
      2**(64),
      M = M0 * 2]
  &&
  true
}

nondet Xh@sint64;
nondet U@sint64;
nondet V@sint64;
nondet R@sint64;
nondet S@sint64;
nondet F@sint64;
nondet G@sint64;

(* case 1 *)
assume ((Xh*(2**(64)))+ G * 2 - f - g) = 0 && true;
assume (F - f) = 0 && true;
assume (U - u * 2) = 0 && true;
assume (V - v * 2) = 0 && true;
assume (R - r - u) = 0 && true;
assume (S - s - v) = 0 && true;

{
  and[
      eqmod
      U * f0 + V * g0
      0
      M,
      eqmod
      R * f0 + S * g0
      0
      M,
      eqmod
      U * f0 + V * g0
      F * M
      2**(64),
      eqmod
      R * f0 + S * g0
      G * M
      2**(64),
      M = M0 * 2]
  &&
  true
}
