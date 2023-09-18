(* quine: -v -isafety -slicing fp2add751.cl
Parsing Cryptoline file:                [OK]            0.007445 seconds
Checking well-formedness:               [OK]            0.000899 seconds
Transforming to SSA form:               [OK]            0.000309 seconds
Normalizing specification:              [OK]            0.000652 seconds
Rewriting assignments:                  [OK]            0.000445 seconds
Verifying program safety:               [OK]            0.000146 seconds
Verifying range assertions:             [OK]            39.299514 seconds
Verifying range specification:          [OK]            1.626135 seconds
Rewriting value-preserved casting:      [OK]            0.000108 seconds
Verifying algebraic assertions:         [OK]            0.002068 seconds
Verifying algebraic specification:      [OK]            0.060328 seconds
Verification result:                    [OK]            40.998829 seconds
*)

proc main (uint64 ar0, uint64 ar1, uint64 ar2, uint64 ar3,
           uint64 ar4, uint64 ar5, uint64 ar6, uint64 ar7,
           uint64 ar8, uint64 ar9, uint64 ara, uint64 arb,
           uint64 ai0, uint64 ai1, uint64 ai2, uint64 ai3,
           uint64 ai4, uint64 ai5, uint64 ai6, uint64 ai7,
           uint64 ai8, uint64 ai9, uint64 aia, uint64 aib,
           uint64 br0, uint64 br1, uint64 br2, uint64 br3,
           uint64 br4, uint64 br5, uint64 br6, uint64 br7,
           uint64 br8, uint64 br9, uint64 bra, uint64 brb,
           uint64 bi0, uint64 bi1, uint64 bi2, uint64 bi3,
           uint64 bi4, uint64 bi5, uint64 bi6, uint64 bi7,
           uint64 bi8, uint64 bi9, uint64 bia, uint64 bib,
           uint64 m0, uint64 m1, uint64 m2, uint64 m3,
           uint64 m4, uint64 m5, uint64 m6, uint64 m7,
           uint64 m8, uint64 m9, uint64 ma, uint64 mb) =
{
  true
&&
  and [limbs 64 [ar0, ar1, ar2, ar3, ar4, ar5, ar6, ar7, ar8, ar9, ara, arb] <u
       2@768 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, ma, mb],
       limbs 64 [ai0, ai1, ai2, ai3, ai4, ai5, ai6, ai7, ai8, ai9, aia, aib] <u
       2@768 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, ma, mb],
       limbs 64 [br0, br1, br2, br3, br4, br5, br6, br7, br8, br9, bra, brb] <u
       2@768 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, ma, mb],
       limbs 64 [bi0, bi1, bi2, bi3, bi4, bi5, bi6, bi7, bi8, bi9, bia, bib] <u
       2@768 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, ma, mb],
       m0=0xFFFFFFFFFFFFFFFF@64, m1=0xFFFFFFFFFFFFFFFF@64,
       m2=0xFFFFFFFFFFFFFFFF@64, m3=0xFFFFFFFFFFFFFFFF@64,
       m4=0xFFFFFFFFFFFFFFFF@64, m5=0xEEAFFFFFFFFFFFFF@64,
       m6=0xE3EC968549F878A8@64, m7=0xDA959B1A13F7CC76@64,
       m8=0x084E9867D6EBE876@64, m9=0x8562B5045CB25748@64,
       ma=0x0E12909F97BADC66@64, mb=0x00006FE5D541F71C@64]
}

mov L0xffffffffe178 ar0; mov L0xffffffffe180 ar1; mov L0xffffffffe188 ar2;
mov L0xffffffffe190 ar3; mov L0xffffffffe198 ar4; mov L0xffffffffe1a0 ar5;
mov L0xffffffffe1a8 ar6; mov L0xffffffffe1b0 ar7; mov L0xffffffffe1b8 ar8;
mov L0xffffffffe1c0 ar9; mov L0xffffffffe1c8 ara; mov L0xffffffffe1d0 arb;
mov L0xffffffffe1d8 ai0; mov L0xffffffffe1e0 ai1; mov L0xffffffffe1e8 ai2;
mov L0xffffffffe1f0 ai3; mov L0xffffffffe1f8 ai4; mov L0xffffffffe200 ai5;
mov L0xffffffffe208 ai6; mov L0xffffffffe210 ai7; mov L0xffffffffe218 ai8;
mov L0xffffffffe220 ai9; mov L0xffffffffe228 aia; mov L0xffffffffe230 aib;

mov L0xffffffffe238 br0; mov L0xffffffffe240 br1; mov L0xffffffffe248 br2;
mov L0xffffffffe250 br3; mov L0xffffffffe258 br4; mov L0xffffffffe260 br5;
mov L0xffffffffe268 br6; mov L0xffffffffe270 br7; mov L0xffffffffe278 br8;
mov L0xffffffffe280 br9; mov L0xffffffffe288 bra; mov L0xffffffffe290 brb;
mov L0xffffffffe298 bi0; mov L0xffffffffe2a0 bi1; mov L0xffffffffe2a8 bi2;
mov L0xffffffffe2b0 bi3; mov L0xffffffffe2b8 bi4; mov L0xffffffffe2c0 bi5;
mov L0xffffffffe2c8 bi6; mov L0xffffffffe2d0 bi7; mov L0xffffffffe2d8 bi8;
mov L0xffffffffe2e0 bi9; mov L0xffffffffe2e8 bia; mov L0xffffffffe2f0 bib;

