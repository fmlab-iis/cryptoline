(* quine: -v -isafety -jobs 20 -slicing -no_carry_constraint fp2sub610.cl
Parsing Cryptoline file:                [OK]            0.005311 seconds
Checking well-formedness:               [OK]            0.001496 seconds
Transforming to SSA form:               [OK]            0.000535 seconds
Normalizing specification:              [OK]            0.000269 seconds
Rewriting assignments:                  [OK]            0.000340 seconds
Verifying program safety:               [OK]            0.000117 seconds
Verifying range assertions:             [OK]            77.748912 seconds
Verifying range specification:          [OK]            0.638834 seconds
Rewriting value-preserved casting:      [OK]            0.000086 seconds
Verifying algebraic assertions:         [OK]            0.002507 seconds
Verifying algebraic specification:      [OK]            0.056643 seconds
Verification result:                    [OK]            78.455793 seconds
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
  true
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

mov L0xffffffffe2f8 ar0; mov L0xffffffffe300 ar1; mov L0xffffffffe308 ar2;
mov L0xffffffffe310 ar3; mov L0xffffffffe318 ar4; mov L0xffffffffe320 ar5;
mov L0xffffffffe328 ar6; mov L0xffffffffe330 ar7; mov L0xffffffffe338 ar8;
mov L0xffffffffe340 ar9; 
mov L0xffffffffe348 ai0; mov L0xffffffffe350 ai1; mov L0xffffffffe358 ai2;
mov L0xffffffffe360 ai3; mov L0xffffffffe368 ai4; mov L0xffffffffe370 ai5;
mov L0xffffffffe378 ai6; mov L0xffffffffe380 ai7; mov L0xffffffffe388 ai8;
mov L0xffffffffe390 ai9; 

mov L0xffffffffe398 br0; mov L0xffffffffe3a0 br1; mov L0xffffffffe3a8 br2;
mov L0xffffffffe3b0 br3; mov L0xffffffffe3b8 br4; mov L0xffffffffe3c0 br5;
mov L0xffffffffe3c8 br6; mov L0xffffffffe3d0 br7; mov L0xffffffffe3d8 br8;
mov L0xffffffffe3e0 br9;
mov L0xffffffffe3e8 bi0; mov L0xffffffffe3f0 bi1; mov L0xffffffffe3f8 bi2;
mov L0xffffffffe400 bi3; mov L0xffffffffe408 bi4; mov L0xffffffffe410 bi5;
mov L0xffffffffe418 bi6; mov L0xffffffffe420 bi7; mov L0xffffffffe428 bi8;
mov L0xffffffffe430 bi9;

mov L0xaaaaaaab6750 0xFFFFFFFFFFFFFFFE@uint64;
mov L0xaaaaaaab6758 0xFFFFFFFFFFFFFFFF@uint64;
mov L0xaaaaaaab6760 0xDC03FFFFFFFFFFFF@uint64;
mov L0xaaaaaaab6768 0x62F09BD154B5605C@uint64;
mov L0xaaaaaaab6770 0x35CF7E8A091FF357@uint64;
mov L0xaaaaaaab6778 0x64AB65F421884A55@uint64;
mov L0xaaaaaaab6780 0x03202184A3CFB119@uint64;
mov L0xaaaaaaab6788 0x00000004F7ED4ED1@uint64;

nondet  x0@uint64; nondet  x1@uint64; nondet  x2@uint64; 
nondet x19@uint64; nondet x20@uint64; nondet x21@uint64; 
nondet x29@uint64; nondet x30@uint64;
nondet sp@uint64; 

(* #! -> SP = 0xffffffffe270 *)
#! 0xffffffffe270 = 0xffffffffe270;
(* stp	x29, x30, [sp, #-48]!                       #! EA = L0xffffffffe240; PC = 0xaaaaaaaae2b0 *)
mov L0xffffffffe240 x29;
mov L0xffffffffe248 x30;
(* mov	x29, sp                                     #! PC = 0xaaaaaaaae2b4 *)
mov x29 sp;
(* stp	x19, x20, [sp, #16]                         #! EA = L0xffffffffe250; PC = 0xaaaaaaaae2b8 *)
mov L0xffffffffe250 x19;
mov L0xffffffffe258 x20;
(* mov	x19, x0                                     #! PC = 0xaaaaaaaae2bc *)
mov x19 x0;
(* mov	x20, x1                                     #! PC = 0xaaaaaaaae2c0 *)
mov x20 x1;
(* str	x21, [sp, #32]                              #! EA = L0xffffffffe260; PC = 0xaaaaaaaae2c4 *)
mov L0xffffffffe260 x21;
(* mov	x21, x2                                     #! PC = 0xaaaaaaaae2c8 *)
mov x21 x2;
(* #bl	0xaaaaaaab6294 <fpsub610>                   #! PC = 0xaaaaaaaae2cc *)
#bl	0xaaaaaaab6294 <fpsub610>                   #! 0xaaaaaaaae2cc = 0xaaaaaaaae2cc;
(* #! -> SP = 0xffffffffe240 *)
#! 0xffffffffe240 = 0xffffffffe240;
(* #b	0xaaaaaaab68fc <fpsub610_asm>                #! PC = 0xaaaaaaab6294 *)
#b	0xaaaaaaab68fc <fpsub610_asm>                #! 0xaaaaaaab6294 = 0xaaaaaaab6294;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe2f8; Value = 0x151a1b1583183123; PC = 0xaaaaaaab68fc *)
mov x3 L0xffffffffe2f8;
mov x4 L0xffffffffe300;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffe308; Value = 0xc54ddd17ae591eac; PC = 0xaaaaaaab6900 *)
mov x5 L0xffffffffe308;
mov x6 L0xffffffffe310;
(* ldp	x13, x14, [x1]                              #! EA = L0xffffffffe398; Value = 0xa3ecf3ab37f0d5e2; PC = 0xaaaaaaab6904 *)
mov x13 L0xffffffffe398;
mov x14 L0xffffffffe3a0;
(* ldp	x15, x16, [x1, #16]                         #! EA = L0xffffffffe3a8; Value = 0x9a7397c7423fd39c; PC = 0xaaaaaaab6908 *)
mov x15 L0xffffffffe3a8;
mov x16 L0xffffffffe3b0;
(* subs	x3, x3, x13                                #! PC = 0xaaaaaaab690c *)
subc carry x3 x3 x13;
(* sbcs	x4, x4, x14                                #! PC = 0xaaaaaaab6910 *)
sbcs carry x4 x4 x14 carry;
(* sbcs	x5, x5, x15                                #! PC = 0xaaaaaaab6914 *)
sbcs carry x5 x5 x15 carry;
(* sbcs	x6, x6, x16                                #! PC = 0xaaaaaaab6918 *)
sbcs carry x6 x6 x16 carry;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe318; Value = 0x24123d28fd220de8; PC = 0xaaaaaaab691c *)
mov x7 L0xffffffffe318;
mov x8 L0xffffffffe320;
(* ldp	x9, x10, [x0, #48]                          #! EA = L0xffffffffe328; Value = 0x92bd7782f829a5e1; PC = 0xaaaaaaab6920 *)
mov x9 L0xffffffffe328;
mov x10 L0xffffffffe330;
(* ldp	x13, x14, [x1, #32]                         #! EA = L0xffffffffe3b8; Value = 0xb28bc9b8eaddc53f; PC = 0xaaaaaaab6924 *)
mov x13 L0xffffffffe3b8;
mov x14 L0xffffffffe3c0;
(* ldp	x15, x16, [x1, #48]                         #! EA = L0xffffffffe3c8; Value = 0x043013b878cf6c09; PC = 0xaaaaaaab6928 *)
mov x15 L0xffffffffe3c8;
mov x16 L0xffffffffe3d0;
(* sbcs	x7, x7, x13                                #! PC = 0xaaaaaaab692c *)
sbcs carry x7 x7 x13 carry;
(* sbcs	x8, x8, x14                                #! PC = 0xaaaaaaab6930 *)
sbcs carry x8 x8 x14 carry;
(* sbcs	x9, x9, x15                                #! PC = 0xaaaaaaab6934 *)
sbcs carry x9 x9 x15 carry;
(* sbcs	x10, x10, x16                              #! PC = 0xaaaaaaab6938 *)
sbcs carry x10 x10 x16 carry;
(* ldp	x11, x12, [x0, #64]                         #! EA = L0xffffffffe338; Value = 0x9bdf5991bb465493; PC = 0xaaaaaaab693c *)
mov x11 L0xffffffffe338;
mov x12 L0xffffffffe340;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0xffffffffe3d8; Value = 0x4cd23f3defdb5dfd; PC = 0xaaaaaaab6940 *)
mov x13 L0xffffffffe3d8;
mov x14 L0xffffffffe3e0;
(* sbcs	x11, x11, x13                              #! PC = 0xaaaaaaab6944 *)
sbcs carry x11 x11 x13 carry;
(* sbcs	x12, x12, x14                              #! PC = 0xaaaaaaab6948 *)
sbcs carry x12 x12 x14 carry;
(* ngc	x17, xzr                                    #! PC = 0xaaaaaaab694c *)
sbcs dontcare x17 0@uint64 0@uint64 carry;
(* ldr	x13, 0xaaaaaaab6750 <p610x2>                #! PC = 0xaaaaaaab6950 *)
mov x13 L0xaaaaaaab6750;
(* ldr	x14, 0xaaaaaaab6758 <p610x2+8>              #! PC = 0xaaaaaaab6954 *)
mov x14 L0xaaaaaaab6758;
(* ldr	x15, 0xaaaaaaab6760 <p610x2+16>             #! PC = 0xaaaaaaab6958 *)
mov x15 L0xaaaaaaab6760;
(* and	x13, x13, x17                               #! PC = 0xaaaaaaab695c *)
and x13@uint64 x13 x17;
(* and	x14, x14, x17                               #! PC = 0xaaaaaaab6960 *)
and x14@uint64 x14 x17;
(* and	x15, x15, x17                               #! PC = 0xaaaaaaab6964 *)
and x15@uint64 x15 x17;
(* adds	x3, x3, x13                                #! PC = 0xaaaaaaab6968 *)
adds carry x3 x3 x13;
(* adcs	x4, x4, x14                                #! PC = 0xaaaaaaab696c *)
adcs carry x4 x4 x14 carry;
(* adcs	x5, x5, x14                                #! PC = 0xaaaaaaab6970 *)
adcs carry x5 x5 x14 carry;
(* adcs	x6, x6, x14                                #! PC = 0xaaaaaaab6974 *)
adcs carry x6 x6 x14 carry;
(* adcs	x7, x7, x15                                #! PC = 0xaaaaaaab6978 *)
adcs carry x7 x7 x15 carry;
(* ldr	x13, 0xaaaaaaab6768 <p610x2+24>             #! PC = 0xaaaaaaab697c *)
mov x13 L0xaaaaaaab6768;
(* ldr	x14, 0xaaaaaaab6770 <p610x2+32>             #! PC = 0xaaaaaaab6980 *)
mov x14 L0xaaaaaaab6770;
(* ldr	x15, 0xaaaaaaab6778 <p610x2+40>             #! PC = 0xaaaaaaab6984 *)
mov x15 L0xaaaaaaab6778;
(* and	x13, x13, x17                               #! PC = 0xaaaaaaab6988 *)
and x13@uint64 x13 x17;
(* and	x14, x14, x17                               #! PC = 0xaaaaaaab698c *)
and x14@uint64 x14 x17;
(* and	x15, x15, x17                               #! PC = 0xaaaaaaab6990 *)
and x15@uint64 x15 x17;
(* adcs	x8, x8, x13                                #! PC = 0xaaaaaaab6994 *)
adcs carry x8 x8 x13 carry;
(* adcs	x9, x9, x14                                #! PC = 0xaaaaaaab6998 *)
adcs carry x9 x9 x14 carry;
(* adcs	x10, x10, x15                              #! PC = 0xaaaaaaab699c *)
adcs carry x10 x10 x15 carry;
(* ldr	x13, 0xaaaaaaab6780 <p610x2+48>             #! PC = 0xaaaaaaab69a0 *)
mov x13 L0xaaaaaaab6780;
(* ldr	x14, 0xaaaaaaab6788 <p610x2+56>             #! PC = 0xaaaaaaab69a4 *)
mov x14 L0xaaaaaaab6788;
(* and	x13, x13, x17                               #! PC = 0xaaaaaaab69a8 *)
and x13@uint64 x13 x17;
(* and	x14, x14, x17                               #! PC = 0xaaaaaaab69ac *)
and x14@uint64 x14 x17;
(* adcs	x11, x11, x13                              #! PC = 0xaaaaaaab69b0 *)
adcs carry x11 x11 x13 carry;
(* adc	x12, x12, x14                               #! PC = 0xaaaaaaab69b4 *)
adcs dontcare x12 x12 x14 carry;
(* stp	x3, x4, [x2]                                #! EA = L0xffffffffe4d8; PC = 0xaaaaaaab69b8 *)
mov L0xffffffffe4d8 x3;
mov L0xffffffffe4e0 x4;
(* stp	x5, x6, [x2, #16]                           #! EA = L0xffffffffe4e8; PC = 0xaaaaaaab69bc *)
mov L0xffffffffe4e8 x5;
mov L0xffffffffe4f0 x6;
(* stp	x7, x8, [x2, #32]                           #! EA = L0xffffffffe4f8; PC = 0xaaaaaaab69c0 *)
mov L0xffffffffe4f8 x7;
mov L0xffffffffe500 x8;
(* stp	x9, x10, [x2, #48]                          #! EA = L0xffffffffe508; PC = 0xaaaaaaab69c4 *)
mov L0xffffffffe508 x9;
mov L0xffffffffe510 x10;
(* stp	x11, x12, [x2, #64]                         #! EA = L0xffffffffe518; PC = 0xaaaaaaab69c8 *)
mov L0xffffffffe518 x11;
mov L0xffffffffe520 x12;
(* #! <- SP = 0xffffffffe240 *)
#! 0xffffffffe240 = 0xffffffffe240;
(* #ret                                            #! PC = 0xaaaaaaab69cc *)
#ret                                            #! 0xaaaaaaab69cc = 0xaaaaaaab69cc;
(* add	x2, x21, #0x50                              #! PC = 0xaaaaaaaae2d0 *)
adds dontcare x2 x21 0x50@uint64;
(* add	x1, x20, #0x50                              #! PC = 0xaaaaaaaae2d4 *)
adds dontcare x1 x20 0x50@uint64;
(* add	x0, x19, #0x50                              #! PC = 0xaaaaaaaae2d8 *)
adds dontcare x0 x19 0x50@uint64;
(* ldp	x19, x20, [sp, #16]                         #! EA = L0xffffffffe250; Value = 0x0000ffffffffe4d8; PC = 0xaaaaaaaae2dc *)
mov x19 L0xffffffffe250;
mov x20 L0xffffffffe258;
(* ldr	x21, [sp, #32]                              #! EA = L0xffffffffe260; Value = 0x0000ffffffffe398; PC = 0xaaaaaaaae2e0 *)
mov x21 L0xffffffffe260;
(* ldp	x29, x30, [sp], #48                         #! EA = L0xffffffffe240; Value = 0x0000ffffffffe270; PC = 0xaaaaaaaae2e4 *)
mov x29 L0xffffffffe240;
mov x30 L0xffffffffe248;
(* #b	0xaaaaaaab6294 <fpsub610>                    #! PC = 0xaaaaaaaae2e8 *)
#b	0xaaaaaaab6294 <fpsub610>                    #! 0xaaaaaaaae2e8 = 0xaaaaaaaae2e8;
(* #b	0xaaaaaaab68fc <fpsub610_asm>                #! PC = 0xaaaaaaab6294 *)
#b	0xaaaaaaab68fc <fpsub610_asm>                #! 0xaaaaaaab6294 = 0xaaaaaaab6294;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe348; Value = 0x0ad89cf445de7dc3; PC = 0xaaaaaaab68fc *)
mov x3 L0xffffffffe348;
mov x4 L0xffffffffe350;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffe358; Value = 0x99501c90b53d3723; PC = 0xaaaaaaab6900 *)
mov x5 L0xffffffffe358;
mov x6 L0xffffffffe360;
(* ldp	x13, x14, [x1]                              #! EA = L0xffffffffe3e8; Value = 0x752c51868d3ab490; PC = 0xaaaaaaab6904 *)
mov x13 L0xffffffffe3e8;
mov x14 L0xffffffffe3f0;
(* ldp	x15, x16, [x1, #16]                         #! EA = L0xffffffffe3f8; Value = 0xc0880a07b9a8b7b9; PC = 0xaaaaaaab6908 *)
mov x15 L0xffffffffe3f8;
mov x16 L0xffffffffe400;
(* subs	x3, x3, x13                                #! PC = 0xaaaaaaab690c *)
subc carry x3 x3 x13;
(* sbcs	x4, x4, x14                                #! PC = 0xaaaaaaab6910 *)
sbcs carry x4 x4 x14 carry;
(* sbcs	x5, x5, x15                                #! PC = 0xaaaaaaab6914 *)
sbcs carry x5 x5 x15 carry;
(* sbcs	x6, x6, x16                                #! PC = 0xaaaaaaab6918 *)
sbcs carry x6 x6 x16 carry;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe368; Value = 0x0a4121c436492842; PC = 0xaaaaaaab691c *)
mov x7 L0xffffffffe368;
mov x8 L0xffffffffe370;
(* ldp	x9, x10, [x0, #48]                          #! EA = L0xffffffffe378; Value = 0xb503d55669853ad9; PC = 0xaaaaaaab6920 *)
mov x9 L0xffffffffe378;
mov x10 L0xffffffffe380;
(* ldp	x13, x14, [x1, #32]                         #! EA = L0xffffffffe408; Value = 0x00fdff7e87d32d01; PC = 0xaaaaaaab6924 *)
mov x13 L0xffffffffe408;
mov x14 L0xffffffffe410;
(* ldp	x15, x16, [x1, #48]                         #! EA = L0xffffffffe418; Value = 0x3e8fa40fcf1c05c7; PC = 0xaaaaaaab6928 *)
mov x15 L0xffffffffe418;
mov x16 L0xffffffffe420;
(* sbcs	x7, x7, x13                                #! PC = 0xaaaaaaab692c *)
sbcs carry x7 x7 x13 carry;
(* sbcs	x8, x8, x14                                #! PC = 0xaaaaaaab6930 *)
sbcs carry x8 x8 x14 carry;
(* sbcs	x9, x9, x15                                #! PC = 0xaaaaaaab6934 *)
sbcs carry x9 x9 x15 carry;
(* sbcs	x10, x10, x16                              #! PC = 0xaaaaaaab6938 *)
sbcs carry x10 x10 x16 carry;
(* ldp	x11, x12, [x0, #64]                         #! EA = L0xffffffffe388; Value = 0x3058f4a64eb3858a; PC = 0xaaaaaaab693c *)
mov x11 L0xffffffffe388;
mov x12 L0xffffffffe390;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0xffffffffe428; Value = 0x1a145b00145e0196; PC = 0xaaaaaaab6940 *)
mov x13 L0xffffffffe428;
mov x14 L0xffffffffe430;
(* sbcs	x11, x11, x13                              #! PC = 0xaaaaaaab6944 *)
sbcs carry x11 x11 x13 carry;
(* sbcs	x12, x12, x14                              #! PC = 0xaaaaaaab6948 *)
sbcs carry x12 x12 x14 carry;
(* ngc	x17, xzr                                    #! PC = 0xaaaaaaab694c *)
sbcs dontcare x17 0@uint64 0@uint64 carry;
(* ldr	x13, 0xaaaaaaab6750 <p610x2>                #! PC = 0xaaaaaaab6950 *)
mov x13 L0xaaaaaaab6750;
(* ldr	x14, 0xaaaaaaab6758 <p610x2+8>              #! PC = 0xaaaaaaab6954 *)
mov x14 L0xaaaaaaab6758;
(* ldr	x15, 0xaaaaaaab6760 <p610x2+16>             #! PC = 0xaaaaaaab6958 *)
mov x15 L0xaaaaaaab6760;
(* and	x13, x13, x17                               #! PC = 0xaaaaaaab695c *)
and x13@uint64 x13 x17;
(* and	x14, x14, x17                               #! PC = 0xaaaaaaab6960 *)
and x14@uint64 x14 x17;
(* and	x15, x15, x17                               #! PC = 0xaaaaaaab6964 *)
and x15@uint64 x15 x17;
(* adds	x3, x3, x13                                #! PC = 0xaaaaaaab6968 *)
adds carry x3 x3 x13;
(* adcs	x4, x4, x14                                #! PC = 0xaaaaaaab696c *)
adcs carry x4 x4 x14 carry;
(* adcs	x5, x5, x14                                #! PC = 0xaaaaaaab6970 *)
adcs carry x5 x5 x14 carry;
(* adcs	x6, x6, x14                                #! PC = 0xaaaaaaab6974 *)
adcs carry x6 x6 x14 carry;
(* adcs	x7, x7, x15                                #! PC = 0xaaaaaaab6978 *)
adcs carry x7 x7 x15 carry;
(* ldr	x13, 0xaaaaaaab6768 <p610x2+24>             #! PC = 0xaaaaaaab697c *)
mov x13 L0xaaaaaaab6768;
(* ldr	x14, 0xaaaaaaab6770 <p610x2+32>             #! PC = 0xaaaaaaab6980 *)
mov x14 L0xaaaaaaab6770;
(* ldr	x15, 0xaaaaaaab6778 <p610x2+40>             #! PC = 0xaaaaaaab6984 *)
mov x15 L0xaaaaaaab6778;
(* and	x13, x13, x17                               #! PC = 0xaaaaaaab6988 *)
and x13@uint64 x13 x17;
(* and	x14, x14, x17                               #! PC = 0xaaaaaaab698c *)
and x14@uint64 x14 x17;
(* and	x15, x15, x17                               #! PC = 0xaaaaaaab6990 *)
and x15@uint64 x15 x17;
(* adcs	x8, x8, x13                                #! PC = 0xaaaaaaab6994 *)
adcs carry x8 x8 x13 carry;
(* adcs	x9, x9, x14                                #! PC = 0xaaaaaaab6998 *)
adcs carry x9 x9 x14 carry;
(* adcs	x10, x10, x15                              #! PC = 0xaaaaaaab699c *)
adcs carry x10 x10 x15 carry;
(* ldr	x13, 0xaaaaaaab6780 <p610x2+48>             #! PC = 0xaaaaaaab69a0 *)
mov x13 L0xaaaaaaab6780;
(* ldr	x14, 0xaaaaaaab6788 <p610x2+56>             #! PC = 0xaaaaaaab69a4 *)
mov x14 L0xaaaaaaab6788;
(* and	x13, x13, x17                               #! PC = 0xaaaaaaab69a8 *)
and x13@uint64 x13 x17;
(* and	x14, x14, x17                               #! PC = 0xaaaaaaab69ac *)
and x14@uint64 x14 x17;
(* adcs	x11, x11, x13                              #! PC = 0xaaaaaaab69b0 *)
adcs carry x11 x11 x13 carry;
(* adc	x12, x12, x14                               #! PC = 0xaaaaaaab69b4 *)
adcs dontcare x12 x12 x14 carry;
(* stp	x3, x4, [x2]                                #! EA = L0xffffffffe528; PC = 0xaaaaaaab69b8 *)
mov L0xffffffffe528 x3;
mov L0xffffffffe530 x4;
(* stp	x5, x6, [x2, #16]                           #! EA = L0xffffffffe538; PC = 0xaaaaaaab69bc *)
mov L0xffffffffe538 x5;
mov L0xffffffffe540 x6;
(* stp	x7, x8, [x2, #32]                           #! EA = L0xffffffffe548; PC = 0xaaaaaaab69c0 *)
mov L0xffffffffe548 x7;
mov L0xffffffffe550 x8;
(* stp	x9, x10, [x2, #48]                          #! EA = L0xffffffffe558; PC = 0xaaaaaaab69c4 *)
mov L0xffffffffe558 x9;
mov L0xffffffffe560 x10;
(* stp	x11, x12, [x2, #64]                         #! EA = L0xffffffffe568; PC = 0xaaaaaaab69c8 *)
mov L0xffffffffe568 x11;
mov L0xffffffffe570 x12;
(* #! <- SP = 0xffffffffe270 *)
#! 0xffffffffe270 = 0xffffffffe270;
(* #ret                                            #! PC = 0xaaaaaaab69cc *)
#ret                                            #! 0xaaaaaaab69cc = 0xaaaaaaab69cc;

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
                   limbs 64 [ar0, ar1, ar2, ar3, ar4, ar5, ar6, ar7, ar8, ar9] -
                   limbs 64 [br0, br1, br2, br3, br4, br5, br6, br7, br8, br9]
                   limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9],
            eqsmod limbs 64 [ci0, ci1, ci2, ci3, ci4, ci5, ci6, ci7, ci8, ci9]
                   limbs 64 [ai0, ai1, ai2, ai3, ai4, ai5, ai6, ai7, ai8, ai9] -
                   limbs 64 [bi0, bi1, bi2, bi3, bi4, bi5, bi6, bi7, bi8, bi9]
                   limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9]];
assume and [eqmod limbs 64 [cr0, cr1, cr2, cr3, cr4, cr5, cr6, cr7, cr8, cr9]
                  limbs 64 [ar0, ar1, ar2, ar3, ar4, ar5, ar6, ar7, ar8, ar9] -
                  limbs 64 [br0, br1, br2, br3, br4, br5, br6, br7, br8, br9]
                  limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9],
            eqmod limbs 64 [ci0, ci1, ci2, ci3, ci4, ci5, ci6, ci7, ci8, ci9]
                  limbs 64 [ai0, ai1, ai2, ai3, ai4, ai5, ai6, ai7, ai8, ai9] -
                  limbs 64 [bi0, bi1, bi2, bi3, bi4, bi5, bi6, bi7, bi8, bi9]
                  limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9]] && true;

ghost I@uint64 : true && true;

{
  eqmod limbs 64 [cr0, cr1, cr2, cr3, cr4, cr5, cr6, cr7, cr8, cr9] +
        limbs 64 [ci0, ci1, ci2, ci3, ci4, ci5, ci6, ci7, ci8, ci9] * I
        (limbs 64 [ar0, ar1, ar2, ar3, ar4, ar5, ar6, ar7, ar8, ar9] +
         limbs 64 [ai0, ai1, ai2, ai3, ai4, ai5, ai6, ai7, ai8, ai9] * I) -
        (limbs 64 [br0, br1, br2, br3, br4, br5, br6, br7, br8, br9] +
         limbs 64 [bi0, bi1, bi2, bi3, bi4, bi5, bi6, bi7, bi8, bi9] * I)
        [I**2 + 1, limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9]]
&&
  and [limbs 64 [cr0, cr1, cr2, cr3, cr4, cr5, cr6, cr7, cr8, cr9] <u
       2@640 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9],
       limbs 64 [ci0, ci1, ci2, ci3, ci4, ci5, ci6, ci7, ci8, ci9] <u
       2@640 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9]]
}

