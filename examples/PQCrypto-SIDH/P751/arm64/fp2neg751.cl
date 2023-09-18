(* quine: -v -isafety fp2neg751.cl
Parsing Cryptoline file:                [OK]            0.007120 seconds
Checking well-formedness:               [OK]            0.000459 seconds
Transforming to SSA form:               [OK]            0.000217 seconds
Normalizing specification:              [OK]            0.000295 seconds
Rewriting assignments:                  [OK]            0.000536 seconds
Verifying program safety:               [OK]            0.000131 seconds
Verifying range specification:          [OK]            8.190565 seconds
Rewriting value-preserved casting:      [OK]            0.000077 seconds
Verifying algebraic specification:      [OK]            0.000564 seconds
Verification result:                    [OK]            8.200808 seconds
*)

proc main (uint64 ar0, uint64 ar1, uint64 ar2, uint64 ar3,
           uint64 ar4, uint64 ar5, uint64 ar6, uint64 ar7,
           uint64 ar8, uint64 ar9, uint64 ara, uint64 arb,
           uint64 ai0, uint64 ai1, uint64 ai2, uint64 ai3,
           uint64 ai4, uint64 ai5, uint64 ai6, uint64 ai7,
           uint64 ai8, uint64 ai9, uint64 aia, uint64 aib,
           uint64 m0, uint64 m1, uint64 m2, uint64 m3,
           uint64 m4, uint64 m5, uint64 m6, uint64 m7,
           uint64 m8, uint64 m9, uint64 ma, uint64 mb) =
{
  true
&&
  and [limbs 64 [ar0,ar1,ar2,ar3,ar4,ar5,ar6,ar7,ar8,ar9,ara,arb] <u
       2@768 * limbs 64 [m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,ma,mb],
       limbs 64 [ai0,ai1,ai2,ai3,ai4,ai5,ai6,ai7,ai8,ai9,aia,aib] <u
       2@768 * limbs 64 [m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,ma,mb],
       m0=0xFFFFFFFFFFFFFFFF@64, m1=0xFFFFFFFFFFFFFFFF@64,
       m2=0xFFFFFFFFFFFFFFFF@64, m3=0xFFFFFFFFFFFFFFFF@64,
       m4=0xFFFFFFFFFFFFFFFF@64, m5=0xEEAFFFFFFFFFFFFF@64,
       m6=0xE3EC968549F878A8@64, m7=0xDA959B1A13F7CC76@64,
       m8=0x084E9867D6EBE876@64, m9=0x8562B5045CB25748@64,
       ma=0x0E12909F97BADC66@64, mb=0x00006FE5D541F71C@64]
}

mov L0xffffffffe3b8 ar0; mov L0xffffffffe3c0 ar1; mov L0xffffffffe3c8 ar2;
mov L0xffffffffe3d0 ar3; mov L0xffffffffe3d8 ar4; mov L0xffffffffe3e0 ar5;
mov L0xffffffffe3e8 ar6; mov L0xffffffffe3f0 ar7; mov L0xffffffffe3f8 ar8;
mov L0xffffffffe400 ar9; mov L0xffffffffe408 ara; mov L0xffffffffe410 arb;
mov L0xffffffffe418 ai0; mov L0xffffffffe420 ai1; mov L0xffffffffe428 ai2;
mov L0xffffffffe430 ai3; mov L0xffffffffe438 ai4; mov L0xffffffffe440 ai5;
mov L0xffffffffe448 ai6; mov L0xffffffffe450 ai7; mov L0xffffffffe458 ai8;
mov L0xffffffffe460 ai9; mov L0xffffffffe468 aia; mov L0xffffffffe470 aib;

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

nondet x0@uint64; nondet x19@uint64; nondet x29@uint64; nondet x30@uint64;
nondet sp@uint64;

nondet L0xaaaaaaacdfc8@uint64;

