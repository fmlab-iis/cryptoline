(* NOTE: output range is slightly different from C comments *)
(* quine:  -v -isafety -jobs 24 -slicing -no_carry_constraint fpneg503.cl
Parsing Cryptoline file:                [OK]            0.002069 seconds
Checking well-formedness:               [OK]            0.000511 seconds
Transforming to SSA form:               [OK]            0.000212 seconds
Normalizing specification:              [OK]            0.000273 seconds
Rewriting assignments:                  [OK]            0.000352 seconds
Verifying program safety:               [OK]            0.001428 seconds
Verifying range specification:          [OK]            2.286612 seconds
Rewriting value-preserved casting:      [OK]            0.000038 seconds
Verifying algebraic specification:      [OK]            0.000381 seconds
Verification result:                    [OK]            2.292497 seconds
*)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
           uint64 a4, uint64 a5, uint64 a6, uint64 a7,
           uint64 m0, uint64 m1, uint64 m2, uint64 m3,
           uint64 m4, uint64 m5, uint64 m6, uint64 m7) =
{
  true
&&
  and [
  limbs 64 [a0, a1, a2, a3, a4, a5, a6, a7] <u
  2@512 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7],
  m0=0xFFFFFFFFFFFFFFFF@64, m1=0xFFFFFFFFFFFFFFFF@64,
  m2=0xFFFFFFFFFFFFFFFF@64, m3=0xABFFFFFFFFFFFFFF@64,
  m4=0x13085BDA2211E7A0@64, m5=0x1B9BF6C87B7E7DAF@64,
  m6=0x6045C6BDDA77A4D0@64, m7=0x004066F541811E1E@64 ]
}

mov L0xffffffffe838 a0; mov L0xffffffffe840 a1;
mov L0xffffffffe848 a2; mov L0xffffffffe850 a3;
mov L0xffffffffe858 a4; mov L0xffffffffe860 a5;
mov L0xffffffffe868 a6; mov L0xffffffffe870 a7;

mov L0xaaaaaaab9130 0xFFFFFFFFFFFFFFFE@uint64;
mov L0xaaaaaaab9138 0xFFFFFFFFFFFFFFFF@uint64;
mov L0xaaaaaaab9140 0xFFFFFFFFFFFFFFFF@uint64;
mov L0xaaaaaaab9148 0x57FFFFFFFFFFFFFF@uint64;
mov L0xaaaaaaab9150 0x2610B7B44423CF41@uint64;
mov L0xaaaaaaab9158 0x3737ED90F6FCFB5E@uint64;
mov L0xaaaaaaab9160 0xC08B8D7BB4EF49A0@uint64;
mov L0xaaaaaaab9168 0x0080CDEA83023C3C@uint64;

nondet L0xaaaaaaacafc8@uint64;

