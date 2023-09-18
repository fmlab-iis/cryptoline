(* quine: -v -isafety -jobs 20 -slicing -no_carry_constraint fp2mul610_mont.cl
Parsing Cryptoline file:                [OK]            0.035250 seconds
Checking well-formedness:               [OK]            0.008206 seconds
Transforming to SSA form:               [OK]            0.004255 seconds
Normalizing specification:              [OK]            0.005948 seconds
Rewriting assignments:                  [OK]            0.005781 seconds
Verifying program safety:               [OK]            46.734421 seconds
Verifying range assertions:             [OK]            139.687179 seconds
Verifying range specification:          [OK]            265.986697 seconds
Rewriting value-preserved casting:      [OK]            0.001220 seconds
Verifying algebraic assertions:         [OK]            1.555825 seconds
Verifying algebraic specification:      [OK]            0.950500 seconds
Verification result:                    [OK]            454.978375 seconds
*)

proc main (uint64 ar0, uint64 ar1, uint64 ar2, uint64 ar3, uint64 ar4,
           uint64 ar5, uint64 ar6, uint64 ar7, uint64 ar8, uint64 ar9,
           uint64 ai0, uint64 ai1, uint64 ai2, uint64 ai3, uint64 ai4,
           uint64 ai5, uint64 ai6, uint64 ai7, uint64 ai8, uint64 ai9,
           uint64 br0, uint64 br1, uint64 br2, uint64 br3, uint64 br4,
           uint64 br5, uint64 br6, uint64 br7, uint64 br8, uint64 br9,
           uint64 bi0, uint64 bi1, uint64 bi2, uint64 bi3, uint64 bi4,
           uint64 bi5, uint64 bi6, uint64 bi7, uint64 bi8, uint64 bi9,
           uint64 m0, uint64 m1, uint64 m2, uint64 m3, uint64 m4,
           uint64 m5, uint64 m6, uint64 m7, uint64 m8, uint64 m9) =
{
  and [m0=0xFFFFFFFFFFFFFFFF, m1=0xFFFFFFFFFFFFFFFF, m2=0xFFFFFFFFFFFFFFFF,
       m3=0xFFFFFFFFFFFFFFFF, m4=0x6E01FFFFFFFFFFFF, m5=0xB1784DE8AA5AB02E,
       m6=0x9AE7BF45048FF9AB, m7=0xB255B2FA10C4252A, m8=0x819010C251E7D88C,
       m9=0x000000027BF6A768]
&&
  and [
  limbs 64 [ar0, ar1, ar2, ar3, ar4, ar5, ar6, ar7, ar8, ar9] <u
  2@640 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9],
  limbs 64 [ai0, ai1, ai2, ai3, ai4, ai5, ai6, ai7, ai8, ai9] <u
  2@640 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9],
  limbs 64 [br0, br1, br2, br3, br4, br5, br6, br7, br8, br9] <u
  2@640 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9],
  limbs 64 [bi0, bi1, bi2, bi3, bi4, bi5, bi6, bi7, bi8, bi9] <u
  2@640 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9],
  m0=0xFFFFFFFFFFFFFFFF@64, m1=0xFFFFFFFFFFFFFFFF@64, m2=0xFFFFFFFFFFFFFFFF@64,
  m3=0xFFFFFFFFFFFFFFFF@64, m4=0x6E01FFFFFFFFFFFF@64, m5=0xB1784DE8AA5AB02E@64,
  m6=0x9AE7BF45048FF9AB@64, m7=0xB255B2FA10C4252A@64, m8=0x819010C251E7D88C@64,
  m9=0x000000027BF6A768@64 ]
}

mov L0xffffffffe6b8 ar0; mov L0xffffffffe6c0 ar1; mov L0xffffffffe6c8 ar2;
mov L0xffffffffe6d0 ar3; mov L0xffffffffe6d8 ar4; mov L0xffffffffe6e0 ar5;
mov L0xffffffffe6e8 ar6; mov L0xffffffffe6f0 ar7; mov L0xffffffffe6f8 ar8;
mov L0xffffffffe700 ar9; 
mov L0xffffffffe708 ai0; mov L0xffffffffe710 ai1; mov L0xffffffffe718 ai2;
mov L0xffffffffe720 ai3; mov L0xffffffffe728 ai4; mov L0xffffffffe730 ai5;
mov L0xffffffffe738 ai6; mov L0xffffffffe740 ai7; mov L0xffffffffe748 ai8;
mov L0xffffffffe750 ai9; 

mov L0xffffffffe758 br0; mov L0xffffffffe760 br1; mov L0xffffffffe768 br2;
mov L0xffffffffe770 br3; mov L0xffffffffe778 br4; mov L0xffffffffe780 br5;
mov L0xffffffffe788 br6; mov L0xffffffffe790 br7; mov L0xffffffffe798 br8;
mov L0xffffffffe7a0 br9;
mov L0xffffffffe7a8 bi0; mov L0xffffffffe7b0 bi1; mov L0xffffffffe7b8 bi2;
mov L0xffffffffe7c0 bi3; mov L0xffffffffe7c8 bi4; mov L0xffffffffe7d0 bi5;
mov L0xffffffffe7d8 bi6; mov L0xffffffffe7e0 bi7; mov L0xffffffffe7e8 bi8;
mov L0xffffffffe7f0 bi9;

mov L0xaaaaaaab6718 0xFFFFFFFFFFFFFFFF@uint64;
mov L0xaaaaaaab6720 0x6E01FFFFFFFFFFFF@uint64;
mov L0xaaaaaaab6728 0xB1784DE8AA5AB02E@uint64;
mov L0xaaaaaaab6730 0x9AE7BF45048FF9AB@uint64;
mov L0xaaaaaaab6738 0xB255B2FA10C4252A@uint64;
mov L0xaaaaaaab6740 0x819010C251E7D88C@uint64;
mov L0xaaaaaaab6748 0x000000027BF6A768@uint64;

mov L0xaaaaaaab67d0 0x4DE8AA5AB02E6E02@uint64;
mov L0xaaaaaaab67d8 0xBF45048FF9ABB178@uint64;
mov L0xaaaaaaab67e0 0xB2FA10C4252A9AE7@uint64;
mov L0xaaaaaaab67e8 0x10C251E7D88CB255@uint64;
mov L0xaaaaaaab67f0    0x27BF6A7688190@uint64;

nondet  x0@uint64; nondet  x1@uint64; nondet  x2@uint64;
nondet x19@uint64; nondet x20@uint64; nondet x21@uint64; nondet x22@uint64;
nondet x23@uint64; nondet x24@uint64; nondet x25@uint64; nondet x26@uint64;
nondet x27@uint64; nondet x28@uint64; nondet x29@uint64; nondet x30@uint64;
nondet sp@uint64;

nondet L0xfffff7ffd6b0@uint64; nondet L0xaaaaaaacbfd0@uint64;

(* #! -> SP = 0xffffffffe270 *)
#! 0xffffffffe270 = 0xffffffffe270;
(* sub	sp, sp, #0x2f0                              #! PC = 0xaaaaaaaae520 *)
subc dontcare sp sp 0x2f0@uint64;
(* stp	x29, x30, [sp]                              #! EA = L0xffffffffdf80; PC = 0xaaaaaaaae528 *)
mov L0xffffffffdf80 x29;
mov L0xffffffffdf88 x30;
(* mov	x29, sp                                     #! PC = 0xaaaaaaaae52c *)
mov x29 sp;
(* ldr	x3, [x3, #4048]                             #! EA = L0xaaaaaaacbfd0; Value = 0x0000fffff7ffd6b0; PC = 0xaaaaaaaae530 *)
mov x3 L0xaaaaaaacbfd0;
(* stp	x19, x20, [sp, #16]                         #! EA = L0xffffffffdf90; PC = 0xaaaaaaaae534 *)
mov L0xffffffffdf90 x19;
mov L0xffffffffdf98 x20;
(* mov	x20, x1                                     #! PC = 0xaaaaaaaae538 *)
mov x20 x1;
(* stp	x21, x22, [sp, #32]                         #! EA = L0xffffffffdfa0; PC = 0xaaaaaaaae53c *)
mov L0xffffffffdfa0 x21;
mov L0xffffffffdfa8 x22;
(* mov	x22, x2                                     #! PC = 0xaaaaaaaae540 *)
mov x22 x2;
(* add	x19, sp, #0x108                             #! PC = 0xaaaaaaaae544 *)
adds dontcare x19 sp 0x108@uint64;
(* stp	x23, x24, [sp, #48]                         #! EA = L0xffffffffdfb0; PC = 0xaaaaaaaae548 *)
mov L0xffffffffdfb0 x23;
mov L0xffffffffdfb8 x24;
(* add	x23, sp, #0x68                              #! PC = 0xaaaaaaaae54c *)
adds dontcare x23 sp 0x68@uint64;
(* add	x24, sp, #0xb8                              #! PC = 0xaaaaaaaae550 *)
adds dontcare x24 sp 0xb8@uint64;
(* stp	x25, x26, [sp, #64]                         #! EA = L0xffffffffdfc0; PC = 0xaaaaaaaae554 *)
mov L0xffffffffdfc0 x25;
mov L0xffffffffdfc8 x26;
(* add	x26, x0, #0x50                              #! PC = 0xaaaaaaaae558 *)
adds dontcare x26 x0 0x50@uint64;
(* mov	x25, x0                                     #! PC = 0xaaaaaaaae55c *)
mov x25 x0;
(* str	x27, [sp, #80]                              #! EA = L0xffffffffdfd0; PC = 0xaaaaaaaae560 *)
mov L0xffffffffdfd0 x27;
(* mov	x1, x26                                     #! PC = 0xaaaaaaaae564 *)
mov x1 x26;
(* add	x27, x20, #0x50                             #! PC = 0xaaaaaaaae568 *)
adds dontcare x27 x20 0x50@uint64;
(* add	x21, sp, #0x1a8                             #! PC = 0xaaaaaaaae56c *)
adds dontcare x21 sp 0x1a8@uint64;
(* ldr	x2, [x3]                                    #! EA = L0xfffff7ffd6b0; Value = 0xba8a7ab996303300; PC = 0xaaaaaaaae570 *)
mov x2 L0xfffff7ffd6b0;
(* str	x2, [sp, #744]                              #! EA = L0xffffffffe268; PC = 0xaaaaaaaae574 *)
mov L0xffffffffe268 x2;
(* mov	x2, #0x0                   	// #0           #! PC = 0xaaaaaaaae578 *)
mov x2 0x0@uint64;
(* mov	x2, x23                                     #! PC = 0xaaaaaaaae57c *)
mov x2 x23;
(* #bl	0xaaaaaaab79a0 <mp_add610_asm>              #! PC = 0xaaaaaaaae580 *)
#bl	0xaaaaaaab79a0 <mp_add610_asm>              #! 0xaaaaaaaae580 = 0xaaaaaaaae580;
(* #! -> SP = 0xffffffffdf80 *)
#! 0xffffffffdf80 = 0xffffffffdf80;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe6b8; Value = 0xbc8c6ee7af2eba52; PC = 0xaaaaaaab79a0 *)
mov x3 L0xffffffffe6b8;
mov x4 L0xffffffffe6c0;
(* ldp	x11, x12, [x1]                              #! EA = L0xffffffffe708; Value = 0xabd34327f67a00c5; PC = 0xaaaaaaab79a4 *)
mov x11 L0xffffffffe708;
mov x12 L0xffffffffe710;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffe6c8; Value = 0x12f249b5b505249c; PC = 0xaaaaaaab79a8 *)
mov x5 L0xffffffffe6c8;
mov x6 L0xffffffffe6d0;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0xffffffffe718; Value = 0xdb12d37b563e23c7; PC = 0xaaaaaaab79ac *)
mov x13 L0xffffffffe718;
mov x14 L0xffffffffe720;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe6d8; Value = 0xdc2780c414bc970f; PC = 0xaaaaaaab79b0 *)
mov x7 L0xffffffffe6d8;
mov x8 L0xffffffffe6e0;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0xffffffffe728; Value = 0x624ccf9246b5cc94; PC = 0xaaaaaaab79b4 *)
mov x15 L0xffffffffe728;
mov x16 L0xffffffffe730;
(* adds	x3, x3, x11                                #! PC = 0xaaaaaaab79b8 *)
adds carry x3 x3 x11;
(* adcs	x4, x4, x12                                #! PC = 0xaaaaaaab79bc *)
adcs carry x4 x4 x12 carry;
(* stp	x3, x4, [x2]                                #! EA = L0xffffffffdfe8; PC = 0xaaaaaaab79c0 *)
mov L0xffffffffdfe8 x3;
mov L0xffffffffdff0 x4;
(* ldp	x3, x4, [x0, #48]                           #! EA = L0xffffffffe6e8; Value = 0xb3d1e0f9ae656c2e; PC = 0xaaaaaaab79c4 *)
mov x3 L0xffffffffe6e8;
mov x4 L0xffffffffe6f0;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0xffffffffe738; Value = 0xa1620adc90bff912; PC = 0xaaaaaaab79c8 *)
mov x11 L0xffffffffe738;
mov x12 L0xffffffffe740;
(* adcs	x5, x5, x13                                #! PC = 0xaaaaaaab79cc *)
adcs carry x5 x5 x13 carry;
(* adcs	x6, x6, x14                                #! PC = 0xaaaaaaab79d0 *)
adcs carry x6 x6 x14 carry;
(* stp	x5, x6, [x2, #16]                           #! EA = L0xffffffffdff8; PC = 0xaaaaaaab79d4 *)
mov L0xffffffffdff8 x5;
mov L0xffffffffe000 x6;
(* ldp	x5, x6, [x0, #64]                           #! EA = L0xffffffffe6f8; Value = 0x86ac02afd8a24676; PC = 0xaaaaaaab79d8 *)
mov x5 L0xffffffffe6f8;
mov x6 L0xffffffffe700;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0xffffffffe748; Value = 0xb4bbb9ad51928a5a; PC = 0xaaaaaaab79dc *)
mov x13 L0xffffffffe748;
mov x14 L0xffffffffe750;
(* adcs	x7, x7, x15                                #! PC = 0xaaaaaaab79e0 *)
adcs carry x7 x7 x15 carry;
(* adcs	x8, x8, x16                                #! PC = 0xaaaaaaab79e4 *)
adcs carry x8 x8 x16 carry;
(* stp	x7, x8, [x2, #32]                           #! EA = L0xffffffffe008; PC = 0xaaaaaaab79e8 *)
mov L0xffffffffe008 x7;
mov L0xffffffffe010 x8;
(* adcs	x3, x3, x11                                #! PC = 0xaaaaaaab79ec *)
adcs carry x3 x3 x11 carry;
(* adcs	x4, x4, x12                                #! PC = 0xaaaaaaab79f0 *)
adcs carry x4 x4 x12 carry;
(* stp	x3, x4, [x2, #48]                           #! EA = L0xffffffffe018; PC = 0xaaaaaaab79f4 *)
mov L0xffffffffe018 x3;
mov L0xffffffffe020 x4;
(* adcs	x5, x5, x13                                #! PC = 0xaaaaaaab79f8 *)
adcs carry x5 x5 x13 carry;
(* adc	x6, x6, x14                                 #! PC = 0xaaaaaaab79fc *)
adc x6 x6 x14 carry;
(* stp	x5, x6, [x2, #64]                           #! EA = L0xffffffffe028; PC = 0xaaaaaaab7a00 *)
mov L0xffffffffe028 x5;
mov L0xffffffffe030 x6;
(* #! <- SP = 0xffffffffdf80 *)
#! 0xffffffffdf80 = 0xffffffffdf80;
(* #ret                                            #! PC = 0xaaaaaaab7a04 *)
#ret                                            #! 0xaaaaaaab7a04 = 0xaaaaaaab7a04;

(* NOTE: summary *)
assert true
    && limbs 64 [L0xffffffffdfe8, L0xffffffffdff0, L0xffffffffdff8,
                 L0xffffffffe000, L0xffffffffe008, L0xffffffffe010,
                 L0xffffffffe018, L0xffffffffe020, L0xffffffffe028,
                 L0xffffffffe030] =
       limbs 64 [ar0, ar1, ar2, ar3, ar4, ar5, ar6, ar7, ar8, ar9] +
       limbs 64 [ai0, ai1, ai2, ai3, ai4, ai5, ai6, ai7, ai8, ai9];
assume limbs 64 [L0xffffffffdfe8, L0xffffffffdff0, L0xffffffffdff8,
                 L0xffffffffe000, L0xffffffffe008, L0xffffffffe010,
                 L0xffffffffe018, L0xffffffffe020, L0xffffffffe028,
                 L0xffffffffe030] =
       limbs 64 [ar0, ar1, ar2, ar3, ar4, ar5, ar6, ar7, ar8, ar9] +
       limbs 64 [ai0, ai1, ai2, ai3, ai4, ai5, ai6, ai7, ai8, ai9] && true;

(* CUT 0 *)
cut limbs 64 [L0xffffffffdfe8, L0xffffffffdff0, L0xffffffffdff8,
              L0xffffffffe000, L0xffffffffe008, L0xffffffffe010,
              L0xffffffffe018, L0xffffffffe020, L0xffffffffe028,
              L0xffffffffe030] =
    limbs 64 [ar0, ar1, ar2, ar3, ar4, ar5, ar6, ar7, ar8, ar9] +
    limbs 64 [ai0, ai1, ai2, ai3, ai4, ai5, ai6, ai7, ai8, ai9]
 && and [limbs 64 [L0xffffffffdfe8, L0xffffffffdff0, L0xffffffffdff8,
                   L0xffffffffe000, L0xffffffffe008, L0xffffffffe010,
                   L0xffffffffe018, L0xffffffffe020, L0xffffffffe028,
                   L0xffffffffe030] <u
         4@640 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9],
         limbs 64 [br0, br1, br2, br3, br4, br5, br6, br7, br8, br9] <u
         2@640 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9],
         limbs 64 [bi0, bi1, bi2, bi3, bi4, bi5, bi6, bi7, bi8, bi9] <u
         2@640 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9],
         m0=0xFFFFFFFFFFFFFFFF@64, m1=0xFFFFFFFFFFFFFFFF@64,
         m2=0xFFFFFFFFFFFFFFFF@64, m3=0xFFFFFFFFFFFFFFFF@64,
         m4=0x6E01FFFFFFFFFFFF@64, m5=0xB1784DE8AA5AB02E@64,
         m6=0x9AE7BF45048FF9AB@64, m7=0xB255B2FA10C4252A@64,
         m8=0x819010C251E7D88C@64, m9=0x000000027BF6A768@64]
    prove with [ precondition ];

(* mov	x0, x20                                     #! PC = 0xaaaaaaaae584 *)
mov x0 x20;
(* mov	x1, x27                                     #! PC = 0xaaaaaaaae588 *)
mov x1 x27;
(* mov	x2, x24                                     #! PC = 0xaaaaaaaae58c *)
mov x2 x24;
(* #bl	0xaaaaaaab79a0 <mp_add610_asm>              #! PC = 0xaaaaaaaae590 *)
#bl	0xaaaaaaab79a0 <mp_add610_asm>              #! 0xaaaaaaaae590 = 0xaaaaaaaae590;
(* #! -> SP = 0xffffffffdf80 *)
#! 0xffffffffdf80 = 0xffffffffdf80;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe758; Value = 0x545c6864103dce42; PC = 0xaaaaaaab79a0 *)
mov x3 L0xffffffffe758;
mov x4 L0xffffffffe760;
(* ldp	x11, x12, [x1]                              #! EA = L0xffffffffe7a8; Value = 0xf0721ae7b0ee18c2; PC = 0xaaaaaaab79a4 *)
mov x11 L0xffffffffe7a8;
mov x12 L0xffffffffe7b0;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffe768; Value = 0x00124067f0f875c2; PC = 0xaaaaaaab79a8 *)
mov x5 L0xffffffffe768;
mov x6 L0xffffffffe770;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0xffffffffe7b8; Value = 0x55ed30181229a118; PC = 0xaaaaaaab79ac *)
mov x13 L0xffffffffe7b8;
mov x14 L0xffffffffe7c0;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe778; Value = 0xc324473757bc68c1; PC = 0xaaaaaaab79b0 *)
mov x7 L0xffffffffe778;
mov x8 L0xffffffffe780;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0xffffffffe7c8; Value = 0x3647d345b923d00a; PC = 0xaaaaaaab79b4 *)
mov x15 L0xffffffffe7c8;
mov x16 L0xffffffffe7d0;
(* adds	x3, x3, x11                                #! PC = 0xaaaaaaab79b8 *)
adds carry x3 x3 x11;
(* adcs	x4, x4, x12                                #! PC = 0xaaaaaaab79bc *)
adcs carry x4 x4 x12 carry;
(* stp	x3, x4, [x2]                                #! EA = L0xffffffffe038; PC = 0xaaaaaaab79c0 *)
mov L0xffffffffe038 x3;
mov L0xffffffffe040 x4;
(* ldp	x3, x4, [x0, #48]                           #! EA = L0xffffffffe788; Value = 0x9807bb0b581ba25f; PC = 0xaaaaaaab79c4 *)
mov x3 L0xffffffffe788;
mov x4 L0xffffffffe790;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0xffffffffe7d8; Value = 0x9ccfa4405cc535c0; PC = 0xaaaaaaab79c8 *)
mov x11 L0xffffffffe7d8;
mov x12 L0xffffffffe7e0;
(* adcs	x5, x5, x13                                #! PC = 0xaaaaaaab79cc *)
adcs carry x5 x5 x13 carry;
(* adcs	x6, x6, x14                                #! PC = 0xaaaaaaab79d0 *)
adcs carry x6 x6 x14 carry;
(* stp	x5, x6, [x2, #16]                           #! EA = L0xffffffffe048; PC = 0xaaaaaaab79d4 *)
mov L0xffffffffe048 x5;
mov L0xffffffffe050 x6;
(* ldp	x5, x6, [x0, #64]                           #! EA = L0xffffffffe798; Value = 0x72d1bb6342be8fd8; PC = 0xaaaaaaab79d8 *)
mov x5 L0xffffffffe798;
mov x6 L0xffffffffe7a0;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0xffffffffe7e8; Value = 0x367156d3d98f96d6; PC = 0xaaaaaaab79dc *)
mov x13 L0xffffffffe7e8;
mov x14 L0xffffffffe7f0;
(* adcs	x7, x7, x15                                #! PC = 0xaaaaaaab79e0 *)
adcs carry x7 x7 x15 carry;
(* adcs	x8, x8, x16                                #! PC = 0xaaaaaaab79e4 *)
adcs carry x8 x8 x16 carry;
(* stp	x7, x8, [x2, #32]                           #! EA = L0xffffffffe058; PC = 0xaaaaaaab79e8 *)
mov L0xffffffffe058 x7;
mov L0xffffffffe060 x8;
(* adcs	x3, x3, x11                                #! PC = 0xaaaaaaab79ec *)
adcs carry x3 x3 x11 carry;
(* adcs	x4, x4, x12                                #! PC = 0xaaaaaaab79f0 *)
adcs carry x4 x4 x12 carry;
(* stp	x3, x4, [x2, #48]                           #! EA = L0xffffffffe068; PC = 0xaaaaaaab79f4 *)
mov L0xffffffffe068 x3;
mov L0xffffffffe070 x4;
(* adcs	x5, x5, x13                                #! PC = 0xaaaaaaab79f8 *)
adcs carry x5 x5 x13 carry;
(* adc	x6, x6, x14                                 #! PC = 0xaaaaaaab79fc *)
adc x6 x6 x14 carry;
(* stp	x5, x6, [x2, #64]                           #! EA = L0xffffffffe078; PC = 0xaaaaaaab7a00 *)
mov L0xffffffffe078 x5;
mov L0xffffffffe080 x6;
(* #! <- SP = 0xffffffffdf80 *)
#! 0xffffffffdf80 = 0xffffffffdf80;
(* #ret                                            #! PC = 0xaaaaaaab7a04 *)
#ret                                            #! 0xaaaaaaab7a04 = 0xaaaaaaab7a04;

(* NOTE: summary *)
assert true
    && limbs 64 [L0xffffffffe038, L0xffffffffe040, L0xffffffffe048,
                 L0xffffffffe050, L0xffffffffe058, L0xffffffffe060,
                 L0xffffffffe068, L0xffffffffe070, L0xffffffffe078,
                 L0xffffffffe080] =
       limbs 64 [br0, br1, br2, br3, br4, br5, br6, br7, br8, br9] +
       limbs 64 [bi0, bi1, bi2, bi3, bi4, bi5, bi6, bi7, bi8, bi9];
assume limbs 64 [L0xffffffffe038, L0xffffffffe040, L0xffffffffe048,
                 L0xffffffffe050, L0xffffffffe058, L0xffffffffe060,
                 L0xffffffffe068, L0xffffffffe070, L0xffffffffe078,
                 L0xffffffffe080] =
       limbs 64 [br0, br1, br2, br3, br4, br5, br6, br7, br8, br9] +
       limbs 64 [bi0, bi1, bi2, bi3, bi4, bi5, bi6, bi7, bi8, bi9] && true;

(* CUT 1 *)
cut limbs 64 [L0xffffffffe038, L0xffffffffe040, L0xffffffffe048,
              L0xffffffffe050, L0xffffffffe058, L0xffffffffe060,
              L0xffffffffe068, L0xffffffffe070, L0xffffffffe078,
              L0xffffffffe080] =
    limbs 64 [br0, br1, br2, br3, br4, br5, br6, br7, br8, br9] +
    limbs 64 [bi0, bi1, bi2, bi3, bi4, bi5, bi6, bi7, bi8, bi9]
 && limbs 64 [L0xffffffffe038, L0xffffffffe040, L0xffffffffe048,
              L0xffffffffe050, L0xffffffffe058, L0xffffffffe060,
              L0xffffffffe068, L0xffffffffe070, L0xffffffffe078,
              L0xffffffffe080] <u
    4@640 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9];

(* mov	x1, x20                                     #! PC = 0xaaaaaaaae594 *)
mov x1 x20;
(* mov	x0, x25                                     #! PC = 0xaaaaaaaae598 *)
mov x0 x25;
(* mov	x2, x19                                     #! PC = 0xaaaaaaaae59c *)
mov x2 x19;
(* mov	w3, #0xa                   	// #10          #! PC = 0xaaaaaaaae5a0 *)
mov w3 0xa@uint64;
(* #bl	0xaaaaaaab6710 <mp_mul>                     #! PC = 0xaaaaaaaae5a4 *)
#bl	0xaaaaaaab6710 <mp_mul>                     #! 0xaaaaaaaae5a4 = 0xaaaaaaaae5a4;
(* #! -> SP = 0xffffffffdf80 *)
#! 0xffffffffdf80 = 0xffffffffdf80;
(* #b	0xaaaaaaab6b30 <mul610_asm>                  #! PC = 0xaaaaaaab6710 *)
#b	0xaaaaaaab6b30 <mul610_asm>                  #! 0xaaaaaaab6710 = 0xaaaaaaab6710;
(* sub	sp, sp, #0x60                               #! PC = 0xaaaaaaab6b30 *)
subc dontcare sp sp 0x60@uint64;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe6b8; Value = 0xbc8c6ee7af2eba52; PC = 0xaaaaaaab6b34 *)
mov x3 L0xffffffffe6b8;
mov x4 L0xffffffffe6c0;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffe6c8; Value = 0x12f249b5b505249c; PC = 0xaaaaaaab6b38 *)
mov x5 L0xffffffffe6c8;
mov x6 L0xffffffffe6d0;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe6d8; Value = 0xdc2780c414bc970f; PC = 0xaaaaaaab6b3c *)
mov x7 L0xffffffffe6d8;
mov x8 L0xffffffffe6e0;
(* ldp	x10, x11, [x0, #48]                         #! EA = L0xffffffffe6e8; Value = 0xb3d1e0f9ae656c2e; PC = 0xaaaaaaab6b40 *)
mov x10 L0xffffffffe6e8;
mov x11 L0xffffffffe6f0;
(* ldp	x12, x13, [x0, #64]                         #! EA = L0xffffffffe6f8; Value = 0x86ac02afd8a24676; PC = 0xaaaaaaab6b44 *)
mov x12 L0xffffffffe6f8;
mov x13 L0xffffffffe700;
(* stp	x25, x26, [sp, #48]                         #! EA = L0xffffffffdf50; PC = 0xaaaaaaab6b48 *)
mov L0xffffffffdf50 x25;
mov L0xffffffffdf58 x26;
(* stp	x27, x28, [sp, #64]                         #! EA = L0xffffffffdf60; PC = 0xaaaaaaab6b4c *)
mov L0xffffffffdf60 x27;
mov L0xffffffffdf68 x28;
(* stp	x29, x30, [sp, #80]                         #! EA = L0xffffffffdf70; PC = 0xaaaaaaab6b50 *)
mov L0xffffffffdf70 x29;
mov L0xffffffffdf78 x30;
(* adds	x26, x3, x8                                #! PC = 0xaaaaaaab6b54 *)
adds carry x26 x3 x8;
(* stp	x21, x22, [sp, #16]                         #! EA = L0xffffffffdf30; PC = 0xaaaaaaab6b58 *)
mov L0xffffffffdf30 x21;
mov L0xffffffffdf38 x22;
(* adcs	x27, x4, x10                               #! PC = 0xaaaaaaab6b5c *)
adcs carry x27 x4 x10 carry;
(* stp	x23, x24, [sp, #32]                         #! EA = L0xffffffffdf40; PC = 0xaaaaaaab6b60 *)
mov L0xffffffffdf40 x23;
mov L0xffffffffdf48 x24;
(* adcs	x28, x5, x11                               #! PC = 0xaaaaaaab6b64 *)
adcs carry x28 x5 x11 carry;
(* ldp	x21, x22, [x1]                              #! EA = L0xffffffffe758; Value = 0x545c6864103dce42; PC = 0xaaaaaaab6b68 *)
mov x21 L0xffffffffe758;
mov x22 L0xffffffffe760;
(* adcs	x29, x6, x12                               #! PC = 0xaaaaaaab6b6c *)
adcs carry x29 x6 x12 carry;
(* ldp	x14, x15, [x1, #48]                         #! EA = L0xffffffffe788; Value = 0x9807bb0b581ba25f; PC = 0xaaaaaaab6b70 *)
mov x14 L0xffffffffe788;
mov x15 L0xffffffffe790;
(* adcs	x30, x7, x13                               #! PC = 0xaaaaaaab6b74 *)
adcs carry x30 x7 x13 carry;
(* ldp	x23, x24, [x1, #16]                         #! EA = L0xffffffffe768; Value = 0x00124067f0f875c2; PC = 0xaaaaaaab6b78 *)
mov x23 L0xffffffffe768;
mov x24 L0xffffffffe770;
(* adc	x9, xzr, xzr                                #! PC = 0xaaaaaaab6b7c *)
adc x9 0@uint64 0@uint64 carry;
(* ldp	x25, x13, [x1, #32]                         #! EA = L0xffffffffe778; Value = 0xc324473757bc68c1; PC = 0xaaaaaaab6b80 *)
mov x25 L0xffffffffe778;
mov x13 L0xffffffffe780;
(* adds	x13, x13, x21                              #! PC = 0xaaaaaaab6b84 *)
adds carry x13 x13 x21;
(* ldp	x16, x17, [x1, #64]                         #! EA = L0xffffffffe798; Value = 0x72d1bb6342be8fd8; PC = 0xaaaaaaab6b88 *)
mov x16 L0xffffffffe798;
mov x17 L0xffffffffe7a0;
(* adcs	x14, x14, x22                              #! PC = 0xaaaaaaab6b8c *)
adcs carry x14 x14 x22 carry;
(* adcs	x15, x15, x23                              #! PC = 0xaaaaaaab6b90 *)
adcs carry x15 x15 x23 carry;
(* adcs	x16, x16, x24                              #! PC = 0xaaaaaaab6b94 *)
adcs carry x16 x16 x24 carry;
(* adcs	x17, x17, x25                              #! PC = 0xaaaaaaab6b98 *)
adcs carry x17 x17 x25 carry;
(* adc	x8, xzr, xzr                                #! PC = 0xaaaaaaab6b9c *)
adc x8 0@uint64 0@uint64 carry;

ghost x8m@uint64, x9m@uint64 :
      and [x8m = x8, x9m = x9] && and [x8m = x8, x9m = x9];

(* neg	x8, x8                                      #! PC = 0xaaaaaaab6ba0 *)
subc dontcare x8 0@uint64 x8;
(* neg	x9, x9                                      #! PC = 0xaaaaaaab6ba4 *)
subc dontcare x9 0@uint64 x9;
(* stp	x19, x20, [sp]                              #! EA = L0xffffffffdf20; PC = 0xaaaaaaab6ba8 *)
mov L0xffffffffdf20 x19;
mov L0xffffffffdf28 x20;
(* and	x3, x13, x9                                 #! PC = 0xaaaaaaab6bac *)
and x3@uint64 x13 x9;
(* and	x4, x14, x9                                 #! PC = 0xaaaaaaab6bb0 *)
and x4@uint64 x14 x9;
(* and	x5, x15, x9                                 #! PC = 0xaaaaaaab6bb4 *)
and x5@uint64 x15 x9;
(* and	x6, x16, x9                                 #! PC = 0xaaaaaaab6bb8 *)
and x6@uint64 x16 x9;
(* and	x7, x17, x9                                 #! PC = 0xaaaaaaab6bbc *)
and x7@uint64 x17 x9;
(* and	x9, x27, x8                                 #! PC = 0xaaaaaaab6bc0 *)
and x9@uint64 x27 x8;
(* and	x10, x28, x8                                #! PC = 0xaaaaaaab6bc4 *)
and x10@uint64 x28 x8;
(* and	x11, x29, x8                                #! PC = 0xaaaaaaab6bc8 *)
and x11@uint64 x29 x8;
(* and	x12, x30, x8                                #! PC = 0xaaaaaaab6bcc *)
and x12@uint64 x30 x8;
(* and	x8, x26, x8                                 #! PC = 0xaaaaaaab6bd0 *)
and x8@uint64 x26 x8;

(* NOTE: mask *)
assert true
    && and [x8m * (1@64 - x8m) = 0@64, x9m * (1@64 - x9m) = 0@64,
            limbs 64 [x3, x4, x5, x6, x7] =
            (uext x9m 256) * limbs 64 [x13, x14, x15, x16, x17],
            limbs 64 [x8, x9, x10, x11, x12] =
            (uext x8m 256) * limbs 64 [x26, x27, x28, x29, x30]];
assume and [x8m * (1 - x8m) = 0, x9m * (1 - x9m) = 0,
            limbs 64 [x3, x4, x5, x6, x7] =
            x9m * limbs 64 [x13, x14, x15, x16, x17],
            limbs 64 [x8, x9, x10, x11, x12] =
            x8m * limbs 64 [x26, x27, x28, x29, x30]] && true;

(* adds	x8, x8, x3                                 #! PC = 0xaaaaaaab6bd4 *)
adds carry x8 x8 x3;
(* adcs	x9, x9, x4                                 #! PC = 0xaaaaaaab6bd8 *)
adcs carry x9 x9 x4 carry;
(* stp	x26, x27, [x2]                              #! EA = L0xffffffffe088; PC = 0xaaaaaaab6bdc *)
mov L0xffffffffe088 x26;
mov L0xffffffffe090 x27;
(* adcs	x10, x10, x5                               #! PC = 0xaaaaaaab6be0 *)
adcs carry x10 x10 x5 carry;
(* stp	x28, x29, [x2, #16]                         #! EA = L0xffffffffe098; PC = 0xaaaaaaab6be4 *)
mov L0xffffffffe098 x28;
mov L0xffffffffe0a0 x29;
(* adcs	x11, x11, x6                               #! PC = 0xaaaaaaab6be8 *)
adcs carry x11 x11 x6 carry;
(* str	x30, [x2, #32]                              #! EA = L0xffffffffe0a8; PC = 0xaaaaaaab6bec *)
mov L0xffffffffe0a8 x30;
(* adc	x12, x12, x7                                #! PC = 0xaaaaaaab6bf0 *)
adcs dontcare x12 x12 x7 carry;

ghost a0o@uint64, a1o@uint64, a2o@uint64, a3o@uint64, a4o@uint64,
      b0o@uint64, b1o@uint64, b2o@uint64, b3o@uint64, b4o@uint64 :
      and [a0o=x26, a1o=x27, a2o=x28, a3o=x29, a4o=x30,
           b0o=x13, b1o=x14, b2o=x15, b3o=x16, b4o=x17]
   && and [a0o=x26, a1o=x27, a2o=x28, a3o=x29, a4o=x30,
           b0o=x13, b1o=x14, b2o=x15, b3o=x16, b4o=x17];

(* adds	x3, x26, x29                               #! PC = 0xaaaaaaab6bf4 *)
adds carry x3 x26 x29;
(* adcs	x4, x27, x30                               #! PC = 0xaaaaaaab6bf8 *)
adcs carry x4 x27 x30 carry;
(* adcs	x5, x28, xzr                               #! PC = 0xaaaaaaab6bfc *)
adcs carry x5 x28 0@uint64 carry;
(* adc	x24, xzr, xzr                               #! PC = 0xaaaaaaab6c00 *)
adc x24 0@uint64 0@uint64 carry;
(* adds	x6, x13, x16                               #! PC = 0xaaaaaaab6c04 *)
adds carry x6 x13 x16;
(* adcs	x7, x14, x17                               #! PC = 0xaaaaaaab6c08 *)
adcs carry x7 x14 x17 carry;
(* adcs	x19, x15, xzr                              #! PC = 0xaaaaaaab6c0c *)
adcs carry x19 x15 0@uint64 carry;
(* adc	x25, xzr, xzr                               #! PC = 0xaaaaaaab6c10 *)
adc x25 0@uint64 0@uint64 carry;

ghost x24m@uint64, x25m@uint64 :
      and [x24m = x24, x25m = x25] && and [x24m = x24, x25m = x25];

(* neg	x24, x24                                    #! PC = 0xaaaaaaab6c14 *)
subc dontcare x24 0@uint64 x24;
(* neg	x25, x25                                    #! PC = 0xaaaaaaab6c18 *)
subc dontcare x25 0@uint64 x25;
(* and	x20, x6, x24                                #! PC = 0xaaaaaaab6c1c *)
and x20@uint64 x6 x24;
(* and	x21, x7, x24                                #! PC = 0xaaaaaaab6c20 *)
and x21@uint64 x7 x24;
(* and	x22, x19, x24                               #! PC = 0xaaaaaaab6c24 *)
and x22@uint64 x19 x24;
(* mul	x26, x3, x6                                 #! PC = 0xaaaaaaab6c28 *)
mull Hx3x6 x26 x3 x6;
(* mul	x27, x3, x7                                 #! PC = 0xaaaaaaab6c2c *)
mull Hx3x7 x27 x3 x7;
(* and	x23, x3, x25                                #! PC = 0xaaaaaaab6c30 *)
and x23@uint64 x3 x25;
(* and	x24, x4, x25                                #! PC = 0xaaaaaaab6c34 *)
and x24@uint64 x4 x25;
(* and	x25, x5, x25                                #! PC = 0xaaaaaaab6c38 *)
and x25@uint64 x5 x25;

(* NOTE: mask *)
assert true
    && and [x24m * (1@64-x24m) = 0@64, x25m * (1@64 - x25m) = 0@64,
            limbs 64 [x20, x21, x22] = uext x24m 128 * limbs 64 [x6, x7, x19],
            limbs 64 [x23, x24, x25] = uext x25m 128 * limbs 64 [x3, x4,  x5]];
assume and [x24m * (1-x24m) = 0, x25m * (1 - x25m) = 0,
            limbs 64 [x20, x21, x22] = x24m * limbs 64 [x6, x7, x19],
            limbs 64 [x23, x24, x25] = x25m * limbs 64 [x3, x4,  x5]] && true;

(* umulh	x29, x3, x6                               #! PC = 0xaaaaaaab6c3c *)
mov x29 Hx3x6;
(* umulh	x28, x3, x7                               #! PC = 0xaaaaaaab6c40 *)
mov x28 Hx3x7;
(* adds	x20, x20, x23                              #! PC = 0xaaaaaaab6c44 *)
adds carry x20 x20 x23;
(* adcs	x21, x21, x24                              #! PC = 0xaaaaaaab6c48 *)
adcs carry x21 x21 x24 carry;
(* adc	x22, x22, x25                               #! PC = 0xaaaaaaab6c4c *)
adc x22 x22 x25 carry;
(* mul	x30, x4, x6                                 #! PC = 0xaaaaaaab6c50 *)
mull Hx4x6 x30 x4 x6;
(* umulh	x23, x4, x6                               #! PC = 0xaaaaaaab6c54 *)
mov x23 Hx4x6;
(* adds	x27, x27, x29                              #! PC = 0xaaaaaaab6c58 *)
adds carry x27 x27 x29;
(* adc	x28, x28, xzr                               #! PC = 0xaaaaaaab6c5c *)
adc x28 x28 0@uint64 carry;
(* mul	x25, x4, x7                                 #! PC = 0xaaaaaaab6c60 *)
mull Hx4x7 x25 x4 x7;
(* umulh	x29, x4, x7                               #! PC = 0xaaaaaaab6c64 *)
mov x29 Hx4x7;
(* adds	x27, x27, x30                              #! PC = 0xaaaaaaab6c68 *)
adds carry x27 x27 x30;
(* adcs	x28, x28, x23                              #! PC = 0xaaaaaaab6c6c *)
adcs carry x28 x28 x23 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab6c70 *)
adc x29 x29 0@uint64 carry;
(* mul	x30, x3, x19                                #! PC = 0xaaaaaaab6c74 *)
mull Hx3x19 x30 x3 x19;
(* umulh	x23, x3, x19                              #! PC = 0xaaaaaaab6c78 *)
mov x23 Hx3x19;
(* adds	x28, x28, x25                              #! PC = 0xaaaaaaab6c7c *)
adds carry x28 x28 x25;
(* adcs	x29, x29, x23                              #! PC = 0xaaaaaaab6c80 *)
adcs carry x29 x29 x23 carry;
(* adc	x24, xzr, xzr                               #! PC = 0xaaaaaaab6c84 *)
adc x24 0@uint64 0@uint64 carry;
(* mul	x25, x5, x6                                 #! PC = 0xaaaaaaab6c88 *)
mull Hx5x6 x25 x5 x6;
(* umulh	x23, x5, x6                               #! PC = 0xaaaaaaab6c8c *)
mov x23 Hx5x6;
(* adds	x28, x28, x30                              #! PC = 0xaaaaaaab6c90 *)
adds carry x28 x28 x30;
(* adcs	x29, x29, x23                              #! PC = 0xaaaaaaab6c94 *)
adcs carry x29 x29 x23 carry;
(* adc	x24, x24, xzr                               #! PC = 0xaaaaaaab6c98 *)
adc x24 x24 0@uint64 carry;
(* mul	x30, x4, x19                                #! PC = 0xaaaaaaab6c9c *)
mull Hx4x19 x30 x4 x19;
(* umulh	x23, x4, x19                              #! PC = 0xaaaaaaab6ca0 *)
mov x23 Hx4x19;
(* adds	x28, x28, x25                              #! PC = 0xaaaaaaab6ca4 *)
adds carry x28 x28 x25;
(* adcs	x29, x29, x30                              #! PC = 0xaaaaaaab6ca8 *)
adcs carry x29 x29 x30 carry;
(* adcs	x24, x24, x23                              #! PC = 0xaaaaaaab6cac *)
adcs carry x24 x24 x23 carry;
(* adc	x25, xzr, xzr                               #! PC = 0xaaaaaaab6cb0 *)
adc x25 0@uint64 0@uint64 carry;
(* mul	x30, x5, x7                                 #! PC = 0xaaaaaaab6cb4 *)
mull Hx5x7 x30 x5 x7;
(* umulh	x23, x5, x7                               #! PC = 0xaaaaaaab6cb8 *)
mov x23 Hx5x7;
(* adds	x29, x29, x30                              #! PC = 0xaaaaaaab6cbc *)
adds carry x29 x29 x30;
(* adcs	x24, x24, x23                              #! PC = 0xaaaaaaab6cc0 *)
adcs carry x24 x24 x23 carry;
(* adc	x25, x25, xzr                               #! PC = 0xaaaaaaab6cc4 *)
adc x25 x25 0@uint64 carry;
(* mul	x30, x5, x19                                #! PC = 0xaaaaaaab6cc8 *)
mull Hx5x19 x30 x5 x19;
(* umulh	x23, x5, x19                              #! PC = 0xaaaaaaab6ccc *)
mov x23 Hx5x19;
(* adds	x30, x30, x24                              #! PC = 0xaaaaaaab6cd0 *)
adds carry x30 x30 x24;
(* adc	x23, x23, x25                               #! PC = 0xaaaaaaab6cd4 *)
adc x23 x23 x25 carry;
(* adds	x20, x29, x20                              #! PC = 0xaaaaaaab6cd8 *)
adds carry x20 x29 x20;
(* adcs	x21, x30, x21                              #! PC = 0xaaaaaaab6cdc *)
adcs carry x21 x30 x21 carry;
(* ldp	x29, x30, [x2]                              #! EA = L0xffffffffe088; Value = 0xe82ed71a77f269c6; PC = 0xaaaaaaab6ce0 *)
mov x29 L0xffffffffe088;
mov x30 L0xffffffffe090;
(* adc	x22, x23, x22                               #! PC = 0xaaaaaaab6ce4 *)
adcs dontcare x22 x23 x22 carry;
(* ldr	x23, [x2, #16]                              #! EA = L0xffffffffe098; Value = 0x65a7bbdeb39e3df7; PC = 0xaaaaaaab6ce8 *)
mov x23 L0xffffffffe098;
(* mul	x3, x29, x13                                #! PC = 0xaaaaaaab6cec *)
mull Hx29x13 x3 x29 x13;
(* mul	x4, x29, x14                                #! PC = 0xaaaaaaab6cf0 *)
mull Hx29x14 x4 x29 x14;
(* umulh	x6, x29, x13                              #! PC = 0xaaaaaaab6cf4 *)
mov x6 Hx29x13;
(* umulh	x5, x29, x14                              #! PC = 0xaaaaaaab6cf8 *)
mov x5 Hx29x14;
(* mul	x7, x30, x13                                #! PC = 0xaaaaaaab6cfc *)
mull Hx30x13 x7 x30 x13;
(* umulh	x19, x30, x13                             #! PC = 0xaaaaaaab6d00 *)
mov x19 Hx30x13;
(* adds	x4, x4, x6                                 #! PC = 0xaaaaaaab6d04 *)
adds carry x4 x4 x6;
(* adc	x5, x5, xzr                                 #! PC = 0xaaaaaaab6d08 *)
adc x5 x5 0@uint64 carry;
(* mul	x25, x30, x14                               #! PC = 0xaaaaaaab6d0c *)
mull Hx30x14 x25 x30 x14;
(* umulh	x6, x30, x14                              #! PC = 0xaaaaaaab6d10 *)
mov x6 Hx30x14;
(* adds	x4, x4, x7                                 #! PC = 0xaaaaaaab6d14 *)
adds carry x4 x4 x7;
(* adcs	x5, x5, x19                                #! PC = 0xaaaaaaab6d18 *)
adcs carry x5 x5 x19 carry;
(* adc	x6, x6, xzr                                 #! PC = 0xaaaaaaab6d1c *)
adc x6 x6 0@uint64 carry;
(* mul	x7, x29, x15                                #! PC = 0xaaaaaaab6d20 *)
mull Hx29x15 x7 x29 x15;
(* umulh	x19, x29, x15                             #! PC = 0xaaaaaaab6d24 *)
mov x19 Hx29x15;
(* adds	x5, x5, x25                                #! PC = 0xaaaaaaab6d28 *)
adds carry x5 x5 x25;
(* adcs	x6, x6, x19                                #! PC = 0xaaaaaaab6d2c *)
adcs carry x6 x6 x19 carry;
(* adc	x24, xzr, xzr                               #! PC = 0xaaaaaaab6d30 *)
adc x24 0@uint64 0@uint64 carry;
(* mul	x25, x23, x13                               #! PC = 0xaaaaaaab6d34 *)
mull Hx23x13 x25 x23 x13;
(* umulh	x19, x23, x13                             #! PC = 0xaaaaaaab6d38 *)
mov x19 Hx23x13;
(* adds	x5, x5, x7                                 #! PC = 0xaaaaaaab6d3c *)
adds carry x5 x5 x7;
(* adcs	x6, x6, x19                                #! PC = 0xaaaaaaab6d40 *)
adcs carry x6 x6 x19 carry;
(* adc	x24, x24, xzr                               #! PC = 0xaaaaaaab6d44 *)
adc x24 x24 0@uint64 carry;
(* mul	x7, x30, x15                                #! PC = 0xaaaaaaab6d48 *)
mull Hx30x15 x7 x30 x15;
(* umulh	x19, x30, x15                             #! PC = 0xaaaaaaab6d4c *)
mov x19 Hx30x15;
(* adds	x5, x5, x25                                #! PC = 0xaaaaaaab6d50 *)
adds carry x5 x5 x25;
(* adcs	x6, x6, x7                                 #! PC = 0xaaaaaaab6d54 *)
adcs carry x6 x6 x7 carry;
(* adcs	x24, x24, x19                              #! PC = 0xaaaaaaab6d58 *)
adcs carry x24 x24 x19 carry;
(* adc	x25, xzr, xzr                               #! PC = 0xaaaaaaab6d5c *)
adc x25 0@uint64 0@uint64 carry;
(* mul	x7, x23, x14                                #! PC = 0xaaaaaaab6d60 *)
mull Hx23x14 x7 x23 x14;
(* umulh	x19, x23, x14                             #! PC = 0xaaaaaaab6d64 *)
mov x19 Hx23x14;
(* adds	x6, x6, x7                                 #! PC = 0xaaaaaaab6d68 *)
adds carry x6 x6 x7;
(* adcs	x24, x24, x19                              #! PC = 0xaaaaaaab6d6c *)
adcs carry x24 x24 x19 carry;
(* adc	x25, x25, xzr                               #! PC = 0xaaaaaaab6d70 *)
adc x25 x25 0@uint64 carry;
(* mul	x7, x23, x15                                #! PC = 0xaaaaaaab6d74 *)
mull Hx23x15 x7 x23 x15;
(* umulh	x19, x23, x15                             #! PC = 0xaaaaaaab6d78 *)
mov x19 Hx23x15;
(* adds	x7, x7, x24                                #! PC = 0xaaaaaaab6d7c *)
adds carry x7 x7 x24;
(* adc	x19, x19, x25                               #! PC = 0xaaaaaaab6d80 *)
adc x19 x19 x25 carry;
(* ldp	x29, x30, [x2, #24]                         #! EA = L0xffffffffe0a0; Value = 0x9624a47396efd722; PC = 0xaaaaaaab6d84 *)
mov x29 L0xffffffffe0a0;
mov x30 L0xffffffffe0a8;
(* subs	x26, x26, x3                               #! PC = 0xaaaaaaab6d88 *)
subc carry x26 x26 x3;
(* sbcs	x27, x27, x4                               #! PC = 0xaaaaaaab6d8c *)
sbcs carry x27 x27 x4 carry;
(* mul	x13, x29, x16                               #! PC = 0xaaaaaaab6d90 *)
mull Hx29x16 x13 x29 x16;
(* umulh	x23, x29, x16                             #! PC = 0xaaaaaaab6d94 *)
mov x23 Hx29x16;
(* sbcs	x28, x28, x5                               #! PC = 0xaaaaaaab6d98 *)
sbcs carry x28 x28 x5 carry;
(* sbcs	x20, x20, x6                               #! PC = 0xaaaaaaab6d9c *)
sbcs carry x20 x20 x6 carry;
(* mul	x14, x29, x17                               #! PC = 0xaaaaaaab6da0 *)
mull Hx29x17 x14 x29 x17;
(* umulh	x15, x29, x17                             #! PC = 0xaaaaaaab6da4 *)
mov x15 Hx29x17;
(* sbcs	x21, x21, x7                               #! PC = 0xaaaaaaab6da8 *)
sbcs carry x21 x21 x7 carry;
(* sbc	x22, x22, x19                               #! PC = 0xaaaaaaab6dac *)
sbcs dontcare x22 x22 x19 carry;
(* mul	x29, x30, x16                               #! PC = 0xaaaaaaab6db0 *)
mull Hx30x16 x29 x30 x16;
(* umulh	x16, x30, x16                             #! PC = 0xaaaaaaab6db4 *)
mov x16 Hx30x16;
(* adds	x14, x14, x23                              #! PC = 0xaaaaaaab6db8 *)
adds carry x14 x14 x23;
(* adc	x15, x15, xzr                               #! PC = 0xaaaaaaab6dbc *)
adc x15 x15 0@uint64 carry;
(* mul	x24, x30, x17                               #! PC = 0xaaaaaaab6dc0 *)
mull Hx30x17 x24 x30 x17;
(* umulh	x17, x30, x17                             #! PC = 0xaaaaaaab6dc4 *)
mov x17 Hx30x17;
(* adds	x14, x14, x29                              #! PC = 0xaaaaaaab6dc8 *)
adds carry x14 x14 x29;
(* adcs	x15, x15, x16                              #! PC = 0xaaaaaaab6dcc *)
adcs carry x15 x15 x16 carry;
(* adc	x23, xzr, xzr                               #! PC = 0xaaaaaaab6dd0 *)
adc x23 0@uint64 0@uint64 carry;
(* adds	x15, x15, x24                              #! PC = 0xaaaaaaab6dd4 *)
adds carry x15 x15 x24;
(* adc	x23, x23, x17                               #! PC = 0xaaaaaaab6dd8 *)
adc x23 x23 x17 carry;
(* subs	x26, x26, x13                              #! PC = 0xaaaaaaab6ddc *)
subc carry x26 x26 x13;
(* sbcs	x27, x27, x14                              #! PC = 0xaaaaaaab6de0 *)
sbcs carry x27 x27 x14 carry;
(* sbcs	x28, x28, x15                              #! PC = 0xaaaaaaab6de4 *)
sbcs carry x28 x28 x15 carry;
(* sbcs	x20, x20, x23                              #! PC = 0xaaaaaaab6de8 *)
sbcs carry x20 x20 x23 carry;
(* sbcs	x21, x21, xzr                              #! PC = 0xaaaaaaab6dec *)
sbcs carry x21 x21 0@uint64 carry;
(* sbc	x22, x22, xzr                               #! PC = 0xaaaaaaab6df0 *)
sbcs dontcare x22 x22 0@uint64 carry;

(* NOTE: summary *)
assert eqmod (limbs 64 [x26, x27, x28, x20, x21, x22])
             (limbs 64 [a0o, a1o, a2o] * limbs 64 [b3o, b4o] +
              limbs 64 [b0o, b1o, b2o] * limbs 64 [a3o, a4o])
             (2**384) && true;
assume limbs 64 [x26, x27, x28, x20, x21, x22] =
       limbs 64 [a0o, a1o, a2o] * limbs 64 [b3o, b4o] +
       limbs 64 [b0o, b1o, b2o] * limbs 64 [a3o, a4o] && true;

(* adds	x6, x6, x26                                #! PC = 0xaaaaaaab6df4 *)
adds carry x6 x6 x26;
(* adcs	x7, x7, x27                                #! PC = 0xaaaaaaab6df8 *)
adcs carry x7 x7 x27 carry;
(* adcs	x19, x19, x28                              #! PC = 0xaaaaaaab6dfc *)
adcs carry x19 x19 x28 carry;
(* adcs	x20, x20, x13                              #! PC = 0xaaaaaaab6e00 *)
adcs carry x20 x20 x13 carry;
(* adcs	x21, x21, x14                              #! PC = 0xaaaaaaab6e04 *)
adcs carry x21 x21 x14 carry;
(* adcs	x22, x22, x15                              #! PC = 0xaaaaaaab6e08 *)
adcs carry x22 x22 x15 carry;
(* adc	x23, x23, xzr                               #! PC = 0xaaaaaaab6e0c *)
adcs docare x23 x23 0@uint64 carry;

(* TODO: cannot carry *)
(* assert true && docare = 0@1; *)
assume docare = 0 && true;

(* stp	x3, x4, [x2]                                #! EA = L0xffffffffe088; PC = 0xaaaaaaab6e10 *)
mov L0xffffffffe088 x3;
mov L0xffffffffe090 x4;
(* adds	x8, x8, x19                                #! PC = 0xaaaaaaab6e14 *)
adds carry x8 x8 x19;
(* stp	x5, x6, [x2, #16]                           #! EA = L0xffffffffe098; PC = 0xaaaaaaab6e18 *)
mov L0xffffffffe098 x5;
mov L0xffffffffe0a0 x6;
(* adcs	x9, x9, x20                                #! PC = 0xaaaaaaab6e1c *)
adcs carry x9 x9 x20 carry;
(* str	x7, [x2, #32]                               #! EA = L0xffffffffe0a8; PC = 0xaaaaaaab6e20 *)
mov L0xffffffffe0a8 x7;
(* adcs	x10, x10, x21                              #! PC = 0xaaaaaaab6e24 *)
adcs carry x10 x10 x21 carry;
(* ldp	x13, x14, [x0]                              #! EA = L0xffffffffe6b8; Value = 0xbc8c6ee7af2eba52; PC = 0xaaaaaaab6e28 *)
mov x13 L0xffffffffe6b8;
mov x14 L0xffffffffe6c0;
(* adcs	x11, x11, x22                              #! PC = 0xaaaaaaab6e2c *)
adcs carry x11 x11 x22 carry;
(* ldp	x15, x16, [x0, #16]                         #! EA = L0xffffffffe6c8; Value = 0x12f249b5b505249c; PC = 0xaaaaaaab6e30 *)
mov x15 L0xffffffffe6c8;
mov x16 L0xffffffffe6d0;
(* adc	x12, x12, x23                               #! PC = 0xaaaaaaab6e34 *)
adcs dontcare x12 x12 x23 carry;
(* ldr	x17, [x0, #32]                              #! EA = L0xffffffffe6d8; Value = 0xdc2780c414bc970f; PC = 0xaaaaaaab6e38 *)
mov x17 L0xffffffffe6d8;
(* ldp	x26, x27, [x1]                              #! EA = L0xffffffffe758; Value = 0x545c6864103dce42; PC = 0xaaaaaaab6e3c *)
mov x26 L0xffffffffe758;
mov x27 L0xffffffffe760;
(* ldp	x28, x29, [x1, #16]                         #! EA = L0xffffffffe768; Value = 0x00124067f0f875c2; PC = 0xaaaaaaab6e40 *)
mov x28 L0xffffffffe768;
mov x29 L0xffffffffe770;
(* ldr	x30, [x1, #32]                              #! EA = L0xffffffffe778; Value = 0xc324473757bc68c1; PC = 0xaaaaaaab6e44 *)
mov x30 L0xffffffffe778;

(* NOTE: MUL320_KARATSUBA_COMBA starts *)

ghost a0o2@uint64, a1o2@uint64, a2o2@uint64, a3o2@uint64, a4o2@uint64,
      b0o2@uint64, b1o2@uint64, b2o2@uint64, b3o2@uint64, b4o2@uint64 :
      and [a0o2=x13, a1o2=x14, a2o2=x15, a3o2=x16, a4o2=x17,
           b0o2=x26, b1o2=x27, b2o2=x28, b3o2=x29, b4o2=x30]
   && and [a0o2=x13, a1o2=x14, a2o2=x15, a3o2=x16, a4o2=x17,
           b0o2=x26, b1o2=x27, b2o2=x28, b3o2=x29, b4o2=x30];

(* adds	x3, x13, x16                               #! PC = 0xaaaaaaab6e48 *)
adds carry x3 x13 x16;
(* adcs	x4, x14, x17                               #! PC = 0xaaaaaaab6e4c *)
adcs carry x4 x14 x17 carry;
(* adcs	x5, x15, xzr                               #! PC = 0xaaaaaaab6e50 *)
adcs carry x5 x15 0@uint64 carry;
(* adc	x24, xzr, xzr                               #! PC = 0xaaaaaaab6e54 *)
adc x24 0@uint64 0@uint64 carry;
(* adds	x6, x26, x29                               #! PC = 0xaaaaaaab6e58 *)
adds carry x6 x26 x29;
(* adcs	x7, x27, x30                               #! PC = 0xaaaaaaab6e5c *)
adcs carry x7 x27 x30 carry;
(* adcs	x19, x28, xzr                              #! PC = 0xaaaaaaab6e60 *)
adcs carry x19 x28 0@uint64 carry;
(* adc	x25, xzr, xzr                               #! PC = 0xaaaaaaab6e64 *)
adc x25 0@uint64 0@uint64 carry;

ghost x24m2@uint64, x25m2@uint64 :
      and [x24m2 = x24, x25m2 = x25] && and [x24m2 = x24, x25m2 = x25];

(* neg	x24, x24                                    #! PC = 0xaaaaaaab6e68 *)
subc dontcare x24 0@uint64 x24;
(* neg	x25, x25                                    #! PC = 0xaaaaaaab6e6c *)
subc dontcare x25 0@uint64 x25;
(* and	x20, x6, x24                                #! PC = 0xaaaaaaab6e70 *)
and x20@uint64 x6 x24;
(* and	x21, x7, x24                                #! PC = 0xaaaaaaab6e74 *)
and x21@uint64 x7 x24;
(* and	x22, x19, x24                               #! PC = 0xaaaaaaab6e78 *)
and x22@uint64 x19 x24;
(* mul	x13, x3, x6                                 #! PC = 0xaaaaaaab6e7c *)
mull Hx3x6 x13 x3 x6;
(* mul	x14, x3, x7                                 #! PC = 0xaaaaaaab6e80 *)
mull Hx3x7 x14 x3 x7;
(* and	x23, x3, x25                                #! PC = 0xaaaaaaab6e84 *)
and x23@uint64 x3 x25;
(* and	x24, x4, x25                                #! PC = 0xaaaaaaab6e88 *)
and x24@uint64 x4 x25;
(* and	x25, x5, x25                                #! PC = 0xaaaaaaab6e8c *)
and x25@uint64 x5 x25;

(* NOTE: mask *)
assert true
    && and [x24m2 * (1@64-x24m2) = 0@64, x25m2 * (1@64 - x25m2) = 0@64,
            limbs 64 [x20, x21, x22] = uext x24m2 128 * limbs 64 [x6, x7, x19],
            limbs 64 [x23, x24, x25] = uext x25m2 128 * limbs 64 [x3, x4,  x5]];
assume and [x24m2 * (1-x24m2) = 0, x25m2 * (1 - x25m2) = 0,
            limbs 64 [x20, x21, x22] = x24m2 * limbs 64 [x6, x7, x19],
            limbs 64 [x23, x24, x25] = x25m2 * limbs 64 [x3, x4,  x5]] && true;

(* umulh	x16, x3, x6                               #! PC = 0xaaaaaaab6e90 *)
mov x16 Hx3x6;
(* umulh	x15, x3, x7                               #! PC = 0xaaaaaaab6e94 *)
mov x15 Hx3x7;
(* adds	x20, x20, x23                              #! PC = 0xaaaaaaab6e98 *)
adds carry x20 x20 x23;
(* adcs	x21, x21, x24                              #! PC = 0xaaaaaaab6e9c *)
adcs carry x21 x21 x24 carry;
(* adc	x22, x22, x25                               #! PC = 0xaaaaaaab6ea0 *)
adc x22 x22 x25 carry;
(* mul	x17, x4, x6                                 #! PC = 0xaaaaaaab6ea4 *)
mull Hx4x6 x17 x4 x6;
(* umulh	x23, x4, x6                               #! PC = 0xaaaaaaab6ea8 *)
mov x23 Hx4x6;
(* adds	x14, x14, x16                              #! PC = 0xaaaaaaab6eac *)
adds carry x14 x14 x16;
(* adc	x15, x15, xzr                               #! PC = 0xaaaaaaab6eb0 *)
adc x15 x15 0@uint64 carry;
(* mul	x25, x4, x7                                 #! PC = 0xaaaaaaab6eb4 *)
mull Hx4x7 x25 x4 x7;
(* umulh	x16, x4, x7                               #! PC = 0xaaaaaaab6eb8 *)
mov x16 Hx4x7;
(* adds	x14, x14, x17                              #! PC = 0xaaaaaaab6ebc *)
adds carry x14 x14 x17;
(* adcs	x15, x15, x23                              #! PC = 0xaaaaaaab6ec0 *)
adcs carry x15 x15 x23 carry;
(* adc	x16, x16, xzr                               #! PC = 0xaaaaaaab6ec4 *)
adc x16 x16 0@uint64 carry;
(* mul	x17, x3, x19                                #! PC = 0xaaaaaaab6ec8 *)
mull Hx3x19 x17 x3 x19;
(* umulh	x23, x3, x19                              #! PC = 0xaaaaaaab6ecc *)
mov x23 Hx3x19;
(* adds	x15, x15, x25                              #! PC = 0xaaaaaaab6ed0 *)
adds carry x15 x15 x25;
(* adcs	x16, x16, x23                              #! PC = 0xaaaaaaab6ed4 *)
adcs carry x16 x16 x23 carry;
(* adc	x24, xzr, xzr                               #! PC = 0xaaaaaaab6ed8 *)
adc x24 0@uint64 0@uint64 carry;
(* mul	x25, x5, x6                                 #! PC = 0xaaaaaaab6edc *)
mull Hx5x6 x25 x5 x6;
(* umulh	x23, x5, x6                               #! PC = 0xaaaaaaab6ee0 *)
mov x23 Hx5x6;
(* adds	x15, x15, x17                              #! PC = 0xaaaaaaab6ee4 *)
adds carry x15 x15 x17;
(* adcs	x16, x16, x23                              #! PC = 0xaaaaaaab6ee8 *)
adcs carry x16 x16 x23 carry;
(* adc	x24, x24, xzr                               #! PC = 0xaaaaaaab6eec *)
adc x24 x24 0@uint64 carry;
(* mul	x17, x4, x19                                #! PC = 0xaaaaaaab6ef0 *)
mull Hx4x19 x17 x4 x19;
(* umulh	x23, x4, x19                              #! PC = 0xaaaaaaab6ef4 *)
mov x23 Hx4x19;
(* adds	x15, x15, x25                              #! PC = 0xaaaaaaab6ef8 *)
adds carry x15 x15 x25;
(* adcs	x16, x16, x17                              #! PC = 0xaaaaaaab6efc *)
adcs carry x16 x16 x17 carry;
(* adcs	x24, x24, x23                              #! PC = 0xaaaaaaab6f00 *)
adcs carry x24 x24 x23 carry;
(* adc	x25, xzr, xzr                               #! PC = 0xaaaaaaab6f04 *)
adc x25 0@uint64 0@uint64 carry;
(* mul	x17, x5, x7                                 #! PC = 0xaaaaaaab6f08 *)
mull Hx5x7 x17 x5 x7;
(* umulh	x23, x5, x7                               #! PC = 0xaaaaaaab6f0c *)
mov x23 Hx5x7;
(* adds	x16, x16, x17                              #! PC = 0xaaaaaaab6f10 *)
adds carry x16 x16 x17;
(* adcs	x24, x24, x23                              #! PC = 0xaaaaaaab6f14 *)
adcs carry x24 x24 x23 carry;
(* adc	x25, x25, xzr                               #! PC = 0xaaaaaaab6f18 *)
adc x25 x25 0@uint64 carry;
(* mul	x17, x5, x19                                #! PC = 0xaaaaaaab6f1c *)
mull Hx5x19 x17 x5 x19;
(* umulh	x23, x5, x19                              #! PC = 0xaaaaaaab6f20 *)
mov x23 Hx5x19;
(* adds	x17, x17, x24                              #! PC = 0xaaaaaaab6f24 *)
adds carry x17 x17 x24;
(* adc	x23, x23, x25                               #! PC = 0xaaaaaaab6f28 *)
adc x23 x23 x25 carry;
(* adds	x20, x16, x20                              #! PC = 0xaaaaaaab6f2c *)
adds carry x20 x16 x20;
(* adcs	x21, x17, x21                              #! PC = 0xaaaaaaab6f30 *)
adcs carry x21 x17 x21 carry;
(* ldp	x16, x17, [x0]                              #! EA = L0xffffffffe6b8; Value = 0xbc8c6ee7af2eba52; PC = 0xaaaaaaab6f34 *)
mov x16 L0xffffffffe6b8;
mov x17 L0xffffffffe6c0;
(* adc	x22, x23, x22                               #! PC = 0xaaaaaaab6f38 *)
adcs dontcare x22 x23 x22 carry;
(* ldr	x23, [x0, #16]                              #! EA = L0xffffffffe6c8; Value = 0x12f249b5b505249c; PC = 0xaaaaaaab6f3c *)
mov x23 L0xffffffffe6c8;
(* mul	x3, x16, x26                                #! PC = 0xaaaaaaab6f40 *)
mull Hx16x26 x3 x16 x26;
(* mul	x4, x16, x27                                #! PC = 0xaaaaaaab6f44 *)
mull Hx16x27 x4 x16 x27;
(* umulh	x6, x16, x26                              #! PC = 0xaaaaaaab6f48 *)
mov x6 Hx16x26;
(* umulh	x5, x16, x27                              #! PC = 0xaaaaaaab6f4c *)
mov x5 Hx16x27;
(* mul	x7, x17, x26                                #! PC = 0xaaaaaaab6f50 *)
mull Hx17x26 x7 x17 x26;
(* umulh	x19, x17, x26                             #! PC = 0xaaaaaaab6f54 *)
mov x19 Hx17x26;
(* adds	x4, x4, x6                                 #! PC = 0xaaaaaaab6f58 *)
adds carry x4 x4 x6;
(* adc	x5, x5, xzr                                 #! PC = 0xaaaaaaab6f5c *)
adc x5 x5 0@uint64 carry;
(* mul	x25, x17, x27                               #! PC = 0xaaaaaaab6f60 *)
mull Hx17x27 x25 x17 x27;
(* umulh	x6, x17, x27                              #! PC = 0xaaaaaaab6f64 *)
mov x6 Hx17x27;
(* adds	x4, x4, x7                                 #! PC = 0xaaaaaaab6f68 *)
adds carry x4 x4 x7;
(* adcs	x5, x5, x19                                #! PC = 0xaaaaaaab6f6c *)
adcs carry x5 x5 x19 carry;
(* adc	x6, x6, xzr                                 #! PC = 0xaaaaaaab6f70 *)
adc x6 x6 0@uint64 carry;
(* mul	x7, x16, x28                                #! PC = 0xaaaaaaab6f74 *)
mull Hx16x28 x7 x16 x28;
(* umulh	x19, x16, x28                             #! PC = 0xaaaaaaab6f78 *)
mov x19 Hx16x28;
(* adds	x5, x5, x25                                #! PC = 0xaaaaaaab6f7c *)
adds carry x5 x5 x25;
(* adcs	x6, x6, x19                                #! PC = 0xaaaaaaab6f80 *)
adcs carry x6 x6 x19 carry;
(* adc	x24, xzr, xzr                               #! PC = 0xaaaaaaab6f84 *)
adc x24 0@uint64 0@uint64 carry;
(* mul	x25, x23, x26                               #! PC = 0xaaaaaaab6f88 *)
mull Hx23x26 x25 x23 x26;
(* umulh	x19, x23, x26                             #! PC = 0xaaaaaaab6f8c *)
mov x19 Hx23x26;
(* adds	x5, x5, x7                                 #! PC = 0xaaaaaaab6f90 *)
adds carry x5 x5 x7;
(* adcs	x6, x6, x19                                #! PC = 0xaaaaaaab6f94 *)
adcs carry x6 x6 x19 carry;
(* adc	x24, x24, xzr                               #! PC = 0xaaaaaaab6f98 *)
adc x24 x24 0@uint64 carry;
(* mul	x7, x17, x28                                #! PC = 0xaaaaaaab6f9c *)
mull Hx17x28 x7 x17 x28;
(* umulh	x19, x17, x28                             #! PC = 0xaaaaaaab6fa0 *)
mov x19 Hx17x28;
(* adds	x5, x5, x25                                #! PC = 0xaaaaaaab6fa4 *)
adds carry x5 x5 x25;
(* adcs	x6, x6, x7                                 #! PC = 0xaaaaaaab6fa8 *)
adcs carry x6 x6 x7 carry;
(* adcs	x24, x24, x19                              #! PC = 0xaaaaaaab6fac *)
adcs carry x24 x24 x19 carry;
(* adc	x25, xzr, xzr                               #! PC = 0xaaaaaaab6fb0 *)
adc x25 0@uint64 0@uint64 carry;
(* mul	x7, x23, x27                                #! PC = 0xaaaaaaab6fb4 *)
mull Hx23x27 x7 x23 x27;
(* umulh	x19, x23, x27                             #! PC = 0xaaaaaaab6fb8 *)
mov x19 Hx23x27;
(* adds	x6, x6, x7                                 #! PC = 0xaaaaaaab6fbc *)
adds carry x6 x6 x7;
(* adcs	x24, x24, x19                              #! PC = 0xaaaaaaab6fc0 *)
adcs carry x24 x24 x19 carry;
(* adc	x25, x25, xzr                               #! PC = 0xaaaaaaab6fc4 *)
adc x25 x25 0@uint64 carry;
(* mul	x7, x23, x28                                #! PC = 0xaaaaaaab6fc8 *)
mull Hx23x28 x7 x23 x28;
(* umulh	x19, x23, x28                             #! PC = 0xaaaaaaab6fcc *)
mov x19 Hx23x28;
(* adds	x7, x7, x24                                #! PC = 0xaaaaaaab6fd0 *)
adds carry x7 x7 x24;
(* adc	x19, x19, x25                               #! PC = 0xaaaaaaab6fd4 *)
adc x19 x19 x25 carry;
(* ldp	x16, x17, [x0, #24]                         #! EA = L0xffffffffe6d0; Value = 0x0f78a1c3be4d90ac; PC = 0xaaaaaaab6fd8 *)
mov x16 L0xffffffffe6d0;
mov x17 L0xffffffffe6d8;
(* subs	x13, x13, x3                               #! PC = 0xaaaaaaab6fdc *)
subc carry x13 x13 x3;
(* sbcs	x14, x14, x4                               #! PC = 0xaaaaaaab6fe0 *)
sbcs carry x14 x14 x4 carry;
(* mul	x26, x16, x29                               #! PC = 0xaaaaaaab6fe4 *)
mull Hx16x29 x26 x16 x29;
(* umulh	x23, x16, x29                             #! PC = 0xaaaaaaab6fe8 *)
mov x23 Hx16x29;
(* sbcs	x15, x15, x5                               #! PC = 0xaaaaaaab6fec *)
sbcs carry x15 x15 x5 carry;
(* sbcs	x20, x20, x6                               #! PC = 0xaaaaaaab6ff0 *)
sbcs carry x20 x20 x6 carry;
(* mul	x27, x16, x30                               #! PC = 0xaaaaaaab6ff4 *)
mull Hx16x30 x27 x16 x30;
(* umulh	x28, x16, x30                             #! PC = 0xaaaaaaab6ff8 *)
mov x28 Hx16x30;
(* sbcs	x21, x21, x7                               #! PC = 0xaaaaaaab6ffc *)
sbcs carry x21 x21 x7 carry;
(* sbc	x22, x22, x19                               #! PC = 0xaaaaaaab7000 *)
sbcs docare x22 x22 x19 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* mul	x16, x17, x29                               #! PC = 0xaaaaaaab7004 *)
mull Hx17x29 x16 x17 x29;
(* umulh	x29, x17, x29                             #! PC = 0xaaaaaaab7008 *)
mov x29 Hx17x29;
(* adds	x27, x27, x23                              #! PC = 0xaaaaaaab700c *)
adds carry x27 x27 x23;
(* adc	x28, x28, xzr                               #! PC = 0xaaaaaaab7010 *)
adc x28 x28 0@uint64 carry;
(* mul	x24, x17, x30                               #! PC = 0xaaaaaaab7014 *)
mull Hx17x30 x24 x17 x30;
(* umulh	x30, x17, x30                             #! PC = 0xaaaaaaab7018 *)
mov x30 Hx17x30;
(* adds	x27, x27, x16                              #! PC = 0xaaaaaaab701c *)
adds carry x27 x27 x16;
(* adcs	x28, x28, x29                              #! PC = 0xaaaaaaab7020 *)
adcs carry x28 x28 x29 carry;
(* adc	x23, xzr, xzr                               #! PC = 0xaaaaaaab7024 *)
adc x23 0@uint64 0@uint64 carry;
(* adds	x28, x28, x24                              #! PC = 0xaaaaaaab7028 *)
adds carry x28 x28 x24;
(* adc	x23, x23, x30                               #! PC = 0xaaaaaaab702c *)
adc x23 x23 x30 carry;
(* subs	x13, x13, x26                              #! PC = 0xaaaaaaab7030 *)
subc carry x13 x13 x26;
(* sbcs	x14, x14, x27                              #! PC = 0xaaaaaaab7034 *)
sbcs carry x14 x14 x27 carry;
(* sbcs	x15, x15, x28                              #! PC = 0xaaaaaaab7038 *)
sbcs carry x15 x15 x28 carry;
(* sbcs	x20, x20, x23                              #! PC = 0xaaaaaaab703c *)
sbcs carry x20 x20 x23 carry;
(* sbcs	x21, x21, xzr                              #! PC = 0xaaaaaaab7040 *)
sbcs carry x21 x21 0@uint64 carry;
(* sbc	x22, x22, xzr                               #! PC = 0xaaaaaaab7044 *)
sbcs docare x22 x22 0@uint64 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* NOTE: summary *)
assert eqmod (limbs 64 [x13, x14, x15, x20, x21, x22])
             (limbs 64 [a0o2, a1o2, a2o2] * limbs 64 [b3o2, b4o2] +
              limbs 64 [b0o2, b1o2, b2o2] * limbs 64 [a3o2, a4o2])
             (2**384) && true;
assume limbs 64 [x13, x14, x15, x20, x21, x22] =
       limbs 64 [a0o2, a1o2, a2o2] * limbs 64 [b3o2, b4o2] +
       limbs 64 [b0o2, b1o2, b2o2] * limbs 64 [a3o2, a4o2] && true;

(* adds	x6, x6, x13                                #! PC = 0xaaaaaaab7048 *)
adds carry x6 x6 x13;
(* adcs	x7, x7, x14                                #! PC = 0xaaaaaaab704c *)
adcs carry x7 x7 x14 carry;
(* adcs	x19, x19, x15                              #! PC = 0xaaaaaaab7050 *)
adcs carry x19 x19 x15 carry;
(* adcs	x20, x20, x26                              #! PC = 0xaaaaaaab7054 *)
adcs carry x20 x20 x26 carry;
(* adcs	x21, x21, x27                              #! PC = 0xaaaaaaab7058 *)
adcs carry x21 x21 x27 carry;
(* adcs	x22, x22, x28                              #! PC = 0xaaaaaaab705c *)
adcs carry x22 x22 x28 carry;
(* adc	x23, x23, xzr                               #! PC = 0xaaaaaaab7060 *)
adcs docare x23 x23 0@uint64 carry;

(* TODO: cannot carry *)
(* assert true && docare = 0@1; *)
assume docare = 0 && true;

(* ldp	x13, x14, [x2]                              #! EA = L0xffffffffe088; Value = 0x735e829e1150c910; PC = 0xaaaaaaab7064 *)
mov x13 L0xffffffffe088;
mov x14 L0xffffffffe090;
(* subs	x13, x13, x3                               #! PC = 0xaaaaaaab7068 *)
subc carry x13 x13 x3;
(* ldp	x15, x16, [x2, #16]                         #! EA = L0xffffffffe098; Value = 0x038097836547d387; PC = 0xaaaaaaab706c *)
mov x15 L0xffffffffe098;
mov x16 L0xffffffffe0a0;
(* sbcs	x14, x14, x4                               #! PC = 0xaaaaaaab7070 *)
sbcs carry x14 x14 x4 carry;
(* ldr	x17, [x2, #32]                              #! EA = L0xffffffffe0a8; Value = 0x1ed2ba22d9f462b9; PC = 0xaaaaaaab7074 *)
mov x17 L0xffffffffe0a8;
(* sbcs	x15, x15, x5                               #! PC = 0xaaaaaaab7078 *)
sbcs carry x15 x15 x5 carry;
(* stp	x3, x4, [x2]                                #! EA = L0xffffffffe088; PC = 0xaaaaaaab707c *)
mov L0xffffffffe088 x3;
mov L0xffffffffe090 x4;
(* sbcs	x16, x16, x6                               #! PC = 0xaaaaaaab7080 *)
sbcs carry x16 x16 x6 carry;
(* stp	x5, x6, [x2, #16]                           #! EA = L0xffffffffe098; PC = 0xaaaaaaab7084 *)
mov L0xffffffffe098 x5;
mov L0xffffffffe0a0 x6;
(* sbcs	x17, x17, x7                               #! PC = 0xaaaaaaab7088 *)
sbcs carry x17 x17 x7 carry;
(* str	x7, [x2, #32]                               #! EA = L0xffffffffe0a8; PC = 0xaaaaaaab708c *)
mov L0xffffffffe0a8 x7;
(* sbcs	x8, x8, x19                                #! PC = 0xaaaaaaab7090 *)
sbcs carry x8 x8 x19 carry;
(* ldp	x3, x4, [x0, #40]                           #! EA = L0xffffffffe6e0; Value = 0x2ba26832c8c3af74; PC = 0xaaaaaaab7094 *)
mov x3 L0xffffffffe6e0;
mov x4 L0xffffffffe6e8;
(* sbcs	x9, x9, x20                                #! PC = 0xaaaaaaab7098 *)
sbcs carry x9 x9 x20 carry;
(* ldp	x5, x6, [x0, #56]                           #! EA = L0xffffffffe6f0; Value = 0x52b57228fe99195b; PC = 0xaaaaaaab709c *)
mov x5 L0xffffffffe6f0;
mov x6 L0xffffffffe6f8;
(* ldr	x7, [x0, #72]                               #! EA = L0xffffffffe700; Value = 0x000000009ce32441; PC = 0xaaaaaaab70a0 *)
mov x7 L0xffffffffe700;
(* sbcs	x10, x10, x21                              #! PC = 0xaaaaaaab70a4 *)
sbcs carry x10 x10 x21 carry;
(* ldp	x26, x27, [x1, #40]                         #! EA = L0xffffffffe780; Value = 0x2305ca7b914f6996; PC = 0xaaaaaaab70a8 *)
mov x26 L0xffffffffe780;
mov x27 L0xffffffffe788;
(* sbcs	x11, x11, x22                              #! PC = 0xaaaaaaab70ac *)
sbcs carry x11 x11 x22 carry;
(* ldp	x28, x29, [x1, #56]                         #! EA = L0xffffffffe790; Value = 0x27e3bfb62d220520; PC = 0xaaaaaaab70b0 *)
mov x28 L0xffffffffe790;
mov x29 L0xffffffffe798;
(* ldr	x30, [x1, #72]                              #! EA = L0xffffffffe7a0; Value = 0x00000001b6418226; PC = 0xaaaaaaab70b4 *)
mov x30 L0xffffffffe7a0;
(* sbc	x12, x12, x23                               #! PC = 0xaaaaaaab70b8 *)
sbcs dontcare x12 x12 x23 carry;
(* stp	x8, x9, [x2, #40]                           #! EA = L0xffffffffe0b0; PC = 0xaaaaaaab70bc *)
mov L0xffffffffe0b0 x8;
mov L0xffffffffe0b8 x9;
(* stp	x10, x11, [x2, #56]                         #! EA = L0xffffffffe0c0; PC = 0xaaaaaaab70c0 *)
mov L0xffffffffe0c0 x10;
mov L0xffffffffe0c8 x11;
(* stp	x12, x13, [x2, #72]                         #! EA = L0xffffffffe0d0; PC = 0xaaaaaaab70c4 *)
mov L0xffffffffe0d0 x12;
mov L0xffffffffe0d8 x13;
(* stp	x14, x15, [x2, #88]                         #! EA = L0xffffffffe0e0; PC = 0xaaaaaaab70c8 *)
mov L0xffffffffe0e0 x14;
mov L0xffffffffe0e8 x15;
(* stp	x16, x17, [x2, #104]                        #! EA = L0xffffffffe0f0; PC = 0xaaaaaaab70cc *)
mov L0xffffffffe0f0 x16;
mov L0xffffffffe0f8 x17;
(* add	x0, x0, #0x28                               #! PC = 0xaaaaaaab70d0 *)
adds dontcare x0 x0 0x28@uint64;

(* NOTE: MUL320_KARATSUBA_COMBA starts *)

ghost a0o3@uint64, a1o3@uint64, a2o3@uint64, a3o3@uint64, a4o3@uint64,
      b0o3@uint64, b1o3@uint64, b2o3@uint64, b3o3@uint64, b4o3@uint64 :
      and [a0o3= x3, a1o3= x4, a2o3= x5, a3o3= x6, a4o3= x7,
           b0o3=x26, b1o3=x27, b2o3=x28, b3o3=x29, b4o3=x30]
   && and [a0o3= x3, a1o3= x4, a2o3= x5, a3o3= x6, a4o3= x7,
           b0o3=x26, b1o3=x27, b2o3=x28, b3o3=x29, b4o3=x30];

(* adds	x8, x3, x6                                 #! PC = 0xaaaaaaab70d4 *)
adds carry x8 x3 x6;
(* adcs	x9, x4, x7                                 #! PC = 0xaaaaaaab70d8 *)
adcs carry x9 x4 x7 carry;
(* adcs	x10, x5, xzr                               #! PC = 0xaaaaaaab70dc *)
adcs carry x10 x5 0@uint64 carry;
(* adc	x24, xzr, xzr                               #! PC = 0xaaaaaaab70e0 *)
adc x24 0@uint64 0@uint64 carry;
(* adds	x11, x26, x29                              #! PC = 0xaaaaaaab70e4 *)
adds carry x11 x26 x29;
(* adcs	x12, x27, x30                              #! PC = 0xaaaaaaab70e8 *)
adcs carry x12 x27 x30 carry;
(* adcs	x13, x28, xzr                              #! PC = 0xaaaaaaab70ec *)
adcs carry x13 x28 0@uint64 carry;
(* adc	x25, xzr, xzr                               #! PC = 0xaaaaaaab70f0 *)
adc x25 0@uint64 0@uint64 carry;

ghost x24m3@uint64, x25m3@uint64 :
      and [x24m3 = x24, x25m3 = x25] && and [x24m3 = x24, x25m3 = x25];

(* neg	x24, x24                                    #! PC = 0xaaaaaaab70f4 *)
subc dontcare x24 0@uint64 x24;
(* neg	x25, x25                                    #! PC = 0xaaaaaaab70f8 *)
subc dontcare x25 0@uint64 x25;
(* and	x14, x11, x24                               #! PC = 0xaaaaaaab70fc *)
and x14@uint64 x11 x24;
(* and	x15, x12, x24                               #! PC = 0xaaaaaaab7100 *)
and x15@uint64 x12 x24;
(* and	x16, x13, x24                               #! PC = 0xaaaaaaab7104 *)
and x16@uint64 x13 x24;
(* mul	x3, x8, x11                                 #! PC = 0xaaaaaaab7108 *)
mull Hx8x11 x3 x8 x11;
(* mul	x4, x8, x12                                 #! PC = 0xaaaaaaab710c *)
mull Hx8x12 x4 x8 x12;
(* and	x17, x8, x25                                #! PC = 0xaaaaaaab7110 *)
and x17@uint64 x8 x25;
(* and	x24, x9, x25                                #! PC = 0xaaaaaaab7114 *)
and x24@uint64 x9 x25;
(* and	x25, x10, x25                               #! PC = 0xaaaaaaab7118 *)
and x25@uint64 x10 x25;

(* NOTE: mask *)
assert true
    && and [x24m3 * (1@64-x24m3) = 0@64, x25m3 * (1@64 - x25m3) = 0@64,
            limbs 64 [x14, x15, x16] =
            uext x24m3 128 * limbs 64 [x11, x12, x13],
            limbs 64 [x17, x24, x25] =
            uext x25m3 128 * limbs 64 [ x8, x9,  x10]];
assume and [x24m3 * (1-x24m3) = 0, x25m3 * (1 - x25m3) = 0,
            limbs 64 [x14, x15, x16] = x24m3 * limbs 64 [x11, x12, x13],
            limbs 64 [x17, x24, x25] = x25m3 * limbs 64 [ x8,  x9, x10]] && true;

(* umulh	x6, x8, x11                               #! PC = 0xaaaaaaab711c *)
mov x6 Hx8x11;
(* umulh	x5, x8, x12                               #! PC = 0xaaaaaaab7120 *)
mov x5 Hx8x12;
(* adds	x14, x14, x17                              #! PC = 0xaaaaaaab7124 *)
adds carry x14 x14 x17;
(* adcs	x15, x15, x24                              #! PC = 0xaaaaaaab7128 *)
adcs carry x15 x15 x24 carry;
(* adc	x16, x16, x25                               #! PC = 0xaaaaaaab712c *)
adc x16 x16 x25 carry;
(* mul	x7, x9, x11                                 #! PC = 0xaaaaaaab7130 *)
mull Hx9x11 x7 x9 x11;
(* umulh	x17, x9, x11                              #! PC = 0xaaaaaaab7134 *)
mov x17 Hx9x11;
(* adds	x4, x4, x6                                 #! PC = 0xaaaaaaab7138 *)
adds carry x4 x4 x6;
(* adc	x5, x5, xzr                                 #! PC = 0xaaaaaaab713c *)
adc x5 x5 0@uint64 carry;
(* mul	x25, x9, x12                                #! PC = 0xaaaaaaab7140 *)
mull Hx9x12 x25 x9 x12;
(* umulh	x6, x9, x12                               #! PC = 0xaaaaaaab7144 *)
mov x6 Hx9x12;
(* adds	x4, x4, x7                                 #! PC = 0xaaaaaaab7148 *)
adds carry x4 x4 x7;
(* adcs	x5, x5, x17                                #! PC = 0xaaaaaaab714c *)
adcs carry x5 x5 x17 carry;
(* adc	x6, x6, xzr                                 #! PC = 0xaaaaaaab7150 *)
adc x6 x6 0@uint64 carry;
(* mul	x7, x8, x13                                 #! PC = 0xaaaaaaab7154 *)
mull Hx8x13 x7 x8 x13;
(* umulh	x17, x8, x13                              #! PC = 0xaaaaaaab7158 *)
mov x17 Hx8x13;
(* adds	x5, x5, x25                                #! PC = 0xaaaaaaab715c *)
adds carry x5 x5 x25;
(* adcs	x6, x6, x17                                #! PC = 0xaaaaaaab7160 *)
adcs carry x6 x6 x17 carry;
(* adc	x24, xzr, xzr                               #! PC = 0xaaaaaaab7164 *)
adc x24 0@uint64 0@uint64 carry;
(* mul	x25, x10, x11                               #! PC = 0xaaaaaaab7168 *)
mull Hx10x11 x25 x10 x11;
(* umulh	x17, x10, x11                             #! PC = 0xaaaaaaab716c *)
mov x17 Hx10x11;
(* adds	x5, x5, x7                                 #! PC = 0xaaaaaaab7170 *)
adds carry x5 x5 x7;
(* adcs	x6, x6, x17                                #! PC = 0xaaaaaaab7174 *)
adcs carry x6 x6 x17 carry;
(* adc	x24, x24, xzr                               #! PC = 0xaaaaaaab7178 *)
adc x24 x24 0@uint64 carry;
(* mul	x7, x9, x13                                 #! PC = 0xaaaaaaab717c *)
mull Hx9x13 x7 x9 x13;
(* umulh	x17, x9, x13                              #! PC = 0xaaaaaaab7180 *)
mov x17 Hx9x13;
(* adds	x5, x5, x25                                #! PC = 0xaaaaaaab7184 *)
adds carry x5 x5 x25;
(* adcs	x6, x6, x7                                 #! PC = 0xaaaaaaab7188 *)
adcs carry x6 x6 x7 carry;
(* adcs	x24, x24, x17                              #! PC = 0xaaaaaaab718c *)
adcs carry x24 x24 x17 carry;
(* adc	x25, xzr, xzr                               #! PC = 0xaaaaaaab7190 *)
adc x25 0@uint64 0@uint64 carry;
(* mul	x7, x10, x12                                #! PC = 0xaaaaaaab7194 *)
mull Hx10x12 x7 x10 x12;
(* umulh	x17, x10, x12                             #! PC = 0xaaaaaaab7198 *)
mov x17 Hx10x12;
(* adds	x6, x6, x7                                 #! PC = 0xaaaaaaab719c *)
adds carry x6 x6 x7;
(* adcs	x24, x24, x17                              #! PC = 0xaaaaaaab71a0 *)
adcs carry x24 x24 x17 carry;
(* adc	x25, x25, xzr                               #! PC = 0xaaaaaaab71a4 *)
adc x25 x25 0@uint64 carry;
(* mul	x7, x10, x13                                #! PC = 0xaaaaaaab71a8 *)
mull Hx10x13 x7 x10 x13;
(* umulh	x17, x10, x13                             #! PC = 0xaaaaaaab71ac *)
mov x17 Hx10x13;
(* adds	x7, x7, x24                                #! PC = 0xaaaaaaab71b0 *)
adds carry x7 x7 x24;
(* adc	x17, x17, x25                               #! PC = 0xaaaaaaab71b4 *)
adc x17 x17 x25 carry;
(* adds	x14, x6, x14                               #! PC = 0xaaaaaaab71b8 *)
adds carry x14 x6 x14;
(* adcs	x15, x7, x15                               #! PC = 0xaaaaaaab71bc *)
adcs carry x15 x7 x15 carry;
(* ldp	x6, x7, [x0]                                #! EA = L0xffffffffe6e0; Value = 0x2ba26832c8c3af74; PC = 0xaaaaaaab71c0 *)
mov x6 L0xffffffffe6e0;
mov x7 L0xffffffffe6e8;
(* adc	x16, x17, x16                               #! PC = 0xaaaaaaab71c4 *)
adcs dontcare x16 x17 x16 carry;
(* ldr	x17, [x0, #16]                              #! EA = L0xffffffffe6f0; Value = 0x52b57228fe99195b; PC = 0xaaaaaaab71c8 *)
mov x17 L0xffffffffe6f0;
(* mul	x8, x6, x26                                 #! PC = 0xaaaaaaab71cc *)
mull Hx6x26 x8 x6 x26;
(* mul	x9, x6, x27                                 #! PC = 0xaaaaaaab71d0 *)
mull Hx6x27 x9 x6 x27;
(* umulh	x11, x6, x26                              #! PC = 0xaaaaaaab71d4 *)
mov x11 Hx6x26;
(* umulh	x10, x6, x27                              #! PC = 0xaaaaaaab71d8 *)
mov x10 Hx6x27;
(* mul	x12, x7, x26                                #! PC = 0xaaaaaaab71dc *)
mull Hx7x26 x12 x7 x26;
(* umulh	x13, x7, x26                              #! PC = 0xaaaaaaab71e0 *)
mov x13 Hx7x26;
(* adds	x9, x9, x11                                #! PC = 0xaaaaaaab71e4 *)
adds carry x9 x9 x11;
(* adc	x10, x10, xzr                               #! PC = 0xaaaaaaab71e8 *)
adc x10 x10 0@uint64 carry;
(* mul	x25, x7, x27                                #! PC = 0xaaaaaaab71ec *)
mull Hx7x27 x25 x7 x27;
(* umulh	x11, x7, x27                              #! PC = 0xaaaaaaab71f0 *)
mov x11 Hx7x27;
(* adds	x9, x9, x12                                #! PC = 0xaaaaaaab71f4 *)
adds carry x9 x9 x12;
(* adcs	x10, x10, x13                              #! PC = 0xaaaaaaab71f8 *)
adcs carry x10 x10 x13 carry;
(* adc	x11, x11, xzr                               #! PC = 0xaaaaaaab71fc *)
adc x11 x11 0@uint64 carry;
(* mul	x12, x6, x28                                #! PC = 0xaaaaaaab7200 *)
mull Hx6x28 x12 x6 x28;
(* umulh	x13, x6, x28                              #! PC = 0xaaaaaaab7204 *)
mov x13 Hx6x28;
(* adds	x10, x10, x25                              #! PC = 0xaaaaaaab7208 *)
adds carry x10 x10 x25;
(* adcs	x11, x11, x13                              #! PC = 0xaaaaaaab720c *)
adcs carry x11 x11 x13 carry;
(* adc	x24, xzr, xzr                               #! PC = 0xaaaaaaab7210 *)
adc x24 0@uint64 0@uint64 carry;
(* mul	x25, x17, x26                               #! PC = 0xaaaaaaab7214 *)
mull Hx17x26 x25 x17 x26;
(* umulh	x13, x17, x26                             #! PC = 0xaaaaaaab7218 *)
mov x13 Hx17x26;
(* adds	x10, x10, x12                              #! PC = 0xaaaaaaab721c *)
adds carry x10 x10 x12;
(* adcs	x11, x11, x13                              #! PC = 0xaaaaaaab7220 *)
adcs carry x11 x11 x13 carry;
(* adc	x24, x24, xzr                               #! PC = 0xaaaaaaab7224 *)
adc x24 x24 0@uint64 carry;
(* mul	x12, x7, x28                                #! PC = 0xaaaaaaab7228 *)
mull Hx7x28 x12 x7 x28;
(* umulh	x13, x7, x28                              #! PC = 0xaaaaaaab722c *)
mov x13 Hx7x28;
(* adds	x10, x10, x25                              #! PC = 0xaaaaaaab7230 *)
adds carry x10 x10 x25;
(* adcs	x11, x11, x12                              #! PC = 0xaaaaaaab7234 *)
adcs carry x11 x11 x12 carry;
(* adcs	x24, x24, x13                              #! PC = 0xaaaaaaab7238 *)
adcs carry x24 x24 x13 carry;
(* adc	x25, xzr, xzr                               #! PC = 0xaaaaaaab723c *)
adc x25 0@uint64 0@uint64 carry;
(* mul	x12, x17, x27                               #! PC = 0xaaaaaaab7240 *)
mull Hx17x27 x12 x17 x27;
(* umulh	x13, x17, x27                             #! PC = 0xaaaaaaab7244 *)
mov x13 Hx17x27;
(* adds	x11, x11, x12                              #! PC = 0xaaaaaaab7248 *)
adds carry x11 x11 x12;
(* adcs	x24, x24, x13                              #! PC = 0xaaaaaaab724c *)
adcs carry x24 x24 x13 carry;
(* adc	x25, x25, xzr                               #! PC = 0xaaaaaaab7250 *)
adc x25 x25 0@uint64 carry;
(* mul	x12, x17, x28                               #! PC = 0xaaaaaaab7254 *)
mull Hx17x28 x12 x17 x28;
(* umulh	x13, x17, x28                             #! PC = 0xaaaaaaab7258 *)
mov x13 Hx17x28;
(* adds	x12, x12, x24                              #! PC = 0xaaaaaaab725c *)
adds carry x12 x12 x24;
(* adc	x13, x13, x25                               #! PC = 0xaaaaaaab7260 *)
adc x13 x13 x25 carry;
(* ldp	x6, x7, [x0, #24]                           #! EA = L0xffffffffe6f8; Value = 0x86ac02afd8a24676; PC = 0xaaaaaaab7264 *)
mov x6 L0xffffffffe6f8;
mov x7 L0xffffffffe700;
(* subs	x3, x3, x8                                 #! PC = 0xaaaaaaab7268 *)
subc carry x3 x3 x8;
(* sbcs	x4, x4, x9                                 #! PC = 0xaaaaaaab726c *)
sbcs carry x4 x4 x9 carry;
(* mul	x26, x6, x29                                #! PC = 0xaaaaaaab7270 *)
mull Hx6x29 x26 x6 x29;
(* umulh	x17, x6, x29                              #! PC = 0xaaaaaaab7274 *)
mov x17 Hx6x29;
(* sbcs	x5, x5, x10                                #! PC = 0xaaaaaaab7278 *)
sbcs carry x5 x5 x10 carry;
(* sbcs	x14, x14, x11                              #! PC = 0xaaaaaaab727c *)
sbcs carry x14 x14 x11 carry;
(* mul	x27, x6, x30                                #! PC = 0xaaaaaaab7280 *)
mull Hx6x30 x27 x6 x30;
(* umulh	x28, x6, x30                              #! PC = 0xaaaaaaab7284 *)
mov x28 Hx6x30;
(* sbcs	x15, x15, x12                              #! PC = 0xaaaaaaab7288 *)
sbcs carry x15 x15 x12 carry;
(* sbc	x16, x16, x13                               #! PC = 0xaaaaaaab728c *)
sbcs docare x16 x16 x13 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* mul	x6, x7, x29                                 #! PC = 0xaaaaaaab7290 *)
mull Hx7x29 x6 x7 x29;
(* umulh	x29, x7, x29                              #! PC = 0xaaaaaaab7294 *)
mov x29 Hx7x29;
(* adds	x27, x27, x17                              #! PC = 0xaaaaaaab7298 *)
adds carry x27 x27 x17;
(* adc	x28, x28, xzr                               #! PC = 0xaaaaaaab729c *)
adc x28 x28 0@uint64 carry;
(* mul	x24, x7, x30                                #! PC = 0xaaaaaaab72a0 *)
mull Hx7x30 x24 x7 x30;
(* umulh	x30, x7, x30                              #! PC = 0xaaaaaaab72a4 *)
mov x30 Hx7x30;
(* adds	x27, x27, x6                               #! PC = 0xaaaaaaab72a8 *)
adds carry x27 x27 x6;
(* adcs	x28, x28, x29                              #! PC = 0xaaaaaaab72ac *)
adcs carry x28 x28 x29 carry;
(* adc	x17, xzr, xzr                               #! PC = 0xaaaaaaab72b0 *)
adc x17 0@uint64 0@uint64 carry;
(* adds	x28, x28, x24                              #! PC = 0xaaaaaaab72b4 *)
adds carry x28 x28 x24;
(* adc	x17, x17, x30                               #! PC = 0xaaaaaaab72b8 *)
adc x17 x17 x30 carry;
(* subs	x3, x3, x26                                #! PC = 0xaaaaaaab72bc *)
subc carry x3 x3 x26;
(* sbcs	x4, x4, x27                                #! PC = 0xaaaaaaab72c0 *)
sbcs carry x4 x4 x27 carry;
(* sbcs	x5, x5, x28                                #! PC = 0xaaaaaaab72c4 *)
sbcs carry x5 x5 x28 carry;
(* sbcs	x14, x14, x17                              #! PC = 0xaaaaaaab72c8 *)
sbcs carry x14 x14 x17 carry;
(* sbcs	x15, x15, xzr                              #! PC = 0xaaaaaaab72cc *)
sbcs carry x15 x15 0@uint64 carry;
(* sbc	x16, x16, xzr                               #! PC = 0xaaaaaaab72d0 *)
sbcs docare x16 x16 0@uint64 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* NOTE: summary *)
assert eqmod (limbs 64 [x3, x4, x5, x14, x15, x16])
             (limbs 64 [a0o3, a1o3, a2o3] * limbs 64 [b3o3, b4o3] +
              limbs 64 [b0o3, b1o3, b2o3] * limbs 64 [a3o3, a4o3])
             (2**384) && true;
assume limbs 64 [x3, x4, x5, x14, x15, x16] =
       limbs 64 [a0o3, a1o3, a2o3] * limbs 64 [b3o3, b4o3] +
       limbs 64 [b0o3, b1o3, b2o3] * limbs 64 [a3o3, a4o3] && true;

(* adds	x11, x11, x3                               #! PC = 0xaaaaaaab72d4 *)
adds carry x11 x11 x3;
(* adcs	x12, x12, x4                               #! PC = 0xaaaaaaab72d8 *)
adcs carry x12 x12 x4 carry;
(* adcs	x13, x13, x5                               #! PC = 0xaaaaaaab72dc *)
adcs carry x13 x13 x5 carry;
(* adcs	x14, x14, x26                              #! PC = 0xaaaaaaab72e0 *)
adcs carry x14 x14 x26 carry;
(* adcs	x15, x15, x27                              #! PC = 0xaaaaaaab72e4 *)
adcs carry x15 x15 x27 carry;
(* adcs	x16, x16, x28                              #! PC = 0xaaaaaaab72e8 *)
adcs carry x16 x16 x28 carry;
(* adc	x17, x17, xzr                               #! PC = 0xaaaaaaab72ec *)
adc x17 x17 0@uint64 carry;
(* ldp	x7, x26, [x2, #72]                          #! EA = L0xffffffffe0d0; Value = 0x00000001f07b2c79; PC = 0xaaaaaaab72f0 *)
mov x7 L0xffffffffe0d0;
mov x26 L0xffffffffe0d8;
(* ldp	x27, x28, [x2, #88]                         #! EA = L0xffffffffe0e0; Value = 0x8192e60bcaf2befb; PC = 0xaaaaaaab72f4 *)
mov x27 L0xffffffffe0e0;
mov x28 L0xffffffffe0e8;
(* subs	x26, x26, x8                               #! PC = 0xaaaaaaab72f8 *)
subc carry x26 x26 x8;
(* ldp	x29, x30, [x2, #104]                        #! EA = L0xffffffffe0f0; Value = 0x2e882c4265e135c9; PC = 0xaaaaaaab72fc *)
mov x29 L0xffffffffe0f0;
mov x30 L0xffffffffe0f8;
(* sbcs	x27, x27, x9                               #! PC = 0xaaaaaaab7300 *)
sbcs carry x27 x27 x9 carry;
(* sbcs	x28, x28, x10                              #! PC = 0xaaaaaaab7304 *)
sbcs carry x28 x28 x10 carry;
(* ldp	x3, x4, [x2, #40]                           #! EA = L0xffffffffe0b0; Value = 0x228cac16da662982; PC = 0xaaaaaaab7308 *)
mov x3 L0xffffffffe0b0;
mov x4 L0xffffffffe0b8;
(* sbcs	x29, x29, x11                              #! PC = 0xaaaaaaab730c *)
sbcs carry x29 x29 x11 carry;
(* sbcs	x30, x30, x12                              #! PC = 0xaaaaaaab7310 *)
sbcs carry x30 x30 x12 carry;
(* ldp	x5, x6, [x2, #56]                           #! EA = L0xffffffffe0c0; Value = 0x62f3679b42c8d191; PC = 0xaaaaaaab7314 *)
mov x5 L0xffffffffe0c0;
mov x6 L0xffffffffe0c8;
(* sbcs	x3, x3, x13                                #! PC = 0xaaaaaaab7318 *)
sbcs carry x3 x3 x13 carry;
(* sbcs	x4, x4, x14                                #! PC = 0xaaaaaaab731c *)
sbcs carry x4 x4 x14 carry;
(* sbcs	x5, x5, x15                                #! PC = 0xaaaaaaab7320 *)
sbcs carry x5 x5 x15 carry;
(* sbcs	x6, x6, x16                                #! PC = 0xaaaaaaab7324 *)
sbcs carry x6 x6 x16 carry;
(* sbc	x7, x7, x17                                 #! PC = 0xaaaaaaab7328 *)
sbcs docare x7 x7 x17 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* NOTE: summary *)
assert eqmod (limbs 64 [x26, x27, x28, x29, x30, x3, x4, x5, x6, x7])
             (limbs 64 [ar0, ar1, ar2, ar3, ar4] *
              limbs 64 [br5, br6, br7, br8, br9] +
              limbs 64 [br0, br1, br2, br3, br4] *
              limbs 64 [ar5, ar6, ar7, ar8, ar9])
             (2**640) && true;
assume limbs 64 [x26, x27, x28, x29, x30, x3, x4, x5, x6, x7] =
       limbs 64 [ar0, ar1, ar2, ar3, ar4] * limbs 64 [br5, br6, br7, br8, br9] +
       limbs 64 [br0, br1, br2, br3, br4] * limbs 64 [ar5, ar6, ar7, ar8, ar9]
    && true;

(* adds	x19, x19, x26                              #! PC = 0xaaaaaaab732c *)
adds carry x19 x19 x26;
(* adcs	x20, x20, x27                              #! PC = 0xaaaaaaab7330 *)
adcs carry x20 x20 x27 carry;
(* ldp	x25, x26, [sp, #48]                         #! EA = L0xffffffffdf50; Value = 0x0000ffffffffe6b8; PC = 0xaaaaaaab7334 *)
mov x25 L0xffffffffdf50;
mov x26 L0xffffffffdf58;
(* adcs	x21, x21, x28                              #! PC = 0xaaaaaaab7338 *)
adcs carry x21 x21 x28 carry;
(* adcs	x22, x22, x29                              #! PC = 0xaaaaaaab733c *)
adcs carry x22 x22 x29 carry;
(* stp	x19, x20, [x2, #40]                         #! EA = L0xffffffffe0b0; PC = 0xaaaaaaab7340 *)
mov L0xffffffffe0b0 x19;
mov L0xffffffffe0b8 x20;
(* adcs	x23, x23, x30                              #! PC = 0xaaaaaaab7344 *)
adcs carry x23 x23 x30 carry;
(* ldp	x27, x28, [sp, #64]                         #! EA = L0xffffffffdf60; Value = 0x0000ffffffffe7a8; PC = 0xaaaaaaab7348 *)
mov x27 L0xffffffffdf60;
mov x28 L0xffffffffdf68;
(* adcs	x3, x3, x8                                 #! PC = 0xaaaaaaab734c *)
adcs carry x3 x3 x8 carry;
(* stp	x21, x22, [x2, #56]                         #! EA = L0xffffffffe0c0; PC = 0xaaaaaaab7350 *)
mov L0xffffffffe0c0 x21;
mov L0xffffffffe0c8 x22;
(* adcs	x4, x4, x9                                 #! PC = 0xaaaaaaab7354 *)
adcs carry x4 x4 x9 carry;
(* ldp	x19, x20, [sp]                              #! EA = L0xffffffffdf20; Value = 0x0000ffffffffe088; PC = 0xaaaaaaab7358 *)
mov x19 L0xffffffffdf20;
mov x20 L0xffffffffdf28;
(* adcs	x5, x5, x10                                #! PC = 0xaaaaaaab735c *)
adcs carry x5 x5 x10 carry;
(* stp	x23, x3, [x2, #72]                          #! EA = L0xffffffffe0d0; PC = 0xaaaaaaab7360 *)
mov L0xffffffffe0d0 x23;
mov L0xffffffffe0d8 x3;
(* adcs	x6, x6, x11                                #! PC = 0xaaaaaaab7364 *)
adcs carry x6 x6 x11 carry;
(* ldp	x21, x22, [sp, #16]                         #! EA = L0xffffffffdf30; Value = 0x0000ffffffffe128; PC = 0xaaaaaaab7368 *)
mov x21 L0xffffffffdf30;
mov x22 L0xffffffffdf38;
(* adcs	x7, x7, x12                                #! PC = 0xaaaaaaab736c *)
adcs carry x7 x7 x12 carry;
(* stp	x4, x5, [x2, #88]                           #! EA = L0xffffffffe0e0; PC = 0xaaaaaaab7370 *)
mov L0xffffffffe0e0 x4;
mov L0xffffffffe0e8 x5;
(* adcs	x13, x13, xzr                              #! PC = 0xaaaaaaab7374 *)
adcs carry x13 x13 0@uint64 carry;
(* ldp	x23, x24, [sp, #32]                         #! EA = L0xffffffffdf40; Value = 0x0000ffffffffdfe8; PC = 0xaaaaaaab7378 *)
mov x23 L0xffffffffdf40;
mov x24 L0xffffffffdf48;
(* adcs	x14, x14, xzr                              #! PC = 0xaaaaaaab737c *)
adcs carry x14 x14 0@uint64 carry;
(* stp	x6, x7, [x2, #104]                          #! EA = L0xffffffffe0f0; PC = 0xaaaaaaab7380 *)
mov L0xffffffffe0f0 x6;
mov L0xffffffffe0f8 x7;
(* adcs	x15, x15, xzr                              #! PC = 0xaaaaaaab7384 *)
adcs carry x15 x15 0@uint64 carry;
(* ldp	x29, x30, [sp, #80]                         #! EA = L0xffffffffdf70; Value = 0x0000ffffffffdf80; PC = 0xaaaaaaab7388 *)
mov x29 L0xffffffffdf70;
mov x30 L0xffffffffdf78;
(* adcs	x16, x16, xzr                              #! PC = 0xaaaaaaab738c *)
adcs carry x16 x16 0@uint64 carry;
(* stp	x13, x14, [x2, #120]                        #! EA = L0xffffffffe100; PC = 0xaaaaaaab7390 *)
mov L0xffffffffe100 x13;
mov L0xffffffffe108 x14;
(* adc	x17, x17, xzr                               #! PC = 0xaaaaaaab7394 *)
adc x17 x17 0@uint64 carry;
(* stp	x15, x16, [x2, #136]                        #! EA = L0xffffffffe110; PC = 0xaaaaaaab7398 *)
mov L0xffffffffe110 x15;
mov L0xffffffffe118 x16;
(* str	x17, [x2, #152]                             #! EA = L0xffffffffe120; PC = 0xaaaaaaab739c *)
mov L0xffffffffe120 x17;
(* add	sp, sp, #0x60                               #! PC = 0xaaaaaaab73a0 *)
adds dontcare sp sp 0x60@uint64;
(* #! <- SP = 0xffffffffdf80 *)
#! 0xffffffffdf80 = 0xffffffffdf80;
(* #ret                                            #! PC = 0xaaaaaaab73a4 *)
#ret                                            #! 0xaaaaaaab73a4 = 0xaaaaaaab73a4;

(* CUT 2 *)
cut limbs 64 [L0xffffffffe088, L0xffffffffe090, L0xffffffffe098,
              L0xffffffffe0a0, L0xffffffffe0a8, L0xffffffffe0b0,
              L0xffffffffe0b8, L0xffffffffe0c0, L0xffffffffe0c8,
              L0xffffffffe0d0, L0xffffffffe0d8, L0xffffffffe0e0,
              L0xffffffffe0e8, L0xffffffffe0f0, L0xffffffffe0f8,
              L0xffffffffe100, L0xffffffffe108, L0xffffffffe110,
              L0xffffffffe118, L0xffffffffe120] =
    limbs 64 [ar0, ar1, ar2, ar3, ar4, ar5, ar6, ar7, ar8, ar9] *
    limbs 64 [br0, br1, br2, br3, br4, br5, br6, br7, br8, br9]
 && limbs 64 [L0xffffffffe088, L0xffffffffe090, L0xffffffffe098,
              L0xffffffffe0a0, L0xffffffffe0a8, L0xffffffffe0b0,
              L0xffffffffe0b8, L0xffffffffe0c0, L0xffffffffe0c8,
              L0xffffffffe0d0, L0xffffffffe0d8, L0xffffffffe0e0,
              L0xffffffffe0e8, L0xffffffffe0f0, L0xffffffffe0f8,
              L0xffffffffe100, L0xffffffffe108, L0xffffffffe110,
              L0xffffffffe118, L0xffffffffe120] <u (2**1221)@1280
    prove with [ precondition ];

(* add	x20, sp, #0x248                             #! PC = 0xaaaaaaaae5a8 *)
adds dontcare x20 sp 0x248@uint64;
(* mov	x1, x27                                     #! PC = 0xaaaaaaaae5ac *)
mov x1 x27;
(* mov	x0, x26                                     #! PC = 0xaaaaaaaae5b0 *)
mov x0 x26;
(* mov	x2, x21                                     #! PC = 0xaaaaaaaae5b4 *)
mov x2 x21;
(* mov	w3, #0xa                   	// #10          #! PC = 0xaaaaaaaae5b8 *)
mov w3 0xa@uint64;
(* #bl	0xaaaaaaab6710 <mp_mul>                     #! PC = 0xaaaaaaaae5bc *)
#bl	0xaaaaaaab6710 <mp_mul>                     #! 0xaaaaaaaae5bc = 0xaaaaaaaae5bc;
(* #! -> SP = 0xffffffffdf80 *)
#! 0xffffffffdf80 = 0xffffffffdf80;
(* #b	0xaaaaaaab6b30 <mul610_asm>                  #! PC = 0xaaaaaaab6710 *)
#b	0xaaaaaaab6b30 <mul610_asm>                  #! 0xaaaaaaab6710 = 0xaaaaaaab6710;
(* sub	sp, sp, #0x60                               #! PC = 0xaaaaaaab6b30 *)
subc dontcare sp sp 0x60@uint64;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe708; Value = 0xabd34327f67a00c5; PC = 0xaaaaaaab6b34 *)
mov x3 L0xffffffffe708;
mov x4 L0xffffffffe710;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffe718; Value = 0xdb12d37b563e23c7; PC = 0xaaaaaaab6b38 *)
mov x5 L0xffffffffe718;
mov x6 L0xffffffffe720;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe728; Value = 0x624ccf9246b5cc94; PC = 0xaaaaaaab6b3c *)
mov x7 L0xffffffffe728;
mov x8 L0xffffffffe730;
(* ldp	x10, x11, [x0, #48]                         #! EA = L0xffffffffe738; Value = 0xa1620adc90bff912; PC = 0xaaaaaaab6b40 *)
mov x10 L0xffffffffe738;
mov x11 L0xffffffffe740;
(* ldp	x12, x13, [x0, #64]                         #! EA = L0xffffffffe748; Value = 0xb4bbb9ad51928a5a; PC = 0xaaaaaaab6b44 *)
mov x12 L0xffffffffe748;
mov x13 L0xffffffffe750;
(* stp	x25, x26, [sp, #48]                         #! EA = L0xffffffffdf50; PC = 0xaaaaaaab6b48 *)
mov L0xffffffffdf50 x25;
mov L0xffffffffdf58 x26;
(* stp	x27, x28, [sp, #64]                         #! EA = L0xffffffffdf60; PC = 0xaaaaaaab6b4c *)
mov L0xffffffffdf60 x27;
mov L0xffffffffdf68 x28;
(* stp	x29, x30, [sp, #80]                         #! EA = L0xffffffffdf70; PC = 0xaaaaaaab6b50 *)
mov L0xffffffffdf70 x29;
mov L0xffffffffdf78 x30;
(* adds	x26, x3, x8                                #! PC = 0xaaaaaaab6b54 *)
adds carry x26 x3 x8;
(* stp	x21, x22, [sp, #16]                         #! EA = L0xffffffffdf30; PC = 0xaaaaaaab6b58 *)
mov L0xffffffffdf30 x21;
mov L0xffffffffdf38 x22;
(* adcs	x27, x4, x10                               #! PC = 0xaaaaaaab6b5c *)
adcs carry x27 x4 x10 carry;
(* stp	x23, x24, [sp, #32]                         #! EA = L0xffffffffdf40; PC = 0xaaaaaaab6b60 *)
mov L0xffffffffdf40 x23;
mov L0xffffffffdf48 x24;
(* adcs	x28, x5, x11                               #! PC = 0xaaaaaaab6b64 *)
adcs carry x28 x5 x11 carry;
(* ldp	x21, x22, [x1]                              #! EA = L0xffffffffe7a8; Value = 0xf0721ae7b0ee18c2; PC = 0xaaaaaaab6b68 *)
mov x21 L0xffffffffe7a8;
mov x22 L0xffffffffe7b0;
(* adcs	x29, x6, x12                               #! PC = 0xaaaaaaab6b6c *)
adcs carry x29 x6 x12 carry;
(* ldp	x14, x15, [x1, #48]                         #! EA = L0xffffffffe7d8; Value = 0x9ccfa4405cc535c0; PC = 0xaaaaaaab6b70 *)
mov x14 L0xffffffffe7d8;
mov x15 L0xffffffffe7e0;
(* adcs	x30, x7, x13                               #! PC = 0xaaaaaaab6b74 *)
adcs carry x30 x7 x13 carry;
(* ldp	x23, x24, [x1, #16]                         #! EA = L0xffffffffe7b8; Value = 0x55ed30181229a118; PC = 0xaaaaaaab6b78 *)
mov x23 L0xffffffffe7b8;
mov x24 L0xffffffffe7c0;
(* adc	x9, xzr, xzr                                #! PC = 0xaaaaaaab6b7c *)
adc x9 0@uint64 0@uint64 carry;
(* ldp	x25, x13, [x1, #32]                         #! EA = L0xffffffffe7c8; Value = 0x3647d345b923d00a; PC = 0xaaaaaaab6b80 *)
mov x25 L0xffffffffe7c8;
mov x13 L0xffffffffe7d0;
(* adds	x13, x13, x21                              #! PC = 0xaaaaaaab6b84 *)
adds carry x13 x13 x21;
(* ldp	x16, x17, [x1, #64]                         #! EA = L0xffffffffe7e8; Value = 0x367156d3d98f96d6; PC = 0xaaaaaaab6b88 *)
mov x16 L0xffffffffe7e8;
mov x17 L0xffffffffe7f0;
(* adcs	x14, x14, x22                              #! PC = 0xaaaaaaab6b8c *)
adcs carry x14 x14 x22 carry;
(* adcs	x15, x15, x23                              #! PC = 0xaaaaaaab6b90 *)
adcs carry x15 x15 x23 carry;
(* adcs	x16, x16, x24                              #! PC = 0xaaaaaaab6b94 *)
adcs carry x16 x16 x24 carry;
(* adcs	x17, x17, x25                              #! PC = 0xaaaaaaab6b98 *)
adcs carry x17 x17 x25 carry;
(* adc	x8, xzr, xzr                                #! PC = 0xaaaaaaab6b9c *)
adc x8 0@uint64 0@uint64 carry;

ghost x8m2@uint64, x9m2@uint64 :
      and [x8m2 = x8, x9m2 = x9] && and [x8m2 = x8, x9m2 = x9];

(* neg	x8, x8                                      #! PC = 0xaaaaaaab6ba0 *)
subc dontcare x8 0@uint64 x8;
(* neg	x9, x9                                      #! PC = 0xaaaaaaab6ba4 *)
subc dontcare x9 0@uint64 x9;
(* stp	x19, x20, [sp]                              #! EA = L0xffffffffdf20; PC = 0xaaaaaaab6ba8 *)
mov L0xffffffffdf20 x19;
mov L0xffffffffdf28 x20;
(* and	x3, x13, x9                                 #! PC = 0xaaaaaaab6bac *)
and x3@uint64 x13 x9;
(* and	x4, x14, x9                                 #! PC = 0xaaaaaaab6bb0 *)
and x4@uint64 x14 x9;
(* and	x5, x15, x9                                 #! PC = 0xaaaaaaab6bb4 *)
and x5@uint64 x15 x9;
(* and	x6, x16, x9                                 #! PC = 0xaaaaaaab6bb8 *)
and x6@uint64 x16 x9;
(* and	x7, x17, x9                                 #! PC = 0xaaaaaaab6bbc *)
and x7@uint64 x17 x9;
(* and	x9, x27, x8                                 #! PC = 0xaaaaaaab6bc0 *)
and x9@uint64 x27 x8;
(* and	x10, x28, x8                                #! PC = 0xaaaaaaab6bc4 *)
and x10@uint64 x28 x8;
(* and	x11, x29, x8                                #! PC = 0xaaaaaaab6bc8 *)
and x11@uint64 x29 x8;
(* and	x12, x30, x8                                #! PC = 0xaaaaaaab6bcc *)
and x12@uint64 x30 x8;
(* and	x8, x26, x8                                 #! PC = 0xaaaaaaab6bd0 *)
and x8@uint64 x26 x8;

(* NOTE: mask *)
assert true
    && and [x8m2 * (1@64 - x8m2) = 0@64, x9m2 * (1@64 - x9m2) = 0@64,
            limbs 64 [x3, x4, x5, x6, x7] =
            (uext x9m2 256) * limbs 64 [x13, x14, x15, x16, x17],
            limbs 64 [x8, x9, x10, x11, x12] =
            (uext x8m2 256) * limbs 64 [x26, x27, x28, x29, x30]];
assume and [x8m2 * (1 - x8m2) = 0, x9m2 * (1 - x9m2) = 0,
            limbs 64 [x3, x4, x5, x6, x7] =
            x9m2 * limbs 64 [x13, x14, x15, x16, x17],
            limbs 64 [x8, x9, x10, x11, x12] =
            x8m2 * limbs 64 [x26, x27, x28, x29, x30]] && true;

(* adds	x8, x8, x3                                 #! PC = 0xaaaaaaab6bd4 *)
adds carry x8 x8 x3;
(* adcs	x9, x9, x4                                 #! PC = 0xaaaaaaab6bd8 *)
adcs carry x9 x9 x4 carry;
(* stp	x26, x27, [x2]                              #! EA = L0xffffffffe128; PC = 0xaaaaaaab6bdc *)
mov L0xffffffffe128 x26;
mov L0xffffffffe130 x27;
(* adcs	x10, x10, x5                               #! PC = 0xaaaaaaab6be0 *)
adcs carry x10 x10 x5 carry;
(* stp	x28, x29, [x2, #16]                         #! EA = L0xffffffffe138; PC = 0xaaaaaaab6be4 *)
mov L0xffffffffe138 x28;
mov L0xffffffffe140 x29;
(* adcs	x11, x11, x6                               #! PC = 0xaaaaaaab6be8 *)
adcs carry x11 x11 x6 carry;
(* str	x30, [x2, #32]                              #! EA = L0xffffffffe148; PC = 0xaaaaaaab6bec *)
mov L0xffffffffe148 x30;
(* adc	x12, x12, x7                                #! PC = 0xaaaaaaab6bf0 *)
adc x12 x12 x7 carry;

ghost a0o4@uint64, a1o4@uint64, a2o4@uint64, a3o4@uint64, a4o4@uint64,
      b0o4@uint64, b1o4@uint64, b2o4@uint64, b3o4@uint64, b4o4@uint64 :
      and [a0o4=x26, a1o4=x27, a2o4=x28, a3o4=x29, a4o4=x30,
           b0o4=x13, b1o4=x14, b2o4=x15, b3o4=x16, b4o4=x17]
   && and [a0o4=x26, a1o4=x27, a2o4=x28, a3o4=x29, a4o4=x30,
           b0o4=x13, b1o4=x14, b2o4=x15, b3o4=x16, b4o4=x17];

(* adds	x3, x26, x29                               #! PC = 0xaaaaaaab6bf4 *)
adds carry x3 x26 x29;
(* adcs	x4, x27, x30                               #! PC = 0xaaaaaaab6bf8 *)
adcs carry x4 x27 x30 carry;
(* adcs	x5, x28, xzr                               #! PC = 0xaaaaaaab6bfc *)
adcs carry x5 x28 0@uint64 carry;
(* adc	x24, xzr, xzr                               #! PC = 0xaaaaaaab6c00 *)
adc x24 0@uint64 0@uint64 carry;
(* adds	x6, x13, x16                               #! PC = 0xaaaaaaab6c04 *)
adds carry x6 x13 x16;
(* adcs	x7, x14, x17                               #! PC = 0xaaaaaaab6c08 *)
adcs carry x7 x14 x17 carry;
(* adcs	x19, x15, xzr                              #! PC = 0xaaaaaaab6c0c *)
adcs carry x19 x15 0@uint64 carry;
(* adc	x25, xzr, xzr                               #! PC = 0xaaaaaaab6c10 *)
adc x25 0@uint64 0@uint64 carry;

ghost x24m4@uint64, x25m4@uint64 :
      and [x24m4 = x24, x25m4 = x25] && and [x24m4 = x24, x25m4 = x25];

(* neg	x24, x24                                    #! PC = 0xaaaaaaab6c14 *)
subc dontcare x24 0@uint64 x24;
(* neg	x25, x25                                    #! PC = 0xaaaaaaab6c18 *)
subc dontcare x25 0@uint64 x25;
(* and	x20, x6, x24                                #! PC = 0xaaaaaaab6c1c *)
and x20@uint64 x6 x24;
(* and	x21, x7, x24                                #! PC = 0xaaaaaaab6c20 *)
and x21@uint64 x7 x24;
(* and	x22, x19, x24                               #! PC = 0xaaaaaaab6c24 *)
and x22@uint64 x19 x24;
(* mul	x26, x3, x6                                 #! PC = 0xaaaaaaab6c28 *)
mull Hx3x6 x26 x3 x6;
(* mul	x27, x3, x7                                 #! PC = 0xaaaaaaab6c2c *)
mull Hx3x7 x27 x3 x7;
(* and	x23, x3, x25                                #! PC = 0xaaaaaaab6c30 *)
and x23@uint64 x3 x25;
(* and	x24, x4, x25                                #! PC = 0xaaaaaaab6c34 *)
and x24@uint64 x4 x25;
(* and	x25, x5, x25                                #! PC = 0xaaaaaaab6c38 *)
and x25@uint64 x5 x25;

(* NOTE: mask *)
assert true
    && and [x24m4 * (1@64-x24m4) = 0@64, x25m4 * (1@64 - x25m4) = 0@64,
            limbs 64 [x20, x21, x22] = uext x24m4 128 * limbs 64 [x6, x7, x19],
            limbs 64 [x23, x24, x25] = uext x25m4 128 * limbs 64 [x3, x4,  x5]];
assume and [x24m4 * (1-x24m4) = 0, x25m4 * (1 - x25m4) = 0,
            limbs 64 [x20, x21, x22] = x24m4 * limbs 64 [x6, x7, x19],
            limbs 64 [x23, x24, x25] = x25m4 * limbs 64 [x3, x4,  x5]] && true;

(* umulh	x29, x3, x6                               #! PC = 0xaaaaaaab6c3c *)
mov x29 Hx3x6;
(* umulh	x28, x3, x7                               #! PC = 0xaaaaaaab6c40 *)
mov x28 Hx3x7;
(* adds	x20, x20, x23                              #! PC = 0xaaaaaaab6c44 *)
adds carry x20 x20 x23;
(* adcs	x21, x21, x24                              #! PC = 0xaaaaaaab6c48 *)
adcs carry x21 x21 x24 carry;
(* adc	x22, x22, x25                               #! PC = 0xaaaaaaab6c4c *)
adc x22 x22 x25 carry;
(* mul	x30, x4, x6                                 #! PC = 0xaaaaaaab6c50 *)
mull Hx4x6 x30 x4 x6;
(* umulh	x23, x4, x6                               #! PC = 0xaaaaaaab6c54 *)
mov x23 Hx4x6;
(* adds	x27, x27, x29                              #! PC = 0xaaaaaaab6c58 *)
adds carry x27 x27 x29;
(* adc	x28, x28, xzr                               #! PC = 0xaaaaaaab6c5c *)
adc x28 x28 0@uint64 carry;
(* mul	x25, x4, x7                                 #! PC = 0xaaaaaaab6c60 *)
mull Hx4x7 x25 x4 x7;
(* umulh	x29, x4, x7                               #! PC = 0xaaaaaaab6c64 *)
mov x29 Hx4x7;
(* adds	x27, x27, x30                              #! PC = 0xaaaaaaab6c68 *)
adds carry x27 x27 x30;
(* adcs	x28, x28, x23                              #! PC = 0xaaaaaaab6c6c *)
adcs carry x28 x28 x23 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab6c70 *)
adc x29 x29 0@uint64 carry;
(* mul	x30, x3, x19                                #! PC = 0xaaaaaaab6c74 *)
mull Hx3x19 x30 x3 x19;
(* umulh	x23, x3, x19                              #! PC = 0xaaaaaaab6c78 *)
mov x23 Hx3x19;
(* adds	x28, x28, x25                              #! PC = 0xaaaaaaab6c7c *)
adds carry x28 x28 x25;
(* adcs	x29, x29, x23                              #! PC = 0xaaaaaaab6c80 *)
adcs carry x29 x29 x23 carry;
(* adc	x24, xzr, xzr                               #! PC = 0xaaaaaaab6c84 *)
adc x24 0@uint64 0@uint64 carry;
(* mul	x25, x5, x6                                 #! PC = 0xaaaaaaab6c88 *)
mull Hx5x6 x25 x5 x6;
(* umulh	x23, x5, x6                               #! PC = 0xaaaaaaab6c8c *)
mov x23 Hx5x6;
(* adds	x28, x28, x30                              #! PC = 0xaaaaaaab6c90 *)
adds carry x28 x28 x30;
(* adcs	x29, x29, x23                              #! PC = 0xaaaaaaab6c94 *)
adcs carry x29 x29 x23 carry;
(* adc	x24, x24, xzr                               #! PC = 0xaaaaaaab6c98 *)
adc x24 x24 0@uint64 carry;
(* mul	x30, x4, x19                                #! PC = 0xaaaaaaab6c9c *)
mull Hx4x19 x30 x4 x19;
(* umulh	x23, x4, x19                              #! PC = 0xaaaaaaab6ca0 *)
mov x23 Hx4x19;
(* adds	x28, x28, x25                              #! PC = 0xaaaaaaab6ca4 *)
adds carry x28 x28 x25;
(* adcs	x29, x29, x30                              #! PC = 0xaaaaaaab6ca8 *)
adcs carry x29 x29 x30 carry;
(* adcs	x24, x24, x23                              #! PC = 0xaaaaaaab6cac *)
adcs carry x24 x24 x23 carry;
(* adc	x25, xzr, xzr                               #! PC = 0xaaaaaaab6cb0 *)
adc x25 0@uint64 0@uint64 carry;
(* mul	x30, x5, x7                                 #! PC = 0xaaaaaaab6cb4 *)
mull Hx5x7 x30 x5 x7;
(* umulh	x23, x5, x7                               #! PC = 0xaaaaaaab6cb8 *)
mov x23 Hx5x7;
(* adds	x29, x29, x30                              #! PC = 0xaaaaaaab6cbc *)
adds carry x29 x29 x30;
(* adcs	x24, x24, x23                              #! PC = 0xaaaaaaab6cc0 *)
adcs carry x24 x24 x23 carry;
(* adc	x25, x25, xzr                               #! PC = 0xaaaaaaab6cc4 *)
adc x25 x25 0@uint64 carry;
(* mul	x30, x5, x19                                #! PC = 0xaaaaaaab6cc8 *)
mull Hx5x19 x30 x5 x19;
(* umulh	x23, x5, x19                              #! PC = 0xaaaaaaab6ccc *)
mov x23 Hx5x19;
(* adds	x30, x30, x24                              #! PC = 0xaaaaaaab6cd0 *)
adds carry x30 x30 x24;
(* adc	x23, x23, x25                               #! PC = 0xaaaaaaab6cd4 *)
adc x23 x23 x25 carry;
(* adds	x20, x29, x20                              #! PC = 0xaaaaaaab6cd8 *)
adds carry x20 x29 x20;
(* adcs	x21, x30, x21                              #! PC = 0xaaaaaaab6cdc *)
adcs carry x21 x30 x21 carry;
(* ldp	x29, x30, [x2]                              #! EA = L0xffffffffe128; Value = 0x01fb31b73f18c413; PC = 0xaaaaaaab6ce0 *)
mov x29 L0xffffffffe128;
mov x30 L0xffffffffe130;
(* adc	x22, x23, x22                               #! PC = 0xaaaaaaab6ce4 *)
adcs dontcare x22 x23 x22 carry;
(* ldr	x23, [x2, #16]                              #! EA = L0xffffffffe138; Value = 0x6563eb9a3658a12d; PC = 0xaaaaaaab6ce8 *)
mov x23 L0xffffffffe138;
(* mul	x3, x29, x13                                #! PC = 0xaaaaaaab6cec *)
mull Hx29x13 x3 x29 x13;
(* mul	x4, x29, x14                                #! PC = 0xaaaaaaab6cf0 *)
mull Hx29x14 x4 x29 x14;
(* umulh	x6, x29, x13                              #! PC = 0xaaaaaaab6cf4 *)
mov x6 Hx29x13;
(* umulh	x5, x29, x14                              #! PC = 0xaaaaaaab6cf8 *)
mov x5 Hx29x14;
(* mul	x7, x30, x13                                #! PC = 0xaaaaaaab6cfc *)
mull Hx30x13 x7 x30 x13;
(* umulh	x19, x30, x13                             #! PC = 0xaaaaaaab6d00 *)
mov x19 Hx30x13;
(* adds	x4, x4, x6                                 #! PC = 0xaaaaaaab6d04 *)
adds carry x4 x4 x6;
(* adc	x5, x5, xzr                                 #! PC = 0xaaaaaaab6d08 *)
adc x5 x5 0@uint64 carry;
(* mul	x25, x30, x14                               #! PC = 0xaaaaaaab6d0c *)
mull Hx30x14 x25 x30 x14;
(* umulh	x6, x30, x14                              #! PC = 0xaaaaaaab6d10 *)
mov x6 Hx30x14;
(* adds	x4, x4, x7                                 #! PC = 0xaaaaaaab6d14 *)
adds carry x4 x4 x7;
(* adcs	x5, x5, x19                                #! PC = 0xaaaaaaab6d18 *)
adcs carry x5 x5 x19 carry;
(* adc	x6, x6, xzr                                 #! PC = 0xaaaaaaab6d1c *)
adc x6 x6 0@uint64 carry;
(* mul	x7, x29, x15                                #! PC = 0xaaaaaaab6d20 *)
mull Hx29x15 x7 x29 x15;
(* umulh	x19, x29, x15                             #! PC = 0xaaaaaaab6d24 *)
mov x19 Hx29x15;
(* adds	x5, x5, x25                                #! PC = 0xaaaaaaab6d28 *)
adds carry x5 x5 x25;
(* adcs	x6, x6, x19                                #! PC = 0xaaaaaaab6d2c *)
adcs carry x6 x6 x19 carry;
(* adc	x24, xzr, xzr                               #! PC = 0xaaaaaaab6d30 *)
adc x24 0@uint64 0@uint64 carry;
(* mul	x25, x23, x13                               #! PC = 0xaaaaaaab6d34 *)
mull Hx23x13 x25 x23 x13;
(* umulh	x19, x23, x13                             #! PC = 0xaaaaaaab6d38 *)
mov x19 Hx23x13;
(* adds	x5, x5, x7                                 #! PC = 0xaaaaaaab6d3c *)
adds carry x5 x5 x7;
(* adcs	x6, x6, x19                                #! PC = 0xaaaaaaab6d40 *)
adcs carry x6 x6 x19 carry;
(* adc	x24, x24, xzr                               #! PC = 0xaaaaaaab6d44 *)
adc x24 x24 0@uint64 carry;
(* mul	x7, x30, x15                                #! PC = 0xaaaaaaab6d48 *)
mull Hx30x15 x7 x30 x15;
(* umulh	x19, x30, x15                             #! PC = 0xaaaaaaab6d4c *)
mov x19 Hx30x15;
(* adds	x5, x5, x25                                #! PC = 0xaaaaaaab6d50 *)
adds carry x5 x5 x25;
(* adcs	x6, x6, x7                                 #! PC = 0xaaaaaaab6d54 *)
adcs carry x6 x6 x7 carry;
(* adcs	x24, x24, x19                              #! PC = 0xaaaaaaab6d58 *)
adcs carry x24 x24 x19 carry;
(* adc	x25, xzr, xzr                               #! PC = 0xaaaaaaab6d5c *)
adc x25 0@uint64 0@uint64 carry;
(* mul	x7, x23, x14                                #! PC = 0xaaaaaaab6d60 *)
mull Hx23x14 x7 x23 x14;
(* umulh	x19, x23, x14                             #! PC = 0xaaaaaaab6d64 *)
mov x19 Hx23x14;
(* adds	x6, x6, x7                                 #! PC = 0xaaaaaaab6d68 *)
adds carry x6 x6 x7;
(* adcs	x24, x24, x19                              #! PC = 0xaaaaaaab6d6c *)
adcs carry x24 x24 x19 carry;
(* adc	x25, x25, xzr                               #! PC = 0xaaaaaaab6d70 *)
adc x25 x25 0@uint64 carry;
(* mul	x7, x23, x15                                #! PC = 0xaaaaaaab6d74 *)
mull Hx23x15 x7 x23 x15;
(* umulh	x19, x23, x15                             #! PC = 0xaaaaaaab6d78 *)
mov x19 Hx23x15;
(* adds	x7, x7, x24                                #! PC = 0xaaaaaaab6d7c *)
adds carry x7 x7 x24;
(* adc	x19, x19, x25                               #! PC = 0xaaaaaaab6d80 *)
adc x19 x19 x25 carry;
(* ldp	x29, x30, [x2, #24]                         #! EA = L0xffffffffe140; Value = 0x64743e8c3c95893a; PC = 0xaaaaaaab6d84 *)
mov x29 L0xffffffffe140;
mov x30 L0xffffffffe148;
(* subs	x26, x26, x3                               #! PC = 0xaaaaaaab6d88 *)
subc carry x26 x26 x3;
(* sbcs	x27, x27, x4                               #! PC = 0xaaaaaaab6d8c *)
sbcs carry x27 x27 x4 carry;
(* mul	x13, x29, x16                               #! PC = 0xaaaaaaab6d90 *)
mull Hx29x16 x13 x29 x16;
(* umulh	x23, x29, x16                             #! PC = 0xaaaaaaab6d94 *)
mov x23 Hx29x16;
(* sbcs	x28, x28, x5                               #! PC = 0xaaaaaaab6d98 *)
sbcs carry x28 x28 x5 carry;
(* sbcs	x20, x20, x6                               #! PC = 0xaaaaaaab6d9c *)
sbcs carry x20 x20 x6 carry;
(* mul	x14, x29, x17                               #! PC = 0xaaaaaaab6da0 *)
mull Hx29x17 x14 x29 x17;
(* umulh	x15, x29, x17                             #! PC = 0xaaaaaaab6da4 *)
mov x15 Hx29x17;
(* sbcs	x21, x21, x7                               #! PC = 0xaaaaaaab6da8 *)
sbcs carry x21 x21 x7 carry;
(* sbc	x22, x22, x19                               #! PC = 0xaaaaaaab6dac *)
sbcs dontcare x22 x22 x19 carry;
(* mul	x29, x30, x16                               #! PC = 0xaaaaaaab6db0 *)
mull Hx30x16 x29 x30 x16;
(* umulh	x16, x30, x16                             #! PC = 0xaaaaaaab6db4 *)
mov x16 Hx30x16;
(* adds	x14, x14, x23                              #! PC = 0xaaaaaaab6db8 *)
adds carry x14 x14 x23;
(* adc	x15, x15, xzr                               #! PC = 0xaaaaaaab6dbc *)
adc x15 x15 0@uint64 carry;
(* mul	x24, x30, x17                               #! PC = 0xaaaaaaab6dc0 *)
mull Hx30x17 x24 x30 x17;
(* umulh	x17, x30, x17                             #! PC = 0xaaaaaaab6dc4 *)
mov x17 Hx30x17;
(* adds	x14, x14, x29                              #! PC = 0xaaaaaaab6dc8 *)
adds carry x14 x14 x29;
(* adcs	x15, x15, x16                              #! PC = 0xaaaaaaab6dcc *)
adcs carry x15 x15 x16 carry;
(* adc	x23, xzr, xzr                               #! PC = 0xaaaaaaab6dd0 *)
adc x23 0@uint64 0@uint64 carry;
(* adds	x15, x15, x24                              #! PC = 0xaaaaaaab6dd4 *)
adds carry x15 x15 x24;
(* adc	x23, x23, x17                               #! PC = 0xaaaaaaab6dd8 *)
adc x23 x23 x17 carry;
(* subs	x26, x26, x13                              #! PC = 0xaaaaaaab6ddc *)
subc carry x26 x26 x13;
(* sbcs	x27, x27, x14                              #! PC = 0xaaaaaaab6de0 *)
sbcs carry x27 x27 x14 carry;
(* sbcs	x28, x28, x15                              #! PC = 0xaaaaaaab6de4 *)
sbcs carry x28 x28 x15 carry;
(* sbcs	x20, x20, x23                              #! PC = 0xaaaaaaab6de8 *)
sbcs carry x20 x20 x23 carry;
(* sbcs	x21, x21, xzr                              #! PC = 0xaaaaaaab6dec *)
sbcs carry x21 x21 0@uint64 carry;
(* sbc	x22, x22, xzr                               #! PC = 0xaaaaaaab6df0 *)
sbcs dontcare x22 x22 0@uint64 carry;

(* NOTE: summary *)
assert eqmod (limbs 64 [x26, x27, x28, x20, x21, x22])
             (limbs 64 [a0o4, a1o4, a2o4] * limbs 64 [b3o4, b4o4] +
              limbs 64 [b0o4, b1o4, b2o4] * limbs 64 [a3o4, a4o4])
             (2**384) && true;
assume limbs 64 [x26, x27, x28, x20, x21, x22] =
       limbs 64 [a0o4, a1o4, a2o4] * limbs 64 [b3o4, b4o4] +
       limbs 64 [b0o4, b1o4, b2o4] * limbs 64 [a3o4, a4o4] && true;

(* adds	x6, x6, x26                                #! PC = 0xaaaaaaab6df4 *)
adds carry x6 x6 x26;
(* adcs	x7, x7, x27                                #! PC = 0xaaaaaaab6df8 *)
adcs carry x7 x7 x27 carry;
(* adcs	x19, x19, x28                              #! PC = 0xaaaaaaab6dfc *)
adcs carry x19 x19 x28 carry;
(* adcs	x20, x20, x13                              #! PC = 0xaaaaaaab6e00 *)
adcs carry x20 x20 x13 carry;
(* adcs	x21, x21, x14                              #! PC = 0xaaaaaaab6e04 *)
adcs carry x21 x21 x14 carry;
(* adcs	x22, x22, x15                              #! PC = 0xaaaaaaab6e08 *)
adcs carry x22 x22 x15 carry;
(* adc	x23, x23, xzr                               #! PC = 0xaaaaaaab6e0c *)
adcs docare x23 x23 0@uint64 carry;

(* TODO: cannot carry *)
(* assert true && docare = 0@1; *)
assume docare = 0 && true;

(* stp	x3, x4, [x2]                                #! EA = L0xffffffffe128; PC = 0xaaaaaaab6e10 *)
mov L0xffffffffe128 x3;
mov L0xffffffffe130 x4;
(* adds	x8, x8, x19                                #! PC = 0xaaaaaaab6e14 *)
adds carry x8 x8 x19;
(* stp	x5, x6, [x2, #16]                           #! EA = L0xffffffffe138; PC = 0xaaaaaaab6e18 *)
mov L0xffffffffe138 x5;
mov L0xffffffffe140 x6;
(* adcs	x9, x9, x20                                #! PC = 0xaaaaaaab6e1c *)
adcs carry x9 x9 x20 carry;
(* str	x7, [x2, #32]                               #! EA = L0xffffffffe148; PC = 0xaaaaaaab6e20 *)
mov L0xffffffffe148 x7;
(* adcs	x10, x10, x21                              #! PC = 0xaaaaaaab6e24 *)
adcs carry x10 x10 x21 carry;
(* ldp	x13, x14, [x0]                              #! EA = L0xffffffffe708; Value = 0xabd34327f67a00c5; PC = 0xaaaaaaab6e28 *)
mov x13 L0xffffffffe708;
mov x14 L0xffffffffe710;
(* adcs	x11, x11, x22                              #! PC = 0xaaaaaaab6e2c *)
adcs carry x11 x11 x22 carry;
(* ldp	x15, x16, [x0, #16]                         #! EA = L0xffffffffe718; Value = 0xdb12d37b563e23c7; PC = 0xaaaaaaab6e30 *)
mov x15 L0xffffffffe718;
mov x16 L0xffffffffe720;
(* adc	x12, x12, x23                               #! PC = 0xaaaaaaab6e34 *)
adcs dontcare x12 x12 x23 carry;
(* ldr	x17, [x0, #32]                              #! EA = L0xffffffffe728; Value = 0x624ccf9246b5cc94; PC = 0xaaaaaaab6e38 *)
mov x17 L0xffffffffe728;
(* ldp	x26, x27, [x1]                              #! EA = L0xffffffffe7a8; Value = 0xf0721ae7b0ee18c2; PC = 0xaaaaaaab6e3c *)
mov x26 L0xffffffffe7a8;
mov x27 L0xffffffffe7b0;
(* ldp	x28, x29, [x1, #16]                         #! EA = L0xffffffffe7b8; Value = 0x55ed30181229a118; PC = 0xaaaaaaab6e40 *)
mov x28 L0xffffffffe7b8;
mov x29 L0xffffffffe7c0;
(* ldr	x30, [x1, #32]                              #! EA = L0xffffffffe7c8; Value = 0x3647d345b923d00a; PC = 0xaaaaaaab6e44 *)
mov x30 L0xffffffffe7c8;

(* NOTE: MUL320_KARATSUBA_COMBA starts *)

ghost a0o5@uint64, a1o5@uint64, a2o5@uint64, a3o5@uint64, a4o5@uint64,
      b0o5@uint64, b1o5@uint64, b2o5@uint64, b3o5@uint64, b4o5@uint64 :
      and [a0o5=x13, a1o5=x14, a2o5=x15, a3o5=x16, a4o5=x17,
           b0o5=x26, b1o5=x27, b2o5=x28, b3o5=x29, b4o5=x30]
   && and [a0o5=x13, a1o5=x14, a2o5=x15, a3o5=x16, a4o5=x17,
           b0o5=x26, b1o5=x27, b2o5=x28, b3o5=x29, b4o5=x30];

(* adds	x3, x13, x16                               #! PC = 0xaaaaaaab6e48 *)
adds carry x3 x13 x16;
(* adcs	x4, x14, x17                               #! PC = 0xaaaaaaab6e4c *)
adcs carry x4 x14 x17 carry;
(* adcs	x5, x15, xzr                               #! PC = 0xaaaaaaab6e50 *)
adcs carry x5 x15 0@uint64 carry;
(* adc	x24, xzr, xzr                               #! PC = 0xaaaaaaab6e54 *)
adc x24 0@uint64 0@uint64 carry;
(* adds	x6, x26, x29                               #! PC = 0xaaaaaaab6e58 *)
adds carry x6 x26 x29;
(* adcs	x7, x27, x30                               #! PC = 0xaaaaaaab6e5c *)
adcs carry x7 x27 x30 carry;
(* adcs	x19, x28, xzr                              #! PC = 0xaaaaaaab6e60 *)
adcs carry x19 x28 0@uint64 carry;
(* adc	x25, xzr, xzr                               #! PC = 0xaaaaaaab6e64 *)
adc x25 0@uint64 0@uint64 carry;

ghost x24m5@uint64, x25m5@uint64 :
      and [x24m5 = x24, x25m5 = x25] && and [x24m5 = x24, x25m5 = x25];

(* neg	x24, x24                                    #! PC = 0xaaaaaaab6e68 *)
subc dontcare x24 0@uint64 x24;
(* neg	x25, x25                                    #! PC = 0xaaaaaaab6e6c *)
subc dontcare x25 0@uint64 x25;
(* and	x20, x6, x24                                #! PC = 0xaaaaaaab6e70 *)
and x20@uint64 x6 x24;
(* and	x21, x7, x24                                #! PC = 0xaaaaaaab6e74 *)
and x21@uint64 x7 x24;
(* and	x22, x19, x24                               #! PC = 0xaaaaaaab6e78 *)
and x22@uint64 x19 x24;
(* mul	x13, x3, x6                                 #! PC = 0xaaaaaaab6e7c *)
mull Hx3x6 x13 x3 x6;
(* mul	x14, x3, x7                                 #! PC = 0xaaaaaaab6e80 *)
mull Hx3x7 x14 x3 x7;
(* and	x23, x3, x25                                #! PC = 0xaaaaaaab6e84 *)
and x23@uint64 x3 x25;
(* and	x24, x4, x25                                #! PC = 0xaaaaaaab6e88 *)
and x24@uint64 x4 x25;
(* and	x25, x5, x25                                #! PC = 0xaaaaaaab6e8c *)
and x25@uint64 x5 x25;

(* NOTE: mask *)
assert true
    && and [x24m5 * (1@64-x24m5) = 0@64, x25m5 * (1@64 - x25m5) = 0@64,
            limbs 64 [x20, x21, x22] = uext x24m5 128 * limbs 64 [x6, x7, x19],
            limbs 64 [x23, x24, x25] = uext x25m5 128 * limbs 64 [x3, x4,  x5]];
assume and [x24m5 * (1-x24m5) = 0, x25m5 * (1 - x25m5) = 0,
            limbs 64 [x20, x21, x22] = x24m5 * limbs 64 [x6, x7, x19],
            limbs 64 [x23, x24, x25] = x25m5 * limbs 64 [x3, x4,  x5]] && true;

(* umulh	x16, x3, x6                               #! PC = 0xaaaaaaab6e90 *)
mov x16 Hx3x6;
(* umulh	x15, x3, x7                               #! PC = 0xaaaaaaab6e94 *)
mov x15 Hx3x7;
(* adds	x20, x20, x23                              #! PC = 0xaaaaaaab6e98 *)
adds carry x20 x20 x23;
(* adcs	x21, x21, x24                              #! PC = 0xaaaaaaab6e9c *)
adcs carry x21 x21 x24 carry;
(* adc	x22, x22, x25                               #! PC = 0xaaaaaaab6ea0 *)
adc x22 x22 x25 carry;
(* mul	x17, x4, x6                                 #! PC = 0xaaaaaaab6ea4 *)
mull Hx4x6 x17 x4 x6;
(* umulh	x23, x4, x6                               #! PC = 0xaaaaaaab6ea8 *)
mov x23 Hx4x6;
(* adds	x14, x14, x16                              #! PC = 0xaaaaaaab6eac *)
adds carry x14 x14 x16;
(* adc	x15, x15, xzr                               #! PC = 0xaaaaaaab6eb0 *)
adc x15 x15 0@uint64 carry;
(* mul	x25, x4, x7                                 #! PC = 0xaaaaaaab6eb4 *)
mull Hx4x7 x25 x4 x7;
(* umulh	x16, x4, x7                               #! PC = 0xaaaaaaab6eb8 *)
mov x16 Hx4x7;
(* adds	x14, x14, x17                              #! PC = 0xaaaaaaab6ebc *)
adds carry x14 x14 x17;
(* adcs	x15, x15, x23                              #! PC = 0xaaaaaaab6ec0 *)
adcs carry x15 x15 x23 carry;
(* adc	x16, x16, xzr                               #! PC = 0xaaaaaaab6ec4 *)
adc x16 x16 0@uint64 carry;
(* mul	x17, x3, x19                                #! PC = 0xaaaaaaab6ec8 *)
mull Hx3x19 x17 x3 x19;
(* umulh	x23, x3, x19                              #! PC = 0xaaaaaaab6ecc *)
mov x23 Hx3x19;
(* adds	x15, x15, x25                              #! PC = 0xaaaaaaab6ed0 *)
adds carry x15 x15 x25;
(* adcs	x16, x16, x23                              #! PC = 0xaaaaaaab6ed4 *)
adcs carry x16 x16 x23 carry;
(* adc	x24, xzr, xzr                               #! PC = 0xaaaaaaab6ed8 *)
adc x24 0@uint64 0@uint64 carry;
(* mul	x25, x5, x6                                 #! PC = 0xaaaaaaab6edc *)
mull Hx5x6 x25 x5 x6;
(* umulh	x23, x5, x6                               #! PC = 0xaaaaaaab6ee0 *)
mov x23 Hx5x6;
(* adds	x15, x15, x17                              #! PC = 0xaaaaaaab6ee4 *)
adds carry x15 x15 x17;
(* adcs	x16, x16, x23                              #! PC = 0xaaaaaaab6ee8 *)
adcs carry x16 x16 x23 carry;
(* adc	x24, x24, xzr                               #! PC = 0xaaaaaaab6eec *)
adc x24 x24 0@uint64 carry;
(* mul	x17, x4, x19                                #! PC = 0xaaaaaaab6ef0 *)
mull Hx4x19 x17 x4 x19;
(* umulh	x23, x4, x19                              #! PC = 0xaaaaaaab6ef4 *)
mov x23 Hx4x19;
(* adds	x15, x15, x25                              #! PC = 0xaaaaaaab6ef8 *)
adds carry x15 x15 x25;
(* adcs	x16, x16, x17                              #! PC = 0xaaaaaaab6efc *)
adcs carry x16 x16 x17 carry;
(* adcs	x24, x24, x23                              #! PC = 0xaaaaaaab6f00 *)
adcs carry x24 x24 x23 carry;
(* adc	x25, xzr, xzr                               #! PC = 0xaaaaaaab6f04 *)
adc x25 0@uint64 0@uint64 carry;
(* mul	x17, x5, x7                                 #! PC = 0xaaaaaaab6f08 *)
mull Hx5x7 x17 x5 x7;
(* umulh	x23, x5, x7                               #! PC = 0xaaaaaaab6f0c *)
mov x23 Hx5x7;
(* adds	x16, x16, x17                              #! PC = 0xaaaaaaab6f10 *)
adds carry x16 x16 x17;
(* adcs	x24, x24, x23                              #! PC = 0xaaaaaaab6f14 *)
adcs carry x24 x24 x23 carry;
(* adc	x25, x25, xzr                               #! PC = 0xaaaaaaab6f18 *)
adc x25 x25 0@uint64 carry;
(* mul	x17, x5, x19                                #! PC = 0xaaaaaaab6f1c *)
mull Hx5x19 x17 x5 x19;
(* umulh	x23, x5, x19                              #! PC = 0xaaaaaaab6f20 *)
mov x23 Hx5x19;
(* adds	x17, x17, x24                              #! PC = 0xaaaaaaab6f24 *)
adds carry x17 x17 x24;
(* adc	x23, x23, x25                               #! PC = 0xaaaaaaab6f28 *)
adc x23 x23 x25 carry;
(* adds	x20, x16, x20                              #! PC = 0xaaaaaaab6f2c *)
adds carry x20 x16 x20;
(* adcs	x21, x17, x21                              #! PC = 0xaaaaaaab6f30 *)
adcs carry x21 x17 x21 carry;
(* ldp	x16, x17, [x0]                              #! EA = L0xffffffffe708; Value = 0xabd34327f67a00c5; PC = 0xaaaaaaab6f34 *)
mov x16 L0xffffffffe708;
mov x17 L0xffffffffe710;
(* adc	x22, x23, x22                               #! PC = 0xaaaaaaab6f38 *)
adcs dontcare x22 x23 x22 carry;
(* ldr	x23, [x0, #16]                              #! EA = L0xffffffffe718; Value = 0xdb12d37b563e23c7; PC = 0xaaaaaaab6f3c *)
mov x23 L0xffffffffe718;
(* mul	x3, x16, x26                                #! PC = 0xaaaaaaab6f40 *)
mull Hx16x26 x3 x16 x26;
(* mul	x4, x16, x27                                #! PC = 0xaaaaaaab6f44 *)
mull Hx16x27 x4 x16 x27;
(* umulh	x6, x16, x26                              #! PC = 0xaaaaaaab6f48 *)
mov x6 Hx16x26;
(* umulh	x5, x16, x27                              #! PC = 0xaaaaaaab6f4c *)
mov x5 Hx16x27;
(* mul	x7, x17, x26                                #! PC = 0xaaaaaaab6f50 *)
mull Hx17x26 x7 x17 x26;
(* umulh	x19, x17, x26                             #! PC = 0xaaaaaaab6f54 *)
mov x19 Hx17x26;
(* adds	x4, x4, x6                                 #! PC = 0xaaaaaaab6f58 *)
adds carry x4 x4 x6;
(* adc	x5, x5, xzr                                 #! PC = 0xaaaaaaab6f5c *)
adc x5 x5 0@uint64 carry;
(* mul	x25, x17, x27                               #! PC = 0xaaaaaaab6f60 *)
mull Hx17x27 x25 x17 x27;
(* umulh	x6, x17, x27                              #! PC = 0xaaaaaaab6f64 *)
mov x6 Hx17x27;
(* adds	x4, x4, x7                                 #! PC = 0xaaaaaaab6f68 *)
adds carry x4 x4 x7;
(* adcs	x5, x5, x19                                #! PC = 0xaaaaaaab6f6c *)
adcs carry x5 x5 x19 carry;
(* adc	x6, x6, xzr                                 #! PC = 0xaaaaaaab6f70 *)
adc x6 x6 0@uint64 carry;
(* mul	x7, x16, x28                                #! PC = 0xaaaaaaab6f74 *)
mull Hx16x28 x7 x16 x28;
(* umulh	x19, x16, x28                             #! PC = 0xaaaaaaab6f78 *)
mov x19 Hx16x28;
(* adds	x5, x5, x25                                #! PC = 0xaaaaaaab6f7c *)
adds carry x5 x5 x25;
(* adcs	x6, x6, x19                                #! PC = 0xaaaaaaab6f80 *)
adcs carry x6 x6 x19 carry;
(* adc	x24, xzr, xzr                               #! PC = 0xaaaaaaab6f84 *)
adc x24 0@uint64 0@uint64 carry;
(* mul	x25, x23, x26                               #! PC = 0xaaaaaaab6f88 *)
mull Hx23x26 x25 x23 x26;
(* umulh	x19, x23, x26                             #! PC = 0xaaaaaaab6f8c *)
mov x19 Hx23x26;
(* adds	x5, x5, x7                                 #! PC = 0xaaaaaaab6f90 *)
adds carry x5 x5 x7;
(* adcs	x6, x6, x19                                #! PC = 0xaaaaaaab6f94 *)
adcs carry x6 x6 x19 carry;
(* adc	x24, x24, xzr                               #! PC = 0xaaaaaaab6f98 *)
adc x24 x24 0@uint64 carry;
(* mul	x7, x17, x28                                #! PC = 0xaaaaaaab6f9c *)
mull Hx17x28 x7 x17 x28;
(* umulh	x19, x17, x28                             #! PC = 0xaaaaaaab6fa0 *)
mov x19 Hx17x28;
(* adds	x5, x5, x25                                #! PC = 0xaaaaaaab6fa4 *)
adds carry x5 x5 x25;
(* adcs	x6, x6, x7                                 #! PC = 0xaaaaaaab6fa8 *)
adcs carry x6 x6 x7 carry;
(* adcs	x24, x24, x19                              #! PC = 0xaaaaaaab6fac *)
adcs carry x24 x24 x19 carry;
(* adc	x25, xzr, xzr                               #! PC = 0xaaaaaaab6fb0 *)
adc x25 0@uint64 0@uint64 carry;
(* mul	x7, x23, x27                                #! PC = 0xaaaaaaab6fb4 *)
mull Hx23x27 x7 x23 x27;
(* umulh	x19, x23, x27                             #! PC = 0xaaaaaaab6fb8 *)
mov x19 Hx23x27;
(* adds	x6, x6, x7                                 #! PC = 0xaaaaaaab6fbc *)
adds carry x6 x6 x7;
(* adcs	x24, x24, x19                              #! PC = 0xaaaaaaab6fc0 *)
adcs carry x24 x24 x19 carry;
(* adc	x25, x25, xzr                               #! PC = 0xaaaaaaab6fc4 *)
adc x25 x25 0@uint64 carry;
(* mul	x7, x23, x28                                #! PC = 0xaaaaaaab6fc8 *)
mull Hx23x28 x7 x23 x28;
(* umulh	x19, x23, x28                             #! PC = 0xaaaaaaab6fcc *)
mov x19 Hx23x28;
(* adds	x7, x7, x24                                #! PC = 0xaaaaaaab6fd0 *)
adds carry x7 x7 x24;
(* adc	x19, x19, x25                               #! PC = 0xaaaaaaab6fd4 *)
adc x19 x19 x25 carry;
(* ldp	x16, x17, [x0, #24]                         #! EA = L0xffffffffe720; Value = 0xafb884deeb02fedf; PC = 0xaaaaaaab6fd8 *)
mov x16 L0xffffffffe720;
mov x17 L0xffffffffe728;
(* subs	x13, x13, x3                               #! PC = 0xaaaaaaab6fdc *)
subc carry x13 x13 x3;
(* sbcs	x14, x14, x4                               #! PC = 0xaaaaaaab6fe0 *)
sbcs carry x14 x14 x4 carry;
(* mul	x26, x16, x29                               #! PC = 0xaaaaaaab6fe4 *)
mull Hx16x29 x26 x16 x29;
(* umulh	x23, x16, x29                             #! PC = 0xaaaaaaab6fe8 *)
mov x23 Hx16x29;
(* sbcs	x15, x15, x5                               #! PC = 0xaaaaaaab6fec *)
sbcs carry x15 x15 x5 carry;
(* sbcs	x20, x20, x6                               #! PC = 0xaaaaaaab6ff0 *)
sbcs carry x20 x20 x6 carry;
(* mul	x27, x16, x30                               #! PC = 0xaaaaaaab6ff4 *)
mull Hx16x30 x27 x16 x30;
(* umulh	x28, x16, x30                             #! PC = 0xaaaaaaab6ff8 *)
mov x28 Hx16x30;
(* sbcs	x21, x21, x7                               #! PC = 0xaaaaaaab6ffc *)
sbcs carry x21 x21 x7 carry;
(* sbc	x22, x22, x19                               #! PC = 0xaaaaaaab7000 *)
sbcs docare x22 x22 x19 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* mul	x16, x17, x29                               #! PC = 0xaaaaaaab7004 *)
mull Hx17x29 x16 x17 x29;
(* umulh	x29, x17, x29                             #! PC = 0xaaaaaaab7008 *)
mov x29 Hx17x29;
(* adds	x27, x27, x23                              #! PC = 0xaaaaaaab700c *)
adds carry x27 x27 x23;
(* adc	x28, x28, xzr                               #! PC = 0xaaaaaaab7010 *)
adc x28 x28 0@uint64 carry;
(* mul	x24, x17, x30                               #! PC = 0xaaaaaaab7014 *)
mull Hx17x30 x24 x17 x30;
(* umulh	x30, x17, x30                             #! PC = 0xaaaaaaab7018 *)
mov x30 Hx17x30;
(* adds	x27, x27, x16                              #! PC = 0xaaaaaaab701c *)
adds carry x27 x27 x16;
(* adcs	x28, x28, x29                              #! PC = 0xaaaaaaab7020 *)
adcs carry x28 x28 x29 carry;
(* adc	x23, xzr, xzr                               #! PC = 0xaaaaaaab7024 *)
adc x23 0@uint64 0@uint64 carry;
(* adds	x28, x28, x24                              #! PC = 0xaaaaaaab7028 *)
adds carry x28 x28 x24;
(* adc	x23, x23, x30                               #! PC = 0xaaaaaaab702c *)
adc x23 x23 x30 carry;
(* subs	x13, x13, x26                              #! PC = 0xaaaaaaab7030 *)
subc carry x13 x13 x26;
(* sbcs	x14, x14, x27                              #! PC = 0xaaaaaaab7034 *)
sbcs carry x14 x14 x27 carry;
(* sbcs	x15, x15, x28                              #! PC = 0xaaaaaaab7038 *)
sbcs carry x15 x15 x28 carry;
(* sbcs	x20, x20, x23                              #! PC = 0xaaaaaaab703c *)
sbcs carry x20 x20 x23 carry;
(* sbcs	x21, x21, xzr                              #! PC = 0xaaaaaaab7040 *)
sbcs carry x21 x21 0@uint64 carry;
(* sbc	x22, x22, xzr                               #! PC = 0xaaaaaaab7044 *)
sbcs docare x22 x22 0@uint64 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* NOTE: summary *)
assert eqmod (limbs 64 [x13, x14, x15, x20, x21, x22])
             (limbs 64 [a0o5, a1o5, a2o5] * limbs 64 [b3o5, b4o5] +
              limbs 64 [b0o5, b1o5, b2o5] * limbs 64 [a3o5, a4o5])
             (2**384) && true;
assume limbs 64 [x13, x14, x15, x20, x21, x22] =
       limbs 64 [a0o5, a1o5, a2o5] * limbs 64 [b3o5, b4o5] +
       limbs 64 [b0o5, b1o5, b2o5] * limbs 64 [a3o5, a4o5] && true;

(* adds	x6, x6, x13                                #! PC = 0xaaaaaaab7048 *)
adds carry x6 x6 x13;
(* adcs	x7, x7, x14                                #! PC = 0xaaaaaaab704c *)
adcs carry x7 x7 x14 carry;
(* adcs	x19, x19, x15                              #! PC = 0xaaaaaaab7050 *)
adcs carry x19 x19 x15 carry;
(* adcs	x20, x20, x26                              #! PC = 0xaaaaaaab7054 *)
adcs carry x20 x20 x26 carry;
(* adcs	x21, x21, x27                              #! PC = 0xaaaaaaab7058 *)
adcs carry x21 x21 x27 carry;
(* adcs	x22, x22, x28                              #! PC = 0xaaaaaaab705c *)
adcs carry x22 x22 x28 carry;
(* adc	x23, x23, xzr                               #! PC = 0xaaaaaaab7060 *)
adcs docare x23 x23 0@uint64 carry;

(* TODO: cannot carry *)
(* assert true && docare = 0@1; *)
assume docare = 0 && true;

(* ldp	x13, x14, [x2]                              #! EA = L0xffffffffe128; Value = 0x17b59ea015e11279; PC = 0xaaaaaaab7064 *)
mov x13 L0xffffffffe128;
mov x14 L0xffffffffe130;
(* subs	x13, x13, x3                               #! PC = 0xaaaaaaab7068 *)
subc carry x13 x13 x3;
(* ldp	x15, x16, [x2, #16]                         #! EA = L0xffffffffe138; Value = 0xb3d333d30b9560a4; PC = 0xaaaaaaab706c *)
mov x15 L0xffffffffe138;
mov x16 L0xffffffffe140;
(* sbcs	x14, x14, x4                               #! PC = 0xaaaaaaab7070 *)
sbcs carry x14 x14 x4 carry;
(* ldr	x17, [x2, #32]                              #! EA = L0xffffffffe148; Value = 0x3a3518bf0dc857a1; PC = 0xaaaaaaab7074 *)
mov x17 L0xffffffffe148;
(* sbcs	x15, x15, x5                               #! PC = 0xaaaaaaab7078 *)
sbcs carry x15 x15 x5 carry;
(* stp	x3, x4, [x2]                                #! EA = L0xffffffffe128; PC = 0xaaaaaaab707c *)
mov L0xffffffffe128 x3;
mov L0xffffffffe130 x4;
(* sbcs	x16, x16, x6                               #! PC = 0xaaaaaaab7080 *)
sbcs carry x16 x16 x6 carry;
(* stp	x5, x6, [x2, #16]                           #! EA = L0xffffffffe138; PC = 0xaaaaaaab7084 *)
mov L0xffffffffe138 x5;
mov L0xffffffffe140 x6;
(* sbcs	x17, x17, x7                               #! PC = 0xaaaaaaab7088 *)
sbcs carry x17 x17 x7 carry;
(* str	x7, [x2, #32]                               #! EA = L0xffffffffe148; PC = 0xaaaaaaab708c *)
mov L0xffffffffe148 x7;
(* sbcs	x8, x8, x19                                #! PC = 0xaaaaaaab7090 *)
sbcs carry x8 x8 x19 carry;
(* ldp	x3, x4, [x0, #40]                           #! EA = L0xffffffffe730; Value = 0x5627ee8f489ec34e; PC = 0xaaaaaaab7094 *)
mov x3 L0xffffffffe730;
mov x4 L0xffffffffe738;
(* sbcs	x9, x9, x20                                #! PC = 0xaaaaaaab7098 *)
sbcs carry x9 x9 x20 carry;
(* ldp	x5, x6, [x0, #56]                           #! EA = L0xffffffffe740; Value = 0x8a51181ee01a7d65; PC = 0xaaaaaaab709c *)
mov x5 L0xffffffffe740;
mov x6 L0xffffffffe748;
(* ldr	x7, [x0, #72]                               #! EA = L0xffffffffe750; Value = 0x0000000083de5cb4; PC = 0xaaaaaaab70a0 *)
mov x7 L0xffffffffe750;
(* sbcs	x10, x10, x21                              #! PC = 0xaaaaaaab70a4 *)
sbcs carry x10 x10 x21 carry;
(* ldp	x26, x27, [x1, #40]                         #! EA = L0xffffffffe7d0; Value = 0xb173d735f2c65001; PC = 0xaaaaaaab70a8 *)
mov x26 L0xffffffffe7d0;
mov x27 L0xffffffffe7d8;
(* sbcs	x11, x11, x22                              #! PC = 0xaaaaaaab70ac *)
sbcs carry x11 x11 x22 carry;
(* ldp	x28, x29, [x1, #56]                         #! EA = L0xffffffffe7e0; Value = 0xc7055a1c5dd141f1; PC = 0xaaaaaaab70b0 *)
mov x28 L0xffffffffe7e0;
mov x29 L0xffffffffe7e8;
(* ldr	x30, [x1, #72]                              #! EA = L0xffffffffe7f0; Value = 0x000000000147efee; PC = 0xaaaaaaab70b4 *)
mov x30 L0xffffffffe7f0;
(* sbc	x12, x12, x23                               #! PC = 0xaaaaaaab70b8 *)
sbcs dontcare x12 x12 x23 carry;

(* NOTE: summary *)
assert eqmod (limbs 64 [x13, x14, x15, x16, x17, x8, x9, x10, x11, x12])
             ((limbs 64 [ai0, ai1, ai2, ai3, ai4] +
              limbs 64 [ai5, ai6, ai7, ai8, ai9]) *
              (limbs 64 [bi0, bi1, bi2, bi3, bi4] +
               limbs 64 [bi5, bi6, bi7, bi8, bi9]) -
              limbs 64 [ai0, ai1, ai2, ai3, ai4] *
              limbs 64 [bi0, bi1, bi2, bi3, bi4])
             (2**640) && true;
assume limbs 64 [x13, x14, x15, x16, x17, x8, x9, x10, x11, x12] =
       (limbs 64 [ai0, ai1, ai2, ai3, ai4] +
        limbs 64 [ai5, ai6, ai7, ai8, ai9]) *
       (limbs 64 [bi0, bi1, bi2, bi3, bi4] +
        limbs 64 [bi5, bi6, bi7, bi8, bi9]) -
       limbs 64 [ai0, ai1, ai2, ai3, ai4] *
       limbs 64 [bi0, bi1, bi2, bi3, bi4] && true;

(* stp	x8, x9, [x2, #40]                           #! EA = L0xffffffffe150; PC = 0xaaaaaaab70bc *)
mov L0xffffffffe150 x8;
mov L0xffffffffe158 x9;
(* stp	x10, x11, [x2, #56]                         #! EA = L0xffffffffe160; PC = 0xaaaaaaab70c0 *)
mov L0xffffffffe160 x10;
mov L0xffffffffe168 x11;
(* stp	x12, x13, [x2, #72]                         #! EA = L0xffffffffe170; PC = 0xaaaaaaab70c4 *)
mov L0xffffffffe170 x12;
mov L0xffffffffe178 x13;
(* stp	x14, x15, [x2, #88]                         #! EA = L0xffffffffe180; PC = 0xaaaaaaab70c8 *)
mov L0xffffffffe180 x14;
mov L0xffffffffe188 x15;
(* stp	x16, x17, [x2, #104]                        #! EA = L0xffffffffe190; PC = 0xaaaaaaab70cc *)
mov L0xffffffffe190 x16;
mov L0xffffffffe198 x17;
(* add	x0, x0, #0x28                               #! PC = 0xaaaaaaab70d0 *)
adds dontcare x0 x0 0x28@uint64;

(* NOTE: MUL320_KARATSUBA_COMBA starts *)

ghost a0o6@uint64, a1o6@uint64, a2o6@uint64, a3o6@uint64, a4o6@uint64,
      b0o6@uint64, b1o6@uint64, b2o6@uint64, b3o6@uint64, b4o6@uint64 :
      and [a0o6= x3, a1o6= x4, a2o6= x5, a3o6= x6, a4o6= x7,
           b0o6=x26, b1o6=x27, b2o6=x28, b3o6=x29, b4o6=x30]
   && and [a0o6= x3, a1o6= x4, a2o6= x5, a3o6= x6, a4o6= x7,
           b0o6=x26, b1o6=x27, b2o6=x28, b3o6=x29, b4o6=x30];

(* adds	x8, x3, x6                                 #! PC = 0xaaaaaaab70d4 *)
adds carry x8 x3 x6;
(* adcs	x9, x4, x7                                 #! PC = 0xaaaaaaab70d8 *)
adcs carry x9 x4 x7 carry;
(* adcs	x10, x5, xzr                               #! PC = 0xaaaaaaab70dc *)
adcs carry x10 x5 0@uint64 carry;
(* adc	x24, xzr, xzr                               #! PC = 0xaaaaaaab70e0 *)
adc x24 0@uint64 0@uint64 carry;
(* adds	x11, x26, x29                              #! PC = 0xaaaaaaab70e4 *)
adds carry x11 x26 x29;
(* adcs	x12, x27, x30                              #! PC = 0xaaaaaaab70e8 *)
adcs carry x12 x27 x30 carry;
(* adcs	x13, x28, xzr                              #! PC = 0xaaaaaaab70ec *)
adcs carry x13 x28 0@uint64 carry;
(* adc	x25, xzr, xzr                               #! PC = 0xaaaaaaab70f0 *)
adc x25 0@uint64 0@uint64 carry;

ghost x24m6@uint64, x25m6@uint64 :
      and [x24m6 = x24, x25m6 = x25] && and [x24m6 = x24, x25m6 = x25];

(* neg	x24, x24                                    #! PC = 0xaaaaaaab70f4 *)
subc dontcare x24 0@uint64 x24;
(* neg	x25, x25                                    #! PC = 0xaaaaaaab70f8 *)
subc dontcare x25 0@uint64 x25;
(* and	x14, x11, x24                               #! PC = 0xaaaaaaab70fc *)
and x14@uint64 x11 x24;
(* and	x15, x12, x24                               #! PC = 0xaaaaaaab7100 *)
and x15@uint64 x12 x24;
(* and	x16, x13, x24                               #! PC = 0xaaaaaaab7104 *)
and x16@uint64 x13 x24;
(* mul	x3, x8, x11                                 #! PC = 0xaaaaaaab7108 *)
mull Hx8x11 x3 x8 x11;
(* mul	x4, x8, x12                                 #! PC = 0xaaaaaaab710c *)
mull Hx8x12 x4 x8 x12;
(* and	x17, x8, x25                                #! PC = 0xaaaaaaab7110 *)
and x17@uint64 x8 x25;
(* and	x24, x9, x25                                #! PC = 0xaaaaaaab7114 *)
and x24@uint64 x9 x25;
(* and	x25, x10, x25                               #! PC = 0xaaaaaaab7118 *)
and x25@uint64 x10 x25;

(* NOTE: mask *)
assert true
    && and [x24m6 * (1@64-x24m6) = 0@64, x25m6 * (1@64 - x25m6) = 0@64,
            limbs 64 [x14, x15, x16] =
            uext x24m6 128 * limbs 64 [x11, x12, x13],
            limbs 64 [x17, x24, x25] =
            uext x25m6 128 * limbs 64 [ x8, x9,  x10]];
assume and [x24m6 * (1-x24m6) = 0, x25m6 * (1 - x25m6) = 0,
            limbs 64 [x14, x15, x16] = x24m6 * limbs 64 [x11, x12, x13],
            limbs 64 [x17, x24, x25] = x25m6 * limbs 64 [ x8,  x9, x10]] && true;

(* umulh	x6, x8, x11                               #! PC = 0xaaaaaaab711c *)
mov x6 Hx8x11;
(* umulh	x5, x8, x12                               #! PC = 0xaaaaaaab7120 *)
mov x5 Hx8x12;
(* adds	x14, x14, x17                              #! PC = 0xaaaaaaab7124 *)
adds carry x14 x14 x17;
(* adcs	x15, x15, x24                              #! PC = 0xaaaaaaab7128 *)
adcs carry x15 x15 x24 carry;
(* adc	x16, x16, x25                               #! PC = 0xaaaaaaab712c *)
adc x16 x16 x25 carry;
(* mul	x7, x9, x11                                 #! PC = 0xaaaaaaab7130 *)
mull Hx9x11 x7 x9 x11;
(* umulh	x17, x9, x11                              #! PC = 0xaaaaaaab7134 *)
mov x17 Hx9x11;
(* adds	x4, x4, x6                                 #! PC = 0xaaaaaaab7138 *)
adds carry x4 x4 x6;
(* adc	x5, x5, xzr                                 #! PC = 0xaaaaaaab713c *)
adc x5 x5 0@uint64 carry;
(* mul	x25, x9, x12                                #! PC = 0xaaaaaaab7140 *)
mull Hx9x12 x25 x9 x12;
(* umulh	x6, x9, x12                               #! PC = 0xaaaaaaab7144 *)
mov x6 Hx9x12;
(* adds	x4, x4, x7                                 #! PC = 0xaaaaaaab7148 *)
adds carry x4 x4 x7;
(* adcs	x5, x5, x17                                #! PC = 0xaaaaaaab714c *)
adcs carry x5 x5 x17 carry;
(* adc	x6, x6, xzr                                 #! PC = 0xaaaaaaab7150 *)
adc x6 x6 0@uint64 carry;
(* mul	x7, x8, x13                                 #! PC = 0xaaaaaaab7154 *)
mull Hx8x13 x7 x8 x13;
(* umulh	x17, x8, x13                              #! PC = 0xaaaaaaab7158 *)
mov x17 Hx8x13;
(* adds	x5, x5, x25                                #! PC = 0xaaaaaaab715c *)
adds carry x5 x5 x25;
(* adcs	x6, x6, x17                                #! PC = 0xaaaaaaab7160 *)
adcs carry x6 x6 x17 carry;
(* adc	x24, xzr, xzr                               #! PC = 0xaaaaaaab7164 *)
adc x24 0@uint64 0@uint64 carry;
(* mul	x25, x10, x11                               #! PC = 0xaaaaaaab7168 *)
mull Hx10x11 x25 x10 x11;
(* umulh	x17, x10, x11                             #! PC = 0xaaaaaaab716c *)
mov x17 Hx10x11;
(* adds	x5, x5, x7                                 #! PC = 0xaaaaaaab7170 *)
adds carry x5 x5 x7;
(* adcs	x6, x6, x17                                #! PC = 0xaaaaaaab7174 *)
adcs carry x6 x6 x17 carry;
(* adc	x24, x24, xzr                               #! PC = 0xaaaaaaab7178 *)
adc x24 x24 0@uint64 carry;
(* mul	x7, x9, x13                                 #! PC = 0xaaaaaaab717c *)
mull Hx9x13 x7 x9 x13;
(* umulh	x17, x9, x13                              #! PC = 0xaaaaaaab7180 *)
mov x17 Hx9x13;
(* adds	x5, x5, x25                                #! PC = 0xaaaaaaab7184 *)
adds carry x5 x5 x25;
(* adcs	x6, x6, x7                                 #! PC = 0xaaaaaaab7188 *)
adcs carry x6 x6 x7 carry;
(* adcs	x24, x24, x17                              #! PC = 0xaaaaaaab718c *)
adcs carry x24 x24 x17 carry;
(* adc	x25, xzr, xzr                               #! PC = 0xaaaaaaab7190 *)
adc x25 0@uint64 0@uint64 carry;
(* mul	x7, x10, x12                                #! PC = 0xaaaaaaab7194 *)
mull Hx10x12 x7 x10 x12;
(* umulh	x17, x10, x12                             #! PC = 0xaaaaaaab7198 *)
mov x17 Hx10x12;
(* adds	x6, x6, x7                                 #! PC = 0xaaaaaaab719c *)
adds carry x6 x6 x7;
(* adcs	x24, x24, x17                              #! PC = 0xaaaaaaab71a0 *)
adcs carry x24 x24 x17 carry;
(* adc	x25, x25, xzr                               #! PC = 0xaaaaaaab71a4 *)
adc x25 x25 0@uint64 carry;
(* mul	x7, x10, x13                                #! PC = 0xaaaaaaab71a8 *)
mull Hx10x13 x7 x10 x13;
(* umulh	x17, x10, x13                             #! PC = 0xaaaaaaab71ac *)
mov x17 Hx10x13;
(* adds	x7, x7, x24                                #! PC = 0xaaaaaaab71b0 *)
adds carry x7 x7 x24;
(* adc	x17, x17, x25                               #! PC = 0xaaaaaaab71b4 *)
adc x17 x17 x25 carry;
(* adds	x14, x6, x14                               #! PC = 0xaaaaaaab71b8 *)
adds carry x14 x6 x14;
(* adcs	x15, x7, x15                               #! PC = 0xaaaaaaab71bc *)
adcs carry x15 x7 x15 carry;
(* ldp	x6, x7, [x0]                                #! EA = L0xffffffffe730; Value = 0x5627ee8f489ec34e; PC = 0xaaaaaaab71c0 *)
mov x6 L0xffffffffe730;
mov x7 L0xffffffffe738;
(* adc	x16, x17, x16                               #! PC = 0xaaaaaaab71c4 *)
adcs dontcare x16 x17 x16 carry;
(* ldr	x17, [x0, #16]                              #! EA = L0xffffffffe740; Value = 0x8a51181ee01a7d65; PC = 0xaaaaaaab71c8 *)
mov x17 L0xffffffffe740;
(* mul	x8, x6, x26                                 #! PC = 0xaaaaaaab71cc *)
mull Hx6x26 x8 x6 x26;
(* mul	x9, x6, x27                                 #! PC = 0xaaaaaaab71d0 *)
mull Hx6x27 x9 x6 x27;
(* umulh	x11, x6, x26                              #! PC = 0xaaaaaaab71d4 *)
mov x11 Hx6x26;
(* umulh	x10, x6, x27                              #! PC = 0xaaaaaaab71d8 *)
mov x10 Hx6x27;
(* mul	x12, x7, x26                                #! PC = 0xaaaaaaab71dc *)
mull Hx7x26 x12 x7 x26;
(* umulh	x13, x7, x26                              #! PC = 0xaaaaaaab71e0 *)
mov x13 Hx7x26;
(* adds	x9, x9, x11                                #! PC = 0xaaaaaaab71e4 *)
adds carry x9 x9 x11;
(* adc	x10, x10, xzr                               #! PC = 0xaaaaaaab71e8 *)
adc x10 x10 0@uint64 carry;
(* mul	x25, x7, x27                                #! PC = 0xaaaaaaab71ec *)
mull Hx7x27 x25 x7 x27;
(* umulh	x11, x7, x27                              #! PC = 0xaaaaaaab71f0 *)
mov x11 Hx7x27;
(* adds	x9, x9, x12                                #! PC = 0xaaaaaaab71f4 *)
adds carry x9 x9 x12;
(* adcs	x10, x10, x13                              #! PC = 0xaaaaaaab71f8 *)
adcs carry x10 x10 x13 carry;
(* adc	x11, x11, xzr                               #! PC = 0xaaaaaaab71fc *)
adc x11 x11 0@uint64 carry;
(* mul	x12, x6, x28                                #! PC = 0xaaaaaaab7200 *)
mull Hx6x28 x12 x6 x28;
(* umulh	x13, x6, x28                              #! PC = 0xaaaaaaab7204 *)
mov x13 Hx6x28;
(* adds	x10, x10, x25                              #! PC = 0xaaaaaaab7208 *)
adds carry x10 x10 x25;
(* adcs	x11, x11, x13                              #! PC = 0xaaaaaaab720c *)
adcs carry x11 x11 x13 carry;
(* adc	x24, xzr, xzr                               #! PC = 0xaaaaaaab7210 *)
adc x24 0@uint64 0@uint64 carry;
(* mul	x25, x17, x26                               #! PC = 0xaaaaaaab7214 *)
mull Hx17x26 x25 x17 x26;
(* umulh	x13, x17, x26                             #! PC = 0xaaaaaaab7218 *)
mov x13 Hx17x26;
(* adds	x10, x10, x12                              #! PC = 0xaaaaaaab721c *)
adds carry x10 x10 x12;
(* adcs	x11, x11, x13                              #! PC = 0xaaaaaaab7220 *)
adcs carry x11 x11 x13 carry;
(* adc	x24, x24, xzr                               #! PC = 0xaaaaaaab7224 *)
adc x24 x24 0@uint64 carry;
(* mul	x12, x7, x28                                #! PC = 0xaaaaaaab7228 *)
mull Hx7x28 x12 x7 x28;
(* umulh	x13, x7, x28                              #! PC = 0xaaaaaaab722c *)
mov x13 Hx7x28;
(* adds	x10, x10, x25                              #! PC = 0xaaaaaaab7230 *)
adds carry x10 x10 x25;
(* adcs	x11, x11, x12                              #! PC = 0xaaaaaaab7234 *)
adcs carry x11 x11 x12 carry;
(* adcs	x24, x24, x13                              #! PC = 0xaaaaaaab7238 *)
adcs carry x24 x24 x13 carry;
(* adc	x25, xzr, xzr                               #! PC = 0xaaaaaaab723c *)
adc x25 0@uint64 0@uint64 carry;
(* mul	x12, x17, x27                               #! PC = 0xaaaaaaab7240 *)
mull Hx17x27 x12 x17 x27;
(* umulh	x13, x17, x27                             #! PC = 0xaaaaaaab7244 *)
mov x13 Hx17x27;
(* adds	x11, x11, x12                              #! PC = 0xaaaaaaab7248 *)
adds carry x11 x11 x12;
(* adcs	x24, x24, x13                              #! PC = 0xaaaaaaab724c *)
adcs carry x24 x24 x13 carry;
(* adc	x25, x25, xzr                               #! PC = 0xaaaaaaab7250 *)
adc x25 x25 0@uint64 carry;
(* mul	x12, x17, x28                               #! PC = 0xaaaaaaab7254 *)
mull Hx17x28 x12 x17 x28;
(* umulh	x13, x17, x28                             #! PC = 0xaaaaaaab7258 *)
mov x13 Hx17x28;
(* adds	x12, x12, x24                              #! PC = 0xaaaaaaab725c *)
adds carry x12 x12 x24;
(* adc	x13, x13, x25                               #! PC = 0xaaaaaaab7260 *)
adc x13 x13 x25 carry;
(* ldp	x6, x7, [x0, #24]                           #! EA = L0xffffffffe748; Value = 0xb4bbb9ad51928a5a; PC = 0xaaaaaaab7264 *)
mov x6 L0xffffffffe748;
mov x7 L0xffffffffe750;
(* subs	x3, x3, x8                                 #! PC = 0xaaaaaaab7268 *)
subc carry x3 x3 x8;
(* sbcs	x4, x4, x9                                 #! PC = 0xaaaaaaab726c *)
sbcs carry x4 x4 x9 carry;
(* mul	x26, x6, x29                                #! PC = 0xaaaaaaab7270 *)
mull Hx6x29 x26 x6 x29;
(* umulh	x17, x6, x29                              #! PC = 0xaaaaaaab7274 *)
mov x17 Hx6x29;
(* sbcs	x5, x5, x10                                #! PC = 0xaaaaaaab7278 *)
sbcs carry x5 x5 x10 carry;
(* sbcs	x14, x14, x11                              #! PC = 0xaaaaaaab727c *)
sbcs carry x14 x14 x11 carry;
(* mul	x27, x6, x30                                #! PC = 0xaaaaaaab7280 *)
mull Hx6x30 x27 x6 x30;
(* umulh	x28, x6, x30                              #! PC = 0xaaaaaaab7284 *)
mov x28 Hx6x30;
(* sbcs	x15, x15, x12                              #! PC = 0xaaaaaaab7288 *)
sbcs carry x15 x15 x12 carry;
(* sbc	x16, x16, x13                               #! PC = 0xaaaaaaab728c *)
sbcs docare x16 x16 x13 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* mul	x6, x7, x29                                 #! PC = 0xaaaaaaab7290 *)
mull Hx7x29 x6 x7 x29;
(* umulh	x29, x7, x29                              #! PC = 0xaaaaaaab7294 *)
mov x29 Hx7x29;
(* adds	x27, x27, x17                              #! PC = 0xaaaaaaab7298 *)
adds carry x27 x27 x17;
(* adc	x28, x28, xzr                               #! PC = 0xaaaaaaab729c *)
adc x28 x28 0@uint64 carry;
(* mul	x24, x7, x30                                #! PC = 0xaaaaaaab72a0 *)
mull Hx7x30 x24 x7 x30;
(* umulh	x30, x7, x30                              #! PC = 0xaaaaaaab72a4 *)
mov x30 Hx7x30;
(* adds	x27, x27, x6                               #! PC = 0xaaaaaaab72a8 *)
adds carry x27 x27 x6;
(* adcs	x28, x28, x29                              #! PC = 0xaaaaaaab72ac *)
adcs carry x28 x28 x29 carry;
(* adc	x17, xzr, xzr                               #! PC = 0xaaaaaaab72b0 *)
adc x17 0@uint64 0@uint64 carry;
(* adds	x28, x28, x24                              #! PC = 0xaaaaaaab72b4 *)
adds carry x28 x28 x24;
(* adc	x17, x17, x30                               #! PC = 0xaaaaaaab72b8 *)
adc x17 x17 x30 carry;
(* subs	x3, x3, x26                                #! PC = 0xaaaaaaab72bc *)
subc carry x3 x3 x26;
(* sbcs	x4, x4, x27                                #! PC = 0xaaaaaaab72c0 *)
sbcs carry x4 x4 x27 carry;
(* sbcs	x5, x5, x28                                #! PC = 0xaaaaaaab72c4 *)
sbcs carry x5 x5 x28 carry;
(* sbcs	x14, x14, x17                              #! PC = 0xaaaaaaab72c8 *)
sbcs carry x14 x14 x17 carry;
(* sbcs	x15, x15, xzr                              #! PC = 0xaaaaaaab72cc *)
sbcs carry x15 x15 0@uint64 carry;
(* sbc	x16, x16, xzr                               #! PC = 0xaaaaaaab72d0 *)
sbcs docare x16 x16 0@uint64 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* NOTE: summary *)
assert eqmod (limbs 64 [x3, x4, x5, x14, x15, x16])
             (limbs 64 [a0o6, a1o6, a2o6] * limbs 64 [b3o6, b4o6] +
              limbs 64 [b0o6, b1o6, b2o6] * limbs 64 [a3o6, a4o6])
             (2**384) && true;
assume limbs 64 [x3, x4, x5, x14, x15, x16] =
       limbs 64 [a0o6, a1o6, a2o6] * limbs 64 [b3o6, b4o6] +
       limbs 64 [b0o6, b1o6, b2o6] * limbs 64 [a3o6, a4o6] && true;

(* adds	x11, x11, x3                               #! PC = 0xaaaaaaab72d4 *)
adds carry x11 x11 x3;
(* adcs	x12, x12, x4                               #! PC = 0xaaaaaaab72d8 *)
adcs carry x12 x12 x4 carry;
(* adcs	x13, x13, x5                               #! PC = 0xaaaaaaab72dc *)
adcs carry x13 x13 x5 carry;
(* adcs	x14, x14, x26                              #! PC = 0xaaaaaaab72e0 *)
adcs carry x14 x14 x26 carry;
(* adcs	x15, x15, x27                              #! PC = 0xaaaaaaab72e4 *)
adcs carry x15 x15 x27 carry;
(* adcs	x16, x16, x28                              #! PC = 0xaaaaaaab72e8 *)
adcs carry x16 x16 x28 carry;
(* adc	x17, x17, xzr                               #! PC = 0xaaaaaaab72ec *)
adc x17 x17 0@uint64 carry;
(* ldp	x7, x26, [x2, #72]                          #! EA = L0xffffffffe170; Value = 0x000000001c73d34c; PC = 0xaaaaaaab72f0 *)
mov x7 L0xffffffffe170;
mov x26 L0xffffffffe178;
(* ldp	x27, x28, [x2, #88]                         #! EA = L0xffffffffe180; Value = 0xb0a968b75b33a3e9; PC = 0xaaaaaaab72f4 *)
mov x27 L0xffffffffe180;
mov x28 L0xffffffffe188;
(* subs	x26, x26, x8                               #! PC = 0xaaaaaaab72f8 *)
subc carry x26 x26 x8;
(* ldp	x29, x30, [x2, #104]                        #! EA = L0xffffffffe190; Value = 0x52d85e88fe40ea78; PC = 0xaaaaaaab72fc *)
mov x29 L0xffffffffe190;
mov x30 L0xffffffffe198;
(* sbcs	x27, x27, x9                               #! PC = 0xaaaaaaab7300 *)
sbcs carry x27 x27 x9 carry;
(* sbcs	x28, x28, x10                              #! PC = 0xaaaaaaab7304 *)
sbcs carry x28 x28 x10 carry;
(* ldp	x3, x4, [x2, #40]                           #! EA = L0xffffffffe150; Value = 0x255b04a65d047f5b; PC = 0xaaaaaaab7308 *)
mov x3 L0xffffffffe150;
mov x4 L0xffffffffe158;
(* sbcs	x29, x29, x11                              #! PC = 0xaaaaaaab730c *)
sbcs carry x29 x29 x11 carry;
(* sbcs	x30, x30, x12                              #! PC = 0xaaaaaaab7310 *)
sbcs carry x30 x30 x12 carry;
(* ldp	x5, x6, [x2, #56]                           #! EA = L0xffffffffe160; Value = 0xbf68f4115efb3fd1; PC = 0xaaaaaaab7314 *)
mov x5 L0xffffffffe160;
mov x6 L0xffffffffe168;
(* sbcs	x3, x3, x13                                #! PC = 0xaaaaaaab7318 *)
sbcs carry x3 x3 x13 carry;
(* sbcs	x4, x4, x14                                #! PC = 0xaaaaaaab731c *)
sbcs carry x4 x4 x14 carry;
(* sbcs	x5, x5, x15                                #! PC = 0xaaaaaaab7320 *)
sbcs carry x5 x5 x15 carry;
(* sbcs	x6, x6, x16                                #! PC = 0xaaaaaaab7324 *)
sbcs carry x6 x6 x16 carry;
(* sbc	x7, x7, x17                                 #! PC = 0xaaaaaaab7328 *)
sbcs docare x7 x7 x17 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* NOTE: summary *)
assert eqmod (limbs 64 [x26, x27, x28, x29, x30, x3, x4, x5, x6, x7])
             (limbs 64 [ai0, ai1, ai2, ai3, ai4] *
              limbs 64 [bi5, bi6, bi7, bi8, bi9] +
              limbs 64 [bi0, bi1, bi2, bi3, bi4] *
              limbs 64 [ai5, ai6, ai7, ai8, ai9])
             (2**640) && true;
assume limbs 64 [x26, x27, x28, x29, x30, x3, x4, x5, x6, x7] =
       limbs 64 [ai0, ai1, ai2, ai3, ai4] * limbs 64 [bi5, bi6, bi7, bi8, bi9] +
       limbs 64 [bi0, bi1, bi2, bi3, bi4] * limbs 64 [ai5, ai6, ai7, ai8, ai9]
    && true;

(* adds	x19, x19, x26                              #! PC = 0xaaaaaaab732c *)
adds carry x19 x19 x26;
(* adcs	x20, x20, x27                              #! PC = 0xaaaaaaab7330 *)
adcs carry x20 x20 x27 carry;
(* ldp	x25, x26, [sp, #48]                         #! EA = L0xffffffffdf50; Value = 0x0000ffffffffe6b8; PC = 0xaaaaaaab7334 *)
mov x25 L0xffffffffdf50;
mov x26 L0xffffffffdf58;
(* adcs	x21, x21, x28                              #! PC = 0xaaaaaaab7338 *)
adcs carry x21 x21 x28 carry;
(* adcs	x22, x22, x29                              #! PC = 0xaaaaaaab733c *)
adcs carry x22 x22 x29 carry;
(* stp	x19, x20, [x2, #40]                         #! EA = L0xffffffffe150; PC = 0xaaaaaaab7340 *)
mov L0xffffffffe150 x19;
mov L0xffffffffe158 x20;
(* adcs	x23, x23, x30                              #! PC = 0xaaaaaaab7344 *)
adcs carry x23 x23 x30 carry;
(* ldp	x27, x28, [sp, #64]                         #! EA = L0xffffffffdf60; Value = 0x0000ffffffffe7a8; PC = 0xaaaaaaab7348 *)
mov x27 L0xffffffffdf60;
mov x28 L0xffffffffdf68;
(* adcs	x3, x3, x8                                 #! PC = 0xaaaaaaab734c *)
adcs carry x3 x3 x8 carry;
(* stp	x21, x22, [x2, #56]                         #! EA = L0xffffffffe160; PC = 0xaaaaaaab7350 *)
mov L0xffffffffe160 x21;
mov L0xffffffffe168 x22;
(* adcs	x4, x4, x9                                 #! PC = 0xaaaaaaab7354 *)
adcs carry x4 x4 x9 carry;
(* ldp	x19, x20, [sp]                              #! EA = L0xffffffffdf20; Value = 0x0000ffffffffe088; PC = 0xaaaaaaab7358 *)
mov x19 L0xffffffffdf20;
mov x20 L0xffffffffdf28;
(* adcs	x5, x5, x10                                #! PC = 0xaaaaaaab735c *)
adcs carry x5 x5 x10 carry;
(* stp	x23, x3, [x2, #72]                          #! EA = L0xffffffffe170; PC = 0xaaaaaaab7360 *)
mov L0xffffffffe170 x23;
mov L0xffffffffe178 x3;
(* adcs	x6, x6, x11                                #! PC = 0xaaaaaaab7364 *)
adcs carry x6 x6 x11 carry;
(* ldp	x21, x22, [sp, #16]                         #! EA = L0xffffffffdf30; Value = 0x0000ffffffffe128; PC = 0xaaaaaaab7368 *)
mov x21 L0xffffffffdf30;
mov x22 L0xffffffffdf38;
(* adcs	x7, x7, x12                                #! PC = 0xaaaaaaab736c *)
adcs carry x7 x7 x12 carry;
(* stp	x4, x5, [x2, #88]                           #! EA = L0xffffffffe180; PC = 0xaaaaaaab7370 *)
mov L0xffffffffe180 x4;
mov L0xffffffffe188 x5;
(* adcs	x13, x13, xzr                              #! PC = 0xaaaaaaab7374 *)
adcs carry x13 x13 0@uint64 carry;
(* ldp	x23, x24, [sp, #32]                         #! EA = L0xffffffffdf40; Value = 0x0000ffffffffdfe8; PC = 0xaaaaaaab7378 *)
mov x23 L0xffffffffdf40;
mov x24 L0xffffffffdf48;
(* adcs	x14, x14, xzr                              #! PC = 0xaaaaaaab737c *)
adcs carry x14 x14 0@uint64 carry;
(* stp	x6, x7, [x2, #104]                          #! EA = L0xffffffffe190; PC = 0xaaaaaaab7380 *)
mov L0xffffffffe190 x6;
mov L0xffffffffe198 x7;
(* adcs	x15, x15, xzr                              #! PC = 0xaaaaaaab7384 *)
adcs carry x15 x15 0@uint64 carry;
(* ldp	x29, x30, [sp, #80]                         #! EA = L0xffffffffdf70; Value = 0x0000ffffffffdf80; PC = 0xaaaaaaab7388 *)
mov x29 L0xffffffffdf70;
mov x30 L0xffffffffdf78;
(* adcs	x16, x16, xzr                              #! PC = 0xaaaaaaab738c *)
adcs carry x16 x16 0@uint64 carry;
(* stp	x13, x14, [x2, #120]                        #! EA = L0xffffffffe1a0; PC = 0xaaaaaaab7390 *)
mov L0xffffffffe1a0 x13;
mov L0xffffffffe1a8 x14;
(* adc	x17, x17, xzr                               #! PC = 0xaaaaaaab7394 *)
adc x17 x17 0@uint64 carry;
(* stp	x15, x16, [x2, #136]                        #! EA = L0xffffffffe1b0; PC = 0xaaaaaaab7398 *)
mov L0xffffffffe1b0 x15;
mov L0xffffffffe1b8 x16;
(* str	x17, [x2, #152]                             #! EA = L0xffffffffe1c0; PC = 0xaaaaaaab739c *)
mov L0xffffffffe1c0 x17;
(* add	sp, sp, #0x60                               #! PC = 0xaaaaaaab73a0 *)
adds dontcare sp sp 0x60@uint64;
(* #! <- SP = 0xffffffffdf80 *)
#! 0xffffffffdf80 = 0xffffffffdf80;
(* #ret                                            #! PC = 0xaaaaaaab73a4 *)
#ret                                            #! 0xaaaaaaab73a4 = 0xaaaaaaab73a4;

(* CUT 3 *)
cut limbs 64 [L0xffffffffe128, L0xffffffffe130, L0xffffffffe138,
              L0xffffffffe140, L0xffffffffe148, L0xffffffffe150,
              L0xffffffffe158, L0xffffffffe160, L0xffffffffe168,
              L0xffffffffe170, L0xffffffffe178, L0xffffffffe180,
              L0xffffffffe188, L0xffffffffe190, L0xffffffffe198,
              L0xffffffffe1a0, L0xffffffffe1a8, L0xffffffffe1b0,
              L0xffffffffe1b8, L0xffffffffe1c0] =
    limbs 64 [ai0, ai1, ai2, ai3, ai4, ai5, ai6, ai7, ai8, ai9] *
    limbs 64 [bi0, bi1, bi2, bi3, bi4, bi5, bi6, bi7, bi8, bi9]
 && limbs 64 [L0xffffffffe128, L0xffffffffe130, L0xffffffffe138,
              L0xffffffffe140, L0xffffffffe148, L0xffffffffe150,
              L0xffffffffe158, L0xffffffffe160, L0xffffffffe168,
              L0xffffffffe170, L0xffffffffe178, L0xffffffffe180,
              L0xffffffffe188, L0xffffffffe190, L0xffffffffe198,
              L0xffffffffe1a0, L0xffffffffe1a8, L0xffffffffe1b0,
              L0xffffffffe1b8, L0xffffffffe1c0] <u (2**1221)@1280
    prove with [ precondition ];

(* mov	w3, #0xa                   	// #10          #! PC = 0xaaaaaaaae5c0 *)
mov w3 0xa@uint64;
(* mov	x1, x24                                     #! PC = 0xaaaaaaaae5c4 *)
mov x1 x24;
(* mov	x0, x23                                     #! PC = 0xaaaaaaaae5c8 *)
mov x0 x23;
(* mov	x2, x20                                     #! PC = 0xaaaaaaaae5cc *)
mov x2 x20;
(* #bl	0xaaaaaaab6710 <mp_mul>                     #! PC = 0xaaaaaaaae5d0 *)
#bl	0xaaaaaaab6710 <mp_mul>                     #! 0xaaaaaaaae5d0 = 0xaaaaaaaae5d0;
(* #! -> SP = 0xffffffffdf80 *)
#! 0xffffffffdf80 = 0xffffffffdf80;
(* #b	0xaaaaaaab6b30 <mul610_asm>                  #! PC = 0xaaaaaaab6710 *)
#b	0xaaaaaaab6b30 <mul610_asm>                  #! 0xaaaaaaab6710 = 0xaaaaaaab6710;
(* sub	sp, sp, #0x60                               #! PC = 0xaaaaaaab6b30 *)
subc dontcare sp sp 0x60@uint64;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffdfe8; Value = 0x685fb20fa5a8bb17; PC = 0xaaaaaaab6b34 *)
mov x3 L0xffffffffdfe8;
mov x4 L0xffffffffdff0;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffdff8; Value = 0xee051d310b434863; PC = 0xaaaaaaab6b38 *)
mov x5 L0xffffffffdff8;
mov x6 L0xffffffffe000;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe008; Value = 0x3e7450565b7263a3; PC = 0xaaaaaaab6b3c *)
mov x7 L0xffffffffe008;
mov x8 L0xffffffffe010;
(* ldp	x10, x11, [x0, #48]                         #! EA = L0xffffffffe018; Value = 0x5533ebd63f256540; PC = 0xaaaaaaab6b40 *)
mov x10 L0xffffffffe018;
mov x11 L0xffffffffe020;
(* ldp	x12, x13, [x0, #64]                         #! EA = L0xffffffffe028; Value = 0x3b67bc5d2a34d0d0; PC = 0xaaaaaaab6b44 *)
mov x12 L0xffffffffe028;
mov x13 L0xffffffffe030;
(* stp	x25, x26, [sp, #48]                         #! EA = L0xffffffffdf50; PC = 0xaaaaaaab6b48 *)
mov L0xffffffffdf50 x25;
mov L0xffffffffdf58 x26;
(* stp	x27, x28, [sp, #64]                         #! EA = L0xffffffffdf60; PC = 0xaaaaaaab6b4c *)
mov L0xffffffffdf60 x27;
mov L0xffffffffdf68 x28;
(* stp	x29, x30, [sp, #80]                         #! EA = L0xffffffffdf70; PC = 0xaaaaaaab6b50 *)
mov L0xffffffffdf70 x29;
mov L0xffffffffdf78 x30;
(* adds	x26, x3, x8                                #! PC = 0xaaaaaaab6b54 *)
adds carry x26 x3 x8;
(* stp	x21, x22, [sp, #16]                         #! EA = L0xffffffffdf30; PC = 0xaaaaaaab6b58 *)
mov L0xffffffffdf30 x21;
mov L0xffffffffdf38 x22;
(* adcs	x27, x4, x10                               #! PC = 0xaaaaaaab6b5c *)
adcs carry x27 x4 x10 carry;
(* stp	x23, x24, [sp, #32]                         #! EA = L0xffffffffdf40; PC = 0xaaaaaaab6b60 *)
mov L0xffffffffdf40 x23;
mov L0xffffffffdf48 x24;
(* adcs	x28, x5, x11                               #! PC = 0xaaaaaaab6b64 *)
adcs carry x28 x5 x11 carry;
(* ldp	x21, x22, [x1]                              #! EA = L0xffffffffe038; Value = 0x44ce834bc12be704; PC = 0xaaaaaaab6b68 *)
mov x21 L0xffffffffe038;
mov x22 L0xffffffffe040;
(* adcs	x29, x6, x12                               #! PC = 0xaaaaaaab6b6c *)
adcs carry x29 x6 x12 carry;
(* ldp	x14, x15, [x1, #48]                         #! EA = L0xffffffffe068; Value = 0x34d75f4bb4e0d81f; PC = 0xaaaaaaab6b70 *)
mov x14 L0xffffffffe068;
mov x15 L0xffffffffe070;
(* adcs	x30, x7, x13                               #! PC = 0xaaaaaaab6b74 *)
adcs carry x30 x7 x13 carry;
(* ldp	x23, x24, [x1, #16]                         #! EA = L0xffffffffe048; Value = 0x55ff7080032216da; PC = 0xaaaaaaab6b78 *)
mov x23 L0xffffffffe048;
mov x24 L0xffffffffe050;
(* adc	x9, xzr, xzr                                #! PC = 0xaaaaaaab6b7c *)
adc x9 0@uint64 0@uint64 carry;
(* ldp	x25, x13, [x1, #32]                         #! EA = L0xffffffffe058; Value = 0xf96c1a7d10e038cc; PC = 0xaaaaaaab6b80 *)
mov x25 L0xffffffffe058;
mov x13 L0xffffffffe060;
(* adds	x13, x13, x21                              #! PC = 0xaaaaaaab6b84 *)
adds carry x13 x13 x21;
(* ldp	x16, x17, [x1, #64]                         #! EA = L0xffffffffe078; Value = 0xa94312371c4e26ae; PC = 0xaaaaaaab6b88 *)
mov x16 L0xffffffffe078;
mov x17 L0xffffffffe080;
(* adcs	x14, x14, x22                              #! PC = 0xaaaaaaab6b8c *)
adcs carry x14 x14 x22 carry;
(* adcs	x15, x15, x23                              #! PC = 0xaaaaaaab6b90 *)
adcs carry x15 x15 x23 carry;
(* adcs	x16, x16, x24                              #! PC = 0xaaaaaaab6b94 *)
adcs carry x16 x16 x24 carry;
(* adcs	x17, x17, x25                              #! PC = 0xaaaaaaab6b98 *)
adcs carry x17 x17 x25 carry;
(* adc	x8, xzr, xzr                                #! PC = 0xaaaaaaab6b9c *)
adc x8 0@uint64 0@uint64 carry;

ghost x8m3@uint64, x9m3@uint64 :
      and [x8m3 = x8, x9m3 = x9] && and [x8m3 = x8, x9m3 = x9];

(* neg	x8, x8                                      #! PC = 0xaaaaaaab6ba0 *)
subc dontcare x8 0@uint64 x8;
(* neg	x9, x9                                      #! PC = 0xaaaaaaab6ba4 *)
subc dontcare x9 0@uint64 x9;
(* stp	x19, x20, [sp]                              #! EA = L0xffffffffdf20; PC = 0xaaaaaaab6ba8 *)
mov L0xffffffffdf20 x19;
mov L0xffffffffdf28 x20;
(* and	x3, x13, x9                                 #! PC = 0xaaaaaaab6bac *)
and x3@uint64 x13 x9;
(* and	x4, x14, x9                                 #! PC = 0xaaaaaaab6bb0 *)
and x4@uint64 x14 x9;
(* and	x5, x15, x9                                 #! PC = 0xaaaaaaab6bb4 *)
and x5@uint64 x15 x9;
(* and	x6, x16, x9                                 #! PC = 0xaaaaaaab6bb8 *)
and x6@uint64 x16 x9;
(* and	x7, x17, x9                                 #! PC = 0xaaaaaaab6bbc *)
and x7@uint64 x17 x9;
(* and	x9, x27, x8                                 #! PC = 0xaaaaaaab6bc0 *)
and x9@uint64 x27 x8;
(* and	x10, x28, x8                                #! PC = 0xaaaaaaab6bc4 *)
and x10@uint64 x28 x8;
(* and	x11, x29, x8                                #! PC = 0xaaaaaaab6bc8 *)
and x11@uint64 x29 x8;
(* and	x12, x30, x8                                #! PC = 0xaaaaaaab6bcc *)
and x12@uint64 x30 x8;
(* and	x8, x26, x8                                 #! PC = 0xaaaaaaab6bd0 *)
and x8@uint64 x26 x8;

(* NOTE: mask *)
assert true
    && and [x8m3 * (1@64 - x8m3) = 0@64, x9m3 * (1@64 - x9m3) = 0@64,
            limbs 64 [x3, x4, x5, x6, x7] =
            (uext x9m3 256) * limbs 64 [x13, x14, x15, x16, x17],
            limbs 64 [x8, x9, x10, x11, x12] =
            (uext x8m3 256) * limbs 64 [x26, x27, x28, x29, x30]];
assume and [x8m3 * (1 - x8m3) = 0, x9m3 * (1 - x9m3) = 0,
            limbs 64 [x3, x4, x5, x6, x7] =
            x9m3 * limbs 64 [x13, x14, x15, x16, x17],
            limbs 64 [x8, x9, x10, x11, x12] =
            x8m3 * limbs 64 [x26, x27, x28, x29, x30]] && true;

(* adds	x8, x8, x3                                 #! PC = 0xaaaaaaab6bd4 *)
adds carry x8 x8 x3;
(* adcs	x9, x9, x4                                 #! PC = 0xaaaaaaab6bd8 *)
adcs carry x9 x9 x4 carry;
(* stp	x26, x27, [x2]                              #! EA = L0xffffffffe1c8; PC = 0xaaaaaaab6bdc *)
mov L0xffffffffe1c8 x26;
mov L0xffffffffe1d0 x27;
(* adcs	x10, x10, x5                               #! PC = 0xaaaaaaab6be0 *)
adcs carry x10 x10 x5 carry;
(* stp	x28, x29, [x2, #16]                         #! EA = L0xffffffffe1d8; PC = 0xaaaaaaab6be4 *)
mov L0xffffffffe1d8 x28;
mov L0xffffffffe1e0 x29;
(* adcs	x11, x11, x6                               #! PC = 0xaaaaaaab6be8 *)
adcs carry x11 x11 x6 carry;
(* str	x30, [x2, #32]                              #! EA = L0xffffffffe1e8; PC = 0xaaaaaaab6bec *)
mov L0xffffffffe1e8 x30;
(* adc	x12, x12, x7                                #! PC = 0xaaaaaaab6bf0 *)
adc x12 x12 x7 carry;

ghost a0o7@uint64, a1o7@uint64, a2o7@uint64, a3o7@uint64, a4o7@uint64,
      b0o7@uint64, b1o7@uint64, b2o7@uint64, b3o7@uint64, b4o7@uint64 :
      and [a0o7=x26, a1o7=x27, a2o7=x28, a3o7=x29, a4o7=x30,
           b0o7=x13, b1o7=x14, b2o7=x15, b3o7=x16, b4o7=x17]
   && and [a0o7=x26, a1o7=x27, a2o7=x28, a3o7=x29, a4o7=x30,
           b0o7=x13, b1o7=x14, b2o7=x15, b3o7=x16, b4o7=x17];

(* adds	x3, x26, x29                               #! PC = 0xaaaaaaab6bf4 *)
adds carry x3 x26 x29;
(* adcs	x4, x27, x30                               #! PC = 0xaaaaaaab6bf8 *)
adcs carry x4 x27 x30 carry;
(* adcs	x5, x28, xzr                               #! PC = 0xaaaaaaab6bfc *)
adcs carry x5 x28 0@uint64 carry;
(* adc	x24, xzr, xzr                               #! PC = 0xaaaaaaab6c00 *)
adc x24 0@uint64 0@uint64 carry;
(* adds	x6, x13, x16                               #! PC = 0xaaaaaaab6c04 *)
adds carry x6 x13 x16;
(* adcs	x7, x14, x17                               #! PC = 0xaaaaaaab6c08 *)
adcs carry x7 x14 x17 carry;
(* adcs	x19, x15, xzr                              #! PC = 0xaaaaaaab6c0c *)
adcs carry x19 x15 0@uint64 carry;
(* adc	x25, xzr, xzr                               #! PC = 0xaaaaaaab6c10 *)
adc x25 0@uint64 0@uint64 carry;

ghost x24m7@uint64, x25m7@uint64 :
      and [x24m7 = x24, x25m7 = x25] && and [x24m7 = x24, x25m7 = x25];

(* neg	x24, x24                                    #! PC = 0xaaaaaaab6c14 *)
subc dontcare x24 0@uint64 x24;
(* neg	x25, x25                                    #! PC = 0xaaaaaaab6c18 *)
subc dontcare x25 0@uint64 x25;
(* and	x20, x6, x24                                #! PC = 0xaaaaaaab6c1c *)
and x20@uint64 x6 x24;
(* and	x21, x7, x24                                #! PC = 0xaaaaaaab6c20 *)
and x21@uint64 x7 x24;
(* and	x22, x19, x24                               #! PC = 0xaaaaaaab6c24 *)
and x22@uint64 x19 x24;
(* mul	x26, x3, x6                                 #! PC = 0xaaaaaaab6c28 *)
mull Hx3x6 x26 x3 x6;
(* mul	x27, x3, x7                                 #! PC = 0xaaaaaaab6c2c *)
mull Hx3x7 x27 x3 x7;
(* and	x23, x3, x25                                #! PC = 0xaaaaaaab6c30 *)
and x23@uint64 x3 x25;
(* and	x24, x4, x25                                #! PC = 0xaaaaaaab6c34 *)
and x24@uint64 x4 x25;
(* and	x25, x5, x25                                #! PC = 0xaaaaaaab6c38 *)
and x25@uint64 x5 x25;

(* NOTE: mask *)
assert true
    && and [x24m7 * (1@64-x24m7) = 0@64, x25m7 * (1@64 - x25m7) = 0@64,
            limbs 64 [x20, x21, x22] = uext x24m7 128 * limbs 64 [x6, x7, x19],
            limbs 64 [x23, x24, x25] = uext x25m7 128 * limbs 64 [x3, x4,  x5]];
assume and [x24m7 * (1-x24m7) = 0, x25m7 * (1 - x25m7) = 0,
            limbs 64 [x20, x21, x22] = x24m7 * limbs 64 [x6, x7, x19],
            limbs 64 [x23, x24, x25] = x25m7 * limbs 64 [x3, x4,  x5]] && true;

(* umulh	x29, x3, x6                               #! PC = 0xaaaaaaab6c3c *)
mov x29 Hx3x6;
(* umulh	x28, x3, x7                               #! PC = 0xaaaaaaab6c40 *)
mov x28 Hx3x7;
(* adds	x20, x20, x23                              #! PC = 0xaaaaaaab6c44 *)
adds carry x20 x20 x23;
(* adcs	x21, x21, x24                              #! PC = 0xaaaaaaab6c48 *)
adcs carry x21 x21 x24 carry;
(* adc	x22, x22, x25                               #! PC = 0xaaaaaaab6c4c *)
adc x22 x22 x25 carry;
(* mul	x30, x4, x6                                 #! PC = 0xaaaaaaab6c50 *)
mull Hx4x6 x30 x4 x6;
(* umulh	x23, x4, x6                               #! PC = 0xaaaaaaab6c54 *)
mov x23 Hx4x6;
(* adds	x27, x27, x29                              #! PC = 0xaaaaaaab6c58 *)
adds carry x27 x27 x29;
(* adc	x28, x28, xzr                               #! PC = 0xaaaaaaab6c5c *)
adc x28 x28 0@uint64 carry;
(* mul	x25, x4, x7                                 #! PC = 0xaaaaaaab6c60 *)
mull Hx4x7 x25 x4 x7;
(* umulh	x29, x4, x7                               #! PC = 0xaaaaaaab6c64 *)
mov x29 Hx4x7;
(* adds	x27, x27, x30                              #! PC = 0xaaaaaaab6c68 *)
adds carry x27 x27 x30;
(* adcs	x28, x28, x23                              #! PC = 0xaaaaaaab6c6c *)
adcs carry x28 x28 x23 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab6c70 *)
adc x29 x29 0@uint64 carry;
(* mul	x30, x3, x19                                #! PC = 0xaaaaaaab6c74 *)
mull Hx3x19 x30 x3 x19;
(* umulh	x23, x3, x19                              #! PC = 0xaaaaaaab6c78 *)
mov x23 Hx3x19;
(* adds	x28, x28, x25                              #! PC = 0xaaaaaaab6c7c *)
adds carry x28 x28 x25;
(* adcs	x29, x29, x23                              #! PC = 0xaaaaaaab6c80 *)
adcs carry x29 x29 x23 carry;
(* adc	x24, xzr, xzr                               #! PC = 0xaaaaaaab6c84 *)
adc x24 0@uint64 0@uint64 carry;
(* mul	x25, x5, x6                                 #! PC = 0xaaaaaaab6c88 *)
mull Hx5x6 x25 x5 x6;
(* umulh	x23, x5, x6                               #! PC = 0xaaaaaaab6c8c *)
mov x23 Hx5x6;
(* adds	x28, x28, x30                              #! PC = 0xaaaaaaab6c90 *)
adds carry x28 x28 x30;
(* adcs	x29, x29, x23                              #! PC = 0xaaaaaaab6c94 *)
adcs carry x29 x29 x23 carry;
(* adc	x24, x24, xzr                               #! PC = 0xaaaaaaab6c98 *)
adc x24 x24 0@uint64 carry;
(* mul	x30, x4, x19                                #! PC = 0xaaaaaaab6c9c *)
mull Hx4x19 x30 x4 x19;
(* umulh	x23, x4, x19                              #! PC = 0xaaaaaaab6ca0 *)
mov x23 Hx4x19;
(* adds	x28, x28, x25                              #! PC = 0xaaaaaaab6ca4 *)
adds carry x28 x28 x25;
(* adcs	x29, x29, x30                              #! PC = 0xaaaaaaab6ca8 *)
adcs carry x29 x29 x30 carry;
(* adcs	x24, x24, x23                              #! PC = 0xaaaaaaab6cac *)
adcs carry x24 x24 x23 carry;
(* adc	x25, xzr, xzr                               #! PC = 0xaaaaaaab6cb0 *)
adc x25 0@uint64 0@uint64 carry;
(* mul	x30, x5, x7                                 #! PC = 0xaaaaaaab6cb4 *)
mull Hx5x7 x30 x5 x7;
(* umulh	x23, x5, x7                               #! PC = 0xaaaaaaab6cb8 *)
mov x23 Hx5x7;
(* adds	x29, x29, x30                              #! PC = 0xaaaaaaab6cbc *)
adds carry x29 x29 x30;
(* adcs	x24, x24, x23                              #! PC = 0xaaaaaaab6cc0 *)
adcs carry x24 x24 x23 carry;
(* adc	x25, x25, xzr                               #! PC = 0xaaaaaaab6cc4 *)
adc x25 x25 0@uint64 carry;
(* mul	x30, x5, x19                                #! PC = 0xaaaaaaab6cc8 *)
mull Hx5x19 x30 x5 x19;
(* umulh	x23, x5, x19                              #! PC = 0xaaaaaaab6ccc *)
mov x23 Hx5x19;
(* adds	x30, x30, x24                              #! PC = 0xaaaaaaab6cd0 *)
adds carry x30 x30 x24;
(* adc	x23, x23, x25                               #! PC = 0xaaaaaaab6cd4 *)
adc x23 x23 x25 carry;
(* adds	x20, x29, x20                              #! PC = 0xaaaaaaab6cd8 *)
adds carry x20 x29 x20;
(* adcs	x21, x30, x21                              #! PC = 0xaaaaaaab6cdc *)
adcs carry x21 x30 x21 carry;
(* ldp	x29, x30, [x2]                              #! EA = L0xffffffffe1c8; Value = 0xea2a08d1b70b2dda; PC = 0xaaaaaaab6ce0 *)
mov x29 L0xffffffffe1c8;
mov x30 L0xffffffffe1d0;
(* adc	x22, x23, x22                               #! PC = 0xaaaaaaab6ce4 *)
adcs dontcare x22 x23 x22 carry;
(* ldr	x23, [x2, #16]                              #! EA = L0xffffffffe1d8; Value = 0xcb0ba778e9f6df25; PC = 0xaaaaaaab6ce8 *)
mov x23 L0xffffffffe1d8;
(* mul	x3, x29, x13                                #! PC = 0xaaaaaaab6cec *)
mull Hx29x13 x3 x29 x13;
(* mul	x4, x29, x14                                #! PC = 0xaaaaaaab6cf0 *)
mull Hx29x14 x4 x29 x14;
(* umulh	x6, x29, x13                              #! PC = 0xaaaaaaab6cf4 *)
mov x6 Hx29x13;
(* umulh	x5, x29, x14                              #! PC = 0xaaaaaaab6cf8 *)
mov x5 Hx29x14;
(* mul	x7, x30, x13                                #! PC = 0xaaaaaaab6cfc *)
mull Hx30x13 x7 x30 x13;
(* umulh	x19, x30, x13                             #! PC = 0xaaaaaaab6d00 *)
mov x19 Hx30x13;
(* adds	x4, x4, x6                                 #! PC = 0xaaaaaaab6d04 *)
adds carry x4 x4 x6;
(* adc	x5, x5, xzr                                 #! PC = 0xaaaaaaab6d08 *)
adc x5 x5 0@uint64 carry;
(* mul	x25, x30, x14                               #! PC = 0xaaaaaaab6d0c *)
mull Hx30x14 x25 x30 x14;
(* umulh	x6, x30, x14                              #! PC = 0xaaaaaaab6d10 *)
mov x6 Hx30x14;
(* adds	x4, x4, x7                                 #! PC = 0xaaaaaaab6d14 *)
adds carry x4 x4 x7;
(* adcs	x5, x5, x19                                #! PC = 0xaaaaaaab6d18 *)
adcs carry x5 x5 x19 carry;
(* adc	x6, x6, xzr                                 #! PC = 0xaaaaaaab6d1c *)
adc x6 x6 0@uint64 carry;
(* mul	x7, x29, x15                                #! PC = 0xaaaaaaab6d20 *)
mull Hx29x15 x7 x29 x15;
(* umulh	x19, x29, x15                             #! PC = 0xaaaaaaab6d24 *)
mov x19 Hx29x15;
(* adds	x5, x5, x25                                #! PC = 0xaaaaaaab6d28 *)
adds carry x5 x5 x25;
(* adcs	x6, x6, x19                                #! PC = 0xaaaaaaab6d2c *)
adcs carry x6 x6 x19 carry;
(* adc	x24, xzr, xzr                               #! PC = 0xaaaaaaab6d30 *)
adc x24 0@uint64 0@uint64 carry;
(* mul	x25, x23, x13                               #! PC = 0xaaaaaaab6d34 *)
mull Hx23x13 x25 x23 x13;
(* umulh	x19, x23, x13                             #! PC = 0xaaaaaaab6d38 *)
mov x19 Hx23x13;
(* adds	x5, x5, x7                                 #! PC = 0xaaaaaaab6d3c *)
adds carry x5 x5 x7;
(* adcs	x6, x6, x19                                #! PC = 0xaaaaaaab6d40 *)
adcs carry x6 x6 x19 carry;
(* adc	x24, x24, xzr                               #! PC = 0xaaaaaaab6d44 *)
adc x24 x24 0@uint64 carry;
(* mul	x7, x30, x15                                #! PC = 0xaaaaaaab6d48 *)
mull Hx30x15 x7 x30 x15;
(* umulh	x19, x30, x15                             #! PC = 0xaaaaaaab6d4c *)
mov x19 Hx30x15;
(* adds	x5, x5, x25                                #! PC = 0xaaaaaaab6d50 *)
adds carry x5 x5 x25;
(* adcs	x6, x6, x7                                 #! PC = 0xaaaaaaab6d54 *)
adcs carry x6 x6 x7 carry;
(* adcs	x24, x24, x19                              #! PC = 0xaaaaaaab6d58 *)
adcs carry x24 x24 x19 carry;
(* adc	x25, xzr, xzr                               #! PC = 0xaaaaaaab6d5c *)
adc x25 0@uint64 0@uint64 carry;
(* mul	x7, x23, x14                                #! PC = 0xaaaaaaab6d60 *)
mull Hx23x14 x7 x23 x14;
(* umulh	x19, x23, x14                             #! PC = 0xaaaaaaab6d64 *)
mov x19 Hx23x14;
(* adds	x6, x6, x7                                 #! PC = 0xaaaaaaab6d68 *)
adds carry x6 x6 x7;
(* adcs	x24, x24, x19                              #! PC = 0xaaaaaaab6d6c *)
adcs carry x24 x24 x19 carry;
(* adc	x25, x25, xzr                               #! PC = 0xaaaaaaab6d70 *)
adc x25 x25 0@uint64 carry;
(* mul	x7, x23, x15                                #! PC = 0xaaaaaaab6d74 *)
mull Hx23x15 x7 x23 x15;
(* umulh	x19, x23, x15                             #! PC = 0xaaaaaaab6d78 *)
mov x19 Hx23x15;
(* adds	x7, x7, x24                                #! PC = 0xaaaaaaab6d7c *)
adds carry x7 x7 x24;
(* adc	x19, x19, x25                               #! PC = 0xaaaaaaab6d80 *)
adc x19 x19 x25 carry;
(* ldp	x29, x30, [x2, #24]                         #! EA = L0xffffffffe1e0; Value = 0xfa98e2ffd385605c; PC = 0xaaaaaaab6d84 *)
mov x29 L0xffffffffe1e0;
mov x30 L0xffffffffe1e8;
(* subs	x26, x26, x3                               #! PC = 0xaaaaaaab6d88 *)
subc carry x26 x26 x3;
(* sbcs	x27, x27, x4                               #! PC = 0xaaaaaaab6d8c *)
sbcs carry x27 x27 x4 carry;
(* mul	x13, x29, x16                               #! PC = 0xaaaaaaab6d90 *)
mull Hx29x16 x13 x29 x16;
(* umulh	x23, x29, x16                             #! PC = 0xaaaaaaab6d94 *)
mov x23 Hx29x16;
(* sbcs	x28, x28, x5                               #! PC = 0xaaaaaaab6d98 *)
sbcs carry x28 x28 x5 carry;
(* sbcs	x20, x20, x6                               #! PC = 0xaaaaaaab6d9c *)
sbcs carry x20 x20 x6 carry;
(* mul	x14, x29, x17                               #! PC = 0xaaaaaaab6da0 *)
mull Hx29x17 x14 x29 x17;
(* umulh	x15, x29, x17                             #! PC = 0xaaaaaaab6da4 *)
mov x15 Hx29x17;
(* sbcs	x21, x21, x7                               #! PC = 0xaaaaaaab6da8 *)
sbcs carry x21 x21 x7 carry;
(* sbc	x22, x22, x19                               #! PC = 0xaaaaaaab6dac *)
sbcs dontcare x22 x22 x19 carry;
(* mul	x29, x30, x16                               #! PC = 0xaaaaaaab6db0 *)
mull Hx30x16 x29 x30 x16;
(* umulh	x16, x30, x16                             #! PC = 0xaaaaaaab6db4 *)
mov x16 Hx30x16;
(* adds	x14, x14, x23                              #! PC = 0xaaaaaaab6db8 *)
adds carry x14 x14 x23;
(* adc	x15, x15, xzr                               #! PC = 0xaaaaaaab6dbc *)
adc x15 x15 0@uint64 carry;
(* mul	x24, x30, x17                               #! PC = 0xaaaaaaab6dc0 *)
mull Hx30x17 x24 x30 x17;
(* umulh	x17, x30, x17                             #! PC = 0xaaaaaaab6dc4 *)
mov x17 Hx30x17;
(* adds	x14, x14, x29                              #! PC = 0xaaaaaaab6dc8 *)
adds carry x14 x14 x29;
(* adcs	x15, x15, x16                              #! PC = 0xaaaaaaab6dcc *)
adcs carry x15 x15 x16 carry;
(* adc	x23, xzr, xzr                               #! PC = 0xaaaaaaab6dd0 *)
adc x23 0@uint64 0@uint64 carry;
(* adds	x15, x15, x24                              #! PC = 0xaaaaaaab6dd4 *)
adds carry x15 x15 x24;
(* adc	x23, x23, x17                               #! PC = 0xaaaaaaab6dd8 *)
adc x23 x23 x17 carry;
(* subs	x26, x26, x13                              #! PC = 0xaaaaaaab6ddc *)
subc carry x26 x26 x13;
(* sbcs	x27, x27, x14                              #! PC = 0xaaaaaaab6de0 *)
sbcs carry x27 x27 x14 carry;
(* sbcs	x28, x28, x15                              #! PC = 0xaaaaaaab6de4 *)
sbcs carry x28 x28 x15 carry;
(* sbcs	x20, x20, x23                              #! PC = 0xaaaaaaab6de8 *)
sbcs carry x20 x20 x23 carry;
(* sbcs	x21, x21, xzr                              #! PC = 0xaaaaaaab6dec *)
sbcs carry x21 x21 0@uint64 carry;
(* sbc	x22, x22, xzr                               #! PC = 0xaaaaaaab6df0 *)
sbcs dontcare x22 x22 0@uint64 carry;

(* NOTE: summary *)
assert eqmod (limbs 64 [x26, x27, x28, x20, x21, x22])
             (limbs 64 [a0o7, a1o7, a2o7] * limbs 64 [b3o7, b4o7] +
              limbs 64 [b0o7, b1o7, b2o7] * limbs 64 [a3o7, a4o7])
             (2**384) && true;
assume limbs 64 [x26, x27, x28, x20, x21, x22] =
       limbs 64 [a0o7, a1o7, a2o7] * limbs 64 [b3o7, b4o7] +
       limbs 64 [b0o7, b1o7, b2o7] * limbs 64 [a3o7, a4o7] && true;

(* adds	x6, x6, x26                                #! PC = 0xaaaaaaab6df4 *)
adds carry x6 x6 x26;
(* adcs	x7, x7, x27                                #! PC = 0xaaaaaaab6df8 *)
adcs carry x7 x7 x27 carry;
(* adcs	x19, x19, x28                              #! PC = 0xaaaaaaab6dfc *)
adcs carry x19 x19 x28 carry;
(* adcs	x20, x20, x13                              #! PC = 0xaaaaaaab6e00 *)
adcs carry x20 x20 x13 carry;
(* adcs	x21, x21, x14                              #! PC = 0xaaaaaaab6e04 *)
adcs carry x21 x21 x14 carry;
(* adcs	x22, x22, x15                              #! PC = 0xaaaaaaab6e08 *)
adcs carry x22 x22 x15 carry;
(* adc	x23, x23, xzr                               #! PC = 0xaaaaaaab6e0c *)
adcs docare x23 x23 0@uint64 carry;

(* TODO: cannot carry *)
(* assert true && docare = 0@1; *)
assume docare = 0 && true;

(* stp	x3, x4, [x2]                                #! EA = L0xffffffffe1c8; PC = 0xaaaaaaab6e10 *)
mov L0xffffffffe1c8 x3;
mov L0xffffffffe1d0 x4;
(* adds	x8, x8, x19                                #! PC = 0xaaaaaaab6e14 *)
adds carry x8 x8 x19;
(* stp	x5, x6, [x2, #16]                           #! EA = L0xffffffffe1d8; PC = 0xaaaaaaab6e18 *)
mov L0xffffffffe1d8 x5;
mov L0xffffffffe1e0 x6;
(* adcs	x9, x9, x20                                #! PC = 0xaaaaaaab6e1c *)
adcs carry x9 x9 x20 carry;
(* str	x7, [x2, #32]                               #! EA = L0xffffffffe1e8; PC = 0xaaaaaaab6e20 *)
mov L0xffffffffe1e8 x7;
(* adcs	x10, x10, x21                              #! PC = 0xaaaaaaab6e24 *)
adcs carry x10 x10 x21 carry;
(* ldp	x13, x14, [x0]                              #! EA = L0xffffffffdfe8; Value = 0x685fb20fa5a8bb17; PC = 0xaaaaaaab6e28 *)
mov x13 L0xffffffffdfe8;
mov x14 L0xffffffffdff0;
(* adcs	x11, x11, x22                              #! PC = 0xaaaaaaab6e2c *)
adcs carry x11 x11 x22 carry;
(* ldp	x15, x16, [x0, #16]                         #! EA = L0xffffffffdff8; Value = 0xee051d310b434863; PC = 0xaaaaaaab6e30 *)
mov x15 L0xffffffffdff8;
mov x16 L0xffffffffe000;
(* adc	x12, x12, x23                               #! PC = 0xaaaaaaab6e34 *)
adcs dontcare x12 x12 x23 carry;
(* ldr	x17, [x0, #32]                              #! EA = L0xffffffffe008; Value = 0x3e7450565b7263a3; PC = 0xaaaaaaab6e38 *)
mov x17 L0xffffffffe008;
(* ldp	x26, x27, [x1]                              #! EA = L0xffffffffe038; Value = 0x44ce834bc12be704; PC = 0xaaaaaaab6e3c *)
mov x26 L0xffffffffe038;
mov x27 L0xffffffffe040;
(* ldp	x28, x29, [x1, #16]                         #! EA = L0xffffffffe048; Value = 0x55ff7080032216da; PC = 0xaaaaaaab6e40 *)
mov x28 L0xffffffffe048;
mov x29 L0xffffffffe050;
(* ldr	x30, [x1, #32]                              #! EA = L0xffffffffe058; Value = 0xf96c1a7d10e038cc; PC = 0xaaaaaaab6e44 *)
mov x30 L0xffffffffe058;

(* NOTE: MUL320_KARATSUBA_COMBA starts *)

ghost a0o8@uint64, a1o8@uint64, a2o8@uint64, a3o8@uint64, a4o8@uint64,
      b0o8@uint64, b1o8@uint64, b2o8@uint64, b3o8@uint64, b4o8@uint64 :
      and [a0o8=x13, a1o8=x14, a2o8=x15, a3o8=x16, a4o8=x17,
           b0o8=x26, b1o8=x27, b2o8=x28, b3o8=x29, b4o8=x30]
   && and [a0o8=x13, a1o8=x14, a2o8=x15, a3o8=x16, a4o8=x17,
           b0o8=x26, b1o8=x27, b2o8=x28, b3o8=x29, b4o8=x30];

(* adds	x3, x13, x16                               #! PC = 0xaaaaaaab6e48 *)
adds carry x3 x13 x16;
(* adcs	x4, x14, x17                               #! PC = 0xaaaaaaab6e4c *)
adcs carry x4 x14 x17 carry;
(* adcs	x5, x15, xzr                               #! PC = 0xaaaaaaab6e50 *)
adcs carry x5 x15 0@uint64 carry;
(* adc	x24, xzr, xzr                               #! PC = 0xaaaaaaab6e54 *)
adc x24 0@uint64 0@uint64 carry;
(* adds	x6, x26, x29                               #! PC = 0xaaaaaaab6e58 *)
adds carry x6 x26 x29;
(* adcs	x7, x27, x30                               #! PC = 0xaaaaaaab6e5c *)
adcs carry x7 x27 x30 carry;
(* adcs	x19, x28, xzr                              #! PC = 0xaaaaaaab6e60 *)
adcs carry x19 x28 0@uint64 carry;
(* adc	x25, xzr, xzr                               #! PC = 0xaaaaaaab6e64 *)
adc x25 0@uint64 0@uint64 carry;

ghost x24m8@uint64, x25m8@uint64 :
      and [x24m8 = x24, x25m8 = x25] && and [x24m8 = x24, x25m8 = x25];

(* neg	x24, x24                                    #! PC = 0xaaaaaaab6e68 *)
subc dontcare x24 0@uint64 x24;
(* neg	x25, x25                                    #! PC = 0xaaaaaaab6e6c *)
subc dontcare x25 0@uint64 x25;
(* and	x20, x6, x24                                #! PC = 0xaaaaaaab6e70 *)
and x20@uint64 x6 x24;
(* and	x21, x7, x24                                #! PC = 0xaaaaaaab6e74 *)
and x21@uint64 x7 x24;
(* and	x22, x19, x24                               #! PC = 0xaaaaaaab6e78 *)
and x22@uint64 x19 x24;
(* mul	x13, x3, x6                                 #! PC = 0xaaaaaaab6e7c *)
mull Hx3x6 x13 x3 x6;
(* mul	x14, x3, x7                                 #! PC = 0xaaaaaaab6e80 *)
mull Hx3x7 x14 x3 x7;
(* and	x23, x3, x25                                #! PC = 0xaaaaaaab6e84 *)
and x23@uint64 x3 x25;
(* and	x24, x4, x25                                #! PC = 0xaaaaaaab6e88 *)
and x24@uint64 x4 x25;
(* and	x25, x5, x25                                #! PC = 0xaaaaaaab6e8c *)
and x25@uint64 x5 x25;

(* NOTE: mask *)
assert true
    && and [x24m8 * (1@64-x24m8) = 0@64, x25m8 * (1@64 - x25m8) = 0@64,
            limbs 64 [x20, x21, x22] = uext x24m8 128 * limbs 64 [x6, x7, x19],
            limbs 64 [x23, x24, x25] = uext x25m8 128 * limbs 64 [x3, x4,  x5]];
assume and [x24m8 * (1-x24m8) = 0, x25m8 * (1 - x25m8) = 0,
            limbs 64 [x20, x21, x22] = x24m8 * limbs 64 [x6, x7, x19],
            limbs 64 [x23, x24, x25] = x25m8 * limbs 64 [x3, x4,  x5]] && true;

(* umulh	x16, x3, x6                               #! PC = 0xaaaaaaab6e90 *)
mov x16 Hx3x6;
(* umulh	x15, x3, x7                               #! PC = 0xaaaaaaab6e94 *)
mov x15 Hx3x7;
(* adds	x20, x20, x23                              #! PC = 0xaaaaaaab6e98 *)
adds carry x20 x20 x23;
(* adcs	x21, x21, x24                              #! PC = 0xaaaaaaab6e9c *)
adcs carry x21 x21 x24 carry;
(* adc	x22, x22, x25                               #! PC = 0xaaaaaaab6ea0 *)
adc x22 x22 x25 carry;
(* mul	x17, x4, x6                                 #! PC = 0xaaaaaaab6ea4 *)
mull Hx4x6 x17 x4 x6;
(* umulh	x23, x4, x6                               #! PC = 0xaaaaaaab6ea8 *)
mov x23 Hx4x6;
(* adds	x14, x14, x16                              #! PC = 0xaaaaaaab6eac *)
adds carry x14 x14 x16;
(* adc	x15, x15, xzr                               #! PC = 0xaaaaaaab6eb0 *)
adc x15 x15 0@uint64 carry;
(* mul	x25, x4, x7                                 #! PC = 0xaaaaaaab6eb4 *)
mull Hx4x7 x25 x4 x7;
(* umulh	x16, x4, x7                               #! PC = 0xaaaaaaab6eb8 *)
mov x16 Hx4x7;
(* adds	x14, x14, x17                              #! PC = 0xaaaaaaab6ebc *)
adds carry x14 x14 x17;
(* adcs	x15, x15, x23                              #! PC = 0xaaaaaaab6ec0 *)
adcs carry x15 x15 x23 carry;
(* adc	x16, x16, xzr                               #! PC = 0xaaaaaaab6ec4 *)
adc x16 x16 0@uint64 carry;
(* mul	x17, x3, x19                                #! PC = 0xaaaaaaab6ec8 *)
mull Hx3x19 x17 x3 x19;
(* umulh	x23, x3, x19                              #! PC = 0xaaaaaaab6ecc *)
mov x23 Hx3x19;
(* adds	x15, x15, x25                              #! PC = 0xaaaaaaab6ed0 *)
adds carry x15 x15 x25;
(* adcs	x16, x16, x23                              #! PC = 0xaaaaaaab6ed4 *)
adcs carry x16 x16 x23 carry;
(* adc	x24, xzr, xzr                               #! PC = 0xaaaaaaab6ed8 *)
adc x24 0@uint64 0@uint64 carry;
(* mul	x25, x5, x6                                 #! PC = 0xaaaaaaab6edc *)
mull Hx5x6 x25 x5 x6;
(* umulh	x23, x5, x6                               #! PC = 0xaaaaaaab6ee0 *)
mov x23 Hx5x6;
(* adds	x15, x15, x17                              #! PC = 0xaaaaaaab6ee4 *)
adds carry x15 x15 x17;
(* adcs	x16, x16, x23                              #! PC = 0xaaaaaaab6ee8 *)
adcs carry x16 x16 x23 carry;
(* adc	x24, x24, xzr                               #! PC = 0xaaaaaaab6eec *)
adc x24 x24 0@uint64 carry;
(* mul	x17, x4, x19                                #! PC = 0xaaaaaaab6ef0 *)
mull Hx4x19 x17 x4 x19;
(* umulh	x23, x4, x19                              #! PC = 0xaaaaaaab6ef4 *)
mov x23 Hx4x19;
(* adds	x15, x15, x25                              #! PC = 0xaaaaaaab6ef8 *)
adds carry x15 x15 x25;
(* adcs	x16, x16, x17                              #! PC = 0xaaaaaaab6efc *)
adcs carry x16 x16 x17 carry;
(* adcs	x24, x24, x23                              #! PC = 0xaaaaaaab6f00 *)
adcs carry x24 x24 x23 carry;
(* adc	x25, xzr, xzr                               #! PC = 0xaaaaaaab6f04 *)
adc x25 0@uint64 0@uint64 carry;
(* mul	x17, x5, x7                                 #! PC = 0xaaaaaaab6f08 *)
mull Hx5x7 x17 x5 x7;
(* umulh	x23, x5, x7                               #! PC = 0xaaaaaaab6f0c *)
mov x23 Hx5x7;
(* adds	x16, x16, x17                              #! PC = 0xaaaaaaab6f10 *)
adds carry x16 x16 x17;
(* adcs	x24, x24, x23                              #! PC = 0xaaaaaaab6f14 *)
adcs carry x24 x24 x23 carry;
(* adc	x25, x25, xzr                               #! PC = 0xaaaaaaab6f18 *)
adc x25 x25 0@uint64 carry;
(* mul	x17, x5, x19                                #! PC = 0xaaaaaaab6f1c *)
mull Hx5x19 x17 x5 x19;
(* umulh	x23, x5, x19                              #! PC = 0xaaaaaaab6f20 *)
mov x23 Hx5x19;
(* adds	x17, x17, x24                              #! PC = 0xaaaaaaab6f24 *)
adds carry x17 x17 x24;
(* adc	x23, x23, x25                               #! PC = 0xaaaaaaab6f28 *)
adc x23 x23 x25 carry;
(* adds	x20, x16, x20                              #! PC = 0xaaaaaaab6f2c *)
adds carry x20 x16 x20;
(* adcs	x21, x17, x21                              #! PC = 0xaaaaaaab6f30 *)
adcs carry x21 x17 x21 carry;
(* ldp	x16, x17, [x0]                              #! EA = L0xffffffffdfe8; Value = 0x685fb20fa5a8bb17; PC = 0xaaaaaaab6f34 *)
mov x16 L0xffffffffdfe8;
mov x17 L0xffffffffdff0;
(* adc	x22, x23, x22                               #! PC = 0xaaaaaaab6f38 *)
adcs dontcare x22 x23 x22 carry;
(* ldr	x23, [x0, #16]                              #! EA = L0xffffffffdff8; Value = 0xee051d310b434863; PC = 0xaaaaaaab6f3c *)
mov x23 L0xffffffffdff8;
(* mul	x3, x16, x26                                #! PC = 0xaaaaaaab6f40 *)
mull Hx16x26 x3 x16 x26;
(* mul	x4, x16, x27                                #! PC = 0xaaaaaaab6f44 *)
mull Hx16x27 x4 x16 x27;
(* umulh	x6, x16, x26                              #! PC = 0xaaaaaaab6f48 *)
mov x6 Hx16x26;
(* umulh	x5, x16, x27                              #! PC = 0xaaaaaaab6f4c *)
mov x5 Hx16x27;
(* mul	x7, x17, x26                                #! PC = 0xaaaaaaab6f50 *)
mull Hx17x26 x7 x17 x26;
(* umulh	x19, x17, x26                             #! PC = 0xaaaaaaab6f54 *)
mov x19 Hx17x26;
(* adds	x4, x4, x6                                 #! PC = 0xaaaaaaab6f58 *)
adds carry x4 x4 x6;
(* adc	x5, x5, xzr                                 #! PC = 0xaaaaaaab6f5c *)
adc x5 x5 0@uint64 carry;
(* mul	x25, x17, x27                               #! PC = 0xaaaaaaab6f60 *)
mull Hx17x27 x25 x17 x27;
(* umulh	x6, x17, x27                              #! PC = 0xaaaaaaab6f64 *)
mov x6 Hx17x27;
(* adds	x4, x4, x7                                 #! PC = 0xaaaaaaab6f68 *)
adds carry x4 x4 x7;
(* adcs	x5, x5, x19                                #! PC = 0xaaaaaaab6f6c *)
adcs carry x5 x5 x19 carry;
(* adc	x6, x6, xzr                                 #! PC = 0xaaaaaaab6f70 *)
adc x6 x6 0@uint64 carry;
(* mul	x7, x16, x28                                #! PC = 0xaaaaaaab6f74 *)
mull Hx16x28 x7 x16 x28;
(* umulh	x19, x16, x28                             #! PC = 0xaaaaaaab6f78 *)
mov x19 Hx16x28;
(* adds	x5, x5, x25                                #! PC = 0xaaaaaaab6f7c *)
adds carry x5 x5 x25;
(* adcs	x6, x6, x19                                #! PC = 0xaaaaaaab6f80 *)
adcs carry x6 x6 x19 carry;
(* adc	x24, xzr, xzr                               #! PC = 0xaaaaaaab6f84 *)
adc x24 0@uint64 0@uint64 carry;
(* mul	x25, x23, x26                               #! PC = 0xaaaaaaab6f88 *)
mull Hx23x26 x25 x23 x26;
(* umulh	x19, x23, x26                             #! PC = 0xaaaaaaab6f8c *)
mov x19 Hx23x26;
(* adds	x5, x5, x7                                 #! PC = 0xaaaaaaab6f90 *)
adds carry x5 x5 x7;
(* adcs	x6, x6, x19                                #! PC = 0xaaaaaaab6f94 *)
adcs carry x6 x6 x19 carry;
(* adc	x24, x24, xzr                               #! PC = 0xaaaaaaab6f98 *)
adc x24 x24 0@uint64 carry;
(* mul	x7, x17, x28                                #! PC = 0xaaaaaaab6f9c *)
mull Hx17x28 x7 x17 x28;
(* umulh	x19, x17, x28                             #! PC = 0xaaaaaaab6fa0 *)
mov x19 Hx17x28;
(* adds	x5, x5, x25                                #! PC = 0xaaaaaaab6fa4 *)
adds carry x5 x5 x25;
(* adcs	x6, x6, x7                                 #! PC = 0xaaaaaaab6fa8 *)
adcs carry x6 x6 x7 carry;
(* adcs	x24, x24, x19                              #! PC = 0xaaaaaaab6fac *)
adcs carry x24 x24 x19 carry;
(* adc	x25, xzr, xzr                               #! PC = 0xaaaaaaab6fb0 *)
adc x25 0@uint64 0@uint64 carry;
(* mul	x7, x23, x27                                #! PC = 0xaaaaaaab6fb4 *)
mull Hx23x27 x7 x23 x27;
(* umulh	x19, x23, x27                             #! PC = 0xaaaaaaab6fb8 *)
mov x19 Hx23x27;
(* adds	x6, x6, x7                                 #! PC = 0xaaaaaaab6fbc *)
adds carry x6 x6 x7;
(* adcs	x24, x24, x19                              #! PC = 0xaaaaaaab6fc0 *)
adcs carry x24 x24 x19 carry;
(* adc	x25, x25, xzr                               #! PC = 0xaaaaaaab6fc4 *)
adc x25 x25 0@uint64 carry;
(* mul	x7, x23, x28                                #! PC = 0xaaaaaaab6fc8 *)
mull Hx23x28 x7 x23 x28;
(* umulh	x19, x23, x28                             #! PC = 0xaaaaaaab6fcc *)
mov x19 Hx23x28;
(* adds	x7, x7, x24                                #! PC = 0xaaaaaaab6fd0 *)
adds carry x7 x7 x24;
(* adc	x19, x19, x25                               #! PC = 0xaaaaaaab6fd4 *)
adc x19 x19 x25 carry;
(* ldp	x16, x17, [x0, #24]                         #! EA = L0xffffffffe000; Value = 0xbf3126a2a9508f8b; PC = 0xaaaaaaab6fd8 *)
mov x16 L0xffffffffe000;
mov x17 L0xffffffffe008;
(* subs	x13, x13, x3                               #! PC = 0xaaaaaaab6fdc *)
subc carry x13 x13 x3;
(* sbcs	x14, x14, x4                               #! PC = 0xaaaaaaab6fe0 *)
sbcs carry x14 x14 x4 carry;
(* mul	x26, x16, x29                               #! PC = 0xaaaaaaab6fe4 *)
mull Hx16x29 x26 x16 x29;
(* umulh	x23, x16, x29                             #! PC = 0xaaaaaaab6fe8 *)
mov x23 Hx16x29;
(* sbcs	x15, x15, x5                               #! PC = 0xaaaaaaab6fec *)
sbcs carry x15 x15 x5 carry;
(* sbcs	x20, x20, x6                               #! PC = 0xaaaaaaab6ff0 *)
sbcs carry x20 x20 x6 carry;
(* mul	x27, x16, x30                               #! PC = 0xaaaaaaab6ff4 *)
mull Hx16x30 x27 x16 x30;
(* umulh	x28, x16, x30                             #! PC = 0xaaaaaaab6ff8 *)
mov x28 Hx16x30;
(* sbcs	x21, x21, x7                               #! PC = 0xaaaaaaab6ffc *)
sbcs carry x21 x21 x7 carry;
(* sbc	x22, x22, x19                               #! PC = 0xaaaaaaab7000 *)
sbcs docare x22 x22 x19 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* mul	x16, x17, x29                               #! PC = 0xaaaaaaab7004 *)
mull Hx17x29 x16 x17 x29;
(* umulh	x29, x17, x29                             #! PC = 0xaaaaaaab7008 *)
mov x29 Hx17x29;
(* adds	x27, x27, x23                              #! PC = 0xaaaaaaab700c *)
adds carry x27 x27 x23;
(* adc	x28, x28, xzr                               #! PC = 0xaaaaaaab7010 *)
adc x28 x28 0@uint64 carry;
(* mul	x24, x17, x30                               #! PC = 0xaaaaaaab7014 *)
mull Hx17x30 x24 x17 x30;
(* umulh	x30, x17, x30                             #! PC = 0xaaaaaaab7018 *)
mov x30 Hx17x30;
(* adds	x27, x27, x16                              #! PC = 0xaaaaaaab701c *)
adds carry x27 x27 x16;
(* adcs	x28, x28, x29                              #! PC = 0xaaaaaaab7020 *)
adcs carry x28 x28 x29 carry;
(* adc	x23, xzr, xzr                               #! PC = 0xaaaaaaab7024 *)
adc x23 0@uint64 0@uint64 carry;
(* adds	x28, x28, x24                              #! PC = 0xaaaaaaab7028 *)
adds carry x28 x28 x24;
(* adc	x23, x23, x30                               #! PC = 0xaaaaaaab702c *)
adc x23 x23 x30 carry;
(* subs	x13, x13, x26                              #! PC = 0xaaaaaaab7030 *)
subc carry x13 x13 x26;
(* sbcs	x14, x14, x27                              #! PC = 0xaaaaaaab7034 *)
sbcs carry x14 x14 x27 carry;
(* sbcs	x15, x15, x28                              #! PC = 0xaaaaaaab7038 *)
sbcs carry x15 x15 x28 carry;
(* sbcs	x20, x20, x23                              #! PC = 0xaaaaaaab703c *)
sbcs carry x20 x20 x23 carry;
(* sbcs	x21, x21, xzr                              #! PC = 0xaaaaaaab7040 *)
sbcs carry x21 x21 0@uint64 carry;
(* sbc	x22, x22, xzr                               #! PC = 0xaaaaaaab7044 *)
sbcs docare x22 x22 0@uint64 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* NOTE: summary *)
assert eqmod (limbs 64 [x13, x14, x15, x20, x21, x22])
             (limbs 64 [a0o8, a1o8, a2o8] * limbs 64 [b3o8, b4o8] +
              limbs 64 [b0o8, b1o8, b2o8] * limbs 64 [a3o8, a4o8])
             (2**384) && true;
assume limbs 64 [x13, x14, x15, x20, x21, x22] =
       limbs 64 [a0o8, a1o8, a2o8] * limbs 64 [b3o8, b4o8] +
       limbs 64 [b0o8, b1o8, b2o8] * limbs 64 [a3o8, a4o8] && true;

(* adds	x6, x6, x13                                #! PC = 0xaaaaaaab7048 *)
adds carry x6 x6 x13;
(* adcs	x7, x7, x14                                #! PC = 0xaaaaaaab704c *)
adcs carry x7 x7 x14 carry;
(* adcs	x19, x19, x15                              #! PC = 0xaaaaaaab7050 *)
adcs carry x19 x19 x15 carry;
(* adcs	x20, x20, x26                              #! PC = 0xaaaaaaab7054 *)
adcs carry x20 x20 x26 carry;
(* adcs	x21, x21, x27                              #! PC = 0xaaaaaaab7058 *)
adcs carry x21 x21 x27 carry;
(* adcs	x22, x22, x28                              #! PC = 0xaaaaaaab705c *)
adcs carry x22 x22 x28 carry;
(* adc	x23, x23, xzr                               #! PC = 0xaaaaaaab7060 *)
adcs docare x23 x23 0@uint64 carry;

(* TODO: cannot carry *)
(* assert true && docare = 0@1; *)
assume docare = 0 && true;

(* ldp	x13, x14, [x2]                              #! EA = L0xffffffffe1c8; Value = 0x785adf0536c702fe; PC = 0xaaaaaaab7064 *)
mov x13 L0xffffffffe1c8;
mov x14 L0xffffffffe1d0;
(* subs	x13, x13, x3                               #! PC = 0xaaaaaaab7068 *)
subc carry x13 x13 x3;
(* ldp	x15, x16, [x2, #16]                         #! EA = L0xffffffffe1d8; Value = 0x0e848ad87736d6ac; PC = 0xaaaaaaab706c *)
mov x15 L0xffffffffe1d8;
mov x16 L0xffffffffe1e0;
(* sbcs	x14, x14, x4                               #! PC = 0xaaaaaaab7070 *)
sbcs carry x14 x14 x4 carry;
(* ldr	x17, [x2, #32]                              #! EA = L0xffffffffe1e8; Value = 0xfb89b18c14f4229a; PC = 0xaaaaaaab7074 *)
mov x17 L0xffffffffe1e8;
(* sbcs	x15, x15, x5                               #! PC = 0xaaaaaaab7078 *)
sbcs carry x15 x15 x5 carry;
(* stp	x3, x4, [x2]                                #! EA = L0xffffffffe1c8; PC = 0xaaaaaaab707c *)
mov L0xffffffffe1c8 x3;
mov L0xffffffffe1d0 x4;
(* sbcs	x16, x16, x6                               #! PC = 0xaaaaaaab7080 *)
sbcs carry x16 x16 x6 carry;
(* stp	x5, x6, [x2, #16]                           #! EA = L0xffffffffe1d8; PC = 0xaaaaaaab7084 *)
mov L0xffffffffe1d8 x5;
mov L0xffffffffe1e0 x6;
(* sbcs	x17, x17, x7                               #! PC = 0xaaaaaaab7088 *)
sbcs carry x17 x17 x7 carry;
(* str	x7, [x2, #32]                               #! EA = L0xffffffffe1e8; PC = 0xaaaaaaab708c *)
mov L0xffffffffe1e8 x7;
(* sbcs	x8, x8, x19                                #! PC = 0xaaaaaaab7090 *)
sbcs carry x8 x8 x19 carry;
(* ldp	x3, x4, [x0, #40]                           #! EA = L0xffffffffe010; Value = 0x81ca56c2116272c3; PC = 0xaaaaaaab7094 *)
mov x3 L0xffffffffe010;
mov x4 L0xffffffffe018;
(* sbcs	x9, x9, x20                                #! PC = 0xaaaaaaab7098 *)
sbcs carry x9 x9 x20 carry;
(* ldp	x5, x6, [x0, #56]                           #! EA = L0xffffffffe020; Value = 0xdd068a47deb396c1; PC = 0xaaaaaaab709c *)
mov x5 L0xffffffffe020;
mov x6 L0xffffffffe028;
(* ldr	x7, [x0, #72]                               #! EA = L0xffffffffe030; Value = 0x0000000120c180f6; PC = 0xaaaaaaab70a0 *)
mov x7 L0xffffffffe030;
(* sbcs	x10, x10, x21                              #! PC = 0xaaaaaaab70a4 *)
sbcs carry x10 x10 x21 carry;
(* ldp	x26, x27, [x1, #40]                         #! EA = L0xffffffffe060; Value = 0xd479a1b18415b997; PC = 0xaaaaaaab70a8 *)
mov x26 L0xffffffffe060;
mov x27 L0xffffffffe068;
(* sbcs	x11, x11, x22                              #! PC = 0xaaaaaaab70ac *)
sbcs carry x11 x11 x22 carry;
(* ldp	x28, x29, [x1, #56]                         #! EA = L0xffffffffe070; Value = 0xeee919d28af34712; PC = 0xaaaaaaab70b0 *)
mov x28 L0xffffffffe070;
mov x29 L0xffffffffe078;
(* ldr	x30, [x1, #72]                              #! EA = L0xffffffffe080; Value = 0x00000001b7897214; PC = 0xaaaaaaab70b4 *)
mov x30 L0xffffffffe080;
(* sbc	x12, x12, x23                               #! PC = 0xaaaaaaab70b8 *)
sbcs dontcare x12 x12 x23 carry;

(* NOTE: summary *)
assert eqmod (limbs 64 [x13, x14, x15, x16, x17, x8, x9, x10, x11, x12])
             ((limbs 64 [L0xffffffffdfe8, L0xffffffffdff0, L0xffffffffdff8,
                         L0xffffffffe000, L0xffffffffe008] +
               limbs 64 [L0xffffffffe010, L0xffffffffe018, L0xffffffffe020,
                         L0xffffffffe028, L0xffffffffe030]) *
              (limbs 64 [L0xffffffffe038, L0xffffffffe040, L0xffffffffe048,
                         L0xffffffffe050, L0xffffffffe058] +
               limbs 64 [L0xffffffffe060, L0xffffffffe068, L0xffffffffe070,
                         L0xffffffffe078, L0xffffffffe080]) -
              limbs 64 [L0xffffffffdfe8, L0xffffffffdff0, L0xffffffffdff8,
                        L0xffffffffe000, L0xffffffffe008] *
              limbs 64 [L0xffffffffe038, L0xffffffffe040, L0xffffffffe048,
                        L0xffffffffe050, L0xffffffffe058])
             (2**640) && true;
assume limbs 64 [x13, x14, x15, x16, x17, x8, x9, x10, x11, x12] =
       (limbs 64 [L0xffffffffdfe8, L0xffffffffdff0, L0xffffffffdff8,
                  L0xffffffffe000, L0xffffffffe008] +
        limbs 64 [L0xffffffffe010, L0xffffffffe018, L0xffffffffe020,
                  L0xffffffffe028, L0xffffffffe030]) *
       (limbs 64 [L0xffffffffe038, L0xffffffffe040, L0xffffffffe048,
                  L0xffffffffe050, L0xffffffffe058] +
        limbs 64 [L0xffffffffe060, L0xffffffffe068, L0xffffffffe070,
                  L0xffffffffe078, L0xffffffffe080]) -
       limbs 64 [L0xffffffffdfe8, L0xffffffffdff0, L0xffffffffdff8,
                 L0xffffffffe000, L0xffffffffe008] *
       limbs 64 [L0xffffffffe038, L0xffffffffe040, L0xffffffffe048,
                 L0xffffffffe050, L0xffffffffe058] && true;

(* stp	x8, x9, [x2, #40]                           #! EA = L0xffffffffe1f0; PC = 0xaaaaaaab70bc *)
mov L0xffffffffe1f0 x8;
mov L0xffffffffe1f8 x9;
(* stp	x10, x11, [x2, #56]                         #! EA = L0xffffffffe200; PC = 0xaaaaaaab70c0 *)
mov L0xffffffffe200 x10;
mov L0xffffffffe208 x11;
(* stp	x12, x13, [x2, #72]                         #! EA = L0xffffffffe210; PC = 0xaaaaaaab70c4 *)
mov L0xffffffffe210 x12;
mov L0xffffffffe218 x13;
(* stp	x14, x15, [x2, #88]                         #! EA = L0xffffffffe220; PC = 0xaaaaaaab70c8 *)
mov L0xffffffffe220 x14;
mov L0xffffffffe228 x15;
(* stp	x16, x17, [x2, #104]                        #! EA = L0xffffffffe230; PC = 0xaaaaaaab70cc *)
mov L0xffffffffe230 x16;
mov L0xffffffffe238 x17;
(* add	x0, x0, #0x28                               #! PC = 0xaaaaaaab70d0 *)
adds dontcare x0 x0 0x28@uint64;

(* NOTE: MUL320_KARATSUBA_COMBA starts *)

ghost a0o9@uint64, a1o9@uint64, a2o9@uint64, a3o9@uint64, a4o9@uint64,
      b0o9@uint64, b1o9@uint64, b2o9@uint64, b3o9@uint64, b4o9@uint64 :
      and [a0o9= x3, a1o9= x4, a2o9= x5, a3o9= x6, a4o9= x7,
           b0o9=x26, b1o9=x27, b2o9=x28, b3o9=x29, b4o9=x30]
   && and [a0o9= x3, a1o9= x4, a2o9= x5, a3o9= x6, a4o9= x7,
           b0o9=x26, b1o9=x27, b2o9=x28, b3o9=x29, b4o9=x30];

(* adds	x8, x3, x6                                 #! PC = 0xaaaaaaab70d4 *)
adds carry x8 x3 x6;
(* adcs	x9, x4, x7                                 #! PC = 0xaaaaaaab70d8 *)
adcs carry x9 x4 x7 carry;
(* adcs	x10, x5, xzr                               #! PC = 0xaaaaaaab70dc *)
adcs carry x10 x5 0@uint64 carry;
(* adc	x24, xzr, xzr                               #! PC = 0xaaaaaaab70e0 *)
adc x24 0@uint64 0@uint64 carry;
(* adds	x11, x26, x29                              #! PC = 0xaaaaaaab70e4 *)
adds carry x11 x26 x29;
(* adcs	x12, x27, x30                              #! PC = 0xaaaaaaab70e8 *)
adcs carry x12 x27 x30 carry;
(* adcs	x13, x28, xzr                              #! PC = 0xaaaaaaab70ec *)
adcs carry x13 x28 0@uint64 carry;
(* adc	x25, xzr, xzr                               #! PC = 0xaaaaaaab70f0 *)
adc x25 0@uint64 0@uint64 carry;

ghost x24m9@uint64, x25m9@uint64 :
      and [x24m9 = x24, x25m9 = x25] && and [x24m9 = x24, x25m9 = x25];

(* neg	x24, x24                                    #! PC = 0xaaaaaaab70f4 *)
subc dontcare x24 0@uint64 x24;
(* neg	x25, x25                                    #! PC = 0xaaaaaaab70f8 *)
subc dontcare x25 0@uint64 x25;
(* and	x14, x11, x24                               #! PC = 0xaaaaaaab70fc *)
and x14@uint64 x11 x24;
(* and	x15, x12, x24                               #! PC = 0xaaaaaaab7100 *)
and x15@uint64 x12 x24;
(* and	x16, x13, x24                               #! PC = 0xaaaaaaab7104 *)
and x16@uint64 x13 x24;
(* mul	x3, x8, x11                                 #! PC = 0xaaaaaaab7108 *)
mull Hx8x11 x3 x8 x11;
(* mul	x4, x8, x12                                 #! PC = 0xaaaaaaab710c *)
mull Hx8x12 x4 x8 x12;
(* and	x17, x8, x25                                #! PC = 0xaaaaaaab7110 *)
and x17@uint64 x8 x25;
(* and	x24, x9, x25                                #! PC = 0xaaaaaaab7114 *)
and x24@uint64 x9 x25;
(* and	x25, x10, x25                               #! PC = 0xaaaaaaab7118 *)
and x25@uint64 x10 x25;

(* NOTE: mask *)
assert true
    && and [x24m9 * (1@64-x24m9) = 0@64, x25m9 * (1@64 - x25m9) = 0@64,
            limbs 64 [x14, x15, x16] =
            uext x24m9 128 * limbs 64 [x11, x12, x13],
            limbs 64 [x17, x24, x25] =
            uext x25m9 128 * limbs 64 [ x8, x9,  x10]];
assume and [x24m9 * (1-x24m9) = 0, x25m9 * (1 - x25m9) = 0,
            limbs 64 [x14, x15, x16] = x24m9 * limbs 64 [x11, x12, x13],
            limbs 64 [x17, x24, x25] = x25m9 * limbs 64 [ x8,  x9, x10]] && true;

(* umulh	x6, x8, x11                               #! PC = 0xaaaaaaab711c *)
mov x6 Hx8x11;
(* umulh	x5, x8, x12                               #! PC = 0xaaaaaaab7120 *)
mov x5 Hx8x12;
(* adds	x14, x14, x17                              #! PC = 0xaaaaaaab7124 *)
adds carry x14 x14 x17;
(* adcs	x15, x15, x24                              #! PC = 0xaaaaaaab7128 *)
adcs carry x15 x15 x24 carry;
(* adc	x16, x16, x25                               #! PC = 0xaaaaaaab712c *)
adc x16 x16 x25 carry;
(* mul	x7, x9, x11                                 #! PC = 0xaaaaaaab7130 *)
mull Hx9x11 x7 x9 x11;
(* umulh	x17, x9, x11                              #! PC = 0xaaaaaaab7134 *)
mov x17 Hx9x11;
(* adds	x4, x4, x6                                 #! PC = 0xaaaaaaab7138 *)
adds carry x4 x4 x6;
(* adc	x5, x5, xzr                                 #! PC = 0xaaaaaaab713c *)
adc x5 x5 0@uint64 carry;
(* mul	x25, x9, x12                                #! PC = 0xaaaaaaab7140 *)
mull Hx9x12 x25 x9 x12;
(* umulh	x6, x9, x12                               #! PC = 0xaaaaaaab7144 *)
mov x6 Hx9x12;
(* adds	x4, x4, x7                                 #! PC = 0xaaaaaaab7148 *)
adds carry x4 x4 x7;
(* adcs	x5, x5, x17                                #! PC = 0xaaaaaaab714c *)
adcs carry x5 x5 x17 carry;
(* adc	x6, x6, xzr                                 #! PC = 0xaaaaaaab7150 *)
adc x6 x6 0@uint64 carry;
(* mul	x7, x8, x13                                 #! PC = 0xaaaaaaab7154 *)
mull Hx8x13 x7 x8 x13;
(* umulh	x17, x8, x13                              #! PC = 0xaaaaaaab7158 *)
mov x17 Hx8x13;
(* adds	x5, x5, x25                                #! PC = 0xaaaaaaab715c *)
adds carry x5 x5 x25;
(* adcs	x6, x6, x17                                #! PC = 0xaaaaaaab7160 *)
adcs carry x6 x6 x17 carry;
(* adc	x24, xzr, xzr                               #! PC = 0xaaaaaaab7164 *)
adc x24 0@uint64 0@uint64 carry;
(* mul	x25, x10, x11                               #! PC = 0xaaaaaaab7168 *)
mull Hx10x11 x25 x10 x11;
(* umulh	x17, x10, x11                             #! PC = 0xaaaaaaab716c *)
mov x17 Hx10x11;
(* adds	x5, x5, x7                                 #! PC = 0xaaaaaaab7170 *)
adds carry x5 x5 x7;
(* adcs	x6, x6, x17                                #! PC = 0xaaaaaaab7174 *)
adcs carry x6 x6 x17 carry;
(* adc	x24, x24, xzr                               #! PC = 0xaaaaaaab7178 *)
adc x24 x24 0@uint64 carry;
(* mul	x7, x9, x13                                 #! PC = 0xaaaaaaab717c *)
mull Hx9x13 x7 x9 x13;
(* umulh	x17, x9, x13                              #! PC = 0xaaaaaaab7180 *)
mov x17 Hx9x13;
(* adds	x5, x5, x25                                #! PC = 0xaaaaaaab7184 *)
adds carry x5 x5 x25;
(* adcs	x6, x6, x7                                 #! PC = 0xaaaaaaab7188 *)
adcs carry x6 x6 x7 carry;
(* adcs	x24, x24, x17                              #! PC = 0xaaaaaaab718c *)
adcs carry x24 x24 x17 carry;
(* adc	x25, xzr, xzr                               #! PC = 0xaaaaaaab7190 *)
adc x25 0@uint64 0@uint64 carry;
(* mul	x7, x10, x12                                #! PC = 0xaaaaaaab7194 *)
mull Hx10x12 x7 x10 x12;
(* umulh	x17, x10, x12                             #! PC = 0xaaaaaaab7198 *)
mov x17 Hx10x12;
(* adds	x6, x6, x7                                 #! PC = 0xaaaaaaab719c *)
adds carry x6 x6 x7;
(* adcs	x24, x24, x17                              #! PC = 0xaaaaaaab71a0 *)
adcs carry x24 x24 x17 carry;
(* adc	x25, x25, xzr                               #! PC = 0xaaaaaaab71a4 *)
adc x25 x25 0@uint64 carry;
(* mul	x7, x10, x13                                #! PC = 0xaaaaaaab71a8 *)
mull Hx10x13 x7 x10 x13;
(* umulh	x17, x10, x13                             #! PC = 0xaaaaaaab71ac *)
mov x17 Hx10x13;
(* adds	x7, x7, x24                                #! PC = 0xaaaaaaab71b0 *)
adds carry x7 x7 x24;
(* adc	x17, x17, x25                               #! PC = 0xaaaaaaab71b4 *)
adc x17 x17 x25 carry;
(* adds	x14, x6, x14                               #! PC = 0xaaaaaaab71b8 *)
adds carry x14 x6 x14;
(* adcs	x15, x7, x15                               #! PC = 0xaaaaaaab71bc *)
adcs carry x15 x7 x15 carry;
(* ldp	x6, x7, [x0]                                #! EA = L0xffffffffe010; Value = 0x81ca56c2116272c3; PC = 0xaaaaaaab71c0 *)
mov x6 L0xffffffffe010;
mov x7 L0xffffffffe018;
(* adc	x16, x17, x16                               #! PC = 0xaaaaaaab71c4 *)
adcs dontcare x16 x17 x16 carry;
(* ldr	x17, [x0, #16]                              #! EA = L0xffffffffe020; Value = 0xdd068a47deb396c1; PC = 0xaaaaaaab71c8 *)
mov x17 L0xffffffffe020;
(* mul	x8, x6, x26                                 #! PC = 0xaaaaaaab71cc *)
mull Hx6x26 x8 x6 x26;
(* mul	x9, x6, x27                                 #! PC = 0xaaaaaaab71d0 *)
mull Hx6x27 x9 x6 x27;
(* umulh	x11, x6, x26                              #! PC = 0xaaaaaaab71d4 *)
mov x11 Hx6x26;
(* umulh	x10, x6, x27                              #! PC = 0xaaaaaaab71d8 *)
mov x10 Hx6x27;
(* mul	x12, x7, x26                                #! PC = 0xaaaaaaab71dc *)
mull Hx7x26 x12 x7 x26;
(* umulh	x13, x7, x26                              #! PC = 0xaaaaaaab71e0 *)
mov x13 Hx7x26;
(* adds	x9, x9, x11                                #! PC = 0xaaaaaaab71e4 *)
adds carry x9 x9 x11;
(* adc	x10, x10, xzr                               #! PC = 0xaaaaaaab71e8 *)
adc x10 x10 0@uint64 carry;
(* mul	x25, x7, x27                                #! PC = 0xaaaaaaab71ec *)
mull Hx7x27 x25 x7 x27;
(* umulh	x11, x7, x27                              #! PC = 0xaaaaaaab71f0 *)
mov x11 Hx7x27;
(* adds	x9, x9, x12                                #! PC = 0xaaaaaaab71f4 *)
adds carry x9 x9 x12;
(* adcs	x10, x10, x13                              #! PC = 0xaaaaaaab71f8 *)
adcs carry x10 x10 x13 carry;
(* adc	x11, x11, xzr                               #! PC = 0xaaaaaaab71fc *)
adc x11 x11 0@uint64 carry;
(* mul	x12, x6, x28                                #! PC = 0xaaaaaaab7200 *)
mull Hx6x28 x12 x6 x28;
(* umulh	x13, x6, x28                              #! PC = 0xaaaaaaab7204 *)
mov x13 Hx6x28;
(* adds	x10, x10, x25                              #! PC = 0xaaaaaaab7208 *)
adds carry x10 x10 x25;
(* adcs	x11, x11, x13                              #! PC = 0xaaaaaaab720c *)
adcs carry x11 x11 x13 carry;
(* adc	x24, xzr, xzr                               #! PC = 0xaaaaaaab7210 *)
adc x24 0@uint64 0@uint64 carry;
(* mul	x25, x17, x26                               #! PC = 0xaaaaaaab7214 *)
mull Hx17x26 x25 x17 x26;
(* umulh	x13, x17, x26                             #! PC = 0xaaaaaaab7218 *)
mov x13 Hx17x26;
(* adds	x10, x10, x12                              #! PC = 0xaaaaaaab721c *)
adds carry x10 x10 x12;
(* adcs	x11, x11, x13                              #! PC = 0xaaaaaaab7220 *)
adcs carry x11 x11 x13 carry;
(* adc	x24, x24, xzr                               #! PC = 0xaaaaaaab7224 *)
adc x24 x24 0@uint64 carry;
(* mul	x12, x7, x28                                #! PC = 0xaaaaaaab7228 *)
mull Hx7x28 x12 x7 x28;
(* umulh	x13, x7, x28                              #! PC = 0xaaaaaaab722c *)
mov x13 Hx7x28;
(* adds	x10, x10, x25                              #! PC = 0xaaaaaaab7230 *)
adds carry x10 x10 x25;
(* adcs	x11, x11, x12                              #! PC = 0xaaaaaaab7234 *)
adcs carry x11 x11 x12 carry;
(* adcs	x24, x24, x13                              #! PC = 0xaaaaaaab7238 *)
adcs carry x24 x24 x13 carry;
(* adc	x25, xzr, xzr                               #! PC = 0xaaaaaaab723c *)
adc x25 0@uint64 0@uint64 carry;
(* mul	x12, x17, x27                               #! PC = 0xaaaaaaab7240 *)
mull Hx17x27 x12 x17 x27;
(* umulh	x13, x17, x27                             #! PC = 0xaaaaaaab7244 *)
mov x13 Hx17x27;
(* adds	x11, x11, x12                              #! PC = 0xaaaaaaab7248 *)
adds carry x11 x11 x12;
(* adcs	x24, x24, x13                              #! PC = 0xaaaaaaab724c *)
adcs carry x24 x24 x13 carry;
(* adc	x25, x25, xzr                               #! PC = 0xaaaaaaab7250 *)
adc x25 x25 0@uint64 carry;
(* mul	x12, x17, x28                               #! PC = 0xaaaaaaab7254 *)
mull Hx17x28 x12 x17 x28;
(* umulh	x13, x17, x28                             #! PC = 0xaaaaaaab7258 *)
mov x13 Hx17x28;
(* adds	x12, x12, x24                              #! PC = 0xaaaaaaab725c *)
adds carry x12 x12 x24;
(* adc	x13, x13, x25                               #! PC = 0xaaaaaaab7260 *)
adc x13 x13 x25 carry;
(* ldp	x6, x7, [x0, #24]                           #! EA = L0xffffffffe028; Value = 0x3b67bc5d2a34d0d0; PC = 0xaaaaaaab7264 *)
mov x6 L0xffffffffe028;
mov x7 L0xffffffffe030;
(* subs	x3, x3, x8                                 #! PC = 0xaaaaaaab7268 *)
subc carry x3 x3 x8;
(* sbcs	x4, x4, x9                                 #! PC = 0xaaaaaaab726c *)
sbcs carry x4 x4 x9 carry;
(* mul	x26, x6, x29                                #! PC = 0xaaaaaaab7270 *)
mull Hx6x29 x26 x6 x29;
(* umulh	x17, x6, x29                              #! PC = 0xaaaaaaab7274 *)
mov x17 Hx6x29;
(* sbcs	x5, x5, x10                                #! PC = 0xaaaaaaab7278 *)
sbcs carry x5 x5 x10 carry;
(* sbcs	x14, x14, x11                              #! PC = 0xaaaaaaab727c *)
sbcs carry x14 x14 x11 carry;
(* mul	x27, x6, x30                                #! PC = 0xaaaaaaab7280 *)
mull Hx6x30 x27 x6 x30;
(* umulh	x28, x6, x30                              #! PC = 0xaaaaaaab7284 *)
mov x28 Hx6x30;
(* sbcs	x15, x15, x12                              #! PC = 0xaaaaaaab7288 *)
sbcs carry x15 x15 x12 carry;
(* sbc	x16, x16, x13                               #! PC = 0xaaaaaaab728c *)
sbcs docare x16 x16 x13 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* mul	x6, x7, x29                                 #! PC = 0xaaaaaaab7290 *)
mull Hx7x29 x6 x7 x29;
(* umulh	x29, x7, x29                              #! PC = 0xaaaaaaab7294 *)
mov x29 Hx7x29;
(* adds	x27, x27, x17                              #! PC = 0xaaaaaaab7298 *)
adds carry x27 x27 x17;
(* adc	x28, x28, xzr                               #! PC = 0xaaaaaaab729c *)
adc x28 x28 0@uint64 carry;
(* mul	x24, x7, x30                                #! PC = 0xaaaaaaab72a0 *)
mull Hx7x30 x24 x7 x30;
(* umulh	x30, x7, x30                              #! PC = 0xaaaaaaab72a4 *)
mov x30 Hx7x30;
(* adds	x27, x27, x6                               #! PC = 0xaaaaaaab72a8 *)
adds carry x27 x27 x6;
(* adcs	x28, x28, x29                              #! PC = 0xaaaaaaab72ac *)
adcs carry x28 x28 x29 carry;
(* adc	x17, xzr, xzr                               #! PC = 0xaaaaaaab72b0 *)
adc x17 0@uint64 0@uint64 carry;
(* adds	x28, x28, x24                              #! PC = 0xaaaaaaab72b4 *)
adds carry x28 x28 x24;
(* adc	x17, x17, x30                               #! PC = 0xaaaaaaab72b8 *)
adc x17 x17 x30 carry;
(* subs	x3, x3, x26                                #! PC = 0xaaaaaaab72bc *)
subc carry x3 x3 x26;
(* sbcs	x4, x4, x27                                #! PC = 0xaaaaaaab72c0 *)
sbcs carry x4 x4 x27 carry;
(* sbcs	x5, x5, x28                                #! PC = 0xaaaaaaab72c4 *)
sbcs carry x5 x5 x28 carry;
(* sbcs	x14, x14, x17                              #! PC = 0xaaaaaaab72c8 *)
sbcs carry x14 x14 x17 carry;
(* sbcs	x15, x15, xzr                              #! PC = 0xaaaaaaab72cc *)
sbcs carry x15 x15 0@uint64 carry;
(* sbc	x16, x16, xzr                               #! PC = 0xaaaaaaab72d0 *)
sbcs docare x16 x16 0@uint64 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* NOTE: summary *)
assert eqmod (limbs 64 [x3, x4, x5, x14, x15, x16])
             (limbs 64 [a0o9, a1o9, a2o9] * limbs 64 [b3o9, b4o9] +
              limbs 64 [b0o9, b1o9, b2o9] * limbs 64 [a3o9, a4o9])
             (2**384) && true;
assume limbs 64 [x3, x4, x5, x14, x15, x16] =
       limbs 64 [a0o9, a1o9, a2o9] * limbs 64 [b3o9, b4o9] +
       limbs 64 [b0o9, b1o9, b2o9] * limbs 64 [a3o9, a4o9] && true;

(* adds	x11, x11, x3                               #! PC = 0xaaaaaaab72d4 *)
adds carry x11 x11 x3;
(* adcs	x12, x12, x4                               #! PC = 0xaaaaaaab72d8 *)
adcs carry x12 x12 x4 carry;
(* adcs	x13, x13, x5                               #! PC = 0xaaaaaaab72dc *)
adcs carry x13 x13 x5 carry;
(* adcs	x14, x14, x26                              #! PC = 0xaaaaaaab72e0 *)
adcs carry x14 x14 x26 carry;
(* adcs	x15, x15, x27                              #! PC = 0xaaaaaaab72e4 *)
adcs carry x15 x15 x27 carry;
(* adcs	x16, x16, x28                              #! PC = 0xaaaaaaab72e8 *)
adcs carry x16 x16 x28 carry;
(* adc	x17, x17, xzr                               #! PC = 0xaaaaaaab72ec *)
adc x17 x17 0@uint64 carry;
(* ldp	x7, x26, [x2, #72]                          #! EA = L0xffffffffe210; Value = 0x00000001849123cc; PC = 0xaaaaaaab72f0 *)
mov x7 L0xffffffffe210;
mov x26 L0xffffffffe218;
(* ldp	x27, x28, [x2, #88]                         #! EA = L0xffffffffe220; Value = 0xf9168e29c4961dc8; PC = 0xaaaaaaab72f4 *)
mov x27 L0xffffffffe220;
mov x28 L0xffffffffe228;
(* subs	x26, x26, x8                               #! PC = 0xaaaaaaab72f8 *)
subc carry x26 x26 x8;
(* ldp	x29, x30, [x2, #104]                        #! EA = L0xffffffffe230; Value = 0xd52e81e54238d5b2; PC = 0xaaaaaaab72fc *)
mov x29 L0xffffffffe230;
mov x30 L0xffffffffe238;
(* sbcs	x27, x27, x9                               #! PC = 0xaaaaaaab7300 *)
sbcs carry x27 x27 x9 carry;
(* sbcs	x28, x28, x10                              #! PC = 0xaaaaaaab7304 *)
sbcs carry x28 x28 x10 carry;
(* ldp	x3, x4, [x2, #40]                           #! EA = L0xffffffffe1f0; Value = 0x8d787597afa59132; PC = 0xaaaaaaab7308 *)
mov x3 L0xffffffffe1f0;
mov x4 L0xffffffffe1f8;
(* sbcs	x29, x29, x11                              #! PC = 0xaaaaaaab730c *)
sbcs carry x29 x29 x11 carry;
(* sbcs	x30, x30, x12                              #! PC = 0xaaaaaaab7310 *)
sbcs carry x30 x30 x12 carry;
(* ldp	x5, x6, [x2, #56]                           #! EA = L0xffffffffe200; Value = 0x4f1e24afe48e9f5b; PC = 0xaaaaaaab7314 *)
mov x5 L0xffffffffe200;
mov x6 L0xffffffffe208;
(* sbcs	x3, x3, x13                                #! PC = 0xaaaaaaab7318 *)
sbcs carry x3 x3 x13 carry;
(* sbcs	x4, x4, x14                                #! PC = 0xaaaaaaab731c *)
sbcs carry x4 x4 x14 carry;
(* sbcs	x5, x5, x15                                #! PC = 0xaaaaaaab7320 *)
sbcs carry x5 x5 x15 carry;
(* sbcs	x6, x6, x16                                #! PC = 0xaaaaaaab7324 *)
sbcs carry x6 x6 x16 carry;
(* sbc	x7, x7, x17                                 #! PC = 0xaaaaaaab7328 *)
sbcs docare x7 x7 x17 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* NOTE: summary *)
assert eqmod (limbs 64 [x26, x27, x28, x29, x30, x3, x4, x5, x6, x7])
             (limbs 64 [L0xffffffffdfe8, L0xffffffffdff0, L0xffffffffdff8,
                        L0xffffffffe000, L0xffffffffe008] *
              limbs 64 [L0xffffffffe060, L0xffffffffe068, L0xffffffffe070,
                        L0xffffffffe078, L0xffffffffe080] +
              limbs 64 [L0xffffffffe038, L0xffffffffe040, L0xffffffffe048,
                        L0xffffffffe050, L0xffffffffe058] *
              limbs 64 [L0xffffffffe010, L0xffffffffe018, L0xffffffffe020,
                        L0xffffffffe028, L0xffffffffe030])
             (2**640) && true;
assume limbs 64 [x26, x27, x28, x29, x30, x3, x4, x5, x6, x7] =
       limbs 64 [L0xffffffffdfe8, L0xffffffffdff0, L0xffffffffdff8,
                 L0xffffffffe000, L0xffffffffe008] *
       limbs 64 [L0xffffffffe060, L0xffffffffe068, L0xffffffffe070,
                 L0xffffffffe078, L0xffffffffe080] +
       limbs 64 [L0xffffffffe038, L0xffffffffe040, L0xffffffffe048,
                 L0xffffffffe050, L0xffffffffe058] *
       limbs 64 [L0xffffffffe010, L0xffffffffe018, L0xffffffffe020,
                 L0xffffffffe028, L0xffffffffe030] && true;

(* adds	x19, x19, x26                              #! PC = 0xaaaaaaab732c *)
adds carry x19 x19 x26;
(* adcs	x20, x20, x27                              #! PC = 0xaaaaaaab7330 *)
adcs carry x20 x20 x27 carry;
(* ldp	x25, x26, [sp, #48]                         #! EA = L0xffffffffdf50; Value = 0x0000ffffffffe6b8; PC = 0xaaaaaaab7334 *)
mov x25 L0xffffffffdf50;
mov x26 L0xffffffffdf58;
(* adcs	x21, x21, x28                              #! PC = 0xaaaaaaab7338 *)
adcs carry x21 x21 x28 carry;
(* adcs	x22, x22, x29                              #! PC = 0xaaaaaaab733c *)
adcs carry x22 x22 x29 carry;
(* stp	x19, x20, [x2, #40]                         #! EA = L0xffffffffe1f0; PC = 0xaaaaaaab7340 *)
mov L0xffffffffe1f0 x19;
mov L0xffffffffe1f8 x20;
(* adcs	x23, x23, x30                              #! PC = 0xaaaaaaab7344 *)
adcs carry x23 x23 x30 carry;
(* ldp	x27, x28, [sp, #64]                         #! EA = L0xffffffffdf60; Value = 0x0000ffffffffe7a8; PC = 0xaaaaaaab7348 *)
mov x27 L0xffffffffdf60;
mov x28 L0xffffffffdf68;
(* adcs	x3, x3, x8                                 #! PC = 0xaaaaaaab734c *)
adcs carry x3 x3 x8 carry;
(* stp	x21, x22, [x2, #56]                         #! EA = L0xffffffffe200; PC = 0xaaaaaaab7350 *)
mov L0xffffffffe200 x21;
mov L0xffffffffe208 x22;
(* adcs	x4, x4, x9                                 #! PC = 0xaaaaaaab7354 *)
adcs carry x4 x4 x9 carry;
(* ldp	x19, x20, [sp]                              #! EA = L0xffffffffdf20; Value = 0x0000ffffffffe088; PC = 0xaaaaaaab7358 *)
mov x19 L0xffffffffdf20;
mov x20 L0xffffffffdf28;
(* adcs	x5, x5, x10                                #! PC = 0xaaaaaaab735c *)
adcs carry x5 x5 x10 carry;
(* stp	x23, x3, [x2, #72]                          #! EA = L0xffffffffe210; PC = 0xaaaaaaab7360 *)
mov L0xffffffffe210 x23;
mov L0xffffffffe218 x3;
(* adcs	x6, x6, x11                                #! PC = 0xaaaaaaab7364 *)
adcs carry x6 x6 x11 carry;
(* ldp	x21, x22, [sp, #16]                         #! EA = L0xffffffffdf30; Value = 0x0000ffffffffe128; PC = 0xaaaaaaab7368 *)
mov x21 L0xffffffffdf30;
mov x22 L0xffffffffdf38;
(* adcs	x7, x7, x12                                #! PC = 0xaaaaaaab736c *)
adcs carry x7 x7 x12 carry;
(* stp	x4, x5, [x2, #88]                           #! EA = L0xffffffffe220; PC = 0xaaaaaaab7370 *)
mov L0xffffffffe220 x4;
mov L0xffffffffe228 x5;
(* adcs	x13, x13, xzr                              #! PC = 0xaaaaaaab7374 *)
adcs carry x13 x13 0@uint64 carry;
(* ldp	x23, x24, [sp, #32]                         #! EA = L0xffffffffdf40; Value = 0x0000ffffffffdfe8; PC = 0xaaaaaaab7378 *)
mov x23 L0xffffffffdf40;
mov x24 L0xffffffffdf48;
(* adcs	x14, x14, xzr                              #! PC = 0xaaaaaaab737c *)
adcs carry x14 x14 0@uint64 carry;
(* stp	x6, x7, [x2, #104]                          #! EA = L0xffffffffe230; PC = 0xaaaaaaab7380 *)
mov L0xffffffffe230 x6;
mov L0xffffffffe238 x7;
(* adcs	x15, x15, xzr                              #! PC = 0xaaaaaaab7384 *)
adcs carry x15 x15 0@uint64 carry;
(* ldp	x29, x30, [sp, #80]                         #! EA = L0xffffffffdf70; Value = 0x0000ffffffffdf80; PC = 0xaaaaaaab7388 *)
mov x29 L0xffffffffdf70;
mov x30 L0xffffffffdf78;
(* adcs	x16, x16, xzr                              #! PC = 0xaaaaaaab738c *)
adcs carry x16 x16 0@uint64 carry;
(* stp	x13, x14, [x2, #120]                        #! EA = L0xffffffffe240; PC = 0xaaaaaaab7390 *)
mov L0xffffffffe240 x13;
mov L0xffffffffe248 x14;
(* adc	x17, x17, xzr                               #! PC = 0xaaaaaaab7394 *)
adc x17 x17 0@uint64 carry;
(* stp	x15, x16, [x2, #136]                        #! EA = L0xffffffffe250; PC = 0xaaaaaaab7398 *)
mov L0xffffffffe250 x15;
mov L0xffffffffe258 x16;
(* str	x17, [x2, #152]                             #! EA = L0xffffffffe260; PC = 0xaaaaaaab739c *)
mov L0xffffffffe260 x17;
(* add	sp, sp, #0x60                               #! PC = 0xaaaaaaab73a0 *)
adds dontcare sp sp 0x60@uint64;
(* #! <- SP = 0xffffffffdf80 *)
#! 0xffffffffdf80 = 0xffffffffdf80;
(* #ret                                            #! PC = 0xaaaaaaab73a4 *)
#ret                                            #! 0xaaaaaaab73a4 = 0xaaaaaaab73a4;

(* CUT 4 *)
cut limbs 64 [L0xffffffffe1c8, L0xffffffffe1d0, L0xffffffffe1d8,
              L0xffffffffe1e0, L0xffffffffe1e8, L0xffffffffe1f0,
              L0xffffffffe1f8, L0xffffffffe200, L0xffffffffe208,
              L0xffffffffe210, L0xffffffffe218, L0xffffffffe220,
              L0xffffffffe228, L0xffffffffe230, L0xffffffffe238,
              L0xffffffffe240, L0xffffffffe248, L0xffffffffe250,
              L0xffffffffe258, L0xffffffffe260] =
    (limbs 64 [ar0, ar1, ar2, ar3, ar4, ar5, ar6, ar7, ar8, ar9] +
     limbs 64 [ai0, ai1, ai2, ai3, ai4, ai5, ai6, ai7, ai8, ai9]) *
    (limbs 64 [br0, br1, br2, br3, br4, br5, br6, br7, br8, br9] +
     limbs 64 [bi0, bi1, bi2, bi3, bi4, bi5, bi6, bi7, bi8, bi9])
    prove with [ precondition, cuts [ 0, 1] ]
 && limbs 64 [L0xffffffffe1c8, L0xffffffffe1d0, L0xffffffffe1d8,
              L0xffffffffe1e0, L0xffffffffe1e8, L0xffffffffe1f0,
              L0xffffffffe1f8, L0xffffffffe200, L0xffffffffe208,
              L0xffffffffe210, L0xffffffffe218, L0xffffffffe220,
              L0xffffffffe228, L0xffffffffe230, L0xffffffffe238,
              L0xffffffffe240, L0xffffffffe248, L0xffffffffe250,
              L0xffffffffe258, L0xffffffffe260] <u (2**1223)@1280
    prove with [ precondition, cuts [ 0, 1 ] ];

(* mov	x2, x20                                     #! PC = 0xaaaaaaaae5d4 *)
mov x2 x20;
(* mov	x1, x21                                     #! PC = 0xaaaaaaaae5d8 *)
mov x1 x21;
(* mov	x0, x19                                     #! PC = 0xaaaaaaaae5dc *)
mov x0 x19;
(* #bl	0xaaaaaaab7c04 <mp_dblsub610x2_asm>         #! PC = 0xaaaaaaaae5e0 *)
#bl	0xaaaaaaab7c04 <mp_dblsub610x2_asm>         #! 0xaaaaaaaae5e0 = 0xaaaaaaaae5e0;
(* #! -> SP = 0xffffffffdf80 *)
#! 0xffffffffdf80 = 0xffffffffdf80;

(* TODO: (AR+AI)*(BR+BI) >= AR*BR + AI*BI *)
assume true
    && limbs 64 [L0xffffffffe1c8, L0xffffffffe1d0, L0xffffffffe1d8,
                 L0xffffffffe1e0, L0xffffffffe1e8, L0xffffffffe1f0,
                 L0xffffffffe1f8, L0xffffffffe200, L0xffffffffe208,
                 L0xffffffffe210, L0xffffffffe218, L0xffffffffe220,
                 L0xffffffffe228, L0xffffffffe230, L0xffffffffe238,
                 L0xffffffffe240, L0xffffffffe248, L0xffffffffe250,
                 L0xffffffffe258, L0xffffffffe260] >=u
       limbs 64 [L0xffffffffe088, L0xffffffffe090, L0xffffffffe098,
                 L0xffffffffe0a0, L0xffffffffe0a8, L0xffffffffe0b0,
                 L0xffffffffe0b8, L0xffffffffe0c0, L0xffffffffe0c8,
                 L0xffffffffe0d0, L0xffffffffe0d8, L0xffffffffe0e0,
                 L0xffffffffe0e8, L0xffffffffe0f0, L0xffffffffe0f8,
                 L0xffffffffe100, L0xffffffffe108, L0xffffffffe110,
                 L0xffffffffe118, L0xffffffffe120] +
       limbs 64 [L0xffffffffe128, L0xffffffffe130, L0xffffffffe138,
                 L0xffffffffe140, L0xffffffffe148, L0xffffffffe150,
                 L0xffffffffe158, L0xffffffffe160, L0xffffffffe168,
                 L0xffffffffe170, L0xffffffffe178, L0xffffffffe180,
                 L0xffffffffe188, L0xffffffffe190, L0xffffffffe198,
                 L0xffffffffe1a0, L0xffffffffe1a8, L0xffffffffe1b0,
                 L0xffffffffe1b8, L0xffffffffe1c0];

(* sub	sp, sp, #0x40                               #! PC = 0xaaaaaaab7c04 *)
subc dontcare sp sp 0x40@uint64;
(* stp	x19, x20, [sp]                              #! EA = L0xffffffffdf40; PC = 0xaaaaaaab7c08 *)
mov L0xffffffffdf40 x19;
mov L0xffffffffdf48 x20;
(* stp	x21, x22, [sp, #16]                         #! EA = L0xffffffffdf50; PC = 0xaaaaaaab7c0c *)
mov L0xffffffffdf50 x21;
mov L0xffffffffdf58 x22;
(* stp	x25, x26, [sp, #32]                         #! EA = L0xffffffffdf60; PC = 0xaaaaaaab7c10 *)
mov L0xffffffffdf60 x25;
mov L0xffffffffdf68 x26;
(* stp	x27, x28, [sp, #48]                         #! EA = L0xffffffffdf70; PC = 0xaaaaaaab7c14 *)
mov L0xffffffffdf70 x27;
mov L0xffffffffdf78 x28;
(* ldp	x3, x4, [x2]                                #! EA = L0xffffffffe1c8; Value = 0x385d83da9b51ad5c; PC = 0xaaaaaaab7c18 *)
mov x3 L0xffffffffe1c8;
mov x4 L0xffffffffe1d0;
(* ldp	x5, x6, [x2, #16]                           #! EA = L0xffffffffe1d8; Value = 0xabc75267ce350581; PC = 0xaaaaaaab7c1c *)
mov x5 L0xffffffffe1d8;
mov x6 L0xffffffffe1e0;
(* ldp	x7, x8, [x2, #32]                           #! EA = L0xffffffffe1e8; Value = 0x2aad31aab4a2677e; PC = 0xaaaaaaab7c20 *)
mov x7 L0xffffffffe1e8;
mov x8 L0xffffffffe1f0;
(* ldp	x9, x10, [x2, #48]                          #! EA = L0xffffffffe1f8; Value = 0x0caa7ce5956f312b; PC = 0xaaaaaaab7c24 *)
mov x9 L0xffffffffe1f8;
mov x10 L0xffffffffe200;
(* ldp	x11, x12, [x2, #64]                         #! EA = L0xffffffffe208; Value = 0x88b63a518ee01746; PC = 0xaaaaaaab7c28 *)
mov x11 L0xffffffffe208;
mov x12 L0xffffffffe210;
(* ldp	x13, x14, [x2, #80]                         #! EA = L0xffffffffe218; Value = 0x88143d8f3ac9a4fc; PC = 0xaaaaaaab7c2c *)
mov x13 L0xffffffffe218;
mov x14 L0xffffffffe220;
(* ldp	x15, x16, [x2, #96]                         #! EA = L0xffffffffe228; Value = 0x14a12360cf251d05; PC = 0xaaaaaaab7c30 *)
mov x15 L0xffffffffe228;
mov x16 L0xffffffffe230;
(* ldp	x17, x18, [x2, #112]                        #! EA = L0xffffffffe238; Value = 0xc907381ac4f9a2f9; PC = 0xaaaaaaab7c34 *)
mov x17 L0xffffffffe238;
mov x18 L0xffffffffe240;
(* ldp	x19, x20, [x2, #128]                        #! EA = L0xffffffffe248; Value = 0xc5eb39086da62282; PC = 0xaaaaaaab7c38 *)
mov x19 L0xffffffffe248;
mov x20 L0xffffffffe250;
(* ldp	x21, x22, [x2, #144]                        #! EA = L0xffffffffe258; Value = 0xefc6dc61bd1bcd8b; PC = 0xaaaaaaab7c3c *)
mov x21 L0xffffffffe258;
mov x22 L0xffffffffe260;
(* ldp	x25, x26, [x0]                              #! EA = L0xffffffffe088; Value = 0xcd04c88249840524; PC = 0xaaaaaaab7c40 *)
mov x25 L0xffffffffe088;
mov x26 L0xffffffffe090;
(* ldp	x27, x28, [x0, #16]                         #! EA = L0xffffffffe098; Value = 0x5459eb905bdcb1b4; PC = 0xaaaaaaab7c44 *)
mov x27 L0xffffffffe098;
mov x28 L0xffffffffe0a0;
(* subs	x3, x3, x25                                #! PC = 0xaaaaaaab7c48 *)
subc carry x3 x3 x25;
(* sbcs	x4, x4, x26                                #! PC = 0xaaaaaaab7c4c *)
sbcs carry x4 x4 x26 carry;
(* sbcs	x5, x5, x27                                #! PC = 0xaaaaaaab7c50 *)
sbcs carry x5 x5 x27 carry;
(* sbcs	x6, x6, x28                                #! PC = 0xaaaaaaab7c54 *)
sbcs carry x6 x6 x28 carry;
(* ldp	x25, x26, [x0, #32]                         #! EA = L0xffffffffe0a8; Value = 0x69c177e860479cbc; PC = 0xaaaaaaab7c58 *)
mov x25 L0xffffffffe0a8;
mov x26 L0xffffffffe0b0;
(* ldp	x27, x28, [x0, #48]                         #! EA = L0xffffffffe0b8; Value = 0x04c6e1592bdc11a2; PC = 0xaaaaaaab7c5c *)
mov x27 L0xffffffffe0b8;
mov x28 L0xffffffffe0c0;
(* sbcs	x7, x7, x25                                #! PC = 0xaaaaaaab7c60 *)
sbcs carry x7 x7 x25 carry;
(* sbcs	x8, x8, x26                                #! PC = 0xaaaaaaab7c64 *)
sbcs carry x8 x8 x26 carry;
(* sbcs	x9, x9, x27                                #! PC = 0xaaaaaaab7c68 *)
sbcs carry x9 x9 x27 carry;
(* sbcs	x10, x10, x28                              #! PC = 0xaaaaaaab7c6c *)
sbcs carry x10 x10 x28 carry;
(* ldp	x25, x26, [x0, #64]                         #! EA = L0xffffffffe0c8; Value = 0x9150a9223cfcfc35; PC = 0xaaaaaaab7c70 *)
mov x25 L0xffffffffe0c8;
mov x26 L0xffffffffe0d0;
(* ldp	x27, x28, [x0, #80]                         #! EA = L0xffffffffe0d8; Value = 0xb758cc3adfc573fe; PC = 0xaaaaaaab7c74 *)
mov x27 L0xffffffffe0d8;
mov x28 L0xffffffffe0e0;
(* sbcs	x11, x11, x25                              #! PC = 0xaaaaaaab7c78 *)
sbcs carry x11 x11 x25 carry;
(* sbcs	x12, x12, x26                              #! PC = 0xaaaaaaab7c7c *)
sbcs carry x12 x12 x26 carry;
(* sbcs	x13, x13, x27                              #! PC = 0xaaaaaaab7c80 *)
sbcs carry x13 x13 x27 carry;
(* sbcs	x14, x14, x28                              #! PC = 0xaaaaaaab7c84 *)
sbcs carry x14 x14 x28 carry;
(* ldp	x25, x26, [x0, #96]                         #! EA = L0xffffffffe0e8; Value = 0xe45820ce8f6d01ca; PC = 0xaaaaaaab7c88 *)
mov x25 L0xffffffffe0e8;
mov x26 L0xffffffffe0f0;
(* ldp	x27, x28, [x0, #112]                        #! EA = L0xffffffffe0f8; Value = 0x263509b33c4e581a; PC = 0xaaaaaaab7c8c *)
mov x27 L0xffffffffe0f8;
mov x28 L0xffffffffe100;
(* sbcs	x15, x15, x25                              #! PC = 0xaaaaaaab7c90 *)
sbcs carry x15 x15 x25 carry;
(* sbcs	x16, x16, x26                              #! PC = 0xaaaaaaab7c94 *)
sbcs carry x16 x16 x26 carry;
(* sbcs	x17, x17, x27                              #! PC = 0xaaaaaaab7c98 *)
sbcs carry x17 x17 x27 carry;
(* sbcs	x18, x18, x28                              #! PC = 0xaaaaaaab7c9c *)
sbcs carry x18 x18 x28 carry;
(* ldp	x25, x26, [x0, #128]                        #! EA = L0xffffffffe108; Value = 0x5c618771153d6028; PC = 0xaaaaaaab7ca0 *)
mov x25 L0xffffffffe108;
mov x26 L0xffffffffe110;
(* ldp	x27, x28, [x0, #144]                        #! EA = L0xffffffffe118; Value = 0x0c94c577398bd4cf; PC = 0xaaaaaaab7ca4 *)
mov x27 L0xffffffffe118;
mov x28 L0xffffffffe120;
(* sbcs	x19, x19, x25                              #! PC = 0xaaaaaaab7ca8 *)
sbcs carry x19 x19 x25 carry;
(* sbcs	x20, x20, x26                              #! PC = 0xaaaaaaab7cac *)
sbcs carry x20 x20 x26 carry;
(* sbcs	x21, x21, x27                              #! PC = 0xaaaaaaab7cb0 *)
sbcs carry x21 x21 x27 carry;
(* sbc	x22, x22, x28                               #! PC = 0xaaaaaaab7cb4 *)
sbcs docare x22 x22 x28 carry;

(* TODO: assert true && docare = 1@1; *)
assume docare = 1 && true;

(* ldp	x25, x26, [x1]                              #! EA = L0xffffffffe128; Value = 0xc0e45d1b5fad0d4a; PC = 0xaaaaaaab7cb8 *)
mov x25 L0xffffffffe128;
mov x26 L0xffffffffe130;
(* ldp	x27, x28, [x1, #16]                         #! EA = L0xffffffffe138; Value = 0x8fceec02487d54b0; PC = 0xaaaaaaab7cbc *)
mov x27 L0xffffffffe138;
mov x28 L0xffffffffe140;
(* subs	x3, x3, x25                                #! PC = 0xaaaaaaab7cc0 *)
subc carry x3 x3 x25;
(* sbcs	x4, x4, x26                                #! PC = 0xaaaaaaab7cc4 *)
sbcs carry x4 x4 x26 carry;
(* sbcs	x5, x5, x27                                #! PC = 0xaaaaaaab7cc8 *)
sbcs carry x5 x5 x27 carry;
(* sbcs	x6, x6, x28                                #! PC = 0xaaaaaaab7ccc *)
sbcs carry x6 x6 x28 carry;
(* ldp	x25, x26, [x1, #32]                         #! EA = L0xffffffffe148; Value = 0x0e65fb66c038e77a; PC = 0xaaaaaaab7cd0 *)
mov x25 L0xffffffffe148;
mov x26 L0xffffffffe150;
(* ldp	x27, x28, [x1, #48]                         #! EA = L0xffffffffe158; Value = 0x6cd79be57837b171; PC = 0xaaaaaaab7cd4 *)
mov x27 L0xffffffffe158;
mov x28 L0xffffffffe160;
(* sbcs	x7, x7, x25                                #! PC = 0xaaaaaaab7cd8 *)
sbcs carry x7 x7 x25 carry;
(* sbcs	x8, x8, x26                                #! PC = 0xaaaaaaab7cdc *)
sbcs carry x8 x8 x26 carry;
(* sbcs	x9, x9, x27                                #! PC = 0xaaaaaaab7ce0 *)
sbcs carry x9 x9 x27 carry;
(* sbcs	x10, x10, x28                              #! PC = 0xaaaaaaab7ce4 *)
sbcs carry x10 x10 x28 carry;
(* ldp	x25, x26, [x1, #64]                         #! EA = L0xffffffffe168; Value = 0xb262aded8c9657d9; PC = 0xaaaaaaab7ce8 *)
mov x25 L0xffffffffe168;
mov x26 L0xffffffffe170;
(* ldp	x27, x28, [x1, #80]                         #! EA = L0xffffffffe178; Value = 0xc37763a50d832823; PC = 0xaaaaaaab7cec *)
mov x27 L0xffffffffe178;
mov x28 L0xffffffffe180;
(* sbcs	x11, x11, x25                              #! PC = 0xaaaaaaab7cf0 *)
sbcs carry x11 x11 x25 carry;
(* sbcs	x12, x12, x26                              #! PC = 0xaaaaaaab7cf4 *)
sbcs carry x12 x12 x26 carry;
(* sbcs	x13, x13, x27                              #! PC = 0xaaaaaaab7cf8 *)
sbcs carry x13 x13 x27 carry;
(* sbcs	x14, x14, x28                              #! PC = 0xaaaaaaab7cfc *)
sbcs carry x14 x14 x28 carry;
(* ldp	x25, x26, [x1, #96]                         #! EA = L0xffffffffe188; Value = 0x5be10239448ef996; PC = 0xaaaaaaab7d00 *)
mov x25 L0xffffffffe188;
mov x26 L0xffffffffe190;
(* ldp	x27, x28, [x1, #112]                        #! EA = L0xffffffffe198; Value = 0x1a89c7566dc6c171; PC = 0xaaaaaaab7d04 *)
mov x27 L0xffffffffe198;
mov x28 L0xffffffffe1a0;
(* sbcs	x15, x15, x25                              #! PC = 0xaaaaaaab7d08 *)
sbcs carry x15 x15 x25 carry;
(* sbcs	x16, x16, x26                              #! PC = 0xaaaaaaab7d0c *)
sbcs carry x16 x16 x26 carry;
(* sbcs	x17, x17, x27                              #! PC = 0xaaaaaaab7d10 *)
sbcs carry x17 x17 x27 carry;
(* sbcs	x18, x18, x28                              #! PC = 0xaaaaaaab7d14 *)
sbcs carry x18 x18 x28 carry;
(* ldp	x25, x26, [x1, #128]                        #! EA = L0xffffffffe1a8; Value = 0x84b15d0a1c2e2f67; PC = 0xaaaaaaab7d18 *)
mov x25 L0xffffffffe1a8;
mov x26 L0xffffffffe1b0;
(* ldp	x27, x28, [x1, #144]                        #! EA = L0xffffffffe1b8; Value = 0x00a8ec9fb82509f4; PC = 0xaaaaaaab7d1c *)
mov x27 L0xffffffffe1b8;
mov x28 L0xffffffffe1c0;
(* sbcs	x19, x19, x25                              #! PC = 0xaaaaaaab7d20 *)
sbcs carry x19 x19 x25 carry;
(* sbcs	x20, x20, x26                              #! PC = 0xaaaaaaab7d24 *)
sbcs carry x20 x20 x26 carry;
(* sbcs	x21, x21, x27                              #! PC = 0xaaaaaaab7d28 *)
sbcs carry x21 x21 x27 carry;
(* sbc	x22, x22, x28                               #! PC = 0xaaaaaaab7d2c *)
sbcs docare x22 x22 x28 carry;

(* TODO: assert true && docare = 1@1; *)
assume docare = 1 && true;

(* stp	x3, x4, [x2]                                #! EA = L0xffffffffe1c8; PC = 0xaaaaaaab7d30 *)
mov L0xffffffffe1c8 x3;
mov L0xffffffffe1d0 x4;
(* stp	x5, x6, [x2, #16]                           #! EA = L0xffffffffe1d8; PC = 0xaaaaaaab7d34 *)
mov L0xffffffffe1d8 x5;
mov L0xffffffffe1e0 x6;
(* stp	x7, x8, [x2, #32]                           #! EA = L0xffffffffe1e8; PC = 0xaaaaaaab7d38 *)
mov L0xffffffffe1e8 x7;
mov L0xffffffffe1f0 x8;
(* stp	x9, x10, [x2, #48]                          #! EA = L0xffffffffe1f8; PC = 0xaaaaaaab7d3c *)
mov L0xffffffffe1f8 x9;
mov L0xffffffffe200 x10;
(* stp	x11, x12, [x2, #64]                         #! EA = L0xffffffffe208; PC = 0xaaaaaaab7d40 *)
mov L0xffffffffe208 x11;
mov L0xffffffffe210 x12;
(* stp	x13, x14, [x2, #80]                         #! EA = L0xffffffffe218; PC = 0xaaaaaaab7d44 *)
mov L0xffffffffe218 x13;
mov L0xffffffffe220 x14;
(* stp	x15, x16, [x2, #96]                         #! EA = L0xffffffffe228; PC = 0xaaaaaaab7d48 *)
mov L0xffffffffe228 x15;
mov L0xffffffffe230 x16;
(* stp	x17, x18, [x2, #112]                        #! EA = L0xffffffffe238; PC = 0xaaaaaaab7d4c *)
mov L0xffffffffe238 x17;
mov L0xffffffffe240 x18;
(* stp	x19, x20, [x2, #128]                        #! EA = L0xffffffffe248; PC = 0xaaaaaaab7d50 *)
mov L0xffffffffe248 x19;
mov L0xffffffffe250 x20;
(* stp	x21, x22, [x2, #144]                        #! EA = L0xffffffffe258; PC = 0xaaaaaaab7d54 *)
mov L0xffffffffe258 x21;
mov L0xffffffffe260 x22;
(* ldp	x19, x20, [sp]                              #! EA = L0xffffffffdf40; Value = 0x0000ffffffffe088; PC = 0xaaaaaaab7d58 *)
mov x19 L0xffffffffdf40;
mov x20 L0xffffffffdf48;
(* ldp	x21, x22, [sp, #16]                         #! EA = L0xffffffffdf50; Value = 0x0000ffffffffe128; PC = 0xaaaaaaab7d5c *)
mov x21 L0xffffffffdf50;
mov x22 L0xffffffffdf58;
(* ldp	x25, x26, [sp, #32]                         #! EA = L0xffffffffdf60; Value = 0x0000ffffffffe6b8; PC = 0xaaaaaaab7d60 *)
mov x25 L0xffffffffdf60;
mov x26 L0xffffffffdf68;
(* ldp	x27, x28, [sp, #48]                         #! EA = L0xffffffffdf70; Value = 0x0000ffffffffe7a8; PC = 0xaaaaaaab7d64 *)
mov x27 L0xffffffffdf70;
mov x28 L0xffffffffdf78;
(* add	sp, sp, #0x40                               #! PC = 0xaaaaaaab7d68 *)
adds dontcare sp sp 0x40@uint64;
(* #! <- SP = 0xffffffffdf80 *)
#! 0xffffffffdf80 = 0xffffffffdf80;
(* #ret                                            #! PC = 0xaaaaaaab7d6c *)
#ret                                            #! 0xaaaaaaab7d6c = 0xaaaaaaab7d6c;

(* CUT 5 *)
cut limbs 64 [L0xffffffffe1c8, L0xffffffffe1d0, L0xffffffffe1d8,
              L0xffffffffe1e0, L0xffffffffe1e8, L0xffffffffe1f0,
              L0xffffffffe1f8, L0xffffffffe200, L0xffffffffe208,
              L0xffffffffe210, L0xffffffffe218, L0xffffffffe220, 
              L0xffffffffe228, L0xffffffffe230, L0xffffffffe238,
              L0xffffffffe240, L0xffffffffe248, L0xffffffffe250, 
              L0xffffffffe258, L0xffffffffe260] =
    (limbs 64 [ar0, ar1, ar2, ar3, ar4, ar5, ar6, ar7, ar8, ar9] +
     limbs 64 [ai0, ai1, ai2, ai3, ai4, ai5, ai6, ai7, ai8, ai9]) *
    (limbs 64 [br0, br1, br2, br3, br4, br5, br6, br7, br8, br9] +
     limbs 64 [bi0, bi1, bi2, bi3, bi4, bi5, bi6, bi7, bi8, bi9]) -
    limbs 64 [ar0, ar1, ar2, ar3, ar4, ar5, ar6, ar7, ar8, ar9] *
    limbs 64 [br0, br1, br2, br3, br4, br5, br6, br7, br8, br9] -
    limbs 64 [ai0, ai1, ai2, ai3, ai4, ai5, ai6, ai7, ai8, ai9] *
    limbs 64 [bi0, bi1, bi2, bi3, bi4, bi5, bi6, bi7, bi8, bi9]
    prove with [ cuts [ 2, 3, 4 ] ]
 && and [limbs 64 [L0xffffffffe1c8, L0xffffffffe1d0, L0xffffffffe1d8,
                   L0xffffffffe1e0, L0xffffffffe1e8, L0xffffffffe1f0,
                   L0xffffffffe1f8, L0xffffffffe200, L0xffffffffe208,
                   L0xffffffffe210, L0xffffffffe218, L0xffffffffe220, 
                   L0xffffffffe228, L0xffffffffe230, L0xffffffffe238,
                   L0xffffffffe240, L0xffffffffe248, L0xffffffffe250, 
                   L0xffffffffe258, L0xffffffffe260] <u (2**1223)@1280,
         limbs 64 [L0xffffffffe088, L0xffffffffe090, L0xffffffffe098,
                   L0xffffffffe0a0, L0xffffffffe0a8, L0xffffffffe0b0,
                   L0xffffffffe0b8, L0xffffffffe0c0, L0xffffffffe0c8,
                   L0xffffffffe0d0, L0xffffffffe0d8, L0xffffffffe0e0,
                   L0xffffffffe0e8, L0xffffffffe0f0, L0xffffffffe0f8,
                   L0xffffffffe100, L0xffffffffe108, L0xffffffffe110,
                   L0xffffffffe118, L0xffffffffe120] <u (2**1221)@1280,
         limbs 64 [L0xffffffffe128, L0xffffffffe130, L0xffffffffe138,
                   L0xffffffffe140, L0xffffffffe148, L0xffffffffe150,
                   L0xffffffffe158, L0xffffffffe160, L0xffffffffe168,
                   L0xffffffffe170, L0xffffffffe178, L0xffffffffe180,
                   L0xffffffffe188, L0xffffffffe190, L0xffffffffe198,
                   L0xffffffffe1a0, L0xffffffffe1a8, L0xffffffffe1b0,
                   L0xffffffffe1b8, L0xffffffffe1c0] <u (2**1221)@1280,
         m0=0xFFFFFFFFFFFFFFFF@64, m1=0xFFFFFFFFFFFFFFFF@64,
         m2=0xFFFFFFFFFFFFFFFF@64, m3=0xFFFFFFFFFFFFFFFF@64,
         m4=0x6E01FFFFFFFFFFFF@64, m5=0xB1784DE8AA5AB02E@64,
         m6=0x9AE7BF45048FF9AB@64, m7=0xB255B2FA10C4252A@64,
         m8=0x819010C251E7D88C@64, m9=0x000000027BF6A768@64]
    prove with [ precondition, cuts [ 2, 3, 4 ] ];

(* mov	x2, x19                                     #! PC = 0xaaaaaaaae5e4 *)
mov x2 x19;
(* mov	x1, x21                                     #! PC = 0xaaaaaaaae5e8 *)
mov x1 x21;
(* mov	x0, x19                                     #! PC = 0xaaaaaaaae5ec *)
mov x0 x19;
(* #bl	0xaaaaaaab7ad4 <mp_subadd610x2_asm>         #! PC = 0xaaaaaaaae5f0 *)
#bl	0xaaaaaaab7ad4 <mp_subadd610x2_asm>         #! 0xaaaaaaaae5f0 = 0xaaaaaaaae5f0;

ghost L0xffffffffe088o@uint64, L0xffffffffe090o@uint64, L0xffffffffe098o@uint64,
      L0xffffffffe0a0o@uint64, L0xffffffffe0a8o@uint64, L0xffffffffe0b0o@uint64,
      L0xffffffffe0b8o@uint64, L0xffffffffe0c0o@uint64, L0xffffffffe0c8o@uint64,
      L0xffffffffe0d0o@uint64, L0xffffffffe0d8o@uint64, L0xffffffffe0e0o@uint64,
      L0xffffffffe0e8o@uint64, L0xffffffffe0f0o@uint64, L0xffffffffe0f8o@uint64,
      L0xffffffffe100o@uint64, L0xffffffffe108o@uint64, L0xffffffffe110o@uint64,
      L0xffffffffe118o@uint64, L0xffffffffe120o@uint64 :
      and [L0xffffffffe088o=L0xffffffffe088, L0xffffffffe090o=L0xffffffffe090,
           L0xffffffffe098o=L0xffffffffe098, L0xffffffffe0a0o=L0xffffffffe0a0,
           L0xffffffffe0a8o=L0xffffffffe0a8, L0xffffffffe0b0o=L0xffffffffe0b0,
           L0xffffffffe0b8o=L0xffffffffe0b8, L0xffffffffe0c0o=L0xffffffffe0c0,
           L0xffffffffe0c8o=L0xffffffffe0c8, L0xffffffffe0d0o=L0xffffffffe0d0,
           L0xffffffffe0d8o=L0xffffffffe0d8, L0xffffffffe0e0o=L0xffffffffe0e0,
           L0xffffffffe0e8o=L0xffffffffe0e8, L0xffffffffe0f0o=L0xffffffffe0f0,
           L0xffffffffe0f8o=L0xffffffffe0f8, L0xffffffffe100o=L0xffffffffe100,
           L0xffffffffe108o=L0xffffffffe108, L0xffffffffe110o=L0xffffffffe110,
           L0xffffffffe118o=L0xffffffffe118, L0xffffffffe120o=L0xffffffffe120]
   && and [L0xffffffffe088o=L0xffffffffe088, L0xffffffffe090o=L0xffffffffe090,
           L0xffffffffe098o=L0xffffffffe098, L0xffffffffe0a0o=L0xffffffffe0a0,
           L0xffffffffe0a8o=L0xffffffffe0a8, L0xffffffffe0b0o=L0xffffffffe0b0,
           L0xffffffffe0b8o=L0xffffffffe0b8, L0xffffffffe0c0o=L0xffffffffe0c0,
           L0xffffffffe0c8o=L0xffffffffe0c8, L0xffffffffe0d0o=L0xffffffffe0d0,
           L0xffffffffe0d8o=L0xffffffffe0d8, L0xffffffffe0e0o=L0xffffffffe0e0,
           L0xffffffffe0e8o=L0xffffffffe0e8, L0xffffffffe0f0o=L0xffffffffe0f0,
           L0xffffffffe0f8o=L0xffffffffe0f8, L0xffffffffe100o=L0xffffffffe100,
           L0xffffffffe108o=L0xffffffffe108, L0xffffffffe110o=L0xffffffffe110,
           L0xffffffffe118o=L0xffffffffe118, L0xffffffffe120o=L0xffffffffe120];

(* #! -> SP = 0xffffffffdf80 *)
#! 0xffffffffdf80 = 0xffffffffdf80;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe088; Value = 0xcd04c88249840524; PC = 0xaaaaaaab7ad4 *)
mov x3 L0xffffffffe088;
mov x4 L0xffffffffe090;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffe098; Value = 0x5459eb905bdcb1b4; PC = 0xaaaaaaab7ad8 *)
mov x5 L0xffffffffe098;
mov x6 L0xffffffffe0a0;
(* ldp	x11, x12, [x1]                              #! EA = L0xffffffffe128; Value = 0xc0e45d1b5fad0d4a; PC = 0xaaaaaaab7adc *)
mov x11 L0xffffffffe128;
mov x12 L0xffffffffe130;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0xffffffffe138; Value = 0x8fceec02487d54b0; PC = 0xaaaaaaab7ae0 *)
mov x13 L0xffffffffe138;
mov x14 L0xffffffffe140;
(* subs	x3, x3, x11                                #! PC = 0xaaaaaaab7ae4 *)
subc carry x3 x3 x11;
(* sbcs	x4, x4, x12                                #! PC = 0xaaaaaaab7ae8 *)
sbcs carry x4 x4 x12 carry;
(* sbcs	x5, x5, x13                                #! PC = 0xaaaaaaab7aec *)
sbcs carry x5 x5 x13 carry;
(* sbcs	x6, x6, x14                                #! PC = 0xaaaaaaab7af0 *)
sbcs carry x6 x6 x14 carry;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe0a8; Value = 0x69c177e860479cbc; PC = 0xaaaaaaab7af4 *)
mov x7 L0xffffffffe0a8;
mov x8 L0xffffffffe0b0;
(* ldp	x9, x10, [x0, #48]                          #! EA = L0xffffffffe0b8; Value = 0x04c6e1592bdc11a2; PC = 0xaaaaaaab7af8 *)
mov x9 L0xffffffffe0b8;
mov x10 L0xffffffffe0c0;
(* ldp	x11, x12, [x1, #32]                         #! EA = L0xffffffffe148; Value = 0x0e65fb66c038e77a; PC = 0xaaaaaaab7afc *)
mov x11 L0xffffffffe148;
mov x12 L0xffffffffe150;
(* ldp	x13, x14, [x1, #48]                         #! EA = L0xffffffffe158; Value = 0x6cd79be57837b171; PC = 0xaaaaaaab7b00 *)
mov x13 L0xffffffffe158;
mov x14 L0xffffffffe160;
(* sbcs	x7, x7, x11                                #! PC = 0xaaaaaaab7b04 *)
sbcs carry x7 x7 x11 carry;
(* sbcs	x8, x8, x12                                #! PC = 0xaaaaaaab7b08 *)
sbcs carry x8 x8 x12 carry;
(* sbcs	x9, x9, x13                                #! PC = 0xaaaaaaab7b0c *)
sbcs carry x9 x9 x13 carry;
(* sbcs	x10, x10, x14                              #! PC = 0xaaaaaaab7b10 *)
sbcs carry x10 x10 x14 carry;
(* stp	x3, x4, [x2]                                #! EA = L0xffffffffe088; PC = 0xaaaaaaab7b14 *)
mov L0xffffffffe088 x3;
mov L0xffffffffe090 x4;
(* stp	x5, x6, [x2, #16]                           #! EA = L0xffffffffe098; PC = 0xaaaaaaab7b18 *)
mov L0xffffffffe098 x5;
mov L0xffffffffe0a0 x6;
(* ldp	x11, x12, [x0, #64]                         #! EA = L0xffffffffe0c8; Value = 0x9150a9223cfcfc35; PC = 0xaaaaaaab7b1c *)
mov x11 L0xffffffffe0c8;
mov x12 L0xffffffffe0d0;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0xffffffffe168; Value = 0xb262aded8c9657d9; PC = 0xaaaaaaab7b20 *)
mov x13 L0xffffffffe168;
mov x14 L0xffffffffe170;
(* stp	x7, x8, [x2, #32]                           #! EA = L0xffffffffe0a8; PC = 0xaaaaaaab7b24 *)
mov L0xffffffffe0a8 x7;
mov L0xffffffffe0b0 x8;
(* stp	x9, x10, [x2, #48]                          #! EA = L0xffffffffe0b8; PC = 0xaaaaaaab7b28 *)
mov L0xffffffffe0b8 x9;
mov L0xffffffffe0c0 x10;
(* sbcs	x11, x11, x13                              #! PC = 0xaaaaaaab7b2c *)
sbcs carry x11 x11 x13 carry;
(* sbcs	x12, x12, x14                              #! PC = 0xaaaaaaab7b30 *)
sbcs carry x12 x12 x14 carry;
(* ldp	x3, x4, [x0, #80]                           #! EA = L0xffffffffe0d8; Value = 0xb758cc3adfc573fe; PC = 0xaaaaaaab7b34 *)
mov x3 L0xffffffffe0d8;
mov x4 L0xffffffffe0e0;
(* ldp	x5, x6, [x0, #96]                           #! EA = L0xffffffffe0e8; Value = 0xe45820ce8f6d01ca; PC = 0xaaaaaaab7b38 *)
mov x5 L0xffffffffe0e8;
mov x6 L0xffffffffe0f0;
(* stp	x11, x12, [x2, #64]                         #! EA = L0xffffffffe0c8; PC = 0xaaaaaaab7b3c *)
mov L0xffffffffe0c8 x11;
mov L0xffffffffe0d0 x12;
(* ldp	x13, x14, [x1, #80]                         #! EA = L0xffffffffe178; Value = 0xc37763a50d832823; PC = 0xaaaaaaab7b40 *)
mov x13 L0xffffffffe178;
mov x14 L0xffffffffe180;
(* ldp	x15, x16, [x1, #96]                         #! EA = L0xffffffffe188; Value = 0x5be10239448ef996; PC = 0xaaaaaaab7b44 *)
mov x15 L0xffffffffe188;
mov x16 L0xffffffffe190;
(* sbcs	x3, x3, x13                                #! PC = 0xaaaaaaab7b48 *)
sbcs carry x3 x3 x13 carry;
(* sbcs	x4, x4, x14                                #! PC = 0xaaaaaaab7b4c *)
sbcs carry x4 x4 x14 carry;
(* sbcs	x5, x5, x15                                #! PC = 0xaaaaaaab7b50 *)
sbcs carry x5 x5 x15 carry;
(* sbcs	x6, x6, x16                                #! PC = 0xaaaaaaab7b54 *)
sbcs carry x6 x6 x16 carry;
(* ldp	x7, x8, [x0, #112]                          #! EA = L0xffffffffe0f8; Value = 0x263509b33c4e581a; PC = 0xaaaaaaab7b58 *)
mov x7 L0xffffffffe0f8;
mov x8 L0xffffffffe100;
(* ldp	x9, x10, [x0, #128]                         #! EA = L0xffffffffe108; Value = 0x5c618771153d6028; PC = 0xaaaaaaab7b5c *)
mov x9 L0xffffffffe108;
mov x10 L0xffffffffe110;
(* ldp	x13, x14, [x1, #112]                        #! EA = L0xffffffffe198; Value = 0x1a89c7566dc6c171; PC = 0xaaaaaaab7b60 *)
mov x13 L0xffffffffe198;
mov x14 L0xffffffffe1a0;
(* ldp	x15, x16, [x1, #128]                        #! EA = L0xffffffffe1a8; Value = 0x84b15d0a1c2e2f67; PC = 0xaaaaaaab7b64 *)
mov x15 L0xffffffffe1a8;
mov x16 L0xffffffffe1b0;
(* sbcs	x7, x7, x13                                #! PC = 0xaaaaaaab7b68 *)
sbcs carry x7 x7 x13 carry;
(* sbcs	x8, x8, x14                                #! PC = 0xaaaaaaab7b6c *)
sbcs carry x8 x8 x14 carry;
(* sbcs	x9, x9, x15                                #! PC = 0xaaaaaaab7b70 *)
sbcs carry x9 x9 x15 carry;
(* sbcs	x10, x10, x16                              #! PC = 0xaaaaaaab7b74 *)
sbcs carry x10 x10 x16 carry;
(* ldp	x11, x12, [x0, #144]                        #! EA = L0xffffffffe118; Value = 0x0c94c577398bd4cf; PC = 0xaaaaaaab7b78 *)
mov x11 L0xffffffffe118;
mov x12 L0xffffffffe120;
(* ldp	x13, x14, [x1, #144]                        #! EA = L0xffffffffe1b8; Value = 0x00a8ec9fb82509f4; PC = 0xaaaaaaab7b7c *)
mov x13 L0xffffffffe1b8;
mov x14 L0xffffffffe1c0;
(* sbcs	x11, x11, x13                              #! PC = 0xaaaaaaab7b80 *)
sbcs carry x11 x11 x13 carry;
(* sbcs	x12, x12, x14                              #! PC = 0xaaaaaaab7b84 *)
sbcs carry x12 x12 x14 carry;
(* ngc	x0, xzr                                     #! PC = 0xaaaaaaab7b88 *)
sbcs dontcare x0 0@uint64 0@uint64 carry;
(* ldr	x1, 0xaaaaaaab6718 <p610>                   #! PC = 0xaaaaaaab7b8c *)
mov x1 L0xaaaaaaab6718;
(* ldr	x13, 0xaaaaaaab6720 <p610+8>                #! PC = 0xaaaaaaab7b90 *)
mov x13 L0xaaaaaaab6720;
(* ldr	x14, 0xaaaaaaab6728 <p610+16>               #! PC = 0xaaaaaaab7b94 *)
mov x14 L0xaaaaaaab6728;
(* ldr	x15, 0xaaaaaaab6730 <p610+24>               #! PC = 0xaaaaaaab7b98 *)
mov x15 L0xaaaaaaab6730;
(* and	x1, x1, x0                                  #! PC = 0xaaaaaaab7b9c *)
and x1@uint64 x1 x0;
(* and	x13, x13, x0                                #! PC = 0xaaaaaaab7ba0 *)
and x13@uint64 x13 x0;
(* and	x14, x14, x0                                #! PC = 0xaaaaaaab7ba4 *)
and x14@uint64 x14 x0;
(* and	x15, x15, x0                                #! PC = 0xaaaaaaab7ba8 *)
and x15@uint64 x15 x0;
(* adds	x3, x3, x1                                 #! PC = 0xaaaaaaab7bac *)
adds carry x3 x3 x1;
(* adcs	x4, x4, x1                                 #! PC = 0xaaaaaaab7bb0 *)
adcs carry x4 x4 x1 carry;
(* adcs	x5, x5, x1                                 #! PC = 0xaaaaaaab7bb4 *)
adcs carry x5 x5 x1 carry;
(* adcs	x6, x6, x1                                 #! PC = 0xaaaaaaab7bb8 *)
adcs carry x6 x6 x1 carry;
(* adcs	x7, x7, x13                                #! PC = 0xaaaaaaab7bbc *)
adcs carry x7 x7 x13 carry;
(* adcs	x8, x8, x14                                #! PC = 0xaaaaaaab7bc0 *)
adcs carry x8 x8 x14 carry;
(* adcs	x9, x9, x15                                #! PC = 0xaaaaaaab7bc4 *)
adcs carry x9 x9 x15 carry;
(* ldr	x13, 0xaaaaaaab6738 <p610+32>               #! PC = 0xaaaaaaab7bc8 *)
mov x13 L0xaaaaaaab6738;
(* ldr	x14, 0xaaaaaaab6740 <p610+40>               #! PC = 0xaaaaaaab7bcc *)
mov x14 L0xaaaaaaab6740;
(* ldr	x15, 0xaaaaaaab6748 <p610+48>               #! PC = 0xaaaaaaab7bd0 *)
mov x15 L0xaaaaaaab6748;
(* stp	x3, x4, [x2, #80]                           #! EA = L0xffffffffe0d8; PC = 0xaaaaaaab7bd4 *)
mov L0xffffffffe0d8 x3;
mov L0xffffffffe0e0 x4;
(* stp	x5, x6, [x2, #96]                           #! EA = L0xffffffffe0e8; PC = 0xaaaaaaab7bd8 *)
mov L0xffffffffe0e8 x5;
mov L0xffffffffe0f0 x6;
(* stp	x7, x8, [x2, #112]                          #! EA = L0xffffffffe0f8; PC = 0xaaaaaaab7bdc *)
mov L0xffffffffe0f8 x7;
mov L0xffffffffe100 x8;
(* and	x13, x13, x0                                #! PC = 0xaaaaaaab7be0 *)
and x13@uint64 x13 x0;
(* and	x14, x14, x0                                #! PC = 0xaaaaaaab7be4 *)
and x14@uint64 x14 x0;
(* and	x15, x15, x0                                #! PC = 0xaaaaaaab7be8 *)
and x15@uint64 x15 x0;
(* adcs	x10, x10, x13                              #! PC = 0xaaaaaaab7bec *)
adcs carry x10 x10 x13 carry;
(* adcs	x11, x11, x14                              #! PC = 0xaaaaaaab7bf0 *)
adcs carry x11 x11 x14 carry;
(* adc	x12, x12, x15                               #! PC = 0xaaaaaaab7bf4 *)
adcs dontcare x12 x12 x15 carry;
(* stp	x9, x10, [x2, #128]                         #! EA = L0xffffffffe108; PC = 0xaaaaaaab7bf8 *)
mov L0xffffffffe108 x9;
mov L0xffffffffe110 x10;
(* stp	x11, x12, [x2, #144]                        #! EA = L0xffffffffe118; PC = 0xaaaaaaab7bfc *)
mov L0xffffffffe118 x11;
mov L0xffffffffe120 x12;
(* #! <- SP = 0xffffffffdf80 *)
#! 0xffffffffdf80 = 0xffffffffdf80;
(* #ret                                            #! PC = 0xaaaaaaab7c00 *)
#ret                                            #! 0xaaaaaaab7c00 = 0xaaaaaaab7c00;

assert true
    && eqsmod (limbs 64 [L0xffffffffe088, L0xffffffffe090, L0xffffffffe098,
                         L0xffffffffe0a0, L0xffffffffe0a8, L0xffffffffe0b0,
                         L0xffffffffe0b8, L0xffffffffe0c0, L0xffffffffe0c8,
                         L0xffffffffe0d0, L0xffffffffe0d8, L0xffffffffe0e0,
                         L0xffffffffe0e8, L0xffffffffe0f0, L0xffffffffe0f8,
                         L0xffffffffe100, L0xffffffffe108, L0xffffffffe110,
                         L0xffffffffe118, L0xffffffffe120])
              (limbs 64 [L0xffffffffe088o, L0xffffffffe090o, L0xffffffffe098o,
                         L0xffffffffe0a0o, L0xffffffffe0a8o, L0xffffffffe0b0o,
                         L0xffffffffe0b8o, L0xffffffffe0c0o, L0xffffffffe0c8o,
                         L0xffffffffe0d0o, L0xffffffffe0d8o, L0xffffffffe0e0o,
                         L0xffffffffe0e8o, L0xffffffffe0f0o, L0xffffffffe0f8o,
                         L0xffffffffe100o, L0xffffffffe108o, L0xffffffffe110o,
                         L0xffffffffe118o, L0xffffffffe120o] -
               limbs 64 [L0xffffffffe128, L0xffffffffe130, L0xffffffffe138,
                         L0xffffffffe140, L0xffffffffe148, L0xffffffffe150,
                         L0xffffffffe158, L0xffffffffe160, L0xffffffffe168,
                         L0xffffffffe170, L0xffffffffe178, L0xffffffffe180,
                         L0xffffffffe188, L0xffffffffe190, L0xffffffffe198,
                         L0xffffffffe1a0, L0xffffffffe1a8, L0xffffffffe1b0,
                         L0xffffffffe1b8, L0xffffffffe1c0])
              (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64,
                         0@64, 0@64, 0@64, 0@64, 0@64,
                         m0, m1, m2, m3, m4, m5, m6, m7, m8, m9]);
assume eqmod (limbs 64 [L0xffffffffe088, L0xffffffffe090, L0xffffffffe098,
                        L0xffffffffe0a0, L0xffffffffe0a8, L0xffffffffe0b0,
                        L0xffffffffe0b8, L0xffffffffe0c0, L0xffffffffe0c8,
                        L0xffffffffe0d0, L0xffffffffe0d8, L0xffffffffe0e0,
                        L0xffffffffe0e8, L0xffffffffe0f0, L0xffffffffe0f8,
                        L0xffffffffe100, L0xffffffffe108, L0xffffffffe110,
                        L0xffffffffe118, L0xffffffffe120])
             (limbs 64 [L0xffffffffe088o, L0xffffffffe090o, L0xffffffffe098o,
                        L0xffffffffe0a0o, L0xffffffffe0a8o, L0xffffffffe0b0o,
                        L0xffffffffe0b8o, L0xffffffffe0c0o, L0xffffffffe0c8o,
                        L0xffffffffe0d0o, L0xffffffffe0d8o, L0xffffffffe0e0o,
                        L0xffffffffe0e8o, L0xffffffffe0f0o, L0xffffffffe0f8o,
                        L0xffffffffe100o, L0xffffffffe108o, L0xffffffffe110o,
                        L0xffffffffe118o, L0xffffffffe120o] -
              limbs 64 [L0xffffffffe128, L0xffffffffe130, L0xffffffffe138,
                        L0xffffffffe140, L0xffffffffe148, L0xffffffffe150,
                        L0xffffffffe158, L0xffffffffe160, L0xffffffffe168,
                        L0xffffffffe170, L0xffffffffe178, L0xffffffffe180,
                        L0xffffffffe188, L0xffffffffe190, L0xffffffffe198,
                        L0xffffffffe1a0, L0xffffffffe1a8, L0xffffffffe1b0,
                        L0xffffffffe1b8, L0xffffffffe1c0])
             (limbs 64 [0, 0, 0, 0, 0,  0, 0, 0, 0, 0,
                       m0, m1, m2, m3, m4, m5, m6, m7, m8, m9]) && true;

(* CUT 6 *)
cut eqmod (limbs 64 [L0xffffffffe088, L0xffffffffe090, L0xffffffffe098,
                     L0xffffffffe0a0, L0xffffffffe0a8, L0xffffffffe0b0,
                     L0xffffffffe0b8, L0xffffffffe0c0, L0xffffffffe0c8,
                     L0xffffffffe0d0, L0xffffffffe0d8, L0xffffffffe0e0,
                     L0xffffffffe0e8, L0xffffffffe0f0, L0xffffffffe0f8,
                     L0xffffffffe100, L0xffffffffe108, L0xffffffffe110,
                     L0xffffffffe118, L0xffffffffe120])
          (limbs 64 [ar0, ar1, ar2, ar3, ar4, ar5, ar6, ar7, ar8, ar9] *
           limbs 64 [br0, br1, br2, br3, br4, br5, br6, br7, br8, br9] -
           limbs 64 [ai0, ai1, ai2, ai3, ai4, ai5, ai6, ai7, ai8, ai9] *
           limbs 64 [bi0, bi1, bi2, bi3, bi4, bi5, bi6, bi7, bi8, bi9])
          (limbs 64 [0, 0, 0, 0, 0,  0, 0, 0, 0, 0,
                     m0, m1, m2, m3, m4, m5, m6, m7, m8, m9])
    prove with [ precondition, cuts [ 2, 3 ] ]
 &&
    limbs 64 [L0xffffffffe088, L0xffffffffe090, L0xffffffffe098,
              L0xffffffffe0a0, L0xffffffffe0a8, L0xffffffffe0b0,
              L0xffffffffe0b8, L0xffffffffe0c0, L0xffffffffe0c8,
              L0xffffffffe0d0, L0xffffffffe0d8, L0xffffffffe0e0,
              L0xffffffffe0e8, L0xffffffffe0f0, L0xffffffffe0f8,
              L0xffffffffe100, L0xffffffffe108, L0xffffffffe110,
              L0xffffffffe118, L0xffffffffe120] <u
    limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64,
              0@64, 0@64, 0@64, 0@64, 0@64,
              m0, m1, m2, m3, m4, m5, m6, m7, m8, m9];
          
(* mov	x0, x20                                     #! PC = 0xaaaaaaaae5f4 *)
mov x0 x20;
(* add	x1, x22, #0x50                              #! PC = 0xaaaaaaaae5f8 *)
adds dontcare x1 x22 0x50@uint64;
(* #bl	0xaaaaaaab6714 <rdc_mont>                   #! PC = 0xaaaaaaaae5fc *)
#bl	0xaaaaaaab6714 <rdc_mont>                   #! 0xaaaaaaaae5fc = 0xaaaaaaaae5fc;
(* #! -> SP = 0xffffffffdf80 *)
#! 0xffffffffdf80 = 0xffffffffdf80;
(* #b	0xaaaaaaab73a8 <rdc610_asm>                  #! PC = 0xaaaaaaab6714 *)
#b	0xaaaaaaab73a8 <rdc610_asm>                  #! 0xaaaaaaab6714 = 0xaaaaaaab6714;
(* sub	sp, sp, #0x60                               #! PC = 0xaaaaaaab73a8 *)
subc dontcare sp sp 0x60@uint64;
(* stp	x19, x20, [sp]                              #! EA = L0xffffffffdf20; PC = 0xaaaaaaab73ac *)
mov L0xffffffffdf20 x19;
mov L0xffffffffdf28 x20;
(* stp	x21, x22, [sp, #16]                         #! EA = L0xffffffffdf30; PC = 0xaaaaaaab73b0 *)
mov L0xffffffffdf30 x21;
mov L0xffffffffdf38 x22;
(* ldp	x2, x3, [x0]                                #! EA = L0xffffffffe1c8; Value = 0xaa745e3cf2209aee; PC = 0xaaaaaaab73b4 *)
mov x2 L0xffffffffe1c8;
mov x3 L0xffffffffe1d0;
(* ldr	x19, 0xaaaaaaab67d0 <p610p1_nz_s6>          #! PC = 0xaaaaaaab73b8 *)
mov x19 L0xaaaaaaab67d0;
(* ldr	x20, 0xaaaaaaab67d8 <p610p1_nz_s6+8>        #! PC = 0xaaaaaaab73bc *)
mov x20 L0xaaaaaaab67d8;
(* ldr	x21, 0xaaaaaaab67e0 <p610p1_nz_s6+16>       #! PC = 0xaaaaaaab73c0 *)
mov x21 L0xaaaaaaab67e0;
(* stp	x23, x24, [sp, #32]                         #! EA = L0xffffffffdf40; PC = 0xaaaaaaab73c4 *)
mov L0xffffffffdf40 x23;
mov L0xffffffffdf48 x24;
(* stp	x25, x26, [sp, #48]                         #! EA = L0xffffffffdf50; PC = 0xaaaaaaab73c8 *)
mov L0xffffffffdf50 x25;
mov L0xffffffffdf58 x26;
(* mul	x4, x2, x19                                 #! PC = 0xaaaaaaab73cc *)
mull Hx2x19 x4 x2 x19;
(* umulh	x7, x2, x19                               #! PC = 0xaaaaaaab73d0 *)
mov x7 Hx2x19;
(* stp	x27, x28, [sp, #64]                         #! EA = L0xffffffffdf60; PC = 0xaaaaaaab73d4 *)
mov L0xffffffffdf60 x27;
mov L0xffffffffdf68 x28;
(* str	x29, [sp, #80]                              #! EA = L0xffffffffdf70; PC = 0xaaaaaaab73d8 *)
mov L0xffffffffdf70 x29;
(* ldr	x22, 0xaaaaaaab67e8 <p610p1_nz_s6+24>       #! PC = 0xaaaaaaab73dc *)
mov x22 L0xaaaaaaab67e8;
(* ldr	x23, 0xaaaaaaab67f0 <p610p1_nz_s6+32>       #! PC = 0xaaaaaaab73e0 *)
mov x23 L0xaaaaaaab67f0;
(* mul	x5, x2, x20                                 #! PC = 0xaaaaaaab73e4 *)
mull Hx2x20 x5 x2 x20;
(* umulh	x6, x2, x20                               #! PC = 0xaaaaaaab73e8 *)
mov x6 Hx2x20;
(* mul	x26, x3, x19                                #! PC = 0xaaaaaaab73ec *)
mull Hx3x19 x26 x3 x19;
(* umulh	x27, x3, x19                              #! PC = 0xaaaaaaab73f0 *)
mov x27 Hx3x19;
(* adds	x5, x5, x7                                 #! PC = 0xaaaaaaab73f4 *)
adds carry x5 x5 x7;
(* adc	x6, x6, xzr                                 #! PC = 0xaaaaaaab73f8 *)
adc x6 x6 0@uint64 carry;
(* mul	x28, x2, x21                                #! PC = 0xaaaaaaab73fc *)
mull Hx2x21 x28 x2 x21;
(* umulh	x29, x2, x21                              #! PC = 0xaaaaaaab7400 *)
mov x29 Hx2x21;
(* adds	x5, x5, x26                                #! PC = 0xaaaaaaab7404 *)
adds carry x5 x5 x26;
(* adcs	x6, x6, x27                                #! PC = 0xaaaaaaab7408 *)
adcs carry x6 x6 x27 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xaaaaaaab740c *)
adc x7 0@uint64 0@uint64 carry;
(* mul	x26, x3, x20                                #! PC = 0xaaaaaaab7410 *)
mull Hx3x20 x26 x3 x20;
(* umulh	x27, x3, x20                              #! PC = 0xaaaaaaab7414 *)
mov x27 Hx3x20;
(* adds	x6, x6, x28                                #! PC = 0xaaaaaaab7418 *)
adds carry x6 x6 x28;
(* adcs	x7, x7, x29                                #! PC = 0xaaaaaaab741c *)
adcs carry x7 x7 x29 carry;
(* adc	x8, xzr, xzr                                #! PC = 0xaaaaaaab7420 *)
adc x8 0@uint64 0@uint64 carry;
(* mul	x28, x2, x22                                #! PC = 0xaaaaaaab7424 *)
mull Hx2x22 x28 x2 x22;
(* umulh	x29, x2, x22                              #! PC = 0xaaaaaaab7428 *)
mov x29 Hx2x22;
(* adds	x6, x6, x26                                #! PC = 0xaaaaaaab742c *)
adds carry x6 x6 x26;
(* adcs	x7, x7, x27                                #! PC = 0xaaaaaaab7430 *)
adcs carry x7 x7 x27 carry;
(* adc	x8, x8, xzr                                 #! PC = 0xaaaaaaab7434 *)
adc x8 x8 0@uint64 carry;
(* mul	x26, x3, x21                                #! PC = 0xaaaaaaab7438 *)
mull Hx3x21 x26 x3 x21;
(* umulh	x27, x3, x21                              #! PC = 0xaaaaaaab743c *)
mov x27 Hx3x21;
(* adds	x7, x7, x28                                #! PC = 0xaaaaaaab7440 *)
adds carry x7 x7 x28;
(* adcs	x8, x8, x29                                #! PC = 0xaaaaaaab7444 *)
adcs carry x8 x8 x29 carry;
(* adc	x9, xzr, xzr                                #! PC = 0xaaaaaaab7448 *)
adc x9 0@uint64 0@uint64 carry;
(* mul	x28, x3, x22                                #! PC = 0xaaaaaaab744c *)
mull Hx3x22 x28 x3 x22;
(* umulh	x29, x3, x22                              #! PC = 0xaaaaaaab7450 *)
mov x29 Hx3x22;
(* adds	x7, x7, x26                                #! PC = 0xaaaaaaab7454 *)
adds carry x7 x7 x26;
(* adcs	x8, x8, x27                                #! PC = 0xaaaaaaab7458 *)
adcs carry x8 x8 x27 carry;
(* adc	x9, x9, xzr                                 #! PC = 0xaaaaaaab745c *)
adc x9 x9 0@uint64 carry;
(* mul	x26, x2, x23                                #! PC = 0xaaaaaaab7460 *)
mull Hx2x23 x26 x2 x23;
(* umulh	x27, x2, x23                              #! PC = 0xaaaaaaab7464 *)
mov x27 Hx2x23;
(* adds	x8, x8, x28                                #! PC = 0xaaaaaaab7468 *)
adds carry x8 x8 x28;
(* adcs	x9, x9, x29                                #! PC = 0xaaaaaaab746c *)
adcs carry x9 x9 x29 carry;
(* adc	x10, xzr, xzr                               #! PC = 0xaaaaaaab7470 *)
adc x10 0@uint64 0@uint64 carry;
(* mul	x28, x3, x23                                #! PC = 0xaaaaaaab7474 *)
mull Hx3x23 x28 x3 x23;
(* umulh	x29, x3, x23                              #! PC = 0xaaaaaaab7478 *)
mov x29 Hx3x23;
(* adds	x8, x8, x26                                #! PC = 0xaaaaaaab747c *)
adds carry x8 x8 x26;
(* adcs	x9, x9, x27                                #! PC = 0xaaaaaaab7480 *)
adcs carry x9 x9 x27 carry;
(* adc	x10, x10, xzr                               #! PC = 0xaaaaaaab7484 *)
adc x10 x10 0@uint64 carry;
(* adds	x9, x9, x28                                #! PC = 0xaaaaaaab7488 *)
adds carry x9 x9 x28;
(* adc	x10, x10, x29                               #! PC = 0xaaaaaaab748c *)
adc x10 x10 x29 carry;
(* orr	x26, xzr, x10, lsr #16                      #! PC = 0xaaaaaaab7490 *)
split x26 Lx10 x10 16;
(* lsl	x10, x10, #48                               #! PC = 0xaaaaaaab7494 *)
shl x10 Lx10 48;
(* orr	x10, x10, x9, lsr #16                       #! PC = 0xaaaaaaab7498 *)
split Hx9 Lx9 x9 16;
add x10 x10 Hx9;
(* lsl	x9, x9, #48                                 #! PC = 0xaaaaaaab749c *)
shl x9 Lx9 48;
(* orr	x9, x9, x8, lsr #16                         #! PC = 0xaaaaaaab74a0 *)
split Hx8 Lx8 x8 16;
add x9 x9 Hx8;
(* lsl	x8, x8, #48                                 #! PC = 0xaaaaaaab74a4 *)
shl x8 Lx8 48;
(* orr	x8, x8, x7, lsr #16                         #! PC = 0xaaaaaaab74a8 *)
split Hx7 Lx7 x7 16;
add x8 x8 Hx7;
(* lsl	x7, x7, #48                                 #! PC = 0xaaaaaaab74ac *)
shl x7 Lx7 48;
(* orr	x7, x7, x6, lsr #16                         #! PC = 0xaaaaaaab74b0 *)
split Hx6 Lx6 x6 16;
add x7 x7 Hx6;
(* lsl	x6, x6, #48                                 #! PC = 0xaaaaaaab74b4 *)
shl x6 Lx6 48;
(* ldp	x2, x3, [x0, #16]                           #! EA = L0xffffffffe1d8; Value = 0xc79e7ad529daff1c; PC = 0xaaaaaaab74b8 *)
mov x2 L0xffffffffe1d8;
mov x3 L0xffffffffe1e0;
(* orr	x6, x6, x5, lsr #16                         #! PC = 0xaaaaaaab74bc *)
split Hx5 Lx5 x5 16;
add x6 x6 Hx5;
(* lsl	x5, x5, #48                                 #! PC = 0xaaaaaaab74c0 *)
shl x5 Lx5 48;
(* ldp	x11, x12, [x0, #32]                         #! EA = L0xffffffffe1e8; Value = 0xb285be5b9421e347; PC = 0xaaaaaaab74c4 *)
mov x11 L0xffffffffe1e8;
mov x12 L0xffffffffe1f0;
(* orr	x5, x5, x4, lsr #16                         #! PC = 0xaaaaaaab74c8 *)
split Hx4 Lx4 x4 16;
add x5 x5 Hx4;
(* lsl	x4, x4, #48                                 #! PC = 0xaaaaaaab74cc *)
shl x4 Lx4 48;
(* ldp	x13, x14, [x0, #48]                         #! EA = L0xffffffffe1f8; Value = 0x9b0bffa6f15b6e18; PC = 0xaaaaaaab74d0 *)
mov x13 L0xffffffffe1f8;
mov x14 L0xffffffffe200;
(* adds	x11, x4, x11                               #! PC = 0xaaaaaaab74d4 *)
adds carry x11 x4 x11;
(* adcs	x12, x5, x12                               #! PC = 0xaaaaaaab74d8 *)
adcs carry x12 x5 x12 carry;
(* ldp	x15, x16, [x0, #64]                         #! EA = L0xffffffffe208; Value = 0x4502e341c54cc337; PC = 0xaaaaaaab74dc *)
mov x15 L0xffffffffe208;
mov x16 L0xffffffffe210;
(* adcs	x13, x6, x13                               #! PC = 0xaaaaaaab74e0 *)
adcs carry x13 x6 x13 carry;
(* adcs	x14, x7, x14                               #! PC = 0xaaaaaaab74e4 *)
adcs carry x14 x7 x14 carry;
(* ldp	x17, x24, [x0, #80]                         #! EA = L0xffffffffe218; Value = 0x0d440daf4d8108da; PC = 0xaaaaaaab74e8 *)
mov x17 L0xffffffffe218;
mov x24 L0xffffffffe220;
(* adcs	x15, x8, x15                               #! PC = 0xaaaaaaab74ec *)
adcs carry x15 x8 x15 carry;
(* mul	x4, x2, x19                                 #! PC = 0xaaaaaaab74f0 *)
mull Hx2x19 x4 x2 x19;
(* umulh	x7, x2, x19                               #! PC = 0xaaaaaaab74f4 *)
mov x7 Hx2x19;
(* adcs	x16, x9, x16                               #! PC = 0xaaaaaaab74f8 *)
adcs carry x16 x9 x16 carry;
(* adcs	x17, x10, x17                              #! PC = 0xaaaaaaab74fc *)
adcs carry x17 x10 x17 carry;
(* mul	x5, x2, x20                                 #! PC = 0xaaaaaaab7500 *)
mull Hx2x20 x5 x2 x20;
(* umulh	x6, x2, x20                               #! PC = 0xaaaaaaab7504 *)
mov x6 Hx2x20;
(* adcs	x24, x26, x24                              #! PC = 0xaaaaaaab7508 *)
adcs carry x24 x26 x24 carry;
(* adc	x25, xzr, xzr                               #! PC = 0xaaaaaaab750c *)
adc x25 0@uint64 0@uint64 carry;
(* mul	x26, x3, x19                                #! PC = 0xaaaaaaab7510 *)
mull Hx3x19 x26 x3 x19;
(* umulh	x27, x3, x19                              #! PC = 0xaaaaaaab7514 *)
mov x27 Hx3x19;
(* adds	x5, x5, x7                                 #! PC = 0xaaaaaaab7518 *)
adds carry x5 x5 x7;
(* adc	x6, x6, xzr                                 #! PC = 0xaaaaaaab751c *)
adc x6 x6 0@uint64 carry;
(* mul	x28, x2, x21                                #! PC = 0xaaaaaaab7520 *)
mull Hx2x21 x28 x2 x21;
(* umulh	x29, x2, x21                              #! PC = 0xaaaaaaab7524 *)
mov x29 Hx2x21;
(* adds	x5, x5, x26                                #! PC = 0xaaaaaaab7528 *)
adds carry x5 x5 x26;
(* adcs	x6, x6, x27                                #! PC = 0xaaaaaaab752c *)
adcs carry x6 x6 x27 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xaaaaaaab7530 *)
adc x7 0@uint64 0@uint64 carry;
(* mul	x26, x3, x20                                #! PC = 0xaaaaaaab7534 *)
mull Hx3x20 x26 x3 x20;
(* umulh	x27, x3, x20                              #! PC = 0xaaaaaaab7538 *)
mov x27 Hx3x20;
(* adds	x6, x6, x28                                #! PC = 0xaaaaaaab753c *)
adds carry x6 x6 x28;
(* adcs	x7, x7, x29                                #! PC = 0xaaaaaaab7540 *)
adcs carry x7 x7 x29 carry;
(* adc	x8, xzr, xzr                                #! PC = 0xaaaaaaab7544 *)
adc x8 0@uint64 0@uint64 carry;
(* mul	x28, x2, x22                                #! PC = 0xaaaaaaab7548 *)
mull Hx2x22 x28 x2 x22;
(* umulh	x29, x2, x22                              #! PC = 0xaaaaaaab754c *)
mov x29 Hx2x22;
(* adds	x6, x6, x26                                #! PC = 0xaaaaaaab7550 *)
adds carry x6 x6 x26;
(* adcs	x7, x7, x27                                #! PC = 0xaaaaaaab7554 *)
adcs carry x7 x7 x27 carry;
(* adc	x8, x8, xzr                                 #! PC = 0xaaaaaaab7558 *)
adc x8 x8 0@uint64 carry;
(* mul	x26, x3, x21                                #! PC = 0xaaaaaaab755c *)
mull Hx3x21 x26 x3 x21;
(* umulh	x27, x3, x21                              #! PC = 0xaaaaaaab7560 *)
mov x27 Hx3x21;
(* adds	x7, x7, x28                                #! PC = 0xaaaaaaab7564 *)
adds carry x7 x7 x28;
(* adcs	x8, x8, x29                                #! PC = 0xaaaaaaab7568 *)
adcs carry x8 x8 x29 carry;
(* adc	x9, xzr, xzr                                #! PC = 0xaaaaaaab756c *)
adc x9 0@uint64 0@uint64 carry;
(* mul	x28, x3, x22                                #! PC = 0xaaaaaaab7570 *)
mull Hx3x22 x28 x3 x22;
(* umulh	x29, x3, x22                              #! PC = 0xaaaaaaab7574 *)
mov x29 Hx3x22;
(* adds	x7, x7, x26                                #! PC = 0xaaaaaaab7578 *)
adds carry x7 x7 x26;
(* adcs	x8, x8, x27                                #! PC = 0xaaaaaaab757c *)
adcs carry x8 x8 x27 carry;
(* adc	x9, x9, xzr                                 #! PC = 0xaaaaaaab7580 *)
adc x9 x9 0@uint64 carry;
(* mul	x26, x2, x23                                #! PC = 0xaaaaaaab7584 *)
mull Hx2x23 x26 x2 x23;
(* umulh	x27, x2, x23                              #! PC = 0xaaaaaaab7588 *)
mov x27 Hx2x23;
(* adds	x8, x8, x28                                #! PC = 0xaaaaaaab758c *)
adds carry x8 x8 x28;
(* adcs	x9, x9, x29                                #! PC = 0xaaaaaaab7590 *)
adcs carry x9 x9 x29 carry;
(* adc	x10, xzr, xzr                               #! PC = 0xaaaaaaab7594 *)
adc x10 0@uint64 0@uint64 carry;
(* mul	x28, x3, x23                                #! PC = 0xaaaaaaab7598 *)
mull Hx3x23 x28 x3 x23;
(* umulh	x29, x3, x23                              #! PC = 0xaaaaaaab759c *)
mov x29 Hx3x23;
(* adds	x8, x8, x26                                #! PC = 0xaaaaaaab75a0 *)
adds carry x8 x8 x26;
(* adcs	x9, x9, x27                                #! PC = 0xaaaaaaab75a4 *)
adcs carry x9 x9 x27 carry;
(* adc	x10, x10, xzr                               #! PC = 0xaaaaaaab75a8 *)
adc x10 x10 0@uint64 carry;
(* adds	x9, x9, x28                                #! PC = 0xaaaaaaab75ac *)
adds carry x9 x9 x28;
(* adc	x10, x10, x29                               #! PC = 0xaaaaaaab75b0 *)
adc x10 x10 x29 carry;
(* orr	x26, xzr, x10, lsr #16                      #! PC = 0xaaaaaaab75b4 *)
split x26 Lx10 x10 16;
(* lsl	x10, x10, #48                               #! PC = 0xaaaaaaab75b8 *)
shl x10 Lx10 48;
(* orr	x10, x10, x9, lsr #16                       #! PC = 0xaaaaaaab75bc *)
split Hx9 Lx9 x9 16;
add x10 x10 Hx9;
(* lsl	x9, x9, #48                                 #! PC = 0xaaaaaaab75c0 *)
shl x9 Lx9 48;
(* orr	x9, x9, x8, lsr #16                         #! PC = 0xaaaaaaab75c4 *)
split Hx8 Lx8 x8 16;
add x9 x9 Hx8;
(* lsl	x8, x8, #48                                 #! PC = 0xaaaaaaab75c8 *)
shl x8 Lx8 48;
(* orr	x8, x8, x7, lsr #16                         #! PC = 0xaaaaaaab75cc *)
split Hx7 Lx7 x7 16;
add x8 x8 Hx7;
(* lsl	x7, x7, #48                                 #! PC = 0xaaaaaaab75d0 *)
shl x7 Lx7 48;
(* orr	x7, x7, x6, lsr #16                         #! PC = 0xaaaaaaab75d4 *)
split Hx6 Lx6 x6 16;
add x7 x7 Hx6;
(* lsl	x6, x6, #48                                 #! PC = 0xaaaaaaab75d8 *)
shl x6 Lx6 48;
(* orr	x6, x6, x5, lsr #16                         #! PC = 0xaaaaaaab75dc *)
split Hx5 Lx5 x5 16;
add x6 x6 Hx5;
(* lsl	x5, x5, #48                                 #! PC = 0xaaaaaaab75e0 *)
shl x5 Lx5 48;
(* orr	x5, x5, x4, lsr #16                         #! PC = 0xaaaaaaab75e4 *)
split Hx4 Lx4 x4 16;
add x5 x5 Hx4;
(* lsl	x4, x4, #48                                 #! PC = 0xaaaaaaab75e8 *)
shl x4 Lx4 48;
(* adds	x13, x4, x13                               #! PC = 0xaaaaaaab75ec *)
adds carry x13 x4 x13;
(* adcs	x14, x5, x14                               #! PC = 0xaaaaaaab75f0 *)
adcs carry x14 x5 x14 carry;
(* adcs	x15, x6, x15                               #! PC = 0xaaaaaaab75f4 *)
adcs carry x15 x6 x15 carry;
(* adcs	x16, x7, x16                               #! PC = 0xaaaaaaab75f8 *)
adcs carry x16 x7 x16 carry;
(* adcs	x17, x8, x17                               #! PC = 0xaaaaaaab75fc *)
adcs carry x17 x8 x17 carry;
(* mul	x4, x11, x19                                #! PC = 0xaaaaaaab7600 *)
mull Hx11x19 x4 x11 x19;
(* umulh	x7, x11, x19                              #! PC = 0xaaaaaaab7604 *)
mov x7 Hx11x19;
(* adcs	x24, x9, x24                               #! PC = 0xaaaaaaab7608 *)
adcs carry x24 x9 x24 carry;
(* adcs	x25, x10, x25                              #! PC = 0xaaaaaaab760c *)
adcs carry x25 x10 x25 carry;
(* mul	x5, x11, x20                                #! PC = 0xaaaaaaab7610 *)
mull Hx11x20 x5 x11 x20;
(* umulh	x6, x11, x20                              #! PC = 0xaaaaaaab7614 *)
mov x6 Hx11x20;
(* adcs	x2, x26, xzr                               #! PC = 0xaaaaaaab7618 *)
adcs carry x2 x26 0@uint64 carry;
(* adc	x3, xzr, xzr                                #! PC = 0xaaaaaaab761c *)
adc x3 0@uint64 0@uint64 carry;
(* mul	x26, x12, x19                               #! PC = 0xaaaaaaab7620 *)
mull Hx12x19 x26 x12 x19;
(* umulh	x27, x12, x19                             #! PC = 0xaaaaaaab7624 *)
mov x27 Hx12x19;
(* adds	x5, x5, x7                                 #! PC = 0xaaaaaaab7628 *)
adds carry x5 x5 x7;
(* adc	x6, x6, xzr                                 #! PC = 0xaaaaaaab762c *)
adc x6 x6 0@uint64 carry;
(* mul	x28, x11, x21                               #! PC = 0xaaaaaaab7630 *)
mull Hx11x21 x28 x11 x21;
(* umulh	x29, x11, x21                             #! PC = 0xaaaaaaab7634 *)
mov x29 Hx11x21;
(* adds	x5, x5, x26                                #! PC = 0xaaaaaaab7638 *)
adds carry x5 x5 x26;
(* adcs	x6, x6, x27                                #! PC = 0xaaaaaaab763c *)
adcs carry x6 x6 x27 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xaaaaaaab7640 *)
adc x7 0@uint64 0@uint64 carry;
(* mul	x26, x12, x20                               #! PC = 0xaaaaaaab7644 *)
mull Hx12x20 x26 x12 x20;
(* umulh	x27, x12, x20                             #! PC = 0xaaaaaaab7648 *)
mov x27 Hx12x20;
(* adds	x6, x6, x28                                #! PC = 0xaaaaaaab764c *)
adds carry x6 x6 x28;
(* adcs	x7, x7, x29                                #! PC = 0xaaaaaaab7650 *)
adcs carry x7 x7 x29 carry;
(* adc	x8, xzr, xzr                                #! PC = 0xaaaaaaab7654 *)
adc x8 0@uint64 0@uint64 carry;
(* mul	x28, x11, x22                               #! PC = 0xaaaaaaab7658 *)
mull Hx11x22 x28 x11 x22;
(* umulh	x29, x11, x22                             #! PC = 0xaaaaaaab765c *)
mov x29 Hx11x22;
(* adds	x6, x6, x26                                #! PC = 0xaaaaaaab7660 *)
adds carry x6 x6 x26;
(* adcs	x7, x7, x27                                #! PC = 0xaaaaaaab7664 *)
adcs carry x7 x7 x27 carry;
(* adc	x8, x8, xzr                                 #! PC = 0xaaaaaaab7668 *)
adc x8 x8 0@uint64 carry;
(* mul	x26, x12, x21                               #! PC = 0xaaaaaaab766c *)
mull Hx12x21 x26 x12 x21;
(* umulh	x27, x12, x21                             #! PC = 0xaaaaaaab7670 *)
mov x27 Hx12x21;
(* adds	x7, x7, x28                                #! PC = 0xaaaaaaab7674 *)
adds carry x7 x7 x28;
(* adcs	x8, x8, x29                                #! PC = 0xaaaaaaab7678 *)
adcs carry x8 x8 x29 carry;
(* adc	x9, xzr, xzr                                #! PC = 0xaaaaaaab767c *)
adc x9 0@uint64 0@uint64 carry;
(* mul	x28, x12, x22                               #! PC = 0xaaaaaaab7680 *)
mull Hx12x22 x28 x12 x22;
(* umulh	x29, x12, x22                             #! PC = 0xaaaaaaab7684 *)
mov x29 Hx12x22;
(* adds	x7, x7, x26                                #! PC = 0xaaaaaaab7688 *)
adds carry x7 x7 x26;
(* adcs	x8, x8, x27                                #! PC = 0xaaaaaaab768c *)
adcs carry x8 x8 x27 carry;
(* adc	x9, x9, xzr                                 #! PC = 0xaaaaaaab7690 *)
adc x9 x9 0@uint64 carry;
(* mul	x26, x11, x23                               #! PC = 0xaaaaaaab7694 *)
mull Hx11x23 x26 x11 x23;
(* umulh	x27, x11, x23                             #! PC = 0xaaaaaaab7698 *)
mov x27 Hx11x23;
(* adds	x8, x8, x28                                #! PC = 0xaaaaaaab769c *)
adds carry x8 x8 x28;
(* adcs	x9, x9, x29                                #! PC = 0xaaaaaaab76a0 *)
adcs carry x9 x9 x29 carry;
(* adc	x10, xzr, xzr                               #! PC = 0xaaaaaaab76a4 *)
adc x10 0@uint64 0@uint64 carry;
(* mul	x28, x12, x23                               #! PC = 0xaaaaaaab76a8 *)
mull Hx12x23 x28 x12 x23;
(* umulh	x29, x12, x23                             #! PC = 0xaaaaaaab76ac *)
mov x29 Hx12x23;
(* adds	x8, x8, x26                                #! PC = 0xaaaaaaab76b0 *)
adds carry x8 x8 x26;
(* adcs	x9, x9, x27                                #! PC = 0xaaaaaaab76b4 *)
adcs carry x9 x9 x27 carry;
(* adc	x10, x10, xzr                               #! PC = 0xaaaaaaab76b8 *)
adc x10 x10 0@uint64 carry;
(* adds	x9, x9, x28                                #! PC = 0xaaaaaaab76bc *)
adds carry x9 x9 x28;
(* adc	x10, x10, x29                               #! PC = 0xaaaaaaab76c0 *)
adc x10 x10 x29 carry;
(* orr	x26, xzr, x10, lsr #16                      #! PC = 0xaaaaaaab76c4 *)
split x26 Lx10 x10 16;
(* lsl	x10, x10, #48                               #! PC = 0xaaaaaaab76c8 *)
shl x10 Lx10 48;
(* orr	x10, x10, x9, lsr #16                       #! PC = 0xaaaaaaab76cc *)
split Hx9 Lx9 x9 16;
add x10 x10 Hx9;
(* lsl	x9, x9, #48                                 #! PC = 0xaaaaaaab76d0 *)
shl x9 Lx9 48;
(* orr	x9, x9, x8, lsr #16                         #! PC = 0xaaaaaaab76d4 *)
split Hx8 Lx8 x8 16;
add x9 x9 Hx8;
(* lsl	x8, x8, #48                                 #! PC = 0xaaaaaaab76d8 *)
shl x8 Lx8 48;
(* orr	x8, x8, x7, lsr #16                         #! PC = 0xaaaaaaab76dc *)
split Hx7 Lx7 x7 16;
add x8 x8 Hx7;
(* lsl	x7, x7, #48                                 #! PC = 0xaaaaaaab76e0 *)
shl x7 Lx7 48;
(* orr	x7, x7, x6, lsr #16                         #! PC = 0xaaaaaaab76e4 *)
split Hx6 Lx6 x6 16;
add x7 x7 Hx6;
(* lsl	x6, x6, #48                                 #! PC = 0xaaaaaaab76e8 *)
shl x6 Lx6 48;
(* orr	x6, x6, x5, lsr #16                         #! PC = 0xaaaaaaab76ec *)
split Hx5 Lx5 x5 16;
add x6 x6 Hx5;
(* lsl	x5, x5, #48                                 #! PC = 0xaaaaaaab76f0 *)
shl x5 Lx5 48;
(* orr	x5, x5, x4, lsr #16                         #! PC = 0xaaaaaaab76f4 *)
split Hx4 Lx4 x4 16;
add x5 x5 Hx4;
(* lsl	x4, x4, #48                                 #! PC = 0xaaaaaaab76f8 *)
shl x4 Lx4 48;
(* adds	x15, x4, x15                               #! PC = 0xaaaaaaab76fc *)
adds carry x15 x4 x15;
(* adcs	x16, x5, x16                               #! PC = 0xaaaaaaab7700 *)
adcs carry x16 x5 x16 carry;
(* adcs	x17, x6, x17                               #! PC = 0xaaaaaaab7704 *)
adcs carry x17 x6 x17 carry;
(* adcs	x24, x7, x24                               #! PC = 0xaaaaaaab7708 *)
adcs carry x24 x7 x24 carry;
(* adcs	x25, x8, x25                               #! PC = 0xaaaaaaab770c *)
adcs carry x25 x8 x25 carry;
(* mul	x4, x13, x19                                #! PC = 0xaaaaaaab7710 *)
mull Hx13x19 x4 x13 x19;
(* umulh	x7, x13, x19                              #! PC = 0xaaaaaaab7714 *)
mov x7 Hx13x19;
(* adcs	x2, x9, x2                                 #! PC = 0xaaaaaaab7718 *)
adcs carry x2 x9 x2 carry;
(* adcs	x3, x10, x3                                #! PC = 0xaaaaaaab771c *)
adcs carry x3 x10 x3 carry;
(* mul	x5, x13, x20                                #! PC = 0xaaaaaaab7720 *)
mull Hx13x20 x5 x13 x20;
(* umulh	x6, x13, x20                              #! PC = 0xaaaaaaab7724 *)
mov x6 Hx13x20;
(* adcs	x11, x26, xzr                              #! PC = 0xaaaaaaab7728 *)
adcs carry x11 x26 0@uint64 carry;
(* adc	x12, xzr, xzr                               #! PC = 0xaaaaaaab772c *)
adc x12 0@uint64 0@uint64 carry;
(* mul	x26, x14, x19                               #! PC = 0xaaaaaaab7730 *)
mull Hx14x19 x26 x14 x19;
(* umulh	x27, x14, x19                             #! PC = 0xaaaaaaab7734 *)
mov x27 Hx14x19;
(* adds	x5, x5, x7                                 #! PC = 0xaaaaaaab7738 *)
adds carry x5 x5 x7;
(* adc	x6, x6, xzr                                 #! PC = 0xaaaaaaab773c *)
adc x6 x6 0@uint64 carry;
(* mul	x28, x13, x21                               #! PC = 0xaaaaaaab7740 *)
mull Hx13x21 x28 x13 x21;
(* umulh	x29, x13, x21                             #! PC = 0xaaaaaaab7744 *)
mov x29 Hx13x21;
(* adds	x5, x5, x26                                #! PC = 0xaaaaaaab7748 *)
adds carry x5 x5 x26;
(* adcs	x6, x6, x27                                #! PC = 0xaaaaaaab774c *)
adcs carry x6 x6 x27 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xaaaaaaab7750 *)
adc x7 0@uint64 0@uint64 carry;
(* mul	x26, x14, x20                               #! PC = 0xaaaaaaab7754 *)
mull Hx14x20 x26 x14 x20;
(* umulh	x27, x14, x20                             #! PC = 0xaaaaaaab7758 *)
mov x27 Hx14x20;
(* adds	x6, x6, x28                                #! PC = 0xaaaaaaab775c *)
adds carry x6 x6 x28;
(* adcs	x7, x7, x29                                #! PC = 0xaaaaaaab7760 *)
adcs carry x7 x7 x29 carry;
(* adc	x8, xzr, xzr                                #! PC = 0xaaaaaaab7764 *)
adc x8 0@uint64 0@uint64 carry;
(* mul	x28, x13, x22                               #! PC = 0xaaaaaaab7768 *)
mull Hx13x22 x28 x13 x22;
(* umulh	x29, x13, x22                             #! PC = 0xaaaaaaab776c *)
mov x29 Hx13x22;
(* adds	x6, x6, x26                                #! PC = 0xaaaaaaab7770 *)
adds carry x6 x6 x26;
(* adcs	x7, x7, x27                                #! PC = 0xaaaaaaab7774 *)
adcs carry x7 x7 x27 carry;
(* adc	x8, x8, xzr                                 #! PC = 0xaaaaaaab7778 *)
adc x8 x8 0@uint64 carry;
(* mul	x26, x14, x21                               #! PC = 0xaaaaaaab777c *)
mull Hx14x21 x26 x14 x21;
(* umulh	x27, x14, x21                             #! PC = 0xaaaaaaab7780 *)
mov x27 Hx14x21;
(* adds	x7, x7, x28                                #! PC = 0xaaaaaaab7784 *)
adds carry x7 x7 x28;
(* adcs	x8, x8, x29                                #! PC = 0xaaaaaaab7788 *)
adcs carry x8 x8 x29 carry;
(* adc	x9, xzr, xzr                                #! PC = 0xaaaaaaab778c *)
adc x9 0@uint64 0@uint64 carry;
(* mul	x28, x14, x22                               #! PC = 0xaaaaaaab7790 *)
mull Hx14x22 x28 x14 x22;
(* umulh	x29, x14, x22                             #! PC = 0xaaaaaaab7794 *)
mov x29 Hx14x22;
(* adds	x7, x7, x26                                #! PC = 0xaaaaaaab7798 *)
adds carry x7 x7 x26;
(* adcs	x8, x8, x27                                #! PC = 0xaaaaaaab779c *)
adcs carry x8 x8 x27 carry;
(* adc	x9, x9, xzr                                 #! PC = 0xaaaaaaab77a0 *)
adc x9 x9 0@uint64 carry;
(* mul	x26, x13, x23                               #! PC = 0xaaaaaaab77a4 *)
mull Hx13x23 x26 x13 x23;
(* umulh	x27, x13, x23                             #! PC = 0xaaaaaaab77a8 *)
mov x27 Hx13x23;
(* adds	x8, x8, x28                                #! PC = 0xaaaaaaab77ac *)
adds carry x8 x8 x28;
(* adcs	x9, x9, x29                                #! PC = 0xaaaaaaab77b0 *)
adcs carry x9 x9 x29 carry;
(* adc	x10, xzr, xzr                               #! PC = 0xaaaaaaab77b4 *)
adc x10 0@uint64 0@uint64 carry;
(* mul	x28, x14, x23                               #! PC = 0xaaaaaaab77b8 *)
mull Hx14x23 x28 x14 x23;
(* umulh	x29, x14, x23                             #! PC = 0xaaaaaaab77bc *)
mov x29 Hx14x23;
(* adds	x8, x8, x26                                #! PC = 0xaaaaaaab77c0 *)
adds carry x8 x8 x26;
(* adcs	x9, x9, x27                                #! PC = 0xaaaaaaab77c4 *)
adcs carry x9 x9 x27 carry;
(* adc	x10, x10, xzr                               #! PC = 0xaaaaaaab77c8 *)
adc x10 x10 0@uint64 carry;
(* adds	x9, x9, x28                                #! PC = 0xaaaaaaab77cc *)
adds carry x9 x9 x28;
(* adc	x10, x10, x29                               #! PC = 0xaaaaaaab77d0 *)
adc x10 x10 x29 carry;
(* orr	x26, xzr, x10, lsr #16                      #! PC = 0xaaaaaaab77d4 *)
split x26 Lx10 x10 16;
(* lsl	x10, x10, #48                               #! PC = 0xaaaaaaab77d8 *)
shl x10 Lx10 48;
(* orr	x10, x10, x9, lsr #16                       #! PC = 0xaaaaaaab77dc *)
split Hx9 Lx9 x9 16;
add x10 x10 Hx9;
(* lsl	x9, x9, #48                                 #! PC = 0xaaaaaaab77e0 *)
shl x9 Lx9 48;
(* orr	x9, x9, x8, lsr #16                         #! PC = 0xaaaaaaab77e4 *)
split Hx8 Lx8 x8 16;
add x9 x9 Hx8;
(* lsl	x8, x8, #48                                 #! PC = 0xaaaaaaab77e8 *)
shl x8 Lx8 48;
(* orr	x8, x8, x7, lsr #16                         #! PC = 0xaaaaaaab77ec *)
split Hx7 Lx7 x7 16;
add x8 x8 Hx7;
(* lsl	x7, x7, #48                                 #! PC = 0xaaaaaaab77f0 *)
shl x7 Lx7 48;
(* orr	x7, x7, x6, lsr #16                         #! PC = 0xaaaaaaab77f4 *)
split Hx6 Lx6 x6 16;
add x7 x7 Hx6;
(* lsl	x6, x6, #48                                 #! PC = 0xaaaaaaab77f8 *)
shl x6 Lx6 48;
(* orr	x6, x6, x5, lsr #16                         #! PC = 0xaaaaaaab77fc *)
split Hx5 Lx5 x5 16;
add x6 x6 Hx5;
(* lsl	x5, x5, #48                                 #! PC = 0xaaaaaaab7800 *)
shl x5 Lx5 48;
(* orr	x5, x5, x4, lsr #16                         #! PC = 0xaaaaaaab7804 *)
split Hx4 Lx4 x4 16;
add x5 x5 Hx4;
(* lsl	x4, x4, #48                                 #! PC = 0xaaaaaaab7808 *)
shl x4 Lx4 48;
(* adds	x17, x4, x17                               #! PC = 0xaaaaaaab780c *)
adds carry x17 x4 x17;
(* adcs	x24, x5, x24                               #! PC = 0xaaaaaaab7810 *)
adcs carry x24 x5 x24 carry;
(* adcs	x25, x6, x25                               #! PC = 0xaaaaaaab7814 *)
adcs carry x25 x6 x25 carry;
(* adcs	x2, x7, x2                                 #! PC = 0xaaaaaaab7818 *)
adcs carry x2 x7 x2 carry;
(* adcs	x3, x8, x3                                 #! PC = 0xaaaaaaab781c *)
adcs carry x3 x8 x3 carry;
(* adcs	x11, x9, x11                               #! PC = 0xaaaaaaab7820 *)
adcs carry x11 x9 x11 carry;
(* adcs	x12, x10, x12                              #! PC = 0xaaaaaaab7824 *)
adcs carry x12 x10 x12 carry;
(* stp	x17, x24, [x1]                              #! EA = L0xffffffffe8e8; PC = 0xaaaaaaab7828 *)
mov L0xffffffffe8e8 x17;
mov L0xffffffffe8f0 x24;
(* adcs	x13, x26, xzr                              #! PC = 0xaaaaaaab782c *)
adcs carry x13 x26 0@uint64 carry;
(* adc	x14, xzr, xzr                               #! PC = 0xaaaaaaab7830 *)
adc x14 0@uint64 0@uint64 carry;
(* mul	x4, x15, x19                                #! PC = 0xaaaaaaab7834 *)
mull Hx15x19 x4 x15 x19;
(* umulh	x7, x15, x19                              #! PC = 0xaaaaaaab7838 *)
mov x7 Hx15x19;
(* mul	x5, x15, x20                                #! PC = 0xaaaaaaab783c *)
mull Hx15x20 x5 x15 x20;
(* umulh	x6, x15, x20                              #! PC = 0xaaaaaaab7840 *)
mov x6 Hx15x20;
(* mul	x26, x16, x19                               #! PC = 0xaaaaaaab7844 *)
mull Hx16x19 x26 x16 x19;
(* umulh	x27, x16, x19                             #! PC = 0xaaaaaaab7848 *)
mov x27 Hx16x19;
(* adds	x5, x5, x7                                 #! PC = 0xaaaaaaab784c *)
adds carry x5 x5 x7;
(* adc	x6, x6, xzr                                 #! PC = 0xaaaaaaab7850 *)
adc x6 x6 0@uint64 carry;
(* mul	x28, x15, x21                               #! PC = 0xaaaaaaab7854 *)
mull Hx15x21 x28 x15 x21;
(* umulh	x29, x15, x21                             #! PC = 0xaaaaaaab7858 *)
mov x29 Hx15x21;
(* adds	x5, x5, x26                                #! PC = 0xaaaaaaab785c *)
adds carry x5 x5 x26;
(* adcs	x6, x6, x27                                #! PC = 0xaaaaaaab7860 *)
adcs carry x6 x6 x27 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xaaaaaaab7864 *)
adc x7 0@uint64 0@uint64 carry;
(* mul	x26, x16, x20                               #! PC = 0xaaaaaaab7868 *)
mull Hx16x20 x26 x16 x20;
(* umulh	x27, x16, x20                             #! PC = 0xaaaaaaab786c *)
mov x27 Hx16x20;
(* adds	x6, x6, x28                                #! PC = 0xaaaaaaab7870 *)
adds carry x6 x6 x28;
(* adcs	x7, x7, x29                                #! PC = 0xaaaaaaab7874 *)
adcs carry x7 x7 x29 carry;
(* adc	x8, xzr, xzr                                #! PC = 0xaaaaaaab7878 *)
adc x8 0@uint64 0@uint64 carry;
(* mul	x28, x15, x22                               #! PC = 0xaaaaaaab787c *)
mull Hx15x22 x28 x15 x22;
(* umulh	x29, x15, x22                             #! PC = 0xaaaaaaab7880 *)
mov x29 Hx15x22;
(* adds	x6, x6, x26                                #! PC = 0xaaaaaaab7884 *)
adds carry x6 x6 x26;
(* adcs	x7, x7, x27                                #! PC = 0xaaaaaaab7888 *)
adcs carry x7 x7 x27 carry;
(* adc	x8, x8, xzr                                 #! PC = 0xaaaaaaab788c *)
adc x8 x8 0@uint64 carry;
(* mul	x26, x16, x21                               #! PC = 0xaaaaaaab7890 *)
mull Hx16x21 x26 x16 x21;
(* umulh	x27, x16, x21                             #! PC = 0xaaaaaaab7894 *)
mov x27 Hx16x21;
(* adds	x7, x7, x28                                #! PC = 0xaaaaaaab7898 *)
adds carry x7 x7 x28;
(* adcs	x8, x8, x29                                #! PC = 0xaaaaaaab789c *)
adcs carry x8 x8 x29 carry;
(* adc	x9, xzr, xzr                                #! PC = 0xaaaaaaab78a0 *)
adc x9 0@uint64 0@uint64 carry;
(* mul	x28, x16, x22                               #! PC = 0xaaaaaaab78a4 *)
mull Hx16x22 x28 x16 x22;
(* umulh	x29, x16, x22                             #! PC = 0xaaaaaaab78a8 *)
mov x29 Hx16x22;
(* adds	x7, x7, x26                                #! PC = 0xaaaaaaab78ac *)
adds carry x7 x7 x26;
(* adcs	x8, x8, x27                                #! PC = 0xaaaaaaab78b0 *)
adcs carry x8 x8 x27 carry;
(* adc	x9, x9, xzr                                 #! PC = 0xaaaaaaab78b4 *)
adc x9 x9 0@uint64 carry;
(* mul	x26, x15, x23                               #! PC = 0xaaaaaaab78b8 *)
mull Hx15x23 x26 x15 x23;
(* umulh	x27, x15, x23                             #! PC = 0xaaaaaaab78bc *)
mov x27 Hx15x23;
(* adds	x8, x8, x28                                #! PC = 0xaaaaaaab78c0 *)
adds carry x8 x8 x28;
(* adcs	x9, x9, x29                                #! PC = 0xaaaaaaab78c4 *)
adcs carry x9 x9 x29 carry;
(* adc	x10, xzr, xzr                               #! PC = 0xaaaaaaab78c8 *)
adc x10 0@uint64 0@uint64 carry;
(* mul	x28, x16, x23                               #! PC = 0xaaaaaaab78cc *)
mull Hx16x23 x28 x16 x23;
(* umulh	x29, x16, x23                             #! PC = 0xaaaaaaab78d0 *)
mov x29 Hx16x23;
(* adds	x8, x8, x26                                #! PC = 0xaaaaaaab78d4 *)
adds carry x8 x8 x26;
(* adcs	x9, x9, x27                                #! PC = 0xaaaaaaab78d8 *)
adcs carry x9 x9 x27 carry;
(* adc	x10, x10, xzr                               #! PC = 0xaaaaaaab78dc *)
adc x10 x10 0@uint64 carry;
(* adds	x9, x9, x28                                #! PC = 0xaaaaaaab78e0 *)
adds carry x9 x9 x28;
(* adc	x10, x10, x29                               #! PC = 0xaaaaaaab78e4 *)
adc x10 x10 x29 carry;
(* orr	x26, xzr, x10, lsr #16                      #! PC = 0xaaaaaaab78e8 *)
split x26 Lx10 x10 16;
(* lsl	x10, x10, #48                               #! PC = 0xaaaaaaab78ec *)
shl x10 Lx10 48;
(* orr	x10, x10, x9, lsr #16                       #! PC = 0xaaaaaaab78f0 *)
split Hx9 Lx9 x9 16;
add x10 x10 Hx9;
(* lsl	x9, x9, #48                                 #! PC = 0xaaaaaaab78f4 *)
shl x9 Lx9 48;
(* orr	x9, x9, x8, lsr #16                         #! PC = 0xaaaaaaab78f8 *)
split Hx8 Lx8 x8 16;
add x9 x9 Hx8;
(* lsl	x8, x8, #48                                 #! PC = 0xaaaaaaab78fc *)
shl x8 Lx8 48;
(* orr	x8, x8, x7, lsr #16                         #! PC = 0xaaaaaaab7900 *)
split Hx7 Lx7 x7 16;
add x8 x8 Hx7;
(* lsl	x7, x7, #48                                 #! PC = 0xaaaaaaab7904 *)
shl x7 Lx7 48;
(* orr	x7, x7, x6, lsr #16                         #! PC = 0xaaaaaaab7908 *)
split Hx6 Lx6 x6 16;
add x7 x7 Hx6;
(* lsl	x6, x6, #48                                 #! PC = 0xaaaaaaab790c *)
shl x6 Lx6 48;
(* orr	x6, x6, x5, lsr #16                         #! PC = 0xaaaaaaab7910 *)
split Hx5 Lx5 x5 16;
add x6 x6 Hx5;
(* lsl	x5, x5, #48                                 #! PC = 0xaaaaaaab7914 *)
shl x5 Lx5 48;
(* orr	x5, x5, x4, lsr #16                         #! PC = 0xaaaaaaab7918 *)
split Hx4 Lx4 x4 16;
add x5 x5 Hx4;
(* lsl	x4, x4, #48                                 #! PC = 0xaaaaaaab791c *)
shl x4 Lx4 48;
(* adds	x25, x4, x25                               #! PC = 0xaaaaaaab7920 *)
adds carry x25 x4 x25;
(* adcs	x2, x5, x2                                 #! PC = 0xaaaaaaab7924 *)
adcs carry x2 x5 x2 carry;
(* ldp	x19, x20, [x0, #96]                         #! EA = L0xffffffffe228; Value = 0xd4680058fb2921a4; PC = 0xaaaaaaab7928 *)
mov x19 L0xffffffffe228;
mov x20 L0xffffffffe230;
(* adcs	x3, x6, x3                                 #! PC = 0xaaaaaaab792c *)
adcs carry x3 x6 x3 carry;
(* adcs	x11, x7, x11                               #! PC = 0xaaaaaaab7930 *)
adcs carry x11 x7 x11 carry;
(* ldp	x21, x22, [x0, #112]                        #! EA = L0xffffffffe238; Value = 0x884867111ae4896c; PC = 0xaaaaaaab7934 *)
mov x21 L0xffffffffe238;
mov x22 L0xffffffffe240;
(* adcs	x12, x8, x12                               #! PC = 0xaaaaaaab7938 *)
adcs carry x12 x8 x12 carry;
(* adcs	x13, x9, x13                               #! PC = 0xaaaaaaab793c *)
adcs carry x13 x9 x13 carry;
(* ldp	x23, x24, [x0, #128]                        #! EA = L0xffffffffe248; Value = 0xe4d8548d3c3a92f2; PC = 0xaaaaaaab7940 *)
mov x23 L0xffffffffe248;
mov x24 L0xffffffffe250;
(* adcs	x14, x10, x14                              #! PC = 0xaaaaaaab7944 *)
adcs carry x14 x10 x14 carry;
(* adc	x15, x26, xzr                               #! PC = 0xaaaaaaab7948 *)
adc x15 x26 0@uint64 carry;
(* ldp	x4, x5, [x0, #144]                          #! EA = L0xffffffffe258; Value = 0xe2892a4acb6aeec7; PC = 0xaaaaaaab794c *)
mov x4 L0xffffffffe258;
mov x5 L0xffffffffe260;
(* adds	x25, x19, x25                              #! PC = 0xaaaaaaab7950 *)
adds carry x25 x19 x25;
(* ldr	x29, [sp, #80]                              #! EA = L0xffffffffdf70; Value = 0x0000ffffffffdf80; PC = 0xaaaaaaab7954 *)
mov x29 L0xffffffffdf70;
(* adcs	x2, x20, x2                                #! PC = 0xaaaaaaab7958 *)
adcs carry x2 x20 x2 carry;
(* ldp	x27, x28, [sp, #64]                         #! EA = L0xffffffffdf60; Value = 0x0000ffffffffe7a8; PC = 0xaaaaaaab795c *)
mov x27 L0xffffffffdf60;
mov x28 L0xffffffffdf68;
(* adcs	x3, x21, x3                                #! PC = 0xaaaaaaab7960 *)
adcs carry x3 x21 x3 carry;
(* stp	x25, x2, [x1, #16]                          #! EA = L0xffffffffe8f8; PC = 0xaaaaaaab7964 *)
mov L0xffffffffe8f8 x25;
mov L0xffffffffe900 x2;
(* adcs	x11, x22, x11                              #! PC = 0xaaaaaaab7968 *)
adcs carry x11 x22 x11 carry;
(* ldp	x19, x20, [sp]                              #! EA = L0xffffffffdf20; Value = 0x0000ffffffffe088; PC = 0xaaaaaaab796c *)
mov x19 L0xffffffffdf20;
mov x20 L0xffffffffdf28;
(* adcs	x12, x23, x12                              #! PC = 0xaaaaaaab7970 *)
adcs carry x12 x23 x12 carry;
(* stp	x3, x11, [x1, #32]                          #! EA = L0xffffffffe908; PC = 0xaaaaaaab7974 *)
mov L0xffffffffe908 x3;
mov L0xffffffffe910 x11;
(* adcs	x13, x24, x13                              #! PC = 0xaaaaaaab7978 *)
adcs carry x13 x24 x13 carry;
(* ldp	x25, x26, [sp, #48]                         #! EA = L0xffffffffdf50; Value = 0x0000ffffffffe6b8; PC = 0xaaaaaaab797c *)
mov x25 L0xffffffffdf50;
mov x26 L0xffffffffdf58;
(* adcs	x14, x4, x14                               #! PC = 0xaaaaaaab7980 *)
adcs carry x14 x4 x14 carry;
(* stp	x12, x13, [x1, #48]                         #! EA = L0xffffffffe918; PC = 0xaaaaaaab7984 *)
mov L0xffffffffe918 x12;
mov L0xffffffffe920 x13;
(* ldp	x23, x24, [sp, #32]                         #! EA = L0xffffffffdf40; Value = 0x0000ffffffffdfe8; PC = 0xaaaaaaab7988 *)
mov x23 L0xffffffffdf40;
mov x24 L0xffffffffdf48;
(* adc	x15, x5, x15                                #! PC = 0xaaaaaaab798c *)
adc x15 x5 x15 carry;
(* ldp	x21, x22, [sp, #16]                         #! EA = L0xffffffffdf30; Value = 0x0000ffffffffe128; PC = 0xaaaaaaab7990 *)
mov x21 L0xffffffffdf30;
mov x22 L0xffffffffdf38;
(* stp	x14, x15, [x1, #64]                         #! EA = L0xffffffffe928; PC = 0xaaaaaaab7994 *)
mov L0xffffffffe928 x14;
mov L0xffffffffe930 x15;
(* add	sp, sp, #0x60                               #! PC = 0xaaaaaaab7998 *)
adds dontcare sp sp 0x60@uint64;
(* #! <- SP = 0xffffffffdf80 *)
#! 0xffffffffdf80 = 0xffffffffdf80;
(* #ret                                            #! PC = 0xaaaaaaab799c *)
#ret                                            #! 0xaaaaaaab799c = 0xaaaaaaab799c;

(* CUT 7 *)
cut eqmod (limbs 64 [0, 0, 0, 0, 0,  0, 0, 0, 0, 0,
                     L0xffffffffe8e8, L0xffffffffe8f0, L0xffffffffe8f8,
                     L0xffffffffe900, L0xffffffffe908, L0xffffffffe910,
                     L0xffffffffe918, L0xffffffffe920, L0xffffffffe928,
                     L0xffffffffe930])
          (limbs 64 [ar0, ar1, ar2, ar3, ar4, ar5, ar6, ar7, ar8, ar9] *
           limbs 64 [bi0, bi1, bi2, bi3, bi4, bi5, bi6, bi7, bi8, bi9] +
           limbs 64 [ai0, ai1, ai2, ai3, ai4, ai5, ai6, ai7, ai8, ai9] *
           limbs 64 [br0, br1, br2, br3, br4, br5, br6, br7, br8, br9])
          (limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9])
    prove with [ precondition, cuts [ 5 ] ]
 && limbs 64 [L0xffffffffe8e8, L0xffffffffe8f0, L0xffffffffe8f8,
              L0xffffffffe900, L0xffffffffe908, L0xffffffffe910,
              L0xffffffffe918, L0xffffffffe920, L0xffffffffe928,
              L0xffffffffe930] <u
    2@640 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9]
    prove with [ precondition, cuts [ 5 ] ];

(* mov	x1, x22                                     #! PC = 0xaaaaaaaae600 *)
mov x1 x22;
(* mov	x0, x19                                     #! PC = 0xaaaaaaaae604 *)
mov x0 x19;
(* #bl	0xaaaaaaab6714 <rdc_mont>                   #! PC = 0xaaaaaaaae608 *)
#bl	0xaaaaaaab6714 <rdc_mont>                   #! 0xaaaaaaaae608 = 0xaaaaaaaae608;
(* #! -> SP = 0xffffffffdf80 *)
#! 0xffffffffdf80 = 0xffffffffdf80;
(* #b	0xaaaaaaab73a8 <rdc610_asm>                  #! PC = 0xaaaaaaab6714 *)
#b	0xaaaaaaab73a8 <rdc610_asm>                  #! 0xaaaaaaab6714 = 0xaaaaaaab6714;
(* sub	sp, sp, #0x60                               #! PC = 0xaaaaaaab73a8 *)
subc dontcare sp sp 0x60@uint64;
(* stp	x19, x20, [sp]                              #! EA = L0xffffffffdf20; PC = 0xaaaaaaab73ac *)
mov L0xffffffffdf20 x19;
mov L0xffffffffdf28 x20;
(* stp	x21, x22, [sp, #16]                         #! EA = L0xffffffffdf30; PC = 0xaaaaaaab73b0 *)
mov L0xffffffffdf30 x21;
mov L0xffffffffdf38 x22;
(* ldp	x2, x3, [x0]                                #! EA = L0xffffffffe088; Value = 0x0c206b66e9d6f7da; PC = 0xaaaaaaab73b4 *)
mov x2 L0xffffffffe088;
mov x3 L0xffffffffe090;
(* ldr	x19, 0xaaaaaaab67d0 <p610p1_nz_s6>          #! PC = 0xaaaaaaab73b8 *)
mov x19 L0xaaaaaaab67d0;
(* ldr	x20, 0xaaaaaaab67d8 <p610p1_nz_s6+8>        #! PC = 0xaaaaaaab73bc *)
mov x20 L0xaaaaaaab67d8;
(* ldr	x21, 0xaaaaaaab67e0 <p610p1_nz_s6+16>       #! PC = 0xaaaaaaab73c0 *)
mov x21 L0xaaaaaaab67e0;
(* stp	x23, x24, [sp, #32]                         #! EA = L0xffffffffdf40; PC = 0xaaaaaaab73c4 *)
mov L0xffffffffdf40 x23;
mov L0xffffffffdf48 x24;
(* stp	x25, x26, [sp, #48]                         #! EA = L0xffffffffdf50; PC = 0xaaaaaaab73c8 *)
mov L0xffffffffdf50 x25;
mov L0xffffffffdf58 x26;
(* mul	x4, x2, x19                                 #! PC = 0xaaaaaaab73cc *)
mull Hx2x19 x4 x2 x19;
(* umulh	x7, x2, x19                               #! PC = 0xaaaaaaab73d0 *)
mov x7 Hx2x19;
(* stp	x27, x28, [sp, #64]                         #! EA = L0xffffffffdf60; PC = 0xaaaaaaab73d4 *)
mov L0xffffffffdf60 x27;
mov L0xffffffffdf68 x28;
(* str	x29, [sp, #80]                              #! EA = L0xffffffffdf70; PC = 0xaaaaaaab73d8 *)
mov L0xffffffffdf70 x29;
(* ldr	x22, 0xaaaaaaab67e8 <p610p1_nz_s6+24>       #! PC = 0xaaaaaaab73dc *)
mov x22 L0xaaaaaaab67e8;
(* ldr	x23, 0xaaaaaaab67f0 <p610p1_nz_s6+32>       #! PC = 0xaaaaaaab73e0 *)
mov x23 L0xaaaaaaab67f0;
(* mul	x5, x2, x20                                 #! PC = 0xaaaaaaab73e4 *)
mull Hx2x20 x5 x2 x20;
(* umulh	x6, x2, x20                               #! PC = 0xaaaaaaab73e8 *)
mov x6 Hx2x20;
(* mul	x26, x3, x19                                #! PC = 0xaaaaaaab73ec *)
mull Hx3x19 x26 x3 x19;
(* umulh	x27, x3, x19                              #! PC = 0xaaaaaaab73f0 *)
mov x27 Hx3x19;
(* adds	x5, x5, x7                                 #! PC = 0xaaaaaaab73f4 *)
adds carry x5 x5 x7;
(* adc	x6, x6, xzr                                 #! PC = 0xaaaaaaab73f8 *)
adc x6 x6 0@uint64 carry;
(* mul	x28, x2, x21                                #! PC = 0xaaaaaaab73fc *)
mull Hx2x21 x28 x2 x21;
(* umulh	x29, x2, x21                              #! PC = 0xaaaaaaab7400 *)
mov x29 Hx2x21;
(* adds	x5, x5, x26                                #! PC = 0xaaaaaaab7404 *)
adds carry x5 x5 x26;
(* adcs	x6, x6, x27                                #! PC = 0xaaaaaaab7408 *)
adcs carry x6 x6 x27 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xaaaaaaab740c *)
adc x7 0@uint64 0@uint64 carry;
(* mul	x26, x3, x20                                #! PC = 0xaaaaaaab7410 *)
mull Hx3x20 x26 x3 x20;
(* umulh	x27, x3, x20                              #! PC = 0xaaaaaaab7414 *)
mov x27 Hx3x20;
(* adds	x6, x6, x28                                #! PC = 0xaaaaaaab7418 *)
adds carry x6 x6 x28;
(* adcs	x7, x7, x29                                #! PC = 0xaaaaaaab741c *)
adcs carry x7 x7 x29 carry;
(* adc	x8, xzr, xzr                                #! PC = 0xaaaaaaab7420 *)
adc x8 0@uint64 0@uint64 carry;
(* mul	x28, x2, x22                                #! PC = 0xaaaaaaab7424 *)
mull Hx2x22 x28 x2 x22;
(* umulh	x29, x2, x22                              #! PC = 0xaaaaaaab7428 *)
mov x29 Hx2x22;
(* adds	x6, x6, x26                                #! PC = 0xaaaaaaab742c *)
adds carry x6 x6 x26;
(* adcs	x7, x7, x27                                #! PC = 0xaaaaaaab7430 *)
adcs carry x7 x7 x27 carry;
(* adc	x8, x8, xzr                                 #! PC = 0xaaaaaaab7434 *)
adc x8 x8 0@uint64 carry;
(* mul	x26, x3, x21                                #! PC = 0xaaaaaaab7438 *)
mull Hx3x21 x26 x3 x21;
(* umulh	x27, x3, x21                              #! PC = 0xaaaaaaab743c *)
mov x27 Hx3x21;
(* adds	x7, x7, x28                                #! PC = 0xaaaaaaab7440 *)
adds carry x7 x7 x28;
(* adcs	x8, x8, x29                                #! PC = 0xaaaaaaab7444 *)
adcs carry x8 x8 x29 carry;
(* adc	x9, xzr, xzr                                #! PC = 0xaaaaaaab7448 *)
adc x9 0@uint64 0@uint64 carry;
(* mul	x28, x3, x22                                #! PC = 0xaaaaaaab744c *)
mull Hx3x22 x28 x3 x22;
(* umulh	x29, x3, x22                              #! PC = 0xaaaaaaab7450 *)
mov x29 Hx3x22;
(* adds	x7, x7, x26                                #! PC = 0xaaaaaaab7454 *)
adds carry x7 x7 x26;
(* adcs	x8, x8, x27                                #! PC = 0xaaaaaaab7458 *)
adcs carry x8 x8 x27 carry;
(* adc	x9, x9, xzr                                 #! PC = 0xaaaaaaab745c *)
adc x9 x9 0@uint64 carry;
(* mul	x26, x2, x23                                #! PC = 0xaaaaaaab7460 *)
mull Hx2x23 x26 x2 x23;
(* umulh	x27, x2, x23                              #! PC = 0xaaaaaaab7464 *)
mov x27 Hx2x23;
(* adds	x8, x8, x28                                #! PC = 0xaaaaaaab7468 *)
adds carry x8 x8 x28;
(* adcs	x9, x9, x29                                #! PC = 0xaaaaaaab746c *)
adcs carry x9 x9 x29 carry;
(* adc	x10, xzr, xzr                               #! PC = 0xaaaaaaab7470 *)
adc x10 0@uint64 0@uint64 carry;
(* mul	x28, x3, x23                                #! PC = 0xaaaaaaab7474 *)
mull Hx3x23 x28 x3 x23;
(* umulh	x29, x3, x23                              #! PC = 0xaaaaaaab7478 *)
mov x29 Hx3x23;
(* adds	x8, x8, x26                                #! PC = 0xaaaaaaab747c *)
adds carry x8 x8 x26;
(* adcs	x9, x9, x27                                #! PC = 0xaaaaaaab7480 *)
adcs carry x9 x9 x27 carry;
(* adc	x10, x10, xzr                               #! PC = 0xaaaaaaab7484 *)
adc x10 x10 0@uint64 carry;
(* adds	x9, x9, x28                                #! PC = 0xaaaaaaab7488 *)
adds carry x9 x9 x28;
(* adc	x10, x10, x29                               #! PC = 0xaaaaaaab748c *)
adc x10 x10 x29 carry;
(* orr	x26, xzr, x10, lsr #16                      #! PC = 0xaaaaaaab7490 *)
split x26 Lx10 x10 16;
(* lsl	x10, x10, #48                               #! PC = 0xaaaaaaab7494 *)
shl x10 Lx10 48;
(* orr	x10, x10, x9, lsr #16                       #! PC = 0xaaaaaaab7498 *)
split Hx9 Lx9 x9 16;
add x10 x10 Hx9;
(* lsl	x9, x9, #48                                 #! PC = 0xaaaaaaab749c *)
shl x9 Lx9 48;
(* orr	x9, x9, x8, lsr #16                         #! PC = 0xaaaaaaab74a0 *)
split Hx8 Lx8 x8 16;
add x9 x9 Hx8;
(* lsl	x8, x8, #48                                 #! PC = 0xaaaaaaab74a4 *)
shl x8 Lx8 48;
(* orr	x8, x8, x7, lsr #16                         #! PC = 0xaaaaaaab74a8 *)
split Hx7 Lx7 x7 16;
add x8 x8 Hx7;
(* lsl	x7, x7, #48                                 #! PC = 0xaaaaaaab74ac *)
shl x7 Lx7 48;
(* orr	x7, x7, x6, lsr #16                         #! PC = 0xaaaaaaab74b0 *)
split Hx6 Lx6 x6 16;
add x7 x7 Hx6;
(* lsl	x6, x6, #48                                 #! PC = 0xaaaaaaab74b4 *)
shl x6 Lx6 48;
(* ldp	x2, x3, [x0, #16]                           #! EA = L0xffffffffe098; Value = 0xc48aff8e135f5d04; PC = 0xaaaaaaab74b8 *)
mov x2 L0xffffffffe098;
mov x3 L0xffffffffe0a0;
(* orr	x6, x6, x5, lsr #16                         #! PC = 0xaaaaaaab74bc *)
split Hx5 Lx5 x5 16;
add x6 x6 Hx5;
(* lsl	x5, x5, #48                                 #! PC = 0xaaaaaaab74c0 *)
shl x5 Lx5 48;
(* ldp	x11, x12, [x0, #32]                         #! EA = L0xffffffffe0a8; Value = 0x5b5b7c81a00eb541; PC = 0xaaaaaaab74c4 *)
mov x11 L0xffffffffe0a8;
mov x12 L0xffffffffe0b0;
(* orr	x5, x5, x4, lsr #16                         #! PC = 0xaaaaaaab74c8 *)
split Hx4 Lx4 x4 16;
add x5 x5 Hx4;
(* lsl	x4, x4, #48                                 #! PC = 0xaaaaaaab74cc *)
shl x4 Lx4 48;
(* ldp	x13, x14, [x0, #48]                         #! EA = L0xffffffffe0b8; Value = 0x97ef4573b3a46030; PC = 0xaaaaaaab74d0 *)
mov x13 L0xffffffffe0b8;
mov x14 L0xffffffffe0c0;
(* adds	x11, x4, x11                               #! PC = 0xaaaaaaab74d4 *)
adds carry x11 x4 x11;
(* adcs	x12, x5, x12                               #! PC = 0xaaaaaaab74d8 *)
adcs carry x12 x5 x12 carry;
(* ldp	x15, x16, [x0, #64]                         #! EA = L0xffffffffe0c8; Value = 0xdeedfb34b066a45c; PC = 0xaaaaaaab74dc *)
mov x15 L0xffffffffe0c8;
mov x16 L0xffffffffe0d0;
(* adcs	x13, x6, x13                               #! PC = 0xaaaaaaab74e0 *)
adcs carry x13 x6 x13 carry;
(* adcs	x14, x7, x14                               #! PC = 0xaaaaaaab74e4 *)
adcs carry x14 x7 x14 carry;
(* ldp	x17, x24, [x0, #80]                         #! EA = L0xffffffffe0d8; Value = 0xf3e16895d2424bdb; PC = 0xaaaaaaab74e8 *)
mov x17 L0xffffffffe0d8;
mov x24 L0xffffffffe0e0;
(* adcs	x15, x8, x15                               #! PC = 0xaaaaaaab74ec *)
adcs carry x15 x8 x15 carry;
(* mul	x4, x2, x19                                 #! PC = 0xaaaaaaab74f0 *)
mull Hx2x19 x4 x2 x19;
(* umulh	x7, x2, x19                               #! PC = 0xaaaaaaab74f4 *)
mov x7 Hx2x19;
(* adcs	x16, x9, x16                               #! PC = 0xaaaaaaab74f8 *)
adcs carry x16 x9 x16 carry;
(* adcs	x17, x10, x17                              #! PC = 0xaaaaaaab74fc *)
adcs carry x17 x10 x17 carry;
(* mul	x5, x2, x20                                 #! PC = 0xaaaaaaab7500 *)
mull Hx2x20 x5 x2 x20;
(* umulh	x6, x2, x20                               #! PC = 0xaaaaaaab7504 *)
mov x6 Hx2x20;
(* adcs	x24, x26, x24                              #! PC = 0xaaaaaaab7508 *)
adcs carry x24 x26 x24 carry;
(* adc	x25, xzr, xzr                               #! PC = 0xaaaaaaab750c *)
adc x25 0@uint64 0@uint64 carry;
(* mul	x26, x3, x19                                #! PC = 0xaaaaaaab7510 *)
mull Hx3x19 x26 x3 x19;
(* umulh	x27, x3, x19                              #! PC = 0xaaaaaaab7514 *)
mov x27 Hx3x19;
(* adds	x5, x5, x7                                 #! PC = 0xaaaaaaab7518 *)
adds carry x5 x5 x7;
(* adc	x6, x6, xzr                                 #! PC = 0xaaaaaaab751c *)
adc x6 x6 0@uint64 carry;
(* mul	x28, x2, x21                                #! PC = 0xaaaaaaab7520 *)
mull Hx2x21 x28 x2 x21;
(* umulh	x29, x2, x21                              #! PC = 0xaaaaaaab7524 *)
mov x29 Hx2x21;
(* adds	x5, x5, x26                                #! PC = 0xaaaaaaab7528 *)
adds carry x5 x5 x26;
(* adcs	x6, x6, x27                                #! PC = 0xaaaaaaab752c *)
adcs carry x6 x6 x27 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xaaaaaaab7530 *)
adc x7 0@uint64 0@uint64 carry;
(* mul	x26, x3, x20                                #! PC = 0xaaaaaaab7534 *)
mull Hx3x20 x26 x3 x20;
(* umulh	x27, x3, x20                              #! PC = 0xaaaaaaab7538 *)
mov x27 Hx3x20;
(* adds	x6, x6, x28                                #! PC = 0xaaaaaaab753c *)
adds carry x6 x6 x28;
(* adcs	x7, x7, x29                                #! PC = 0xaaaaaaab7540 *)
adcs carry x7 x7 x29 carry;
(* adc	x8, xzr, xzr                                #! PC = 0xaaaaaaab7544 *)
adc x8 0@uint64 0@uint64 carry;
(* mul	x28, x2, x22                                #! PC = 0xaaaaaaab7548 *)
mull Hx2x22 x28 x2 x22;
(* umulh	x29, x2, x22                              #! PC = 0xaaaaaaab754c *)
mov x29 Hx2x22;
(* adds	x6, x6, x26                                #! PC = 0xaaaaaaab7550 *)
adds carry x6 x6 x26;
(* adcs	x7, x7, x27                                #! PC = 0xaaaaaaab7554 *)
adcs carry x7 x7 x27 carry;
(* adc	x8, x8, xzr                                 #! PC = 0xaaaaaaab7558 *)
adc x8 x8 0@uint64 carry;
(* mul	x26, x3, x21                                #! PC = 0xaaaaaaab755c *)
mull Hx3x21 x26 x3 x21;
(* umulh	x27, x3, x21                              #! PC = 0xaaaaaaab7560 *)
mov x27 Hx3x21;
(* adds	x7, x7, x28                                #! PC = 0xaaaaaaab7564 *)
adds carry x7 x7 x28;
(* adcs	x8, x8, x29                                #! PC = 0xaaaaaaab7568 *)
adcs carry x8 x8 x29 carry;
(* adc	x9, xzr, xzr                                #! PC = 0xaaaaaaab756c *)
adc x9 0@uint64 0@uint64 carry;
(* mul	x28, x3, x22                                #! PC = 0xaaaaaaab7570 *)
mull Hx3x22 x28 x3 x22;
(* umulh	x29, x3, x22                              #! PC = 0xaaaaaaab7574 *)
mov x29 Hx3x22;
(* adds	x7, x7, x26                                #! PC = 0xaaaaaaab7578 *)
adds carry x7 x7 x26;
(* adcs	x8, x8, x27                                #! PC = 0xaaaaaaab757c *)
adcs carry x8 x8 x27 carry;
(* adc	x9, x9, xzr                                 #! PC = 0xaaaaaaab7580 *)
adc x9 x9 0@uint64 carry;
(* mul	x26, x2, x23                                #! PC = 0xaaaaaaab7584 *)
mull Hx2x23 x26 x2 x23;
(* umulh	x27, x2, x23                              #! PC = 0xaaaaaaab7588 *)
mov x27 Hx2x23;
(* adds	x8, x8, x28                                #! PC = 0xaaaaaaab758c *)
adds carry x8 x8 x28;
(* adcs	x9, x9, x29                                #! PC = 0xaaaaaaab7590 *)
adcs carry x9 x9 x29 carry;
(* adc	x10, xzr, xzr                               #! PC = 0xaaaaaaab7594 *)
adc x10 0@uint64 0@uint64 carry;
(* mul	x28, x3, x23                                #! PC = 0xaaaaaaab7598 *)
mull Hx3x23 x28 x3 x23;
(* umulh	x29, x3, x23                              #! PC = 0xaaaaaaab759c *)
mov x29 Hx3x23;
(* adds	x8, x8, x26                                #! PC = 0xaaaaaaab75a0 *)
adds carry x8 x8 x26;
(* adcs	x9, x9, x27                                #! PC = 0xaaaaaaab75a4 *)
adcs carry x9 x9 x27 carry;
(* adc	x10, x10, xzr                               #! PC = 0xaaaaaaab75a8 *)
adc x10 x10 0@uint64 carry;
(* adds	x9, x9, x28                                #! PC = 0xaaaaaaab75ac *)
adds carry x9 x9 x28;
(* adc	x10, x10, x29                               #! PC = 0xaaaaaaab75b0 *)
adc x10 x10 x29 carry;
(* orr	x26, xzr, x10, lsr #16                      #! PC = 0xaaaaaaab75b4 *)
split x26 Lx10 x10 16;
(* lsl	x10, x10, #48                               #! PC = 0xaaaaaaab75b8 *)
shl x10 Lx10 48;
(* orr	x10, x10, x9, lsr #16                       #! PC = 0xaaaaaaab75bc *)
split Hx9 Lx9 x9 16;
add x10 x10 Hx9;
(* lsl	x9, x9, #48                                 #! PC = 0xaaaaaaab75c0 *)
shl x9 Lx9 48;
(* orr	x9, x9, x8, lsr #16                         #! PC = 0xaaaaaaab75c4 *)
split Hx8 Lx8 x8 16;
add x9 x9 Hx8;
(* lsl	x8, x8, #48                                 #! PC = 0xaaaaaaab75c8 *)
shl x8 Lx8 48;
(* orr	x8, x8, x7, lsr #16                         #! PC = 0xaaaaaaab75cc *)
split Hx7 Lx7 x7 16;
add x8 x8 Hx7;
(* lsl	x7, x7, #48                                 #! PC = 0xaaaaaaab75d0 *)
shl x7 Lx7 48;
(* orr	x7, x7, x6, lsr #16                         #! PC = 0xaaaaaaab75d4 *)
split Hx6 Lx6 x6 16;
add x7 x7 Hx6;
(* lsl	x6, x6, #48                                 #! PC = 0xaaaaaaab75d8 *)
shl x6 Lx6 48;
(* orr	x6, x6, x5, lsr #16                         #! PC = 0xaaaaaaab75dc *)
split Hx5 Lx5 x5 16;
add x6 x6 Hx5;
(* lsl	x5, x5, #48                                 #! PC = 0xaaaaaaab75e0 *)
shl x5 Lx5 48;
(* orr	x5, x5, x4, lsr #16                         #! PC = 0xaaaaaaab75e4 *)
split Hx4 Lx4 x4 16;
add x5 x5 Hx4;
(* lsl	x4, x4, #48                                 #! PC = 0xaaaaaaab75e8 *)
shl x4 Lx4 48;
(* adds	x13, x4, x13                               #! PC = 0xaaaaaaab75ec *)
adds carry x13 x4 x13;
(* adcs	x14, x5, x14                               #! PC = 0xaaaaaaab75f0 *)
adcs carry x14 x5 x14 carry;
(* adcs	x15, x6, x15                               #! PC = 0xaaaaaaab75f4 *)
adcs carry x15 x6 x15 carry;
(* adcs	x16, x7, x16                               #! PC = 0xaaaaaaab75f8 *)
adcs carry x16 x7 x16 carry;
(* adcs	x17, x8, x17                               #! PC = 0xaaaaaaab75fc *)
adcs carry x17 x8 x17 carry;
(* mul	x4, x11, x19                                #! PC = 0xaaaaaaab7600 *)
mull Hx11x19 x4 x11 x19;
(* umulh	x7, x11, x19                              #! PC = 0xaaaaaaab7604 *)
mov x7 Hx11x19;
(* adcs	x24, x9, x24                               #! PC = 0xaaaaaaab7608 *)
adcs carry x24 x9 x24 carry;
(* adcs	x25, x10, x25                              #! PC = 0xaaaaaaab760c *)
adcs carry x25 x10 x25 carry;
(* mul	x5, x11, x20                                #! PC = 0xaaaaaaab7610 *)
mull Hx11x20 x5 x11 x20;
(* umulh	x6, x11, x20                              #! PC = 0xaaaaaaab7614 *)
mov x6 Hx11x20;
(* adcs	x2, x26, xzr                               #! PC = 0xaaaaaaab7618 *)
adcs carry x2 x26 0@uint64 carry;
(* adc	x3, xzr, xzr                                #! PC = 0xaaaaaaab761c *)
adc x3 0@uint64 0@uint64 carry;
(* mul	x26, x12, x19                               #! PC = 0xaaaaaaab7620 *)
mull Hx12x19 x26 x12 x19;
(* umulh	x27, x12, x19                             #! PC = 0xaaaaaaab7624 *)
mov x27 Hx12x19;
(* adds	x5, x5, x7                                 #! PC = 0xaaaaaaab7628 *)
adds carry x5 x5 x7;
(* adc	x6, x6, xzr                                 #! PC = 0xaaaaaaab762c *)
adc x6 x6 0@uint64 carry;
(* mul	x28, x11, x21                               #! PC = 0xaaaaaaab7630 *)
mull Hx11x21 x28 x11 x21;
(* umulh	x29, x11, x21                             #! PC = 0xaaaaaaab7634 *)
mov x29 Hx11x21;
(* adds	x5, x5, x26                                #! PC = 0xaaaaaaab7638 *)
adds carry x5 x5 x26;
(* adcs	x6, x6, x27                                #! PC = 0xaaaaaaab763c *)
adcs carry x6 x6 x27 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xaaaaaaab7640 *)
adc x7 0@uint64 0@uint64 carry;
(* mul	x26, x12, x20                               #! PC = 0xaaaaaaab7644 *)
mull Hx12x20 x26 x12 x20;
(* umulh	x27, x12, x20                             #! PC = 0xaaaaaaab7648 *)
mov x27 Hx12x20;
(* adds	x6, x6, x28                                #! PC = 0xaaaaaaab764c *)
adds carry x6 x6 x28;
(* adcs	x7, x7, x29                                #! PC = 0xaaaaaaab7650 *)
adcs carry x7 x7 x29 carry;
(* adc	x8, xzr, xzr                                #! PC = 0xaaaaaaab7654 *)
adc x8 0@uint64 0@uint64 carry;
(* mul	x28, x11, x22                               #! PC = 0xaaaaaaab7658 *)
mull Hx11x22 x28 x11 x22;
(* umulh	x29, x11, x22                             #! PC = 0xaaaaaaab765c *)
mov x29 Hx11x22;
(* adds	x6, x6, x26                                #! PC = 0xaaaaaaab7660 *)
adds carry x6 x6 x26;
(* adcs	x7, x7, x27                                #! PC = 0xaaaaaaab7664 *)
adcs carry x7 x7 x27 carry;
(* adc	x8, x8, xzr                                 #! PC = 0xaaaaaaab7668 *)
adc x8 x8 0@uint64 carry;
(* mul	x26, x12, x21                               #! PC = 0xaaaaaaab766c *)
mull Hx12x21 x26 x12 x21;
(* umulh	x27, x12, x21                             #! PC = 0xaaaaaaab7670 *)
mov x27 Hx12x21;
(* adds	x7, x7, x28                                #! PC = 0xaaaaaaab7674 *)
adds carry x7 x7 x28;
(* adcs	x8, x8, x29                                #! PC = 0xaaaaaaab7678 *)
adcs carry x8 x8 x29 carry;
(* adc	x9, xzr, xzr                                #! PC = 0xaaaaaaab767c *)
adc x9 0@uint64 0@uint64 carry;
(* mul	x28, x12, x22                               #! PC = 0xaaaaaaab7680 *)
mull Hx12x22 x28 x12 x22;
(* umulh	x29, x12, x22                             #! PC = 0xaaaaaaab7684 *)
mov x29 Hx12x22;
(* adds	x7, x7, x26                                #! PC = 0xaaaaaaab7688 *)
adds carry x7 x7 x26;
(* adcs	x8, x8, x27                                #! PC = 0xaaaaaaab768c *)
adcs carry x8 x8 x27 carry;
(* adc	x9, x9, xzr                                 #! PC = 0xaaaaaaab7690 *)
adc x9 x9 0@uint64 carry;
(* mul	x26, x11, x23                               #! PC = 0xaaaaaaab7694 *)
mull Hx11x23 x26 x11 x23;
(* umulh	x27, x11, x23                             #! PC = 0xaaaaaaab7698 *)
mov x27 Hx11x23;
(* adds	x8, x8, x28                                #! PC = 0xaaaaaaab769c *)
adds carry x8 x8 x28;
(* adcs	x9, x9, x29                                #! PC = 0xaaaaaaab76a0 *)
adcs carry x9 x9 x29 carry;
(* adc	x10, xzr, xzr                               #! PC = 0xaaaaaaab76a4 *)
adc x10 0@uint64 0@uint64 carry;
(* mul	x28, x12, x23                               #! PC = 0xaaaaaaab76a8 *)
mull Hx12x23 x28 x12 x23;
(* umulh	x29, x12, x23                             #! PC = 0xaaaaaaab76ac *)
mov x29 Hx12x23;
(* adds	x8, x8, x26                                #! PC = 0xaaaaaaab76b0 *)
adds carry x8 x8 x26;
(* adcs	x9, x9, x27                                #! PC = 0xaaaaaaab76b4 *)
adcs carry x9 x9 x27 carry;
(* adc	x10, x10, xzr                               #! PC = 0xaaaaaaab76b8 *)
adc x10 x10 0@uint64 carry;
(* adds	x9, x9, x28                                #! PC = 0xaaaaaaab76bc *)
adds carry x9 x9 x28;
(* adc	x10, x10, x29                               #! PC = 0xaaaaaaab76c0 *)
adc x10 x10 x29 carry;
(* orr	x26, xzr, x10, lsr #16                      #! PC = 0xaaaaaaab76c4 *)
split x26 Lx10 x10 16;
(* lsl	x10, x10, #48                               #! PC = 0xaaaaaaab76c8 *)
shl x10 Lx10 48;
(* orr	x10, x10, x9, lsr #16                       #! PC = 0xaaaaaaab76cc *)
split Hx9 Lx9 x9 16;
add x10 x10 Hx9;
(* lsl	x9, x9, #48                                 #! PC = 0xaaaaaaab76d0 *)
shl x9 Lx9 48;
(* orr	x9, x9, x8, lsr #16                         #! PC = 0xaaaaaaab76d4 *)
split Hx8 Lx8 x8 16;
add x9 x9 Hx8;
(* lsl	x8, x8, #48                                 #! PC = 0xaaaaaaab76d8 *)
shl x8 Lx8 48;
(* orr	x8, x8, x7, lsr #16                         #! PC = 0xaaaaaaab76dc *)
split Hx7 Lx7 x7 16;
add x8 x8 Hx7;
(* lsl	x7, x7, #48                                 #! PC = 0xaaaaaaab76e0 *)
shl x7 Lx7 48;
(* orr	x7, x7, x6, lsr #16                         #! PC = 0xaaaaaaab76e4 *)
split Hx6 Lx6 x6 16;
add x7 x7 Hx6;
(* lsl	x6, x6, #48                                 #! PC = 0xaaaaaaab76e8 *)
shl x6 Lx6 48;
(* orr	x6, x6, x5, lsr #16                         #! PC = 0xaaaaaaab76ec *)
split Hx5 Lx5 x5 16;
add x6 x6 Hx5;
(* lsl	x5, x5, #48                                 #! PC = 0xaaaaaaab76f0 *)
shl x5 Lx5 48;
(* orr	x5, x5, x4, lsr #16                         #! PC = 0xaaaaaaab76f4 *)
split Hx4 Lx4 x4 16;
add x5 x5 Hx4;
(* lsl	x4, x4, #48                                 #! PC = 0xaaaaaaab76f8 *)
shl x4 Lx4 48;
(* adds	x15, x4, x15                               #! PC = 0xaaaaaaab76fc *)
adds carry x15 x4 x15;
(* adcs	x16, x5, x16                               #! PC = 0xaaaaaaab7700 *)
adcs carry x16 x5 x16 carry;
(* adcs	x17, x6, x17                               #! PC = 0xaaaaaaab7704 *)
adcs carry x17 x6 x17 carry;
(* adcs	x24, x7, x24                               #! PC = 0xaaaaaaab7708 *)
adcs carry x24 x7 x24 carry;
(* adcs	x25, x8, x25                               #! PC = 0xaaaaaaab770c *)
adcs carry x25 x8 x25 carry;
(* mul	x4, x13, x19                                #! PC = 0xaaaaaaab7710 *)
mull Hx13x19 x4 x13 x19;
(* umulh	x7, x13, x19                              #! PC = 0xaaaaaaab7714 *)
mov x7 Hx13x19;
(* adcs	x2, x9, x2                                 #! PC = 0xaaaaaaab7718 *)
adcs carry x2 x9 x2 carry;
(* adcs	x3, x10, x3                                #! PC = 0xaaaaaaab771c *)
adcs carry x3 x10 x3 carry;
(* mul	x5, x13, x20                                #! PC = 0xaaaaaaab7720 *)
mull Hx13x20 x5 x13 x20;
(* umulh	x6, x13, x20                              #! PC = 0xaaaaaaab7724 *)
mov x6 Hx13x20;
(* adcs	x11, x26, xzr                              #! PC = 0xaaaaaaab7728 *)
adcs carry x11 x26 0@uint64 carry;
(* adc	x12, xzr, xzr                               #! PC = 0xaaaaaaab772c *)
adc x12 0@uint64 0@uint64 carry;
(* mul	x26, x14, x19                               #! PC = 0xaaaaaaab7730 *)
mull Hx14x19 x26 x14 x19;
(* umulh	x27, x14, x19                             #! PC = 0xaaaaaaab7734 *)
mov x27 Hx14x19;
(* adds	x5, x5, x7                                 #! PC = 0xaaaaaaab7738 *)
adds carry x5 x5 x7;
(* adc	x6, x6, xzr                                 #! PC = 0xaaaaaaab773c *)
adc x6 x6 0@uint64 carry;
(* mul	x28, x13, x21                               #! PC = 0xaaaaaaab7740 *)
mull Hx13x21 x28 x13 x21;
(* umulh	x29, x13, x21                             #! PC = 0xaaaaaaab7744 *)
mov x29 Hx13x21;
(* adds	x5, x5, x26                                #! PC = 0xaaaaaaab7748 *)
adds carry x5 x5 x26;
(* adcs	x6, x6, x27                                #! PC = 0xaaaaaaab774c *)
adcs carry x6 x6 x27 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xaaaaaaab7750 *)
adc x7 0@uint64 0@uint64 carry;
(* mul	x26, x14, x20                               #! PC = 0xaaaaaaab7754 *)
mull Hx14x20 x26 x14 x20;
(* umulh	x27, x14, x20                             #! PC = 0xaaaaaaab7758 *)
mov x27 Hx14x20;
(* adds	x6, x6, x28                                #! PC = 0xaaaaaaab775c *)
adds carry x6 x6 x28;
(* adcs	x7, x7, x29                                #! PC = 0xaaaaaaab7760 *)
adcs carry x7 x7 x29 carry;
(* adc	x8, xzr, xzr                                #! PC = 0xaaaaaaab7764 *)
adc x8 0@uint64 0@uint64 carry;
(* mul	x28, x13, x22                               #! PC = 0xaaaaaaab7768 *)
mull Hx13x22 x28 x13 x22;
(* umulh	x29, x13, x22                             #! PC = 0xaaaaaaab776c *)
mov x29 Hx13x22;
(* adds	x6, x6, x26                                #! PC = 0xaaaaaaab7770 *)
adds carry x6 x6 x26;
(* adcs	x7, x7, x27                                #! PC = 0xaaaaaaab7774 *)
adcs carry x7 x7 x27 carry;
(* adc	x8, x8, xzr                                 #! PC = 0xaaaaaaab7778 *)
adc x8 x8 0@uint64 carry;
(* mul	x26, x14, x21                               #! PC = 0xaaaaaaab777c *)
mull Hx14x21 x26 x14 x21;
(* umulh	x27, x14, x21                             #! PC = 0xaaaaaaab7780 *)
mov x27 Hx14x21;
(* adds	x7, x7, x28                                #! PC = 0xaaaaaaab7784 *)
adds carry x7 x7 x28;
(* adcs	x8, x8, x29                                #! PC = 0xaaaaaaab7788 *)
adcs carry x8 x8 x29 carry;
(* adc	x9, xzr, xzr                                #! PC = 0xaaaaaaab778c *)
adc x9 0@uint64 0@uint64 carry;
(* mul	x28, x14, x22                               #! PC = 0xaaaaaaab7790 *)
mull Hx14x22 x28 x14 x22;
(* umulh	x29, x14, x22                             #! PC = 0xaaaaaaab7794 *)
mov x29 Hx14x22;
(* adds	x7, x7, x26                                #! PC = 0xaaaaaaab7798 *)
adds carry x7 x7 x26;
(* adcs	x8, x8, x27                                #! PC = 0xaaaaaaab779c *)
adcs carry x8 x8 x27 carry;
(* adc	x9, x9, xzr                                 #! PC = 0xaaaaaaab77a0 *)
adc x9 x9 0@uint64 carry;
(* mul	x26, x13, x23                               #! PC = 0xaaaaaaab77a4 *)
mull Hx13x23 x26 x13 x23;
(* umulh	x27, x13, x23                             #! PC = 0xaaaaaaab77a8 *)
mov x27 Hx13x23;
(* adds	x8, x8, x28                                #! PC = 0xaaaaaaab77ac *)
adds carry x8 x8 x28;
(* adcs	x9, x9, x29                                #! PC = 0xaaaaaaab77b0 *)
adcs carry x9 x9 x29 carry;
(* adc	x10, xzr, xzr                               #! PC = 0xaaaaaaab77b4 *)
adc x10 0@uint64 0@uint64 carry;
(* mul	x28, x14, x23                               #! PC = 0xaaaaaaab77b8 *)
mull Hx14x23 x28 x14 x23;
(* umulh	x29, x14, x23                             #! PC = 0xaaaaaaab77bc *)
mov x29 Hx14x23;
(* adds	x8, x8, x26                                #! PC = 0xaaaaaaab77c0 *)
adds carry x8 x8 x26;
(* adcs	x9, x9, x27                                #! PC = 0xaaaaaaab77c4 *)
adcs carry x9 x9 x27 carry;
(* adc	x10, x10, xzr                               #! PC = 0xaaaaaaab77c8 *)
adc x10 x10 0@uint64 carry;
(* adds	x9, x9, x28                                #! PC = 0xaaaaaaab77cc *)
adds carry x9 x9 x28;
(* adc	x10, x10, x29                               #! PC = 0xaaaaaaab77d0 *)
adc x10 x10 x29 carry;
(* orr	x26, xzr, x10, lsr #16                      #! PC = 0xaaaaaaab77d4 *)
split x26 Lx10 x10 16;
(* lsl	x10, x10, #48                               #! PC = 0xaaaaaaab77d8 *)
shl x10 Lx10 48;
(* orr	x10, x10, x9, lsr #16                       #! PC = 0xaaaaaaab77dc *)
split Hx9 Lx9 x9 16;
add x10 x10 Hx9;
(* lsl	x9, x9, #48                                 #! PC = 0xaaaaaaab77e0 *)
shl x9 Lx9 48;
(* orr	x9, x9, x8, lsr #16                         #! PC = 0xaaaaaaab77e4 *)
split Hx8 Lx8 x8 16;
add x9 x9 Hx8;
(* lsl	x8, x8, #48                                 #! PC = 0xaaaaaaab77e8 *)
shl x8 Lx8 48;
(* orr	x8, x8, x7, lsr #16                         #! PC = 0xaaaaaaab77ec *)
split Hx7 Lx7 x7 16;
add x8 x8 Hx7;
(* lsl	x7, x7, #48                                 #! PC = 0xaaaaaaab77f0 *)
shl x7 Lx7 48;
(* orr	x7, x7, x6, lsr #16                         #! PC = 0xaaaaaaab77f4 *)
split Hx6 Lx6 x6 16;
add x7 x7 Hx6;
(* lsl	x6, x6, #48                                 #! PC = 0xaaaaaaab77f8 *)
shl x6 Lx6 48;
(* orr	x6, x6, x5, lsr #16                         #! PC = 0xaaaaaaab77fc *)
split Hx5 Lx5 x5 16;
add x6 x6 Hx5;
(* lsl	x5, x5, #48                                 #! PC = 0xaaaaaaab7800 *)
shl x5 Lx5 48;
(* orr	x5, x5, x4, lsr #16                         #! PC = 0xaaaaaaab7804 *)
split Hx4 Lx4 x4 16;
add x5 x5 Hx4;
(* lsl	x4, x4, #48                                 #! PC = 0xaaaaaaab7808 *)
shl x4 Lx4 48;
(* adds	x17, x4, x17                               #! PC = 0xaaaaaaab780c *)
adds carry x17 x4 x17;
(* adcs	x24, x5, x24                               #! PC = 0xaaaaaaab7810 *)
adcs carry x24 x5 x24 carry;
(* adcs	x25, x6, x25                               #! PC = 0xaaaaaaab7814 *)
adcs carry x25 x6 x25 carry;
(* adcs	x2, x7, x2                                 #! PC = 0xaaaaaaab7818 *)
adcs carry x2 x7 x2 carry;
(* adcs	x3, x8, x3                                 #! PC = 0xaaaaaaab781c *)
adcs carry x3 x8 x3 carry;
(* adcs	x11, x9, x11                               #! PC = 0xaaaaaaab7820 *)
adcs carry x11 x9 x11 carry;
(* adcs	x12, x10, x12                              #! PC = 0xaaaaaaab7824 *)
adcs carry x12 x10 x12 carry;
(* stp	x17, x24, [x1]                              #! EA = L0xffffffffe898; PC = 0xaaaaaaab7828 *)
mov L0xffffffffe898 x17;
mov L0xffffffffe8a0 x24;
(* adcs	x13, x26, xzr                              #! PC = 0xaaaaaaab782c *)
adcs carry x13 x26 0@uint64 carry;
(* adc	x14, xzr, xzr                               #! PC = 0xaaaaaaab7830 *)
adc x14 0@uint64 0@uint64 carry;
(* mul	x4, x15, x19                                #! PC = 0xaaaaaaab7834 *)
mull Hx15x19 x4 x15 x19;
(* umulh	x7, x15, x19                              #! PC = 0xaaaaaaab7838 *)
mov x7 Hx15x19;
(* mul	x5, x15, x20                                #! PC = 0xaaaaaaab783c *)
mull Hx15x20 x5 x15 x20;
(* umulh	x6, x15, x20                              #! PC = 0xaaaaaaab7840 *)
mov x6 Hx15x20;
(* mul	x26, x16, x19                               #! PC = 0xaaaaaaab7844 *)
mull Hx16x19 x26 x16 x19;
(* umulh	x27, x16, x19                             #! PC = 0xaaaaaaab7848 *)
mov x27 Hx16x19;
(* adds	x5, x5, x7                                 #! PC = 0xaaaaaaab784c *)
adds carry x5 x5 x7;
(* adc	x6, x6, xzr                                 #! PC = 0xaaaaaaab7850 *)
adc x6 x6 0@uint64 carry;
(* mul	x28, x15, x21                               #! PC = 0xaaaaaaab7854 *)
mull Hx15x21 x28 x15 x21;
(* umulh	x29, x15, x21                             #! PC = 0xaaaaaaab7858 *)
mov x29 Hx15x21;
(* adds	x5, x5, x26                                #! PC = 0xaaaaaaab785c *)
adds carry x5 x5 x26;
(* adcs	x6, x6, x27                                #! PC = 0xaaaaaaab7860 *)
adcs carry x6 x6 x27 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xaaaaaaab7864 *)
adc x7 0@uint64 0@uint64 carry;
(* mul	x26, x16, x20                               #! PC = 0xaaaaaaab7868 *)
mull Hx16x20 x26 x16 x20;
(* umulh	x27, x16, x20                             #! PC = 0xaaaaaaab786c *)
mov x27 Hx16x20;
(* adds	x6, x6, x28                                #! PC = 0xaaaaaaab7870 *)
adds carry x6 x6 x28;
(* adcs	x7, x7, x29                                #! PC = 0xaaaaaaab7874 *)
adcs carry x7 x7 x29 carry;
(* adc	x8, xzr, xzr                                #! PC = 0xaaaaaaab7878 *)
adc x8 0@uint64 0@uint64 carry;
(* mul	x28, x15, x22                               #! PC = 0xaaaaaaab787c *)
mull Hx15x22 x28 x15 x22;
(* umulh	x29, x15, x22                             #! PC = 0xaaaaaaab7880 *)
mov x29 Hx15x22;
(* adds	x6, x6, x26                                #! PC = 0xaaaaaaab7884 *)
adds carry x6 x6 x26;
(* adcs	x7, x7, x27                                #! PC = 0xaaaaaaab7888 *)
adcs carry x7 x7 x27 carry;
(* adc	x8, x8, xzr                                 #! PC = 0xaaaaaaab788c *)
adc x8 x8 0@uint64 carry;
(* mul	x26, x16, x21                               #! PC = 0xaaaaaaab7890 *)
mull Hx16x21 x26 x16 x21;
(* umulh	x27, x16, x21                             #! PC = 0xaaaaaaab7894 *)
mov x27 Hx16x21;
(* adds	x7, x7, x28                                #! PC = 0xaaaaaaab7898 *)
adds carry x7 x7 x28;
(* adcs	x8, x8, x29                                #! PC = 0xaaaaaaab789c *)
adcs carry x8 x8 x29 carry;
(* adc	x9, xzr, xzr                                #! PC = 0xaaaaaaab78a0 *)
adc x9 0@uint64 0@uint64 carry;
(* mul	x28, x16, x22                               #! PC = 0xaaaaaaab78a4 *)
mull Hx16x22 x28 x16 x22;
(* umulh	x29, x16, x22                             #! PC = 0xaaaaaaab78a8 *)
mov x29 Hx16x22;
(* adds	x7, x7, x26                                #! PC = 0xaaaaaaab78ac *)
adds carry x7 x7 x26;
(* adcs	x8, x8, x27                                #! PC = 0xaaaaaaab78b0 *)
adcs carry x8 x8 x27 carry;
(* adc	x9, x9, xzr                                 #! PC = 0xaaaaaaab78b4 *)
adc x9 x9 0@uint64 carry;
(* mul	x26, x15, x23                               #! PC = 0xaaaaaaab78b8 *)
mull Hx15x23 x26 x15 x23;
(* umulh	x27, x15, x23                             #! PC = 0xaaaaaaab78bc *)
mov x27 Hx15x23;
(* adds	x8, x8, x28                                #! PC = 0xaaaaaaab78c0 *)
adds carry x8 x8 x28;
(* adcs	x9, x9, x29                                #! PC = 0xaaaaaaab78c4 *)
adcs carry x9 x9 x29 carry;
(* adc	x10, xzr, xzr                               #! PC = 0xaaaaaaab78c8 *)
adc x10 0@uint64 0@uint64 carry;
(* mul	x28, x16, x23                               #! PC = 0xaaaaaaab78cc *)
mull Hx16x23 x28 x16 x23;
(* umulh	x29, x16, x23                             #! PC = 0xaaaaaaab78d0 *)
mov x29 Hx16x23;
(* adds	x8, x8, x26                                #! PC = 0xaaaaaaab78d4 *)
adds carry x8 x8 x26;
(* adcs	x9, x9, x27                                #! PC = 0xaaaaaaab78d8 *)
adcs carry x9 x9 x27 carry;
(* adc	x10, x10, xzr                               #! PC = 0xaaaaaaab78dc *)
adc x10 x10 0@uint64 carry;
(* adds	x9, x9, x28                                #! PC = 0xaaaaaaab78e0 *)
adds carry x9 x9 x28;
(* adc	x10, x10, x29                               #! PC = 0xaaaaaaab78e4 *)
adc x10 x10 x29 carry;
(* orr	x26, xzr, x10, lsr #16                      #! PC = 0xaaaaaaab78e8 *)
split x26 Lx10 x10 16;
(* lsl	x10, x10, #48                               #! PC = 0xaaaaaaab78ec *)
shl x10 Lx10 48;
(* orr	x10, x10, x9, lsr #16                       #! PC = 0xaaaaaaab78f0 *)
split Hx9 Lx9 x9 16;
add x10 x10 Hx9;
(* lsl	x9, x9, #48                                 #! PC = 0xaaaaaaab78f4 *)
shl x9 Lx9 48;
(* orr	x9, x9, x8, lsr #16                         #! PC = 0xaaaaaaab78f8 *)
split Hx8 Lx8 x8 16;
add x9 x9 Hx8;
(* lsl	x8, x8, #48                                 #! PC = 0xaaaaaaab78fc *)
shl x8 Lx8 48;
(* orr	x8, x8, x7, lsr #16                         #! PC = 0xaaaaaaab7900 *)
split Hx7 Lx7 x7 16;
add x8 x8 Hx7;
(* lsl	x7, x7, #48                                 #! PC = 0xaaaaaaab7904 *)
shl x7 Lx7 48;
(* orr	x7, x7, x6, lsr #16                         #! PC = 0xaaaaaaab7908 *)
split Hx6 Lx6 x6 16;
add x7 x7 Hx6;
(* lsl	x6, x6, #48                                 #! PC = 0xaaaaaaab790c *)
shl x6 Lx6 48;
(* orr	x6, x6, x5, lsr #16                         #! PC = 0xaaaaaaab7910 *)
split Hx5 Lx5 x5 16;
add x6 x6 Hx5;
(* lsl	x5, x5, #48                                 #! PC = 0xaaaaaaab7914 *)
shl x5 Lx5 48;
(* orr	x5, x5, x4, lsr #16                         #! PC = 0xaaaaaaab7918 *)
split Hx4 Lx4 x4 16;
add x5 x5 Hx4;
(* lsl	x4, x4, #48                                 #! PC = 0xaaaaaaab791c *)
shl x4 Lx4 48;
(* adds	x25, x4, x25                               #! PC = 0xaaaaaaab7920 *)
adds carry x25 x4 x25;
(* adcs	x2, x5, x2                                 #! PC = 0xaaaaaaab7924 *)
adcs carry x2 x5 x2 carry;
(* ldp	x19, x20, [x0, #96]                         #! EA = L0xffffffffe0e8; Value = 0x88771e954ade0833; PC = 0xaaaaaaab7928 *)
mov x19 L0xffffffffe0e8;
mov x20 L0xffffffffe0f0;
(* adcs	x3, x6, x3                                 #! PC = 0xaaaaaaab792c *)
adcs carry x3 x6 x3 carry;
(* adcs	x11, x7, x11                               #! PC = 0xaaaaaaab7930 *)
adcs carry x11 x7 x11 carry;
(* ldp	x21, x22, [x0, #112]                        #! EA = L0xffffffffe0f8; Value = 0x0bab425cce8796a9; PC = 0xaaaaaaab7934 *)
mov x21 L0xffffffffe0f8;
mov x22 L0xffffffffe100;
(* adcs	x12, x8, x12                               #! PC = 0xaaaaaaab7938 *)
adcs carry x12 x8 x12 carry;
(* adcs	x13, x9, x13                               #! PC = 0xaaaaaaab793c *)
adcs carry x13 x9 x13 carry;
(* ldp	x23, x24, [x0, #128]                        #! EA = L0xffffffffe108; Value = 0xd7b02a66f90f30c1; PC = 0xaaaaaaab7940 *)
mov x23 L0xffffffffe108;
mov x24 L0xffffffffe110;
(* adcs	x14, x10, x14                              #! PC = 0xaaaaaaab7944 *)
adcs carry x14 x10 x14 carry;
(* adc	x15, x26, xzr                               #! PC = 0xaaaaaaab7948 *)
adc x15 x26 0@uint64 carry;
(* ldp	x4, x5, [x0, #144]                          #! EA = L0xffffffffe118; Value = 0x0bebd8d78166cadb; PC = 0xaaaaaaab794c *)
mov x4 L0xffffffffe118;
mov x5 L0xffffffffe120;
(* adds	x25, x19, x25                              #! PC = 0xaaaaaaab7950 *)
adds carry x25 x19 x25;
(* ldr	x29, [sp, #80]                              #! EA = L0xffffffffdf70; Value = 0x0000ffffffffdf80; PC = 0xaaaaaaab7954 *)
mov x29 L0xffffffffdf70;
(* adcs	x2, x20, x2                                #! PC = 0xaaaaaaab7958 *)
adcs carry x2 x20 x2 carry;
(* ldp	x27, x28, [sp, #64]                         #! EA = L0xffffffffdf60; Value = 0x0000ffffffffe7a8; PC = 0xaaaaaaab795c *)
mov x27 L0xffffffffdf60;
mov x28 L0xffffffffdf68;
(* adcs	x3, x21, x3                                #! PC = 0xaaaaaaab7960 *)
adcs carry x3 x21 x3 carry;
(* stp	x25, x2, [x1, #16]                          #! EA = L0xffffffffe8a8; PC = 0xaaaaaaab7964 *)
mov L0xffffffffe8a8 x25;
mov L0xffffffffe8b0 x2;
(* adcs	x11, x22, x11                              #! PC = 0xaaaaaaab7968 *)
adcs carry x11 x22 x11 carry;
(* ldp	x19, x20, [sp]                              #! EA = L0xffffffffdf20; Value = 0x0000ffffffffe088; PC = 0xaaaaaaab796c *)
mov x19 L0xffffffffdf20;
mov x20 L0xffffffffdf28;
(* adcs	x12, x23, x12                              #! PC = 0xaaaaaaab7970 *)
adcs carry x12 x23 x12 carry;
(* stp	x3, x11, [x1, #32]                          #! EA = L0xffffffffe8b8; PC = 0xaaaaaaab7974 *)
mov L0xffffffffe8b8 x3;
mov L0xffffffffe8c0 x11;
(* adcs	x13, x24, x13                              #! PC = 0xaaaaaaab7978 *)
adcs carry x13 x24 x13 carry;
(* ldp	x25, x26, [sp, #48]                         #! EA = L0xffffffffdf50; Value = 0x0000ffffffffe6b8; PC = 0xaaaaaaab797c *)
mov x25 L0xffffffffdf50;
mov x26 L0xffffffffdf58;
(* adcs	x14, x4, x14                               #! PC = 0xaaaaaaab7980 *)
adcs carry x14 x4 x14 carry;
(* stp	x12, x13, [x1, #48]                         #! EA = L0xffffffffe8c8; PC = 0xaaaaaaab7984 *)
mov L0xffffffffe8c8 x12;
mov L0xffffffffe8d0 x13;
(* ldp	x23, x24, [sp, #32]                         #! EA = L0xffffffffdf40; Value = 0x0000ffffffffdfe8; PC = 0xaaaaaaab7988 *)
mov x23 L0xffffffffdf40;
mov x24 L0xffffffffdf48;
(* adc	x15, x5, x15                                #! PC = 0xaaaaaaab798c *)
adc x15 x5 x15 carry;
(* ldp	x21, x22, [sp, #16]                         #! EA = L0xffffffffdf30; Value = 0x0000ffffffffe128; PC = 0xaaaaaaab7990 *)
mov x21 L0xffffffffdf30;
mov x22 L0xffffffffdf38;
(* stp	x14, x15, [x1, #64]                         #! EA = L0xffffffffe8d8; PC = 0xaaaaaaab7994 *)
mov L0xffffffffe8d8 x14;
mov L0xffffffffe8e0 x15;
(* add	sp, sp, #0x60                               #! PC = 0xaaaaaaab7998 *)
adds dontcare sp sp 0x60@uint64;
(* #! <- SP = 0xffffffffdf80 *)
#! 0xffffffffdf80 = 0xffffffffdf80;
(* #ret                                            #! PC = 0xaaaaaaab799c *)
#ret                                            #! 0xaaaaaaab799c = 0xaaaaaaab799c;

(* CUT 8 *)
cut eqmod (limbs 64 [0, 0, 0, 0, 0,  0, 0, 0, 0, 0,
                     L0xffffffffe898, L0xffffffffe8a0, L0xffffffffe8a8,
                     L0xffffffffe8b0, L0xffffffffe8b8, L0xffffffffe8c0,
                     L0xffffffffe8c8, L0xffffffffe8d0, L0xffffffffe8d8,
                     L0xffffffffe8e0])
          (limbs 64 [ar0, ar1, ar2, ar3, ar4, ar5, ar6, ar7, ar8, ar9] *
           limbs 64 [br0, br1, br2, br3, br4, br5, br6, br7, br8, br9] -
           limbs 64 [ai0, ai1, ai2, ai3, ai4, ai5, ai6, ai7, ai8, ai9] *
           limbs 64 [bi0, bi1, bi2, bi3, bi4, bi5, bi6, bi7, bi8, bi9])
          (limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9])
    prove with [ precondition, cuts [ 6 ] ]
 && limbs 64 [L0xffffffffe898, L0xffffffffe8a0, L0xffffffffe8a8,
              L0xffffffffe8b0, L0xffffffffe8b8, L0xffffffffe8c0,
              L0xffffffffe8c8, L0xffffffffe8d0, L0xffffffffe8d8,
              L0xffffffffe8e0] <u
    2@640 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9]
    prove with [ precondition, cuts [ 6 ] ];

(* ldr	x0, [x0, #4048]                             #! EA = L0xaaaaaaacbfd0; Value = 0x0000fffff7ffd6b0; PC = 0xaaaaaaaae610 *)
mov x0 L0xaaaaaaacbfd0;
(* ldr	x1, [sp, #744]                              #! EA = L0xffffffffe268; Value = 0xba8a7ab996303300; PC = 0xaaaaaaaae614 *)
mov x1 L0xffffffffe268;
(* ldr	x2, [x0]                                    #! EA = L0xfffff7ffd6b0; Value = 0xba8a7ab996303300; PC = 0xaaaaaaaae618 *)
mov x2 L0xfffff7ffd6b0;
(* subs	x1, x1, x2                                 #! PC = 0xaaaaaaaae61c *)
subc carry x1 x1 x2;
(* mov	x2, #0x0                   	// #0           #! PC = 0xaaaaaaaae620 *)
mov x2 0x0@uint64;
(* #b.ne	0xaaaaaaaae648 <fp2mul610_mont+296>  // b.any#! PC = 0xaaaaaaaae624 *)
#b.ne	0xaaaaaaaae648 <fp2mul610_mont+296>  // b.any#! 0xaaaaaaaae624 = 0xaaaaaaaae624;
(* ldp	x29, x30, [sp]                              #! EA = L0xffffffffdf80; Value = 0x0000ffffffffe270; PC = 0xaaaaaaaae628 *)
mov x29 L0xffffffffdf80;
mov x30 L0xffffffffdf88;
(* ldp	x19, x20, [sp, #16]                         #! EA = L0xffffffffdf90; Value = 0x0000ffffffffe4d8; PC = 0xaaaaaaaae62c *)
mov x19 L0xffffffffdf90;
mov x20 L0xffffffffdf98;
(* ldp	x21, x22, [sp, #32]                         #! EA = L0xffffffffdfa0; Value = 0x0000ffffffffe398; PC = 0xaaaaaaaae630 *)
mov x21 L0xffffffffdfa0;
mov x22 L0xffffffffdfa8;
(* ldp	x23, x24, [sp, #48]                         #! EA = L0xffffffffdfb0; Value = 0x0000ffffffffe438; PC = 0xaaaaaaaae634 *)
mov x23 L0xffffffffdfb0;
mov x24 L0xffffffffdfb8;
(* ldp	x25, x26, [sp, #64]                         #! EA = L0xffffffffdfc0; Value = 0x0000ffffffffe6b8; PC = 0xaaaaaaaae638 *)
mov x25 L0xffffffffdfc0;
mov x26 L0xffffffffdfc8;
(* ldr	x27, [sp, #80]                              #! EA = L0xffffffffdfd0; Value = 0x0000ffffffffe758; PC = 0xaaaaaaaae63c *)
mov x27 L0xffffffffdfd0;
(* add	sp, sp, #0x2f0                              #! PC = 0xaaaaaaaae640 *)
adds dontcare sp sp 0x2f0@uint64;
(* #! <- SP = 0xffffffffe270 *)
#! 0xffffffffe270 = 0xffffffffe270;
(* #ret                                            #! PC = 0xaaaaaaaae644 *)
#ret                                            #! 0xaaaaaaaae644 = 0xaaaaaaaae644;

mov cr0 L0xffffffffe898; mov cr1 L0xffffffffe8a0; mov cr2 L0xffffffffe8a8;
mov cr3 L0xffffffffe8b0; mov cr4 L0xffffffffe8b8; mov cr5 L0xffffffffe8c0;
mov cr6 L0xffffffffe8c8; mov cr7 L0xffffffffe8d0; mov cr8 L0xffffffffe8d8;
mov cr9 L0xffffffffe8e0;
mov ci0 L0xffffffffe8e8; mov ci1 L0xffffffffe8f0; mov ci2 L0xffffffffe8f8;
mov ci3 L0xffffffffe900; mov ci4 L0xffffffffe908; mov ci5 L0xffffffffe910;
mov ci6 L0xffffffffe918; mov ci7 L0xffffffffe920; mov ci8 L0xffffffffe928;
mov ci9 L0xffffffffe930;

ghost I@uint64 : true && true;

{
  eqmod (2**640 *
         (    limbs 64 [cr0, cr1, cr2, cr3, cr4, cr5, cr6, cr7, cr8, cr9] +
          I * limbs 64 [ci0, ci1, ci2, ci3, ci4, ci5, ci6, ci7, ci8, ci9]))
        ((    limbs 64 [ar0, ar1, ar2, ar3, ar4, ar5, ar6, ar7, ar8, ar9] +
          I * limbs 64 [ai0, ai1, ai2, ai3, ai4, ai5, ai6, ai7, ai8, ai9]) *
         (    limbs 64 [br0, br1, br2, br3, br4, br5, br6, br7, br8, br9] +
          I * limbs 64 [bi0, bi1, bi2, bi3, bi4, bi5, bi6, bi7, bi8, bi9]))
        [ I**2 + 1, limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9] ]
  prove with [ precondition, cuts [ 7, 8 ] ]
&&
  and [limbs 64 [cr0, cr1, cr2, cr3, cr4, cr5, cr6, cr7, cr8, cr9] <u
       2@640 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9],
       limbs 64 [ci0, ci1, ci2, ci3, ci4, ci5, ci6, ci7, ci8, ci9] <u
       2@640 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9]]
  prove with [ cuts [ 7, 8 ] ]
}

