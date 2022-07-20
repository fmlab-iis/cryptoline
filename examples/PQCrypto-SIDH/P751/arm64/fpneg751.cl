(* quine: -v -isafety fpneg751.cl
Parsing Cryptoline file:                [OK]            0.003658 seconds
Checking well-formedness:               [OK]            0.000438 seconds
Transforming to SSA form:               [OK]            0.000176 seconds
Normalizing specification:              [OK]            0.000220 seconds
Rewriting assignments:                  [OK]            0.000625 seconds
Verifying program safety:               [OK]            0.000111 seconds
Verifying range specification:          [OK]            6.705328 seconds
Rewriting value-preserved casting:      [OK]            0.000046 seconds
Verifying algebraic specification:      [OK]            0.000444 seconds
Verification result:                    [OK]            6.711662 seconds
*)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
           uint64 a4, uint64 a5, uint64 a6, uint64 a7,
           uint64 a8, uint64 a9, uint64 aa, uint64 ab,
           uint64 m0, uint64 m1, uint64 m2, uint64 m3,
           uint64 m4, uint64 m5, uint64 m6, uint64 m7,
           uint64 m8, uint64 m9, uint64 ma, uint64 mb) =
{
  true
&&
  and [limbs 64 [a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, aa, ab] <u
       2@768 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, ma, mb],
       m0=0xFFFFFFFFFFFFFFFF@64, m1=0xFFFFFFFFFFFFFFFF@64,
       m2=0xFFFFFFFFFFFFFFFF@64, m3=0xFFFFFFFFFFFFFFFF@64,
       m4=0xFFFFFFFFFFFFFFFF@64, m5=0xEEAFFFFFFFFFFFFF@64,
       m6=0xE3EC968549F878A8@64, m7=0xDA959B1A13F7CC76@64,
       m8=0x084E9867D6EBE876@64, m9=0x8562B5045CB25748@64,
       ma=0x0E12909F97BADC66@64, mb=0x00006FE5D541F71C@64]
}

mov L0xffffffffe718 a0; mov L0xffffffffe720 a1; mov L0xffffffffe728 a2;
mov L0xffffffffe730 a3; mov L0xffffffffe738 a4; mov L0xffffffffe740 a5;
mov L0xffffffffe748 a6; mov L0xffffffffe750 a7; mov L0xffffffffe758 a8;
mov L0xffffffffe760 a9; mov L0xffffffffe768 aa; mov L0xffffffffe770 ab;

mov L0xaaaaaaabbbc0 0xFFFFFFFFFFFFFFFE@uint64;
mov L0xaaaaaaabbbc8 0xFFFFFFFFFFFFFFFF@uint64;
mov L0xaaaaaaabbbd0 0xFFFFFFFFFFFFFFFF@uint64;
mov L0xaaaaaaabbbd8 0xFFFFFFFFFFFFFFFF@uint64;
mov L0xaaaaaaabbbe0 0xFFFFFFFFFFFFFFFF@uint64;
mov L0xaaaaaaabbbe8 0xDD5FFFFFFFFFFFFF@uint64;
mov L0xaaaaaaabbbf0 0xC7D92D0A93F0F151@uint64;
mov L0xaaaaaaabbbf8 0xB52B363427EF98ED@uint64;
mov L0xaaaaaaabbc00 0x109D30CFADD7D0ED@uint64;
mov L0xaaaaaaabbc08 0x0AC56A08B964AE90@uint64;
mov L0xaaaaaaabbc10 0x1C25213F2F75B8CD@uint64;
mov L0xaaaaaaabbc18 0x0000DFCBAA83EE38@uint64;

nondet L0xaaaaaaacdfc8@uint64;

