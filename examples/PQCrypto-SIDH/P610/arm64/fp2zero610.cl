(* quine: -v -isafety -jobs 20 -slicing -no_carry_constraint fp2zero610.cl
Parsing Cryptoline file:                [OK]            0.001224 seconds
Checking well-formedness:               [OK]            0.000313 seconds
Transforming to SSA form:               [OK]            0.000126 seconds
Normalizing specification:              [OK]            0.000109 seconds
Rewriting assignments:                  [OK]            0.000214 seconds
Verifying program safety:               [OK]            0.001212 seconds
Verifying range assertions:             [OK]            0.082841 seconds
Verifying range specification:          [OK]            0.002610 seconds
Rewriting value-preserved casting:      [OK]            0.000023 seconds
Verifying algebraic assertions:         [OK]            0.000727 seconds
Verifying algebraic specification:      [OK]            0.046639 seconds
Verification result:                    [OK]            0.136660 seconds
*)

proc main (uint64 m0, uint64 m1, uint64 m2, uint64 m3, uint64 m4,
           uint64 m5, uint64 m6, uint64 m7, uint64 m8, uint64 m9) =
{
  true
&&
  and [
  m0=0xFFFFFFFFFFFFFFFF@64, m1=0xFFFFFFFFFFFFFFFF@64, m2=0xFFFFFFFFFFFFFFFF@64,
  m3=0xFFFFFFFFFFFFFFFF@64, m4=0x6E01FFFFFFFFFFFF@64, m5=0xB1784DE8AA5AB02E@64,
  m6=0x9AE7BF45048FF9AB@64, m7=0xB255B2FA10C4252A@64, m8=0x819010C251E7D88C@64,
  m9=0x000000027BF6A768@64 ]
}


(* #! -> SP = 0xffffffffe270 *)
#! 0xffffffffe270 = 0xffffffffe270;
(* stp	xzr, xzr, [x0]                              #! EA = L0xffffffffe398; PC = 0xaaaaaaaae220 *)
mov L0xffffffffe398 0@uint64;
mov L0xffffffffe3a0 0@uint64;
(* stp	xzr, xzr, [x0, #16]                         #! EA = L0xffffffffe3a8; PC = 0xaaaaaaaae224 *)
mov L0xffffffffe3a8 0@uint64;
mov L0xffffffffe3b0 0@uint64;
(* stp	xzr, xzr, [x0, #32]                         #! EA = L0xffffffffe3b8; PC = 0xaaaaaaaae228 *)
mov L0xffffffffe3b8 0@uint64;
mov L0xffffffffe3c0 0@uint64;
(* stp	xzr, xzr, [x0, #48]                         #! EA = L0xffffffffe3c8; PC = 0xaaaaaaaae22c *)
mov L0xffffffffe3c8 0@uint64;
mov L0xffffffffe3d0 0@uint64;
(* stp	xzr, xzr, [x0, #64]                         #! EA = L0xffffffffe3d8; PC = 0xaaaaaaaae230 *)
mov L0xffffffffe3d8 0@uint64;
mov L0xffffffffe3e0 0@uint64;
(* stp	xzr, xzr, [x0, #80]                         #! EA = L0xffffffffe3e8; PC = 0xaaaaaaaae234 *)
mov L0xffffffffe3e8 0@uint64;
mov L0xffffffffe3f0 0@uint64;
(* stp	xzr, xzr, [x0, #96]                         #! EA = L0xffffffffe3f8; PC = 0xaaaaaaaae238 *)
mov L0xffffffffe3f8 0@uint64;
mov L0xffffffffe400 0@uint64;
(* stp	xzr, xzr, [x0, #112]                        #! EA = L0xffffffffe408; PC = 0xaaaaaaaae23c *)
mov L0xffffffffe408 0@uint64;
mov L0xffffffffe410 0@uint64;
(* stp	xzr, xzr, [x0, #128]                        #! EA = L0xffffffffe418; PC = 0xaaaaaaaae240 *)
mov L0xffffffffe418 0@uint64;
mov L0xffffffffe420 0@uint64;
(* stp	xzr, xzr, [x0, #144]                        #! EA = L0xffffffffe428; PC = 0xaaaaaaaae244 *)
mov L0xffffffffe428 0@uint64;
mov L0xffffffffe430 0@uint64;
(* #! <- SP = 0xffffffffe270 *)
#! 0xffffffffe270 = 0xffffffffe270;
(* #ret                                            #! PC = 0xaaaaaaaae248 *)
#ret                                            #! 0xaaaaaaaae248 = 0xaaaaaaaae248;

mov cr0 L0xffffffffe398; mov cr1 L0xffffffffe3a0; mov cr2 L0xffffffffe3a8;
mov cr3 L0xffffffffe3b0; mov cr4 L0xffffffffe3b8; mov cr5 L0xffffffffe3c0;
mov cr6 L0xffffffffe3c8; mov cr7 L0xffffffffe3d0; mov cr8 L0xffffffffe3d8;
mov cr9 L0xffffffffe3e0;
mov ci0 L0xffffffffe3e8; mov ci1 L0xffffffffe3f0; mov ci2 L0xffffffffe3f8;
mov ci3 L0xffffffffe400; mov ci4 L0xffffffffe408; mov ci5 L0xffffffffe410;
mov ci6 L0xffffffffe418; mov ci7 L0xffffffffe420; mov ci8 L0xffffffffe428;
mov ci9 L0xffffffffe430;

assert true
    && and [limbs 64 [cr0, cr1, cr2, cr3, cr4, cr5, cr6, cr7, cr8, cr9] =
            0@640,
            limbs 64 [ci0, ci1, ci2, ci3, ci4, ci5, ci6, ci7, ci8, ci9] =
            0@640];
assume and [limbs 64 [cr0, cr1, cr2, cr3, cr4, cr5, cr6, cr7, cr8, cr9] = 0,
            limbs 64 [ci0, ci1, ci2, ci3, ci4, ci5, ci6, ci7, ci8, ci9] = 0]
    && true;

ghost I@uint64 : true && true;

{
      limbs 64 [cr0, cr1, cr2, cr3, cr4, cr5, cr6, cr7, cr8, cr9] +
  I * limbs 64 [ci0, ci1, ci2, ci3, ci4, ci5, ci6, ci7, ci8, ci9] = 0
  &&
  true
}

