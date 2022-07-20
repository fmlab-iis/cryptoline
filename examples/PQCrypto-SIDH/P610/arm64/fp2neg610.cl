(* quine: -v -isafety -jobs 20 -slicing -no_carry_constraint fp2neg610.cl
Parsing Cryptoline file:                [OK]            0.004094 seconds
Checking well-formedness:               [OK]            0.001156 seconds
Transforming to SSA form:               [OK]            0.000259 seconds
Normalizing specification:              [OK]            0.000303 seconds
Rewriting assignments:                  [OK]            0.000319 seconds
Verifying program safety:               [OK]            0.000122 seconds
Verifying range assertions:             [OK]            8.317777 seconds
Verifying range specification:          [OK]            0.426216 seconds
Rewriting value-preserved casting:      [OK]            0.000087 seconds
Verifying algebraic assertions:         [OK]            0.001452 seconds
Verifying algebraic specification:      [OK]            0.102496 seconds
Verification result:                    [OK]            8.855294 seconds

*)

proc main (uint64 ar0, uint64 ar1, uint64 ar2, uint64 ar3, uint64 ar4,
           uint64 ar5, uint64 ar6, uint64 ar7, uint64 ar8, uint64 ar9,
           uint64 ai0, uint64 ai1, uint64 ai2, uint64 ai3, uint64 ai4,
           uint64 ai5, uint64 ai6, uint64 ai7, uint64 ai8, uint64 ai9,
           uint64 m0, uint64 m1, uint64 m2, uint64 m3, uint64 m4,
           uint64 m5, uint64 m6, uint64 m7, uint64 m8, uint64 m9) =
{
  true
&&
  and [
  limbs 64 [ar0, ar1, ar2, ar3, ar4, ar5, ar6, ar7, ar8, ar9] <u
  2@640 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9],
  limbs 64 [ai0, ai1, ai2, ai3, ai4, ai5, ai6, ai7, ai8, ai9] <u
  2@640 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9],
  m0=0xFFFFFFFFFFFFFFFF@64, m1=0xFFFFFFFFFFFFFFFF@64, m2=0xFFFFFFFFFFFFFFFF@64,
  m3=0xFFFFFFFFFFFFFFFF@64, m4=0x6E01FFFFFFFFFFFF@64, m5=0xB1784DE8AA5AB02E@64,
  m6=0x9AE7BF45048FF9AB@64, m7=0xB255B2FA10C4252A@64, m8=0x819010C251E7D88C@64,
  m9=0x000000027BF6A768@64 ]
}

mov L0xffffffffe4d8 ar0; mov L0xffffffffe4e0 ar1; mov L0xffffffffe4e8 ar2;
mov L0xffffffffe4f0 ar3; mov L0xffffffffe4f8 ar4; mov L0xffffffffe500 ar5;
mov L0xffffffffe508 ar6; mov L0xffffffffe510 ar7; mov L0xffffffffe518 ar8;
mov L0xffffffffe520 ar9;
mov L0xffffffffe528 ai0; mov L0xffffffffe530 ai1; mov L0xffffffffe538 ai2;
mov L0xffffffffe540 ai3; mov L0xffffffffe548 ai4; mov L0xffffffffe550 ai5;
mov L0xffffffffe558 ai6; mov L0xffffffffe560 ai7; mov L0xffffffffe568 ai8;
mov L0xffffffffe570 ai9;

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

nondet  x0@uint64; nondet x19@uint64;
nondet x29@uint64; nondet x30@uint64;
nondet sp@uint64;