(* #! -> SP = 0xffffffffe570 *)
#! 0xffffffffe570 = 0xffffffffe570;
(* ldp	x2, x4, [x0]                                #! EA = L0xffffffffe718; Value = 0xec4aff517369c667; PC = 0xaaaaaaab6fd4 *)
mov x2 L0xffffffffe718;
mov x4 L0xffffffffe720;
(* ldr	x1, [x1, #4040]                             #! EA = L0xaaaaaaacdfc8; Value = 0x0000aaaaaaabbbc0; PC = 0xaaaaaaab6fd8 *)
mov x1 L0xaaaaaaacdfc8;
(* ldr	x8, [x0, #40]                               #! EA = L0xffffffffe740; Value = 0xd45ee95817055d25; PC = 0xaaaaaaab6fdc *)
mov x8 L0xffffffffe740;
(* ldp	x5, x3, [x1]                                #! EA = L0xaaaaaaabbbc0; Value = 0xfffffffffffffffe; PC = 0xaaaaaaab6fe0 *)
mov x5 L0xaaaaaaabbbc0;
mov x3 L0xaaaaaaabbbc8;
(* subs	x7, x5, x2                                 #! PC = 0xaaaaaaab6fe4 *)
subc carry x7 x5 x2;
(* csetm	x5, cc  // cc = lo, ul, last              #! PC = 0xaaaaaaab6fe8 *)
cmov x5 carry 0@uint64 0xffffffffffffffff@uint64;
(* subs	x6, x3, x4                                 #! PC = 0xaaaaaaab6fec *)
subc carry x6 x3 x4;
(* csetm	x3, cc  // cc = lo, ul, last              #! PC = 0xaaaaaaab6ff0 *)
cmov x3 carry 0@uint64 0xffffffffffffffff@uint64;
(* lsr	x5, x5, #63                                 #! PC = 0xaaaaaaab6ff4 *)
split x5 dontcare x5 63;
(* subs	x5, x6, x5                                 #! PC = 0xaaaaaaab6ff8 *)
subc carry x5 x6 x5;
(* stp	x7, x5, [x0]                                #! EA = L0xffffffffe718; PC = 0xaaaaaaab6ffc *)
mov L0xffffffffe718 x7;
mov L0xffffffffe720 x5;
(* sbc	x3, x3, xzr                                 #! PC = 0xaaaaaaab7000 *)
sbcs dontcare x3 x3 0@uint64 carry;
(* ldr	x4, [x0, #16]                               #! EA = L0xffffffffe728; Value = 0x8de7e81bf854c27c; PC = 0xaaaaaaab7004 *)
mov x4 L0xffffffffe728;
(* ldr	x2, [x1, #16]                               #! EA = L0xaaaaaaabbbd0; Value = 0xffffffffffffffff; PC = 0xaaaaaaab7008 *)
mov x2 L0xaaaaaaabbbd0;
(* ldr	x7, [x0, #24]                               #! EA = L0xffffffffe730; Value = 0x9ac99f33632e5a76; PC = 0xaaaaaaab700c *)
mov x7 L0xffffffffe730;
(* subs	x6, x2, x4                                 #! PC = 0xaaaaaaab7010 *)
subc carry x6 x2 x4;
(* lsr	x2, x3, #63                                 #! PC = 0xaaaaaaab7014 *)
split x2 dontcare x3 63;
(* csetm	x4, cc  // cc = lo, ul, last              #! PC = 0xaaaaaaab7018 *)
cmov x4 carry 0@uint64 0xffffffffffffffff@uint64;
(* subs	x2, x6, x2                                 #! PC = 0xaaaaaaab701c *)
subc carry x2 x6 x2;
(* str	x2, [x0, #16]                               #! EA = L0xffffffffe728; PC = 0xaaaaaaab7020 *)
mov L0xffffffffe728 x2;
(* ldp	x5, x2, [x1, #24]                           #! EA = L0xaaaaaaabbbd8; Value = 0xffffffffffffffff; PC = 0xaaaaaaab7024 *)
mov x5 L0xaaaaaaabbbd8;
mov x2 L0xaaaaaaabbbe0;
(* sbc	x4, x4, xzr                                 #! PC = 0xaaaaaaab7028 *)
sbcs dontcare x4 x4 0@uint64 carry;
(* ldr	x3, [x0, #32]                               #! EA = L0xffffffffe738; Value = 0x5aa35831b70d3266; PC = 0xaaaaaaab702c *)
mov x3 L0xffffffffe738;
(* lsr	x4, x4, #63                                 #! PC = 0xaaaaaaab7030 *)
split x4 dontcare x4 63;
(* cmp	x5, x7                                      #! PC = 0xaaaaaaab7034 *)
subs carry dontcare x5 x7;
(* sub	x5, x5, x7                                  #! PC = 0xaaaaaaab7038 *)
subc dontcare x5 x5 x7;
(* csetm	x6, cc  // cc = lo, ul, last              #! PC = 0xaaaaaaab703c *)
cmov x6 carry 0@uint64 0xffffffffffffffff@uint64;
(* subs	x4, x5, x4                                 #! PC = 0xaaaaaaab7040 *)
subc carry x4 x5 x4;
(* sbc	x6, x6, xzr                                 #! PC = 0xaaaaaaab7044 *)
sbcs dontcare x6 x6 0@uint64 carry;
(* sub	x7, x2, x3                                  #! PC = 0xaaaaaaab7048 *)
subc dontcare x7 x2 x3;
(* cmp	x2, x3                                      #! PC = 0xaaaaaaab704c *)
subs carry dontcare x2 x3;
(* lsr	x2, x6, #63                                 #! PC = 0xaaaaaaab7050 *)
split x2 dontcare x6 63;
(* csetm	x3, cc  // cc = lo, ul, last              #! PC = 0xaaaaaaab7054 *)
cmov x3 carry 0@uint64 0xffffffffffffffff@uint64;
(* subs	x7, x7, x2                                 #! PC = 0xaaaaaaab7058 *)
subc carry x7 x7 x2;
(* stp	x4, x7, [x0, #24]                           #! EA = L0xffffffffe730; PC = 0xaaaaaaab705c *)
mov L0xffffffffe730 x4;
mov L0xffffffffe738 x7;
(* sbc	x3, x3, xzr                                 #! PC = 0xaaaaaaab7060 *)
sbcs dontcare x3 x3 0@uint64 carry;
(* ldp	x5, x2, [x1, #40]                           #! EA = L0xaaaaaaabbbe8; Value = 0xdd5fffffffffffff; PC = 0xaaaaaaab7064 *)
mov x5 L0xaaaaaaabbbe8;
mov x2 L0xaaaaaaabbbf0;
(* lsr	x3, x3, #63                                 #! PC = 0xaaaaaaab7068 *)
split x3 dontcare x3 63;
(* ldr	x4, [x0, #48]                               #! EA = L0xffffffffe748; Value = 0x1154b49bc6cdb2ab; PC = 0xaaaaaaab706c *)
mov x4 L0xffffffffe748;
(* cmp	x5, x8                                      #! PC = 0xaaaaaaab7070 *)
subs carry dontcare x5 x8;
(* sub	x5, x5, x8                                  #! PC = 0xaaaaaaab7074 *)
subc dontcare x5 x5 x8;
(* csetm	x6, cc  // cc = lo, ul, last              #! PC = 0xaaaaaaab7078 *)
cmov x6 carry 0@uint64 0xffffffffffffffff@uint64;
(* subs	x3, x5, x3                                 #! PC = 0xaaaaaaab707c *)
subc carry x3 x5 x3;
(* sbc	x6, x6, xzr                                 #! PC = 0xaaaaaaab7080 *)
sbcs dontcare x6 x6 0@uint64 carry;
(* subs	x7, x2, x4                                 #! PC = 0xaaaaaaab7084 *)
subc carry x7 x2 x4;
(* csetm	x4, cc  // cc = lo, ul, last              #! PC = 0xaaaaaaab7088 *)
cmov x4 carry 0@uint64 0xffffffffffffffff@uint64;
(* str	x3, [x0, #40]                               #! EA = L0xffffffffe740; PC = 0xaaaaaaab708c *)
mov L0xffffffffe740 x3;
(* lsr	x2, x6, #63                                 #! PC = 0xaaaaaaab7090 *)
split x2 dontcare x6 63;
(* subs	x7, x7, x2                                 #! PC = 0xaaaaaaab7094 *)
subc carry x7 x7 x2;
(* ldr	x8, [x0, #56]                               #! EA = L0xffffffffe750; Value = 0x87dc3d214174820e; PC = 0xaaaaaaab7098 *)
mov x8 L0xffffffffe750;
(* sbc	x4, x4, xzr                                 #! PC = 0xaaaaaaab709c *)
sbcs dontcare x4 x4 0@uint64 carry;
(* ldr	x5, [x1, #56]                               #! EA = L0xaaaaaaabbbf8; Value = 0xb52b363427ef98ed; PC = 0xaaaaaaab70a0 *)
mov x5 L0xaaaaaaabbbf8;
(* lsr	x4, x4, #63                                 #! PC = 0xaaaaaaab70a4 *)
split x4 dontcare x4 63;
(* ldr	x3, [x0, #64]                               #! EA = L0xffffffffe758; Value = 0x67fce141a13ee970; PC = 0xaaaaaaab70a8 *)
mov x3 L0xffffffffe758;
(* cmp	x5, x8                                      #! PC = 0xaaaaaaab70ac *)
subs carry dontcare x5 x8;
(* sub	x5, x5, x8                                  #! PC = 0xaaaaaaab70b0 *)
subc dontcare x5 x5 x8;
(* csetm	x6, cc  // cc = lo, ul, last              #! PC = 0xaaaaaaab70b4 *)
cmov x6 carry 0@uint64 0xffffffffffffffff@uint64;
(* subs	x4, x5, x4                                 #! PC = 0xaaaaaaab70b8 *)
subc carry x4 x5 x4;
(* stp	x7, x4, [x0, #48]                           #! EA = L0xffffffffe748; PC = 0xaaaaaaab70bc *)
mov L0xffffffffe748 x7;
mov L0xffffffffe750 x4;
(* sbc	x5, x6, xzr                                 #! PC = 0xaaaaaaab70c0 *)
sbcs dontcare x5 x6 0@uint64 carry;
(* ldr	x2, [x1, #64]                               #! EA = L0xaaaaaaabbc00; Value = 0x109d30cfadd7d0ed; PC = 0xaaaaaaab70c4 *)
mov x2 L0xaaaaaaabbc00;
(* lsr	x5, x5, #63                                 #! PC = 0xaaaaaaab70c8 *)
split x5 dontcare x5 63;
(* ldr	x6, [x0, #72]                               #! EA = L0xffffffffe760; Value = 0x966bdcea977e013e; PC = 0xaaaaaaab70cc *)
mov x6 L0xffffffffe760;
(* sub	x7, x2, x3                                  #! PC = 0xaaaaaaab70d0 *)
subc dontcare x7 x2 x3;
(* cmp	x2, x3                                      #! PC = 0xaaaaaaab70d4 *)
subs carry dontcare x2 x3;
(* csetm	x3, cc  // cc = lo, ul, last              #! PC = 0xaaaaaaab70d8 *)
cmov x3 carry 0@uint64 0xffffffffffffffff@uint64;
(* subs	x5, x7, x5                                 #! PC = 0xaaaaaaab70dc *)
subc carry x5 x7 x5;
(* ldr	x2, [x1, #72]                               #! EA = L0xaaaaaaabbc08; Value = 0x0ac56a08b964ae90; PC = 0xaaaaaaab70e0 *)
mov x2 L0xaaaaaaabbc08;
(* sbc	x3, x3, xzr                                 #! PC = 0xaaaaaaab70e4 *)
sbcs dontcare x3 x3 0@uint64 carry;
(* subs	x4, x2, x6                                 #! PC = 0xaaaaaaab70e8 *)
subc carry x4 x2 x6;
(* lsr	x3, x3, #63                                 #! PC = 0xaaaaaaab70ec *)
split x3 dontcare x3 63;
(* csetm	x2, cc  // cc = lo, ul, last              #! PC = 0xaaaaaaab70f0 *)
cmov x2 carry 0@uint64 0xffffffffffffffff@uint64;
(* subs	x3, x4, x3                                 #! PC = 0xaaaaaaab70f4 *)
subc carry x3 x4 x3;
(* stp	x5, x3, [x0, #64]                           #! EA = L0xffffffffe758; PC = 0xaaaaaaab70f8 *)
mov L0xffffffffe758 x5;
mov L0xffffffffe760 x3;
(* sbc	x2, x2, xzr                                 #! PC = 0xaaaaaaab70fc *)
sbcs dontcare x2 x2 0@uint64 carry;
(* ldr	x3, [x1, #80]                               #! EA = L0xaaaaaaabbc10; Value = 0x1c25213f2f75b8cd; PC = 0xaaaaaaab7100 *)
mov x3 L0xaaaaaaabbc10;
(* ldr	x6, [x0, #80]                               #! EA = L0xffffffffe768; Value = 0xfb3bb0ec2a5c388f; PC = 0xaaaaaaab7104 *)
mov x6 L0xffffffffe768;
(* ldr	x5, [x1, #88]                               #! EA = L0xaaaaaaabbc18; Value = 0x0000dfcbaa83ee38; PC = 0xaaaaaaab7108 *)
mov x5 L0xaaaaaaabbc18;
(* cmp	x3, x6                                      #! PC = 0xaaaaaaab710c *)
subs carry dontcare x3 x6;
(* lsr	x1, x2, #63                                 #! PC = 0xaaaaaaab7110 *)
split x1 dontcare x2 63;
(* sub	x2, x3, x6                                  #! PC = 0xaaaaaaab7114 *)
subc dontcare x2 x3 x6;
(* ldr	x3, [x0, #88]                               #! EA = L0xffffffffe770; Value = 0x000018ec543caf32; PC = 0xaaaaaaab7118 *)
mov x3 L0xffffffffe770;
(* csetm	x4, cc  // cc = lo, ul, last              #! PC = 0xaaaaaaab711c *)
cmov x4 carry 0@uint64 0xffffffffffffffff@uint64;
(* subs	x1, x2, x1                                 #! PC = 0xaaaaaaab7120 *)
subc carry x1 x2 x1;
(* str	x1, [x0, #80]                               #! EA = L0xffffffffe768; PC = 0xaaaaaaab7124 *)
mov L0xffffffffe768 x1;
(* sbc	x1, x4, xzr                                 #! PC = 0xaaaaaaab7128 *)
sbcs dontcare x1 x4 0@uint64 carry;
(* subs	x5, x5, x3                                 #! PC = 0xaaaaaaab712c *)
subc carry x5 x5 x3;
(* sub	x1, x5, x1, lsr #63                         #! PC = 0xaaaaaaab7130 *)
split x1H dontcare x1 63;
subc dontcare x1 x5 x1H;
(* str	x1, [x0, #88]                               #! EA = L0xffffffffe770; PC = 0xaaaaaaab7134 *)
mov L0xffffffffe770 x1;
(* #! <- SP = 0xffffffffe570 *)
#! 0xffffffffe570 = 0xffffffffe570;
(* #ret                                            #! PC = 0xaaaaaaab7138 *)
#ret                                            #! 0xaaaaaaab7138 = 0xaaaaaaab7138;

mov c0 L0xffffffffe718; mov c1 L0xffffffffe720; mov c2 L0xffffffffe728;
mov c3 L0xffffffffe730; mov c4 L0xffffffffe738; mov c5 L0xffffffffe740;
mov c6 L0xffffffffe748; mov c7 L0xffffffffe750; mov c8 L0xffffffffe758;
mov c9 L0xffffffffe760; mov ca L0xffffffffe768; mov cb L0xffffffffe770;

{
  true
  &&
  and [eqsmod limbs 64 [c0,c1,c2,c3,c4,c5,c6,c7,c8,c9,ca,cb]
              (-1)@768 * limbs 64 [a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,aa,ab]
              limbs 64 [m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,ma,mb],
       limbs 64 [c0,c1,c2,c3,c4,c5,c6,c7,c8,c9,ca,cb] <=u
       2@768 * limbs 64 [m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,ma,mb]]
}

