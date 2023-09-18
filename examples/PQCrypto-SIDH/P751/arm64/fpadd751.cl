(* quine: -v -isafety -jobs 20 -slicing -no_carry_constraint fpadd751.cl
Parsing Cryptoline file:                [OK]            0.002780 seconds
Checking well-formedness:               [OK]            0.000691 seconds
Transforming to SSA form:               [OK]            0.000312 seconds
Normalizing specification:              [OK]            0.000314 seconds
Rewriting assignments:                  [OK]            0.000963 seconds
Verifying program safety:               [OK]            0.000168 seconds
Verifying range specification:          [OK]            26.885331 seconds
Rewriting value-preserved casting:      [OK]            0.000047 seconds
Verifying algebraic specification:      [OK]            0.000549 seconds
Verification result:                    [OK]            26.891878 seconds
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
(* #b	0xaaaaaaab7648 <fpadd751_asm>                #! PC = 0xaaaaaaab6fc0 *)
#b	0xaaaaaaab7648 <fpadd751_asm>                #! 0xaaaaaaab6fc0 = 0xaaaaaaab6fc0;
(* sub	sp, sp, #0x10                               #! PC = 0xaaaaaaab7648 *)
subc dontcare sp sp 0x10@uint64;
(* stp	x19, x20, [sp]                              #! EA = L0xffffffffe560; PC = 0xaaaaaaab764c *)
mov L0xffffffffe560 x19;
mov L0xffffffffe568 x20;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe5f8; Value = 0xec4aff517369c667; PC = 0xaaaaaaab7650 *)
mov x3 L0xffffffffe5f8;
mov x4 L0xffffffffe600;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffe608; Value = 0x8de7e81bf854c27c; PC = 0xaaaaaaab7654 *)
mov x5 L0xffffffffe608;
mov x6 L0xffffffffe610;
(* ldp	x15, x16, [x1]                              #! EA = L0xffffffffe658; Value = 0x3aaafafb43fe1a02; PC = 0xaaaaaaab7658 *)
mov x15 L0xffffffffe658;
mov x16 L0xffffffffe660;
(* ldp	x17, x19, [x1, #16]                         #! EA = L0xffffffffe668; Value = 0xbb5cf98961bed875; PC = 0xaaaaaaab765c *)
mov x17 L0xffffffffe668;
mov x19 L0xffffffffe670;
(* adds	x3, x3, x15                                #! PC = 0xaaaaaaab7660 *)
adds carry x3 x3 x15;
(* adcs	x4, x4, x16                                #! PC = 0xaaaaaaab7664 *)
adcs carry x4 x4 x16 carry;
(* adcs	x5, x5, x17                                #! PC = 0xaaaaaaab7668 *)
adcs carry x5 x5 x17 carry;
(* adcs	x6, x6, x19                                #! PC = 0xaaaaaaab766c *)
adcs carry x6 x6 x19 carry;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe618; Value = 0x5aa35831b70d3266; PC = 0xaaaaaaab7670 *)
mov x7 L0xffffffffe618;
mov x8 L0xffffffffe620;
(* ldp	x9, x10, [x0, #48]                          #! EA = L0xffffffffe628; Value = 0x1154b49bc6cdb2ab; PC = 0xaaaaaaab7674 *)
mov x9 L0xffffffffe628;
mov x10 L0xffffffffe630;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0xffffffffe678; Value = 0xe53aa1e900f7ef05; PC = 0xaaaaaaab7678 *)
mov x15 L0xffffffffe678;
mov x16 L0xffffffffe680;
(* ldp	x17, x19, [x1, #48]                         #! EA = L0xffffffffe688; Value = 0xc5647b1ca81e231f; PC = 0xaaaaaaab767c *)
mov x17 L0xffffffffe688;
mov x19 L0xffffffffe690;
(* adcs	x7, x7, x15                                #! PC = 0xaaaaaaab7680 *)
adcs carry x7 x7 x15 carry;
(* adcs	x8, x8, x16                                #! PC = 0xaaaaaaab7684 *)
adcs carry x8 x8 x16 carry;
(* adcs	x9, x9, x17                                #! PC = 0xaaaaaaab7688 *)
adcs carry x9 x9 x17 carry;
(* adcs	x10, x10, x19                              #! PC = 0xaaaaaaab768c *)
adcs carry x10 x10 x19 carry;
(* ldp	x11, x12, [x0, #64]                         #! EA = L0xffffffffe638; Value = 0x67fce141a13ee970; PC = 0xaaaaaaab7690 *)
mov x11 L0xffffffffe638;
mov x12 L0xffffffffe640;
(* ldp	x13, x14, [x0, #80]                         #! EA = L0xffffffffe648; Value = 0xfb3bb0ec2a5c388f; PC = 0xaaaaaaab7694 *)
mov x13 L0xffffffffe648;
mov x14 L0xffffffffe650;
(* ldp	x15, x16, [x1, #64]                         #! EA = L0xffffffffe698; Value = 0xdc099e112464703b; PC = 0xaaaaaaab7698 *)
mov x15 L0xffffffffe698;
mov x16 L0xffffffffe6a0;
(* ldp	x17, x19, [x1, #80]                         #! EA = L0xffffffffe6a8; Value = 0x5c15474850e3cd33; PC = 0xaaaaaaab769c *)
mov x17 L0xffffffffe6a8;
mov x19 L0xffffffffe6b0;
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
(* stp	x3, x4, [x2]                                #! EA = L0xffffffffe718; PC = 0xaaaaaaab7768 *)
mov L0xffffffffe718 x3;
mov L0xffffffffe720 x4;
(* stp	x5, x6, [x2, #16]                           #! EA = L0xffffffffe728; PC = 0xaaaaaaab776c *)
mov L0xffffffffe728 x5;
mov L0xffffffffe730 x6;
(* stp	x7, x8, [x2, #32]                           #! EA = L0xffffffffe738; PC = 0xaaaaaaab7770 *)
mov L0xffffffffe738 x7;
mov L0xffffffffe740 x8;
(* stp	x9, x10, [x2, #48]                          #! EA = L0xffffffffe748; PC = 0xaaaaaaab7774 *)
mov L0xffffffffe748 x9;
mov L0xffffffffe750 x10;
(* stp	x11, x12, [x2, #64]                         #! EA = L0xffffffffe758; PC = 0xaaaaaaab7778 *)
mov L0xffffffffe758 x11;
mov L0xffffffffe760 x12;
(* stp	x13, x14, [x2, #80]                         #! EA = L0xffffffffe768; PC = 0xaaaaaaab777c *)
mov L0xffffffffe768 x13;
mov L0xffffffffe770 x14;
(* ldp	x19, x20, [sp]                              #! EA = L0xffffffffe560; Value = 0x0000ffffffffe718; PC = 0xaaaaaaab7780 *)
mov x19 L0xffffffffe560;
mov x20 L0xffffffffe568;
(* add	sp, sp, #0x10                               #! PC = 0xaaaaaaab7784 *)
adds dontcare sp sp 0x10@uint64;
(* #! <- SP = 0xffffffffe570 *)
#! 0xffffffffe570 = 0xffffffffe570;
(* #ret                                            #! PC = 0xaaaaaaab7788 *)
#ret                                            #! 0xaaaaaaab7788 = 0xaaaaaaab7788;

mov c0 L0xffffffffe718; mov c1 L0xffffffffe720; mov c2 L0xffffffffe728;
mov c3 L0xffffffffe730; mov c4 L0xffffffffe738; mov c5 L0xffffffffe740;
mov c6 L0xffffffffe748; mov c7 L0xffffffffe750; mov c8 L0xffffffffe758;
mov c9 L0xffffffffe760; mov ca L0xffffffffe768; mov cb L0xffffffffe770;

{
  true
&&
  and [eqmod (limbs 64 [c0, c1, c2, c3, c4, c5, c6, c7, c8, c9, ca, cb])
             (limbs 64 [a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, aa, ab] +
              limbs 64 [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, ba, bb])
             (limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, ma, mb]),
       limbs 64 [c0, c1, c2, c3, c4, c5, c6, c7, c8, c9, ca, cb] <u
       2@768 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, ma, mb]
  ]
}

