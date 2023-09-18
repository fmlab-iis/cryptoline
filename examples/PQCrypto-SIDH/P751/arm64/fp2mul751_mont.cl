(* NOTE: the range of CR is not tight *)
(* quine: -v -isafety -jobs 20 -slicing -no_carry_constraint -vo lex fp2mul751_mont.cl                                                      Parsing Cryptoline file:                [OK]            0.037727 seconds
Checking well-formedness:               [OK]            0.008854 seconds
Transforming to SSA form:               [OK]            0.004228 seconds
Normalizing specification:              [OK]            0.006986 seconds
Rewriting assignments:                  [OK]            0.006693 seconds
Verifying program safety:               [OK]            58.182852 seconds
Verifying range assertions:             [OK]            217.981111 seconds
Verifying range specification:          [OK]            211.537070 seconds
Rewriting value-preserved casting:      [OK]            0.002394 seconds
Verifying algebraic assertions:         [OK]            0.009872 seconds
Verifying algebraic specification:      [OK]            1.193485 seconds
Verification result:                    [OK]            488.974375 seconds
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
  and [m0=0xFFFFFFFFFFFFFFFF, m1=0xFFFFFFFFFFFFFFFF, m2=0xFFFFFFFFFFFFFFFF,
       m3=0xFFFFFFFFFFFFFFFF, m4=0xFFFFFFFFFFFFFFFF, m5=0xEEAFFFFFFFFFFFFF,
       m6=0xE3EC968549F878A8, m7=0xDA959B1A13F7CC76, m8=0x084E9867D6EBE876,
       m9=0x8562B5045CB25748, ma=0x0E12909F97BADC66, mb=0x00006FE5D541F71C]
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

mov L0xffffffffe5f8 ar0; mov L0xffffffffe600 ar1; mov L0xffffffffe608 ar2;
mov L0xffffffffe610 ar3; mov L0xffffffffe618 ar4; mov L0xffffffffe620 ar5;
mov L0xffffffffe628 ar6; mov L0xffffffffe630 ar7; mov L0xffffffffe638 ar8;
mov L0xffffffffe640 ar9; mov L0xffffffffe648 ara; mov L0xffffffffe650 arb;
mov L0xffffffffe658 ai0; mov L0xffffffffe660 ai1; mov L0xffffffffe668 ai2;
mov L0xffffffffe670 ai3; mov L0xffffffffe678 ai4; mov L0xffffffffe680 ai5;
mov L0xffffffffe688 ai6; mov L0xffffffffe690 ai7; mov L0xffffffffe698 ai8;
mov L0xffffffffe6a0 ai9; mov L0xffffffffe6a8 aia; mov L0xffffffffe6b0 aib;

mov L0xffffffffe6b8 br0; mov L0xffffffffe6c0 br1; mov L0xffffffffe6c8 br2;
mov L0xffffffffe6d0 br3; mov L0xffffffffe6d8 br4; mov L0xffffffffe6e0 br5;
mov L0xffffffffe6e8 br6; mov L0xffffffffe6f0 br7; mov L0xffffffffe6f8 br8;
mov L0xffffffffe700 br9; mov L0xffffffffe708 bra; mov L0xffffffffe710 brb;
mov L0xffffffffe718 bi0; mov L0xffffffffe720 bi1; mov L0xffffffffe728 bi2;
mov L0xffffffffe730 bi3; mov L0xffffffffe738 bi4; mov L0xffffffffe740 bi5;
mov L0xffffffffe748 bi6; mov L0xffffffffe750 bi7; mov L0xffffffffe758 bi8;
mov L0xffffffffe760 bi9; mov L0xffffffffe768 bia; mov L0xffffffffe770 bib;

mov L0xaaaaaaab7548 0xFFFFFFFFFFFFFFFF@uint64;
mov L0xaaaaaaab7550 0xEEAFFFFFFFFFFFFF@uint64;
mov L0xaaaaaaab7558 0xE3EC968549F878A8@uint64;
mov L0xaaaaaaab7560 0xDA959B1A13F7CC76@uint64;
mov L0xaaaaaaab7568 0x084E9867D6EBE876@uint64;
mov L0xaaaaaaab7570 0x8562B5045CB25748@uint64;
mov L0xaaaaaaab7578 0x0E12909F97BADC66@uint64;
mov L0xaaaaaaab7580 0x00006FE5D541F71C@uint64;

mov L0xaaaaaaab7618 0x2D0A93F0F151DD60@uint64;
mov L0xaaaaaaab7620 0x363427EF98EDC7D9@uint64;
mov L0xaaaaaaab7628 0x30CFADD7D0EDB52B@uint64;
mov L0xaaaaaaab7630 0x6A08B964AE90109D@uint64;
mov L0xaaaaaaab7638 0x213F2F75B8CD0AC5@uint64;
mov L0xaaaaaaab7640 0xDFCBAA83EE381C25@uint64;

nondet  x0@uint64; nondet  x1@uint64; nondet  x2@uint64;
nondet x19@uint64; nondet x20@uint64; nondet x21@uint64; nondet x22@uint64;
nondet x23@uint64; nondet x24@uint64; nondet x25@uint64; nondet x26@uint64;
nondet x27@uint64; nondet x28@uint64; nondet x29@uint64; nondet x30@uint64;
nondet sp@uint64;

nondet L0xaaaaaaacdfd8@uint64; nondet L0xfffff7ffd6b0@uint64;

(* #! -> SP = 0xffffffffe0f0 *)
#! 0xffffffffe0f0 = 0xffffffffe0f0;
(* sub	sp, sp, #0x370                              #! PC = 0xaaaaaaaae490 *)
subc dontcare sp sp 0x370@uint64;
(* stp	x29, x30, [sp]                              #! EA = L0xffffffffdd80; PC = 0xaaaaaaaae498 *)
mov L0xffffffffdd80 x29;
mov L0xffffffffdd88 x30;
(* mov	x29, sp                                     #! PC = 0xaaaaaaaae49c *)
mov x29 sp;
(* ldr	x3, [x3, #4056]                             #! EA = L0xaaaaaaacdfd8; Value = 0x0000fffff7ffd6b0; PC = 0xaaaaaaaae4a0 *)
mov x3 L0xaaaaaaacdfd8;
(* stp	x19, x20, [sp, #16]                         #! EA = L0xffffffffdd90; PC = 0xaaaaaaaae4a4 *)
mov L0xffffffffdd90 x19;
mov L0xffffffffdd98 x20;
(* mov	x20, x1                                     #! PC = 0xaaaaaaaae4a8 *)
mov x20 x1;
(* stp	x21, x22, [sp, #32]                         #! EA = L0xffffffffdda0; PC = 0xaaaaaaaae4ac *)
mov L0xffffffffdda0 x21;
mov L0xffffffffdda8 x22;
(* mov	x22, x2                                     #! PC = 0xaaaaaaaae4b0 *)
mov x22 x2;
(* add	x19, sp, #0x128                             #! PC = 0xaaaaaaaae4b4 *)
adds dontcare x19 sp 0x128@uint64;
(* stp	x23, x24, [sp, #48]                         #! EA = L0xffffffffddb0; PC = 0xaaaaaaaae4b8 *)
mov L0xffffffffddb0 x23;
mov L0xffffffffddb8 x24;
(* add	x23, sp, #0x68                              #! PC = 0xaaaaaaaae4bc *)
adds dontcare x23 sp 0x68@uint64;
(* add	x24, sp, #0xc8                              #! PC = 0xaaaaaaaae4c0 *)
adds dontcare x24 sp 0xc8@uint64;
(* stp	x25, x26, [sp, #64]                         #! EA = L0xffffffffddc0; PC = 0xaaaaaaaae4c4 *)
mov L0xffffffffddc0 x25;
mov L0xffffffffddc8 x26;
(* add	x26, x0, #0x60                              #! PC = 0xaaaaaaaae4c8 *)
adds dontcare x26 x0 0x60@uint64;
(* mov	x25, x0                                     #! PC = 0xaaaaaaaae4cc *)
mov x25 x0;
(* str	x27, [sp, #80]                              #! EA = L0xffffffffddd0; PC = 0xaaaaaaaae4d0 *)
mov L0xffffffffddd0 x27;
(* mov	x1, x26                                     #! PC = 0xaaaaaaaae4d4 *)
mov x1 x26;
(* add	x27, x20, #0x60                             #! PC = 0xaaaaaaaae4d8 *)
adds dontcare x27 x20 0x60@uint64;
(* add	x21, sp, #0x1e8                             #! PC = 0xaaaaaaaae4dc *)
adds dontcare x21 sp 0x1e8@uint64;
(* ldr	x2, [x3]                                    #! EA = L0xfffff7ffd6b0; Value = 0xc2c3f17c1c719d00; PC = 0xaaaaaaaae4e0 *)
mov x2 L0xfffff7ffd6b0;
(* str	x2, [sp, #872]                              #! EA = L0xffffffffe0e8; PC = 0xaaaaaaaae4e4 *)
mov L0xffffffffe0e8 x2;
(* mov	x2, #0x0                   	// #0           #! PC = 0xaaaaaaaae4e8 *)
mov x2 0x0@uint64;
(* mov	x2, x23                                     #! PC = 0xaaaaaaaae4ec *)
mov x2 x23;
(* #bl	0xaaaaaaab8cec <mp_add751_asm>              #! PC = 0xaaaaaaaae4f0 *)
#bl	0xaaaaaaab8cec <mp_add751_asm>              #! 0xaaaaaaaae4f0 = 0xaaaaaaaae4f0;
(* #! -> SP = 0xffffffffdd80 *)
#! 0xffffffffdd80 = 0xffffffffdd80;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe5f8; Value = 0xd61b7bfad7ada26b; PC = 0xaaaaaaab8cec *)
mov x3 L0xffffffffe5f8;
mov x4 L0xffffffffe600;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffe608; Value = 0xc727e69e332bc6b1; PC = 0xaaaaaaab8cf0 *)
mov x5 L0xffffffffe608;
mov x6 L0xffffffffe610;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe618; Value = 0xdf12b32bd970f2f3; PC = 0xaaaaaaab8cf4 *)
mov x7 L0xffffffffe618;
mov x8 L0xffffffffe620;
(* ldp	x9, x10, [x0, #48]                          #! EA = L0xffffffffe628; Value = 0xe4b5561a1ae56b5a; PC = 0xaaaaaaab8cf8 *)
mov x9 L0xffffffffe628;
mov x10 L0xffffffffe630;
(* ldp	x11, x12, [x0, #64]                         #! EA = L0xffffffffe638; Value = 0xb043e4f309687921; PC = 0xaaaaaaab8cfc *)
mov x11 L0xffffffffe638;
mov x12 L0xffffffffe640;
(* ldp	x13, x14, [x0, #80]                         #! EA = L0xffffffffe648; Value = 0x032b11e8cb16542c; PC = 0xaaaaaaab8d00 *)
mov x13 L0xffffffffe648;
mov x14 L0xffffffffe650;
(* ldp	x15, x16, [x1]                              #! EA = L0xffffffffe658; Value = 0x2878d7990886cec2; PC = 0xaaaaaaab8d04 *)
mov x15 L0xffffffffe658;
mov x16 L0xffffffffe660;
(* ldp	x17, x18, [x1, #16]                         #! EA = L0xffffffffe668; Value = 0x380b123c24d7560d; PC = 0xaaaaaaab8d08 *)
mov x17 L0xffffffffe668;
mov x18 L0xffffffffe670;
(* adds	x3, x3, x15                                #! PC = 0xaaaaaaab8d0c *)
adds carry x3 x3 x15;
(* adcs	x4, x4, x16                                #! PC = 0xaaaaaaab8d10 *)
adcs carry x4 x4 x16 carry;
(* adcs	x5, x5, x17                                #! PC = 0xaaaaaaab8d14 *)
adcs carry x5 x5 x17 carry;
(* adcs	x6, x6, x18                                #! PC = 0xaaaaaaab8d18 *)
adcs carry x6 x6 x18 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0xffffffffe678; Value = 0xec8523c5895288f7; PC = 0xaaaaaaab8d1c *)
mov x15 L0xffffffffe678;
mov x16 L0xffffffffe680;
(* ldp	x17, x18, [x1, #48]                         #! EA = L0xffffffffe688; Value = 0x37a097402cac705b; PC = 0xaaaaaaab8d20 *)
mov x17 L0xffffffffe688;
mov x18 L0xffffffffe690;
(* adcs	x7, x7, x15                                #! PC = 0xaaaaaaab8d24 *)
adcs carry x7 x7 x15 carry;
(* adcs	x8, x8, x16                                #! PC = 0xaaaaaaab8d28 *)
adcs carry x8 x8 x16 carry;
(* adcs	x9, x9, x17                                #! PC = 0xaaaaaaab8d2c *)
adcs carry x9 x9 x17 carry;
(* adcs	x10, x10, x18                              #! PC = 0xaaaaaaab8d30 *)
adcs carry x10 x10 x18 carry;
(* ldp	x15, x16, [x1, #64]                         #! EA = L0xffffffffe698; Value = 0x6381753fed20d372; PC = 0xaaaaaaab8d34 *)
mov x15 L0xffffffffe698;
mov x16 L0xffffffffe6a0;
(* ldp	x17, x18, [x1, #80]                         #! EA = L0xffffffffe6a8; Value = 0x03ab967225bcf121; PC = 0xaaaaaaab8d38 *)
mov x17 L0xffffffffe6a8;
mov x18 L0xffffffffe6b0;
(* adcs	x11, x11, x15                              #! PC = 0xaaaaaaab8d3c *)
adcs carry x11 x11 x15 carry;
(* adcs	x12, x12, x16                              #! PC = 0xaaaaaaab8d40 *)
adcs carry x12 x12 x16 carry;
(* adcs	x13, x13, x17                              #! PC = 0xaaaaaaab8d44 *)
adcs carry x13 x13 x17 carry;
(* adc	x14, x14, x18                               #! PC = 0xaaaaaaab8d48 *)
adc x14 x14 x18 carry;
(* stp	x3, x4, [x2]                                #! EA = L0xffffffffdde8; PC = 0xaaaaaaab8d4c *)
mov L0xffffffffdde8 x3;
mov L0xffffffffddf0 x4;
(* stp	x5, x6, [x2, #16]                           #! EA = L0xffffffffddf8; PC = 0xaaaaaaab8d50 *)
mov L0xffffffffddf8 x5;
mov L0xffffffffde00 x6;
(* stp	x7, x8, [x2, #32]                           #! EA = L0xffffffffde08; PC = 0xaaaaaaab8d54 *)
mov L0xffffffffde08 x7;
mov L0xffffffffde10 x8;
(* stp	x9, x10, [x2, #48]                          #! EA = L0xffffffffde18; PC = 0xaaaaaaab8d58 *)
mov L0xffffffffde18 x9;
mov L0xffffffffde20 x10;
(* stp	x11, x12, [x2, #64]                         #! EA = L0xffffffffde28; PC = 0xaaaaaaab8d5c *)
mov L0xffffffffde28 x11;
mov L0xffffffffde30 x12;
(* stp	x13, x14, [x2, #80]                         #! EA = L0xffffffffde38; PC = 0xaaaaaaab8d60 *)
mov L0xffffffffde38 x13;
mov L0xffffffffde40 x14;
(* #! <- SP = 0xffffffffdd80 *)
#! 0xffffffffdd80 = 0xffffffffdd80;
(* #ret                                            #! PC = 0xaaaaaaab8d64 *)
#ret                                            #! 0xaaaaaaab8d64 = 0xaaaaaaab8d64;

assert true
    && limbs 64 [L0xffffffffdde8, L0xffffffffddf0, L0xffffffffddf8,
                 L0xffffffffde00, L0xffffffffde08, L0xffffffffde10,
                 L0xffffffffde18, L0xffffffffde20, L0xffffffffde28,
                 L0xffffffffde30, L0xffffffffde38, L0xffffffffde40] =
       limbs 64 [ar0, ar1, ar2, ar3, ar4, ar5, ar6, ar7, ar8, ar9, ara, arb] +
       limbs 64 [ai0, ai1, ai2, ai3, ai4, ai5, ai6, ai7, ai8, ai9, aia, aib];
assume limbs 64 [L0xffffffffdde8, L0xffffffffddf0, L0xffffffffddf8,
                 L0xffffffffde00, L0xffffffffde08, L0xffffffffde10,
                 L0xffffffffde18, L0xffffffffde20, L0xffffffffde28,
                 L0xffffffffde30, L0xffffffffde38, L0xffffffffde40] =
       limbs 64 [ar0, ar1, ar2, ar3, ar4, ar5, ar6, ar7, ar8, ar9, ara, arb] +
       limbs 64 [ai0, ai1, ai2, ai3, ai4, ai5, ai6, ai7, ai8, ai9, aia, aib]
    && true;

(* CUT 0 *)
(* NOTE: summary *)
cut limbs 64 [L0xffffffffdde8, L0xffffffffddf0, L0xffffffffddf8,
              L0xffffffffde00, L0xffffffffde08, L0xffffffffde10,
              L0xffffffffde18, L0xffffffffde20, L0xffffffffde28,
              L0xffffffffde30, L0xffffffffde38, L0xffffffffde40] =
    limbs 64 [ar0, ar1, ar2, ar3, ar4, ar5, ar6, ar7, ar8, ar9, ara, arb] +
    limbs 64 [ai0, ai1, ai2, ai3, ai4, ai5, ai6, ai7, ai8, ai9, aia, aib]
 && limbs 64 [L0xffffffffdde8, L0xffffffffddf0, L0xffffffffddf8,
              L0xffffffffde00, L0xffffffffde08, L0xffffffffde10,
              L0xffffffffde18, L0xffffffffde20, L0xffffffffde28,
              L0xffffffffde30, L0xffffffffde38, L0xffffffffde40] <u
    4@768 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, ma, mb];

(* mov	x0, x20                                     #! PC = 0xaaaaaaaae4f4 *)
mov x0 x20;
(* mov	x1, x27                                     #! PC = 0xaaaaaaaae4f8 *)
mov x1 x27;
(* mov	x2, x24                                     #! PC = 0xaaaaaaaae4fc *)
mov x2 x24;
(* #bl	0xaaaaaaab8cec <mp_add751_asm>              #! PC = 0xaaaaaaaae500 *)
#bl	0xaaaaaaab8cec <mp_add751_asm>              #! 0xaaaaaaaae500 = 0xaaaaaaaae500;
(* #! -> SP = 0xffffffffdd80 *)
#! 0xffffffffdd80 = 0xffffffffdd80;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe6b8; Value = 0x52a0dfd46c663f91; PC = 0xaaaaaaab8cec *)
mov x3 L0xffffffffe6b8;
mov x4 L0xffffffffe6c0;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffe6c8; Value = 0x33ed6895b925ab27; PC = 0xaaaaaaab8cf0 *)
mov x5 L0xffffffffe6c8;
mov x6 L0xffffffffe6d0;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe6d8; Value = 0x676e0733637927f3; PC = 0xaaaaaaab8cf4 *)
mov x7 L0xffffffffe6d8;
mov x8 L0xffffffffe6e0;
(* ldp	x9, x10, [x0, #48]                          #! EA = L0xffffffffe6e8; Value = 0x7536372564f2a985; PC = 0xaaaaaaab8cf8 *)
mov x9 L0xffffffffe6e8;
mov x10 L0xffffffffe6f0;
(* ldp	x11, x12, [x0, #64]                         #! EA = L0xffffffffe6f8; Value = 0x5dc3c5586beebe97; PC = 0xaaaaaaab8cfc *)
mov x11 L0xffffffffe6f8;
mov x12 L0xffffffffe700;
(* ldp	x13, x14, [x0, #80]                         #! EA = L0xffffffffe708; Value = 0x85437aab6a838d82; PC = 0xaaaaaaab8d00 *)
mov x13 L0xffffffffe708;
mov x14 L0xffffffffe710;
(* ldp	x15, x16, [x1]                              #! EA = L0xffffffffe718; Value = 0x84c334c0be52428a; PC = 0xaaaaaaab8d04 *)
mov x15 L0xffffffffe718;
mov x16 L0xffffffffe720;
(* ldp	x17, x18, [x1, #16]                         #! EA = L0xffffffffe728; Value = 0xf4aa8bad0950db07; PC = 0xaaaaaaab8d08 *)
mov x17 L0xffffffffe728;
mov x18 L0xffffffffe730;
(* adds	x3, x3, x15                                #! PC = 0xaaaaaaab8d0c *)
adds carry x3 x3 x15;
(* adcs	x4, x4, x16                                #! PC = 0xaaaaaaab8d10 *)
adcs carry x4 x4 x16 carry;
(* adcs	x5, x5, x17                                #! PC = 0xaaaaaaab8d14 *)
adcs carry x5 x5 x17 carry;
(* adcs	x6, x6, x18                                #! PC = 0xaaaaaaab8d18 *)
adcs carry x6 x6 x18 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0xffffffffe738; Value = 0xf9d50583c11ff1da; PC = 0xaaaaaaab8d1c *)
mov x15 L0xffffffffe738;
mov x16 L0xffffffffe740;
(* ldp	x17, x18, [x1, #48]                         #! EA = L0xffffffffe748; Value = 0x2e4245bb0f83c188; PC = 0xaaaaaaab8d20 *)
mov x17 L0xffffffffe748;
mov x18 L0xffffffffe750;
(* adcs	x7, x7, x15                                #! PC = 0xaaaaaaab8d24 *)
adcs carry x7 x7 x15 carry;
(* adcs	x8, x8, x16                                #! PC = 0xaaaaaaab8d28 *)
adcs carry x8 x8 x16 carry;
(* adcs	x9, x9, x17                                #! PC = 0xaaaaaaab8d2c *)
adcs carry x9 x9 x17 carry;
(* adcs	x10, x10, x18                              #! PC = 0xaaaaaaab8d30 *)
adcs carry x10 x10 x18 carry;
(* ldp	x15, x16, [x1, #64]                         #! EA = L0xffffffffe758; Value = 0xc966d5fc452340c1; PC = 0xaaaaaaab8d34 *)
mov x15 L0xffffffffe758;
mov x16 L0xffffffffe760;
(* ldp	x17, x18, [x1, #80]                         #! EA = L0xffffffffe768; Value = 0x9079f2cf9bcb754d; PC = 0xaaaaaaab8d38 *)
mov x17 L0xffffffffe768;
mov x18 L0xffffffffe770;
(* adcs	x11, x11, x15                              #! PC = 0xaaaaaaab8d3c *)
adcs carry x11 x11 x15 carry;
(* adcs	x12, x12, x16                              #! PC = 0xaaaaaaab8d40 *)
adcs carry x12 x12 x16 carry;
(* adcs	x13, x13, x17                              #! PC = 0xaaaaaaab8d44 *)
adcs carry x13 x13 x17 carry;
(* adc	x14, x14, x18                               #! PC = 0xaaaaaaab8d48 *)
adc x14 x14 x18 carry;
(* stp	x3, x4, [x2]                                #! EA = L0xffffffffde48; PC = 0xaaaaaaab8d4c *)
mov L0xffffffffde48 x3;
mov L0xffffffffde50 x4;
(* stp	x5, x6, [x2, #16]                           #! EA = L0xffffffffde58; PC = 0xaaaaaaab8d50 *)
mov L0xffffffffde58 x5;
mov L0xffffffffde60 x6;
(* stp	x7, x8, [x2, #32]                           #! EA = L0xffffffffde68; PC = 0xaaaaaaab8d54 *)
mov L0xffffffffde68 x7;
mov L0xffffffffde70 x8;
(* stp	x9, x10, [x2, #48]                          #! EA = L0xffffffffde78; PC = 0xaaaaaaab8d58 *)
mov L0xffffffffde78 x9;
mov L0xffffffffde80 x10;
(* stp	x11, x12, [x2, #64]                         #! EA = L0xffffffffde88; PC = 0xaaaaaaab8d5c *)
mov L0xffffffffde88 x11;
mov L0xffffffffde90 x12;
(* stp	x13, x14, [x2, #80]                         #! EA = L0xffffffffde98; PC = 0xaaaaaaab8d60 *)
mov L0xffffffffde98 x13;
mov L0xffffffffdea0 x14;
(* #! <- SP = 0xffffffffdd80 *)
#! 0xffffffffdd80 = 0xffffffffdd80;
(* #ret                                            #! PC = 0xaaaaaaab8d64 *)
#ret                                            #! 0xaaaaaaab8d64 = 0xaaaaaaab8d64;

assert true
    && limbs 64 [L0xffffffffde48, L0xffffffffde50, L0xffffffffde58,
                 L0xffffffffde60, L0xffffffffde68, L0xffffffffde70,
                 L0xffffffffde78, L0xffffffffde80, L0xffffffffde88,
                 L0xffffffffde90, L0xffffffffde98, L0xffffffffdea0] =
       limbs 64 [br0, br1, br2, br3, br4, br5, br6, br7, br8, br9, bra, brb] +
       limbs 64 [bi0, bi1, bi2, bi3, bi4, bi5, bi6, bi7, bi8, bi9, bia, bib];
assume limbs 64 [L0xffffffffde48, L0xffffffffde50, L0xffffffffde58,
                 L0xffffffffde60, L0xffffffffde68, L0xffffffffde70,
                 L0xffffffffde78, L0xffffffffde80, L0xffffffffde88,
                 L0xffffffffde90, L0xffffffffde98, L0xffffffffdea0] =
       limbs 64 [br0, br1, br2, br3, br4, br5, br6, br7, br8, br9, bra, brb] +
       limbs 64 [bi0, bi1, bi2, bi3, bi4, bi5, bi6, bi7, bi8, bi9, bia, bib]
    && true;

(* CUT 1 *)
(* NOTE: summary *)
cut limbs 64 [L0xffffffffde48, L0xffffffffde50, L0xffffffffde58,
              L0xffffffffde60, L0xffffffffde68, L0xffffffffde70,
              L0xffffffffde78, L0xffffffffde80, L0xffffffffde88,
              L0xffffffffde90, L0xffffffffde98, L0xffffffffdea0] =
    limbs 64 [br0, br1, br2, br3, br4, br5, br6, br7, br8, br9, bra, brb] +
    limbs 64 [bi0, bi1, bi2, bi3, bi4, bi5, bi6, bi7, bi8, bi9, bia, bib]
 && and [limbs 64 [L0xffffffffde48, L0xffffffffde50, L0xffffffffde58,
                   L0xffffffffde60, L0xffffffffde68, L0xffffffffde70,
                   L0xffffffffde78, L0xffffffffde80, L0xffffffffde88,
                   L0xffffffffde90, L0xffffffffde98, L0xffffffffdea0] <u
         4@768 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, ma, mb],
         limbs 64 [ar0, ar1, ar2, ar3, ar4, ar5, ar6, ar7, ar8, ar9, ara, arb] <u
         2@768 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, ma, mb],
         limbs 64 [br0, br1, br2, br3, br4, br5, br6, br7, br8, br9, bra, brb] <u
         2@768 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, ma, mb]]
    prove with [ precondition ];

(* mov	x1, x20                                     #! PC = 0xaaaaaaaae504 *)
mov x1 x20;
(* mov	x0, x25                                     #! PC = 0xaaaaaaaae508 *)
mov x0 x25;
(* mov	x2, x19                                     #! PC = 0xaaaaaaaae50c *)
mov x2 x19;
(* mov	w3, #0xc                   	// #12          #! PC = 0xaaaaaaaae510 *)
#mov	w3, #0xc                   	// #12          #! 0xaaaaaaaae510 = 0xaaaaaaaae510;
(* #bl	0xaaaaaaab7540 <mp_mul>                     #! PC = 0xaaaaaaaae514 *)
#bl	0xaaaaaaab7540 <mp_mul>                     #! 0xaaaaaaaae514 = 0xaaaaaaaae514;
(* #! -> SP = 0xffffffffdd80 *)
#! 0xffffffffdd80 = 0xffffffffdd80;
(* #b	0xaaaaaaab7a54 <mul751_asm>                  #! PC = 0xaaaaaaab7540 *)
#b	0xaaaaaaab7a54 <mul751_asm>                  #! 0xaaaaaaab7540 = 0xaaaaaaab7540;
(* sub	sp, sp, #0x60                               #! PC = 0xaaaaaaab7a54 *)
subc dontcare sp sp 0x60@uint64;
(* stp	x19, x20, [sp]                              #! EA = L0xffffffffdd20; PC = 0xaaaaaaab7a58 *)
mov L0xffffffffdd20 x19;
mov L0xffffffffdd28 x20;
(* stp	x21, x22, [sp, #16]                         #! EA = L0xffffffffdd30; PC = 0xaaaaaaab7a5c *)
mov L0xffffffffdd30 x21;
mov L0xffffffffdd38 x22;
(* stp	x23, x24, [sp, #32]                         #! EA = L0xffffffffdd40; PC = 0xaaaaaaab7a60 *)
mov L0xffffffffdd40 x23;
mov L0xffffffffdd48 x24;
(* stp	x25, x26, [sp, #48]                         #! EA = L0xffffffffdd50; PC = 0xaaaaaaab7a64 *)
mov L0xffffffffdd50 x25;
mov L0xffffffffdd58 x26;
(* stp	x27, x28, [sp, #64]                         #! EA = L0xffffffffdd60; PC = 0xaaaaaaab7a68 *)
mov L0xffffffffdd60 x27;
mov L0xffffffffdd68 x28;
(* stp	x29, x30, [sp, #80]                         #! EA = L0xffffffffdd70; PC = 0xaaaaaaab7a6c *)
mov L0xffffffffdd70 x29;
mov L0xffffffffdd78 x30;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe5f8; Value = 0xd61b7bfad7ada26b; PC = 0xaaaaaaab7a70 *)
mov x3 L0xffffffffe5f8;
mov x4 L0xffffffffe600;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffe608; Value = 0xc727e69e332bc6b1; PC = 0xaaaaaaab7a74 *)
mov x5 L0xffffffffe608;
mov x6 L0xffffffffe610;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe618; Value = 0xdf12b32bd970f2f3; PC = 0xaaaaaaab7a78 *)
mov x7 L0xffffffffe618;
mov x8 L0xffffffffe620;
(* ldp	x10, x11, [x0, #48]                         #! EA = L0xffffffffe628; Value = 0xe4b5561a1ae56b5a; PC = 0xaaaaaaab7a7c *)
mov x10 L0xffffffffe628;
mov x11 L0xffffffffe630;
(* ldp	x12, x13, [x0, #64]                         #! EA = L0xffffffffe638; Value = 0xb043e4f309687921; PC = 0xaaaaaaab7a80 *)
mov x12 L0xffffffffe638;
mov x13 L0xffffffffe640;
(* ldp	x14, x15, [x0, #80]                         #! EA = L0xffffffffe648; Value = 0x032b11e8cb16542c; PC = 0xaaaaaaab7a84 *)
mov x14 L0xffffffffe648;
mov x15 L0xffffffffe650;
(* adds	x3, x3, x10                                #! PC = 0xaaaaaaab7a88 *)
adds carry x3 x3 x10;
(* adcs	x4, x4, x11                                #! PC = 0xaaaaaaab7a8c *)
adcs carry x4 x4 x11 carry;
(* adcs	x5, x5, x12                                #! PC = 0xaaaaaaab7a90 *)
adcs carry x5 x5 x12 carry;
(* adcs	x6, x6, x13                                #! PC = 0xaaaaaaab7a94 *)
adcs carry x6 x6 x13 carry;
(* adcs	x7, x7, x14                                #! PC = 0xaaaaaaab7a98 *)
adcs carry x7 x7 x14 carry;
(* adcs	x8, x8, x15                                #! PC = 0xaaaaaaab7a9c *)
adcs carry x8 x8 x15 carry;
(* adc	x9, xzr, xzr                                #! PC = 0xaaaaaaab7aa0 *)
adc x9 0@uint64 0@uint64 carry;
(* ldp	x10, x11, [x1]                              #! EA = L0xffffffffe6b8; Value = 0x52a0dfd46c663f91; PC = 0xaaaaaaab7aa4 *)
mov x10 L0xffffffffe6b8;
mov x11 L0xffffffffe6c0;
(* ldp	x12, x13, [x1, #16]                         #! EA = L0xffffffffe6c8; Value = 0x33ed6895b925ab27; PC = 0xaaaaaaab7aa8 *)
mov x12 L0xffffffffe6c8;
mov x13 L0xffffffffe6d0;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0xffffffffe6d8; Value = 0x676e0733637927f3; PC = 0xaaaaaaab7aac *)
mov x14 L0xffffffffe6d8;
mov x15 L0xffffffffe6e0;
(* ldp	x17, x19, [x1, #48]                         #! EA = L0xffffffffe6e8; Value = 0x7536372564f2a985; PC = 0xaaaaaaab7ab0 *)
mov x17 L0xffffffffe6e8;
mov x19 L0xffffffffe6f0;
(* ldp	x20, x21, [x1, #64]                         #! EA = L0xffffffffe6f8; Value = 0x5dc3c5586beebe97; PC = 0xaaaaaaab7ab4 *)
mov x20 L0xffffffffe6f8;
mov x21 L0xffffffffe700;
(* ldp	x22, x23, [x1, #80]                         #! EA = L0xffffffffe708; Value = 0x85437aab6a838d82; PC = 0xaaaaaaab7ab8 *)
mov x22 L0xffffffffe708;
mov x23 L0xffffffffe710;
(* adds	x10, x10, x17                              #! PC = 0xaaaaaaab7abc *)
adds carry x10 x10 x17;
(* adcs	x11, x11, x19                              #! PC = 0xaaaaaaab7ac0 *)
adcs carry x11 x11 x19 carry;
(* adcs	x12, x12, x20                              #! PC = 0xaaaaaaab7ac4 *)
adcs carry x12 x12 x20 carry;
(* adcs	x13, x13, x21                              #! PC = 0xaaaaaaab7ac8 *)
adcs carry x13 x13 x21 carry;
(* adcs	x14, x14, x22                              #! PC = 0xaaaaaaab7acc *)
adcs carry x14 x14 x22 carry;
(* adcs	x15, x15, x23                              #! PC = 0xaaaaaaab7ad0 *)
adcs carry x15 x15 x23 carry;
(* adc	x16, xzr, xzr                               #! PC = 0xaaaaaaab7ad4 *)
adc x16 0@uint64 0@uint64 carry;

ghost x9m@uint64, x16m@uint64 :
      and [x9m=x9, x16m=x16] && and [x9m=x9, x16m=x16];

(* neg	x17, x9                                     #! PC = 0xaaaaaaab7ad8 *)
subc dontcare x17 0@uint64 x9;
(* and	x19, x10, x17                               #! PC = 0xaaaaaaab7adc *)
and x19@uint64 x10 x17;
(* and	x20, x11, x17                               #! PC = 0xaaaaaaab7ae0 *)
and x20@uint64 x11 x17;
(* and	x21, x12, x17                               #! PC = 0xaaaaaaab7ae4 *)
and x21@uint64 x12 x17;
(* and	x22, x13, x17                               #! PC = 0xaaaaaaab7ae8 *)
and x22@uint64 x13 x17;
(* and	x23, x14, x17                               #! PC = 0xaaaaaaab7aec *)
and x23@uint64 x14 x17;
(* and	x24, x15, x17                               #! PC = 0xaaaaaaab7af0 *)
and x24@uint64 x15 x17;
(* neg	x17, x16                                    #! PC = 0xaaaaaaab7af4 *)
subc dontcare x17 0@uint64 x16;
(* and	x25, x3, x17                                #! PC = 0xaaaaaaab7af8 *)
and x25@uint64 x3 x17;
(* and	x26, x4, x17                                #! PC = 0xaaaaaaab7afc *)
and x26@uint64 x4 x17;
(* and	x27, x5, x17                                #! PC = 0xaaaaaaab7b00 *)
and x27@uint64 x5 x17;
(* and	x28, x6, x17                                #! PC = 0xaaaaaaab7b04 *)
and x28@uint64 x6 x17;
(* and	x29, x7, x17                                #! PC = 0xaaaaaaab7b08 *)
and x29@uint64 x7 x17;
(* and	x17, x8, x17                                #! PC = 0xaaaaaaab7b0c *)
and x17@uint64 x8 x17;

(* NOTE: mask *)
assert true
    && and [x9m*(1@64-x9m) = 0@64, x16m*(1@64-x16m) = 0@64,
            limbs 64 [x19, x20, x21, x22, x23, x24] =
            uext  x9m 320 * limbs 64 [x10, x11, x12, x13, x14, x15],
            limbs 64 [x25, x26, x27, x28, x29, x17] =
            uext x16m 320 * limbs 64 [ x3,  x4,  x5,  x6,  x7,  x8]];
assume and [x9m*(1-x9m) = 0, x16m*(1-x16m) = 0,
            limbs 64 [x19, x20, x21, x22, x23, x24] =
             x9m * limbs 64 [x10, x11, x12, x13, x14, x15],
            limbs 64 [x25, x26, x27, x28, x29, x17] =
            x16m * limbs 64 [ x3,  x4,  x5,  x6,  x7,  x8]] && true;

(* and	x9, x9, x16                                 #! PC = 0xaaaaaaab7b10 *)
and x9@uint64 x9 x16;

(* NOTE: combine carries *)
assert true && x9 = x9m*x16m;
assume x9 = x9m*x16m && true;

(* adds	x19, x19, x25                              #! PC = 0xaaaaaaab7b14 *)
adds carry x19 x19 x25;
(* adcs	x20, x20, x26                              #! PC = 0xaaaaaaab7b18 *)
adcs carry x20 x20 x26 carry;
(* adcs	x21, x21, x27                              #! PC = 0xaaaaaaab7b1c *)
adcs carry x21 x21 x27 carry;
(* adcs	x22, x22, x28                              #! PC = 0xaaaaaaab7b20 *)
adcs carry x22 x22 x28 carry;
(* adcs	x23, x23, x29                              #! PC = 0xaaaaaaab7b24 *)
adcs carry x23 x23 x29 carry;
(* adcs	x24, x24, x17                              #! PC = 0xaaaaaaab7b28 *)
adcs carry x24 x24 x17 carry;
(* adc	x9, x9, xzr                                 #! PC = 0xaaaaaaab7b2c *)
adc x9 x9 0@uint64 carry;
(* stp	x19, x20, [x2]                              #! EA = L0xffffffffdea8; PC = 0xaaaaaaab7b30 *)
mov L0xffffffffdea8 x19;
mov L0xffffffffdeb0 x20;
(* stp	x21, x22, [x2, #16]                         #! EA = L0xffffffffdeb8; PC = 0xaaaaaaab7b34 *)
mov L0xffffffffdeb8 x21;
mov L0xffffffffdec0 x22;
(* stp	x23, x24, [x2, #32]                         #! EA = L0xffffffffdec8; PC = 0xaaaaaaab7b38 *)
mov L0xffffffffdec8 x23;
mov L0xffffffffded0 x24;
(* stp	x3, x4, [x2, #64]                           #! EA = L0xffffffffdee8; PC = 0xaaaaaaab7b3c *)
mov L0xffffffffdee8 x3;
mov L0xffffffffdef0 x4;
(* stp	x5, x6, [x2, #80]                           #! EA = L0xffffffffdef8; PC = 0xaaaaaaab7b40 *)
mov L0xffffffffdef8 x5;
mov L0xffffffffdf00 x6;
(* stp	x7, x8, [x2, #96]                           #! EA = L0xffffffffdf08; PC = 0xaaaaaaab7b44 *)
mov L0xffffffffdf08 x7;
mov L0xffffffffdf10 x8;
(* stp	x14, x15, [x2, #112]                        #! EA = L0xffffffffdf18; PC = 0xaaaaaaab7b48 *)
mov L0xffffffffdf18 x14;
mov L0xffffffffdf20 x15;
(* adds	x23, x3, x6                                #! PC = 0xaaaaaaab7b4c *)
adds carry x23 x3 x6;
(* adcs	x24, x4, x7                                #! PC = 0xaaaaaaab7b50 *)
adcs carry x24 x4 x7 carry;
(* adcs	x25, x5, x8                                #! PC = 0xaaaaaaab7b54 *)
adcs carry x25 x5 x8 carry;
(* adc	x4, xzr, xzr                                #! PC = 0xaaaaaaab7b58 *)
adc x4 0@uint64 0@uint64 carry;
(* adds	x26, x10, x13                              #! PC = 0xaaaaaaab7b5c *)
adds carry x26 x10 x13;
(* adcs	x27, x11, x14                              #! PC = 0xaaaaaaab7b60 *)
adcs carry x27 x11 x14 carry;
(* adcs	x28, x12, x15                              #! PC = 0xaaaaaaab7b64 *)
adcs carry x28 x12 x15 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab7b68 *)
adc x29 0@uint64 0@uint64 carry;

ghost x4m@uint64, x29m@uint64 :
      and [x4m=x4, x29m=x29] && and [x4m=x4, x29m=x29];

(* neg	x30, x4                                     #! PC = 0xaaaaaaab7b6c *)
subc dontcare x30 0@uint64 x4;
(* and	x5, x26, x30                                #! PC = 0xaaaaaaab7b70 *)
and x5@uint64 x26 x30;
(* and	x14, x27, x30                               #! PC = 0xaaaaaaab7b74 *)
and x14@uint64 x27 x30;
(* and	x7, x28, x30                                #! PC = 0xaaaaaaab7b78 *)
and x7@uint64 x28 x30;
(* neg	x30, x29                                    #! PC = 0xaaaaaaab7b7c *)
subc dontcare x30 0@uint64 x29;
(* and	x3, x23, x30                                #! PC = 0xaaaaaaab7b80 *)
and x3@uint64 x23 x30;
(* umulh	x19, x23, x26                             #! PC = 0xaaaaaaab7b84 *)
(* NOTE: merged with mul x3, x23, x26 *)
(* mov x19 Hx23x26; *)
(* and	x21, x24, x30                               #! PC = 0xaaaaaaab7b88 *)
and x21@uint64 x24 x30;
(* and	x22, x25, x30                               #! PC = 0xaaaaaaab7b8c *)
and x22@uint64 x25 x30;

(* NOTE: mask *)
assert true
    && and [x4m*(1@64-x4m) = 0@64, x29m*(1@64-x29m) = 0@64,
            limbs 64 [ x5, x14,  x7] =
            uext  x4m 128 * limbs 64 [x26, x27, x28],
            limbs 64 [ x3, x21,  x22] =
            uext x29m 128 * limbs 64 [x23, x24, x25]];
assume and [x4m*(1-x4m) = 0, x29m*(1-x29m) = 0,
            limbs 64 [ x5, x14,  x7] =  x4m * limbs 64 [x26, x27, x28],
            limbs 64 [ x3, x21,  x22] = x29m * limbs 64 [x23, x24, x25]]
    && true;

(* and	x4, x4, x29                                 #! PC = 0xaaaaaaab7b90 *)
and x4@uint64 x4 x29;

(* NOTE: combine carries *)
assert true && x4=x4m*x29m;
assume x4=x4m*x29m && true;

(* adds	x5, x5, x3                                 #! PC = 0xaaaaaaab7b94 *)
adds carry x5 x5 x3;
(* adcs	x14, x14, x21                              #! PC = 0xaaaaaaab7b98 *)
adcs carry x14 x14 x21 carry;
(* mul	x3, x23, x26                                #! PC = 0xaaaaaaab7b9c *)
mull x19 x3 x23 x26;
(* mul	x21, x23, x27                               #! PC = 0xaaaaaaab7ba0 *)
mull Hx23x27 x21 x23 x27;
(* adcs	x7, x7, x22                                #! PC = 0xaaaaaaab7ba4 *)
adcs carry x7 x7 x22 carry;
(* umulh	x22, x23, x27                             #! PC = 0xaaaaaaab7ba8 *)
mov x22 Hx23x27;
(* adc	x4, x4, xzr                                 #! PC = 0xaaaaaaab7bac *)
adc x4 x4 0@uint64 carry;
(* mul	x20, x24, x26                               #! PC = 0xaaaaaaab7bb0 *)
mull Hx24x26 x20 x24 x26;
(* umulh	x8, x24, x26                              #! PC = 0xaaaaaaab7bb4 *)
mov x8 Hx24x26;
(* adds	x21, x21, x19                              #! PC = 0xaaaaaaab7bb8 *)
adds carry x21 x21 x19;
(* adc	x22, x22, xzr                               #! PC = 0xaaaaaaab7bbc *)
adc x22 x22 0@uint64 carry;
(* mul	x30, x24, x27                               #! PC = 0xaaaaaaab7bc0 *)
mull Hx24x27 x30 x24 x27;
(* umulh	x19, x24, x27                             #! PC = 0xaaaaaaab7bc4 *)
mov x19 Hx24x27;
(* adds	x21, x21, x20                              #! PC = 0xaaaaaaab7bc8 *)
adds carry x21 x21 x20;
(* adcs	x22, x22, x8                               #! PC = 0xaaaaaaab7bcc *)
adcs carry x22 x22 x8 carry;
(* adc	x19, x19, xzr                               #! PC = 0xaaaaaaab7bd0 *)
adc x19 x19 0@uint64 carry;
(* mul	x20, x23, x28                               #! PC = 0xaaaaaaab7bd4 *)
mull Hx23x28 x20 x23 x28;
(* umulh	x8, x23, x28                              #! PC = 0xaaaaaaab7bd8 *)
mov x8 Hx23x28;
(* adds	x22, x22, x30                              #! PC = 0xaaaaaaab7bdc *)
adds carry x22 x22 x30;
(* adcs	x19, x19, x8                               #! PC = 0xaaaaaaab7be0 *)
adcs carry x19 x19 x8 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab7be4 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x30, x25, x26                               #! PC = 0xaaaaaaab7be8 *)
mull Hx25x26 x30 x25 x26;
(* umulh	x8, x25, x26                              #! PC = 0xaaaaaaab7bec *)
mov x8 Hx25x26;
(* adds	x22, x22, x20                              #! PC = 0xaaaaaaab7bf0 *)
adds carry x22 x22 x20;
(* adcs	x19, x19, x8                               #! PC = 0xaaaaaaab7bf4 *)
adcs carry x19 x19 x8 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab7bf8 *)
adc x29 x29 0@uint64 carry;
(* mul	x20, x24, x28                               #! PC = 0xaaaaaaab7bfc *)
mull Hx24x28 x20 x24 x28;
(* umulh	x8, x24, x28                              #! PC = 0xaaaaaaab7c00 *)
mov x8 Hx24x28;
(* adds	x22, x22, x30                              #! PC = 0xaaaaaaab7c04 *)
adds carry x22 x22 x30;
(* adcs	x19, x19, x20                              #! PC = 0xaaaaaaab7c08 *)
adcs carry x19 x19 x20 carry;
(* adcs	x29, x29, x8                               #! PC = 0xaaaaaaab7c0c *)
adcs carry x29 x29 x8 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab7c10 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x20, x25, x27                               #! PC = 0xaaaaaaab7c14 *)
mull Hx25x27 x20 x25 x27;
(* umulh	x8, x25, x27                              #! PC = 0xaaaaaaab7c18 *)
mov x8 Hx25x27;
(* adds	x19, x19, x20                              #! PC = 0xaaaaaaab7c1c *)
adds carry x19 x19 x20;
(* adcs	x29, x29, x8                               #! PC = 0xaaaaaaab7c20 *)
adcs carry x29 x29 x8 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab7c24 *)
adc x30 x30 0@uint64 carry;
(* mul	x20, x25, x28                               #! PC = 0xaaaaaaab7c28 *)
mull Hx25x28 x20 x25 x28;
(* umulh	x8, x25, x28                              #! PC = 0xaaaaaaab7c2c *)
mov x8 Hx25x28;
(* adds	x20, x20, x29                              #! PC = 0xaaaaaaab7c30 *)
adds carry x20 x20 x29;
(* adc	x8, x8, x30                                 #! PC = 0xaaaaaaab7c34 *)
adc x8 x8 x30 carry;
(* adds	x5, x5, x19                                #! PC = 0xaaaaaaab7c38 *)
adds carry x5 x5 x19;
(* adcs	x14, x14, x20                              #! PC = 0xaaaaaaab7c3c *)
adcs carry x14 x14 x20 carry;
(* adcs	x7, x7, x8                                 #! PC = 0xaaaaaaab7c40 *)
adcs carry x7 x7 x8 carry;
(* adc	x4, x4, xzr                                 #! PC = 0xaaaaaaab7c44 *)
adc x4 x4 0@uint64 carry;
(* stp	x3, x4, [x2, #128]                          #! EA = L0xffffffffdf28; PC = 0xaaaaaaab7c48 *)
mov L0xffffffffdf28 x3;
mov L0xffffffffdf30 x4;
(* ldp	x3, x4, [x2, #64]                           #! EA = L0xffffffffdee8; Value = 0xbad0d214f2930dc5; PC = 0xaaaaaaab7c4c *)
mov x3 L0xffffffffdee8;
mov x4 L0xffffffffdef0;
(* str	x5, [x2, #144]                              #! EA = L0xffffffffdf38; PC = 0xaaaaaaab7c50 *)
mov L0xffffffffdf38 x5;
(* ldr	x5, [x2, #80]                               #! EA = L0xffffffffdef8; Value = 0x776bcb913c943fd2; PC = 0xaaaaaaab7c54 *)
mov x5 L0xffffffffdef8;
(* mul	x16, x3, x10                                #! PC = 0xaaaaaaab7c58 *)
mull Hx3x10 x16 x3 x10;
(* mul	x17, x3, x11                                #! PC = 0xaaaaaaab7c5c *)
mull Hx3x11 x17 x3 x11;
(* umulh	x19, x3, x11                              #! PC = 0xaaaaaaab7c60 *)
mov x19 Hx3x11;
(* umulh	x20, x3, x10                              #! PC = 0xaaaaaaab7c64 *)
mov x20 Hx3x10;
(* mul	x8, x4, x10                                 #! PC = 0xaaaaaaab7c68 *)
mull Hx4x10 x8 x4 x10;
(* umulh	x15, x4, x10                              #! PC = 0xaaaaaaab7c6c *)
mov x15 Hx4x10;
(* adds	x17, x17, x20                              #! PC = 0xaaaaaaab7c70 *)
adds carry x17 x17 x20;
(* adc	x19, x19, xzr                               #! PC = 0xaaaaaaab7c74 *)
adc x19 x19 0@uint64 carry;
(* mul	x30, x4, x11                                #! PC = 0xaaaaaaab7c78 *)
mull Hx4x11 x30 x4 x11;
(* umulh	x20, x4, x11                              #! PC = 0xaaaaaaab7c7c *)
mov x20 Hx4x11;
(* adds	x17, x17, x8                               #! PC = 0xaaaaaaab7c80 *)
adds carry x17 x17 x8;
(* adcs	x19, x19, x15                              #! PC = 0xaaaaaaab7c84 *)
adcs carry x19 x19 x15 carry;
(* adc	x20, x20, xzr                               #! PC = 0xaaaaaaab7c88 *)
adc x20 x20 0@uint64 carry;
(* mul	x8, x3, x12                                 #! PC = 0xaaaaaaab7c8c *)
mull Hx3x12 x8 x3 x12;
(* umulh	x15, x3, x12                              #! PC = 0xaaaaaaab7c90 *)
mov x15 Hx3x12;
(* adds	x19, x19, x30                              #! PC = 0xaaaaaaab7c94 *)
adds carry x19 x19 x30;
(* adcs	x20, x20, x15                              #! PC = 0xaaaaaaab7c98 *)
adcs carry x20 x20 x15 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab7c9c *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x30, x5, x10                                #! PC = 0xaaaaaaab7ca0 *)
mull Hx5x10 x30 x5 x10;
(* umulh	x15, x5, x10                              #! PC = 0xaaaaaaab7ca4 *)
mov x15 Hx5x10;
(* adds	x19, x19, x8                               #! PC = 0xaaaaaaab7ca8 *)
adds carry x19 x19 x8;
(* adcs	x20, x20, x15                              #! PC = 0xaaaaaaab7cac *)
adcs carry x20 x20 x15 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab7cb0 *)
adc x29 x29 0@uint64 carry;
(* mul	x8, x4, x12                                 #! PC = 0xaaaaaaab7cb4 *)
mull Hx4x12 x8 x4 x12;
(* umulh	x15, x4, x12                              #! PC = 0xaaaaaaab7cb8 *)
mov x15 Hx4x12;
(* adds	x19, x19, x30                              #! PC = 0xaaaaaaab7cbc *)
adds carry x19 x19 x30;
(* adcs	x20, x20, x8                               #! PC = 0xaaaaaaab7cc0 *)
adcs carry x20 x20 x8 carry;
(* adcs	x29, x29, x15                              #! PC = 0xaaaaaaab7cc4 *)
adcs carry x29 x29 x15 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab7cc8 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x8, x5, x11                                 #! PC = 0xaaaaaaab7ccc *)
mull Hx5x11 x8 x5 x11;
(* umulh	x15, x5, x11                              #! PC = 0xaaaaaaab7cd0 *)
mov x15 Hx5x11;
(* adds	x20, x20, x8                               #! PC = 0xaaaaaaab7cd4 *)
adds carry x20 x20 x8;
(* adcs	x29, x29, x15                              #! PC = 0xaaaaaaab7cd8 *)
adcs carry x29 x29 x15 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab7cdc *)
adc x30 x30 0@uint64 carry;
(* mul	x8, x5, x12                                 #! PC = 0xaaaaaaab7ce0 *)
mull Hx5x12 x8 x5 x12;
(* umulh	x15, x5, x12                              #! PC = 0xaaaaaaab7ce4 *)
mov x15 Hx5x12;
(* adds	x8, x8, x29                                #! PC = 0xaaaaaaab7ce8 *)
adds carry x8 x8 x29;
(* adc	x15, x15, x30                               #! PC = 0xaaaaaaab7cec *)
adc x15 x15 x30 carry;
(* ldp	x3, x4, [x2, #128]                          #! EA = L0xffffffffdf28; Value = 0x9d65e6f72d4b4dd0; PC = 0xaaaaaaab7cf0 *)
mov x3 L0xffffffffdf28;
mov x4 L0xffffffffdf30;
(* ldr	x5, [x2, #144]                              #! EA = L0xffffffffdf38; Value = 0x326bea37dc63b53f; PC = 0xaaaaaaab7cf4 *)
mov x5 L0xffffffffdf38;
(* mul	x23, x6, x13                                #! PC = 0xaaaaaaab7cf8 *)
mull Hx6x13 x23 x6 x13;
(* umulh	x26, x6, x13                              #! PC = 0xaaaaaaab7cfc *)
mov x26 Hx6x13;
(* subs	x3, x3, x16                                #! PC = 0xaaaaaaab7d00 *)
subc carry x3 x3 x16;
(* sbcs	x21, x21, x17                              #! PC = 0xaaaaaaab7d04 *)
sbcs carry x21 x21 x17 carry;
(* sbcs	x22, x22, x19                              #! PC = 0xaaaaaaab7d08 *)
sbcs carry x22 x22 x19 carry;
(* sbcs	x5, x5, x20                                #! PC = 0xaaaaaaab7d0c *)
sbcs carry x5 x5 x20 carry;
(* sbcs	x14, x14, x8                               #! PC = 0xaaaaaaab7d10 *)
sbcs carry x14 x14 x8 carry;
(* sbcs	x7, x7, x15                                #! PC = 0xaaaaaaab7d14 *)
sbcs carry x7 x7 x15 carry;
(* sbc	x4, x4, xzr                                 #! PC = 0xaaaaaaab7d18 *)
sbcs docare x4 x4 0@uint64 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* stp	x14, x15, [x2, #144]                        #! EA = L0xffffffffdf38; PC = 0xaaaaaaab7d1c *)
mov L0xffffffffdf38 x14;
mov L0xffffffffdf40 x15;
(* ldp	x14, x15, [x2, #112]                        #! EA = L0xffffffffdf18; Value = 0xecb181decdfcb576; PC = 0xaaaaaaab7d20 *)
mov x14 L0xffffffffdf18;
mov x15 L0xffffffffdf20;
(* stp	x7, x8, [x2, #128]                          #! EA = L0xffffffffdf28; PC = 0xaaaaaaab7d24 *)
mov L0xffffffffdf28 x7;
mov L0xffffffffdf30 x8;
(* ldp	x7, x8, [x2, #96]                           #! EA = L0xffffffffdf08; Value = 0xe23dc514a487471f; PC = 0xaaaaaaab7d28 *)
mov x7 L0xffffffffdf08;
mov x8 L0xffffffffdf10;
(* mul	x24, x6, x14                                #! PC = 0xaaaaaaab7d2c *)
mull Hx6x14 x24 x6 x14;
(* umulh	x25, x6, x14                              #! PC = 0xaaaaaaab7d30 *)
mov x25 Hx6x14;
(* mul	x27, x7, x13                                #! PC = 0xaaaaaaab7d34 *)
mull Hx7x13 x27 x7 x13;
(* umulh	x28, x7, x13                              #! PC = 0xaaaaaaab7d38 *)
mov x28 Hx7x13;
(* adds	x24, x24, x26                              #! PC = 0xaaaaaaab7d3c *)
adds carry x24 x24 x26;
(* adc	x25, x25, xzr                               #! PC = 0xaaaaaaab7d40 *)
adc x25 x25 0@uint64 carry;
(* mul	x30, x7, x14                                #! PC = 0xaaaaaaab7d44 *)
mull Hx7x14 x30 x7 x14;
(* umulh	x26, x7, x14                              #! PC = 0xaaaaaaab7d48 *)
mov x26 Hx7x14;
(* adds	x24, x24, x27                              #! PC = 0xaaaaaaab7d4c *)
adds carry x24 x24 x27;
(* adcs	x25, x25, x28                              #! PC = 0xaaaaaaab7d50 *)
adcs carry x25 x25 x28 carry;
(* adc	x26, x26, xzr                               #! PC = 0xaaaaaaab7d54 *)
adc x26 x26 0@uint64 carry;
(* mul	x27, x6, x15                                #! PC = 0xaaaaaaab7d58 *)
mull Hx6x15 x27 x6 x15;
(* umulh	x28, x6, x15                              #! PC = 0xaaaaaaab7d5c *)
mov x28 Hx6x15;
(* adds	x25, x25, x30                              #! PC = 0xaaaaaaab7d60 *)
adds carry x25 x25 x30;
(* adcs	x26, x26, x28                              #! PC = 0xaaaaaaab7d64 *)
adcs carry x26 x26 x28 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab7d68 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x30, x8, x13                                #! PC = 0xaaaaaaab7d6c *)
mull Hx8x13 x30 x8 x13;
(* umulh	x28, x8, x13                              #! PC = 0xaaaaaaab7d70 *)
mov x28 Hx8x13;
(* adds	x25, x25, x27                              #! PC = 0xaaaaaaab7d74 *)
adds carry x25 x25 x27;
(* adcs	x26, x26, x28                              #! PC = 0xaaaaaaab7d78 *)
adcs carry x26 x26 x28 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab7d7c *)
adc x29 x29 0@uint64 carry;
(* mul	x27, x7, x15                                #! PC = 0xaaaaaaab7d80 *)
mull Hx7x15 x27 x7 x15;
(* umulh	x28, x7, x15                              #! PC = 0xaaaaaaab7d84 *)
mov x28 Hx7x15;
(* adds	x25, x25, x30                              #! PC = 0xaaaaaaab7d88 *)
adds carry x25 x25 x30;
(* adcs	x26, x26, x27                              #! PC = 0xaaaaaaab7d8c *)
adcs carry x26 x26 x27 carry;
(* adcs	x29, x29, x28                              #! PC = 0xaaaaaaab7d90 *)
adcs carry x29 x29 x28 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab7d94 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x27, x8, x14                                #! PC = 0xaaaaaaab7d98 *)
mull Hx8x14 x27 x8 x14;
(* umulh	x28, x8, x14                              #! PC = 0xaaaaaaab7d9c *)
mov x28 Hx8x14;
(* adds	x26, x26, x27                              #! PC = 0xaaaaaaab7da0 *)
adds carry x26 x26 x27;
(* adcs	x29, x29, x28                              #! PC = 0xaaaaaaab7da4 *)
adcs carry x29 x29 x28 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab7da8 *)
adc x30 x30 0@uint64 carry;
(* mul	x27, x8, x15                                #! PC = 0xaaaaaaab7dac *)
mull Hx8x15 x27 x8 x15;
(* umulh	x28, x8, x15                              #! PC = 0xaaaaaaab7db0 *)
mov x28 Hx8x15;
(* adds	x27, x27, x29                              #! PC = 0xaaaaaaab7db4 *)
adds carry x27 x27 x29;
(* adc	x28, x28, x30                               #! PC = 0xaaaaaaab7db8 *)
adc x28 x28 x30 carry;
(* ldp	x7, x8, [x2, #128]                          #! EA = L0xffffffffdf28; Value = 0xcc9ad36be45aee9e; PC = 0xaaaaaaab7dbc *)
mov x7 L0xffffffffdf28;
mov x8 L0xffffffffdf30;
(* ldp	x14, x15, [x2, #144]                        #! EA = L0xffffffffdf38; Value = 0x74e8bd23b2ad5cdc; PC = 0xaaaaaaab7dc0 *)
mov x14 L0xffffffffdf38;
mov x15 L0xffffffffdf40;
(* subs	x3, x3, x23                                #! PC = 0xaaaaaaab7dc4 *)
subc carry x3 x3 x23;
(* sbcs	x21, x21, x24                              #! PC = 0xaaaaaaab7dc8 *)
sbcs carry x21 x21 x24 carry;
(* sbcs	x22, x22, x25                              #! PC = 0xaaaaaaab7dcc *)
sbcs carry x22 x22 x25 carry;
(* sbcs	x5, x5, x26                                #! PC = 0xaaaaaaab7dd0 *)
sbcs carry x5 x5 x26 carry;
(* sbcs	x14, x14, x27                              #! PC = 0xaaaaaaab7dd4 *)
sbcs carry x14 x14 x27 carry;
(* sbcs	x7, x7, x28                                #! PC = 0xaaaaaaab7dd8 *)
sbcs carry x7 x7 x28 carry;
(* sbc	x4, x4, xzr                                 #! PC = 0xaaaaaaab7ddc *)
sbcs docare x4 x4 0@uint64 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* adds	x20, x3, x20                               #! PC = 0xaaaaaaab7de0 *)
adds carry x20 x3 x20;
(* adcs	x21, x21, x8                               #! PC = 0xaaaaaaab7de4 *)
adcs carry x21 x21 x8 carry;
(* adcs	x22, x22, x15                              #! PC = 0xaaaaaaab7de8 *)
adcs carry x22 x22 x15 carry;
(* adcs	x23, x23, x5                               #! PC = 0xaaaaaaab7dec *)
adcs carry x23 x23 x5 carry;
(* adcs	x24, x24, x14                              #! PC = 0xaaaaaaab7df0 *)
adcs carry x24 x24 x14 carry;
(* adcs	x25, x25, x7                               #! PC = 0xaaaaaaab7df4 *)
adcs carry x25 x25 x7 carry;
(* adcs	x26, x26, x4                               #! PC = 0xaaaaaaab7df8 *)
adcs carry x26 x26 x4 carry;
(* adcs	x27, x27, xzr                              #! PC = 0xaaaaaaab7dfc *)
adcs carry x27 x27 0@uint64 carry;
(* adc	x28, x28, xzr                               #! PC = 0xaaaaaaab7e00 *)
adcs docare x28 x28 0@uint64 carry;

(* TODO: cannot carry *)
(* assert true && docare = 0@1; *)
assume docare = 0 && true;

(* ldp	x3, x4, [x2]                                #! EA = L0xffffffffdea8; Value = 0x0000000000000000; PC = 0xaaaaaaab7e04 *)
mov x3 L0xffffffffdea8;
mov x4 L0xffffffffdeb0;
(* ldp	x5, x6, [x2, #16]                           #! EA = L0xffffffffdeb8; Value = 0x0000000000000000; PC = 0xaaaaaaab7e08 *)
mov x5 L0xffffffffdeb8;
mov x6 L0xffffffffdec0;
(* ldp	x7, x8, [x2, #32]                           #! EA = L0xffffffffdec8; Value = 0x0000000000000000; PC = 0xaaaaaaab7e0c *)
mov x7 L0xffffffffdec8;
mov x8 L0xffffffffded0;
(* adds	x23, x23, x3                               #! PC = 0xaaaaaaab7e10 *)
adds carry x23 x23 x3;
(* adcs	x24, x24, x4                               #! PC = 0xaaaaaaab7e14 *)
adcs carry x24 x24 x4 carry;
(* adcs	x25, x25, x5                               #! PC = 0xaaaaaaab7e18 *)
adcs carry x25 x25 x5 carry;
(* adcs	x26, x26, x6                               #! PC = 0xaaaaaaab7e1c *)
adcs carry x26 x26 x6 carry;
(* adcs	x27, x27, x7                               #! PC = 0xaaaaaaab7e20 *)
adcs carry x27 x27 x7 carry;
(* adcs	x28, x28, x8                               #! PC = 0xaaaaaaab7e24 *)
adcs carry x28 x28 x8 carry;
(* adc	x9, x9, xzr                                 #! PC = 0xaaaaaaab7e28 *)
adc x9 x9 0@uint64 carry;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe5f8; Value = 0xd61b7bfad7ada26b; PC = 0xaaaaaaab7e2c *)
mov x3 L0xffffffffe5f8;
mov x4 L0xffffffffe600;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffe608; Value = 0xc727e69e332bc6b1; PC = 0xaaaaaaab7e30 *)
mov x5 L0xffffffffe608;
mov x6 L0xffffffffe610;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe618; Value = 0xdf12b32bd970f2f3; PC = 0xaaaaaaab7e34 *)
mov x7 L0xffffffffe618;
mov x8 L0xffffffffe620;
(* ldp	x10, x11, [x1]                              #! EA = L0xffffffffe6b8; Value = 0x52a0dfd46c663f91; PC = 0xaaaaaaab7e38 *)
mov x10 L0xffffffffe6b8;
mov x11 L0xffffffffe6c0;
(* ldp	x12, x13, [x1, #16]                         #! EA = L0xffffffffe6c8; Value = 0x33ed6895b925ab27; PC = 0xaaaaaaab7e3c *)
mov x12 L0xffffffffe6c8;
mov x13 L0xffffffffe6d0;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0xffffffffe6d8; Value = 0x676e0733637927f3; PC = 0xaaaaaaab7e40 *)
mov x14 L0xffffffffe6d8;
mov x15 L0xffffffffe6e0;
(* stp	x16, x17, [x2]                              #! EA = L0xffffffffdea8; PC = 0xaaaaaaab7e44 *)
mov L0xffffffffdea8 x16;
mov L0xffffffffdeb0 x17;
(* stp	x19, x20, [x2, #16]                         #! EA = L0xffffffffdeb8; PC = 0xaaaaaaab7e48 *)
mov L0xffffffffdeb8 x19;
mov L0xffffffffdec0 x20;
(* stp	x21, x22, [x2, #32]                         #! EA = L0xffffffffdec8; PC = 0xaaaaaaab7e4c *)
mov L0xffffffffdec8 x21;
mov L0xffffffffded0 x22;
(* stp	x23, x24, [x2, #48]                         #! EA = L0xffffffffded8; PC = 0xaaaaaaab7e50 *)
mov L0xffffffffded8 x23;
mov L0xffffffffdee0 x24;
(* stp	x25, x26, [x2, #64]                         #! EA = L0xffffffffdee8; PC = 0xaaaaaaab7e54 *)
mov L0xffffffffdee8 x25;
mov L0xffffffffdef0 x26;
(* stp	x27, x28, [x2, #80]                         #! EA = L0xffffffffdef8; PC = 0xaaaaaaab7e58 *)
mov L0xffffffffdef8 x27;
mov L0xffffffffdf00 x28;
(* adds	x23, x3, x6                                #! PC = 0xaaaaaaab7e5c *)
adds carry x23 x3 x6;
(* adcs	x24, x4, x7                                #! PC = 0xaaaaaaab7e60 *)
adcs carry x24 x4 x7 carry;
(* adcs	x25, x5, x8                                #! PC = 0xaaaaaaab7e64 *)
adcs carry x25 x5 x8 carry;
(* adc	x4, xzr, xzr                                #! PC = 0xaaaaaaab7e68 *)
adc x4 0@uint64 0@uint64 carry;
(* adds	x26, x10, x13                              #! PC = 0xaaaaaaab7e6c *)
adds carry x26 x10 x13;
(* adcs	x27, x11, x14                              #! PC = 0xaaaaaaab7e70 *)
adcs carry x27 x11 x14 carry;
(* adcs	x28, x12, x15                              #! PC = 0xaaaaaaab7e74 *)
adcs carry x28 x12 x15 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab7e78 *)
adc x29 0@uint64 0@uint64 carry;

ghost x4m2@uint64, x29m2@uint64 :
      and [x4m2=x4, x29m2=x29] && and [x4m2=x4, x29m2=x29];

(* neg	x30, x4                                     #! PC = 0xaaaaaaab7e7c *)
subc dontcare x30 0@uint64 x4;
(* and	x5, x26, x30                                #! PC = 0xaaaaaaab7e80 *)
and x5@uint64 x26 x30;
(* and	x14, x27, x30                               #! PC = 0xaaaaaaab7e84 *)
and x14@uint64 x27 x30;
(* and	x7, x28, x30                                #! PC = 0xaaaaaaab7e88 *)
and x7@uint64 x28 x30;
(* neg	x30, x29                                    #! PC = 0xaaaaaaab7e8c *)
subc dontcare x30 0@uint64 x29;
(* and	x3, x23, x30                                #! PC = 0xaaaaaaab7e90 *)
and x3@uint64 x23 x30;
(* umulh	x19, x23, x26                             #! PC = 0xaaaaaaab7e94 *)
(* NOTE: merged with mul x3, x23, x26 *)
(* mov x19 Hx23x26; *)
(* and	x21, x24, x30                               #! PC = 0xaaaaaaab7e98 *)
and x21@uint64 x24 x30;
(* and	x22, x25, x30                               #! PC = 0xaaaaaaab7e9c *)
and x22@uint64 x25 x30;

(* NOTE: mask *)
assert true
    && and [x4m2*(1@64-x4m2)=0@64, x29m2*(1@64-x29m2)=0@64,
            limbs 64 [ x5, x14,  x7] =
            uext  x4m2 128 * limbs 64 [x26, x27, x28],
            limbs 64 [ x3, x21, x22] =
            uext x29m2 128 * limbs 64 [x23, x24, x25]];
assume and [x4m2*(1-x4m2)=0, x29m2*(1-x29m2)=0,
            limbs 64 [ x5, x14,  x7] =   x4m2 * limbs 64 [x26, x27, x28],
            limbs 64 [ x3, x21, x22] =  x29m2 * limbs 64 [x23, x24, x25]]
    && true;

(* and	x4, x4, x29                                 #! PC = 0xaaaaaaab7ea0 *)
and x4@uint64 x4 x29;

(* NOTE: combined carries *)
assert true && x4=x4m2*x29m2;
assume x4=x4m2*x29m2 && true;

(* adds	x5, x5, x3                                 #! PC = 0xaaaaaaab7ea4 *)
adds carry x5 x5 x3;
(* adcs	x14, x14, x21                              #! PC = 0xaaaaaaab7ea8 *)
adcs carry x14 x14 x21 carry;
(* mul	x3, x23, x26                                #! PC = 0xaaaaaaab7eac *)
mull x19 x3 x23 x26;
(* mul	x21, x23, x27                               #! PC = 0xaaaaaaab7eb0 *)
mull Hx23x27 x21 x23 x27;
(* adcs	x7, x7, x22                                #! PC = 0xaaaaaaab7eb4 *)
adcs carry x7 x7 x22 carry;
(* umulh	x22, x23, x27                             #! PC = 0xaaaaaaab7eb8 *)
mov x22 Hx23x27;
(* adc	x4, x4, xzr                                 #! PC = 0xaaaaaaab7ebc *)
adc x4 x4 0@uint64 carry;
(* mul	x20, x24, x26                               #! PC = 0xaaaaaaab7ec0 *)
mull Hx24x26 x20 x24 x26;
(* umulh	x8, x24, x26                              #! PC = 0xaaaaaaab7ec4 *)
mov x8 Hx24x26;
(* adds	x21, x21, x19                              #! PC = 0xaaaaaaab7ec8 *)
adds carry x21 x21 x19;
(* adc	x22, x22, xzr                               #! PC = 0xaaaaaaab7ecc *)
adc x22 x22 0@uint64 carry;
(* mul	x30, x24, x27                               #! PC = 0xaaaaaaab7ed0 *)
mull Hx24x27 x30 x24 x27;
(* umulh	x19, x24, x27                             #! PC = 0xaaaaaaab7ed4 *)
mov x19 Hx24x27;
(* adds	x21, x21, x20                              #! PC = 0xaaaaaaab7ed8 *)
adds carry x21 x21 x20;
(* adcs	x22, x22, x8                               #! PC = 0xaaaaaaab7edc *)
adcs carry x22 x22 x8 carry;
(* adc	x19, x19, xzr                               #! PC = 0xaaaaaaab7ee0 *)
adc x19 x19 0@uint64 carry;
(* mul	x20, x23, x28                               #! PC = 0xaaaaaaab7ee4 *)
mull Hx23x28 x20 x23 x28;
(* umulh	x8, x23, x28                              #! PC = 0xaaaaaaab7ee8 *)
mov x8 Hx23x28;
(* adds	x22, x22, x30                              #! PC = 0xaaaaaaab7eec *)
adds carry x22 x22 x30;
(* adcs	x19, x19, x8                               #! PC = 0xaaaaaaab7ef0 *)
adcs carry x19 x19 x8 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab7ef4 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x30, x25, x26                               #! PC = 0xaaaaaaab7ef8 *)
mull Hx25x26 x30 x25 x26;
(* umulh	x8, x25, x26                              #! PC = 0xaaaaaaab7efc *)
mov x8 Hx25x26;
(* adds	x22, x22, x20                              #! PC = 0xaaaaaaab7f00 *)
adds carry x22 x22 x20;
(* adcs	x19, x19, x8                               #! PC = 0xaaaaaaab7f04 *)
adcs carry x19 x19 x8 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab7f08 *)
adc x29 x29 0@uint64 carry;
(* mul	x20, x24, x28                               #! PC = 0xaaaaaaab7f0c *)
mull Hx24x28 x20 x24 x28;
(* umulh	x8, x24, x28                              #! PC = 0xaaaaaaab7f10 *)
mov x8 Hx24x28;
(* adds	x22, x22, x30                              #! PC = 0xaaaaaaab7f14 *)
adds carry x22 x22 x30;
(* adcs	x19, x19, x20                              #! PC = 0xaaaaaaab7f18 *)
adcs carry x19 x19 x20 carry;
(* adcs	x29, x29, x8                               #! PC = 0xaaaaaaab7f1c *)
adcs carry x29 x29 x8 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab7f20 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x20, x25, x27                               #! PC = 0xaaaaaaab7f24 *)
mull Hx25x27 x20 x25 x27;
(* umulh	x8, x25, x27                              #! PC = 0xaaaaaaab7f28 *)
mov x8 Hx25x27;
(* adds	x19, x19, x20                              #! PC = 0xaaaaaaab7f2c *)
adds carry x19 x19 x20;
(* adcs	x29, x29, x8                               #! PC = 0xaaaaaaab7f30 *)
adcs carry x29 x29 x8 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab7f34 *)
adc x30 x30 0@uint64 carry;
(* mul	x20, x25, x28                               #! PC = 0xaaaaaaab7f38 *)
mull Hx25x28 x20 x25 x28;
(* umulh	x8, x25, x28                              #! PC = 0xaaaaaaab7f3c *)
mov x8 Hx25x28;
(* adds	x20, x20, x29                              #! PC = 0xaaaaaaab7f40 *)
adds carry x20 x20 x29;
(* adc	x8, x8, x30                                 #! PC = 0xaaaaaaab7f44 *)
adc x8 x8 x30 carry;
(* adds	x5, x5, x19                                #! PC = 0xaaaaaaab7f48 *)
adds carry x5 x5 x19;
(* adcs	x14, x14, x20                              #! PC = 0xaaaaaaab7f4c *)
adcs carry x14 x14 x20 carry;
(* adcs	x7, x7, x8                                 #! PC = 0xaaaaaaab7f50 *)
adcs carry x7 x7 x8 carry;
(* adc	x4, x4, xzr                                 #! PC = 0xaaaaaaab7f54 *)
adc x4 x4 0@uint64 carry;
(* stp	x3, x4, [x2, #160]                          #! EA = L0xffffffffdf48; PC = 0xaaaaaaab7f58 *)
mov L0xffffffffdf48 x3;
mov L0xffffffffdf50 x4;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe5f8; Value = 0xd61b7bfad7ada26b; PC = 0xaaaaaaab7f5c *)
mov x3 L0xffffffffe5f8;
mov x4 L0xffffffffe600;
(* str	x5, [x2, #176]                              #! EA = L0xffffffffdf58; PC = 0xaaaaaaab7f60 *)
mov L0xffffffffdf58 x5;
(* ldr	x5, [x0, #16]                               #! EA = L0xffffffffe608; Value = 0xc727e69e332bc6b1; PC = 0xaaaaaaab7f64 *)
mov x5 L0xffffffffe608;
(* mul	x16, x3, x10                                #! PC = 0xaaaaaaab7f68 *)
mull Hx3x10 x16 x3 x10;
(* mul	x17, x3, x11                                #! PC = 0xaaaaaaab7f6c *)
mull Hx3x11 x17 x3 x11;
(* umulh	x19, x3, x11                              #! PC = 0xaaaaaaab7f70 *)
mov x19 Hx3x11;
(* umulh	x20, x3, x10                              #! PC = 0xaaaaaaab7f74 *)
mov x20 Hx3x10;
(* mul	x8, x4, x10                                 #! PC = 0xaaaaaaab7f78 *)
mull Hx4x10 x8 x4 x10;
(* umulh	x15, x4, x10                              #! PC = 0xaaaaaaab7f7c *)
mov x15 Hx4x10;
(* adds	x17, x17, x20                              #! PC = 0xaaaaaaab7f80 *)
adds carry x17 x17 x20;
(* adc	x19, x19, xzr                               #! PC = 0xaaaaaaab7f84 *)
adc x19 x19 0@uint64 carry;
(* mul	x30, x4, x11                                #! PC = 0xaaaaaaab7f88 *)
mull Hx4x11 x30 x4 x11;
(* umulh	x20, x4, x11                              #! PC = 0xaaaaaaab7f8c *)
mov x20 Hx4x11;
(* adds	x17, x17, x8                               #! PC = 0xaaaaaaab7f90 *)
adds carry x17 x17 x8;
(* adcs	x19, x19, x15                              #! PC = 0xaaaaaaab7f94 *)
adcs carry x19 x19 x15 carry;
(* adc	x20, x20, xzr                               #! PC = 0xaaaaaaab7f98 *)
adc x20 x20 0@uint64 carry;
(* mul	x8, x3, x12                                 #! PC = 0xaaaaaaab7f9c *)
mull Hx3x12 x8 x3 x12;
(* umulh	x15, x3, x12                              #! PC = 0xaaaaaaab7fa0 *)
mov x15 Hx3x12;
(* adds	x19, x19, x30                              #! PC = 0xaaaaaaab7fa4 *)
adds carry x19 x19 x30;
(* adcs	x20, x20, x15                              #! PC = 0xaaaaaaab7fa8 *)
adcs carry x20 x20 x15 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab7fac *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x30, x5, x10                                #! PC = 0xaaaaaaab7fb0 *)
mull Hx5x10 x30 x5 x10;
(* umulh	x15, x5, x10                              #! PC = 0xaaaaaaab7fb4 *)
mov x15 Hx5x10;
(* adds	x19, x19, x8                               #! PC = 0xaaaaaaab7fb8 *)
adds carry x19 x19 x8;
(* adcs	x20, x20, x15                              #! PC = 0xaaaaaaab7fbc *)
adcs carry x20 x20 x15 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab7fc0 *)
adc x29 x29 0@uint64 carry;
(* mul	x8, x4, x12                                 #! PC = 0xaaaaaaab7fc4 *)
mull Hx4x12 x8 x4 x12;
(* umulh	x15, x4, x12                              #! PC = 0xaaaaaaab7fc8 *)
mov x15 Hx4x12;
(* adds	x19, x19, x30                              #! PC = 0xaaaaaaab7fcc *)
adds carry x19 x19 x30;
(* adcs	x20, x20, x8                               #! PC = 0xaaaaaaab7fd0 *)
adcs carry x20 x20 x8 carry;
(* adcs	x29, x29, x15                              #! PC = 0xaaaaaaab7fd4 *)
adcs carry x29 x29 x15 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab7fd8 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x8, x5, x11                                 #! PC = 0xaaaaaaab7fdc *)
mull Hx5x11 x8 x5 x11;
(* umulh	x15, x5, x11                              #! PC = 0xaaaaaaab7fe0 *)
mov x15 Hx5x11;
(* adds	x20, x20, x8                               #! PC = 0xaaaaaaab7fe4 *)
adds carry x20 x20 x8;
(* adcs	x29, x29, x15                              #! PC = 0xaaaaaaab7fe8 *)
adcs carry x29 x29 x15 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab7fec *)
adc x30 x30 0@uint64 carry;
(* mul	x8, x5, x12                                 #! PC = 0xaaaaaaab7ff0 *)
mull Hx5x12 x8 x5 x12;
(* umulh	x15, x5, x12                              #! PC = 0xaaaaaaab7ff4 *)
mov x15 Hx5x12;
(* adds	x8, x8, x29                                #! PC = 0xaaaaaaab7ff8 *)
adds carry x8 x8 x29;
(* adc	x15, x15, x30                               #! PC = 0xaaaaaaab7ffc *)
adc x15 x15 x30 carry;
(* ldp	x3, x4, [x2, #160]                          #! EA = L0xffffffffdf48; Value = 0x7198898c0e104de0; PC = 0xaaaaaaab8000 *)
mov x3 L0xffffffffdf48;
mov x4 L0xffffffffdf50;
(* ldr	x5, [x2, #176]                              #! EA = L0xffffffffdf58; Value = 0xfe687c5c4ee3ab4f; PC = 0xaaaaaaab8004 *)
mov x5 L0xffffffffdf58;
(* mul	x23, x6, x13                                #! PC = 0xaaaaaaab8008 *)
mull Hx6x13 x23 x6 x13;
(* umulh	x26, x6, x13                              #! PC = 0xaaaaaaab800c *)
mov x26 Hx6x13;
(* subs	x3, x3, x16                                #! PC = 0xaaaaaaab8010 *)
subc carry x3 x3 x16;
(* sbcs	x21, x21, x17                              #! PC = 0xaaaaaaab8014 *)
sbcs carry x21 x21 x17 carry;
(* sbcs	x22, x22, x19                              #! PC = 0xaaaaaaab8018 *)
sbcs carry x22 x22 x19 carry;
(* sbcs	x5, x5, x20                                #! PC = 0xaaaaaaab801c *)
sbcs carry x5 x5 x20 carry;
(* sbcs	x14, x14, x8                               #! PC = 0xaaaaaaab8020 *)
sbcs carry x14 x14 x8 carry;
(* sbcs	x7, x7, x15                                #! PC = 0xaaaaaaab8024 *)
sbcs carry x7 x7 x15 carry;
(* sbc	x4, x4, xzr                                 #! PC = 0xaaaaaaab8028 *)
sbcs docare x4 x4 0@uint64 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* stp	x14, x15, [x2, #176]                        #! EA = L0xffffffffdf58; PC = 0xaaaaaaab802c *)
mov L0xffffffffdf58 x14;
mov L0xffffffffdf60 x15;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0xffffffffe6d8; Value = 0x676e0733637927f3; PC = 0xaaaaaaab8030 *)
mov x14 L0xffffffffe6d8;
mov x15 L0xffffffffe6e0;
(* stp	x7, x8, [x2, #160]                          #! EA = L0xffffffffdf48; PC = 0xaaaaaaab8034 *)
mov L0xffffffffdf48 x7;
mov L0xffffffffdf50 x8;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe618; Value = 0xdf12b32bd970f2f3; PC = 0xaaaaaaab8038 *)
mov x7 L0xffffffffe618;
mov x8 L0xffffffffe620;
(* mul	x24, x6, x14                                #! PC = 0xaaaaaaab803c *)
mull Hx6x14 x24 x6 x14;
(* umulh	x25, x6, x14                              #! PC = 0xaaaaaaab8040 *)
mov x25 Hx6x14;
(* mul	x27, x7, x13                                #! PC = 0xaaaaaaab8044 *)
mull Hx7x13 x27 x7 x13;
(* umulh	x28, x7, x13                              #! PC = 0xaaaaaaab8048 *)
mov x28 Hx7x13;
(* adds	x24, x24, x26                              #! PC = 0xaaaaaaab804c *)
adds carry x24 x24 x26;
(* adc	x25, x25, xzr                               #! PC = 0xaaaaaaab8050 *)
adc x25 x25 0@uint64 carry;
(* mul	x30, x7, x14                                #! PC = 0xaaaaaaab8054 *)
mull Hx7x14 x30 x7 x14;
(* umulh	x26, x7, x14                              #! PC = 0xaaaaaaab8058 *)
mov x26 Hx7x14;
(* adds	x24, x24, x27                              #! PC = 0xaaaaaaab805c *)
adds carry x24 x24 x27;
(* adcs	x25, x25, x28                              #! PC = 0xaaaaaaab8060 *)
adcs carry x25 x25 x28 carry;
(* adc	x26, x26, xzr                               #! PC = 0xaaaaaaab8064 *)
adc x26 x26 0@uint64 carry;
(* mul	x27, x6, x15                                #! PC = 0xaaaaaaab8068 *)
mull Hx6x15 x27 x6 x15;
(* umulh	x28, x6, x15                              #! PC = 0xaaaaaaab806c *)
mov x28 Hx6x15;
(* adds	x25, x25, x30                              #! PC = 0xaaaaaaab8070 *)
adds carry x25 x25 x30;
(* adcs	x26, x26, x28                              #! PC = 0xaaaaaaab8074 *)
adcs carry x26 x26 x28 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab8078 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x30, x8, x13                                #! PC = 0xaaaaaaab807c *)
mull Hx8x13 x30 x8 x13;
(* umulh	x28, x8, x13                              #! PC = 0xaaaaaaab8080 *)
mov x28 Hx8x13;
(* adds	x25, x25, x27                              #! PC = 0xaaaaaaab8084 *)
adds carry x25 x25 x27;
(* adcs	x26, x26, x28                              #! PC = 0xaaaaaaab8088 *)
adcs carry x26 x26 x28 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab808c *)
adc x29 x29 0@uint64 carry;
(* mul	x27, x7, x15                                #! PC = 0xaaaaaaab8090 *)
mull Hx7x15 x27 x7 x15;
(* umulh	x28, x7, x15                              #! PC = 0xaaaaaaab8094 *)
mov x28 Hx7x15;
(* adds	x25, x25, x30                              #! PC = 0xaaaaaaab8098 *)
adds carry x25 x25 x30;
(* adcs	x26, x26, x27                              #! PC = 0xaaaaaaab809c *)
adcs carry x26 x26 x27 carry;
(* adcs	x29, x29, x28                              #! PC = 0xaaaaaaab80a0 *)
adcs carry x29 x29 x28 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab80a4 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x27, x8, x14                                #! PC = 0xaaaaaaab80a8 *)
mull Hx8x14 x27 x8 x14;
(* umulh	x28, x8, x14                              #! PC = 0xaaaaaaab80ac *)
mov x28 Hx8x14;
(* adds	x26, x26, x27                              #! PC = 0xaaaaaaab80b0 *)
adds carry x26 x26 x27;
(* adcs	x29, x29, x28                              #! PC = 0xaaaaaaab80b4 *)
adcs carry x29 x29 x28 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab80b8 *)
adc x30 x30 0@uint64 carry;
(* mul	x27, x8, x15                                #! PC = 0xaaaaaaab80bc *)
mull Hx8x15 x27 x8 x15;
(* umulh	x28, x8, x15                              #! PC = 0xaaaaaaab80c0 *)
mov x28 Hx8x15;
(* adds	x27, x27, x29                              #! PC = 0xaaaaaaab80c4 *)
adds carry x27 x27 x29;
(* adc	x28, x28, x30                               #! PC = 0xaaaaaaab80c8 *)
adc x28 x28 x30 carry;
(* ldp	x7, x8, [x2, #160]                          #! EA = L0xffffffffdf48; Value = 0x885040fa197b7e65; PC = 0xaaaaaaab80cc *)
mov x7 L0xffffffffdf48;
mov x8 L0xffffffffdf50;
(* ldp	x14, x15, [x2, #176]                        #! EA = L0xffffffffdf58; Value = 0xf56b3ecfb5f236fc; PC = 0xaaaaaaab80d0 *)
mov x14 L0xffffffffdf58;
mov x15 L0xffffffffdf60;
(* subs	x3, x3, x23                                #! PC = 0xaaaaaaab80d4 *)
subc carry x3 x3 x23;
(* sbcs	x21, x21, x24                              #! PC = 0xaaaaaaab80d8 *)
sbcs carry x21 x21 x24 carry;
(* sbcs	x22, x22, x25                              #! PC = 0xaaaaaaab80dc *)
sbcs carry x22 x22 x25 carry;
(* sbcs	x5, x5, x26                                #! PC = 0xaaaaaaab80e0 *)
sbcs carry x5 x5 x26 carry;
(* sbcs	x14, x14, x27                              #! PC = 0xaaaaaaab80e4 *)
sbcs carry x14 x14 x27 carry;
(* sbcs	x7, x7, x28                                #! PC = 0xaaaaaaab80e8 *)
sbcs carry x7 x7 x28 carry;
(* sbc	x4, x4, xzr                                 #! PC = 0xaaaaaaab80ec *)
sbcs docare x4 x4 0@uint64 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* adds	x20, x3, x20                               #! PC = 0xaaaaaaab80f0 *)
adds carry x20 x3 x20;
(* adcs	x21, x21, x8                               #! PC = 0xaaaaaaab80f4 *)
adcs carry x21 x21 x8 carry;
(* adcs	x22, x22, x15                              #! PC = 0xaaaaaaab80f8 *)
adcs carry x22 x22 x15 carry;
(* adcs	x23, x23, x5                               #! PC = 0xaaaaaaab80fc *)
adcs carry x23 x23 x5 carry;
(* adcs	x24, x24, x14                              #! PC = 0xaaaaaaab8100 *)
adcs carry x24 x24 x14 carry;
(* adcs	x25, x25, x7                               #! PC = 0xaaaaaaab8104 *)
adcs carry x25 x25 x7 carry;
(* adcs	x26, x26, x4                               #! PC = 0xaaaaaaab8108 *)
adcs carry x26 x26 x4 carry;
(* adcs	x27, x27, xzr                              #! PC = 0xaaaaaaab810c *)
adcs carry x27 x27 0@uint64 carry;
(* adc	x28, x28, xzr                               #! PC = 0xaaaaaaab8110 *)
adcs docare x28 x28 0@uint64 carry;

(* TODO: cannot carry *)
(* assert true && docare = 0@1; *)
assume docare = 0 && true;

(* ldp	x3, x4, [x2]                                #! EA = L0xffffffffdea8; Value = 0xb60ee1fc40e37bee; PC = 0xaaaaaaab8114 *)
mov x3 L0xffffffffdea8;
mov x4 L0xffffffffdeb0;
(* ldp	x5, x6, [x2, #16]                           #! EA = L0xffffffffdeb8; Value = 0x45470b636b66fee4; PC = 0xaaaaaaab8118 *)
mov x5 L0xffffffffdeb8;
mov x6 L0xffffffffdec0;
(* ldp	x7, x8, [x2, #32]                           #! EA = L0xffffffffdec8; Value = 0x48041452d4249e6f; PC = 0xaaaaaaab811c *)
mov x7 L0xffffffffdec8;
mov x8 L0xffffffffded0;
(* ldp	x10, x11, [x2, #48]                         #! EA = L0xffffffffded8; Value = 0xfba737ad29084ed4; PC = 0xaaaaaaab8120 *)
mov x10 L0xffffffffded8;
mov x11 L0xffffffffdee0;
(* ldp	x12, x13, [x2, #64]                         #! EA = L0xffffffffdee8; Value = 0x312fff2cf32b8b06; PC = 0xaaaaaaab8124 *)
mov x12 L0xffffffffdee8;
mov x13 L0xffffffffdef0;
(* ldp	x14, x15, [x2, #80]                         #! EA = L0xffffffffdef8; Value = 0x6b4f2793f876148d; PC = 0xaaaaaaab8128 *)
mov x14 L0xffffffffdef8;
mov x15 L0xffffffffdf00;
(* subs	x3, x3, x16                                #! PC = 0xaaaaaaab812c *)
subc carry x3 x3 x16;
(* sbcs	x4, x4, x17                                #! PC = 0xaaaaaaab8130 *)
sbcs carry x4 x4 x17 carry;
(* sbcs	x5, x5, x19                                #! PC = 0xaaaaaaab8134 *)
sbcs carry x5 x5 x19 carry;
(* sbcs	x6, x6, x20                                #! PC = 0xaaaaaaab8138 *)
sbcs carry x6 x6 x20 carry;
(* sbcs	x7, x7, x21                                #! PC = 0xaaaaaaab813c *)
sbcs carry x7 x7 x21 carry;
(* sbcs	x8, x8, x22                                #! PC = 0xaaaaaaab8140 *)
sbcs carry x8 x8 x22 carry;
(* sbcs	x10, x10, x23                              #! PC = 0xaaaaaaab8144 *)
sbcs carry x10 x10 x23 carry;
(* sbcs	x11, x11, x24                              #! PC = 0xaaaaaaab8148 *)
sbcs carry x11 x11 x24 carry;
(* sbcs	x12, x12, x25                              #! PC = 0xaaaaaaab814c *)
sbcs carry x12 x12 x25 carry;
(* sbcs	x13, x13, x26                              #! PC = 0xaaaaaaab8150 *)
sbcs carry x13 x13 x26 carry;
(* sbcs	x14, x14, x27                              #! PC = 0xaaaaaaab8154 *)
sbcs carry x14 x14 x27 carry;
(* sbcs	x15, x15, x28                              #! PC = 0xaaaaaaab8158 *)
sbcs carry x15 x15 x28 carry;
(* sbc	x9, x9, xzr                                 #! PC = 0xaaaaaaab815c *)
sbcs docare x9 x9 0@uint64 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* stp	x16, x17, [x2]                              #! EA = L0xffffffffdea8; PC = 0xaaaaaaab8160 *)
mov L0xffffffffdea8 x16;
mov L0xffffffffdeb0 x17;
(* stp	x19, x20, [x2, #16]                         #! EA = L0xffffffffdeb8; PC = 0xaaaaaaab8164 *)
mov L0xffffffffdeb8 x19;
mov L0xffffffffdec0 x20;
(* stp	x21, x22, [x2, #32]                         #! EA = L0xffffffffdec8; PC = 0xaaaaaaab8168 *)
mov L0xffffffffdec8 x21;
mov L0xffffffffded0 x22;
(* adds	x3, x3, x23                                #! PC = 0xaaaaaaab816c *)
adds carry x3 x3 x23;
(* adcs	x4, x4, x24                                #! PC = 0xaaaaaaab8170 *)
adcs carry x4 x4 x24 carry;
(* adcs	x5, x5, x25                                #! PC = 0xaaaaaaab8174 *)
adcs carry x5 x5 x25 carry;
(* adcs	x6, x6, x26                                #! PC = 0xaaaaaaab8178 *)
adcs carry x6 x6 x26 carry;
(* adcs	x7, x7, x27                                #! PC = 0xaaaaaaab817c *)
adcs carry x7 x7 x27 carry;
(* adcs	x8, x8, x28                                #! PC = 0xaaaaaaab8180 *)
adcs carry x8 x8 x28 carry;
(* stp	x3, x4, [x2, #48]                           #! EA = L0xffffffffded8; PC = 0xaaaaaaab8184 *)
mov L0xffffffffded8 x3;
mov L0xffffffffdee0 x4;
(* adc	x3, xzr, xzr                                #! PC = 0xaaaaaaab8188 *)
adc x3 0@uint64 0@uint64 carry;

(* NOTE: store carry *)
ghost storecarry@bit : storecarry=carry && storecarry=carry;

(* stp	x5, x6, [x2, #64]                           #! EA = L0xffffffffdee8; PC = 0xaaaaaaab818c *)
mov L0xffffffffdee8 x5;
mov L0xffffffffdef0 x6;
(* stp	x7, x8, [x2, #80]                           #! EA = L0xffffffffdef8; PC = 0xaaaaaaab8190 *)
mov L0xffffffffdef8 x7;
mov L0xffffffffdf00 x8;
(* stp	x10, x11, [x2, #96]                         #! EA = L0xffffffffdf08; PC = 0xaaaaaaab8194 *)
mov L0xffffffffdf08 x10;
mov L0xffffffffdf10 x11;
(* stp	x12, x13, [x2, #112]                        #! EA = L0xffffffffdf18; PC = 0xaaaaaaab8198 *)
mov L0xffffffffdf18 x12;
mov L0xffffffffdf20 x13;
(* stp	x14, x15, [x2, #128]                        #! EA = L0xffffffffdf28; PC = 0xaaaaaaab819c *)
mov L0xffffffffdf28 x14;
mov L0xffffffffdf30 x15;
(* neg	x3, x3                                      #! PC = 0xaaaaaaab81a0 *)
subc dontcare x3 0@uint64 x3;
(* str	x3, [x2, #144]                              #! EA = L0xffffffffdf38; PC = 0xaaaaaaab81a4 *)
mov L0xffffffffdf38 x3;
(* ldp	x3, x4, [x0, #48]                           #! EA = L0xffffffffe628; Value = 0xe4b5561a1ae56b5a; PC = 0xaaaaaaab81a8 *)
mov x3 L0xffffffffe628;
mov x4 L0xffffffffe630;
(* ldp	x5, x6, [x0, #64]                           #! EA = L0xffffffffe638; Value = 0xb043e4f309687921; PC = 0xaaaaaaab81ac *)
mov x5 L0xffffffffe638;
mov x6 L0xffffffffe640;
(* ldp	x7, x8, [x0, #80]                           #! EA = L0xffffffffe648; Value = 0x032b11e8cb16542c; PC = 0xaaaaaaab81b0 *)
mov x7 L0xffffffffe648;
mov x8 L0xffffffffe650;
(* ldp	x10, x11, [x1, #48]                         #! EA = L0xffffffffe6e8; Value = 0x7536372564f2a985; PC = 0xaaaaaaab81b4 *)
mov x10 L0xffffffffe6e8;
mov x11 L0xffffffffe6f0;
(* ldp	x12, x13, [x1, #64]                         #! EA = L0xffffffffe6f8; Value = 0x5dc3c5586beebe97; PC = 0xaaaaaaab81b8 *)
mov x12 L0xffffffffe6f8;
mov x13 L0xffffffffe700;
(* ldp	x14, x15, [x1, #80]                         #! EA = L0xffffffffe708; Value = 0x85437aab6a838d82; PC = 0xaaaaaaab81bc *)
mov x14 L0xffffffffe708;
mov x15 L0xffffffffe710;
(* add	x0, x0, #0x30                               #! PC = 0xaaaaaaab81c0 *)
adds dontcare x0 x0 0x30@uint64;
(* add	x1, x1, #0x30                               #! PC = 0xaaaaaaab81c4 *)
adds dontcare x1 x1 0x30@uint64;
(* adds	x23, x3, x6                                #! PC = 0xaaaaaaab81c8 *)
adds carry x23 x3 x6;
(* adcs	x24, x4, x7                                #! PC = 0xaaaaaaab81cc *)
adcs carry x24 x4 x7 carry;
(* adcs	x25, x5, x8                                #! PC = 0xaaaaaaab81d0 *)
adcs carry x25 x5 x8 carry;
(* adc	x4, xzr, xzr                                #! PC = 0xaaaaaaab81d4 *)
adc x4 0@uint64 0@uint64 carry;
(* adds	x26, x10, x13                              #! PC = 0xaaaaaaab81d8 *)
adds carry x26 x10 x13;
(* adcs	x27, x11, x14                              #! PC = 0xaaaaaaab81dc *)
adcs carry x27 x11 x14 carry;
(* adcs	x28, x12, x15                              #! PC = 0xaaaaaaab81e0 *)
adcs carry x28 x12 x15 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab81e4 *)
adc x29 0@uint64 0@uint64 carry;

ghost x4m3@uint64, x29m3@uint64 :
      and [x4m3=x4, x29m3=x29] && and [x4m3=x4, x29m3=x29];

(* neg	x30, x4                                     #! PC = 0xaaaaaaab81e8 *)
subc dontcare x30 0@uint64 x4;
(* and	x5, x26, x30                                #! PC = 0xaaaaaaab81ec *)
and x5@uint64 x26 x30;
(* and	x14, x27, x30                               #! PC = 0xaaaaaaab81f0 *)
and x14@uint64 x27 x30;
(* and	x7, x28, x30                                #! PC = 0xaaaaaaab81f4 *)
and x7@uint64 x28 x30;
(* neg	x30, x29                                    #! PC = 0xaaaaaaab81f8 *)
subc dontcare x30 0@uint64 x29;
(* and	x3, x23, x30                                #! PC = 0xaaaaaaab81fc *)
and x3@uint64 x23 x30;
(* umulh	x19, x23, x26                             #! PC = 0xaaaaaaab8200 *)
(* NOTE: merged with mul x3, x23, x26 *)
(* mov x19 Hx23x26; *)
(* and	x21, x24, x30                               #! PC = 0xaaaaaaab8204 *)
and x21@uint64 x24 x30;
(* and	x22, x25, x30                               #! PC = 0xaaaaaaab8208 *)
and x22@uint64 x25 x30;

(* NOTE: mask *)
assert true
    && and [x4m3*(1@64-x4m3)=0@64, x29m3*(1@64-x29m3)=0@64,
            limbs 64 [ x5, x14,  x7] =
            uext  x4m3 128 * limbs 64 [x26, x27, x28],
            limbs 64 [ x3, x21, x22] =
            uext x29m3 128 * limbs 64 [x23, x24, x25]];
assume and [x4m3*(1-x4m3)=0, x29m3*(1-x29m3)=0,
            limbs 64 [ x5, x14,  x7] =  x4m3 * limbs 64 [x26, x27, x28],
            limbs 64 [ x3, x21, x22] = x29m3 * limbs 64 [x23, x24, x25]]
    && true;

(* and	x4, x4, x29                                 #! PC = 0xaaaaaaab820c *)
and x4@uint64 x4 x29;

(* NOTE: combined carries *)
assert true && x4=x4m3*x29m3;
assume x4=x4m3*x29m3 && true;

(* adds	x5, x5, x3                                 #! PC = 0xaaaaaaab8210 *)
adds carry x5 x5 x3;
(* adcs	x14, x14, x21                              #! PC = 0xaaaaaaab8214 *)
adcs carry x14 x14 x21 carry;
(* mul	x3, x23, x26                                #! PC = 0xaaaaaaab8218 *)
mull x19 x3 x23 x26;
(* mul	x21, x23, x27                               #! PC = 0xaaaaaaab821c *)
mull Hx23x27 x21 x23 x27;
(* adcs	x7, x7, x22                                #! PC = 0xaaaaaaab8220 *)
adcs carry x7 x7 x22 carry;
(* umulh	x22, x23, x27                             #! PC = 0xaaaaaaab8224 *)
mov x22 Hx23x27;
(* adc	x4, x4, xzr                                 #! PC = 0xaaaaaaab8228 *)
adc x4 x4 0@uint64 carry;
(* mul	x20, x24, x26                               #! PC = 0xaaaaaaab822c *)
mull Hx24x26 x20 x24 x26;
(* umulh	x8, x24, x26                              #! PC = 0xaaaaaaab8230 *)
mov x8 Hx24x26;
(* adds	x21, x21, x19                              #! PC = 0xaaaaaaab8234 *)
adds carry x21 x21 x19;
(* adc	x22, x22, xzr                               #! PC = 0xaaaaaaab8238 *)
adc x22 x22 0@uint64 carry;
(* mul	x30, x24, x27                               #! PC = 0xaaaaaaab823c *)
mull Hx24x27 x30 x24 x27;
(* umulh	x19, x24, x27                             #! PC = 0xaaaaaaab8240 *)
mov x19 Hx24x27;
(* adds	x21, x21, x20                              #! PC = 0xaaaaaaab8244 *)
adds carry x21 x21 x20;
(* adcs	x22, x22, x8                               #! PC = 0xaaaaaaab8248 *)
adcs carry x22 x22 x8 carry;
(* adc	x19, x19, xzr                               #! PC = 0xaaaaaaab824c *)
adc x19 x19 0@uint64 carry;
(* mul	x20, x23, x28                               #! PC = 0xaaaaaaab8250 *)
mull Hx23x28 x20 x23 x28;
(* umulh	x8, x23, x28                              #! PC = 0xaaaaaaab8254 *)
mov x8 Hx23x28;
(* adds	x22, x22, x30                              #! PC = 0xaaaaaaab8258 *)
adds carry x22 x22 x30;
(* adcs	x19, x19, x8                               #! PC = 0xaaaaaaab825c *)
adcs carry x19 x19 x8 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab8260 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x30, x25, x26                               #! PC = 0xaaaaaaab8264 *)
mull Hx25x26 x30 x25 x26;
(* umulh	x8, x25, x26                              #! PC = 0xaaaaaaab8268 *)
mov x8 Hx25x26;
(* adds	x22, x22, x20                              #! PC = 0xaaaaaaab826c *)
adds carry x22 x22 x20;
(* adcs	x19, x19, x8                               #! PC = 0xaaaaaaab8270 *)
adcs carry x19 x19 x8 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8274 *)
adc x29 x29 0@uint64 carry;
(* mul	x20, x24, x28                               #! PC = 0xaaaaaaab8278 *)
mull Hx24x28 x20 x24 x28;
(* umulh	x8, x24, x28                              #! PC = 0xaaaaaaab827c *)
mov x8 Hx24x28;
(* adds	x22, x22, x30                              #! PC = 0xaaaaaaab8280 *)
adds carry x22 x22 x30;
(* adcs	x19, x19, x20                              #! PC = 0xaaaaaaab8284 *)
adcs carry x19 x19 x20 carry;
(* adcs	x29, x29, x8                               #! PC = 0xaaaaaaab8288 *)
adcs carry x29 x29 x8 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab828c *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x20, x25, x27                               #! PC = 0xaaaaaaab8290 *)
mull Hx25x27 x20 x25 x27;
(* umulh	x8, x25, x27                              #! PC = 0xaaaaaaab8294 *)
mov x8 Hx25x27;
(* adds	x19, x19, x20                              #! PC = 0xaaaaaaab8298 *)
adds carry x19 x19 x20;
(* adcs	x29, x29, x8                               #! PC = 0xaaaaaaab829c *)
adcs carry x29 x29 x8 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab82a0 *)
adc x30 x30 0@uint64 carry;
(* mul	x20, x25, x28                               #! PC = 0xaaaaaaab82a4 *)
mull Hx25x28 x20 x25 x28;
(* umulh	x8, x25, x28                              #! PC = 0xaaaaaaab82a8 *)
mov x8 Hx25x28;
(* adds	x20, x20, x29                              #! PC = 0xaaaaaaab82ac *)
adds carry x20 x20 x29;
(* adc	x8, x8, x30                                 #! PC = 0xaaaaaaab82b0 *)
adc x8 x8 x30 carry;
(* adds	x5, x5, x19                                #! PC = 0xaaaaaaab82b4 *)
adds carry x5 x5 x19;
(* adcs	x14, x14, x20                              #! PC = 0xaaaaaaab82b8 *)
adcs carry x14 x14 x20 carry;
(* adcs	x7, x7, x8                                 #! PC = 0xaaaaaaab82bc *)
adcs carry x7 x7 x8 carry;
(* adc	x4, x4, xzr                                 #! PC = 0xaaaaaaab82c0 *)
adc x4 x4 0@uint64 carry;
(* stp	x3, x4, [x2, #160]                          #! EA = L0xffffffffdf48; PC = 0xaaaaaaab82c4 *)
mov L0xffffffffdf48 x3;
mov L0xffffffffdf50 x4;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe628; Value = 0xe4b5561a1ae56b5a; PC = 0xaaaaaaab82c8 *)
mov x3 L0xffffffffe628;
mov x4 L0xffffffffe630;
(* str	x5, [x2, #176]                              #! EA = L0xffffffffdf58; PC = 0xaaaaaaab82cc *)
mov L0xffffffffdf58 x5;
(* ldr	x5, [x0, #16]                               #! EA = L0xffffffffe638; Value = 0xb043e4f309687921; PC = 0xaaaaaaab82d0 *)
mov x5 L0xffffffffe638;
(* mul	x16, x3, x10                                #! PC = 0xaaaaaaab82d4 *)
mull Hx3x10 x16 x3 x10;
(* mul	x17, x3, x11                                #! PC = 0xaaaaaaab82d8 *)
mull Hx3x11 x17 x3 x11;
(* umulh	x19, x3, x11                              #! PC = 0xaaaaaaab82dc *)
mov x19 Hx3x11;
(* umulh	x20, x3, x10                              #! PC = 0xaaaaaaab82e0 *)
mov x20 Hx3x10;
(* mul	x8, x4, x10                                 #! PC = 0xaaaaaaab82e4 *)
mull Hx4x10 x8 x4 x10;
(* umulh	x15, x4, x10                              #! PC = 0xaaaaaaab82e8 *)
mov x15 Hx4x10;
(* adds	x17, x17, x20                              #! PC = 0xaaaaaaab82ec *)
adds carry x17 x17 x20;
(* adc	x19, x19, xzr                               #! PC = 0xaaaaaaab82f0 *)
adc x19 x19 0@uint64 carry;
(* mul	x30, x4, x11                                #! PC = 0xaaaaaaab82f4 *)
mull Hx4x11 x30 x4 x11;
(* umulh	x20, x4, x11                              #! PC = 0xaaaaaaab82f8 *)
mov x20 Hx4x11;
(* adds	x17, x17, x8                               #! PC = 0xaaaaaaab82fc *)
adds carry x17 x17 x8;
(* adcs	x19, x19, x15                              #! PC = 0xaaaaaaab8300 *)
adcs carry x19 x19 x15 carry;
(* adc	x20, x20, xzr                               #! PC = 0xaaaaaaab8304 *)
adc x20 x20 0@uint64 carry;
(* mul	x8, x3, x12                                 #! PC = 0xaaaaaaab8308 *)
mull Hx3x12 x8 x3 x12;
(* umulh	x15, x3, x12                              #! PC = 0xaaaaaaab830c *)
mov x15 Hx3x12;
(* adds	x19, x19, x30                              #! PC = 0xaaaaaaab8310 *)
adds carry x19 x19 x30;
(* adcs	x20, x20, x15                              #! PC = 0xaaaaaaab8314 *)
adcs carry x20 x20 x15 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab8318 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x30, x5, x10                                #! PC = 0xaaaaaaab831c *)
mull Hx5x10 x30 x5 x10;
(* umulh	x15, x5, x10                              #! PC = 0xaaaaaaab8320 *)
mov x15 Hx5x10;
(* adds	x19, x19, x8                               #! PC = 0xaaaaaaab8324 *)
adds carry x19 x19 x8;
(* adcs	x20, x20, x15                              #! PC = 0xaaaaaaab8328 *)
adcs carry x20 x20 x15 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab832c *)
adc x29 x29 0@uint64 carry;
(* mul	x8, x4, x12                                 #! PC = 0xaaaaaaab8330 *)
mull Hx4x12 x8 x4 x12;
(* umulh	x15, x4, x12                              #! PC = 0xaaaaaaab8334 *)
mov x15 Hx4x12;
(* adds	x19, x19, x30                              #! PC = 0xaaaaaaab8338 *)
adds carry x19 x19 x30;
(* adcs	x20, x20, x8                               #! PC = 0xaaaaaaab833c *)
adcs carry x20 x20 x8 carry;
(* adcs	x29, x29, x15                              #! PC = 0xaaaaaaab8340 *)
adcs carry x29 x29 x15 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab8344 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x8, x5, x11                                 #! PC = 0xaaaaaaab8348 *)
mull Hx5x11 x8 x5 x11;
(* umulh	x15, x5, x11                              #! PC = 0xaaaaaaab834c *)
mov x15 Hx5x11;
(* adds	x20, x20, x8                               #! PC = 0xaaaaaaab8350 *)
adds carry x20 x20 x8;
(* adcs	x29, x29, x15                              #! PC = 0xaaaaaaab8354 *)
adcs carry x29 x29 x15 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab8358 *)
adc x30 x30 0@uint64 carry;
(* mul	x8, x5, x12                                 #! PC = 0xaaaaaaab835c *)
mull Hx5x12 x8 x5 x12;
(* umulh	x15, x5, x12                              #! PC = 0xaaaaaaab8360 *)
mov x15 Hx5x12;
(* adds	x8, x8, x29                                #! PC = 0xaaaaaaab8364 *)
adds carry x8 x8 x29;
(* adc	x15, x15, x30                               #! PC = 0xaaaaaaab8368 *)
adc x15 x15 x30 carry;
(* ldp	x3, x4, [x2, #160]                          #! EA = L0xffffffffdf48; Value = 0x774deb9e50ff38a9; PC = 0xaaaaaaab836c *)
mov x3 L0xffffffffdf48;
mov x4 L0xffffffffdf50;
(* ldr	x5, [x2, #176]                              #! EA = L0xffffffffdf58; Value = 0x4114945a10b7807b; PC = 0xaaaaaaab8370 *)
mov x5 L0xffffffffdf58;
(* mul	x23, x6, x13                                #! PC = 0xaaaaaaab8374 *)
mull Hx6x13 x23 x6 x13;
(* umulh	x26, x6, x13                              #! PC = 0xaaaaaaab8378 *)
mov x26 Hx6x13;
(* subs	x3, x3, x16                                #! PC = 0xaaaaaaab837c *)
subc carry x3 x3 x16;
(* sbcs	x21, x21, x17                              #! PC = 0xaaaaaaab8380 *)
sbcs carry x21 x21 x17 carry;
(* sbcs	x22, x22, x19                              #! PC = 0xaaaaaaab8384 *)
sbcs carry x22 x22 x19 carry;
(* sbcs	x5, x5, x20                                #! PC = 0xaaaaaaab8388 *)
sbcs carry x5 x5 x20 carry;
(* sbcs	x14, x14, x8                               #! PC = 0xaaaaaaab838c *)
sbcs carry x14 x14 x8 carry;
(* sbcs	x7, x7, x15                                #! PC = 0xaaaaaaab8390 *)
sbcs carry x7 x7 x15 carry;
(* sbc	x4, x4, xzr                                 #! PC = 0xaaaaaaab8394 *)
sbcs docare x4 x4 0@uint64 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* stp	x14, x15, [x2, #176]                        #! EA = L0xffffffffdf58; PC = 0xaaaaaaab8398 *)
mov L0xffffffffdf58 x14;
mov L0xffffffffdf60 x15;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0xffffffffe708; Value = 0x85437aab6a838d82; PC = 0xaaaaaaab839c *)
mov x14 L0xffffffffe708;
mov x15 L0xffffffffe710;
(* stp	x7, x8, [x2, #160]                          #! EA = L0xffffffffdf48; PC = 0xaaaaaaab83a0 *)
mov L0xffffffffdf48 x7;
mov L0xffffffffdf50 x8;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe648; Value = 0x032b11e8cb16542c; PC = 0xaaaaaaab83a4 *)
mov x7 L0xffffffffe648;
mov x8 L0xffffffffe650;
(* mul	x24, x6, x14                                #! PC = 0xaaaaaaab83a8 *)
mull Hx6x14 x24 x6 x14;
(* umulh	x25, x6, x14                              #! PC = 0xaaaaaaab83ac *)
mov x25 Hx6x14;
(* mul	x27, x7, x13                                #! PC = 0xaaaaaaab83b0 *)
mull Hx7x13 x27 x7 x13;
(* umulh	x28, x7, x13                              #! PC = 0xaaaaaaab83b4 *)
mov x28 Hx7x13;
(* adds	x24, x24, x26                              #! PC = 0xaaaaaaab83b8 *)
adds carry x24 x24 x26;
(* adc	x25, x25, xzr                               #! PC = 0xaaaaaaab83bc *)
adc x25 x25 0@uint64 carry;
(* mul	x30, x7, x14                                #! PC = 0xaaaaaaab83c0 *)
mull Hx7x14 x30 x7 x14;
(* umulh	x26, x7, x14                              #! PC = 0xaaaaaaab83c4 *)
mov x26 Hx7x14;
(* adds	x24, x24, x27                              #! PC = 0xaaaaaaab83c8 *)
adds carry x24 x24 x27;
(* adcs	x25, x25, x28                              #! PC = 0xaaaaaaab83cc *)
adcs carry x25 x25 x28 carry;
(* adc	x26, x26, xzr                               #! PC = 0xaaaaaaab83d0 *)
adc x26 x26 0@uint64 carry;
(* mul	x27, x6, x15                                #! PC = 0xaaaaaaab83d4 *)
mull Hx6x15 x27 x6 x15;
(* umulh	x28, x6, x15                              #! PC = 0xaaaaaaab83d8 *)
mov x28 Hx6x15;
(* adds	x25, x25, x30                              #! PC = 0xaaaaaaab83dc *)
adds carry x25 x25 x30;
(* adcs	x26, x26, x28                              #! PC = 0xaaaaaaab83e0 *)
adcs carry x26 x26 x28 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab83e4 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x30, x8, x13                                #! PC = 0xaaaaaaab83e8 *)
mull Hx8x13 x30 x8 x13;
(* umulh	x28, x8, x13                              #! PC = 0xaaaaaaab83ec *)
mov x28 Hx8x13;
(* adds	x25, x25, x27                              #! PC = 0xaaaaaaab83f0 *)
adds carry x25 x25 x27;
(* adcs	x26, x26, x28                              #! PC = 0xaaaaaaab83f4 *)
adcs carry x26 x26 x28 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab83f8 *)
adc x29 x29 0@uint64 carry;
(* mul	x27, x7, x15                                #! PC = 0xaaaaaaab83fc *)
mull Hx7x15 x27 x7 x15;
(* umulh	x28, x7, x15                              #! PC = 0xaaaaaaab8400 *)
mov x28 Hx7x15;
(* adds	x25, x25, x30                              #! PC = 0xaaaaaaab8404 *)
adds carry x25 x25 x30;
(* adcs	x26, x26, x27                              #! PC = 0xaaaaaaab8408 *)
adcs carry x26 x26 x27 carry;
(* adcs	x29, x29, x28                              #! PC = 0xaaaaaaab840c *)
adcs carry x29 x29 x28 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab8410 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x27, x8, x14                                #! PC = 0xaaaaaaab8414 *)
mull Hx8x14 x27 x8 x14;
(* umulh	x28, x8, x14                              #! PC = 0xaaaaaaab8418 *)
mov x28 Hx8x14;
(* adds	x26, x26, x27                              #! PC = 0xaaaaaaab841c *)
adds carry x26 x26 x27;
(* adcs	x29, x29, x28                              #! PC = 0xaaaaaaab8420 *)
adcs carry x29 x29 x28 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab8424 *)
adc x30 x30 0@uint64 carry;
(* mul	x27, x8, x15                                #! PC = 0xaaaaaaab8428 *)
mull Hx8x15 x27 x8 x15;
(* umulh	x28, x8, x15                              #! PC = 0xaaaaaaab842c *)
mov x28 Hx8x15;
(* adds	x27, x27, x29                              #! PC = 0xaaaaaaab8430 *)
adds carry x27 x27 x29;
(* adc	x28, x28, x30                               #! PC = 0xaaaaaaab8434 *)
adc x28 x28 x30 carry;
(* ldp	x7, x8, [x2, #160]                          #! EA = L0xffffffffdf48; Value = 0x0000271c8e06e5f6; PC = 0xaaaaaaab8438 *)
mov x7 L0xffffffffdf48;
mov x8 L0xffffffffdf50;
(* ldp	x14, x15, [x2, #176]                        #! EA = L0xffffffffdf58; Value = 0x59e87d59d0cfb111; PC = 0xaaaaaaab843c *)
mov x14 L0xffffffffdf58;
mov x15 L0xffffffffdf60;
(* subs	x3, x3, x23                                #! PC = 0xaaaaaaab8440 *)
subc carry x3 x3 x23;
(* sbcs	x21, x21, x24                              #! PC = 0xaaaaaaab8444 *)
sbcs carry x21 x21 x24 carry;
(* sbcs	x22, x22, x25                              #! PC = 0xaaaaaaab8448 *)
sbcs carry x22 x22 x25 carry;
(* sbcs	x5, x5, x26                                #! PC = 0xaaaaaaab844c *)
sbcs carry x5 x5 x26 carry;
(* sbcs	x14, x14, x27                              #! PC = 0xaaaaaaab8450 *)
sbcs carry x14 x14 x27 carry;
(* sbcs	x7, x7, x28                                #! PC = 0xaaaaaaab8454 *)
sbcs carry x7 x7 x28 carry;
(* sbc	x4, x4, xzr                                 #! PC = 0xaaaaaaab8458 *)
sbcs docare x4 x4 0@uint64 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* adds	x20, x3, x20                               #! PC = 0xaaaaaaab845c *)
adds carry x20 x3 x20;
(* adcs	x21, x21, x8                               #! PC = 0xaaaaaaab8460 *)
adcs carry x21 x21 x8 carry;
(* adcs	x22, x22, x15                              #! PC = 0xaaaaaaab8464 *)
adcs carry x22 x22 x15 carry;
(* adcs	x23, x23, x5                               #! PC = 0xaaaaaaab8468 *)
adcs carry x23 x23 x5 carry;
(* adcs	x24, x24, x14                              #! PC = 0xaaaaaaab846c *)
adcs carry x24 x24 x14 carry;
(* adcs	x25, x25, x7                               #! PC = 0xaaaaaaab8470 *)
adcs carry x25 x25 x7 carry;
(* adcs	x26, x26, x4                               #! PC = 0xaaaaaaab8474 *)
adcs carry x26 x26 x4 carry;
(* adcs	x27, x27, xzr                              #! PC = 0xaaaaaaab8478 *)
adcs carry x27 x27 0@uint64 carry;
(* adc	x28, x28, xzr                               #! PC = 0xaaaaaaab847c *)
adcs docare x28 x28 0@uint64 carry;

(* TODO: cannot carry *)
(* assert true && docare = 0@1; *)
assume docare = 0 && true;

(* ldp	x3, x4, [x2, #48]                           #! EA = L0xffffffffded8; Value = 0x980eac10dbaea9ba; PC = 0xaaaaaaab8480 *)
mov x3 L0xffffffffded8;
mov x4 L0xffffffffdee0;
(* ldp	x5, x6, [x2, #64]                           #! EA = L0xffffffffdee8; Value = 0xb670a8cefc9dabac; PC = 0xaaaaaaab8484 *)
mov x5 L0xffffffffdee8;
mov x6 L0xffffffffdef0;
(* ldp	x7, x8, [x2, #80]                           #! EA = L0xffffffffdef8; Value = 0x39746ef92db3f409; PC = 0xaaaaaaab8488 *)
mov x7 L0xffffffffdef8;
mov x8 L0xffffffffdf00;
(* ldp	x10, x11, [x2, #96]                         #! EA = L0xffffffffdf08; Value = 0x327e9420cf49cd6c; PC = 0xaaaaaaab848c *)
mov x10 L0xffffffffdf08;
mov x11 L0xffffffffdf10;
(* ldp	x12, x13, [x2, #112]                        #! EA = L0xffffffffdf18; Value = 0x43998d4c8ab652f2; PC = 0xaaaaaaab8490 *)
mov x12 L0xffffffffdf18;
mov x13 L0xffffffffdf20;
(* ldp	x14, x15, [x2, #128]                        #! EA = L0xffffffffdf28; Value = 0xde54505138fc2213; PC = 0xaaaaaaab8494 *)
mov x14 L0xffffffffdf28;
mov x15 L0xffffffffdf30;
(* subs	x3, x3, x16                                #! PC = 0xaaaaaaab8498 *)
subc carry x3 x3 x16;
(* sbcs	x4, x4, x17                                #! PC = 0xaaaaaaab849c *)
sbcs carry x4 x4 x17 carry;
(* sbcs	x5, x5, x19                                #! PC = 0xaaaaaaab84a0 *)
sbcs carry x5 x5 x19 carry;
(* sbcs	x6, x6, x20                                #! PC = 0xaaaaaaab84a4 *)
sbcs carry x6 x6 x20 carry;
(* sbcs	x7, x7, x21                                #! PC = 0xaaaaaaab84a8 *)
sbcs carry x7 x7 x21 carry;
(* sbcs	x8, x8, x22                                #! PC = 0xaaaaaaab84ac *)
sbcs carry x8 x8 x22 carry;
(* sbcs	x10, x10, x23                              #! PC = 0xaaaaaaab84b0 *)
sbcs carry x10 x10 x23 carry;
(* sbcs	x11, x11, x24                              #! PC = 0xaaaaaaab84b4 *)
sbcs carry x11 x11 x24 carry;
(* sbcs	x12, x12, x25                              #! PC = 0xaaaaaaab84b8 *)
sbcs carry x12 x12 x25 carry;
(* sbcs	x13, x13, x26                              #! PC = 0xaaaaaaab84bc *)
sbcs carry x13 x13 x26 carry;
(* sbcs	x14, x14, x27                              #! PC = 0xaaaaaaab84c0 *)
sbcs carry x14 x14 x27 carry;
(* sbcs	x15, x15, x28                              #! PC = 0xaaaaaaab84c4 *)
sbcs carry x15 x15 x28 carry;
(* sbc	x9, x9, xzr                                 #! PC = 0xaaaaaaab84c8 *)
sbcs docare x9 x9 0@uint64 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* ldr	x1, [x2, #144]                              #! EA = L0xffffffffdf38; Value = 0xffffffffffffffff; PC = 0xaaaaaaab84cc *)
mov x1 L0xffffffffdf38;
(* stp	x3, x4, [x2, #48]                           #! EA = L0xffffffffded8; PC = 0xaaaaaaab84d0 *)
mov L0xffffffffded8 x3;
mov L0xffffffffdee0 x4;
(* stp	x5, x6, [x2, #64]                           #! EA = L0xffffffffdee8; PC = 0xaaaaaaab84d4 *)
mov L0xffffffffdee8 x5;
mov L0xffffffffdef0 x6;
(* adds	x1, x1, #0x1                               #! PC = 0xaaaaaaab84d8 *)
adds carry x1 x1 0x1@uint64;

(* NOTE: restore carry *)
assert true && carry=storecarry;
assume carry=storecarry && true;

(* stp	x7, x8, [x2, #80]                           #! EA = L0xffffffffdef8; PC = 0xaaaaaaab84dc *)
mov L0xffffffffdef8 x7;
mov L0xffffffffdf00 x8;
(* adcs	x10, x10, x16                              #! PC = 0xaaaaaaab84e0 *)
adcs carry x10 x10 x16 carry;
(* adcs	x11, x11, x17                              #! PC = 0xaaaaaaab84e4 *)
adcs carry x11 x11 x17 carry;
(* adcs	x12, x12, x19                              #! PC = 0xaaaaaaab84e8 *)
adcs carry x12 x12 x19 carry;
(* adcs	x13, x13, x20                              #! PC = 0xaaaaaaab84ec *)
adcs carry x13 x13 x20 carry;
(* adcs	x14, x14, x21                              #! PC = 0xaaaaaaab84f0 *)
adcs carry x14 x14 x21 carry;
(* adcs	x15, x15, x22                              #! PC = 0xaaaaaaab84f4 *)
adcs carry x15 x15 x22 carry;
(* adcs	x23, x23, x9                               #! PC = 0xaaaaaaab84f8 *)
adcs carry x23 x23 x9 carry;
(* adcs	x24, x24, xzr                              #! PC = 0xaaaaaaab84fc *)
adcs carry x24 x24 0@uint64 carry;
(* adcs	x25, x25, xzr                              #! PC = 0xaaaaaaab8500 *)
adcs carry x25 x25 0@uint64 carry;
(* adcs	x26, x26, xzr                              #! PC = 0xaaaaaaab8504 *)
adcs carry x26 x26 0@uint64 carry;
(* adcs	x27, x27, xzr                              #! PC = 0xaaaaaaab8508 *)
adcs carry x27 x27 0@uint64 carry;
(* adc	x28, x28, xzr                               #! PC = 0xaaaaaaab850c *)
adcs docare x28 x28 0@uint64 carry;

(* TODO: cannot carry *)
(* assert true && docare = 0@1; *)
assume docare = 0 && true;

(* stp	x10, x11, [x2, #96]                         #! EA = L0xffffffffdf08; PC = 0xaaaaaaab8510 *)
mov L0xffffffffdf08 x10;
mov L0xffffffffdf10 x11;
(* stp	x12, x13, [x2, #112]                        #! EA = L0xffffffffdf18; PC = 0xaaaaaaab8514 *)
mov L0xffffffffdf18 x12;
mov L0xffffffffdf20 x13;
(* stp	x14, x15, [x2, #128]                        #! EA = L0xffffffffdf28; PC = 0xaaaaaaab8518 *)
mov L0xffffffffdf28 x14;
mov L0xffffffffdf30 x15;
(* stp	x23, x24, [x2, #144]                        #! EA = L0xffffffffdf38; PC = 0xaaaaaaab851c *)
mov L0xffffffffdf38 x23;
mov L0xffffffffdf40 x24;
(* stp	x25, x26, [x2, #160]                        #! EA = L0xffffffffdf48; PC = 0xaaaaaaab8520 *)
mov L0xffffffffdf48 x25;
mov L0xffffffffdf50 x26;
(* stp	x27, x28, [x2, #176]                        #! EA = L0xffffffffdf58; PC = 0xaaaaaaab8524 *)
mov L0xffffffffdf58 x27;
mov L0xffffffffdf60 x28;
(* ldp	x19, x20, [sp]                              #! EA = L0xffffffffdd20; Value = 0x0000ffffffffdea8; PC = 0xaaaaaaab8528 *)
mov x19 L0xffffffffdd20;
mov x20 L0xffffffffdd28;
(* ldp	x21, x22, [sp, #16]                         #! EA = L0xffffffffdd30; Value = 0x0000ffffffffdf68; PC = 0xaaaaaaab852c *)
mov x21 L0xffffffffdd30;
mov x22 L0xffffffffdd38;
(* ldp	x23, x24, [sp, #32]                         #! EA = L0xffffffffdd40; Value = 0x0000ffffffffdde8; PC = 0xaaaaaaab8530 *)
mov x23 L0xffffffffdd40;
mov x24 L0xffffffffdd48;
(* ldp	x25, x26, [sp, #48]                         #! EA = L0xffffffffdd50; Value = 0x0000ffffffffe5f8; PC = 0xaaaaaaab8534 *)
mov x25 L0xffffffffdd50;
mov x26 L0xffffffffdd58;
(* ldp	x27, x28, [sp, #64]                         #! EA = L0xffffffffdd60; Value = 0x0000ffffffffe718; PC = 0xaaaaaaab8538 *)
mov x27 L0xffffffffdd60;
mov x28 L0xffffffffdd68;
(* ldp	x29, x30, [sp, #80]                         #! EA = L0xffffffffdd70; Value = 0x0000ffffffffdd80; PC = 0xaaaaaaab853c *)
mov x29 L0xffffffffdd70;
mov x30 L0xffffffffdd78;
(* add	sp, sp, #0x60                               #! PC = 0xaaaaaaab8540 *)
adds dontcare sp sp 0x60@uint64;
(* #! <- SP = 0xffffffffdd80 *)
#! 0xffffffffdd80 = 0xffffffffdd80;
(* #ret                                            #! PC = 0xaaaaaaab8544 *)
#ret                                            #! 0xaaaaaaab8544 = 0xaaaaaaab8544;

(* CUT 2 *)
(* NOTE: summary *)
cut limbs 64 [L0xffffffffdea8, L0xffffffffdeb0, L0xffffffffdeb8,
              L0xffffffffdec0, L0xffffffffdec8, L0xffffffffded0,
              L0xffffffffded8, L0xffffffffdee0, L0xffffffffdee8,
              L0xffffffffdef0, L0xffffffffdef8, L0xffffffffdf00,
              L0xffffffffdf08, L0xffffffffdf10, L0xffffffffdf18,
              L0xffffffffdf20, L0xffffffffdf28, L0xffffffffdf30,
              L0xffffffffdf38, L0xffffffffdf40, L0xffffffffdf48,
              L0xffffffffdf50, L0xffffffffdf58, L0xffffffffdf60] =
    limbs 64 [ar0, ar1, ar2, ar3, ar4, ar5, ar6, ar7, ar8, ar9, ara, arb] *
    limbs 64 [br0, br1, br2, br3, br4, br5, br6, br7, br8, br9, bra, brb]
    prove with [ precondition ]
 && and [limbs 64 [L0xffffffffdea8, L0xffffffffdeb0, L0xffffffffdeb8,
                   L0xffffffffdec0, L0xffffffffdec8, L0xffffffffded0,
                   L0xffffffffded8, L0xffffffffdee0, L0xffffffffdee8,
                   L0xffffffffdef0, L0xffffffffdef8, L0xffffffffdf00,
                   L0xffffffffdf08, L0xffffffffdf10, L0xffffffffdf18,
                   L0xffffffffdf20, L0xffffffffdf28, L0xffffffffdf30,
                   L0xffffffffdf38, L0xffffffffdf40, L0xffffffffdf48,
                   L0xffffffffdf50, L0xffffffffdf58, L0xffffffffdf60] <u
         (2**1504)@1536,
         limbs 64 [ai0, ai1, ai2, ai3, ai4, ai5, ai6, ai7, ai8, ai9, aia, aib] <u
         2@768 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, ma, mb],
         limbs 64 [bi0, bi1, bi2, bi3, bi4, bi5, bi6, bi7, bi8, bi9, bia, bib] <u
         2@768 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, ma, mb]]
    prove with [ precondition ];

(* add	x20, sp, #0x2a8                             #! PC = 0xaaaaaaaae518 *)
adds dontcare x20 sp 0x2a8@uint64;
(* mov	x1, x27                                     #! PC = 0xaaaaaaaae51c *)
mov x1 x27;
(* mov	x0, x26                                     #! PC = 0xaaaaaaaae520 *)
mov x0 x26;
(* mov	x2, x21                                     #! PC = 0xaaaaaaaae524 *)
mov x2 x21;
(* mov	w3, #0xc                   	// #12          #! PC = 0xaaaaaaaae528 *)
#mov	w3, #0xc                   	// #12          #! 0xaaaaaaaae528 = 0xaaaaaaaae528;
(* #bl	0xaaaaaaab7540 <mp_mul>                     #! PC = 0xaaaaaaaae52c *)
#bl	0xaaaaaaab7540 <mp_mul>                     #! 0xaaaaaaaae52c = 0xaaaaaaaae52c;
(* #! -> SP = 0xffffffffdd80 *)
#! 0xffffffffdd80 = 0xffffffffdd80;
(* #b	0xaaaaaaab7a54 <mul751_asm>                  #! PC = 0xaaaaaaab7540 *)
#b	0xaaaaaaab7a54 <mul751_asm>                  #! 0xaaaaaaab7540 = 0xaaaaaaab7540;
(* sub	sp, sp, #0x60                               #! PC = 0xaaaaaaab7a54 *)
subc dontcare sp sp 0x60@uint64;
(* stp	x19, x20, [sp]                              #! EA = L0xffffffffdd20; PC = 0xaaaaaaab7a58 *)
mov L0xffffffffdd20 x19;
mov L0xffffffffdd28 x20;
(* stp	x21, x22, [sp, #16]                         #! EA = L0xffffffffdd30; PC = 0xaaaaaaab7a5c *)
mov L0xffffffffdd30 x21;
mov L0xffffffffdd38 x22;
(* stp	x23, x24, [sp, #32]                         #! EA = L0xffffffffdd40; PC = 0xaaaaaaab7a60 *)
mov L0xffffffffdd40 x23;
mov L0xffffffffdd48 x24;
(* stp	x25, x26, [sp, #48]                         #! EA = L0xffffffffdd50; PC = 0xaaaaaaab7a64 *)
mov L0xffffffffdd50 x25;
mov L0xffffffffdd58 x26;
(* stp	x27, x28, [sp, #64]                         #! EA = L0xffffffffdd60; PC = 0xaaaaaaab7a68 *)
mov L0xffffffffdd60 x27;
mov L0xffffffffdd68 x28;
(* stp	x29, x30, [sp, #80]                         #! EA = L0xffffffffdd70; PC = 0xaaaaaaab7a6c *)
mov L0xffffffffdd70 x29;
mov L0xffffffffdd78 x30;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe658; Value = 0x2878d7990886cec2; PC = 0xaaaaaaab7a70 *)
mov x3 L0xffffffffe658;
mov x4 L0xffffffffe660;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffe668; Value = 0x380b123c24d7560d; PC = 0xaaaaaaab7a74 *)
mov x5 L0xffffffffe668;
mov x6 L0xffffffffe670;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe678; Value = 0xec8523c5895288f7; PC = 0xaaaaaaab7a78 *)
mov x7 L0xffffffffe678;
mov x8 L0xffffffffe680;
(* ldp	x10, x11, [x0, #48]                         #! EA = L0xffffffffe688; Value = 0x37a097402cac705b; PC = 0xaaaaaaab7a7c *)
mov x10 L0xffffffffe688;
mov x11 L0xffffffffe690;
(* ldp	x12, x13, [x0, #64]                         #! EA = L0xffffffffe698; Value = 0x6381753fed20d372; PC = 0xaaaaaaab7a80 *)
mov x12 L0xffffffffe698;
mov x13 L0xffffffffe6a0;
(* ldp	x14, x15, [x0, #80]                         #! EA = L0xffffffffe6a8; Value = 0x03ab967225bcf121; PC = 0xaaaaaaab7a84 *)
mov x14 L0xffffffffe6a8;
mov x15 L0xffffffffe6b0;
(* adds	x3, x3, x10                                #! PC = 0xaaaaaaab7a88 *)
adds carry x3 x3 x10;
(* adcs	x4, x4, x11                                #! PC = 0xaaaaaaab7a8c *)
adcs carry x4 x4 x11 carry;
(* adcs	x5, x5, x12                                #! PC = 0xaaaaaaab7a90 *)
adcs carry x5 x5 x12 carry;
(* adcs	x6, x6, x13                                #! PC = 0xaaaaaaab7a94 *)
adcs carry x6 x6 x13 carry;
(* adcs	x7, x7, x14                                #! PC = 0xaaaaaaab7a98 *)
adcs carry x7 x7 x14 carry;
(* adcs	x8, x8, x15                                #! PC = 0xaaaaaaab7a9c *)
adcs carry x8 x8 x15 carry;
(* adc	x9, xzr, xzr                                #! PC = 0xaaaaaaab7aa0 *)
adc x9 0@uint64 0@uint64 carry;
(* ldp	x10, x11, [x1]                              #! EA = L0xffffffffe718; Value = 0x84c334c0be52428a; PC = 0xaaaaaaab7aa4 *)
mov x10 L0xffffffffe718;
mov x11 L0xffffffffe720;
(* ldp	x12, x13, [x1, #16]                         #! EA = L0xffffffffe728; Value = 0xf4aa8bad0950db07; PC = 0xaaaaaaab7aa8 *)
mov x12 L0xffffffffe728;
mov x13 L0xffffffffe730;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0xffffffffe738; Value = 0xf9d50583c11ff1da; PC = 0xaaaaaaab7aac *)
mov x14 L0xffffffffe738;
mov x15 L0xffffffffe740;
(* ldp	x17, x19, [x1, #48]                         #! EA = L0xffffffffe748; Value = 0x2e4245bb0f83c188; PC = 0xaaaaaaab7ab0 *)
mov x17 L0xffffffffe748;
mov x19 L0xffffffffe750;
(* ldp	x20, x21, [x1, #64]                         #! EA = L0xffffffffe758; Value = 0xc966d5fc452340c1; PC = 0xaaaaaaab7ab4 *)
mov x20 L0xffffffffe758;
mov x21 L0xffffffffe760;
(* ldp	x22, x23, [x1, #80]                         #! EA = L0xffffffffe768; Value = 0x9079f2cf9bcb754d; PC = 0xaaaaaaab7ab8 *)
mov x22 L0xffffffffe768;
mov x23 L0xffffffffe770;
(* adds	x10, x10, x17                              #! PC = 0xaaaaaaab7abc *)
adds carry x10 x10 x17;
(* adcs	x11, x11, x19                              #! PC = 0xaaaaaaab7ac0 *)
adcs carry x11 x11 x19 carry;
(* adcs	x12, x12, x20                              #! PC = 0xaaaaaaab7ac4 *)
adcs carry x12 x12 x20 carry;
(* adcs	x13, x13, x21                              #! PC = 0xaaaaaaab7ac8 *)
adcs carry x13 x13 x21 carry;
(* adcs	x14, x14, x22                              #! PC = 0xaaaaaaab7acc *)
adcs carry x14 x14 x22 carry;
(* adcs	x15, x15, x23                              #! PC = 0xaaaaaaab7ad0 *)
adcs carry x15 x15 x23 carry;
(* adc	x16, xzr, xzr                               #! PC = 0xaaaaaaab7ad4 *)
adc x16 0@uint64 0@uint64 carry;

ghost x9m2@uint64, x16m2@uint64 :
      and [x9m2=x9, x16m2=x16] && and [x9m2=x9, x16m2=x16];

(* neg	x17, x9                                     #! PC = 0xaaaaaaab7ad8 *)
subc dontcare x17 0@uint64 x9;
(* and	x19, x10, x17                               #! PC = 0xaaaaaaab7adc *)
and x19@uint64 x10 x17;
(* and	x20, x11, x17                               #! PC = 0xaaaaaaab7ae0 *)
and x20@uint64 x11 x17;
(* and	x21, x12, x17                               #! PC = 0xaaaaaaab7ae4 *)
and x21@uint64 x12 x17;
(* and	x22, x13, x17                               #! PC = 0xaaaaaaab7ae8 *)
and x22@uint64 x13 x17;
(* and	x23, x14, x17                               #! PC = 0xaaaaaaab7aec *)
and x23@uint64 x14 x17;
(* and	x24, x15, x17                               #! PC = 0xaaaaaaab7af0 *)
and x24@uint64 x15 x17;
(* neg	x17, x16                                    #! PC = 0xaaaaaaab7af4 *)
subc dontcare x17 0@uint64 x16;
(* and	x25, x3, x17                                #! PC = 0xaaaaaaab7af8 *)
and x25@uint64 x3 x17;
(* and	x26, x4, x17                                #! PC = 0xaaaaaaab7afc *)
and x26@uint64 x4 x17;
(* and	x27, x5, x17                                #! PC = 0xaaaaaaab7b00 *)
and x27@uint64 x5 x17;
(* and	x28, x6, x17                                #! PC = 0xaaaaaaab7b04 *)
and x28@uint64 x6 x17;
(* and	x29, x7, x17                                #! PC = 0xaaaaaaab7b08 *)
and x29@uint64 x7 x17;
(* and	x17, x8, x17                                #! PC = 0xaaaaaaab7b0c *)
and x17@uint64 x8 x17;

(* NOTE: mask *)
assert true
    && and [x9m2*(1@64-x9m2) = 0@64, x16m2*(1@64-x16m2) = 0@64,
            limbs 64 [x19, x20, x21, x22, x23, x24] =
            uext  x9m2 320 * limbs 64 [x10, x11, x12, x13, x14, x15],
            limbs 64 [x25, x26, x27, x28, x29, x17] =
            uext x16m2 320 * limbs 64 [ x3,  x4,  x5,  x6,  x7,  x8]];
assume and [x9m2*(1-x9m2) = 0, x16m2*(1-x16m2) = 0,
            limbs 64 [x19, x20, x21, x22, x23, x24] =
             x9m2 * limbs 64 [x10, x11, x12, x13, x14, x15],
            limbs 64 [x25, x26, x27, x28, x29, x17] =
            x16m2 * limbs 64 [ x3,  x4,  x5,  x6,  x7,  x8]] && true;

(* and	x9, x9, x16                                 #! PC = 0xaaaaaaab7b10 *)
and x9@uint64 x9 x16;

(* NOTE: combine carries *)
assert true && x9 = x9m2*x16m2;
assume x9 = x9m2*x16m2 && true;

(* adds	x19, x19, x25                              #! PC = 0xaaaaaaab7b14 *)
adds carry x19 x19 x25;
(* adcs	x20, x20, x26                              #! PC = 0xaaaaaaab7b18 *)
adcs carry x20 x20 x26 carry;
(* adcs	x21, x21, x27                              #! PC = 0xaaaaaaab7b1c *)
adcs carry x21 x21 x27 carry;
(* adcs	x22, x22, x28                              #! PC = 0xaaaaaaab7b20 *)
adcs carry x22 x22 x28 carry;
(* adcs	x23, x23, x29                              #! PC = 0xaaaaaaab7b24 *)
adcs carry x23 x23 x29 carry;
(* adcs	x24, x24, x17                              #! PC = 0xaaaaaaab7b28 *)
adcs carry x24 x24 x17 carry;
(* adc	x9, x9, xzr                                 #! PC = 0xaaaaaaab7b2c *)
adc x9 x9 0@uint64 carry;
(* stp	x19, x20, [x2]                              #! EA = L0xffffffffdf68; PC = 0xaaaaaaab7b30 *)
mov L0xffffffffdf68 x19;
mov L0xffffffffdf70 x20;
(* stp	x21, x22, [x2, #16]                         #! EA = L0xffffffffdf78; PC = 0xaaaaaaab7b34 *)
mov L0xffffffffdf78 x21;
mov L0xffffffffdf80 x22;
(* stp	x23, x24, [x2, #32]                         #! EA = L0xffffffffdf88; PC = 0xaaaaaaab7b38 *)
mov L0xffffffffdf88 x23;
mov L0xffffffffdf90 x24;
(* stp	x3, x4, [x2, #64]                           #! EA = L0xffffffffdfa8; PC = 0xaaaaaaab7b3c *)
mov L0xffffffffdfa8 x3;
mov L0xffffffffdfb0 x4;
(* stp	x5, x6, [x2, #80]                           #! EA = L0xffffffffdfb8; PC = 0xaaaaaaab7b40 *)
mov L0xffffffffdfb8 x5;
mov L0xffffffffdfc0 x6;
(* stp	x7, x8, [x2, #96]                           #! EA = L0xffffffffdfc8; PC = 0xaaaaaaab7b44 *)
mov L0xffffffffdfc8 x7;
mov L0xffffffffdfd0 x8;
(* stp	x14, x15, [x2, #112]                        #! EA = L0xffffffffdfd8; PC = 0xaaaaaaab7b48 *)
mov L0xffffffffdfd8 x14;
mov L0xffffffffdfe0 x15;
(* adds	x23, x3, x6                                #! PC = 0xaaaaaaab7b4c *)
adds carry x23 x3 x6;
(* adcs	x24, x4, x7                                #! PC = 0xaaaaaaab7b50 *)
adcs carry x24 x4 x7 carry;
(* adcs	x25, x5, x8                                #! PC = 0xaaaaaaab7b54 *)
adcs carry x25 x5 x8 carry;
(* adc	x4, xzr, xzr                                #! PC = 0xaaaaaaab7b58 *)
adc x4 0@uint64 0@uint64 carry;
(* adds	x26, x10, x13                              #! PC = 0xaaaaaaab7b5c *)
adds carry x26 x10 x13;
(* adcs	x27, x11, x14                              #! PC = 0xaaaaaaab7b60 *)
adcs carry x27 x11 x14 carry;
(* adcs	x28, x12, x15                              #! PC = 0xaaaaaaab7b64 *)
adcs carry x28 x12 x15 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab7b68 *)
adc x29 0@uint64 0@uint64 carry;

ghost x4m4@uint64, x29m4@uint64 :
      and [x4m4=x4, x29m4=x29] && and [x4m4=x4, x29m4=x29];

(* neg	x30, x4                                     #! PC = 0xaaaaaaab7b6c *)
subc dontcare x30 0@uint64 x4;
(* and	x5, x26, x30                                #! PC = 0xaaaaaaab7b70 *)
and x5@uint64 x26 x30;
(* and	x14, x27, x30                               #! PC = 0xaaaaaaab7b74 *)
and x14@uint64 x27 x30;
(* and	x7, x28, x30                                #! PC = 0xaaaaaaab7b78 *)
and x7@uint64 x28 x30;
(* neg	x30, x29                                    #! PC = 0xaaaaaaab7b7c *)
subc dontcare x30 0@uint64 x29;
(* and	x3, x23, x30                                #! PC = 0xaaaaaaab7b80 *)
and x3@uint64 x23 x30;
(* umulh	x19, x23, x26                             #! PC = 0xaaaaaaab7b84 *)
(* NOTE: merged with mul x3, x23, x26 *)
(* mov x19 Hx23x26; *)
(* and	x21, x24, x30                               #! PC = 0xaaaaaaab7b88 *)
and x21@uint64 x24 x30;
(* and	x22, x25, x30                               #! PC = 0xaaaaaaab7b8c *)
and x22@uint64 x25 x30;

(* NOTE: mask *)
assert true
    && and [x4m4*(1@64-x4m4) = 0@64, x29m4*(1@64-x29m4) = 0@64,
            limbs 64 [ x5, x14,  x7] =
            uext  x4m4 128 * limbs 64 [x26, x27, x28],
            limbs 64 [ x3, x21,  x22] =
            uext x29m4 128 * limbs 64 [x23, x24, x25]];
assume and [x4m4*(1-x4m4) = 0, x29m4*(1-x29m4) = 0,
            limbs 64 [ x5, x14,  x7] =  x4m4 * limbs 64 [x26, x27, x28],
            limbs 64 [ x3, x21,  x22] = x29m4 * limbs 64 [x23, x24, x25]]
    && true;

(* and	x4, x4, x29                                 #! PC = 0xaaaaaaab7b90 *)
and x4@uint64 x4 x29;

(* NOTE: combine carries *)
assert true && x4=x4m4*x29m4;
assume x4=x4m4*x29m4 && true;

(* adds	x5, x5, x3                                 #! PC = 0xaaaaaaab7b94 *)
adds carry x5 x5 x3;
(* adcs	x14, x14, x21                              #! PC = 0xaaaaaaab7b98 *)
adcs carry x14 x14 x21 carry;
(* mul	x3, x23, x26                                #! PC = 0xaaaaaaab7b9c *)
mull x19 x3 x23 x26;
(* mul	x21, x23, x27                               #! PC = 0xaaaaaaab7ba0 *)
mull Hx23x27 x21 x23 x27;
(* adcs	x7, x7, x22                                #! PC = 0xaaaaaaab7ba4 *)
adcs carry x7 x7 x22 carry;
(* umulh	x22, x23, x27                             #! PC = 0xaaaaaaab7ba8 *)
mov x22 Hx23x27;
(* adc	x4, x4, xzr                                 #! PC = 0xaaaaaaab7bac *)
adc x4 x4 0@uint64 carry;
(* mul	x20, x24, x26                               #! PC = 0xaaaaaaab7bb0 *)
mull Hx24x26 x20 x24 x26;
(* umulh	x8, x24, x26                              #! PC = 0xaaaaaaab7bb4 *)
mov x8 Hx24x26;
(* adds	x21, x21, x19                              #! PC = 0xaaaaaaab7bb8 *)
adds carry x21 x21 x19;
(* adc	x22, x22, xzr                               #! PC = 0xaaaaaaab7bbc *)
adc x22 x22 0@uint64 carry;
(* mul	x30, x24, x27                               #! PC = 0xaaaaaaab7bc0 *)
mull Hx24x27 x30 x24 x27;
(* umulh	x19, x24, x27                             #! PC = 0xaaaaaaab7bc4 *)
mov x19 Hx24x27;
(* adds	x21, x21, x20                              #! PC = 0xaaaaaaab7bc8 *)
adds carry x21 x21 x20;
(* adcs	x22, x22, x8                               #! PC = 0xaaaaaaab7bcc *)
adcs carry x22 x22 x8 carry;
(* adc	x19, x19, xzr                               #! PC = 0xaaaaaaab7bd0 *)
adc x19 x19 0@uint64 carry;
(* mul	x20, x23, x28                               #! PC = 0xaaaaaaab7bd4 *)
mull Hx23x28 x20 x23 x28;
(* umulh	x8, x23, x28                              #! PC = 0xaaaaaaab7bd8 *)
mov x8 Hx23x28;
(* adds	x22, x22, x30                              #! PC = 0xaaaaaaab7bdc *)
adds carry x22 x22 x30;
(* adcs	x19, x19, x8                               #! PC = 0xaaaaaaab7be0 *)
adcs carry x19 x19 x8 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab7be4 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x30, x25, x26                               #! PC = 0xaaaaaaab7be8 *)
mull Hx25x26 x30 x25 x26;
(* umulh	x8, x25, x26                              #! PC = 0xaaaaaaab7bec *)
mov x8 Hx25x26;
(* adds	x22, x22, x20                              #! PC = 0xaaaaaaab7bf0 *)
adds carry x22 x22 x20;
(* adcs	x19, x19, x8                               #! PC = 0xaaaaaaab7bf4 *)
adcs carry x19 x19 x8 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab7bf8 *)
adc x29 x29 0@uint64 carry;
(* mul	x20, x24, x28                               #! PC = 0xaaaaaaab7bfc *)
mull Hx24x28 x20 x24 x28;
(* umulh	x8, x24, x28                              #! PC = 0xaaaaaaab7c00 *)
mov x8 Hx24x28;
(* adds	x22, x22, x30                              #! PC = 0xaaaaaaab7c04 *)
adds carry x22 x22 x30;
(* adcs	x19, x19, x20                              #! PC = 0xaaaaaaab7c08 *)
adcs carry x19 x19 x20 carry;
(* adcs	x29, x29, x8                               #! PC = 0xaaaaaaab7c0c *)
adcs carry x29 x29 x8 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab7c10 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x20, x25, x27                               #! PC = 0xaaaaaaab7c14 *)
mull Hx25x27 x20 x25 x27;
(* umulh	x8, x25, x27                              #! PC = 0xaaaaaaab7c18 *)
mov x8 Hx25x27;
(* adds	x19, x19, x20                              #! PC = 0xaaaaaaab7c1c *)
adds carry x19 x19 x20;
(* adcs	x29, x29, x8                               #! PC = 0xaaaaaaab7c20 *)
adcs carry x29 x29 x8 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab7c24 *)
adc x30 x30 0@uint64 carry;
(* mul	x20, x25, x28                               #! PC = 0xaaaaaaab7c28 *)
mull Hx25x28 x20 x25 x28;
(* umulh	x8, x25, x28                              #! PC = 0xaaaaaaab7c2c *)
mov x8 Hx25x28;
(* adds	x20, x20, x29                              #! PC = 0xaaaaaaab7c30 *)
adds carry x20 x20 x29;
(* adc	x8, x8, x30                                 #! PC = 0xaaaaaaab7c34 *)
adc x8 x8 x30 carry;
(* adds	x5, x5, x19                                #! PC = 0xaaaaaaab7c38 *)
adds carry x5 x5 x19;
(* adcs	x14, x14, x20                              #! PC = 0xaaaaaaab7c3c *)
adcs carry x14 x14 x20 carry;
(* adcs	x7, x7, x8                                 #! PC = 0xaaaaaaab7c40 *)
adcs carry x7 x7 x8 carry;
(* adc	x4, x4, xzr                                 #! PC = 0xaaaaaaab7c44 *)
adc x4 x4 0@uint64 carry;
(* stp	x3, x4, [x2, #128]                          #! EA = L0xffffffffdfe8; PC = 0xaaaaaaab7c48 *)
mov L0xffffffffdfe8 x3;
mov L0xffffffffdff0 x4;
(* ldp	x3, x4, [x2, #64]                           #! EA = L0xffffffffdfa8; Value = 0x60196ed935333f1d; PC = 0xaaaaaaab7c4c *)
mov x3 L0xffffffffdfa8;
mov x4 L0xffffffffdfb0;
(* str	x5, [x2, #144]                              #! EA = L0xffffffffdff8; PC = 0xaaaaaaab7c50 *)
mov L0xffffffffdff8 x5;
(* ldr	x5, [x2, #80]                               #! EA = L0xffffffffdfb8; Value = 0x9b8c877c11f82980; PC = 0xaaaaaaab7c54 *)
mov x5 L0xffffffffdfb8;
(* mul	x16, x3, x10                                #! PC = 0xaaaaaaab7c58 *)
mull Hx3x10 x16 x3 x10;
(* mul	x17, x3, x11                                #! PC = 0xaaaaaaab7c5c *)
mull Hx3x11 x17 x3 x11;
(* umulh	x19, x3, x11                              #! PC = 0xaaaaaaab7c60 *)
mov x19 Hx3x11;
(* umulh	x20, x3, x10                              #! PC = 0xaaaaaaab7c64 *)
mov x20 Hx3x10;
(* mul	x8, x4, x10                                 #! PC = 0xaaaaaaab7c68 *)
mull Hx4x10 x8 x4 x10;
(* umulh	x15, x4, x10                              #! PC = 0xaaaaaaab7c6c *)
mov x15 Hx4x10;
(* adds	x17, x17, x20                              #! PC = 0xaaaaaaab7c70 *)
adds carry x17 x17 x20;
(* adc	x19, x19, xzr                               #! PC = 0xaaaaaaab7c74 *)
adc x19 x19 0@uint64 carry;
(* mul	x30, x4, x11                                #! PC = 0xaaaaaaab7c78 *)
mull Hx4x11 x30 x4 x11;
(* umulh	x20, x4, x11                              #! PC = 0xaaaaaaab7c7c *)
mov x20 Hx4x11;
(* adds	x17, x17, x8                               #! PC = 0xaaaaaaab7c80 *)
adds carry x17 x17 x8;
(* adcs	x19, x19, x15                              #! PC = 0xaaaaaaab7c84 *)
adcs carry x19 x19 x15 carry;
(* adc	x20, x20, xzr                               #! PC = 0xaaaaaaab7c88 *)
adc x20 x20 0@uint64 carry;
(* mul	x8, x3, x12                                 #! PC = 0xaaaaaaab7c8c *)
mull Hx3x12 x8 x3 x12;
(* umulh	x15, x3, x12                              #! PC = 0xaaaaaaab7c90 *)
mov x15 Hx3x12;
(* adds	x19, x19, x30                              #! PC = 0xaaaaaaab7c94 *)
adds carry x19 x19 x30;
(* adcs	x20, x20, x15                              #! PC = 0xaaaaaaab7c98 *)
adcs carry x20 x20 x15 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab7c9c *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x30, x5, x10                                #! PC = 0xaaaaaaab7ca0 *)
mull Hx5x10 x30 x5 x10;
(* umulh	x15, x5, x10                              #! PC = 0xaaaaaaab7ca4 *)
mov x15 Hx5x10;
(* adds	x19, x19, x8                               #! PC = 0xaaaaaaab7ca8 *)
adds carry x19 x19 x8;
(* adcs	x20, x20, x15                              #! PC = 0xaaaaaaab7cac *)
adcs carry x20 x20 x15 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab7cb0 *)
adc x29 x29 0@uint64 carry;
(* mul	x8, x4, x12                                 #! PC = 0xaaaaaaab7cb4 *)
mull Hx4x12 x8 x4 x12;
(* umulh	x15, x4, x12                              #! PC = 0xaaaaaaab7cb8 *)
mov x15 Hx4x12;
(* adds	x19, x19, x30                              #! PC = 0xaaaaaaab7cbc *)
adds carry x19 x19 x30;
(* adcs	x20, x20, x8                               #! PC = 0xaaaaaaab7cc0 *)
adcs carry x20 x20 x8 carry;
(* adcs	x29, x29, x15                              #! PC = 0xaaaaaaab7cc4 *)
adcs carry x29 x29 x15 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab7cc8 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x8, x5, x11                                 #! PC = 0xaaaaaaab7ccc *)
mull Hx5x11 x8 x5 x11;
(* umulh	x15, x5, x11                              #! PC = 0xaaaaaaab7cd0 *)
mov x15 Hx5x11;
(* adds	x20, x20, x8                               #! PC = 0xaaaaaaab7cd4 *)
adds carry x20 x20 x8;
(* adcs	x29, x29, x15                              #! PC = 0xaaaaaaab7cd8 *)
adcs carry x29 x29 x15 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab7cdc *)
adc x30 x30 0@uint64 carry;
(* mul	x8, x5, x12                                 #! PC = 0xaaaaaaab7ce0 *)
mull Hx5x12 x8 x5 x12;
(* umulh	x15, x5, x12                              #! PC = 0xaaaaaaab7ce4 *)
mov x15 Hx5x12;
(* adds	x8, x8, x29                                #! PC = 0xaaaaaaab7ce8 *)
adds carry x8 x8 x29;
(* adc	x15, x15, x30                               #! PC = 0xaaaaaaab7cec *)
adc x15 x15 x30 carry;
(* ldp	x3, x4, [x2, #128]                          #! EA = L0xffffffffdfe8; Value = 0x750201e5ae92800c; PC = 0xaaaaaaab7cf0 *)
mov x3 L0xffffffffdfe8;
mov x4 L0xffffffffdff0;
(* ldr	x5, [x2, #144]                              #! EA = L0xffffffffdff8; Value = 0x2ae0ad201b56eac1; PC = 0xaaaaaaab7cf4 *)
mov x5 L0xffffffffdff8;
(* mul	x23, x6, x13                                #! PC = 0xaaaaaaab7cf8 *)
mull Hx6x13 x23 x6 x13;
(* umulh	x26, x6, x13                              #! PC = 0xaaaaaaab7cfc *)
mov x26 Hx6x13;
(* subs	x3, x3, x16                                #! PC = 0xaaaaaaab7d00 *)
subc carry x3 x3 x16;
(* sbcs	x21, x21, x17                              #! PC = 0xaaaaaaab7d04 *)
sbcs carry x21 x21 x17 carry;
(* sbcs	x22, x22, x19                              #! PC = 0xaaaaaaab7d08 *)
sbcs carry x22 x22 x19 carry;
(* sbcs	x5, x5, x20                                #! PC = 0xaaaaaaab7d0c *)
sbcs carry x5 x5 x20 carry;
(* sbcs	x14, x14, x8                               #! PC = 0xaaaaaaab7d10 *)
sbcs carry x14 x14 x8 carry;
(* sbcs	x7, x7, x15                                #! PC = 0xaaaaaaab7d14 *)
sbcs carry x7 x7 x15 carry;
(* sbc	x4, x4, xzr                                 #! PC = 0xaaaaaaab7d18 *)
sbcs docare x4 x4 0@uint64 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* stp	x14, x15, [x2, #144]                        #! EA = L0xffffffffdff8; PC = 0xaaaaaaab7d1c *)
mov L0xffffffffdff8 x14;
mov L0xffffffffe000 x15;
(* ldp	x14, x15, [x2, #112]                        #! EA = L0xffffffffdfd8; Value = 0x8a4ef8535ceb6727; PC = 0xaaaaaaab7d20 *)
mov x14 L0xffffffffdfd8;
mov x15 L0xffffffffdfe0;
(* stp	x7, x8, [x2, #128]                          #! EA = L0xffffffffdfe8; PC = 0xaaaaaaab7d24 *)
mov L0xffffffffdfe8 x7;
mov L0xffffffffdff0 x8;
(* ldp	x7, x8, [x2, #96]                           #! EA = L0xffffffffdfc8; Value = 0xf030ba37af0f7a18; PC = 0xaaaaaaab7d28 *)
mov x7 L0xffffffffdfc8;
mov x8 L0xffffffffdfd0;
(* mul	x24, x6, x14                                #! PC = 0xaaaaaaab7d2c *)
mull Hx6x14 x24 x6 x14;
(* umulh	x25, x6, x14                              #! PC = 0xaaaaaaab7d30 *)
mov x25 Hx6x14;
(* mul	x27, x7, x13                                #! PC = 0xaaaaaaab7d34 *)
mull Hx7x13 x27 x7 x13;
(* umulh	x28, x7, x13                              #! PC = 0xaaaaaaab7d38 *)
mov x28 Hx7x13;
(* adds	x24, x24, x26                              #! PC = 0xaaaaaaab7d3c *)
adds carry x24 x24 x26;
(* adc	x25, x25, xzr                               #! PC = 0xaaaaaaab7d40 *)
adc x25 x25 0@uint64 carry;
(* mul	x30, x7, x14                                #! PC = 0xaaaaaaab7d44 *)
mull Hx7x14 x30 x7 x14;
(* umulh	x26, x7, x14                              #! PC = 0xaaaaaaab7d48 *)
mov x26 Hx7x14;
(* adds	x24, x24, x27                              #! PC = 0xaaaaaaab7d4c *)
adds carry x24 x24 x27;
(* adcs	x25, x25, x28                              #! PC = 0xaaaaaaab7d50 *)
adcs carry x25 x25 x28 carry;
(* adc	x26, x26, xzr                               #! PC = 0xaaaaaaab7d54 *)
adc x26 x26 0@uint64 carry;
(* mul	x27, x6, x15                                #! PC = 0xaaaaaaab7d58 *)
mull Hx6x15 x27 x6 x15;
(* umulh	x28, x6, x15                              #! PC = 0xaaaaaaab7d5c *)
mov x28 Hx6x15;
(* adds	x25, x25, x30                              #! PC = 0xaaaaaaab7d60 *)
adds carry x25 x25 x30;
(* adcs	x26, x26, x28                              #! PC = 0xaaaaaaab7d64 *)
adcs carry x26 x26 x28 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab7d68 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x30, x8, x13                                #! PC = 0xaaaaaaab7d6c *)
mull Hx8x13 x30 x8 x13;
(* umulh	x28, x8, x13                              #! PC = 0xaaaaaaab7d70 *)
mov x28 Hx8x13;
(* adds	x25, x25, x27                              #! PC = 0xaaaaaaab7d74 *)
adds carry x25 x25 x27;
(* adcs	x26, x26, x28                              #! PC = 0xaaaaaaab7d78 *)
adcs carry x26 x26 x28 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab7d7c *)
adc x29 x29 0@uint64 carry;
(* mul	x27, x7, x15                                #! PC = 0xaaaaaaab7d80 *)
mull Hx7x15 x27 x7 x15;
(* umulh	x28, x7, x15                              #! PC = 0xaaaaaaab7d84 *)
mov x28 Hx7x15;
(* adds	x25, x25, x30                              #! PC = 0xaaaaaaab7d88 *)
adds carry x25 x25 x30;
(* adcs	x26, x26, x27                              #! PC = 0xaaaaaaab7d8c *)
adcs carry x26 x26 x27 carry;
(* adcs	x29, x29, x28                              #! PC = 0xaaaaaaab7d90 *)
adcs carry x29 x29 x28 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab7d94 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x27, x8, x14                                #! PC = 0xaaaaaaab7d98 *)
mull Hx8x14 x27 x8 x14;
(* umulh	x28, x8, x14                              #! PC = 0xaaaaaaab7d9c *)
mov x28 Hx8x14;
(* adds	x26, x26, x27                              #! PC = 0xaaaaaaab7da0 *)
adds carry x26 x26 x27;
(* adcs	x29, x29, x28                              #! PC = 0xaaaaaaab7da4 *)
adcs carry x29 x29 x28 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab7da8 *)
adc x30 x30 0@uint64 carry;
(* mul	x27, x8, x15                                #! PC = 0xaaaaaaab7dac *)
mull Hx8x15 x27 x8 x15;
(* umulh	x28, x8, x15                              #! PC = 0xaaaaaaab7db0 *)
mov x28 Hx8x15;
(* adds	x27, x27, x29                              #! PC = 0xaaaaaaab7db4 *)
adds carry x27 x27 x29;
(* adc	x28, x28, x30                               #! PC = 0xaaaaaaab7db8 *)
adc x28 x28 x30 carry;
(* ldp	x7, x8, [x2, #128]                          #! EA = L0xffffffffdfe8; Value = 0x7d1f0f8c492ef690; PC = 0xaaaaaaab7dbc *)
mov x7 L0xffffffffdfe8;
mov x8 L0xffffffffdff0;
(* ldp	x14, x15, [x2, #144]                        #! EA = L0xffffffffdff8; Value = 0xa46a4dd30ced41b6; PC = 0xaaaaaaab7dc0 *)
mov x14 L0xffffffffdff8;
mov x15 L0xffffffffe000;
(* subs	x3, x3, x23                                #! PC = 0xaaaaaaab7dc4 *)
subc carry x3 x3 x23;
(* sbcs	x21, x21, x24                              #! PC = 0xaaaaaaab7dc8 *)
sbcs carry x21 x21 x24 carry;
(* sbcs	x22, x22, x25                              #! PC = 0xaaaaaaab7dcc *)
sbcs carry x22 x22 x25 carry;
(* sbcs	x5, x5, x26                                #! PC = 0xaaaaaaab7dd0 *)
sbcs carry x5 x5 x26 carry;
(* sbcs	x14, x14, x27                              #! PC = 0xaaaaaaab7dd4 *)
sbcs carry x14 x14 x27 carry;
(* sbcs	x7, x7, x28                                #! PC = 0xaaaaaaab7dd8 *)
sbcs carry x7 x7 x28 carry;
(* sbc	x4, x4, xzr                                 #! PC = 0xaaaaaaab7ddc *)
sbcs docare x4 x4 0@uint64 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* adds	x20, x3, x20                               #! PC = 0xaaaaaaab7de0 *)
adds carry x20 x3 x20;
(* adcs	x21, x21, x8                               #! PC = 0xaaaaaaab7de4 *)
adcs carry x21 x21 x8 carry;
(* adcs	x22, x22, x15                              #! PC = 0xaaaaaaab7de8 *)
adcs carry x22 x22 x15 carry;
(* adcs	x23, x23, x5                               #! PC = 0xaaaaaaab7dec *)
adcs carry x23 x23 x5 carry;
(* adcs	x24, x24, x14                              #! PC = 0xaaaaaaab7df0 *)
adcs carry x24 x24 x14 carry;
(* adcs	x25, x25, x7                               #! PC = 0xaaaaaaab7df4 *)
adcs carry x25 x25 x7 carry;
(* adcs	x26, x26, x4                               #! PC = 0xaaaaaaab7df8 *)
adcs carry x26 x26 x4 carry;
(* adcs	x27, x27, xzr                              #! PC = 0xaaaaaaab7dfc *)
adcs carry x27 x27 0@uint64 carry;
(* adc	x28, x28, xzr                               #! PC = 0xaaaaaaab7e00 *)
adcs docare x28 x28 0@uint64 carry;

(* TODO: cannot carry *)
(* assert true && docare = 0@1; *)
assume docare = 0 && true;

(* ldp	x3, x4, [x2]                                #! EA = L0xffffffffdf68; Value = 0x0000000000000000; PC = 0xaaaaaaab7e04 *)
mov x3 L0xffffffffdf68;
mov x4 L0xffffffffdf70;
(* ldp	x5, x6, [x2, #16]                           #! EA = L0xffffffffdf78; Value = 0x0000000000000000; PC = 0xaaaaaaab7e08 *)
mov x5 L0xffffffffdf78;
mov x6 L0xffffffffdf80;
(* ldp	x7, x8, [x2, #32]                           #! EA = L0xffffffffdf88; Value = 0x0000000000000000; PC = 0xaaaaaaab7e0c *)
mov x7 L0xffffffffdf88;
mov x8 L0xffffffffdf90;
(* adds	x23, x23, x3                               #! PC = 0xaaaaaaab7e10 *)
adds carry x23 x23 x3;
(* adcs	x24, x24, x4                               #! PC = 0xaaaaaaab7e14 *)
adcs carry x24 x24 x4 carry;
(* adcs	x25, x25, x5                               #! PC = 0xaaaaaaab7e18 *)
adcs carry x25 x25 x5 carry;
(* adcs	x26, x26, x6                               #! PC = 0xaaaaaaab7e1c *)
adcs carry x26 x26 x6 carry;
(* adcs	x27, x27, x7                               #! PC = 0xaaaaaaab7e20 *)
adcs carry x27 x27 x7 carry;
(* adcs	x28, x28, x8                               #! PC = 0xaaaaaaab7e24 *)
adcs carry x28 x28 x8 carry;
(* adc	x9, x9, xzr                                 #! PC = 0xaaaaaaab7e28 *)
adc x9 x9 0@uint64 carry;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe658; Value = 0x2878d7990886cec2; PC = 0xaaaaaaab7e2c *)
mov x3 L0xffffffffe658;
mov x4 L0xffffffffe660;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffe668; Value = 0x380b123c24d7560d; PC = 0xaaaaaaab7e30 *)
mov x5 L0xffffffffe668;
mov x6 L0xffffffffe670;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe678; Value = 0xec8523c5895288f7; PC = 0xaaaaaaab7e34 *)
mov x7 L0xffffffffe678;
mov x8 L0xffffffffe680;
(* ldp	x10, x11, [x1]                              #! EA = L0xffffffffe718; Value = 0x84c334c0be52428a; PC = 0xaaaaaaab7e38 *)
mov x10 L0xffffffffe718;
mov x11 L0xffffffffe720;
(* ldp	x12, x13, [x1, #16]                         #! EA = L0xffffffffe728; Value = 0xf4aa8bad0950db07; PC = 0xaaaaaaab7e3c *)
mov x12 L0xffffffffe728;
mov x13 L0xffffffffe730;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0xffffffffe738; Value = 0xf9d50583c11ff1da; PC = 0xaaaaaaab7e40 *)
mov x14 L0xffffffffe738;
mov x15 L0xffffffffe740;
(* stp	x16, x17, [x2]                              #! EA = L0xffffffffdf68; PC = 0xaaaaaaab7e44 *)
mov L0xffffffffdf68 x16;
mov L0xffffffffdf70 x17;
(* stp	x19, x20, [x2, #16]                         #! EA = L0xffffffffdf78; PC = 0xaaaaaaab7e48 *)
mov L0xffffffffdf78 x19;
mov L0xffffffffdf80 x20;
(* stp	x21, x22, [x2, #32]                         #! EA = L0xffffffffdf88; PC = 0xaaaaaaab7e4c *)
mov L0xffffffffdf88 x21;
mov L0xffffffffdf90 x22;
(* stp	x23, x24, [x2, #48]                         #! EA = L0xffffffffdf98; PC = 0xaaaaaaab7e50 *)
mov L0xffffffffdf98 x23;
mov L0xffffffffdfa0 x24;
(* stp	x25, x26, [x2, #64]                         #! EA = L0xffffffffdfa8; PC = 0xaaaaaaab7e54 *)
mov L0xffffffffdfa8 x25;
mov L0xffffffffdfb0 x26;
(* stp	x27, x28, [x2, #80]                         #! EA = L0xffffffffdfb8; PC = 0xaaaaaaab7e58 *)
mov L0xffffffffdfb8 x27;
mov L0xffffffffdfc0 x28;
(* adds	x23, x3, x6                                #! PC = 0xaaaaaaab7e5c *)
adds carry x23 x3 x6;
(* adcs	x24, x4, x7                                #! PC = 0xaaaaaaab7e60 *)
adcs carry x24 x4 x7 carry;
(* adcs	x25, x5, x8                                #! PC = 0xaaaaaaab7e64 *)
adcs carry x25 x5 x8 carry;
(* adc	x4, xzr, xzr                                #! PC = 0xaaaaaaab7e68 *)
adc x4 0@uint64 0@uint64 carry;
(* adds	x26, x10, x13                              #! PC = 0xaaaaaaab7e6c *)
adds carry x26 x10 x13;
(* adcs	x27, x11, x14                              #! PC = 0xaaaaaaab7e70 *)
adcs carry x27 x11 x14 carry;
(* adcs	x28, x12, x15                              #! PC = 0xaaaaaaab7e74 *)
adcs carry x28 x12 x15 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab7e78 *)
adc x29 0@uint64 0@uint64 carry;

ghost x4m5@uint64, x29m5@uint64 :
      and [x4m5=x4, x29m5=x29] && and [x4m5=x4, x29m5=x29];

(* neg	x30, x4                                     #! PC = 0xaaaaaaab7e7c *)
subc dontcare x30 0@uint64 x4;
(* and	x5, x26, x30                                #! PC = 0xaaaaaaab7e80 *)
and x5@uint64 x26 x30;
(* and	x14, x27, x30                               #! PC = 0xaaaaaaab7e84 *)
and x14@uint64 x27 x30;
(* and	x7, x28, x30                                #! PC = 0xaaaaaaab7e88 *)
and x7@uint64 x28 x30;
(* neg	x30, x29                                    #! PC = 0xaaaaaaab7e8c *)
subc dontcare x30 0@uint64 x29;
(* and	x3, x23, x30                                #! PC = 0xaaaaaaab7e90 *)
and x3@uint64 x23 x30;
(* umulh	x19, x23, x26                             #! PC = 0xaaaaaaab7e94 *)
(* NOTE: merged with mul x3, x23, x26 *)
(* mov x19 Hx23x26; *)
(* and	x21, x24, x30                               #! PC = 0xaaaaaaab7e98 *)
and x21@uint64 x24 x30;
(* and	x22, x25, x30                               #! PC = 0xaaaaaaab7e9c *)
and x22@uint64 x25 x30;

(* NOTE: mask *)
assert true
    && and [x4m5*(1@64-x4m5)=0@64, x29m5*(1@64-x29m5)=0@64,
            limbs 64 [ x5, x14,  x7] =
            uext  x4m5 128 * limbs 64 [x26, x27, x28],
            limbs 64 [ x3, x21, x22] =
            uext x29m5 128 * limbs 64 [x23, x24, x25]];
assume and [x4m5*(1-x4m5)=0, x29m5*(1-x29m5)=0,
            limbs 64 [ x5, x14,  x7] =   x4m5 * limbs 64 [x26, x27, x28],
            limbs 64 [ x3, x21, x22] =  x29m5 * limbs 64 [x23, x24, x25]]
    && true;

(* and	x4, x4, x29                                 #! PC = 0xaaaaaaab7ea0 *)
and x4@uint64 x4 x29;

(* NOTE: combined carries *)
assert true && x4=x4m5*x29m5;
assume x4=x4m5*x29m5 && true;

(* adds	x5, x5, x3                                 #! PC = 0xaaaaaaab7ea4 *)
adds carry x5 x5 x3;
(* adcs	x14, x14, x21                              #! PC = 0xaaaaaaab7ea8 *)
adcs carry x14 x14 x21 carry;
(* mul	x3, x23, x26                                #! PC = 0xaaaaaaab7eac *)
mull x19 x3 x23 x26;
(* mul	x21, x23, x27                               #! PC = 0xaaaaaaab7eb0 *)
mull Hx23x27 x21 x23 x27;
(* adcs	x7, x7, x22                                #! PC = 0xaaaaaaab7eb4 *)
adcs carry x7 x7 x22 carry;
(* umulh	x22, x23, x27                             #! PC = 0xaaaaaaab7eb8 *)
mov x22 Hx23x27;
(* adc	x4, x4, xzr                                 #! PC = 0xaaaaaaab7ebc *)
adc x4 x4 0@uint64 carry;
(* mul	x20, x24, x26                               #! PC = 0xaaaaaaab7ec0 *)
mull Hx24x26 x20 x24 x26;
(* umulh	x8, x24, x26                              #! PC = 0xaaaaaaab7ec4 *)
mov x8 Hx24x26;
(* adds	x21, x21, x19                              #! PC = 0xaaaaaaab7ec8 *)
adds carry x21 x21 x19;
(* adc	x22, x22, xzr                               #! PC = 0xaaaaaaab7ecc *)
adc x22 x22 0@uint64 carry;
(* mul	x30, x24, x27                               #! PC = 0xaaaaaaab7ed0 *)
mull Hx24x27 x30 x24 x27;
(* umulh	x19, x24, x27                             #! PC = 0xaaaaaaab7ed4 *)
mov x19 Hx24x27;
(* adds	x21, x21, x20                              #! PC = 0xaaaaaaab7ed8 *)
adds carry x21 x21 x20;
(* adcs	x22, x22, x8                               #! PC = 0xaaaaaaab7edc *)
adcs carry x22 x22 x8 carry;
(* adc	x19, x19, xzr                               #! PC = 0xaaaaaaab7ee0 *)
adc x19 x19 0@uint64 carry;
(* mul	x20, x23, x28                               #! PC = 0xaaaaaaab7ee4 *)
mull Hx23x28 x20 x23 x28;
(* umulh	x8, x23, x28                              #! PC = 0xaaaaaaab7ee8 *)
mov x8 Hx23x28;
(* adds	x22, x22, x30                              #! PC = 0xaaaaaaab7eec *)
adds carry x22 x22 x30;
(* adcs	x19, x19, x8                               #! PC = 0xaaaaaaab7ef0 *)
adcs carry x19 x19 x8 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab7ef4 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x30, x25, x26                               #! PC = 0xaaaaaaab7ef8 *)
mull Hx25x26 x30 x25 x26;
(* umulh	x8, x25, x26                              #! PC = 0xaaaaaaab7efc *)
mov x8 Hx25x26;
(* adds	x22, x22, x20                              #! PC = 0xaaaaaaab7f00 *)
adds carry x22 x22 x20;
(* adcs	x19, x19, x8                               #! PC = 0xaaaaaaab7f04 *)
adcs carry x19 x19 x8 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab7f08 *)
adc x29 x29 0@uint64 carry;
(* mul	x20, x24, x28                               #! PC = 0xaaaaaaab7f0c *)
mull Hx24x28 x20 x24 x28;
(* umulh	x8, x24, x28                              #! PC = 0xaaaaaaab7f10 *)
mov x8 Hx24x28;
(* adds	x22, x22, x30                              #! PC = 0xaaaaaaab7f14 *)
adds carry x22 x22 x30;
(* adcs	x19, x19, x20                              #! PC = 0xaaaaaaab7f18 *)
adcs carry x19 x19 x20 carry;
(* adcs	x29, x29, x8                               #! PC = 0xaaaaaaab7f1c *)
adcs carry x29 x29 x8 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab7f20 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x20, x25, x27                               #! PC = 0xaaaaaaab7f24 *)
mull Hx25x27 x20 x25 x27;
(* umulh	x8, x25, x27                              #! PC = 0xaaaaaaab7f28 *)
mov x8 Hx25x27;
(* adds	x19, x19, x20                              #! PC = 0xaaaaaaab7f2c *)
adds carry x19 x19 x20;
(* adcs	x29, x29, x8                               #! PC = 0xaaaaaaab7f30 *)
adcs carry x29 x29 x8 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab7f34 *)
adc x30 x30 0@uint64 carry;
(* mul	x20, x25, x28                               #! PC = 0xaaaaaaab7f38 *)
mull Hx25x28 x20 x25 x28;
(* umulh	x8, x25, x28                              #! PC = 0xaaaaaaab7f3c *)
mov x8 Hx25x28;
(* adds	x20, x20, x29                              #! PC = 0xaaaaaaab7f40 *)
adds carry x20 x20 x29;
(* adc	x8, x8, x30                                 #! PC = 0xaaaaaaab7f44 *)
adc x8 x8 x30 carry;
(* adds	x5, x5, x19                                #! PC = 0xaaaaaaab7f48 *)
adds carry x5 x5 x19;
(* adcs	x14, x14, x20                              #! PC = 0xaaaaaaab7f4c *)
adcs carry x14 x14 x20 carry;
(* adcs	x7, x7, x8                                 #! PC = 0xaaaaaaab7f50 *)
adcs carry x7 x7 x8 carry;
(* adc	x4, x4, xzr                                 #! PC = 0xaaaaaaab7f54 *)
adc x4 x4 0@uint64 carry;
(* stp	x3, x4, [x2, #160]                          #! EA = L0xffffffffe008; PC = 0xaaaaaaab7f58 *)
mov L0xffffffffe008 x3;
mov L0xffffffffe010 x4;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe658; Value = 0x2878d7990886cec2; PC = 0xaaaaaaab7f5c *)
mov x3 L0xffffffffe658;
mov x4 L0xffffffffe660;
(* str	x5, [x2, #176]                              #! EA = L0xffffffffe018; PC = 0xaaaaaaab7f60 *)
mov L0xffffffffe018 x5;
(* ldr	x5, [x0, #16]                               #! EA = L0xffffffffe668; Value = 0x380b123c24d7560d; PC = 0xaaaaaaab7f64 *)
mov x5 L0xffffffffe668;
(* mul	x16, x3, x10                                #! PC = 0xaaaaaaab7f68 *)
mull Hx3x10 x16 x3 x10;
(* mul	x17, x3, x11                                #! PC = 0xaaaaaaab7f6c *)
mull Hx3x11 x17 x3 x11;
(* umulh	x19, x3, x11                              #! PC = 0xaaaaaaab7f70 *)
mov x19 Hx3x11;
(* umulh	x20, x3, x10                              #! PC = 0xaaaaaaab7f74 *)
mov x20 Hx3x10;
(* mul	x8, x4, x10                                 #! PC = 0xaaaaaaab7f78 *)
mull Hx4x10 x8 x4 x10;
(* umulh	x15, x4, x10                              #! PC = 0xaaaaaaab7f7c *)
mov x15 Hx4x10;
(* adds	x17, x17, x20                              #! PC = 0xaaaaaaab7f80 *)
adds carry x17 x17 x20;
(* adc	x19, x19, xzr                               #! PC = 0xaaaaaaab7f84 *)
adc x19 x19 0@uint64 carry;
(* mul	x30, x4, x11                                #! PC = 0xaaaaaaab7f88 *)
mull Hx4x11 x30 x4 x11;
(* umulh	x20, x4, x11                              #! PC = 0xaaaaaaab7f8c *)
mov x20 Hx4x11;
(* adds	x17, x17, x8                               #! PC = 0xaaaaaaab7f90 *)
adds carry x17 x17 x8;
(* adcs	x19, x19, x15                              #! PC = 0xaaaaaaab7f94 *)
adcs carry x19 x19 x15 carry;
(* adc	x20, x20, xzr                               #! PC = 0xaaaaaaab7f98 *)
adc x20 x20 0@uint64 carry;
(* mul	x8, x3, x12                                 #! PC = 0xaaaaaaab7f9c *)
mull Hx3x12 x8 x3 x12;
(* umulh	x15, x3, x12                              #! PC = 0xaaaaaaab7fa0 *)
mov x15 Hx3x12;
(* adds	x19, x19, x30                              #! PC = 0xaaaaaaab7fa4 *)
adds carry x19 x19 x30;
(* adcs	x20, x20, x15                              #! PC = 0xaaaaaaab7fa8 *)
adcs carry x20 x20 x15 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab7fac *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x30, x5, x10                                #! PC = 0xaaaaaaab7fb0 *)
mull Hx5x10 x30 x5 x10;
(* umulh	x15, x5, x10                              #! PC = 0xaaaaaaab7fb4 *)
mov x15 Hx5x10;
(* adds	x19, x19, x8                               #! PC = 0xaaaaaaab7fb8 *)
adds carry x19 x19 x8;
(* adcs	x20, x20, x15                              #! PC = 0xaaaaaaab7fbc *)
adcs carry x20 x20 x15 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab7fc0 *)
adc x29 x29 0@uint64 carry;
(* mul	x8, x4, x12                                 #! PC = 0xaaaaaaab7fc4 *)
mull Hx4x12 x8 x4 x12;
(* umulh	x15, x4, x12                              #! PC = 0xaaaaaaab7fc8 *)
mov x15 Hx4x12;
(* adds	x19, x19, x30                              #! PC = 0xaaaaaaab7fcc *)
adds carry x19 x19 x30;
(* adcs	x20, x20, x8                               #! PC = 0xaaaaaaab7fd0 *)
adcs carry x20 x20 x8 carry;
(* adcs	x29, x29, x15                              #! PC = 0xaaaaaaab7fd4 *)
adcs carry x29 x29 x15 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab7fd8 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x8, x5, x11                                 #! PC = 0xaaaaaaab7fdc *)
mull Hx5x11 x8 x5 x11;
(* umulh	x15, x5, x11                              #! PC = 0xaaaaaaab7fe0 *)
mov x15 Hx5x11;
(* adds	x20, x20, x8                               #! PC = 0xaaaaaaab7fe4 *)
adds carry x20 x20 x8;
(* adcs	x29, x29, x15                              #! PC = 0xaaaaaaab7fe8 *)
adcs carry x29 x29 x15 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab7fec *)
adc x30 x30 0@uint64 carry;
(* mul	x8, x5, x12                                 #! PC = 0xaaaaaaab7ff0 *)
mull Hx5x12 x8 x5 x12;
(* umulh	x15, x5, x12                              #! PC = 0xaaaaaaab7ff4 *)
mov x15 Hx5x12;
(* adds	x8, x8, x29                                #! PC = 0xaaaaaaab7ff8 *)
adds carry x8 x8 x29;
(* adc	x15, x15, x30                               #! PC = 0xaaaaaaab7ffc *)
adc x15 x15 x30 carry;
(* ldp	x3, x4, [x2, #160]                          #! EA = L0xffffffffe008; Value = 0x42399b0a57b4ff91; PC = 0xaaaaaaab8000 *)
mov x3 L0xffffffffe008;
mov x4 L0xffffffffe010;
(* ldr	x5, [x2, #176]                              #! EA = L0xffffffffe018; Value = 0x59202316fab65a68; PC = 0xaaaaaaab8004 *)
mov x5 L0xffffffffe018;
(* mul	x23, x6, x13                                #! PC = 0xaaaaaaab8008 *)
mull Hx6x13 x23 x6 x13;
(* umulh	x26, x6, x13                              #! PC = 0xaaaaaaab800c *)
mov x26 Hx6x13;
(* subs	x3, x3, x16                                #! PC = 0xaaaaaaab8010 *)
subc carry x3 x3 x16;
(* sbcs	x21, x21, x17                              #! PC = 0xaaaaaaab8014 *)
sbcs carry x21 x21 x17 carry;
(* sbcs	x22, x22, x19                              #! PC = 0xaaaaaaab8018 *)
sbcs carry x22 x22 x19 carry;
(* sbcs	x5, x5, x20                                #! PC = 0xaaaaaaab801c *)
sbcs carry x5 x5 x20 carry;
(* sbcs	x14, x14, x8                               #! PC = 0xaaaaaaab8020 *)
sbcs carry x14 x14 x8 carry;
(* sbcs	x7, x7, x15                                #! PC = 0xaaaaaaab8024 *)
sbcs carry x7 x7 x15 carry;
(* sbc	x4, x4, xzr                                 #! PC = 0xaaaaaaab8028 *)
sbcs docare x4 x4 0@uint64 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* stp	x14, x15, [x2, #176]                        #! EA = L0xffffffffe018; PC = 0xaaaaaaab802c *)
mov L0xffffffffe018 x14;
mov L0xffffffffe020 x15;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0xffffffffe738; Value = 0xf9d50583c11ff1da; PC = 0xaaaaaaab8030 *)
mov x14 L0xffffffffe738;
mov x15 L0xffffffffe740;
(* stp	x7, x8, [x2, #160]                          #! EA = L0xffffffffe008; PC = 0xaaaaaaab8034 *)
mov L0xffffffffe008 x7;
mov L0xffffffffe010 x8;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe678; Value = 0xec8523c5895288f7; PC = 0xaaaaaaab8038 *)
mov x7 L0xffffffffe678;
mov x8 L0xffffffffe680;
(* mul	x24, x6, x14                                #! PC = 0xaaaaaaab803c *)
mull Hx6x14 x24 x6 x14;
(* umulh	x25, x6, x14                              #! PC = 0xaaaaaaab8040 *)
mov x25 Hx6x14;
(* mul	x27, x7, x13                                #! PC = 0xaaaaaaab8044 *)
mull Hx7x13 x27 x7 x13;
(* umulh	x28, x7, x13                              #! PC = 0xaaaaaaab8048 *)
mov x28 Hx7x13;
(* adds	x24, x24, x26                              #! PC = 0xaaaaaaab804c *)
adds carry x24 x24 x26;
(* adc	x25, x25, xzr                               #! PC = 0xaaaaaaab8050 *)
adc x25 x25 0@uint64 carry;
(* mul	x30, x7, x14                                #! PC = 0xaaaaaaab8054 *)
mull Hx7x14 x30 x7 x14;
(* umulh	x26, x7, x14                              #! PC = 0xaaaaaaab8058 *)
mov x26 Hx7x14;
(* adds	x24, x24, x27                              #! PC = 0xaaaaaaab805c *)
adds carry x24 x24 x27;
(* adcs	x25, x25, x28                              #! PC = 0xaaaaaaab8060 *)
adcs carry x25 x25 x28 carry;
(* adc	x26, x26, xzr                               #! PC = 0xaaaaaaab8064 *)
adc x26 x26 0@uint64 carry;
(* mul	x27, x6, x15                                #! PC = 0xaaaaaaab8068 *)
mull Hx6x15 x27 x6 x15;
(* umulh	x28, x6, x15                              #! PC = 0xaaaaaaab806c *)
mov x28 Hx6x15;
(* adds	x25, x25, x30                              #! PC = 0xaaaaaaab8070 *)
adds carry x25 x25 x30;
(* adcs	x26, x26, x28                              #! PC = 0xaaaaaaab8074 *)
adcs carry x26 x26 x28 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab8078 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x30, x8, x13                                #! PC = 0xaaaaaaab807c *)
mull Hx8x13 x30 x8 x13;
(* umulh	x28, x8, x13                              #! PC = 0xaaaaaaab8080 *)
mov x28 Hx8x13;
(* adds	x25, x25, x27                              #! PC = 0xaaaaaaab8084 *)
adds carry x25 x25 x27;
(* adcs	x26, x26, x28                              #! PC = 0xaaaaaaab8088 *)
adcs carry x26 x26 x28 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab808c *)
adc x29 x29 0@uint64 carry;
(* mul	x27, x7, x15                                #! PC = 0xaaaaaaab8090 *)
mull Hx7x15 x27 x7 x15;
(* umulh	x28, x7, x15                              #! PC = 0xaaaaaaab8094 *)
mov x28 Hx7x15;
(* adds	x25, x25, x30                              #! PC = 0xaaaaaaab8098 *)
adds carry x25 x25 x30;
(* adcs	x26, x26, x27                              #! PC = 0xaaaaaaab809c *)
adcs carry x26 x26 x27 carry;
(* adcs	x29, x29, x28                              #! PC = 0xaaaaaaab80a0 *)
adcs carry x29 x29 x28 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab80a4 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x27, x8, x14                                #! PC = 0xaaaaaaab80a8 *)
mull Hx8x14 x27 x8 x14;
(* umulh	x28, x8, x14                              #! PC = 0xaaaaaaab80ac *)
mov x28 Hx8x14;
(* adds	x26, x26, x27                              #! PC = 0xaaaaaaab80b0 *)
adds carry x26 x26 x27;
(* adcs	x29, x29, x28                              #! PC = 0xaaaaaaab80b4 *)
adcs carry x29 x29 x28 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab80b8 *)
adc x30 x30 0@uint64 carry;
(* mul	x27, x8, x15                                #! PC = 0xaaaaaaab80bc *)
mull Hx8x15 x27 x8 x15;
(* umulh	x28, x8, x15                              #! PC = 0xaaaaaaab80c0 *)
mov x28 Hx8x15;
(* adds	x27, x27, x29                              #! PC = 0xaaaaaaab80c4 *)
adds carry x27 x27 x29;
(* adc	x28, x28, x30                               #! PC = 0xaaaaaaab80c8 *)
adc x28 x28 x30 carry;
(* ldp	x7, x8, [x2, #160]                          #! EA = L0xffffffffe008; Value = 0x625d3623f6594211; PC = 0xaaaaaaab80cc *)
mov x7 L0xffffffffe008;
mov x8 L0xffffffffe010;
(* ldp	x14, x15, [x2, #176]                        #! EA = L0xffffffffe018; Value = 0x6d847b63d8f5720d; PC = 0xaaaaaaab80d0 *)
mov x14 L0xffffffffe018;
mov x15 L0xffffffffe020;
(* subs	x3, x3, x23                                #! PC = 0xaaaaaaab80d4 *)
subc carry x3 x3 x23;
(* sbcs	x21, x21, x24                              #! PC = 0xaaaaaaab80d8 *)
sbcs carry x21 x21 x24 carry;
(* sbcs	x22, x22, x25                              #! PC = 0xaaaaaaab80dc *)
sbcs carry x22 x22 x25 carry;
(* sbcs	x5, x5, x26                                #! PC = 0xaaaaaaab80e0 *)
sbcs carry x5 x5 x26 carry;
(* sbcs	x14, x14, x27                              #! PC = 0xaaaaaaab80e4 *)
sbcs carry x14 x14 x27 carry;
(* sbcs	x7, x7, x28                                #! PC = 0xaaaaaaab80e8 *)
sbcs carry x7 x7 x28 carry;
(* sbc	x4, x4, xzr                                 #! PC = 0xaaaaaaab80ec *)
sbcs docare x4 x4 0@uint64 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* adds	x20, x3, x20                               #! PC = 0xaaaaaaab80f0 *)
adds carry x20 x3 x20;
(* adcs	x21, x21, x8                               #! PC = 0xaaaaaaab80f4 *)
adcs carry x21 x21 x8 carry;
(* adcs	x22, x22, x15                              #! PC = 0xaaaaaaab80f8 *)
adcs carry x22 x22 x15 carry;
(* adcs	x23, x23, x5                               #! PC = 0xaaaaaaab80fc *)
adcs carry x23 x23 x5 carry;
(* adcs	x24, x24, x14                              #! PC = 0xaaaaaaab8100 *)
adcs carry x24 x24 x14 carry;
(* adcs	x25, x25, x7                               #! PC = 0xaaaaaaab8104 *)
adcs carry x25 x25 x7 carry;
(* adcs	x26, x26, x4                               #! PC = 0xaaaaaaab8108 *)
adcs carry x26 x26 x4 carry;
(* adcs	x27, x27, xzr                              #! PC = 0xaaaaaaab810c *)
adcs carry x27 x27 0@uint64 carry;
(* adc	x28, x28, xzr                               #! PC = 0xaaaaaaab8110 *)
adcs docare x28 x28 0@uint64 carry;

(* TODO: cannot carry *)
(* assert true && docare = 0@1; *)
assume docare = 0 && true;

(* ldp	x3, x4, [x2]                                #! EA = L0xffffffffdf68; Value = 0x3ef5d76a85d4e40a; PC = 0xaaaaaaab8114 *)
mov x3 L0xffffffffdf68;
mov x4 L0xffffffffdf70;
(* ldp	x5, x6, [x2, #16]                           #! EA = L0xffffffffdf78; Value = 0x8aa023ce8146d5e2; PC = 0xaaaaaaab8118 *)
mov x5 L0xffffffffdf78;
mov x6 L0xffffffffdf80;
(* ldp	x7, x8, [x2, #32]                           #! EA = L0xffffffffdf88; Value = 0xd35133c629d33977; PC = 0xaaaaaaab811c *)
mov x7 L0xffffffffdf88;
mov x8 L0xffffffffdf90;
(* ldp	x10, x11, [x2, #48]                         #! EA = L0xffffffffdf98; Value = 0x4343afc5a33e11b9; PC = 0xaaaaaaab8120 *)
mov x10 L0xffffffffdf98;
mov x11 L0xffffffffdfa0;
(* ldp	x12, x13, [x2, #64]                         #! EA = L0xffffffffdfa8; Value = 0x9dd4c53f37dc2889; PC = 0xaaaaaaab8124 *)
mov x12 L0xffffffffdfa8;
mov x13 L0xffffffffdfb0;
(* ldp	x14, x15, [x2, #80]                         #! EA = L0xffffffffdfb8; Value = 0x76135b5f7162efee; PC = 0xaaaaaaab8128 *)
mov x14 L0xffffffffdfb8;
mov x15 L0xffffffffdfc0;
(* subs	x3, x3, x16                                #! PC = 0xaaaaaaab812c *)
subc carry x3 x3 x16;
(* sbcs	x4, x4, x17                                #! PC = 0xaaaaaaab8130 *)
sbcs carry x4 x4 x17 carry;
(* sbcs	x5, x5, x19                                #! PC = 0xaaaaaaab8134 *)
sbcs carry x5 x5 x19 carry;
(* sbcs	x6, x6, x20                                #! PC = 0xaaaaaaab8138 *)
sbcs carry x6 x6 x20 carry;
(* sbcs	x7, x7, x21                                #! PC = 0xaaaaaaab813c *)
sbcs carry x7 x7 x21 carry;
(* sbcs	x8, x8, x22                                #! PC = 0xaaaaaaab8140 *)
sbcs carry x8 x8 x22 carry;
(* sbcs	x10, x10, x23                              #! PC = 0xaaaaaaab8144 *)
sbcs carry x10 x10 x23 carry;
(* sbcs	x11, x11, x24                              #! PC = 0xaaaaaaab8148 *)
sbcs carry x11 x11 x24 carry;
(* sbcs	x12, x12, x25                              #! PC = 0xaaaaaaab814c *)
sbcs carry x12 x12 x25 carry;
(* sbcs	x13, x13, x26                              #! PC = 0xaaaaaaab8150 *)
sbcs carry x13 x13 x26 carry;
(* sbcs	x14, x14, x27                              #! PC = 0xaaaaaaab8154 *)
sbcs carry x14 x14 x27 carry;
(* sbcs	x15, x15, x28                              #! PC = 0xaaaaaaab8158 *)
sbcs carry x15 x15 x28 carry;
(* sbc	x9, x9, xzr                                 #! PC = 0xaaaaaaab815c *)
sbcs docare x9 x9 0@uint64 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* stp	x16, x17, [x2]                              #! EA = L0xffffffffdf68; PC = 0xaaaaaaab8160 *)
mov L0xffffffffdf68 x16;
mov L0xffffffffdf70 x17;
(* stp	x19, x20, [x2, #16]                         #! EA = L0xffffffffdf78; PC = 0xaaaaaaab8164 *)
mov L0xffffffffdf78 x19;
mov L0xffffffffdf80 x20;
(* stp	x21, x22, [x2, #32]                         #! EA = L0xffffffffdf88; PC = 0xaaaaaaab8168 *)
mov L0xffffffffdf88 x21;
mov L0xffffffffdf90 x22;
(* adds	x3, x3, x23                                #! PC = 0xaaaaaaab816c *)
adds carry x3 x3 x23;
(* adcs	x4, x4, x24                                #! PC = 0xaaaaaaab8170 *)
adcs carry x4 x4 x24 carry;
(* adcs	x5, x5, x25                                #! PC = 0xaaaaaaab8174 *)
adcs carry x5 x5 x25 carry;
(* adcs	x6, x6, x26                                #! PC = 0xaaaaaaab8178 *)
adcs carry x6 x6 x26 carry;
(* adcs	x7, x7, x27                                #! PC = 0xaaaaaaab817c *)
adcs carry x7 x7 x27 carry;
(* adcs	x8, x8, x28                                #! PC = 0xaaaaaaab8180 *)
adcs carry x8 x8 x28 carry;
(* stp	x3, x4, [x2, #48]                           #! EA = L0xffffffffdf98; PC = 0xaaaaaaab8184 *)
mov L0xffffffffdf98 x3;
mov L0xffffffffdfa0 x4;
(* adc	x3, xzr, xzr                                #! PC = 0xaaaaaaab8188 *)
adc x3 0@uint64 0@uint64 carry;

(* NOTE: store carry *)
ghost storecarry2@bit : storecarry2=carry && storecarry2=carry;

(* stp	x5, x6, [x2, #64]                           #! EA = L0xffffffffdfa8; PC = 0xaaaaaaab818c *)
mov L0xffffffffdfa8 x5;
mov L0xffffffffdfb0 x6;
(* stp	x7, x8, [x2, #80]                           #! EA = L0xffffffffdfb8; PC = 0xaaaaaaab8190 *)
mov L0xffffffffdfb8 x7;
mov L0xffffffffdfc0 x8;
(* stp	x10, x11, [x2, #96]                         #! EA = L0xffffffffdfc8; PC = 0xaaaaaaab8194 *)
mov L0xffffffffdfc8 x10;
mov L0xffffffffdfd0 x11;
(* stp	x12, x13, [x2, #112]                        #! EA = L0xffffffffdfd8; PC = 0xaaaaaaab8198 *)
mov L0xffffffffdfd8 x12;
mov L0xffffffffdfe0 x13;
(* stp	x14, x15, [x2, #128]                        #! EA = L0xffffffffdfe8; PC = 0xaaaaaaab819c *)
mov L0xffffffffdfe8 x14;
mov L0xffffffffdff0 x15;
(* neg	x3, x3                                      #! PC = 0xaaaaaaab81a0 *)
subc dontcare x3 0@uint64 x3;
(* str	x3, [x2, #144]                              #! EA = L0xffffffffdff8; PC = 0xaaaaaaab81a4 *)
mov L0xffffffffdff8 x3;
(* ldp	x3, x4, [x0, #48]                           #! EA = L0xffffffffe688; Value = 0x37a097402cac705b; PC = 0xaaaaaaab81a8 *)
mov x3 L0xffffffffe688;
mov x4 L0xffffffffe690;
(* ldp	x5, x6, [x0, #64]                           #! EA = L0xffffffffe698; Value = 0x6381753fed20d372; PC = 0xaaaaaaab81ac *)
mov x5 L0xffffffffe698;
mov x6 L0xffffffffe6a0;
(* ldp	x7, x8, [x0, #80]                           #! EA = L0xffffffffe6a8; Value = 0x03ab967225bcf121; PC = 0xaaaaaaab81b0 *)
mov x7 L0xffffffffe6a8;
mov x8 L0xffffffffe6b0;
(* ldp	x10, x11, [x1, #48]                         #! EA = L0xffffffffe748; Value = 0x2e4245bb0f83c188; PC = 0xaaaaaaab81b4 *)
mov x10 L0xffffffffe748;
mov x11 L0xffffffffe750;
(* ldp	x12, x13, [x1, #64]                         #! EA = L0xffffffffe758; Value = 0xc966d5fc452340c1; PC = 0xaaaaaaab81b8 *)
mov x12 L0xffffffffe758;
mov x13 L0xffffffffe760;
(* ldp	x14, x15, [x1, #80]                         #! EA = L0xffffffffe768; Value = 0x9079f2cf9bcb754d; PC = 0xaaaaaaab81bc *)
mov x14 L0xffffffffe768;
mov x15 L0xffffffffe770;
(* add	x0, x0, #0x30                               #! PC = 0xaaaaaaab81c0 *)
adds dontcare x0 x0 0x30@uint64;
(* add	x1, x1, #0x30                               #! PC = 0xaaaaaaab81c4 *)
adds dontcare x1 x1 0x30@uint64;
(* adds	x23, x3, x6                                #! PC = 0xaaaaaaab81c8 *)
adds carry x23 x3 x6;
(* adcs	x24, x4, x7                                #! PC = 0xaaaaaaab81cc *)
adcs carry x24 x4 x7 carry;
(* adcs	x25, x5, x8                                #! PC = 0xaaaaaaab81d0 *)
adcs carry x25 x5 x8 carry;
(* adc	x4, xzr, xzr                                #! PC = 0xaaaaaaab81d4 *)
adc x4 0@uint64 0@uint64 carry;
(* adds	x26, x10, x13                              #! PC = 0xaaaaaaab81d8 *)
adds carry x26 x10 x13;
(* adcs	x27, x11, x14                              #! PC = 0xaaaaaaab81dc *)
adcs carry x27 x11 x14 carry;
(* adcs	x28, x12, x15                              #! PC = 0xaaaaaaab81e0 *)
adcs carry x28 x12 x15 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab81e4 *)
adc x29 0@uint64 0@uint64 carry;

ghost x4m6@uint64, x29m6@uint64 :
      and [x4m6=x4, x29m6=x29] && and [x4m6=x4, x29m6=x29];

(* neg	x30, x4                                     #! PC = 0xaaaaaaab81e8 *)
subc dontcare x30 0@uint64 x4;
(* and	x5, x26, x30                                #! PC = 0xaaaaaaab81ec *)
and x5@uint64 x26 x30;
(* and	x14, x27, x30                               #! PC = 0xaaaaaaab81f0 *)
and x14@uint64 x27 x30;
(* and	x7, x28, x30                                #! PC = 0xaaaaaaab81f4 *)
and x7@uint64 x28 x30;
(* neg	x30, x29                                    #! PC = 0xaaaaaaab81f8 *)
subc dontcare x30 0@uint64 x29;
(* and	x3, x23, x30                                #! PC = 0xaaaaaaab81fc *)
and x3@uint64 x23 x30;
(* umulh	x19, x23, x26                             #! PC = 0xaaaaaaab8200 *)
(* NOTE: merged with mul x3, x23, x26 *)
(* mov x19 Hx23x26; *)
(* and	x21, x24, x30                               #! PC = 0xaaaaaaab8204 *)
and x21@uint64 x24 x30;
(* and	x22, x25, x30                               #! PC = 0xaaaaaaab8208 *)
and x22@uint64 x25 x30;

(* NOTE: mask *)
assert true
    && and [x4m6*(1@64-x4m6)=0@64, x29m6*(1@64-x29m6)=0@64,
            limbs 64 [ x5, x14,  x7] =
            uext  x4m6 128 * limbs 64 [x26, x27, x28],
            limbs 64 [ x3, x21, x22] =
            uext x29m6 128 * limbs 64 [x23, x24, x25]];
assume and [x4m6*(1-x4m6)=0, x29m6*(1-x29m6)=0,
            limbs 64 [ x5, x14,  x7] =  x4m6 * limbs 64 [x26, x27, x28],
            limbs 64 [ x3, x21, x22] = x29m6 * limbs 64 [x23, x24, x25]]
    && true;

(* and	x4, x4, x29                                 #! PC = 0xaaaaaaab820c *)
and x4@uint64 x4 x29;

(* NOTE: combined carries *)
assert true && x4=x4m6*x29m6;
assume x4=x4m6*x29m6 && true;

(* adds	x5, x5, x3                                 #! PC = 0xaaaaaaab8210 *)
adds carry x5 x5 x3;
(* adcs	x14, x14, x21                              #! PC = 0xaaaaaaab8214 *)
adcs carry x14 x14 x21 carry;
(* mul	x3, x23, x26                                #! PC = 0xaaaaaaab8218 *)
mull x19 x3 x23 x26;
(* mul	x21, x23, x27                               #! PC = 0xaaaaaaab821c *)
mull Hx23x27 x21 x23 x27;
(* adcs	x7, x7, x22                                #! PC = 0xaaaaaaab8220 *)
adcs carry x7 x7 x22 carry;
(* umulh	x22, x23, x27                             #! PC = 0xaaaaaaab8224 *)
mov x22 Hx23x27;
(* adc	x4, x4, xzr                                 #! PC = 0xaaaaaaab8228 *)
adc x4 x4 0@uint64 carry;
(* mul	x20, x24, x26                               #! PC = 0xaaaaaaab822c *)
mull Hx24x26 x20 x24 x26;
(* umulh	x8, x24, x26                              #! PC = 0xaaaaaaab8230 *)
mov x8 Hx24x26;
(* adds	x21, x21, x19                              #! PC = 0xaaaaaaab8234 *)
adds carry x21 x21 x19;
(* adc	x22, x22, xzr                               #! PC = 0xaaaaaaab8238 *)
adc x22 x22 0@uint64 carry;
(* mul	x30, x24, x27                               #! PC = 0xaaaaaaab823c *)
mull Hx24x27 x30 x24 x27;
(* umulh	x19, x24, x27                             #! PC = 0xaaaaaaab8240 *)
mov x19 Hx24x27;
(* adds	x21, x21, x20                              #! PC = 0xaaaaaaab8244 *)
adds carry x21 x21 x20;
(* adcs	x22, x22, x8                               #! PC = 0xaaaaaaab8248 *)
adcs carry x22 x22 x8 carry;
(* adc	x19, x19, xzr                               #! PC = 0xaaaaaaab824c *)
adc x19 x19 0@uint64 carry;
(* mul	x20, x23, x28                               #! PC = 0xaaaaaaab8250 *)
mull Hx23x28 x20 x23 x28;
(* umulh	x8, x23, x28                              #! PC = 0xaaaaaaab8254 *)
mov x8 Hx23x28;
(* adds	x22, x22, x30                              #! PC = 0xaaaaaaab8258 *)
adds carry x22 x22 x30;
(* adcs	x19, x19, x8                               #! PC = 0xaaaaaaab825c *)
adcs carry x19 x19 x8 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab8260 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x30, x25, x26                               #! PC = 0xaaaaaaab8264 *)
mull Hx25x26 x30 x25 x26;
(* umulh	x8, x25, x26                              #! PC = 0xaaaaaaab8268 *)
mov x8 Hx25x26;
(* adds	x22, x22, x20                              #! PC = 0xaaaaaaab826c *)
adds carry x22 x22 x20;
(* adcs	x19, x19, x8                               #! PC = 0xaaaaaaab8270 *)
adcs carry x19 x19 x8 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8274 *)
adc x29 x29 0@uint64 carry;
(* mul	x20, x24, x28                               #! PC = 0xaaaaaaab8278 *)
mull Hx24x28 x20 x24 x28;
(* umulh	x8, x24, x28                              #! PC = 0xaaaaaaab827c *)
mov x8 Hx24x28;
(* adds	x22, x22, x30                              #! PC = 0xaaaaaaab8280 *)
adds carry x22 x22 x30;
(* adcs	x19, x19, x20                              #! PC = 0xaaaaaaab8284 *)
adcs carry x19 x19 x20 carry;
(* adcs	x29, x29, x8                               #! PC = 0xaaaaaaab8288 *)
adcs carry x29 x29 x8 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab828c *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x20, x25, x27                               #! PC = 0xaaaaaaab8290 *)
mull Hx25x27 x20 x25 x27;
(* umulh	x8, x25, x27                              #! PC = 0xaaaaaaab8294 *)
mov x8 Hx25x27;
(* adds	x19, x19, x20                              #! PC = 0xaaaaaaab8298 *)
adds carry x19 x19 x20;
(* adcs	x29, x29, x8                               #! PC = 0xaaaaaaab829c *)
adcs carry x29 x29 x8 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab82a0 *)
adc x30 x30 0@uint64 carry;
(* mul	x20, x25, x28                               #! PC = 0xaaaaaaab82a4 *)
mull Hx25x28 x20 x25 x28;
(* umulh	x8, x25, x28                              #! PC = 0xaaaaaaab82a8 *)
mov x8 Hx25x28;
(* adds	x20, x20, x29                              #! PC = 0xaaaaaaab82ac *)
adds carry x20 x20 x29;
(* adc	x8, x8, x30                                 #! PC = 0xaaaaaaab82b0 *)
adc x8 x8 x30 carry;
(* adds	x5, x5, x19                                #! PC = 0xaaaaaaab82b4 *)
adds carry x5 x5 x19;
(* adcs	x14, x14, x20                              #! PC = 0xaaaaaaab82b8 *)
adcs carry x14 x14 x20 carry;
(* adcs	x7, x7, x8                                 #! PC = 0xaaaaaaab82bc *)
adcs carry x7 x7 x8 carry;
(* adc	x4, x4, xzr                                 #! PC = 0xaaaaaaab82c0 *)
adc x4 x4 0@uint64 carry;
(* stp	x3, x4, [x2, #160]                          #! EA = L0xffffffffe008; PC = 0xaaaaaaab82c4 *)
mov L0xffffffffe008 x3;
mov L0xffffffffe010 x4;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe688; Value = 0x37a097402cac705b; PC = 0xaaaaaaab82c8 *)
mov x3 L0xffffffffe688;
mov x4 L0xffffffffe690;
(* str	x5, [x2, #176]                              #! EA = L0xffffffffe018; PC = 0xaaaaaaab82cc *)
mov L0xffffffffe018 x5;
(* ldr	x5, [x0, #16]                               #! EA = L0xffffffffe698; Value = 0x6381753fed20d372; PC = 0xaaaaaaab82d0 *)
mov x5 L0xffffffffe698;
(* mul	x16, x3, x10                                #! PC = 0xaaaaaaab82d4 *)
mull Hx3x10 x16 x3 x10;
(* mul	x17, x3, x11                                #! PC = 0xaaaaaaab82d8 *)
mull Hx3x11 x17 x3 x11;
(* umulh	x19, x3, x11                              #! PC = 0xaaaaaaab82dc *)
mov x19 Hx3x11;
(* umulh	x20, x3, x10                              #! PC = 0xaaaaaaab82e0 *)
mov x20 Hx3x10;
(* mul	x8, x4, x10                                 #! PC = 0xaaaaaaab82e4 *)
mull Hx4x10 x8 x4 x10;
(* umulh	x15, x4, x10                              #! PC = 0xaaaaaaab82e8 *)
mov x15 Hx4x10;
(* adds	x17, x17, x20                              #! PC = 0xaaaaaaab82ec *)
adds carry x17 x17 x20;
(* adc	x19, x19, xzr                               #! PC = 0xaaaaaaab82f0 *)
adc x19 x19 0@uint64 carry;
(* mul	x30, x4, x11                                #! PC = 0xaaaaaaab82f4 *)
mull Hx4x11 x30 x4 x11;
(* umulh	x20, x4, x11                              #! PC = 0xaaaaaaab82f8 *)
mov x20 Hx4x11;
(* adds	x17, x17, x8                               #! PC = 0xaaaaaaab82fc *)
adds carry x17 x17 x8;
(* adcs	x19, x19, x15                              #! PC = 0xaaaaaaab8300 *)
adcs carry x19 x19 x15 carry;
(* adc	x20, x20, xzr                               #! PC = 0xaaaaaaab8304 *)
adc x20 x20 0@uint64 carry;
(* mul	x8, x3, x12                                 #! PC = 0xaaaaaaab8308 *)
mull Hx3x12 x8 x3 x12;
(* umulh	x15, x3, x12                              #! PC = 0xaaaaaaab830c *)
mov x15 Hx3x12;
(* adds	x19, x19, x30                              #! PC = 0xaaaaaaab8310 *)
adds carry x19 x19 x30;
(* adcs	x20, x20, x15                              #! PC = 0xaaaaaaab8314 *)
adcs carry x20 x20 x15 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab8318 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x30, x5, x10                                #! PC = 0xaaaaaaab831c *)
mull Hx5x10 x30 x5 x10;
(* umulh	x15, x5, x10                              #! PC = 0xaaaaaaab8320 *)
mov x15 Hx5x10;
(* adds	x19, x19, x8                               #! PC = 0xaaaaaaab8324 *)
adds carry x19 x19 x8;
(* adcs	x20, x20, x15                              #! PC = 0xaaaaaaab8328 *)
adcs carry x20 x20 x15 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab832c *)
adc x29 x29 0@uint64 carry;
(* mul	x8, x4, x12                                 #! PC = 0xaaaaaaab8330 *)
mull Hx4x12 x8 x4 x12;
(* umulh	x15, x4, x12                              #! PC = 0xaaaaaaab8334 *)
mov x15 Hx4x12;
(* adds	x19, x19, x30                              #! PC = 0xaaaaaaab8338 *)
adds carry x19 x19 x30;
(* adcs	x20, x20, x8                               #! PC = 0xaaaaaaab833c *)
adcs carry x20 x20 x8 carry;
(* adcs	x29, x29, x15                              #! PC = 0xaaaaaaab8340 *)
adcs carry x29 x29 x15 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab8344 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x8, x5, x11                                 #! PC = 0xaaaaaaab8348 *)
mull Hx5x11 x8 x5 x11;
(* umulh	x15, x5, x11                              #! PC = 0xaaaaaaab834c *)
mov x15 Hx5x11;
(* adds	x20, x20, x8                               #! PC = 0xaaaaaaab8350 *)
adds carry x20 x20 x8;
(* adcs	x29, x29, x15                              #! PC = 0xaaaaaaab8354 *)
adcs carry x29 x29 x15 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab8358 *)
adc x30 x30 0@uint64 carry;
(* mul	x8, x5, x12                                 #! PC = 0xaaaaaaab835c *)
mull Hx5x12 x8 x5 x12;
(* umulh	x15, x5, x12                              #! PC = 0xaaaaaaab8360 *)
mov x15 Hx5x12;
(* adds	x8, x8, x29                                #! PC = 0xaaaaaaab8364 *)
adds carry x8 x8 x29;
(* adc	x15, x15, x30                               #! PC = 0xaaaaaaab8368 *)
adc x15 x15 x30 carry;
(* ldp	x3, x4, [x2, #160]                          #! EA = L0xffffffffe008; Value = 0x2b3fb6860ac0cfc4; PC = 0xaaaaaaab836c *)
mov x3 L0xffffffffe008;
mov x4 L0xffffffffe010;
(* ldr	x5, [x2, #176]                              #! EA = L0xffffffffe018; Value = 0xdf969edc1fd6264f; PC = 0xaaaaaaab8370 *)
mov x5 L0xffffffffe018;
(* mul	x23, x6, x13                                #! PC = 0xaaaaaaab8374 *)
mull Hx6x13 x23 x6 x13;
(* umulh	x26, x6, x13                              #! PC = 0xaaaaaaab8378 *)
mov x26 Hx6x13;
(* subs	x3, x3, x16                                #! PC = 0xaaaaaaab837c *)
subc carry x3 x3 x16;
(* sbcs	x21, x21, x17                              #! PC = 0xaaaaaaab8380 *)
sbcs carry x21 x21 x17 carry;
(* sbcs	x22, x22, x19                              #! PC = 0xaaaaaaab8384 *)
sbcs carry x22 x22 x19 carry;
(* sbcs	x5, x5, x20                                #! PC = 0xaaaaaaab8388 *)
sbcs carry x5 x5 x20 carry;
(* sbcs	x14, x14, x8                               #! PC = 0xaaaaaaab838c *)
sbcs carry x14 x14 x8 carry;
(* sbcs	x7, x7, x15                                #! PC = 0xaaaaaaab8390 *)
sbcs carry x7 x7 x15 carry;
(* sbc	x4, x4, xzr                                 #! PC = 0xaaaaaaab8394 *)
sbcs docare x4 x4 0@uint64 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* stp	x14, x15, [x2, #176]                        #! EA = L0xffffffffe018; PC = 0xaaaaaaab8398 *)
mov L0xffffffffe018 x14;
mov L0xffffffffe020 x15;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0xffffffffe768; Value = 0x9079f2cf9bcb754d; PC = 0xaaaaaaab839c *)
mov x14 L0xffffffffe768;
mov x15 L0xffffffffe770;
(* stp	x7, x8, [x2, #160]                          #! EA = L0xffffffffe008; PC = 0xaaaaaaab83a0 *)
mov L0xffffffffe008 x7;
mov L0xffffffffe010 x8;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe6a8; Value = 0x03ab967225bcf121; PC = 0xaaaaaaab83a4 *)
mov x7 L0xffffffffe6a8;
mov x8 L0xffffffffe6b0;
(* mul	x24, x6, x14                                #! PC = 0xaaaaaaab83a8 *)
mull Hx6x14 x24 x6 x14;
(* umulh	x25, x6, x14                              #! PC = 0xaaaaaaab83ac *)
mov x25 Hx6x14;
(* mul	x27, x7, x13                                #! PC = 0xaaaaaaab83b0 *)
mull Hx7x13 x27 x7 x13;
(* umulh	x28, x7, x13                              #! PC = 0xaaaaaaab83b4 *)
mov x28 Hx7x13;
(* adds	x24, x24, x26                              #! PC = 0xaaaaaaab83b8 *)
adds carry x24 x24 x26;
(* adc	x25, x25, xzr                               #! PC = 0xaaaaaaab83bc *)
adc x25 x25 0@uint64 carry;
(* mul	x30, x7, x14                                #! PC = 0xaaaaaaab83c0 *)
mull Hx7x14 x30 x7 x14;
(* umulh	x26, x7, x14                              #! PC = 0xaaaaaaab83c4 *)
mov x26 Hx7x14;
(* adds	x24, x24, x27                              #! PC = 0xaaaaaaab83c8 *)
adds carry x24 x24 x27;
(* adcs	x25, x25, x28                              #! PC = 0xaaaaaaab83cc *)
adcs carry x25 x25 x28 carry;
(* adc	x26, x26, xzr                               #! PC = 0xaaaaaaab83d0 *)
adc x26 x26 0@uint64 carry;
(* mul	x27, x6, x15                                #! PC = 0xaaaaaaab83d4 *)
mull Hx6x15 x27 x6 x15;
(* umulh	x28, x6, x15                              #! PC = 0xaaaaaaab83d8 *)
mov x28 Hx6x15;
(* adds	x25, x25, x30                              #! PC = 0xaaaaaaab83dc *)
adds carry x25 x25 x30;
(* adcs	x26, x26, x28                              #! PC = 0xaaaaaaab83e0 *)
adcs carry x26 x26 x28 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab83e4 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x30, x8, x13                                #! PC = 0xaaaaaaab83e8 *)
mull Hx8x13 x30 x8 x13;
(* umulh	x28, x8, x13                              #! PC = 0xaaaaaaab83ec *)
mov x28 Hx8x13;
(* adds	x25, x25, x27                              #! PC = 0xaaaaaaab83f0 *)
adds carry x25 x25 x27;
(* adcs	x26, x26, x28                              #! PC = 0xaaaaaaab83f4 *)
adcs carry x26 x26 x28 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab83f8 *)
adc x29 x29 0@uint64 carry;
(* mul	x27, x7, x15                                #! PC = 0xaaaaaaab83fc *)
mull Hx7x15 x27 x7 x15;
(* umulh	x28, x7, x15                              #! PC = 0xaaaaaaab8400 *)
mov x28 Hx7x15;
(* adds	x25, x25, x30                              #! PC = 0xaaaaaaab8404 *)
adds carry x25 x25 x30;
(* adcs	x26, x26, x27                              #! PC = 0xaaaaaaab8408 *)
adcs carry x26 x26 x27 carry;
(* adcs	x29, x29, x28                              #! PC = 0xaaaaaaab840c *)
adcs carry x29 x29 x28 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab8410 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x27, x8, x14                                #! PC = 0xaaaaaaab8414 *)
mull Hx8x14 x27 x8 x14;
(* umulh	x28, x8, x14                              #! PC = 0xaaaaaaab8418 *)
mov x28 Hx8x14;
(* adds	x26, x26, x27                              #! PC = 0xaaaaaaab841c *)
adds carry x26 x26 x27;
(* adcs	x29, x29, x28                              #! PC = 0xaaaaaaab8420 *)
adcs carry x29 x29 x28 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab8424 *)
adc x30 x30 0@uint64 carry;
(* mul	x27, x8, x15                                #! PC = 0xaaaaaaab8428 *)
mull Hx8x15 x27 x8 x15;
(* umulh	x28, x8, x15                              #! PC = 0xaaaaaaab842c *)
mov x28 Hx8x15;
(* adds	x27, x27, x29                              #! PC = 0xaaaaaaab8430 *)
adds carry x27 x27 x29;
(* adc	x28, x28, x30                               #! PC = 0xaaaaaaab8434 *)
adc x28 x28 x30 carry;
(* ldp	x7, x8, [x2, #160]                          #! EA = L0xffffffffe008; Value = 0x000074e5ad0c8578; PC = 0xaaaaaaab8438 *)
mov x7 L0xffffffffe008;
mov x8 L0xffffffffe010;
(* ldp	x14, x15, [x2, #176]                        #! EA = L0xffffffffe018; Value = 0xd6dd8bedfc378cb6; PC = 0xaaaaaaab843c *)
mov x14 L0xffffffffe018;
mov x15 L0xffffffffe020;
(* subs	x3, x3, x23                                #! PC = 0xaaaaaaab8440 *)
subc carry x3 x3 x23;
(* sbcs	x21, x21, x24                              #! PC = 0xaaaaaaab8444 *)
sbcs carry x21 x21 x24 carry;
(* sbcs	x22, x22, x25                              #! PC = 0xaaaaaaab8448 *)
sbcs carry x22 x22 x25 carry;
(* sbcs	x5, x5, x26                                #! PC = 0xaaaaaaab844c *)
sbcs carry x5 x5 x26 carry;
(* sbcs	x14, x14, x27                              #! PC = 0xaaaaaaab8450 *)
sbcs carry x14 x14 x27 carry;
(* sbcs	x7, x7, x28                                #! PC = 0xaaaaaaab8454 *)
sbcs carry x7 x7 x28 carry;
(* sbc	x4, x4, xzr                                 #! PC = 0xaaaaaaab8458 *)
sbcs docare x4 x4 0@uint64 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* adds	x20, x3, x20                               #! PC = 0xaaaaaaab845c *)
adds carry x20 x3 x20;
(* adcs	x21, x21, x8                               #! PC = 0xaaaaaaab8460 *)
adcs carry x21 x21 x8 carry;
(* adcs	x22, x22, x15                              #! PC = 0xaaaaaaab8464 *)
adcs carry x22 x22 x15 carry;
(* adcs	x23, x23, x5                               #! PC = 0xaaaaaaab8468 *)
adcs carry x23 x23 x5 carry;
(* adcs	x24, x24, x14                              #! PC = 0xaaaaaaab846c *)
adcs carry x24 x24 x14 carry;
(* adcs	x25, x25, x7                               #! PC = 0xaaaaaaab8470 *)
adcs carry x25 x25 x7 carry;
(* adcs	x26, x26, x4                               #! PC = 0xaaaaaaab8474 *)
adcs carry x26 x26 x4 carry;
(* adcs	x27, x27, xzr                              #! PC = 0xaaaaaaab8478 *)
adcs carry x27 x27 0@uint64 carry;
(* adc	x28, x28, xzr                               #! PC = 0xaaaaaaab847c *)
adcs docare x28 x28 0@uint64 carry;

(* TODO: cannot carry *)
(* assert true && docare = 0@1; *)
assume docare = 0 && true;

(* ldp	x3, x4, [x2, #48]                           #! EA = L0xffffffffdf98; Value = 0xed28bc861b923c62; PC = 0xaaaaaaab8480 *)
mov x3 L0xffffffffdf98;
mov x4 L0xffffffffdfa0;
(* ldp	x5, x6, [x2, #64]                           #! EA = L0xffffffffdfa8; Value = 0x35442db6f2319d09; PC = 0xaaaaaaab8484 *)
mov x5 L0xffffffffdfa8;
mov x6 L0xffffffffdfb0;
(* ldp	x7, x8, [x2, #80]                           #! EA = L0xffffffffdfb8; Value = 0xa93749d7e936e8cd; PC = 0xaaaaaaab8488 *)
mov x7 L0xffffffffdfb8;
mov x8 L0xffffffffdfc0;
(* ldp	x10, x11, [x2, #96]                         #! EA = L0xffffffffdfc8; Value = 0xac1ddbd67d6340cd; PC = 0xaaaaaaab848c *)
mov x10 L0xffffffffdfc8;
mov x11 L0xffffffffdfd0;
(* ldp	x12, x13, [x2, #112]                        #! EA = L0xffffffffdfd8; Value = 0xa3a075ccaed22e29; PC = 0xaaaaaaab8490 *)
mov x12 L0xffffffffdfd8;
mov x13 L0xffffffffdfe0;
(* ldp	x14, x15, [x2, #128]                        #! EA = L0xffffffffdfe8; Value = 0x7383be23f2b9da0e; PC = 0xaaaaaaab8494 *)
mov x14 L0xffffffffdfe8;
mov x15 L0xffffffffdff0;
(* subs	x3, x3, x16                                #! PC = 0xaaaaaaab8498 *)
subc carry x3 x3 x16;
(* sbcs	x4, x4, x17                                #! PC = 0xaaaaaaab849c *)
sbcs carry x4 x4 x17 carry;
(* sbcs	x5, x5, x19                                #! PC = 0xaaaaaaab84a0 *)
sbcs carry x5 x5 x19 carry;
(* sbcs	x6, x6, x20                                #! PC = 0xaaaaaaab84a4 *)
sbcs carry x6 x6 x20 carry;
(* sbcs	x7, x7, x21                                #! PC = 0xaaaaaaab84a8 *)
sbcs carry x7 x7 x21 carry;
(* sbcs	x8, x8, x22                                #! PC = 0xaaaaaaab84ac *)
sbcs carry x8 x8 x22 carry;
(* sbcs	x10, x10, x23                              #! PC = 0xaaaaaaab84b0 *)
sbcs carry x10 x10 x23 carry;
(* sbcs	x11, x11, x24                              #! PC = 0xaaaaaaab84b4 *)
sbcs carry x11 x11 x24 carry;
(* sbcs	x12, x12, x25                              #! PC = 0xaaaaaaab84b8 *)
sbcs carry x12 x12 x25 carry;
(* sbcs	x13, x13, x26                              #! PC = 0xaaaaaaab84bc *)
sbcs carry x13 x13 x26 carry;
(* sbcs	x14, x14, x27                              #! PC = 0xaaaaaaab84c0 *)
sbcs carry x14 x14 x27 carry;
(* sbcs	x15, x15, x28                              #! PC = 0xaaaaaaab84c4 *)
sbcs carry x15 x15 x28 carry;
(* sbc	x9, x9, xzr                                 #! PC = 0xaaaaaaab84c8 *)
sbcs docare x9 x9 0@uint64 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* ldr	x1, [x2, #144]                              #! EA = L0xffffffffdff8; Value = 0x0000000000000000; PC = 0xaaaaaaab84cc *)
mov x1 L0xffffffffdff8;
(* stp	x3, x4, [x2, #48]                           #! EA = L0xffffffffdf98; PC = 0xaaaaaaab84d0 *)
mov L0xffffffffdf98 x3;
mov L0xffffffffdfa0 x4;
(* stp	x5, x6, [x2, #64]                           #! EA = L0xffffffffdfa8; PC = 0xaaaaaaab84d4 *)
mov L0xffffffffdfa8 x5;
mov L0xffffffffdfb0 x6;
(* adds	x1, x1, #0x1                               #! PC = 0xaaaaaaab84d8 *)
adds carry x1 x1 0x1@uint64;

(* NOTE: restore carry *)
assert true && carry=storecarry2;
assume carry=storecarry2 && true;

(* stp	x7, x8, [x2, #80]                           #! EA = L0xffffffffdfb8; PC = 0xaaaaaaab84dc *)
mov L0xffffffffdfb8 x7;
mov L0xffffffffdfc0 x8;
(* adcs	x10, x10, x16                              #! PC = 0xaaaaaaab84e0 *)
adcs carry x10 x10 x16 carry;
(* adcs	x11, x11, x17                              #! PC = 0xaaaaaaab84e4 *)
adcs carry x11 x11 x17 carry;
(* adcs	x12, x12, x19                              #! PC = 0xaaaaaaab84e8 *)
adcs carry x12 x12 x19 carry;
(* adcs	x13, x13, x20                              #! PC = 0xaaaaaaab84ec *)
adcs carry x13 x13 x20 carry;
(* adcs	x14, x14, x21                              #! PC = 0xaaaaaaab84f0 *)
adcs carry x14 x14 x21 carry;
(* adcs	x15, x15, x22                              #! PC = 0xaaaaaaab84f4 *)
adcs carry x15 x15 x22 carry;
(* adcs	x23, x23, x9                               #! PC = 0xaaaaaaab84f8 *)
adcs carry x23 x23 x9 carry;
(* adcs	x24, x24, xzr                              #! PC = 0xaaaaaaab84fc *)
adcs carry x24 x24 0@uint64 carry;
(* adcs	x25, x25, xzr                              #! PC = 0xaaaaaaab8500 *)
adcs carry x25 x25 0@uint64 carry;
(* adcs	x26, x26, xzr                              #! PC = 0xaaaaaaab8504 *)
adcs carry x26 x26 0@uint64 carry;
(* adcs	x27, x27, xzr                              #! PC = 0xaaaaaaab8508 *)
adcs carry x27 x27 0@uint64 carry;
(* adc	x28, x28, xzr                               #! PC = 0xaaaaaaab850c *)
adcs docare x28 x28 0@uint64 carry;

(* TODO: cannot carry *)
(* assert true && docare = 0@1; *)
assume docare = 0 && true;

(* stp	x10, x11, [x2, #96]                         #! EA = L0xffffffffdfc8; PC = 0xaaaaaaab8510 *)
mov L0xffffffffdfc8 x10;
mov L0xffffffffdfd0 x11;
(* stp	x12, x13, [x2, #112]                        #! EA = L0xffffffffdfd8; PC = 0xaaaaaaab8514 *)
mov L0xffffffffdfd8 x12;
mov L0xffffffffdfe0 x13;
(* stp	x14, x15, [x2, #128]                        #! EA = L0xffffffffdfe8; PC = 0xaaaaaaab8518 *)
mov L0xffffffffdfe8 x14;
mov L0xffffffffdff0 x15;
(* stp	x23, x24, [x2, #144]                        #! EA = L0xffffffffdff8; PC = 0xaaaaaaab851c *)
mov L0xffffffffdff8 x23;
mov L0xffffffffe000 x24;
(* stp	x25, x26, [x2, #160]                        #! EA = L0xffffffffe008; PC = 0xaaaaaaab8520 *)
mov L0xffffffffe008 x25;
mov L0xffffffffe010 x26;
(* stp	x27, x28, [x2, #176]                        #! EA = L0xffffffffe018; PC = 0xaaaaaaab8524 *)
mov L0xffffffffe018 x27;
mov L0xffffffffe020 x28;
(* ldp	x19, x20, [sp]                              #! EA = L0xffffffffdd20; Value = 0x0000ffffffffdea8; PC = 0xaaaaaaab8528 *)
mov x19 L0xffffffffdd20;
mov x20 L0xffffffffdd28;
(* ldp	x21, x22, [sp, #16]                         #! EA = L0xffffffffdd30; Value = 0x0000ffffffffdf68; PC = 0xaaaaaaab852c *)
mov x21 L0xffffffffdd30;
mov x22 L0xffffffffdd38;
(* ldp	x23, x24, [sp, #32]                         #! EA = L0xffffffffdd40; Value = 0x0000ffffffffdde8; PC = 0xaaaaaaab8530 *)
mov x23 L0xffffffffdd40;
mov x24 L0xffffffffdd48;
(* ldp	x25, x26, [sp, #48]                         #! EA = L0xffffffffdd50; Value = 0x0000ffffffffe5f8; PC = 0xaaaaaaab8534 *)
mov x25 L0xffffffffdd50;
mov x26 L0xffffffffdd58;
(* ldp	x27, x28, [sp, #64]                         #! EA = L0xffffffffdd60; Value = 0x0000ffffffffe718; PC = 0xaaaaaaab8538 *)
mov x27 L0xffffffffdd60;
mov x28 L0xffffffffdd68;
(* ldp	x29, x30, [sp, #80]                         #! EA = L0xffffffffdd70; Value = 0x0000ffffffffdd80; PC = 0xaaaaaaab853c *)
mov x29 L0xffffffffdd70;
mov x30 L0xffffffffdd78;
(* add	sp, sp, #0x60                               #! PC = 0xaaaaaaab8540 *)
adds dontcare sp sp 0x60@uint64;
(* #! <- SP = 0xffffffffdd80 *)
#! 0xffffffffdd80 = 0xffffffffdd80;
(* #ret                                            #! PC = 0xaaaaaaab8544 *)
#ret                                            #! 0xaaaaaaab8544 = 0xaaaaaaab8544;

(* CUT 3 *)
(* NOTE: summary *)
cut limbs 64 [L0xffffffffdf68, L0xffffffffdf70, L0xffffffffdf78,
              L0xffffffffdf80, L0xffffffffdf88, L0xffffffffdf90,
              L0xffffffffdf98, L0xffffffffdfa0, L0xffffffffdfa8,
              L0xffffffffdfb0, L0xffffffffdfb8, L0xffffffffdfc0,
              L0xffffffffdfc8, L0xffffffffdfd0, L0xffffffffdfd8,
              L0xffffffffdfe0, L0xffffffffdfe8, L0xffffffffdff0,
              L0xffffffffdff8, L0xffffffffe000, L0xffffffffe008,
              L0xffffffffe010, L0xffffffffe018, L0xffffffffe020] =
    limbs 64 [ai0, ai1, ai2, ai3, ai4, ai5, ai6, ai7, ai8, ai9, aia, aib] *
    limbs 64 [bi0, bi1, bi2, bi3, bi4, bi5, bi6, bi7, bi8, bi9, bia, bib]
 && limbs 64 [L0xffffffffdf68, L0xffffffffdf70, L0xffffffffdf78,
              L0xffffffffdf80, L0xffffffffdf88, L0xffffffffdf90,
              L0xffffffffdf98, L0xffffffffdfa0, L0xffffffffdfa8,
              L0xffffffffdfb0, L0xffffffffdfb8, L0xffffffffdfc0,
              L0xffffffffdfc8, L0xffffffffdfd0, L0xffffffffdfd8,
              L0xffffffffdfe0, L0xffffffffdfe8, L0xffffffffdff0,
              L0xffffffffdff8, L0xffffffffe000, L0xffffffffe008,
              L0xffffffffe010, L0xffffffffe018, L0xffffffffe020] <u
    (2**1504)@1536
    prove with [ precondition ];

(* mov	w3, #0xc                   	// #12          #! PC = 0xaaaaaaaae530 *)
#mov	w3, #0xc                   	// #12          #! 0xaaaaaaaae530 = 0xaaaaaaaae530;
(* mov	x1, x24                                     #! PC = 0xaaaaaaaae534 *)
mov x1 x24;
(* mov	x0, x23                                     #! PC = 0xaaaaaaaae538 *)
mov x0 x23;
(* mov	x2, x20                                     #! PC = 0xaaaaaaaae53c *)
mov x2 x20;
(* #bl	0xaaaaaaab7540 <mp_mul>                     #! PC = 0xaaaaaaaae540 *)
#bl	0xaaaaaaab7540 <mp_mul>                     #! 0xaaaaaaaae540 = 0xaaaaaaaae540;
(* #! -> SP = 0xffffffffdd80 *)
#! 0xffffffffdd80 = 0xffffffffdd80;
(* #b	0xaaaaaaab7a54 <mul751_asm>                  #! PC = 0xaaaaaaab7540 *)
#b	0xaaaaaaab7a54 <mul751_asm>                  #! 0xaaaaaaab7540 = 0xaaaaaaab7540;
(* sub	sp, sp, #0x60                               #! PC = 0xaaaaaaab7a54 *)
subc dontcare sp sp 0x60@uint64;
(* stp	x19, x20, [sp]                              #! EA = L0xffffffffdd20; PC = 0xaaaaaaab7a58 *)
mov L0xffffffffdd20 x19;
mov L0xffffffffdd28 x20;
(* stp	x21, x22, [sp, #16]                         #! EA = L0xffffffffdd30; PC = 0xaaaaaaab7a5c *)
mov L0xffffffffdd30 x21;
mov L0xffffffffdd38 x22;
(* stp	x23, x24, [sp, #32]                         #! EA = L0xffffffffdd40; PC = 0xaaaaaaab7a60 *)
mov L0xffffffffdd40 x23;
mov L0xffffffffdd48 x24;
(* stp	x25, x26, [sp, #48]                         #! EA = L0xffffffffdd50; PC = 0xaaaaaaab7a64 *)
mov L0xffffffffdd50 x25;
mov L0xffffffffdd58 x26;
(* stp	x27, x28, [sp, #64]                         #! EA = L0xffffffffdd60; PC = 0xaaaaaaab7a68 *)
mov L0xffffffffdd60 x27;
mov L0xffffffffdd68 x28;
(* stp	x29, x30, [sp, #80]                         #! EA = L0xffffffffdd70; PC = 0xaaaaaaab7a6c *)
mov L0xffffffffdd70 x29;
mov L0xffffffffdd78 x30;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffdde8; Value = 0xfe945393e034712d; PC = 0xaaaaaaab7a70 *)
mov x3 L0xffffffffdde8;
mov x4 L0xffffffffddf0;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffddf8; Value = 0xff32f8da58031cbe; PC = 0xaaaaaaab7a74 *)
mov x5 L0xffffffffddf8;
mov x6 L0xffffffffde00;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffde08; Value = 0xcb97d6f162c37bea; PC = 0xaaaaaaab7a78 *)
mov x7 L0xffffffffde08;
mov x8 L0xffffffffde10;
(* ldp	x10, x11, [x0, #48]                         #! EA = L0xffffffffde18; Value = 0x1c55ed5a4791dbb6; PC = 0xaaaaaaab7a7c *)
mov x10 L0xffffffffde18;
mov x11 L0xffffffffde20;
(* ldp	x12, x13, [x0, #64]                         #! EA = L0xffffffffde28; Value = 0x13c55a32f6894c94; PC = 0xaaaaaaab7a80 *)
mov x12 L0xffffffffde28;
mov x13 L0xffffffffde30;
(* ldp	x14, x15, [x0, #80]                         #! EA = L0xffffffffde38; Value = 0x06d6a85af0d3454d; PC = 0xaaaaaaab7a84 *)
mov x14 L0xffffffffde38;
mov x15 L0xffffffffde40;
(* adds	x3, x3, x10                                #! PC = 0xaaaaaaab7a88 *)
adds carry x3 x3 x10;
(* adcs	x4, x4, x11                                #! PC = 0xaaaaaaab7a8c *)
adcs carry x4 x4 x11 carry;
(* adcs	x5, x5, x12                                #! PC = 0xaaaaaaab7a90 *)
adcs carry x5 x5 x12 carry;
(* adcs	x6, x6, x13                                #! PC = 0xaaaaaaab7a94 *)
adcs carry x6 x6 x13 carry;
(* adcs	x7, x7, x14                                #! PC = 0xaaaaaaab7a98 *)
adcs carry x7 x7 x14 carry;
(* adcs	x8, x8, x15                                #! PC = 0xaaaaaaab7a9c *)
adcs carry x8 x8 x15 carry;
(* adc	x9, xzr, xzr                                #! PC = 0xaaaaaaab7aa0 *)
adc x9 0@uint64 0@uint64 carry;
(* ldp	x10, x11, [x1]                              #! EA = L0xffffffffde48; Value = 0xd76414952ab8821b; PC = 0xaaaaaaab7aa4 *)
mov x10 L0xffffffffde48;
mov x11 L0xffffffffde50;
(* ldp	x12, x13, [x1, #16]                         #! EA = L0xffffffffde58; Value = 0x2897f442c276862f; PC = 0xaaaaaaab7aa8 *)
mov x12 L0xffffffffde58;
mov x13 L0xffffffffde60;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0xffffffffde68; Value = 0x61430cb7249919ce; PC = 0xaaaaaaab7aac *)
mov x14 L0xffffffffde68;
mov x15 L0xffffffffde70;
(* ldp	x17, x19, [x1, #48]                         #! EA = L0xffffffffde78; Value = 0xa3787ce074766b0d; PC = 0xaaaaaaab7ab0 *)
mov x17 L0xffffffffde78;
mov x19 L0xffffffffde80;
(* ldp	x20, x21, [x1, #64]                         #! EA = L0xffffffffde88; Value = 0x272a9b54b111ff58; PC = 0xaaaaaaab7ab4 *)
mov x20 L0xffffffffde88;
mov x21 L0xffffffffde90;
(* ldp	x22, x23, [x1, #80]                         #! EA = L0xffffffffde98; Value = 0x15bd6d7b064f02cf; PC = 0xaaaaaaab7ab8 *)
mov x22 L0xffffffffde98;
mov x23 L0xffffffffdea0;
(* adds	x10, x10, x17                              #! PC = 0xaaaaaaab7abc *)
adds carry x10 x10 x17;
(* adcs	x11, x11, x19                              #! PC = 0xaaaaaaab7ac0 *)
adcs carry x11 x11 x19 carry;
(* adcs	x12, x12, x20                              #! PC = 0xaaaaaaab7ac4 *)
adcs carry x12 x12 x20 carry;
(* adcs	x13, x13, x21                              #! PC = 0xaaaaaaab7ac8 *)
adcs carry x13 x13 x21 carry;
(* adcs	x14, x14, x22                              #! PC = 0xaaaaaaab7acc *)
adcs carry x14 x14 x22 carry;
(* adcs	x15, x15, x23                              #! PC = 0xaaaaaaab7ad0 *)
adcs carry x15 x15 x23 carry;
(* adc	x16, xzr, xzr                               #! PC = 0xaaaaaaab7ad4 *)
adc x16 0@uint64 0@uint64 carry;

ghost x9m3@uint64, x16m3@uint64 :
      and [x9m3=x9, x16m3=x16] && and [x9m3=x9, x16m3=x16];

(* neg	x17, x9                                     #! PC = 0xaaaaaaab7ad8 *)
subc dontcare x17 0@uint64 x9;
(* and	x19, x10, x17                               #! PC = 0xaaaaaaab7adc *)
and x19@uint64 x10 x17;
(* and	x20, x11, x17                               #! PC = 0xaaaaaaab7ae0 *)
and x20@uint64 x11 x17;
(* and	x21, x12, x17                               #! PC = 0xaaaaaaab7ae4 *)
and x21@uint64 x12 x17;
(* and	x22, x13, x17                               #! PC = 0xaaaaaaab7ae8 *)
and x22@uint64 x13 x17;
(* and	x23, x14, x17                               #! PC = 0xaaaaaaab7aec *)
and x23@uint64 x14 x17;
(* and	x24, x15, x17                               #! PC = 0xaaaaaaab7af0 *)
and x24@uint64 x15 x17;
(* neg	x17, x16                                    #! PC = 0xaaaaaaab7af4 *)
subc dontcare x17 0@uint64 x16;
(* and	x25, x3, x17                                #! PC = 0xaaaaaaab7af8 *)
and x25@uint64 x3 x17;
(* and	x26, x4, x17                                #! PC = 0xaaaaaaab7afc *)
and x26@uint64 x4 x17;
(* and	x27, x5, x17                                #! PC = 0xaaaaaaab7b00 *)
and x27@uint64 x5 x17;
(* and	x28, x6, x17                                #! PC = 0xaaaaaaab7b04 *)
and x28@uint64 x6 x17;
(* and	x29, x7, x17                                #! PC = 0xaaaaaaab7b08 *)
and x29@uint64 x7 x17;
(* and	x17, x8, x17                                #! PC = 0xaaaaaaab7b0c *)
and x17@uint64 x8 x17;

(* NOTE: mask *)
assert true
    && and [x9m3*(1@64-x9m3) = 0@64, x16m3*(1@64-x16m3) = 0@64,
            limbs 64 [x19, x20, x21, x22, x23, x24] =
            uext  x9m3 320 * limbs 64 [x10, x11, x12, x13, x14, x15],
            limbs 64 [x25, x26, x27, x28, x29, x17] =
            uext x16m3 320 * limbs 64 [ x3,  x4,  x5,  x6,  x7,  x8]];
assume and [x9m3*(1-x9m3) = 0, x16m3*(1-x16m3) = 0,
            limbs 64 [x19, x20, x21, x22, x23, x24] =
             x9m3 * limbs 64 [x10, x11, x12, x13, x14, x15],
            limbs 64 [x25, x26, x27, x28, x29, x17] =
            x16m3 * limbs 64 [ x3,  x4,  x5,  x6,  x7,  x8]] && true;

(* and	x9, x9, x16                                 #! PC = 0xaaaaaaab7b10 *)
and x9@uint64 x9 x16;

(* NOTE: combine carries *)
assert true && x9 = x9m3*x16m3;
assume x9 = x9m3*x16m3 && true;

(* adds	x19, x19, x25                              #! PC = 0xaaaaaaab7b14 *)
adds carry x19 x19 x25;
(* adcs	x20, x20, x26                              #! PC = 0xaaaaaaab7b18 *)
adcs carry x20 x20 x26 carry;
(* adcs	x21, x21, x27                              #! PC = 0xaaaaaaab7b1c *)
adcs carry x21 x21 x27 carry;
(* adcs	x22, x22, x28                              #! PC = 0xaaaaaaab7b20 *)
adcs carry x22 x22 x28 carry;
(* adcs	x23, x23, x29                              #! PC = 0xaaaaaaab7b24 *)
adcs carry x23 x23 x29 carry;
(* adcs	x24, x24, x17                              #! PC = 0xaaaaaaab7b28 *)
adcs carry x24 x24 x17 carry;
(* adc	x9, x9, xzr                                 #! PC = 0xaaaaaaab7b2c *)
adc x9 x9 0@uint64 carry;
(* stp	x19, x20, [x2]                              #! EA = L0xffffffffe028; PC = 0xaaaaaaab7b30 *)
mov L0xffffffffe028 x19;
mov L0xffffffffe030 x20;
(* stp	x21, x22, [x2, #16]                         #! EA = L0xffffffffe038; PC = 0xaaaaaaab7b34 *)
mov L0xffffffffe038 x21;
mov L0xffffffffe040 x22;
(* stp	x23, x24, [x2, #32]                         #! EA = L0xffffffffe048; PC = 0xaaaaaaab7b38 *)
mov L0xffffffffe048 x23;
mov L0xffffffffe050 x24;
(* stp	x3, x4, [x2, #64]                           #! EA = L0xffffffffe068; PC = 0xaaaaaaab7b3c *)
mov L0xffffffffe068 x3;
mov L0xffffffffe070 x4;
(* stp	x5, x6, [x2, #80]                           #! EA = L0xffffffffe078; PC = 0xaaaaaaab7b40 *)
mov L0xffffffffe078 x5;
mov L0xffffffffe080 x6;
(* stp	x7, x8, [x2, #96]                           #! EA = L0xffffffffe088; PC = 0xaaaaaaab7b44 *)
mov L0xffffffffe088 x7;
mov L0xffffffffe090 x8;
(* stp	x14, x15, [x2, #112]                        #! EA = L0xffffffffe098; PC = 0xaaaaaaab7b48 *)
mov L0xffffffffe098 x14;
mov L0xffffffffe0a0 x15;
(* adds	x23, x3, x6                                #! PC = 0xaaaaaaab7b4c *)
adds carry x23 x3 x6;
(* adcs	x24, x4, x7                                #! PC = 0xaaaaaaab7b50 *)
adcs carry x24 x4 x7 carry;
(* adcs	x25, x5, x8                                #! PC = 0xaaaaaaab7b54 *)
adcs carry x25 x5 x8 carry;
(* adc	x4, xzr, xzr                                #! PC = 0xaaaaaaab7b58 *)
adc x4 0@uint64 0@uint64 carry;
(* adds	x26, x10, x13                              #! PC = 0xaaaaaaab7b5c *)
adds carry x26 x10 x13;
(* adcs	x27, x11, x14                              #! PC = 0xaaaaaaab7b60 *)
adcs carry x27 x11 x14 carry;
(* adcs	x28, x12, x15                              #! PC = 0xaaaaaaab7b64 *)
adcs carry x28 x12 x15 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab7b68 *)
adc x29 0@uint64 0@uint64 carry;

ghost x4m7@uint64, x29m7@uint64 :
      and [x4m7=x4, x29m7=x29] && and [x4m7=x4, x29m7=x29];

(* neg	x30, x4                                     #! PC = 0xaaaaaaab7b6c *)
subc dontcare x30 0@uint64 x4;
(* and	x5, x26, x30                                #! PC = 0xaaaaaaab7b70 *)
and x5@uint64 x26 x30;
(* and	x14, x27, x30                               #! PC = 0xaaaaaaab7b74 *)
and x14@uint64 x27 x30;
(* and	x7, x28, x30                                #! PC = 0xaaaaaaab7b78 *)
and x7@uint64 x28 x30;
(* neg	x30, x29                                    #! PC = 0xaaaaaaab7b7c *)
subc dontcare x30 0@uint64 x29;
(* and	x3, x23, x30                                #! PC = 0xaaaaaaab7b80 *)
and x3@uint64 x23 x30;
(* umulh	x19, x23, x26                             #! PC = 0xaaaaaaab7b84 *)
(* NOTE: merged with mul x3, x23, x26 *)
(* mov x19 Hx23x26; *)
(* and	x21, x24, x30                               #! PC = 0xaaaaaaab7b88 *)
and x21@uint64 x24 x30;
(* and	x22, x25, x30                               #! PC = 0xaaaaaaab7b8c *)
and x22@uint64 x25 x30;

(* NOTE: mask *)
assert true
    && and [x4m7*(1@64-x4m7) = 0@64, x29m7*(1@64-x29m7) = 0@64,
            limbs 64 [ x5, x14,  x7] =
            uext  x4m7 128 * limbs 64 [x26, x27, x28],
            limbs 64 [ x3, x21,  x22] =
            uext x29m7 128 * limbs 64 [x23, x24, x25]];
assume and [x4m7*(1-x4m7) = 0, x29m7*(1-x29m7) = 0,
            limbs 64 [ x5, x14,  x7] =  x4m7 * limbs 64 [x26, x27, x28],
            limbs 64 [ x3, x21,  x22] = x29m7 * limbs 64 [x23, x24, x25]]
    && true;

(* and	x4, x4, x29                                 #! PC = 0xaaaaaaab7b90 *)
and x4@uint64 x4 x29;

(* NOTE: combine carries *)
assert true && x4=x4m7*x29m7;
assume x4=x4m7*x29m7 && true;

(* adds	x5, x5, x3                                 #! PC = 0xaaaaaaab7b94 *)
adds carry x5 x5 x3;
(* adcs	x14, x14, x21                              #! PC = 0xaaaaaaab7b98 *)
adcs carry x14 x14 x21 carry;
(* mul	x3, x23, x26                                #! PC = 0xaaaaaaab7b9c *)
mull x19 x3 x23 x26;
(* mul	x21, x23, x27                               #! PC = 0xaaaaaaab7ba0 *)
mull Hx23x27 x21 x23 x27;
(* adcs	x7, x7, x22                                #! PC = 0xaaaaaaab7ba4 *)
adcs carry x7 x7 x22 carry;
(* umulh	x22, x23, x27                             #! PC = 0xaaaaaaab7ba8 *)
mov x22 Hx23x27;
(* adc	x4, x4, xzr                                 #! PC = 0xaaaaaaab7bac *)
adc x4 x4 0@uint64 carry;
(* mul	x20, x24, x26                               #! PC = 0xaaaaaaab7bb0 *)
mull Hx24x26 x20 x24 x26;
(* umulh	x8, x24, x26                              #! PC = 0xaaaaaaab7bb4 *)
mov x8 Hx24x26;
(* adds	x21, x21, x19                              #! PC = 0xaaaaaaab7bb8 *)
adds carry x21 x21 x19;
(* adc	x22, x22, xzr                               #! PC = 0xaaaaaaab7bbc *)
adc x22 x22 0@uint64 carry;
(* mul	x30, x24, x27                               #! PC = 0xaaaaaaab7bc0 *)
mull Hx24x27 x30 x24 x27;
(* umulh	x19, x24, x27                             #! PC = 0xaaaaaaab7bc4 *)
mov x19 Hx24x27;
(* adds	x21, x21, x20                              #! PC = 0xaaaaaaab7bc8 *)
adds carry x21 x21 x20;
(* adcs	x22, x22, x8                               #! PC = 0xaaaaaaab7bcc *)
adcs carry x22 x22 x8 carry;
(* adc	x19, x19, xzr                               #! PC = 0xaaaaaaab7bd0 *)
adc x19 x19 0@uint64 carry;
(* mul	x20, x23, x28                               #! PC = 0xaaaaaaab7bd4 *)
mull Hx23x28 x20 x23 x28;
(* umulh	x8, x23, x28                              #! PC = 0xaaaaaaab7bd8 *)
mov x8 Hx23x28;
(* adds	x22, x22, x30                              #! PC = 0xaaaaaaab7bdc *)
adds carry x22 x22 x30;
(* adcs	x19, x19, x8                               #! PC = 0xaaaaaaab7be0 *)
adcs carry x19 x19 x8 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab7be4 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x30, x25, x26                               #! PC = 0xaaaaaaab7be8 *)
mull Hx25x26 x30 x25 x26;
(* umulh	x8, x25, x26                              #! PC = 0xaaaaaaab7bec *)
mov x8 Hx25x26;
(* adds	x22, x22, x20                              #! PC = 0xaaaaaaab7bf0 *)
adds carry x22 x22 x20;
(* adcs	x19, x19, x8                               #! PC = 0xaaaaaaab7bf4 *)
adcs carry x19 x19 x8 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab7bf8 *)
adc x29 x29 0@uint64 carry;
(* mul	x20, x24, x28                               #! PC = 0xaaaaaaab7bfc *)
mull Hx24x28 x20 x24 x28;
(* umulh	x8, x24, x28                              #! PC = 0xaaaaaaab7c00 *)
mov x8 Hx24x28;
(* adds	x22, x22, x30                              #! PC = 0xaaaaaaab7c04 *)
adds carry x22 x22 x30;
(* adcs	x19, x19, x20                              #! PC = 0xaaaaaaab7c08 *)
adcs carry x19 x19 x20 carry;
(* adcs	x29, x29, x8                               #! PC = 0xaaaaaaab7c0c *)
adcs carry x29 x29 x8 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab7c10 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x20, x25, x27                               #! PC = 0xaaaaaaab7c14 *)
mull Hx25x27 x20 x25 x27;
(* umulh	x8, x25, x27                              #! PC = 0xaaaaaaab7c18 *)
mov x8 Hx25x27;
(* adds	x19, x19, x20                              #! PC = 0xaaaaaaab7c1c *)
adds carry x19 x19 x20;
(* adcs	x29, x29, x8                               #! PC = 0xaaaaaaab7c20 *)
adcs carry x29 x29 x8 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab7c24 *)
adc x30 x30 0@uint64 carry;
(* mul	x20, x25, x28                               #! PC = 0xaaaaaaab7c28 *)
mull Hx25x28 x20 x25 x28;
(* umulh	x8, x25, x28                              #! PC = 0xaaaaaaab7c2c *)
mov x8 Hx25x28;
(* adds	x20, x20, x29                              #! PC = 0xaaaaaaab7c30 *)
adds carry x20 x20 x29;
(* adc	x8, x8, x30                                 #! PC = 0xaaaaaaab7c34 *)
adc x8 x8 x30 carry;
(* adds	x5, x5, x19                                #! PC = 0xaaaaaaab7c38 *)
adds carry x5 x5 x19;
(* adcs	x14, x14, x20                              #! PC = 0xaaaaaaab7c3c *)
adcs carry x14 x14 x20 carry;
(* adcs	x7, x7, x8                                 #! PC = 0xaaaaaaab7c40 *)
adcs carry x7 x7 x8 carry;
(* adc	x4, x4, xzr                                 #! PC = 0xaaaaaaab7c44 *)
adc x4 x4 0@uint64 carry;
(* stp	x3, x4, [x2, #128]                          #! EA = L0xffffffffe0a8; PC = 0xaaaaaaab7c48 *)
mov L0xffffffffe0a8 x3;
mov L0xffffffffe0b0 x4;
(* ldp	x3, x4, [x2, #64]                           #! EA = L0xffffffffe068; Value = 0x1aea40ee27c64ce3; PC = 0xaaaaaaab7c4c *)
mov x3 L0xffffffffe068;
mov x4 L0xffffffffe070;
(* str	x5, [x2, #144]                              #! EA = L0xffffffffe0b8; PC = 0xaaaaaaab7c50 *)
mov L0xffffffffe0b8 x5;
(* ldr	x5, [x2, #80]                               #! EA = L0xffffffffe078; Value = 0x12f8530d4e8c6953; PC = 0xaaaaaaab7c54 *)
mov x5 L0xffffffffe078;
(* mul	x16, x3, x10                                #! PC = 0xaaaaaaab7c58 *)
mull Hx3x10 x16 x3 x10;
(* mul	x17, x3, x11                                #! PC = 0xaaaaaaab7c5c *)
mull Hx3x11 x17 x3 x11;
(* umulh	x19, x3, x11                              #! PC = 0xaaaaaaab7c60 *)
mov x19 Hx3x11;
(* umulh	x20, x3, x10                              #! PC = 0xaaaaaaab7c64 *)
mov x20 Hx3x10;
(* mul	x8, x4, x10                                 #! PC = 0xaaaaaaab7c68 *)
mull Hx4x10 x8 x4 x10;
(* umulh	x15, x4, x10                              #! PC = 0xaaaaaaab7c6c *)
mov x15 Hx4x10;
(* adds	x17, x17, x20                              #! PC = 0xaaaaaaab7c70 *)
adds carry x17 x17 x20;
(* adc	x19, x19, xzr                               #! PC = 0xaaaaaaab7c74 *)
adc x19 x19 0@uint64 carry;
(* mul	x30, x4, x11                                #! PC = 0xaaaaaaab7c78 *)
mull Hx4x11 x30 x4 x11;
(* umulh	x20, x4, x11                              #! PC = 0xaaaaaaab7c7c *)
mov x20 Hx4x11;
(* adds	x17, x17, x8                               #! PC = 0xaaaaaaab7c80 *)
adds carry x17 x17 x8;
(* adcs	x19, x19, x15                              #! PC = 0xaaaaaaab7c84 *)
adcs carry x19 x19 x15 carry;
(* adc	x20, x20, xzr                               #! PC = 0xaaaaaaab7c88 *)
adc x20 x20 0@uint64 carry;
(* mul	x8, x3, x12                                 #! PC = 0xaaaaaaab7c8c *)
mull Hx3x12 x8 x3 x12;
(* umulh	x15, x3, x12                              #! PC = 0xaaaaaaab7c90 *)
mov x15 Hx3x12;
(* adds	x19, x19, x30                              #! PC = 0xaaaaaaab7c94 *)
adds carry x19 x19 x30;
(* adcs	x20, x20, x15                              #! PC = 0xaaaaaaab7c98 *)
adcs carry x20 x20 x15 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab7c9c *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x30, x5, x10                                #! PC = 0xaaaaaaab7ca0 *)
mull Hx5x10 x30 x5 x10;
(* umulh	x15, x5, x10                              #! PC = 0xaaaaaaab7ca4 *)
mov x15 Hx5x10;
(* adds	x19, x19, x8                               #! PC = 0xaaaaaaab7ca8 *)
adds carry x19 x19 x8;
(* adcs	x20, x20, x15                              #! PC = 0xaaaaaaab7cac *)
adcs carry x20 x20 x15 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab7cb0 *)
adc x29 x29 0@uint64 carry;
(* mul	x8, x4, x12                                 #! PC = 0xaaaaaaab7cb4 *)
mull Hx4x12 x8 x4 x12;
(* umulh	x15, x4, x12                              #! PC = 0xaaaaaaab7cb8 *)
mov x15 Hx4x12;
(* adds	x19, x19, x30                              #! PC = 0xaaaaaaab7cbc *)
adds carry x19 x19 x30;
(* adcs	x20, x20, x8                               #! PC = 0xaaaaaaab7cc0 *)
adcs carry x20 x20 x8 carry;
(* adcs	x29, x29, x15                              #! PC = 0xaaaaaaab7cc4 *)
adcs carry x29 x29 x15 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab7cc8 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x8, x5, x11                                 #! PC = 0xaaaaaaab7ccc *)
mull Hx5x11 x8 x5 x11;
(* umulh	x15, x5, x11                              #! PC = 0xaaaaaaab7cd0 *)
mov x15 Hx5x11;
(* adds	x20, x20, x8                               #! PC = 0xaaaaaaab7cd4 *)
adds carry x20 x20 x8;
(* adcs	x29, x29, x15                              #! PC = 0xaaaaaaab7cd8 *)
adcs carry x29 x29 x15 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab7cdc *)
adc x30 x30 0@uint64 carry;
(* mul	x8, x5, x12                                 #! PC = 0xaaaaaaab7ce0 *)
mull Hx5x12 x8 x5 x12;
(* umulh	x15, x5, x12                              #! PC = 0xaaaaaaab7ce4 *)
mov x15 Hx5x12;
(* adds	x8, x8, x29                                #! PC = 0xaaaaaaab7ce8 *)
adds carry x8 x8 x29;
(* adc	x15, x15, x30                               #! PC = 0xaaaaaaab7cec *)
adc x15 x15 x30 carry;
(* ldp	x3, x4, [x2, #128]                          #! EA = L0xffffffffe0a8; Value = 0x7511292cb3bfbb8f; PC = 0xaaaaaaab7cf0 *)
mov x3 L0xffffffffe0a8;
mov x4 L0xffffffffe0b0;
(* ldr	x5, [x2, #144]                              #! EA = L0xffffffffe0b8; Value = 0xea3ee9a655088ce5; PC = 0xaaaaaaab7cf4 *)
mov x5 L0xffffffffe0b8;
(* mul	x23, x6, x13                                #! PC = 0xaaaaaaab7cf8 *)
mull Hx6x13 x23 x6 x13;
(* umulh	x26, x6, x13                              #! PC = 0xaaaaaaab7cfc *)
mov x26 Hx6x13;
(* subs	x3, x3, x16                                #! PC = 0xaaaaaaab7d00 *)
subc carry x3 x3 x16;
(* sbcs	x21, x21, x17                              #! PC = 0xaaaaaaab7d04 *)
sbcs carry x21 x21 x17 carry;
(* sbcs	x22, x22, x19                              #! PC = 0xaaaaaaab7d08 *)
sbcs carry x22 x22 x19 carry;
(* sbcs	x5, x5, x20                                #! PC = 0xaaaaaaab7d0c *)
sbcs carry x5 x5 x20 carry;
(* sbcs	x14, x14, x8                               #! PC = 0xaaaaaaab7d10 *)
sbcs carry x14 x14 x8 carry;
(* sbcs	x7, x7, x15                                #! PC = 0xaaaaaaab7d14 *)
sbcs carry x7 x7 x15 carry;
(* sbc	x4, x4, xzr                                 #! PC = 0xaaaaaaab7d18 *)
sbcs docare x4 x4 0@uint64 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* stp	x14, x15, [x2, #144]                        #! EA = L0xffffffffe0b8; PC = 0xaaaaaaab7d1c *)
mov L0xffffffffe0b8 x14;
mov L0xffffffffe0c0 x15;
(* ldp	x14, x15, [x2, #112]                        #! EA = L0xffffffffe098; Value = 0x77007a322ae81c9e; PC = 0xaaaaaaab7d20 *)
mov x14 L0xffffffffe098;
mov x15 L0xffffffffe0a0;
(* stp	x7, x8, [x2, #128]                          #! EA = L0xffffffffe0a8; PC = 0xaaaaaaab7d24 *)
mov L0xffffffffe0a8 x7;
mov L0xffffffffe0b0 x8;
(* ldp	x7, x8, [x2, #96]                           #! EA = L0xffffffffe088; Value = 0xd26e7f4c5396c138; PC = 0xaaaaaaab7d28 *)
mov x7 L0xffffffffe088;
mov x8 L0xffffffffe090;
(* mul	x24, x6, x14                                #! PC = 0xaaaaaaab7d2c *)
mull Hx6x14 x24 x6 x14;
(* umulh	x25, x6, x14                              #! PC = 0xaaaaaaab7d30 *)
mov x25 Hx6x14;
(* mul	x27, x7, x13                                #! PC = 0xaaaaaaab7d34 *)
mull Hx7x13 x27 x7 x13;
(* umulh	x28, x7, x13                              #! PC = 0xaaaaaaab7d38 *)
mov x28 Hx7x13;
(* adds	x24, x24, x26                              #! PC = 0xaaaaaaab7d3c *)
adds carry x24 x24 x26;
(* adc	x25, x25, xzr                               #! PC = 0xaaaaaaab7d40 *)
adc x25 x25 0@uint64 carry;
(* mul	x30, x7, x14                                #! PC = 0xaaaaaaab7d44 *)
mull Hx7x14 x30 x7 x14;
(* umulh	x26, x7, x14                              #! PC = 0xaaaaaaab7d48 *)
mov x26 Hx7x14;
(* adds	x24, x24, x27                              #! PC = 0xaaaaaaab7d4c *)
adds carry x24 x24 x27;
(* adcs	x25, x25, x28                              #! PC = 0xaaaaaaab7d50 *)
adcs carry x25 x25 x28 carry;
(* adc	x26, x26, xzr                               #! PC = 0xaaaaaaab7d54 *)
adc x26 x26 0@uint64 carry;
(* mul	x27, x6, x15                                #! PC = 0xaaaaaaab7d58 *)
mull Hx6x15 x27 x6 x15;
(* umulh	x28, x6, x15                              #! PC = 0xaaaaaaab7d5c *)
mov x28 Hx6x15;
(* adds	x25, x25, x30                              #! PC = 0xaaaaaaab7d60 *)
adds carry x25 x25 x30;
(* adcs	x26, x26, x28                              #! PC = 0xaaaaaaab7d64 *)
adcs carry x26 x26 x28 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab7d68 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x30, x8, x13                                #! PC = 0xaaaaaaab7d6c *)
mull Hx8x13 x30 x8 x13;
(* umulh	x28, x8, x13                              #! PC = 0xaaaaaaab7d70 *)
mov x28 Hx8x13;
(* adds	x25, x25, x27                              #! PC = 0xaaaaaaab7d74 *)
adds carry x25 x25 x27;
(* adcs	x26, x26, x28                              #! PC = 0xaaaaaaab7d78 *)
adcs carry x26 x26 x28 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab7d7c *)
adc x29 x29 0@uint64 carry;
(* mul	x27, x7, x15                                #! PC = 0xaaaaaaab7d80 *)
mull Hx7x15 x27 x7 x15;
(* umulh	x28, x7, x15                              #! PC = 0xaaaaaaab7d84 *)
mov x28 Hx7x15;
(* adds	x25, x25, x30                              #! PC = 0xaaaaaaab7d88 *)
adds carry x25 x25 x30;
(* adcs	x26, x26, x27                              #! PC = 0xaaaaaaab7d8c *)
adcs carry x26 x26 x27 carry;
(* adcs	x29, x29, x28                              #! PC = 0xaaaaaaab7d90 *)
adcs carry x29 x29 x28 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab7d94 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x27, x8, x14                                #! PC = 0xaaaaaaab7d98 *)
mull Hx8x14 x27 x8 x14;
(* umulh	x28, x8, x14                              #! PC = 0xaaaaaaab7d9c *)
mov x28 Hx8x14;
(* adds	x26, x26, x27                              #! PC = 0xaaaaaaab7da0 *)
adds carry x26 x26 x27;
(* adcs	x29, x29, x28                              #! PC = 0xaaaaaaab7da4 *)
adcs carry x29 x29 x28 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab7da8 *)
adc x30 x30 0@uint64 carry;
(* mul	x27, x8, x15                                #! PC = 0xaaaaaaab7dac *)
mull Hx8x15 x27 x8 x15;
(* umulh	x28, x8, x15                              #! PC = 0xaaaaaaab7db0 *)
mov x28 Hx8x15;
(* adds	x27, x27, x29                              #! PC = 0xaaaaaaab7db4 *)
adds carry x27 x27 x29;
(* adc	x28, x28, x30                               #! PC = 0xaaaaaaab7db8 *)
adc x28 x28 x30 carry;
(* ldp	x7, x8, [x2, #128]                          #! EA = L0xffffffffe0a8; Value = 0xdb66b2b82bd957a8; PC = 0xaaaaaaab7dbc *)
mov x7 L0xffffffffe0a8;
mov x8 L0xffffffffe0b0;
(* ldp	x14, x15, [x2, #144]                        #! EA = L0xffffffffe0b8; Value = 0xd40d3c2c860ac207; PC = 0xaaaaaaab7dc0 *)
mov x14 L0xffffffffe0b8;
mov x15 L0xffffffffe0c0;
(* subs	x3, x3, x23                                #! PC = 0xaaaaaaab7dc4 *)
subc carry x3 x3 x23;
(* sbcs	x21, x21, x24                              #! PC = 0xaaaaaaab7dc8 *)
sbcs carry x21 x21 x24 carry;
(* sbcs	x22, x22, x25                              #! PC = 0xaaaaaaab7dcc *)
sbcs carry x22 x22 x25 carry;
(* sbcs	x5, x5, x26                                #! PC = 0xaaaaaaab7dd0 *)
sbcs carry x5 x5 x26 carry;
(* sbcs	x14, x14, x27                              #! PC = 0xaaaaaaab7dd4 *)
sbcs carry x14 x14 x27 carry;
(* sbcs	x7, x7, x28                                #! PC = 0xaaaaaaab7dd8 *)
sbcs carry x7 x7 x28 carry;
(* sbc	x4, x4, xzr                                 #! PC = 0xaaaaaaab7ddc *)
sbcs docare x4 x4 0@uint64 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* adds	x20, x3, x20                               #! PC = 0xaaaaaaab7de0 *)
adds carry x20 x3 x20;
(* adcs	x21, x21, x8                               #! PC = 0xaaaaaaab7de4 *)
adcs carry x21 x21 x8 carry;
(* adcs	x22, x22, x15                              #! PC = 0xaaaaaaab7de8 *)
adcs carry x22 x22 x15 carry;
(* adcs	x23, x23, x5                               #! PC = 0xaaaaaaab7dec *)
adcs carry x23 x23 x5 carry;
(* adcs	x24, x24, x14                              #! PC = 0xaaaaaaab7df0 *)
adcs carry x24 x24 x14 carry;
(* adcs	x25, x25, x7                               #! PC = 0xaaaaaaab7df4 *)
adcs carry x25 x25 x7 carry;
(* adcs	x26, x26, x4                               #! PC = 0xaaaaaaab7df8 *)
adcs carry x26 x26 x4 carry;
(* adcs	x27, x27, xzr                              #! PC = 0xaaaaaaab7dfc *)
adcs carry x27 x27 0@uint64 carry;
(* adc	x28, x28, xzr                               #! PC = 0xaaaaaaab7e00 *)
adcs docare x28 x28 0@uint64 carry;

(* TODO: cannot carry *)
(* assert true && docare = 0@1; *)
assume docare = 0 && true;

(* ldp	x3, x4, [x2]                                #! EA = L0xffffffffe028; Value = 0x0000000000000000; PC = 0xaaaaaaab7e04 *)
mov x3 L0xffffffffe028;
mov x4 L0xffffffffe030;
(* ldp	x5, x6, [x2, #16]                           #! EA = L0xffffffffe038; Value = 0x0000000000000000; PC = 0xaaaaaaab7e08 *)
mov x5 L0xffffffffe038;
mov x6 L0xffffffffe040;
(* ldp	x7, x8, [x2, #32]                           #! EA = L0xffffffffe048; Value = 0x0000000000000000; PC = 0xaaaaaaab7e0c *)
mov x7 L0xffffffffe048;
mov x8 L0xffffffffe050;
(* adds	x23, x23, x3                               #! PC = 0xaaaaaaab7e10 *)
adds carry x23 x23 x3;
(* adcs	x24, x24, x4                               #! PC = 0xaaaaaaab7e14 *)
adcs carry x24 x24 x4 carry;
(* adcs	x25, x25, x5                               #! PC = 0xaaaaaaab7e18 *)
adcs carry x25 x25 x5 carry;
(* adcs	x26, x26, x6                               #! PC = 0xaaaaaaab7e1c *)
adcs carry x26 x26 x6 carry;
(* adcs	x27, x27, x7                               #! PC = 0xaaaaaaab7e20 *)
adcs carry x27 x27 x7 carry;
(* adcs	x28, x28, x8                               #! PC = 0xaaaaaaab7e24 *)
adcs carry x28 x28 x8 carry;
(* adc	x9, x9, xzr                                 #! PC = 0xaaaaaaab7e28 *)
adc x9 x9 0@uint64 carry;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffdde8; Value = 0xfe945393e034712d; PC = 0xaaaaaaab7e2c *)
mov x3 L0xffffffffdde8;
mov x4 L0xffffffffddf0;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffddf8; Value = 0xff32f8da58031cbe; PC = 0xaaaaaaab7e30 *)
mov x5 L0xffffffffddf8;
mov x6 L0xffffffffde00;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffde08; Value = 0xcb97d6f162c37bea; PC = 0xaaaaaaab7e34 *)
mov x7 L0xffffffffde08;
mov x8 L0xffffffffde10;
(* ldp	x10, x11, [x1]                              #! EA = L0xffffffffde48; Value = 0xd76414952ab8821b; PC = 0xaaaaaaab7e38 *)
mov x10 L0xffffffffde48;
mov x11 L0xffffffffde50;
(* ldp	x12, x13, [x1, #16]                         #! EA = L0xffffffffde58; Value = 0x2897f442c276862f; PC = 0xaaaaaaab7e3c *)
mov x12 L0xffffffffde58;
mov x13 L0xffffffffde60;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0xffffffffde68; Value = 0x61430cb7249919ce; PC = 0xaaaaaaab7e40 *)
mov x14 L0xffffffffde68;
mov x15 L0xffffffffde70;
(* stp	x16, x17, [x2]                              #! EA = L0xffffffffe028; PC = 0xaaaaaaab7e44 *)
mov L0xffffffffe028 x16;
mov L0xffffffffe030 x17;
(* stp	x19, x20, [x2, #16]                         #! EA = L0xffffffffe038; PC = 0xaaaaaaab7e48 *)
mov L0xffffffffe038 x19;
mov L0xffffffffe040 x20;
(* stp	x21, x22, [x2, #32]                         #! EA = L0xffffffffe048; PC = 0xaaaaaaab7e4c *)
mov L0xffffffffe048 x21;
mov L0xffffffffe050 x22;
(* stp	x23, x24, [x2, #48]                         #! EA = L0xffffffffe058; PC = 0xaaaaaaab7e50 *)
mov L0xffffffffe058 x23;
mov L0xffffffffe060 x24;
(* stp	x25, x26, [x2, #64]                         #! EA = L0xffffffffe068; PC = 0xaaaaaaab7e54 *)
mov L0xffffffffe068 x25;
mov L0xffffffffe070 x26;
(* stp	x27, x28, [x2, #80]                         #! EA = L0xffffffffe078; PC = 0xaaaaaaab7e58 *)
mov L0xffffffffe078 x27;
mov L0xffffffffe080 x28;
(* adds	x23, x3, x6                                #! PC = 0xaaaaaaab7e5c *)
adds carry x23 x3 x6;
(* adcs	x24, x4, x7                                #! PC = 0xaaaaaaab7e60 *)
adcs carry x24 x4 x7 carry;
(* adcs	x25, x5, x8                                #! PC = 0xaaaaaaab7e64 *)
adcs carry x25 x5 x8 carry;
(* adc	x4, xzr, xzr                                #! PC = 0xaaaaaaab7e68 *)
adc x4 0@uint64 0@uint64 carry;
(* adds	x26, x10, x13                              #! PC = 0xaaaaaaab7e6c *)
adds carry x26 x10 x13;
(* adcs	x27, x11, x14                              #! PC = 0xaaaaaaab7e70 *)
adcs carry x27 x11 x14 carry;
(* adcs	x28, x12, x15                              #! PC = 0xaaaaaaab7e74 *)
adcs carry x28 x12 x15 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab7e78 *)
adc x29 0@uint64 0@uint64 carry;

ghost x4m8@uint64, x29m8@uint64 :
      and [x4m8=x4, x29m8=x29] && and [x4m8=x4, x29m8=x29];

(* neg	x30, x4                                     #! PC = 0xaaaaaaab7e7c *)
subc dontcare x30 0@uint64 x4;
(* and	x5, x26, x30                                #! PC = 0xaaaaaaab7e80 *)
and x5@uint64 x26 x30;
(* and	x14, x27, x30                               #! PC = 0xaaaaaaab7e84 *)
and x14@uint64 x27 x30;
(* and	x7, x28, x30                                #! PC = 0xaaaaaaab7e88 *)
and x7@uint64 x28 x30;
(* neg	x30, x29                                    #! PC = 0xaaaaaaab7e8c *)
subc dontcare x30 0@uint64 x29;
(* and	x3, x23, x30                                #! PC = 0xaaaaaaab7e90 *)
and x3@uint64 x23 x30;
(* umulh	x19, x23, x26                             #! PC = 0xaaaaaaab7e94 *)
(* NOTE: merged with mul x3, x23, x26 *)
(* mov x19 Hx23x26; *)
(* and	x21, x24, x30                               #! PC = 0xaaaaaaab7e98 *)
and x21@uint64 x24 x30;
(* and	x22, x25, x30                               #! PC = 0xaaaaaaab7e9c *)
and x22@uint64 x25 x30;

(* NOTE: mask *)
assert true
    && and [x4m8*(1@64-x4m8)=0@64, x29m8*(1@64-x29m8)=0@64,
            limbs 64 [ x5, x14,  x7] =
            uext  x4m8 128 * limbs 64 [x26, x27, x28],
            limbs 64 [ x3, x21, x22] =
            uext x29m8 128 * limbs 64 [x23, x24, x25]];
assume and [x4m8*(1-x4m8)=0, x29m8*(1-x29m8)=0,
            limbs 64 [ x5, x14,  x7] =   x4m8 * limbs 64 [x26, x27, x28],
            limbs 64 [ x3, x21, x22] =  x29m8 * limbs 64 [x23, x24, x25]]
    && true;

(* and	x4, x4, x29                                 #! PC = 0xaaaaaaab7ea0 *)
and x4@uint64 x4 x29;

(* NOTE: combined carries *)
assert true && x4=x4m8*x29m8;
assume x4=x4m8*x29m8 && true;

(* adds	x5, x5, x3                                 #! PC = 0xaaaaaaab7ea4 *)
adds carry x5 x5 x3;
(* adcs	x14, x14, x21                              #! PC = 0xaaaaaaab7ea8 *)
adcs carry x14 x14 x21 carry;
(* mul	x3, x23, x26                                #! PC = 0xaaaaaaab7eac *)
mull x19 x3 x23 x26;
(* mul	x21, x23, x27                               #! PC = 0xaaaaaaab7eb0 *)
mull Hx23x27 x21 x23 x27;
(* adcs	x7, x7, x22                                #! PC = 0xaaaaaaab7eb4 *)
adcs carry x7 x7 x22 carry;
(* umulh	x22, x23, x27                             #! PC = 0xaaaaaaab7eb8 *)
mov x22 Hx23x27;
(* adc	x4, x4, xzr                                 #! PC = 0xaaaaaaab7ebc *)
adc x4 x4 0@uint64 carry;
(* mul	x20, x24, x26                               #! PC = 0xaaaaaaab7ec0 *)
mull Hx24x26 x20 x24 x26;
(* umulh	x8, x24, x26                              #! PC = 0xaaaaaaab7ec4 *)
mov x8 Hx24x26;
(* adds	x21, x21, x19                              #! PC = 0xaaaaaaab7ec8 *)
adds carry x21 x21 x19;
(* adc	x22, x22, xzr                               #! PC = 0xaaaaaaab7ecc *)
adc x22 x22 0@uint64 carry;
(* mul	x30, x24, x27                               #! PC = 0xaaaaaaab7ed0 *)
mull Hx24x27 x30 x24 x27;
(* umulh	x19, x24, x27                             #! PC = 0xaaaaaaab7ed4 *)
mov x19 Hx24x27;
(* adds	x21, x21, x20                              #! PC = 0xaaaaaaab7ed8 *)
adds carry x21 x21 x20;
(* adcs	x22, x22, x8                               #! PC = 0xaaaaaaab7edc *)
adcs carry x22 x22 x8 carry;
(* adc	x19, x19, xzr                               #! PC = 0xaaaaaaab7ee0 *)
adc x19 x19 0@uint64 carry;
(* mul	x20, x23, x28                               #! PC = 0xaaaaaaab7ee4 *)
mull Hx23x28 x20 x23 x28;
(* umulh	x8, x23, x28                              #! PC = 0xaaaaaaab7ee8 *)
mov x8 Hx23x28;
(* adds	x22, x22, x30                              #! PC = 0xaaaaaaab7eec *)
adds carry x22 x22 x30;
(* adcs	x19, x19, x8                               #! PC = 0xaaaaaaab7ef0 *)
adcs carry x19 x19 x8 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab7ef4 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x30, x25, x26                               #! PC = 0xaaaaaaab7ef8 *)
mull Hx25x26 x30 x25 x26;
(* umulh	x8, x25, x26                              #! PC = 0xaaaaaaab7efc *)
mov x8 Hx25x26;
(* adds	x22, x22, x20                              #! PC = 0xaaaaaaab7f00 *)
adds carry x22 x22 x20;
(* adcs	x19, x19, x8                               #! PC = 0xaaaaaaab7f04 *)
adcs carry x19 x19 x8 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab7f08 *)
adc x29 x29 0@uint64 carry;
(* mul	x20, x24, x28                               #! PC = 0xaaaaaaab7f0c *)
mull Hx24x28 x20 x24 x28;
(* umulh	x8, x24, x28                              #! PC = 0xaaaaaaab7f10 *)
mov x8 Hx24x28;
(* adds	x22, x22, x30                              #! PC = 0xaaaaaaab7f14 *)
adds carry x22 x22 x30;
(* adcs	x19, x19, x20                              #! PC = 0xaaaaaaab7f18 *)
adcs carry x19 x19 x20 carry;
(* adcs	x29, x29, x8                               #! PC = 0xaaaaaaab7f1c *)
adcs carry x29 x29 x8 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab7f20 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x20, x25, x27                               #! PC = 0xaaaaaaab7f24 *)
mull Hx25x27 x20 x25 x27;
(* umulh	x8, x25, x27                              #! PC = 0xaaaaaaab7f28 *)
mov x8 Hx25x27;
(* adds	x19, x19, x20                              #! PC = 0xaaaaaaab7f2c *)
adds carry x19 x19 x20;
(* adcs	x29, x29, x8                               #! PC = 0xaaaaaaab7f30 *)
adcs carry x29 x29 x8 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab7f34 *)
adc x30 x30 0@uint64 carry;
(* mul	x20, x25, x28                               #! PC = 0xaaaaaaab7f38 *)
mull Hx25x28 x20 x25 x28;
(* umulh	x8, x25, x28                              #! PC = 0xaaaaaaab7f3c *)
mov x8 Hx25x28;
(* adds	x20, x20, x29                              #! PC = 0xaaaaaaab7f40 *)
adds carry x20 x20 x29;
(* adc	x8, x8, x30                                 #! PC = 0xaaaaaaab7f44 *)
adc x8 x8 x30 carry;
(* adds	x5, x5, x19                                #! PC = 0xaaaaaaab7f48 *)
adds carry x5 x5 x19;
(* adcs	x14, x14, x20                              #! PC = 0xaaaaaaab7f4c *)
adcs carry x14 x14 x20 carry;
(* adcs	x7, x7, x8                                 #! PC = 0xaaaaaaab7f50 *)
adcs carry x7 x7 x8 carry;
(* adc	x4, x4, xzr                                 #! PC = 0xaaaaaaab7f54 *)
adc x4 x4 0@uint64 carry;
(* stp	x3, x4, [x2, #160]                          #! EA = L0xffffffffe0c8; PC = 0xaaaaaaab7f58 *)
mov L0xffffffffe0c8 x3;
mov L0xffffffffe0d0 x4;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffdde8; Value = 0xfe945393e034712d; PC = 0xaaaaaaab7f5c *)
mov x3 L0xffffffffdde8;
mov x4 L0xffffffffddf0;
(* str	x5, [x2, #176]                              #! EA = L0xffffffffe0d8; PC = 0xaaaaaaab7f60 *)
mov L0xffffffffe0d8 x5;
(* ldr	x5, [x0, #16]                               #! EA = L0xffffffffddf8; Value = 0xff32f8da58031cbe; PC = 0xaaaaaaab7f64 *)
mov x5 L0xffffffffddf8;
(* mul	x16, x3, x10                                #! PC = 0xaaaaaaab7f68 *)
mull Hx3x10 x16 x3 x10;
(* mul	x17, x3, x11                                #! PC = 0xaaaaaaab7f6c *)
mull Hx3x11 x17 x3 x11;
(* umulh	x19, x3, x11                              #! PC = 0xaaaaaaab7f70 *)
mov x19 Hx3x11;
(* umulh	x20, x3, x10                              #! PC = 0xaaaaaaab7f74 *)
mov x20 Hx3x10;
(* mul	x8, x4, x10                                 #! PC = 0xaaaaaaab7f78 *)
mull Hx4x10 x8 x4 x10;
(* umulh	x15, x4, x10                              #! PC = 0xaaaaaaab7f7c *)
mov x15 Hx4x10;
(* adds	x17, x17, x20                              #! PC = 0xaaaaaaab7f80 *)
adds carry x17 x17 x20;
(* adc	x19, x19, xzr                               #! PC = 0xaaaaaaab7f84 *)
adc x19 x19 0@uint64 carry;
(* mul	x30, x4, x11                                #! PC = 0xaaaaaaab7f88 *)
mull Hx4x11 x30 x4 x11;
(* umulh	x20, x4, x11                              #! PC = 0xaaaaaaab7f8c *)
mov x20 Hx4x11;
(* adds	x17, x17, x8                               #! PC = 0xaaaaaaab7f90 *)
adds carry x17 x17 x8;
(* adcs	x19, x19, x15                              #! PC = 0xaaaaaaab7f94 *)
adcs carry x19 x19 x15 carry;
(* adc	x20, x20, xzr                               #! PC = 0xaaaaaaab7f98 *)
adc x20 x20 0@uint64 carry;
(* mul	x8, x3, x12                                 #! PC = 0xaaaaaaab7f9c *)
mull Hx3x12 x8 x3 x12;
(* umulh	x15, x3, x12                              #! PC = 0xaaaaaaab7fa0 *)
mov x15 Hx3x12;
(* adds	x19, x19, x30                              #! PC = 0xaaaaaaab7fa4 *)
adds carry x19 x19 x30;
(* adcs	x20, x20, x15                              #! PC = 0xaaaaaaab7fa8 *)
adcs carry x20 x20 x15 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab7fac *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x30, x5, x10                                #! PC = 0xaaaaaaab7fb0 *)
mull Hx5x10 x30 x5 x10;
(* umulh	x15, x5, x10                              #! PC = 0xaaaaaaab7fb4 *)
mov x15 Hx5x10;
(* adds	x19, x19, x8                               #! PC = 0xaaaaaaab7fb8 *)
adds carry x19 x19 x8;
(* adcs	x20, x20, x15                              #! PC = 0xaaaaaaab7fbc *)
adcs carry x20 x20 x15 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab7fc0 *)
adc x29 x29 0@uint64 carry;
(* mul	x8, x4, x12                                 #! PC = 0xaaaaaaab7fc4 *)
mull Hx4x12 x8 x4 x12;
(* umulh	x15, x4, x12                              #! PC = 0xaaaaaaab7fc8 *)
mov x15 Hx4x12;
(* adds	x19, x19, x30                              #! PC = 0xaaaaaaab7fcc *)
adds carry x19 x19 x30;
(* adcs	x20, x20, x8                               #! PC = 0xaaaaaaab7fd0 *)
adcs carry x20 x20 x8 carry;
(* adcs	x29, x29, x15                              #! PC = 0xaaaaaaab7fd4 *)
adcs carry x29 x29 x15 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab7fd8 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x8, x5, x11                                 #! PC = 0xaaaaaaab7fdc *)
mull Hx5x11 x8 x5 x11;
(* umulh	x15, x5, x11                              #! PC = 0xaaaaaaab7fe0 *)
mov x15 Hx5x11;
(* adds	x20, x20, x8                               #! PC = 0xaaaaaaab7fe4 *)
adds carry x20 x20 x8;
(* adcs	x29, x29, x15                              #! PC = 0xaaaaaaab7fe8 *)
adcs carry x29 x29 x15 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab7fec *)
adc x30 x30 0@uint64 carry;
(* mul	x8, x5, x12                                 #! PC = 0xaaaaaaab7ff0 *)
mull Hx5x12 x8 x5 x12;
(* umulh	x15, x5, x12                              #! PC = 0xaaaaaaab7ff4 *)
mov x15 Hx5x12;
(* adds	x8, x8, x29                                #! PC = 0xaaaaaaab7ff8 *)
adds carry x8 x8 x29;
(* adc	x15, x15, x30                               #! PC = 0xaaaaaaab7ffc *)
adc x15 x15 x30 carry;
(* ldp	x3, x4, [x2, #160]                          #! EA = L0xffffffffe0c8; Value = 0xfcbd86bd2236fbbd; PC = 0xaaaaaaab8000 *)
mov x3 L0xffffffffe0c8;
mov x4 L0xffffffffe0d0;
(* ldr	x5, [x2, #176]                              #! EA = L0xffffffffe0d8; Value = 0xecfa43f590cec67e; PC = 0xaaaaaaab8004 *)
mov x5 L0xffffffffe0d8;
(* mul	x23, x6, x13                                #! PC = 0xaaaaaaab8008 *)
mull Hx6x13 x23 x6 x13;
(* umulh	x26, x6, x13                              #! PC = 0xaaaaaaab800c *)
mov x26 Hx6x13;
(* subs	x3, x3, x16                                #! PC = 0xaaaaaaab8010 *)
subc carry x3 x3 x16;
(* sbcs	x21, x21, x17                              #! PC = 0xaaaaaaab8014 *)
sbcs carry x21 x21 x17 carry;
(* sbcs	x22, x22, x19                              #! PC = 0xaaaaaaab8018 *)
sbcs carry x22 x22 x19 carry;
(* sbcs	x5, x5, x20                                #! PC = 0xaaaaaaab801c *)
sbcs carry x5 x5 x20 carry;
(* sbcs	x14, x14, x8                               #! PC = 0xaaaaaaab8020 *)
sbcs carry x14 x14 x8 carry;
(* sbcs	x7, x7, x15                                #! PC = 0xaaaaaaab8024 *)
sbcs carry x7 x7 x15 carry;
(* sbc	x4, x4, xzr                                 #! PC = 0xaaaaaaab8028 *)
sbcs docare x4 x4 0@uint64 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* stp	x14, x15, [x2, #176]                        #! EA = L0xffffffffe0d8; PC = 0xaaaaaaab802c *)
mov L0xffffffffe0d8 x14;
mov L0xffffffffe0e0 x15;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0xffffffffde68; Value = 0x61430cb7249919ce; PC = 0xaaaaaaab8030 *)
mov x14 L0xffffffffde68;
mov x15 L0xffffffffde70;
(* stp	x7, x8, [x2, #160]                          #! EA = L0xffffffffe0c8; PC = 0xaaaaaaab8034 *)
mov L0xffffffffe0c8 x7;
mov L0xffffffffe0d0 x8;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffde08; Value = 0xcb97d6f162c37bea; PC = 0xaaaaaaab8038 *)
mov x7 L0xffffffffde08;
mov x8 L0xffffffffde10;
(* mul	x24, x6, x14                                #! PC = 0xaaaaaaab803c *)
mull Hx6x14 x24 x6 x14;
(* umulh	x25, x6, x14                              #! PC = 0xaaaaaaab8040 *)
mov x25 Hx6x14;
(* mul	x27, x7, x13                                #! PC = 0xaaaaaaab8044 *)
mull Hx7x13 x27 x7 x13;
(* umulh	x28, x7, x13                              #! PC = 0xaaaaaaab8048 *)
mov x28 Hx7x13;
(* adds	x24, x24, x26                              #! PC = 0xaaaaaaab804c *)
adds carry x24 x24 x26;
(* adc	x25, x25, xzr                               #! PC = 0xaaaaaaab8050 *)
adc x25 x25 0@uint64 carry;
(* mul	x30, x7, x14                                #! PC = 0xaaaaaaab8054 *)
mull Hx7x14 x30 x7 x14;
(* umulh	x26, x7, x14                              #! PC = 0xaaaaaaab8058 *)
mov x26 Hx7x14;
(* adds	x24, x24, x27                              #! PC = 0xaaaaaaab805c *)
adds carry x24 x24 x27;
(* adcs	x25, x25, x28                              #! PC = 0xaaaaaaab8060 *)
adcs carry x25 x25 x28 carry;
(* adc	x26, x26, xzr                               #! PC = 0xaaaaaaab8064 *)
adc x26 x26 0@uint64 carry;
(* mul	x27, x6, x15                                #! PC = 0xaaaaaaab8068 *)
mull Hx6x15 x27 x6 x15;
(* umulh	x28, x6, x15                              #! PC = 0xaaaaaaab806c *)
mov x28 Hx6x15;
(* adds	x25, x25, x30                              #! PC = 0xaaaaaaab8070 *)
adds carry x25 x25 x30;
(* adcs	x26, x26, x28                              #! PC = 0xaaaaaaab8074 *)
adcs carry x26 x26 x28 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab8078 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x30, x8, x13                                #! PC = 0xaaaaaaab807c *)
mull Hx8x13 x30 x8 x13;
(* umulh	x28, x8, x13                              #! PC = 0xaaaaaaab8080 *)
mov x28 Hx8x13;
(* adds	x25, x25, x27                              #! PC = 0xaaaaaaab8084 *)
adds carry x25 x25 x27;
(* adcs	x26, x26, x28                              #! PC = 0xaaaaaaab8088 *)
adcs carry x26 x26 x28 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab808c *)
adc x29 x29 0@uint64 carry;
(* mul	x27, x7, x15                                #! PC = 0xaaaaaaab8090 *)
mull Hx7x15 x27 x7 x15;
(* umulh	x28, x7, x15                              #! PC = 0xaaaaaaab8094 *)
mov x28 Hx7x15;
(* adds	x25, x25, x30                              #! PC = 0xaaaaaaab8098 *)
adds carry x25 x25 x30;
(* adcs	x26, x26, x27                              #! PC = 0xaaaaaaab809c *)
adcs carry x26 x26 x27 carry;
(* adcs	x29, x29, x28                              #! PC = 0xaaaaaaab80a0 *)
adcs carry x29 x29 x28 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab80a4 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x27, x8, x14                                #! PC = 0xaaaaaaab80a8 *)
mull Hx8x14 x27 x8 x14;
(* umulh	x28, x8, x14                              #! PC = 0xaaaaaaab80ac *)
mov x28 Hx8x14;
(* adds	x26, x26, x27                              #! PC = 0xaaaaaaab80b0 *)
adds carry x26 x26 x27;
(* adcs	x29, x29, x28                              #! PC = 0xaaaaaaab80b4 *)
adcs carry x29 x29 x28 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab80b8 *)
adc x30 x30 0@uint64 carry;
(* mul	x27, x8, x15                                #! PC = 0xaaaaaaab80bc *)
mull Hx8x15 x27 x8 x15;
(* umulh	x28, x8, x15                              #! PC = 0xaaaaaaab80c0 *)
mov x28 Hx8x15;
(* adds	x27, x27, x29                              #! PC = 0xaaaaaaab80c4 *)
adds carry x27 x27 x29;
(* adc	x28, x28, x30                               #! PC = 0xaaaaaaab80c8 *)
adc x28 x28 x30 carry;
(* ldp	x7, x8, [x2, #160]                          #! EA = L0xffffffffe0c8; Value = 0x93d0da2a6dbd3431; PC = 0xaaaaaaab80cc *)
mov x7 L0xffffffffe0c8;
mov x8 L0xffffffffe0d0;
(* ldp	x14, x15, [x2, #176]                        #! EA = L0xffffffffe0d8; Value = 0x1a2ceda83195af5f; PC = 0xaaaaaaab80d0 *)
mov x14 L0xffffffffe0d8;
mov x15 L0xffffffffe0e0;
(* subs	x3, x3, x23                                #! PC = 0xaaaaaaab80d4 *)
subc carry x3 x3 x23;
(* sbcs	x21, x21, x24                              #! PC = 0xaaaaaaab80d8 *)
sbcs carry x21 x21 x24 carry;
(* sbcs	x22, x22, x25                              #! PC = 0xaaaaaaab80dc *)
sbcs carry x22 x22 x25 carry;
(* sbcs	x5, x5, x26                                #! PC = 0xaaaaaaab80e0 *)
sbcs carry x5 x5 x26 carry;
(* sbcs	x14, x14, x27                              #! PC = 0xaaaaaaab80e4 *)
sbcs carry x14 x14 x27 carry;
(* sbcs	x7, x7, x28                                #! PC = 0xaaaaaaab80e8 *)
sbcs carry x7 x7 x28 carry;
(* sbc	x4, x4, xzr                                 #! PC = 0xaaaaaaab80ec *)
sbcs docare x4 x4 0@uint64 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* adds	x20, x3, x20                               #! PC = 0xaaaaaaab80f0 *)
adds carry x20 x3 x20;
(* adcs	x21, x21, x8                               #! PC = 0xaaaaaaab80f4 *)
adcs carry x21 x21 x8 carry;
(* adcs	x22, x22, x15                              #! PC = 0xaaaaaaab80f8 *)
adcs carry x22 x22 x15 carry;
(* adcs	x23, x23, x5                               #! PC = 0xaaaaaaab80fc *)
adcs carry x23 x23 x5 carry;
(* adcs	x24, x24, x14                              #! PC = 0xaaaaaaab8100 *)
adcs carry x24 x24 x14 carry;
(* adcs	x25, x25, x7                               #! PC = 0xaaaaaaab8104 *)
adcs carry x25 x25 x7 carry;
(* adcs	x26, x26, x4                               #! PC = 0xaaaaaaab8108 *)
adcs carry x26 x26 x4 carry;
(* adcs	x27, x27, xzr                              #! PC = 0xaaaaaaab810c *)
adcs carry x27 x27 0@uint64 carry;
(* adc	x28, x28, xzr                               #! PC = 0xaaaaaaab8110 *)
adcs docare x28 x28 0@uint64 carry;

(* TODO: cannot carry *)
(* assert true && docare = 0@1; *)
assume docare = 0 && true;

(* ldp	x3, x4, [x2]                                #! EA = L0xffffffffe028; Value = 0x6877a62a99f42a78; PC = 0xaaaaaaab8114 *)
mov x3 L0xffffffffe028;
mov x4 L0xffffffffe030;
(* ldp	x5, x6, [x2, #16]                           #! EA = L0xffffffffe038; Value = 0xa5708f76b6d7ec55; PC = 0xaaaaaaab8118 *)
mov x5 L0xffffffffe038;
mov x6 L0xffffffffe040;
(* ldp	x7, x8, [x2, #32]                           #! EA = L0xffffffffe048; Value = 0xb5bd9ca385c26e72; PC = 0xaaaaaaab811c *)
mov x7 L0xffffffffe048;
mov x8 L0xffffffffe050;
(* ldp	x10, x11, [x2, #48]                         #! EA = L0xffffffffe058; Value = 0xdb80ffed06d42d2a; PC = 0xaaaaaaab8120 *)
mov x10 L0xffffffffe058;
mov x11 L0xffffffffe060;
(* ldp	x12, x13, [x2, #64]                         #! EA = L0xffffffffe068; Value = 0x12c3a74d0225ffa4; PC = 0xaaaaaaab8124 *)
mov x12 L0xffffffffe068;
mov x13 L0xffffffffe070;
(* ldp	x14, x15, [x2, #80]                         #! EA = L0xffffffffe078; Value = 0xd3d0bf0bc1056466; PC = 0xaaaaaaab8128 *)
mov x14 L0xffffffffe078;
mov x15 L0xffffffffe080;
(* subs	x3, x3, x16                                #! PC = 0xaaaaaaab812c *)
subc carry x3 x3 x16;
(* sbcs	x4, x4, x17                                #! PC = 0xaaaaaaab8130 *)
sbcs carry x4 x4 x17 carry;
(* sbcs	x5, x5, x19                                #! PC = 0xaaaaaaab8134 *)
sbcs carry x5 x5 x19 carry;
(* sbcs	x6, x6, x20                                #! PC = 0xaaaaaaab8138 *)
sbcs carry x6 x6 x20 carry;
(* sbcs	x7, x7, x21                                #! PC = 0xaaaaaaab813c *)
sbcs carry x7 x7 x21 carry;
(* sbcs	x8, x8, x22                                #! PC = 0xaaaaaaab8140 *)
sbcs carry x8 x8 x22 carry;
(* sbcs	x10, x10, x23                              #! PC = 0xaaaaaaab8144 *)
sbcs carry x10 x10 x23 carry;
(* sbcs	x11, x11, x24                              #! PC = 0xaaaaaaab8148 *)
sbcs carry x11 x11 x24 carry;
(* sbcs	x12, x12, x25                              #! PC = 0xaaaaaaab814c *)
sbcs carry x12 x12 x25 carry;
(* sbcs	x13, x13, x26                              #! PC = 0xaaaaaaab8150 *)
sbcs carry x13 x13 x26 carry;
(* sbcs	x14, x14, x27                              #! PC = 0xaaaaaaab8154 *)
sbcs carry x14 x14 x27 carry;
(* sbcs	x15, x15, x28                              #! PC = 0xaaaaaaab8158 *)
sbcs carry x15 x15 x28 carry;
(* sbc	x9, x9, xzr                                 #! PC = 0xaaaaaaab815c *)
sbcs docare x9 x9 0@uint64 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* stp	x16, x17, [x2]                              #! EA = L0xffffffffe028; PC = 0xaaaaaaab8160 *)
mov L0xffffffffe028 x16;
mov L0xffffffffe030 x17;
(* stp	x19, x20, [x2, #16]                         #! EA = L0xffffffffe038; PC = 0xaaaaaaab8164 *)
mov L0xffffffffe038 x19;
mov L0xffffffffe040 x20;
(* stp	x21, x22, [x2, #32]                         #! EA = L0xffffffffe048; PC = 0xaaaaaaab8168 *)
mov L0xffffffffe048 x21;
mov L0xffffffffe050 x22;
(* adds	x3, x3, x23                                #! PC = 0xaaaaaaab816c *)
adds carry x3 x3 x23;
(* adcs	x4, x4, x24                                #! PC = 0xaaaaaaab8170 *)
adcs carry x4 x4 x24 carry;
(* adcs	x5, x5, x25                                #! PC = 0xaaaaaaab8174 *)
adcs carry x5 x5 x25 carry;
(* adcs	x6, x6, x26                                #! PC = 0xaaaaaaab8178 *)
adcs carry x6 x6 x26 carry;
(* adcs	x7, x7, x27                                #! PC = 0xaaaaaaab817c *)
adcs carry x7 x7 x27 carry;
(* adcs	x8, x8, x28                                #! PC = 0xaaaaaaab8180 *)
adcs carry x8 x8 x28 carry;
(* stp	x3, x4, [x2, #48]                           #! EA = L0xffffffffe058; PC = 0xaaaaaaab8184 *)
mov L0xffffffffe058 x3;
mov L0xffffffffe060 x4;
(* adc	x3, xzr, xzr                                #! PC = 0xaaaaaaab8188 *)
adc x3 0@uint64 0@uint64 carry;

(* NOTE: store carry *)
ghost storecarry3@bit : storecarry3=carry && storecarry3=carry;

(* stp	x5, x6, [x2, #64]                           #! EA = L0xffffffffe068; PC = 0xaaaaaaab818c *)
mov L0xffffffffe068 x5;
mov L0xffffffffe070 x6;
(* stp	x7, x8, [x2, #80]                           #! EA = L0xffffffffe078; PC = 0xaaaaaaab8190 *)
mov L0xffffffffe078 x7;
mov L0xffffffffe080 x8;
(* stp	x10, x11, [x2, #96]                         #! EA = L0xffffffffe088; PC = 0xaaaaaaab8194 *)
mov L0xffffffffe088 x10;
mov L0xffffffffe090 x11;
(* stp	x12, x13, [x2, #112]                        #! EA = L0xffffffffe098; PC = 0xaaaaaaab8198 *)
mov L0xffffffffe098 x12;
mov L0xffffffffe0a0 x13;
(* stp	x14, x15, [x2, #128]                        #! EA = L0xffffffffe0a8; PC = 0xaaaaaaab819c *)
mov L0xffffffffe0a8 x14;
mov L0xffffffffe0b0 x15;
(* neg	x3, x3                                      #! PC = 0xaaaaaaab81a0 *)
subc dontcare x3 0@uint64 x3;
(* str	x3, [x2, #144]                              #! EA = L0xffffffffe0b8; PC = 0xaaaaaaab81a4 *)
mov L0xffffffffe0b8 x3;
(* ldp	x3, x4, [x0, #48]                           #! EA = L0xffffffffde18; Value = 0x1c55ed5a4791dbb6; PC = 0xaaaaaaab81a8 *)
mov x3 L0xffffffffde18;
mov x4 L0xffffffffde20;
(* ldp	x5, x6, [x0, #64]                           #! EA = L0xffffffffde28; Value = 0x13c55a32f6894c94; PC = 0xaaaaaaab81ac *)
mov x5 L0xffffffffde28;
mov x6 L0xffffffffde30;
(* ldp	x7, x8, [x0, #80]                           #! EA = L0xffffffffde38; Value = 0x06d6a85af0d3454d; PC = 0xaaaaaaab81b0 *)
mov x7 L0xffffffffde38;
mov x8 L0xffffffffde40;
(* ldp	x10, x11, [x1, #48]                         #! EA = L0xffffffffde78; Value = 0xa3787ce074766b0d; PC = 0xaaaaaaab81b4 *)
mov x10 L0xffffffffde78;
mov x11 L0xffffffffde80;
(* ldp	x12, x13, [x1, #64]                         #! EA = L0xffffffffde88; Value = 0x272a9b54b111ff58; PC = 0xaaaaaaab81b8 *)
mov x12 L0xffffffffde88;
mov x13 L0xffffffffde90;
(* ldp	x14, x15, [x1, #80]                         #! EA = L0xffffffffde98; Value = 0x15bd6d7b064f02cf; PC = 0xaaaaaaab81bc *)
mov x14 L0xffffffffde98;
mov x15 L0xffffffffdea0;
(* add	x0, x0, #0x30                               #! PC = 0xaaaaaaab81c0 *)
adds dontcare x0 x0 0x30@uint64;
(* add	x1, x1, #0x30                               #! PC = 0xaaaaaaab81c4 *)
adds dontcare x1 x1 0x30@uint64;
(* adds	x23, x3, x6                                #! PC = 0xaaaaaaab81c8 *)
adds carry x23 x3 x6;
(* adcs	x24, x4, x7                                #! PC = 0xaaaaaaab81cc *)
adcs carry x24 x4 x7 carry;
(* adcs	x25, x5, x8                                #! PC = 0xaaaaaaab81d0 *)
adcs carry x25 x5 x8 carry;
(* adc	x4, xzr, xzr                                #! PC = 0xaaaaaaab81d4 *)
adc x4 0@uint64 0@uint64 carry;
(* adds	x26, x10, x13                              #! PC = 0xaaaaaaab81d8 *)
adds carry x26 x10 x13;
(* adcs	x27, x11, x14                              #! PC = 0xaaaaaaab81dc *)
adcs carry x27 x11 x14 carry;
(* adcs	x28, x12, x15                              #! PC = 0xaaaaaaab81e0 *)
adcs carry x28 x12 x15 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab81e4 *)
adc x29 0@uint64 0@uint64 carry;

ghost x4m9@uint64, x29m9@uint64 :
      and [x4m9=x4, x29m9=x29] && and [x4m9=x4, x29m9=x29];

(* neg	x30, x4                                     #! PC = 0xaaaaaaab81e8 *)
subc dontcare x30 0@uint64 x4;
(* and	x5, x26, x30                                #! PC = 0xaaaaaaab81ec *)
and x5@uint64 x26 x30;
(* and	x14, x27, x30                               #! PC = 0xaaaaaaab81f0 *)
and x14@uint64 x27 x30;
(* and	x7, x28, x30                                #! PC = 0xaaaaaaab81f4 *)
and x7@uint64 x28 x30;
(* neg	x30, x29                                    #! PC = 0xaaaaaaab81f8 *)
subc dontcare x30 0@uint64 x29;
(* and	x3, x23, x30                                #! PC = 0xaaaaaaab81fc *)
and x3@uint64 x23 x30;
(* umulh	x19, x23, x26                             #! PC = 0xaaaaaaab8200 *)
(* NOTE: merged with mul x3, x23, x26 *)
(* mov x19 Hx23x26; *)
(* and	x21, x24, x30                               #! PC = 0xaaaaaaab8204 *)
and x21@uint64 x24 x30;
(* and	x22, x25, x30                               #! PC = 0xaaaaaaab8208 *)
and x22@uint64 x25 x30;

(* NOTE: mask *)
assert true
    && and [x4m9*(1@64-x4m9)=0@64, x29m9*(1@64-x29m9)=0@64,
            limbs 64 [ x5, x14,  x7] =
            uext  x4m9 128 * limbs 64 [x26, x27, x28],
            limbs 64 [ x3, x21, x22] =
            uext x29m9 128 * limbs 64 [x23, x24, x25]];
assume and [x4m9*(1-x4m9)=0, x29m9*(1-x29m9)=0,
            limbs 64 [ x5, x14,  x7] =  x4m9 * limbs 64 [x26, x27, x28],
            limbs 64 [ x3, x21, x22] = x29m9 * limbs 64 [x23, x24, x25]]
    && true;

(* and	x4, x4, x29                                 #! PC = 0xaaaaaaab820c *)
and x4@uint64 x4 x29;

(* NOTE: combined carries *)
assert true && x4=x4m9*x29m9;
assume x4=x4m9*x29m9 && true;

(* adds	x5, x5, x3                                 #! PC = 0xaaaaaaab8210 *)
adds carry x5 x5 x3;
(* adcs	x14, x14, x21                              #! PC = 0xaaaaaaab8214 *)
adcs carry x14 x14 x21 carry;
(* mul	x3, x23, x26                                #! PC = 0xaaaaaaab8218 *)
mull x19 x3 x23 x26;
(* mul	x21, x23, x27                               #! PC = 0xaaaaaaab821c *)
mull Hx23x27 x21 x23 x27;
(* adcs	x7, x7, x22                                #! PC = 0xaaaaaaab8220 *)
adcs carry x7 x7 x22 carry;
(* umulh	x22, x23, x27                             #! PC = 0xaaaaaaab8224 *)
mov x22 Hx23x27;
(* adc	x4, x4, xzr                                 #! PC = 0xaaaaaaab8228 *)
adc x4 x4 0@uint64 carry;
(* mul	x20, x24, x26                               #! PC = 0xaaaaaaab822c *)
mull Hx24x26 x20 x24 x26;
(* umulh	x8, x24, x26                              #! PC = 0xaaaaaaab8230 *)
mov x8 Hx24x26;
(* adds	x21, x21, x19                              #! PC = 0xaaaaaaab8234 *)
adds carry x21 x21 x19;
(* adc	x22, x22, xzr                               #! PC = 0xaaaaaaab8238 *)
adc x22 x22 0@uint64 carry;
(* mul	x30, x24, x27                               #! PC = 0xaaaaaaab823c *)
mull Hx24x27 x30 x24 x27;
(* umulh	x19, x24, x27                             #! PC = 0xaaaaaaab8240 *)
mov x19 Hx24x27;
(* adds	x21, x21, x20                              #! PC = 0xaaaaaaab8244 *)
adds carry x21 x21 x20;
(* adcs	x22, x22, x8                               #! PC = 0xaaaaaaab8248 *)
adcs carry x22 x22 x8 carry;
(* adc	x19, x19, xzr                               #! PC = 0xaaaaaaab824c *)
adc x19 x19 0@uint64 carry;
(* mul	x20, x23, x28                               #! PC = 0xaaaaaaab8250 *)
mull Hx23x28 x20 x23 x28;
(* umulh	x8, x23, x28                              #! PC = 0xaaaaaaab8254 *)
mov x8 Hx23x28;
(* adds	x22, x22, x30                              #! PC = 0xaaaaaaab8258 *)
adds carry x22 x22 x30;
(* adcs	x19, x19, x8                               #! PC = 0xaaaaaaab825c *)
adcs carry x19 x19 x8 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab8260 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x30, x25, x26                               #! PC = 0xaaaaaaab8264 *)
mull Hx25x26 x30 x25 x26;
(* umulh	x8, x25, x26                              #! PC = 0xaaaaaaab8268 *)
mov x8 Hx25x26;
(* adds	x22, x22, x20                              #! PC = 0xaaaaaaab826c *)
adds carry x22 x22 x20;
(* adcs	x19, x19, x8                               #! PC = 0xaaaaaaab8270 *)
adcs carry x19 x19 x8 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8274 *)
adc x29 x29 0@uint64 carry;
(* mul	x20, x24, x28                               #! PC = 0xaaaaaaab8278 *)
mull Hx24x28 x20 x24 x28;
(* umulh	x8, x24, x28                              #! PC = 0xaaaaaaab827c *)
mov x8 Hx24x28;
(* adds	x22, x22, x30                              #! PC = 0xaaaaaaab8280 *)
adds carry x22 x22 x30;
(* adcs	x19, x19, x20                              #! PC = 0xaaaaaaab8284 *)
adcs carry x19 x19 x20 carry;
(* adcs	x29, x29, x8                               #! PC = 0xaaaaaaab8288 *)
adcs carry x29 x29 x8 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab828c *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x20, x25, x27                               #! PC = 0xaaaaaaab8290 *)
mull Hx25x27 x20 x25 x27;
(* umulh	x8, x25, x27                              #! PC = 0xaaaaaaab8294 *)
mov x8 Hx25x27;
(* adds	x19, x19, x20                              #! PC = 0xaaaaaaab8298 *)
adds carry x19 x19 x20;
(* adcs	x29, x29, x8                               #! PC = 0xaaaaaaab829c *)
adcs carry x29 x29 x8 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab82a0 *)
adc x30 x30 0@uint64 carry;
(* mul	x20, x25, x28                               #! PC = 0xaaaaaaab82a4 *)
mull Hx25x28 x20 x25 x28;
(* umulh	x8, x25, x28                              #! PC = 0xaaaaaaab82a8 *)
mov x8 Hx25x28;
(* adds	x20, x20, x29                              #! PC = 0xaaaaaaab82ac *)
adds carry x20 x20 x29;
(* adc	x8, x8, x30                                 #! PC = 0xaaaaaaab82b0 *)
adc x8 x8 x30 carry;
(* adds	x5, x5, x19                                #! PC = 0xaaaaaaab82b4 *)
adds carry x5 x5 x19;
(* adcs	x14, x14, x20                              #! PC = 0xaaaaaaab82b8 *)
adcs carry x14 x14 x20 carry;
(* adcs	x7, x7, x8                                 #! PC = 0xaaaaaaab82bc *)
adcs carry x7 x7 x8 carry;
(* adc	x4, x4, xzr                                 #! PC = 0xaaaaaaab82c0 *)
adc x4 x4 0@uint64 carry;
(* stp	x3, x4, [x2, #160]                          #! EA = L0xffffffffe0c8; PC = 0xaaaaaaab82c4 *)
mov L0xffffffffe0c8 x3;
mov L0xffffffffe0d0 x4;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffde18; Value = 0x1c55ed5a4791dbb6; PC = 0xaaaaaaab82c8 *)
mov x3 L0xffffffffde18;
mov x4 L0xffffffffde20;
(* str	x5, [x2, #176]                              #! EA = L0xffffffffe0d8; PC = 0xaaaaaaab82cc *)
mov L0xffffffffe0d8 x5;
(* ldr	x5, [x0, #16]                               #! EA = L0xffffffffde28; Value = 0x13c55a32f6894c94; PC = 0xaaaaaaab82d0 *)
mov x5 L0xffffffffde28;
(* mul	x16, x3, x10                                #! PC = 0xaaaaaaab82d4 *)
mull Hx3x10 x16 x3 x10;
(* mul	x17, x3, x11                                #! PC = 0xaaaaaaab82d8 *)
mull Hx3x11 x17 x3 x11;
(* umulh	x19, x3, x11                              #! PC = 0xaaaaaaab82dc *)
mov x19 Hx3x11;
(* umulh	x20, x3, x10                              #! PC = 0xaaaaaaab82e0 *)
mov x20 Hx3x10;
(* mul	x8, x4, x10                                 #! PC = 0xaaaaaaab82e4 *)
mull Hx4x10 x8 x4 x10;
(* umulh	x15, x4, x10                              #! PC = 0xaaaaaaab82e8 *)
mov x15 Hx4x10;
(* adds	x17, x17, x20                              #! PC = 0xaaaaaaab82ec *)
adds carry x17 x17 x20;
(* adc	x19, x19, xzr                               #! PC = 0xaaaaaaab82f0 *)
adc x19 x19 0@uint64 carry;
(* mul	x30, x4, x11                                #! PC = 0xaaaaaaab82f4 *)
mull Hx4x11 x30 x4 x11;
(* umulh	x20, x4, x11                              #! PC = 0xaaaaaaab82f8 *)
mov x20 Hx4x11;
(* adds	x17, x17, x8                               #! PC = 0xaaaaaaab82fc *)
adds carry x17 x17 x8;
(* adcs	x19, x19, x15                              #! PC = 0xaaaaaaab8300 *)
adcs carry x19 x19 x15 carry;
(* adc	x20, x20, xzr                               #! PC = 0xaaaaaaab8304 *)
adc x20 x20 0@uint64 carry;
(* mul	x8, x3, x12                                 #! PC = 0xaaaaaaab8308 *)
mull Hx3x12 x8 x3 x12;
(* umulh	x15, x3, x12                              #! PC = 0xaaaaaaab830c *)
mov x15 Hx3x12;
(* adds	x19, x19, x30                              #! PC = 0xaaaaaaab8310 *)
adds carry x19 x19 x30;
(* adcs	x20, x20, x15                              #! PC = 0xaaaaaaab8314 *)
adcs carry x20 x20 x15 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab8318 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x30, x5, x10                                #! PC = 0xaaaaaaab831c *)
mull Hx5x10 x30 x5 x10;
(* umulh	x15, x5, x10                              #! PC = 0xaaaaaaab8320 *)
mov x15 Hx5x10;
(* adds	x19, x19, x8                               #! PC = 0xaaaaaaab8324 *)
adds carry x19 x19 x8;
(* adcs	x20, x20, x15                              #! PC = 0xaaaaaaab8328 *)
adcs carry x20 x20 x15 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab832c *)
adc x29 x29 0@uint64 carry;
(* mul	x8, x4, x12                                 #! PC = 0xaaaaaaab8330 *)
mull Hx4x12 x8 x4 x12;
(* umulh	x15, x4, x12                              #! PC = 0xaaaaaaab8334 *)
mov x15 Hx4x12;
(* adds	x19, x19, x30                              #! PC = 0xaaaaaaab8338 *)
adds carry x19 x19 x30;
(* adcs	x20, x20, x8                               #! PC = 0xaaaaaaab833c *)
adcs carry x20 x20 x8 carry;
(* adcs	x29, x29, x15                              #! PC = 0xaaaaaaab8340 *)
adcs carry x29 x29 x15 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab8344 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x8, x5, x11                                 #! PC = 0xaaaaaaab8348 *)
mull Hx5x11 x8 x5 x11;
(* umulh	x15, x5, x11                              #! PC = 0xaaaaaaab834c *)
mov x15 Hx5x11;
(* adds	x20, x20, x8                               #! PC = 0xaaaaaaab8350 *)
adds carry x20 x20 x8;
(* adcs	x29, x29, x15                              #! PC = 0xaaaaaaab8354 *)
adcs carry x29 x29 x15 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab8358 *)
adc x30 x30 0@uint64 carry;
(* mul	x8, x5, x12                                 #! PC = 0xaaaaaaab835c *)
mull Hx5x12 x8 x5 x12;
(* umulh	x15, x5, x12                              #! PC = 0xaaaaaaab8360 *)
mov x15 Hx5x12;
(* adds	x8, x8, x29                                #! PC = 0xaaaaaaab8364 *)
adds carry x8 x8 x29;
(* adc	x15, x15, x30                               #! PC = 0xaaaaaaab8368 *)
adc x15 x15 x30 carry;
(* ldp	x3, x4, [x2, #160]                          #! EA = L0xffffffffe0c8; Value = 0xd99d07141af4262c; PC = 0xaaaaaaab836c *)
mov x3 L0xffffffffe0c8;
mov x4 L0xffffffffe0d0;
(* ldr	x5, [x2, #176]                              #! EA = L0xffffffffe0d8; Value = 0x9a8d9f854dabf920; PC = 0xaaaaaaab8370 *)
mov x5 L0xffffffffe0d8;
(* mul	x23, x6, x13                                #! PC = 0xaaaaaaab8374 *)
mull Hx6x13 x23 x6 x13;
(* umulh	x26, x6, x13                              #! PC = 0xaaaaaaab8378 *)
mov x26 Hx6x13;
(* subs	x3, x3, x16                                #! PC = 0xaaaaaaab837c *)
subc carry x3 x3 x16;
(* sbcs	x21, x21, x17                              #! PC = 0xaaaaaaab8380 *)
sbcs carry x21 x21 x17 carry;
(* sbcs	x22, x22, x19                              #! PC = 0xaaaaaaab8384 *)
sbcs carry x22 x22 x19 carry;
(* sbcs	x5, x5, x20                                #! PC = 0xaaaaaaab8388 *)
sbcs carry x5 x5 x20 carry;
(* sbcs	x14, x14, x8                               #! PC = 0xaaaaaaab838c *)
sbcs carry x14 x14 x8 carry;
(* sbcs	x7, x7, x15                                #! PC = 0xaaaaaaab8390 *)
sbcs carry x7 x7 x15 carry;
(* sbc	x4, x4, xzr                                 #! PC = 0xaaaaaaab8394 *)
sbcs docare x4 x4 0@uint64 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* stp	x14, x15, [x2, #176]                        #! EA = L0xffffffffe0d8; PC = 0xaaaaaaab8398 *)
mov L0xffffffffe0d8 x14;
mov L0xffffffffe0e0 x15;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0xffffffffde98; Value = 0x15bd6d7b064f02cf; PC = 0xaaaaaaab839c *)
mov x14 L0xffffffffde98;
mov x15 L0xffffffffdea0;
(* stp	x7, x8, [x2, #160]                          #! EA = L0xffffffffe0c8; PC = 0xaaaaaaab83a0 *)
mov L0xffffffffe0c8 x7;
mov L0xffffffffe0d0 x8;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffde38; Value = 0x06d6a85af0d3454d; PC = 0xaaaaaaab83a4 *)
mov x7 L0xffffffffde38;
mov x8 L0xffffffffde40;
(* mul	x24, x6, x14                                #! PC = 0xaaaaaaab83a8 *)
mull Hx6x14 x24 x6 x14;
(* umulh	x25, x6, x14                              #! PC = 0xaaaaaaab83ac *)
mov x25 Hx6x14;
(* mul	x27, x7, x13                                #! PC = 0xaaaaaaab83b0 *)
mull Hx7x13 x27 x7 x13;
(* umulh	x28, x7, x13                              #! PC = 0xaaaaaaab83b4 *)
mov x28 Hx7x13;
(* adds	x24, x24, x26                              #! PC = 0xaaaaaaab83b8 *)
adds carry x24 x24 x26;
(* adc	x25, x25, xzr                               #! PC = 0xaaaaaaab83bc *)
adc x25 x25 0@uint64 carry;
(* mul	x30, x7, x14                                #! PC = 0xaaaaaaab83c0 *)
mull Hx7x14 x30 x7 x14;
(* umulh	x26, x7, x14                              #! PC = 0xaaaaaaab83c4 *)
mov x26 Hx7x14;
(* adds	x24, x24, x27                              #! PC = 0xaaaaaaab83c8 *)
adds carry x24 x24 x27;
(* adcs	x25, x25, x28                              #! PC = 0xaaaaaaab83cc *)
adcs carry x25 x25 x28 carry;
(* adc	x26, x26, xzr                               #! PC = 0xaaaaaaab83d0 *)
adc x26 x26 0@uint64 carry;
(* mul	x27, x6, x15                                #! PC = 0xaaaaaaab83d4 *)
mull Hx6x15 x27 x6 x15;
(* umulh	x28, x6, x15                              #! PC = 0xaaaaaaab83d8 *)
mov x28 Hx6x15;
(* adds	x25, x25, x30                              #! PC = 0xaaaaaaab83dc *)
adds carry x25 x25 x30;
(* adcs	x26, x26, x28                              #! PC = 0xaaaaaaab83e0 *)
adcs carry x26 x26 x28 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab83e4 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x30, x8, x13                                #! PC = 0xaaaaaaab83e8 *)
mull Hx8x13 x30 x8 x13;
(* umulh	x28, x8, x13                              #! PC = 0xaaaaaaab83ec *)
mov x28 Hx8x13;
(* adds	x25, x25, x27                              #! PC = 0xaaaaaaab83f0 *)
adds carry x25 x25 x27;
(* adcs	x26, x26, x28                              #! PC = 0xaaaaaaab83f4 *)
adcs carry x26 x26 x28 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab83f8 *)
adc x29 x29 0@uint64 carry;
(* mul	x27, x7, x15                                #! PC = 0xaaaaaaab83fc *)
mull Hx7x15 x27 x7 x15;
(* umulh	x28, x7, x15                              #! PC = 0xaaaaaaab8400 *)
mov x28 Hx7x15;
(* adds	x25, x25, x30                              #! PC = 0xaaaaaaab8404 *)
adds carry x25 x25 x30;
(* adcs	x26, x26, x27                              #! PC = 0xaaaaaaab8408 *)
adcs carry x26 x26 x27 carry;
(* adcs	x29, x29, x28                              #! PC = 0xaaaaaaab840c *)
adcs carry x29 x29 x28 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab8410 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x27, x8, x14                                #! PC = 0xaaaaaaab8414 *)
mull Hx8x14 x27 x8 x14;
(* umulh	x28, x8, x14                              #! PC = 0xaaaaaaab8418 *)
mov x28 Hx8x14;
(* adds	x26, x26, x27                              #! PC = 0xaaaaaaab841c *)
adds carry x26 x26 x27;
(* adcs	x29, x29, x28                              #! PC = 0xaaaaaaab8420 *)
adcs carry x29 x29 x28 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab8424 *)
adc x30 x30 0@uint64 carry;
(* mul	x27, x8, x15                                #! PC = 0xaaaaaaab8428 *)
mull Hx8x15 x27 x8 x15;
(* umulh	x28, x8, x15                              #! PC = 0xaaaaaaab842c *)
mov x28 Hx8x15;
(* adds	x27, x27, x29                              #! PC = 0xaaaaaaab8430 *)
adds carry x27 x27 x29;
(* adc	x28, x28, x30                               #! PC = 0xaaaaaaab8434 *)
adc x28 x28 x30 carry;
(* ldp	x7, x8, [x2, #160]                          #! EA = L0xffffffffe0c8; Value = 0x000022041ba03cc7; PC = 0xaaaaaaab8438 *)
mov x7 L0xffffffffe0c8;
mov x8 L0xffffffffe0d0;
(* ldp	x14, x15, [x2, #176]                        #! EA = L0xffffffffe0d8; Value = 0x533978566d1323b4; PC = 0xaaaaaaab843c *)
mov x14 L0xffffffffe0d8;
mov x15 L0xffffffffe0e0;
(* subs	x3, x3, x23                                #! PC = 0xaaaaaaab8440 *)
subc carry x3 x3 x23;
(* sbcs	x21, x21, x24                              #! PC = 0xaaaaaaab8444 *)
sbcs carry x21 x21 x24 carry;
(* sbcs	x22, x22, x25                              #! PC = 0xaaaaaaab8448 *)
sbcs carry x22 x22 x25 carry;
(* sbcs	x5, x5, x26                                #! PC = 0xaaaaaaab844c *)
sbcs carry x5 x5 x26 carry;
(* sbcs	x14, x14, x27                              #! PC = 0xaaaaaaab8450 *)
sbcs carry x14 x14 x27 carry;
(* sbcs	x7, x7, x28                                #! PC = 0xaaaaaaab8454 *)
sbcs carry x7 x7 x28 carry;
(* sbc	x4, x4, xzr                                 #! PC = 0xaaaaaaab8458 *)
sbcs docare x4 x4 0@uint64 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* adds	x20, x3, x20                               #! PC = 0xaaaaaaab845c *)
adds carry x20 x3 x20;
(* adcs	x21, x21, x8                               #! PC = 0xaaaaaaab8460 *)
adcs carry x21 x21 x8 carry;
(* adcs	x22, x22, x15                              #! PC = 0xaaaaaaab8464 *)
adcs carry x22 x22 x15 carry;
(* adcs	x23, x23, x5                               #! PC = 0xaaaaaaab8468 *)
adcs carry x23 x23 x5 carry;
(* adcs	x24, x24, x14                              #! PC = 0xaaaaaaab846c *)
adcs carry x24 x24 x14 carry;
(* adcs	x25, x25, x7                               #! PC = 0xaaaaaaab8470 *)
adcs carry x25 x25 x7 carry;
(* adcs	x26, x26, x4                               #! PC = 0xaaaaaaab8474 *)
adcs carry x26 x26 x4 carry;
(* adcs	x27, x27, xzr                              #! PC = 0xaaaaaaab8478 *)
adcs carry x27 x27 0@uint64 carry;
(* adc	x28, x28, xzr                               #! PC = 0xaaaaaaab847c *)
adcs docare x28 x28 0@uint64 carry;

(* TODO: cannot carry *)
(* assert true && docare = 0@1; *)
assume docare = 0 && true;

(* ldp	x3, x4, [x2, #48]                           #! EA = L0xffffffffe058; Value = 0xb46c0f90e5ae9ae1; PC = 0xaaaaaaab8480 *)
mov x3 L0xffffffffe058;
mov x4 L0xffffffffe060;
(* ldp	x5, x6, [x2, #64]                           #! EA = L0xffffffffe068; Value = 0x6bb742da8a25b1ae; PC = 0xaaaaaaab8484 *)
mov x5 L0xffffffffe068;
mov x6 L0xffffffffe070;
(* ldp	x7, x8, [x2, #80]                           #! EA = L0xffffffffe078; Value = 0x4de92f93aa02cdd2; PC = 0xaaaaaaab8488 *)
mov x7 L0xffffffffe078;
mov x8 L0xffffffffe080;
(* ldp	x10, x11, [x2, #96]                         #! EA = L0xffffffffe088; Value = 0x76738a9fb9c0f302; PC = 0xaaaaaaab848c *)
mov x10 L0xffffffffe088;
mov x11 L0xffffffffe090;
(* ldp	x12, x13, [x2, #112]                        #! EA = L0xffffffffe098; Value = 0xa5a09205f731da18; PC = 0xaaaaaaab8490 *)
mov x12 L0xffffffffe098;
mov x13 L0xffffffffe0a0;
(* ldp	x14, x15, [x2, #128]                        #! EA = L0xffffffffe0a8; Value = 0x4c1f047c105030ed; PC = 0xaaaaaaab8494 *)
mov x14 L0xffffffffe0a8;
mov x15 L0xffffffffe0b0;
(* subs	x3, x3, x16                                #! PC = 0xaaaaaaab8498 *)
subc carry x3 x3 x16;
(* sbcs	x4, x4, x17                                #! PC = 0xaaaaaaab849c *)
sbcs carry x4 x4 x17 carry;
(* sbcs	x5, x5, x19                                #! PC = 0xaaaaaaab84a0 *)
sbcs carry x5 x5 x19 carry;
(* sbcs	x6, x6, x20                                #! PC = 0xaaaaaaab84a4 *)
sbcs carry x6 x6 x20 carry;
(* sbcs	x7, x7, x21                                #! PC = 0xaaaaaaab84a8 *)
sbcs carry x7 x7 x21 carry;
(* sbcs	x8, x8, x22                                #! PC = 0xaaaaaaab84ac *)
sbcs carry x8 x8 x22 carry;
(* sbcs	x10, x10, x23                              #! PC = 0xaaaaaaab84b0 *)
sbcs carry x10 x10 x23 carry;
(* sbcs	x11, x11, x24                              #! PC = 0xaaaaaaab84b4 *)
sbcs carry x11 x11 x24 carry;
(* sbcs	x12, x12, x25                              #! PC = 0xaaaaaaab84b8 *)
sbcs carry x12 x12 x25 carry;
(* sbcs	x13, x13, x26                              #! PC = 0xaaaaaaab84bc *)
sbcs carry x13 x13 x26 carry;
(* sbcs	x14, x14, x27                              #! PC = 0xaaaaaaab84c0 *)
sbcs carry x14 x14 x27 carry;
(* sbcs	x15, x15, x28                              #! PC = 0xaaaaaaab84c4 *)
sbcs carry x15 x15 x28 carry;
(* sbc	x9, x9, xzr                                 #! PC = 0xaaaaaaab84c8 *)
sbcs docare x9 x9 0@uint64 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* ldr	x1, [x2, #144]                              #! EA = L0xffffffffe0b8; Value = 0x0000000000000000; PC = 0xaaaaaaab84cc *)
mov x1 L0xffffffffe0b8;
(* stp	x3, x4, [x2, #48]                           #! EA = L0xffffffffe058; PC = 0xaaaaaaab84d0 *)
mov L0xffffffffe058 x3;
mov L0xffffffffe060 x4;
(* stp	x5, x6, [x2, #64]                           #! EA = L0xffffffffe068; PC = 0xaaaaaaab84d4 *)
mov L0xffffffffe068 x5;
mov L0xffffffffe070 x6;
(* adds	x1, x1, #0x1                               #! PC = 0xaaaaaaab84d8 *)
adds carry x1 x1 0x1@uint64;

(* NOTE: restore carry *)
assert true && carry=storecarry3;
assume carry=storecarry3 && true;

(* stp	x7, x8, [x2, #80]                           #! EA = L0xffffffffe078; PC = 0xaaaaaaab84dc *)
mov L0xffffffffe078 x7;
mov L0xffffffffe080 x8;
(* adcs	x10, x10, x16                              #! PC = 0xaaaaaaab84e0 *)
adcs carry x10 x10 x16 carry;
(* adcs	x11, x11, x17                              #! PC = 0xaaaaaaab84e4 *)
adcs carry x11 x11 x17 carry;
(* adcs	x12, x12, x19                              #! PC = 0xaaaaaaab84e8 *)
adcs carry x12 x12 x19 carry;
(* adcs	x13, x13, x20                              #! PC = 0xaaaaaaab84ec *)
adcs carry x13 x13 x20 carry;
(* adcs	x14, x14, x21                              #! PC = 0xaaaaaaab84f0 *)
adcs carry x14 x14 x21 carry;
(* adcs	x15, x15, x22                              #! PC = 0xaaaaaaab84f4 *)
adcs carry x15 x15 x22 carry;
(* adcs	x23, x23, x9                               #! PC = 0xaaaaaaab84f8 *)
adcs carry x23 x23 x9 carry;
(* adcs	x24, x24, xzr                              #! PC = 0xaaaaaaab84fc *)
adcs carry x24 x24 0@uint64 carry;
(* adcs	x25, x25, xzr                              #! PC = 0xaaaaaaab8500 *)
adcs carry x25 x25 0@uint64 carry;
(* adcs	x26, x26, xzr                              #! PC = 0xaaaaaaab8504 *)
adcs carry x26 x26 0@uint64 carry;
(* adcs	x27, x27, xzr                              #! PC = 0xaaaaaaab8508 *)
adcs carry x27 x27 0@uint64 carry;
(* adc	x28, x28, xzr                               #! PC = 0xaaaaaaab850c *)
adcs docare x28 x28 0@uint64 carry;

(* TODO: cannot carry *)
(* assert true && docare = 0@1; *)
assume docare = 0 && true;

(* stp	x10, x11, [x2, #96]                         #! EA = L0xffffffffe088; PC = 0xaaaaaaab8510 *)
mov L0xffffffffe088 x10;
mov L0xffffffffe090 x11;
(* stp	x12, x13, [x2, #112]                        #! EA = L0xffffffffe098; PC = 0xaaaaaaab8514 *)
mov L0xffffffffe098 x12;
mov L0xffffffffe0a0 x13;
(* stp	x14, x15, [x2, #128]                        #! EA = L0xffffffffe0a8; PC = 0xaaaaaaab8518 *)
mov L0xffffffffe0a8 x14;
mov L0xffffffffe0b0 x15;
(* stp	x23, x24, [x2, #144]                        #! EA = L0xffffffffe0b8; PC = 0xaaaaaaab851c *)
mov L0xffffffffe0b8 x23;
mov L0xffffffffe0c0 x24;
(* stp	x25, x26, [x2, #160]                        #! EA = L0xffffffffe0c8; PC = 0xaaaaaaab8520 *)
mov L0xffffffffe0c8 x25;
mov L0xffffffffe0d0 x26;
(* stp	x27, x28, [x2, #176]                        #! EA = L0xffffffffe0d8; PC = 0xaaaaaaab8524 *)
mov L0xffffffffe0d8 x27;
mov L0xffffffffe0e0 x28;
(* ldp	x19, x20, [sp]                              #! EA = L0xffffffffdd20; Value = 0x0000ffffffffdea8; PC = 0xaaaaaaab8528 *)
mov x19 L0xffffffffdd20;
mov x20 L0xffffffffdd28;
(* ldp	x21, x22, [sp, #16]                         #! EA = L0xffffffffdd30; Value = 0x0000ffffffffdf68; PC = 0xaaaaaaab852c *)
mov x21 L0xffffffffdd30;
mov x22 L0xffffffffdd38;
(* ldp	x23, x24, [sp, #32]                         #! EA = L0xffffffffdd40; Value = 0x0000ffffffffdde8; PC = 0xaaaaaaab8530 *)
mov x23 L0xffffffffdd40;
mov x24 L0xffffffffdd48;
(* ldp	x25, x26, [sp, #48]                         #! EA = L0xffffffffdd50; Value = 0x0000ffffffffe5f8; PC = 0xaaaaaaab8534 *)
mov x25 L0xffffffffdd50;
mov x26 L0xffffffffdd58;
(* ldp	x27, x28, [sp, #64]                         #! EA = L0xffffffffdd60; Value = 0x0000ffffffffe718; PC = 0xaaaaaaab8538 *)
mov x27 L0xffffffffdd60;
mov x28 L0xffffffffdd68;
(* ldp	x29, x30, [sp, #80]                         #! EA = L0xffffffffdd70; Value = 0x0000ffffffffdd80; PC = 0xaaaaaaab853c *)
mov x29 L0xffffffffdd70;
mov x30 L0xffffffffdd78;
(* add	sp, sp, #0x60                               #! PC = 0xaaaaaaab8540 *)
adds dontcare sp sp 0x60@uint64;
(* #! <- SP = 0xffffffffdd80 *)
#! 0xffffffffdd80 = 0xffffffffdd80;
(* #ret                                            #! PC = 0xaaaaaaab8544 *)
#ret                                            #! 0xaaaaaaab8544 = 0xaaaaaaab8544;

(* CUT 4 *)
(* NOTE: summary *)
cut limbs 64 [L0xffffffffe028, L0xffffffffe030, L0xffffffffe038,
              L0xffffffffe040, L0xffffffffe048, L0xffffffffe050,
              L0xffffffffe058, L0xffffffffe060, L0xffffffffe068,
              L0xffffffffe070, L0xffffffffe078, L0xffffffffe080,
              L0xffffffffe088, L0xffffffffe090, L0xffffffffe098,
              L0xffffffffe0a0, L0xffffffffe0a8, L0xffffffffe0b0,
              L0xffffffffe0b8, L0xffffffffe0c0, L0xffffffffe0c8,
              L0xffffffffe0d0, L0xffffffffe0d8, L0xffffffffe0e0] =
    (limbs 64 [ar0, ar1, ar2, ar3, ar4, ar5, ar6, ar7, ar8, ar9, ara, arb] +
     limbs 64 [ai0, ai1, ai2, ai3, ai4, ai5, ai6, ai7, ai8, ai9, aia, aib]) *
    (limbs 64 [br0, br1, br2, br3, br4, br5, br6, br7, br8, br9, bra, brb] +
     limbs 64 [bi0, bi1, bi2, bi3, bi4, bi5, bi6, bi7, bi8, bi9, bia, bib])
    prove with [ cuts [ 0, 1 ] ]
 && limbs 64 [L0xffffffffe028, L0xffffffffe030, L0xffffffffe038,
              L0xffffffffe040, L0xffffffffe048, L0xffffffffe050,
              L0xffffffffe058, L0xffffffffe060, L0xffffffffe068,
              L0xffffffffe070, L0xffffffffe078, L0xffffffffe080,
              L0xffffffffe088, L0xffffffffe090, L0xffffffffe098,
              L0xffffffffe0a0, L0xffffffffe0a8, L0xffffffffe0b0,
              L0xffffffffe0b8, L0xffffffffe0c0, L0xffffffffe0c8,
              L0xffffffffe0d0, L0xffffffffe0d8, L0xffffffffe0e0] <u
    (2**1506)@1536
    prove with [ precondition, cuts [ 0, 1 ] ];

(* mov	x2, x20                                     #! PC = 0xaaaaaaaae544 *)
mov x2 x20;
(* mov	x1, x21                                     #! PC = 0xaaaaaaaae548 *)
mov x1 x21;
(* mov	x0, x19                                     #! PC = 0xaaaaaaaae54c *)
mov x0 x19;
(* #bl	0xaaaaaaab8fd4 <mp_dblsub751x2_asm>         #! PC = 0xaaaaaaaae550 *)
#bl	0xaaaaaaab8fd4 <mp_dblsub751x2_asm>         #! 0xaaaaaaaae550 = 0xaaaaaaaae550;

(* TODO: (AR+AI)*(BR+BI) >= AR*BR + AI*BI *)
assume true
    && limbs 64 [L0xffffffffe028, L0xffffffffe030, L0xffffffffe038,
                 L0xffffffffe040, L0xffffffffe048, L0xffffffffe050,
                 L0xffffffffe058, L0xffffffffe060, L0xffffffffe068,
                 L0xffffffffe070, L0xffffffffe078, L0xffffffffe080,
                 L0xffffffffe088, L0xffffffffe090, L0xffffffffe098,
                 L0xffffffffe0a0, L0xffffffffe0a8, L0xffffffffe0b0,
                 L0xffffffffe0b8, L0xffffffffe0c0, L0xffffffffe0c8,
                 L0xffffffffe0d0, L0xffffffffe0d8, L0xffffffffe0e0] >=u
       limbs 64 [L0xffffffffdea8, L0xffffffffdeb0, L0xffffffffdeb8,
                 L0xffffffffdec0, L0xffffffffdec8, L0xffffffffded0,
                 L0xffffffffded8, L0xffffffffdee0, L0xffffffffdee8,
                 L0xffffffffdef0, L0xffffffffdef8, L0xffffffffdf00,
                 L0xffffffffdf08, L0xffffffffdf10, L0xffffffffdf18,
                 L0xffffffffdf20, L0xffffffffdf28, L0xffffffffdf30,
                 L0xffffffffdf38, L0xffffffffdf40, L0xffffffffdf48,
                 L0xffffffffdf50, L0xffffffffdf58, L0xffffffffdf60] +
       limbs 64 [L0xffffffffdf68, L0xffffffffdf70, L0xffffffffdf78,
                 L0xffffffffdf80, L0xffffffffdf88, L0xffffffffdf90,
                 L0xffffffffdf98, L0xffffffffdfa0, L0xffffffffdfa8,
                 L0xffffffffdfb0, L0xffffffffdfb8, L0xffffffffdfc0,
                 L0xffffffffdfc8, L0xffffffffdfd0, L0xffffffffdfd8,
                 L0xffffffffdfe0, L0xffffffffdfe8, L0xffffffffdff0,
                 L0xffffffffdff8, L0xffffffffe000, L0xffffffffe008,
                 L0xffffffffe010, L0xffffffffe018, L0xffffffffe020];
       
(* #! -> SP = 0xffffffffdd80 *)
#! 0xffffffffdd80 = 0xffffffffdd80;
(* sub	sp, sp, #0x60                               #! PC = 0xaaaaaaab8fd4 *)
subc dontcare sp sp 0x60@uint64;
(* stp	x19, x20, [sp]                              #! EA = L0xffffffffdd20; PC = 0xaaaaaaab8fd8 *)
mov L0xffffffffdd20 x19;
mov L0xffffffffdd28 x20;
(* stp	x21, x22, [sp, #16]                         #! EA = L0xffffffffdd30; PC = 0xaaaaaaab8fdc *)
mov L0xffffffffdd30 x21;
mov L0xffffffffdd38 x22;
(* stp	x23, x24, [sp, #32]                         #! EA = L0xffffffffdd40; PC = 0xaaaaaaab8fe0 *)
mov L0xffffffffdd40 x23;
mov L0xffffffffdd48 x24;
(* stp	x25, x26, [sp, #48]                         #! EA = L0xffffffffdd50; PC = 0xaaaaaaab8fe4 *)
mov L0xffffffffdd50 x25;
mov L0xffffffffdd58 x26;
(* stp	x27, x28, [sp, #64]                         #! EA = L0xffffffffdd60; PC = 0xaaaaaaab8fe8 *)
mov L0xffffffffdd60 x27;
mov L0xffffffffdd68 x28;
(* stp	x29, x30, [sp, #80]                         #! EA = L0xffffffffdd70; PC = 0xaaaaaaab8fec *)
mov L0xffffffffdd70 x29;
mov L0xffffffffdd78 x30;
(* ldp	x3, x4, [x2]                                #! EA = L0xffffffffe028; Value = 0x19190be70158c9bf; PC = 0xaaaaaaab8ff0 *)
mov x3 L0xffffffffe028;
mov x4 L0xffffffffe030;
(* ldp	x5, x6, [x2, #16]                           #! EA = L0xffffffffe038; Value = 0xa6dc61e337a66032; PC = 0xaaaaaaab8ff4 *)
mov x5 L0xffffffffe038;
mov x6 L0xffffffffe040;
(* ldp	x7, x8, [x2, #32]                           #! EA = L0xffffffffe048; Value = 0xef86279f8c74d419; PC = 0xaaaaaaab8ff8 *)
mov x7 L0xffffffffe048;
mov x8 L0xffffffffe050;
(* ldp	x9, x10, [x2, #48]                          #! EA = L0xffffffffe058; Value = 0xe472ca078e8d60a3; PC = 0xaaaaaaab8ffc *)
mov x9 L0xffffffffe058;
mov x10 L0xffffffffe060;
(* ldp	x11, x12, [x2, #64]                         #! EA = L0xffffffffe068; Value = 0x48ea3264e53e1a47; PC = 0xaaaaaaab9000 *)
mov x11 L0xffffffffe068;
mov x12 L0xffffffffe070;
(* ldp	x13, x14, [x2, #80]                         #! EA = L0xffffffffe078; Value = 0x204027c1f2bfee28; PC = 0xaaaaaaab9004 *)
mov x13 L0xffffffffe078;
mov x14 L0xffffffffe080;
(* ldp	x15, x16, [x2, #96]                         #! EA = L0xffffffffe088; Value = 0x84510ec9b4a2b67d; PC = 0xaaaaaaab9008 *)
mov x15 L0xffffffffe088;
mov x16 L0xffffffffe090;
(* ldp	x17, x18, [x2, #112]                        #! EA = L0xffffffffe098; Value = 0xfaed9c7bd298e08a; PC = 0xaaaaaaab900c *)
mov x17 L0xffffffffe098;
mov x18 L0xffffffffe0a0;
(* ldp	x19, x20, [x2, #128]                        #! EA = L0xffffffffe0a8; Value = 0xc26d87044c3e331c; PC = 0xaaaaaaab9010 *)
mov x19 L0xffffffffe0a8;
mov x20 L0xffffffffe0b0;
(* ldp	x21, x22, [x2, #144]                        #! EA = L0xffffffffe0b8; Value = 0xc21bc15f5c3f76c2; PC = 0xaaaaaaab9014 *)
mov x21 L0xffffffffe0b8;
mov x22 L0xffffffffe0c0;
(* ldp	x23, x24, [x2, #160]                        #! EA = L0xffffffffe0c8; Value = 0xcd8005ffc98090f4; PC = 0xaaaaaaab9018 *)
mov x23 L0xffffffffe0c8;
mov x24 L0xffffffffe0d0;
(* ldp	x25, x26, [x2, #176]                        #! EA = L0xffffffffe0d8; Value = 0xb75a85497b54dd7b; PC = 0xaaaaaaab901c *)
mov x25 L0xffffffffe0d8;
mov x26 L0xffffffffe0e0;
(* ldp	x27, x28, [x0]                              #! EA = L0xffffffffdea8; Value = 0xe728d977bef3539b; PC = 0xaaaaaaab9020 *)
mov x27 L0xffffffffdea8;
mov x28 L0xffffffffdeb0;
(* ldp	x29, x30, [x0, #16]                         #! EA = L0xffffffffdeb8; Value = 0x7c6cd474d73e8b4c; PC = 0xaaaaaaab9024 *)
mov x29 L0xffffffffdeb8;
mov x30 L0xffffffffdec0;
(* subs	x3, x3, x27                                #! PC = 0xaaaaaaab9028 *)
subc carry x3 x3 x27;
(* sbcs	x4, x4, x28                                #! PC = 0xaaaaaaab902c *)
sbcs carry x4 x4 x28 carry;
(* sbcs	x5, x5, x29                                #! PC = 0xaaaaaaab9030 *)
sbcs carry x5 x5 x29 carry;
(* sbcs	x6, x6, x30                                #! PC = 0xaaaaaaab9034 *)
sbcs carry x6 x6 x30 carry;
(* ldp	x27, x28, [x0, #32]                         #! EA = L0xffffffffdec8; Value = 0x9b8a7c9c65ea9ce0; PC = 0xaaaaaaab9038 *)
mov x27 L0xffffffffdec8;
mov x28 L0xffffffffded0;
(* ldp	x29, x30, [x0, #48]                         #! EA = L0xffffffffded8; Value = 0x849dcfeecb8b79f8; PC = 0xaaaaaaab903c *)
mov x29 L0xffffffffded8;
mov x30 L0xffffffffdee0;
(* sbcs	x7, x7, x27                                #! PC = 0xaaaaaaab9040 *)
sbcs carry x7 x7 x27 carry;
(* sbcs	x8, x8, x28                                #! PC = 0xaaaaaaab9044 *)
sbcs carry x8 x8 x28 carry;
(* sbcs	x9, x9, x29                                #! PC = 0xaaaaaaab9048 *)
sbcs carry x9 x9 x29 carry;
(* sbcs	x10, x10, x30                              #! PC = 0xaaaaaaab904c *)
sbcs carry x10 x10 x30 carry;
(* ldp	x27, x28, [x0, #64]                         #! EA = L0xffffffffdee8; Value = 0xf41d9a62e16af7df; PC = 0xaaaaaaab9050 *)
mov x27 L0xffffffffdee8;
mov x28 L0xffffffffdef0;
(* ldp	x29, x30, [x0, #80]                         #! EA = L0xffffffffdef8; Value = 0xb4708ca4e1bf3e91; PC = 0xaaaaaaab9054 *)
mov x29 L0xffffffffdef8;
mov x30 L0xffffffffdf00;
(* sbcs	x11, x11, x27                              #! PC = 0xaaaaaaab9058 *)
sbcs carry x11 x11 x27 carry;
(* sbcs	x12, x12, x28                              #! PC = 0xaaaaaaab905c *)
sbcs carry x12 x12 x28 carry;
(* sbcs	x13, x13, x29                              #! PC = 0xaaaaaaab9060 *)
sbcs carry x13 x13 x29 carry;
(* sbcs	x14, x14, x30                              #! PC = 0xaaaaaaab9064 *)
sbcs carry x14 x14 x30 carry;
(* ldp	x27, x28, [x0, #96]                         #! EA = L0xffffffffdf08; Value = 0x804b043da88fe6ad; PC = 0xaaaaaaab9068 *)
mov x27 L0xffffffffdf08;
mov x28 L0xffffffffdf10;
(* ldp	x29, x30, [x0, #112]                        #! EA = L0xffffffffdf18; Value = 0xf3820f5f7ec63e97; PC = 0xaaaaaaab906c *)
mov x29 L0xffffffffdf18;
mov x30 L0xffffffffdf20;
(* sbcs	x15, x15, x27                              #! PC = 0xaaaaaaab9070 *)
sbcs carry x15 x15 x27 carry;
(* sbcs	x16, x16, x28                              #! PC = 0xaaaaaaab9074 *)
sbcs carry x16 x16 x28 carry;
(* sbcs	x17, x17, x29                              #! PC = 0xaaaaaaab9078 *)
sbcs carry x17 x17 x29 carry;
(* sbcs	x18, x18, x30                              #! PC = 0xaaaaaaab907c *)
sbcs carry x18 x18 x30 carry;
(* ldp	x27, x28, [x0, #128]                        #! EA = L0xffffffffdf28; Value = 0x885949aed27574ed; PC = 0xaaaaaaab9080 *)
mov x27 L0xffffffffdf28;
mov x28 L0xffffffffdf30;
(* ldp	x29, x30, [x0, #144]                        #! EA = L0xffffffffdf38; Value = 0xc5a46c0536dd1681; PC = 0xaaaaaaab9084 *)
mov x29 L0xffffffffdf38;
mov x30 L0xffffffffdf40;
(* sbcs	x19, x19, x27                              #! PC = 0xaaaaaaab9088 *)
sbcs carry x19 x19 x27 carry;
(* sbcs	x20, x20, x28                              #! PC = 0xaaaaaaab908c *)
sbcs carry x20 x20 x28 carry;
(* sbcs	x21, x21, x29                              #! PC = 0xaaaaaaab9090 *)
sbcs carry x21 x21 x29 carry;
(* sbcs	x22, x22, x30                              #! PC = 0xaaaaaaab9094 *)
sbcs carry x22 x22 x30 carry;
(* ldp	x27, x28, [x0, #160]                        #! EA = L0xffffffffdf48; Value = 0x126a8c592722c827; PC = 0xaaaaaaab9098 *)
mov x27 L0xffffffffdf48;
mov x28 L0xffffffffdf50;
(* ldp	x29, x30, [x0, #176]                        #! EA = L0xffffffffdf58; Value = 0xdafee8f6b27b629e; PC = 0xaaaaaaab909c *)
mov x29 L0xffffffffdf58;
mov x30 L0xffffffffdf60;
(* sbcs	x23, x23, x27                              #! PC = 0xaaaaaaab90a0 *)
sbcs carry x23 x23 x27 carry;
(* sbcs	x24, x24, x28                              #! PC = 0xaaaaaaab90a4 *)
sbcs carry x24 x24 x28 carry;
(* sbcs	x25, x25, x29                              #! PC = 0xaaaaaaab90a8 *)
sbcs carry x25 x25 x29 carry;
(* sbc	x26, x26, x30                               #! PC = 0xaaaaaaab90ac *)
sbcs docare x26 x26 x30 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* ldp	x27, x28, [x1]                              #! EA = L0xffffffffdf68; Value = 0xe8f2eed3901d7894; PC = 0xaaaaaaab90b0 *)
mov x27 L0xffffffffdf68;
mov x28 L0xffffffffdf70;
(* ldp	x29, x30, [x1, #16]                         #! EA = L0xffffffffdf78; Value = 0x4f90458a181f3339; PC = 0xaaaaaaab90b4 *)
mov x29 L0xffffffffdf78;
mov x30 L0xffffffffdf80;
(* subs	x3, x3, x27                                #! PC = 0xaaaaaaab90b8 *)
subc carry x3 x3 x27;
(* sbcs	x4, x4, x28                                #! PC = 0xaaaaaaab90bc *)
sbcs carry x4 x4 x28 carry;
(* sbcs	x5, x5, x29                                #! PC = 0xaaaaaaab90c0 *)
sbcs carry x5 x5 x29 carry;
(* sbcs	x6, x6, x30                                #! PC = 0xaaaaaaab90c4 *)
sbcs carry x6 x6 x30 carry;
(* ldp	x27, x28, [x1, #32]                         #! EA = L0xffffffffdf88; Value = 0x2ca98729bf45668a; PC = 0xaaaaaaab90c8 *)
mov x27 L0xffffffffdf88;
mov x28 L0xffffffffdf90;
(* ldp	x29, x30, [x1, #48]                         #! EA = L0xffffffffdf98; Value = 0xb7a770748bb0f10a; PC = 0xaaaaaaab90cc *)
mov x29 L0xffffffffdf98;
mov x30 L0xffffffffdfa0;
(* sbcs	x7, x7, x27                                #! PC = 0xaaaaaaab90d0 *)
sbcs carry x7 x7 x27 carry;
(* sbcs	x8, x8, x28                                #! PC = 0xaaaaaaab90d4 *)
sbcs carry x8 x8 x28 carry;
(* sbcs	x9, x9, x29                                #! PC = 0xaaaaaaab90d8 *)
sbcs carry x9 x9 x29 carry;
(* sbcs	x10, x10, x30                              #! PC = 0xaaaaaaab90dc *)
sbcs carry x10 x10 x30 carry;
(* ldp	x27, x28, [x1, #64]                         #! EA = L0xffffffffdfa8; Value = 0x217f4d6db9590f9a; PC = 0xaaaaaaab90e0 *)
mov x27 L0xffffffffdfa8;
mov x28 L0xffffffffdfb0;
(* ldp	x29, x30, [x1, #80]                         #! EA = L0xffffffffdfb8; Value = 0xb36e6330d7b990e6; PC = 0xaaaaaaab90e4 *)
mov x29 L0xffffffffdfb8;
mov x30 L0xffffffffdfc0;
(* sbcs	x11, x11, x27                              #! PC = 0xaaaaaaab90e8 *)
sbcs carry x11 x11 x27 carry;
(* sbcs	x12, x12, x28                              #! PC = 0xaaaaaaab90ec *)
sbcs carry x12 x12 x28 carry;
(* sbcs	x13, x13, x29                              #! PC = 0xaaaaaaab90f0 *)
sbcs carry x13 x13 x29 carry;
(* sbcs	x14, x14, x30                              #! PC = 0xaaaaaaab90f4 *)
sbcs carry x14 x14 x30 carry;
(* ldp	x27, x28, [x1, #96]                         #! EA = L0xffffffffdfc8; Value = 0xc30d006a0eff7396; PC = 0xaaaaaaab90f8 *)
mov x27 L0xffffffffdfc8;
mov x28 L0xffffffffdfd0;
(* ldp	x29, x30, [x1, #112]                        #! EA = L0xffffffffdfd8; Value = 0x71f410c7755e53a4; PC = 0xaaaaaaab90fc *)
mov x29 L0xffffffffdfd8;
mov x30 L0xffffffffdfe0;
(* sbcs	x15, x15, x27                              #! PC = 0xaaaaaaab9100 *)
sbcs carry x15 x15 x27 carry;
(* sbcs	x16, x16, x28                              #! PC = 0xaaaaaaab9104 *)
sbcs carry x16 x16 x28 carry;
(* sbcs	x17, x17, x29                              #! PC = 0xaaaaaaab9108 *)
sbcs carry x17 x17 x29 carry;
(* sbcs	x18, x18, x30                              #! PC = 0xaaaaaaab910c *)
sbcs carry x18 x18 x30 carry;
(* ldp	x27, x28, [x1, #128]                        #! EA = L0xffffffffdfe8; Value = 0xcb863ccf9bfc1e0c; PC = 0xaaaaaaab9110 *)
mov x27 L0xffffffffdfe8;
mov x28 L0xffffffffdff0;
(* ldp	x29, x30, [x1, #144]                        #! EA = L0xffffffffdff8; Value = 0x1e92277dfe45188f; PC = 0xaaaaaaab9114 *)
mov x29 L0xffffffffdff8;
mov x30 L0xffffffffe000;
(* sbcs	x19, x19, x27                              #! PC = 0xaaaaaaab9118 *)
sbcs carry x19 x19 x27 carry;
(* sbcs	x20, x20, x28                              #! PC = 0xaaaaaaab911c *)
sbcs carry x20 x20 x28 carry;
(* sbcs	x21, x21, x29                              #! PC = 0xaaaaaaab9120 *)
sbcs carry x21 x21 x29 carry;
(* sbcs	x22, x22, x30                              #! PC = 0xaaaaaaab9124 *)
sbcs carry x22 x22 x30 carry;
(* ldp	x27, x28, [x1, #160]                        #! EA = L0xffffffffe008; Value = 0x4571454e724c67f4; PC = 0xaaaaaaab9128 *)
mov x27 L0xffffffffe008;
mov x28 L0xffffffffe010;
(* ldp	x29, x30, [x1, #176]                        #! EA = L0xffffffffe018; Value = 0x9dc667fb683b13e8; PC = 0xaaaaaaab912c *)
mov x29 L0xffffffffe018;
mov x30 L0xffffffffe020;
(* sbcs	x23, x23, x27                              #! PC = 0xaaaaaaab9130 *)
sbcs carry x23 x23 x27 carry;
(* sbcs	x24, x24, x28                              #! PC = 0xaaaaaaab9134 *)
sbcs carry x24 x24 x28 carry;
(* sbcs	x25, x25, x29                              #! PC = 0xaaaaaaab9138 *)
sbcs carry x25 x25 x29 carry;
(* sbc	x26, x26, x30                               #! PC = 0xaaaaaaab913c *)
sbcs docare x26 x26 x30 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* stp	x3, x4, [x2]                                #! EA = L0xffffffffe028; PC = 0xaaaaaaab9140 *)
mov L0xffffffffe028 x3;
mov L0xffffffffe030 x4;
(* stp	x5, x6, [x2, #16]                           #! EA = L0xffffffffe038; PC = 0xaaaaaaab9144 *)
mov L0xffffffffe038 x5;
mov L0xffffffffe040 x6;
(* stp	x7, x8, [x2, #32]                           #! EA = L0xffffffffe048; PC = 0xaaaaaaab9148 *)
mov L0xffffffffe048 x7;
mov L0xffffffffe050 x8;
(* stp	x9, x10, [x2, #48]                          #! EA = L0xffffffffe058; PC = 0xaaaaaaab914c *)
mov L0xffffffffe058 x9;
mov L0xffffffffe060 x10;
(* stp	x11, x12, [x2, #64]                         #! EA = L0xffffffffe068; PC = 0xaaaaaaab9150 *)
mov L0xffffffffe068 x11;
mov L0xffffffffe070 x12;
(* stp	x13, x14, [x2, #80]                         #! EA = L0xffffffffe078; PC = 0xaaaaaaab9154 *)
mov L0xffffffffe078 x13;
mov L0xffffffffe080 x14;
(* stp	x15, x16, [x2, #96]                         #! EA = L0xffffffffe088; PC = 0xaaaaaaab9158 *)
mov L0xffffffffe088 x15;
mov L0xffffffffe090 x16;
(* stp	x17, x18, [x2, #112]                        #! EA = L0xffffffffe098; PC = 0xaaaaaaab915c *)
mov L0xffffffffe098 x17;
mov L0xffffffffe0a0 x18;
(* stp	x19, x20, [x2, #128]                        #! EA = L0xffffffffe0a8; PC = 0xaaaaaaab9160 *)
mov L0xffffffffe0a8 x19;
mov L0xffffffffe0b0 x20;
(* stp	x21, x22, [x2, #144]                        #! EA = L0xffffffffe0b8; PC = 0xaaaaaaab9164 *)
mov L0xffffffffe0b8 x21;
mov L0xffffffffe0c0 x22;
(* stp	x23, x24, [x2, #160]                        #! EA = L0xffffffffe0c8; PC = 0xaaaaaaab9168 *)
mov L0xffffffffe0c8 x23;
mov L0xffffffffe0d0 x24;
(* stp	x25, x26, [x2, #176]                        #! EA = L0xffffffffe0d8; PC = 0xaaaaaaab916c *)
mov L0xffffffffe0d8 x25;
mov L0xffffffffe0e0 x26;
(* ldp	x19, x20, [sp]                              #! EA = L0xffffffffdd20; Value = 0x0000ffffffffdea8; PC = 0xaaaaaaab9170 *)
mov x19 L0xffffffffdd20;
mov x20 L0xffffffffdd28;
(* ldp	x21, x22, [sp, #16]                         #! EA = L0xffffffffdd30; Value = 0x0000ffffffffdf68; PC = 0xaaaaaaab9174 *)
mov x21 L0xffffffffdd30;
mov x22 L0xffffffffdd38;
(* ldp	x23, x24, [sp, #32]                         #! EA = L0xffffffffdd40; Value = 0x0000ffffffffdde8; PC = 0xaaaaaaab9178 *)
mov x23 L0xffffffffdd40;
mov x24 L0xffffffffdd48;
(* ldp	x25, x26, [sp, #48]                         #! EA = L0xffffffffdd50; Value = 0x0000ffffffffe5f8; PC = 0xaaaaaaab917c *)
mov x25 L0xffffffffdd50;
mov x26 L0xffffffffdd58;
(* ldp	x27, x28, [sp, #64]                         #! EA = L0xffffffffdd60; Value = 0x0000ffffffffe718; PC = 0xaaaaaaab9180 *)
mov x27 L0xffffffffdd60;
mov x28 L0xffffffffdd68;
(* ldp	x29, x30, [sp, #80]                         #! EA = L0xffffffffdd70; Value = 0x0000ffffffffdd80; PC = 0xaaaaaaab9184 *)
mov x29 L0xffffffffdd70;
mov x30 L0xffffffffdd78;
(* add	sp, sp, #0x60                               #! PC = 0xaaaaaaab9188 *)
adds dontcare sp sp 0x60@uint64;
(* #! <- SP = 0xffffffffdd80 *)
#! 0xffffffffdd80 = 0xffffffffdd80;
(* #ret                                            #! PC = 0xaaaaaaab918c *)
#ret                                            #! 0xaaaaaaab918c = 0xaaaaaaab918c;

(* CUT 5 *)
cut limbs 64 [L0xffffffffe028, L0xffffffffe030, L0xffffffffe038,
              L0xffffffffe040, L0xffffffffe048, L0xffffffffe050,
              L0xffffffffe058, L0xffffffffe060, L0xffffffffe068,
              L0xffffffffe070, L0xffffffffe078, L0xffffffffe080,
              L0xffffffffe088, L0xffffffffe090, L0xffffffffe098,
              L0xffffffffe0a0, L0xffffffffe0a8, L0xffffffffe0b0,
              L0xffffffffe0b8, L0xffffffffe0c0, L0xffffffffe0c8,
              L0xffffffffe0d0, L0xffffffffe0d8, L0xffffffffe0e0] =
    limbs 64 [ar0, ar1, ar2, ar3, ar4, ar5, ar6, ar7, ar8, ar9, ara, arb] *
    limbs 64 [bi0, bi1, bi2, bi3, bi4, bi5, bi6, bi7, bi8, bi9, bia, bib] +
    limbs 64 [br0, br1, br2, br3, br4, br5, br6, br7, br8, br9, bra, brb] *
    limbs 64 [ai0, ai1, ai2, ai3, ai4, ai5, ai6, ai7, ai8, ai9, aia, aib]
    prove with [ cuts [ 2, 3 ] ]
 && and [limbs 64 [L0xffffffffe028, L0xffffffffe030, L0xffffffffe038,
                   L0xffffffffe040, L0xffffffffe048, L0xffffffffe050,
                   L0xffffffffe058, L0xffffffffe060, L0xffffffffe068,
                   L0xffffffffe070, L0xffffffffe078, L0xffffffffe080,
                   L0xffffffffe088, L0xffffffffe090, L0xffffffffe098,
                   L0xffffffffe0a0, L0xffffffffe0a8, L0xffffffffe0b0,
                   L0xffffffffe0b8, L0xffffffffe0c0, L0xffffffffe0c8,
                   L0xffffffffe0d0, L0xffffffffe0d8, L0xffffffffe0e0] <u
         (2**1506)@1536,
         m0=0xFFFFFFFFFFFFFFFF@64, m1=0xFFFFFFFFFFFFFFFF@64,
         m2=0xFFFFFFFFFFFFFFFF@64, m3=0xFFFFFFFFFFFFFFFF@64,
         m4=0xFFFFFFFFFFFFFFFF@64, m5=0xEEAFFFFFFFFFFFFF@64,
         m6=0xE3EC968549F878A8@64, m7=0xDA959B1A13F7CC76@64,
         m8=0x084E9867D6EBE876@64, m9=0x8562B5045CB25748@64,
         ma=0x0E12909F97BADC66@64, mb=0x00006FE5D541F71C@64]
    prove with [ precondition, cuts [ 2, 3 ] ];

(* mov	x2, x19                                     #! PC = 0xaaaaaaaae554 *)
mov x2 x19;
(* mov	x1, x21                                     #! PC = 0xaaaaaaaae558 *)
mov x1 x21;
(* mov	x0, x19                                     #! PC = 0xaaaaaaaae55c *)
mov x0 x19;
(* #bl	0xaaaaaaab8e5c <mp_subadd751x2_asm>         #! PC = 0xaaaaaaaae560 *)
#bl	0xaaaaaaab8e5c <mp_subadd751x2_asm>         #! 0xaaaaaaaae560 = 0xaaaaaaaae560;

ghost L0xffffffffdea8o@uint64, L0xffffffffdeb0o@uint64, L0xffffffffdeb8o@uint64,
      L0xffffffffdec0o@uint64, L0xffffffffdec8o@uint64, L0xffffffffded0o@uint64,
      L0xffffffffded8o@uint64, L0xffffffffdee0o@uint64, L0xffffffffdee8o@uint64,
      L0xffffffffdef0o@uint64, L0xffffffffdef8o@uint64, L0xffffffffdf00o@uint64,
      L0xffffffffdf08o@uint64, L0xffffffffdf10o@uint64, L0xffffffffdf18o@uint64,
      L0xffffffffdf20o@uint64, L0xffffffffdf28o@uint64, L0xffffffffdf30o@uint64,
      L0xffffffffdf38o@uint64, L0xffffffffdf40o@uint64, L0xffffffffdf48o@uint64,
      L0xffffffffdf50o@uint64, L0xffffffffdf58o@uint64, L0xffffffffdf60o@uint64 :
      and [L0xffffffffdea8o=L0xffffffffdea8, L0xffffffffdeb0o=L0xffffffffdeb0,
           L0xffffffffdeb8o=L0xffffffffdeb8, L0xffffffffdec0o=L0xffffffffdec0,
           L0xffffffffdec8o=L0xffffffffdec8, L0xffffffffded0o=L0xffffffffded0,
           L0xffffffffded8o=L0xffffffffded8, L0xffffffffdee0o=L0xffffffffdee0,
           L0xffffffffdee8o=L0xffffffffdee8, L0xffffffffdef0o=L0xffffffffdef0,
           L0xffffffffdef8o=L0xffffffffdef8, L0xffffffffdf00o=L0xffffffffdf00,
           L0xffffffffdf08o=L0xffffffffdf08, L0xffffffffdf10o=L0xffffffffdf10,
           L0xffffffffdf18o=L0xffffffffdf18, L0xffffffffdf20o=L0xffffffffdf20,
           L0xffffffffdf28o=L0xffffffffdf28, L0xffffffffdf30o=L0xffffffffdf30,
           L0xffffffffdf38o=L0xffffffffdf38, L0xffffffffdf40o=L0xffffffffdf40,
           L0xffffffffdf48o=L0xffffffffdf48, L0xffffffffdf50o=L0xffffffffdf50,
           L0xffffffffdf58o=L0xffffffffdf58, L0xffffffffdf60o=L0xffffffffdf60]
   && and [L0xffffffffdea8o=L0xffffffffdea8, L0xffffffffdeb0o=L0xffffffffdeb0,
           L0xffffffffdeb8o=L0xffffffffdeb8, L0xffffffffdec0o=L0xffffffffdec0,
           L0xffffffffdec8o=L0xffffffffdec8, L0xffffffffded0o=L0xffffffffded0,
           L0xffffffffded8o=L0xffffffffded8, L0xffffffffdee0o=L0xffffffffdee0,
           L0xffffffffdee8o=L0xffffffffdee8, L0xffffffffdef0o=L0xffffffffdef0,
           L0xffffffffdef8o=L0xffffffffdef8, L0xffffffffdf00o=L0xffffffffdf00,
           L0xffffffffdf08o=L0xffffffffdf08, L0xffffffffdf10o=L0xffffffffdf10,
           L0xffffffffdf18o=L0xffffffffdf18, L0xffffffffdf20o=L0xffffffffdf20,
           L0xffffffffdf28o=L0xffffffffdf28, L0xffffffffdf30o=L0xffffffffdf30,
           L0xffffffffdf38o=L0xffffffffdf38, L0xffffffffdf40o=L0xffffffffdf40,
           L0xffffffffdf48o=L0xffffffffdf48, L0xffffffffdf50o=L0xffffffffdf50,
           L0xffffffffdf58o=L0xffffffffdf58, L0xffffffffdf60o=L0xffffffffdf60];

(* #! -> SP = 0xffffffffdd80 *)
#! 0xffffffffdd80 = 0xffffffffdd80;
(* sub	sp, sp, #0x10                               #! PC = 0xaaaaaaab8e5c *)
subc dontcare sp sp 0x10@uint64;
(* stp	x19, x20, [sp]                              #! EA = L0xffffffffdd70; PC = 0xaaaaaaab8e60 *)
mov L0xffffffffdd70 x19;
mov L0xffffffffdd78 x20;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffdea8; Value = 0xe728d977bef3539b; PC = 0xaaaaaaab8e64 *)
mov x3 L0xffffffffdea8;
mov x4 L0xffffffffdeb0;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffdeb8; Value = 0x7c6cd474d73e8b4c; PC = 0xaaaaaaab8e68 *)
mov x5 L0xffffffffdeb8;
mov x6 L0xffffffffdec0;
(* ldp	x11, x12, [x1]                              #! EA = L0xffffffffdf68; Value = 0xe8f2eed3901d7894; PC = 0xaaaaaaab8e6c *)
mov x11 L0xffffffffdf68;
mov x12 L0xffffffffdf70;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0xffffffffdf78; Value = 0x4f90458a181f3339; PC = 0xaaaaaaab8e70 *)
mov x13 L0xffffffffdf78;
mov x14 L0xffffffffdf80;
(* subs	x3, x3, x11                                #! PC = 0xaaaaaaab8e74 *)
subc carry x3 x3 x11;
(* sbcs	x4, x4, x12                                #! PC = 0xaaaaaaab8e78 *)
sbcs carry x4 x4 x12 carry;
(* sbcs	x5, x5, x13                                #! PC = 0xaaaaaaab8e7c *)
sbcs carry x5 x5 x13 carry;
(* sbcs	x6, x6, x14                                #! PC = 0xaaaaaaab8e80 *)
sbcs carry x6 x6 x14 carry;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffdec8; Value = 0x9b8a7c9c65ea9ce0; PC = 0xaaaaaaab8e84 *)
mov x7 L0xffffffffdec8;
mov x8 L0xffffffffded0;
(* ldp	x9, x10, [x0, #48]                          #! EA = L0xffffffffded8; Value = 0x849dcfeecb8b79f8; PC = 0xaaaaaaab8e88 *)
mov x9 L0xffffffffded8;
mov x10 L0xffffffffdee0;
(* ldp	x11, x12, [x1, #32]                         #! EA = L0xffffffffdf88; Value = 0x2ca98729bf45668a; PC = 0xaaaaaaab8e8c *)
mov x11 L0xffffffffdf88;
mov x12 L0xffffffffdf90;
(* ldp	x13, x14, [x1, #48]                         #! EA = L0xffffffffdf98; Value = 0xb7a770748bb0f10a; PC = 0xaaaaaaab8e90 *)
mov x13 L0xffffffffdf98;
mov x14 L0xffffffffdfa0;
(* sbcs	x7, x7, x11                                #! PC = 0xaaaaaaab8e94 *)
sbcs carry x7 x7 x11 carry;
(* sbcs	x8, x8, x12                                #! PC = 0xaaaaaaab8e98 *)
sbcs carry x8 x8 x12 carry;
(* sbcs	x9, x9, x13                                #! PC = 0xaaaaaaab8e9c *)
sbcs carry x9 x9 x13 carry;
(* sbcs	x10, x10, x14                              #! PC = 0xaaaaaaab8ea0 *)
sbcs carry x10 x10 x14 carry;
(* stp	x3, x4, [x2]                                #! EA = L0xffffffffdea8; PC = 0xaaaaaaab8ea4 *)
mov L0xffffffffdea8 x3;
mov L0xffffffffdeb0 x4;
(* stp	x5, x6, [x2, #16]                           #! EA = L0xffffffffdeb8; PC = 0xaaaaaaab8ea8 *)
mov L0xffffffffdeb8 x5;
mov L0xffffffffdec0 x6;
(* stp	x7, x8, [x2, #32]                           #! EA = L0xffffffffdec8; PC = 0xaaaaaaab8eac *)
mov L0xffffffffdec8 x7;
mov L0xffffffffded0 x8;
(* stp	x9, x10, [x2, #48]                          #! EA = L0xffffffffded8; PC = 0xaaaaaaab8eb0 *)
mov L0xffffffffded8 x9;
mov L0xffffffffdee0 x10;
(* ldp	x3, x4, [x0, #64]                           #! EA = L0xffffffffdee8; Value = 0xf41d9a62e16af7df; PC = 0xaaaaaaab8eb4 *)
mov x3 L0xffffffffdee8;
mov x4 L0xffffffffdef0;
(* ldp	x5, x6, [x0, #80]                           #! EA = L0xffffffffdef8; Value = 0xb4708ca4e1bf3e91; PC = 0xaaaaaaab8eb8 *)
mov x5 L0xffffffffdef8;
mov x6 L0xffffffffdf00;
(* ldp	x11, x12, [x1, #64]                         #! EA = L0xffffffffdfa8; Value = 0x217f4d6db9590f9a; PC = 0xaaaaaaab8ebc *)
mov x11 L0xffffffffdfa8;
mov x12 L0xffffffffdfb0;
(* ldp	x13, x14, [x1, #80]                         #! EA = L0xffffffffdfb8; Value = 0xb36e6330d7b990e6; PC = 0xaaaaaaab8ec0 *)
mov x13 L0xffffffffdfb8;
mov x14 L0xffffffffdfc0;
(* sbcs	x3, x3, x11                                #! PC = 0xaaaaaaab8ec4 *)
sbcs carry x3 x3 x11 carry;
(* sbcs	x4, x4, x12                                #! PC = 0xaaaaaaab8ec8 *)
sbcs carry x4 x4 x12 carry;
(* sbcs	x5, x5, x13                                #! PC = 0xaaaaaaab8ecc *)
sbcs carry x5 x5 x13 carry;
(* sbcs	x6, x6, x14                                #! PC = 0xaaaaaaab8ed0 *)
sbcs carry x6 x6 x14 carry;
(* stp	x3, x4, [x2, #64]                           #! EA = L0xffffffffdee8; PC = 0xaaaaaaab8ed4 *)
mov L0xffffffffdee8 x3;
mov L0xffffffffdef0 x4;
(* stp	x5, x6, [x2, #80]                           #! EA = L0xffffffffdef8; PC = 0xaaaaaaab8ed8 *)
mov L0xffffffffdef8 x5;
mov L0xffffffffdf00 x6;
(* ldp	x3, x4, [x0, #96]                           #! EA = L0xffffffffdf08; Value = 0x804b043da88fe6ad; PC = 0xaaaaaaab8edc *)
mov x3 L0xffffffffdf08;
mov x4 L0xffffffffdf10;
(* ldp	x5, x6, [x0, #112]                          #! EA = L0xffffffffdf18; Value = 0xf3820f5f7ec63e97; PC = 0xaaaaaaab8ee0 *)
mov x5 L0xffffffffdf18;
mov x6 L0xffffffffdf20;
(* ldp	x15, x16, [x1, #96]                         #! EA = L0xffffffffdfc8; Value = 0xc30d006a0eff7396; PC = 0xaaaaaaab8ee4 *)
mov x15 L0xffffffffdfc8;
mov x16 L0xffffffffdfd0;
(* ldp	x17, x19, [x1, #112]                        #! EA = L0xffffffffdfd8; Value = 0x71f410c7755e53a4; PC = 0xaaaaaaab8ee8 *)
mov x17 L0xffffffffdfd8;
mov x19 L0xffffffffdfe0;
(* sbcs	x3, x3, x15                                #! PC = 0xaaaaaaab8eec *)
sbcs carry x3 x3 x15 carry;
(* sbcs	x4, x4, x16                                #! PC = 0xaaaaaaab8ef0 *)
sbcs carry x4 x4 x16 carry;
(* sbcs	x5, x5, x17                                #! PC = 0xaaaaaaab8ef4 *)
sbcs carry x5 x5 x17 carry;
(* sbcs	x6, x6, x19                                #! PC = 0xaaaaaaab8ef8 *)
sbcs carry x6 x6 x19 carry;
(* ldp	x7, x8, [x0, #128]                          #! EA = L0xffffffffdf28; Value = 0x885949aed27574ed; PC = 0xaaaaaaab8efc *)
mov x7 L0xffffffffdf28;
mov x8 L0xffffffffdf30;
(* ldp	x9, x10, [x0, #144]                         #! EA = L0xffffffffdf38; Value = 0xc5a46c0536dd1681; PC = 0xaaaaaaab8f00 *)
mov x9 L0xffffffffdf38;
mov x10 L0xffffffffdf40;
(* ldp	x15, x16, [x1, #128]                        #! EA = L0xffffffffdfe8; Value = 0xcb863ccf9bfc1e0c; PC = 0xaaaaaaab8f04 *)
mov x15 L0xffffffffdfe8;
mov x16 L0xffffffffdff0;
(* ldp	x17, x19, [x1, #144]                        #! EA = L0xffffffffdff8; Value = 0x1e92277dfe45188f; PC = 0xaaaaaaab8f08 *)
mov x17 L0xffffffffdff8;
mov x19 L0xffffffffe000;
(* sbcs	x7, x7, x15                                #! PC = 0xaaaaaaab8f0c *)
sbcs carry x7 x7 x15 carry;
(* sbcs	x8, x8, x16                                #! PC = 0xaaaaaaab8f10 *)
sbcs carry x8 x8 x16 carry;
(* sbcs	x9, x9, x17                                #! PC = 0xaaaaaaab8f14 *)
sbcs carry x9 x9 x17 carry;
(* sbcs	x10, x10, x19                              #! PC = 0xaaaaaaab8f18 *)
sbcs carry x10 x10 x19 carry;
(* ldp	x11, x12, [x0, #160]                        #! EA = L0xffffffffdf48; Value = 0x126a8c592722c827; PC = 0xaaaaaaab8f1c *)
mov x11 L0xffffffffdf48;
mov x12 L0xffffffffdf50;
(* ldp	x13, x14, [x0, #176]                        #! EA = L0xffffffffdf58; Value = 0xdafee8f6b27b629e; PC = 0xaaaaaaab8f20 *)
mov x13 L0xffffffffdf58;
mov x14 L0xffffffffdf60;
(* ldp	x15, x16, [x1, #160]                        #! EA = L0xffffffffe008; Value = 0x4571454e724c67f4; PC = 0xaaaaaaab8f24 *)
mov x15 L0xffffffffe008;
mov x16 L0xffffffffe010;
(* ldp	x17, x19, [x1, #176]                        #! EA = L0xffffffffe018; Value = 0x9dc667fb683b13e8; PC = 0xaaaaaaab8f28 *)
mov x17 L0xffffffffe018;
mov x19 L0xffffffffe020;
(* sbcs	x11, x11, x15                              #! PC = 0xaaaaaaab8f2c *)
sbcs carry x11 x11 x15 carry;
(* sbcs	x12, x12, x16                              #! PC = 0xaaaaaaab8f30 *)
sbcs carry x12 x12 x16 carry;
(* sbcs	x13, x13, x17                              #! PC = 0xaaaaaaab8f34 *)
sbcs carry x13 x13 x17 carry;
(* sbcs	x14, x14, x19                              #! PC = 0xaaaaaaab8f38 *)
sbcs carry x14 x14 x19 carry;
(* ngc	x0, xzr                                     #! PC = 0xaaaaaaab8f3c *)
sbcs dontcare x0 0@uint64 0@uint64 carry;
(* ldr	x1, 0xaaaaaaab7548 <p751>                   #! PC = 0xaaaaaaab8f40 *)
mov x1 L0xaaaaaaab7548;
(* ldr	x15, 0xaaaaaaab7550 <p751+8>                #! PC = 0xaaaaaaab8f44 *)
mov x15 L0xaaaaaaab7550;
(* ldr	x16, 0xaaaaaaab7558 <p751+16>               #! PC = 0xaaaaaaab8f48 *)
mov x16 L0xaaaaaaab7558;
(* ldr	x17, 0xaaaaaaab7560 <p751+24>               #! PC = 0xaaaaaaab8f4c *)
mov x17 L0xaaaaaaab7560;
(* ldr	x19, 0xaaaaaaab7568 <p751+32>               #! PC = 0xaaaaaaab8f50 *)
mov x19 L0xaaaaaaab7568;
(* ldr	x20, 0xaaaaaaab7570 <p751+40>               #! PC = 0xaaaaaaab8f54 *)
mov x20 L0xaaaaaaab7570;
(* and	x1, x1, x0                                  #! PC = 0xaaaaaaab8f58 *)
and x1@uint64 x1 x0;
(* and	x15, x15, x0                                #! PC = 0xaaaaaaab8f5c *)
and x15@uint64 x15 x0;
(* and	x16, x16, x0                                #! PC = 0xaaaaaaab8f60 *)
and x16@uint64 x16 x0;
(* and	x17, x17, x0                                #! PC = 0xaaaaaaab8f64 *)
and x17@uint64 x17 x0;
(* and	x19, x19, x0                                #! PC = 0xaaaaaaab8f68 *)
and x19@uint64 x19 x0;
(* and	x20, x20, x0                                #! PC = 0xaaaaaaab8f6c *)
and x20@uint64 x20 x0;
(* adds	x3, x3, x1                                 #! PC = 0xaaaaaaab8f70 *)
adds carry x3 x3 x1;
(* adcs	x4, x4, x1                                 #! PC = 0xaaaaaaab8f74 *)
adcs carry x4 x4 x1 carry;
(* adcs	x5, x5, x1                                 #! PC = 0xaaaaaaab8f78 *)
adcs carry x5 x5 x1 carry;
(* adcs	x6, x6, x1                                 #! PC = 0xaaaaaaab8f7c *)
adcs carry x6 x6 x1 carry;
(* adcs	x7, x7, x1                                 #! PC = 0xaaaaaaab8f80 *)
adcs carry x7 x7 x1 carry;
(* adcs	x8, x8, x15                                #! PC = 0xaaaaaaab8f84 *)
adcs carry x8 x8 x15 carry;
(* adcs	x9, x9, x16                                #! PC = 0xaaaaaaab8f88 *)
adcs carry x9 x9 x16 carry;
(* adcs	x10, x10, x17                              #! PC = 0xaaaaaaab8f8c *)
adcs carry x10 x10 x17 carry;
(* adcs	x11, x11, x19                              #! PC = 0xaaaaaaab8f90 *)
adcs carry x11 x11 x19 carry;
(* adcs	x12, x12, x20                              #! PC = 0xaaaaaaab8f94 *)
adcs carry x12 x12 x20 carry;
(* stp	x3, x4, [x2, #96]                           #! EA = L0xffffffffdf08; PC = 0xaaaaaaab8f98 *)
mov L0xffffffffdf08 x3;
mov L0xffffffffdf10 x4;
(* stp	x5, x6, [x2, #112]                          #! EA = L0xffffffffdf18; PC = 0xaaaaaaab8f9c *)
mov L0xffffffffdf18 x5;
mov L0xffffffffdf20 x6;
(* stp	x7, x8, [x2, #128]                          #! EA = L0xffffffffdf28; PC = 0xaaaaaaab8fa0 *)
mov L0xffffffffdf28 x7;
mov L0xffffffffdf30 x8;
(* stp	x9, x10, [x2, #144]                         #! EA = L0xffffffffdf38; PC = 0xaaaaaaab8fa4 *)
mov L0xffffffffdf38 x9;
mov L0xffffffffdf40 x10;
(* stp	x11, x12, [x2, #160]                        #! EA = L0xffffffffdf48; PC = 0xaaaaaaab8fa8 *)
mov L0xffffffffdf48 x11;
mov L0xffffffffdf50 x12;
(* ldr	x1, 0xaaaaaaab7578 <p751+48>                #! PC = 0xaaaaaaab8fac *)
mov x1 L0xaaaaaaab7578;
(* ldr	x3, 0xaaaaaaab7580 <p751+56>                #! PC = 0xaaaaaaab8fb0 *)
mov x3 L0xaaaaaaab7580;
(* and	x1, x1, x0                                  #! PC = 0xaaaaaaab8fb4 *)
and x1@uint64 x1 x0;
(* and	x3, x3, x0                                  #! PC = 0xaaaaaaab8fb8 *)
and x3@uint64 x3 x0;
(* adcs	x13, x13, x1                               #! PC = 0xaaaaaaab8fbc *)
adcs carry x13 x13 x1 carry;
(* adc	x14, x14, x3                                #! PC = 0xaaaaaaab8fc0 *)
adcs docare x14 x14 x3 carry;

(* TODO: must carry *)
(* assert true && docare = 0@1; *)
assume docare = 0 && true;

(* stp	x13, x14, [x2, #176]                        #! EA = L0xffffffffdf58; PC = 0xaaaaaaab8fc4 *)
mov L0xffffffffdf58 x13;
mov L0xffffffffdf60 x14;
(* ldp	x19, x20, [sp]                              #! EA = L0xffffffffdd70; Value = 0x0000ffffffffdea8; PC = 0xaaaaaaab8fc8 *)
mov x19 L0xffffffffdd70;
mov x20 L0xffffffffdd78;
(* add	sp, sp, #0x10                               #! PC = 0xaaaaaaab8fcc *)
adds dontcare sp sp 0x10@uint64;
(* #! <- SP = 0xffffffffdd80 *)
#! 0xffffffffdd80 = 0xffffffffdd80;
(* #ret                                            #! PC = 0xaaaaaaab8fd0 *)
#ret                                            #! 0xaaaaaaab8fd0 = 0xaaaaaaab8fd0;

assert true
    && eqsmod (limbs 64 [L0xffffffffdea8, L0xffffffffdeb0, L0xffffffffdeb8,
                         L0xffffffffdec0, L0xffffffffdec8, L0xffffffffded0,
                         L0xffffffffded8, L0xffffffffdee0, L0xffffffffdee8,
                         L0xffffffffdef0, L0xffffffffdef8, L0xffffffffdf00,
                         L0xffffffffdf08, L0xffffffffdf10, L0xffffffffdf18,
                         L0xffffffffdf20, L0xffffffffdf28, L0xffffffffdf30,
                         L0xffffffffdf38, L0xffffffffdf40, L0xffffffffdf48,
                         L0xffffffffdf50, L0xffffffffdf58, L0xffffffffdf60])
              (limbs 64 [L0xffffffffdea8o, L0xffffffffdeb0o, L0xffffffffdeb8o,
                         L0xffffffffdec0o, L0xffffffffdec8o, L0xffffffffded0o,
                         L0xffffffffded8o, L0xffffffffdee0o, L0xffffffffdee8o,
                         L0xffffffffdef0o, L0xffffffffdef8o, L0xffffffffdf00o,
                         L0xffffffffdf08o, L0xffffffffdf10o, L0xffffffffdf18o,
                         L0xffffffffdf20o, L0xffffffffdf28o, L0xffffffffdf30o,
                         L0xffffffffdf38o, L0xffffffffdf40o, L0xffffffffdf48o,
                         L0xffffffffdf50o, L0xffffffffdf58o, L0xffffffffdf60o] -
               limbs 64 [L0xffffffffdf68, L0xffffffffdf70, L0xffffffffdf78,
                         L0xffffffffdf80, L0xffffffffdf88, L0xffffffffdf90,
                         L0xffffffffdf98, L0xffffffffdfa0, L0xffffffffdfa8,
                         L0xffffffffdfb0, L0xffffffffdfb8, L0xffffffffdfc0,
                         L0xffffffffdfc8, L0xffffffffdfd0, L0xffffffffdfd8,
                         L0xffffffffdfe0, L0xffffffffdfe8, L0xffffffffdff0,
                         L0xffffffffdff8, L0xffffffffe000, L0xffffffffe008,
                         L0xffffffffe010, L0xffffffffe018, L0xffffffffe020])
              (limbs 64 [0@64,0@64,0@64,0@64,0@64,0@64,
                         0@64,0@64,0@64,0@64,0@64,0@64,
                         m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, ma, mb]);

assume eqmod (limbs 64 [L0xffffffffdea8, L0xffffffffdeb0, L0xffffffffdeb8,
                        L0xffffffffdec0, L0xffffffffdec8, L0xffffffffded0,
                        L0xffffffffded8, L0xffffffffdee0, L0xffffffffdee8,
                        L0xffffffffdef0, L0xffffffffdef8, L0xffffffffdf00,
                        L0xffffffffdf08, L0xffffffffdf10, L0xffffffffdf18,
                        L0xffffffffdf20, L0xffffffffdf28, L0xffffffffdf30,
                        L0xffffffffdf38, L0xffffffffdf40, L0xffffffffdf48,
                        L0xffffffffdf50, L0xffffffffdf58, L0xffffffffdf60])
             (limbs 64 [L0xffffffffdea8o, L0xffffffffdeb0o, L0xffffffffdeb8o,
                        L0xffffffffdec0o, L0xffffffffdec8o, L0xffffffffded0o,
                        L0xffffffffded8o, L0xffffffffdee0o, L0xffffffffdee8o,
                        L0xffffffffdef0o, L0xffffffffdef8o, L0xffffffffdf00o,
                        L0xffffffffdf08o, L0xffffffffdf10o, L0xffffffffdf18o,
                        L0xffffffffdf20o, L0xffffffffdf28o, L0xffffffffdf30o,
                        L0xffffffffdf38o, L0xffffffffdf40o, L0xffffffffdf48o,
                        L0xffffffffdf50o, L0xffffffffdf58o, L0xffffffffdf60o] -
              limbs 64 [L0xffffffffdf68, L0xffffffffdf70, L0xffffffffdf78,
                        L0xffffffffdf80, L0xffffffffdf88, L0xffffffffdf90,
                        L0xffffffffdf98, L0xffffffffdfa0, L0xffffffffdfa8,
                        L0xffffffffdfb0, L0xffffffffdfb8, L0xffffffffdfc0,
                        L0xffffffffdfc8, L0xffffffffdfd0, L0xffffffffdfd8,
                        L0xffffffffdfe0, L0xffffffffdfe8, L0xffffffffdff0,
                        L0xffffffffdff8, L0xffffffffe000, L0xffffffffe008,
                        L0xffffffffe010, L0xffffffffe018, L0xffffffffe020])
             (limbs 64 [0, 0, 0, 0, 0, 0,  0, 0, 0, 0, 0, 0,
                        m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, ma, mb]) && true;

(* CUT 6 *)
cut eqmod (limbs 64 [L0xffffffffdea8, L0xffffffffdeb0, L0xffffffffdeb8,
                     L0xffffffffdec0, L0xffffffffdec8, L0xffffffffded0,
                     L0xffffffffded8, L0xffffffffdee0, L0xffffffffdee8,
                     L0xffffffffdef0, L0xffffffffdef8, L0xffffffffdf00,
                     L0xffffffffdf08, L0xffffffffdf10, L0xffffffffdf18,
                     L0xffffffffdf20, L0xffffffffdf28, L0xffffffffdf30,
                     L0xffffffffdf38, L0xffffffffdf40, L0xffffffffdf48,
                     L0xffffffffdf50, L0xffffffffdf58, L0xffffffffdf60])
          (limbs 64 [ar0, ar1, ar2, ar3, ar4, ar5, ar6, ar7, ar8, ar9, ara, arb] *
           limbs 64 [br0, br1, br2, br3, br4, br5, br6, br7, br8, br9, bra, brb] -
           limbs 64 [ai0, ai1, ai2, ai3, ai4, ai5, ai6, ai7, ai8, ai9, aia, aib] *
           limbs 64 [bi0, bi1, bi2, bi3, bi4, bi5, bi6, bi7, bi8, bi9, bia, bib])
          (limbs 64 [0, 0, 0, 0, 0, 0,  0, 0, 0, 0, 0, 0,
                     m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, ma, mb])
    prove with [ cuts [ 2, 3 ] ]
 && limbs 64 [L0xffffffffdea8, L0xffffffffdeb0, L0xffffffffdeb8,
              L0xffffffffdec0, L0xffffffffdec8, L0xffffffffded0,
              L0xffffffffded8, L0xffffffffdee0, L0xffffffffdee8,
              L0xffffffffdef0, L0xffffffffdef8, L0xffffffffdf00,
              L0xffffffffdf08, L0xffffffffdf10, L0xffffffffdf18,
              L0xffffffffdf20, L0xffffffffdf28, L0xffffffffdf30,
              L0xffffffffdf38, L0xffffffffdf40, L0xffffffffdf48,
              L0xffffffffdf50, L0xffffffffdf58, L0xffffffffdf60] <u
    (2**1519)@1536
    prove with [ cuts [ 2, 3 ] ];
    
(* mov	x0, x20                                     #! PC = 0xaaaaaaaae564 *)
mov x0 x20;
(* add	x1, x22, #0x60                              #! PC = 0xaaaaaaaae568 *)
adds dontcare x1 x22 0x60@uint64;
(* #bl	0xaaaaaaab7544 <rdc_mont>                   #! PC = 0xaaaaaaaae56c *)
#bl	0xaaaaaaab7544 <rdc_mont>                   #! 0xaaaaaaaae56c = 0xaaaaaaaae56c;
(* #! -> SP = 0xffffffffdd80 *)
#! 0xffffffffdd80 = 0xffffffffdd80;
(* #b	0xaaaaaaab8548 <rdc751_asm>                  #! PC = 0xaaaaaaab7544 *)
#b	0xaaaaaaab8548 <rdc751_asm>                  #! 0xaaaaaaab7544 = 0xaaaaaaab7544;
(* sub	sp, sp, #0x60                               #! PC = 0xaaaaaaab8548 *)
subc dontcare sp sp 0x60@uint64;
(* stp	x19, x20, [sp]                              #! EA = L0xffffffffdd20; PC = 0xaaaaaaab854c *)
mov L0xffffffffdd20 x19;
mov L0xffffffffdd28 x20;
(* stp	x21, x22, [sp, #16]                         #! EA = L0xffffffffdd30; PC = 0xaaaaaaab8550 *)
mov L0xffffffffdd30 x21;
mov L0xffffffffdd38 x22;
(* stp	x23, x24, [sp, #32]                         #! EA = L0xffffffffdd40; PC = 0xaaaaaaab8554 *)
mov L0xffffffffdd40 x23;
mov L0xffffffffdd48 x24;
(* stp	x25, x26, [sp, #48]                         #! EA = L0xffffffffdd50; PC = 0xaaaaaaab8558 *)
mov L0xffffffffdd50 x25;
mov L0xffffffffdd58 x26;
(* stp	x27, x28, [sp, #64]                         #! EA = L0xffffffffdd60; PC = 0xaaaaaaab855c *)
mov L0xffffffffdd60 x27;
mov L0xffffffffdd68 x28;
(* stp	x29, x30, [sp, #80]                         #! EA = L0xffffffffdd70; PC = 0xaaaaaaab8560 *)
mov L0xffffffffdd70 x29;
mov L0xffffffffdd78 x30;
(* ldp	x2, x3, [x0]                                #! EA = L0xffffffffe028; Value = 0x48fd439bb247fd90; PC = 0xaaaaaaab8564 *)
mov x2 L0xffffffffe028;
mov x3 L0xffffffffe030;
(* ldp	x4, x5, [x0, #16]                           #! EA = L0xffffffffe038; Value = 0xdadf47e44848a1ac; PC = 0xaaaaaaab8568 *)
mov x4 L0xffffffffe038;
mov x5 L0xffffffffe040;
(* ldr	x23, 0xaaaaaaab7618 <p751p1_nz_s32>         #! PC = 0xaaaaaaab856c *)
mov x23 L0xaaaaaaab7618;
(* ldr	x24, 0xaaaaaaab7620 <p751p1_nz_s32+8>       #! PC = 0xaaaaaaab8570 *)
mov x24 L0xaaaaaaab7620;
(* ldr	x25, 0xaaaaaaab7628 <p751p1_nz_s32+16>      #! PC = 0xaaaaaaab8574 *)
mov x25 L0xaaaaaaab7628;
(* ldr	x26, 0xaaaaaaab7630 <p751p1_nz_s32+24>      #! PC = 0xaaaaaaab8578 *)
mov x26 L0xaaaaaaab7630;
(* ldr	x27, 0xaaaaaaab7638 <p751p1_nz_s32+32>      #! PC = 0xaaaaaaab857c *)
mov x27 L0xaaaaaaab7638;
(* ldr	x28, 0xaaaaaaab7640 <p751p1_nz_s32+40>      #! PC = 0xaaaaaaab8580 *)
mov x28 L0xaaaaaaab7640;
(* mul	x6, x2, x23                                 #! PC = 0xaaaaaaab8584 *)
mull Hx2x23 x6 x2 x23;
(* umulh	x9, x2, x23                               #! PC = 0xaaaaaaab8588 *)
mov x9 Hx2x23;
(* mul	x7, x2, x24                                 #! PC = 0xaaaaaaab858c *)
mull Hx2x24 x7 x2 x24;
(* umulh	x8, x2, x24                               #! PC = 0xaaaaaaab8590 *)
mov x8 Hx2x24;
(* mul	x10, x3, x23                                #! PC = 0xaaaaaaab8594 *)
mull Hx3x23 x10 x3 x23;
(* umulh	x11, x3, x23                              #! PC = 0xaaaaaaab8598 *)
mov x11 Hx3x23;
(* adds	x7, x7, x9                                 #! PC = 0xaaaaaaab859c *)
adds carry x7 x7 x9;
(* adc	x8, x8, xzr                                 #! PC = 0xaaaaaaab85a0 *)
adc x8 x8 0@uint64 carry;
(* mul	x29, x3, x24                                #! PC = 0xaaaaaaab85a4 *)
mull Hx3x24 x29 x3 x24;
(* umulh	x9, x3, x24                               #! PC = 0xaaaaaaab85a8 *)
mov x9 Hx3x24;
(* adds	x7, x7, x10                                #! PC = 0xaaaaaaab85ac *)
adds carry x7 x7 x10;
(* adcs	x8, x8, x11                                #! PC = 0xaaaaaaab85b0 *)
adcs carry x8 x8 x11 carry;
(* adc	x9, x9, xzr                                 #! PC = 0xaaaaaaab85b4 *)
adc x9 x9 0@uint64 carry;
(* mul	x10, x2, x25                                #! PC = 0xaaaaaaab85b8 *)
mull Hx2x25 x10 x2 x25;
(* umulh	x11, x2, x25                              #! PC = 0xaaaaaaab85bc *)
mov x11 Hx2x25;
(* adds	x8, x8, x29                                #! PC = 0xaaaaaaab85c0 *)
adds carry x8 x8 x29;
(* adcs	x9, x9, x11                                #! PC = 0xaaaaaaab85c4 *)
adcs carry x9 x9 x11 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab85c8 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x29, x4, x23                                #! PC = 0xaaaaaaab85cc *)
mull Hx4x23 x29 x4 x23;
(* umulh	x11, x4, x23                              #! PC = 0xaaaaaaab85d0 *)
mov x11 Hx4x23;
(* adds	x8, x8, x10                                #! PC = 0xaaaaaaab85d4 *)
adds carry x8 x8 x10;
(* adcs	x9, x9, x11                                #! PC = 0xaaaaaaab85d8 *)
adcs carry x9 x9 x11 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab85dc *)
adc x30 x30 0@uint64 carry;
(* mul	x10, x3, x25                                #! PC = 0xaaaaaaab85e0 *)
mull Hx3x25 x10 x3 x25;
(* umulh	x11, x3, x25                              #! PC = 0xaaaaaaab85e4 *)
mov x11 Hx3x25;
(* adds	x8, x8, x29                                #! PC = 0xaaaaaaab85e8 *)
adds carry x8 x8 x29;
(* adcs	x9, x9, x10                                #! PC = 0xaaaaaaab85ec *)
adcs carry x9 x9 x10 carry;
(* adcs	x30, x30, x11                              #! PC = 0xaaaaaaab85f0 *)
adcs carry x30 x30 x11 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab85f4 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x10, x4, x24                                #! PC = 0xaaaaaaab85f8 *)
mull Hx4x24 x10 x4 x24;
(* umulh	x11, x4, x24                              #! PC = 0xaaaaaaab85fc *)
mov x11 Hx4x24;
(* adds	x9, x9, x10                                #! PC = 0xaaaaaaab8600 *)
adds carry x9 x9 x10;
(* adcs	x30, x30, x11                              #! PC = 0xaaaaaaab8604 *)
adcs carry x30 x30 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8608 *)
adc x29 x29 0@uint64 carry;
(* mul	x10, x5, x23                                #! PC = 0xaaaaaaab860c *)
mull Hx5x23 x10 x5 x23;
(* umulh	x11, x5, x23                              #! PC = 0xaaaaaaab8610 *)
mov x11 Hx5x23;
(* adds	x9, x9, x10                                #! PC = 0xaaaaaaab8614 *)
adds carry x9 x9 x10;
(* adcs	x30, x30, x11                              #! PC = 0xaaaaaaab8618 *)
adcs carry x30 x30 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab861c *)
adc x29 x29 0@uint64 carry;
(* mul	x10, x2, x26                                #! PC = 0xaaaaaaab8620 *)
mull Hx2x26 x10 x2 x26;
(* umulh	x11, x2, x26                              #! PC = 0xaaaaaaab8624 *)
mov x11 Hx2x26;
(* adds	x9, x9, x10                                #! PC = 0xaaaaaaab8628 *)
adds carry x9 x9 x10;
(* adcs	x30, x30, x11                              #! PC = 0xaaaaaaab862c *)
adcs carry x30 x30 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8630 *)
adc x29 x29 0@uint64 carry;
(* mul	x12, x4, x25                                #! PC = 0xaaaaaaab8634 *)
mull Hx4x25 x12 x4 x25;
(* umulh	x13, x4, x25                              #! PC = 0xaaaaaaab8638 *)
mov x13 Hx4x25;
(* adds	x10, x12, x30                              #! PC = 0xaaaaaaab863c *)
adds carry x10 x12 x30;
(* adcs	x11, x13, x29                              #! PC = 0xaaaaaaab8640 *)
adcs carry x11 x13 x29 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab8644 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x12, x2, x27                                #! PC = 0xaaaaaaab8648 *)
mull Hx2x27 x12 x2 x27;
(* umulh	x13, x2, x27                              #! PC = 0xaaaaaaab864c *)
mov x13 Hx2x27;
(* adds	x10, x12, x10                              #! PC = 0xaaaaaaab8650 *)
adds carry x10 x12 x10;
(* adcs	x11, x13, x11                              #! PC = 0xaaaaaaab8654 *)
adcs carry x11 x13 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8658 *)
adc x29 x29 0@uint64 carry;
(* mul	x12, x3, x26                                #! PC = 0xaaaaaaab865c *)
mull Hx3x26 x12 x3 x26;
(* umulh	x13, x3, x26                              #! PC = 0xaaaaaaab8660 *)
mov x13 Hx3x26;
(* adds	x10, x12, x10                              #! PC = 0xaaaaaaab8664 *)
adds carry x10 x12 x10;
(* adcs	x11, x13, x11                              #! PC = 0xaaaaaaab8668 *)
adcs carry x11 x13 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab866c *)
adc x29 x29 0@uint64 carry;
(* mul	x12, x5, x24                                #! PC = 0xaaaaaaab8670 *)
mull Hx5x24 x12 x5 x24;
(* umulh	x13, x5, x24                              #! PC = 0xaaaaaaab8674 *)
mov x13 Hx5x24;
(* adds	x10, x12, x10                              #! PC = 0xaaaaaaab8678 *)
adds carry x10 x12 x10;
(* adcs	x11, x13, x11                              #! PC = 0xaaaaaaab867c *)
adcs carry x11 x13 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8680 *)
adc x29 x29 0@uint64 carry;
(* mul	x12, x2, x28                                #! PC = 0xaaaaaaab8684 *)
mull Hx2x28 x12 x2 x28;
(* umulh	x13, x2, x28                              #! PC = 0xaaaaaaab8688 *)
mov x13 Hx2x28;
(* adds	x11, x12, x11                              #! PC = 0xaaaaaaab868c *)
adds carry x11 x12 x11;
(* adcs	x29, x13, x29                              #! PC = 0xaaaaaaab8690 *)
adcs carry x29 x13 x29 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab8694 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x12, x3, x27                                #! PC = 0xaaaaaaab8698 *)
mull Hx3x27 x12 x3 x27;
(* umulh	x13, x3, x27                              #! PC = 0xaaaaaaab869c *)
mov x13 Hx3x27;
(* adds	x11, x12, x11                              #! PC = 0xaaaaaaab86a0 *)
adds carry x11 x12 x11;
(* adcs	x29, x13, x29                              #! PC = 0xaaaaaaab86a4 *)
adcs carry x29 x13 x29 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab86a8 *)
adc x30 x30 0@uint64 carry;
(* mul	x12, x4, x26                                #! PC = 0xaaaaaaab86ac *)
mull Hx4x26 x12 x4 x26;
(* umulh	x13, x4, x26                              #! PC = 0xaaaaaaab86b0 *)
mov x13 Hx4x26;
(* adds	x11, x12, x11                              #! PC = 0xaaaaaaab86b4 *)
adds carry x11 x12 x11;
(* adcs	x29, x13, x29                              #! PC = 0xaaaaaaab86b8 *)
adcs carry x29 x13 x29 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab86bc *)
adc x30 x30 0@uint64 carry;
(* mul	x12, x5, x25                                #! PC = 0xaaaaaaab86c0 *)
mull Hx5x25 x12 x5 x25;
(* umulh	x13, x5, x25                              #! PC = 0xaaaaaaab86c4 *)
mov x13 Hx5x25;
(* adds	x11, x12, x11                              #! PC = 0xaaaaaaab86c8 *)
adds carry x11 x12 x11;
(* adcs	x29, x13, x29                              #! PC = 0xaaaaaaab86cc *)
adcs carry x29 x13 x29 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab86d0 *)
adc x30 x30 0@uint64 carry;
(* mul	x14, x3, x28                                #! PC = 0xaaaaaaab86d4 *)
mull Hx3x28 x14 x3 x28;
(* umulh	x15, x3, x28                              #! PC = 0xaaaaaaab86d8 *)
mov x15 Hx3x28;
(* adds	x12, x14, x29                              #! PC = 0xaaaaaaab86dc *)
adds carry x12 x14 x29;
(* adcs	x30, x15, x30                              #! PC = 0xaaaaaaab86e0 *)
adcs carry x30 x15 x30 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab86e4 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x14, x4, x27                                #! PC = 0xaaaaaaab86e8 *)
mull Hx4x27 x14 x4 x27;
(* umulh	x15, x4, x27                              #! PC = 0xaaaaaaab86ec *)
mov x15 Hx4x27;
(* adds	x12, x14, x12                              #! PC = 0xaaaaaaab86f0 *)
adds carry x12 x14 x12;
(* adcs	x30, x15, x30                              #! PC = 0xaaaaaaab86f4 *)
adcs carry x30 x15 x30 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab86f8 *)
adc x29 x29 0@uint64 carry;
(* mul	x14, x5, x26                                #! PC = 0xaaaaaaab86fc *)
mull Hx5x26 x14 x5 x26;
(* umulh	x15, x5, x26                              #! PC = 0xaaaaaaab8700 *)
mov x15 Hx5x26;
(* adds	x12, x14, x12                              #! PC = 0xaaaaaaab8704 *)
adds carry x12 x14 x12;
(* adcs	x30, x15, x30                              #! PC = 0xaaaaaaab8708 *)
adcs carry x30 x15 x30 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab870c *)
adc x29 x29 0@uint64 carry;
(* mul	x14, x4, x28                                #! PC = 0xaaaaaaab8710 *)
mull Hx4x28 x14 x4 x28;
(* umulh	x15, x4, x28                              #! PC = 0xaaaaaaab8714 *)
mov x15 Hx4x28;
(* adds	x13, x14, x30                              #! PC = 0xaaaaaaab8718 *)
adds carry x13 x14 x30;
(* adcs	x29, x15, x29                              #! PC = 0xaaaaaaab871c *)
adcs carry x29 x15 x29 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab8720 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x14, x5, x27                                #! PC = 0xaaaaaaab8724 *)
mull Hx5x27 x14 x5 x27;
(* umulh	x15, x5, x27                              #! PC = 0xaaaaaaab8728 *)
mov x15 Hx5x27;
(* adds	x13, x14, x13                              #! PC = 0xaaaaaaab872c *)
adds carry x13 x14 x13;
(* adcs	x29, x15, x29                              #! PC = 0xaaaaaaab8730 *)
adcs carry x29 x15 x29 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab8734 *)
adc x30 x30 0@uint64 carry;
(* mul	x14, x5, x28                                #! PC = 0xaaaaaaab8738 *)
mull Hx5x28 x14 x5 x28;
(* umulh	x15, x5, x28                              #! PC = 0xaaaaaaab873c *)
mov x15 Hx5x28;
(* adds	x14, x14, x29                              #! PC = 0xaaaaaaab8740 *)
adds carry x14 x14 x29;
(* adc	x15, x15, x30                               #! PC = 0xaaaaaaab8744 *)
adc x15 x15 x30 carry;
(* ldp	x2, x3, [x0, #32]                           #! EA = L0xffffffffe048; Value = 0x275223d96744d0ae; PC = 0xaaaaaaab8748 *)
mov x2 L0xffffffffe048;
mov x3 L0xffffffffe050;
(* ldp	x4, x5, [x0, #48]                           #! EA = L0xffffffffe058; Value = 0xa82d89a43750f5a0; PC = 0xaaaaaaab874c *)
mov x4 L0xffffffffe058;
mov x5 L0xffffffffe060;
(* ldp	x16, x17, [x0, #64]                         #! EA = L0xffffffffe068; Value = 0x334d4a944a7a12cd; PC = 0xaaaaaaab8750 *)
mov x16 L0xffffffffe068;
mov x17 L0xffffffffe070;
(* orr	x30, xzr, x15, lsr #17                      #! PC = 0xaaaaaaab8754 *)
split x30 Lx15 x15 17;
(* lsl	x15, x15, #47                               #! PC = 0xaaaaaaab8758 *)
shl x15 Lx15 47;
(* orr	x15, x15, x14, lsr #17                      #! PC = 0xaaaaaaab875c *)
split Hx14 Lx14 x14 17;
add x15 x15 Hx14;
(* lsl	x14, x14, #47                               #! PC = 0xaaaaaaab8760 *)
shl x14 Lx14 47;
(* orr	x14, x14, x13, lsr #17                      #! PC = 0xaaaaaaab8764 *)
split Hx13 Lx13 x13 17;
add x14 x14 Hx13;
(* lsl	x13, x13, #47                               #! PC = 0xaaaaaaab8768 *)
shl x13 Lx13 47;
(* orr	x13, x13, x12, lsr #17                      #! PC = 0xaaaaaaab876c *)
split Hx12 Lx12 x12 17;
add x13 x13 Hx12;
(* lsl	x12, x12, #47                               #! PC = 0xaaaaaaab8770 *)
shl x12 Lx12 47;
(* orr	x12, x12, x11, lsr #17                      #! PC = 0xaaaaaaab8774 *)
split Hx11 Lx11 x11 17;
add x12 x12 Hx11;
(* lsl	x11, x11, #47                               #! PC = 0xaaaaaaab8778 *)
shl x11 Lx11 47;
(* orr	x11, x11, x10, lsr #17                      #! PC = 0xaaaaaaab877c *)
split Hx10 Lx10 x10 17;
add x11 x11 Hx10;
(* lsl	x10, x10, #47                               #! PC = 0xaaaaaaab8780 *)
shl x10 Lx10 47;
(* orr	x10, x10, x9, lsr #17                       #! PC = 0xaaaaaaab8784 *)
split Hx9 Lx9 x9 17;
add x10 x10 Hx9;
(* lsl	x9, x9, #47                                 #! PC = 0xaaaaaaab8788 *)
shl x9 Lx9 47;
(* orr	x9, x9, x8, lsr #17                         #! PC = 0xaaaaaaab878c *)
split Hx8 Lx8 x8 17;
add x9 x9 Hx8;
(* lsl	x8, x8, #47                                 #! PC = 0xaaaaaaab8790 *)
shl x8 Lx8 47;
(* orr	x8, x8, x7, lsr #17                         #! PC = 0xaaaaaaab8794 *)
split Hx7 Lx7 x7 17;
add x8 x8 Hx7;
(* lsl	x7, x7, #47                                 #! PC = 0xaaaaaaab8798 *)
shl x7 Lx7 47;
(* orr	x7, x7, x6, lsr #17                         #! PC = 0xaaaaaaab879c *)
split Hx6 Lx6 x6 17;
add x7 x7 Hx6;
(* lsl	x6, x6, #47                                 #! PC = 0xaaaaaaab87a0 *)
shl x6 Lx6 47;
(* adds	x3, x3, x6                                 #! PC = 0xaaaaaaab87a4 *)
adds carry x3 x3 x6;
(* adcs	x4, x4, x7                                 #! PC = 0xaaaaaaab87a8 *)
adcs carry x4 x4 x7 carry;
(* ldp	x6, x7, [x0, #80]                           #! EA = L0xffffffffe078; Value = 0xb86137ec39471eb0; PC = 0xaaaaaaab87ac *)
mov x6 L0xffffffffe078;
mov x7 L0xffffffffe080;
(* adcs	x5, x5, x8                                 #! PC = 0xaaaaaaab87b0 *)
adcs carry x5 x5 x8 carry;
(* adcs	x16, x16, x9                               #! PC = 0xaaaaaaab87b4 *)
adcs carry x16 x16 x9 carry;
(* ldp	x8, x9, [x0, #96]                           #! EA = L0xffffffffe088; Value = 0x40f90a21fd135c39; PC = 0xaaaaaaab87b8 *)
mov x8 L0xffffffffe088;
mov x9 L0xffffffffe090;
(* adcs	x17, x17, x10                              #! PC = 0xaaaaaaab87bc *)
adcs carry x17 x17 x10 carry;
(* adcs	x19, x6, x11                               #! PC = 0xaaaaaaab87c0 *)
adcs carry x19 x6 x11 carry;
(* adcs	x20, x7, x12                               #! PC = 0xaaaaaaab87c4 *)
adcs carry x20 x7 x12 carry;
(* ldp	x6, x7, [x0, #112]                          #! EA = L0xffffffffe098; Value = 0x95777c54de744e4e; PC = 0xaaaaaaab87c8 *)
mov x6 L0xffffffffe098;
mov x7 L0xffffffffe0a0;
(* adcs	x21, x8, x13                               #! PC = 0xaaaaaaab87cc *)
adcs carry x21 x8 x13 carry;
(* umulh	x8, x2, x24                               #! PC = 0xaaaaaaab87d0 *)
(* NOTE: merged with mul x7, x2, x24 *)
(* mov x8 Hx2x24; *)
(* adcs	x22, x9, x14                               #! PC = 0xaaaaaaab87d4 *)
adcs carry x22 x9 x14 carry;
(* umulh	x9, x2, x23                               #! PC = 0xaaaaaaab87d8 *)
(* NOTE: merged with mul x6, x2, x23 *)
(* mov x9 Hx2x23; *)
(* adcs	x13, x6, x15                               #! PC = 0xaaaaaaab87dc *)
adcs carry x13 x6 x15 carry;
(* mul	x6, x2, x23                                 #! PC = 0xaaaaaaab87e0 *)
mull x9 x6 x2 x23;
(* adcs	x14, x7, x30                               #! PC = 0xaaaaaaab87e4 *)
adcs carry x14 x7 x30 carry;
(* mul	x7, x2, x24                                 #! PC = 0xaaaaaaab87e8 *)
mull x8 x7 x2 x24;
(* adc	x15, xzr, xzr                               #! PC = 0xaaaaaaab87ec *)
adc x15 0@uint64 0@uint64 carry;
(* stp	x13, x14, [x0]                              #! EA = L0xffffffffe028; PC = 0xaaaaaaab87f0 *)
mov L0xffffffffe028 x13;
mov L0xffffffffe030 x14;
(* str	x15, [x0, #16]                              #! EA = L0xffffffffe038; PC = 0xaaaaaaab87f4 *)
mov L0xffffffffe038 x15;
(* mul	x10, x3, x23                                #! PC = 0xaaaaaaab87f8 *)
mull Hx3x23 x10 x3 x23;
(* umulh	x11, x3, x23                              #! PC = 0xaaaaaaab87fc *)
mov x11 Hx3x23;
(* adds	x7, x7, x9                                 #! PC = 0xaaaaaaab8800 *)
adds carry x7 x7 x9;
(* adc	x8, x8, xzr                                 #! PC = 0xaaaaaaab8804 *)
adc x8 x8 0@uint64 carry;
(* mul	x29, x3, x24                                #! PC = 0xaaaaaaab8808 *)
mull Hx3x24 x29 x3 x24;
(* umulh	x9, x3, x24                               #! PC = 0xaaaaaaab880c *)
mov x9 Hx3x24;
(* adds	x7, x7, x10                                #! PC = 0xaaaaaaab8810 *)
adds carry x7 x7 x10;
(* adcs	x8, x8, x11                                #! PC = 0xaaaaaaab8814 *)
adcs carry x8 x8 x11 carry;
(* adc	x9, x9, xzr                                 #! PC = 0xaaaaaaab8818 *)
adc x9 x9 0@uint64 carry;
(* mul	x10, x2, x25                                #! PC = 0xaaaaaaab881c *)
mull Hx2x25 x10 x2 x25;
(* umulh	x11, x2, x25                              #! PC = 0xaaaaaaab8820 *)
mov x11 Hx2x25;
(* adds	x8, x8, x29                                #! PC = 0xaaaaaaab8824 *)
adds carry x8 x8 x29;
(* adcs	x9, x9, x11                                #! PC = 0xaaaaaaab8828 *)
adcs carry x9 x9 x11 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab882c *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x29, x4, x23                                #! PC = 0xaaaaaaab8830 *)
mull Hx4x23 x29 x4 x23;
(* umulh	x11, x4, x23                              #! PC = 0xaaaaaaab8834 *)
mov x11 Hx4x23;
(* adds	x8, x8, x10                                #! PC = 0xaaaaaaab8838 *)
adds carry x8 x8 x10;
(* adcs	x9, x9, x11                                #! PC = 0xaaaaaaab883c *)
adcs carry x9 x9 x11 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab8840 *)
adc x30 x30 0@uint64 carry;
(* mul	x10, x3, x25                                #! PC = 0xaaaaaaab8844 *)
mull Hx3x25 x10 x3 x25;
(* umulh	x11, x3, x25                              #! PC = 0xaaaaaaab8848 *)
mov x11 Hx3x25;
(* adds	x8, x8, x29                                #! PC = 0xaaaaaaab884c *)
adds carry x8 x8 x29;
(* adcs	x9, x9, x10                                #! PC = 0xaaaaaaab8850 *)
adcs carry x9 x9 x10 carry;
(* adcs	x30, x30, x11                              #! PC = 0xaaaaaaab8854 *)
adcs carry x30 x30 x11 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab8858 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x10, x4, x24                                #! PC = 0xaaaaaaab885c *)
mull Hx4x24 x10 x4 x24;
(* umulh	x11, x4, x24                              #! PC = 0xaaaaaaab8860 *)
mov x11 Hx4x24;
(* adds	x9, x9, x10                                #! PC = 0xaaaaaaab8864 *)
adds carry x9 x9 x10;
(* adcs	x30, x30, x11                              #! PC = 0xaaaaaaab8868 *)
adcs carry x30 x30 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab886c *)
adc x29 x29 0@uint64 carry;
(* mul	x10, x5, x23                                #! PC = 0xaaaaaaab8870 *)
mull Hx5x23 x10 x5 x23;
(* umulh	x11, x5, x23                              #! PC = 0xaaaaaaab8874 *)
mov x11 Hx5x23;
(* adds	x9, x9, x10                                #! PC = 0xaaaaaaab8878 *)
adds carry x9 x9 x10;
(* adcs	x30, x30, x11                              #! PC = 0xaaaaaaab887c *)
adcs carry x30 x30 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8880 *)
adc x29 x29 0@uint64 carry;
(* mul	x10, x2, x26                                #! PC = 0xaaaaaaab8884 *)
mull Hx2x26 x10 x2 x26;
(* umulh	x11, x2, x26                              #! PC = 0xaaaaaaab8888 *)
mov x11 Hx2x26;
(* adds	x9, x9, x10                                #! PC = 0xaaaaaaab888c *)
adds carry x9 x9 x10;
(* adcs	x30, x30, x11                              #! PC = 0xaaaaaaab8890 *)
adcs carry x30 x30 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8894 *)
adc x29 x29 0@uint64 carry;
(* mul	x12, x4, x25                                #! PC = 0xaaaaaaab8898 *)
mull Hx4x25 x12 x4 x25;
(* umulh	x13, x4, x25                              #! PC = 0xaaaaaaab889c *)
mov x13 Hx4x25;
(* adds	x10, x12, x30                              #! PC = 0xaaaaaaab88a0 *)
adds carry x10 x12 x30;
(* adcs	x11, x13, x29                              #! PC = 0xaaaaaaab88a4 *)
adcs carry x11 x13 x29 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab88a8 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x12, x2, x27                                #! PC = 0xaaaaaaab88ac *)
mull Hx2x27 x12 x2 x27;
(* umulh	x13, x2, x27                              #! PC = 0xaaaaaaab88b0 *)
mov x13 Hx2x27;
(* adds	x10, x12, x10                              #! PC = 0xaaaaaaab88b4 *)
adds carry x10 x12 x10;
(* adcs	x11, x13, x11                              #! PC = 0xaaaaaaab88b8 *)
adcs carry x11 x13 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab88bc *)
adc x29 x29 0@uint64 carry;
(* mul	x12, x3, x26                                #! PC = 0xaaaaaaab88c0 *)
mull Hx3x26 x12 x3 x26;
(* umulh	x13, x3, x26                              #! PC = 0xaaaaaaab88c4 *)
mov x13 Hx3x26;
(* adds	x10, x12, x10                              #! PC = 0xaaaaaaab88c8 *)
adds carry x10 x12 x10;
(* adcs	x11, x13, x11                              #! PC = 0xaaaaaaab88cc *)
adcs carry x11 x13 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab88d0 *)
adc x29 x29 0@uint64 carry;
(* mul	x12, x5, x24                                #! PC = 0xaaaaaaab88d4 *)
mull Hx5x24 x12 x5 x24;
(* umulh	x13, x5, x24                              #! PC = 0xaaaaaaab88d8 *)
mov x13 Hx5x24;
(* adds	x10, x12, x10                              #! PC = 0xaaaaaaab88dc *)
adds carry x10 x12 x10;
(* adcs	x11, x13, x11                              #! PC = 0xaaaaaaab88e0 *)
adcs carry x11 x13 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab88e4 *)
adc x29 x29 0@uint64 carry;
(* mul	x12, x2, x28                                #! PC = 0xaaaaaaab88e8 *)
mull Hx2x28 x12 x2 x28;
(* umulh	x13, x2, x28                              #! PC = 0xaaaaaaab88ec *)
mov x13 Hx2x28;
(* adds	x11, x12, x11                              #! PC = 0xaaaaaaab88f0 *)
adds carry x11 x12 x11;
(* adcs	x29, x13, x29                              #! PC = 0xaaaaaaab88f4 *)
adcs carry x29 x13 x29 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab88f8 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x12, x3, x27                                #! PC = 0xaaaaaaab88fc *)
mull Hx3x27 x12 x3 x27;
(* umulh	x13, x3, x27                              #! PC = 0xaaaaaaab8900 *)
mov x13 Hx3x27;
(* adds	x11, x12, x11                              #! PC = 0xaaaaaaab8904 *)
adds carry x11 x12 x11;
(* adcs	x29, x13, x29                              #! PC = 0xaaaaaaab8908 *)
adcs carry x29 x13 x29 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab890c *)
adc x30 x30 0@uint64 carry;
(* mul	x12, x4, x26                                #! PC = 0xaaaaaaab8910 *)
mull Hx4x26 x12 x4 x26;
(* umulh	x13, x4, x26                              #! PC = 0xaaaaaaab8914 *)
mov x13 Hx4x26;
(* adds	x11, x12, x11                              #! PC = 0xaaaaaaab8918 *)
adds carry x11 x12 x11;
(* adcs	x29, x13, x29                              #! PC = 0xaaaaaaab891c *)
adcs carry x29 x13 x29 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab8920 *)
adc x30 x30 0@uint64 carry;
(* mul	x12, x5, x25                                #! PC = 0xaaaaaaab8924 *)
mull Hx5x25 x12 x5 x25;
(* umulh	x13, x5, x25                              #! PC = 0xaaaaaaab8928 *)
mov x13 Hx5x25;
(* adds	x11, x12, x11                              #! PC = 0xaaaaaaab892c *)
adds carry x11 x12 x11;
(* adcs	x29, x13, x29                              #! PC = 0xaaaaaaab8930 *)
adcs carry x29 x13 x29 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab8934 *)
adc x30 x30 0@uint64 carry;
(* mul	x14, x3, x28                                #! PC = 0xaaaaaaab8938 *)
mull Hx3x28 x14 x3 x28;
(* umulh	x15, x3, x28                              #! PC = 0xaaaaaaab893c *)
mov x15 Hx3x28;
(* adds	x12, x14, x29                              #! PC = 0xaaaaaaab8940 *)
adds carry x12 x14 x29;
(* adcs	x30, x15, x30                              #! PC = 0xaaaaaaab8944 *)
adcs carry x30 x15 x30 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab8948 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x14, x4, x27                                #! PC = 0xaaaaaaab894c *)
mull Hx4x27 x14 x4 x27;
(* umulh	x15, x4, x27                              #! PC = 0xaaaaaaab8950 *)
mov x15 Hx4x27;
(* adds	x12, x14, x12                              #! PC = 0xaaaaaaab8954 *)
adds carry x12 x14 x12;
(* adcs	x30, x15, x30                              #! PC = 0xaaaaaaab8958 *)
adcs carry x30 x15 x30 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab895c *)
adc x29 x29 0@uint64 carry;
(* mul	x14, x5, x26                                #! PC = 0xaaaaaaab8960 *)
mull Hx5x26 x14 x5 x26;
(* umulh	x15, x5, x26                              #! PC = 0xaaaaaaab8964 *)
mov x15 Hx5x26;
(* adds	x12, x14, x12                              #! PC = 0xaaaaaaab8968 *)
adds carry x12 x14 x12;
(* adcs	x30, x15, x30                              #! PC = 0xaaaaaaab896c *)
adcs carry x30 x15 x30 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8970 *)
adc x29 x29 0@uint64 carry;
(* mul	x14, x4, x28                                #! PC = 0xaaaaaaab8974 *)
mull Hx4x28 x14 x4 x28;
(* umulh	x15, x4, x28                              #! PC = 0xaaaaaaab8978 *)
mov x15 Hx4x28;
(* adds	x13, x14, x30                              #! PC = 0xaaaaaaab897c *)
adds carry x13 x14 x30;
(* adcs	x29, x15, x29                              #! PC = 0xaaaaaaab8980 *)
adcs carry x29 x15 x29 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab8984 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x14, x5, x27                                #! PC = 0xaaaaaaab8988 *)
mull Hx5x27 x14 x5 x27;
(* umulh	x15, x5, x27                              #! PC = 0xaaaaaaab898c *)
mov x15 Hx5x27;
(* adds	x13, x14, x13                              #! PC = 0xaaaaaaab8990 *)
adds carry x13 x14 x13;
(* adcs	x29, x15, x29                              #! PC = 0xaaaaaaab8994 *)
adcs carry x29 x15 x29 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab8998 *)
adc x30 x30 0@uint64 carry;
(* mul	x14, x5, x28                                #! PC = 0xaaaaaaab899c *)
mull Hx5x28 x14 x5 x28;
(* umulh	x15, x5, x28                              #! PC = 0xaaaaaaab89a0 *)
mov x15 Hx5x28;
(* adds	x14, x14, x29                              #! PC = 0xaaaaaaab89a4 *)
adds carry x14 x14 x29;
(* adc	x15, x15, x30                               #! PC = 0xaaaaaaab89a8 *)
adc x15 x15 x30 carry;
(* orr	x30, xzr, x15, lsr #17                      #! PC = 0xaaaaaaab89ac *)
split x30 Lx15 x15 17;
(* lsl	x15, x15, #47                               #! PC = 0xaaaaaaab89b0 *)
shl x15 Lx15 47;
(* orr	x15, x15, x14, lsr #17                      #! PC = 0xaaaaaaab89b4 *)
split Hx14 Lx14 x14 17;
add x15 x15 Hx14;
(* lsl	x14, x14, #47                               #! PC = 0xaaaaaaab89b8 *)
shl x14 Lx14 47;
(* orr	x14, x14, x13, lsr #17                      #! PC = 0xaaaaaaab89bc *)
split Hx13 Lx13 x13 17;
add x14 x14 Hx13;
(* lsl	x13, x13, #47                               #! PC = 0xaaaaaaab89c0 *)
shl x13 Lx13 47;
(* orr	x13, x13, x12, lsr #17                      #! PC = 0xaaaaaaab89c4 *)
split Hx12 Lx12 x12 17;
add x13 x13 Hx12;
(* lsl	x12, x12, #47                               #! PC = 0xaaaaaaab89c8 *)
shl x12 Lx12 47;
(* orr	x12, x12, x11, lsr #17                      #! PC = 0xaaaaaaab89cc *)
split Hx11 Lx11 x11 17;
add x12 x12 Hx11;
(* lsl	x11, x11, #47                               #! PC = 0xaaaaaaab89d0 *)
shl x11 Lx11 47;
(* orr	x11, x11, x10, lsr #17                      #! PC = 0xaaaaaaab89d4 *)
split Hx10 Lx10 x10 17;
add x11 x11 Hx10;
(* lsl	x10, x10, #47                               #! PC = 0xaaaaaaab89d8 *)
shl x10 Lx10 47;
(* orr	x10, x10, x9, lsr #17                       #! PC = 0xaaaaaaab89dc *)
split Hx9 Lx9 x9 17;
add x10 x10 Hx9;
(* lsl	x9, x9, #47                                 #! PC = 0xaaaaaaab89e0 *)
shl x9 Lx9 47;
(* orr	x9, x9, x8, lsr #17                         #! PC = 0xaaaaaaab89e4 *)
split Hx8 Lx8 x8 17;
add x9 x9 Hx8;
(* lsl	x8, x8, #47                                 #! PC = 0xaaaaaaab89e8 *)
shl x8 Lx8 47;
(* orr	x8, x8, x7, lsr #17                         #! PC = 0xaaaaaaab89ec *)
split Hx7 Lx7 x7 17;
add x8 x8 Hx7;
(* lsl	x7, x7, #47                                 #! PC = 0xaaaaaaab89f0 *)
shl x7 Lx7 47;
(* orr	x7, x7, x6, lsr #17                         #! PC = 0xaaaaaaab89f4 *)
split Hx6 Lx6 x6 17;
add x7 x7 Hx6;
(* lsl	x6, x6, #47                                 #! PC = 0xaaaaaaab89f8 *)
shl x6 Lx6 47;
(* ldp	x2, x3, [x0]                                #! EA = L0xffffffffe028; Value = 0x4f73fe37a3ae9f93; PC = 0xaaaaaaab89fc *)
mov x2 L0xffffffffe028;
mov x3 L0xffffffffe030;
(* ldp	x4, x5, [x0, #128]                          #! EA = L0xffffffffe0a8; Value = 0x6e8e0085ddcca023; PC = 0xaaaaaaab8a00 *)
mov x4 L0xffffffffe0a8;
mov x5 L0xffffffffe0b0;
(* adds	x17, x17, x6                               #! PC = 0xaaaaaaab8a04 *)
adds carry x17 x17 x6;
(* adcs	x19, x19, x7                               #! PC = 0xaaaaaaab8a08 *)
adcs carry x19 x19 x7 carry;
(* adcs	x20, x20, x8                               #! PC = 0xaaaaaaab8a0c *)
adcs carry x20 x20 x8 carry;
(* adcs	x21, x21, x9                               #! PC = 0xaaaaaaab8a10 *)
adcs carry x21 x21 x9 carry;
(* ldp	x6, x7, [x0, #144]                          #! EA = L0xffffffffe0b8; Value = 0xdde52ddc271d47b1; PC = 0xaaaaaaab8a14 *)
mov x6 L0xffffffffe0b8;
mov x7 L0xffffffffe0c0;
(* umulh	x8, x16, x24                              #! PC = 0xaaaaaaab8a18 *)
(* NOTE: merged with mul x7, x16, x24 *)
(* mov x8 Hx16x24; *)
(* adcs	x22, x22, x10                              #! PC = 0xaaaaaaab8a1c *)
adcs carry x22 x22 x10 carry;
(* adcs	x2, x2, x11                                #! PC = 0xaaaaaaab8a20 *)
adcs carry x2 x2 x11 carry;
(* adcs	x3, x3, x12                                #! PC = 0xaaaaaaab8a24 *)
adcs carry x3 x3 x12 carry;
(* umulh	x9, x16, x23                              #! PC = 0xaaaaaaab8a28 *)
(* NOTE: merged with mul x6, x16, x23 *)
(* mov x9 Hx16x23; *)
(* adcs	x13, x13, x4                               #! PC = 0xaaaaaaab8a2c *)
adcs carry x13 x13 x4 carry;
(* adcs	x14, x14, x5                               #! PC = 0xaaaaaaab8a30 *)
adcs carry x14 x14 x5 carry;
(* adcs	x4, x15, x6                                #! PC = 0xaaaaaaab8a34 *)
adcs carry x4 x15 x6 carry;
(* mul	x6, x16, x23                                #! PC = 0xaaaaaaab8a38 *)
mull x9 x6 x16 x23;
(* adcs	x5, x30, x7                                #! PC = 0xaaaaaaab8a3c *)
adcs carry x5 x30 x7 carry;
(* mul	x7, x16, x24                                #! PC = 0xaaaaaaab8a40 *)
mull x8 x7 x16 x24;
(* adc	x10, xzr, xzr                               #! PC = 0xaaaaaaab8a44 *)
adc x10 0@uint64 0@uint64 carry;
(* stp	x13, x14, [x0]                              #! EA = L0xffffffffe028; PC = 0xaaaaaaab8a48 *)
mov L0xffffffffe028 x13;
mov L0xffffffffe030 x14;
(* str	x10, [x0, #32]                              #! EA = L0xffffffffe048; PC = 0xaaaaaaab8a4c *)
mov L0xffffffffe048 x10;
(* mul	x10, x17, x23                               #! PC = 0xaaaaaaab8a50 *)
mull Hx17x23 x10 x17 x23;
(* umulh	x11, x17, x23                             #! PC = 0xaaaaaaab8a54 *)
mov x11 Hx17x23;
(* adds	x7, x7, x9                                 #! PC = 0xaaaaaaab8a58 *)
adds carry x7 x7 x9;
(* adc	x8, x8, xzr                                 #! PC = 0xaaaaaaab8a5c *)
adc x8 x8 0@uint64 carry;
(* mul	x29, x17, x24                               #! PC = 0xaaaaaaab8a60 *)
mull Hx17x24 x29 x17 x24;
(* umulh	x9, x17, x24                              #! PC = 0xaaaaaaab8a64 *)
mov x9 Hx17x24;
(* adds	x7, x7, x10                                #! PC = 0xaaaaaaab8a68 *)
adds carry x7 x7 x10;
(* adcs	x8, x8, x11                                #! PC = 0xaaaaaaab8a6c *)
adcs carry x8 x8 x11 carry;
(* adc	x9, x9, xzr                                 #! PC = 0xaaaaaaab8a70 *)
adc x9 x9 0@uint64 carry;
(* mul	x10, x16, x25                               #! PC = 0xaaaaaaab8a74 *)
mull Hx16x25 x10 x16 x25;
(* umulh	x11, x16, x25                             #! PC = 0xaaaaaaab8a78 *)
mov x11 Hx16x25;
(* adds	x8, x8, x29                                #! PC = 0xaaaaaaab8a7c *)
adds carry x8 x8 x29;
(* adcs	x9, x9, x11                                #! PC = 0xaaaaaaab8a80 *)
adcs carry x9 x9 x11 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab8a84 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x29, x19, x23                               #! PC = 0xaaaaaaab8a88 *)
mull Hx19x23 x29 x19 x23;
(* umulh	x11, x19, x23                             #! PC = 0xaaaaaaab8a8c *)
mov x11 Hx19x23;
(* adds	x8, x8, x10                                #! PC = 0xaaaaaaab8a90 *)
adds carry x8 x8 x10;
(* adcs	x9, x9, x11                                #! PC = 0xaaaaaaab8a94 *)
adcs carry x9 x9 x11 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab8a98 *)
adc x30 x30 0@uint64 carry;
(* mul	x10, x17, x25                               #! PC = 0xaaaaaaab8a9c *)
mull Hx17x25 x10 x17 x25;
(* umulh	x11, x17, x25                             #! PC = 0xaaaaaaab8aa0 *)
mov x11 Hx17x25;
(* adds	x8, x8, x29                                #! PC = 0xaaaaaaab8aa4 *)
adds carry x8 x8 x29;
(* adcs	x9, x9, x10                                #! PC = 0xaaaaaaab8aa8 *)
adcs carry x9 x9 x10 carry;
(* adcs	x30, x30, x11                              #! PC = 0xaaaaaaab8aac *)
adcs carry x30 x30 x11 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab8ab0 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x10, x19, x24                               #! PC = 0xaaaaaaab8ab4 *)
mull Hx19x24 x10 x19 x24;
(* umulh	x11, x19, x24                             #! PC = 0xaaaaaaab8ab8 *)
mov x11 Hx19x24;
(* adds	x9, x9, x10                                #! PC = 0xaaaaaaab8abc *)
adds carry x9 x9 x10;
(* adcs	x30, x30, x11                              #! PC = 0xaaaaaaab8ac0 *)
adcs carry x30 x30 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8ac4 *)
adc x29 x29 0@uint64 carry;
(* mul	x10, x20, x23                               #! PC = 0xaaaaaaab8ac8 *)
mull Hx20x23 x10 x20 x23;
(* umulh	x11, x20, x23                             #! PC = 0xaaaaaaab8acc *)
mov x11 Hx20x23;
(* adds	x9, x9, x10                                #! PC = 0xaaaaaaab8ad0 *)
adds carry x9 x9 x10;
(* adcs	x30, x30, x11                              #! PC = 0xaaaaaaab8ad4 *)
adcs carry x30 x30 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8ad8 *)
adc x29 x29 0@uint64 carry;
(* mul	x10, x16, x26                               #! PC = 0xaaaaaaab8adc *)
mull Hx16x26 x10 x16 x26;
(* umulh	x11, x16, x26                             #! PC = 0xaaaaaaab8ae0 *)
mov x11 Hx16x26;
(* adds	x9, x9, x10                                #! PC = 0xaaaaaaab8ae4 *)
adds carry x9 x9 x10;
(* adcs	x30, x30, x11                              #! PC = 0xaaaaaaab8ae8 *)
adcs carry x30 x30 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8aec *)
adc x29 x29 0@uint64 carry;
(* mul	x12, x19, x25                               #! PC = 0xaaaaaaab8af0 *)
mull Hx19x25 x12 x19 x25;
(* umulh	x13, x19, x25                             #! PC = 0xaaaaaaab8af4 *)
mov x13 Hx19x25;
(* adds	x10, x12, x30                              #! PC = 0xaaaaaaab8af8 *)
adds carry x10 x12 x30;
(* adcs	x11, x13, x29                              #! PC = 0xaaaaaaab8afc *)
adcs carry x11 x13 x29 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab8b00 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x12, x16, x27                               #! PC = 0xaaaaaaab8b04 *)
mull Hx16x27 x12 x16 x27;
(* umulh	x13, x16, x27                             #! PC = 0xaaaaaaab8b08 *)
mov x13 Hx16x27;
(* adds	x10, x12, x10                              #! PC = 0xaaaaaaab8b0c *)
adds carry x10 x12 x10;
(* adcs	x11, x13, x11                              #! PC = 0xaaaaaaab8b10 *)
adcs carry x11 x13 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8b14 *)
adc x29 x29 0@uint64 carry;
(* mul	x12, x17, x26                               #! PC = 0xaaaaaaab8b18 *)
mull Hx17x26 x12 x17 x26;
(* umulh	x13, x17, x26                             #! PC = 0xaaaaaaab8b1c *)
mov x13 Hx17x26;
(* adds	x10, x12, x10                              #! PC = 0xaaaaaaab8b20 *)
adds carry x10 x12 x10;
(* adcs	x11, x13, x11                              #! PC = 0xaaaaaaab8b24 *)
adcs carry x11 x13 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8b28 *)
adc x29 x29 0@uint64 carry;
(* mul	x12, x20, x24                               #! PC = 0xaaaaaaab8b2c *)
mull Hx20x24 x12 x20 x24;
(* umulh	x13, x20, x24                             #! PC = 0xaaaaaaab8b30 *)
mov x13 Hx20x24;
(* adds	x10, x12, x10                              #! PC = 0xaaaaaaab8b34 *)
adds carry x10 x12 x10;
(* adcs	x11, x13, x11                              #! PC = 0xaaaaaaab8b38 *)
adcs carry x11 x13 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8b3c *)
adc x29 x29 0@uint64 carry;
(* mul	x12, x16, x28                               #! PC = 0xaaaaaaab8b40 *)
mull Hx16x28 x12 x16 x28;
(* umulh	x13, x16, x28                             #! PC = 0xaaaaaaab8b44 *)
mov x13 Hx16x28;
(* adds	x11, x12, x11                              #! PC = 0xaaaaaaab8b48 *)
adds carry x11 x12 x11;
(* adcs	x29, x13, x29                              #! PC = 0xaaaaaaab8b4c *)
adcs carry x29 x13 x29 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab8b50 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x12, x17, x27                               #! PC = 0xaaaaaaab8b54 *)
mull Hx17x27 x12 x17 x27;
(* umulh	x13, x17, x27                             #! PC = 0xaaaaaaab8b58 *)
mov x13 Hx17x27;
(* adds	x11, x12, x11                              #! PC = 0xaaaaaaab8b5c *)
adds carry x11 x12 x11;
(* adcs	x29, x13, x29                              #! PC = 0xaaaaaaab8b60 *)
adcs carry x29 x13 x29 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab8b64 *)
adc x30 x30 0@uint64 carry;
(* mul	x12, x19, x26                               #! PC = 0xaaaaaaab8b68 *)
mull Hx19x26 x12 x19 x26;
(* umulh	x13, x19, x26                             #! PC = 0xaaaaaaab8b6c *)
mov x13 Hx19x26;
(* adds	x11, x12, x11                              #! PC = 0xaaaaaaab8b70 *)
adds carry x11 x12 x11;
(* adcs	x29, x13, x29                              #! PC = 0xaaaaaaab8b74 *)
adcs carry x29 x13 x29 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab8b78 *)
adc x30 x30 0@uint64 carry;
(* mul	x12, x20, x25                               #! PC = 0xaaaaaaab8b7c *)
mull Hx20x25 x12 x20 x25;
(* umulh	x13, x20, x25                             #! PC = 0xaaaaaaab8b80 *)
mov x13 Hx20x25;
(* adds	x11, x12, x11                              #! PC = 0xaaaaaaab8b84 *)
adds carry x11 x12 x11;
(* adcs	x29, x13, x29                              #! PC = 0xaaaaaaab8b88 *)
adcs carry x29 x13 x29 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab8b8c *)
adc x30 x30 0@uint64 carry;
(* mul	x14, x17, x28                               #! PC = 0xaaaaaaab8b90 *)
mull Hx17x28 x14 x17 x28;
(* umulh	x15, x17, x28                             #! PC = 0xaaaaaaab8b94 *)
mov x15 Hx17x28;
(* adds	x12, x14, x29                              #! PC = 0xaaaaaaab8b98 *)
adds carry x12 x14 x29;
(* adcs	x30, x15, x30                              #! PC = 0xaaaaaaab8b9c *)
adcs carry x30 x15 x30 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab8ba0 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x14, x19, x27                               #! PC = 0xaaaaaaab8ba4 *)
mull Hx19x27 x14 x19 x27;
(* umulh	x15, x19, x27                             #! PC = 0xaaaaaaab8ba8 *)
mov x15 Hx19x27;
(* adds	x12, x14, x12                              #! PC = 0xaaaaaaab8bac *)
adds carry x12 x14 x12;
(* adcs	x30, x15, x30                              #! PC = 0xaaaaaaab8bb0 *)
adcs carry x30 x15 x30 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8bb4 *)
adc x29 x29 0@uint64 carry;
(* mul	x14, x20, x26                               #! PC = 0xaaaaaaab8bb8 *)
mull Hx20x26 x14 x20 x26;
(* umulh	x15, x20, x26                             #! PC = 0xaaaaaaab8bbc *)
mov x15 Hx20x26;
(* adds	x12, x14, x12                              #! PC = 0xaaaaaaab8bc0 *)
adds carry x12 x14 x12;
(* adcs	x30, x15, x30                              #! PC = 0xaaaaaaab8bc4 *)
adcs carry x30 x15 x30 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8bc8 *)
adc x29 x29 0@uint64 carry;
(* mul	x14, x19, x28                               #! PC = 0xaaaaaaab8bcc *)
mull Hx19x28 x14 x19 x28;
(* umulh	x15, x19, x28                             #! PC = 0xaaaaaaab8bd0 *)
mov x15 Hx19x28;
(* adds	x13, x14, x30                              #! PC = 0xaaaaaaab8bd4 *)
adds carry x13 x14 x30;
(* adcs	x29, x15, x29                              #! PC = 0xaaaaaaab8bd8 *)
adcs carry x29 x15 x29 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab8bdc *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x14, x20, x27                               #! PC = 0xaaaaaaab8be0 *)
mull Hx20x27 x14 x20 x27;
(* umulh	x15, x20, x27                             #! PC = 0xaaaaaaab8be4 *)
mov x15 Hx20x27;
(* adds	x13, x14, x13                              #! PC = 0xaaaaaaab8be8 *)
adds carry x13 x14 x13;
(* adcs	x29, x15, x29                              #! PC = 0xaaaaaaab8bec *)
adcs carry x29 x15 x29 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab8bf0 *)
adc x30 x30 0@uint64 carry;
(* mul	x14, x20, x28                               #! PC = 0xaaaaaaab8bf4 *)
mull Hx20x28 x14 x20 x28;
(* umulh	x15, x20, x28                             #! PC = 0xaaaaaaab8bf8 *)
mov x15 Hx20x28;
(* adds	x14, x14, x29                              #! PC = 0xaaaaaaab8bfc *)
adds carry x14 x14 x29;
(* adc	x15, x15, x30                               #! PC = 0xaaaaaaab8c00 *)
adc x15 x15 x30 carry;
(* orr	x30, xzr, x15, lsr #17                      #! PC = 0xaaaaaaab8c04 *)
split x30 Lx15 x15 17;
(* lsl	x15, x15, #47                               #! PC = 0xaaaaaaab8c08 *)
shl x15 Lx15 47;
(* orr	x15, x15, x14, lsr #17                      #! PC = 0xaaaaaaab8c0c *)
split Hx14 Lx14 x14 17;
add x15 x15 Hx14;
(* lsl	x14, x14, #47                               #! PC = 0xaaaaaaab8c10 *)
shl x14 Lx14 47;
(* orr	x14, x14, x13, lsr #17                      #! PC = 0xaaaaaaab8c14 *)
split Hx13 Lx13 x13 17;
add x14 x14 Hx13;
(* lsl	x13, x13, #47                               #! PC = 0xaaaaaaab8c18 *)
shl x13 Lx13 47;
(* orr	x13, x13, x12, lsr #17                      #! PC = 0xaaaaaaab8c1c *)
split Hx12 Lx12 x12 17;
add x13 x13 Hx12;
(* lsl	x12, x12, #47                               #! PC = 0xaaaaaaab8c20 *)
shl x12 Lx12 47;
(* orr	x12, x12, x11, lsr #17                      #! PC = 0xaaaaaaab8c24 *)
split Hx11 Lx11 x11 17;
add x12 x12 Hx11;
(* lsl	x11, x11, #47                               #! PC = 0xaaaaaaab8c28 *)
shl x11 Lx11 47;
(* orr	x11, x11, x10, lsr #17                      #! PC = 0xaaaaaaab8c2c *)
split Hx10 Lx10 x10 17;
add x11 x11 Hx10;
(* lsl	x10, x10, #47                               #! PC = 0xaaaaaaab8c30 *)
shl x10 Lx10 47;
(* orr	x10, x10, x9, lsr #17                       #! PC = 0xaaaaaaab8c34 *)
split Hx9 Lx9 x9 17;
add x10 x10 Hx9;
(* lsl	x9, x9, #47                                 #! PC = 0xaaaaaaab8c38 *)
shl x9 Lx9 47;
(* orr	x9, x9, x8, lsr #17                         #! PC = 0xaaaaaaab8c3c *)
split Hx8 Lx8 x8 17;
add x9 x9 Hx8;
(* lsl	x8, x8, #47                                 #! PC = 0xaaaaaaab8c40 *)
shl x8 Lx8 47;
(* orr	x8, x8, x7, lsr #17                         #! PC = 0xaaaaaaab8c44 *)
split Hx7 Lx7 x7 17;
add x8 x8 Hx7;
(* lsl	x7, x7, #47                                 #! PC = 0xaaaaaaab8c48 *)
shl x7 Lx7 47;
(* orr	x7, x7, x6, lsr #17                         #! PC = 0xaaaaaaab8c4c *)
split Hx6 Lx6 x6 17;
add x7 x7 Hx6;
(* lsl	x6, x6, #47                                 #! PC = 0xaaaaaaab8c50 *)
shl x6 Lx6 47;
(* ldp	x16, x17, [x0]                              #! EA = L0xffffffffe028; Value = 0x3b3db63b1f478d9e; PC = 0xaaaaaaab8c54 *)
mov x16 L0xffffffffe028;
mov x17 L0xffffffffe030;
(* adds	x22, x22, x6                               #! PC = 0xaaaaaaab8c58 *)
adds carry x22 x22 x6;
(* adcs	x2, x2, x7                                 #! PC = 0xaaaaaaab8c5c *)
adcs carry x2 x2 x7 carry;
(* adcs	x3, x3, x8                                 #! PC = 0xaaaaaaab8c60 *)
adcs carry x3 x3 x8 carry;
(* adcs	x16, x16, x9                               #! PC = 0xaaaaaaab8c64 *)
adcs carry x16 x16 x9 carry;
(* ldp	x6, x7, [x0, #160]                          #! EA = L0xffffffffe0c8; Value = 0x75a43458301160d8; PC = 0xaaaaaaab8c68 *)
mov x6 L0xffffffffe0c8;
mov x7 L0xffffffffe0d0;
(* ldp	x8, x9, [x0, #176]                          #! EA = L0xffffffffe0d8; Value = 0x3e953457609e66f3; PC = 0xaaaaaaab8c6c *)
mov x8 L0xffffffffe0d8;
mov x9 L0xffffffffe0e0;
(* adcs	x17, x17, x10                              #! PC = 0xaaaaaaab8c70 *)
adcs carry x17 x17 x10 carry;
(* adcs	x4, x4, x11                                #! PC = 0xaaaaaaab8c74 *)
adcs carry x4 x4 x11 carry;
(* adcs	x5, x5, x12                                #! PC = 0xaaaaaaab8c78 *)
adcs carry x5 x5 x12 carry;
(* adcs	x6, x6, x13                                #! PC = 0xaaaaaaab8c7c *)
adcs carry x6 x6 x13 carry;
(* adcs	x7, x7, x14                                #! PC = 0xaaaaaaab8c80 *)
adcs carry x7 x7 x14 carry;
(* adcs	x8, x8, x15                                #! PC = 0xaaaaaaab8c84 *)
adcs carry x8 x8 x15 carry;
(* adc	x9, x9, x30                                 #! PC = 0xaaaaaaab8c88 *)
adc x9 x9 x30 carry;
(* ldr	x29, [x0, #16]                              #! EA = L0xffffffffe038; Value = 0x0000000000000000; PC = 0xaaaaaaab8c8c *)
mov x29 L0xffffffffe038;
(* ldr	x30, [x0, #32]                              #! EA = L0xffffffffe048; Value = 0x0000000000000000; PC = 0xaaaaaaab8c90 *)
mov x30 L0xffffffffe048;
(* stp	x21, x22, [x1]                              #! EA = L0xffffffffe898; PC = 0xaaaaaaab8c94 *)
mov L0xffffffffe898 x21;
mov L0xffffffffe8a0 x22;
(* adds	x16, x16, x29                              #! PC = 0xaaaaaaab8c98 *)
adds carry x16 x16 x29;
(* adcs	x17, x17, xzr                              #! PC = 0xaaaaaaab8c9c *)
adcs carry x17 x17 0@uint64 carry;
(* adcs	x4, x4, xzr                                #! PC = 0xaaaaaaab8ca0 *)
adcs carry x4 x4 0@uint64 carry;
(* adcs	x5, x5, xzr                                #! PC = 0xaaaaaaab8ca4 *)
adcs carry x5 x5 0@uint64 carry;
(* adcs	x6, x6, x30                                #! PC = 0xaaaaaaab8ca8 *)
adcs carry x6 x6 x30 carry;
(* adcs	x7, x7, xzr                                #! PC = 0xaaaaaaab8cac *)
adcs carry x7 x7 0@uint64 carry;
(* adcs	x8, x8, xzr                                #! PC = 0xaaaaaaab8cb0 *)
adcs carry x8 x8 0@uint64 carry;
(* adc	x9, x9, xzr                                 #! PC = 0xaaaaaaab8cb4 *)
adc x9 x9 0@uint64 carry;
(* stp	x2, x3, [x1, #16]                           #! EA = L0xffffffffe8a8; PC = 0xaaaaaaab8cb8 *)
mov L0xffffffffe8a8 x2;
mov L0xffffffffe8b0 x3;
(* stp	x16, x17, [x1, #32]                         #! EA = L0xffffffffe8b8; PC = 0xaaaaaaab8cbc *)
mov L0xffffffffe8b8 x16;
mov L0xffffffffe8c0 x17;
(* stp	x4, x5, [x1, #48]                           #! EA = L0xffffffffe8c8; PC = 0xaaaaaaab8cc0 *)
mov L0xffffffffe8c8 x4;
mov L0xffffffffe8d0 x5;
(* stp	x6, x7, [x1, #64]                           #! EA = L0xffffffffe8d8; PC = 0xaaaaaaab8cc4 *)
mov L0xffffffffe8d8 x6;
mov L0xffffffffe8e0 x7;
(* stp	x8, x9, [x1, #80]                           #! EA = L0xffffffffe8e8; PC = 0xaaaaaaab8cc8 *)
mov L0xffffffffe8e8 x8;
mov L0xffffffffe8f0 x9;
(* ldp	x19, x20, [sp]                              #! EA = L0xffffffffdd20; Value = 0x0000ffffffffdea8; PC = 0xaaaaaaab8ccc *)
mov x19 L0xffffffffdd20;
mov x20 L0xffffffffdd28;
(* ldp	x21, x22, [sp, #16]                         #! EA = L0xffffffffdd30; Value = 0x0000ffffffffdf68; PC = 0xaaaaaaab8cd0 *)
mov x21 L0xffffffffdd30;
mov x22 L0xffffffffdd38;
(* ldp	x23, x24, [sp, #32]                         #! EA = L0xffffffffdd40; Value = 0x0000ffffffffdde8; PC = 0xaaaaaaab8cd4 *)
mov x23 L0xffffffffdd40;
mov x24 L0xffffffffdd48;
(* ldp	x25, x26, [sp, #48]                         #! EA = L0xffffffffdd50; Value = 0x0000ffffffffe5f8; PC = 0xaaaaaaab8cd8 *)
mov x25 L0xffffffffdd50;
mov x26 L0xffffffffdd58;
(* ldp	x27, x28, [sp, #64]                         #! EA = L0xffffffffdd60; Value = 0x0000ffffffffe718; PC = 0xaaaaaaab8cdc *)
mov x27 L0xffffffffdd60;
mov x28 L0xffffffffdd68;
(* ldp	x29, x30, [sp, #80]                         #! EA = L0xffffffffdd70; Value = 0x0000ffffffffdd80; PC = 0xaaaaaaab8ce0 *)
mov x29 L0xffffffffdd70;
mov x30 L0xffffffffdd78;
(* add	sp, sp, #0x60                               #! PC = 0xaaaaaaab8ce4 *)
adds dontcare sp sp 0x60@uint64;
(* #! <- SP = 0xffffffffdd80 *)
#! 0xffffffffdd80 = 0xffffffffdd80;
(* #ret                                            #! PC = 0xaaaaaaab8ce8 *)
#ret                                            #! 0xaaaaaaab8ce8 = 0xaaaaaaab8ce8;

(* CUT 7 *)
cut eqmod (limbs 64 [0, 0, 0, 0, 0, 0,  0, 0, 0, 0, 0, 0,
                     L0xffffffffe898, L0xffffffffe8a0, L0xffffffffe8a8,
                     L0xffffffffe8b0, L0xffffffffe8b8, L0xffffffffe8c0,
                     L0xffffffffe8c8, L0xffffffffe8d0, L0xffffffffe8d8,
                     L0xffffffffe8e0, L0xffffffffe8e8, L0xffffffffe8f0])
          (limbs 64 [ar0, ar1, ar2, ar3, ar4, ar5, ar6, ar7, ar8, ar9, ara, arb] *
           limbs 64 [bi0, bi1, bi2, bi3, bi4, bi5, bi6, bi7, bi8, bi9, bia, bib] +
           limbs 64 [br0, br1, br2, br3, br4, br5, br6, br7, br8, br9, bra, brb] *
           limbs 64 [ai0, ai1, ai2, ai3, ai4, ai5, ai6, ai7, ai8, ai9, aia, aib])
          (limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, ma, mb])
    prove with [ precondition, cuts [ 5 ] ]
 && limbs 64 [L0xffffffffe898, L0xffffffffe8a0, L0xffffffffe8a8,
              L0xffffffffe8b0, L0xffffffffe8b8, L0xffffffffe8c0,
              L0xffffffffe8c8, L0xffffffffe8d0, L0xffffffffe8d8,
              L0xffffffffe8e0, L0xffffffffe8e8, L0xffffffffe8f0] <u
    2@768 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, ma, mb]
    prove with [ precondition, cuts [ 5 ] ];
    
(* mov	x1, x22                                     #! PC = 0xaaaaaaaae570 *)
mov x1 x22;
(* mov	x0, x19                                     #! PC = 0xaaaaaaaae574 *)
mov x0 x19;
(* #bl	0xaaaaaaab7544 <rdc_mont>                   #! PC = 0xaaaaaaaae578 *)
#bl	0xaaaaaaab7544 <rdc_mont>                   #! 0xaaaaaaaae578 = 0xaaaaaaaae578;
(* #! -> SP = 0xffffffffdd80 *)
#! 0xffffffffdd80 = 0xffffffffdd80;
(* #b	0xaaaaaaab8548 <rdc751_asm>                  #! PC = 0xaaaaaaab7544 *)
#b	0xaaaaaaab8548 <rdc751_asm>                  #! 0xaaaaaaab7544 = 0xaaaaaaab7544;
(* sub	sp, sp, #0x60                               #! PC = 0xaaaaaaab8548 *)
subc dontcare sp sp 0x60@uint64;
(* stp	x19, x20, [sp]                              #! EA = L0xffffffffdd20; PC = 0xaaaaaaab854c *)
mov L0xffffffffdd20 x19;
mov L0xffffffffdd28 x20;
(* stp	x21, x22, [sp, #16]                         #! EA = L0xffffffffdd30; PC = 0xaaaaaaab8550 *)
mov L0xffffffffdd30 x21;
mov L0xffffffffdd38 x22;
(* stp	x23, x24, [sp, #32]                         #! EA = L0xffffffffdd40; PC = 0xaaaaaaab8554 *)
mov L0xffffffffdd40 x23;
mov L0xffffffffdd48 x24;
(* stp	x25, x26, [sp, #48]                         #! EA = L0xffffffffdd50; PC = 0xaaaaaaab8558 *)
mov L0xffffffffdd50 x25;
mov L0xffffffffdd58 x26;
(* stp	x27, x28, [sp, #64]                         #! EA = L0xffffffffdd60; PC = 0xaaaaaaab855c *)
mov L0xffffffffdd60 x27;
mov L0xffffffffdd68 x28;
(* stp	x29, x30, [sp, #80]                         #! EA = L0xffffffffdd70; PC = 0xaaaaaaab8560 *)
mov L0xffffffffdd70 x29;
mov L0xffffffffdd78 x30;
(* ldp	x2, x3, [x0]                                #! EA = L0xffffffffdea8; Value = 0xfe35eaa42ed5db07; PC = 0xaaaaaaab8564 *)
mov x2 L0xffffffffdea8;
mov x3 L0xffffffffdeb0;
(* ldp	x4, x5, [x0, #16]                           #! EA = L0xffffffffdeb8; Value = 0x2cdc8eeabf1f5813; PC = 0xaaaaaaab8568 *)
mov x4 L0xffffffffdeb8;
mov x5 L0xffffffffdec0;
(* ldr	x23, 0xaaaaaaab7618 <p751p1_nz_s32>         #! PC = 0xaaaaaaab856c *)
mov x23 L0xaaaaaaab7618;
(* ldr	x24, 0xaaaaaaab7620 <p751p1_nz_s32+8>       #! PC = 0xaaaaaaab8570 *)
mov x24 L0xaaaaaaab7620;
(* ldr	x25, 0xaaaaaaab7628 <p751p1_nz_s32+16>      #! PC = 0xaaaaaaab8574 *)
mov x25 L0xaaaaaaab7628;
(* ldr	x26, 0xaaaaaaab7630 <p751p1_nz_s32+24>      #! PC = 0xaaaaaaab8578 *)
mov x26 L0xaaaaaaab7630;
(* ldr	x27, 0xaaaaaaab7638 <p751p1_nz_s32+32>      #! PC = 0xaaaaaaab857c *)
mov x27 L0xaaaaaaab7638;
(* ldr	x28, 0xaaaaaaab7640 <p751p1_nz_s32+40>      #! PC = 0xaaaaaaab8580 *)
mov x28 L0xaaaaaaab7640;
(* mul	x6, x2, x23                                 #! PC = 0xaaaaaaab8584 *)
mull Hx2x23 x6 x2 x23;
(* umulh	x9, x2, x23                               #! PC = 0xaaaaaaab8588 *)
mov x9 Hx2x23;
(* mul	x7, x2, x24                                 #! PC = 0xaaaaaaab858c *)
mull Hx2x24 x7 x2 x24;
(* umulh	x8, x2, x24                               #! PC = 0xaaaaaaab8590 *)
mov x8 Hx2x24;
(* mul	x10, x3, x23                                #! PC = 0xaaaaaaab8594 *)
mull Hx3x23 x10 x3 x23;
(* umulh	x11, x3, x23                              #! PC = 0xaaaaaaab8598 *)
mov x11 Hx3x23;
(* adds	x7, x7, x9                                 #! PC = 0xaaaaaaab859c *)
adds carry x7 x7 x9;
(* adc	x8, x8, xzr                                 #! PC = 0xaaaaaaab85a0 *)
adc x8 x8 0@uint64 carry;
(* mul	x29, x3, x24                                #! PC = 0xaaaaaaab85a4 *)
mull Hx3x24 x29 x3 x24;
(* umulh	x9, x3, x24                               #! PC = 0xaaaaaaab85a8 *)
mov x9 Hx3x24;
(* adds	x7, x7, x10                                #! PC = 0xaaaaaaab85ac *)
adds carry x7 x7 x10;
(* adcs	x8, x8, x11                                #! PC = 0xaaaaaaab85b0 *)
adcs carry x8 x8 x11 carry;
(* adc	x9, x9, xzr                                 #! PC = 0xaaaaaaab85b4 *)
adc x9 x9 0@uint64 carry;
(* mul	x10, x2, x25                                #! PC = 0xaaaaaaab85b8 *)
mull Hx2x25 x10 x2 x25;
(* umulh	x11, x2, x25                              #! PC = 0xaaaaaaab85bc *)
mov x11 Hx2x25;
(* adds	x8, x8, x29                                #! PC = 0xaaaaaaab85c0 *)
adds carry x8 x8 x29;
(* adcs	x9, x9, x11                                #! PC = 0xaaaaaaab85c4 *)
adcs carry x9 x9 x11 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab85c8 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x29, x4, x23                                #! PC = 0xaaaaaaab85cc *)
mull Hx4x23 x29 x4 x23;
(* umulh	x11, x4, x23                              #! PC = 0xaaaaaaab85d0 *)
mov x11 Hx4x23;
(* adds	x8, x8, x10                                #! PC = 0xaaaaaaab85d4 *)
adds carry x8 x8 x10;
(* adcs	x9, x9, x11                                #! PC = 0xaaaaaaab85d8 *)
adcs carry x9 x9 x11 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab85dc *)
adc x30 x30 0@uint64 carry;
(* mul	x10, x3, x25                                #! PC = 0xaaaaaaab85e0 *)
mull Hx3x25 x10 x3 x25;
(* umulh	x11, x3, x25                              #! PC = 0xaaaaaaab85e4 *)
mov x11 Hx3x25;
(* adds	x8, x8, x29                                #! PC = 0xaaaaaaab85e8 *)
adds carry x8 x8 x29;
(* adcs	x9, x9, x10                                #! PC = 0xaaaaaaab85ec *)
adcs carry x9 x9 x10 carry;
(* adcs	x30, x30, x11                              #! PC = 0xaaaaaaab85f0 *)
adcs carry x30 x30 x11 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab85f4 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x10, x4, x24                                #! PC = 0xaaaaaaab85f8 *)
mull Hx4x24 x10 x4 x24;
(* umulh	x11, x4, x24                              #! PC = 0xaaaaaaab85fc *)
mov x11 Hx4x24;
(* adds	x9, x9, x10                                #! PC = 0xaaaaaaab8600 *)
adds carry x9 x9 x10;
(* adcs	x30, x30, x11                              #! PC = 0xaaaaaaab8604 *)
adcs carry x30 x30 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8608 *)
adc x29 x29 0@uint64 carry;
(* mul	x10, x5, x23                                #! PC = 0xaaaaaaab860c *)
mull Hx5x23 x10 x5 x23;
(* umulh	x11, x5, x23                              #! PC = 0xaaaaaaab8610 *)
mov x11 Hx5x23;
(* adds	x9, x9, x10                                #! PC = 0xaaaaaaab8614 *)
adds carry x9 x9 x10;
(* adcs	x30, x30, x11                              #! PC = 0xaaaaaaab8618 *)
adcs carry x30 x30 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab861c *)
adc x29 x29 0@uint64 carry;
(* mul	x10, x2, x26                                #! PC = 0xaaaaaaab8620 *)
mull Hx2x26 x10 x2 x26;
(* umulh	x11, x2, x26                              #! PC = 0xaaaaaaab8624 *)
mov x11 Hx2x26;
(* adds	x9, x9, x10                                #! PC = 0xaaaaaaab8628 *)
adds carry x9 x9 x10;
(* adcs	x30, x30, x11                              #! PC = 0xaaaaaaab862c *)
adcs carry x30 x30 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8630 *)
adc x29 x29 0@uint64 carry;
(* mul	x12, x4, x25                                #! PC = 0xaaaaaaab8634 *)
mull Hx4x25 x12 x4 x25;
(* umulh	x13, x4, x25                              #! PC = 0xaaaaaaab8638 *)
mov x13 Hx4x25;
(* adds	x10, x12, x30                              #! PC = 0xaaaaaaab863c *)
adds carry x10 x12 x30;
(* adcs	x11, x13, x29                              #! PC = 0xaaaaaaab8640 *)
adcs carry x11 x13 x29 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab8644 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x12, x2, x27                                #! PC = 0xaaaaaaab8648 *)
mull Hx2x27 x12 x2 x27;
(* umulh	x13, x2, x27                              #! PC = 0xaaaaaaab864c *)
mov x13 Hx2x27;
(* adds	x10, x12, x10                              #! PC = 0xaaaaaaab8650 *)
adds carry x10 x12 x10;
(* adcs	x11, x13, x11                              #! PC = 0xaaaaaaab8654 *)
adcs carry x11 x13 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8658 *)
adc x29 x29 0@uint64 carry;
(* mul	x12, x3, x26                                #! PC = 0xaaaaaaab865c *)
mull Hx3x26 x12 x3 x26;
(* umulh	x13, x3, x26                              #! PC = 0xaaaaaaab8660 *)
mov x13 Hx3x26;
(* adds	x10, x12, x10                              #! PC = 0xaaaaaaab8664 *)
adds carry x10 x12 x10;
(* adcs	x11, x13, x11                              #! PC = 0xaaaaaaab8668 *)
adcs carry x11 x13 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab866c *)
adc x29 x29 0@uint64 carry;
(* mul	x12, x5, x24                                #! PC = 0xaaaaaaab8670 *)
mull Hx5x24 x12 x5 x24;
(* umulh	x13, x5, x24                              #! PC = 0xaaaaaaab8674 *)
mov x13 Hx5x24;
(* adds	x10, x12, x10                              #! PC = 0xaaaaaaab8678 *)
adds carry x10 x12 x10;
(* adcs	x11, x13, x11                              #! PC = 0xaaaaaaab867c *)
adcs carry x11 x13 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8680 *)
adc x29 x29 0@uint64 carry;
(* mul	x12, x2, x28                                #! PC = 0xaaaaaaab8684 *)
mull Hx2x28 x12 x2 x28;
(* umulh	x13, x2, x28                              #! PC = 0xaaaaaaab8688 *)
mov x13 Hx2x28;
(* adds	x11, x12, x11                              #! PC = 0xaaaaaaab868c *)
adds carry x11 x12 x11;
(* adcs	x29, x13, x29                              #! PC = 0xaaaaaaab8690 *)
adcs carry x29 x13 x29 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab8694 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x12, x3, x27                                #! PC = 0xaaaaaaab8698 *)
mull Hx3x27 x12 x3 x27;
(* umulh	x13, x3, x27                              #! PC = 0xaaaaaaab869c *)
mov x13 Hx3x27;
(* adds	x11, x12, x11                              #! PC = 0xaaaaaaab86a0 *)
adds carry x11 x12 x11;
(* adcs	x29, x13, x29                              #! PC = 0xaaaaaaab86a4 *)
adcs carry x29 x13 x29 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab86a8 *)
adc x30 x30 0@uint64 carry;
(* mul	x12, x4, x26                                #! PC = 0xaaaaaaab86ac *)
mull Hx4x26 x12 x4 x26;
(* umulh	x13, x4, x26                              #! PC = 0xaaaaaaab86b0 *)
mov x13 Hx4x26;
(* adds	x11, x12, x11                              #! PC = 0xaaaaaaab86b4 *)
adds carry x11 x12 x11;
(* adcs	x29, x13, x29                              #! PC = 0xaaaaaaab86b8 *)
adcs carry x29 x13 x29 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab86bc *)
adc x30 x30 0@uint64 carry;
(* mul	x12, x5, x25                                #! PC = 0xaaaaaaab86c0 *)
mull Hx5x25 x12 x5 x25;
(* umulh	x13, x5, x25                              #! PC = 0xaaaaaaab86c4 *)
mov x13 Hx5x25;
(* adds	x11, x12, x11                              #! PC = 0xaaaaaaab86c8 *)
adds carry x11 x12 x11;
(* adcs	x29, x13, x29                              #! PC = 0xaaaaaaab86cc *)
adcs carry x29 x13 x29 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab86d0 *)
adc x30 x30 0@uint64 carry;
(* mul	x14, x3, x28                                #! PC = 0xaaaaaaab86d4 *)
mull Hx3x28 x14 x3 x28;
(* umulh	x15, x3, x28                              #! PC = 0xaaaaaaab86d8 *)
mov x15 Hx3x28;
(* adds	x12, x14, x29                              #! PC = 0xaaaaaaab86dc *)
adds carry x12 x14 x29;
(* adcs	x30, x15, x30                              #! PC = 0xaaaaaaab86e0 *)
adcs carry x30 x15 x30 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab86e4 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x14, x4, x27                                #! PC = 0xaaaaaaab86e8 *)
mull Hx4x27 x14 x4 x27;
(* umulh	x15, x4, x27                              #! PC = 0xaaaaaaab86ec *)
mov x15 Hx4x27;
(* adds	x12, x14, x12                              #! PC = 0xaaaaaaab86f0 *)
adds carry x12 x14 x12;
(* adcs	x30, x15, x30                              #! PC = 0xaaaaaaab86f4 *)
adcs carry x30 x15 x30 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab86f8 *)
adc x29 x29 0@uint64 carry;
(* mul	x14, x5, x26                                #! PC = 0xaaaaaaab86fc *)
mull Hx5x26 x14 x5 x26;
(* umulh	x15, x5, x26                              #! PC = 0xaaaaaaab8700 *)
mov x15 Hx5x26;
(* adds	x12, x14, x12                              #! PC = 0xaaaaaaab8704 *)
adds carry x12 x14 x12;
(* adcs	x30, x15, x30                              #! PC = 0xaaaaaaab8708 *)
adcs carry x30 x15 x30 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab870c *)
adc x29 x29 0@uint64 carry;
(* mul	x14, x4, x28                                #! PC = 0xaaaaaaab8710 *)
mull Hx4x28 x14 x4 x28;
(* umulh	x15, x4, x28                              #! PC = 0xaaaaaaab8714 *)
mov x15 Hx4x28;
(* adds	x13, x14, x30                              #! PC = 0xaaaaaaab8718 *)
adds carry x13 x14 x30;
(* adcs	x29, x15, x29                              #! PC = 0xaaaaaaab871c *)
adcs carry x29 x15 x29 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab8720 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x14, x5, x27                                #! PC = 0xaaaaaaab8724 *)
mull Hx5x27 x14 x5 x27;
(* umulh	x15, x5, x27                              #! PC = 0xaaaaaaab8728 *)
mov x15 Hx5x27;
(* adds	x13, x14, x13                              #! PC = 0xaaaaaaab872c *)
adds carry x13 x14 x13;
(* adcs	x29, x15, x29                              #! PC = 0xaaaaaaab8730 *)
adcs carry x29 x15 x29 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab8734 *)
adc x30 x30 0@uint64 carry;
(* mul	x14, x5, x28                                #! PC = 0xaaaaaaab8738 *)
mull Hx5x28 x14 x5 x28;
(* umulh	x15, x5, x28                              #! PC = 0xaaaaaaab873c *)
mov x15 Hx5x28;
(* adds	x14, x14, x29                              #! PC = 0xaaaaaaab8740 *)
adds carry x14 x14 x29;
(* adc	x15, x15, x30                               #! PC = 0xaaaaaaab8744 *)
adc x15 x15 x30 carry;
(* ldp	x2, x3, [x0, #32]                           #! EA = L0xffffffffdec8; Value = 0x6ee0f572a6a53655; PC = 0xaaaaaaab8748 *)
mov x2 L0xffffffffdec8;
mov x3 L0xffffffffded0;
(* ldp	x4, x5, [x0, #48]                           #! EA = L0xffffffffded8; Value = 0xccf65f7a3fda88ee; PC = 0xaaaaaaab874c *)
mov x4 L0xffffffffded8;
mov x5 L0xffffffffdee0;
(* ldp	x16, x17, [x0, #64]                         #! EA = L0xffffffffdee8; Value = 0xd29e4cf52811e844; PC = 0xaaaaaaab8750 *)
mov x16 L0xffffffffdee8;
mov x17 L0xffffffffdef0;
(* orr	x30, xzr, x15, lsr #17                      #! PC = 0xaaaaaaab8754 *)
split x30 Lx15 x15 17;
(* lsl	x15, x15, #47                               #! PC = 0xaaaaaaab8758 *)
shl x15 Lx15 47;
(* orr	x15, x15, x14, lsr #17                      #! PC = 0xaaaaaaab875c *)
split Hx14 Lx14 x14 17;
add x15 x15 Hx14;
(* lsl	x14, x14, #47                               #! PC = 0xaaaaaaab8760 *)
shl x14 Lx14 47;
(* orr	x14, x14, x13, lsr #17                      #! PC = 0xaaaaaaab8764 *)
split Hx13 Lx13 x13 17;
add x14 x14 Hx13;
(* lsl	x13, x13, #47                               #! PC = 0xaaaaaaab8768 *)
shl x13 Lx13 47;
(* orr	x13, x13, x12, lsr #17                      #! PC = 0xaaaaaaab876c *)
split Hx12 Lx12 x12 17;
add x13 x13 Hx12;
(* lsl	x12, x12, #47                               #! PC = 0xaaaaaaab8770 *)
shl x12 Lx12 47;
(* orr	x12, x12, x11, lsr #17                      #! PC = 0xaaaaaaab8774 *)
split Hx11 Lx11 x11 17;
add x12 x12 Hx11;
(* lsl	x11, x11, #47                               #! PC = 0xaaaaaaab8778 *)
shl x11 Lx11 47;
(* orr	x11, x11, x10, lsr #17                      #! PC = 0xaaaaaaab877c *)
split Hx10 Lx10 x10 17;
add x11 x11 Hx10;
(* lsl	x10, x10, #47                               #! PC = 0xaaaaaaab8780 *)
shl x10 Lx10 47;
(* orr	x10, x10, x9, lsr #17                       #! PC = 0xaaaaaaab8784 *)
split Hx9 Lx9 x9 17;
add x10 x10 Hx9;
(* lsl	x9, x9, #47                                 #! PC = 0xaaaaaaab8788 *)
shl x9 Lx9 47;
(* orr	x9, x9, x8, lsr #17                         #! PC = 0xaaaaaaab878c *)
split Hx8 Lx8 x8 17;
add x9 x9 Hx8;
(* lsl	x8, x8, #47                                 #! PC = 0xaaaaaaab8790 *)
shl x8 Lx8 47;
(* orr	x8, x8, x7, lsr #17                         #! PC = 0xaaaaaaab8794 *)
split Hx7 Lx7 x7 17;
add x8 x8 Hx7;
(* lsl	x7, x7, #47                                 #! PC = 0xaaaaaaab8798 *)
shl x7 Lx7 47;
(* orr	x7, x7, x6, lsr #17                         #! PC = 0xaaaaaaab879c *)
split Hx6 Lx6 x6 17;
add x7 x7 Hx6;
(* lsl	x6, x6, #47                                 #! PC = 0xaaaaaaab87a0 *)
shl x6 Lx6 47;
(* adds	x3, x3, x6                                 #! PC = 0xaaaaaaab87a4 *)
adds carry x3 x3 x6;
(* adcs	x4, x4, x7                                 #! PC = 0xaaaaaaab87a8 *)
adcs carry x4 x4 x7 carry;
(* ldp	x6, x7, [x0, #80]                           #! EA = L0xffffffffdef8; Value = 0x010229740a05adaa; PC = 0xaaaaaaab87ac *)
mov x6 L0xffffffffdef8;
mov x7 L0xffffffffdf00;
(* adcs	x5, x5, x8                                 #! PC = 0xaaaaaaab87b0 *)
adcs carry x5 x5 x8 carry;
(* adcs	x16, x16, x9                               #! PC = 0xaaaaaaab87b4 *)
adcs carry x16 x16 x9 carry;
(* ldp	x8, x9, [x0, #96]                           #! EA = L0xffffffffdf08; Value = 0xbd3e03d399907315; PC = 0xaaaaaaab87b8 *)
mov x8 L0xffffffffdf08;
mov x9 L0xffffffffdf10;
(* adcs	x17, x17, x10                              #! PC = 0xaaaaaaab87bc *)
adcs carry x17 x17 x10 carry;
(* adcs	x19, x6, x11                               #! PC = 0xaaaaaaab87c0 *)
adcs carry x19 x6 x11 carry;
(* adcs	x20, x7, x12                               #! PC = 0xaaaaaaab87c4 *)
adcs carry x20 x7 x12 carry;
(* ldp	x6, x7, [x0, #112]                          #! EA = L0xffffffffdf18; Value = 0x818dfe980967eaf3; PC = 0xaaaaaaab87c8 *)
mov x6 L0xffffffffdf18;
mov x7 L0xffffffffdf20;
(* adcs	x21, x8, x13                               #! PC = 0xaaaaaaab87cc *)
adcs carry x21 x8 x13 carry;
(* umulh	x8, x2, x24                               #! PC = 0xaaaaaaab87d0 *)
(* NOTE: merged with mul x7, x2, x24 *)
(* mov x8 Hx2x24; *)
(* adcs	x22, x9, x14                               #! PC = 0xaaaaaaab87d4 *)
adcs carry x22 x9 x14 carry;
(* umulh	x9, x2, x23                               #! PC = 0xaaaaaaab87d8 *)
(* NOTE: merged with mul x6, x2, x23 *)
(* mov x9 Hx2x23; *)
(* adcs	x13, x6, x15                               #! PC = 0xaaaaaaab87dc *)
adcs carry x13 x6 x15 carry;
(* mul	x6, x2, x23                                 #! PC = 0xaaaaaaab87e0 *)
mull x9 x6 x2 x23;
(* adcs	x14, x7, x30                               #! PC = 0xaaaaaaab87e4 *)
adcs carry x14 x7 x30 carry;
(* mul	x7, x2, x24                                 #! PC = 0xaaaaaaab87e8 *)
mull x8 x7 x2 x24;
(* adc	x15, xzr, xzr                               #! PC = 0xaaaaaaab87ec *)
adc x15 0@uint64 0@uint64 carry;
(* stp	x13, x14, [x0]                              #! EA = L0xffffffffdea8; PC = 0xaaaaaaab87f0 *)
mov L0xffffffffdea8 x13;
mov L0xffffffffdeb0 x14;
(* str	x15, [x0, #16]                              #! EA = L0xffffffffdeb8; PC = 0xaaaaaaab87f4 *)
mov L0xffffffffdeb8 x15;
(* mul	x10, x3, x23                                #! PC = 0xaaaaaaab87f8 *)
mull Hx3x23 x10 x3 x23;
(* umulh	x11, x3, x23                              #! PC = 0xaaaaaaab87fc *)
mov x11 Hx3x23;
(* adds	x7, x7, x9                                 #! PC = 0xaaaaaaab8800 *)
adds carry x7 x7 x9;
(* adc	x8, x8, xzr                                 #! PC = 0xaaaaaaab8804 *)
adc x8 x8 0@uint64 carry;
(* mul	x29, x3, x24                                #! PC = 0xaaaaaaab8808 *)
mull Hx3x24 x29 x3 x24;
(* umulh	x9, x3, x24                               #! PC = 0xaaaaaaab880c *)
mov x9 Hx3x24;
(* adds	x7, x7, x10                                #! PC = 0xaaaaaaab8810 *)
adds carry x7 x7 x10;
(* adcs	x8, x8, x11                                #! PC = 0xaaaaaaab8814 *)
adcs carry x8 x8 x11 carry;
(* adc	x9, x9, xzr                                 #! PC = 0xaaaaaaab8818 *)
adc x9 x9 0@uint64 carry;
(* mul	x10, x2, x25                                #! PC = 0xaaaaaaab881c *)
mull Hx2x25 x10 x2 x25;
(* umulh	x11, x2, x25                              #! PC = 0xaaaaaaab8820 *)
mov x11 Hx2x25;
(* adds	x8, x8, x29                                #! PC = 0xaaaaaaab8824 *)
adds carry x8 x8 x29;
(* adcs	x9, x9, x11                                #! PC = 0xaaaaaaab8828 *)
adcs carry x9 x9 x11 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab882c *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x29, x4, x23                                #! PC = 0xaaaaaaab8830 *)
mull Hx4x23 x29 x4 x23;
(* umulh	x11, x4, x23                              #! PC = 0xaaaaaaab8834 *)
mov x11 Hx4x23;
(* adds	x8, x8, x10                                #! PC = 0xaaaaaaab8838 *)
adds carry x8 x8 x10;
(* adcs	x9, x9, x11                                #! PC = 0xaaaaaaab883c *)
adcs carry x9 x9 x11 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab8840 *)
adc x30 x30 0@uint64 carry;
(* mul	x10, x3, x25                                #! PC = 0xaaaaaaab8844 *)
mull Hx3x25 x10 x3 x25;
(* umulh	x11, x3, x25                              #! PC = 0xaaaaaaab8848 *)
mov x11 Hx3x25;
(* adds	x8, x8, x29                                #! PC = 0xaaaaaaab884c *)
adds carry x8 x8 x29;
(* adcs	x9, x9, x10                                #! PC = 0xaaaaaaab8850 *)
adcs carry x9 x9 x10 carry;
(* adcs	x30, x30, x11                              #! PC = 0xaaaaaaab8854 *)
adcs carry x30 x30 x11 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab8858 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x10, x4, x24                                #! PC = 0xaaaaaaab885c *)
mull Hx4x24 x10 x4 x24;
(* umulh	x11, x4, x24                              #! PC = 0xaaaaaaab8860 *)
mov x11 Hx4x24;
(* adds	x9, x9, x10                                #! PC = 0xaaaaaaab8864 *)
adds carry x9 x9 x10;
(* adcs	x30, x30, x11                              #! PC = 0xaaaaaaab8868 *)
adcs carry x30 x30 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab886c *)
adc x29 x29 0@uint64 carry;
(* mul	x10, x5, x23                                #! PC = 0xaaaaaaab8870 *)
mull Hx5x23 x10 x5 x23;
(* umulh	x11, x5, x23                              #! PC = 0xaaaaaaab8874 *)
mov x11 Hx5x23;
(* adds	x9, x9, x10                                #! PC = 0xaaaaaaab8878 *)
adds carry x9 x9 x10;
(* adcs	x30, x30, x11                              #! PC = 0xaaaaaaab887c *)
adcs carry x30 x30 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8880 *)
adc x29 x29 0@uint64 carry;
(* mul	x10, x2, x26                                #! PC = 0xaaaaaaab8884 *)
mull Hx2x26 x10 x2 x26;
(* umulh	x11, x2, x26                              #! PC = 0xaaaaaaab8888 *)
mov x11 Hx2x26;
(* adds	x9, x9, x10                                #! PC = 0xaaaaaaab888c *)
adds carry x9 x9 x10;
(* adcs	x30, x30, x11                              #! PC = 0xaaaaaaab8890 *)
adcs carry x30 x30 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8894 *)
adc x29 x29 0@uint64 carry;
(* mul	x12, x4, x25                                #! PC = 0xaaaaaaab8898 *)
mull Hx4x25 x12 x4 x25;
(* umulh	x13, x4, x25                              #! PC = 0xaaaaaaab889c *)
mov x13 Hx4x25;
(* adds	x10, x12, x30                              #! PC = 0xaaaaaaab88a0 *)
adds carry x10 x12 x30;
(* adcs	x11, x13, x29                              #! PC = 0xaaaaaaab88a4 *)
adcs carry x11 x13 x29 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab88a8 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x12, x2, x27                                #! PC = 0xaaaaaaab88ac *)
mull Hx2x27 x12 x2 x27;
(* umulh	x13, x2, x27                              #! PC = 0xaaaaaaab88b0 *)
mov x13 Hx2x27;
(* adds	x10, x12, x10                              #! PC = 0xaaaaaaab88b4 *)
adds carry x10 x12 x10;
(* adcs	x11, x13, x11                              #! PC = 0xaaaaaaab88b8 *)
adcs carry x11 x13 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab88bc *)
adc x29 x29 0@uint64 carry;
(* mul	x12, x3, x26                                #! PC = 0xaaaaaaab88c0 *)
mull Hx3x26 x12 x3 x26;
(* umulh	x13, x3, x26                              #! PC = 0xaaaaaaab88c4 *)
mov x13 Hx3x26;
(* adds	x10, x12, x10                              #! PC = 0xaaaaaaab88c8 *)
adds carry x10 x12 x10;
(* adcs	x11, x13, x11                              #! PC = 0xaaaaaaab88cc *)
adcs carry x11 x13 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab88d0 *)
adc x29 x29 0@uint64 carry;
(* mul	x12, x5, x24                                #! PC = 0xaaaaaaab88d4 *)
mull Hx5x24 x12 x5 x24;
(* umulh	x13, x5, x24                              #! PC = 0xaaaaaaab88d8 *)
mov x13 Hx5x24;
(* adds	x10, x12, x10                              #! PC = 0xaaaaaaab88dc *)
adds carry x10 x12 x10;
(* adcs	x11, x13, x11                              #! PC = 0xaaaaaaab88e0 *)
adcs carry x11 x13 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab88e4 *)
adc x29 x29 0@uint64 carry;
(* mul	x12, x2, x28                                #! PC = 0xaaaaaaab88e8 *)
mull Hx2x28 x12 x2 x28;
(* umulh	x13, x2, x28                              #! PC = 0xaaaaaaab88ec *)
mov x13 Hx2x28;
(* adds	x11, x12, x11                              #! PC = 0xaaaaaaab88f0 *)
adds carry x11 x12 x11;
(* adcs	x29, x13, x29                              #! PC = 0xaaaaaaab88f4 *)
adcs carry x29 x13 x29 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab88f8 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x12, x3, x27                                #! PC = 0xaaaaaaab88fc *)
mull Hx3x27 x12 x3 x27;
(* umulh	x13, x3, x27                              #! PC = 0xaaaaaaab8900 *)
mov x13 Hx3x27;
(* adds	x11, x12, x11                              #! PC = 0xaaaaaaab8904 *)
adds carry x11 x12 x11;
(* adcs	x29, x13, x29                              #! PC = 0xaaaaaaab8908 *)
adcs carry x29 x13 x29 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab890c *)
adc x30 x30 0@uint64 carry;
(* mul	x12, x4, x26                                #! PC = 0xaaaaaaab8910 *)
mull Hx4x26 x12 x4 x26;
(* umulh	x13, x4, x26                              #! PC = 0xaaaaaaab8914 *)
mov x13 Hx4x26;
(* adds	x11, x12, x11                              #! PC = 0xaaaaaaab8918 *)
adds carry x11 x12 x11;
(* adcs	x29, x13, x29                              #! PC = 0xaaaaaaab891c *)
adcs carry x29 x13 x29 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab8920 *)
adc x30 x30 0@uint64 carry;
(* mul	x12, x5, x25                                #! PC = 0xaaaaaaab8924 *)
mull Hx5x25 x12 x5 x25;
(* umulh	x13, x5, x25                              #! PC = 0xaaaaaaab8928 *)
mov x13 Hx5x25;
(* adds	x11, x12, x11                              #! PC = 0xaaaaaaab892c *)
adds carry x11 x12 x11;
(* adcs	x29, x13, x29                              #! PC = 0xaaaaaaab8930 *)
adcs carry x29 x13 x29 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab8934 *)
adc x30 x30 0@uint64 carry;
(* mul	x14, x3, x28                                #! PC = 0xaaaaaaab8938 *)
mull Hx3x28 x14 x3 x28;
(* umulh	x15, x3, x28                              #! PC = 0xaaaaaaab893c *)
mov x15 Hx3x28;
(* adds	x12, x14, x29                              #! PC = 0xaaaaaaab8940 *)
adds carry x12 x14 x29;
(* adcs	x30, x15, x30                              #! PC = 0xaaaaaaab8944 *)
adcs carry x30 x15 x30 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab8948 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x14, x4, x27                                #! PC = 0xaaaaaaab894c *)
mull Hx4x27 x14 x4 x27;
(* umulh	x15, x4, x27                              #! PC = 0xaaaaaaab8950 *)
mov x15 Hx4x27;
(* adds	x12, x14, x12                              #! PC = 0xaaaaaaab8954 *)
adds carry x12 x14 x12;
(* adcs	x30, x15, x30                              #! PC = 0xaaaaaaab8958 *)
adcs carry x30 x15 x30 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab895c *)
adc x29 x29 0@uint64 carry;
(* mul	x14, x5, x26                                #! PC = 0xaaaaaaab8960 *)
mull Hx5x26 x14 x5 x26;
(* umulh	x15, x5, x26                              #! PC = 0xaaaaaaab8964 *)
mov x15 Hx5x26;
(* adds	x12, x14, x12                              #! PC = 0xaaaaaaab8968 *)
adds carry x12 x14 x12;
(* adcs	x30, x15, x30                              #! PC = 0xaaaaaaab896c *)
adcs carry x30 x15 x30 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8970 *)
adc x29 x29 0@uint64 carry;
(* mul	x14, x4, x28                                #! PC = 0xaaaaaaab8974 *)
mull Hx4x28 x14 x4 x28;
(* umulh	x15, x4, x28                              #! PC = 0xaaaaaaab8978 *)
mov x15 Hx4x28;
(* adds	x13, x14, x30                              #! PC = 0xaaaaaaab897c *)
adds carry x13 x14 x30;
(* adcs	x29, x15, x29                              #! PC = 0xaaaaaaab8980 *)
adcs carry x29 x15 x29 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab8984 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x14, x5, x27                                #! PC = 0xaaaaaaab8988 *)
mull Hx5x27 x14 x5 x27;
(* umulh	x15, x5, x27                              #! PC = 0xaaaaaaab898c *)
mov x15 Hx5x27;
(* adds	x13, x14, x13                              #! PC = 0xaaaaaaab8990 *)
adds carry x13 x14 x13;
(* adcs	x29, x15, x29                              #! PC = 0xaaaaaaab8994 *)
adcs carry x29 x15 x29 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab8998 *)
adc x30 x30 0@uint64 carry;
(* mul	x14, x5, x28                                #! PC = 0xaaaaaaab899c *)
mull Hx5x28 x14 x5 x28;
(* umulh	x15, x5, x28                              #! PC = 0xaaaaaaab89a0 *)
mov x15 Hx5x28;
(* adds	x14, x14, x29                              #! PC = 0xaaaaaaab89a4 *)
adds carry x14 x14 x29;
(* adc	x15, x15, x30                               #! PC = 0xaaaaaaab89a8 *)
adc x15 x15 x30 carry;
(* orr	x30, xzr, x15, lsr #17                      #! PC = 0xaaaaaaab89ac *)
split x30 Lx15 x15 17;
(* lsl	x15, x15, #47                               #! PC = 0xaaaaaaab89b0 *)
shl x15 Lx15 47;
(* orr	x15, x15, x14, lsr #17                      #! PC = 0xaaaaaaab89b4 *)
split Hx14 Lx14 x14 17;
add x15 x15 Hx14;
(* lsl	x14, x14, #47                               #! PC = 0xaaaaaaab89b8 *)
shl x14 Lx14 47;
(* orr	x14, x14, x13, lsr #17                      #! PC = 0xaaaaaaab89bc *)
split Hx13 Lx13 x13 17;
add x14 x14 Hx13;
(* lsl	x13, x13, #47                               #! PC = 0xaaaaaaab89c0 *)
shl x13 Lx13 47;
(* orr	x13, x13, x12, lsr #17                      #! PC = 0xaaaaaaab89c4 *)
split Hx12 Lx12 x12 17;
add x13 x13 Hx12;
(* lsl	x12, x12, #47                               #! PC = 0xaaaaaaab89c8 *)
shl x12 Lx12 47;
(* orr	x12, x12, x11, lsr #17                      #! PC = 0xaaaaaaab89cc *)
split Hx11 Lx11 x11 17;
add x12 x12 Hx11;
(* lsl	x11, x11, #47                               #! PC = 0xaaaaaaab89d0 *)
shl x11 Lx11 47;
(* orr	x11, x11, x10, lsr #17                      #! PC = 0xaaaaaaab89d4 *)
split Hx10 Lx10 x10 17;
add x11 x11 Hx10;
(* lsl	x10, x10, #47                               #! PC = 0xaaaaaaab89d8 *)
shl x10 Lx10 47;
(* orr	x10, x10, x9, lsr #17                       #! PC = 0xaaaaaaab89dc *)
split Hx9 Lx9 x9 17;
add x10 x10 Hx9;
(* lsl	x9, x9, #47                                 #! PC = 0xaaaaaaab89e0 *)
shl x9 Lx9 47;
(* orr	x9, x9, x8, lsr #17                         #! PC = 0xaaaaaaab89e4 *)
split Hx8 Lx8 x8 17;
add x9 x9 Hx8;
(* lsl	x8, x8, #47                                 #! PC = 0xaaaaaaab89e8 *)
shl x8 Lx8 47;
(* orr	x8, x8, x7, lsr #17                         #! PC = 0xaaaaaaab89ec *)
split Hx7 Lx7 x7 17;
add x8 x8 Hx7;
(* lsl	x7, x7, #47                                 #! PC = 0xaaaaaaab89f0 *)
shl x7 Lx7 47;
(* orr	x7, x7, x6, lsr #17                         #! PC = 0xaaaaaaab89f4 *)
split Hx6 Lx6 x6 17;
add x7 x7 Hx6;
(* lsl	x6, x6, #47                                 #! PC = 0xaaaaaaab89f8 *)
shl x6 Lx6 47;
(* ldp	x2, x3, [x0]                                #! EA = L0xffffffffdea8; Value = 0x7bfb9f223595f0f3; PC = 0xaaaaaaab89fc *)
mov x2 L0xffffffffdea8;
mov x3 L0xffffffffdeb0;
(* ldp	x4, x5, [x0, #128]                          #! EA = L0xffffffffdf28; Value = 0xbcd30cdf367956e1; PC = 0xaaaaaaab8a00 *)
mov x4 L0xffffffffdf28;
mov x5 L0xffffffffdf30;
(* adds	x17, x17, x6                               #! PC = 0xaaaaaaab8a04 *)
adds carry x17 x17 x6;
(* adcs	x19, x19, x7                               #! PC = 0xaaaaaaab8a08 *)
adcs carry x19 x19 x7 carry;
(* adcs	x20, x20, x8                               #! PC = 0xaaaaaaab8a0c *)
adcs carry x20 x20 x8 carry;
(* adcs	x21, x21, x9                               #! PC = 0xaaaaaaab8a10 *)
adcs carry x21 x21 x9 carry;
(* ldp	x6, x7, [x0, #144]                          #! EA = L0xffffffffdf38; Value = 0x8afedb0c8290769b; PC = 0xaaaaaaab8a14 *)
mov x6 L0xffffffffdf38;
mov x7 L0xffffffffdf40;
(* umulh	x8, x16, x24                              #! PC = 0xaaaaaaab8a18 *)
(* NOTE: merged with mul x7, x16, x24 *)
(* mov x8 Hx16x24; *)
(* adcs	x22, x22, x10                              #! PC = 0xaaaaaaab8a1c *)
adcs carry x22 x22 x10 carry;
(* adcs	x2, x2, x11                                #! PC = 0xaaaaaaab8a20 *)
adcs carry x2 x2 x11 carry;
(* adcs	x3, x3, x12                                #! PC = 0xaaaaaaab8a24 *)
adcs carry x3 x3 x12 carry;
(* umulh	x9, x16, x23                              #! PC = 0xaaaaaaab8a28 *)
(* NOTE: merged with mul x6, x16, x23 *)
(* mov x9 Hx16x23; *)
(* adcs	x13, x13, x4                               #! PC = 0xaaaaaaab8a2c *)
adcs carry x13 x13 x4 carry;
(* adcs	x14, x14, x5                               #! PC = 0xaaaaaaab8a30 *)
adcs carry x14 x14 x5 carry;
(* adcs	x4, x15, x6                                #! PC = 0xaaaaaaab8a34 *)
adcs carry x4 x15 x6 carry;
(* mul	x6, x16, x23                                #! PC = 0xaaaaaaab8a38 *)
mull x9 x6 x16 x23;
(* adcs	x5, x30, x7                                #! PC = 0xaaaaaaab8a3c *)
adcs carry x5 x30 x7 carry;
(* mul	x7, x16, x24                                #! PC = 0xaaaaaaab8a40 *)
mull x8 x7 x16 x24;
(* adc	x10, xzr, xzr                               #! PC = 0xaaaaaaab8a44 *)
adc x10 0@uint64 0@uint64 carry;
(* stp	x13, x14, [x0]                              #! EA = L0xffffffffdea8; PC = 0xaaaaaaab8a48 *)
mov L0xffffffffdea8 x13;
mov L0xffffffffdeb0 x14;
(* str	x10, [x0, #32]                              #! EA = L0xffffffffdec8; PC = 0xaaaaaaab8a4c *)
mov L0xffffffffdec8 x10;
(* mul	x10, x17, x23                               #! PC = 0xaaaaaaab8a50 *)
mull Hx17x23 x10 x17 x23;
(* umulh	x11, x17, x23                             #! PC = 0xaaaaaaab8a54 *)
mov x11 Hx17x23;
(* adds	x7, x7, x9                                 #! PC = 0xaaaaaaab8a58 *)
adds carry x7 x7 x9;
(* adc	x8, x8, xzr                                 #! PC = 0xaaaaaaab8a5c *)
adc x8 x8 0@uint64 carry;
(* mul	x29, x17, x24                               #! PC = 0xaaaaaaab8a60 *)
mull Hx17x24 x29 x17 x24;
(* umulh	x9, x17, x24                              #! PC = 0xaaaaaaab8a64 *)
mov x9 Hx17x24;
(* adds	x7, x7, x10                                #! PC = 0xaaaaaaab8a68 *)
adds carry x7 x7 x10;
(* adcs	x8, x8, x11                                #! PC = 0xaaaaaaab8a6c *)
adcs carry x8 x8 x11 carry;
(* adc	x9, x9, xzr                                 #! PC = 0xaaaaaaab8a70 *)
adc x9 x9 0@uint64 carry;
(* mul	x10, x16, x25                               #! PC = 0xaaaaaaab8a74 *)
mull Hx16x25 x10 x16 x25;
(* umulh	x11, x16, x25                             #! PC = 0xaaaaaaab8a78 *)
mov x11 Hx16x25;
(* adds	x8, x8, x29                                #! PC = 0xaaaaaaab8a7c *)
adds carry x8 x8 x29;
(* adcs	x9, x9, x11                                #! PC = 0xaaaaaaab8a80 *)
adcs carry x9 x9 x11 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab8a84 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x29, x19, x23                               #! PC = 0xaaaaaaab8a88 *)
mull Hx19x23 x29 x19 x23;
(* umulh	x11, x19, x23                             #! PC = 0xaaaaaaab8a8c *)
mov x11 Hx19x23;
(* adds	x8, x8, x10                                #! PC = 0xaaaaaaab8a90 *)
adds carry x8 x8 x10;
(* adcs	x9, x9, x11                                #! PC = 0xaaaaaaab8a94 *)
adcs carry x9 x9 x11 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab8a98 *)
adc x30 x30 0@uint64 carry;
(* mul	x10, x17, x25                               #! PC = 0xaaaaaaab8a9c *)
mull Hx17x25 x10 x17 x25;
(* umulh	x11, x17, x25                             #! PC = 0xaaaaaaab8aa0 *)
mov x11 Hx17x25;
(* adds	x8, x8, x29                                #! PC = 0xaaaaaaab8aa4 *)
adds carry x8 x8 x29;
(* adcs	x9, x9, x10                                #! PC = 0xaaaaaaab8aa8 *)
adcs carry x9 x9 x10 carry;
(* adcs	x30, x30, x11                              #! PC = 0xaaaaaaab8aac *)
adcs carry x30 x30 x11 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab8ab0 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x10, x19, x24                               #! PC = 0xaaaaaaab8ab4 *)
mull Hx19x24 x10 x19 x24;
(* umulh	x11, x19, x24                             #! PC = 0xaaaaaaab8ab8 *)
mov x11 Hx19x24;
(* adds	x9, x9, x10                                #! PC = 0xaaaaaaab8abc *)
adds carry x9 x9 x10;
(* adcs	x30, x30, x11                              #! PC = 0xaaaaaaab8ac0 *)
adcs carry x30 x30 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8ac4 *)
adc x29 x29 0@uint64 carry;
(* mul	x10, x20, x23                               #! PC = 0xaaaaaaab8ac8 *)
mull Hx20x23 x10 x20 x23;
(* umulh	x11, x20, x23                             #! PC = 0xaaaaaaab8acc *)
mov x11 Hx20x23;
(* adds	x9, x9, x10                                #! PC = 0xaaaaaaab8ad0 *)
adds carry x9 x9 x10;
(* adcs	x30, x30, x11                              #! PC = 0xaaaaaaab8ad4 *)
adcs carry x30 x30 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8ad8 *)
adc x29 x29 0@uint64 carry;
(* mul	x10, x16, x26                               #! PC = 0xaaaaaaab8adc *)
mull Hx16x26 x10 x16 x26;
(* umulh	x11, x16, x26                             #! PC = 0xaaaaaaab8ae0 *)
mov x11 Hx16x26;
(* adds	x9, x9, x10                                #! PC = 0xaaaaaaab8ae4 *)
adds carry x9 x9 x10;
(* adcs	x30, x30, x11                              #! PC = 0xaaaaaaab8ae8 *)
adcs carry x30 x30 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8aec *)
adc x29 x29 0@uint64 carry;
(* mul	x12, x19, x25                               #! PC = 0xaaaaaaab8af0 *)
mull Hx19x25 x12 x19 x25;
(* umulh	x13, x19, x25                             #! PC = 0xaaaaaaab8af4 *)
mov x13 Hx19x25;
(* adds	x10, x12, x30                              #! PC = 0xaaaaaaab8af8 *)
adds carry x10 x12 x30;
(* adcs	x11, x13, x29                              #! PC = 0xaaaaaaab8afc *)
adcs carry x11 x13 x29 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab8b00 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x12, x16, x27                               #! PC = 0xaaaaaaab8b04 *)
mull Hx16x27 x12 x16 x27;
(* umulh	x13, x16, x27                             #! PC = 0xaaaaaaab8b08 *)
mov x13 Hx16x27;
(* adds	x10, x12, x10                              #! PC = 0xaaaaaaab8b0c *)
adds carry x10 x12 x10;
(* adcs	x11, x13, x11                              #! PC = 0xaaaaaaab8b10 *)
adcs carry x11 x13 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8b14 *)
adc x29 x29 0@uint64 carry;
(* mul	x12, x17, x26                               #! PC = 0xaaaaaaab8b18 *)
mull Hx17x26 x12 x17 x26;
(* umulh	x13, x17, x26                             #! PC = 0xaaaaaaab8b1c *)
mov x13 Hx17x26;
(* adds	x10, x12, x10                              #! PC = 0xaaaaaaab8b20 *)
adds carry x10 x12 x10;
(* adcs	x11, x13, x11                              #! PC = 0xaaaaaaab8b24 *)
adcs carry x11 x13 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8b28 *)
adc x29 x29 0@uint64 carry;
(* mul	x12, x20, x24                               #! PC = 0xaaaaaaab8b2c *)
mull Hx20x24 x12 x20 x24;
(* umulh	x13, x20, x24                             #! PC = 0xaaaaaaab8b30 *)
mov x13 Hx20x24;
(* adds	x10, x12, x10                              #! PC = 0xaaaaaaab8b34 *)
adds carry x10 x12 x10;
(* adcs	x11, x13, x11                              #! PC = 0xaaaaaaab8b38 *)
adcs carry x11 x13 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8b3c *)
adc x29 x29 0@uint64 carry;
(* mul	x12, x16, x28                               #! PC = 0xaaaaaaab8b40 *)
mull Hx16x28 x12 x16 x28;
(* umulh	x13, x16, x28                             #! PC = 0xaaaaaaab8b44 *)
mov x13 Hx16x28;
(* adds	x11, x12, x11                              #! PC = 0xaaaaaaab8b48 *)
adds carry x11 x12 x11;
(* adcs	x29, x13, x29                              #! PC = 0xaaaaaaab8b4c *)
adcs carry x29 x13 x29 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab8b50 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x12, x17, x27                               #! PC = 0xaaaaaaab8b54 *)
mull Hx17x27 x12 x17 x27;
(* umulh	x13, x17, x27                             #! PC = 0xaaaaaaab8b58 *)
mov x13 Hx17x27;
(* adds	x11, x12, x11                              #! PC = 0xaaaaaaab8b5c *)
adds carry x11 x12 x11;
(* adcs	x29, x13, x29                              #! PC = 0xaaaaaaab8b60 *)
adcs carry x29 x13 x29 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab8b64 *)
adc x30 x30 0@uint64 carry;
(* mul	x12, x19, x26                               #! PC = 0xaaaaaaab8b68 *)
mull Hx19x26 x12 x19 x26;
(* umulh	x13, x19, x26                             #! PC = 0xaaaaaaab8b6c *)
mov x13 Hx19x26;
(* adds	x11, x12, x11                              #! PC = 0xaaaaaaab8b70 *)
adds carry x11 x12 x11;
(* adcs	x29, x13, x29                              #! PC = 0xaaaaaaab8b74 *)
adcs carry x29 x13 x29 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab8b78 *)
adc x30 x30 0@uint64 carry;
(* mul	x12, x20, x25                               #! PC = 0xaaaaaaab8b7c *)
mull Hx20x25 x12 x20 x25;
(* umulh	x13, x20, x25                             #! PC = 0xaaaaaaab8b80 *)
mov x13 Hx20x25;
(* adds	x11, x12, x11                              #! PC = 0xaaaaaaab8b84 *)
adds carry x11 x12 x11;
(* adcs	x29, x13, x29                              #! PC = 0xaaaaaaab8b88 *)
adcs carry x29 x13 x29 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab8b8c *)
adc x30 x30 0@uint64 carry;
(* mul	x14, x17, x28                               #! PC = 0xaaaaaaab8b90 *)
mull Hx17x28 x14 x17 x28;
(* umulh	x15, x17, x28                             #! PC = 0xaaaaaaab8b94 *)
mov x15 Hx17x28;
(* adds	x12, x14, x29                              #! PC = 0xaaaaaaab8b98 *)
adds carry x12 x14 x29;
(* adcs	x30, x15, x30                              #! PC = 0xaaaaaaab8b9c *)
adcs carry x30 x15 x30 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab8ba0 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x14, x19, x27                               #! PC = 0xaaaaaaab8ba4 *)
mull Hx19x27 x14 x19 x27;
(* umulh	x15, x19, x27                             #! PC = 0xaaaaaaab8ba8 *)
mov x15 Hx19x27;
(* adds	x12, x14, x12                              #! PC = 0xaaaaaaab8bac *)
adds carry x12 x14 x12;
(* adcs	x30, x15, x30                              #! PC = 0xaaaaaaab8bb0 *)
adcs carry x30 x15 x30 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8bb4 *)
adc x29 x29 0@uint64 carry;
(* mul	x14, x20, x26                               #! PC = 0xaaaaaaab8bb8 *)
mull Hx20x26 x14 x20 x26;
(* umulh	x15, x20, x26                             #! PC = 0xaaaaaaab8bbc *)
mov x15 Hx20x26;
(* adds	x12, x14, x12                              #! PC = 0xaaaaaaab8bc0 *)
adds carry x12 x14 x12;
(* adcs	x30, x15, x30                              #! PC = 0xaaaaaaab8bc4 *)
adcs carry x30 x15 x30 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8bc8 *)
adc x29 x29 0@uint64 carry;
(* mul	x14, x19, x28                               #! PC = 0xaaaaaaab8bcc *)
mull Hx19x28 x14 x19 x28;
(* umulh	x15, x19, x28                             #! PC = 0xaaaaaaab8bd0 *)
mov x15 Hx19x28;
(* adds	x13, x14, x30                              #! PC = 0xaaaaaaab8bd4 *)
adds carry x13 x14 x30;
(* adcs	x29, x15, x29                              #! PC = 0xaaaaaaab8bd8 *)
adcs carry x29 x15 x29 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab8bdc *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x14, x20, x27                               #! PC = 0xaaaaaaab8be0 *)
mull Hx20x27 x14 x20 x27;
(* umulh	x15, x20, x27                             #! PC = 0xaaaaaaab8be4 *)
mov x15 Hx20x27;
(* adds	x13, x14, x13                              #! PC = 0xaaaaaaab8be8 *)
adds carry x13 x14 x13;
(* adcs	x29, x15, x29                              #! PC = 0xaaaaaaab8bec *)
adcs carry x29 x15 x29 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab8bf0 *)
adc x30 x30 0@uint64 carry;
(* mul	x14, x20, x28                               #! PC = 0xaaaaaaab8bf4 *)
mull Hx20x28 x14 x20 x28;
(* umulh	x15, x20, x28                             #! PC = 0xaaaaaaab8bf8 *)
mov x15 Hx20x28;
(* adds	x14, x14, x29                              #! PC = 0xaaaaaaab8bfc *)
adds carry x14 x14 x29;
(* adc	x15, x15, x30                               #! PC = 0xaaaaaaab8c00 *)
adc x15 x15 x30 carry;
(* orr	x30, xzr, x15, lsr #17                      #! PC = 0xaaaaaaab8c04 *)
split x30 Lx15 x15 17;
(* lsl	x15, x15, #47                               #! PC = 0xaaaaaaab8c08 *)
shl x15 Lx15 47;
(* orr	x15, x15, x14, lsr #17                      #! PC = 0xaaaaaaab8c0c *)
split Hx14 Lx14 x14 17;
add x15 x15 Hx14;
(* lsl	x14, x14, #47                               #! PC = 0xaaaaaaab8c10 *)
shl x14 Lx14 47;
(* orr	x14, x14, x13, lsr #17                      #! PC = 0xaaaaaaab8c14 *)
split Hx13 Lx13 x13 17;
add x14 x14 Hx13;
(* lsl	x13, x13, #47                               #! PC = 0xaaaaaaab8c18 *)
shl x13 Lx13 47;
(* orr	x13, x13, x12, lsr #17                      #! PC = 0xaaaaaaab8c1c *)
split Hx12 Lx12 x12 17;
add x13 x13 Hx12;
(* lsl	x12, x12, #47                               #! PC = 0xaaaaaaab8c20 *)
shl x12 Lx12 47;
(* orr	x12, x12, x11, lsr #17                      #! PC = 0xaaaaaaab8c24 *)
split Hx11 Lx11 x11 17;
add x12 x12 Hx11;
(* lsl	x11, x11, #47                               #! PC = 0xaaaaaaab8c28 *)
shl x11 Lx11 47;
(* orr	x11, x11, x10, lsr #17                      #! PC = 0xaaaaaaab8c2c *)
split Hx10 Lx10 x10 17;
add x11 x11 Hx10;
(* lsl	x10, x10, #47                               #! PC = 0xaaaaaaab8c30 *)
shl x10 Lx10 47;
(* orr	x10, x10, x9, lsr #17                       #! PC = 0xaaaaaaab8c34 *)
split Hx9 Lx9 x9 17;
add x10 x10 Hx9;
(* lsl	x9, x9, #47                                 #! PC = 0xaaaaaaab8c38 *)
shl x9 Lx9 47;
(* orr	x9, x9, x8, lsr #17                         #! PC = 0xaaaaaaab8c3c *)
split Hx8 Lx8 x8 17;
add x9 x9 Hx8;
(* lsl	x8, x8, #47                                 #! PC = 0xaaaaaaab8c40 *)
shl x8 Lx8 47;
(* orr	x8, x8, x7, lsr #17                         #! PC = 0xaaaaaaab8c44 *)
split Hx7 Lx7 x7 17;
add x8 x8 Hx7;
(* lsl	x7, x7, #47                                 #! PC = 0xaaaaaaab8c48 *)
shl x7 Lx7 47;
(* orr	x7, x7, x6, lsr #17                         #! PC = 0xaaaaaaab8c4c *)
split Hx6 Lx6 x6 17;
add x7 x7 Hx6;
(* lsl	x6, x6, #47                                 #! PC = 0xaaaaaaab8c50 *)
shl x6 Lx6 47;
(* ldp	x16, x17, [x0]                              #! EA = L0xffffffffdea8; Value = 0x998eaec006230acc; PC = 0xaaaaaaab8c54 *)
mov x16 L0xffffffffdea8;
mov x17 L0xffffffffdeb0;
(* adds	x22, x22, x6                               #! PC = 0xaaaaaaab8c58 *)
adds carry x22 x22 x6;
(* adcs	x2, x2, x7                                 #! PC = 0xaaaaaaab8c5c *)
adcs carry x2 x2 x7 carry;
(* adcs	x3, x3, x8                                 #! PC = 0xaaaaaaab8c60 *)
adcs carry x3 x3 x8 carry;
(* adcs	x16, x16, x9                               #! PC = 0xaaaaaaab8c64 *)
adcs carry x16 x16 x9 carry;
(* ldp	x6, x7, [x0, #160]                          #! EA = L0xffffffffdf48; Value = 0xd547df728bc248aa; PC = 0xaaaaaaab8c68 *)
mov x6 L0xffffffffdf48;
mov x7 L0xffffffffdf50;
(* ldp	x8, x9, [x0, #176]                          #! EA = L0xffffffffdf58; Value = 0x4b4b119ae1fb2b1c; PC = 0xaaaaaaab8c6c *)
mov x8 L0xffffffffdf58;
mov x9 L0xffffffffdf60;
(* adcs	x17, x17, x10                              #! PC = 0xaaaaaaab8c70 *)
adcs carry x17 x17 x10 carry;
(* adcs	x4, x4, x11                                #! PC = 0xaaaaaaab8c74 *)
adcs carry x4 x4 x11 carry;
(* adcs	x5, x5, x12                                #! PC = 0xaaaaaaab8c78 *)
adcs carry x5 x5 x12 carry;
(* adcs	x6, x6, x13                                #! PC = 0xaaaaaaab8c7c *)
adcs carry x6 x6 x13 carry;
(* adcs	x7, x7, x14                                #! PC = 0xaaaaaaab8c80 *)
adcs carry x7 x7 x14 carry;
(* adcs	x8, x8, x15                                #! PC = 0xaaaaaaab8c84 *)
adcs carry x8 x8 x15 carry;
(* adc	x9, x9, x30                                 #! PC = 0xaaaaaaab8c88 *)
adc x9 x9 x30 carry;
(* ldr	x29, [x0, #16]                              #! EA = L0xffffffffdeb8; Value = 0x0000000000000000; PC = 0xaaaaaaab8c8c *)
mov x29 L0xffffffffdeb8;
(* ldr	x30, [x0, #32]                              #! EA = L0xffffffffdec8; Value = 0x0000000000000000; PC = 0xaaaaaaab8c90 *)
mov x30 L0xffffffffdec8;
(* stp	x21, x22, [x1]                              #! EA = L0xffffffffe838; PC = 0xaaaaaaab8c94 *)
mov L0xffffffffe838 x21;
mov L0xffffffffe840 x22;
(* adds	x16, x16, x29                              #! PC = 0xaaaaaaab8c98 *)
adds carry x16 x16 x29;
(* adcs	x17, x17, xzr                              #! PC = 0xaaaaaaab8c9c *)
adcs carry x17 x17 0@uint64 carry;
(* adcs	x4, x4, xzr                                #! PC = 0xaaaaaaab8ca0 *)
adcs carry x4 x4 0@uint64 carry;
(* adcs	x5, x5, xzr                                #! PC = 0xaaaaaaab8ca4 *)
adcs carry x5 x5 0@uint64 carry;
(* adcs	x6, x6, x30                                #! PC = 0xaaaaaaab8ca8 *)
adcs carry x6 x6 x30 carry;
(* adcs	x7, x7, xzr                                #! PC = 0xaaaaaaab8cac *)
adcs carry x7 x7 0@uint64 carry;
(* adcs	x8, x8, xzr                                #! PC = 0xaaaaaaab8cb0 *)
adcs carry x8 x8 0@uint64 carry;
(* adc	x9, x9, xzr                                 #! PC = 0xaaaaaaab8cb4 *)
adc x9 x9 0@uint64 carry;
(* stp	x2, x3, [x1, #16]                           #! EA = L0xffffffffe848; PC = 0xaaaaaaab8cb8 *)
mov L0xffffffffe848 x2;
mov L0xffffffffe850 x3;
(* stp	x16, x17, [x1, #32]                         #! EA = L0xffffffffe858; PC = 0xaaaaaaab8cbc *)
mov L0xffffffffe858 x16;
mov L0xffffffffe860 x17;
(* stp	x4, x5, [x1, #48]                           #! EA = L0xffffffffe868; PC = 0xaaaaaaab8cc0 *)
mov L0xffffffffe868 x4;
mov L0xffffffffe870 x5;
(* stp	x6, x7, [x1, #64]                           #! EA = L0xffffffffe878; PC = 0xaaaaaaab8cc4 *)
mov L0xffffffffe878 x6;
mov L0xffffffffe880 x7;
(* stp	x8, x9, [x1, #80]                           #! EA = L0xffffffffe888; PC = 0xaaaaaaab8cc8 *)
mov L0xffffffffe888 x8;
mov L0xffffffffe890 x9;
(* ldp	x19, x20, [sp]                              #! EA = L0xffffffffdd20; Value = 0x0000ffffffffdea8; PC = 0xaaaaaaab8ccc *)
mov x19 L0xffffffffdd20;
mov x20 L0xffffffffdd28;
(* ldp	x21, x22, [sp, #16]                         #! EA = L0xffffffffdd30; Value = 0x0000ffffffffdf68; PC = 0xaaaaaaab8cd0 *)
mov x21 L0xffffffffdd30;
mov x22 L0xffffffffdd38;
(* ldp	x23, x24, [sp, #32]                         #! EA = L0xffffffffdd40; Value = 0x0000ffffffffdde8; PC = 0xaaaaaaab8cd4 *)
mov x23 L0xffffffffdd40;
mov x24 L0xffffffffdd48;
(* ldp	x25, x26, [sp, #48]                         #! EA = L0xffffffffdd50; Value = 0x0000ffffffffe5f8; PC = 0xaaaaaaab8cd8 *)
mov x25 L0xffffffffdd50;
mov x26 L0xffffffffdd58;
(* ldp	x27, x28, [sp, #64]                         #! EA = L0xffffffffdd60; Value = 0x0000ffffffffe718; PC = 0xaaaaaaab8cdc *)
mov x27 L0xffffffffdd60;
mov x28 L0xffffffffdd68;
(* ldp	x29, x30, [sp, #80]                         #! EA = L0xffffffffdd70; Value = 0x0000ffffffffdd80; PC = 0xaaaaaaab8ce0 *)
mov x29 L0xffffffffdd70;
mov x30 L0xffffffffdd78;
(* add	sp, sp, #0x60                               #! PC = 0xaaaaaaab8ce4 *)
adds dontcare sp sp 0x60@uint64;
(* #! <- SP = 0xffffffffdd80 *)
#! 0xffffffffdd80 = 0xffffffffdd80;
(* #ret                                            #! PC = 0xaaaaaaab8ce8 *)
#ret                                            #! 0xaaaaaaab8ce8 = 0xaaaaaaab8ce8;

(* CUT 8 *)
cut eqmod (limbs 64 [0, 0, 0, 0, 0, 0,  0, 0, 0, 0, 0, 0,
                     L0xffffffffe838, L0xffffffffe840, L0xffffffffe848,
                     L0xffffffffe850, L0xffffffffe858, L0xffffffffe860,
                     L0xffffffffe868, L0xffffffffe870, L0xffffffffe878,
                     L0xffffffffe880, L0xffffffffe888, L0xffffffffe890])
          (limbs 64 [ar0, ar1, ar2, ar3, ar4, ar5, ar6, ar7, ar8, ar9, ara, arb] *
           limbs 64 [br0, br1, br2, br3, br4, br5, br6, br7, br8, br9, bra, brb] -
           limbs 64 [ai0, ai1, ai2, ai3, ai4, ai5, ai6, ai7, ai8, ai9, aia, aib] *
           limbs 64 [bi0, bi1, bi2, bi3, bi4, bi5, bi6, bi7, bi8, bi9, bia, bib])
          (limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, ma, mb])
    prove with [ precondition, cuts [ 6 ] ]
 && limbs 64 [L0xffffffffe838, L0xffffffffe840, L0xffffffffe848,
              L0xffffffffe850, L0xffffffffe858, L0xffffffffe860,
              L0xffffffffe868, L0xffffffffe870, L0xffffffffe878,
              L0xffffffffe880, L0xffffffffe888, L0xffffffffe890] <u
    3@768 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, ma, mb]
    prove with [ precondition, cuts [ 6 ] ];
    
(* ldr	x0, [x0, #4056]                             #! EA = L0xaaaaaaacdfd8; Value = 0x0000fffff7ffd6b0; PC = 0xaaaaaaaae580 *)
mov x0 L0xaaaaaaacdfd8;
(* ldr	x1, [sp, #872]                              #! EA = L0xffffffffe0e8; Value = 0xc2c3f17c1c719d00; PC = 0xaaaaaaaae584 *)
mov x1 L0xffffffffe0e8;
(* ldr	x2, [x0]                                    #! EA = L0xfffff7ffd6b0; Value = 0xc2c3f17c1c719d00; PC = 0xaaaaaaaae588 *)
mov x2 L0xfffff7ffd6b0;
(* subs	x1, x1, x2                                 #! PC = 0xaaaaaaaae58c *)
subc carry x1 x1 x2;
(* mov	x2, #0x0                   	// #0           #! PC = 0xaaaaaaaae590 *)
mov x2 0x0@uint64;
(* #b.ne	0xaaaaaaaae5b8 <fp2mul751_mont+296>  // b.any#! PC = 0xaaaaaaaae594 *)
#b.ne	0xaaaaaaaae5b8 <fp2mul751_mont+296>  // b.any#! 0xaaaaaaaae594 = 0xaaaaaaaae594;
(* ldp	x29, x30, [sp]                              #! EA = L0xffffffffdd80; Value = 0x0000ffffffffe0f0; PC = 0xaaaaaaaae598 *)
mov x29 L0xffffffffdd80;
mov x30 L0xffffffffdd88;
(* ldp	x19, x20, [sp, #16]                         #! EA = L0xffffffffdd90; Value = 0x0000ffffffffe3b8; PC = 0xaaaaaaaae59c *)
mov x19 L0xffffffffdd90;
mov x20 L0xffffffffdd98;
(* ldp	x21, x22, [sp, #32]                         #! EA = L0xffffffffdda0; Value = 0x0000ffffffffe238; PC = 0xaaaaaaaae5a0 *)
mov x21 L0xffffffffdda0;
mov x22 L0xffffffffdda8;
(* ldp	x23, x24, [sp, #48]                         #! EA = L0xffffffffddb0; Value = 0x0000ffffffffe2f8; PC = 0xaaaaaaaae5a4 *)
mov x23 L0xffffffffddb0;
mov x24 L0xffffffffddb8;
(* ldp	x25, x26, [sp, #64]                         #! EA = L0xffffffffddc0; Value = 0x0000ffffffffe5f8; PC = 0xaaaaaaaae5a8 *)
mov x25 L0xffffffffddc0;
mov x26 L0xffffffffddc8;
(* ldr	x27, [sp, #80]                              #! EA = L0xffffffffddd0; Value = 0x0000ffffffffe6b8; PC = 0xaaaaaaaae5ac *)
mov x27 L0xffffffffddd0;
(* add	sp, sp, #0x370                              #! PC = 0xaaaaaaaae5b0 *)
adds dontcare sp sp 0x370@uint64;
(* #! <- SP = 0xffffffffe0f0 *)
#! 0xffffffffe0f0 = 0xffffffffe0f0;
(* #ret                                            #! PC = 0xaaaaaaaae5b4 *)
#ret                                            #! 0xaaaaaaaae5b4 = 0xaaaaaaaae5b4;

mov cr0 L0xffffffffe838; mov cr1 L0xffffffffe840; mov cr2 L0xffffffffe848;
mov cr3 L0xffffffffe850; mov cr4 L0xffffffffe858; mov cr5 L0xffffffffe860;
mov cr6 L0xffffffffe868; mov cr7 L0xffffffffe870; mov cr8 L0xffffffffe878;
mov cr9 L0xffffffffe880; mov cra L0xffffffffe888; mov crb L0xffffffffe890;
mov ci0 L0xffffffffe898; mov ci1 L0xffffffffe8a0; mov ci2 L0xffffffffe8a8;
mov ci3 L0xffffffffe8b0; mov ci4 L0xffffffffe8b8; mov ci5 L0xffffffffe8c0;
mov ci6 L0xffffffffe8c8; mov ci7 L0xffffffffe8d0; mov ci8 L0xffffffffe8d8;
mov ci9 L0xffffffffe8e0; mov cia L0xffffffffe8e8; mov cib L0xffffffffe8f0;

ghost I@uint64 : true && true;

{
  eqmod (2**768 *
         (    limbs 64 [cr0, cr1, cr2, cr3, cr4, cr5,
                        cr6, cr7, cr8, cr9, cra ,crb] +
          I * limbs 64 [ci0, ci1, ci2, ci3, ci4, ci5,
                        ci6, ci7, ci8, ci9, cia ,cib]))
        ((    limbs 64 [ar0, ar1, ar2, ar3, ar4, ar5,
                        ar6, ar7, ar8, ar9, ara, arb] +
          I * limbs 64 [ai0, ai1, ai2, ai3, ai4, ai5,
                        ai6, ai7, ai8, ai9, aia, aib]) *
         (    limbs 64 [br0, br1, br2, br3, br4, br5,
                        br6, br7, br8, br9, bra, brb] +
          I * limbs 64 [bi0, bi1, bi2, bi3, bi4, bi5,
                        bi6, bi7, bi8, bi9, bia, bib]))
        [ I**2 + 1, limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, ma, mb] ]
  prove with [ cuts [ 7, 8 ] ]
&&
  and [limbs 64 [cr0, cr1, cr2, cr3, cr4, cr5, cr6, cr7, cr8, cr9, cra ,crb] <u
       3@768 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, ma, mb],
       limbs 64 [ci0, ci1, ci2, ci3, ci4, ci5, ci6, ci7, ci8, ci9, cia ,cib] <u
       2@768 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, ma, mb]] 
  prove with [ cuts [ 7, 8 ] ]
}