(* #! -> SP = 0xffffffffe270 *)
#! 0xffffffffe270 = 0xffffffffe270;
(* stp	x29, x30, [sp, #-32]!                       #! EA = L0xffffffffe250; PC = 0xaaaaaaaae250 *)
mov L0xffffffffe250 x29;
mov L0xffffffffe258 x30;
(* mov	x29, sp                                     #! PC = 0xaaaaaaaae254 *)
mov x29 sp;
(* str	x19, [sp, #16]                              #! EA = L0xffffffffe260; PC = 0xaaaaaaaae258 *)
mov L0xffffffffe260 x19;
(* mov	x19, x0                                     #! PC = 0xaaaaaaaae25c *)
mov x19 x0;
(* #bl	0xaaaaaaab62a0 <fpneg610>                   #! PC = 0xaaaaaaaae260 *)
#bl	0xaaaaaaab62a0 <fpneg610>                   #! 0xaaaaaaaae260 = 0xaaaaaaaae260;
(* #! -> SP = 0xffffffffe250 *)
#! 0xffffffffe250 = 0xffffffffe250;
(* ldp	x2, x4, [x0]                                #! EA = L0xffffffffe4d8; Value = 0x6e94c9413e992a9a; PC = 0xaaaaaaab62a4 *)
mov x2 L0xffffffffe4d8;
mov x4 L0xffffffffe4e0;
(* ldr	x1, [x1, #4072]                             #! EA = L0xaaaaaaacbfe8; Value = 0x0000aaaaaaaba550; PC = 0xaaaaaaab62a8 *)
mov x1 L0xaaaaaaacbfe8;
(* ldr	x8, [x0, #48]                               #! EA = L0xffffffffe508; Value = 0x1da85d795262a797; PC = 0xaaaaaaab62ac *)
mov x8 L0xffffffffe508;
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
(* stp	x7, x5, [x0]                                #! EA = L0xffffffffe4d8; PC = 0xaaaaaaab62cc *)
mov L0xffffffffe4d8 x7;
mov L0xffffffffe4e0 x5;
(* sbc	x3, x3, xzr                                 #! PC = 0xaaaaaaab62d0 *)
sbcs dontcare x3 x3 0@uint64 carry;
(* ldr	x4, [x0, #16]                               #! EA = L0xffffffffe4e8; Value = 0x56fbd2bb120caa13; PC = 0xaaaaaaab62d4 *)
mov x4 L0xffffffffe4e8;
(* ldr	x2, [x1, #16]                               #! EA = L0xaaaaaaaba560; Value = 0xffffffffffffffff; PC = 0xaaaaaaab62d8 *)
mov x2 L0xaaaaaaaba560;
(* ldr	x7, [x0, #24]                               #! EA = L0xffffffffe4f0; Value = 0x06735e6c7e990ca4; PC = 0xaaaaaaab62dc *)
mov x7 L0xffffffffe4f0;
(* subs	x6, x2, x4                                 #! PC = 0xaaaaaaab62e0 *)
subc carry x6 x2 x4;
(* lsr	x2, x3, #63                                 #! PC = 0xaaaaaaab62e4 *)
split x2 dontcare x3 63;
(* csetm	x4, cc  // cc = lo, ul, last              #! PC = 0xaaaaaaab62e8 *)
cmov x4 carry 0@uint64 0xffffffffffffffff@uint64;
(* subs	x2, x6, x2                                 #! PC = 0xaaaaaaab62ec *)
subc carry x2 x6 x2;
(* str	x2, [x0, #16]                               #! EA = L0xffffffffe4e8; PC = 0xaaaaaaab62f0 *)
mov L0xffffffffe4e8 x2;
(* ldp	x5, x2, [x1, #24]                           #! EA = L0xaaaaaaaba568; Value = 0xffffffffffffffff; PC = 0xaaaaaaab62f4 *)
mov x5 L0xaaaaaaaba568;
mov x2 L0xaaaaaaaba570;
(* sbc	x4, x4, xzr                                 #! PC = 0xaaaaaaab62f8 *)
sbcs dontcare x4 x4 0@uint64 carry;
(* ldr	x3, [x0, #32]                               #! EA = L0xffffffffe4f8; Value = 0xc438d9d6ca440d89; PC = 0xaaaaaaab62fc *)
mov x3 L0xffffffffe4f8;
(* lsr	x4, x4, #63                                 #! PC = 0xaaaaaaab6300 *)
split x4 dontcare x4 63;
(* cmp	x5, x7                                      #! PC = 0xaaaaaaab6304 *)
subs carry dontcare x5 x7;
(* sub	x5, x5, x7                                  #! PC = 0xaaaaaaab6308 *)
subc dontcare x5 x5 x7;
(* csetm	x6, cc  // cc = lo, ul, last              #! PC = 0xaaaaaaab630c *)
cmov x6 carry 0@uint64 0xffffffffffffffff@uint64;
(* subs	x5, x5, x4                                 #! PC = 0xaaaaaaab6310 *)
subc carry x5 x5 x4;
(* sbc	x6, x6, xzr                                 #! PC = 0xaaaaaaab6314 *)
sbcs dontcare x6 x6 0@uint64 carry;
(* sub	x7, x2, x3                                  #! PC = 0xaaaaaaab6318 *)
subc dontcare x7 x2 x3;
(* cmp	x2, x3                                      #! PC = 0xaaaaaaab631c *)
subs carry dontcare x2 x3;
(* lsr	x2, x6, #63                                 #! PC = 0xaaaaaaab6320 *)
split x2 dontcare x6 63;
(* csetm	x3, cc  // cc = lo, ul, last              #! PC = 0xaaaaaaab6324 *)
cmov x3 carry 0@uint64 0xffffffffffffffff@uint64;
(* subs	x7, x7, x2                                 #! PC = 0xaaaaaaab6328 *)
subc carry x7 x7 x2;
(* stp	x5, x7, [x0, #24]                           #! EA = L0xffffffffe4f0; PC = 0xaaaaaaab632c *)
mov L0xffffffffe4f0 x5;
mov L0xffffffffe4f8 x7;
(* sbc	x3, x3, xzr                                 #! PC = 0xaaaaaaab6330 *)
sbcs dontcare x3 x3 0@uint64 carry;
(* ldp	x4, x2, [x1, #40]                           #! EA = L0xaaaaaaaba578; Value = 0x62f09bd154b5605c; PC = 0xaaaaaaab6334 *)
mov x4 L0xaaaaaaaba578;
mov x2 L0xaaaaaaaba580;
(* lsr	x3, x3, #63                                 #! PC = 0xaaaaaaab6338 *)
split x3 dontcare x3 63;
(* ldr	x6, [x0, #40]                               #! EA = L0xffffffffe500; Value = 0x4f9aed3ca0d7b505; PC = 0xaaaaaaab633c *)
mov x6 L0xffffffffe500;
(* subs	x4, x4, x6                                 #! PC = 0xaaaaaaab6340 *)
subc carry x4 x4 x6;
(* sub	x6, x2, x8                                  #! PC = 0xaaaaaaab6344 *)
subc dontcare x6 x2 x8;
(* csetm	x5, cc  // cc = lo, ul, last              #! PC = 0xaaaaaaab6348 *)
cmov x5 carry 0@uint64 0xffffffffffffffff@uint64;
(* subs	x3, x4, x3                                 #! PC = 0xaaaaaaab634c *)
subc carry x3 x4 x3;
(* sbc	x5, x5, xzr                                 #! PC = 0xaaaaaaab6350 *)
sbcs dontcare x5 x5 0@uint64 carry;
(* cmp	x2, x8                                      #! PC = 0xaaaaaaab6354 *)
subs carry dontcare x2 x8;
(* ldp	x8, x7, [x0, #56]                           #! EA = L0xffffffffe510; Value = 0x29db0ea0d59b4169; PC = 0xaaaaaaab6358 *)
mov x8 L0xffffffffe510;
mov x7 L0xffffffffe518;
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
(* stp	x3, x6, [x0, #40]                           #! EA = L0xffffffffe500; PC = 0xaaaaaaab6370 *)
mov L0xffffffffe500 x3;
mov L0xffffffffe508 x6;
(* cmp	x4, x8                                      #! PC = 0xaaaaaaab6374 *)
subs carry dontcare x4 x8;
(* lsr	x2, x2, #63                                 #! PC = 0xaaaaaaab6378 *)
split x2 dontcare x2 63;
(* sub	x4, x4, x8                                  #! PC = 0xaaaaaaab637c *)
subc dontcare x4 x4 x8;
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
(* ldr	x7, [x0, #72]                               #! EA = L0xffffffffe520; Value = 0x000000021d9e8de0; PC = 0xaaaaaaab63a0 *)
mov x7 L0xffffffffe520;
(* subs	x4, x6, x4                                 #! PC = 0xaaaaaaab63a4 *)
subc carry x4 x6 x4;
(* sbc	x1, x3, xzr                                 #! PC = 0xaaaaaaab63a8 *)
sbcs dontcare x1 x3 0@uint64 carry;
(* str	x2, [x0, #56]                               #! EA = L0xffffffffe510; PC = 0xaaaaaaab63ac *)
mov L0xffffffffe510 x2;
(* subs	x5, x5, x7                                 #! PC = 0xaaaaaaab63b0 *)
subc carry x5 x5 x7;
(* sub	x1, x5, x1, lsr #63                         #! PC = 0xaaaaaaab63b4 *)
split x1H dontcare x1 63;
subc dontcare x1 x5 x1H;
(* stp	x4, x1, [x0, #64]                           #! EA = L0xffffffffe518; PC = 0xaaaaaaab63b8 *)
mov L0xffffffffe518 x4;
mov L0xffffffffe520 x1;
(* #! <- SP = 0xffffffffe250 *)
#! 0xffffffffe250 = 0xffffffffe250;
(* #ret                                            #! PC = 0xaaaaaaab63bc *)
#ret                                            #! 0xaaaaaaab63bc = 0xaaaaaaab63bc;
(* add	x0, x19, #0x50                              #! PC = 0xaaaaaaaae264 *)
adds dontcare x0 x19 0x50@uint64;
(* ldr	x19, [sp, #16]                              #! EA = L0xffffffffe260; Value = 0x0000ffffffffe4d8; PC = 0xaaaaaaaae268 *)
mov x19 L0xffffffffe260;
(* ldp	x29, x30, [sp], #32                         #! EA = L0xffffffffe250; Value = 0x0000ffffffffe270; PC = 0xaaaaaaaae26c *)
mov x29 L0xffffffffe250;
mov x30 L0xffffffffe258;
(* #b	0xaaaaaaab62a0 <fpneg610>                    #! PC = 0xaaaaaaaae270 *)
#b	0xaaaaaaab62a0 <fpneg610>                    #! 0xaaaaaaaae270 = 0xaaaaaaaae270;
(* ldp	x2, x4, [x0]                                #! EA = L0xffffffffe528; Value = 0x94750b2b5863cedf; PC = 0xaaaaaaab62a4 *)
mov x2 L0xffffffffe528;
mov x4 L0xffffffffe530;
(* ldr	x1, [x1, #4072]                             #! EA = L0xaaaaaaacbfe8; Value = 0x0000aaaaaaaba550; PC = 0xaaaaaaab62a8 *)
mov x1 L0xaaaaaaacbfe8;
(* ldr	x8, [x0, #48]                               #! EA = L0xffffffffe558; Value = 0xc70cf557f89b75c4; PC = 0xaaaaaaab62ac *)
mov x8 L0xffffffffe558;
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
(* stp	x7, x5, [x0]                                #! EA = L0xffffffffe528; PC = 0xaaaaaaab62cc *)
mov L0xffffffffe528 x7;
mov L0xffffffffe530 x5;
(* sbc	x3, x3, xzr                                 #! PC = 0xaaaaaaab62d0 *)
sbcs dontcare x3 x3 0@uint64 carry;
(* ldr	x4, [x0, #16]                               #! EA = L0xffffffffe538; Value = 0x145ae2345c2c0964; PC = 0xaaaaaaab62d4 *)
mov x4 L0xffffffffe538;
(* ldr	x2, [x1, #16]                               #! EA = L0xaaaaaaaba560; Value = 0xffffffffffffffff; PC = 0xaaaaaaab62d8 *)
mov x2 L0xaaaaaaaba560;
(* ldr	x7, [x0, #24]                               #! EA = L0xffffffffe540; Value = 0x10fc9e31ea31f870; PC = 0xaaaaaaab62dc *)
mov x7 L0xffffffffe540;
(* subs	x6, x2, x4                                 #! PC = 0xaaaaaaab62e0 *)
subc carry x6 x2 x4;
(* lsr	x2, x3, #63                                 #! PC = 0xaaaaaaab62e4 *)
split x2 dontcare x3 63;
(* csetm	x4, cc  // cc = lo, ul, last              #! PC = 0xaaaaaaab62e8 *)
cmov x4 carry 0@uint64 0xffffffffffffffff@uint64;
(* subs	x2, x6, x2                                 #! PC = 0xaaaaaaab62ec *)
subc carry x2 x6 x2;
(* str	x2, [x0, #16]                               #! EA = L0xffffffffe538; PC = 0xaaaaaaab62f0 *)
mov L0xffffffffe538 x2;
(* ldp	x5, x2, [x1, #24]                           #! EA = L0xaaaaaaaba568; Value = 0xffffffffffffffff; PC = 0xaaaaaaab62f4 *)
mov x5 L0xaaaaaaaba568;
mov x2 L0xaaaaaaaba570;
(* sbc	x4, x4, xzr                                 #! PC = 0xaaaaaaab62f8 *)
sbcs dontcare x4 x4 0@uint64 carry;
(* ldr	x3, [x0, #32]                               #! EA = L0xffffffffe548; Value = 0xb82cde6b98695f6c; PC = 0xaaaaaaab62fc *)
mov x3 L0xffffffffe548;
(* lsr	x4, x4, #63                                 #! PC = 0xaaaaaaab6300 *)
split x4 dontcare x4 63;
(* cmp	x5, x7                                      #! PC = 0xaaaaaaab6304 *)
subs carry dontcare x5 x7;
(* sub	x5, x5, x7                                  #! PC = 0xaaaaaaab6308 *)
subc dontcare x5 x5 x7;
(* csetm	x6, cc  // cc = lo, ul, last              #! PC = 0xaaaaaaab630c *)
cmov x6 carry 0@uint64 0xffffffffffffffff@uint64;
(* subs	x5, x5, x4                                 #! PC = 0xaaaaaaab6310 *)
subc carry x5 x5 x4;
(* sbc	x6, x6, xzr                                 #! PC = 0xaaaaaaab6314 *)
sbcs dontcare x6 x6 0@uint64 carry;
(* sub	x7, x2, x3                                  #! PC = 0xaaaaaaab6318 *)
subc dontcare x7 x2 x3;
(* cmp	x2, x3                                      #! PC = 0xaaaaaaab631c *)
subs carry dontcare x2 x3;
(* lsr	x2, x6, #63                                 #! PC = 0xaaaaaaab6320 *)
split x2 dontcare x6 63;
(* csetm	x3, cc  // cc = lo, ul, last              #! PC = 0xaaaaaaab6324 *)
cmov x3 carry 0@uint64 0xffffffffffffffff@uint64;
(* subs	x7, x7, x2                                 #! PC = 0xaaaaaaab6328 *)
subc carry x7 x7 x2;
(* stp	x5, x7, [x0, #24]                           #! EA = L0xffffffffe540; PC = 0xaaaaaaab632c *)
mov L0xffffffffe540 x5;
mov L0xffffffffe548 x7;
(* sbc	x3, x3, xzr                                 #! PC = 0xaaaaaaab6330 *)
sbcs dontcare x3 x3 0@uint64 carry;
(* ldp	x4, x2, [x1, #40]                           #! EA = L0xaaaaaaaba578; Value = 0x62f09bd154b5605c; PC = 0xaaaaaaab6334 *)
mov x4 L0xaaaaaaaba578;
mov x2 L0xaaaaaaaba580;
(* lsr	x3, x3, #63                                 #! PC = 0xaaaaaaab6338 *)
split x3 dontcare x3 63;
(* ldr	x6, [x0, #40]                               #! EA = L0xffffffffe550; Value = 0x3e48bbda0ea596ef; PC = 0xaaaaaaab633c *)
mov x6 L0xffffffffe550;
(* subs	x4, x4, x6                                 #! PC = 0xaaaaaaab6340 *)
subc carry x4 x4 x6;
(* sub	x6, x2, x8                                  #! PC = 0xaaaaaaab6344 *)
subc dontcare x6 x2 x8;
(* csetm	x5, cc  // cc = lo, ul, last              #! PC = 0xaaaaaaab6348 *)
cmov x5 carry 0@uint64 0xffffffffffffffff@uint64;
(* subs	x3, x4, x3                                 #! PC = 0xaaaaaaab634c *)
subc carry x3 x4 x3;
(* sbc	x5, x5, xzr                                 #! PC = 0xaaaaaaab6350 *)
sbcs dontcare x5 x5 0@uint64 carry;
(* cmp	x2, x8                                      #! PC = 0xaaaaaaab6354 *)
subs carry dontcare x2 x8;
(* ldp	x8, x7, [x0, #56]                           #! EA = L0xffffffffe560; Value = 0x482faedc1fb23eee; PC = 0xaaaaaaab6358 *)
mov x8 L0xffffffffe560;
mov x7 L0xffffffffe568;
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
(* stp	x3, x6, [x0, #40]                           #! EA = L0xffffffffe550; PC = 0xaaaaaaab6370 *)
mov L0xffffffffe550 x3;
mov L0xffffffffe558 x6;
(* cmp	x4, x8                                      #! PC = 0xaaaaaaab6374 *)
subs carry dontcare x4 x8;
(* lsr	x2, x2, #63                                 #! PC = 0xaaaaaaab6378 *)
split x2 dontcare x2 63;
(* sub	x4, x4, x8                                  #! PC = 0xaaaaaaab637c *)
subc dontcare x4 x4 x8;
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
(* ldr	x7, [x0, #72]                               #! EA = L0xffffffffe570; Value = 0x000000007d74d5a3; PC = 0xaaaaaaab63a0 *)
mov x7 L0xffffffffe570;
(* subs	x4, x6, x4                                 #! PC = 0xaaaaaaab63a4 *)
subc carry x4 x6 x4;
(* sbc	x1, x3, xzr                                 #! PC = 0xaaaaaaab63a8 *)
sbcs dontcare x1 x3 0@uint64 carry;
(* str	x2, [x0, #56]                               #! EA = L0xffffffffe560; PC = 0xaaaaaaab63ac *)
mov L0xffffffffe560 x2;
(* subs	x5, x5, x7                                 #! PC = 0xaaaaaaab63b0 *)
subc carry x5 x5 x7;
(* sub	x1, x5, x1, lsr #63                         #! PC = 0xaaaaaaab63b4 *)
split x1H dontcare x1 63;
subc dontcare x1 x5 x1H;
(* stp	x4, x1, [x0, #64]                           #! EA = L0xffffffffe568; PC = 0xaaaaaaab63b8 *)
mov L0xffffffffe568 x4;
mov L0xffffffffe570 x1;
(* #! <- SP = 0xffffffffe270 *)
#! 0xffffffffe270 = 0xffffffffe270;
(* #ret                                            #! PC = 0xaaaaaaab63bc *)
#ret                                            #! 0xaaaaaaab63bc = 0xaaaaaaab63bc;

mov cr0 L0xffffffffe4d8; mov cr1 L0xffffffffe4e0; mov cr2 L0xffffffffe4e8;
mov cr3 L0xffffffffe4f0; mov cr4 L0xffffffffe4f8; mov cr5 L0xffffffffe500;
mov cr6 L0xffffffffe508; mov cr7 L0xffffffffe510; mov cr8 L0xffffffffe518;
mov cr9 L0xffffffffe520;
mov ci0 L0xffffffffe528; mov ci1 L0xffffffffe530; mov ci2 L0xffffffffe538;
mov ci3 L0xffffffffe540; mov ci4 L0xffffffffe548; mov ci5 L0xffffffffe550;
mov ci6 L0xffffffffe558; mov ci7 L0xffffffffe560; mov ci8 L0xffffffffe568;
mov ci9 L0xffffffffe570;

assert true
    && and [eqsmod limbs 64 [cr0, cr1, cr2, cr3, cr4, cr5, cr6, cr7, cr8, cr9]
                   (-1)@640 *
                   limbs 64 [ar0, ar1, ar2, ar3, ar4, ar5, ar6, ar7, ar8, ar9]
                   limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9],
            eqsmod limbs 64 [ci0, ci1, ci2, ci3, ci4, ci5, ci6, ci7, ci8, ci9]
                   (-1)@640 *
                   limbs 64 [ai0, ai1, ai2, ai3, ai4, ai5, ai6, ai7, ai8, ai9]
                   limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9]];
assume and [eqmod limbs 64 [cr0, cr1, cr2, cr3, cr4, cr5, cr6, cr7, cr8, cr9]
                  (-1) *
                  limbs 64 [ar0, ar1, ar2, ar3, ar4, ar5, ar6, ar7, ar8, ar9]
                  limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9],
            eqmod limbs 64 [ci0, ci1, ci2, ci3, ci4, ci5, ci6, ci7, ci8, ci9]
                  (-1) *
                  limbs 64 [ai0, ai1, ai2, ai3, ai4, ai5, ai6, ai7, ai8, ai9]
                  limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9]]
    && true;

ghost I@uint64 : true && true;
{
  eqmod     limbs 64 [cr0, cr1, cr2, cr3, cr4, cr5, cr6, cr7, cr8, cr9] +
        I * limbs 64 [ci0, ci1, ci2, ci3, ci4, ci5, ci6, ci7, ci8, ci9]
        (-1)*(    limbs 64 [ar0, ar1, ar2, ar3, ar4, ar5, ar6, ar7, ar8, ar9] +
              I * limbs 64 [ai0, ai1, ai2, ai3, ai4, ai5, ai6, ai7, ai8, ai9])
        [ I**2 + 1, limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9] ]
  &&
  and [limbs 64 [cr0, cr1, cr2, cr3, cr4, cr5, cr6, cr7, cr8, cr9] <=u
       2@640 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9],
       limbs 64 [ci0, ci1, ci2, ci3, ci4, ci5, ci6, ci7, ci8, ci9] <=u
       2@640 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9]]
}