mov L0xaaaaaaab7588 0xFFFFFFFFFFFFFFFE@uint64;
mov L0xaaaaaaab7590 0xFFFFFFFFFFFFFFFF@uint64;
mov L0xaaaaaaab7598 0xDD5FFFFFFFFFFFFF@uint64;
mov L0xaaaaaaab75a0 0xC7D92D0A93F0F151@uint64;
mov L0xaaaaaaab75a8 0xB52B363427EF98ED@uint64;
mov L0xaaaaaaab75b0 0x109D30CFADD7D0ED@uint64;
mov L0xaaaaaaab75b8 0x0AC56A08B964AE90@uint64;
mov L0xaaaaaaab75c0 0x1C25213F2F75B8CD@uint64;
mov L0xaaaaaaab75c8 0x0000DFCBAA83EE38@uint64;

nondet  x0@uint64; nondet  x1@uint64; nondet  x2@uint64; 
nondet x19@uint64; nondet x20@uint64; nondet x21@uint64;
nondet x29@uint64; nondet x30@uint64; 
nondet sp@uint64;

(* #! -> SP = 0xffffffffe0f0 *)
#! 0xffffffffe0f0 = 0xffffffffe0f0;
(* stp	x29, x30, [sp, #-48]!                       #! EA = L0xffffffffe0c0; PC = 0xaaaaaaaae1c0 *)
mov L0xffffffffe0c0 x29;
mov L0xffffffffe0c8 x30;
(* mov	x29, sp                                     #! PC = 0xaaaaaaaae1c4 *)
mov x29 sp;
(* stp	x19, x20, [sp, #16]                         #! EA = L0xffffffffe0d0; PC = 0xaaaaaaaae1c8 *)
mov L0xffffffffe0d0 x19;
mov L0xffffffffe0d8 x20;
(* mov	x19, x0                                     #! PC = 0xaaaaaaaae1cc *)
mov x19 x0;
(* mov	x20, x1                                     #! PC = 0xaaaaaaaae1d0 *)
mov x20 x1;
(* str	x21, [sp, #32]                              #! EA = L0xffffffffe0e0; PC = 0xaaaaaaaae1d4 *)
mov L0xffffffffe0e0 x21;
(* mov	x21, x2                                     #! PC = 0xaaaaaaaae1d8 *)
mov x21 x2;
(* #bl	0xaaaaaaab6fc0 <fpadd751>                   #! PC = 0xaaaaaaaae1dc *)
#bl	0xaaaaaaab6fc0 <fpadd751>                   #! 0xaaaaaaaae1dc = 0xaaaaaaaae1dc;
(* #! -> SP = 0xffffffffe0c0 *)
#! 0xffffffffe0c0 = 0xffffffffe0c0;
(* #b	0xaaaaaaab7648 <fpadd751_asm>                #! PC = 0xaaaaaaab6fc0 *)
#b	0xaaaaaaab7648 <fpadd751_asm>                #! 0xaaaaaaab6fc0 = 0xaaaaaaab6fc0;
(* sub	sp, sp, #0x10                               #! PC = 0xaaaaaaab7648 *)
subc dontcare sp sp 0x10@uint64;
(* stp	x19, x20, [sp]                              #! EA = L0xffffffffe0b0; PC = 0xaaaaaaab764c *)
mov L0xffffffffe0b0 x19;
mov L0xffffffffe0b8 x20;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe178; Value = 0xcf84246d5a43c63f; PC = 0xaaaaaaab7650 *)
mov x3 L0xffffffffe178;
mov x4 L0xffffffffe180;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffe188; Value = 0x71667993f99ac2a2; PC = 0xaaaaaaab7654 *)
mov x5 L0xffffffffe188;
mov x6 L0xffffffffe190;
(* ldp	x15, x16, [x1]                              #! EA = L0xffffffffe238; Value = 0xd4be51ffacb99060; PC = 0xaaaaaaab7658 *)
mov x15 L0xffffffffe238;
mov x16 L0xffffffffe240;
(* ldp	x17, x19, [x1, #16]                         #! EA = L0xffffffffe248; Value = 0x48de9be140b4854b; PC = 0xaaaaaaab765c *)
mov x17 L0xffffffffe248;
mov x19 L0xffffffffe250;
(* adds	x3, x3, x15                                #! PC = 0xaaaaaaab7660 *)
adds carry x3 x3 x15;
(* adcs	x4, x4, x16                                #! PC = 0xaaaaaaab7664 *)
adcs carry x4 x4 x16 carry;
(* adcs	x5, x5, x17                                #! PC = 0xaaaaaaab7668 *)
adcs carry x5 x5 x17 carry;
(* adcs	x6, x6, x19                                #! PC = 0xaaaaaaab766c *)
adcs carry x6 x6 x19 carry;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe198; Value = 0xd8b7b493e8306f7b; PC = 0xaaaaaaab7670 *)
mov x7 L0xffffffffe198;
mov x8 L0xffffffffe1a0;
(* ldp	x9, x10, [x0, #48]                          #! EA = L0xffffffffe1a8; Value = 0xad330347c29dce2e; PC = 0xaaaaaaab7674 *)
mov x9 L0xffffffffe1a8;
mov x10 L0xffffffffe1b0;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0xffffffffe258; Value = 0x9b484dfe748eac75; PC = 0xaaaaaaab7678 *)
mov x15 L0xffffffffe258;
mov x16 L0xffffffffe260;
(* ldp	x17, x19, [x1, #48]                         #! EA = L0xffffffffe268; Value = 0x0be3a5229bc786ba; PC = 0xaaaaaaab767c *)
mov x17 L0xffffffffe268;
mov x19 L0xffffffffe270;
(* adcs	x7, x7, x15                                #! PC = 0xaaaaaaab7680 *)
adcs carry x7 x7 x15 carry;
(* adcs	x8, x8, x16                                #! PC = 0xaaaaaaab7684 *)
adcs carry x8 x8 x16 carry;
(* adcs	x9, x9, x17                                #! PC = 0xaaaaaaab7688 *)
adcs carry x9 x9 x17 carry;
(* adcs	x10, x10, x19                              #! PC = 0xaaaaaaab768c *)
adcs carry x10 x10 x19 carry;
(* ldp	x11, x12, [x0, #64]                         #! EA = L0xffffffffe1b8; Value = 0xa4288e4b50d697bc; PC = 0xaaaaaaab7690 *)
mov x11 L0xffffffffe1b8;
mov x12 L0xffffffffe1c0;
(* ldp	x13, x14, [x0, #80]                         #! EA = L0xffffffffe1c8; Value = 0x61359f66876c6340; PC = 0xaaaaaaab7694 *)
mov x13 L0xffffffffe1c8;
mov x14 L0xffffffffe1d0;
(* ldp	x15, x16, [x1, #64]                         #! EA = L0xffffffffe278; Value = 0x1cc4b9aa28715d2a; PC = 0xaaaaaaab7698 *)
mov x15 L0xffffffffe278;
mov x16 L0xffffffffe280;
(* ldp	x17, x19, [x1, #80]                         #! EA = L0xffffffffe288; Value = 0xd2c37868b894c396; PC = 0xaaaaaaab769c *)
mov x17 L0xffffffffe288;
mov x19 L0xffffffffe290;
(* adcs	x11, x11, x15                              #! PC = 0xaaaaaaab76a0 *)
adcs carry x11 x11 x15 carry;
(* adcs	x12, x12, x16                              #! PC = 0xaaaaaaab76a4 *)
adcs carry x12 x12 x16 carry;
(* adcs	x13, x13, x17                              #! PC = 0xaaaaaaab76a8 *)
adcs carry x13 x13 x17 carry;
(* adc	x14, x14, x19                               #! PC = 0xaaaaaaab76ac *)
adcs dontcare x14 x14 x19 carry;
(* ldr	x16, 0xaaaaaaab7588 <p751x2>                #! PC = 0xaaaaaaab76b0 *)
mov x16 L0xaaaaaaab7588;
(* ldr	x17, 0xaaaaaaab7590 <p751x2+8>              #! PC = 0xaaaaaaab76b4 *)
mov x17 L0xaaaaaaab7590;
(* ldr	x19, 0xaaaaaaab7598 <p751x2+16>             #! PC = 0xaaaaaaab76b8 *)
mov x19 L0xaaaaaaab7598;
(* subs	x3, x3, x16                                #! PC = 0xaaaaaaab76bc *)
subc carry x3 x3 x16;
(* sbcs	x4, x4, x17                                #! PC = 0xaaaaaaab76c0 *)
sbcs carry x4 x4 x17 carry;
(* sbcs	x5, x5, x17                                #! PC = 0xaaaaaaab76c4 *)
sbcs carry x5 x5 x17 carry;
(* sbcs	x6, x6, x17                                #! PC = 0xaaaaaaab76c8 *)
sbcs carry x6 x6 x17 carry;
(* sbcs	x7, x7, x17                                #! PC = 0xaaaaaaab76cc *)
sbcs carry x7 x7 x17 carry;
(* sbcs	x8, x8, x19                                #! PC = 0xaaaaaaab76d0 *)
sbcs carry x8 x8 x19 carry;
(* ldr	x0, 0xaaaaaaab75a0 <p751x2+24>              #! PC = 0xaaaaaaab76d4 *)
mov x0 L0xaaaaaaab75a0;
(* ldr	x1, 0xaaaaaaab75a8 <p751x2+32>              #! PC = 0xaaaaaaab76d8 *)
mov x1 L0xaaaaaaab75a8;
(* ldr	x20, 0xaaaaaaab75b0 <p751x2+40>             #! PC = 0xaaaaaaab76dc *)
mov x20 L0xaaaaaaab75b0;
(* sbcs	x9, x9, x0                                 #! PC = 0xaaaaaaab76e0 *)
sbcs carry x9 x9 x0 carry;
(* sbcs	x10, x10, x1                               #! PC = 0xaaaaaaab76e4 *)
sbcs carry x10 x10 x1 carry;
(* sbcs	x11, x11, x20                              #! PC = 0xaaaaaaab76e8 *)
sbcs carry x11 x11 x20 carry;
(* ldr	x0, 0xaaaaaaab75b8 <p751x2+48>              #! PC = 0xaaaaaaab76ec *)
mov x0 L0xaaaaaaab75b8;
(* ldr	x1, 0xaaaaaaab75c0 <p751x2+56>              #! PC = 0xaaaaaaab76f0 *)
mov x1 L0xaaaaaaab75c0;
(* ldr	x20, 0xaaaaaaab75c8 <p751x2+64>             #! PC = 0xaaaaaaab76f4 *)
mov x20 L0xaaaaaaab75c8;
(* sbcs	x12, x12, x0                               #! PC = 0xaaaaaaab76f8 *)
sbcs carry x12 x12 x0 carry;
(* sbcs	x13, x13, x1                               #! PC = 0xaaaaaaab76fc *)
sbcs carry x13 x13 x1 carry;
(* sbcs	x14, x14, x20                              #! PC = 0xaaaaaaab7700 *)
sbcs carry x14 x14 x20 carry;
(* ngc	x15, xzr                                    #! PC = 0xaaaaaaab7704 *)
sbcs dontcare x15 0@uint64 0@uint64 carry;
(* and	x16, x16, x15                               #! PC = 0xaaaaaaab7708 *)
and x16@uint64 x16 x15;
(* and	x17, x17, x15                               #! PC = 0xaaaaaaab770c *)
and x17@uint64 x17 x15;
(* and	x19, x19, x15                               #! PC = 0xaaaaaaab7710 *)
and x19@uint64 x19 x15;
(* and	x0, x0, x15                                 #! PC = 0xaaaaaaab7714 *)
and x0@uint64 x0 x15;
(* and	x1, x1, x15                                 #! PC = 0xaaaaaaab7718 *)
and x1@uint64 x1 x15;
(* and	x20, x20, x15                               #! PC = 0xaaaaaaab771c *)
and x20@uint64 x20 x15;
(* adds	x3, x3, x16                                #! PC = 0xaaaaaaab7720 *)
adds carry x3 x3 x16;
(* adcs	x4, x4, x17                                #! PC = 0xaaaaaaab7724 *)
adcs carry x4 x4 x17 carry;
(* adcs	x5, x5, x17                                #! PC = 0xaaaaaaab7728 *)
adcs carry x5 x5 x17 carry;
(* adcs	x6, x6, x17                                #! PC = 0xaaaaaaab772c *)
adcs carry x6 x6 x17 carry;
(* adcs	x7, x7, x17                                #! PC = 0xaaaaaaab7730 *)
adcs carry x7 x7 x17 carry;
(* adcs	x8, x8, x19                                #! PC = 0xaaaaaaab7734 *)
adcs carry x8 x8 x19 carry;
(* ldr	x16, 0xaaaaaaab75a0 <p751x2+24>             #! PC = 0xaaaaaaab7738 *)
mov x16 L0xaaaaaaab75a0;
(* ldr	x17, 0xaaaaaaab75a8 <p751x2+32>             #! PC = 0xaaaaaaab773c *)
mov x17 L0xaaaaaaab75a8;
(* ldr	x19, 0xaaaaaaab75b0 <p751x2+40>             #! PC = 0xaaaaaaab7740 *)
mov x19 L0xaaaaaaab75b0;
(* and	x16, x16, x15                               #! PC = 0xaaaaaaab7744 *)
and x16@uint64 x16 x15;
(* and	x17, x17, x15                               #! PC = 0xaaaaaaab7748 *)
and x17@uint64 x17 x15;
(* and	x19, x19, x15                               #! PC = 0xaaaaaaab774c *)
and x19@uint64 x19 x15;
(* adcs	x9, x9, x16                                #! PC = 0xaaaaaaab7750 *)
adcs carry x9 x9 x16 carry;
(* adcs	x10, x10, x17                              #! PC = 0xaaaaaaab7754 *)
adcs carry x10 x10 x17 carry;
(* adcs	x11, x11, x19                              #! PC = 0xaaaaaaab7758 *)
adcs carry x11 x11 x19 carry;
(* adcs	x12, x12, x0                               #! PC = 0xaaaaaaab775c *)
adcs carry x12 x12 x0 carry;
(* adcs	x13, x13, x1                               #! PC = 0xaaaaaaab7760 *)
adcs carry x13 x13 x1 carry;
(* adc	x14, x14, x20                               #! PC = 0xaaaaaaab7764 *)
adcs dontcare x14 x14 x20 carry;
(* stp	x3, x4, [x2]                                #! EA = L0xffffffffe3b8; PC = 0xaaaaaaab7768 *)
mov L0xffffffffe3b8 x3;
mov L0xffffffffe3c0 x4;
(* stp	x5, x6, [x2, #16]                           #! EA = L0xffffffffe3c8; PC = 0xaaaaaaab776c *)
mov L0xffffffffe3c8 x5;
mov L0xffffffffe3d0 x6;
(* stp	x7, x8, [x2, #32]                           #! EA = L0xffffffffe3d8; PC = 0xaaaaaaab7770 *)
mov L0xffffffffe3d8 x7;
mov L0xffffffffe3e0 x8;
(* stp	x9, x10, [x2, #48]                          #! EA = L0xffffffffe3e8; PC = 0xaaaaaaab7774 *)
mov L0xffffffffe3e8 x9;
mov L0xffffffffe3f0 x10;
(* stp	x11, x12, [x2, #64]                         #! EA = L0xffffffffe3f8; PC = 0xaaaaaaab7778 *)
mov L0xffffffffe3f8 x11;
mov L0xffffffffe400 x12;
(* stp	x13, x14, [x2, #80]                         #! EA = L0xffffffffe408; PC = 0xaaaaaaab777c *)
mov L0xffffffffe408 x13;
mov L0xffffffffe410 x14;
(* ldp	x19, x20, [sp]                              #! EA = L0xffffffffe0b0; Value = 0x0000ffffffffe178; PC = 0xaaaaaaab7780 *)
mov x19 L0xffffffffe0b0;
mov x20 L0xffffffffe0b8;
(* add	sp, sp, #0x10                               #! PC = 0xaaaaaaab7784 *)
adds dontcare sp sp 0x10@uint64;
(* #! <- SP = 0xffffffffe0c0 *)
#! 0xffffffffe0c0 = 0xffffffffe0c0;
(* #ret                                            #! PC = 0xaaaaaaab7788 *)
#ret                                            #! 0xaaaaaaab7788 = 0xaaaaaaab7788;
(* add	x2, x21, #0x60                              #! PC = 0xaaaaaaaae1e0 *)
adds dontcare x2 x21 0x60@uint64;
(* add	x1, x20, #0x60                              #! PC = 0xaaaaaaaae1e4 *)
adds dontcare x1 x20 0x60@uint64;
(* add	x0, x19, #0x60                              #! PC = 0xaaaaaaaae1e8 *)
adds dontcare x0 x19 0x60@uint64;
(* ldp	x19, x20, [sp, #16]                         #! EA = L0xffffffffe0d0; Value = 0x0000ffffffffe3b8; PC = 0xaaaaaaaae1ec *)
mov x19 L0xffffffffe0d0;
mov x20 L0xffffffffe0d8;
(* ldr	x21, [sp, #32]                              #! EA = L0xffffffffe0e0; Value = 0x0000ffffffffe238; PC = 0xaaaaaaaae1f0 *)
mov x21 L0xffffffffe0e0;
(* ldp	x29, x30, [sp], #48                         #! EA = L0xffffffffe0c0; Value = 0x0000ffffffffe0f0; PC = 0xaaaaaaaae1f4 *)
mov x29 L0xffffffffe0c0;
mov x30 L0xffffffffe0c8;
(* #b	0xaaaaaaab6fc0 <fpadd751>                    #! PC = 0xaaaaaaaae1f8 *)
#b	0xaaaaaaab6fc0 <fpadd751>                    #! 0xaaaaaaaae1f8 = 0xaaaaaaaae1f8;
(* #b	0xaaaaaaab7648 <fpadd751_asm>                #! PC = 0xaaaaaaab6fc0 *)
#b	0xaaaaaaab7648 <fpadd751_asm>                #! 0xaaaaaaab6fc0 = 0xaaaaaaab6fc0;
(* sub	sp, sp, #0x10                               #! PC = 0xaaaaaaab7648 *)
subc dontcare sp sp 0x10@uint64;
(* stp	x19, x20, [sp]                              #! EA = L0xffffffffe0e0; PC = 0xaaaaaaab764c *)
mov L0xffffffffe0e0 x19;
mov L0xffffffffe0e8 x20;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe1d8; Value = 0x43dfd8243baf96f0; PC = 0xaaaaaaab7650 *)
mov x3 L0xffffffffe1d8;
mov x4 L0xffffffffe1e0;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffe1e8; Value = 0x75548a17f355788c; PC = 0xaaaaaaab7654 *)
mov x5 L0xffffffffe1e8;
mov x6 L0xffffffffe1f0;
(* ldp	x15, x16, [x1]                              #! EA = L0xffffffffe298; Value = 0x04b0e3ca931f11e9; PC = 0xaaaaaaab7658 *)
mov x15 L0xffffffffe298;
mov x16 L0xffffffffe2a0;
(* ldp	x17, x19, [x1, #16]                         #! EA = L0xffffffffe2a8; Value = 0x4c741031a24db93a; PC = 0xaaaaaaab765c *)
mov x17 L0xffffffffe2a8;
mov x19 L0xffffffffe2b0;
(* adds	x3, x3, x15                                #! PC = 0xaaaaaaab7660 *)
adds carry x3 x3 x15;
(* adcs	x4, x4, x16                                #! PC = 0xaaaaaaab7664 *)
adcs carry x4 x4 x16 carry;
(* adcs	x5, x5, x17                                #! PC = 0xaaaaaaab7668 *)
adcs carry x5 x5 x17 carry;
(* adcs	x6, x6, x19                                #! PC = 0xaaaaaaab766c *)
adcs carry x6 x6 x19 carry;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe1f8; Value = 0x5102aa6abfca929b; PC = 0xaaaaaaab7670 *)
mov x7 L0xffffffffe1f8;
mov x8 L0xffffffffe200;
(* ldp	x9, x10, [x0, #48]                          #! EA = L0xffffffffe208; Value = 0xe3c56302500f7839; PC = 0xaaaaaaab7674 *)
mov x9 L0xffffffffe208;
mov x10 L0xffffffffe210;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0xffffffffe2b8; Value = 0x1271ec256c3c42a2; PC = 0xaaaaaaab7678 *)
mov x15 L0xffffffffe2b8;
mov x16 L0xffffffffe2c0;
(* ldp	x17, x19, [x1, #48]                         #! EA = L0xffffffffe2c8; Value = 0x2999b2ca4c3eb91b; PC = 0xaaaaaaab767c *)
mov x17 L0xffffffffe2c8;
mov x19 L0xffffffffe2d0;
(* adcs	x7, x7, x15                                #! PC = 0xaaaaaaab7680 *)
adcs carry x7 x7 x15 carry;
(* adcs	x8, x8, x16                                #! PC = 0xaaaaaaab7684 *)
adcs carry x8 x8 x16 carry;
(* adcs	x9, x9, x17                                #! PC = 0xaaaaaaab7688 *)
adcs carry x9 x9 x17 carry;
(* adcs	x10, x10, x19                              #! PC = 0xaaaaaaab768c *)
adcs carry x10 x10 x19 carry;
(* ldp	x11, x12, [x0, #64]                         #! EA = L0xffffffffe218; Value = 0x12986e4c466ca2dc; PC = 0xaaaaaaab7690 *)
mov x11 L0xffffffffe218;
mov x12 L0xffffffffe220;
(* ldp	x13, x14, [x0, #80]                         #! EA = L0xffffffffe228; Value = 0x9ee75bf404969101; PC = 0xaaaaaaab7694 *)
mov x13 L0xffffffffe228;
mov x14 L0xffffffffe230;
(* ldp	x15, x16, [x1, #64]                         #! EA = L0xffffffffe2d8; Value = 0x4ef19974de2888b9; PC = 0xaaaaaaab7698 *)
mov x15 L0xffffffffe2d8;
mov x16 L0xffffffffe2e0;
(* ldp	x17, x19, [x1, #80]                         #! EA = L0xffffffffe2e8; Value = 0x563f927116f9bf4c; PC = 0xaaaaaaab769c *)
mov x17 L0xffffffffe2e8;
mov x19 L0xffffffffe2f0;
(* adcs	x11, x11, x15                              #! PC = 0xaaaaaaab76a0 *)
adcs carry x11 x11 x15 carry;
(* adcs	x12, x12, x16                              #! PC = 0xaaaaaaab76a4 *)
adcs carry x12 x12 x16 carry;
(* adcs	x13, x13, x17                              #! PC = 0xaaaaaaab76a8 *)
adcs carry x13 x13 x17 carry;
(* adc	x14, x14, x19                               #! PC = 0xaaaaaaab76ac *)
adcs dontcare x14 x14 x19 carry;
(* ldr	x16, 0xaaaaaaab7588 <p751x2>                #! PC = 0xaaaaaaab76b0 *)
mov x16 L0xaaaaaaab7588;
(* ldr	x17, 0xaaaaaaab7590 <p751x2+8>              #! PC = 0xaaaaaaab76b4 *)
mov x17 L0xaaaaaaab7590;
(* ldr	x19, 0xaaaaaaab7598 <p751x2+16>             #! PC = 0xaaaaaaab76b8 *)
mov x19 L0xaaaaaaab7598;
(* subs	x3, x3, x16                                #! PC = 0xaaaaaaab76bc *)
subc carry x3 x3 x16;
(* sbcs	x4, x4, x17                                #! PC = 0xaaaaaaab76c0 *)
sbcs carry x4 x4 x17 carry;
(* sbcs	x5, x5, x17                                #! PC = 0xaaaaaaab76c4 *)
sbcs carry x5 x5 x17 carry;
(* sbcs	x6, x6, x17                                #! PC = 0xaaaaaaab76c8 *)
sbcs carry x6 x6 x17 carry;
(* sbcs	x7, x7, x17                                #! PC = 0xaaaaaaab76cc *)
sbcs carry x7 x7 x17 carry;
(* sbcs	x8, x8, x19                                #! PC = 0xaaaaaaab76d0 *)
sbcs carry x8 x8 x19 carry;
(* ldr	x0, 0xaaaaaaab75a0 <p751x2+24>              #! PC = 0xaaaaaaab76d4 *)
mov x0 L0xaaaaaaab75a0;
(* ldr	x1, 0xaaaaaaab75a8 <p751x2+32>              #! PC = 0xaaaaaaab76d8 *)
mov x1 L0xaaaaaaab75a8;
(* ldr	x20, 0xaaaaaaab75b0 <p751x2+40>             #! PC = 0xaaaaaaab76dc *)
mov x20 L0xaaaaaaab75b0;
(* sbcs	x9, x9, x0                                 #! PC = 0xaaaaaaab76e0 *)
sbcs carry x9 x9 x0 carry;
(* sbcs	x10, x10, x1                               #! PC = 0xaaaaaaab76e4 *)
sbcs carry x10 x10 x1 carry;
(* sbcs	x11, x11, x20                              #! PC = 0xaaaaaaab76e8 *)
sbcs carry x11 x11 x20 carry;
(* ldr	x0, 0xaaaaaaab75b8 <p751x2+48>              #! PC = 0xaaaaaaab76ec *)
mov x0 L0xaaaaaaab75b8;
(* ldr	x1, 0xaaaaaaab75c0 <p751x2+56>              #! PC = 0xaaaaaaab76f0 *)
mov x1 L0xaaaaaaab75c0;
(* ldr	x20, 0xaaaaaaab75c8 <p751x2+64>             #! PC = 0xaaaaaaab76f4 *)
mov x20 L0xaaaaaaab75c8;
(* sbcs	x12, x12, x0                               #! PC = 0xaaaaaaab76f8 *)
sbcs carry x12 x12 x0 carry;
(* sbcs	x13, x13, x1                               #! PC = 0xaaaaaaab76fc *)
sbcs carry x13 x13 x1 carry;
(* sbcs	x14, x14, x20                              #! PC = 0xaaaaaaab7700 *)
sbcs carry x14 x14 x20 carry;
(* ngc	x15, xzr                                    #! PC = 0xaaaaaaab7704 *)
sbcs dontcare x15 0@uint64 0@uint64 carry;
(* and	x16, x16, x15                               #! PC = 0xaaaaaaab7708 *)
and x16@uint64 x16 x15;
(* and	x17, x17, x15                               #! PC = 0xaaaaaaab770c *)
and x17@uint64 x17 x15;
(* and	x19, x19, x15                               #! PC = 0xaaaaaaab7710 *)
and x19@uint64 x19 x15;
(* and	x0, x0, x15                                 #! PC = 0xaaaaaaab7714 *)
and x0@uint64 x0 x15;
(* and	x1, x1, x15                                 #! PC = 0xaaaaaaab7718 *)
and x1@uint64 x1 x15;
(* and	x20, x20, x15                               #! PC = 0xaaaaaaab771c *)
and x20@uint64 x20 x15;
(* adds	x3, x3, x16                                #! PC = 0xaaaaaaab7720 *)
adds carry x3 x3 x16;
(* adcs	x4, x4, x17                                #! PC = 0xaaaaaaab7724 *)
adcs carry x4 x4 x17 carry;
(* adcs	x5, x5, x17                                #! PC = 0xaaaaaaab7728 *)
adcs carry x5 x5 x17 carry;
(* adcs	x6, x6, x17                                #! PC = 0xaaaaaaab772c *)
adcs carry x6 x6 x17 carry;
(* adcs	x7, x7, x17                                #! PC = 0xaaaaaaab7730 *)
adcs carry x7 x7 x17 carry;
(* adcs	x8, x8, x19                                #! PC = 0xaaaaaaab7734 *)
adcs carry x8 x8 x19 carry;
(* ldr	x16, 0xaaaaaaab75a0 <p751x2+24>             #! PC = 0xaaaaaaab7738 *)
mov x16 L0xaaaaaaab75a0;
(* ldr	x17, 0xaaaaaaab75a8 <p751x2+32>             #! PC = 0xaaaaaaab773c *)
mov x17 L0xaaaaaaab75a8;
(* ldr	x19, 0xaaaaaaab75b0 <p751x2+40>             #! PC = 0xaaaaaaab7740 *)
mov x19 L0xaaaaaaab75b0;
(* and	x16, x16, x15                               #! PC = 0xaaaaaaab7744 *)
and x16@uint64 x16 x15;
(* and	x17, x17, x15                               #! PC = 0xaaaaaaab7748 *)
and x17@uint64 x17 x15;
(* and	x19, x19, x15                               #! PC = 0xaaaaaaab774c *)
and x19@uint64 x19 x15;
(* adcs	x9, x9, x16                                #! PC = 0xaaaaaaab7750 *)
adcs carry x9 x9 x16 carry;
(* adcs	x10, x10, x17                              #! PC = 0xaaaaaaab7754 *)
adcs carry x10 x10 x17 carry;
(* adcs	x11, x11, x19                              #! PC = 0xaaaaaaab7758 *)
adcs carry x11 x11 x19 carry;
(* adcs	x12, x12, x0                               #! PC = 0xaaaaaaab775c *)
adcs carry x12 x12 x0 carry;
(* adcs	x13, x13, x1                               #! PC = 0xaaaaaaab7760 *)
adcs carry x13 x13 x1 carry;
(* adc	x14, x14, x20                               #! PC = 0xaaaaaaab7764 *)
adcs dontcare x14 x14 x20 carry;
(* stp	x3, x4, [x2]                                #! EA = L0xffffffffe418; PC = 0xaaaaaaab7768 *)
mov L0xffffffffe418 x3;
mov L0xffffffffe420 x4;
(* stp	x5, x6, [x2, #16]                           #! EA = L0xffffffffe428; PC = 0xaaaaaaab776c *)
mov L0xffffffffe428 x5;
mov L0xffffffffe430 x6;
(* stp	x7, x8, [x2, #32]                           #! EA = L0xffffffffe438; PC = 0xaaaaaaab7770 *)
mov L0xffffffffe438 x7;
mov L0xffffffffe440 x8;
(* stp	x9, x10, [x2, #48]                          #! EA = L0xffffffffe448; PC = 0xaaaaaaab7774 *)
mov L0xffffffffe448 x9;
mov L0xffffffffe450 x10;
(* stp	x11, x12, [x2, #64]                         #! EA = L0xffffffffe458; PC = 0xaaaaaaab7778 *)
mov L0xffffffffe458 x11;
mov L0xffffffffe460 x12;
(* stp	x13, x14, [x2, #80]                         #! EA = L0xffffffffe468; PC = 0xaaaaaaab777c *)
mov L0xffffffffe468 x13;
mov L0xffffffffe470 x14;
(* ldp	x19, x20, [sp]                              #! EA = L0xffffffffe0e0; Value = 0x0000ffffffffe3b8; PC = 0xaaaaaaab7780 *)
mov x19 L0xffffffffe0e0;
mov x20 L0xffffffffe0e8;
(* add	sp, sp, #0x10                               #! PC = 0xaaaaaaab7784 *)
adds dontcare sp sp 0x10@uint64;
(* #! <- SP = 0xffffffffe0f0 *)
#! 0xffffffffe0f0 = 0xffffffffe0f0;
(* #ret                                            #! PC = 0xaaaaaaab7788 *)
#ret                                            #! 0xaaaaaaab7788 = 0xaaaaaaab7788;

mov cr0 L0xffffffffe3b8; mov cr1 L0xffffffffe3c0; mov cr2 L0xffffffffe3c8;
mov cr3 L0xffffffffe3d0; mov cr4 L0xffffffffe3d8; mov cr5 L0xffffffffe3e0;
mov cr6 L0xffffffffe3e8; mov cr7 L0xffffffffe3f0; mov cr8 L0xffffffffe3f8;
mov cr9 L0xffffffffe400; mov cra L0xffffffffe408; mov crb L0xffffffffe410;
mov ci0 L0xffffffffe418; mov ci1 L0xffffffffe420; mov ci2 L0xffffffffe428;
mov ci3 L0xffffffffe430; mov ci4 L0xffffffffe438; mov ci5 L0xffffffffe440;
mov ci6 L0xffffffffe448; mov ci7 L0xffffffffe450; mov ci8 L0xffffffffe458;
mov ci9 L0xffffffffe460; mov cia L0xffffffffe468; mov cib L0xffffffffe470;

assert true
    && and [eqmod (limbs 64 [cr0,cr1,cr2,cr3,cr4,cr5,cr6,cr7,cr8,cr9,cra,crb])
                  (limbs 64 [ar0,ar1,ar2,ar3,ar4,ar5,ar6,ar7,ar8,ar9,ara,arb] +
                   limbs 64 [br0,br1,br2,br3,br4,br5,br6,br7,br8,br9,bra,brb])
                  (limbs 64 [m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,ma,mb]),
            eqmod (limbs 64 [ci0,ci1,ci2,ci3,ci4,ci5,ci6,ci7,ci8,ci9,cia,cib])
                  (limbs 64 [ai0,ai1,ai2,ai3,ai4,ai5,ai6,ai7,ai8,ai9,aia,aib] +
                   limbs 64 [bi0,bi1,bi2,bi3,bi4,bi5,bi6,bi7,bi8,bi9,bia,bib])
                  (limbs 64 [m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,ma,mb])];
assume and [eqmod (limbs 64 [cr0,cr1,cr2,cr3,cr4,cr5,cr6,cr7,cr8,cr9,cra,crb])
                  (limbs 64 [ar0,ar1,ar2,ar3,ar4,ar5,ar6,ar7,ar8,ar9,ara,arb] +
                   limbs 64 [br0,br1,br2,br3,br4,br5,br6,br7,br8,br9,bra,brb])
                  (limbs 64 [m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,ma,mb]),
            eqmod (limbs 64 [ci0,ci1,ci2,ci3,ci4,ci5,ci6,ci7,ci8,ci9,cia,cib])
                  (limbs 64 [ai0,ai1,ai2,ai3,ai4,ai5,ai6,ai7,ai8,ai9,aia,aib] +
                   limbs 64 [bi0,bi1,bi2,bi3,bi4,bi5,bi6,bi7,bi8,bi9,bia,bib])
                  (limbs 64 [m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,ma,mb])]
    && true;

ghost I@uint64 : I**2 + 1 = 0 && true;

{
  eqmod ((    limbs 64 [cr0,cr1,cr2,cr3,cr4,cr5,cr6,cr7,cr8,cr9,cra,crb] +
          I * limbs 64 [ci0,ci1,ci2,ci3,ci4,ci5,ci6,ci7,ci8,ci9,cia,cib]))
        ((    limbs 64 [ar0,ar1,ar2,ar3,ar4,ar5,ar6,ar7,ar8,ar9,ara,arb] +
          I * limbs 64 [ai0,ai1,ai2,ai3,ai4,ai5,ai6,ai7,ai8,ai9,aia,aib]) +
         (    limbs 64 [br0,br1,br2,br3,br4,br5,br6,br7,br8,br9,bra,brb] +
          I * limbs 64 [bi0,bi1,bi2,bi3,bi4,bi5,bi6,bi7,bi8,bi9,bia,bib]))
        (limbs 64 [m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,ma,mb])
&&
  and [limbs 64 [cr0,cr1,cr2,cr3,cr4,cr5,cr6,cr7,cr8,cr9,cra,crb] <u
       2@768 * limbs 64 [m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,ma,mb],
       limbs 64 [ci0,ci1,ci2,ci3,ci4,ci5,ci6,ci7,ci8,ci9,cia,cib] <u
       2@768 * limbs 64 [m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,ma,mb]]
}

