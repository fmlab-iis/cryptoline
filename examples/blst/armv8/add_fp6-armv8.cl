(* quine:  -v -isafety -btor add_fp6-armv8.cl
Parsing Cryptoline file:                [OK]            0.007073 seconds
Checking well-formedness:               [OK]            0.001592 seconds
Transforming to SSA form:               [OK]            0.000465 seconds
Rewriting assignments:                  [OK]            0.008322 seconds
Verifying program safety:               [OK]            0.715049 seconds
Verifying range assertions:             [OK]            16.095055 seconds
Verifying range specification:          [OK]            0.048031 seconds
Rewriting value-preserved casting:      [OK]            0.000020 seconds
Verifying algebraic assertions:         [OK]            0.007395 seconds
Verifying algebraic specification:      [OK]            0.281386 seconds
Verification result:                    [OK]            17.165251 seconds
*)

proc main (uint64 a00, uint64 a01, uint64 a02,
           uint64 a03, uint64 a04, uint64 a05,
           uint64 a10, uint64 a11, uint64 a12,
           uint64 a13, uint64 a14, uint64 a15,
           uint64 a20, uint64 a21, uint64 a22,
           uint64 a23, uint64 a24, uint64 a25,
           uint64 a30, uint64 a31, uint64 a32,
           uint64 a33, uint64 a34, uint64 a35,
           uint64 a40, uint64 a41, uint64 a42,
           uint64 a43, uint64 a44, uint64 a45,
           uint64 a50, uint64 a51, uint64 a52,
           uint64 a53, uint64 a54, uint64 a55,

           uint64 b00, uint64 b01, uint64 b02,
           uint64 b03, uint64 b04, uint64 b05,
           uint64 b10, uint64 b11, uint64 b12,
           uint64 b13, uint64 b14, uint64 b15,
           uint64 b20, uint64 b21, uint64 b22,
           uint64 b23, uint64 b24, uint64 b25,
           uint64 b30, uint64 b31, uint64 b32,
           uint64 b33, uint64 b34, uint64 b35,
           uint64 b40, uint64 b41, uint64 b42,
           uint64 b43, uint64 b44, uint64 b45,
           uint64 b50, uint64 b51, uint64 b52,
           uint64 b53, uint64 b54, uint64 b55,

           uint64  m0, uint64  m1, uint64  m2,
           uint64  m3, uint64  m4, uint64  m5,
           uint64  mp,
           uint64  x0,  uint64 x1,  uint64 x2,
           uint64 x19, uint64 x20, uint64 x21, uint64 x22,
           uint64 x29, uint64 x30, uint64 sp,

           uint64   U, uint64   V, uint64  W) =
{
  and [
    x0 = 0x400082a048, x1 = 0x400082a5f8, x2 = 0x400082a718,
    m0 = 0xb9feffffffffaaab, m1 = 0x1eabfffeb153ffff,
    m2 = 0x6730d2a0f6b0f624, m3 = 0x64774b84f38512bf,
    m4 = 0x4b1ba7b6434bacd7, m5 = 0x1a0111ea397fe69a
  ]
&&
  and [
    x0 = 0x400082a048@64, x1 = 0x400082a5f8@64, x2 = 0x400082a718@64,
    m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
    m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
    m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64,
    limbs 64 [a00, a01, a02, a03, a04, a05] <u limbs 64 [m0, m1, m2, m3, m4, m5],
    limbs 64 [a10, a11, a12, a13, a14, a15] <u limbs 64 [m0, m1, m2, m3, m4, m5],
    limbs 64 [a20, a21, a22, a23, a24, a25] <u limbs 64 [m0, m1, m2, m3, m4, m5],
    limbs 64 [a30, a31, a32, a33, a34, a35] <u limbs 64 [m0, m1, m2, m3, m4, m5],
    limbs 64 [a40, a41, a42, a43, a44, a45] <u limbs 64 [m0, m1, m2, m3, m4, m5],
    limbs 64 [a50, a51, a52, a53, a54, a55] <u limbs 64 [m0, m1, m2, m3, m4, m5],
    limbs 64 [b00, b01, b02, b03, b04, b05] <u limbs 64 [m0, m1, m2, m3, m4, m5],
    limbs 64 [b10, b11, b12, b13, b14, b15] <u limbs 64 [m0, m1, m2, m3, m4, m5],
    limbs 64 [b20, b21, b22, b23, b24, b25] <u limbs 64 [m0, m1, m2, m3, m4, m5],
    limbs 64 [b30, b31, b32, b33, b34, b35] <u limbs 64 [m0, m1, m2, m3, m4, m5],
    limbs 64 [b40, b41, b42, b43, b44, b45] <u limbs 64 [m0, m1, m2, m3, m4, m5],
    limbs 64 [b50, b51, b52, b53, b54, b55] <u limbs 64 [m0, m1, m2, m3, m4, m5]
  ]
}

ghost x19o@uint64, x20o@uint64, x21o@uint64, x22o@uint64,
      x29o@uint64, x30o@uint64 :
      and [x19o = x19, x20o = x20, x21o = x21, x22o = x22,
           x29o = x29, x30o = x30]
   && and [x19o = x19, x20o = x20, x21o = x21, x22o = x22,
           x29o = x29, x30o = x30];

(* pointer to m *)
mov L0x4000029fd8 mp;

mov L0x400082a5f8 a00; mov L0x400082a600 a01; mov L0x400082a608 a02;
mov L0x400082a610 a03; mov L0x400082a618 a04; mov L0x400082a620 a05;

mov L0x400082a628 a10; mov L0x400082a630 a11; mov L0x400082a638 a12;
mov L0x400082a640 a13; mov L0x400082a648 a14; mov L0x400082a650 a15;

mov L0x400082a658 a20; mov L0x400082a660 a21; mov L0x400082a668 a22;
mov L0x400082a670 a23; mov L0x400082a678 a24; mov L0x400082a680 a25;

mov L0x400082a688 a30; mov L0x400082a690 a31; mov L0x400082a698 a32;
mov L0x400082a6a0 a33; mov L0x400082a6a8 a34; mov L0x400082a6b0 a35;

mov L0x400082a6b8 a40; mov L0x400082a6c0 a41; mov L0x400082a6c8 a42;
mov L0x400082a6d0 a43; mov L0x400082a6d8 a44; mov L0x400082a6e0 a45;

mov L0x400082a6e8 a50; mov L0x400082a6f0 a51; mov L0x400082a6f8 a52;
mov L0x400082a700 a53; mov L0x400082a708 a54; mov L0x400082a710 a55;

mov L0x400082a718 b00; mov L0x400082a720 b01; mov L0x400082a728 b02;
mov L0x400082a730 b03; mov L0x400082a738 b04; mov L0x400082a740 b05;

mov L0x400082a748 b10; mov L0x400082a750 b11; mov L0x400082a758 b12;
mov L0x400082a760 b13; mov L0x400082a768 b14; mov L0x400082a770 b15;

mov L0x400082a778 b20; mov L0x400082a780 b21; mov L0x400082a788 b22;
mov L0x400082a790 b23; mov L0x400082a798 b24; mov L0x400082a7a0 b25;