(* #! -> SP = 0xffffffffe0f0 *)
#! 0xffffffffe0f0 = 0xffffffffe0f0;
(* stp	x29, x30, [sp, #-32]!                       #! EA = L0xffffffffe0d0; PC = 0xaaaaaaaae194 *)
mov L0xffffffffe0d0 x29;
mov L0xffffffffe0d8 x30;
(* mov	x29, sp                                     #! PC = 0xaaaaaaaae198 *)
mov x29 sp;
(* str	x19, [sp, #16]                              #! EA = L0xffffffffe0e0; PC = 0xaaaaaaaae19c *)
mov L0xffffffffe0e0 x19;
(* mov	x19, x0                                     #! PC = 0xaaaaaaaae1a0 *)
mov x19 x0;
(* #bl	0xaaaaaaab6fd0 <fpneg751>                   #! PC = 0xaaaaaaaae1a4 *)
#bl	0xaaaaaaab6fd0 <fpneg751>                   #! 0xaaaaaaaae1a4 = 0xaaaaaaaae1a4;
(* #! -> SP = 0xffffffffe0d0 *)
#! 0xffffffffe0d0 = 0xffffffffe0d0;
(* ldp	x2, x4, [x0]                                #! EA = L0xffffffffe3b8; Value = 0xcf84246d5a43c63f; PC = 0xaaaaaaab6fd4 *)
mov x2 L0xffffffffe3b8;
mov x4 L0xffffffffe3c0;
(* ldr	x1, [x1, #4040]                             #! EA = L0xaaaaaaacdfc8; Value = 0x0000aaaaaaabbbc0; PC = 0xaaaaaaab6fd8 *)
mov x1 L0xaaaaaaacdfc8;
(* ldr	x8, [x0, #40]                               #! EA = L0xffffffffe3e0; Value = 0xa4346c0299e69158; PC = 0xaaaaaaab6fdc *)
mov x8 L0xffffffffe3e0;
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
(* stp	x7, x5, [x0]                                #! EA = L0xffffffffe3b8; PC = 0xaaaaaaab6ffc *)
mov L0xffffffffe3b8 x7;
mov L0xffffffffe3c0 x5;
(* sbc	x3, x3, xzr                                 #! PC = 0xaaaaaaab7000 *)
sbcs dontcare x3 x3 0@uint64 carry;
(* ldr	x4, [x0, #16]                               #! EA = L0xffffffffe3c8; Value = 0x71667993f99ac2a2; PC = 0xaaaaaaab7004 *)
mov x4 L0xffffffffe3c8;
(* ldr	x2, [x1, #16]                               #! EA = L0xaaaaaaabbbd0; Value = 0xffffffffffffffff; PC = 0xaaaaaaab7008 *)
mov x2 L0xaaaaaaabbbd0;
(* ldr	x7, [x0, #24]                               #! EA = L0xffffffffe3d0; Value = 0xd62cb596738bf766; PC = 0xaaaaaaab700c *)
mov x7 L0xffffffffe3d0;
(* subs	x6, x2, x4                                 #! PC = 0xaaaaaaab7010 *)
subc carry x6 x2 x4;
(* lsr	x2, x3, #63                                 #! PC = 0xaaaaaaab7014 *)
split x2 dontcare x3 63;
(* csetm	x4, cc  // cc = lo, ul, last              #! PC = 0xaaaaaaab7018 *)
cmov x4 carry 0@uint64 0xffffffffffffffff@uint64;
(* subs	x2, x6, x2                                 #! PC = 0xaaaaaaab701c *)
subc carry x2 x6 x2;
(* str	x2, [x0, #16]                               #! EA = L0xffffffffe3c8; PC = 0xaaaaaaab7020 *)
mov L0xffffffffe3c8 x2;
(* ldp	x5, x2, [x1, #24]                           #! EA = L0xaaaaaaabbbd8; Value = 0xffffffffffffffff; PC = 0xaaaaaaab7024 *)
mov x5 L0xaaaaaaabbbd8;
mov x2 L0xaaaaaaabbbe0;
(* sbc	x4, x4, xzr                                 #! PC = 0xaaaaaaab7028 *)
sbcs dontcare x4 x4 0@uint64 carry;
(* ldr	x3, [x0, #32]                               #! EA = L0xffffffffe3d8; Value = 0xd8b7b493e8306f7b; PC = 0xaaaaaaab702c *)
mov x3 L0xffffffffe3d8;
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
(* stp	x4, x7, [x0, #24]                           #! EA = L0xffffffffe3d0; PC = 0xaaaaaaab705c *)
mov L0xffffffffe3d0 x4;
mov L0xffffffffe3d8 x7;
(* sbc	x3, x3, xzr                                 #! PC = 0xaaaaaaab7060 *)
sbcs dontcare x3 x3 0@uint64 carry;
(* ldp	x5, x2, [x1, #40]                           #! EA = L0xaaaaaaabbbe8; Value = 0xdd5fffffffffffff; PC = 0xaaaaaaab7064 *)
mov x5 L0xaaaaaaabbbe8;
mov x2 L0xaaaaaaabbbf0;
(* lsr	x3, x3, #63                                 #! PC = 0xaaaaaaab7068 *)
split x3 dontcare x3 63;
(* ldr	x4, [x0, #48]                               #! EA = L0xffffffffe3e8; Value = 0xad330347c29dce2e; PC = 0xaaaaaaab706c *)
mov x4 L0xffffffffe3e8;
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
(* str	x3, [x0, #40]                               #! EA = L0xffffffffe3e0; PC = 0xaaaaaaab708c *)
mov L0xffffffffe3e0 x3;
(* lsr	x2, x6, #63                                 #! PC = 0xaaaaaaab7090 *)
split x2 dontcare x6 63;
(* subs	x7, x7, x2                                 #! PC = 0xaaaaaaab7094 *)
subc carry x7 x7 x2;
(* ldr	x8, [x0, #56]                               #! EA = L0xffffffffe3f0; Value = 0xee674d739121befa; PC = 0xaaaaaaab7098 *)
mov x8 L0xffffffffe3f0;
(* sbc	x4, x4, xzr                                 #! PC = 0xaaaaaaab709c *)
sbcs dontcare x4 x4 0@uint64 carry;
(* ldr	x5, [x1, #56]                               #! EA = L0xaaaaaaabbbf8; Value = 0xb52b363427ef98ed; PC = 0xaaaaaaab70a0 *)
mov x5 L0xaaaaaaabbbf8;
(* lsr	x4, x4, #63                                 #! PC = 0xaaaaaaab70a4 *)
split x4 dontcare x4 63;
(* ldr	x3, [x0, #64]                               #! EA = L0xffffffffe3f8; Value = 0xa4288e4b50d697bc; PC = 0xaaaaaaab70a8 *)
mov x3 L0xffffffffe3f8;
(* cmp	x5, x8                                      #! PC = 0xaaaaaaab70ac *)
subs carry dontcare x5 x8;
(* sub	x5, x5, x8                                  #! PC = 0xaaaaaaab70b0 *)
subc dontcare x5 x5 x8;
(* csetm	x6, cc  // cc = lo, ul, last              #! PC = 0xaaaaaaab70b4 *)
cmov x6 carry 0@uint64 0xffffffffffffffff@uint64;
(* subs	x4, x5, x4                                 #! PC = 0xaaaaaaab70b8 *)
subc carry x4 x5 x4;
(* stp	x7, x4, [x0, #48]                           #! EA = L0xffffffffe3e8; PC = 0xaaaaaaab70bc *)
mov L0xffffffffe3e8 x7;
mov L0xffffffffe3f0 x4;
(* sbc	x5, x6, xzr                                 #! PC = 0xaaaaaaab70c0 *)
sbcs dontcare x5 x6 0@uint64 carry;
(* ldr	x2, [x1, #64]                               #! EA = L0xaaaaaaabbc00; Value = 0x109d30cfadd7d0ed; PC = 0xaaaaaaab70c4 *)
mov x2 L0xaaaaaaabbc00;
(* lsr	x5, x5, #63                                 #! PC = 0xaaaaaaab70c8 *)
split x5 dontcare x5 63;
(* ldr	x6, [x0, #72]                               #! EA = L0xffffffffe400; Value = 0xaac5717b213d0f1f; PC = 0xaaaaaaab70cc *)
mov x6 L0xffffffffe400;
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
(* stp	x5, x3, [x0, #64]                           #! EA = L0xffffffffe3f8; PC = 0xaaaaaaab70f8 *)
mov L0xffffffffe3f8 x5;
mov L0xffffffffe400 x3;
(* sbc	x2, x2, xzr                                 #! PC = 0xaaaaaaab70fc *)
sbcs dontcare x2 x2 0@uint64 carry;
(* ldr	x3, [x1, #80]                               #! EA = L0xaaaaaaabbc10; Value = 0x1c25213f2f75b8cd; PC = 0xaaaaaaab7100 *)
mov x3 L0xaaaaaaabbc10;
(* ldr	x6, [x0, #80]                               #! EA = L0xffffffffe408; Value = 0x61359f66876c6340; PC = 0xaaaaaaab7104 *)
mov x6 L0xffffffffe408;
(* ldr	x5, [x1, #88]                               #! EA = L0xaaaaaaabbc18; Value = 0x0000dfcbaa83ee38; PC = 0xaaaaaaab7108 *)
mov x5 L0xaaaaaaabbc18;
(* cmp	x3, x6                                      #! PC = 0xaaaaaaab710c *)
subs carry dontcare x3 x6;
(* lsr	x1, x2, #63                                 #! PC = 0xaaaaaaab7110 *)
split x1 dontcare x2 63;
(* sub	x2, x3, x6                                  #! PC = 0xaaaaaaab7114 *)
subc dontcare x2 x3 x6;
(* ldr	x3, [x0, #88]                               #! EA = L0xffffffffe410; Value = 0x000059a3d1f2565d; PC = 0xaaaaaaab7118 *)
mov x3 L0xffffffffe410;
(* csetm	x4, cc  // cc = lo, ul, last              #! PC = 0xaaaaaaab711c *)
cmov x4 carry 0@uint64 0xffffffffffffffff@uint64;
(* subs	x1, x2, x1                                 #! PC = 0xaaaaaaab7120 *)
subc carry x1 x2 x1;
(* str	x1, [x0, #80]                               #! EA = L0xffffffffe408; PC = 0xaaaaaaab7124 *)
mov L0xffffffffe408 x1;
(* sbc	x1, x4, xzr                                 #! PC = 0xaaaaaaab7128 *)
sbcs dontcare x1 x4 0@uint64 carry;
(* subs	x5, x5, x3                                 #! PC = 0xaaaaaaab712c *)
subc carry x5 x5 x3;
(* sub	x1, x5, x1, lsr #63                         #! PC = 0xaaaaaaab7130 *)
split x1H dontcare x1 63;
subc dontcare x1 x5 x1H;
(* str	x1, [x0, #88]                               #! EA = L0xffffffffe410; PC = 0xaaaaaaab7134 *)
mov L0xffffffffe410 x1;
(* #! <- SP = 0xffffffffe0d0 *)
#! 0xffffffffe0d0 = 0xffffffffe0d0;
(* #ret                                            #! PC = 0xaaaaaaab7138 *)
#ret                                            #! 0xaaaaaaab7138 = 0xaaaaaaab7138;
(* add	x0, x19, #0x60                              #! PC = 0xaaaaaaaae1a8 *)
adds dc x0 x19 0x60@uint64;
(* ldr	x19, [sp, #16]                              #! EA = L0xffffffffe0e0; Value = 0x0000ffffffffe3b8; PC = 0xaaaaaaaae1ac *)
mov x19 L0xffffffffe0e0;
(* ldp	x29, x30, [sp], #32                         #! EA = L0xffffffffe0d0; Value = 0x0000ffffffffe0f0; PC = 0xaaaaaaaae1b0 *)
mov x29 L0xffffffffe0d0;
mov x30 L0xffffffffe0d8;
(* #b	0xaaaaaaab6fd0 <fpneg751>                    #! PC = 0xaaaaaaaae1b4 *)
#b	0xaaaaaaab6fd0 <fpneg751>                    #! 0xaaaaaaaae1b4 = 0xaaaaaaaae1b4;
(* ldp	x2, x4, [x0]                                #! EA = L0xffffffffe418; Value = 0x43dfd8243baf96f0; PC = 0xaaaaaaab6fd4 *)
mov x2 L0xffffffffe418;
mov x4 L0xffffffffe420;
(* ldr	x1, [x1, #4040]                             #! EA = L0xaaaaaaacdfc8; Value = 0x0000aaaaaaabbbc0; PC = 0xaaaaaaab6fd8 *)
mov x1 L0xaaaaaaacdfc8;
(* ldr	x8, [x0, #40]                               #! EA = L0xffffffffe440; Value = 0x1c22c09054b466c6; PC = 0xaaaaaaab6fdc *)
mov x8 L0xffffffffe440;
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
(* stp	x7, x5, [x0]                                #! EA = L0xffffffffe418; PC = 0xaaaaaaab6ffc *)
mov L0xffffffffe418 x7;
mov L0xffffffffe420 x5;
(* sbc	x3, x3, xzr                                 #! PC = 0xaaaaaaab7000 *)
sbcs dontcare x3 x3 0@uint64 carry;
(* ldr	x4, [x0, #16]                               #! EA = L0xffffffffe428; Value = 0x75548a17f355788c; PC = 0xaaaaaaab7004 *)
mov x4 L0xffffffffe428;
(* ldr	x2, [x1, #16]                               #! EA = L0xaaaaaaabbbd0; Value = 0xffffffffffffffff; PC = 0xaaaaaaab7008 *)
mov x2 L0xaaaaaaabbbd0;
(* ldr	x7, [x0, #24]                               #! EA = L0xffffffffe430; Value = 0x8fe3059f834646e0; PC = 0xaaaaaaab700c *)
mov x7 L0xffffffffe430;
(* subs	x6, x2, x4                                 #! PC = 0xaaaaaaab7010 *)
subc carry x6 x2 x4;
(* lsr	x2, x3, #63                                 #! PC = 0xaaaaaaab7014 *)
split x2 dontcare x3 63;
(* csetm	x4, cc  // cc = lo, ul, last              #! PC = 0xaaaaaaab7018 *)
cmov x4 carry 0@uint64 0xffffffffffffffff@uint64;
(* subs	x2, x6, x2                                 #! PC = 0xaaaaaaab701c *)
subc carry x2 x6 x2;
(* str	x2, [x0, #16]                               #! EA = L0xffffffffe428; PC = 0xaaaaaaab7020 *)
mov L0xffffffffe428 x2;
(* ldp	x5, x2, [x1, #24]                           #! EA = L0xaaaaaaabbbd8; Value = 0xffffffffffffffff; PC = 0xaaaaaaab7024 *)
mov x5 L0xaaaaaaabbbd8;
mov x2 L0xaaaaaaabbbe0;
(* sbc	x4, x4, xzr                                 #! PC = 0xaaaaaaab7028 *)
sbcs dontcare x4 x4 0@uint64 carry;
(* ldr	x3, [x0, #32]                               #! EA = L0xffffffffe438; Value = 0x5102aa6abfca929b; PC = 0xaaaaaaab702c *)
mov x3 L0xffffffffe438;
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
(* stp	x4, x7, [x0, #24]                           #! EA = L0xffffffffe430; PC = 0xaaaaaaab705c *)
mov L0xffffffffe430 x4;
mov L0xffffffffe438 x7;
(* sbc	x3, x3, xzr                                 #! PC = 0xaaaaaaab7060 *)
sbcs dontcare x3 x3 0@uint64 carry;
(* ldp	x5, x2, [x1, #40]                           #! EA = L0xaaaaaaabbbe8; Value = 0xdd5fffffffffffff; PC = 0xaaaaaaab7064 *)
mov x5 L0xaaaaaaabbbe8;
mov x2 L0xaaaaaaabbbf0;
(* lsr	x3, x3, #63                                 #! PC = 0xaaaaaaab7068 *)
split x3 dontcare x3 63;
(* ldr	x4, [x0, #48]                               #! EA = L0xffffffffe448; Value = 0xe3c56302500f7839; PC = 0xaaaaaaab706c *)
mov x4 L0xffffffffe448;
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
(* str	x3, [x0, #40]                               #! EA = L0xffffffffe440; PC = 0xaaaaaaab708c *)
mov L0xffffffffe440 x3;
(* lsr	x2, x6, #63                                 #! PC = 0xaaaaaaab7090 *)
split x2 dontcare x6 63;
(* subs	x7, x7, x2                                 #! PC = 0xaaaaaaab7094 *)
subc carry x7 x7 x2;
(* ldr	x8, [x0, #56]                               #! EA = L0xffffffffe450; Value = 0xacd7491148660ba9; PC = 0xaaaaaaab7098 *)
mov x8 L0xffffffffe450;
(* sbc	x4, x4, xzr                                 #! PC = 0xaaaaaaab709c *)
sbcs dontcare x4 x4 0@uint64 carry;
(* ldr	x5, [x1, #56]                               #! EA = L0xaaaaaaabbbf8; Value = 0xb52b363427ef98ed; PC = 0xaaaaaaab70a0 *)
mov x5 L0xaaaaaaabbbf8;
(* lsr	x4, x4, #63                                 #! PC = 0xaaaaaaab70a4 *)
split x4 dontcare x4 63;
(* ldr	x3, [x0, #64]                               #! EA = L0xffffffffe458; Value = 0x12986e4c466ca2dc; PC = 0xaaaaaaab70a8 *)
mov x3 L0xffffffffe458;
(* cmp	x5, x8                                      #! PC = 0xaaaaaaab70ac *)
subs carry dontcare x5 x8;
(* sub	x5, x5, x8                                  #! PC = 0xaaaaaaab70b0 *)
subc dontcare x5 x5 x8;
(* csetm	x6, cc  // cc = lo, ul, last              #! PC = 0xaaaaaaab70b4 *)
cmov x6 carry 0@uint64 0xffffffffffffffff@uint64;
(* subs	x4, x5, x4                                 #! PC = 0xaaaaaaab70b8 *)
subc carry x4 x5 x4;
(* stp	x7, x4, [x0, #48]                           #! EA = L0xffffffffe448; PC = 0xaaaaaaab70bc *)
mov L0xffffffffe448 x7;
mov L0xffffffffe450 x4;
(* sbc	x5, x6, xzr                                 #! PC = 0xaaaaaaab70c0 *)
sbcs dontcare x5 x6 0@uint64 carry;
(* ldr	x2, [x1, #64]                               #! EA = L0xaaaaaaabbc00; Value = 0x109d30cfadd7d0ed; PC = 0xaaaaaaab70c4 *)
mov x2 L0xaaaaaaabbc00;
(* lsr	x5, x5, #63                                 #! PC = 0xaaaaaaab70c8 *)
split x5 dontcare x5 63;
(* ldr	x6, [x0, #72]                               #! EA = L0xffffffffe460; Value = 0x4581890c65674cd5; PC = 0xaaaaaaab70cc *)
mov x6 L0xffffffffe460;
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
(* stp	x5, x3, [x0, #64]                           #! EA = L0xffffffffe458; PC = 0xaaaaaaab70f8 *)
mov L0xffffffffe458 x5;
mov L0xffffffffe460 x3;
(* sbc	x2, x2, xzr                                 #! PC = 0xaaaaaaab70fc *)
sbcs dontcare x2 x2 0@uint64 carry;
(* ldr	x3, [x1, #80]                               #! EA = L0xaaaaaaabbc10; Value = 0x1c25213f2f75b8cd; PC = 0xaaaaaaab7100 *)
mov x3 L0xaaaaaaabbc10;
(* ldr	x6, [x0, #80]                               #! EA = L0xffffffffe468; Value = 0x9ee75bf404969101; PC = 0xaaaaaaab7104 *)
mov x6 L0xffffffffe468;
(* ldr	x5, [x1, #88]                               #! EA = L0xaaaaaaabbc18; Value = 0x0000dfcbaa83ee38; PC = 0xaaaaaaab7108 *)
mov x5 L0xaaaaaaabbc18;
(* cmp	x3, x6                                      #! PC = 0xaaaaaaab710c *)
subs carry dontcare x3 x6;
(* lsr	x1, x2, #63                                 #! PC = 0xaaaaaaab7110 *)
split x1 dontcare x2 63;
(* sub	x2, x3, x6                                  #! PC = 0xaaaaaaab7114 *)
subc dontcare x2 x3 x6;
(* ldr	x3, [x0, #88]                               #! EA = L0xffffffffe470; Value = 0x00003e9778e64d67; PC = 0xaaaaaaab7118 *)
mov x3 L0xffffffffe470;
(* csetm	x4, cc  // cc = lo, ul, last              #! PC = 0xaaaaaaab711c *)
cmov x4 carry 0@uint64 0xffffffffffffffff@uint64;
(* subs	x1, x2, x1                                 #! PC = 0xaaaaaaab7120 *)
subc carry x1 x2 x1;
(* str	x1, [x0, #80]                               #! EA = L0xffffffffe468; PC = 0xaaaaaaab7124 *)
mov L0xffffffffe468 x1;
(* sbc	x1, x4, xzr                                 #! PC = 0xaaaaaaab7128 *)
sbcs dontcare x1 x4 0@uint64 carry;
(* subs	x5, x5, x3                                 #! PC = 0xaaaaaaab712c *)
subc carry x5 x5 x3;
(* sub	x1, x5, x1, lsr #63                         #! PC = 0xaaaaaaab7130 *)
split x1H dontcare x1 63;
subc dontcare x1 x5 x1H;
(* str	x1, [x0, #88]                               #! EA = L0xffffffffe470; PC = 0xaaaaaaab7134 *)
mov L0xffffffffe470 x1;
(* #! <- SP = 0xffffffffe0f0 *)
#! 0xffffffffe0f0 = 0xffffffffe0f0;
(* #ret                                            #! PC = 0xaaaaaaab7138 *)
#ret                                            #! 0xaaaaaaab7138 = 0xaaaaaaab7138;

mov cr0 L0xffffffffe3b8; mov cr1 L0xffffffffe3c0; mov cr2 L0xffffffffe3c8;
mov cr3 L0xffffffffe3d0; mov cr4 L0xffffffffe3d8; mov cr5 L0xffffffffe3e0;
mov cr6 L0xffffffffe3e8; mov cr7 L0xffffffffe3f0; mov cr8 L0xffffffffe3f8;
mov cr9 L0xffffffffe400; mov cra L0xffffffffe408; mov crb L0xffffffffe410;
mov ci0 L0xffffffffe418; mov ci1 L0xffffffffe420; mov ci2 L0xffffffffe428;
mov ci3 L0xffffffffe430; mov ci4 L0xffffffffe438; mov ci5 L0xffffffffe440;
mov ci6 L0xffffffffe448; mov ci7 L0xffffffffe450; mov ci8 L0xffffffffe458;
mov ci9 L0xffffffffe460; mov cia L0xffffffffe468; mov cib L0xffffffffe470;

{
  true
  &&
  and [eqsmod (limbs 64 [cr0,cr1,cr2,cr3,cr4,cr5,cr6,cr7,cr8,cr9,cra,crb])
              ((-1)@768 *
               limbs 64 [ar0,ar1,ar2,ar3,ar4,ar5,ar6,ar7,ar8,ar9,ara,arb])
              (limbs 64 [m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,ma,mb]),
       eqsmod (limbs 64 [ci0,ci1,ci2,ci3,ci4,ci5,ci6,ci7,ci8,ci9,cia,cib])
              ((-1)@768 *
               limbs 64 [ai0,ai1,ai2,ai3,ai4,ai5,ai6,ai7,ai8,ai9,aia,aib])
              (limbs 64 [m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,ma,mb]),
       limbs 64 [cr0,cr1,cr2,cr3,cr4,cr5,cr6,cr7,cr8,cr9,cra,crb] <=u
       2@768 * limbs 64 [m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,ma,mb],
       limbs 64 [ci0,ci1,ci2,ci3,ci4,ci5,ci6,ci7,ci8,ci9,cia,cib] <=u
       2@768 * limbs 64 [m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,ma,mb]]
}

