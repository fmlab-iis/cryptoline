(* quine; -v -isafety -jobs 20 -slicing -no_carry_constraint fpneg610.cl
Parsing Cryptoline file:                [OK]            0.003049 seconds
Checking well-formedness:               [OK]            0.000771 seconds
Transforming to SSA form:               [OK]            0.000337 seconds
Normalizing specification:              [OK]            0.000410 seconds
Rewriting assignments:                  [OK]            0.000416 seconds
Verifying program safety:               [OK]            0.001630 seconds
Verifying range specification:          [OK]            6.264139 seconds
Rewriting value-preserved casting:      [OK]            0.000037 seconds
Verifying algebraic specification:      [OK]            0.000479 seconds
Verification result:                    [OK]            6.272036 seconds
*)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4,
           uint64 a5, uint64 a6, uint64 a7, uint64 a8, uint64 a9,
           uint64 m0, uint64 m1, uint64 m2, uint64 m3, uint64 m4,
           uint64 m5, uint64 m6, uint64 m7, uint64 m8, uint64 m9) =
{
  true
&&
  and [
  limbs 64 [a0, a1, a2, a3, a4, a5, a6, a7, a8, a9] <u
  2@640 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9],
  m0=0xFFFFFFFFFFFFFFFF@64, m1=0xFFFFFFFFFFFFFFFF@64, m2=0xFFFFFFFFFFFFFFFF@64,
  m3=0xFFFFFFFFFFFFFFFF@64, m4=0x6E01FFFFFFFFFFFF@64, m5=0xB1784DE8AA5AB02E@64,
  m6=0x9AE7BF45048FF9AB@64, m7=0xB255B2FA10C4252A@64, m8=0x819010C251E7D88C@64,
  m9=0x000000027BF6A768@64 ]
}

mov L0xffffffffe7a8 a0; mov L0xffffffffe7b0 a1; mov L0xffffffffe7b8 a2;
mov L0xffffffffe7c0 a3; mov L0xffffffffe7c8 a4; mov L0xffffffffe7d0 a5;
mov L0xffffffffe7d8 a6; mov L0xffffffffe7e0 a7; mov L0xffffffffe7e8 a8;
mov L0xffffffffe7f0 a9;

mov L0xaaaaaaaba550 0xFFFFFFFFFFFFFFFE@uint64;
mov L0xaaaaaaaba558 0xFFFFFFFFFFFFFFFF@uint64;
mov L0xaaaaaaaba560 0xFFFFFFFFFFFFFFFF@uint64;
mov L0xaaaaaaaba568 0xFFFFFFFFFFFFFFFF@uint64;
mov L0xaaaaaaaba570 0xDC03FFFFFFFFFFFF@uint64;
mov L0xaaaaaaaba578 0x62F09BD154B5605C@uint64;
mov L0xaaaaaaaba580 0x35CF7E8A091FF357@uint64;
mov L0xaaaaaaaba588 0x64AB65F421884A55@uint64;
mov L0xaaaaaaaba590 0x03202184A3CFB119@uint64;
mov L0xaaaaaaaba598 0x00000004F7ED4ED1@uint64;

nondet L0xaaaaaaacbfe8@uint64;