mov L0x400082a7a8 b30; mov L0x400082a7b0 b31; mov L0x400082a7b8 b32;
mov L0x400082a7c0 b33; mov L0x400082a7c8 b34; mov L0x400082a7d0 b35;

mov L0x400082a7d8 b40; mov L0x400082a7e0 b41; mov L0x400082a7e8 b42;
mov L0x400082a7f0 b43; mov L0x400082a7f8 b44; mov L0x400082a800 b45;

mov L0x400082a808 b50; mov L0x400082a810 b51; mov L0x400082a818 b52;
mov L0x400082a820 b53; mov L0x400082a828 b54; mov L0x400082a830 b55;

mov L0x4000016928 m0; mov L0x4000016930 m1; mov L0x4000016938 m2;
mov L0x4000016940 m3; mov L0x4000016948 m4; mov L0x4000016950 m5;

(* stp	x29, x30, [sp, #-48]!                       #! EA = L0x4000829fb0; PC = 0x274877931188 *)
mov L0x4000829fb0 x29;
mov L0x4000829fb8 x30;
(* mov	x29, sp                                     #! PC = 0x274877931192 *)
mov x29 sp;
(* stp	x19, x20, [sp, #16]                         #! EA = L0x4000829fc0; PC = 0x274877931196 *)
mov L0x4000829fc0 x19;
mov L0x4000829fc8 x20;
(* stp	x21, x22, [sp, #32]                         #! EA = L0x4000829fd0; PC = 0x274877931200 *)
mov L0x4000829fd0 x21;
mov L0x4000829fd8 x22;
(* mov	x20, x0                                     #! PC = 0x274877931204 *)
mov x20 x0;
(* mov	x21, x1                                     #! PC = 0x274877931208 *)
mov x21 x1;
(* mov	x22, x2                                     #! PC = 0x274877931212 *)
mov x22 x2;
(* #adrp	x19, 0x4000029000                          #! PC = 0x274877931216 *)
#adrp	%%x19, 0x4000029000                          #! 0x274877931216 = 0x274877931216;
(* ldr	x19, [x19, #4056]                           #! EA = L0x4000029fd8; Value = 0x0000004000016928; PC = 0x274877931220 *)
mov x19 L0x4000029fd8;
(* mov	x3, x19                                     #! PC = 0x274877931224 *)
mov x3 x19;
(* #bl	0x4000011be0 <add_mod_384x>                 #! PC = 0x274877931228 *)
#bl	0x4000011be0 <add_mod_384x>                 #! 0x274877931228 = 0x274877931228;
(* #paciasp                                         #! PC = 0x274877979616 *)
#paciasp                                         #! 0x274877979616 = 0x274877979616;
(* stp	x29, x30, [sp, #-48]!                       #! EA = L0x4000829f80; PC = 0x274877979620 *)
mov L0x4000829f80 x29;
mov L0x4000829f88 x30;
(* mov	x29, sp                                     #! PC = 0x274877979624 *)
mov x29 sp;
(* stp	x19, x20, [sp, #16]                         #! EA = L0x4000829f90; PC = 0x274877979628 *)
mov L0x4000829f90 x19;
mov L0x4000829f98 x20;
(* stp	x21, x22, [sp, #32]                         #! EA = L0x4000829fa0; PC = 0x274877979632 *)
mov L0x4000829fa0 x21;
mov L0x4000829fa8 x22;
(* ldp	x4, x5, [x3]                                #! EA = L0x4000016928; Value = 0xb9feffffffffaaab; PC = 0x274877979636 *)
mov x4 L0x4000016928;
mov x5 L0x4000016930;
(* ldp	x6, x7, [x3, #16]                           #! EA = L0x4000016938; Value = 0x6730d2a0f6b0f624; PC = 0x274877979640 *)
mov x6 L0x4000016938;
mov x7 L0x4000016940;
(* ldp	x8, x9, [x3, #32]                           #! EA = L0x4000016948; Value = 0x4b1ba7b6434bacd7; PC = 0x274877979644 *)
mov x8 L0x4000016948;
mov x9 L0x4000016950;
(* #bl	0x4000011b60 <__add_mod_384>                #! PC = 0x274877979648 *)
#bl	0x4000011b60 <__add_mod_384>                #! 0x274877979648 = 0x274877979648;
(* ldp	x10, x11, [x1]                              #! EA = L0x400082a5f8; Value = 0x0000004000841d60; PC = 0x274877979488 *)
mov x10 L0x400082a5f8;
mov x11 L0x400082a600;
(* ldp	x16, x17, [x2]                              #! EA = L0x400082a718; Value = 0x0000000000000000; PC = 0x274877979492 *)
mov x16 L0x400082a718;
mov x17 L0x400082a720;
(* ldp	x12, x13, [x1, #16]                         #! EA = L0x400082a608; Value = 0x000000400085d6d8; PC = 0x274877979496 *)
mov x12 L0x400082a608;
mov x13 L0x400082a610;
(* ldp	x19, x20, [x2, #16]                         #! EA = L0x400082a728; Value = 0x0000000000000000; PC = 0x274877979500 *)
mov x19 L0x400082a728;
mov x20 L0x400082a730;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0x400082a618; Value = 0x0000004000000040; PC = 0x274877979504 *)
mov x14 L0x400082a618;
mov x15 L0x400082a620;
(* ldp	x21, x22, [x2, #32]                         #! EA = L0x400082a738; Value = 0x0000000000000000; PC = 0x274877979508 *)
mov x21 L0x400082a738;
mov x22 L0x400082a740;
(* adds	x10, x10, x16                              #! PC = 0x274877979512 *)
adds carry x10 x10 x16;
(* adcs	x11, x11, x17                              #! PC = 0x274877979516 *)
adcs carry x11 x11 x17 carry;
(* adcs	x12, x12, x19                              #! PC = 0x274877979520 *)
adcs carry x12 x12 x19 carry;
(* adcs	x13, x13, x20                              #! PC = 0x274877979524 *)
adcs carry x13 x13 x20 carry;
(* adcs	x14, x14, x21                              #! PC = 0x274877979528 *)
adcs carry x14 x14 x21 carry;
(* adcs	x15, x15, x22                              #! PC = 0x274877979532 *)
adcs carry x15 x15 x22 carry;
(* adc	x3, xzr, xzr                                #! PC = 0x274877979536 *)
adc x3 0@uint64 0@uint64 carry;
(* subs	x16, x10, x4                               #! PC = 0x274877979540 *)
subc carry x16 x10 x4;
(* sbcs	x17, x11, x5                               #! PC = 0x274877979544 *)
sbcs carry x17 x11 x5 carry;
(* sbcs	x19, x12, x6                               #! PC = 0x274877979548 *)
sbcs carry x19 x12 x6 carry;
(* sbcs	x20, x13, x7                               #! PC = 0x274877979552 *)
sbcs carry x20 x13 x7 carry;
(* sbcs	x21, x14, x8                               #! PC = 0x274877979556 *)
sbcs carry x21 x14 x8 carry;
(* sbcs	x22, x15, x9                               #! PC = 0x274877979560 *)
sbcs carry x22 x15 x9 carry;
(* sbcs	xzr, x3, xzr                               #! PC = 0x274877979564 *)
sbcs carry dontcare x3 0@uint64 carry;
(* csel	x10, x10, x16, cc  // cc = lo, ul, last    #! PC = 0x274877979568 *)
cmov x10 carry x16 x10;
(* csel	x11, x11, x17, cc  // cc = lo, ul, last    #! PC = 0x274877979572 *)
cmov x11 carry x17 x11;
(* csel	x12, x12, x19, cc  // cc = lo, ul, last    #! PC = 0x274877979576 *)
cmov x12 carry x19 x12;
(* csel	x13, x13, x20, cc  // cc = lo, ul, last    #! PC = 0x274877979580 *)
cmov x13 carry x20 x13;
(* csel	x14, x14, x21, cc  // cc = lo, ul, last    #! PC = 0x274877979584 *)
cmov x14 carry x21 x14;
(* csel	x15, x15, x22, cc  // cc = lo, ul, last    #! PC = 0x274877979588 *)
cmov x15 carry x22 x15;
(* #ret                                            #! PC = 0x274877979592 *)
#ret                                            #! 0x274877979592 = 0x274877979592;
(* stp	x10, x11, [x0]                              #! EA = L0x400082a048; PC = 0x274877979652 *)
mov L0x400082a048 x10;
mov L0x400082a050 x11;
(* add	x1, x1, #0x30                               #! PC = 0x274877979656 *)
add x1 x1 0x30@uint64;
(* stp	x12, x13, [x0, #16]                         #! EA = L0x400082a058; PC = 0x274877979660 *)
mov L0x400082a058 x12;
mov L0x400082a060 x13;
(* add	x2, x2, #0x30                               #! PC = 0x274877979664 *)
add x2 x2 0x30@uint64;
(* stp	x14, x15, [x0, #32]                         #! EA = L0x400082a068; PC = 0x274877979668 *)
mov L0x400082a068 x14;
mov L0x400082a070 x15;
(* #bl	0x4000011b60 <__add_mod_384>                #! PC = 0x274877979672 *)
#bl	0x4000011b60 <__add_mod_384>                #! 0x274877979672 = 0x274877979672;
(* ldp	x10, x11, [x1]                              #! EA = L0x400082a628; Value = 0x000000400085de20; PC = 0x274877979488 *)
mov x10 L0x400082a628;
mov x11 L0x400082a630;
(* ldp	x16, x17, [x2]                              #! EA = L0x400082a748; Value = 0x0000000000000000; PC = 0x274877979492 *)
mov x16 L0x400082a748;
mov x17 L0x400082a750;
(* ldp	x12, x13, [x1, #16]                         #! EA = L0x400082a638; Value = 0x0000000000000000; PC = 0x274877979496 *)
mov x12 L0x400082a638;
mov x13 L0x400082a640;
(* ldp	x19, x20, [x2, #16]                         #! EA = L0x400082a758; Value = 0x0000000000000000; PC = 0x274877979500 *)
mov x19 L0x400082a758;
mov x20 L0x400082a760;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0x400082a648; Value = 0x000000400082c000; PC = 0x274877979504 *)
mov x14 L0x400082a648;
mov x15 L0x400082a650;
(* ldp	x21, x22, [x2, #32]                         #! EA = L0x400082a768; Value = 0x0000000000000000; PC = 0x274877979508 *)
mov x21 L0x400082a768;
mov x22 L0x400082a770;
(* adds	x10, x10, x16                              #! PC = 0x274877979512 *)
adds carry x10 x10 x16;
(* adcs	x11, x11, x17                              #! PC = 0x274877979516 *)
adcs carry x11 x11 x17 carry;
(* adcs	x12, x12, x19                              #! PC = 0x274877979520 *)
adcs carry x12 x12 x19 carry;
(* adcs	x13, x13, x20                              #! PC = 0x274877979524 *)
adcs carry x13 x13 x20 carry;
(* adcs	x14, x14, x21                              #! PC = 0x274877979528 *)
adcs carry x14 x14 x21 carry;
(* adcs	x15, x15, x22                              #! PC = 0x274877979532 *)
adcs carry x15 x15 x22 carry;
(* adc	x3, xzr, xzr                                #! PC = 0x274877979536 *)
adc x3 0@uint64 0@uint64 carry;
(* subs	x16, x10, x4                               #! PC = 0x274877979540 *)
subc carry x16 x10 x4;
(* sbcs	x17, x11, x5                               #! PC = 0x274877979544 *)
sbcs carry x17 x11 x5 carry;
(* sbcs	x19, x12, x6                               #! PC = 0x274877979548 *)
sbcs carry x19 x12 x6 carry;
(* sbcs	x20, x13, x7                               #! PC = 0x274877979552 *)
sbcs carry x20 x13 x7 carry;
(* sbcs	x21, x14, x8                               #! PC = 0x274877979556 *)
sbcs carry x21 x14 x8 carry;
(* sbcs	x22, x15, x9                               #! PC = 0x274877979560 *)
sbcs carry x22 x15 x9 carry;
(* sbcs	xzr, x3, xzr                               #! PC = 0x274877979564 *)
sbcs carry dontcare x3 0@uint64 carry;
(* csel	x10, x10, x16, cc  // cc = lo, ul, last    #! PC = 0x274877979568 *)
cmov x10 carry x16 x10;
(* csel	x11, x11, x17, cc  // cc = lo, ul, last    #! PC = 0x274877979572 *)
cmov x11 carry x17 x11;
(* csel	x12, x12, x19, cc  // cc = lo, ul, last    #! PC = 0x274877979576 *)
cmov x12 carry x19 x12;
(* csel	x13, x13, x20, cc  // cc = lo, ul, last    #! PC = 0x274877979580 *)
cmov x13 carry x20 x13;
(* csel	x14, x14, x21, cc  // cc = lo, ul, last    #! PC = 0x274877979584 *)
cmov x14 carry x21 x14;
(* csel	x15, x15, x22, cc  // cc = lo, ul, last    #! PC = 0x274877979588 *)
cmov x15 carry x22 x15;
(* #ret                                            #! PC = 0x274877979592 *)
#ret                                            #! 0x274877979592 = 0x274877979592;
(* ldr	x30, [sp, #8]                               #! EA = L0x4000829f88; Value = 0x0059004000005ee0; PC = 0x274877979676 *)
mov x30 L0x4000829f88;
(* stp	x10, x11, [x0, #48]                         #! EA = L0x400082a078; PC = 0x274877979680 *)
mov L0x400082a078 x10;
mov L0x400082a080 x11;
(* stp	x12, x13, [x0, #64]                         #! EA = L0x400082a088; PC = 0x274877979684 *)
mov L0x400082a088 x12;
mov L0x400082a090 x13;
(* stp	x14, x15, [x0, #80]                         #! EA = L0x400082a098; PC = 0x274877979688 *)
mov L0x400082a098 x14;
mov L0x400082a0a0 x15;
(* ldp	x19, x20, [x29, #16]                        #! EA = L0x4000829f90; Value = 0x0000004000016928; PC = 0x274877979692 *)
mov x19 L0x4000829f90;
mov x20 L0x4000829f98;
(* ldp	x21, x22, [x29, #32]                        #! EA = L0x4000829fa0; Value = 0x000000400082a5f8; PC = 0x274877979696 *)
mov x21 L0x4000829fa0;
mov x22 L0x4000829fa8;
(* ldr	x29, [sp], #48                              #! EA = L0x4000829f80; Value = 0x0000004000829fb0; PC = 0x274877979700 *)
mov x29 L0x4000829f80;
(* #autiasp                                         #! PC = 0x274877979704 *)
#autiasp                                         #! 0x274877979704 = 0x274877979704;
(* #ret                                            #! PC = 0x274877979708 *)
#ret                                            #! 0x274877979708 = 0x274877979708;
(* mov	x3, x19                                     #! PC = 0x274877931232 *)
mov x3 x19;
(* add	x2, x22, #0x60                              #! PC = 0x274877931236 *)
add x2 x22 0x60@uint64;
(* add	x1, x21, #0x60                              #! PC = 0x274877931240 *)
add x1 x21 0x60@uint64;
(* add	x0, x20, #0x60                              #! PC = 0x274877931244 *)
add x0 x20 0x60@uint64;
(* #bl	0x4000011be0 <add_mod_384x>                 #! PC = 0x274877931248 *)
#bl	0x4000011be0 <add_mod_384x>                 #! 0x274877931248 = 0x274877931248;
(* #paciasp                                         #! PC = 0x274877979616 *)
#paciasp                                         #! 0x274877979616 = 0x274877979616;
(* stp	x29, x30, [sp, #-48]!                       #! EA = L0x4000829f80; PC = 0x274877979620 *)
mov L0x4000829f80 x29;
mov L0x4000829f88 x30;
(* mov	x29, sp                                     #! PC = 0x274877979624 *)
mov x29 sp;
(* stp	x19, x20, [sp, #16]                         #! EA = L0x4000829f90; PC = 0x274877979628 *)
mov L0x4000829f90 x19;
mov L0x4000829f98 x20;
(* stp	x21, x22, [sp, #32]                         #! EA = L0x4000829fa0; PC = 0x274877979632 *)
mov L0x4000829fa0 x21;
mov L0x4000829fa8 x22;
(* ldp	x4, x5, [x3]                                #! EA = L0x4000016928; Value = 0xb9feffffffffaaab; PC = 0x274877979636 *)
mov x4 L0x4000016928;
mov x5 L0x4000016930;
(* ldp	x6, x7, [x3, #16]                           #! EA = L0x4000016938; Value = 0x6730d2a0f6b0f624; PC = 0x274877979640 *)
mov x6 L0x4000016938;
mov x7 L0x4000016940;
(* ldp	x8, x9, [x3, #32]                           #! EA = L0x4000016948; Value = 0x4b1ba7b6434bacd7; PC = 0x274877979644 *)
mov x8 L0x4000016948;
mov x9 L0x4000016950;
(* #bl	0x4000011b60 <__add_mod_384>                #! PC = 0x274877979648 *)
#bl	0x4000011b60 <__add_mod_384>                #! 0x274877979648 = 0x274877979648;
(* ldp	x10, x11, [x1]                              #! EA = L0x400082a658; Value = 0x0000000000000000; PC = 0x274877979488 *)
mov x10 L0x400082a658;
mov x11 L0x400082a660;
(* ldp	x16, x17, [x2]                              #! EA = L0x400082a778; Value = 0x0000000000000000; PC = 0x274877979492 *)
mov x16 L0x400082a778;
mov x17 L0x400082a780;
(* ldp	x12, x13, [x1, #16]                         #! EA = L0x400082a668; Value = 0x0000000000000000; PC = 0x274877979496 *)
mov x12 L0x400082a668;
mov x13 L0x400082a670;
(* ldp	x19, x20, [x2, #16]                         #! EA = L0x400082a788; Value = 0x0000000000000000; PC = 0x274877979500 *)
mov x19 L0x400082a788;
mov x20 L0x400082a790;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0x400082a678; Value = 0x0000004000845000; PC = 0x274877979504 *)
mov x14 L0x400082a678;
mov x15 L0x400082a680;
(* ldp	x21, x22, [x2, #32]                         #! EA = L0x400082a798; Value = 0x0000004000841c68; PC = 0x274877979508 *)
mov x21 L0x400082a798;
mov x22 L0x400082a7a0;
(* adds	x10, x10, x16                              #! PC = 0x274877979512 *)
adds carry x10 x10 x16;
(* adcs	x11, x11, x17                              #! PC = 0x274877979516 *)
adcs carry x11 x11 x17 carry;
(* adcs	x12, x12, x19                              #! PC = 0x274877979520 *)
adcs carry x12 x12 x19 carry;
(* adcs	x13, x13, x20                              #! PC = 0x274877979524 *)
adcs carry x13 x13 x20 carry;
(* adcs	x14, x14, x21                              #! PC = 0x274877979528 *)
adcs carry x14 x14 x21 carry;
(* adcs	x15, x15, x22                              #! PC = 0x274877979532 *)
adcs carry x15 x15 x22 carry;
(* adc	x3, xzr, xzr                                #! PC = 0x274877979536 *)
adc x3 0@uint64 0@uint64 carry;
(* subs	x16, x10, x4                               #! PC = 0x274877979540 *)
subc carry x16 x10 x4;
(* sbcs	x17, x11, x5                               #! PC = 0x274877979544 *)
sbcs carry x17 x11 x5 carry;
(* sbcs	x19, x12, x6                               #! PC = 0x274877979548 *)
sbcs carry x19 x12 x6 carry;
(* sbcs	x20, x13, x7                               #! PC = 0x274877979552 *)
sbcs carry x20 x13 x7 carry;
(* sbcs	x21, x14, x8                               #! PC = 0x274877979556 *)
sbcs carry x21 x14 x8 carry;
(* sbcs	x22, x15, x9                               #! PC = 0x274877979560 *)
sbcs carry x22 x15 x9 carry;
(* sbcs	xzr, x3, xzr                               #! PC = 0x274877979564 *)
sbcs carry dontcare x3 0@uint64 carry;
(* csel	x10, x10, x16, cc  // cc = lo, ul, last    #! PC = 0x274877979568 *)
cmov x10 carry x16 x10;
(* csel	x11, x11, x17, cc  // cc = lo, ul, last    #! PC = 0x274877979572 *)
cmov x11 carry x17 x11;
(* csel	x12, x12, x19, cc  // cc = lo, ul, last    #! PC = 0x274877979576 *)
cmov x12 carry x19 x12;
(* csel	x13, x13, x20, cc  // cc = lo, ul, last    #! PC = 0x274877979580 *)
cmov x13 carry x20 x13;
(* csel	x14, x14, x21, cc  // cc = lo, ul, last    #! PC = 0x274877979584 *)
cmov x14 carry x21 x14;
(* csel	x15, x15, x22, cc  // cc = lo, ul, last    #! PC = 0x274877979588 *)
cmov x15 carry x22 x15;
(* #ret                                            #! PC = 0x274877979592 *)
#ret                                            #! 0x274877979592 = 0x274877979592;
(* stp	x10, x11, [x0]                              #! EA = L0x400082a0a8; PC = 0x274877979652 *)
mov L0x400082a0a8 x10;
mov L0x400082a0b0 x11;
(* add	x1, x1, #0x30                               #! PC = 0x274877979656 *)
add x1 x1 0x30@uint64;
(* stp	x12, x13, [x0, #16]                         #! EA = L0x400082a0b8; PC = 0x274877979660 *)
mov L0x400082a0b8 x12;
mov L0x400082a0c0 x13;
(* add	x2, x2, #0x30                               #! PC = 0x274877979664 *)
add x2 x2 0x30@uint64;
(* stp	x14, x15, [x0, #32]                         #! EA = L0x400082a0c8; PC = 0x274877979668 *)
mov L0x400082a0c8 x14;
mov L0x400082a0d0 x15;
(* #bl	0x4000011b60 <__add_mod_384>                #! PC = 0x274877979672 *)
#bl	0x4000011b60 <__add_mod_384>                #! 0x274877979672 = 0x274877979672;
(* ldp	x10, x11, [x1]                              #! EA = L0x400082a688; Value = 0x0000004000000000; PC = 0x274877979488 *)
mov x10 L0x400082a688;
mov x11 L0x400082a690;
(* ldp	x16, x17, [x2]                              #! EA = L0x400082a7a8; Value = 0x000000400085d000; PC = 0x274877979492 *)
mov x16 L0x400082a7a8;
mov x17 L0x400082a7b0;
(* ldp	x12, x13, [x1, #16]                         #! EA = L0x400082a698; Value = 0x000000400085ea90; PC = 0x274877979496 *)
mov x12 L0x400082a698;
mov x13 L0x400082a6a0;
(* ldp	x19, x20, [x2, #16]                         #! EA = L0x400082a7b8; Value = 0x0000004000000040; PC = 0x274877979500 *)
mov x19 L0x400082a7b8;
mov x20 L0x400082a7c0;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0x400082a6a8; Value = 0x000000400085e000; PC = 0x274877979504 *)
mov x14 L0x400082a6a8;
mov x15 L0x400082a6b0;
(* ldp	x21, x22, [x2, #32]                         #! EA = L0x400082a7c8; Value = 0x000000400085d000; PC = 0x274877979508 *)
mov x21 L0x400082a7c8;
mov x22 L0x400082a7d0;
(* adds	x10, x10, x16                              #! PC = 0x274877979512 *)
adds carry x10 x10 x16;
(* adcs	x11, x11, x17                              #! PC = 0x274877979516 *)
adcs carry x11 x11 x17 carry;
(* adcs	x12, x12, x19                              #! PC = 0x274877979520 *)
adcs carry x12 x12 x19 carry;
(* adcs	x13, x13, x20                              #! PC = 0x274877979524 *)
adcs carry x13 x13 x20 carry;
(* adcs	x14, x14, x21                              #! PC = 0x274877979528 *)
adcs carry x14 x14 x21 carry;
(* adcs	x15, x15, x22                              #! PC = 0x274877979532 *)
adcs carry x15 x15 x22 carry;
(* adc	x3, xzr, xzr                                #! PC = 0x274877979536 *)
adc x3 0@uint64 0@uint64 carry;
(* subs	x16, x10, x4                               #! PC = 0x274877979540 *)
subc carry x16 x10 x4;
(* sbcs	x17, x11, x5                               #! PC = 0x274877979544 *)
sbcs carry x17 x11 x5 carry;
(* sbcs	x19, x12, x6                               #! PC = 0x274877979548 *)
sbcs carry x19 x12 x6 carry;
(* sbcs	x20, x13, x7                               #! PC = 0x274877979552 *)
sbcs carry x20 x13 x7 carry;
(* sbcs	x21, x14, x8                               #! PC = 0x274877979556 *)
sbcs carry x21 x14 x8 carry;
(* sbcs	x22, x15, x9                               #! PC = 0x274877979560 *)
sbcs carry x22 x15 x9 carry;
(* sbcs	xzr, x3, xzr                               #! PC = 0x274877979564 *)
sbcs carry dontcare x3 0@uint64 carry;
(* csel	x10, x10, x16, cc  // cc = lo, ul, last    #! PC = 0x274877979568 *)
cmov x10 carry x16 x10;
(* csel	x11, x11, x17, cc  // cc = lo, ul, last    #! PC = 0x274877979572 *)
cmov x11 carry x17 x11;
(* csel	x12, x12, x19, cc  // cc = lo, ul, last    #! PC = 0x274877979576 *)
cmov x12 carry x19 x12;
(* csel	x13, x13, x20, cc  // cc = lo, ul, last    #! PC = 0x274877979580 *)
cmov x13 carry x20 x13;
(* csel	x14, x14, x21, cc  // cc = lo, ul, last    #! PC = 0x274877979584 *)
cmov x14 carry x21 x14;
(* csel	x15, x15, x22, cc  // cc = lo, ul, last    #! PC = 0x274877979588 *)
cmov x15 carry x22 x15;
(* #ret                                            #! PC = 0x274877979592 *)
#ret                                            #! 0x274877979592 = 0x274877979592;
(* ldr	x30, [sp, #8]                               #! EA = L0x4000829f88; Value = 0x004d004000005ef4; PC = 0x274877979676 *)
mov x30 L0x4000829f88;
(* stp	x10, x11, [x0, #48]                         #! EA = L0x400082a0d8; PC = 0x274877979680 *)
mov L0x400082a0d8 x10;
mov L0x400082a0e0 x11;
(* stp	x12, x13, [x0, #64]                         #! EA = L0x400082a0e8; PC = 0x274877979684 *)
mov L0x400082a0e8 x12;
mov L0x400082a0f0 x13;
(* stp	x14, x15, [x0, #80]                         #! EA = L0x400082a0f8; PC = 0x274877979688 *)
mov L0x400082a0f8 x14;
mov L0x400082a100 x15;
(* ldp	x19, x20, [x29, #16]                        #! EA = L0x4000829f90; Value = 0x0000004000016928; PC = 0x274877979692 *)
mov x19 L0x4000829f90;
mov x20 L0x4000829f98;
(* ldp	x21, x22, [x29, #32]                        #! EA = L0x4000829fa0; Value = 0x000000400082a5f8; PC = 0x274877979696 *)
mov x21 L0x4000829fa0;
mov x22 L0x4000829fa8;
(* ldr	x29, [sp], #48                              #! EA = L0x4000829f80; Value = 0x0000004000829fb0; PC = 0x274877979700 *)
mov x29 L0x4000829f80;
(* #autiasp                                         #! PC = 0x274877979704 *)
#autiasp                                         #! 0x274877979704 = 0x274877979704;
(* #ret                                            #! PC = 0x274877979708 *)
#ret                                            #! 0x274877979708 = 0x274877979708;
(* mov	x3, x19                                     #! PC = 0x274877931252 *)
mov x3 x19;
(* add	x2, x22, #0xc0                              #! PC = 0x274877931256 *)
add x2 x22 0xc0@uint64;
(* add	x1, x21, #0xc0                              #! PC = 0x274877931260 *)
add x1 x21 0xc0@uint64;
(* add	x0, x20, #0xc0                              #! PC = 0x274877931264 *)
add x0 x20 0xc0@uint64;
(* #bl	0x4000011be0 <add_mod_384x>                 #! PC = 0x274877931268 *)
#bl	0x4000011be0 <add_mod_384x>                 #! 0x274877931268 = 0x274877931268;
(* #paciasp                                         #! PC = 0x274877979616 *)
#paciasp                                         #! 0x274877979616 = 0x274877979616;
(* stp	x29, x30, [sp, #-48]!                       #! EA = L0x4000829f80; PC = 0x274877979620 *)
mov L0x4000829f80 x29;
mov L0x4000829f88 x30;
(* mov	x29, sp                                     #! PC = 0x274877979624 *)
mov x29 sp;
(* stp	x19, x20, [sp, #16]                         #! EA = L0x4000829f90; PC = 0x274877979628 *)
mov L0x4000829f90 x19;
mov L0x4000829f98 x20;
(* stp	x21, x22, [sp, #32]                         #! EA = L0x4000829fa0; PC = 0x274877979632 *)
mov L0x4000829fa0 x21;
mov L0x4000829fa8 x22;
(* ldp	x4, x5, [x3]                                #! EA = L0x4000016928; Value = 0xb9feffffffffaaab; PC = 0x274877979636 *)
mov x4 L0x4000016928;
mov x5 L0x4000016930;
(* ldp	x6, x7, [x3, #16]                           #! EA = L0x4000016938; Value = 0x6730d2a0f6b0f624; PC = 0x274877979640 *)
mov x6 L0x4000016938;
mov x7 L0x4000016940;
(* ldp	x8, x9, [x3, #32]                           #! EA = L0x4000016948; Value = 0x4b1ba7b6434bacd7; PC = 0x274877979644 *)
mov x8 L0x4000016948;
mov x9 L0x4000016950;
(* #bl	0x4000011b60 <__add_mod_384>                #! PC = 0x274877979648 *)
#bl	0x4000011b60 <__add_mod_384>                #! 0x274877979648 = 0x274877979648;
(* ldp	x10, x11, [x1]                              #! EA = L0x400082a6b8; Value = 0x000000400085ea78; PC = 0x274877979488 *)
mov x10 L0x400082a6b8;
mov x11 L0x400082a6c0;
(* ldp	x16, x17, [x2]                              #! EA = L0x400082a7d8; Value = 0x0000000000000000; PC = 0x274877979492 *)
mov x16 L0x400082a7d8;
mov x17 L0x400082a7e0;
(* ldp	x12, x13, [x1, #16]                         #! EA = L0x400082a6c8; Value = 0x0000000000000000; PC = 0x274877979496 *)
mov x12 L0x400082a6c8;
mov x13 L0x400082a6d0;
(* ldp	x19, x20, [x2, #16]                         #! EA = L0x400082a7e8; Value = 0x0000004000841d2c; PC = 0x274877979500 *)
mov x19 L0x400082a7e8;
mov x20 L0x400082a7f0;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0x400082a6d8; Value = 0x0000000000000000; PC = 0x274877979504 *)
mov x14 L0x400082a6d8;
mov x15 L0x400082a6e0;
(* ldp	x21, x22, [x2, #32]                         #! EA = L0x400082a7f8; Value = 0x000000400085d000; PC = 0x274877979508 *)
mov x21 L0x400082a7f8;
mov x22 L0x400082a800;
(* adds	x10, x10, x16                              #! PC = 0x274877979512 *)
adds carry x10 x10 x16;
(* adcs	x11, x11, x17                              #! PC = 0x274877979516 *)
adcs carry x11 x11 x17 carry;
(* adcs	x12, x12, x19                              #! PC = 0x274877979520 *)
adcs carry x12 x12 x19 carry;
(* adcs	x13, x13, x20                              #! PC = 0x274877979524 *)
adcs carry x13 x13 x20 carry;
(* adcs	x14, x14, x21                              #! PC = 0x274877979528 *)
adcs carry x14 x14 x21 carry;
(* adcs	x15, x15, x22                              #! PC = 0x274877979532 *)
adcs carry x15 x15 x22 carry;
(* adc	x3, xzr, xzr                                #! PC = 0x274877979536 *)
adc x3 0@uint64 0@uint64 carry;
(* subs	x16, x10, x4                               #! PC = 0x274877979540 *)
subc carry x16 x10 x4;
(* sbcs	x17, x11, x5                               #! PC = 0x274877979544 *)
sbcs carry x17 x11 x5 carry;
(* sbcs	x19, x12, x6                               #! PC = 0x274877979548 *)
sbcs carry x19 x12 x6 carry;
(* sbcs	x20, x13, x7                               #! PC = 0x274877979552 *)
sbcs carry x20 x13 x7 carry;
(* sbcs	x21, x14, x8                               #! PC = 0x274877979556 *)
sbcs carry x21 x14 x8 carry;
(* sbcs	x22, x15, x9                               #! PC = 0x274877979560 *)
sbcs carry x22 x15 x9 carry;
(* sbcs	xzr, x3, xzr                               #! PC = 0x274877979564 *)
sbcs carry dontcare x3 0@uint64 carry;
(* csel	x10, x10, x16, cc  // cc = lo, ul, last    #! PC = 0x274877979568 *)
cmov x10 carry x16 x10;
(* csel	x11, x11, x17, cc  // cc = lo, ul, last    #! PC = 0x274877979572 *)
cmov x11 carry x17 x11;
(* csel	x12, x12, x19, cc  // cc = lo, ul, last    #! PC = 0x274877979576 *)
cmov x12 carry x19 x12;
(* csel	x13, x13, x20, cc  // cc = lo, ul, last    #! PC = 0x274877979580 *)
cmov x13 carry x20 x13;
(* csel	x14, x14, x21, cc  // cc = lo, ul, last    #! PC = 0x274877979584 *)
cmov x14 carry x21 x14;
(* csel	x15, x15, x22, cc  // cc = lo, ul, last    #! PC = 0x274877979588 *)
cmov x15 carry x22 x15;
(* #ret                                            #! PC = 0x274877979592 *)
#ret                                            #! 0x274877979592 = 0x274877979592;
(* stp	x10, x11, [x0]                              #! EA = L0x400082a108; PC = 0x274877979652 *)
mov L0x400082a108 x10;
mov L0x400082a110 x11;
(* add	x1, x1, #0x30                               #! PC = 0x274877979656 *)
add x1 x1 0x30@uint64;
(* stp	x12, x13, [x0, #16]                         #! EA = L0x400082a118; PC = 0x274877979660 *)
mov L0x400082a118 x12;
mov L0x400082a120 x13;
(* add	x2, x2, #0x30                               #! PC = 0x274877979664 *)
add x2 x2 0x30@uint64;
(* stp	x14, x15, [x0, #32]                         #! EA = L0x400082a128; PC = 0x274877979668 *)
mov L0x400082a128 x14;
mov L0x400082a130 x15;
(* #bl	0x4000011b60 <__add_mod_384>                #! PC = 0x274877979672 *)
#bl	0x4000011b60 <__add_mod_384>                #! 0x274877979672 = 0x274877979672;
(* ldp	x10, x11, [x1]                              #! EA = L0x400082a6e8; Value = 0x000000400082ae28; PC = 0x274877979488 *)
mov x10 L0x400082a6e8;
mov x11 L0x400082a6f0;
(* ldp	x16, x17, [x2]                              #! EA = L0x400082a808; Value = 0x0000000000000000; PC = 0x274877979492 *)
mov x16 L0x400082a808;
mov x17 L0x400082a810;
(* ldp	x12, x13, [x1, #16]                         #! EA = L0x400082a6f8; Value = 0x0000000000000000; PC = 0x274877979496 *)
mov x12 L0x400082a6f8;
mov x13 L0x400082a700;
(* ldp	x19, x20, [x2, #16]                         #! EA = L0x400082a818; Value = 0x000000400082da1c; PC = 0x274877979500 *)
mov x19 L0x400082a818;
mov x20 L0x400082a820;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0x400082a708; Value = 0x0000000000000000; PC = 0x274877979504 *)
mov x14 L0x400082a708;
mov x15 L0x400082a710;
(* ldp	x21, x22, [x2, #32]                         #! EA = L0x400082a828; Value = 0x000000400082ad60; PC = 0x274877979508 *)
mov x21 L0x400082a828;
mov x22 L0x400082a830;
(* adds	x10, x10, x16                              #! PC = 0x274877979512 *)
adds carry x10 x10 x16;
(* adcs	x11, x11, x17                              #! PC = 0x274877979516 *)
adcs carry x11 x11 x17 carry;
(* adcs	x12, x12, x19                              #! PC = 0x274877979520 *)
adcs carry x12 x12 x19 carry;
(* adcs	x13, x13, x20                              #! PC = 0x274877979524 *)
adcs carry x13 x13 x20 carry;
(* adcs	x14, x14, x21                              #! PC = 0x274877979528 *)
adcs carry x14 x14 x21 carry;
(* adcs	x15, x15, x22                              #! PC = 0x274877979532 *)
adcs carry x15 x15 x22 carry;
(* adc	x3, xzr, xzr                                #! PC = 0x274877979536 *)
adc x3 0@uint64 0@uint64 carry;
(* subs	x16, x10, x4                               #! PC = 0x274877979540 *)
subc carry x16 x10 x4;
(* sbcs	x17, x11, x5                               #! PC = 0x274877979544 *)
sbcs carry x17 x11 x5 carry;
(* sbcs	x19, x12, x6                               #! PC = 0x274877979548 *)
sbcs carry x19 x12 x6 carry;
(* sbcs	x20, x13, x7                               #! PC = 0x274877979552 *)
sbcs carry x20 x13 x7 carry;
(* sbcs	x21, x14, x8                               #! PC = 0x274877979556 *)
sbcs carry x21 x14 x8 carry;
(* sbcs	x22, x15, x9                               #! PC = 0x274877979560 *)
sbcs carry x22 x15 x9 carry;
(* sbcs	xzr, x3, xzr                               #! PC = 0x274877979564 *)
sbcs carry dontcare x3 0@uint64 carry;
(* csel	x10, x10, x16, cc  // cc = lo, ul, last    #! PC = 0x274877979568 *)
cmov x10 carry x16 x10;
(* csel	x11, x11, x17, cc  // cc = lo, ul, last    #! PC = 0x274877979572 *)
cmov x11 carry x17 x11;
(* csel	x12, x12, x19, cc  // cc = lo, ul, last    #! PC = 0x274877979576 *)
cmov x12 carry x19 x12;
(* csel	x13, x13, x20, cc  // cc = lo, ul, last    #! PC = 0x274877979580 *)
cmov x13 carry x20 x13;
(* csel	x14, x14, x21, cc  // cc = lo, ul, last    #! PC = 0x274877979584 *)
cmov x14 carry x21 x14;
(* csel	x15, x15, x22, cc  // cc = lo, ul, last    #! PC = 0x274877979588 *)
cmov x15 carry x22 x15;
(* #ret                                            #! PC = 0x274877979592 *)
#ret                                            #! 0x274877979592 = 0x274877979592;
(* ldr	x30, [sp, #8]                               #! EA = L0x4000829f88; Value = 0x003a004000005f08; PC = 0x274877979676 *)
mov x30 L0x4000829f88;
(* stp	x10, x11, [x0, #48]                         #! EA = L0x400082a138; PC = 0x274877979680 *)
mov L0x400082a138 x10;
mov L0x400082a140 x11;
(* stp	x12, x13, [x0, #64]                         #! EA = L0x400082a148; PC = 0x274877979684 *)
mov L0x400082a148 x12;
mov L0x400082a150 x13;
(* stp	x14, x15, [x0, #80]                         #! EA = L0x400082a158; PC = 0x274877979688 *)
mov L0x400082a158 x14;
mov L0x400082a160 x15;
(* ldp	x19, x20, [x29, #16]                        #! EA = L0x4000829f90; Value = 0x0000004000016928; PC = 0x274877979692 *)
mov x19 L0x4000829f90;
mov x20 L0x4000829f98;
(* ldp	x21, x22, [x29, #32]                        #! EA = L0x4000829fa0; Value = 0x000000400082a5f8; PC = 0x274877979696 *)
mov x21 L0x4000829fa0;
mov x22 L0x4000829fa8;
(* ldr	x29, [sp], #48                              #! EA = L0x4000829f80; Value = 0x0000004000829fb0; PC = 0x274877979700 *)
mov x29 L0x4000829f80;
(* #autiasp                                         #! PC = 0x274877979704 *)
#autiasp                                         #! 0x274877979704 = 0x274877979704;
(* #ret                                            #! PC = 0x274877979708 *)
#ret                                            #! 0x274877979708 = 0x274877979708;
(* ldp	x19, x20, [sp, #16]                         #! EA = L0x4000829fc0; Value = 0x0000004000014ef8; PC = 0x274877931272 *)
mov x19 L0x4000829fc0;
mov x20 L0x4000829fc8;
(* ldp	x21, x22, [sp, #32]                         #! EA = L0x4000829fd0; Value = 0x000000400082a5f8; PC = 0x274877931276 *)
mov x21 L0x4000829fd0;
mov x22 L0x4000829fd8;
(* ldp	x29, x30, [sp], #48                         #! EA = L0x4000829fb0; Value = 0x0000004000829fe0; PC = 0x274877931280 *)
mov x29 L0x4000829fb0;
mov x30 L0x4000829fb8;
(* #ret                                            #! PC = 0x274877931284 *)
#ret                                            #! 0x274877931284 = 0x274877931284;

mov ret00 L0x400082a048; mov ret01 L0x400082a050; mov ret02 L0x400082a058; 
mov ret03 L0x400082a060; mov ret04 L0x400082a068; mov ret05 L0x400082a070; 

mov ret10 L0x400082a078; mov ret11 L0x400082a080; mov ret12 L0x400082a088; 
mov ret13 L0x400082a090; mov ret14 L0x400082a098; mov ret15 L0x400082a0a0; 

mov ret20 L0x400082a0a8; mov ret21 L0x400082a0b0; mov ret22 L0x400082a0b8; 
mov ret23 L0x400082a0c0; mov ret24 L0x400082a0c8; mov ret25 L0x400082a0d0; 

mov ret30 L0x400082a0d8; mov ret31 L0x400082a0e0; mov ret32 L0x400082a0e8; 
mov ret33 L0x400082a0f0; mov ret34 L0x400082a0f8; mov ret35 L0x400082a100; 

mov ret40 L0x400082a108; mov ret41 L0x400082a110; mov ret42 L0x400082a118;
mov ret43 L0x400082a120; mov ret44 L0x400082a128; mov ret45 L0x400082a130;

mov ret50 L0x400082a138; mov ret51 L0x400082a140; mov ret52 L0x400082a148;
mov ret53 L0x400082a150; mov ret54 L0x400082a158; mov ret55 L0x400082a160;

assert true
    && and [
         eqmod (limbs 64 [ret00, ret01, ret02, ret03, ret04, ret05])
               ((limbs 64 [a00, a01, a02, a03, a04, a05]) +
                (limbs 64 [b00, b01, b02, b03, b04, b05]))
               (limbs 64 [m0, m1, m2, m3, m4, m5]),
         eqmod (limbs 64 [ret10, ret11, ret12, ret13, ret14, ret15])
               ((limbs 64 [a10, a11, a12, a13, a14, a15]) +
                (limbs 64 [b10, b11, b12, b13, b14, b15]))
               (limbs 64 [m0, m1, m2, m3, m4, m5]),
         eqmod (limbs 64 [ret20, ret21, ret22, ret23, ret24, ret25])
               ((limbs 64 [a20, a21, a22, a23, a24, a25]) +
                (limbs 64 [b20, b21, b22, b23, b24, b25]))
               (limbs 64 [m0, m1, m2, m3, m4, m5]),
         eqmod (limbs 64 [ret30, ret31, ret32, ret33, ret34, ret35])
               ((limbs 64 [a30, a31, a32, a33, a34, a35]) +
                (limbs 64 [b30, b31, b32, b33, b34, b35]))
               (limbs 64 [m0, m1, m2, m3, m4, m5]),
         eqmod (limbs 64 [ret40, ret41, ret42, ret43, ret44, ret45])
               ((limbs 64 [a40, a41, a42, a43, a44, a45]) +
                (limbs 64 [b40, b41, b42, b43, b44, b45]))
               (limbs 64 [m0, m1, m2, m3, m4, m5]),
         eqmod (limbs 64 [ret50, ret51, ret52, ret53, ret54, ret55])
               ((limbs 64 [a50, a51, a52, a53, a54, a55]) +
                (limbs 64 [b50, b51, b52, b53, b54, b55]))
               (limbs 64 [m0, m1, m2, m3, m4, m5])
       ];
assume and [
         eqmod (limbs 64 [ret00, ret01, ret02, ret03, ret04, ret05])
               ((limbs 64 [a00, a01, a02, a03, a04, a05]) +
                (limbs 64 [b00, b01, b02, b03, b04, b05]))
               (limbs 64 [m0, m1, m2, m3, m4, m5]),
         eqmod (limbs 64 [ret10, ret11, ret12, ret13, ret14, ret15])
               ((limbs 64 [a10, a11, a12, a13, a14, a15]) +
                (limbs 64 [b10, b11, b12, b13, b14, b15]))
               (limbs 64 [m0, m1, m2, m3, m4, m5]),
         eqmod (limbs 64 [ret20, ret21, ret22, ret23, ret24, ret25])
               ((limbs 64 [a20, a21, a22, a23, a24, a25]) +
                (limbs 64 [b20, b21, b22, b23, b24, b25]))
               (limbs 64 [m0, m1, m2, m3, m4, m5]),
         eqmod (limbs 64 [ret30, ret31, ret32, ret33, ret34, ret35])
               ((limbs 64 [a30, a31, a32, a33, a34, a35]) +
                (limbs 64 [b30, b31, b32, b33, b34, b35]))
               (limbs 64 [m0, m1, m2, m3, m4, m5]),
         eqmod (limbs 64 [ret40, ret41, ret42, ret43, ret44, ret45])
               ((limbs 64 [a40, a41, a42, a43, a44, a45]) +
                (limbs 64 [b40, b41, b42, b43, b44, b45]))
               (limbs 64 [m0, m1, m2, m3, m4, m5]),
         eqmod (limbs 64 [ret50, ret51, ret52, ret53, ret54, ret55])
               ((limbs 64 [a50, a51, a52, a53, a54, a55]) +
                (limbs 64 [b50, b51, b52, b53, b54, b55]))
               (limbs 64 [m0, m1, m2, m3, m4, m5])
       ]
    && true;

{
  and [
    eqmod (      (    limbs 64 [ret00, ret01, ret02, ret03, ret04, ret05] +
                  U * limbs 64 [ret10, ret11, ret12, ret13, ret14, ret15])    +
             V * (    limbs 64 [ret20, ret21, ret22, ret23, ret24, ret25] +
                  U * limbs 64 [ret30, ret31, ret32, ret33, ret34, ret35])    +
           V*V * (    limbs 64 [ret40, ret41, ret42, ret43, ret44, ret45] +
                  U * limbs 64 [ret50, ret51, ret52, ret53, ret54, ret55]))
                  
          ((      (    limbs 64 [a00, a01, a02, a03, a04, a05] +
                   U * limbs 64 [a10, a11, a12, a13, a14, a15])    +
              V * (    limbs 64 [a20, a21, a22, a23, a24, a25] +
                   U * limbs 64 [a30, a31, a32, a33, a34, a35])    +
            V*V * (    limbs 64 [a40, a41, a42, a43, a44, a45] +
                   U * limbs 64 [a50, a51, a52, a53, a54, a55]))       +
           (      (    limbs 64 [b00, b01, b02, b03, b04, b05] +
                   U * limbs 64 [b10, b11, b12, b13, b14, b15])    +
              V * (    limbs 64 [b20, b21, b22, b23, b24, b25] +
                   U * limbs 64 [b30, b31, b32, b33, b34, b35])    +
            V*V * (    limbs 64 [b40, b41, b42, b43, b44, b45] +
                   U * limbs 64 [b50, b51, b52, b53, b54, b55])))
          [limbs 64 [m0, m1, m2, m3, m4, m5],
           U**2 + 1, V**3 - U - 1],
    x19 = x19o, x20 = x20o, x21 = x21o, x22 = x22o,
    x29 = x29o, x30 = x30o
  ]
&&
  true
}
