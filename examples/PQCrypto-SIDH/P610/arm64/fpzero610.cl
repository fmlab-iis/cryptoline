(* quine: -v -isafety -jobs 20 -slicing -no_carry_constraint fpzero610.cl
Parsing Cryptoline file:                [OK]            0.000620 seconds
Checking well-formedness:               [OK]            0.000117 seconds
Transforming to SSA form:               [OK]            0.000049 seconds
Normalizing specification:              [OK]            0.000046 seconds
Rewriting assignments:                  [OK]            0.000095 seconds
Verifying program safety:               [OK]            0.000958 seconds
Verifying range specification:          [OK]            0.047902 seconds
Rewriting value-preserved casting:      [OK]            0.000018 seconds
Verifying algebraic specification:      [OK]            0.000446 seconds
Verification result:                    [OK]            0.050683 seconds
*)

proc main () =
{
  true
&&
  true
}

(* #! -> SP = 0xffffffffe630 *)
#! 0xffffffffe630 = 0xffffffffe630;
(* stp	xzr, xzr, [x0]                              #! EA = L0xffffffffe708; PC = 0xaaaaaaaade10 *)
mov L0xffffffffe708 0@uint64;
mov L0xffffffffe710 0@uint64;
(* stp	xzr, xzr, [x0, #16]                         #! EA = L0xffffffffe718; PC = 0xaaaaaaaade14 *)
mov L0xffffffffe718 0@uint64;
mov L0xffffffffe720 0@uint64;
(* stp	xzr, xzr, [x0, #32]                         #! EA = L0xffffffffe728; PC = 0xaaaaaaaade18 *)
mov L0xffffffffe728 0@uint64;
mov L0xffffffffe730 0@uint64;
(* stp	xzr, xzr, [x0, #48]                         #! EA = L0xffffffffe738; PC = 0xaaaaaaaade1c *)
mov L0xffffffffe738 0@uint64;
mov L0xffffffffe740 0@uint64;
(* stp	xzr, xzr, [x0, #64]                         #! EA = L0xffffffffe748; PC = 0xaaaaaaaade20 *)
mov L0xffffffffe748 0@uint64;
mov L0xffffffffe750 0@uint64;
(* #! <- SP = 0xffffffffe630 *)
#! 0xffffffffe630 = 0xffffffffe630;
(* #ret                                            #! PC = 0xaaaaaaaade24 *)
#ret                                            #! 0xaaaaaaaade24 = 0xaaaaaaaade24;

mov c0 L0xffffffffe708; mov c1 L0xffffffffe710; mov c2 L0xffffffffe718;
mov c3 L0xffffffffe720; mov c4 L0xffffffffe728; mov c5 L0xffffffffe730;
mov c6 L0xffffffffe738; mov c7 L0xffffffffe740; mov c8 L0xffffffffe748;
mov c9 L0xffffffffe750;

{
  true
&&
  limbs 64 [c0, c1, c2, c3, c4, c5, c6, c7, c8, c9] = 0@640
}

