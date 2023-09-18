(* quine: -v -isafety -jobs 20 -slicing -no_carry_constraint fp2add610.cl
Parsing Cryptoline file:                [OK]            0.006097 seconds
Checking well-formedness:               [OK]            0.001363 seconds
Transforming to SSA form:               [OK]            0.000242 seconds
Normalizing specification:              [OK]            0.000277 seconds
Rewriting assignments:                  [OK]            0.000341 seconds
Verifying program safety:               [OK]            0.000132 seconds
Verifying range assertions:             [OK]            28.695721 seconds
Verifying range specification:          [OK]            1.033220 seconds
Rewriting value-preserved casting:      [OK]            0.000093 seconds
Verifying algebraic assertions:         [OK]            0.001765 seconds
Verifying algebraic specification:      [OK]            0.066039 seconds
Verification result:                    [OK]            29.806300 seconds
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
(* stp	x29, x30, [sp, #-48]!                       #! EA = L0xffffffffe240; PC = 0xaaaaaaaae274 *)
mov L0xffffffffe240 x29;
mov L0xffffffffe248 x30;
(* mov	x29, sp                                     #! PC = 0xaaaaaaaae278 *)
mov x29 sp;
(* stp	x19, x20, [sp, #16]                         #! EA = L0xffffffffe250; PC = 0xaaaaaaaae27c *)
mov L0xffffffffe250 x19;
mov L0xffffffffe258 x20;
(* mov	x19, x0                                     #! PC = 0xaaaaaaaae280 *)
mov x19 x0;
(* mov	x20, x1                                     #! PC = 0xaaaaaaaae284 *)
mov x20 x1;
(* str	x21, [sp, #32]                              #! EA = L0xffffffffe260; PC = 0xaaaaaaaae288 *)
mov L0xffffffffe260 x21;
(* mov	x21, x2                                     #! PC = 0xaaaaaaaae28c *)
mov x21 x2;
(* #bl	0xaaaaaaab6290 <fpadd610>                   #! PC = 0xaaaaaaaae290 *)
#bl	0xaaaaaaab6290 <fpadd610>                   #! 0xaaaaaaaae290 = 0xaaaaaaaae290;
(* #! -> SP = 0xffffffffe240 *)
#! 0xffffffffe240 = 0xffffffffe240;
(* #b	0xaaaaaaab67f8 <fpadd610_asm>                #! PC = 0xaaaaaaab6290 *)
#b	0xaaaaaaab67f8 <fpadd610_asm>                #! 0xaaaaaaab6290 = 0xaaaaaaab6290;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe2f8; Value = 0x6e94c9413e992a9a; PC = 0xaaaaaaab67f8 *)
mov x3 L0xffffffffe2f8;
mov x4 L0xffffffffe300;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffe308; Value = 0x56fbd2bb120caa13; PC = 0xaaaaaaab67fc *)
mov x5 L0xffffffffe308;
mov x6 L0xffffffffe310;
(* ldp	x13, x14, [x1]                              #! EA = L0xffffffffe398; Value = 0x3a50594c894c5731; PC = 0xaaaaaaab6800 *)
mov x13 L0xffffffffe398;
mov x14 L0xffffffffe3a0;
(* ldp	x15, x16, [x1, #16]                         #! EA = L0xffffffffe3a8; Value = 0x4cfe67a998369c21; PC = 0xaaaaaaab6804 *)
mov x15 L0xffffffffe3a8;
mov x16 L0xffffffffe3b0;
(* adds	x3, x3, x13                                #! PC = 0xaaaaaaab6808 *)
adds carry x3 x3 x13;
(* adcs	x4, x4, x14                                #! PC = 0xaaaaaaab680c *)
adcs carry x4 x4 x14 carry;
(* adcs	x5, x5, x15                                #! PC = 0xaaaaaaab6810 *)
adcs carry x5 x5 x15 carry;
(* adcs	x6, x6, x16                                #! PC = 0xaaaaaaab6814 *)
adcs carry x6 x6 x16 carry;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe318; Value = 0xc438d9d6ca440d89; PC = 0xaaaaaaab6818 *)
mov x7 L0xffffffffe318;
mov x8 L0xffffffffe320;
(* ldp	x9, x10, [x0, #48]                          #! EA = L0xffffffffe328; Value = 0x1da85d795262a797; PC = 0xaaaaaaab681c *)
mov x9 L0xffffffffe328;
mov x10 L0xffffffffe330;
(* ldp	x13, x14, [x1, #32]                         #! EA = L0xffffffffe3b8; Value = 0x5e633ac729e96edc; PC = 0xaaaaaaab6820 *)
mov x13 L0xffffffffe3b8;
mov x14 L0xffffffffe3c0;
(* ldp	x15, x16, [x1, #48]                         #! EA = L0xffffffffe3c8; Value = 0x851dfe48d100e128; PC = 0xaaaaaaab6824 *)
mov x15 L0xffffffffe3c8;
mov x16 L0xffffffffe3d0;
(* adcs	x7, x7, x13                                #! PC = 0xaaaaaaab6828 *)
adcs carry x7 x7 x13 carry;
(* adcs	x8, x8, x14                                #! PC = 0xaaaaaaab682c *)
adcs carry x8 x8 x14 carry;
(* adcs	x9, x9, x15                                #! PC = 0xaaaaaaab6830 *)
adcs carry x9 x9 x15 carry;
(* adcs	x10, x10, x16                              #! PC = 0xaaaaaaab6834 *)
adcs carry x10 x10 x16 carry;
(* ldp	x11, x12, [x0, #64]                         #! EA = L0xffffffffe338; Value = 0xfeb62bf8f2f31f1b; PC = 0xaaaaaaab6838 *)
mov x11 L0xffffffffe338;
mov x12 L0xffffffffe340;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0xffffffffe3d8; Value = 0x6006d524a872eae1; PC = 0xaaaaaaab683c *)
mov x13 L0xffffffffe3d8;
mov x14 L0xffffffffe3e0;
(* adcs	x11, x11, x13                              #! PC = 0xaaaaaaab6840 *)
adcs carry x11 x11 x13 carry;
(* adc	x12, x12, x14                               #! PC = 0xaaaaaaab6844 *)
adcs dontcare x12 x12 x14 carry;
(* ldr	x0, 0xaaaaaaab6750 <p610x2>                 #! PC = 0xaaaaaaab6848 *)
mov x0 L0xaaaaaaab6750;
(* ldr	x1, 0xaaaaaaab6758 <p610x2+8>               #! PC = 0xaaaaaaab684c *)
mov x1 L0xaaaaaaab6758;
(* ldr	x13, 0xaaaaaaab6760 <p610x2+16>             #! PC = 0xaaaaaaab6850 *)
mov x13 L0xaaaaaaab6760;
(* subs	x3, x3, x0                                 #! PC = 0xaaaaaaab6854 *)
subc carry x3 x3 x0;
(* sbcs	x4, x4, x1                                 #! PC = 0xaaaaaaab6858 *)
sbcs carry x4 x4 x1 carry;
(* sbcs	x5, x5, x1                                 #! PC = 0xaaaaaaab685c *)
sbcs carry x5 x5 x1 carry;
(* sbcs	x6, x6, x1                                 #! PC = 0xaaaaaaab6860 *)
sbcs carry x6 x6 x1 carry;
(* sbcs	x7, x7, x13                                #! PC = 0xaaaaaaab6864 *)
sbcs carry x7 x7 x13 carry;
(* ldr	x14, 0xaaaaaaab6768 <p610x2+24>             #! PC = 0xaaaaaaab6868 *)
mov x14 L0xaaaaaaab6768;
(* ldr	x15, 0xaaaaaaab6770 <p610x2+32>             #! PC = 0xaaaaaaab686c *)
mov x15 L0xaaaaaaab6770;
(* ldr	x16, 0xaaaaaaab6778 <p610x2+40>             #! PC = 0xaaaaaaab6870 *)
mov x16 L0xaaaaaaab6778;
(* sbcs	x8, x8, x14                                #! PC = 0xaaaaaaab6874 *)
sbcs carry x8 x8 x14 carry;
(* sbcs	x9, x9, x15                                #! PC = 0xaaaaaaab6878 *)
sbcs carry x9 x9 x15 carry;
(* sbcs	x10, x10, x16                              #! PC = 0xaaaaaaab687c *)
sbcs carry x10 x10 x16 carry;
(* ldr	x14, 0xaaaaaaab6780 <p610x2+48>             #! PC = 0xaaaaaaab6880 *)
mov x14 L0xaaaaaaab6780;
(* ldr	x15, 0xaaaaaaab6788 <p610x2+56>             #! PC = 0xaaaaaaab6884 *)
mov x15 L0xaaaaaaab6788;
(* sbcs	x11, x11, x14                              #! PC = 0xaaaaaaab6888 *)
sbcs carry x11 x11 x14 carry;
(* sbcs	x12, x12, x15                              #! PC = 0xaaaaaaab688c *)
sbcs carry x12 x12 x15 carry;
(* ngc	x17, xzr                                    #! PC = 0xaaaaaaab6890 *)
sbcs dontcare x17 0@uint64 0@uint64 carry;
(* and	x0, x0, x17                                 #! PC = 0xaaaaaaab6894 *)
and x0@uint64 x0 x17;
(* and	x1, x1, x17                                 #! PC = 0xaaaaaaab6898 *)
and x1@uint64 x1 x17;
(* and	x13, x13, x17                               #! PC = 0xaaaaaaab689c *)
and x13@uint64 x13 x17;
(* and	x14, x14, x17                               #! PC = 0xaaaaaaab68a0 *)
and x14@uint64 x14 x17;
(* and	x15, x15, x17                               #! PC = 0xaaaaaaab68a4 *)
and x15@uint64 x15 x17;
(* and	x16, x16, x17                               #! PC = 0xaaaaaaab68a8 *)
and x16@uint64 x16 x17;
(* adds	x3, x3, x0                                 #! PC = 0xaaaaaaab68ac *)
adds carry x3 x3 x0;
(* adcs	x4, x4, x1                                 #! PC = 0xaaaaaaab68b0 *)
adcs carry x4 x4 x1 carry;
(* adcs	x5, x5, x1                                 #! PC = 0xaaaaaaab68b4 *)
adcs carry x5 x5 x1 carry;
(* adcs	x6, x6, x1                                 #! PC = 0xaaaaaaab68b8 *)
adcs carry x6 x6 x1 carry;
(* adcs	x7, x7, x13                                #! PC = 0xaaaaaaab68bc *)
adcs carry x7 x7 x13 carry;
(* ldr	x0, 0xaaaaaaab6768 <p610x2+24>              #! PC = 0xaaaaaaab68c0 *)
mov x0 L0xaaaaaaab6768;
(* ldr	x1, 0xaaaaaaab6770 <p610x2+32>              #! PC = 0xaaaaaaab68c4 *)
mov x1 L0xaaaaaaab6770;
(* and	x0, x0, x17                                 #! PC = 0xaaaaaaab68c8 *)
and x0@uint64 x0 x17;
(* and	x1, x1, x17                                 #! PC = 0xaaaaaaab68cc *)
and x1@uint64 x1 x17;
(* adcs	x8, x8, x0                                 #! PC = 0xaaaaaaab68d0 *)
adcs carry x8 x8 x0 carry;
(* adcs	x9, x9, x1                                 #! PC = 0xaaaaaaab68d4 *)
adcs carry x9 x9 x1 carry;
(* adcs	x10, x10, x16                              #! PC = 0xaaaaaaab68d8 *)
adcs carry x10 x10 x16 carry;
(* adcs	x11, x11, x14                              #! PC = 0xaaaaaaab68dc *)
adcs carry x11 x11 x14 carry;
(* adc	x12, x12, x15                               #! PC = 0xaaaaaaab68e0 *)
adcs dontcare x12 x12 x15 carry;
(* stp	x3, x4, [x2]                                #! EA = L0xffffffffe4d8; PC = 0xaaaaaaab68e4 *)
mov L0xffffffffe4d8 x3;
mov L0xffffffffe4e0 x4;
(* stp	x5, x6, [x2, #16]                           #! EA = L0xffffffffe4e8; PC = 0xaaaaaaab68e8 *)
mov L0xffffffffe4e8 x5;
mov L0xffffffffe4f0 x6;
(* stp	x7, x8, [x2, #32]                           #! EA = L0xffffffffe4f8; PC = 0xaaaaaaab68ec *)
mov L0xffffffffe4f8 x7;
mov L0xffffffffe500 x8;
(* stp	x9, x10, [x2, #48]                          #! EA = L0xffffffffe508; PC = 0xaaaaaaab68f0 *)
mov L0xffffffffe508 x9;
mov L0xffffffffe510 x10;
(* stp	x11, x12, [x2, #64]                         #! EA = L0xffffffffe518; PC = 0xaaaaaaab68f4 *)
mov L0xffffffffe518 x11;
mov L0xffffffffe520 x12;
(* #! <- SP = 0xffffffffe240 *)
#! 0xffffffffe240 = 0xffffffffe240;
(* #ret                                            #! PC = 0xaaaaaaab68f8 *)
#ret                                            #! 0xaaaaaaab68f8 = 0xaaaaaaab68f8;
(* add	x2, x21, #0x50                              #! PC = 0xaaaaaaaae294 *)
adds dontcare x2 x21 0x50@uint64;
(* add	x1, x20, #0x50                              #! PC = 0xaaaaaaaae298 *)
adds dontcare x1 x20 0x50@uint64;
(* add	x0, x19, #0x50                              #! PC = 0xaaaaaaaae29c *)
adds dontcare x0 x19 0x50@uint64;
(* ldp	x19, x20, [sp, #16]                         #! EA = L0xffffffffe250; Value = 0x0000ffffffffe4d8; PC = 0xaaaaaaaae2a0 *)
mov x19 L0xffffffffe250;
mov x20 L0xffffffffe258;
(* ldr	x21, [sp, #32]                              #! EA = L0xffffffffe260; Value = 0x0000ffffffffe398; PC = 0xaaaaaaaae2a4 *)
mov x21 L0xffffffffe260;
(* ldp	x29, x30, [sp], #48                         #! EA = L0xffffffffe240; Value = 0x0000ffffffffe270; PC = 0xaaaaaaaae2a8 *)
mov x29 L0xffffffffe240;
mov x30 L0xffffffffe248;
(* #b	0xaaaaaaab6290 <fpadd610>                    #! PC = 0xaaaaaaaae2ac *)
#b	0xaaaaaaab6290 <fpadd610>                    #! 0xaaaaaaaae2ac = 0xaaaaaaaae2ac;
(* #b	0xaaaaaaab67f8 <fpadd610_asm>                #! PC = 0xaaaaaaab6290 *)
#b	0xaaaaaaab67f8 <fpadd610_asm>                #! 0xaaaaaaab6290 = 0xaaaaaaab6290;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe348; Value = 0x94750b2b5863cedf; PC = 0xaaaaaaab67f8 *)
mov x3 L0xffffffffe348;
mov x4 L0xffffffffe350;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffe358; Value = 0x145ae2345c2c0964; PC = 0xaaaaaaab67fc *)
mov x5 L0xffffffffe358;
mov x6 L0xffffffffe360;
(* ldp	x13, x14, [x1]                              #! EA = L0xffffffffe3e8; Value = 0xafa77b3e225e40da; PC = 0xaaaaaaab6800 *)
mov x13 L0xffffffffe3e8;
mov x14 L0xffffffffe3f0;
(* ldp	x15, x16, [x1, #16]                         #! EA = L0xffffffffe3f8; Value = 0xf2befd5f5ef78a3a; PC = 0xaaaaaaab6804 *)
mov x15 L0xffffffffe3f8;
mov x16 L0xffffffffe400;
(* adds	x3, x3, x13                                #! PC = 0xaaaaaaab6808 *)
adds carry x3 x3 x13;
(* adcs	x4, x4, x14                                #! PC = 0xaaaaaaab680c *)
adcs carry x4 x4 x14 carry;
(* adcs	x5, x5, x15                                #! PC = 0xaaaaaaab6810 *)
adcs carry x5 x5 x15 carry;
(* adcs	x6, x6, x16                                #! PC = 0xaaaaaaab6814 *)
adcs carry x6 x6 x16 carry;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe368; Value = 0xb82cde6b98695f6c; PC = 0xaaaaaaab6818 *)
mov x7 L0xffffffffe368;
mov x8 L0xffffffffe370;
(* ldp	x9, x10, [x0, #48]                          #! EA = L0xffffffffe378; Value = 0xc70cf557f89b75c4; PC = 0xaaaaaaab681c *)
mov x9 L0xffffffffe378;
mov x10 L0xffffffffe380;
(* ldp	x13, x14, [x1, #32]                         #! EA = L0xffffffffe408; Value = 0x0138a89f8901234a; PC = 0xaaaaaaab6820 *)
mov x13 L0xffffffffe408;
mov x14 L0xffffffffe410;
(* ldp	x15, x16, [x1, #48]                         #! EA = L0xffffffffe418; Value = 0x27c42e52d2705472; PC = 0xaaaaaaab6824 *)
mov x15 L0xffffffffe418;
mov x16 L0xffffffffe420;
(* adcs	x7, x7, x13                                #! PC = 0xaaaaaaab6828 *)
adcs carry x7 x7 x13 carry;
(* adcs	x8, x8, x14                                #! PC = 0xaaaaaaab682c *)
adcs carry x8 x8 x14 carry;
(* adcs	x9, x9, x15                                #! PC = 0xaaaaaaab6830 *)
adcs carry x9 x9 x15 carry;
(* adcs	x10, x10, x16                              #! PC = 0xaaaaaaab6834 *)
adcs carry x10 x10 x16 carry;
(* ldp	x11, x12, [x0, #64]                         #! EA = L0xffffffffe388; Value = 0x66300d7778e0980d; PC = 0xaaaaaaab6838 *)
mov x11 L0xffffffffe388;
mov x12 L0xffffffffe390;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0xffffffffe428; Value = 0x69e9a5c7e86c1e49; PC = 0xaaaaaaab683c *)
mov x13 L0xffffffffe428;
mov x14 L0xffffffffe430;
(* adcs	x11, x11, x13                              #! PC = 0xaaaaaaab6840 *)
adcs carry x11 x11 x13 carry;
(* adc	x12, x12, x14                               #! PC = 0xaaaaaaab6844 *)
adcs dontcare x12 x12 x14 carry;
(* ldr	x0, 0xaaaaaaab6750 <p610x2>                 #! PC = 0xaaaaaaab6848 *)
mov x0 L0xaaaaaaab6750;
(* ldr	x1, 0xaaaaaaab6758 <p610x2+8>               #! PC = 0xaaaaaaab684c *)
mov x1 L0xaaaaaaab6758;
(* ldr	x13, 0xaaaaaaab6760 <p610x2+16>             #! PC = 0xaaaaaaab6850 *)
mov x13 L0xaaaaaaab6760;
(* subs	x3, x3, x0                                 #! PC = 0xaaaaaaab6854 *)
subc carry x3 x3 x0;
(* sbcs	x4, x4, x1                                 #! PC = 0xaaaaaaab6858 *)
sbcs carry x4 x4 x1 carry;
(* sbcs	x5, x5, x1                                 #! PC = 0xaaaaaaab685c *)
sbcs carry x5 x5 x1 carry;
(* sbcs	x6, x6, x1                                 #! PC = 0xaaaaaaab6860 *)
sbcs carry x6 x6 x1 carry;
(* sbcs	x7, x7, x13                                #! PC = 0xaaaaaaab6864 *)
sbcs carry x7 x7 x13 carry;
(* ldr	x14, 0xaaaaaaab6768 <p610x2+24>             #! PC = 0xaaaaaaab6868 *)
mov x14 L0xaaaaaaab6768;
(* ldr	x15, 0xaaaaaaab6770 <p610x2+32>             #! PC = 0xaaaaaaab686c *)
mov x15 L0xaaaaaaab6770;
(* ldr	x16, 0xaaaaaaab6778 <p610x2+40>             #! PC = 0xaaaaaaab6870 *)
mov x16 L0xaaaaaaab6778;
(* sbcs	x8, x8, x14                                #! PC = 0xaaaaaaab6874 *)
sbcs carry x8 x8 x14 carry;
(* sbcs	x9, x9, x15                                #! PC = 0xaaaaaaab6878 *)
sbcs carry x9 x9 x15 carry;
(* sbcs	x10, x10, x16                              #! PC = 0xaaaaaaab687c *)
sbcs carry x10 x10 x16 carry;
(* ldr	x14, 0xaaaaaaab6780 <p610x2+48>             #! PC = 0xaaaaaaab6880 *)
mov x14 L0xaaaaaaab6780;
(* ldr	x15, 0xaaaaaaab6788 <p610x2+56>             #! PC = 0xaaaaaaab6884 *)
mov x15 L0xaaaaaaab6788;
(* sbcs	x11, x11, x14                              #! PC = 0xaaaaaaab6888 *)
sbcs carry x11 x11 x14 carry;
(* sbcs	x12, x12, x15                              #! PC = 0xaaaaaaab688c *)
sbcs carry x12 x12 x15 carry;
(* ngc	x17, xzr                                    #! PC = 0xaaaaaaab6890 *)
sbcs dontcare x17 0@uint64 0@uint64 carry;
(* and	x0, x0, x17                                 #! PC = 0xaaaaaaab6894 *)
and x0@uint64 x0 x17;
(* and	x1, x1, x17                                 #! PC = 0xaaaaaaab6898 *)
and x1@uint64 x1 x17;
(* and	x13, x13, x17                               #! PC = 0xaaaaaaab689c *)
and x13@uint64 x13 x17;
(* and	x14, x14, x17                               #! PC = 0xaaaaaaab68a0 *)
and x14@uint64 x14 x17;
(* and	x15, x15, x17                               #! PC = 0xaaaaaaab68a4 *)
and x15@uint64 x15 x17;
(* and	x16, x16, x17                               #! PC = 0xaaaaaaab68a8 *)
and x16@uint64 x16 x17;
(* adds	x3, x3, x0                                 #! PC = 0xaaaaaaab68ac *)
adds carry x3 x3 x0;
(* adcs	x4, x4, x1                                 #! PC = 0xaaaaaaab68b0 *)
adcs carry x4 x4 x1 carry;
(* adcs	x5, x5, x1                                 #! PC = 0xaaaaaaab68b4 *)
adcs carry x5 x5 x1 carry;
(* adcs	x6, x6, x1                                 #! PC = 0xaaaaaaab68b8 *)
adcs carry x6 x6 x1 carry;
(* adcs	x7, x7, x13                                #! PC = 0xaaaaaaab68bc *)
adcs carry x7 x7 x13 carry;
(* ldr	x0, 0xaaaaaaab6768 <p610x2+24>              #! PC = 0xaaaaaaab68c0 *)
mov x0 L0xaaaaaaab6768;
(* ldr	x1, 0xaaaaaaab6770 <p610x2+32>              #! PC = 0xaaaaaaab68c4 *)
mov x1 L0xaaaaaaab6770;
(* and	x0, x0, x17                                 #! PC = 0xaaaaaaab68c8 *)
and x0@uint64 x0 x17;
(* and	x1, x1, x17                                 #! PC = 0xaaaaaaab68cc *)
and x1@uint64 x1 x17;
(* adcs	x8, x8, x0                                 #! PC = 0xaaaaaaab68d0 *)
adcs carry x8 x8 x0 carry;
(* adcs	x9, x9, x1                                 #! PC = 0xaaaaaaab68d4 *)
adcs carry x9 x9 x1 carry;
(* adcs	x10, x10, x16                              #! PC = 0xaaaaaaab68d8 *)
adcs carry x10 x10 x16 carry;
(* adcs	x11, x11, x14                              #! PC = 0xaaaaaaab68dc *)
adcs carry x11 x11 x14 carry;
(* adc	x12, x12, x15                               #! PC = 0xaaaaaaab68e0 *)
adcs dontcare x12 x12 x15 carry;
(* stp	x3, x4, [x2]                                #! EA = L0xffffffffe528; PC = 0xaaaaaaab68e4 *)
mov L0xffffffffe528 x3;
mov L0xffffffffe530 x4;
(* stp	x5, x6, [x2, #16]                           #! EA = L0xffffffffe538; PC = 0xaaaaaaab68e8 *)
mov L0xffffffffe538 x5;
mov L0xffffffffe540 x6;
(* stp	x7, x8, [x2, #32]                           #! EA = L0xffffffffe548; PC = 0xaaaaaaab68ec *)
mov L0xffffffffe548 x7;
mov L0xffffffffe550 x8;
(* stp	x9, x10, [x2, #48]                          #! EA = L0xffffffffe558; PC = 0xaaaaaaab68f0 *)
mov L0xffffffffe558 x9;
mov L0xffffffffe560 x10;
(* stp	x11, x12, [x2, #64]                         #! EA = L0xffffffffe568; PC = 0xaaaaaaab68f4 *)
mov L0xffffffffe568 x11;
mov L0xffffffffe570 x12;
(* #! <- SP = 0xffffffffe270 *)
#! 0xffffffffe270 = 0xffffffffe270;
(* #ret                                            #! PC = 0xaaaaaaab68f8 *)
#ret                                            #! 0xaaaaaaab68f8 = 0xaaaaaaab68f8;

mov cr0 L0xffffffffe4d8; mov cr1 L0xffffffffe4e0; mov cr2 L0xffffffffe4e8;
mov cr3 L0xffffffffe4f0; mov cr4 L0xffffffffe4f8; mov cr5 L0xffffffffe500;
mov cr6 L0xffffffffe508; mov cr7 L0xffffffffe510; mov cr8 L0xffffffffe518;
mov cr9 L0xffffffffe520;

mov ci0 L0xffffffffe528; mov ci1 L0xffffffffe530; mov ci2 L0xffffffffe538;
mov ci3 L0xffffffffe540; mov ci4 L0xffffffffe548; mov ci5 L0xffffffffe550;
mov ci6 L0xffffffffe558; mov ci7 L0xffffffffe560; mov ci8 L0xffffffffe568;
mov ci9 L0xffffffffe570;

assert true
    && and [eqmod (limbs 64 [cr0, cr1, cr2, cr3, cr4, cr5, cr6, cr7, cr8, cr9])
                  (limbs 64 [ar0, ar1, ar2, ar3, ar4, ar5, ar6, ar7, ar8, ar9] +
                   limbs 64 [br0, br1, br2, br3, br4, br5, br6, br7, br8, br9])
                  (limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9]),
            eqmod (limbs 64 [ci0, ci1, ci2, ci3, ci4, ci5, ci6, ci7, ci8, ci9])
                  (limbs 64 [ai0, ai1, ai2, ai3, ai4, ai5, ai6, ai7, ai8, ai9] +
                   limbs 64 [bi0, bi1, bi2, bi3, bi4, bi5, bi6, bi7, bi8, bi9])
                  (limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9])];
assume and [eqmod (limbs 64 [cr0, cr1, cr2, cr3, cr4, cr5, cr6, cr7, cr8, cr9])
                  (limbs 64 [ar0, ar1, ar2, ar3, ar4, ar5, ar6, ar7, ar8, ar9] +
                   limbs 64 [br0, br1, br2, br3, br4, br5, br6, br7, br8, br9])
                  (limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9]),
            eqmod (limbs 64 [ci0, ci1, ci2, ci3, ci4, ci5, ci6, ci7, ci8, ci9])
                  (limbs 64 [ai0, ai1, ai2, ai3, ai4, ai5, ai6, ai7, ai8, ai9] +
                   limbs 64 [bi0, bi1, bi2, bi3, bi4, bi5, bi6, bi7, bi8, bi9])
                  (limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9])] && true;

ghost I@uint64 : true && true;

{
  eqmod (limbs 64 [cr0, cr1, cr2, cr3, cr4, cr5, cr6, cr7, cr8, cr9] +
         limbs 64 [ci0, ci1, ci2, ci3, ci4, ci5, ci6, ci7, ci8, ci9] * I)
        ((limbs 64 [ar0, ar1, ar2, ar3, ar4, ar5, ar6, ar7, ar8, ar9] +
          limbs 64 [ai0, ai1, ai2, ai3, ai4, ai5, ai6, ai7, ai8, ai9] * I) +
         (limbs 64 [br0, br1, br2, br3, br4, br5, br6, br7, br8, br9] +
          limbs 64 [bi0, bi1, bi2, bi3, bi4, bi5, bi6, bi7, bi8, bi9] * I))
        [I**2 + 1, limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9]]
&&
  and [limbs 64 [cr0, cr1, cr2, cr3, cr4, cr5, cr6, cr7, cr8, cr9] <u
       2@640 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9],
       limbs 64 [ci0, ci1, ci2, ci3, ci4, ci5, ci6, ci7, ci8, ci9] <u
       2@640 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9]]
}