(* #! -> SP = 0xffffffffe6f0 *)
#! 0xffffffffe6f0 = 0xffffffffe6f0;
(* ldp	x2, x4, [x0]                                #! EA = L0xffffffffe838; Value = 0xec4aff517369c668; PC = 0xaaaaaaab5824 *)
mov x2 L0xffffffffe838;
mov x4 L0xffffffffe840;
(* ldr	x1, [x1, #4040]                             #! EA = L0xaaaaaaacafc8; Value = 0x0000aaaaaaab9130; PC = 0xaaaaaaab5828 *)
mov x1 L0xaaaaaaacafc8;
(* ldr	x8, [x0, #32]                               #! EA = L0xffffffffe858; Value = 0x479afc5794fb4ac5; PC = 0xaaaaaaab582c *)
mov x8 L0xffffffffe858;
(* ldp	x5, x3, [x1]                                #! EA = L0xaaaaaaab9130; Value = 0xfffffffffffffffe; PC = 0xaaaaaaab5830 *)
mov x5 L0xaaaaaaab9130;
mov x3 L0xaaaaaaab9138;
(* subs	x7, x5, x2                                 #! PC = 0xaaaaaaab5834 *)
subc carry x7 x5 x2;
(* csetm	x5, cc  // cc = lo, ul, last              #! PC = 0xaaaaaaab5838 *)
cmov x5 carry 0@uint64 0xffffffffffffffff@uint64;
(* subs	x6, x3, x4                                 #! PC = 0xaaaaaaab583c *)
subc carry x6 x3 x4;
(* csetm	x4, cc  // cc = lo, ul, last              #! PC = 0xaaaaaaab5840 *)
cmov x4 carry 0@uint64 0xffffffffffffffff@uint64;
(* lsr	x5, x5, #63                                 #! PC = 0xaaaaaaab5844 *)
split x5 dontcare x5 63;
(* subs	x5, x6, x5                                 #! PC = 0xaaaaaaab5848 *)
subc carry x5 x6 x5;
(* stp	x7, x5, [x0]                                #! EA = L0xffffffffe838; PC = 0xaaaaaaab584c *)
mov L0xffffffffe838 x7;
mov L0xffffffffe840 x5;
(* sbc	x4, x4, xzr                                 #! PC = 0xaaaaaaab5850 *)
sbcs dontcare x4 x4 0@uint64 carry;
(* ldr	x3, [x0, #16]                               #! EA = L0xffffffffe848; Value = 0x8de7e81bf854c27c; PC = 0xaaaaaaab5854 *)
mov x3 L0xffffffffe848;
(* ldr	x2, [x1, #16]                               #! EA = L0xaaaaaaab9140; Value = 0xffffffffffffffff; PC = 0xaaaaaaab5858 *)
mov x2 L0xaaaaaaab9140;
(* subs	x6, x2, x3                                 #! PC = 0xaaaaaaab585c *)
subc carry x6 x2 x3;
(* lsr	x2, x4, #63                                 #! PC = 0xaaaaaaab5860 *)
split x2 dontcare x4 63;
(* csetm	x3, cc  // cc = lo, ul, last              #! PC = 0xaaaaaaab5864 *)
cmov x3 carry 0@uint64 0xffffffffffffffff@uint64;
(* subs	x2, x6, x2                                 #! PC = 0xaaaaaaab5868 *)
subc carry x2 x6 x2;
(* str	x2, [x0, #16]                               #! EA = L0xffffffffe848; PC = 0xaaaaaaab586c *)
mov L0xffffffffe848 x2;
(* sbc	x3, x3, xzr                                 #! PC = 0xaaaaaaab5870 *)
sbcs dontcare x3 x3 0@uint64 carry;
(* ldp	x5, x2, [x1, #24]                           #! EA = L0xaaaaaaab9148; Value = 0x57ffffffffffffff; PC = 0xaaaaaaab5874 *)
mov x5 L0xaaaaaaab9148;
mov x2 L0xaaaaaaab9150;
(* lsr	x3, x3, #63                                 #! PC = 0xaaaaaaab5878 *)
split x3 dontcare x3 63;
(* ldr	x4, [x0, #24]                               #! EA = L0xffffffffe850; Value = 0xeec99f33632e5a76; PC = 0xaaaaaaab587c *)
mov x4 L0xffffffffe850;
(* cmp	x5, x4                                      #! PC = 0xaaaaaaab5880 *)
subs carry dontcare x5 x4;
(* sub	x4, x5, x4                                  #! PC = 0xaaaaaaab5884 *)
subs dontcare x4 x5 x4;
(* csetm	x6, cc  // cc = lo, ul, last              #! PC = 0xaaaaaaab5888 *)
cmov x6 carry 0@uint64 0xffffffffffffffff@uint64;
(* subs	x3, x4, x3                                 #! PC = 0xaaaaaaab588c *)
subc carry x3 x4 x3;
(* sub	x7, x2, x8                                  #! PC = 0xaaaaaaab5890 *)
subs dontcare x7 x2 x8;
(* sbc	x5, x6, xzr                                 #! PC = 0xaaaaaaab5894 *)
sbcs dontcare x5 x6 0@uint64 carry;
(* cmp	x2, x8                                      #! PC = 0xaaaaaaab5898 *)
subs carry dontcare x2 x8;
(* ldp	x6, x8, [x0, #40]                           #! EA = L0xffffffffe860; Value = 0xb8c2f28f9b86df76; PC = 0xaaaaaaab589c *)
mov x6 L0xffffffffe860;
mov x8 L0xffffffffe868;
(* lsr	x5, x5, #63                                 #! PC = 0xaaaaaaab58a0 *)
split x5 dontcare x5 63;
(* csetm	x2, cc  // cc = lo, ul, last              #! PC = 0xaaaaaaab58a4 *)
cmov x2 carry 0@uint64 0xffffffffffffffff@uint64;
(* subs	x7, x7, x5                                 #! PC = 0xaaaaaaab58a8 *)
subc carry x7 x7 x5;
(* ldr	x4, [x1, #40]                               #! EA = L0xaaaaaaab9158; Value = 0x3737ed90f6fcfb5e; PC = 0xaaaaaaab58ac *)
mov x4 L0xaaaaaaab9158;
(* sbc	x2, x2, xzr                                 #! PC = 0xaaaaaaab58b0 *)
sbcs dontcare x2 x2 0@uint64 carry;
(* stp	x3, x7, [x0, #24]                           #! EA = L0xffffffffe850; PC = 0xaaaaaaab58b4 *)
mov L0xffffffffe850 x3;
mov L0xffffffffe858 x7;
(* cmp	x4, x6                                      #! PC = 0xaaaaaaab58b8 *)
subs carry dontcare x4 x6;
(* lsr	x2, x2, #63                                 #! PC = 0xaaaaaaab58bc *)
split x2 dontcare x2 63;
(* sub	x4, x4, x6                                  #! PC = 0xaaaaaaab58c0 *)
subs dontcare x4 x4 x6;
(* csetm	x5, cc  // cc = lo, ul, last              #! PC = 0xaaaaaaab58c4 *)
cmov x5 carry 0@uint64 0xffffffffffffffff@uint64;
(* subs	x2, x4, x2                                 #! PC = 0xaaaaaaab58c8 *)
subc carry x2 x4 x2;
(* ldr	x3, [x1, #48]                               #! EA = L0xaaaaaaab9160; Value = 0xc08b8d7bb4ef49a0; PC = 0xaaaaaaab58cc *)
mov x3 L0xaaaaaaab9160;
(* sbc	x4, x5, xzr                                 #! PC = 0xaaaaaaab58d0 *)
sbcs dontcare x4 x5 0@uint64 carry;
(* ldr	x7, [x0, #56]                               #! EA = L0xffffffffe870; Value = 0x001bd62bfff363ef; PC = 0xaaaaaaab58d4 *)
mov x7 L0xffffffffe870;
(* subs	x6, x3, x8                                 #! PC = 0xaaaaaaab58d8 *)
subc carry x6 x3 x8;
(* lsr	x4, x4, #63                                 #! PC = 0xaaaaaaab58dc *)
split x4 dontcare x4 63;
(* csetm	x3, cc  // cc = lo, ul, last              #! PC = 0xaaaaaaab58e0 *)
cmov x3 carry 0@uint64 0xffffffffffffffff@uint64;
(* ldr	x5, [x1, #56]                               #! EA = L0xaaaaaaab9168; Value = 0x0080cdea83023c3c; PC = 0xaaaaaaab58e4 *)
mov x5 L0xaaaaaaab9168;
(* subs	x4, x6, x4                                 #! PC = 0xaaaaaaab58e8 *)
subc carry x4 x6 x4;
(* sbc	x1, x3, xzr                                 #! PC = 0xaaaaaaab58ec *)
sbcs dontcare x1 x3 0@uint64 carry;
(* str	x2, [x0, #40]                               #! EA = L0xffffffffe860; PC = 0xaaaaaaab58f0 *)
mov L0xffffffffe860 x2;
(* subs	x5, x5, x7                                 #! PC = 0xaaaaaaab58f4 *)
subc carry x5 x5 x7;
(* sub	x1, x5, x1, lsr #63                         #! PC = 0xaaaaaaab58f8 *)
(* sub x1 x5 x1, lsr; *)
(* NOTE: fine tune *)
split x1H dontcare x1 63;
subs dontcare x1 x5 x1H;
(* stp	x4, x1, [x0, #48]                           #! EA = L0xffffffffe868; PC = 0xaaaaaaab58fc *)
mov L0xffffffffe868 x4;
mov L0xffffffffe870 x1;
(* #! <- SP = 0xffffffffe6f0 *)
#! 0xffffffffe6f0 = 0xffffffffe6f0;
(* #ret                                            #! PC = 0xaaaaaaab5900 *)
#ret                                            #! 0xaaaaaaab5900 = 0xaaaaaaab5900;

mov c0 L0xffffffffe838;
mov c1 L0xffffffffe840;
mov c2 L0xffffffffe848;
mov c3 L0xffffffffe850;
mov c4 L0xffffffffe858;
mov c5 L0xffffffffe860;
mov c6 L0xffffffffe868;
mov c7 L0xffffffffe870;

{
  true
&&
  and [eqmod (limbs 64 [c0, c1, c2, c3, c4, c5, c6, c7] +
              limbs 64 [a0, a1, a2, a3, a4, a5, a6, a7])
             0@512
             limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7],
       limbs 64 [c0, c1, c2, c3, c4, c5, c6, c7] <=u
       2@512 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7]]
}

