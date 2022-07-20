(* quine: -v -isafety -jobs 20 -slicing -no_carry_constraint fpsub751.cl
Parsing Cryptoline file:                [OK]            0.003187 seconds
Checking well-formedness:               [OK]            0.000962 seconds
Transforming to SSA form:               [OK]            0.000454 seconds
Normalizing specification:              [OK]            0.000454 seconds
Rewriting assignments:                  [OK]            0.000506 seconds
Verifying program safety:               [OK]            0.000861 seconds
Verifying range specification:          [OK]            83.481848 seconds
Rewriting value-preserved casting:      [OK]            0.000043 seconds
Verifying algebraic specification:      [OK]            0.000438 seconds
Verification result:                    [OK]            83.489705 seconds

*)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
           uint64 a4, uint64 a5, uint64 a6, uint64 a7,
           uint64 a8, uint64 a9, uint64 aa, uint64 ab,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3,
           uint64 b4, uint64 b5, uint64 b6, uint64 b7,
           uint64 b8, uint64 b9, uint64 ba, uint64 bb,
           uint64 m0, uint64 m1, uint64 m2, uint64 m3,
           uint64 m4, uint64 m5, uint64 m6, uint64 m7,
           uint64 m8, uint64 m9, uint64 ma, uint64 mb) =
{
  true
&&
  and [limbs 64 [a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, aa, ab] <u
       2@768 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, ma, mb],
       limbs 64 [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, ba, bb] <u
       2@768 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, ma, mb],
       m0=0xFFFFFFFFFFFFFFFF@64, m1=0xFFFFFFFFFFFFFFFF@64,
       m2=0xFFFFFFFFFFFFFFFF@64, m3=0xFFFFFFFFFFFFFFFF@64,
       m4=0xFFFFFFFFFFFFFFFF@64, m5=0xEEAFFFFFFFFFFFFF@64,
       m6=0xE3EC968549F878A8@64, m7=0xDA959B1A13F7CC76@64,
       m8=0x084E9867D6EBE876@64, m9=0x8562B5045CB25748@64,
       ma=0x0E12909F97BADC66@64, mb=0x00006FE5D541F71C@64]
}

mov L0xffffffffe5f8 a0; mov L0xffffffffe600 a1; mov L0xffffffffe608 a2;
mov L0xffffffffe610 a3; mov L0xffffffffe618 a4; mov L0xffffffffe620 a5;
mov L0xffffffffe628 a6; mov L0xffffffffe630 a7; mov L0xffffffffe638 a8;
mov L0xffffffffe640 a9; mov L0xffffffffe648 aa; mov L0xffffffffe650 ab;

mov L0xffffffffe658 b0; mov L0xffffffffe660 b1; mov L0xffffffffe668 b2;
mov L0xffffffffe670 b3; mov L0xffffffffe678 b4; mov L0xffffffffe680 b5;
mov L0xffffffffe688 b6; mov L0xffffffffe690 b7; mov L0xffffffffe698 b8;
mov L0xffffffffe6a0 b9; mov L0xffffffffe6a8 ba; mov L0xffffffffe6b0 bb;

mov L0xaaaaaaab7588 0xFFFFFFFFFFFFFFFE@uint64;
mov L0xaaaaaaab7590 0xFFFFFFFFFFFFFFFF@uint64;
mov L0xaaaaaaab7598 0xDD5FFFFFFFFFFFFF@uint64;
mov L0xaaaaaaab75a0 0xC7D92D0A93F0F151@uint64;
mov L0xaaaaaaab75a8 0xB52B363427EF98ED@uint64;
mov L0xaaaaaaab75b0 0x109D30CFADD7D0ED@uint64;
mov L0xaaaaaaab75b8 0x0AC56A08B964AE90@uint64;
mov L0xaaaaaaab75c0 0x1C25213F2F75B8CD@uint64;
mov L0xaaaaaaab75c8 0x0000DFCBAA83EE38@uint64;

nondet x19@uint64; nondet x20@uint64; 
nondet sp@uint64;

