(* quine: -v -isafety -jobs 24 -slicing -no_carry_constraint fpzero503.cl
Parsing Cryptoline file:                [OK]            0.000478 seconds
Checking well-formedness:               [OK]            0.000106 seconds
Transforming to SSA form:               [OK]            0.000047 seconds
Normalizing specification:              [OK]            0.000036 seconds
Rewriting assignments:                  [OK]            0.000076 seconds
Verifying program safety:               [OK]            0.000723 seconds
Verifying range specification:          [OK]            0.045604 seconds
Rewriting value-preserved casting:      [OK]            0.000010 seconds
Verifying algebraic specification:      [OK]            0.000401 seconds
Verification result:                    [OK]            0.047861 seconds
*)                               

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
           uint64 a4, uint64 a5, uint64 a6, uint64 a7,
           uint64 m0, uint64 m1, uint64 m2, uint64 m3,
           uint64 m4, uint64 m5, uint64 m6, uint64 m7) =
{
  true
&&
  true
}

mov L0xffffffffe7b8 a0; mov L0xffffffffe7c0 a1;
mov L0xffffffffe7c8 a2; mov L0xffffffffe7d0 a3;
mov L0xffffffffe7d8 a4; mov L0xffffffffe7e0 a5;
mov L0xffffffffe7e8 a6; mov L0xffffffffe7f0 a7;

(* #! -> SP = 0xffffffffe6f0 *)
#! 0xffffffffe6f0 = 0xffffffffe6f0;
(* stp	xzr, xzr, [x0]                              #! EA = L0xffffffffe7b8; PC = 0xaaaaaaaadcc0 *)
mov L0xffffffffe7b8 0@uint64;
mov L0xffffffffe7c0 0@uint64;
(* stp	xzr, xzr, [x0, #16]                         #! EA = L0xffffffffe7c8; PC = 0xaaaaaaaadcc4 *)
mov L0xffffffffe7c8 0@uint64;
mov L0xffffffffe7d0 0@uint64;
(* stp	xzr, xzr, [x0, #32]                         #! EA = L0xffffffffe7d8; PC = 0xaaaaaaaadcc8 *)
mov L0xffffffffe7d8 0@uint64;
mov L0xffffffffe7e0 0@uint64;
(* stp	xzr, xzr, [x0, #48]                         #! EA = L0xffffffffe7e8; PC = 0xaaaaaaaadccc *)
mov L0xffffffffe7e8 0@uint64;
mov L0xffffffffe7f0 0@uint64;
(* #! <- SP = 0xffffffffe6f0 *)
#! 0xffffffffe6f0 = 0xffffffffe6f0;
(* #ret                                            #! PC = 0xaaaaaaaadcd0 *)
#ret                                            #! 0xaaaaaaaadcd0 = 0xaaaaaaaadcd0;

mov c0 L0xffffffffe7b8; mov c1 L0xffffffffe7c0;
mov c2 L0xffffffffe7c8; mov c3 L0xffffffffe7d0;
mov c4 L0xffffffffe7d8; mov c5 L0xffffffffe7e0;
mov c6 L0xffffffffe7e8; mov c7 L0xffffffffe7f0;

{
  true
&&
  limbs 64 [c0, c1, c2, c3, c4, c5, c6, c7] = 0@512  
}