(* #! -> SP = 0xffffffffe630 *)
#! 0xffffffffe630 = 0xffffffffe630;
(* ldp	x2, x4, [x0]                                #! EA = L0xffffffffe7a8; Value = 0xec4aff517369c668; PC = 0xaaaaaaab62a4 *)
mov x2 L0xffffffffe7a8;
mov x4 L0xffffffffe7b0;
(* ldr	x1, [x1, #4072]                             #! EA = L0xaaaaaaacbfe8; Value = 0x0000aaaaaaaba550; PC = 0xaaaaaaab62a8 *)
mov x1 L0xaaaaaaacbfe8;
(* ldr	x8, [x0, #48]                               #! EA = L0xffffffffe7d8; Value = 0x766cf556c23db900; PC = 0xaaaaaaab62ac *)
mov x8 L0xffffffffe7d8;
(* ldp	x5, x3, [x1]                                #! EA = L0xaaaaaaaba550; Value = 0xfffffffffffffffe; PC = 0xaaaaaaab62b0 *)
mov x5 L0xaaaaaaaba550;
mov x3 L0xaaaaaaaba558;
(* subs	x7, x5, x2                                 #! PC = 0xaaaaaaab62b4 *)
subc carry x7 x5 x2;
(* csetm	x5, cc  // cc = lo, ul, last              #! PC = 0xaaaaaaab62b8 *)
cmov x5 carry 0@uint64 0xffffffffffffffff@uint64;
(* subs	x6, x3, x4                                 #! PC = 0xaaaaaaab62bc *)
subc carry x6 x3 x4;
(* csetm	x3, cc  // cc = lo, ul, last              #! PC = 0xaaaaaaab62c0 *)
cmov x3 carry 0@uint64 0xffffffffffffffff@uint64;
(* lsr	x5, x5, #63                                 #! PC = 0xaaaaaaab62c4 *)
split x5 dontcare x5 63;
(* subs	x5, x6, x5                                 #! PC = 0xaaaaaaab62c8 *)
subc carry x5 x6 x5;
(* stp	x7, x5, [x0]                                #! EA = L0xffffffffe7a8; PC = 0xaaaaaaab62cc *)
mov L0xffffffffe7a8 x7;
mov L0xffffffffe7b0 x5;
(* sbc	x3, x3, xzr                                 #! PC = 0xaaaaaaab62d0 *)
sbcs dontcare x3 x3 0@uint64 carry;
(* ldr	x4, [x0, #16]                               #! EA = L0xffffffffe7b8; Value = 0x8de7e81bf854c27c; PC = 0xaaaaaaab62d4 *)
mov x4 L0xffffffffe7b8;
(* ldr	x2, [x1, #16]                               #! EA = L0xaaaaaaaba560; Value = 0xffffffffffffffff; PC = 0xaaaaaaab62d8 *)
mov x2 L0xaaaaaaaba560;
(* ldr	x7, [x0, #24]                               #! EA = L0xffffffffe7c0; Value = 0x9ac99f33632e5a76; PC = 0xaaaaaaab62dc *)
mov x7 L0xffffffffe7c0;
(* subs	x6, x2, x4                                 #! PC = 0xaaaaaaab62e0 *)
subc carry x6 x2 x4;
(* lsr	x2, x3, #63                                 #! PC = 0xaaaaaaab62e4 *)
split x2 dontcare x3 63;
(* csetm	x4, cc  // cc = lo, ul, last              #! PC = 0xaaaaaaab62e8 *)
cmov x4 carry 0@uint64 0xffffffffffffffff@uint64;
(* subs	x2, x6, x2                                 #! PC = 0xaaaaaaab62ec *)
subc carry x2 x6 x2;
(* str	x2, [x0, #16]                               #! EA = L0xffffffffe7b8; PC = 0xaaaaaaab62f0 *)
mov L0xffffffffe7b8 x2;
(* ldp	x5, x2, [x1, #24]                           #! EA = L0xaaaaaaaba568; Value = 0xffffffffffffffff; PC = 0xaaaaaaab62f4 *)
mov x5 L0xaaaaaaaba568;
mov x2 L0xaaaaaaaba570;
(* sbc	x4, x4, xzr                                 #! PC = 0xaaaaaaab62f8 *)
sbcs dontcare x4 x4 0@uint64 carry;
(* ldr	x3, [x0, #32]                               #! EA = L0xffffffffe7c8; Value = 0xeca15831b70d3266; PC = 0xaaaaaaab62fc *)
mov x3 L0xffffffffe7c8;
(* lsr	x4, x4, #63                                 #! PC = 0xaaaaaaab6300 *)
split x4 dontcare x4 63;
(* cmp	x5, x7                                      #! PC = 0xaaaaaaab6304 *)
subs carry dontcare x5 x7;
(* sub	x5, x5, x7                                  #! PC = 0xaaaaaaab6308 *)
subs dontcare x5 x5 x7;
(* csetm	x6, cc  // cc = lo, ul, last              #! PC = 0xaaaaaaab630c *)
cmov x6 carry 0@uint64 0xffffffffffffffff@uint64;
(* subs	x5, x5, x4                                 #! PC = 0xaaaaaaab6310 *)
subc carry x5 x5 x4;
(* sbc	x6, x6, xzr                                 #! PC = 0xaaaaaaab6314 *)
sbcs dontcare x6 x6 0@uint64 carry;
(* sub	x7, x2, x3                                  #! PC = 0xaaaaaaab6318 *)
subs dontcare x7 x2 x3;
(* cmp	x2, x3                                      #! PC = 0xaaaaaaab631c *)
subs carry dontcare x2 x3;
(* lsr	x2, x6, #63                                 #! PC = 0xaaaaaaab6320 *)
split x2 dontcare x6 63;
(* csetm	x3, cc  // cc = lo, ul, last              #! PC = 0xaaaaaaab6324 *)
cmov x3 carry 0@uint64 0xffffffffffffffff@uint64;
(* subs	x7, x7, x2                                 #! PC = 0xaaaaaaab6328 *)
subc carry x7 x7 x2;
(* stp	x5, x7, [x0, #24]                           #! EA = L0xffffffffe7c0; PC = 0xaaaaaaab632c *)
mov L0xffffffffe7c0 x5;
mov L0xffffffffe7c8 x7;
(* sbc	x3, x3, xzr                                 #! PC = 0xaaaaaaab6330 *)
sbcs dontcare x3 x3 0@uint64 carry;
(* ldp	x4, x2, [x1, #40]                           #! EA = L0xaaaaaaaba578; Value = 0x62f09bd154b5605c; PC = 0xaaaaaaab6334 *)
mov x4 L0xaaaaaaaba578;
mov x2 L0xaaaaaaaba580;
(* lsr	x3, x3, #63                                 #! PC = 0xaaaaaaab6338 *)
split x3 dontcare x3 63;
(* ldr	x6, [x0, #40]                               #! EA = L0xffffffffe7d0; Value = 0x22e69b6f6caaacf6; PC = 0xaaaaaaab633c *)
mov x6 L0xffffffffe7d0;
(* subs	x4, x4, x6                                 #! PC = 0xaaaaaaab6340 *)
subc carry x4 x4 x6;
(* sub	x6, x2, x8                                  #! PC = 0xaaaaaaab6344 *)
subs dontcare x6 x2 x8;
(* csetm	x5, cc  // cc = lo, ul, last              #! PC = 0xaaaaaaab6348 *)
cmov x5 carry 0@uint64 0xffffffffffffffff@uint64;
(* subs	x3, x4, x3                                 #! PC = 0xaaaaaaab634c *)
subc carry x3 x4 x3;
(* sbc	x5, x5, xzr                                 #! PC = 0xaaaaaaab6350 *)
sbcs dontcare x5 x5 0@uint64 carry;
(* cmp	x2, x8                                      #! PC = 0xaaaaaaab6354 *)
subs carry dontcare x2 x8;
(* ldp	x8, x7, [x0, #56]                           #! EA = L0xffffffffe7e0; Value = 0xd5868a2730b05ce3; PC = 0xaaaaaaab6358 *)
mov x8 L0xffffffffe7e0;
mov x7 L0xffffffffe7e8;
(* lsr	x5, x5, #63                                 #! PC = 0xaaaaaaab635c *)
split x5 dontcare x5 63;
(* csetm	x2, cc  // cc = lo, ul, last              #! PC = 0xaaaaaaab6360 *)
cmov x2 carry 0@uint64 0xffffffffffffffff@uint64;
(* subs	x6, x6, x5                                 #! PC = 0xaaaaaaab6364 *)
subc carry x6 x6 x5;
(* ldr	x4, [x1, #56]                               #! EA = L0xaaaaaaaba588; Value = 0x64ab65f421884a55; PC = 0xaaaaaaab6368 *)
mov x4 L0xaaaaaaaba588;
(* sbc	x2, x2, xzr                                 #! PC = 0xaaaaaaab636c *)
sbcs dontcare x2 x2 0@uint64 carry;
(* stp	x3, x6, [x0, #40]                           #! EA = L0xffffffffe7d0; PC = 0xaaaaaaab6370 *)
mov L0xffffffffe7d0 x3;
mov L0xffffffffe7d8 x6;
(* cmp	x4, x8                                      #! PC = 0xaaaaaaab6374 *)
subs carry dontcare x4 x8;
(* lsr	x2, x2, #63                                 #! PC = 0xaaaaaaab6378 *)
split x2 dontcare x2 63;
(* sub	x4, x4, x8                                  #! PC = 0xaaaaaaab637c *)
subs dontcare x4 x4 x8;
(* csetm	x5, cc  // cc = lo, ul, last              #! PC = 0xaaaaaaab6380 *)
cmov x5 carry 0@uint64 0xffffffffffffffff@uint64;
(* subs	x2, x4, x2                                 #! PC = 0xaaaaaaab6384 *)
subc carry x2 x4 x2;
(* ldr	x3, [x1, #64]                               #! EA = L0xaaaaaaaba590; Value = 0x03202184a3cfb119; PC = 0xaaaaaaab6388 *)
mov x3 L0xaaaaaaaba590;
(* sbc	x4, x5, xzr                                 #! PC = 0xaaaaaaab638c *)
sbcs dontcare x4 x5 0@uint64 carry;
(* ldr	x5, [x1, #72]                               #! EA = L0xaaaaaaaba598; Value = 0x00000004f7ed4ed1; PC = 0xaaaaaaab6390 *)
mov x5 L0xaaaaaaaba598;
(* subs	x6, x3, x7                                 #! PC = 0xaaaaaaab6394 *)
subc carry x6 x3 x7;
(* lsr	x4, x4, #63                                 #! PC = 0xaaaaaaab6398 *)
split x4 dontcare x4 63;
(* csetm	x3, cc  // cc = lo, ul, last              #! PC = 0xaaaaaaab639c *)
cmov x3 carry 0@uint64 0xffffffffffffffff@uint64;
(* ldr	x7, [x0, #72]                               #! EA = L0xffffffffe7f0; Value = 0x000000001b8759d5; PC = 0xaaaaaaab63a0 *)
mov x7 L0xffffffffe7f0;
(* subs	x4, x6, x4                                 #! PC = 0xaaaaaaab63a4 *)
subc carry x4 x6 x4;
(* sbc	x1, x3, xzr                                 #! PC = 0xaaaaaaab63a8 *)
sbcs dontcare x1 x3 0@uint64 carry;
(* str	x2, [x0, #56]                               #! EA = L0xffffffffe7e0; PC = 0xaaaaaaab63ac *)
mov L0xffffffffe7e0 x2;
(* subs	x5, x5, x7                                 #! PC = 0xaaaaaaab63b0 *)
subc carry x5 x5 x7;
(* sub	x1, x5, x1, lsr #63                         #! PC = 0xaaaaaaab63b4 *)
split x1H dc x1 63;
subs dontcare x1 x5 x1H;
(* stp	x4, x1, [x0, #64]                           #! EA = L0xffffffffe7e8; PC = 0xaaaaaaab63b8 *)
mov L0xffffffffe7e8 x4;
mov L0xffffffffe7f0 x1;
(* #! <- SP = 0xffffffffe630 *)
#! 0xffffffffe630 = 0xffffffffe630;
(* #ret                                            #! PC = 0xaaaaaaab63bc *)
#ret                                            #! 0xaaaaaaab63bc = 0xaaaaaaab63bc;

mov c0 L0xffffffffe7a8; mov c1 L0xffffffffe7b0; mov c2 L0xffffffffe7b8;
mov c3 L0xffffffffe7c0; mov c4 L0xffffffffe7c8; mov c5 L0xffffffffe7d0;
mov c6 L0xffffffffe7d8; mov c7 L0xffffffffe7e0; mov c8 L0xffffffffe7e8;
mov c9 L0xffffffffe7f0;

{
  true
&&
  and [eqsmod (limbs 64 [c0, c1, c2, c3, c4, c5, c6, c7, c8, c9])
              ((-1)@640 * limbs 64 [a0, a1, a2, a3, a4, a5, a6, a7, a8, a9])
              (limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9]),
       limbs 64 [c0, c1, c2, c3, c4, c5, c6, c7, c8, c9] <=u
       2@640 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9]]
            
}