(* #! -> SP = 0xffffffffe570 *)
#! 0xffffffffe570 = 0xffffffffe570;
(* #b	0xaaaaaaab778c <fpsub751_asm>                #! PC = 0xaaaaaaab6fc4 *)
#b	0xaaaaaaab778c <fpsub751_asm>                #! 0xaaaaaaab6fc4 = 0xaaaaaaab6fc4;
(* sub	sp, sp, #0x10                               #! PC = 0xaaaaaaab778c *)
subc dontcare sp sp 0x10@uint64;
(* str	x19, [sp]                                   #! EA = L0xffffffffe560; PC = 0xaaaaaaab7790 *)
mov L0xffffffffe560 x19;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe5f8; Value = 0x819725770586caa5; PC = 0xaaaaaaab7794 *)
mov x3 L0xffffffffe5f8;
mov x4 L0xffffffffe600;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffe608; Value = 0x1ca809c32c503791; PC = 0xaaaaaaab7798 *)
mov x5 L0xffffffffe608;
mov x6 L0xffffffffe610;
(* ldp	x15, x16, [x1]                              #! EA = L0xffffffffe658; Value = 0xfacff91b89678d23; PC = 0xaaaaaaab779c *)
mov x15 L0xffffffffe658;
mov x16 L0xffffffffe660;
(* ldp	x17, x19, [x1, #16]                         #! EA = L0xffffffffe668; Value = 0x6dfe6007534918d5; PC = 0xaaaaaaab77a0 *)
mov x17 L0xffffffffe668;
mov x19 L0xffffffffe670;
(* subs	x3, x3, x15                                #! PC = 0xaaaaaaab77a4 *)
subc carry x3 x3 x15;
(* sbcs	x4, x4, x16                                #! PC = 0xaaaaaaab77a8 *)
sbcs carry x4 x4 x16 carry;
(* sbcs	x5, x5, x17                                #! PC = 0xaaaaaaab77ac *)
sbcs carry x5 x5 x17 carry;
(* sbcs	x6, x6, x19                                #! PC = 0xaaaaaaab77b0 *)
sbcs carry x6 x6 x19 carry;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe618; Value = 0x2e146bb393d48e1c; PC = 0xaaaaaaab77b4 *)
mov x7 L0xffffffffe618;
mov x8 L0xffffffffe620;
(* ldp	x9, x10, [x0, #48]                          #! EA = L0xffffffffe628; Value = 0xd861a0a744f89e81; PC = 0xaaaaaaab77b8 *)
mov x9 L0xffffffffe628;
mov x10 L0xffffffffe630;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0xffffffffe678; Value = 0xc153a54959d64f3e; PC = 0xaaaaaaab77bc *)
mov x15 L0xffffffffe678;
mov x16 L0xffffffffe680;
(* ldp	x17, x19, [x1, #48]                         #! EA = L0xffffffffe688; Value = 0xd8178547aa87e6a3; PC = 0xaaaaaaab77c0 *)
mov x17 L0xffffffffe688;
mov x19 L0xffffffffe690;
(* sbcs	x7, x7, x15                                #! PC = 0xaaaaaaab77c4 *)
sbcs carry x7 x7 x15 carry;
(* sbcs	x8, x8, x16                                #! PC = 0xaaaaaaab77c8 *)
sbcs carry x8 x8 x16 carry;
(* sbcs	x9, x9, x17                                #! PC = 0xaaaaaaab77cc *)
sbcs carry x9 x9 x17 carry;
(* sbcs	x10, x10, x19                              #! PC = 0xaaaaaaab77d0 *)
sbcs carry x10 x10 x19 carry;
(* ldp	x11, x12, [x0, #64]                         #! EA = L0xffffffffe638; Value = 0x46928d656479fab0; PC = 0xaaaaaaab77d4 *)
mov x11 L0xffffffffe638;
mov x12 L0xffffffffe640;
(* ldp	x13, x14, [x0, #80]                         #! EA = L0xffffffffe648; Value = 0xab17ef7d3f8edd97; PC = 0xaaaaaaab77d8 *)
mov x13 L0xffffffffe648;
mov x14 L0xffffffffe650;
(* ldp	x15, x16, [x1, #64]                         #! EA = L0xffffffffe698; Value = 0x97fe4e783dfbd2f4; PC = 0xaaaaaaab77dc *)
mov x15 L0xffffffffe698;
mov x16 L0xffffffffe6a0;
(* ldp	x17, x19, [x1, #80]                         #! EA = L0xffffffffe6a8; Value = 0xdbcdf155f4d9cfad; PC = 0xaaaaaaab77e0 *)
mov x17 L0xffffffffe6a8;
mov x19 L0xffffffffe6b0;
(* sbcs	x11, x11, x15                              #! PC = 0xaaaaaaab77e4 *)
sbcs carry x11 x11 x15 carry;
(* sbcs	x12, x12, x16                              #! PC = 0xaaaaaaab77e8 *)
sbcs carry x12 x12 x16 carry;
(* sbcs	x13, x13, x17                              #! PC = 0xaaaaaaab77ec *)
sbcs carry x13 x13 x17 carry;
(* sbcs	x14, x14, x19                              #! PC = 0xaaaaaaab77f0 *)
sbcs carry x14 x14 x19 carry;
(* ngc	x15, xzr                                    #! PC = 0xaaaaaaab77f4 *)
sbcs dontcare x15 0@uint64 0@uint64 carry;
(* ldr	x16, 0xaaaaaaab7588 <p751x2>                #! PC = 0xaaaaaaab77f8 *)
mov x16 L0xaaaaaaab7588;
(* ldr	x17, 0xaaaaaaab7590 <p751x2+8>              #! PC = 0xaaaaaaab77fc *)
mov x17 L0xaaaaaaab7590;
(* ldr	x19, 0xaaaaaaab7598 <p751x2+16>             #! PC = 0xaaaaaaab7800 *)
mov x19 L0xaaaaaaab7598;
(* and	x16, x16, x15                               #! PC = 0xaaaaaaab7804 *)
and x16@uint64 x16 x15;
(* and	x17, x17, x15                               #! PC = 0xaaaaaaab7808 *)
and x17@uint64 x17 x15;
(* and	x19, x19, x15                               #! PC = 0xaaaaaaab780c *)
and x19@uint64 x19 x15;
(* adds	x3, x3, x16                                #! PC = 0xaaaaaaab7810 *)
adds carry x3 x3 x16;
(* adcs	x4, x4, x17                                #! PC = 0xaaaaaaab7814 *)
adcs carry x4 x4 x17 carry;
(* adcs	x5, x5, x17                                #! PC = 0xaaaaaaab7818 *)
adcs carry x5 x5 x17 carry;
(* adcs	x6, x6, x17                                #! PC = 0xaaaaaaab781c *)
adcs carry x6 x6 x17 carry;
(* adcs	x7, x7, x17                                #! PC = 0xaaaaaaab7820 *)
adcs carry x7 x7 x17 carry;
(* adcs	x8, x8, x19                                #! PC = 0xaaaaaaab7824 *)
adcs carry x8 x8 x19 carry;
(* ldr	x16, 0xaaaaaaab75a0 <p751x2+24>             #! PC = 0xaaaaaaab7828 *)
mov x16 L0xaaaaaaab75a0;
(* ldr	x17, 0xaaaaaaab75a8 <p751x2+32>             #! PC = 0xaaaaaaab782c *)
mov x17 L0xaaaaaaab75a8;
(* ldr	x19, 0xaaaaaaab75b0 <p751x2+40>             #! PC = 0xaaaaaaab7830 *)
mov x19 L0xaaaaaaab75b0;
(* and	x16, x16, x15                               #! PC = 0xaaaaaaab7834 *)
and x16@uint64 x16 x15;
(* and	x17, x17, x15                               #! PC = 0xaaaaaaab7838 *)
and x17@uint64 x17 x15;
(* and	x19, x19, x15                               #! PC = 0xaaaaaaab783c *)
and x19@uint64 x19 x15;
(* adcs	x9, x9, x16                                #! PC = 0xaaaaaaab7840 *)
adcs carry x9 x9 x16 carry;
(* adcs	x10, x10, x17                              #! PC = 0xaaaaaaab7844 *)
adcs carry x10 x10 x17 carry;
(* adcs	x11, x11, x19                              #! PC = 0xaaaaaaab7848 *)
adcs carry x11 x11 x19 carry;
(* ldr	x16, 0xaaaaaaab75b8 <p751x2+48>             #! PC = 0xaaaaaaab784c *)
mov x16 L0xaaaaaaab75b8;
(* ldr	x17, 0xaaaaaaab75c0 <p751x2+56>             #! PC = 0xaaaaaaab7850 *)
mov x17 L0xaaaaaaab75c0;
(* ldr	x19, 0xaaaaaaab75c8 <p751x2+64>             #! PC = 0xaaaaaaab7854 *)
mov x19 L0xaaaaaaab75c8;
(* and	x16, x16, x15                               #! PC = 0xaaaaaaab7858 *)
and x16@uint64 x16 x15;
(* and	x17, x17, x15                               #! PC = 0xaaaaaaab785c *)
and x17@uint64 x17 x15;
(* and	x19, x19, x15                               #! PC = 0xaaaaaaab7860 *)
and x19@uint64 x19 x15;
(* adcs	x12, x12, x16                              #! PC = 0xaaaaaaab7864 *)
adcs carry x12 x12 x16 carry;
(* adcs	x13, x13, x17                              #! PC = 0xaaaaaaab7868 *)
adcs carry x13 x13 x17 carry;
(* adc	x14, x14, x19                               #! PC = 0xaaaaaaab786c *)
adcs dontcare x14 x14 x19 carry;
(* stp	x3, x4, [x2]                                #! EA = L0xffffffffe718; PC = 0xaaaaaaab7870 *)
mov L0xffffffffe718 x3;
mov L0xffffffffe720 x4;
(* stp	x5, x6, [x2, #16]                           #! EA = L0xffffffffe728; PC = 0xaaaaaaab7874 *)
mov L0xffffffffe728 x5;
mov L0xffffffffe730 x6;
(* stp	x7, x8, [x2, #32]                           #! EA = L0xffffffffe738; PC = 0xaaaaaaab7878 *)
mov L0xffffffffe738 x7;
mov L0xffffffffe740 x8;
(* stp	x9, x10, [x2, #48]                          #! EA = L0xffffffffe748; PC = 0xaaaaaaab787c *)
mov L0xffffffffe748 x9;
mov L0xffffffffe750 x10;
(* stp	x11, x12, [x2, #64]                         #! EA = L0xffffffffe758; PC = 0xaaaaaaab7880 *)
mov L0xffffffffe758 x11;
mov L0xffffffffe760 x12;
(* stp	x13, x14, [x2, #80]                         #! EA = L0xffffffffe768; PC = 0xaaaaaaab7884 *)
mov L0xffffffffe768 x13;
mov L0xffffffffe770 x14;
(* ldr	x19, [sp]                                   #! EA = L0xffffffffe560; Value = 0x0000ffffffffe718; PC = 0xaaaaaaab7888 *)
mov x19 L0xffffffffe560;
(* add	sp, sp, #0x10                               #! PC = 0xaaaaaaab788c *)
adds dontcare sp sp 0x10@uint64;
(* #! <- SP = 0xffffffffe570 *)
#! 0xffffffffe570 = 0xffffffffe570;
(* #ret                                            #! PC = 0xaaaaaaab7890 *)
#ret                                            #! 0xaaaaaaab7890 = 0xaaaaaaab7890;

mov c0 L0xffffffffe718; mov c1 L0xffffffffe720; mov c2 L0xffffffffe728;
mov c3 L0xffffffffe730; mov c4 L0xffffffffe738; mov c5 L0xffffffffe740;
mov c6 L0xffffffffe748; mov c7 L0xffffffffe750; mov c8 L0xffffffffe758;
mov c9 L0xffffffffe760; mov ca L0xffffffffe768; mov cb L0xffffffffe770;

{
  true
&&
  and [eqsmod limbs 64 [c0, c1, c2, c3, c4, c5, c6, c7, c8, c9, ca, cb]
              limbs 64 [a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, aa, ab] -
              limbs 64 [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, ba, bb]
              limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, ma, mb],
       limbs 64 [c0, c1, c2, c3, c4, c5, c6, c7, c8, c9, ca, cb] <u
       2@768 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, ma, mb]
  ]
}
