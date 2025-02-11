(* quine: -v -isafety -btor -jobs 10 -no_carry_constraint -slicing -vo appearing mul_fp6x2-armv8.cl
Parsing Cryptoline file:                [OK]            0.096758 seconds
Checking well-formedness:               [OK]            0.020192 seconds
Transforming to SSA form:               [OK]            0.013809 seconds
Rewriting assignments:                  [OK]            4.177209 seconds
Verifying program safety:               [OK]            37.955530 seconds
Verifying range assertions:             [OK]            239.578776 seconds
Verifying range specification:          [OK]            60.536235 seconds
Rewriting value-preserved casting:      [OK]            0.000734 seconds
Verifying algebraic assertions:         [OK]            356.530340 seconds
Verifying algebraic specification:      [OK]            947.552289 seconds
Verification result:                    [OK]            1646.470385 seconds
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
           uint64 x19, uint64 x20, uint64 x21, uint64 x22, uint64 x23,
           uint64 x24, uint64 x25, uint64 x26, uint64 x27, uint64 x28,
           uint64 x29, uint64 x30,
           uint64 sp,

           uint64   U, uint64   V, uint64  W) =
{
  and [
    x0 = 0x4000829d98, x1 = 0x400082a048, x2 = 0x400082a168,
    m0 = 0xb9feffffffffaaab, m1 = 0x1eabfffeb153ffff,
    m2 = 0x6730d2a0f6b0f624, m3 = 0x64774b84f38512bf,
    m4 = 0x4b1ba7b6434bacd7, m5 = 0x1a0111ea397fe69a
  ]
&&
  and [
    x0 = 0x4000829d98@64, x1 = 0x400082a048@64, x2 = 0x400082a168@64,
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

ghost x19o@uint64, x20o@uint64, x21o@uint64, x22o@uint64, x23o@uint64,
      x24o@uint64, x25o@uint64, x26o@uint64, x27o@uint64, x28o@uint64,
      x29o@uint64, x30o@uint64 :
      and [x19o = x19, x20o = x20, x21o = x21, x22o = x22, x23o = x23,
           x24o = x24, x25o = x25, x26o = x26, x27o = x27, x28o = x28,
           x29o = x29, x30o = x30]
   && and [x19o = x19, x20o = x20, x21o = x21, x22o = x22, x23o = x23,
           x24o = x24, x25o = x25, x26o = x26, x27o = x27, x28o = x28,
           x29o = x29, x30o = x30];

mov L0x4000029fb0 0x000000400085d6d0@uint64;
mov L0x400085d6d0 0xb9a8639ce44cac00@uint64;
mov L0x4000029fd8 0x0000004000016928@uint74;

mov L0x400082a048 a00; mov L0x400082a050 a01; mov L0x400082a058 a02;
mov L0x400082a060 a03; mov L0x400082a068 a04; mov L0x400082a070 a05;

mov L0x400082a078 a10; mov L0x400082a080 a11; mov L0x400082a088 a12;
mov L0x400082a090 a13; mov L0x400082a098 a14; mov L0x400082a0a0 a15;

mov L0x400082a0a8 a20; mov L0x400082a0b0 a21; mov L0x400082a0b8 a22;
mov L0x400082a0c0 a23; mov L0x400082a0c8 a24; mov L0x400082a0d0 a25;

mov L0x400082a0d8 a30; mov L0x400082a0e0 a31; mov L0x400082a0e8 a32;
mov L0x400082a0f0 a33; mov L0x400082a0f8 a34; mov L0x400082a100 a35;

mov L0x400082a108 a40; mov L0x400082a110 a41; mov L0x400082a118 a42;
mov L0x400082a120 a43; mov L0x400082a128 a44; mov L0x400082a130 a45;

mov L0x400082a138 a50; mov L0x400082a140 a51; mov L0x400082a148 a52;
mov L0x400082a150 a53; mov L0x400082a158 a54; mov L0x400082a160 a55;

mov L0x400082a168 b00; mov L0x400082a170 b01; mov L0x400082a178 b02;
mov L0x400082a180 b03; mov L0x400082a188 b04; mov L0x400082a190 b05;

mov L0x400082a198 b10; mov L0x400082a1a0 b11; mov L0x400082a1a8 b12;
mov L0x400082a1b0 b13; mov L0x400082a1b8 b14; mov L0x400082a1c0 b15;

mov L0x400082a1c8 b20; mov L0x400082a1d0 b21; mov L0x400082a1d8 b22;
mov L0x400082a1e0 b23; mov L0x400082a1e8 b24; mov L0x400082a1f0 b25;

mov L0x400082a1f8 b30; mov L0x400082a200 b31; mov L0x400082a208 b32;
mov L0x400082a210 b33; mov L0x400082a218 b34; mov L0x400082a220 b35;

mov L0x400082a228 b40; mov L0x400082a230 b41; mov L0x400082a238 b42;
mov L0x400082a240 b43; mov L0x400082a248 b44; mov L0x400082a250 b45;

mov L0x400082a258 b50; mov L0x400082a260 b51; mov L0x400082a268 b52;
mov L0x400082a270 b53; mov L0x400082a278 b54; mov L0x400082a280 b55;

mov L0x4000016928 m0; mov L0x4000016930 m1; mov L0x4000016938 m2;
mov L0x4000016940 m3; mov L0x4000016948 m4; mov L0x4000016950 m5;


(* #sub	sp, sp, #0x3c0                              #! PC = 0x274877950136 *)
#sub	%%sp, %%sp, #0x3c0                              #! 0x274877950136 = 0x274877950136;
(* stp	x29, x30, [sp]                              #! EA = L0x4000829990; PC = 0x274877950140 *)
mov L0x4000829990 x29;
mov L0x4000829998 x30;
(* mov	x29, sp                                     #! PC = 0x274877950144 *)
mov x29 sp;
(* stp	x19, x20, [sp, #16]                         #! EA = L0x40008299a0; PC = 0x274877950148 *)
mov L0x40008299a0 x19;
mov L0x40008299a8 x20;
(* stp	x21, x22, [sp, #32]                         #! EA = L0x40008299b0; PC = 0x274877950152 *)
mov L0x40008299b0 x21;
mov L0x40008299b8 x22;
(* stp	x23, x24, [sp, #48]                         #! EA = L0x40008299c0; PC = 0x274877950156 *)
mov L0x40008299c0 x23;
mov L0x40008299c8 x24;
(* stp	x25, x26, [sp, #64]                         #! EA = L0x40008299d0; PC = 0x274877950160 *)
mov L0x40008299d0 x25;
mov L0x40008299d8 x26;
(* stp	x27, x28, [sp, #80]                         #! EA = L0x40008299e0; PC = 0x274877950164 *)
mov L0x40008299e0 x27;
mov L0x40008299e8 x28;
(* mov	x20, x0                                     #! PC = 0x274877950168 *)
mov x20 x0;
(* mov	x19, x1                                     #! PC = 0x274877950172 *)
mov x19 x1;
(* mov	x21, x2                                     #! PC = 0x274877950176 *)
mov x21 x2;
(* #adrp	x0, 0x4000029000                           #! PC = 0x274877950180 *)
#adrp	%%x0, 0x4000029000                           #! 0x274877950180 = 0x274877950180;
(* ldr	x0, [x0, #4016]                             #! EA = L0x4000029fb0; Value = 0x000000400085d6d0; PC = 0x274877950184 *)
mov x0 L0x4000029fb0;
(* str	x0, [sp, #168]                              #! EA = L0x4000829a38; PC = 0x274877950188 *)
mov L0x4000829a38 x0;
(* ldr	x3, [x0]                                    #! EA = L0x400085d6d0; Value = 0xb9a8639ce44cac00; PC = 0x274877950192 *)
mov x3 L0x400085d6d0;
(* str	x3, [sp, #952]                              #! EA = L0x4000829d48; PC = 0x274877950196 *)
mov L0x4000829d48 x3;
(* mov	x3, #0x0                   	// #0           #! PC = 0x274877950200 *)
mov x3 0@uint64;
(* add	x27, sp, #0x178                             #! PC = 0x274877950204 *)
adds dontcare x27 sp 0x178@uint64;
(* mov	x0, x27                                     #! PC = 0x274877950208 *)
mov x0 x27;
(* #bl	0x4000008b3c <mul_fp2x2>                    #! PC = 0x274877950212 *)
#bl	0x4000008b3c <mul_fp2x2>                    #! 0x274877950212 = 0x274877950212;
(* stp	x29, x30, [sp, #-16]!                       #! EA = L0x4000829980; PC = 0x274877942588 *)
mov L0x4000829980 x29;
mov L0x4000829988 x30;
(* mov	x29, sp                                     #! PC = 0x274877942592 *)
mov x29 sp;
(* #adrp	x3, 0x4000029000                           #! PC = 0x274877942596 *)
#adrp	%%x3, 0x4000029000                           #! 0x274877942596 = 0x274877942596;
(* ldr	x3, [x3, #4056]                             #! EA = L0x4000029fd8; Value = 0x0000004000016928; PC = 0x274877942600 *)
mov x3 L0x4000029fd8;
(* #bl	0x40000143c0 <mul_382x>                     #! PC = 0x274877942604 *)
#bl	0x40000143c0 <mul_382x>                     #! 0x274877942604 = 0x274877942604;
(* #paciasp                                         #! PC = 0x274877989824 *)
#paciasp                                         #! 0x274877989824 = 0x274877989824;
(* stp	x29, x30, [sp, #-128]!                      #! EA = L0x4000829900; PC = 0x274877989828 *)
mov L0x4000829900 x29;
mov L0x4000829908 x30;
(* mov	x29, sp                                     #! PC = 0x274877989832 *)
mov x29 sp;
(* stp	x19, x20, [sp, #16]                         #! EA = L0x4000829910; PC = 0x274877989836 *)
mov L0x4000829910 x19;
mov L0x4000829918 x20;
(* stp	x21, x22, [sp, #32]                         #! EA = L0x4000829920; PC = 0x274877989840 *)
mov L0x4000829920 x21;
mov L0x4000829928 x22;
(* stp	x23, x24, [sp, #48]                         #! EA = L0x4000829930; PC = 0x274877989844 *)
mov L0x4000829930 x23;
mov L0x4000829938 x24;
(* stp	x25, x26, [sp, #64]                         #! EA = L0x4000829940; PC = 0x274877989848 *)
mov L0x4000829940 x25;
mov L0x4000829948 x26;
(* stp	x27, x28, [sp, #80]                         #! EA = L0x4000829950; PC = 0x274877989852 *)
mov L0x4000829950 x27;
mov L0x4000829958 x28;
(* sub	sp, sp, #0x60                               #! PC = 0x274877989856 *)
subc dontcare sp sp 0x60@uint64;
(* ldp	x11, x12, [x1]                              #! EA = L0x400082a048; Value = 0x0000004000841d60; PC = 0x274877989860 *)
mov x11 L0x400082a048;
mov x12 L0x400082a050;
(* mov	x26, x0                                     #! PC = 0x274877989864 *)
mov x26 x0;
(* ldp	x19, x20, [x1, #48]                         #! EA = L0x400082a078; Value = 0x000000400085de20; PC = 0x274877989868 *)
mov x19 L0x400082a078;
mov x20 L0x400082a080;
(* mov	x27, x1                                     #! PC = 0x274877989872 *)
mov x27 x1;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x400082a058; Value = 0x000000400085d6d8; PC = 0x274877989876 *)
mov x13 L0x400082a058;
mov x14 L0x400082a060;
(* mov	x28, x2                                     #! PC = 0x274877989880 *)
mov x28 x2;
(* ldp	x21, x22, [x1, #64]                         #! EA = L0x400082a088; Value = 0x0000000000000000; PC = 0x274877989884 *)
mov x21 L0x400082a088;
mov x22 L0x400082a090;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x400082a068; Value = 0x0000004000000040; PC = 0x274877989888 *)
mov x15 L0x400082a068;
mov x16 L0x400082a070;
(* adds	x5, x11, x19                               #! PC = 0x274877989892 *)
adds carry x5 x11 x19;
(* ldp	x23, x24, [x1, #80]                         #! EA = L0x400082a098; Value = 0x000000400082c000; PC = 0x274877989896 *)
mov x23 L0x400082a098;
mov x24 L0x400082a0a0;
(* adcs	x6, x12, x20                               #! PC = 0x274877989900 *)
adcs carry x6 x12 x20 carry;
(* ldp	x11, x12, [x2]                              #! EA = L0x400082a168; Value = 0xb9ff00400083c80b; PC = 0x274877989904 *)
mov x11 L0x400082a168;
mov x12 L0x400082a170;
(* adcs	x7, x13, x21                               #! PC = 0x274877989908 *)
adcs carry x7 x13 x21 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x400082a198; Value = 0x000000400085de20; PC = 0x274877989912 *)
mov x19 L0x400082a198;
mov x20 L0x400082a1a0;
(* adcs	x8, x14, x22                               #! PC = 0x274877989916 *)
adcs carry x8 x14 x22 carry;
(* ldp	x13, x14, [x2, #16]                         #! EA = L0x400082a178; Value = 0x6730d2e0f738100c; PC = 0x274877989920 *)
mov x13 L0x400082a178;
mov x14 L0x400082a180;
(* adcs	x9, x15, x23                               #! PC = 0x274877989924 *)
adcs carry x9 x15 x23 carry;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x400082a1a8; Value = 0x000000800106f748; PC = 0x274877989928 *)
mov x21 L0x400082a1a8;
mov x22 L0x400082a1b0;
(* adc	x10, x16, x24                               #! PC = 0x274877989932 *)
adc x10 x16 x24 carry;
(* ldp	x15, x16, [x2, #32]                         #! EA = L0x400082a188; Value = 0x4b1ba7f6434ecfb7; PC = 0x274877989936 *)
mov x15 L0x400082a188;
mov x16 L0x400082a190;
(* stp	x5, x6, [sp]                                #! EA = L0x40008298a0; PC = 0x274877989940 *)
mov L0x40008298a0 x5;
mov L0x40008298a8 x6;
(* adds	x5, x11, x19                               #! PC = 0x274877989944 *)
adds carry x5 x11 x19;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x400082a1b8; Value = 0x000000c0018b3d60; PC = 0x274877989948 *)
mov x23 L0x400082a1b8;
mov x24 L0x400082a1c0;
(* adcs	x6, x12, x20                               #! PC = 0x274877989952 *)
adcs carry x6 x12 x20 carry;
(* stp	x7, x8, [sp, #16]                           #! EA = L0x40008298b0; PC = 0x274877989956 *)
mov L0x40008298b0 x7;
mov L0x40008298b8 x8;
(* adcs	x7, x13, x21                               #! PC = 0x274877989960 *)
adcs carry x7 x13 x21 carry;
(* adcs	x8, x14, x22                               #! PC = 0x274877989964 *)
adcs carry x8 x14 x22 carry;
(* stp	x9, x10, [sp, #32]                          #! EA = L0x40008298c0; PC = 0x274877989968 *)
mov L0x40008298c0 x9;
mov L0x40008298c8 x10;
(* adcs	x9, x15, x23                               #! PC = 0x274877989972 *)
adcs carry x9 x15 x23 carry;
(* stp	x5, x6, [sp, #48]                           #! EA = L0x40008298d0; PC = 0x274877989976 *)
mov L0x40008298d0 x5;
mov L0x40008298d8 x6;
(* adc	x10, x16, x24                               #! PC = 0x274877989980 *)
adc x10 x16 x24 carry;
(* stp	x7, x8, [sp, #64]                           #! EA = L0x40008298e0; PC = 0x274877989984 *)
mov L0x40008298e0 x7;
mov L0x40008298e8 x8;
(* stp	x9, x10, [sp, #80]                          #! EA = L0x40008298f0; PC = 0x274877989988 *)
mov L0x40008298f0 x9;
mov L0x40008298f8 x10;

assert limbs 64 [L0x40008298a0, L0x40008298a8, L0x40008298b0,
                 L0x40008298b8, L0x40008298c0, L0x40008298c8] =
       (limbs 64 [a00, a01, a02, a03, a04, a05] +
        limbs 64 [a10, a11, a12, a13, a14, a15])
    && true;

assert limbs 64 [L0x40008298d0, L0x40008298d8, L0x40008298e0,
                 L0x40008298e8, L0x40008298f0, L0x40008298f8] =
       (limbs 64 [b00, b01, b02, b03, b04, b05] +
        limbs 64 [b10, b11, b12, b13, b14, b15])
    && true;


(* #bl	0x4000014120 <__mul_384>                    #! PC = 0x274877989992 *)
#bl	0x4000014120 <__mul_384>                    #! 0x274877989992 = 0x274877989992;
(* ldp	x11, x12, [x1]                              #! EA = L0x400082a048; Value = 0x0000004000841d60; PC = 0x274877989152 *)
mov x11 L0x400082a048;
mov x12 L0x400082a050;
(* ldr	x17, [x2]                                   #! EA = L0x400082a168; Value = 0xb9ff00400083c80b; PC = 0x274877989156 *)
mov x17 L0x400082a168;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x400082a058; Value = 0x000000400085d6d8; PC = 0x274877989160 *)
mov x13 L0x400082a058;
mov x14 L0x400082a060;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x400082a068; Value = 0x0000004000000040; PC = 0x274877989164 *)
mov x15 L0x400082a068;
mov x16 L0x400082a070;
(* mul	x19, x11, x17                               #! PC = 0x274877989168 *)
mull mulHx11x17 x19 x11 x17;
(* mul	x20, x12, x17                               #! PC = 0x274877989172 *)
mull mulHx12x17 x20 x12 x17;
(* mul	x21, x13, x17                               #! PC = 0x274877989176 *)
mull mulHx13x17 x21 x13 x17;
(* mul	x22, x14, x17                               #! PC = 0x274877989180 *)
mull mulHx14x17 x22 x14 x17;
(* mul	x23, x15, x17                               #! PC = 0x274877989184 *)
mull mulHx15x17 x23 x15 x17;
(* mul	x24, x16, x17                               #! PC = 0x274877989188 *)
mull mulHx16x17 x24 x16 x17;
(* umulh	x5, x11, x17                              #! PC = 0x274877989192 *)
mov x5 mulHx11x17;
(* umulh	x6, x12, x17                              #! PC = 0x274877989196 *)
mov x6 mulHx12x17;
(* umulh	x7, x13, x17                              #! PC = 0x274877989200 *)
mov x7 mulHx13x17;
(* umulh	x8, x14, x17                              #! PC = 0x274877989204 *)
mov x8 mulHx14x17;
(* umulh	x9, x15, x17                              #! PC = 0x274877989208 *)
mov x9 mulHx15x17;
(* umulh	x10, x16, x17                             #! PC = 0x274877989212 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #8]                               #! EA = L0x400082a170; Value = 0x1eac003eb1d9d667; PC = 0x274877989216 *)
mov x17 L0x400082a170;
(* str	x19, [x0]                                   #! EA = L0x4000829b08; PC = 0x274877989220 *)
mov L0x4000829b08 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989224 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989228 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989232 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989236 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989240 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989244 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989248 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989252 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989256 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989260 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, xzr, x10                               #! PC = 0x274877989264 *)
adc x24 0@uint64 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989268 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989272 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989276 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989280 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989284 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989288 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989292 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989296 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989300 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989304 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989308 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989312 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989316 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #16]                              #! EA = L0x400082a178; Value = 0x6730d2e0f738100c; PC = 0x274877989320 *)
mov x17 L0x400082a178;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989324 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #8]                               #! EA = L0x4000829b10; PC = 0x274877989328 *)
mov L0x4000829b10 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989332 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989336 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989340 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989344 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989348 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989352 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989356 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989360 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989364 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989368 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989372 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989376 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989380 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989384 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989388 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989392 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989396 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989400 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989404 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989408 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989412 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989416 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989420 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989424 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #24]                              #! EA = L0x400082a180; Value = 0x64774bc4f407ecd7; PC = 0x274877989428 *)
mov x17 L0x400082a180;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989432 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #16]                              #! EA = L0x4000829b18; PC = 0x274877989436 *)
mov L0x4000829b18 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989440 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989444 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989448 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989452 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989456 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989460 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989464 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989468 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989472 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989476 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989480 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989484 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989488 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989492 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989496 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989500 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989504 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989508 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989512 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989516 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989520 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989524 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989528 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989532 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #32]                              #! EA = L0x400082a188; Value = 0x4b1ba7f6434ecfb7; PC = 0x274877989536 *)
mov x17 L0x400082a188;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989540 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #24]                              #! EA = L0x4000829b20; PC = 0x274877989544 *)
mov L0x4000829b20 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989548 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989552 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989556 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989560 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989564 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989568 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989572 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989576 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989580 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989584 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989588 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989592 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989596 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989600 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989604 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989608 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989612 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989616 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989620 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989624 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989628 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989632 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989636 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989640 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #40]                              #! EA = L0x400082a190; Value = 0x1a0111ea397cdfcb; PC = 0x274877989644 *)
mov x17 L0x400082a190;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989648 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #32]                              #! EA = L0x4000829b28; PC = 0x274877989652 *)
mov L0x4000829b28 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989656 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989660 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989664 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989668 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989672 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989676 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989680 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989684 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989688 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989692 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989696 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989700 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989704 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989708 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989712 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989716 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989720 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989724 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989728 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989732 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989736 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989740 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989744 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989748 *)
mov x10 mulHx16x17;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989752 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #40]                              #! EA = L0x4000829b30; PC = 0x274877989756 *)
mov L0x4000829b30 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989760 *)
adds carry x19 x20 x5;
(* adcs	x20, x21, x6                               #! PC = 0x274877989764 *)
adcs carry x20 x21 x6 carry;
(* adcs	x21, x22, x7                               #! PC = 0x274877989768 *)
adcs carry x21 x22 x7 carry;
(* adcs	x22, x23, x8                               #! PC = 0x274877989772 *)
adcs carry x22 x23 x8 carry;
(* adcs	x23, x24, x9                               #! PC = 0x274877989776 *)
adcs carry x23 x24 x9 carry;
(* adc	x24, x25, x10                               #! PC = 0x274877989780 *)
adc x24 x25 x10 carry;
(* stp	x19, x20, [x0, #48]                         #! EA = L0x4000829b38; PC = 0x274877989784 *)
mov L0x4000829b38 x19;
mov L0x4000829b40 x20;
(* stp	x21, x22, [x0, #64]                         #! EA = L0x4000829b48; PC = 0x274877989788 *)
mov L0x4000829b48 x21;
mov L0x4000829b50 x22;
(* stp	x23, x24, [x0, #80]                         #! EA = L0x4000829b58; PC = 0x274877989792 *)
mov L0x4000829b58 x23;
mov L0x4000829b60 x24;
(* #ret                                            #! PC = 0x274877989796 *)
#ret                                            #! 0x274877989796 = 0x274877989796;

(* mul_384(ret->re, a->re, b->re) *)

assert limbs 64 [L0x4000829b08, L0x4000829b10, L0x4000829b18,
                 L0x4000829b20, L0x4000829b28, L0x4000829b30,
                 L0x4000829b38, L0x4000829b40, L0x4000829b48,
                 L0x4000829b50, L0x4000829b58, L0x4000829b60] =
       ((limbs 64 [a00, a01, a02, a03, a04, a05]) *
        (limbs 64 [b00, b01, b02, b03, b04, b05]))
    && limbs 64 [L0x4000829b38, L0x4000829b40, L0x4000829b48,
                 L0x4000829b50, L0x4000829b58, L0x4000829b60] <u
       limbs 64 [m0, m1, m2, m3, m4, m5];

(* mov	x1, sp                                      #! PC = 0x274877989996 *)
mov x1 sp;
(* add	x2, sp, #0x30                               #! PC = 0x274877990000 *)
adds dontcare x2 sp 0x30@uint64;
(* add	x0, x26, #0x60                              #! PC = 0x274877990004 *)
adds dontcare x0 x26 0x60@uint64;
(* #bl	0x4000014120 <__mul_384>                    #! PC = 0x274877990008 *)
#bl	0x4000014120 <__mul_384>                    #! 0x274877990008 = 0x274877990008;
(* ldp	x11, x12, [x1]                              #! EA = L0x40008298a0; Value = 0x000000800109fb80; PC = 0x274877989152 *)
mov x11 L0x40008298a0;
mov x12 L0x40008298a8;
(* ldr	x17, [x2]                                   #! EA = L0x40008298d0; Value = 0xb9ff00800109a62b; PC = 0x274877989156 *)
mov x17 L0x40008298d0;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x40008298b0; Value = 0x000000400085d6d8; PC = 0x274877989160 *)
mov x13 L0x40008298b0;
mov x14 L0x40008298b8;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x40008298c0; Value = 0x000000800082c040; PC = 0x274877989164 *)
mov x15 L0x40008298c0;
mov x16 L0x40008298c8;
(* mul	x19, x11, x17                               #! PC = 0x274877989168 *)
mull mulHx11x17 x19 x11 x17;
(* mul	x20, x12, x17                               #! PC = 0x274877989172 *)
mull mulHx12x17 x20 x12 x17;
(* mul	x21, x13, x17                               #! PC = 0x274877989176 *)
mull mulHx13x17 x21 x13 x17;
(* mul	x22, x14, x17                               #! PC = 0x274877989180 *)
mull mulHx14x17 x22 x14 x17;
(* mul	x23, x15, x17                               #! PC = 0x274877989184 *)
mull mulHx15x17 x23 x15 x17;
(* mul	x24, x16, x17                               #! PC = 0x274877989188 *)
mull mulHx16x17 x24 x16 x17;
(* umulh	x5, x11, x17                              #! PC = 0x274877989192 *)
mov x5 mulHx11x17;
(* umulh	x6, x12, x17                              #! PC = 0x274877989196 *)
mov x6 mulHx12x17;
(* umulh	x7, x13, x17                              #! PC = 0x274877989200 *)
mov x7 mulHx13x17;
(* umulh	x8, x14, x17                              #! PC = 0x274877989204 *)
mov x8 mulHx14x17;
(* umulh	x9, x15, x17                              #! PC = 0x274877989208 *)
mov x9 mulHx15x17;
(* umulh	x10, x16, x17                             #! PC = 0x274877989212 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #8]                               #! EA = L0x40008298d8; Value = 0x1eac00beb2df26f8; PC = 0x274877989216 *)
mov x17 L0x40008298d8;
(* str	x19, [x0]                                   #! EA = L0x4000829b68; PC = 0x274877989220 *)
mov L0x4000829b68 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989224 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989228 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989232 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989236 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989240 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989244 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989248 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989252 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989256 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989260 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, xzr, x10                               #! PC = 0x274877989264 *)
adc x24 0@uint64 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989268 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989272 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989276 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989280 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989284 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989288 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989292 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989296 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989300 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989304 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989308 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989312 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989316 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #16]                              #! EA = L0x40008298e0; Value = 0x6730d360f83f0754; PC = 0x274877989320 *)
mov x17 L0x40008298e0;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989324 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #8]                               #! EA = L0x4000829b70; PC = 0x274877989328 *)
mov L0x4000829b70 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989332 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989336 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989340 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989344 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989348 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989352 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989356 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989360 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989364 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989368 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989372 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989376 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989380 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989384 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989388 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989392 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989396 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989400 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989404 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989408 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989412 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989416 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989420 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989424 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #24]                              #! EA = L0x40008298e8; Value = 0x64774c44f513a40f; PC = 0x274877989428 *)
mov x17 L0x40008298e8;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989432 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #16]                              #! EA = L0x4000829b78; PC = 0x274877989436 *)
mov L0x4000829b78 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989440 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989444 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989448 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989452 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989456 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989460 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989464 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989468 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989472 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989476 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989480 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989484 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989488 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989492 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989496 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989500 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989504 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989508 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989512 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989516 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989520 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989524 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989528 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989532 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #32]                              #! EA = L0x40008298f0; Value = 0x4b1ba8b644da0d17; PC = 0x274877989536 *)
mov x17 L0x40008298f0;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989540 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #24]                              #! EA = L0x4000829b80; PC = 0x274877989544 *)
mov L0x4000829b80 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989548 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989552 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989556 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989560 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989564 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989568 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989572 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989576 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989580 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989584 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989588 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989592 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989596 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989600 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989604 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989608 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989612 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989616 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989620 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989624 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989628 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989632 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989636 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989640 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #40]                              #! EA = L0x40008298f8; Value = 0x1a01126a3a85ade3; PC = 0x274877989644 *)
mov x17 L0x40008298f8;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989648 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #32]                              #! EA = L0x4000829b88; PC = 0x274877989652 *)
mov L0x4000829b88 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989656 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989660 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989664 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989668 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989672 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989676 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989680 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989684 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989688 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989692 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989696 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989700 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989704 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989708 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989712 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989716 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989720 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989724 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989728 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989732 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989736 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989740 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989744 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989748 *)
mov x10 mulHx16x17;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989752 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #40]                              #! EA = L0x4000829b90; PC = 0x274877989756 *)
mov L0x4000829b90 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989760 *)
adds carry x19 x20 x5;
(* adcs	x20, x21, x6                               #! PC = 0x274877989764 *)
adcs carry x20 x21 x6 carry;
(* adcs	x21, x22, x7                               #! PC = 0x274877989768 *)
adcs carry x21 x22 x7 carry;
(* adcs	x22, x23, x8                               #! PC = 0x274877989772 *)
adcs carry x22 x23 x8 carry;
(* adcs	x23, x24, x9                               #! PC = 0x274877989776 *)
adcs carry x23 x24 x9 carry;
(* adc	x24, x25, x10                               #! PC = 0x274877989780 *)
adc x24 x25 x10 carry;
(* stp	x19, x20, [x0, #48]                         #! EA = L0x4000829b98; PC = 0x274877989784 *)
mov L0x4000829b98 x19;
mov L0x4000829ba0 x20;
(* stp	x21, x22, [x0, #64]                         #! EA = L0x4000829ba8; PC = 0x274877989788 *)
mov L0x4000829ba8 x21;
mov L0x4000829bb0 x22;
(* stp	x23, x24, [x0, #80]                         #! EA = L0x4000829bb8; PC = 0x274877989792 *)
mov L0x4000829bb8 x23;
mov L0x4000829bc0 x24;
(* #ret                                            #! PC = 0x274877989796 *)
#ret                                            #! 0x274877989796 = 0x274877989796;

(*  mul_384(ret->im, t0, t1) *)

assert limbs 64 [L0x4000829b68, L0x4000829b70, L0x4000829b78,
                 L0x4000829b80, L0x4000829b88, L0x4000829b90,
                 L0x4000829b98, L0x4000829ba0, L0x4000829ba8,
                 L0x4000829bb0, L0x4000829bb8, L0x4000829bc0] =
       (((limbs 64 [a00, a01, a02, a03, a04, a05]) +
         (limbs 64 [a10, a11, a12, a13, a14, a15])) *
        ((limbs 64 [b00, b01, b02, b03, b04, b05]) +
         (limbs 64 [b10, b11, b12, b13, b14, b15])))
    && limbs 64 [L0x4000829b98, L0x4000829ba0, L0x4000829ba8,
                 L0x4000829bb0, L0x4000829bb8, L0x4000829bc0] <u
       limbs 64 [m0, m1, m2, m3, m4, m5];

(* add	x1, x27, #0x30                              #! PC = 0x274877990012 *)
adds dontcare x1 x27 0x30@uint64;
(* add	x2, x28, #0x30                              #! PC = 0x274877990016 *)
adds dontcare x2 x28 0x30@uint64;
(* mov	x0, sp                                      #! PC = 0x274877990020 *)
mov x0 sp;
(* #bl	0x4000014120 <__mul_384>                    #! PC = 0x274877990024 *)
#bl	0x4000014120 <__mul_384>                    #! 0x274877990024 = 0x274877990024;
(* ldp	x11, x12, [x1]                              #! EA = L0x400082a078; Value = 0x000000400085de20; PC = 0x274877989152 *)
mov x11 L0x400082a078;
mov x12 L0x400082a080;
(* ldr	x17, [x2]                                   #! EA = L0x400082a198; Value = 0x000000400085de20; PC = 0x274877989156 *)
mov x17 L0x400082a198;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x400082a088; Value = 0x0000000000000000; PC = 0x274877989160 *)
mov x13 L0x400082a088;
mov x14 L0x400082a090;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x400082a098; Value = 0x000000400082c000; PC = 0x274877989164 *)
mov x15 L0x400082a098;
mov x16 L0x400082a0a0;
(* mul	x19, x11, x17                               #! PC = 0x274877989168 *)
mull mulHx11x17 x19 x11 x17;
(* mul	x20, x12, x17                               #! PC = 0x274877989172 *)
mull mulHx12x17 x20 x12 x17;
(* mul	x21, x13, x17                               #! PC = 0x274877989176 *)
mull mulHx13x17 x21 x13 x17;
(* mul	x22, x14, x17                               #! PC = 0x274877989180 *)
mull mulHx14x17 x22 x14 x17;
(* mul	x23, x15, x17                               #! PC = 0x274877989184 *)
mull mulHx15x17 x23 x15 x17;
(* mul	x24, x16, x17                               #! PC = 0x274877989188 *)
mull mulHx16x17 x24 x16 x17;
(* umulh	x5, x11, x17                              #! PC = 0x274877989192 *)
mov x5 mulHx11x17;
(* umulh	x6, x12, x17                              #! PC = 0x274877989196 *)
mov x6 mulHx12x17;
(* umulh	x7, x13, x17                              #! PC = 0x274877989200 *)
mov x7 mulHx13x17;
(* umulh	x8, x14, x17                              #! PC = 0x274877989204 *)
mov x8 mulHx14x17;
(* umulh	x9, x15, x17                              #! PC = 0x274877989208 *)
mov x9 mulHx15x17;
(* umulh	x10, x16, x17                             #! PC = 0x274877989212 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #8]                               #! EA = L0x400082a1a0; Value = 0x0000008001055091; PC = 0x274877989216 *)
mov x17 L0x400082a1a0;
(* str	x19, [x0]                                   #! EA = L0x40008298a0; PC = 0x274877989220 *)
mov L0x40008298a0 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989224 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989228 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989232 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989236 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989240 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989244 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989248 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989252 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989256 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989260 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, xzr, x10                               #! PC = 0x274877989264 *)
adc x24 0@uint64 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989268 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989272 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989276 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989280 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989284 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989288 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989292 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989296 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989300 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989304 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989308 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989312 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989316 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #16]                              #! EA = L0x400082a1a8; Value = 0x000000800106f748; PC = 0x274877989320 *)
mov x17 L0x400082a1a8;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989324 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #8]                               #! EA = L0x40008298a8; PC = 0x274877989328 *)
mov L0x40008298a8 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989332 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989336 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989340 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989344 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989348 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989352 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989356 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989360 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989364 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989368 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989372 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989376 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989380 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989384 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989388 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989392 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989396 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989400 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989404 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989408 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989412 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989416 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989420 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989424 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #24]                              #! EA = L0x400082a1b0; Value = 0x00000080010bb738; PC = 0x274877989428 *)
mov x17 L0x400082a1b0;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989432 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #16]                              #! EA = L0x40008298b0; PC = 0x274877989436 *)
mov L0x40008298b0 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989440 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989444 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989448 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989452 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989456 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989460 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989464 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989468 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989472 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989476 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989480 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989484 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989488 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989492 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989496 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989500 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989504 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989508 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989512 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989516 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989520 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989524 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989528 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989532 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #32]                              #! EA = L0x400082a1b8; Value = 0x000000c0018b3d60; PC = 0x274877989536 *)
mov x17 L0x400082a1b8;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989540 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #24]                              #! EA = L0x40008298b8; PC = 0x274877989544 *)
mov L0x40008298b8 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989548 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989552 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989556 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989560 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989564 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989568 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989572 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989576 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989580 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989584 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989588 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989592 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989596 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989600 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989604 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989608 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989612 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989616 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989620 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989624 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989628 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989632 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989636 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989640 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #40]                              #! EA = L0x400082a1c0; Value = 0x000000800108ce18; PC = 0x274877989644 *)
mov x17 L0x400082a1c0;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989648 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #32]                              #! EA = L0x40008298c0; PC = 0x274877989652 *)
mov L0x40008298c0 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989656 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989660 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989664 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989668 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989672 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989676 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989680 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989684 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989688 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989692 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989696 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989700 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989704 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989708 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989712 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989716 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989720 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989724 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989728 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989732 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989736 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989740 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989744 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989748 *)
mov x10 mulHx16x17;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989752 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #40]                              #! EA = L0x40008298c8; PC = 0x274877989756 *)
mov L0x40008298c8 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989760 *)
adds carry x19 x20 x5;
(* adcs	x20, x21, x6                               #! PC = 0x274877989764 *)
adcs carry x20 x21 x6 carry;
(* adcs	x21, x22, x7                               #! PC = 0x274877989768 *)
adcs carry x21 x22 x7 carry;
(* adcs	x22, x23, x8                               #! PC = 0x274877989772 *)
adcs carry x22 x23 x8 carry;
(* adcs	x23, x24, x9                               #! PC = 0x274877989776 *)
adcs carry x23 x24 x9 carry;
(* adc	x24, x25, x10                               #! PC = 0x274877989780 *)
adc x24 x25 x10 carry;
(* stp	x19, x20, [x0, #48]                         #! EA = L0x40008298d0; PC = 0x274877989784 *)
mov L0x40008298d0 x19;
mov L0x40008298d8 x20;
(* stp	x21, x22, [x0, #64]                         #! EA = L0x40008298e0; PC = 0x274877989788 *)
mov L0x40008298e0 x21;
mov L0x40008298e8 x22;
(* stp	x23, x24, [x0, #80]                         #! EA = L0x40008298f0; PC = 0x274877989792 *)
mov L0x40008298f0 x23;
mov L0x40008298f8 x24;
(* #ret                                            #! PC = 0x274877989796 *)
#ret                                            #! 0x274877989796 = 0x274877989796;

(*  mul_384(tx, a->im, b->im) *)

assert limbs 64 [L0x40008298a0, L0x40008298a8, L0x40008298b0,
                 L0x40008298b8, L0x40008298c0, L0x40008298c8,
                 L0x40008298d0, L0x40008298d8, L0x40008298e0,
                 L0x40008298e8, L0x40008298f0, L0x40008298f8] =
       ((limbs 64 [a10, a11, a12, a13, a14, a15]) *
        (limbs 64 [b10, b11, b12, b13, b14, b15]))
    && limbs 64 [L0x4000829b98, L0x4000829ba0, L0x4000829ba8,
                 L0x4000829bb0, L0x4000829bb8, L0x4000829bc0] <u
       limbs 64 [m0, m1, m2, m3, m4, m5];

(* ldp	x5, x6, [x3]                                #! EA = L0x4000016928; Value = 0xb9feffffffffaaab; PC = 0x274877990028 *)
mov x5 L0x4000016928;
mov x6 L0x4000016930;
(* ldp	x7, x8, [x3, #16]                           #! EA = L0x4000016938; Value = 0x6730d2a0f6b0f624; PC = 0x274877990032 *)
mov x7 L0x4000016938;
mov x8 L0x4000016940;
(* ldp	x9, x10, [x3, #32]                          #! EA = L0x4000016948; Value = 0x4b1ba7b6434bacd7; PC = 0x274877990036 *)
mov x9 L0x4000016948;
mov x10 L0x4000016950;
(* add	x1, x26, #0x60                              #! PC = 0x274877990040 *)
adds dontcare x1 x26 0x60@uint64;
(* mov	x2, sp                                      #! PC = 0x274877990044 *)
mov x2 sp;
(* add	x0, x26, #0x60                              #! PC = 0x274877990048 *)
adds dontcare x0 x26 0x60@uint64;
(* #bl	0x4000012fa0 <__sub_mod_384x384>            #! PC = 0x274877990052 *)
#bl	0x4000012fa0 <__sub_mod_384x384>            #! 0x274877990052 = 0x274877990052;

rcut and [limbs 64 [L0x40008298d0, L0x40008298d8, L0x40008298e0,
                    L0x40008298e8, L0x40008298f0, L0x40008298f8] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829b38, L0x4000829b40, L0x4000829b48,
                    L0x4000829b50, L0x4000829b58, L0x4000829b60] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829b98, L0x4000829ba0, L0x4000829ba8,
                    L0x4000829bb0, L0x4000829bb8, L0x4000829bc0] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
          m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
          m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64
     ] prove with precondition;

ghost L0x4000829b68o@uint64, L0x4000829b70o@uint64, L0x4000829b78o@uint64,
      L0x4000829b80o@uint64, L0x4000829b88o@uint64, L0x4000829b90o@uint64,
      L0x4000829b98o@uint64, L0x4000829ba0o@uint64, L0x4000829ba8o@uint64,
      L0x4000829bb0o@uint64, L0x4000829bb8o@uint64, L0x4000829bc0o@uint64 :
      and [L0x4000829b68o=L0x4000829b68, L0x4000829b70o=L0x4000829b70,
           L0x4000829b78o=L0x4000829b78, L0x4000829b80o=L0x4000829b80,
           L0x4000829b88o=L0x4000829b88, L0x4000829b90o=L0x4000829b90,
           L0x4000829b98o=L0x4000829b98, L0x4000829ba0o=L0x4000829ba0,
           L0x4000829ba8o=L0x4000829ba8, L0x4000829bb0o=L0x4000829bb0,
           L0x4000829bb8o=L0x4000829bb8, L0x4000829bc0o=L0x4000829bc0]
   && and [L0x4000829b68o=L0x4000829b68, L0x4000829b70o=L0x4000829b70,
           L0x4000829b78o=L0x4000829b78, L0x4000829b80o=L0x4000829b80,
           L0x4000829b88o=L0x4000829b88, L0x4000829b90o=L0x4000829b90,
           L0x4000829b98o=L0x4000829b98, L0x4000829ba0o=L0x4000829ba0,
           L0x4000829ba8o=L0x4000829ba8, L0x4000829bb0o=L0x4000829bb0,
           L0x4000829bb8o=L0x4000829bb8, L0x4000829bc0o=L0x4000829bc0];

(* ldp	x11, x12, [x1]                              #! EA = L0x4000829b68; Value = 0x0e51e981fd423e80; PC = 0x274877984672 *)
mov x11 L0x4000829b68;
mov x12 L0x4000829b70;
(* ldp	x19, x20, [x2]                              #! EA = L0x40008298a0; Value = 0x42ef56008dfb8400; PC = 0x274877984676 *)
mov x19 L0x40008298a0;
mov x20 L0x40008298a8;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829b78; Value = 0xe854a01c05df1f9c; PC = 0x274877984680 *)
mov x13 L0x4000829b78;
mov x14 L0x4000829b80;
(* subs	x11, x11, x19                              #! PC = 0x274877984684 *)
subc carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x40008298b0; Value = 0x84ad6c02a4bcc991; PC = 0x274877984688 *)
mov x21 L0x40008298b0;
mov x22 L0x40008298b8;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984692 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829b88; Value = 0x97569c04a6b1e95f; PC = 0x274877984696 *)
mov x15 L0x4000829b88;
mov x16 L0x4000829b90;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984700 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x40008298c0; Value = 0x095e8b8d0764c338; PC = 0x274877984704 *)
mov x23 L0x40008298c0;
mov x24 L0x40008298c8;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984708 *)
sbcs carry x14 x14 x22 carry;
(* stp	x11, x12, [x0]                              #! EA = L0x4000829b68; PC = 0x274877984712 *)
mov L0x4000829b68 x11;
mov L0x4000829b70 x12;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984716 *)
sbcs carry x15 x15 x23 carry;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0x4000829b98; Value = 0x0726a73423d05ebc; PC = 0x274877984720 *)
mov x11 L0x4000829b98;
mov x12 L0x4000829ba0;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984724 *)
sbcs carry x16 x16 x24 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x40008298d0; Value = 0x831e58cecd0f0e19; PC = 0x274877984728 *)
mov x19 L0x40008298d0;
mov x20 L0x40008298d8;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x4000829b78; PC = 0x274877984732 *)
mov L0x4000829b78 x13;
mov L0x4000829b80 x14;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0x4000829ba8; Value = 0x5696f712f0f27b01; PC = 0x274877984736 *)
mov x13 L0x4000829ba8;
mov x14 L0x4000829bb0;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x40008298e0; Value = 0xc4e021dd98c82000; PC = 0x274877984740 *)
mov x21 L0x40008298e0;
mov x22 L0x40008298e8;
(* sbcs	x11, x11, x19                              #! PC = 0x274877984744 *)
sbcs carry x11 x11 x19 carry;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x4000829b88; PC = 0x274877984748 *)
mov L0x4000829b88 x15;
mov L0x4000829b90 x16;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984752 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #80]                         #! EA = L0x4000829bb8; Value = 0xea09a5c90f499a2d; PC = 0x274877984756 *)
mov x15 L0x4000829bb8;
mov x16 L0x4000829bc0;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984760 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x40008298f0; Value = 0x0000000000002000; PC = 0x274877984764 *)
mov x23 L0x40008298f0;
mov x24 L0x40008298f8;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984768 *)
sbcs carry x14 x14 x22 carry;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984772 *)
sbcs carry x15 x15 x23 carry;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984776 *)
sbcs carry x16 x16 x24 carry;
(* ngc	x17, xzr                                    #! PC = 0x274877984780 *)
cmov x17 carry 0@uint64 0xffffffffffffffff@uint64;
(* and	x19, x5, x17                                #! PC = 0x274877984784 *)
and x19@uint64 x5 x17;
(* and	x20, x6, x17                                #! PC = 0x274877984788 *)
and x20@uint64 x6 x17;
(* adds	x11, x11, x19                              #! PC = 0x274877984792 *)
adds carry x11 x11 x19;
(* and	x21, x7, x17                                #! PC = 0x274877984796 *)
and x21@uint64 x7 x17;
(* adcs	x12, x12, x20                              #! PC = 0x274877984800 *)
adcs carry x12 x12 x20 carry;
(* and	x22, x8, x17                                #! PC = 0x274877984804 *)
and x22@uint64 x8 x17;
(* adcs	x13, x13, x21                              #! PC = 0x274877984808 *)
adcs carry x13 x13 x21 carry;
(* and	x23, x9, x17                                #! PC = 0x274877984812 *)
and x23@uint64 x9 x17;
(* adcs	x14, x14, x22                              #! PC = 0x274877984816 *)
adcs carry x14 x14 x22 carry;
(* and	x24, x10, x17                               #! PC = 0x274877984820 *)
and x24@uint64 x10 x17;
(* adcs	x15, x15, x23                              #! PC = 0x274877984824 *)
adcs carry x15 x15 x23 carry;
(* stp	x11, x12, [x0, #48]                         #! EA = L0x4000829b98; PC = 0x274877984828 *)
mov L0x4000829b98 x11;
mov L0x4000829ba0 x12;
(* adc	x16, x16, x24                               #! PC = 0x274877984832 *)
adcs dontcare x16 x16 x24 carry;
(* stp	x13, x14, [x0, #64]                         #! EA = L0x4000829ba8; PC = 0x274877984836 *)
mov L0x4000829ba8 x13;
mov L0x4000829bb0 x14;
(* stp	x15, x16, [x0, #80]                         #! EA = L0x4000829bb8; PC = 0x274877984840 *)
mov L0x4000829bb8 x15;
mov L0x4000829bc0 x16;
(* #ret                                            #! PC = 0x274877984844 *)
#ret                                            #! 0x274877984844 = 0x274877984844;

(* ret->im -= tx *)

assert true
    && eqmod ((limbs 64 [L0x4000829b68, L0x4000829b70, L0x4000829b78,
                         L0x4000829b80, L0x4000829b88, L0x4000829b90,
                         L0x4000829b98, L0x4000829ba0, L0x4000829ba8,
                         L0x4000829bb0, L0x4000829bb8, L0x4000829bc0]) +
              (limbs 64 [L0x40008298a0, L0x40008298a8, L0x40008298b0,
                         L0x40008298b8, L0x40008298c0, L0x40008298c8,
                         L0x40008298d0, L0x40008298d8, L0x40008298e0,
                         L0x40008298e8, L0x40008298f0, L0x40008298f8]))
             (limbs 64 [L0x4000829b68o, L0x4000829b70o, L0x4000829b78o,
                        L0x4000829b80o, L0x4000829b88o, L0x4000829b90o,
                        L0x4000829b98o, L0x4000829ba0o, L0x4000829ba8o,
                        L0x4000829bb0o, L0x4000829bb8o, L0x4000829bc0o])
             (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                          m0,   m1,   m2,   m3,   m4,   m5]);

assume eqmod ((limbs 64 [L0x4000829b68, L0x4000829b70, L0x4000829b78,
                         L0x4000829b80, L0x4000829b88, L0x4000829b90,
                         L0x4000829b98, L0x4000829ba0, L0x4000829ba8,
                         L0x4000829bb0, L0x4000829bb8, L0x4000829bc0]) +
              (limbs 64 [L0x40008298a0, L0x40008298a8, L0x40008298b0,
                         L0x40008298b8, L0x40008298c0, L0x40008298c8,
                         L0x40008298d0, L0x40008298d8, L0x40008298e0,
                         L0x40008298e8, L0x40008298f0, L0x40008298f8]))
             (limbs 64 [L0x4000829b68o, L0x4000829b70o, L0x4000829b78o,
                        L0x4000829b80o, L0x4000829b88o, L0x4000829b90o,
                        L0x4000829b98o, L0x4000829ba0o, L0x4000829ba8o,
                        L0x4000829bb0o, L0x4000829bb8o, L0x4000829bc0o])
             (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5])
    && true;

(* add	x2, x26, #0x0                               #! PC = 0x274877990056 *)
adds dontcare x2 x26 0@uint64;
(* #bl	0x4000012fa0 <__sub_mod_384x384>            #! PC = 0x274877990060 *)
#bl	0x4000012fa0 <__sub_mod_384x384>            #! 0x274877990060 = 0x274877990060;

rcut and [limbs 64 [L0x4000829b98, L0x4000829ba0, L0x4000829ba8,
                    L0x4000829bb0, L0x4000829bb8, L0x4000829bc0] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
          m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
          m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64
     ];
                   

ghost L0x4000829b68p@uint64, L0x4000829b70p@uint64, L0x4000829b78p@uint64,
      L0x4000829b80p@uint64, L0x4000829b88p@uint64, L0x4000829b90p@uint64,
      L0x4000829b98p@uint64, L0x4000829ba0p@uint64, L0x4000829ba8p@uint64,
      L0x4000829bb0p@uint64, L0x4000829bb8p@uint64, L0x4000829bc0p@uint64 :
      and [L0x4000829b68p=L0x4000829b68, L0x4000829b70p=L0x4000829b70,
           L0x4000829b78p=L0x4000829b78, L0x4000829b80p=L0x4000829b80,
           L0x4000829b88p=L0x4000829b88, L0x4000829b90p=L0x4000829b90,
           L0x4000829b98p=L0x4000829b98, L0x4000829ba0p=L0x4000829ba0,
           L0x4000829ba8p=L0x4000829ba8, L0x4000829bb0p=L0x4000829bb0,
           L0x4000829bb8p=L0x4000829bb8, L0x4000829bc0p=L0x4000829bc0]
   && and [L0x4000829b68p=L0x4000829b68, L0x4000829b70p=L0x4000829b70,
           L0x4000829b78p=L0x4000829b78, L0x4000829b80p=L0x4000829b80,
           L0x4000829b88p=L0x4000829b88, L0x4000829b90p=L0x4000829b90,
           L0x4000829b98p=L0x4000829b98, L0x4000829ba0p=L0x4000829ba0,
           L0x4000829ba8p=L0x4000829ba8, L0x4000829bb0p=L0x4000829bb0,
           L0x4000829bb8p=L0x4000829bb8, L0x4000829bc0p=L0x4000829bc0];

(* ldp	x11, x12, [x1]                              #! EA = L0x4000829b68; Value = 0xcb6293816f46ba80; PC = 0x274877984672 *)
mov x11 L0x4000829b68;
mov x12 L0x4000829b70;
(* ldp	x19, x20, [x2]                              #! EA = L0x4000829b08; Value = 0xe4999ec244c04320; PC = 0x274877984676 *)
mov x19 L0x4000829b08;
mov x20 L0x4000829b10;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829b78; Value = 0x63a734196122560b; PC = 0x274877984680 *)
mov x13 L0x4000829b78;
mov x14 L0x4000829b80;
(* subs	x11, x11, x19                              #! PC = 0x274877984684 *)
subc carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x4000829b18; Value = 0x6022a7a092e38e24; PC = 0x274877984688 *)
mov x21 L0x4000829b18;
mov x22 L0x4000829b20;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984692 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829b88; Value = 0x8df810779f4d2626; PC = 0x274877984696 *)
mov x15 L0x4000829b88;
mov x16 L0x4000829b90;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984700 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x4000829b28; Value = 0xbd75406c0ae7d06a; PC = 0x274877984704 *)
mov x23 L0x4000829b28;
mov x24 L0x4000829b30;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984708 *)
sbcs carry x14 x14 x22 carry;
(* stp	x11, x12, [x0]                              #! EA = L0x4000829b68; PC = 0x274877984712 *)
mov L0x4000829b68 x11;
mov L0x4000829b70 x12;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984716 *)
sbcs carry x15 x15 x23 carry;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0x4000829b98; Value = 0x84084e6556c150a3; PC = 0x274877984720 *)
mov x11 L0x4000829b98;
mov x12 L0x4000829ba0;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984724 *)
sbcs carry x16 x16 x24 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x4000829b38; Value = 0xd52e13157bc223ca; PC = 0x274877984728 *)
mov x19 L0x4000829b38;
mov x20 L0x4000829b40;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x4000829b78; PC = 0x274877984732 *)
mov L0x4000829b78 x13;
mov L0x4000829b80 x14;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0x4000829ba8; Value = 0x91b6d535582a5b01; PC = 0x274877984736 *)
mov x13 L0x4000829ba8;
mov x14 L0x4000829bb0;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x4000829b48; Value = 0xce869cf71ac389dc; PC = 0x274877984740 *)
mov x21 L0x4000829b48;
mov x22 L0x4000829b50;
(* sbcs	x11, x11, x19                              #! PC = 0x274877984744 *)
sbcs carry x11 x11 x19 carry;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x4000829b88; PC = 0x274877984748 *)
mov L0x4000829b88 x15;
mov L0x4000829b90 x16;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984752 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #80]                         #! EA = L0x4000829bb8; Value = 0xea09a5c90f497a2d; PC = 0x274877984756 *)
mov x15 L0x4000829bb8;
mov x16 L0x4000829bc0;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984760 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x4000829b58; Value = 0xea09a14285a858ba; PC = 0x274877984764 *)
mov x23 L0x4000829b58;
mov x24 L0x4000829b60;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984768 *)
sbcs carry x14 x14 x22 carry;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984772 *)
sbcs carry x15 x15 x23 carry;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984776 *)
sbcs carry x16 x16 x24 carry;
(* ngc	x17, xzr                                    #! PC = 0x274877984780 *)
cmov x17 carry 0@uint64 0xffffffffffffffff@uint64;
(* and	x19, x5, x17                                #! PC = 0x274877984784 *)
and x19@uint64 x5 x17;
(* and	x20, x6, x17                                #! PC = 0x274877984788 *)
and x20@uint64 x6 x17;
(* adds	x11, x11, x19                              #! PC = 0x274877984792 *)
adds carry x11 x11 x19;
(* and	x21, x7, x17                                #! PC = 0x274877984796 *)
and x21@uint64 x7 x17;
(* adcs	x12, x12, x20                              #! PC = 0x274877984800 *)
adcs carry x12 x12 x20 carry;
(* and	x22, x8, x17                                #! PC = 0x274877984804 *)
and x22@uint64 x8 x17;
(* adcs	x13, x13, x21                              #! PC = 0x274877984808 *)
adcs carry x13 x13 x21 carry;
(* and	x23, x9, x17                                #! PC = 0x274877984812 *)
and x23@uint64 x9 x17;
(* adcs	x14, x14, x22                              #! PC = 0x274877984816 *)
adcs carry x14 x14 x22 carry;
(* and	x24, x10, x17                               #! PC = 0x274877984820 *)
and x24@uint64 x10 x17;
(* adcs	x15, x15, x23                              #! PC = 0x274877984824 *)
adcs carry x15 x15 x23 carry;
(* stp	x11, x12, [x0, #48]                         #! EA = L0x4000829b98; PC = 0x274877984828 *)
mov L0x4000829b98 x11;
mov L0x4000829ba0 x12;
(* adc	x16, x16, x24                               #! PC = 0x274877984832 *)
adcs dontcare x16 x16 x24 carry;
(* stp	x13, x14, [x0, #64]                         #! EA = L0x4000829ba8; PC = 0x274877984836 *)
mov L0x4000829ba8 x13;
mov L0x4000829bb0 x14;
(* stp	x15, x16, [x0, #80]                         #! EA = L0x4000829bb8; PC = 0x274877984840 *)
mov L0x4000829bb8 x15;
mov L0x4000829bc0 x16;
(* #ret                                            #! PC = 0x274877984844 *)
#ret                                            #! 0x274877984844 = 0x274877984844;

(* ret->im -= ret->re *)

assert true
    && eqmod ((limbs 64 [L0x4000829b68, L0x4000829b70, L0x4000829b78,
                         L0x4000829b80, L0x4000829b88, L0x4000829b90,
                         L0x4000829b98, L0x4000829ba0, L0x4000829ba8,
                         L0x4000829bb0, L0x4000829bb8, L0x4000829bc0]) +
              (limbs 64 [L0x4000829b08, L0x4000829b10, L0x4000829b18,
                         L0x4000829b20, L0x4000829b28, L0x4000829b30,
                         L0x4000829b38, L0x4000829b40, L0x4000829b48,
                         L0x4000829b50, L0x4000829b58, L0x4000829b60]))
             (limbs 64 [L0x4000829b68p, L0x4000829b70p, L0x4000829b78p,
                        L0x4000829b80p, L0x4000829b88p, L0x4000829b90p,
                        L0x4000829b98p, L0x4000829ba0p, L0x4000829ba8p,
                        L0x4000829bb0p, L0x4000829bb8p, L0x4000829bc0p])
             (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                          m0,   m1,   m2,   m3,   m4,   m5]);

assume eqmod ((limbs 64 [L0x4000829b68, L0x4000829b70, L0x4000829b78,
                         L0x4000829b80, L0x4000829b88, L0x4000829b90,
                         L0x4000829b98, L0x4000829ba0, L0x4000829ba8,
                         L0x4000829bb0, L0x4000829bb8, L0x4000829bc0]) +
              (limbs 64 [L0x4000829b08, L0x4000829b10, L0x4000829b18,
                         L0x4000829b20, L0x4000829b28, L0x4000829b30,
                         L0x4000829b38, L0x4000829b40, L0x4000829b48,
                         L0x4000829b50, L0x4000829b58, L0x4000829b60]))
             (limbs 64 [L0x4000829b68p, L0x4000829b70p, L0x4000829b78p,
                        L0x4000829b80p, L0x4000829b88p, L0x4000829b90p,
                        L0x4000829b98p, L0x4000829ba0p, L0x4000829ba8p,
                        L0x4000829bb0p, L0x4000829bb8p, L0x4000829bc0p])
             (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5])
    && true;

(* add	x1, x26, #0x0                               #! PC = 0x274877990064 *)
adds dontcare x1 x26 0@uint64;
(* mov	x2, sp                                      #! PC = 0x274877990068 *)
mov x2 sp;
(* add	x0, x26, #0x0                               #! PC = 0x274877990072 *)
adds dontcare x0 x26 0@uint64;
(* #bl	0x4000012fa0 <__sub_mod_384x384>            #! PC = 0x274877990076 *)
#bl	0x4000012fa0 <__sub_mod_384x384>            #! 0x274877990076 = 0x274877990076;

rcut and [limbs 64 [L0x40008298d0, L0x40008298d8, L0x40008298e0,
                    L0x40008298e8, L0x40008298f0, L0x40008298f8] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829b38, L0x4000829b40, L0x4000829b48,
                    L0x4000829b50, L0x4000829b58, L0x4000829b60] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829b98, L0x4000829ba0, L0x4000829ba8,
                    L0x4000829bb0, L0x4000829bb8, L0x4000829bc0] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],

          m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
          m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
          m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64,
          limbs 64[a00,a01,a02,a03,a04,a05] <u limbs 64[m0,m1,m2,m3,m4,m5],
          limbs 64[a10,a11,a12,a13,a14,a15] <u limbs 64[m0,m1,m2,m3,m4,m5],
          limbs 64[a20,a21,a22,a23,a24,a25] <u limbs 64[m0,m1,m2,m3,m4,m5],
          limbs 64[a30,a31,a32,a33,a34,a35] <u limbs 64[m0,m1,m2,m3,m4,m5],
          limbs 64[a40,a41,a42,a43,a44,a45] <u limbs 64[m0,m1,m2,m3,m4,m5],
          limbs 64[a50,a51,a52,a53,a54,a55] <u limbs 64[m0,m1,m2,m3,m4,m5],
          limbs 64[b00,b01,b02,b03,b04,b05] <u limbs 64[m0,m1,m2,m3,m4,m5],
          limbs 64[b10,b11,b12,b13,b14,b15] <u limbs 64[m0,m1,m2,m3,m4,m5],
          limbs 64[b20,b21,b22,b23,b24,b25] <u limbs 64[m0,m1,m2,m3,m4,m5],
          limbs 64[b30,b31,b32,b33,b34,b35] <u limbs 64[m0,m1,m2,m3,m4,m5],
          limbs 64[b40,b41,b42,b43,b44,b45] <u limbs 64[m0,m1,m2,m3,m4,m5],
          limbs 64[b50,b51,b52,b53,b54,b55] <u limbs 64[m0,m1,m2,m3,m4,m5]
     ] prove with all cuts, precondition;

ghost L0x4000829b08o@uint64, L0x4000829b10o@uint64, L0x4000829b18o@uint64,
      L0x4000829b20o@uint64, L0x4000829b28o@uint64, L0x4000829b30o@uint64,
      L0x4000829b38o@uint64, L0x4000829b40o@uint64, L0x4000829b48o@uint64,
      L0x4000829b50o@uint64, L0x4000829b58o@uint64, L0x4000829b60o@uint64 :
      and [L0x4000829b08o=L0x4000829b08, L0x4000829b10o=L0x4000829b10,
           L0x4000829b18o=L0x4000829b18, L0x4000829b20o=L0x4000829b20,
           L0x4000829b28o=L0x4000829b28, L0x4000829b30o=L0x4000829b30,
           L0x4000829b38o=L0x4000829b38, L0x4000829b40o=L0x4000829b40,
           L0x4000829b48o=L0x4000829b48, L0x4000829b50o=L0x4000829b50,
           L0x4000829b58o=L0x4000829b58, L0x4000829b60o=L0x4000829b60]
   && and [L0x4000829b08o=L0x4000829b08, L0x4000829b10o=L0x4000829b10,
           L0x4000829b18o=L0x4000829b18, L0x4000829b20o=L0x4000829b20,
           L0x4000829b28o=L0x4000829b28, L0x4000829b30o=L0x4000829b30,
           L0x4000829b38o=L0x4000829b38, L0x4000829b40o=L0x4000829b40,
           L0x4000829b48o=L0x4000829b48, L0x4000829b50o=L0x4000829b50,
           L0x4000829b58o=L0x4000829b58, L0x4000829b60o=L0x4000829b60];

(* ldp	x11, x12, [x1]                              #! EA = L0x4000829b08; Value = 0xe4999ec244c04320; PC = 0x274877984672 *)
mov x11 L0x4000829b08;
mov x12 L0x4000829b10;
(* ldp	x19, x20, [x2]                              #! EA = L0x40008298a0; Value = 0x42ef56008dfb8400; PC = 0x274877984676 *)
mov x19 L0x40008298a0;
mov x20 L0x40008298a8;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829b18; Value = 0x6022a7a092e38e24; PC = 0x274877984680 *)
mov x13 L0x4000829b18;
mov x14 L0x4000829b20;
(* subs	x11, x11, x19                              #! PC = 0x274877984684 *)
subc carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x40008298b0; Value = 0x84ad6c02a4bcc991; PC = 0x274877984688 *)
mov x21 L0x40008298b0;
mov x22 L0x40008298b8;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984692 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829b28; Value = 0xbd75406c0ae7d06a; PC = 0x274877984696 *)
mov x15 L0x4000829b28;
mov x16 L0x4000829b30;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984700 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x40008298c0; Value = 0x095e8b8d0764c338; PC = 0x274877984704 *)
mov x23 L0x40008298c0;
mov x24 L0x40008298c8;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984708 *)
sbcs carry x14 x14 x22 carry;
(* stp	x11, x12, [x0]                              #! EA = L0x4000829b08; PC = 0x274877984712 *)
mov L0x4000829b08 x11;
mov L0x4000829b10 x12;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984716 *)
sbcs carry x15 x15 x23 carry;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0x4000829b38; Value = 0xd52e13157bc223ca; PC = 0x274877984720 *)
mov x11 L0x4000829b38;
mov x12 L0x4000829b40;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984724 *)
sbcs carry x16 x16 x24 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x40008298d0; Value = 0x831e58cecd0f0e19; PC = 0x274877984728 *)
mov x19 L0x40008298d0;
mov x20 L0x40008298d8;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x4000829b18; PC = 0x274877984732 *)
mov L0x4000829b18 x13;
mov L0x4000829b20 x14;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0x4000829b48; Value = 0xce869cf71ac389dc; PC = 0x274877984736 *)
mov x13 L0x4000829b48;
mov x14 L0x4000829b50;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x40008298e0; Value = 0xc4e021dd98c82000; PC = 0x274877984740 *)
mov x21 L0x40008298e0;
mov x22 L0x40008298e8;
(* sbcs	x11, x11, x19                              #! PC = 0x274877984744 *)
sbcs carry x11 x11 x19 carry;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x4000829b28; PC = 0x274877984748 *)
mov L0x4000829b28 x15;
mov L0x4000829b30 x16;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984752 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #80]                         #! EA = L0x4000829b58; Value = 0xea09a14285a858ba; PC = 0x274877984756 *)
mov x15 L0x4000829b58;
mov x16 L0x4000829b60;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984760 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x40008298f0; Value = 0x0000000000002000; PC = 0x274877984764 *)
mov x23 L0x40008298f0;
mov x24 L0x40008298f8;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984768 *)
sbcs carry x14 x14 x22 carry;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984772 *)
sbcs carry x15 x15 x23 carry;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984776 *)
sbcs carry x16 x16 x24 carry;
(* ngc	x17, xzr                                    #! PC = 0x274877984780 *)
cmov x17 carry 0@uint64 0xffffffffffffffff@uint64;
(* and	x19, x5, x17                                #! PC = 0x274877984784 *)
and x19@uint64 x5 x17;
(* and	x20, x6, x17                                #! PC = 0x274877984788 *)
and x20@uint64 x6 x17;
(* adds	x11, x11, x19                              #! PC = 0x274877984792 *)
adds carry x11 x11 x19;
(* and	x21, x7, x17                                #! PC = 0x274877984796 *)
and x21@uint64 x7 x17;
(* adcs	x12, x12, x20                              #! PC = 0x274877984800 *)
adcs carry x12 x12 x20 carry;
(* and	x22, x8, x17                                #! PC = 0x274877984804 *)
and x22@uint64 x8 x17;
(* adcs	x13, x13, x21                              #! PC = 0x274877984808 *)
adcs carry x13 x13 x21 carry;
(* and	x23, x9, x17                                #! PC = 0x274877984812 *)
and x23@uint64 x9 x17;
(* adcs	x14, x14, x22                              #! PC = 0x274877984816 *)
adcs carry x14 x14 x22 carry;
(* and	x24, x10, x17                               #! PC = 0x274877984820 *)
and x24@uint64 x10 x17;
(* adcs	x15, x15, x23                              #! PC = 0x274877984824 *)
adcs carry x15 x15 x23 carry;
(* stp	x11, x12, [x0, #48]                         #! EA = L0x4000829b38; PC = 0x274877984828 *)
mov L0x4000829b38 x11;
mov L0x4000829b40 x12;
(* adc	x16, x16, x24                               #! PC = 0x274877984832 *)
adcs dontcare x16 x16 x24 carry;
(* stp	x13, x14, [x0, #64]                         #! EA = L0x4000829b48; PC = 0x274877984836 *)
mov L0x4000829b48 x13;
mov L0x4000829b50 x14;
(* stp	x15, x16, [x0, #80]                         #! EA = L0x4000829b58; PC = 0x274877984840 *)
mov L0x4000829b58 x15;
mov L0x4000829b60 x16;
(* #ret                                            #! PC = 0x274877984844 *)
#ret                                            #! 0x274877984844 = 0x274877984844;

(* ret->re -= tx *)

assert true
    && eqmod ((limbs 64 [L0x4000829b08, L0x4000829b10, L0x4000829b18,
                         L0x4000829b20, L0x4000829b28, L0x4000829b30,
                         L0x4000829b38, L0x4000829b40, L0x4000829b48,
                         L0x4000829b50, L0x4000829b58, L0x4000829b60]) +
              (limbs 64 [L0x40008298a0, L0x40008298a8, L0x40008298b0,
                         L0x40008298b8, L0x40008298c0, L0x40008298c8,
                         L0x40008298d0, L0x40008298d8, L0x40008298e0,
                         L0x40008298e8, L0x40008298f0, L0x40008298f8]))
             (limbs 64 [L0x4000829b08o, L0x4000829b10o, L0x4000829b18o,
                        L0x4000829b20o, L0x4000829b28o, L0x4000829b30o,
                        L0x4000829b38o, L0x4000829b40o, L0x4000829b48o,
                        L0x4000829b50o, L0x4000829b58o, L0x4000829b60o])
             (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                          m0,   m1,   m2,   m3,   m4,   m5]);

assume eqmod ((limbs 64 [L0x4000829b08, L0x4000829b10, L0x4000829b18,
                         L0x4000829b20, L0x4000829b28, L0x4000829b30,
                         L0x4000829b38, L0x4000829b40, L0x4000829b48,
                         L0x4000829b50, L0x4000829b58, L0x4000829b60]) +
              (limbs 64 [L0x40008298a0, L0x40008298a8, L0x40008298b0,
                         L0x40008298b8, L0x40008298c0, L0x40008298c8,
                         L0x40008298d0, L0x40008298d8, L0x40008298e0,
                         L0x40008298e8, L0x40008298f0, L0x40008298f8]))
             (limbs 64 [L0x4000829b08o, L0x4000829b10o, L0x4000829b18o,
                        L0x4000829b20o, L0x4000829b28o, L0x4000829b30o,
                        L0x4000829b38o, L0x4000829b40o, L0x4000829b48o,
                        L0x4000829b50o, L0x4000829b58o, L0x4000829b60o])
             (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5])
    && true;

(* ldr	x30, [x29, #8]                              #! EA = L0x4000829908; Value = 0x001f004000008b50; PC = 0x274877990080 *)
mov x30 L0x4000829908;
(* add	sp, sp, #0x60                               #! PC = 0x274877990084 *)
adds dontcare sp sp 0x60@uint64;
(* ldp	x19, x20, [x29, #16]                        #! EA = L0x4000829910; Value = 0x000000400082a048; PC = 0x274877990088 *)
mov x19 L0x4000829910;
mov x20 L0x4000829918;
(* ldp	x21, x22, [x29, #32]                        #! EA = L0x4000829920; Value = 0x000000400082a168; PC = 0x274877990092 *)
mov x21 L0x4000829920;
mov x22 L0x4000829928;
(* ldp	x23, x24, [x29, #48]                        #! EA = L0x4000829930; Value = 0x000000400085d6d0; PC = 0x274877990096 *)
mov x23 L0x4000829930;
mov x24 L0x4000829938;
(* ldp	x25, x26, [x29, #64]                        #! EA = L0x4000829940; Value = 0x000000400085d6d0; PC = 0x274877990100 *)
mov x25 L0x4000829940;
mov x26 L0x4000829948;
(* ldp	x27, x28, [x29, #80]                        #! EA = L0x4000829950; Value = 0x0000004000829b08; PC = 0x274877990104 *)
mov x27 L0x4000829950;
mov x28 L0x4000829958;
(* ldr	x29, [sp], #128                             #! EA = L0x4000829900; Value = 0x0000004000829980; PC = 0x274877990108 *)
mov x29 L0x4000829900;
(* #autiasp                                         #! PC = 0x274877990112 *)
#autiasp                                         #! 0x274877990112 = 0x274877990112;
(* #ret                                            #! PC = 0x274877990116 *)
#ret                                            #! 0x274877990116 = 0x274877990116;

(* mul_382x(t0, a[0], b[0]) *)

assert eqmod ((limbs 64 [L0x4000829b08, L0x4000829b10, L0x4000829b18,
                         L0x4000829b20, L0x4000829b28, L0x4000829b30,
                         L0x4000829b38, L0x4000829b40, L0x4000829b48,
                         L0x4000829b50, L0x4000829b58, L0x4000829b60]) +
              (limbs 64 [L0x4000829b68, L0x4000829b70, L0x4000829b78,
                         L0x4000829b80, L0x4000829b88, L0x4000829b90,
                         L0x4000829b98, L0x4000829ba0, L0x4000829ba8,
                         L0x4000829bb0, L0x4000829bb8, L0x4000829bc0]) * U)
             ((limbs 64 [a00, a01, a02, a03, a04, a05] +
               limbs 64 [a10, a11, a12, a13, a14, a15] * U) *
              (limbs 64 [b00, b01, b02, b03, b04, b05] +
               limbs 64 [b10, b11, b12, b13, b14, b15] * U))
             [limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5],
              U * U + 1]
    && true;

(* ldp	x29, x30, [sp], #16                         #! EA = L0x4000829980; Value = 0x0000004000829990; PC = 0x274877942608 *)
mov x29 L0x4000829980;
mov x30 L0x4000829988;
(* #ret                                            #! PC = 0x274877942612 *)
#ret                                            #! 0x274877942612 = 0x274877942612;
(* add	x22, x19, #0x60                             #! PC = 0x274877950216 *)
adds dontcare x22 x19 0x60@uint64;
(* add	x26, x21, #0x60                             #! PC = 0x274877950220 *)
adds dontcare x26 x21 0x60@uint64;
(* add	x0, sp, #0x238                              #! PC = 0x274877950224 *)
adds dontcare x0 sp 0x238@uint64;
(* mov	x2, x26                                     #! PC = 0x274877950228 *)
mov x2 x26;
(* mov	x1, x22                                     #! PC = 0x274877950232 *)
mov x1 x22;
(* mov	x28, x0                                     #! PC = 0x274877950236 *)
mov x28 x0;
(* #bl	0x4000008b3c <mul_fp2x2>                    #! PC = 0x274877950240 *)
#bl	0x4000008b3c <mul_fp2x2>                    #! 0x274877950240 = 0x274877950240;
(* stp	x29, x30, [sp, #-16]!                       #! EA = L0x4000829980; PC = 0x274877942588 *)
mov L0x4000829980 x29;
mov L0x4000829988 x30;
(* mov	x29, sp                                     #! PC = 0x274877942592 *)
mov x29 sp;
(* #adrp	x3, 0x4000029000                           #! PC = 0x274877942596 *)
#adrp	%%x3, 0x4000029000                           #! 0x274877942596 = 0x274877942596;
(* ldr	x3, [x3, #4056]                             #! EA = L0x4000029fd8; Value = 0x0000004000016928; PC = 0x274877942600 *)
mov x3 L0x4000029fd8;
(* #bl	0x40000143c0 <mul_382x>                     #! PC = 0x274877942604 *)
#bl	0x40000143c0 <mul_382x>                     #! 0x274877942604 = 0x274877942604;
(* #paciasp                                         #! PC = 0x274877989824 *)
#paciasp                                         #! 0x274877989824 = 0x274877989824;
(* stp	x29, x30, [sp, #-128]!                      #! EA = L0x4000829900; PC = 0x274877989828 *)
mov L0x4000829900 x29;
mov L0x4000829908 x30;
(* mov	x29, sp                                     #! PC = 0x274877989832 *)
mov x29 sp;
(* stp	x19, x20, [sp, #16]                         #! EA = L0x4000829910; PC = 0x274877989836 *)
mov L0x4000829910 x19;
mov L0x4000829918 x20;
(* stp	x21, x22, [sp, #32]                         #! EA = L0x4000829920; PC = 0x274877989840 *)
mov L0x4000829920 x21;
mov L0x4000829928 x22;
(* stp	x23, x24, [sp, #48]                         #! EA = L0x4000829930; PC = 0x274877989844 *)
mov L0x4000829930 x23;
mov L0x4000829938 x24;
(* stp	x25, x26, [sp, #64]                         #! EA = L0x4000829940; PC = 0x274877989848 *)
mov L0x4000829940 x25;
mov L0x4000829948 x26;
(* stp	x27, x28, [sp, #80]                         #! EA = L0x4000829950; PC = 0x274877989852 *)
mov L0x4000829950 x27;
mov L0x4000829958 x28;
(* sub	sp, sp, #0x60                               #! PC = 0x274877989856 *)
subc dontcare sp sp 0x60@uint64;
(* ldp	x11, x12, [x1]                              #! EA = L0x400082a0a8; Value = 0x0000000000000000; PC = 0x274877989860 *)
mov x11 L0x400082a0a8;
mov x12 L0x400082a0b0;
(* mov	x26, x0                                     #! PC = 0x274877989864 *)
mov x26 x0;
(* ldp	x19, x20, [x1, #48]                         #! EA = L0x400082a0d8; Value = 0x000000800085d000; PC = 0x274877989868 *)
mov x19 L0x400082a0d8;
mov x20 L0x400082a0e0;
(* mov	x27, x1                                     #! PC = 0x274877989872 *)
mov x27 x1;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x400082a0b8; Value = 0x0000000000000000; PC = 0x274877989876 *)
mov x13 L0x400082a0b8;
mov x14 L0x400082a0c0;
(* mov	x28, x2                                     #! PC = 0x274877989880 *)
mov x28 x2;
(* ldp	x21, x22, [x1, #64]                         #! EA = L0x400082a0e8; Value = 0x000000800085ead0; PC = 0x274877989884 *)
mov x21 L0x400082a0e8;
mov x22 L0x400082a0f0;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x400082a0c8; Value = 0x0000008001086c68; PC = 0x274877989888 *)
mov x15 L0x400082a0c8;
mov x16 L0x400082a0d0;
(* adds	x5, x11, x19                               #! PC = 0x274877989892 *)
adds carry x5 x11 x19;
(* ldp	x23, x24, [x1, #80]                         #! EA = L0x400082a0f8; Value = 0x00000080010bb000; PC = 0x274877989896 *)
mov x23 L0x400082a0f8;
mov x24 L0x400082a100;
(* adcs	x6, x12, x20                               #! PC = 0x274877989900 *)
adcs carry x6 x12 x20 carry;
(* ldp	x11, x12, [x2]                              #! EA = L0x400082a1c8; Value = 0x0000000000000000; PC = 0x274877989904 *)
mov x11 L0x400082a1c8;
mov x12 L0x400082a1d0;
(* adcs	x7, x13, x21                               #! PC = 0x274877989908 *)
adcs carry x7 x13 x21 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x400082a1f8; Value = 0x0000004000000000; PC = 0x274877989912 *)
mov x19 L0x400082a1f8;
mov x20 L0x400082a200;
(* adcs	x8, x14, x22                               #! PC = 0x274877989916 *)
adcs carry x8 x14 x22 carry;
(* ldp	x13, x14, [x2, #16]                         #! EA = L0x400082a1d8; Value = 0x0000000000000000; PC = 0x274877989920 *)
mov x13 L0x400082a1d8;
mov x14 L0x400082a1e0;
(* adcs	x9, x15, x23                               #! PC = 0x274877989924 *)
adcs carry x9 x15 x23 carry;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x400082a208; Value = 0x000000400085ea90; PC = 0x274877989928 *)
mov x21 L0x400082a208;
mov x22 L0x400082a210;
(* adc	x10, x16, x24                               #! PC = 0x274877989932 *)
adc x10 x16 x24 carry;
(* ldp	x15, x16, [x2, #32]                         #! EA = L0x400082a1e8; Value = 0x0000004000845000; PC = 0x274877989936 *)
mov x15 L0x400082a1e8;
mov x16 L0x400082a1f0;
(* stp	x5, x6, [sp]                                #! EA = L0x40008298a0; PC = 0x274877989940 *)
mov L0x40008298a0 x5;
mov L0x40008298a8 x6;
(* adds	x5, x11, x19                               #! PC = 0x274877989944 *)
adds carry x5 x11 x19;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x400082a218; Value = 0x000000400085e000; PC = 0x274877989948 *)
mov x23 L0x400082a218;
mov x24 L0x400082a220;
(* adcs	x6, x12, x20                               #! PC = 0x274877989952 *)
adcs carry x6 x12 x20 carry;
(* stp	x7, x8, [sp, #16]                           #! EA = L0x40008298b0; PC = 0x274877989956 *)
mov L0x40008298b0 x7;
mov L0x40008298b8 x8;
(* adcs	x7, x13, x21                               #! PC = 0x274877989960 *)
adcs carry x7 x13 x21 carry;
(* adcs	x8, x14, x22                               #! PC = 0x274877989964 *)
adcs carry x8 x14 x22 carry;
(* stp	x9, x10, [sp, #32]                          #! EA = L0x40008298c0; PC = 0x274877989968 *)
mov L0x40008298c0 x9;
mov L0x40008298c8 x10;
(* adcs	x9, x15, x23                               #! PC = 0x274877989972 *)
adcs carry x9 x15 x23 carry;
(* stp	x5, x6, [sp, #48]                           #! EA = L0x40008298d0; PC = 0x274877989976 *)
mov L0x40008298d0 x5;
mov L0x40008298d8 x6;
(* adc	x10, x16, x24                               #! PC = 0x274877989980 *)
adc x10 x16 x24 carry;
(* stp	x7, x8, [sp, #64]                           #! EA = L0x40008298e0; PC = 0x274877989984 *)
mov L0x40008298e0 x7;
mov L0x40008298e8 x8;
(* stp	x9, x10, [sp, #80]                          #! EA = L0x40008298f0; PC = 0x274877989988 *)
mov L0x40008298f0 x9;
mov L0x40008298f8 x10;
(* #bl	0x4000014120 <__mul_384>                    #! PC = 0x274877989992 *)
#bl	0x4000014120 <__mul_384>                    #! 0x274877989992 = 0x274877989992;
(* ldp	x11, x12, [x1]                              #! EA = L0x400082a0a8; Value = 0x0000000000000000; PC = 0x274877989152 *)
mov x11 L0x400082a0a8;
mov x12 L0x400082a0b0;
(* ldr	x17, [x2]                                   #! EA = L0x400082a1c8; Value = 0x0000000000000000; PC = 0x274877989156 *)
mov x17 L0x400082a1c8;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x400082a0b8; Value = 0x0000000000000000; PC = 0x274877989160 *)
mov x13 L0x400082a0b8;
mov x14 L0x400082a0c0;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x400082a0c8; Value = 0x0000008001086c68; PC = 0x274877989164 *)
mov x15 L0x400082a0c8;
mov x16 L0x400082a0d0;
(* mul	x19, x11, x17                               #! PC = 0x274877989168 *)
mull mulHx11x17 x19 x11 x17;
(* mul	x20, x12, x17                               #! PC = 0x274877989172 *)
mull mulHx12x17 x20 x12 x17;
(* mul	x21, x13, x17                               #! PC = 0x274877989176 *)
mull mulHx13x17 x21 x13 x17;
(* mul	x22, x14, x17                               #! PC = 0x274877989180 *)
mull mulHx14x17 x22 x14 x17;
(* mul	x23, x15, x17                               #! PC = 0x274877989184 *)
mull mulHx15x17 x23 x15 x17;
(* mul	x24, x16, x17                               #! PC = 0x274877989188 *)
mull mulHx16x17 x24 x16 x17;
(* umulh	x5, x11, x17                              #! PC = 0x274877989192 *)
mov x5 mulHx11x17;
(* umulh	x6, x12, x17                              #! PC = 0x274877989196 *)
mov x6 mulHx12x17;
(* umulh	x7, x13, x17                              #! PC = 0x274877989200 *)
mov x7 mulHx13x17;
(* umulh	x8, x14, x17                              #! PC = 0x274877989204 *)
mov x8 mulHx14x17;
(* umulh	x9, x15, x17                              #! PC = 0x274877989208 *)
mov x9 mulHx15x17;
(* umulh	x10, x16, x17                             #! PC = 0x274877989212 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #8]                               #! EA = L0x400082a1d0; Value = 0x0000000000000000; PC = 0x274877989216 *)
mov x17 L0x400082a1d0;
(* str	x19, [x0]                                   #! EA = L0x4000829bc8; PC = 0x274877989220 *)
mov L0x4000829bc8 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989224 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989228 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989232 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989236 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989240 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989244 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989248 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989252 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989256 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989260 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, xzr, x10                               #! PC = 0x274877989264 *)
adc x24 0@uint64 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989268 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989272 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989276 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989280 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989284 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989288 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989292 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989296 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989300 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989304 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989308 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989312 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989316 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #16]                              #! EA = L0x400082a1d8; Value = 0x0000000000000000; PC = 0x274877989320 *)
mov x17 L0x400082a1d8;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989324 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #8]                               #! EA = L0x4000829bd0; PC = 0x274877989328 *)
mov L0x4000829bd0 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989332 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989336 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989340 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989344 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989348 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989352 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989356 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989360 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989364 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989368 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989372 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989376 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989380 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989384 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989388 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989392 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989396 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989400 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989404 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989408 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989412 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989416 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989420 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989424 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #24]                              #! EA = L0x400082a1e0; Value = 0x0000000000000000; PC = 0x274877989428 *)
mov x17 L0x400082a1e0;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989432 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #16]                              #! EA = L0x4000829bd8; PC = 0x274877989436 *)
mov L0x4000829bd8 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989440 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989444 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989448 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989452 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989456 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989460 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989464 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989468 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989472 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989476 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989480 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989484 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989488 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989492 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989496 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989500 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989504 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989508 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989512 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989516 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989520 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989524 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989528 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989532 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #32]                              #! EA = L0x400082a1e8; Value = 0x0000004000845000; PC = 0x274877989536 *)
mov x17 L0x400082a1e8;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989540 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #24]                              #! EA = L0x4000829be0; PC = 0x274877989544 *)
mov L0x4000829be0 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989548 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989552 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989556 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989560 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989564 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989568 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989572 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989576 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989580 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989584 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989588 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989592 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989596 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989600 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989604 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989608 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989612 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989616 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989620 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989624 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989628 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989632 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989636 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989640 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #40]                              #! EA = L0x400082a1f0; Value = 0x0000000000000000; PC = 0x274877989644 *)
mov x17 L0x400082a1f0;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989648 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #32]                              #! EA = L0x4000829be8; PC = 0x274877989652 *)
mov L0x4000829be8 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989656 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989660 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989664 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989668 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989672 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989676 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989680 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989684 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989688 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989692 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989696 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989700 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989704 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989708 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989712 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989716 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989720 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989724 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989728 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989732 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989736 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989740 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989744 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989748 *)
mov x10 mulHx16x17;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989752 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #40]                              #! EA = L0x4000829bf0; PC = 0x274877989756 *)
mov L0x4000829bf0 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989760 *)
adds carry x19 x20 x5;
(* adcs	x20, x21, x6                               #! PC = 0x274877989764 *)
adcs carry x20 x21 x6 carry;
(* adcs	x21, x22, x7                               #! PC = 0x274877989768 *)
adcs carry x21 x22 x7 carry;
(* adcs	x22, x23, x8                               #! PC = 0x274877989772 *)
adcs carry x22 x23 x8 carry;
(* adcs	x23, x24, x9                               #! PC = 0x274877989776 *)
adcs carry x23 x24 x9 carry;
(* adc	x24, x25, x10                               #! PC = 0x274877989780 *)
adc x24 x25 x10 carry;
(* stp	x19, x20, [x0, #48]                         #! EA = L0x4000829bf8; PC = 0x274877989784 *)
mov L0x4000829bf8 x19;
mov L0x4000829c00 x20;
(* stp	x21, x22, [x0, #64]                         #! EA = L0x4000829c08; PC = 0x274877989788 *)
mov L0x4000829c08 x21;
mov L0x4000829c10 x22;
(* stp	x23, x24, [x0, #80]                         #! EA = L0x4000829c18; PC = 0x274877989792 *)
mov L0x4000829c18 x23;
mov L0x4000829c20 x24;
(* #ret                                            #! PC = 0x274877989796 *)
#ret                                            #! 0x274877989796 = 0x274877989796;
(* mov	x1, sp                                      #! PC = 0x274877989996 *)
mov x1 sp;
(* add	x2, sp, #0x30                               #! PC = 0x274877990000 *)
adds dontcare x2 sp 0x30@uint64;
(* add	x0, x26, #0x60                              #! PC = 0x274877990004 *)
adds dontcare x0 x26 0x60@uint64;
(* #bl	0x4000014120 <__mul_384>                    #! PC = 0x274877990008 *)
#bl	0x4000014120 <__mul_384>                    #! 0x274877990008 = 0x274877990008;
(* ldp	x11, x12, [x1]                              #! EA = L0x40008298a0; Value = 0x000000800085d000; PC = 0x274877989152 *)
mov x11 L0x40008298a0;
mov x12 L0x40008298a8;
(* ldr	x17, [x2]                                   #! EA = L0x40008298d0; Value = 0x0000004000000000; PC = 0x274877989156 *)
mov x17 L0x40008298d0;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x40008298b0; Value = 0x000000800085ead0; PC = 0x274877989160 *)
mov x13 L0x40008298b0;
mov x14 L0x40008298b8;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x40008298c0; Value = 0x0000010002141c68; PC = 0x274877989164 *)
mov x15 L0x40008298c0;
mov x16 L0x40008298c8;
(* mul	x19, x11, x17                               #! PC = 0x274877989168 *)
mull mulHx11x17 x19 x11 x17;
(* mul	x20, x12, x17                               #! PC = 0x274877989172 *)
mull mulHx12x17 x20 x12 x17;
(* mul	x21, x13, x17                               #! PC = 0x274877989176 *)
mull mulHx13x17 x21 x13 x17;
(* mul	x22, x14, x17                               #! PC = 0x274877989180 *)
mull mulHx14x17 x22 x14 x17;
(* mul	x23, x15, x17                               #! PC = 0x274877989184 *)
mull mulHx15x17 x23 x15 x17;
(* mul	x24, x16, x17                               #! PC = 0x274877989188 *)
mull mulHx16x17 x24 x16 x17;
(* umulh	x5, x11, x17                              #! PC = 0x274877989192 *)
mov x5 mulHx11x17;
(* umulh	x6, x12, x17                              #! PC = 0x274877989196 *)
mov x6 mulHx12x17;
(* umulh	x7, x13, x17                              #! PC = 0x274877989200 *)
mov x7 mulHx13x17;
(* umulh	x8, x14, x17                              #! PC = 0x274877989204 *)
mov x8 mulHx14x17;
(* umulh	x9, x15, x17                              #! PC = 0x274877989208 *)
mov x9 mulHx15x17;
(* umulh	x10, x16, x17                             #! PC = 0x274877989212 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #8]                               #! EA = L0x40008298d8; Value = 0x0000000000000001; PC = 0x274877989216 *)
mov x17 L0x40008298d8;
(* str	x19, [x0]                                   #! EA = L0x4000829c28; PC = 0x274877989220 *)
mov L0x4000829c28 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989224 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989228 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989232 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989236 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989240 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989244 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989248 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989252 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989256 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989260 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, xzr, x10                               #! PC = 0x274877989264 *)
adc x24 0@uint64 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989268 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989272 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989276 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989280 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989284 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989288 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989292 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989296 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989300 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989304 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989308 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989312 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989316 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #16]                              #! EA = L0x40008298e0; Value = 0x000000400085ea90; PC = 0x274877989320 *)
mov x17 L0x40008298e0;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989324 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #8]                               #! EA = L0x4000829c30; PC = 0x274877989328 *)
mov L0x4000829c30 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989332 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989336 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989340 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989344 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989348 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989352 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989356 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989360 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989364 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989368 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989372 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989376 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989380 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989384 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989388 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989392 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989396 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989400 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989404 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989408 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989412 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989416 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989420 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989424 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #24]                              #! EA = L0x40008298e8; Value = 0x00000040009e2d00; PC = 0x274877989428 *)
mov x17 L0x40008298e8;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989432 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #16]                              #! EA = L0x4000829c38; PC = 0x274877989436 *)
mov L0x4000829c38 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989440 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989444 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989448 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989452 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989456 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989460 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989464 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989468 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989472 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989476 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989480 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989484 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989488 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989492 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989496 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989500 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989504 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989508 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989512 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989516 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989520 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989524 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989528 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989532 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #32]                              #! EA = L0x40008298f0; Value = 0x00000080010a3000; PC = 0x274877989536 *)
mov x17 L0x40008298f0;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989540 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #24]                              #! EA = L0x4000829c40; PC = 0x274877989544 *)
mov L0x4000829c40 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989548 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989552 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989556 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989560 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989564 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989568 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989572 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989576 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989580 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989584 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989588 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989592 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989596 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989600 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989604 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989608 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989612 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989616 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989620 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989624 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989628 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989632 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989636 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989640 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #40]                              #! EA = L0x40008298f8; Value = 0x0000004000000001; PC = 0x274877989644 *)
mov x17 L0x40008298f8;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989648 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #32]                              #! EA = L0x4000829c48; PC = 0x274877989652 *)
mov L0x4000829c48 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989656 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989660 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989664 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989668 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989672 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989676 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989680 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989684 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989688 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989692 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989696 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989700 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989704 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989708 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989712 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989716 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989720 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989724 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989728 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989732 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989736 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989740 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989744 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989748 *)
mov x10 mulHx16x17;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989752 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #40]                              #! EA = L0x4000829c50; PC = 0x274877989756 *)
mov L0x4000829c50 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989760 *)
adds carry x19 x20 x5;
(* adcs	x20, x21, x6                               #! PC = 0x274877989764 *)
adcs carry x20 x21 x6 carry;
(* adcs	x21, x22, x7                               #! PC = 0x274877989768 *)
adcs carry x21 x22 x7 carry;
(* adcs	x22, x23, x8                               #! PC = 0x274877989772 *)
adcs carry x22 x23 x8 carry;
(* adcs	x23, x24, x9                               #! PC = 0x274877989776 *)
adcs carry x23 x24 x9 carry;
(* adc	x24, x25, x10                               #! PC = 0x274877989780 *)
adc x24 x25 x10 carry;
(* stp	x19, x20, [x0, #48]                         #! EA = L0x4000829c58; PC = 0x274877989784 *)
mov L0x4000829c58 x19;
mov L0x4000829c60 x20;
(* stp	x21, x22, [x0, #64]                         #! EA = L0x4000829c68; PC = 0x274877989788 *)
mov L0x4000829c68 x21;
mov L0x4000829c70 x22;
(* stp	x23, x24, [x0, #80]                         #! EA = L0x4000829c78; PC = 0x274877989792 *)
mov L0x4000829c78 x23;
mov L0x4000829c80 x24;
(* #ret                                            #! PC = 0x274877989796 *)
#ret                                            #! 0x274877989796 = 0x274877989796;
(* add	x1, x27, #0x30                              #! PC = 0x274877990012 *)
adds dontcare x1 x27 0x30@uint64;
(* add	x2, x28, #0x30                              #! PC = 0x274877990016 *)
adds dontcare x2 x28 0x30@uint64;
(* mov	x0, sp                                      #! PC = 0x274877990020 *)
mov x0 sp;
(* #bl	0x4000014120 <__mul_384>                    #! PC = 0x274877990024 *)
#bl	0x4000014120 <__mul_384>                    #! 0x274877990024 = 0x274877990024;
(* ldp	x11, x12, [x1]                              #! EA = L0x400082a0d8; Value = 0x000000800085d000; PC = 0x274877989152 *)
mov x11 L0x400082a0d8;
mov x12 L0x400082a0e0;
(* ldr	x17, [x2]                                   #! EA = L0x400082a1f8; Value = 0x0000004000000000; PC = 0x274877989156 *)
mov x17 L0x400082a1f8;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x400082a0e8; Value = 0x000000800085ead0; PC = 0x274877989160 *)
mov x13 L0x400082a0e8;
mov x14 L0x400082a0f0;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x400082a0f8; Value = 0x00000080010bb000; PC = 0x274877989164 *)
mov x15 L0x400082a0f8;
mov x16 L0x400082a100;
(* mul	x19, x11, x17                               #! PC = 0x274877989168 *)
mull mulHx11x17 x19 x11 x17;
(* mul	x20, x12, x17                               #! PC = 0x274877989172 *)
mull mulHx12x17 x20 x12 x17;
(* mul	x21, x13, x17                               #! PC = 0x274877989176 *)
mull mulHx13x17 x21 x13 x17;
(* mul	x22, x14, x17                               #! PC = 0x274877989180 *)
mull mulHx14x17 x22 x14 x17;
(* mul	x23, x15, x17                               #! PC = 0x274877989184 *)
mull mulHx15x17 x23 x15 x17;
(* mul	x24, x16, x17                               #! PC = 0x274877989188 *)
mull mulHx16x17 x24 x16 x17;
(* umulh	x5, x11, x17                              #! PC = 0x274877989192 *)
mov x5 mulHx11x17;
(* umulh	x6, x12, x17                              #! PC = 0x274877989196 *)
mov x6 mulHx12x17;
(* umulh	x7, x13, x17                              #! PC = 0x274877989200 *)
mov x7 mulHx13x17;
(* umulh	x8, x14, x17                              #! PC = 0x274877989204 *)
mov x8 mulHx14x17;
(* umulh	x9, x15, x17                              #! PC = 0x274877989208 *)
mov x9 mulHx15x17;
(* umulh	x10, x16, x17                             #! PC = 0x274877989212 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #8]                               #! EA = L0x400082a200; Value = 0x0000000000000001; PC = 0x274877989216 *)
mov x17 L0x400082a200;
(* str	x19, [x0]                                   #! EA = L0x40008298a0; PC = 0x274877989220 *)
mov L0x40008298a0 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989224 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989228 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989232 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989236 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989240 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989244 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989248 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989252 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989256 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989260 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, xzr, x10                               #! PC = 0x274877989264 *)
adc x24 0@uint64 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989268 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989272 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989276 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989280 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989284 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989288 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989292 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989296 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989300 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989304 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989308 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989312 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989316 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #16]                              #! EA = L0x400082a208; Value = 0x000000400085ea90; PC = 0x274877989320 *)
mov x17 L0x400082a208;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989324 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #8]                               #! EA = L0x40008298a8; PC = 0x274877989328 *)
mov L0x40008298a8 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989332 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989336 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989340 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989344 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989348 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989352 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989356 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989360 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989364 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989368 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989372 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989376 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989380 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989384 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989388 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989392 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989396 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989400 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989404 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989408 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989412 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989416 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989420 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989424 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #24]                              #! EA = L0x400082a210; Value = 0x00000040009e2d00; PC = 0x274877989428 *)
mov x17 L0x400082a210;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989432 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #16]                              #! EA = L0x40008298b0; PC = 0x274877989436 *)
mov L0x40008298b0 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989440 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989444 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989448 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989452 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989456 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989460 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989464 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989468 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989472 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989476 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989480 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989484 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989488 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989492 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989496 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989500 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989504 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989508 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989512 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989516 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989520 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989524 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989528 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989532 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #32]                              #! EA = L0x400082a218; Value = 0x000000400085e000; PC = 0x274877989536 *)
mov x17 L0x400082a218;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989540 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #24]                              #! EA = L0x40008298b8; PC = 0x274877989544 *)
mov L0x40008298b8 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989548 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989552 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989556 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989560 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989564 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989568 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989572 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989576 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989580 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989584 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989588 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989592 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989596 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989600 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989604 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989608 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989612 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989616 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989620 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989624 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989628 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989632 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989636 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989640 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #40]                              #! EA = L0x400082a220; Value = 0x0000004000000001; PC = 0x274877989644 *)
mov x17 L0x400082a220;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989648 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #32]                              #! EA = L0x40008298c0; PC = 0x274877989652 *)
mov L0x40008298c0 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989656 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989660 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989664 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989668 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989672 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989676 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989680 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989684 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989688 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989692 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989696 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989700 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989704 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989708 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989712 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989716 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989720 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989724 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989728 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989732 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989736 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989740 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989744 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989748 *)
mov x10 mulHx16x17;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989752 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #40]                              #! EA = L0x40008298c8; PC = 0x274877989756 *)
mov L0x40008298c8 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989760 *)
adds carry x19 x20 x5;
(* adcs	x20, x21, x6                               #! PC = 0x274877989764 *)
adcs carry x20 x21 x6 carry;
(* adcs	x21, x22, x7                               #! PC = 0x274877989768 *)
adcs carry x21 x22 x7 carry;
(* adcs	x22, x23, x8                               #! PC = 0x274877989772 *)
adcs carry x22 x23 x8 carry;
(* adcs	x23, x24, x9                               #! PC = 0x274877989776 *)
adcs carry x23 x24 x9 carry;
(* adc	x24, x25, x10                               #! PC = 0x274877989780 *)
adc x24 x25 x10 carry;
(* stp	x19, x20, [x0, #48]                         #! EA = L0x40008298d0; PC = 0x274877989784 *)
mov L0x40008298d0 x19;
mov L0x40008298d8 x20;
(* stp	x21, x22, [x0, #64]                         #! EA = L0x40008298e0; PC = 0x274877989788 *)
mov L0x40008298e0 x21;
mov L0x40008298e8 x22;
(* stp	x23, x24, [x0, #80]                         #! EA = L0x40008298f0; PC = 0x274877989792 *)
mov L0x40008298f0 x23;
mov L0x40008298f8 x24;
(* #ret                                            #! PC = 0x274877989796 *)
#ret                                            #! 0x274877989796 = 0x274877989796;
(* ldp	x5, x6, [x3]                                #! EA = L0x4000016928; Value = 0xb9feffffffffaaab; PC = 0x274877990028 *)
mov x5 L0x4000016928;
mov x6 L0x4000016930;
(* ldp	x7, x8, [x3, #16]                           #! EA = L0x4000016938; Value = 0x6730d2a0f6b0f624; PC = 0x274877990032 *)
mov x7 L0x4000016938;
mov x8 L0x4000016940;
(* ldp	x9, x10, [x3, #32]                          #! EA = L0x4000016948; Value = 0x4b1ba7b6434bacd7; PC = 0x274877990036 *)
mov x9 L0x4000016948;
mov x10 L0x4000016950;
(* add	x1, x26, #0x60                              #! PC = 0x274877990040 *)
adds dontcare x1 x26 0x60@uint64;
(* mov	x2, sp                                      #! PC = 0x274877990044 *)
mov x2 sp;
(* add	x0, x26, #0x60                              #! PC = 0x274877990048 *)
adds dontcare x0 x26 0x60@uint64;
(* #bl	0x4000012fa0 <__sub_mod_384x384>            #! PC = 0x274877990052 *)
#bl	0x4000012fa0 <__sub_mod_384x384>            #! 0x274877990052 = 0x274877990052;

rcut and [limbs 64 [L0x40008298d0, L0x40008298d8, L0x40008298e0,
                    L0x40008298e8, L0x40008298f0, L0x40008298f8] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829bf8, L0x4000829c00, L0x4000829c08,
                    L0x4000829c10, L0x4000829c18, L0x4000829c20] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829c58, L0x4000829c60, L0x4000829c68,
                    L0x4000829c70, L0x4000829c78, L0x4000829c80] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829b38, L0x4000829b40, L0x4000829b48,
                    L0x4000829b50, L0x4000829b58, L0x4000829b60] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829b98, L0x4000829ba0, L0x4000829ba8,
                    L0x4000829bb0, L0x4000829bb8, L0x4000829bc0] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
          m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
          m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64
     ] prove with precondition;

ghost L0x4000829c28o@uint64, L0x4000829c30o@uint64, L0x4000829c38o@uint64,
      L0x4000829c40o@uint64, L0x4000829c48o@uint64, L0x4000829c50o@uint64,
      L0x4000829c58o@uint64, L0x4000829c60o@uint64, L0x4000829c68o@uint64,
      L0x4000829c70o@uint64, L0x4000829c78o@uint64, L0x4000829c80o@uint64 :
      and [L0x4000829c28o=L0x4000829c28, L0x4000829c30o=L0x4000829c30,
           L0x4000829c38o=L0x4000829c38, L0x4000829c40o=L0x4000829c40,
           L0x4000829c48o=L0x4000829c48, L0x4000829c50o=L0x4000829c50,
           L0x4000829c58o=L0x4000829c58, L0x4000829c60o=L0x4000829c60,
           L0x4000829c68o=L0x4000829c68, L0x4000829c70o=L0x4000829c70,
           L0x4000829c78o=L0x4000829c78, L0x4000829c80o=L0x4000829c80]
   && and [L0x4000829c28o=L0x4000829c28, L0x4000829c30o=L0x4000829c30,
           L0x4000829c38o=L0x4000829c38, L0x4000829c40o=L0x4000829c40,
           L0x4000829c48o=L0x4000829c48, L0x4000829c50o=L0x4000829c50,
           L0x4000829c58o=L0x4000829c58, L0x4000829c60o=L0x4000829c60,
           L0x4000829c68o=L0x4000829c68, L0x4000829c70o=L0x4000829c70,
           L0x4000829c78o=L0x4000829c78, L0x4000829c80o=L0x4000829c80];

(* ldp	x11, x12, [x1]                              #! EA = L0x4000829c28; Value = 0x2174000000000000; PC = 0x274877984672 *)
mov x11 L0x4000829c28;
mov x12 L0x4000829c30;
(* ldp	x19, x20, [x2]                              #! EA = L0x40008298a0; Value = 0x2174000000000000; PC = 0x274877984676 *)
mov x19 L0x40008298a0;
mov x20 L0x40008298a8;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829c38; Value = 0x85e4423fabe7f3a1; PC = 0x274877984680 *)
mov x13 L0x4000829c38;
mov x14 L0x4000829c40;
(* subs	x11, x11, x19                              #! PC = 0x274877984684 *)
subc carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x40008298b0; Value = 0x85e4423fabe7f3a1; PC = 0x274877984688 *)
mov x21 L0x40008298b0;
mov x22 L0x40008298b8;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984692 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829c48; Value = 0xf9bc60d06988a719; PC = 0x274877984696 *)
mov x15 L0x4000829c48;
mov x16 L0x4000829c50;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984700 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x40008298c0; Value = 0x540501675805ef09; PC = 0x274877984704 *)
mov x23 L0x40008298c0;
mov x24 L0x40008298c8;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984708 *)
sbcs carry x14 x14 x22 carry;
(* stp	x11, x12, [x0]                              #! EA = L0x4000829c28; PC = 0x274877984712 *)
mov L0x4000829c28 x11;
mov L0x4000829c30 x12;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984716 *)
sbcs carry x15 x15 x23 carry;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0x4000829c58; Value = 0x8b06150fb2dce324; PC = 0x274877984720 *)
mov x11 L0x4000829c58;
mov x12 L0x4000829c60;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984724 *)
sbcs carry x16 x16 x24 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x40008298d0; Value = 0x5a1c9acb7af4e8a4; PC = 0x274877984728 *)
mov x19 L0x40008298d0;
mov x20 L0x40008298d8;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x4000829c38; PC = 0x274877984732 *)
mov L0x4000829c38 x13;
mov L0x4000829c40 x14;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0x4000829c68; Value = 0x8400e4894bc15f1b; PC = 0x274877984736 *)
mov x13 L0x4000829c68;
mov x14 L0x4000829c70;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x40008298e0; Value = 0xd4f30efcabdae70a; PC = 0x274877984740 *)
mov x21 L0x40008298e0;
mov x22 L0x40008298e8;
(* sbcs	x11, x11, x19                              #! PC = 0x274877984744 *)
sbcs carry x11 x11 x19 carry;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x4000829c48; PC = 0x274877984748 *)
mov L0x4000829c48 x15;
mov L0x4000829c50 x16;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984752 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #80]                         #! EA = L0x4000829c78; Value = 0x000000c000006002; PC = 0x274877984756 *)
mov x15 L0x4000829c78;
mov x16 L0x4000829c80;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984760 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x40008298f0; Value = 0x000000c000003002; PC = 0x274877984764 *)
mov x23 L0x40008298f0;
mov x24 L0x40008298f8;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984768 *)
sbcs carry x14 x14 x22 carry;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984772 *)
sbcs carry x15 x15 x23 carry;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984776 *)
sbcs carry x16 x16 x24 carry;
(* ngc	x17, xzr                                    #! PC = 0x274877984780 *)
cmov x17 carry 0@uint64 0xffffffffffffffff@uint64;
(* and	x19, x5, x17                                #! PC = 0x274877984784 *)
and x19@uint64 x5 x17;
(* and	x20, x6, x17                                #! PC = 0x274877984788 *)
and x20@uint64 x6 x17;
(* adds	x11, x11, x19                              #! PC = 0x274877984792 *)
adds carry x11 x11 x19;
(* and	x21, x7, x17                                #! PC = 0x274877984796 *)
and x21@uint64 x7 x17;
(* adcs	x12, x12, x20                              #! PC = 0x274877984800 *)
adcs carry x12 x12 x20 carry;
(* and	x22, x8, x17                                #! PC = 0x274877984804 *)
and x22@uint64 x8 x17;
(* adcs	x13, x13, x21                              #! PC = 0x274877984808 *)
adcs carry x13 x13 x21 carry;
(* and	x23, x9, x17                                #! PC = 0x274877984812 *)
and x23@uint64 x9 x17;
(* adcs	x14, x14, x22                              #! PC = 0x274877984816 *)
adcs carry x14 x14 x22 carry;
(* and	x24, x10, x17                               #! PC = 0x274877984820 *)
and x24@uint64 x10 x17;
(* adcs	x15, x15, x23                              #! PC = 0x274877984824 *)
adcs carry x15 x15 x23 carry;
(* stp	x11, x12, [x0, #48]                         #! EA = L0x4000829c58; PC = 0x274877984828 *)
mov L0x4000829c58 x11;
mov L0x4000829c60 x12;
(* adc	x16, x16, x24                               #! PC = 0x274877984832 *)
adcs dontcare x16 x16 x24 carry;
(* stp	x13, x14, [x0, #64]                         #! EA = L0x4000829c68; PC = 0x274877984836 *)
mov L0x4000829c68 x13;
mov L0x4000829c70 x14;
(* stp	x15, x16, [x0, #80]                         #! EA = L0x4000829c78; PC = 0x274877984840 *)
mov L0x4000829c78 x15;
mov L0x4000829c80 x16;
(* #ret                                            #! PC = 0x274877984844 *)
#ret                                            #! 0x274877984844 = 0x274877984844;

assert true
    && eqmod ((limbs 64 [L0x4000829c28, L0x4000829c30, L0x4000829c38,
                         L0x4000829c40, L0x4000829c48, L0x4000829c50,
                         L0x4000829c58, L0x4000829c60, L0x4000829c68,
                         L0x4000829c70, L0x4000829c78, L0x4000829c80]) +
              (limbs 64 [L0x40008298a0, L0x40008298a8, L0x40008298b0,
                         L0x40008298b8, L0x40008298c0, L0x40008298c8,
                         L0x40008298d0, L0x40008298d8, L0x40008298e0,
                         L0x40008298e8, L0x40008298f0, L0x40008298f8]))
             (limbs 64 [L0x4000829c28o, L0x4000829c30o, L0x4000829c38o,
                        L0x4000829c40o, L0x4000829c48o, L0x4000829c50o,
                        L0x4000829c58o, L0x4000829c60o, L0x4000829c68o,
                        L0x4000829c70o, L0x4000829c78o, L0x4000829c80o])
             (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                          m0,   m1,   m2,   m3,   m4,   m5]);

assume eqmod ((limbs 64 [L0x4000829c28, L0x4000829c30, L0x4000829c38,
                         L0x4000829c40, L0x4000829c48, L0x4000829c50,
                         L0x4000829c58, L0x4000829c60, L0x4000829c68,
                         L0x4000829c70, L0x4000829c78, L0x4000829c80]) +
              (limbs 64 [L0x40008298a0, L0x40008298a8, L0x40008298b0,
                         L0x40008298b8, L0x40008298c0, L0x40008298c8,
                         L0x40008298d0, L0x40008298d8, L0x40008298e0,
                         L0x40008298e8, L0x40008298f0, L0x40008298f8]))
             (limbs 64 [L0x4000829c28o, L0x4000829c30o, L0x4000829c38o,
                        L0x4000829c40o, L0x4000829c48o, L0x4000829c50o,
                        L0x4000829c58o, L0x4000829c60o, L0x4000829c68o,
                        L0x4000829c70o, L0x4000829c78o, L0x4000829c80o])
             (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5])
    && true;

rcut and [limbs 64 [L0x4000829c58, L0x4000829c60, L0x4000829c68,
                    L0x4000829c70, L0x4000829c78, L0x4000829c80] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
          m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
          m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64
     ];

ghost L0x4000829c28p@uint64, L0x4000829c30p@uint64, L0x4000829c38p@uint64,
      L0x4000829c40p@uint64, L0x4000829c48p@uint64, L0x4000829c50p@uint64,
      L0x4000829c58p@uint64, L0x4000829c60p@uint64, L0x4000829c68p@uint64,
      L0x4000829c70p@uint64, L0x4000829c78p@uint64, L0x4000829c80p@uint64 :
      and [L0x4000829c28p=L0x4000829c28, L0x4000829c30p=L0x4000829c30,
           L0x4000829c38p=L0x4000829c38, L0x4000829c40p=L0x4000829c40,
           L0x4000829c48p=L0x4000829c48, L0x4000829c50p=L0x4000829c50,
           L0x4000829c58p=L0x4000829c58, L0x4000829c60p=L0x4000829c60,
           L0x4000829c68p=L0x4000829c68, L0x4000829c70p=L0x4000829c70,
           L0x4000829c78p=L0x4000829c78, L0x4000829c80p=L0x4000829c80]
   && and [L0x4000829c28p=L0x4000829c28, L0x4000829c30p=L0x4000829c30,
           L0x4000829c38p=L0x4000829c38, L0x4000829c40p=L0x4000829c40,
           L0x4000829c48p=L0x4000829c48, L0x4000829c50p=L0x4000829c50,
           L0x4000829c58p=L0x4000829c58, L0x4000829c60p=L0x4000829c60,
           L0x4000829c68p=L0x4000829c68, L0x4000829c70p=L0x4000829c70,
           L0x4000829c78p=L0x4000829c78, L0x4000829c80p=L0x4000829c80];

(* add	x2, x26, #0x0                               #! PC = 0x274877990056 *)
adds dontcare x2 x26 0@uint64;
(* #bl	0x4000012fa0 <__sub_mod_384x384>            #! PC = 0x274877990060 *)
#bl	0x4000012fa0 <__sub_mod_384x384>            #! 0x274877990060 = 0x274877990060;
(* ldp	x11, x12, [x1]                              #! EA = L0x4000829c28; Value = 0x0000000000000000; PC = 0x274877984672 *)
mov x11 L0x4000829c28;
mov x12 L0x4000829c30;
(* ldp	x19, x20, [x2]                              #! EA = L0x4000829bc8; Value = 0x0000000000000000; PC = 0x274877984676 *)
mov x19 L0x4000829bc8;
mov x20 L0x4000829bd0;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829c38; Value = 0x0000000000000000; PC = 0x274877984680 *)
mov x13 L0x4000829c38;
mov x14 L0x4000829c40;
(* subs	x11, x11, x19                              #! PC = 0x274877984684 *)
subc carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x4000829bd8; Value = 0x0000000000000000; PC = 0x274877984688 *)
mov x21 L0x4000829bd8;
mov x22 L0x4000829be0;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984692 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829c48; Value = 0xa5b75f691182b810; PC = 0x274877984696 *)
mov x15 L0x4000829c48;
mov x16 L0x4000829c50;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984700 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x4000829be8; Value = 0x0000000000000000; PC = 0x274877984704 *)
mov x23 L0x4000829be8;
mov x24 L0x4000829bf0;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984708 *)
sbcs carry x14 x14 x22 carry;
(* stp	x11, x12, [x0]                              #! EA = L0x4000829c28; PC = 0x274877984712 *)
mov L0x4000829c28 x11;
mov L0x4000829c30 x12;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984716 *)
sbcs carry x15 x15 x23 carry;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0x4000829c58; Value = 0x30e97a4437e7fa80; PC = 0x274877984720 *)
mov x11 L0x4000829c58;
mov x12 L0x4000829c60;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984724 *)
sbcs carry x16 x16 x24 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x4000829bf8; Value = 0x0000000000000000; PC = 0x274877984728 *)
mov x19 L0x4000829bf8;
mov x20 L0x4000829c00;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x4000829c38; PC = 0x274877984732 *)
mov L0x4000829c38 x13;
mov L0x4000829c40 x14;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0x4000829c68; Value = 0xaf0dd58c9fe67811; PC = 0x274877984736 *)
mov x13 L0x4000829c68;
mov x14 L0x4000829c70;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x4000829c08; Value = 0x8443a2aa87809000; PC = 0x274877984740 *)
mov x21 L0x4000829c08;
mov x22 L0x4000829c10;
(* sbcs	x11, x11, x19                              #! PC = 0x274877984744 *)
sbcs carry x11 x11 x19 carry;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x4000829c48; PC = 0x274877984748 *)
mov L0x4000829c48 x15;
mov L0x4000829c50 x16;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984752 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #80]                         #! EA = L0x4000829c78; Value = 0x0000000000003000; PC = 0x274877984756 *)
mov x15 L0x4000829c78;
mov x16 L0x4000829c80;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984760 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x4000829c18; Value = 0x0000000000000000; PC = 0x274877984764 *)
mov x23 L0x4000829c18;
mov x24 L0x4000829c20;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984768 *)
sbcs carry x14 x14 x22 carry;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984772 *)
sbcs carry x15 x15 x23 carry;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984776 *)
sbcs carry x16 x16 x24 carry;
(* ngc	x17, xzr                                    #! PC = 0x274877984780 *)
cmov x17 carry 0@uint64 0xffffffffffffffff@uint64;
(* and	x19, x5, x17                                #! PC = 0x274877984784 *)
and x19@uint64 x5 x17;
(* and	x20, x6, x17                                #! PC = 0x274877984788 *)
and x20@uint64 x6 x17;
(* adds	x11, x11, x19                              #! PC = 0x274877984792 *)
adds carry x11 x11 x19;
(* and	x21, x7, x17                                #! PC = 0x274877984796 *)
and x21@uint64 x7 x17;
(* adcs	x12, x12, x20                              #! PC = 0x274877984800 *)
adcs carry x12 x12 x20 carry;
(* and	x22, x8, x17                                #! PC = 0x274877984804 *)
and x22@uint64 x8 x17;
(* adcs	x13, x13, x21                              #! PC = 0x274877984808 *)
adcs carry x13 x13 x21 carry;
(* and	x23, x9, x17                                #! PC = 0x274877984812 *)
and x23@uint64 x9 x17;
(* adcs	x14, x14, x22                              #! PC = 0x274877984816 *)
adcs carry x14 x14 x22 carry;
(* and	x24, x10, x17                               #! PC = 0x274877984820 *)
and x24@uint64 x10 x17;
(* adcs	x15, x15, x23                              #! PC = 0x274877984824 *)
adcs carry x15 x15 x23 carry;
(* stp	x11, x12, [x0, #48]                         #! EA = L0x4000829c58; PC = 0x274877984828 *)
mov L0x4000829c58 x11;
mov L0x4000829c60 x12;
(* adc	x16, x16, x24                               #! PC = 0x274877984832 *)
adcs dontcare x16 x16 x24 carry;
(* stp	x13, x14, [x0, #64]                         #! EA = L0x4000829c68; PC = 0x274877984836 *)
mov L0x4000829c68 x13;
mov L0x4000829c70 x14;
(* stp	x15, x16, [x0, #80]                         #! EA = L0x4000829c78; PC = 0x274877984840 *)
mov L0x4000829c78 x15;
mov L0x4000829c80 x16;
(* #ret                                            #! PC = 0x274877984844 *)
#ret                                            #! 0x274877984844 = 0x274877984844;

assert true
    && eqmod ((limbs 64 [L0x4000829c28, L0x4000829c30, L0x4000829c38,
                         L0x4000829c40, L0x4000829c48, L0x4000829c50,
                         L0x4000829c58, L0x4000829c60, L0x4000829c68,
                         L0x4000829c70, L0x4000829c78, L0x4000829c80]) +
              (limbs 64 [L0x4000829bc8, L0x4000829bd0, L0x4000829bd8,
                         L0x4000829be0, L0x4000829be8, L0x4000829bf0,
                         L0x4000829bf8, L0x4000829c00, L0x4000829c08,
                         L0x4000829c10, L0x4000829c18, L0x4000829c20]))
             (limbs 64 [L0x4000829c28p, L0x4000829c30p, L0x4000829c38p,
                        L0x4000829c40p, L0x4000829c48p, L0x4000829c50p,
                        L0x4000829c58p, L0x4000829c60p, L0x4000829c68p,
                        L0x4000829c70p, L0x4000829c78p, L0x4000829c80p])
             (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                          m0,   m1,   m2,   m3,   m4,   m5]);

assume eqmod ((limbs 64 [L0x4000829c28, L0x4000829c30, L0x4000829c38,
                         L0x4000829c40, L0x4000829c48, L0x4000829c50,
                         L0x4000829c58, L0x4000829c60, L0x4000829c68,
                         L0x4000829c70, L0x4000829c78, L0x4000829c80]) +
              (limbs 64 [L0x4000829bc8, L0x4000829bd0, L0x4000829bd8,
                         L0x4000829be0, L0x4000829be8, L0x4000829bf0,
                         L0x4000829bf8, L0x4000829c00, L0x4000829c08,
                         L0x4000829c10, L0x4000829c18, L0x4000829c20]))
             (limbs 64 [L0x4000829c28p, L0x4000829c30p, L0x4000829c38p,
                        L0x4000829c40p, L0x4000829c48p, L0x4000829c50p,
                        L0x4000829c58p, L0x4000829c60p, L0x4000829c68p,
                        L0x4000829c70p, L0x4000829c78p, L0x4000829c80p])
             (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5])
    && true;

(* add	x1, x26, #0x0                               #! PC = 0x274877990064 *)
adds dontcare x1 x26 0@uint64;
(* mov	x2, sp                                      #! PC = 0x274877990068 *)
mov x2 sp;
(* add	x0, x26, #0x0                               #! PC = 0x274877990072 *)
adds dontcare x0 x26 0@uint64;
(* #bl	0x4000012fa0 <__sub_mod_384x384>            #! PC = 0x274877990076 *)
#bl	0x4000012fa0 <__sub_mod_384x384>            #! 0x274877990076 = 0x274877990076;

rcut and [limbs 64 [L0x40008298d0, L0x40008298d8, L0x40008298e0,
                    L0x40008298e8, L0x40008298f0, L0x40008298f8] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829bf8, L0x4000829c00, L0x4000829c08,
                    L0x4000829c10, L0x4000829c18, L0x4000829c20] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829c58, L0x4000829c60, L0x4000829c68,
                    L0x4000829c70, L0x4000829c78, L0x4000829c80] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
          m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
          m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64,
          
          limbs 64[a00,a01,a02,a03,a04,a05] <u limbs 64[m0,m1,m2,m3,m4,m5],
          limbs 64[a10,a11,a12,a13,a14,a15] <u limbs 64[m0,m1,m2,m3,m4,m5],
          limbs 64[a20,a21,a22,a23,a24,a25] <u limbs 64[m0,m1,m2,m3,m4,m5],
          limbs 64[a30,a31,a32,a33,a34,a35] <u limbs 64[m0,m1,m2,m3,m4,m5],
          limbs 64[a40,a41,a42,a43,a44,a45] <u limbs 64[m0,m1,m2,m3,m4,m5],
          limbs 64[a50,a51,a52,a53,a54,a55] <u limbs 64[m0,m1,m2,m3,m4,m5],
          limbs 64[b00,b01,b02,b03,b04,b05] <u limbs 64[m0,m1,m2,m3,m4,m5],
          limbs 64[b10,b11,b12,b13,b14,b15] <u limbs 64[m0,m1,m2,m3,m4,m5],
          limbs 64[b20,b21,b22,b23,b24,b25] <u limbs 64[m0,m1,m2,m3,m4,m5],
          limbs 64[b30,b31,b32,b33,b34,b35] <u limbs 64[m0,m1,m2,m3,m4,m5],
          limbs 64[b40,b41,b42,b43,b44,b45] <u limbs 64[m0,m1,m2,m3,m4,m5],
          limbs 64[b50,b51,b52,b53,b54,b55] <u limbs 64[m0,m1,m2,m3,m4,m5]
     ] prove with all cuts, precondition;

ghost L0x4000829bc8o@uint64, L0x4000829bd0o@uint64, L0x4000829bd8o@uint64,
      L0x4000829be0o@uint64, L0x4000829be8o@uint64, L0x4000829bf0o@uint64,
      L0x4000829bf8o@uint64, L0x4000829c00o@uint64, L0x4000829c08o@uint64,
      L0x4000829c10o@uint64, L0x4000829c18o@uint64, L0x4000829c20o@uint64 :
      and [L0x4000829bc8o=L0x4000829bc8, L0x4000829bd0o=L0x4000829bd0,
           L0x4000829bd8o=L0x4000829bd8, L0x4000829be0o=L0x4000829be0,
           L0x4000829be8o=L0x4000829be8, L0x4000829bf0o=L0x4000829bf0,
           L0x4000829bf8o=L0x4000829bf8, L0x4000829c00o=L0x4000829c00,
           L0x4000829c08o=L0x4000829c08, L0x4000829c10o=L0x4000829c10,
           L0x4000829c18o=L0x4000829c18, L0x4000829c20o=L0x4000829c20]
   && and [L0x4000829bc8o=L0x4000829bc8, L0x4000829bd0o=L0x4000829bd0,
           L0x4000829bd8o=L0x4000829bd8, L0x4000829be0o=L0x4000829be0,
           L0x4000829be8o=L0x4000829be8, L0x4000829bf0o=L0x4000829bf0,
           L0x4000829bf8o=L0x4000829bf8, L0x4000829c00o=L0x4000829c00,
           L0x4000829c08o=L0x4000829c08, L0x4000829c10o=L0x4000829c10,
           L0x4000829c18o=L0x4000829c18, L0x4000829c20o=L0x4000829c20];

(* ldp	x11, x12, [x1]                              #! EA = L0x4000829bc8; Value = 0x0000000000000000; PC = 0x274877984672 *)
mov x11 L0x4000829bc8;
mov x12 L0x4000829bd0;
(* ldp	x19, x20, [x2]                              #! EA = L0x40008298a0; Value = 0x2174000000000000; PC = 0x274877984676 *)
mov x19 L0x40008298a0;
mov x20 L0x40008298a8;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829bd8; Value = 0x0000000000000000; PC = 0x274877984680 *)
mov x13 L0x4000829bd8;
mov x14 L0x4000829be0;
(* subs	x11, x11, x19                              #! PC = 0x274877984684 *)
subc carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x40008298b0; Value = 0x85e4423fabe7f3a1; PC = 0x274877984688 *)
mov x21 L0x40008298b0;
mov x22 L0x40008298b8;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984692 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829be8; Value = 0x0000000000000000; PC = 0x274877984696 *)
mov x15 L0x4000829be8;
mov x16 L0x4000829bf0;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984700 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x40008298c0; Value = 0x540501675805ef09; PC = 0x274877984704 *)
mov x23 L0x40008298c0;
mov x24 L0x40008298c8;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984708 *)
sbcs carry x14 x14 x22 carry;
(* stp	x11, x12, [x0]                              #! EA = L0x4000829bc8; PC = 0x274877984712 *)
mov L0x4000829bc8 x11;
mov L0x4000829bd0 x12;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984716 *)
sbcs carry x15 x15 x23 carry;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0x4000829bf8; Value = 0x0000000000000000; PC = 0x274877984720 *)
mov x11 L0x4000829bf8;
mov x12 L0x4000829c00;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984724 *)
sbcs carry x16 x16 x24 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x40008298d0; Value = 0x5a1c9acb7af4e8a4; PC = 0x274877984728 *)
mov x19 L0x40008298d0;
mov x20 L0x40008298d8;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x4000829bd8; PC = 0x274877984732 *)
mov L0x4000829bd8 x13;
mov L0x4000829be0 x14;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0x4000829c08; Value = 0x8443a2aa87809000; PC = 0x274877984736 *)
mov x13 L0x4000829c08;
mov x14 L0x4000829c10;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x40008298e0; Value = 0xd4f30efcabdae70a; PC = 0x274877984740 *)
mov x21 L0x40008298e0;
mov x22 L0x40008298e8;
(* sbcs	x11, x11, x19                              #! PC = 0x274877984744 *)
sbcs carry x11 x11 x19 carry;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x4000829be8; PC = 0x274877984748 *)
mov L0x4000829be8 x15;
mov L0x4000829bf0 x16;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984752 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #80]                         #! EA = L0x4000829c18; Value = 0x0000000000000000; PC = 0x274877984756 *)
mov x15 L0x4000829c18;
mov x16 L0x4000829c20;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984760 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x40008298f0; Value = 0x000000c000003002; PC = 0x274877984764 *)
mov x23 L0x40008298f0;
mov x24 L0x40008298f8;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984768 *)
sbcs carry x14 x14 x22 carry;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984772 *)
sbcs carry x15 x15 x23 carry;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984776 *)
sbcs carry x16 x16 x24 carry;
(* ngc	x17, xzr                                    #! PC = 0x274877984780 *)
cmov x17 carry 0@uint64 0xffffffffffffffff@uint64;
(* and	x19, x5, x17                                #! PC = 0x274877984784 *)
and x19@uint64 x5 x17;
(* and	x20, x6, x17                                #! PC = 0x274877984788 *)
and x20@uint64 x6 x17;
(* adds	x11, x11, x19                              #! PC = 0x274877984792 *)
adds carry x11 x11 x19;
(* and	x21, x7, x17                                #! PC = 0x274877984796 *)
and x21@uint64 x7 x17;
(* adcs	x12, x12, x20                              #! PC = 0x274877984800 *)
adcs carry x12 x12 x20 carry;
(* and	x22, x8, x17                                #! PC = 0x274877984804 *)
and x22@uint64 x8 x17;
(* adcs	x13, x13, x21                              #! PC = 0x274877984808 *)
adcs carry x13 x13 x21 carry;
(* and	x23, x9, x17                                #! PC = 0x274877984812 *)
and x23@uint64 x9 x17;
(* adcs	x14, x14, x22                              #! PC = 0x274877984816 *)
adcs carry x14 x14 x22 carry;
(* and	x24, x10, x17                               #! PC = 0x274877984820 *)
and x24@uint64 x10 x17;
(* adcs	x15, x15, x23                              #! PC = 0x274877984824 *)
adcs carry x15 x15 x23 carry;
(* stp	x11, x12, [x0, #48]                         #! EA = L0x4000829bf8; PC = 0x274877984828 *)
mov L0x4000829bf8 x11;
mov L0x4000829c00 x12;
(* adc	x16, x16, x24                               #! PC = 0x274877984832 *)
adcs dontcare x16 x16 x24 carry;
(* stp	x13, x14, [x0, #64]                         #! EA = L0x4000829c08; PC = 0x274877984836 *)
mov L0x4000829c08 x13;
mov L0x4000829c10 x14;
(* stp	x15, x16, [x0, #80]                         #! EA = L0x4000829c18; PC = 0x274877984840 *)
mov L0x4000829c18 x15;
mov L0x4000829c20 x16;
(* #ret                                            #! PC = 0x274877984844 *)
#ret                                            #! 0x274877984844 = 0x274877984844;

assert true
    && eqmod ((limbs 64 [L0x4000829bc8, L0x4000829bd0, L0x4000829bd8,
                         L0x4000829be0, L0x4000829be8, L0x4000829bf0,
                         L0x4000829bf8, L0x4000829c00, L0x4000829c08,
                         L0x4000829c10, L0x4000829c18, L0x4000829c20]) +
              (limbs 64 [L0x40008298a0, L0x40008298a8, L0x40008298b0,
                         L0x40008298b8, L0x40008298c0, L0x40008298c8,
                         L0x40008298d0, L0x40008298d8, L0x40008298e0,
                         L0x40008298e8, L0x40008298f0, L0x40008298f8]))
             (limbs 64 [L0x4000829bc8o, L0x4000829bd0o, L0x4000829bd8o,
                        L0x4000829be0o, L0x4000829be8o, L0x4000829bf0o,
                        L0x4000829bf8o, L0x4000829c00o, L0x4000829c08o,
                        L0x4000829c10o, L0x4000829c18o, L0x4000829c20o])
             (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                          m0,   m1,   m2,   m3,   m4,   m5]);

assume eqmod ((limbs 64 [L0x4000829bc8, L0x4000829bd0, L0x4000829bd8,
                         L0x4000829be0, L0x4000829be8, L0x4000829bf0,
                         L0x4000829bf8, L0x4000829c00, L0x4000829c08,
                         L0x4000829c10, L0x4000829c18, L0x4000829c20]) +
              (limbs 64 [L0x40008298a0, L0x40008298a8, L0x40008298b0,
                         L0x40008298b8, L0x40008298c0, L0x40008298c8,
                         L0x40008298d0, L0x40008298d8, L0x40008298e0,
                         L0x40008298e8, L0x40008298f0, L0x40008298f8]))
             (limbs 64 [L0x4000829bc8o, L0x4000829bd0o, L0x4000829bd8o,
                        L0x4000829be0o, L0x4000829be8o, L0x4000829bf0o,
                        L0x4000829bf8o, L0x4000829c00o, L0x4000829c08o,
                        L0x4000829c10o, L0x4000829c18o, L0x4000829c20o])
             (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5])
    && true;

(* ldr	x30, [x29, #8]                              #! EA = L0x4000829908; Value = 0x001f004000008b50; PC = 0x274877990080 *)
mov x30 L0x4000829908;
(* add	sp, sp, #0x60                               #! PC = 0x274877990084 *)
adds dontcare sp sp 0x60@uint64;
(* ldp	x19, x20, [x29, #16]                        #! EA = L0x4000829910; Value = 0x000000400082a048; PC = 0x274877990088 *)
mov x19 L0x4000829910;
mov x20 L0x4000829918;
(* ldp	x21, x22, [x29, #32]                        #! EA = L0x4000829920; Value = 0x000000400082a168; PC = 0x274877990092 *)
mov x21 L0x4000829920;
mov x22 L0x4000829928;
(* ldp	x23, x24, [x29, #48]                        #! EA = L0x4000829930; Value = 0x000000400085d6d0; PC = 0x274877990096 *)
mov x23 L0x4000829930;
mov x24 L0x4000829938;
(* ldp	x25, x26, [x29, #64]                        #! EA = L0x4000829940; Value = 0x000000400085d6d0; PC = 0x274877990100 *)
mov x25 L0x4000829940;
mov x26 L0x4000829948;
(* ldp	x27, x28, [x29, #80]                        #! EA = L0x4000829950; Value = 0x0000004000829b08; PC = 0x274877990104 *)
mov x27 L0x4000829950;
mov x28 L0x4000829958;
(* ldr	x29, [sp], #128                             #! EA = L0x4000829900; Value = 0x0000004000829980; PC = 0x274877990108 *)
mov x29 L0x4000829900;
(* #autiasp                                         #! PC = 0x274877990112 *)
#autiasp                                         #! 0x274877990112 = 0x274877990112;
(* #ret                                            #! PC = 0x274877990116 *)
#ret                                            #! 0x274877990116 = 0x274877990116;

(* mul_382x(t1, a[1], b[1]) *)

assert eqmod ((limbs 64 [L0x4000829bc8, L0x4000829bd0, L0x4000829bd8,
                         L0x4000829be0, L0x4000829be8, L0x4000829bf0,
                         L0x4000829bf8, L0x4000829c00, L0x4000829c08,
                         L0x4000829c10, L0x4000829c18, L0x4000829c20]) +
              (limbs 64 [L0x4000829c28, L0x4000829c30, L0x4000829c38,
                         L0x4000829c40, L0x4000829c48, L0x4000829c50,
                         L0x4000829c58, L0x4000829c60, L0x4000829c68,
                         L0x4000829c70, L0x4000829c78, L0x4000829c80]) * U)
             ((limbs 64 [a20, a21, a22, a23, a24, a25] +
               limbs 64 [a30, a31, a32, a33, a34, a35] * U) *
              (limbs 64 [b20, b21, b22, b23, b24, b25] +
               limbs 64 [b30, b31, b32, b33, b34, b35] * U))
             [limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5],
              U * U + 1]
    && true;

(* ldp	x29, x30, [sp], #16                         #! EA = L0x4000829980; Value = 0x0000004000829990; PC = 0x274877942608 *)
mov x29 L0x4000829980;
mov x30 L0x4000829988;
(* #ret                                            #! PC = 0x274877942612 *)
#ret                                            #! 0x274877942612 = 0x274877942612;
(* str	x19, [sp, #104]                             #! EA = L0x40008299f8; PC = 0x274877950244 *)
mov L0x40008299f8 x19;
(* add	x0, x19, #0xc0                              #! PC = 0x274877950248 *)
adds dontcare x0 x19 0xc0@uint64;
(* mov	x25, x0                                     #! PC = 0x274877950252 *)
mov x25 x0;
(* str	x21, [sp, #112]                             #! EA = L0x4000829a00; PC = 0x274877950256 *)
mov L0x4000829a00 x21;
(* add	x1, x21, #0xc0                              #! PC = 0x274877950260 *)
adds dontcare x1 x21 0xc0@uint64;
(* mov	x21, x1                                     #! PC = 0x274877950264 *)
mov x21 x1;
(* add	x23, sp, #0x2f8                             #! PC = 0x274877950268 *)
adds dontcare x23 sp 0x2f8@uint64;
(* mov	x2, x1                                      #! PC = 0x274877950272 *)
mov x2 x1;
(* mov	x1, x0                                      #! PC = 0x274877950276 *)
mov x1 x0;
(* mov	x0, x23                                     #! PC = 0x274877950280 *)
mov x0 x23;
(* #bl	0x4000008b3c <mul_fp2x2>                    #! PC = 0x274877950284 *)
#bl	0x4000008b3c <mul_fp2x2>                    #! 0x274877950284 = 0x274877950284;
(* stp	x29, x30, [sp, #-16]!                       #! EA = L0x4000829980; PC = 0x274877942588 *)
mov L0x4000829980 x29;
mov L0x4000829988 x30;
(* mov	x29, sp                                     #! PC = 0x274877942592 *)
mov x29 sp;
(* #adrp	x3, 0x4000029000                           #! PC = 0x274877942596 *)
#adrp	%%x3, 0x4000029000                           #! 0x274877942596 = 0x274877942596;
(* ldr	x3, [x3, #4056]                             #! EA = L0x4000029fd8; Value = 0x0000004000016928; PC = 0x274877942600 *)
mov x3 L0x4000029fd8;
(* #bl	0x40000143c0 <mul_382x>                     #! PC = 0x274877942604 *)
#bl	0x40000143c0 <mul_382x>                     #! 0x274877942604 = 0x274877942604;
(* #paciasp                                         #! PC = 0x274877989824 *)
#paciasp                                         #! 0x274877989824 = 0x274877989824;
(* stp	x29, x30, [sp, #-128]!                      #! EA = L0x4000829900; PC = 0x274877989828 *)
mov L0x4000829900 x29;
mov L0x4000829908 x30;
(* mov	x29, sp                                     #! PC = 0x274877989832 *)
mov x29 sp;
(* stp	x19, x20, [sp, #16]                         #! EA = L0x4000829910; PC = 0x274877989836 *)
mov L0x4000829910 x19;
mov L0x4000829918 x20;
(* stp	x21, x22, [sp, #32]                         #! EA = L0x4000829920; PC = 0x274877989840 *)
mov L0x4000829920 x21;
mov L0x4000829928 x22;
(* stp	x23, x24, [sp, #48]                         #! EA = L0x4000829930; PC = 0x274877989844 *)
mov L0x4000829930 x23;
mov L0x4000829938 x24;
(* stp	x25, x26, [sp, #64]                         #! EA = L0x4000829940; PC = 0x274877989848 *)
mov L0x4000829940 x25;
mov L0x4000829948 x26;
(* stp	x27, x28, [sp, #80]                         #! EA = L0x4000829950; PC = 0x274877989852 *)
mov L0x4000829950 x27;
mov L0x4000829958 x28;
(* sub	sp, sp, #0x60                               #! PC = 0x274877989856 *)
subc dontcare sp sp 0x60@uint64;
(* ldp	x11, x12, [x1]                              #! EA = L0x400082a108; Value = 0x000000400085ea78; PC = 0x274877989860 *)
mov x11 L0x400082a108;
mov x12 L0x400082a110;
(* mov	x26, x0                                     #! PC = 0x274877989864 *)
mov x26 x0;
(* ldp	x19, x20, [x1, #48]                         #! EA = L0x400082a138; Value = 0x000000400082ae28; PC = 0x274877989868 *)
mov x19 L0x400082a138;
mov x20 L0x400082a140;
(* mov	x27, x1                                     #! PC = 0x274877989872 *)
mov x27 x1;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x400082a118; Value = 0x0000004000841d2c; PC = 0x274877989876 *)
mov x13 L0x400082a118;
mov x14 L0x400082a120;
(* mov	x28, x2                                     #! PC = 0x274877989880 *)
mov x28 x2;
(* ldp	x21, x22, [x1, #64]                         #! EA = L0x400082a148; Value = 0x000000400082da1c; PC = 0x274877989884 *)
mov x21 L0x400082a148;
mov x22 L0x400082a150;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x400082a128; Value = 0x000000400085d000; PC = 0x274877989888 *)
mov x15 L0x400082a128;
mov x16 L0x400082a130;
(* adds	x5, x11, x19                               #! PC = 0x274877989892 *)
adds carry x5 x11 x19;
(* ldp	x23, x24, [x1, #80]                         #! EA = L0x400082a158; Value = 0x000000400082ad60; PC = 0x274877989896 *)
mov x23 L0x400082a158;
mov x24 L0x400082a160;
(* adcs	x6, x12, x20                               #! PC = 0x274877989900 *)
adcs carry x6 x12 x20 carry;
(* ldp	x11, x12, [x2]                              #! EA = L0x400082a228; Value = 0x000000400085ea78; PC = 0x274877989904 *)
mov x11 L0x400082a228;
mov x12 L0x400082a230;
(* adcs	x7, x13, x21                               #! PC = 0x274877989908 *)
adcs carry x7 x13 x21 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x400082a258; Value = 0x0000008001087e28; PC = 0x274877989912 *)
mov x19 L0x400082a258;
mov x20 L0x400082a260;
(* adcs	x8, x14, x22                               #! PC = 0x274877989916 *)
adcs carry x8 x14 x22 carry;
(* ldp	x13, x14, [x2, #16]                         #! EA = L0x400082a238; Value = 0x0000000000000000; PC = 0x274877989920 *)
mov x13 L0x400082a238;
mov x14 L0x400082a240;
(* adcs	x9, x15, x23                               #! PC = 0x274877989924 *)
adcs carry x9 x15 x23 carry;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x400082a268; Value = 0x0000004000000040; PC = 0x274877989928 *)
mov x21 L0x400082a268;
mov x22 L0x400082a270;
(* adc	x10, x16, x24                               #! PC = 0x274877989932 *)
adc x10 x16 x24 carry;
(* ldp	x15, x16, [x2, #32]                         #! EA = L0x400082a248; Value = 0x0000004000841c68; PC = 0x274877989936 *)
mov x15 L0x400082a248;
mov x16 L0x400082a250;
(* stp	x5, x6, [sp]                                #! EA = L0x40008298a0; PC = 0x274877989940 *)
mov L0x40008298a0 x5;
mov L0x40008298a8 x6;
(* adds	x5, x11, x19                               #! PC = 0x274877989944 *)
adds carry x5 x11 x19;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x400082a278; Value = 0x000000400085d000; PC = 0x274877989948 *)
mov x23 L0x400082a278;
mov x24 L0x400082a280;
(* adcs	x6, x12, x20                               #! PC = 0x274877989952 *)
adcs carry x6 x12 x20 carry;
(* stp	x7, x8, [sp, #16]                           #! EA = L0x40008298b0; PC = 0x274877989956 *)
mov L0x40008298b0 x7;
mov L0x40008298b8 x8;
(* adcs	x7, x13, x21                               #! PC = 0x274877989960 *)
adcs carry x7 x13 x21 carry;
(* adcs	x8, x14, x22                               #! PC = 0x274877989964 *)
adcs carry x8 x14 x22 carry;
(* stp	x9, x10, [sp, #32]                          #! EA = L0x40008298c0; PC = 0x274877989968 *)
mov L0x40008298c0 x9;
mov L0x40008298c8 x10;
(* adcs	x9, x15, x23                               #! PC = 0x274877989972 *)
adcs carry x9 x15 x23 carry;
(* stp	x5, x6, [sp, #48]                           #! EA = L0x40008298d0; PC = 0x274877989976 *)
mov L0x40008298d0 x5;
mov L0x40008298d8 x6;
(* adc	x10, x16, x24                               #! PC = 0x274877989980 *)
adc x10 x16 x24 carry;
(* stp	x7, x8, [sp, #64]                           #! EA = L0x40008298e0; PC = 0x274877989984 *)
mov L0x40008298e0 x7;
mov L0x40008298e8 x8;
(* stp	x9, x10, [sp, #80]                          #! EA = L0x40008298f0; PC = 0x274877989988 *)
mov L0x40008298f0 x9;
mov L0x40008298f8 x10;
(* #bl	0x4000014120 <__mul_384>                    #! PC = 0x274877989992 *)
#bl	0x4000014120 <__mul_384>                    #! 0x274877989992 = 0x274877989992;
(* ldp	x11, x12, [x1]                              #! EA = L0x400082a108; Value = 0x000000400085ea78; PC = 0x274877989152 *)
mov x11 L0x400082a108;
mov x12 L0x400082a110;
(* ldr	x17, [x2]                                   #! EA = L0x400082a228; Value = 0x000000400085ea78; PC = 0x274877989156 *)
mov x17 L0x400082a228;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x400082a118; Value = 0x0000004000841d2c; PC = 0x274877989160 *)
mov x13 L0x400082a118;
mov x14 L0x400082a120;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x400082a128; Value = 0x000000400085d000; PC = 0x274877989164 *)
mov x15 L0x400082a128;
mov x16 L0x400082a130;
(* mul	x19, x11, x17                               #! PC = 0x274877989168 *)
mull mulHx11x17 x19 x11 x17;
(* mul	x20, x12, x17                               #! PC = 0x274877989172 *)
mull mulHx12x17 x20 x12 x17;
(* mul	x21, x13, x17                               #! PC = 0x274877989176 *)
mull mulHx13x17 x21 x13 x17;
(* mul	x22, x14, x17                               #! PC = 0x274877989180 *)
mull mulHx14x17 x22 x14 x17;
(* mul	x23, x15, x17                               #! PC = 0x274877989184 *)
mull mulHx15x17 x23 x15 x17;
(* mul	x24, x16, x17                               #! PC = 0x274877989188 *)
mull mulHx16x17 x24 x16 x17;
(* umulh	x5, x11, x17                              #! PC = 0x274877989192 *)
mov x5 mulHx11x17;
(* umulh	x6, x12, x17                              #! PC = 0x274877989196 *)
mov x6 mulHx12x17;
(* umulh	x7, x13, x17                              #! PC = 0x274877989200 *)
mov x7 mulHx13x17;
(* umulh	x8, x14, x17                              #! PC = 0x274877989204 *)
mov x8 mulHx14x17;
(* umulh	x9, x15, x17                              #! PC = 0x274877989208 *)
mov x9 mulHx15x17;
(* umulh	x10, x16, x17                             #! PC = 0x274877989212 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #8]                               #! EA = L0x400082a230; Value = 0x0000000000000000; PC = 0x274877989216 *)
mov x17 L0x400082a230;
(* str	x19, [x0]                                   #! EA = L0x4000829c88; PC = 0x274877989220 *)
mov L0x4000829c88 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989224 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989228 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989232 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989236 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989240 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989244 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989248 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989252 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989256 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989260 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, xzr, x10                               #! PC = 0x274877989264 *)
adc x24 0@uint64 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989268 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989272 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989276 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989280 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989284 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989288 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989292 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989296 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989300 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989304 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989308 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989312 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989316 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #16]                              #! EA = L0x400082a238; Value = 0x0000000000000000; PC = 0x274877989320 *)
mov x17 L0x400082a238;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989324 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #8]                               #! EA = L0x4000829c90; PC = 0x274877989328 *)
mov L0x4000829c90 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989332 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989336 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989340 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989344 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989348 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989352 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989356 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989360 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989364 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989368 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989372 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989376 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989380 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989384 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989388 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989392 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989396 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989400 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989404 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989408 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989412 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989416 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989420 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989424 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #24]                              #! EA = L0x400082a240; Value = 0x000000400082a810; PC = 0x274877989428 *)
mov x17 L0x400082a240;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989432 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #16]                              #! EA = L0x4000829c98; PC = 0x274877989436 *)
mov L0x4000829c98 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989440 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989444 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989448 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989452 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989456 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989460 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989464 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989468 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989472 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989476 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989480 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989484 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989488 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989492 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989496 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989500 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989504 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989508 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989512 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989516 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989520 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989524 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989528 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989532 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #32]                              #! EA = L0x400082a248; Value = 0x0000004000841c68; PC = 0x274877989536 *)
mov x17 L0x400082a248;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989540 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #24]                              #! EA = L0x4000829ca0; PC = 0x274877989544 *)
mov L0x4000829ca0 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989548 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989552 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989556 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989560 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989564 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989568 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989572 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989576 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989580 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989584 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989588 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989592 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989596 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989600 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989604 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989608 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989612 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989616 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989620 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989624 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989628 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989632 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989636 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989640 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #40]                              #! EA = L0x400082a250; Value = 0x0000000000000000; PC = 0x274877989644 *)
mov x17 L0x400082a250;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989648 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #32]                              #! EA = L0x4000829ca8; PC = 0x274877989652 *)
mov L0x4000829ca8 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989656 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989660 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989664 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989668 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989672 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989676 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989680 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989684 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989688 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989692 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989696 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989700 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989704 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989708 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989712 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989716 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989720 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989724 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989728 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989732 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989736 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989740 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989744 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989748 *)
mov x10 mulHx16x17;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989752 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #40]                              #! EA = L0x4000829cb0; PC = 0x274877989756 *)
mov L0x4000829cb0 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989760 *)
adds carry x19 x20 x5;
(* adcs	x20, x21, x6                               #! PC = 0x274877989764 *)
adcs carry x20 x21 x6 carry;
(* adcs	x21, x22, x7                               #! PC = 0x274877989768 *)
adcs carry x21 x22 x7 carry;
(* adcs	x22, x23, x8                               #! PC = 0x274877989772 *)
adcs carry x22 x23 x8 carry;
(* adcs	x23, x24, x9                               #! PC = 0x274877989776 *)
adcs carry x23 x24 x9 carry;
(* adc	x24, x25, x10                               #! PC = 0x274877989780 *)
adc x24 x25 x10 carry;
(* stp	x19, x20, [x0, #48]                         #! EA = L0x4000829cb8; PC = 0x274877989784 *)
mov L0x4000829cb8 x19;
mov L0x4000829cc0 x20;
(* stp	x21, x22, [x0, #64]                         #! EA = L0x4000829cc8; PC = 0x274877989788 *)
mov L0x4000829cc8 x21;
mov L0x4000829cd0 x22;
(* stp	x23, x24, [x0, #80]                         #! EA = L0x4000829cd8; PC = 0x274877989792 *)
mov L0x4000829cd8 x23;
mov L0x4000829ce0 x24;
(* #ret                                            #! PC = 0x274877989796 *)
#ret                                            #! 0x274877989796 = 0x274877989796;
(* mov	x1, sp                                      #! PC = 0x274877989996 *)
mov x1 sp;
(* add	x2, sp, #0x30                               #! PC = 0x274877990000 *)
adds dontcare x2 sp 0x30@uint64;
(* add	x0, x26, #0x60                              #! PC = 0x274877990004 *)
adds dontcare x0 x26 0x60@uint64;
(* #bl	0x4000014120 <__mul_384>                    #! PC = 0x274877990008 *)
#bl	0x4000014120 <__mul_384>                    #! 0x274877990008 = 0x274877990008;
(* ldp	x11, x12, [x1]                              #! EA = L0x40008298a0; Value = 0x00000080010898a0; PC = 0x274877989152 *)
mov x11 L0x40008298a0;
mov x12 L0x40008298a8;
(* ldr	x17, [x2]                                   #! EA = L0x40008298d0; Value = 0x000000c0018e68a0; PC = 0x274877989156 *)
mov x17 L0x40008298d0;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x40008298b0; Value = 0x000000800106f748; PC = 0x274877989160 *)
mov x13 L0x40008298b0;
mov x14 L0x40008298b8;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x40008298c0; Value = 0x0000008001087d60; PC = 0x274877989164 *)
mov x15 L0x40008298c0;
mov x16 L0x40008298c8;
(* mul	x19, x11, x17                               #! PC = 0x274877989168 *)
mull mulHx11x17 x19 x11 x17;
(* mul	x20, x12, x17                               #! PC = 0x274877989172 *)
mull mulHx12x17 x20 x12 x17;
(* mul	x21, x13, x17                               #! PC = 0x274877989176 *)
mull mulHx13x17 x21 x13 x17;
(* mul	x22, x14, x17                               #! PC = 0x274877989180 *)
mull mulHx14x17 x22 x14 x17;
(* mul	x23, x15, x17                               #! PC = 0x274877989184 *)
mull mulHx15x17 x23 x15 x17;
(* mul	x24, x16, x17                               #! PC = 0x274877989188 *)
mull mulHx16x17 x24 x16 x17;
(* umulh	x5, x11, x17                              #! PC = 0x274877989192 *)
mov x5 mulHx11x17;
(* umulh	x6, x12, x17                              #! PC = 0x274877989196 *)
mov x6 mulHx12x17;
(* umulh	x7, x13, x17                              #! PC = 0x274877989200 *)
mov x7 mulHx13x17;
(* umulh	x8, x14, x17                              #! PC = 0x274877989204 *)
mov x8 mulHx14x17;
(* umulh	x9, x15, x17                              #! PC = 0x274877989208 *)
mov x9 mulHx15x17;
(* umulh	x10, x16, x17                             #! PC = 0x274877989212 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #8]                               #! EA = L0x40008298d8; Value = 0x000000400082e3a0; PC = 0x274877989216 *)
mov x17 L0x40008298d8;
(* str	x19, [x0]                                   #! EA = L0x4000829ce8; PC = 0x274877989220 *)
mov L0x4000829ce8 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989224 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989228 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989232 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989236 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989240 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989244 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989248 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989252 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989256 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989260 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, xzr, x10                               #! PC = 0x274877989264 *)
adc x24 0@uint64 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989268 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989272 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989276 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989280 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989284 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989288 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989292 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989296 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989300 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989304 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989308 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989312 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989316 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #16]                              #! EA = L0x40008298e0; Value = 0x0000004000000040; PC = 0x274877989320 *)
mov x17 L0x40008298e0;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989324 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #8]                               #! EA = L0x4000829cf0; PC = 0x274877989328 *)
mov L0x4000829cf0 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989332 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989336 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989340 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989344 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989348 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989352 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989356 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989360 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989364 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989368 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989372 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989376 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989380 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989384 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989388 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989392 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989396 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989400 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989404 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989408 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989412 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989416 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989420 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989424 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #24]                              #! EA = L0x40008298e8; Value = 0x000000400082a81a; PC = 0x274877989428 *)
mov x17 L0x40008298e8;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989432 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #16]                              #! EA = L0x4000829cf8; PC = 0x274877989436 *)
mov L0x4000829cf8 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989440 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989444 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989448 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989452 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989456 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989460 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989464 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989468 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989472 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989476 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989480 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989484 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989488 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989492 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989496 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989500 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989504 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989508 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989512 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989516 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989520 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989524 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989528 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989532 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #32]                              #! EA = L0x40008298f0; Value = 0x000000800109ec68; PC = 0x274877989536 *)
mov x17 L0x40008298f0;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989540 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #24]                              #! EA = L0x4000829d00; PC = 0x274877989544 *)
mov L0x4000829d00 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989548 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989552 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989556 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989560 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989564 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989568 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989572 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989576 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989580 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989584 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989588 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989592 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989596 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989600 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989604 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989608 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989612 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989616 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989620 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989624 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989628 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989632 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989636 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989640 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #40]                              #! EA = L0x40008298f8; Value = 0x0000000000000001; PC = 0x274877989644 *)
mov x17 L0x40008298f8;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989648 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #32]                              #! EA = L0x4000829d08; PC = 0x274877989652 *)
mov L0x4000829d08 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989656 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989660 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989664 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989668 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989672 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989676 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989680 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989684 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989688 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989692 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989696 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989700 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989704 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989708 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989712 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989716 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989720 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989724 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989728 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989732 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989736 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989740 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989744 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989748 *)
mov x10 mulHx16x17;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989752 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #40]                              #! EA = L0x4000829d10; PC = 0x274877989756 *)
mov L0x4000829d10 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989760 *)
adds carry x19 x20 x5;
(* adcs	x20, x21, x6                               #! PC = 0x274877989764 *)
adcs carry x20 x21 x6 carry;
(* adcs	x21, x22, x7                               #! PC = 0x274877989768 *)
adcs carry x21 x22 x7 carry;
(* adcs	x22, x23, x8                               #! PC = 0x274877989772 *)
adcs carry x22 x23 x8 carry;
(* adcs	x23, x24, x9                               #! PC = 0x274877989776 *)
adcs carry x23 x24 x9 carry;
(* adc	x24, x25, x10                               #! PC = 0x274877989780 *)
adc x24 x25 x10 carry;
(* stp	x19, x20, [x0, #48]                         #! EA = L0x4000829d18; PC = 0x274877989784 *)
mov L0x4000829d18 x19;
mov L0x4000829d20 x20;
(* stp	x21, x22, [x0, #64]                         #! EA = L0x4000829d28; PC = 0x274877989788 *)
mov L0x4000829d28 x21;
mov L0x4000829d30 x22;
(* stp	x23, x24, [x0, #80]                         #! EA = L0x4000829d38; PC = 0x274877989792 *)
mov L0x4000829d38 x23;
mov L0x4000829d40 x24;
(* #ret                                            #! PC = 0x274877989796 *)
#ret                                            #! 0x274877989796 = 0x274877989796;
(* add	x1, x27, #0x30                              #! PC = 0x274877990012 *)
adds dontcare x1 x27 0x30@uint64;
(* add	x2, x28, #0x30                              #! PC = 0x274877990016 *)
adds dontcare x2 x28 0x30@uint64;
(* mov	x0, sp                                      #! PC = 0x274877990020 *)
mov x0 sp;
(* #bl	0x4000014120 <__mul_384>                    #! PC = 0x274877990024 *)
#bl	0x4000014120 <__mul_384>                    #! 0x274877990024 = 0x274877990024;
(* ldp	x11, x12, [x1]                              #! EA = L0x400082a138; Value = 0x000000400082ae28; PC = 0x274877989152 *)
mov x11 L0x400082a138;
mov x12 L0x400082a140;
(* ldr	x17, [x2]                                   #! EA = L0x400082a258; Value = 0x0000008001087e28; PC = 0x274877989156 *)
mov x17 L0x400082a258;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x400082a148; Value = 0x000000400082da1c; PC = 0x274877989160 *)
mov x13 L0x400082a148;
mov x14 L0x400082a150;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x400082a158; Value = 0x000000400082ad60; PC = 0x274877989164 *)
mov x15 L0x400082a158;
mov x16 L0x400082a160;
(* mul	x19, x11, x17                               #! PC = 0x274877989168 *)
mull mulHx11x17 x19 x11 x17;
(* mul	x20, x12, x17                               #! PC = 0x274877989172 *)
mull mulHx12x17 x20 x12 x17;
(* mul	x21, x13, x17                               #! PC = 0x274877989176 *)
mull mulHx13x17 x21 x13 x17;
(* mul	x22, x14, x17                               #! PC = 0x274877989180 *)
mull mulHx14x17 x22 x14 x17;
(* mul	x23, x15, x17                               #! PC = 0x274877989184 *)
mull mulHx15x17 x23 x15 x17;
(* mul	x24, x16, x17                               #! PC = 0x274877989188 *)
mull mulHx16x17 x24 x16 x17;
(* umulh	x5, x11, x17                              #! PC = 0x274877989192 *)
mov x5 mulHx11x17;
(* umulh	x6, x12, x17                              #! PC = 0x274877989196 *)
mov x6 mulHx12x17;
(* umulh	x7, x13, x17                              #! PC = 0x274877989200 *)
mov x7 mulHx13x17;
(* umulh	x8, x14, x17                              #! PC = 0x274877989204 *)
mov x8 mulHx14x17;
(* umulh	x9, x15, x17                              #! PC = 0x274877989208 *)
mov x9 mulHx15x17;
(* umulh	x10, x16, x17                             #! PC = 0x274877989212 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #8]                               #! EA = L0x400082a260; Value = 0x000000400082e3a0; PC = 0x274877989216 *)
mov x17 L0x400082a260;
(* str	x19, [x0]                                   #! EA = L0x40008298a0; PC = 0x274877989220 *)
mov L0x40008298a0 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989224 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989228 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989232 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989236 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989240 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989244 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989248 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989252 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989256 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989260 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, xzr, x10                               #! PC = 0x274877989264 *)
adc x24 0@uint64 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989268 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989272 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989276 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989280 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989284 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989288 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989292 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989296 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989300 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989304 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989308 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989312 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989316 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #16]                              #! EA = L0x400082a268; Value = 0x0000004000000040; PC = 0x274877989320 *)
mov x17 L0x400082a268;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989324 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #8]                               #! EA = L0x40008298a8; PC = 0x274877989328 *)
mov L0x40008298a8 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989332 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989336 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989340 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989344 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989348 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989352 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989356 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989360 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989364 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989368 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989372 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989376 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989380 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989384 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989388 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989392 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989396 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989400 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989404 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989408 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989412 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989416 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989420 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989424 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #24]                              #! EA = L0x400082a270; Value = 0x000000000000000a; PC = 0x274877989428 *)
mov x17 L0x400082a270;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989432 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #16]                              #! EA = L0x40008298b0; PC = 0x274877989436 *)
mov L0x40008298b0 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989440 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989444 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989448 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989452 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989456 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989460 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989464 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989468 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989472 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989476 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989480 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989484 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989488 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989492 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989496 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989500 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989504 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989508 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989512 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989516 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989520 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989524 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989528 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989532 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #32]                              #! EA = L0x400082a278; Value = 0x000000400085d000; PC = 0x274877989536 *)
mov x17 L0x400082a278;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989540 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #24]                              #! EA = L0x40008298b8; PC = 0x274877989544 *)
mov L0x40008298b8 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989548 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989552 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989556 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989560 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989564 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989568 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989572 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989576 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989580 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989584 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989588 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989592 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989596 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989600 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989604 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989608 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989612 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989616 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989620 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989624 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989628 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989632 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989636 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989640 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #40]                              #! EA = L0x400082a280; Value = 0x0000000000000001; PC = 0x274877989644 *)
mov x17 L0x400082a280;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989648 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #32]                              #! EA = L0x40008298c0; PC = 0x274877989652 *)
mov L0x40008298c0 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989656 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989660 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989664 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989668 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989672 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989676 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989680 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989684 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989688 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989692 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989696 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989700 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989704 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989708 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989712 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989716 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989720 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989724 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989728 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989732 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989736 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989740 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989744 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989748 *)
mov x10 mulHx16x17;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989752 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #40]                              #! EA = L0x40008298c8; PC = 0x274877989756 *)
mov L0x40008298c8 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989760 *)
adds carry x19 x20 x5;
(* adcs	x20, x21, x6                               #! PC = 0x274877989764 *)
adcs carry x20 x21 x6 carry;
(* adcs	x21, x22, x7                               #! PC = 0x274877989768 *)
adcs carry x21 x22 x7 carry;
(* adcs	x22, x23, x8                               #! PC = 0x274877989772 *)
adcs carry x22 x23 x8 carry;
(* adcs	x23, x24, x9                               #! PC = 0x274877989776 *)
adcs carry x23 x24 x9 carry;
(* adc	x24, x25, x10                               #! PC = 0x274877989780 *)
adc x24 x25 x10 carry;
(* stp	x19, x20, [x0, #48]                         #! EA = L0x40008298d0; PC = 0x274877989784 *)
mov L0x40008298d0 x19;
mov L0x40008298d8 x20;
(* stp	x21, x22, [x0, #64]                         #! EA = L0x40008298e0; PC = 0x274877989788 *)
mov L0x40008298e0 x21;
mov L0x40008298e8 x22;
(* stp	x23, x24, [x0, #80]                         #! EA = L0x40008298f0; PC = 0x274877989792 *)
mov L0x40008298f0 x23;
mov L0x40008298f8 x24;
(* #ret                                            #! PC = 0x274877989796 *)
#ret                                            #! 0x274877989796 = 0x274877989796;
(* ldp	x5, x6, [x3]                                #! EA = L0x4000016928; Value = 0xb9feffffffffaaab; PC = 0x274877990028 *)
mov x5 L0x4000016928;
mov x6 L0x4000016930;
(* ldp	x7, x8, [x3, #16]                           #! EA = L0x4000016938; Value = 0x6730d2a0f6b0f624; PC = 0x274877990032 *)
mov x7 L0x4000016938;
mov x8 L0x4000016940;
(* ldp	x9, x10, [x3, #32]                          #! EA = L0x4000016948; Value = 0x4b1ba7b6434bacd7; PC = 0x274877990036 *)
mov x9 L0x4000016948;
mov x10 L0x4000016950;
(* add	x1, x26, #0x60                              #! PC = 0x274877990040 *)
adds dontcare x1 x26 0x60@uint64;
(* mov	x2, sp                                      #! PC = 0x274877990044 *)
mov x2 sp;
(* add	x0, x26, #0x60                              #! PC = 0x274877990048 *)
adds dontcare x0 x26 0x60@uint64;
(* #bl	0x4000012fa0 <__sub_mod_384x384>            #! PC = 0x274877990052 *)
#bl	0x4000012fa0 <__sub_mod_384x384>            #! 0x274877990052 = 0x274877990052;

rcut and [limbs 64 [L0x40008298d0, L0x40008298d8, L0x40008298e0,
                    L0x40008298e8, L0x40008298f0, L0x40008298f8] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829cb8, L0x4000829cc0, L0x4000829cc8,
                    L0x4000829cd0, L0x4000829cd8, L0x4000829ce0] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829d18, L0x4000829d20, L0x4000829d28,
                    L0x4000829d30, L0x4000829d38, L0x4000829d40] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829bf8, L0x4000829c00, L0x4000829c08,
                    L0x4000829c10, L0x4000829c18, L0x4000829c20] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829c58, L0x4000829c60, L0x4000829c68,
                    L0x4000829c70, L0x4000829c78, L0x4000829c80] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
          m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
          m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64
     ] prove with precondition;

ghost L0x4000829ce8o@uint64, L0x4000829cf0o@uint64, L0x4000829cf8o@uint64,
      L0x4000829d00o@uint64, L0x4000829d08o@uint64, L0x4000829d10o@uint64,
      L0x4000829d18o@uint64, L0x4000829d20o@uint64, L0x4000829d28o@uint64,
      L0x4000829d30o@uint64, L0x4000829d38o@uint64, L0x4000829d40o@uint64 :
      and [L0x4000829ce8o=L0x4000829ce8, L0x4000829cf0o=L0x4000829cf0,
           L0x4000829cf8o=L0x4000829cf8, L0x4000829d00o=L0x4000829d00,
           L0x4000829d08o=L0x4000829d08, L0x4000829d10o=L0x4000829d10,
           L0x4000829d18o=L0x4000829d18, L0x4000829d20o=L0x4000829d20,
           L0x4000829d28o=L0x4000829d28, L0x4000829d30o=L0x4000829d30,
           L0x4000829d38o=L0x4000829d38, L0x4000829d40o=L0x4000829d40]
   && and [L0x4000829ce8o=L0x4000829ce8, L0x4000829cf0o=L0x4000829cf0,
           L0x4000829cf8o=L0x4000829cf8, L0x4000829d00o=L0x4000829d00,
           L0x4000829d08o=L0x4000829d08, L0x4000829d10o=L0x4000829d10,
           L0x4000829d18o=L0x4000829d18, L0x4000829d20o=L0x4000829d20,
           L0x4000829d28o=L0x4000829d28, L0x4000829d30o=L0x4000829d30,
           L0x4000829d38o=L0x4000829d38, L0x4000829d40o=L0x4000829d40];


(* ldp	x11, x12, [x1]                              #! EA = L0x4000829ce8; Value = 0x8da863c96c206400; PC = 0x274877984672 *)
mov x11 L0x4000829ce8;
mov x12 L0x4000829cf0;
(* ldp	x19, x20, [x2]                              #! EA = L0x40008298a0; Value = 0x83772503ff62e640; PC = 0x274877984676 *)
mov x19 L0x40008298a0;
mov x20 L0x40008298a8;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829cf8; Value = 0x515c20db6fc87f02; PC = 0x274877984680 *)
mov x13 L0x4000829cf8;
mov x14 L0x4000829d00;
(* subs	x11, x11, x19                              #! PC = 0x274877984684 *)
subc carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x40008298b0; Value = 0xe59c03ff476a6660; PC = 0x274877984688 *)
mov x21 L0x40008298b0;
mov x22 L0x40008298b8;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984692 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829d08; Value = 0xdf9e59f931522c42; PC = 0x274877984696 *)
mov x15 L0x4000829d08;
mov x16 L0x4000829d10;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984700 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x40008298c0; Value = 0x287e6d84f9be72a0; PC = 0x274877984704 *)
mov x23 L0x40008298c0;
mov x24 L0x40008298c8;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984708 *)
sbcs carry x14 x14 x22 carry;
(* stp	x11, x12, [x0]                              #! EA = L0x4000829ce8; PC = 0x274877984712 *)
mov L0x4000829ce8 x11;
mov L0x4000829cf0 x12;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984716 *)
sbcs carry x15 x15 x23 carry;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0x4000829d18; Value = 0x527aa2f00648989d; PC = 0x274877984720 *)
mov x11 L0x4000829d18;
mov x12 L0x4000829d20;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984724 *)
sbcs carry x16 x16 x24 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x40008298d0; Value = 0xa50a009debb6c74b; PC = 0x274877984728 *)
mov x19 L0x40008298d0;
mov x20 L0x40008298d8;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x4000829cf8; PC = 0x274877984732 *)
mov L0x4000829cf8 x13;
mov L0x4000829d00 x14;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0x4000829d28; Value = 0x8cbe116492c854aa; PC = 0x274877984736 *)
mov x13 L0x4000829d28;
mov x14 L0x4000829d30;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x40008298e0; Value = 0x421f9f0e457f2911; PC = 0x274877984740 *)
mov x21 L0x40008298e0;
mov x22 L0x40008298e8;
(* sbcs	x11, x11, x19                              #! PC = 0x274877984744 *)
sbcs carry x11 x11 x19 carry;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x4000829d08; PC = 0x274877984748 *)
mov L0x4000829d08 x15;
mov L0x4000829d10 x16;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984752 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #80]                         #! EA = L0x4000829d38; Value = 0x0000008001090e19; PC = 0x274877984756 *)
mov x15 L0x4000829d38;
mov x16 L0x4000829d40;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984760 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x40008298f0; Value = 0x000000400085fa78; PC = 0x274877984764 *)
mov x23 L0x40008298f0;
mov x24 L0x40008298f8;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984768 *)
sbcs carry x14 x14 x22 carry;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984772 *)
sbcs carry x15 x15 x23 carry;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984776 *)
sbcs carry x16 x16 x24 carry;
(* ngc	x17, xzr                                    #! PC = 0x274877984780 *)
cmov x17 carry 0@uint64 0xffffffffffffffff@uint64;
(* and	x19, x5, x17                                #! PC = 0x274877984784 *)
and x19@uint64 x5 x17;
(* and	x20, x6, x17                                #! PC = 0x274877984788 *)
and x20@uint64 x6 x17;
(* adds	x11, x11, x19                              #! PC = 0x274877984792 *)
adds carry x11 x11 x19;
(* and	x21, x7, x17                                #! PC = 0x274877984796 *)
and x21@uint64 x7 x17;
(* adcs	x12, x12, x20                              #! PC = 0x274877984800 *)
adcs carry x12 x12 x20 carry;
(* and	x22, x8, x17                                #! PC = 0x274877984804 *)
and x22@uint64 x8 x17;
(* adcs	x13, x13, x21                              #! PC = 0x274877984808 *)
adcs carry x13 x13 x21 carry;
(* and	x23, x9, x17                                #! PC = 0x274877984812 *)
and x23@uint64 x9 x17;
(* adcs	x14, x14, x22                              #! PC = 0x274877984816 *)
adcs carry x14 x14 x22 carry;
(* and	x24, x10, x17                               #! PC = 0x274877984820 *)
and x24@uint64 x10 x17;
(* adcs	x15, x15, x23                              #! PC = 0x274877984824 *)
adcs carry x15 x15 x23 carry;
(* stp	x11, x12, [x0, #48]                         #! EA = L0x4000829d18; PC = 0x274877984828 *)
mov L0x4000829d18 x11;
mov L0x4000829d20 x12;
(* adc	x16, x16, x24                               #! PC = 0x274877984832 *)
adcs dontcare x16 x16 x24 carry;
(* stp	x13, x14, [x0, #64]                         #! EA = L0x4000829d28; PC = 0x274877984836 *)
mov L0x4000829d28 x13;
mov L0x4000829d30 x14;
(* stp	x15, x16, [x0, #80]                         #! EA = L0x4000829d38; PC = 0x274877984840 *)
mov L0x4000829d38 x15;
mov L0x4000829d40 x16;
(* #ret                                            #! PC = 0x274877984844 *)
#ret                                            #! 0x274877984844 = 0x274877984844;

assert true
    && eqmod ((limbs 64 [L0x4000829ce8, L0x4000829cf0, L0x4000829cf8,
                         L0x4000829d00, L0x4000829d08, L0x4000829d10,
                         L0x4000829d18, L0x4000829d20, L0x4000829d28,
                         L0x4000829d30, L0x4000829d38, L0x4000829d40]) +
              (limbs 64 [L0x40008298a0, L0x40008298a8, L0x40008298b0,
                         L0x40008298b8, L0x40008298c0, L0x40008298c8,
                         L0x40008298d0, L0x40008298d8, L0x40008298e0,
                         L0x40008298e8, L0x40008298f0, L0x40008298f8]))
             (limbs 64 [L0x4000829ce8o, L0x4000829cf0o, L0x4000829cf8o,
                        L0x4000829d00o, L0x4000829d08o, L0x4000829d10o,
                        L0x4000829d18o, L0x4000829d20o, L0x4000829d28o,
                        L0x4000829d30o, L0x4000829d38o, L0x4000829d40o])
             (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                          m0,   m1,   m2,   m3,   m4,   m5]);

assume eqmod ((limbs 64 [L0x4000829ce8, L0x4000829cf0, L0x4000829cf8,
                         L0x4000829d00, L0x4000829d08, L0x4000829d10,
                         L0x4000829d18, L0x4000829d20, L0x4000829d28,
                         L0x4000829d30, L0x4000829d38, L0x4000829d40]) +
              (limbs 64 [L0x40008298a0, L0x40008298a8, L0x40008298b0,
                         L0x40008298b8, L0x40008298c0, L0x40008298c8,
                         L0x40008298d0, L0x40008298d8, L0x40008298e0,
                         L0x40008298e8, L0x40008298f0, L0x40008298f8]))
             (limbs 64 [L0x4000829ce8o, L0x4000829cf0o, L0x4000829cf8o,
                        L0x4000829d00o, L0x4000829d08o, L0x4000829d10o,
                        L0x4000829d18o, L0x4000829d20o, L0x4000829d28o,
                        L0x4000829d30o, L0x4000829d38o, L0x4000829d40o])
             (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5])
    && true;

(* add	x2, x26, #0x0                               #! PC = 0x274877990056 *)
adds dontcare x2 x26 0@uint64;
(* #bl	0x4000012fa0 <__sub_mod_384x384>            #! PC = 0x274877990060 *)
#bl	0x4000012fa0 <__sub_mod_384x384>            #! 0x274877990060 = 0x274877990060;

rcut and [limbs 64 [L0x4000829d18, L0x4000829d20, L0x4000829d28,
                    L0x4000829d30, L0x4000829d38, L0x4000829d40] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
          m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
          m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64
     ];

ghost L0x4000829ce8p@uint64, L0x4000829cf0p@uint64, L0x4000829cf8p@uint64,
      L0x4000829d00p@uint64, L0x4000829d08p@uint64, L0x4000829d10p@uint64,
      L0x4000829d18p@uint64, L0x4000829d20p@uint64, L0x4000829d28p@uint64,
      L0x4000829d30p@uint64, L0x4000829d38p@uint64, L0x4000829d40p@uint64 :
      and [L0x4000829ce8p=L0x4000829ce8, L0x4000829cf0p=L0x4000829cf0,
           L0x4000829cf8p=L0x4000829cf8, L0x4000829d00p=L0x4000829d00,
           L0x4000829d08p=L0x4000829d08, L0x4000829d10p=L0x4000829d10,
           L0x4000829d18p=L0x4000829d18, L0x4000829d20p=L0x4000829d20,
           L0x4000829d28p=L0x4000829d28, L0x4000829d30p=L0x4000829d30,
           L0x4000829d38p=L0x4000829d38, L0x4000829d40p=L0x4000829d40]
   && and [L0x4000829ce8p=L0x4000829ce8, L0x4000829cf0p=L0x4000829cf0,
           L0x4000829cf8p=L0x4000829cf8, L0x4000829d00p=L0x4000829d00,
           L0x4000829d08p=L0x4000829d08, L0x4000829d10p=L0x4000829d10,
           L0x4000829d18p=L0x4000829d18, L0x4000829d20p=L0x4000829d20,
           L0x4000829d28p=L0x4000829d28, L0x4000829d30p=L0x4000829d30,
           L0x4000829d38p=L0x4000829d38, L0x4000829d40p=L0x4000829d40];

(* ldp	x11, x12, [x1]                              #! EA = L0x4000829ce8; Value = 0x0a313ec56cbd7dc0; PC = 0x274877984672 *)
mov x11 L0x4000829ce8;
mov x12 L0x4000829cf0;
(* ldp	x19, x20, [x2]                              #! EA = L0x4000829c88; Value = 0x42f5820d776f9840; PC = 0x274877984676 *)
mov x19 L0x4000829c88;
mov x20 L0x4000829c90;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829cf8; Value = 0x6bc01cdc285e18a1; PC = 0x274877984680 *)
mov x13 L0x4000829cf8;
mov x14 L0x4000829d00;
(* subs	x11, x11, x19                              #! PC = 0x274877984684 *)
subc carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x4000829c98; Value = 0x42822e1c2873f4a0; PC = 0x274877984688 *)
mov x21 L0x4000829c98;
mov x22 L0x4000829ca0;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984692 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829d08; Value = 0xb71fec743793b9a1; PC = 0x274877984696 *)
mov x15 L0x4000829d08;
mov x16 L0x4000829d10;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984700 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x4000829ca8; Value = 0xc6c52bca7f5b01c0; PC = 0x274877984704 *)
mov x23 L0x4000829ca8;
mov x24 L0x4000829cb0;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984708 *)
sbcs carry x14 x14 x22 carry;
(* stp	x11, x12, [x0]                              #! EA = L0x4000829ce8; PC = 0x274877984712 *)
mov L0x4000829ce8 x11;
mov L0x4000829cf0 x12;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984716 *)
sbcs carry x15 x15 x23 carry;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0x4000829d18; Value = 0xad70a2521a91d152; PC = 0x274877984720 *)
mov x11 L0x4000829d18;
mov x12 L0x4000829d20;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984724 *)
sbcs carry x16 x16 x24 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x4000829cb8; Value = 0x842ea77caa980760; PC = 0x274877984728 *)
mov x19 L0x4000829cb8;
mov x20 L0x4000829cc0;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x4000829cf8; PC = 0x274877984732 *)
mov L0x4000829cf8 x13;
mov L0x4000829d00 x14;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0x4000829d28; Value = 0x4a9e72564d492b99; PC = 0x274877984736 *)
mov x13 L0x4000829d28;
mov x14 L0x4000829d30;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x4000829cc8; Value = 0x83de8ddb9debda00; PC = 0x274877984740 *)
mov x21 L0x4000829cc8;
mov x22 L0x4000829cd0;
(* sbcs	x11, x11, x19                              #! PC = 0x274877984744 *)
sbcs carry x11 x11 x19 carry;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x4000829d08; PC = 0x274877984748 *)
mov L0x4000829d08 x15;
mov L0x4000829d10 x16;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984752 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #80]                         #! EA = L0x4000829d38; Value = 0x00000040008313a0; PC = 0x274877984756 *)
mov x15 L0x4000829d38;
mov x16 L0x4000829d40;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984760 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x4000829cd8; Value = 0x0000000000001000; PC = 0x274877984764 *)
mov x23 L0x4000829cd8;
mov x24 L0x4000829ce0;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984768 *)
sbcs carry x14 x14 x22 carry;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984772 *)
sbcs carry x15 x15 x23 carry;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984776 *)
sbcs carry x16 x16 x24 carry;
(* ngc	x17, xzr                                    #! PC = 0x274877984780 *)
cmov x17 carry 0@uint64 0xffffffffffffffff@uint64;
(* and	x19, x5, x17                                #! PC = 0x274877984784 *)
and x19@uint64 x5 x17;
(* and	x20, x6, x17                                #! PC = 0x274877984788 *)
and x20@uint64 x6 x17;
(* adds	x11, x11, x19                              #! PC = 0x274877984792 *)
adds carry x11 x11 x19;
(* and	x21, x7, x17                                #! PC = 0x274877984796 *)
and x21@uint64 x7 x17;
(* adcs	x12, x12, x20                              #! PC = 0x274877984800 *)
adcs carry x12 x12 x20 carry;
(* and	x22, x8, x17                                #! PC = 0x274877984804 *)
and x22@uint64 x8 x17;
(* adcs	x13, x13, x21                              #! PC = 0x274877984808 *)
adcs carry x13 x13 x21 carry;
(* and	x23, x9, x17                                #! PC = 0x274877984812 *)
and x23@uint64 x9 x17;
(* adcs	x14, x14, x22                              #! PC = 0x274877984816 *)
adcs carry x14 x14 x22 carry;
(* and	x24, x10, x17                               #! PC = 0x274877984820 *)
and x24@uint64 x10 x17;
(* adcs	x15, x15, x23                              #! PC = 0x274877984824 *)
adcs carry x15 x15 x23 carry;
(* stp	x11, x12, [x0, #48]                         #! EA = L0x4000829d18; PC = 0x274877984828 *)
mov L0x4000829d18 x11;
mov L0x4000829d20 x12;
(* adc	x16, x16, x24                               #! PC = 0x274877984832 *)
adcs dontcare x16 x16 x24 carry;
(* stp	x13, x14, [x0, #64]                         #! EA = L0x4000829d28; PC = 0x274877984836 *)
mov L0x4000829d28 x13;
mov L0x4000829d30 x14;
(* stp	x15, x16, [x0, #80]                         #! EA = L0x4000829d38; PC = 0x274877984840 *)
mov L0x4000829d38 x15;
mov L0x4000829d40 x16;
(* #ret                                            #! PC = 0x274877984844 *)
#ret                                            #! 0x274877984844 = 0x274877984844;

assert true
    && eqmod ((limbs 64 [L0x4000829ce8, L0x4000829cf0, L0x4000829cf8,
                         L0x4000829d00, L0x4000829d08, L0x4000829d10,
                         L0x4000829d18, L0x4000829d20, L0x4000829d28,
                         L0x4000829d30, L0x4000829d38, L0x4000829d40]) +
              (limbs 64 [L0x4000829c88, L0x4000829c90, L0x4000829c98,
                         L0x4000829ca0, L0x4000829ca8, L0x4000829cb0,
                         L0x4000829cb8, L0x4000829cc0, L0x4000829cc8,
                         L0x4000829cd0, L0x4000829cd8, L0x4000829ce0]))
             (limbs 64 [L0x4000829ce8p, L0x4000829cf0p, L0x4000829cf8p,
                        L0x4000829d00p, L0x4000829d08p, L0x4000829d10p,
                        L0x4000829d18p, L0x4000829d20p, L0x4000829d28p,
                        L0x4000829d30p, L0x4000829d38p, L0x4000829d40p])
             (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                          m0,   m1,   m2,   m3,   m4,   m5]);

assume eqmod ((limbs 64 [L0x4000829ce8, L0x4000829cf0, L0x4000829cf8,
                         L0x4000829d00, L0x4000829d08, L0x4000829d10,
                         L0x4000829d18, L0x4000829d20, L0x4000829d28,
                         L0x4000829d30, L0x4000829d38, L0x4000829d40]) +
              (limbs 64 [L0x4000829c88, L0x4000829c90, L0x4000829c98,
                         L0x4000829ca0, L0x4000829ca8, L0x4000829cb0,
                         L0x4000829cb8, L0x4000829cc0, L0x4000829cc8,
                         L0x4000829cd0, L0x4000829cd8, L0x4000829ce0]))
             (limbs 64 [L0x4000829ce8p, L0x4000829cf0p, L0x4000829cf8p,
                        L0x4000829d00p, L0x4000829d08p, L0x4000829d10p,
                        L0x4000829d18p, L0x4000829d20p, L0x4000829d28p,
                        L0x4000829d30p, L0x4000829d38p, L0x4000829d40p])
             (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5])
    && true;

(* add	x1, x26, #0x0                               #! PC = 0x274877990064 *)
adds dontcare x1 x26 0@uint64;
(* mov	x2, sp                                      #! PC = 0x274877990068 *)
mov x2 sp;
(* add	x0, x26, #0x0                               #! PC = 0x274877990072 *)
adds dontcare x0 x26 0@uint64;
(* #bl	0x4000012fa0 <__sub_mod_384x384>            #! PC = 0x274877990076 *)
#bl	0x4000012fa0 <__sub_mod_384x384>            #! 0x274877990076 = 0x274877990076;

rcut and [limbs 64 [L0x40008298d0, L0x40008298d8, L0x40008298e0,
                    L0x40008298e8, L0x40008298f0, L0x40008298f8] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829cb8, L0x4000829cc0, L0x4000829cc8,
                    L0x4000829cd0, L0x4000829cd8, L0x4000829ce0] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829d18, L0x4000829d20, L0x4000829d28,
                    L0x4000829d30, L0x4000829d38, L0x4000829d40] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
          m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
          m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64
     ] prove with all cuts;

ghost L0x4000829c88o@uint64, L0x4000829c90o@uint64, L0x4000829c98o@uint64,
      L0x4000829ca0o@uint64, L0x4000829ca8o@uint64, L0x4000829cb0o@uint64,
      L0x4000829cb8o@uint64, L0x4000829cc0o@uint64, L0x4000829cc8o@uint64,
      L0x4000829cd0o@uint64, L0x4000829cd8o@uint64, L0x4000829ce0o@uint64 :
      and [L0x4000829c88o=L0x4000829c88, L0x4000829c90o=L0x4000829c90,
           L0x4000829c98o=L0x4000829c98, L0x4000829ca0o=L0x4000829ca0,
           L0x4000829ca8o=L0x4000829ca8, L0x4000829cb0o=L0x4000829cb0,
           L0x4000829cb8o=L0x4000829cb8, L0x4000829cc0o=L0x4000829cc0,
           L0x4000829cc8o=L0x4000829cc8, L0x4000829cd0o=L0x4000829cd0,
           L0x4000829cd8o=L0x4000829cd8, L0x4000829ce0o=L0x4000829ce0]
   && and [L0x4000829c88o=L0x4000829c88, L0x4000829c90o=L0x4000829c90,
           L0x4000829c98o=L0x4000829c98, L0x4000829ca0o=L0x4000829ca0,
           L0x4000829ca8o=L0x4000829ca8, L0x4000829cb0o=L0x4000829cb0,
           L0x4000829cb8o=L0x4000829cb8, L0x4000829cc0o=L0x4000829cc0,
           L0x4000829cc8o=L0x4000829cc8, L0x4000829cd0o=L0x4000829cd0,
           L0x4000829cd8o=L0x4000829cd8, L0x4000829ce0o=L0x4000829ce0];


(* ldp	x11, x12, [x1]                              #! EA = L0x4000829c88; Value = 0x42f5820d776f9840; PC = 0x274877984672 *)
mov x11 L0x4000829c88;
mov x12 L0x4000829c90;
(* ldp	x19, x20, [x2]                              #! EA = L0x40008298a0; Value = 0x83772503ff62e640; PC = 0x274877984676 *)
mov x19 L0x40008298a0;
mov x20 L0x40008298a8;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829c98; Value = 0x42822e1c2873f4a0; PC = 0x274877984680 *)
mov x13 L0x4000829c98;
mov x14 L0x4000829ca0;
(* subs	x11, x11, x19                              #! PC = 0x274877984684 *)
subc carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x40008298b0; Value = 0xe59c03ff476a6660; PC = 0x274877984688 *)
mov x21 L0x40008298b0;
mov x22 L0x40008298b8;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984692 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829ca8; Value = 0xc6c52bca7f5b01c0; PC = 0x274877984696 *)
mov x15 L0x4000829ca8;
mov x16 L0x4000829cb0;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984700 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x40008298c0; Value = 0x287e6d84f9be72a0; PC = 0x274877984704 *)
mov x23 L0x40008298c0;
mov x24 L0x40008298c8;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984708 *)
sbcs carry x14 x14 x22 carry;
(* stp	x11, x12, [x0]                              #! EA = L0x4000829c88; PC = 0x274877984712 *)
mov L0x4000829c88 x11;
mov L0x4000829c90 x12;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984716 *)
sbcs carry x15 x15 x23 carry;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0x4000829cb8; Value = 0x842ea77caa980760; PC = 0x274877984720 *)
mov x11 L0x4000829cb8;
mov x12 L0x4000829cc0;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984724 *)
sbcs carry x16 x16 x24 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x40008298d0; Value = 0xa50a009debb6c74b; PC = 0x274877984728 *)
mov x19 L0x40008298d0;
mov x20 L0x40008298d8;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x4000829c98; PC = 0x274877984732 *)
mov L0x4000829c98 x13;
mov L0x4000829ca0 x14;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0x4000829cc8; Value = 0x83de8ddb9debda00; PC = 0x274877984736 *)
mov x13 L0x4000829cc8;
mov x14 L0x4000829cd0;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x40008298e0; Value = 0x421f9f0e457f2911; PC = 0x274877984740 *)
mov x21 L0x40008298e0;
mov x22 L0x40008298e8;
(* sbcs	x11, x11, x19                              #! PC = 0x274877984744 *)
sbcs carry x11 x11 x19 carry;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x4000829ca8; PC = 0x274877984748 *)
mov L0x4000829ca8 x15;
mov L0x4000829cb0 x16;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984752 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #80]                         #! EA = L0x4000829cd8; Value = 0x0000000000001000; PC = 0x274877984756 *)
mov x15 L0x4000829cd8;
mov x16 L0x4000829ce0;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984760 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x40008298f0; Value = 0x000000400085fa78; PC = 0x274877984764 *)
mov x23 L0x40008298f0;
mov x24 L0x40008298f8;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984768 *)
sbcs carry x14 x14 x22 carry;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984772 *)
sbcs carry x15 x15 x23 carry;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984776 *)
sbcs carry x16 x16 x24 carry;
(* ngc	x17, xzr                                    #! PC = 0x274877984780 *)
cmov x17 carry 0@uint64 0xffffffffffffffff@uint64;
(* and	x19, x5, x17                                #! PC = 0x274877984784 *)
and x19@uint64 x5 x17;
(* and	x20, x6, x17                                #! PC = 0x274877984788 *)
and x20@uint64 x6 x17;
(* adds	x11, x11, x19                              #! PC = 0x274877984792 *)
adds carry x11 x11 x19;
(* and	x21, x7, x17                                #! PC = 0x274877984796 *)
and x21@uint64 x7 x17;
(* adcs	x12, x12, x20                              #! PC = 0x274877984800 *)
adcs carry x12 x12 x20 carry;
(* and	x22, x8, x17                                #! PC = 0x274877984804 *)
and x22@uint64 x8 x17;
(* adcs	x13, x13, x21                              #! PC = 0x274877984808 *)
adcs carry x13 x13 x21 carry;
(* and	x23, x9, x17                                #! PC = 0x274877984812 *)
and x23@uint64 x9 x17;
(* adcs	x14, x14, x22                              #! PC = 0x274877984816 *)
adcs carry x14 x14 x22 carry;
(* and	x24, x10, x17                               #! PC = 0x274877984820 *)
and x24@uint64 x10 x17;
(* adcs	x15, x15, x23                              #! PC = 0x274877984824 *)
adcs carry x15 x15 x23 carry;
(* stp	x11, x12, [x0, #48]                         #! EA = L0x4000829cb8; PC = 0x274877984828 *)
mov L0x4000829cb8 x11;
mov L0x4000829cc0 x12;
(* adc	x16, x16, x24                               #! PC = 0x274877984832 *)
adcs dontcare x16 x16 x24 carry;
(* stp	x13, x14, [x0, #64]                         #! EA = L0x4000829cc8; PC = 0x274877984836 *)
mov L0x4000829cc8 x13;
mov L0x4000829cd0 x14;
(* stp	x15, x16, [x0, #80]                         #! EA = L0x4000829cd8; PC = 0x274877984840 *)
mov L0x4000829cd8 x15;
mov L0x4000829ce0 x16;
(* #ret                                            #! PC = 0x274877984844 *)
#ret                                            #! 0x274877984844 = 0x274877984844;

assert true
    && eqmod ((limbs 64 [L0x4000829c88, L0x4000829c90, L0x4000829c98,
                         L0x4000829ca0, L0x4000829ca8, L0x4000829cb0,
                         L0x4000829cb8, L0x4000829cc0, L0x4000829cc8,
                         L0x4000829cd0, L0x4000829cd8, L0x4000829ce0]) +
              (limbs 64 [L0x40008298a0, L0x40008298a8, L0x40008298b0,
                         L0x40008298b8, L0x40008298c0, L0x40008298c8,
                         L0x40008298d0, L0x40008298d8, L0x40008298e0,
                         L0x40008298e8, L0x40008298f0, L0x40008298f8]))
             (limbs 64 [L0x4000829c88o, L0x4000829c90o, L0x4000829c98o,
                        L0x4000829ca0o, L0x4000829ca8o, L0x4000829cb0o,
                        L0x4000829cb8o, L0x4000829cc0o, L0x4000829cc8o,
                        L0x4000829cd0o, L0x4000829cd8o, L0x4000829ce0o])
             (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                          m0,   m1,   m2,   m3,   m4,   m5]);

assume eqmod ((limbs 64 [L0x4000829c88, L0x4000829c90, L0x4000829c98,
                         L0x4000829ca0, L0x4000829ca8, L0x4000829cb0,
                         L0x4000829cb8, L0x4000829cc0, L0x4000829cc8,
                         L0x4000829cd0, L0x4000829cd8, L0x4000829ce0]) +
              (limbs 64 [L0x40008298a0, L0x40008298a8, L0x40008298b0,
                         L0x40008298b8, L0x40008298c0, L0x40008298c8,
                         L0x40008298d0, L0x40008298d8, L0x40008298e0,
                         L0x40008298e8, L0x40008298f0, L0x40008298f8]))
             (limbs 64 [L0x4000829c88o, L0x4000829c90o, L0x4000829c98o,
                        L0x4000829ca0o, L0x4000829ca8o, L0x4000829cb0o,
                        L0x4000829cb8o, L0x4000829cc0o, L0x4000829cc8o,
                        L0x4000829cd0o, L0x4000829cd8o, L0x4000829ce0o])
             (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5])
    && true;

(* ldr	x30, [x29, #8]                              #! EA = L0x4000829908; Value = 0x001f004000008b50; PC = 0x274877990080 *)
mov x30 L0x4000829908;
(* add	sp, sp, #0x60                               #! PC = 0x274877990084 *)
adds dontcare sp sp 0x60@uint64;
(* ldp	x19, x20, [x29, #16]                        #! EA = L0x4000829910; Value = 0x000000400082a048; PC = 0x274877990088 *)
mov x19 L0x4000829910;
mov x20 L0x4000829918;
(* ldp	x21, x22, [x29, #32]                        #! EA = L0x4000829920; Value = 0x000000400082a228; PC = 0x274877990092 *)
mov x21 L0x4000829920;
mov x22 L0x4000829928;
(* ldp	x23, x24, [x29, #48]                        #! EA = L0x4000829930; Value = 0x0000004000829c88; PC = 0x274877990096 *)
mov x23 L0x4000829930;
mov x24 L0x4000829938;
(* ldp	x25, x26, [x29, #64]                        #! EA = L0x4000829940; Value = 0x000000400082a108; PC = 0x274877990100 *)
mov x25 L0x4000829940;
mov x26 L0x4000829948;
(* ldp	x27, x28, [x29, #80]                        #! EA = L0x4000829950; Value = 0x0000004000829b08; PC = 0x274877990104 *)
mov x27 L0x4000829950;
mov x28 L0x4000829958;
(* ldr	x29, [sp], #128                             #! EA = L0x4000829900; Value = 0x0000004000829980; PC = 0x274877990108 *)
mov x29 L0x4000829900;
(* #autiasp                                         #! PC = 0x274877990112 *)
#autiasp                                         #! 0x274877990112 = 0x274877990112;
(* #ret                                            #! PC = 0x274877990116 *)
#ret                                            #! 0x274877990116 = 0x274877990116;
(* ldp	x29, x30, [sp], #16                         #! EA = L0x4000829980; Value = 0x0000004000829990; PC = 0x274877942608 *)
mov x29 L0x4000829980;
mov x30 L0x4000829988;
(* #ret                                            #! PC = 0x274877942612 *)
#ret                                            #! 0x274877942612 = 0x274877942612;

(* mul_382x(t2, a[2], b[2]) *)

assert eqmod ((limbs 64 [L0x4000829c88, L0x4000829c90, L0x4000829c98,
                         L0x4000829ca0, L0x4000829ca8, L0x4000829cb0,
                         L0x4000829cb8, L0x4000829cc0, L0x4000829cc8,
                         L0x4000829cd0, L0x4000829cd8, L0x4000829ce0]) +
              (limbs 64 [L0x4000829ce8, L0x4000829cf0, L0x4000829cf8,
                         L0x4000829d00, L0x4000829d08, L0x4000829d10,
                         L0x4000829d18, L0x4000829d20, L0x4000829d28,
                         L0x4000829d30, L0x4000829d38, L0x4000829d40]) * U)
             ((limbs 64 [a40, a41, a42, a43, a44, a45] +
               limbs 64 [a50, a51, a52, a53, a54, a55] * U) *
              (limbs 64 [b40, b41, b42, b43, b44, b45] +
               limbs 64 [b50, b51, b52, b53, b54, b55] * U))
             [limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5],
              U * U + 1]
    && true;

(* #adrp	x19, 0x4000029000                          #! PC = 0x274877950288 *)
#adrp	%%x19, 0x4000029000                          #! 0x274877950288 = 0x274877950288;
(* ldr	x19, [x19, #4056]                           #! EA = L0x4000029fd8; Value = 0x0000004000016928; PC = 0x274877950292 *)
mov x19 L0x4000029fd8;
(* add	x24, sp, #0xb8                              #! PC = 0x274877950296 *)
adds dontcare x24 sp 0xb8@uint64;
(* mov	x3, x19                                     #! PC = 0x274877950300 *)
mov x3 x19;
(* str	x25, [sp, #152]                             #! EA = L0x4000829a28; PC = 0x274877950304 *)
mov L0x4000829a28 x25;
(* mov	x2, x25                                     #! PC = 0x274877950308 *)
mov x2 x25;
(* str	x22, [sp, #136]                             #! EA = L0x4000829a18; PC = 0x274877950312 *)
mov L0x4000829a18 x22;

rcut and [limbs 64 [L0x400082a0a8, L0x400082a0b0, L0x400082a0b8,
                    L0x400082a0c0, L0x400082a0c8, L0x400082a0d0] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x400082a0d8, L0x400082a0e0, L0x400082a0e8,
                    L0x400082a0f0, L0x400082a0f8, L0x400082a100] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x400082a108, L0x400082a110, L0x400082a118,
                    L0x400082a120, L0x400082a128, L0x400082a130] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x400082a138, L0x400082a140, L0x400082a148,
                    L0x400082a150, L0x400082a158, L0x400082a160] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x400082a1c8, L0x400082a1d0, L0x400082a1d8,
                    L0x400082a1e0, L0x400082a1e8, L0x400082a1f0] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x400082a1f8, L0x400082a200, L0x400082a208,
                    L0x400082a210, L0x400082a218, L0x400082a220] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x400082a228, L0x400082a230, L0x400082a238,
                    L0x400082a240, L0x400082a248, L0x400082a250] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x400082a258, L0x400082a260, L0x400082a268,
                    L0x400082a270, L0x400082a278, L0x400082a280] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829cb8, L0x4000829cc0, L0x4000829cc8,
                    L0x4000829cd0, L0x4000829cd8, L0x4000829ce0] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829d18, L0x4000829d20, L0x4000829d28,
                    L0x4000829d30, L0x4000829d38, L0x4000829d40] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
          m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
          m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64
     ] prove with precondition;

(* mov	x1, x22                                     #! PC = 0x274877950316 *)
mov x1 x22;
(* mov	x0, x24                                     #! PC = 0x274877950320 *)
mov x0 x24;
(* #bl	0x4000011be0 <add_mod_384x>                 #! PC = 0x274877950324 *)
#bl	0x4000011be0 <add_mod_384x>                 #! 0x274877950324 = 0x274877950324;
(* #paciasp                                         #! PC = 0x274877979616 *)
#paciasp                                         #! 0x274877979616 = 0x274877979616;
(* stp	x29, x30, [sp, #-48]!                       #! EA = L0x4000829960; PC = 0x274877979620 *)
mov L0x4000829960 x29;
mov L0x4000829968 x30;
(* mov	x29, sp                                     #! PC = 0x274877979624 *)
mov x29 sp;
(* stp	x19, x20, [sp, #16]                         #! EA = L0x4000829970; PC = 0x274877979628 *)
mov L0x4000829970 x19;
mov L0x4000829978 x20;
(* stp	x21, x22, [sp, #32]                         #! EA = L0x4000829980; PC = 0x274877979632 *)
mov L0x4000829980 x21;
mov L0x4000829988 x22;
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
(* ldp	x10, x11, [x1]                              #! EA = L0x400082a0a8; Value = 0x0000000000000000; PC = 0x274877979488 *)
mov x10 L0x400082a0a8;
mov x11 L0x400082a0b0;
(* ldp	x16, x17, [x2]                              #! EA = L0x400082a108; Value = 0x000000400085ea78; PC = 0x274877979492 *)
mov x16 L0x400082a108;
mov x17 L0x400082a110;
(* ldp	x12, x13, [x1, #16]                         #! EA = L0x400082a0b8; Value = 0x0000000000000000; PC = 0x274877979496 *)
mov x12 L0x400082a0b8;
mov x13 L0x400082a0c0;
(* ldp	x19, x20, [x2, #16]                         #! EA = L0x400082a118; Value = 0x0000004000841d2c; PC = 0x274877979500 *)
mov x19 L0x400082a118;
mov x20 L0x400082a120;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0x400082a0c8; Value = 0x0000008001086c68; PC = 0x274877979504 *)
mov x14 L0x400082a0c8;
mov x15 L0x400082a0d0;
(* ldp	x21, x22, [x2, #32]                         #! EA = L0x400082a128; Value = 0x000000400085d000; PC = 0x274877979508 *)
mov x21 L0x400082a128;
mov x22 L0x400082a130;
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
(* stp	x10, x11, [x0]                              #! EA = L0x4000829a48; PC = 0x274877979652 *)
mov L0x4000829a48 x10;
mov L0x4000829a50 x11;
(* add	x1, x1, #0x30                               #! PC = 0x274877979656 *)
adds dontcare x1 x1 0x30@uint64;
(* stp	x12, x13, [x0, #16]                         #! EA = L0x4000829a58; PC = 0x274877979660 *)
mov L0x4000829a58 x12;
mov L0x4000829a60 x13;
(* add	x2, x2, #0x30                               #! PC = 0x274877979664 *)
adds dontcare x2 x2 0x30@uint64;
(* stp	x14, x15, [x0, #32]                         #! EA = L0x4000829a68; PC = 0x274877979668 *)
mov L0x4000829a68 x14;
mov L0x4000829a70 x15;
(* #bl	0x4000011b60 <__add_mod_384>                #! PC = 0x274877979672 *)
#bl	0x4000011b60 <__add_mod_384>                #! 0x274877979672 = 0x274877979672;
(* ldp	x10, x11, [x1]                              #! EA = L0x400082a0d8; Value = 0x000000800085d000; PC = 0x274877979488 *)
mov x10 L0x400082a0d8;
mov x11 L0x400082a0e0;
(* ldp	x16, x17, [x2]                              #! EA = L0x400082a138; Value = 0x000000400082ae28; PC = 0x274877979492 *)
mov x16 L0x400082a138;
mov x17 L0x400082a140;
(* ldp	x12, x13, [x1, #16]                         #! EA = L0x400082a0e8; Value = 0x000000800085ead0; PC = 0x274877979496 *)
mov x12 L0x400082a0e8;
mov x13 L0x400082a0f0;
(* ldp	x19, x20, [x2, #16]                         #! EA = L0x400082a148; Value = 0x000000400082da1c; PC = 0x274877979500 *)
mov x19 L0x400082a148;
mov x20 L0x400082a150;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0x400082a0f8; Value = 0x00000080010bb000; PC = 0x274877979504 *)
mov x14 L0x400082a0f8;
mov x15 L0x400082a100;
(* ldp	x21, x22, [x2, #32]                         #! EA = L0x400082a158; Value = 0x000000400082ad60; PC = 0x274877979508 *)
mov x21 L0x400082a158;
mov x22 L0x400082a160;
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
(* ldr	x30, [sp, #8]                               #! EA = L0x4000829968; Value = 0x007300400000a978; PC = 0x274877979676 *)
mov x30 L0x4000829968;
(* stp	x10, x11, [x0, #48]                         #! EA = L0x4000829a78; PC = 0x274877979680 *)
mov L0x4000829a78 x10;
mov L0x4000829a80 x11;
(* stp	x12, x13, [x0, #64]                         #! EA = L0x4000829a88; PC = 0x274877979684 *)
mov L0x4000829a88 x12;
mov L0x4000829a90 x13;
(* stp	x14, x15, [x0, #80]                         #! EA = L0x4000829a98; PC = 0x274877979688 *)
mov L0x4000829a98 x14;
mov L0x4000829aa0 x15;
(* ldp	x19, x20, [x29, #16]                        #! EA = L0x4000829970; Value = 0x0000004000016928; PC = 0x274877979692 *)
mov x19 L0x4000829970;
mov x20 L0x4000829978;
(* ldp	x21, x22, [x29, #32]                        #! EA = L0x4000829980; Value = 0x000000400082a228; PC = 0x274877979696 *)
mov x21 L0x4000829980;
mov x22 L0x4000829988;
(* ldr	x29, [sp], #48                              #! EA = L0x4000829960; Value = 0x0000004000829990; PC = 0x274877979700 *)
mov x29 L0x4000829960;
(* #autiasp                                         #! PC = 0x274877979704 *)
#autiasp                                         #! 0x274877979704 = 0x274877979704;
(* #ret                                            #! PC = 0x274877979708 *)
#ret                                            #! 0x274877979708 = 0x274877979708;

(* add_fp2(aa, a[1], a[2]) *)

assert true
    && eqmod (limbs 64 [L0x4000829a48, L0x4000829a50, L0x4000829a58,
                        L0x4000829a60, L0x4000829a68, L0x4000829a70])
             (limbs 64 [a20, a21, a22, a23, a24, a25] +
              limbs 64 [a40, a41, a42, a43, a44, a45])
             (limbs 64 [m0, m1, m2, m3, m4, m5]);

assume eqmod (limbs 64 [L0x4000829a48, L0x4000829a50, L0x4000829a58,
                        L0x4000829a60, L0x4000829a68, L0x4000829a70])
             (limbs 64 [a20, a21, a22, a23, a24, a25] +
              limbs 64 [a40, a41, a42, a43, a44, a45])
             (limbs 64 [m0, m1, m2, m3, m4, m5])
    && true;

assert true
    && eqmod (limbs 64 [L0x4000829a78, L0x4000829a80, L0x4000829a88,
                        L0x4000829a90, L0x4000829a98, L0x4000829aa0])
             (limbs 64 [a30, a31, a32, a33, a34, a35] +
              limbs 64 [a50, a51, a52, a53, a54, a55])
             (limbs 64 [m0, m1, m2, m3, m4, m5]);

assume eqmod (limbs 64 [L0x4000829a78, L0x4000829a80, L0x4000829a88,
                        L0x4000829a90, L0x4000829a98, L0x4000829aa0])
             (limbs 64 [a30, a31, a32, a33, a34, a35] +
              limbs 64 [a50, a51, a52, a53, a54, a55])
             (limbs 64 [m0, m1, m2, m3, m4, m5])
    && true;

(* add	x25, sp, #0x118                             #! PC = 0x274877950328 *)
adds dontcare x25 sp 0x118@uint64;
(* mov	x3, x19                                     #! PC = 0x274877950332 *)
mov x3 x19;
(* str	x21, [sp, #160]                             #! EA = L0x4000829a30; PC = 0x274877950336 *)
mov L0x4000829a30 x21;
(* mov	x2, x21                                     #! PC = 0x274877950340 *)
mov x2 x21;
(* str	x26, [sp, #144]                             #! EA = L0x4000829a20; PC = 0x274877950344 *)
mov L0x4000829a20 x26;
(* mov	x1, x26                                     #! PC = 0x274877950348 *)
mov x1 x26;
(* mov	x0, x25                                     #! PC = 0x274877950352 *)
mov x0 x25;
(* #bl	0x4000011be0 <add_mod_384x>                 #! PC = 0x274877950356 *)
#bl	0x4000011be0 <add_mod_384x>                 #! 0x274877950356 = 0x274877950356;
(* #paciasp                                         #! PC = 0x274877979616 *)
#paciasp                                         #! 0x274877979616 = 0x274877979616;
(* stp	x29, x30, [sp, #-48]!                       #! EA = L0x4000829960; PC = 0x274877979620 *)
mov L0x4000829960 x29;
mov L0x4000829968 x30;
(* mov	x29, sp                                     #! PC = 0x274877979624 *)
mov x29 sp;
(* stp	x19, x20, [sp, #16]                         #! EA = L0x4000829970; PC = 0x274877979628 *)
mov L0x4000829970 x19;
mov L0x4000829978 x20;
(* stp	x21, x22, [sp, #32]                         #! EA = L0x4000829980; PC = 0x274877979632 *)
mov L0x4000829980 x21;
mov L0x4000829988 x22;
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
(* ldp	x10, x11, [x1]                              #! EA = L0x400082a1c8; Value = 0x0000000000000000; PC = 0x274877979488 *)
mov x10 L0x400082a1c8;
mov x11 L0x400082a1d0;
(* ldp	x16, x17, [x2]                              #! EA = L0x400082a228; Value = 0x000000400085ea78; PC = 0x274877979492 *)
mov x16 L0x400082a228;
mov x17 L0x400082a230;
(* ldp	x12, x13, [x1, #16]                         #! EA = L0x400082a1d8; Value = 0x0000000000000000; PC = 0x274877979496 *)
mov x12 L0x400082a1d8;
mov x13 L0x400082a1e0;
(* ldp	x19, x20, [x2, #16]                         #! EA = L0x400082a238; Value = 0x0000000000000000; PC = 0x274877979500 *)
mov x19 L0x400082a238;
mov x20 L0x400082a240;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0x400082a1e8; Value = 0x0000004000845000; PC = 0x274877979504 *)
mov x14 L0x400082a1e8;
mov x15 L0x400082a1f0;
(* ldp	x21, x22, [x2, #32]                         #! EA = L0x400082a248; Value = 0x0000004000841c68; PC = 0x274877979508 *)
mov x21 L0x400082a248;
mov x22 L0x400082a250;
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
(* stp	x10, x11, [x0]                              #! EA = L0x4000829aa8; PC = 0x274877979652 *)
mov L0x4000829aa8 x10;
mov L0x4000829ab0 x11;
(* add	x1, x1, #0x30                               #! PC = 0x274877979656 *)
adds dontcare x1 x1 0x30@uint64;
(* stp	x12, x13, [x0, #16]                         #! EA = L0x4000829ab8; PC = 0x274877979660 *)
mov L0x4000829ab8 x12;
mov L0x4000829ac0 x13;
(* add	x2, x2, #0x30                               #! PC = 0x274877979664 *)
adds dontcare x2 x2 0x30@uint64;
(* stp	x14, x15, [x0, #32]                         #! EA = L0x4000829ac8; PC = 0x274877979668 *)
mov L0x4000829ac8 x14;
mov L0x4000829ad0 x15;
(* #bl	0x4000011b60 <__add_mod_384>                #! PC = 0x274877979672 *)
#bl	0x4000011b60 <__add_mod_384>                #! 0x274877979672 = 0x274877979672;
(* ldp	x10, x11, [x1]                              #! EA = L0x400082a1f8; Value = 0x0000004000000000; PC = 0x274877979488 *)
mov x10 L0x400082a1f8;
mov x11 L0x400082a200;
(* ldp	x16, x17, [x2]                              #! EA = L0x400082a258; Value = 0x0000008001087e28; PC = 0x274877979492 *)
mov x16 L0x400082a258;
mov x17 L0x400082a260;
(* ldp	x12, x13, [x1, #16]                         #! EA = L0x400082a208; Value = 0x000000400085ea90; PC = 0x274877979496 *)
mov x12 L0x400082a208;
mov x13 L0x400082a210;
(* ldp	x19, x20, [x2, #16]                         #! EA = L0x400082a268; Value = 0x0000004000000040; PC = 0x274877979500 *)
mov x19 L0x400082a268;
mov x20 L0x400082a270;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0x400082a218; Value = 0x000000400085e000; PC = 0x274877979504 *)
mov x14 L0x400082a218;
mov x15 L0x400082a220;
(* ldp	x21, x22, [x2, #32]                         #! EA = L0x400082a278; Value = 0x000000400085d000; PC = 0x274877979508 *)
mov x21 L0x400082a278;
mov x22 L0x400082a280;
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
(* ldr	x30, [sp, #8]                               #! EA = L0x4000829968; Value = 0x000d00400000a998; PC = 0x274877979676 *)
mov x30 L0x4000829968;
(* stp	x10, x11, [x0, #48]                         #! EA = L0x4000829ad8; PC = 0x274877979680 *)
mov L0x4000829ad8 x10;
mov L0x4000829ae0 x11;
(* stp	x12, x13, [x0, #64]                         #! EA = L0x4000829ae8; PC = 0x274877979684 *)
mov L0x4000829ae8 x12;
mov L0x4000829af0 x13;
(* stp	x14, x15, [x0, #80]                         #! EA = L0x4000829af8; PC = 0x274877979688 *)
mov L0x4000829af8 x14;
mov L0x4000829b00 x15;
(* ldp	x19, x20, [x29, #16]                        #! EA = L0x4000829970; Value = 0x0000004000016928; PC = 0x274877979692 *)
mov x19 L0x4000829970;
mov x20 L0x4000829978;
(* ldp	x21, x22, [x29, #32]                        #! EA = L0x4000829980; Value = 0x000000400082a228; PC = 0x274877979696 *)
mov x21 L0x4000829980;
mov x22 L0x4000829988;
(* ldr	x29, [sp], #48                              #! EA = L0x4000829960; Value = 0x0000004000829990; PC = 0x274877979700 *)
mov x29 L0x4000829960;
(* #autiasp                                         #! PC = 0x274877979704 *)
#autiasp                                         #! 0x274877979704 = 0x274877979704;
(* #ret                                            #! PC = 0x274877979708 *)
#ret                                            #! 0x274877979708 = 0x274877979708;

(* add_fp2(bb, b[1], b[2]) *)

assert true
    && eqmod (limbs 64 [L0x4000829aa8, L0x4000829ab0, L0x4000829ab8,
                        L0x4000829ac0, L0x4000829ac8, L0x4000829ad0])
             (limbs 64 [b20, b21, b22, b23, b24, b25] +
              limbs 64 [b40, b41, b42, b43, b44, b45])
             (limbs 64 [m0, m1, m2, m3, m4, m5]);

assume eqmod (limbs 64 [L0x4000829aa8, L0x4000829ab0, L0x4000829ab8,
                        L0x4000829ac0, L0x4000829ac8, L0x4000829ad0])
             (limbs 64 [b20, b21, b22, b23, b24, b25] +
              limbs 64 [b40, b41, b42, b43, b44, b45])
             (limbs 64 [m0, m1, m2, m3, m4, m5])
    && true;

assert true
    && eqmod (limbs 64 [L0x4000829ad8, L0x4000829ae0, L0x4000829ae8,
                        L0x4000829af0, L0x4000829af8, L0x4000829b00])
             (limbs 64 [b30, b31, b32, b33, b34, b35] +
              limbs 64 [b50, b51, b52, b53, b54, b55])
             (limbs 64 [m0, m1, m2, m3, m4, m5]);

assume eqmod (limbs 64 [L0x4000829ad8, L0x4000829ae0, L0x4000829ae8,
                        L0x4000829af0, L0x4000829af8, L0x4000829b00])
             (limbs 64 [b30, b31, b32, b33, b34, b35] +
              limbs 64 [b50, b51, b52, b53, b54, b55])
             (limbs 64 [m0, m1, m2, m3, m4, m5])
    && true;

(* add_fp2(aa, a[1], a[2]) *)
(*
assert eqmod (limbs 64 [L0x4000829a48, L0x4000829a50, L0x4000829a58,
                        L0x4000829a60, L0x4000829a68, L0x4000829a70] +
              limbs 64 [L0x4000829a78, L0x4000829a80, L0x4000829a88,
                        L0x4000829a90, L0x4000829a98, L0x4000829aa0] * U)
             ((limbs 64 [a20, a21, a22, a23, a24, a25] +
               limbs 64 [a30, a31, a32, a33, a34, a35] * U) +
              (limbs 64 [a40, a41, a42, a43, a44, a45] +
               limbs 64 [a50, a51, a52, a53, a54, a55] * U))
             [limbs 64 [m0, m1, m2, m3, m4, m5], U * U + 1]
    && true;
*)
(* add_fp2(bb, b[1], b[2]) *)
(*
assert eqmod (limbs 64 [L0x4000829aa8, L0x4000829ab0, L0x4000829ab8,
                        L0x4000829ac0, L0x4000829ac8, L0x4000829ad0] +
              limbs 64 [L0x4000829ad8, L0x4000829ae0, L0x4000829ae8,
                        L0x4000829af0, L0x4000829af8, L0x4000829b00] * U)
             ((limbs 64 [b20, b21, b22, b23, b24, b25] +
               limbs 64 [b30, b31, b32, b33, b34, b35] * U) +
              (limbs 64 [b40, b41, b42, b43, b44, b45] +
               limbs 64 [b50, b51, b52, b53, b54, b55] * U))
             [limbs 64 [m0, m1, m2, m3, m4, m5], U * U + 1]
    && true;
*)

ghost L0x4000829a48r0@uint64, L0x4000829a50r0@uint64, L0x4000829a58r0@uint64,
      L0x4000829a60r0@uint64, L0x4000829a68r0@uint64, L0x4000829a70r0@uint64,
      L0x4000829a78r0@uint64, L0x4000829a80r0@uint64, L0x4000829a88r0@uint64,
      L0x4000829a90r0@uint64, L0x4000829a98r0@uint64, L0x4000829aa0r0@uint64,
      L0x4000829aa8r0@uint64, L0x4000829ab0r0@uint64, L0x4000829ab8r0@uint64,
      L0x4000829ac0r0@uint64, L0x4000829ac8r0@uint64, L0x4000829ad0r0@uint64,
      L0x4000829ad8r0@uint64, L0x4000829ae0r0@uint64, L0x4000829ae8r0@uint64,
      L0x4000829af0r0@uint64, L0x4000829af8r0@uint64, L0x4000829b00r0@uint64 :
      and [L0x4000829a48r0=L0x4000829a48, L0x4000829a50r0=L0x4000829a50,
           L0x4000829a58r0=L0x4000829a58, L0x4000829a60r0=L0x4000829a60,
           L0x4000829a68r0=L0x4000829a68, L0x4000829a70r0=L0x4000829a70,
           L0x4000829a78r0=L0x4000829a78, L0x4000829a80r0=L0x4000829a80,
           L0x4000829a88r0=L0x4000829a88, L0x4000829a90r0=L0x4000829a90,
           L0x4000829a98r0=L0x4000829a98, L0x4000829aa0r0=L0x4000829aa0,
           L0x4000829aa8r0=L0x4000829aa8, L0x4000829ab0r0=L0x4000829ab0,
           L0x4000829ab8r0=L0x4000829ab8, L0x4000829ac0r0=L0x4000829ac0,
           L0x4000829ac8r0=L0x4000829ac8, L0x4000829ad0r0=L0x4000829ad0,
           L0x4000829ad8r0=L0x4000829ad8, L0x4000829ae0r0=L0x4000829ae0,
           L0x4000829ae8r0=L0x4000829ae8, L0x4000829af0r0=L0x4000829af0,
           L0x4000829af8r0=L0x4000829af8, L0x4000829b00r0=L0x4000829b00]
   && true;

(* mov	x2, x25                                     #! PC = 0x274877950360 *)
mov x2 x25;
(* mov	x1, x24                                     #! PC = 0x274877950364 *)
mov x1 x24;
(* mov	x0, x20                                     #! PC = 0x274877950368 *)
mov x0 x20;
(* #bl	0x4000008b3c <mul_fp2x2>                    #! PC = 0x274877950372 *)
#bl	0x4000008b3c <mul_fp2x2>                    #! 0x274877950372 = 0x274877950372;
(* stp	x29, x30, [sp, #-16]!                       #! EA = L0x4000829980; PC = 0x274877942588 *)
mov L0x4000829980 x29;
mov L0x4000829988 x30;
(* mov	x29, sp                                     #! PC = 0x274877942592 *)
mov x29 sp;
(* #adrp	x3, 0x4000029000                           #! PC = 0x274877942596 *)
#adrp	%%x3, 0x4000029000                           #! 0x274877942596 = 0x274877942596;
(* ldr	x3, [x3, #4056]                             #! EA = L0x4000029fd8; Value = 0x0000004000016928; PC = 0x274877942600 *)
mov x3 L0x4000029fd8;
(* #bl	0x40000143c0 <mul_382x>                     #! PC = 0x274877942604 *)
#bl	0x40000143c0 <mul_382x>                     #! 0x274877942604 = 0x274877942604;

rcut and [limbs 64 [L0x4000829a48, L0x4000829a50, L0x4000829a58,
                    L0x4000829a60, L0x4000829a68, L0x4000829a70] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829a78, L0x4000829a80, L0x4000829a88,
                    L0x4000829a90, L0x4000829a98, L0x4000829aa0] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829aa8, L0x4000829ab0, L0x4000829ab8,
                    L0x4000829ac0, L0x4000829ac8, L0x4000829ad0] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829ad8, L0x4000829ae0, L0x4000829ae8,
                    L0x4000829af0, L0x4000829af8, L0x4000829b00] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
          m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
          m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64
     ] prove with precondition;

(* #paciasp                                         #! PC = 0x274877989824 *)
#paciasp                                         #! 0x274877989824 = 0x274877989824;
(* stp	x29, x30, [sp, #-128]!                      #! EA = L0x4000829900; PC = 0x274877989828 *)
mov L0x4000829900 x29;
mov L0x4000829908 x30;
(* mov	x29, sp                                     #! PC = 0x274877989832 *)
mov x29 sp;
(* stp	x19, x20, [sp, #16]                         #! EA = L0x4000829910; PC = 0x274877989836 *)
mov L0x4000829910 x19;
mov L0x4000829918 x20;
(* stp	x21, x22, [sp, #32]                         #! EA = L0x4000829920; PC = 0x274877989840 *)
mov L0x4000829920 x21;
mov L0x4000829928 x22;
(* stp	x23, x24, [sp, #48]                         #! EA = L0x4000829930; PC = 0x274877989844 *)
mov L0x4000829930 x23;
mov L0x4000829938 x24;
(* stp	x25, x26, [sp, #64]                         #! EA = L0x4000829940; PC = 0x274877989848 *)
mov L0x4000829940 x25;
mov L0x4000829948 x26;
(* stp	x27, x28, [sp, #80]                         #! EA = L0x4000829950; PC = 0x274877989852 *)
mov L0x4000829950 x27;
mov L0x4000829958 x28;
(* sub	sp, sp, #0x60                               #! PC = 0x274877989856 *)
subc dontcare sp sp 0x60@uint64;
(* ldp	x11, x12, [x1]                              #! EA = L0x4000829a48; Value = 0x000000400085ea78; PC = 0x274877989860 *)
mov x11 L0x4000829a48;
mov x12 L0x4000829a50;
(* mov	x26, x0                                     #! PC = 0x274877989864 *)
mov x26 x0;
(* ldp	x19, x20, [x1, #48]                         #! EA = L0x4000829a78; Value = 0x000000c001087e28; PC = 0x274877989868 *)
mov x19 L0x4000829a78;
mov x20 L0x4000829a80;
(* mov	x27, x1                                     #! PC = 0x274877989872 *)
mov x27 x1;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829a58; Value = 0x0000004000841d2c; PC = 0x274877989876 *)
mov x13 L0x4000829a58;
mov x14 L0x4000829a60;
(* mov	x28, x2                                     #! PC = 0x274877989880 *)
mov x28 x2;
(* ldp	x21, x22, [x1, #64]                         #! EA = L0x4000829a88; Value = 0x000000c00108c4ec; PC = 0x274877989884 *)
mov x21 L0x4000829a88;
mov x22 L0x4000829a90;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829a68; Value = 0x000000c0018e3c68; PC = 0x274877989888 *)
mov x15 L0x4000829a68;
mov x16 L0x4000829a70;
(* adds	x5, x11, x19                               #! PC = 0x274877989892 *)
adds carry x5 x11 x19;
(* ldp	x23, x24, [x1, #80]                         #! EA = L0x4000829a98; Value = 0x000000c0018e5d60; PC = 0x274877989896 *)
mov x23 L0x4000829a98;
mov x24 L0x4000829aa0;
(* adcs	x6, x12, x20                               #! PC = 0x274877989900 *)
adcs carry x6 x12 x20 carry;
(* ldp	x11, x12, [x2]                              #! EA = L0x4000829aa8; Value = 0x000000400085ea78; PC = 0x274877989904 *)
mov x11 L0x4000829aa8;
mov x12 L0x4000829ab0;
(* adcs	x7, x13, x21                               #! PC = 0x274877989908 *)
adcs carry x7 x13 x21 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x4000829ad8; Value = 0x000000c001087e28; PC = 0x274877989912 *)
mov x19 L0x4000829ad8;
mov x20 L0x4000829ae0;
(* adcs	x8, x14, x22                               #! PC = 0x274877989916 *)
adcs carry x8 x14 x22 carry;
(* ldp	x13, x14, [x2, #16]                         #! EA = L0x4000829ab8; Value = 0x0000000000000000; PC = 0x274877989920 *)
mov x13 L0x4000829ab8;
mov x14 L0x4000829ac0;
(* adcs	x9, x15, x23                               #! PC = 0x274877989924 *)
adcs carry x9 x15 x23 carry;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x4000829ae8; Value = 0x000000800085ead0; PC = 0x274877989928 *)
mov x21 L0x4000829ae8;
mov x22 L0x4000829af0;
(* adc	x10, x16, x24                               #! PC = 0x274877989932 *)
adc x10 x16 x24 carry;
(* ldp	x15, x16, [x2, #32]                         #! EA = L0x4000829ac8; Value = 0x0000008001086c68; PC = 0x274877989936 *)
mov x15 L0x4000829ac8;
mov x16 L0x4000829ad0;
(* stp	x5, x6, [sp]                                #! EA = L0x40008298a0; PC = 0x274877989940 *)
mov L0x40008298a0 x5;
mov L0x40008298a8 x6;
(* adds	x5, x11, x19                               #! PC = 0x274877989944 *)
adds carry x5 x11 x19;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x4000829af8; Value = 0x00000080010bb000; PC = 0x274877989948 *)
mov x23 L0x4000829af8;
mov x24 L0x4000829b00;
(* adcs	x6, x12, x20                               #! PC = 0x274877989952 *)
adcs carry x6 x12 x20 carry;
(* stp	x7, x8, [sp, #16]                           #! EA = L0x40008298b0; PC = 0x274877989956 *)
mov L0x40008298b0 x7;
mov L0x40008298b8 x8;
(* adcs	x7, x13, x21                               #! PC = 0x274877989960 *)
adcs carry x7 x13 x21 carry;
(* adcs	x8, x14, x22                               #! PC = 0x274877989964 *)
adcs carry x8 x14 x22 carry;
(* stp	x9, x10, [sp, #32]                          #! EA = L0x40008298c0; PC = 0x274877989968 *)
mov L0x40008298c0 x9;
mov L0x40008298c8 x10;
(* adcs	x9, x15, x23                               #! PC = 0x274877989972 *)
adcs carry x9 x15 x23 carry;
(* stp	x5, x6, [sp, #48]                           #! EA = L0x40008298d0; PC = 0x274877989976 *)
mov L0x40008298d0 x5;
mov L0x40008298d8 x6;
(* adc	x10, x16, x24                               #! PC = 0x274877989980 *)
adc x10 x16 x24 carry;
(* stp	x7, x8, [sp, #64]                           #! EA = L0x40008298e0; PC = 0x274877989984 *)
mov L0x40008298e0 x7;
mov L0x40008298e8 x8;
(* stp	x9, x10, [sp, #80]                          #! EA = L0x40008298f0; PC = 0x274877989988 *)
mov L0x40008298f0 x9;
mov L0x40008298f8 x10;
(* #bl	0x4000014120 <__mul_384>                    #! PC = 0x274877989992 *)
#bl	0x4000014120 <__mul_384>                    #! 0x274877989992 = 0x274877989992;
(* ldp	x11, x12, [x1]                              #! EA = L0x4000829a48; Value = 0x000000400085ea78; PC = 0x274877989152 *)
mov x11 L0x4000829a48;
mov x12 L0x4000829a50;
(* ldr	x17, [x2]                                   #! EA = L0x4000829aa8; Value = 0x000000400085ea78; PC = 0x274877989156 *)
mov x17 L0x4000829aa8;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829a58; Value = 0x0000004000841d2c; PC = 0x274877989160 *)
mov x13 L0x4000829a58;
mov x14 L0x4000829a60;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829a68; Value = 0x000000c0018e3c68; PC = 0x274877989164 *)
mov x15 L0x4000829a68;
mov x16 L0x4000829a70;
(* mul	x19, x11, x17                               #! PC = 0x274877989168 *)
mull mulHx11x17 x19 x11 x17;
(* mul	x20, x12, x17                               #! PC = 0x274877989172 *)
mull mulHx12x17 x20 x12 x17;
(* mul	x21, x13, x17                               #! PC = 0x274877989176 *)
mull mulHx13x17 x21 x13 x17;
(* mul	x22, x14, x17                               #! PC = 0x274877989180 *)
mull mulHx14x17 x22 x14 x17;
(* mul	x23, x15, x17                               #! PC = 0x274877989184 *)
mull mulHx15x17 x23 x15 x17;
(* mul	x24, x16, x17                               #! PC = 0x274877989188 *)
mull mulHx16x17 x24 x16 x17;
(* umulh	x5, x11, x17                              #! PC = 0x274877989192 *)
mov x5 mulHx11x17;
(* umulh	x6, x12, x17                              #! PC = 0x274877989196 *)
mov x6 mulHx12x17;
(* umulh	x7, x13, x17                              #! PC = 0x274877989200 *)
mov x7 mulHx13x17;
(* umulh	x8, x14, x17                              #! PC = 0x274877989204 *)
mov x8 mulHx14x17;
(* umulh	x9, x15, x17                              #! PC = 0x274877989208 *)
mov x9 mulHx15x17;
(* umulh	x10, x16, x17                             #! PC = 0x274877989212 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #8]                               #! EA = L0x4000829ab0; Value = 0x0000000000000000; PC = 0x274877989216 *)
mov x17 L0x4000829ab0;
(* str	x19, [x0]                                   #! EA = L0x4000829d98; PC = 0x274877989220 *)
mov L0x4000829d98 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989224 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989228 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989232 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989236 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989240 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989244 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989248 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989252 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989256 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989260 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, xzr, x10                               #! PC = 0x274877989264 *)
adc x24 0@uint64 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989268 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989272 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989276 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989280 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989284 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989288 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989292 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989296 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989300 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989304 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989308 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989312 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989316 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #16]                              #! EA = L0x4000829ab8; Value = 0x0000000000000000; PC = 0x274877989320 *)
mov x17 L0x4000829ab8;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989324 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #8]                               #! EA = L0x4000829da0; PC = 0x274877989328 *)
mov L0x4000829da0 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989332 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989336 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989340 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989344 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989348 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989352 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989356 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989360 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989364 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989368 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989372 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989376 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989380 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989384 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989388 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989392 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989396 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989400 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989404 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989408 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989412 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989416 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989420 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989424 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #24]                              #! EA = L0x4000829ac0; Value = 0x000000400082a810; PC = 0x274877989428 *)
mov x17 L0x4000829ac0;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989432 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #16]                              #! EA = L0x4000829da8; PC = 0x274877989436 *)
mov L0x4000829da8 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989440 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989444 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989448 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989452 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989456 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989460 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989464 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989468 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989472 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989476 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989480 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989484 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989488 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989492 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989496 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989500 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989504 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989508 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989512 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989516 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989520 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989524 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989528 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989532 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #32]                              #! EA = L0x4000829ac8; Value = 0x0000008001086c68; PC = 0x274877989536 *)
mov x17 L0x4000829ac8;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989540 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #24]                              #! EA = L0x4000829db0; PC = 0x274877989544 *)
mov L0x4000829db0 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989548 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989552 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989556 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989560 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989564 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989568 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989572 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989576 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989580 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989584 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989588 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989592 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989596 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989600 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989604 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989608 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989612 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989616 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989620 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989624 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989628 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989632 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989636 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989640 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #40]                              #! EA = L0x4000829ad0; Value = 0x0000000000000000; PC = 0x274877989644 *)
mov x17 L0x4000829ad0;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989648 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #32]                              #! EA = L0x4000829db8; PC = 0x274877989652 *)
mov L0x4000829db8 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989656 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989660 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989664 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989668 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989672 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989676 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989680 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989684 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989688 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989692 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989696 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989700 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989704 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989708 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989712 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989716 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989720 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989724 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989728 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989732 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989736 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989740 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989744 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989748 *)
mov x10 mulHx16x17;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989752 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #40]                              #! EA = L0x4000829dc0; PC = 0x274877989756 *)
mov L0x4000829dc0 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989760 *)
adds carry x19 x20 x5;
(* adcs	x20, x21, x6                               #! PC = 0x274877989764 *)
adcs carry x20 x21 x6 carry;
(* adcs	x21, x22, x7                               #! PC = 0x274877989768 *)
adcs carry x21 x22 x7 carry;
(* adcs	x22, x23, x8                               #! PC = 0x274877989772 *)
adcs carry x22 x23 x8 carry;
(* adcs	x23, x24, x9                               #! PC = 0x274877989776 *)
adcs carry x23 x24 x9 carry;
(* adc	x24, x25, x10                               #! PC = 0x274877989780 *)
adc x24 x25 x10 carry;
(* stp	x19, x20, [x0, #48]                         #! EA = L0x4000829dc8; PC = 0x274877989784 *)
mov L0x4000829dc8 x19;
mov L0x4000829dd0 x20;
(* stp	x21, x22, [x0, #64]                         #! EA = L0x4000829dd8; PC = 0x274877989788 *)
mov L0x4000829dd8 x21;
mov L0x4000829de0 x22;
(* stp	x23, x24, [x0, #80]                         #! EA = L0x4000829de8; PC = 0x274877989792 *)
mov L0x4000829de8 x23;
mov L0x4000829df0 x24;
(* #ret                                            #! PC = 0x274877989796 *)
#ret                                            #! 0x274877989796 = 0x274877989796;
(* mov	x1, sp                                      #! PC = 0x274877989996 *)
mov x1 sp;
(* add	x2, sp, #0x30                               #! PC = 0x274877990000 *)
adds dontcare x2 sp 0x30@uint64;
(* add	x0, x26, #0x60                              #! PC = 0x274877990004 *)
adds dontcare x0 x26 0x60@uint64;
(* #bl	0x4000014120 <__mul_384>                    #! PC = 0x274877990008 *)
#bl	0x4000014120 <__mul_384>                    #! 0x274877990008 = 0x274877990008;
(* ldp	x11, x12, [x1]                              #! EA = L0x40008298a0; Value = 0x00000100018e68a0; PC = 0x274877989152 *)
mov x11 L0x40008298a0;
mov x12 L0x40008298a8;
(* ldr	x17, [x2]                                   #! EA = L0x40008298d0; Value = 0x00000100018e68a0; PC = 0x274877989156 *)
mov x17 L0x40008298d0;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x40008298b0; Value = 0x00000100018ce218; PC = 0x274877989160 *)
mov x13 L0x40008298b0;
mov x14 L0x40008298b8;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x40008298c0; Value = 0x00000180031c99c8; PC = 0x274877989164 *)
mov x15 L0x40008298c0;
mov x16 L0x40008298c8;
(* mul	x19, x11, x17                               #! PC = 0x274877989168 *)
mull mulHx11x17 x19 x11 x17;
(* mul	x20, x12, x17                               #! PC = 0x274877989172 *)
mull mulHx12x17 x20 x12 x17;
(* mul	x21, x13, x17                               #! PC = 0x274877989176 *)
mull mulHx13x17 x21 x13 x17;
(* mul	x22, x14, x17                               #! PC = 0x274877989180 *)
mull mulHx14x17 x22 x14 x17;
(* mul	x23, x15, x17                               #! PC = 0x274877989184 *)
mull mulHx15x17 x23 x15 x17;
(* mul	x24, x16, x17                               #! PC = 0x274877989188 *)
mull mulHx16x17 x24 x16 x17;
(* umulh	x5, x11, x17                              #! PC = 0x274877989192 *)
mov x5 mulHx11x17;
(* umulh	x6, x12, x17                              #! PC = 0x274877989196 *)
mov x6 mulHx12x17;
(* umulh	x7, x13, x17                              #! PC = 0x274877989200 *)
mov x7 mulHx13x17;
(* umulh	x8, x14, x17                              #! PC = 0x274877989204 *)
mov x8 mulHx14x17;
(* umulh	x9, x15, x17                              #! PC = 0x274877989208 *)
mov x9 mulHx15x17;
(* umulh	x10, x16, x17                             #! PC = 0x274877989212 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #8]                               #! EA = L0x40008298d8; Value = 0x000000400082e3a1; PC = 0x274877989216 *)
mov x17 L0x40008298d8;
(* str	x19, [x0]                                   #! EA = L0x4000829df8; PC = 0x274877989220 *)
mov L0x4000829df8 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989224 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989228 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989232 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989236 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989240 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989244 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989248 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989252 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989256 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989260 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, xzr, x10                               #! PC = 0x274877989264 *)
adc x24 0@uint64 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989268 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989272 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989276 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989280 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989284 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989288 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989292 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989296 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989300 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989304 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989308 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989312 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989316 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #16]                              #! EA = L0x40008298e0; Value = 0x000000800085ead0; PC = 0x274877989320 *)
mov x17 L0x40008298e0;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989324 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #8]                               #! EA = L0x4000829e00; PC = 0x274877989328 *)
mov L0x4000829e00 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989332 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989336 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989340 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989344 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989348 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989352 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989356 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989360 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989364 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989368 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989372 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989376 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989380 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989384 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989388 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989392 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989396 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989400 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989404 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989408 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989412 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989416 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989420 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989424 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #24]                              #! EA = L0x40008298e8; Value = 0x000000800120d51a; PC = 0x274877989428 *)
mov x17 L0x40008298e8;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989432 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #16]                              #! EA = L0x4000829e08; PC = 0x274877989436 *)
mov L0x4000829e08 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989440 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989444 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989448 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989452 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989456 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989460 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989464 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989468 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989472 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989476 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989480 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989484 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989488 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989492 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989496 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989500 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989504 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989508 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989512 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989516 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989520 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989524 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989528 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989532 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #32]                              #! EA = L0x40008298f0; Value = 0x0000010002141c68; PC = 0x274877989536 *)
mov x17 L0x40008298f0;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989540 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #24]                              #! EA = L0x4000829e10; PC = 0x274877989544 *)
mov L0x4000829e10 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989548 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989552 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989556 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989560 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989564 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989568 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989572 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989576 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989580 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989584 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989588 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989592 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989596 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989600 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989604 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989608 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989612 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989616 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989620 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989624 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989628 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989632 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989636 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989640 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #40]                              #! EA = L0x40008298f8; Value = 0x0000004000000002; PC = 0x274877989644 *)
mov x17 L0x40008298f8;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989648 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #32]                              #! EA = L0x4000829e18; PC = 0x274877989652 *)
mov L0x4000829e18 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989656 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989660 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989664 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989668 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989672 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989676 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989680 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989684 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989688 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989692 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989696 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989700 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989704 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989708 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989712 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989716 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989720 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989724 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989728 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989732 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989736 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989740 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989744 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989748 *)
mov x10 mulHx16x17;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989752 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #40]                              #! EA = L0x4000829e20; PC = 0x274877989756 *)
mov L0x4000829e20 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989760 *)
adds carry x19 x20 x5;
(* adcs	x20, x21, x6                               #! PC = 0x274877989764 *)
adcs carry x20 x21 x6 carry;
(* adcs	x21, x22, x7                               #! PC = 0x274877989768 *)
adcs carry x21 x22 x7 carry;
(* adcs	x22, x23, x8                               #! PC = 0x274877989772 *)
adcs carry x22 x23 x8 carry;
(* adcs	x23, x24, x9                               #! PC = 0x274877989776 *)
adcs carry x23 x24 x9 carry;
(* adc	x24, x25, x10                               #! PC = 0x274877989780 *)
adc x24 x25 x10 carry;
(* stp	x19, x20, [x0, #48]                         #! EA = L0x4000829e28; PC = 0x274877989784 *)
mov L0x4000829e28 x19;
mov L0x4000829e30 x20;
(* stp	x21, x22, [x0, #64]                         #! EA = L0x4000829e38; PC = 0x274877989788 *)
mov L0x4000829e38 x21;
mov L0x4000829e40 x22;
(* stp	x23, x24, [x0, #80]                         #! EA = L0x4000829e48; PC = 0x274877989792 *)
mov L0x4000829e48 x23;
mov L0x4000829e50 x24;
(* #ret                                            #! PC = 0x274877989796 *)
#ret                                            #! 0x274877989796 = 0x274877989796;
(* add	x1, x27, #0x30                              #! PC = 0x274877990012 *)
adds dontcare x1 x27 0x30@uint64;
(* add	x2, x28, #0x30                              #! PC = 0x274877990016 *)
adds dontcare x2 x28 0x30@uint64;
(* mov	x0, sp                                      #! PC = 0x274877990020 *)
mov x0 sp;
(* #bl	0x4000014120 <__mul_384>                    #! PC = 0x274877990024 *)
#bl	0x4000014120 <__mul_384>                    #! 0x274877990024 = 0x274877990024;
(* ldp	x11, x12, [x1]                              #! EA = L0x4000829a78; Value = 0x000000c001087e28; PC = 0x274877989152 *)
mov x11 L0x4000829a78;
mov x12 L0x4000829a80;
(* ldr	x17, [x2]                                   #! EA = L0x4000829ad8; Value = 0x000000c001087e28; PC = 0x274877989156 *)
mov x17 L0x4000829ad8;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829a88; Value = 0x000000c00108c4ec; PC = 0x274877989160 *)
mov x13 L0x4000829a88;
mov x14 L0x4000829a90;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829a98; Value = 0x000000c0018e5d60; PC = 0x274877989164 *)
mov x15 L0x4000829a98;
mov x16 L0x4000829aa0;
(* mul	x19, x11, x17                               #! PC = 0x274877989168 *)
mull mulHx11x17 x19 x11 x17;
(* mul	x20, x12, x17                               #! PC = 0x274877989172 *)
mull mulHx12x17 x20 x12 x17;
(* mul	x21, x13, x17                               #! PC = 0x274877989176 *)
mull mulHx13x17 x21 x13 x17;
(* mul	x22, x14, x17                               #! PC = 0x274877989180 *)
mull mulHx14x17 x22 x14 x17;
(* mul	x23, x15, x17                               #! PC = 0x274877989184 *)
mull mulHx15x17 x23 x15 x17;
(* mul	x24, x16, x17                               #! PC = 0x274877989188 *)
mull mulHx16x17 x24 x16 x17;
(* umulh	x5, x11, x17                              #! PC = 0x274877989192 *)
mov x5 mulHx11x17;
(* umulh	x6, x12, x17                              #! PC = 0x274877989196 *)
mov x6 mulHx12x17;
(* umulh	x7, x13, x17                              #! PC = 0x274877989200 *)
mov x7 mulHx13x17;
(* umulh	x8, x14, x17                              #! PC = 0x274877989204 *)
mov x8 mulHx14x17;
(* umulh	x9, x15, x17                              #! PC = 0x274877989208 *)
mov x9 mulHx15x17;
(* umulh	x10, x16, x17                             #! PC = 0x274877989212 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #8]                               #! EA = L0x4000829ae0; Value = 0x000000400082e3a1; PC = 0x274877989216 *)
mov x17 L0x4000829ae0;
(* str	x19, [x0]                                   #! EA = L0x40008298a0; PC = 0x274877989220 *)
mov L0x40008298a0 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989224 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989228 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989232 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989236 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989240 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989244 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989248 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989252 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989256 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989260 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, xzr, x10                               #! PC = 0x274877989264 *)
adc x24 0@uint64 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989268 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989272 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989276 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989280 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989284 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989288 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989292 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989296 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989300 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989304 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989308 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989312 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989316 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #16]                              #! EA = L0x4000829ae8; Value = 0x000000800085ead0; PC = 0x274877989320 *)
mov x17 L0x4000829ae8;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989324 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #8]                               #! EA = L0x40008298a8; PC = 0x274877989328 *)
mov L0x40008298a8 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989332 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989336 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989340 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989344 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989348 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989352 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989356 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989360 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989364 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989368 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989372 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989376 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989380 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989384 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989388 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989392 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989396 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989400 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989404 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989408 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989412 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989416 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989420 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989424 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #24]                              #! EA = L0x4000829af0; Value = 0x00000040009e2d0a; PC = 0x274877989428 *)
mov x17 L0x4000829af0;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989432 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #16]                              #! EA = L0x40008298b0; PC = 0x274877989436 *)
mov L0x40008298b0 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989440 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989444 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989448 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989452 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989456 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989460 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989464 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989468 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989472 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989476 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989480 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989484 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989488 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989492 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989496 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989500 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989504 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989508 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989512 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989516 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989520 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989524 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989528 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989532 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #32]                              #! EA = L0x4000829af8; Value = 0x00000080010bb000; PC = 0x274877989536 *)
mov x17 L0x4000829af8;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989540 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #24]                              #! EA = L0x40008298b8; PC = 0x274877989544 *)
mov L0x40008298b8 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989548 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989552 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989556 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989560 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989564 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989568 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989572 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989576 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989580 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989584 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989588 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989592 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989596 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989600 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989604 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989608 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989612 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989616 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989620 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989624 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989628 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989632 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989636 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989640 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #40]                              #! EA = L0x4000829b00; Value = 0x0000004000000002; PC = 0x274877989644 *)
mov x17 L0x4000829b00;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989648 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #32]                              #! EA = L0x40008298c0; PC = 0x274877989652 *)
mov L0x40008298c0 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989656 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989660 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989664 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989668 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989672 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989676 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989680 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989684 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989688 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989692 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989696 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989700 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989704 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989708 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989712 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989716 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989720 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989724 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989728 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989732 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989736 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989740 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989744 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989748 *)
mov x10 mulHx16x17;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989752 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #40]                              #! EA = L0x40008298c8; PC = 0x274877989756 *)
mov L0x40008298c8 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989760 *)
adds carry x19 x20 x5;
(* adcs	x20, x21, x6                               #! PC = 0x274877989764 *)
adcs carry x20 x21 x6 carry;
(* adcs	x21, x22, x7                               #! PC = 0x274877989768 *)
adcs carry x21 x22 x7 carry;
(* adcs	x22, x23, x8                               #! PC = 0x274877989772 *)
adcs carry x22 x23 x8 carry;
(* adcs	x23, x24, x9                               #! PC = 0x274877989776 *)
adcs carry x23 x24 x9 carry;
(* adc	x24, x25, x10                               #! PC = 0x274877989780 *)
adc x24 x25 x10 carry;
(* stp	x19, x20, [x0, #48]                         #! EA = L0x40008298d0; PC = 0x274877989784 *)
mov L0x40008298d0 x19;
mov L0x40008298d8 x20;
(* stp	x21, x22, [x0, #64]                         #! EA = L0x40008298e0; PC = 0x274877989788 *)
mov L0x40008298e0 x21;
mov L0x40008298e8 x22;
(* stp	x23, x24, [x0, #80]                         #! EA = L0x40008298f0; PC = 0x274877989792 *)
mov L0x40008298f0 x23;
mov L0x40008298f8 x24;
(* #ret                                            #! PC = 0x274877989796 *)
#ret                                            #! 0x274877989796 = 0x274877989796;
(* ldp	x5, x6, [x3]                                #! EA = L0x4000016928; Value = 0xb9feffffffffaaab; PC = 0x274877990028 *)
mov x5 L0x4000016928;
mov x6 L0x4000016930;
(* ldp	x7, x8, [x3, #16]                           #! EA = L0x4000016938; Value = 0x6730d2a0f6b0f624; PC = 0x274877990032 *)
mov x7 L0x4000016938;
mov x8 L0x4000016940;
(* ldp	x9, x10, [x3, #32]                          #! EA = L0x4000016948; Value = 0x4b1ba7b6434bacd7; PC = 0x274877990036 *)
mov x9 L0x4000016948;
mov x10 L0x4000016950;
(* add	x1, x26, #0x60                              #! PC = 0x274877990040 *)
adds dontcare x1 x26 0x60@uint64;
(* mov	x2, sp                                      #! PC = 0x274877990044 *)
mov x2 sp;
(* add	x0, x26, #0x60                              #! PC = 0x274877990048 *)
adds dontcare x0 x26 0x60@uint64;
(* #bl	0x4000012fa0 <__sub_mod_384x384>            #! PC = 0x274877990052 *)
#bl	0x4000012fa0 <__sub_mod_384x384>            #! 0x274877990052 = 0x274877990052;

rcut and [limbs 64 [L0x40008298d0, L0x40008298d8, L0x40008298e0,
                    L0x40008298e8, L0x40008298f0, L0x40008298f8] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829dc8, L0x4000829dd0, L0x4000829dd8,
                    L0x4000829de0, L0x4000829de8, L0x4000829df0] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829e28, L0x4000829e30, L0x4000829e38,
                    L0x4000829e40, L0x4000829e48, L0x4000829e50] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
          m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
          m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64
     ];

ghost L0x4000829df8o@uint64, L0x4000829e00o@uint64, L0x4000829e08o@uint64,
      L0x4000829e10o@uint64, L0x4000829e18o@uint64, L0x4000829e20o@uint64,
      L0x4000829e28o@uint64, L0x4000829e30o@uint64, L0x4000829e38o@uint64,
      L0x4000829e40o@uint64, L0x4000829e48o@uint64, L0x4000829e50o@uint64 :
      and [L0x4000829df8o=L0x4000829df8, L0x4000829e00o=L0x4000829e00,
           L0x4000829e08o=L0x4000829e08, L0x4000829e10o=L0x4000829e10,
           L0x4000829e18o=L0x4000829e18, L0x4000829e20o=L0x4000829e20,
           L0x4000829e28o=L0x4000829e28, L0x4000829e30o=L0x4000829e30,
           L0x4000829e38o=L0x4000829e38, L0x4000829e40o=L0x4000829e40,
           L0x4000829e48o=L0x4000829e48, L0x4000829e50o=L0x4000829e50]
   && and [L0x4000829df8o=L0x4000829df8, L0x4000829e00o=L0x4000829e00,
           L0x4000829e08o=L0x4000829e08, L0x4000829e10o=L0x4000829e10,
           L0x4000829e18o=L0x4000829e18, L0x4000829e20o=L0x4000829e20,
           L0x4000829e28o=L0x4000829e28, L0x4000829e30o=L0x4000829e30,
           L0x4000829e38o=L0x4000829e38, L0x4000829e40o=L0x4000829e40,
           L0x4000829e48o=L0x4000829e48, L0x4000829e50o=L0x4000829e50];

(* ldp	x11, x12, [x1]                              #! EA = L0x4000829df8; Value = 0x1cd3ac097c426400; PC = 0x274877984672 *)
mov x11 L0x4000829df8;
mov x12 L0x4000829e00;
(* ldp	x19, x20, [x2]                              #! EA = L0x40008298a0; Value = 0x8cbe4d4470ab6640; PC = 0x274877984676 *)
mov x19 L0x40008298a0;
mov x20 L0x40008298a8;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829e08; Value = 0x2ca59f9abd8196d4; PC = 0x274877984680 *)
mov x13 L0x4000829e08;
mov x14 L0x4000829e10;
(* subs	x11, x11, x19                              #! PC = 0x274877984684 *)
subc carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x40008298b0; Value = 0xf87879636b2af122; PC = 0x274877984688 *)
mov x21 L0x40008298b0;
mov x22 L0x40008298b8;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984692 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829e18; Value = 0x0be3f80719282913; PC = 0x274877984696 *)
mov x15 L0x4000829e18;
mov x16 L0x4000829e20;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984700 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x40008298c0; Value = 0x41ed75d42f00c2b7; PC = 0x274877984704 *)
mov x23 L0x40008298c0;
mov x24 L0x40008298c8;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984708 *)
sbcs carry x14 x14 x22 carry;
(* stp	x11, x12, [x0]                              #! EA = L0x4000829df8; PC = 0x274877984712 *)
mov L0x4000829df8 x11;
mov L0x4000829e00 x12;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984716 *)
sbcs carry x15 x15 x23 carry;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0x4000829e28; Value = 0x35ba00f9bba4eb5a; PC = 0x274877984720 *)
mov x11 L0x4000829e28;
mov x12 L0x4000829e30;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984724 *)
sbcs carry x16 x16 x24 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x40008298d0; Value = 0xb53177eb21bf3324; PC = 0x274877984728 *)
mov x19 L0x40008298d0;
mov x20 L0x40008298d8;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x4000829e08; PC = 0x274877984732 *)
mov L0x4000829e08 x13;
mov L0x4000829e10 x14;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0x4000829e38; Value = 0x22f5fd8c480c6290; PC = 0x274877984736 *)
mov x13 L0x4000829e38;
mov x14 L0x4000829e40;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x40008298e0; Value = 0x4989224b8c59959a; PC = 0x274877984740 *)
mov x21 L0x40008298e0;
mov x22 L0x40008298e8;
(* sbcs	x11, x11, x19                              #! PC = 0x274877984744 *)
sbcs carry x11 x11 x19 carry;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x4000829e18; PC = 0x274877984748 *)
mov L0x4000829e18 x15;
mov L0x4000829e20 x16;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984752 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #80]                         #! EA = L0x4000829e48; Value = 0x423388000212bc37; PC = 0x274877984756 *)
mov x15 L0x4000829e48;
mov x16 L0x4000829e50;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984760 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x40008298f0; Value = 0x217a9f80010c44f5; PC = 0x274877984764 *)
mov x23 L0x40008298f0;
mov x24 L0x40008298f8;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984768 *)
sbcs carry x14 x14 x22 carry;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984772 *)
sbcs carry x15 x15 x23 carry;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984776 *)
sbcs carry x16 x16 x24 carry;
(* ngc	x17, xzr                                    #! PC = 0x274877984780 *)
cmov x17 carry 0@uint64 0xffffffffffffffff@uint64;
(* and	x19, x5, x17                                #! PC = 0x274877984784 *)
and x19@uint64 x5 x17;
(* and	x20, x6, x17                                #! PC = 0x274877984788 *)
and x20@uint64 x6 x17;
(* adds	x11, x11, x19                              #! PC = 0x274877984792 *)
adds carry x11 x11 x19;
(* and	x21, x7, x17                                #! PC = 0x274877984796 *)
and x21@uint64 x7 x17;
(* adcs	x12, x12, x20                              #! PC = 0x274877984800 *)
adcs carry x12 x12 x20 carry;
(* and	x22, x8, x17                                #! PC = 0x274877984804 *)
and x22@uint64 x8 x17;
(* adcs	x13, x13, x21                              #! PC = 0x274877984808 *)
adcs carry x13 x13 x21 carry;
(* and	x23, x9, x17                                #! PC = 0x274877984812 *)
and x23@uint64 x9 x17;
(* adcs	x14, x14, x22                              #! PC = 0x274877984816 *)
adcs carry x14 x14 x22 carry;
(* and	x24, x10, x17                               #! PC = 0x274877984820 *)
and x24@uint64 x10 x17;
(* adcs	x15, x15, x23                              #! PC = 0x274877984824 *)
adcs carry x15 x15 x23 carry;
(* stp	x11, x12, [x0, #48]                         #! EA = L0x4000829e28; PC = 0x274877984828 *)
mov L0x4000829e28 x11;
mov L0x4000829e30 x12;
(* adc	x16, x16, x24                               #! PC = 0x274877984832 *)
adcs dontcare x16 x16 x24 carry;
(* stp	x13, x14, [x0, #64]                         #! EA = L0x4000829e38; PC = 0x274877984836 *)
mov L0x4000829e38 x13;
mov L0x4000829e40 x14;
(* stp	x15, x16, [x0, #80]                         #! EA = L0x4000829e48; PC = 0x274877984840 *)
mov L0x4000829e48 x15;
mov L0x4000829e50 x16;
(* #ret                                            #! PC = 0x274877984844 *)
#ret                                            #! 0x274877984844 = 0x274877984844;

assert true
    && eqmod (limbs 64 [L0x4000829df8, L0x4000829e00, L0x4000829e08,
                        L0x4000829e10, L0x4000829e18, L0x4000829e20,
                        L0x4000829e28, L0x4000829e30, L0x4000829e38,
                        L0x4000829e40, L0x4000829e48, L0x4000829e50] +
              limbs 64 [L0x40008298a0, L0x40008298a8, L0x40008298b0,
                        L0x40008298b8, L0x40008298c0, L0x40008298c8,
                        L0x40008298d0, L0x40008298d8, L0x40008298e0,
                        L0x40008298e8, L0x40008298f0, L0x40008298f8])
             (limbs 64 [L0x4000829df8o, L0x4000829e00o, L0x4000829e08o,
                        L0x4000829e10o, L0x4000829e18o, L0x4000829e20o,
                        L0x4000829e28o, L0x4000829e30o, L0x4000829e38o,
                        L0x4000829e40o, L0x4000829e48o, L0x4000829e50o])
             (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                          m0,   m1,   m2,   m3,   m4,   m5]);

assume eqmod (limbs 64 [L0x4000829df8, L0x4000829e00, L0x4000829e08,
                        L0x4000829e10, L0x4000829e18, L0x4000829e20,
                        L0x4000829e28, L0x4000829e30, L0x4000829e38,
                        L0x4000829e40, L0x4000829e48, L0x4000829e50] +
              limbs 64 [L0x40008298a0, L0x40008298a8, L0x40008298b0,
                        L0x40008298b8, L0x40008298c0, L0x40008298c8,
                        L0x40008298d0, L0x40008298d8, L0x40008298e0,
                        L0x40008298e8, L0x40008298f0, L0x40008298f8])
             (limbs 64 [L0x4000829df8o, L0x4000829e00o, L0x4000829e08o,
                        L0x4000829e10o, L0x4000829e18o, L0x4000829e20o,
                        L0x4000829e28o, L0x4000829e30o, L0x4000829e38o,
                        L0x4000829e40o, L0x4000829e48o, L0x4000829e50o])
             (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5])
    && true;

(* add	x2, x26, #0x0                               #! PC = 0x274877990056 *)
adds dontcare x2 x26 0@uint64;
(* #bl	0x4000012fa0 <__sub_mod_384x384>            #! PC = 0x274877990060 *)
#bl	0x4000012fa0 <__sub_mod_384x384>            #! 0x274877990060 = 0x274877990060;

rcut and [limbs 64 [L0x4000829e28, L0x4000829e30, L0x4000829e38,
                    L0x4000829e40, L0x4000829e48, L0x4000829e50] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
          m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
          m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64
     ];

ghost L0x4000829df8p@uint64, L0x4000829e00p@uint64, L0x4000829e08p@uint64,
      L0x4000829e10p@uint64, L0x4000829e18p@uint64, L0x4000829e20p@uint64,
      L0x4000829e28p@uint64, L0x4000829e30p@uint64, L0x4000829e38p@uint64,
      L0x4000829e40p@uint64, L0x4000829e48p@uint64, L0x4000829e50p@uint64 :
      and [L0x4000829df8p=L0x4000829df8, L0x4000829e00p=L0x4000829e00,
           L0x4000829e08p=L0x4000829e08, L0x4000829e10p=L0x4000829e10,
           L0x4000829e18p=L0x4000829e18, L0x4000829e20p=L0x4000829e20,
           L0x4000829e28p=L0x4000829e28, L0x4000829e30p=L0x4000829e30,
           L0x4000829e38p=L0x4000829e38, L0x4000829e40p=L0x4000829e40,
           L0x4000829e48p=L0x4000829e48, L0x4000829e50p=L0x4000829e50]
   && and [L0x4000829df8p=L0x4000829df8, L0x4000829e00p=L0x4000829e00,
           L0x4000829e08p=L0x4000829e08, L0x4000829e10p=L0x4000829e10,
           L0x4000829e18p=L0x4000829e18, L0x4000829e20p=L0x4000829e20,
           L0x4000829e28p=L0x4000829e28, L0x4000829e30p=L0x4000829e30,
           L0x4000829e38p=L0x4000829e38, L0x4000829e40p=L0x4000829e40,
           L0x4000829e48p=L0x4000829e48, L0x4000829e50p=L0x4000829e50];

(* ldp	x11, x12, [x1]                              #! EA = L0x4000829df8; Value = 0x90155ec50b96fdc0; PC = 0x274877984672 *)
mov x11 L0x4000829df8;
mov x12 L0x4000829e00;
(* ldp	x19, x20, [x2]                              #! EA = L0x4000829d98; Value = 0x42f5820d776f9840; PC = 0x274877984676 *)
mov x19 L0x4000829d98;
mov x20 L0x4000829da0;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829e08; Value = 0x342d26375256a5b1; PC = 0x274877984680 *)
mov x13 L0x4000829e08;
mov x14 L0x4000829e10;
(* subs	x11, x11, x19                              #! PC = 0x274877984684 *)
subc carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x4000829da8; Value = 0x42822e1c2873f4a0; PC = 0x274877984688 *)
mov x21 L0x4000829da8;
mov x22 L0x4000829db0;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984692 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829e18; Value = 0xc9f68232ea27665c; PC = 0x274877984696 *)
mov x15 L0x4000829e18;
mov x16 L0x4000829e20;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984700 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x4000829db8; Value = 0x8e64ef53bf927280; PC = 0x274877984704 *)
mov x23 L0x4000829db8;
mov x24 L0x4000829dc0;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984708 *)
sbcs carry x14 x14 x22 carry;
(* stp	x11, x12, [x0]                              #! EA = L0x4000829df8; PC = 0x274877984712 *)
mov L0x4000829df8 x11;
mov L0x4000829e00 x12;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984716 *)
sbcs carry x15 x15 x23 carry;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0x4000829e28; Value = 0x8088890e99e5b836; PC = 0x274877984720 *)
mov x11 L0x4000829e28;
mov x12 L0x4000829e30;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984724 *)
sbcs carry x16 x16 x24 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x4000829dc8; Value = 0x079e81741cfad861; PC = 0x274877984728 *)
mov x19 L0x4000829dc8;
mov x20 L0x4000829dd0;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x4000829e08; PC = 0x274877984732 *)
mov L0x4000829e08 x13;
mov L0x4000829e10 x14;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0x4000829e38; Value = 0xd96cdb40bbb2ccf6; PC = 0x274877984736 *)
mov x13 L0x4000829e38;
mov x14 L0x4000829e40;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x4000829dd8; Value = 0xced44c2473541441; PC = 0x274877984740 *)
mov x21 L0x4000829dd8;
mov x22 L0x4000829de0;
(* sbcs	x11, x11, x19                              #! PC = 0x274877984744 *)
sbcs carry x11 x11 x19 carry;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x4000829e18; PC = 0x274877984748 *)
mov L0x4000829e18 x15;
mov L0x4000829e20 x16;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984752 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #80]                         #! EA = L0x4000829e48; Value = 0x20b8e88001067742; PC = 0x274877984756 *)
mov x15 L0x4000829e48;
mov x16 L0x4000829e50;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984760 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x4000829de8; Value = 0x0000000000002000; PC = 0x274877984764 *)
mov x23 L0x4000829de8;
mov x24 L0x4000829df0;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984768 *)
sbcs carry x14 x14 x22 carry;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984772 *)
sbcs carry x15 x15 x23 carry;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984776 *)
sbcs carry x16 x16 x24 carry;
(* ngc	x17, xzr                                    #! PC = 0x274877984780 *)
cmov x17 carry 0@uint64 0xffffffffffffffff@uint64;
(* and	x19, x5, x17                                #! PC = 0x274877984784 *)
and x19@uint64 x5 x17;
(* and	x20, x6, x17                                #! PC = 0x274877984788 *)
and x20@uint64 x6 x17;
(* adds	x11, x11, x19                              #! PC = 0x274877984792 *)
adds carry x11 x11 x19;
(* and	x21, x7, x17                                #! PC = 0x274877984796 *)
and x21@uint64 x7 x17;
(* adcs	x12, x12, x20                              #! PC = 0x274877984800 *)
adcs carry x12 x12 x20 carry;
(* and	x22, x8, x17                                #! PC = 0x274877984804 *)
and x22@uint64 x8 x17;
(* adcs	x13, x13, x21                              #! PC = 0x274877984808 *)
adcs carry x13 x13 x21 carry;
(* and	x23, x9, x17                                #! PC = 0x274877984812 *)
and x23@uint64 x9 x17;
(* adcs	x14, x14, x22                              #! PC = 0x274877984816 *)
adcs carry x14 x14 x22 carry;
(* and	x24, x10, x17                               #! PC = 0x274877984820 *)
and x24@uint64 x10 x17;
(* adcs	x15, x15, x23                              #! PC = 0x274877984824 *)
adcs carry x15 x15 x23 carry;
(* stp	x11, x12, [x0, #48]                         #! EA = L0x4000829e28; PC = 0x274877984828 *)
mov L0x4000829e28 x11;
mov L0x4000829e30 x12;
(* adc	x16, x16, x24                               #! PC = 0x274877984832 *)
adcs dontcare x16 x16 x24 carry;
(* stp	x13, x14, [x0, #64]                         #! EA = L0x4000829e38; PC = 0x274877984836 *)
mov L0x4000829e38 x13;
mov L0x4000829e40 x14;
(* stp	x15, x16, [x0, #80]                         #! EA = L0x4000829e48; PC = 0x274877984840 *)
mov L0x4000829e48 x15;
mov L0x4000829e50 x16;
(* #ret                                            #! PC = 0x274877984844 *)
#ret                                            #! 0x274877984844 = 0x274877984844;

assert true
    && eqmod (limbs 64 [L0x4000829df8, L0x4000829e00, L0x4000829e08,
                        L0x4000829e10, L0x4000829e18, L0x4000829e20,
                        L0x4000829e28, L0x4000829e30, L0x4000829e38,
                        L0x4000829e40, L0x4000829e48, L0x4000829e50] +
              limbs 64 [L0x4000829d98, L0x4000829da0, L0x4000829da8,
                        L0x4000829db0, L0x4000829db8, L0x4000829dc0,
                        L0x4000829dc8, L0x4000829dd0, L0x4000829dd8,
                        L0x4000829de0, L0x4000829de8, L0x4000829df0])
             (limbs 64 [L0x4000829df8p, L0x4000829e00p, L0x4000829e08p,
                        L0x4000829e10p, L0x4000829e18p, L0x4000829e20p,
                        L0x4000829e28p, L0x4000829e30p, L0x4000829e38p,
                        L0x4000829e40p, L0x4000829e48p, L0x4000829e50p])
             (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                          m0,   m1,   m2,   m3,   m4,   m5]);

assume eqmod (limbs 64 [L0x4000829df8, L0x4000829e00, L0x4000829e08,
                        L0x4000829e10, L0x4000829e18, L0x4000829e20,
                        L0x4000829e28, L0x4000829e30, L0x4000829e38,
                        L0x4000829e40, L0x4000829e48, L0x4000829e50] +
              limbs 64 [L0x4000829d98, L0x4000829da0, L0x4000829da8,
                        L0x4000829db0, L0x4000829db8, L0x4000829dc0,
                        L0x4000829dc8, L0x4000829dd0, L0x4000829dd8,
                        L0x4000829de0, L0x4000829de8, L0x4000829df0])
             (limbs 64 [L0x4000829df8p, L0x4000829e00p, L0x4000829e08p,
                        L0x4000829e10p, L0x4000829e18p, L0x4000829e20p,
                        L0x4000829e28p, L0x4000829e30p, L0x4000829e38p,
                        L0x4000829e40p, L0x4000829e48p, L0x4000829e50p])
             (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5])
    && true;

(* add	x1, x26, #0x0                               #! PC = 0x274877990064 *)
adds dontcare x1 x26 0@uint64;
(* mov	x2, sp                                      #! PC = 0x274877990068 *)
mov x2 sp;
(* add	x0, x26, #0x0                               #! PC = 0x274877990072 *)
adds dontcare x0 x26 0@uint64;
(* #bl	0x4000012fa0 <__sub_mod_384x384>            #! PC = 0x274877990076 *)
#bl	0x4000012fa0 <__sub_mod_384x384>            #! 0x274877990076 = 0x274877990076;

rcut and [limbs 64 [L0x40008298d0, L0x40008298d8, L0x40008298e0,
                    L0x40008298e8, L0x40008298f0, L0x40008298f8] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829dc8, L0x4000829dd0, L0x4000829dd8,
                    L0x4000829de0, L0x4000829de8, L0x4000829df0] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829e28, L0x4000829e30, L0x4000829e38,
                    L0x4000829e40, L0x4000829e48, L0x4000829e50] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
          m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
          m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64
     ] prove with all cuts;

ghost L0x4000829d98o@uint64, L0x4000829da0o@uint64, L0x4000829da8o@uint64,
      L0x4000829db0o@uint64, L0x4000829db8o@uint64, L0x4000829dc0o@uint64,
      L0x4000829dc8o@uint64, L0x4000829dd0o@uint64, L0x4000829dd8o@uint64,
      L0x4000829de0o@uint64, L0x4000829de8o@uint64, L0x4000829df0o@uint64 :
      and [L0x4000829d98o=L0x4000829d98, L0x4000829da0o=L0x4000829da0,
           L0x4000829da8o=L0x4000829da8, L0x4000829db0o=L0x4000829db0,
           L0x4000829db8o=L0x4000829db8, L0x4000829dc0o=L0x4000829dc0,
           L0x4000829dc8o=L0x4000829dc8, L0x4000829dd0o=L0x4000829dd0,
           L0x4000829dd8o=L0x4000829dd8, L0x4000829de0o=L0x4000829de0,
           L0x4000829de8o=L0x4000829de8, L0x4000829df0o=L0x4000829df0]
   && and [L0x4000829d98o=L0x4000829d98, L0x4000829da0o=L0x4000829da0,
           L0x4000829da8o=L0x4000829da8, L0x4000829db0o=L0x4000829db0,
           L0x4000829db8o=L0x4000829db8, L0x4000829dc0o=L0x4000829dc0,
           L0x4000829dc8o=L0x4000829dc8, L0x4000829dd0o=L0x4000829dd0,
           L0x4000829dd8o=L0x4000829dd8, L0x4000829de0o=L0x4000829de0,
           L0x4000829de8o=L0x4000829de8, L0x4000829df0o=L0x4000829df0];

(* ldp	x11, x12, [x1]                              #! EA = L0x4000829d98; Value = 0x42f5820d776f9840; PC = 0x274877984672 *)
mov x11 L0x4000829d98;
mov x12 L0x4000829da0;
(* ldp	x19, x20, [x2]                              #! EA = L0x40008298a0; Value = 0x8cbe4d4470ab6640; PC = 0x274877984676 *)
mov x19 L0x40008298a0;
mov x20 L0x40008298a8;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829da8; Value = 0x42822e1c2873f4a0; PC = 0x274877984680 *)
mov x13 L0x4000829da8;
mov x14 L0x4000829db0;
(* subs	x11, x11, x19                              #! PC = 0x274877984684 *)
subc carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x40008298b0; Value = 0xf87879636b2af122; PC = 0x274877984688 *)
mov x21 L0x40008298b0;
mov x22 L0x40008298b8;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984692 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829db8; Value = 0x8e64ef53bf927280; PC = 0x274877984696 *)
mov x15 L0x4000829db8;
mov x16 L0x4000829dc0;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984700 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x40008298c0; Value = 0x41ed75d42f00c2b7; PC = 0x274877984704 *)
mov x23 L0x40008298c0;
mov x24 L0x40008298c8;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984708 *)
sbcs carry x14 x14 x22 carry;
(* stp	x11, x12, [x0]                              #! EA = L0x4000829d98; PC = 0x274877984712 *)
mov L0x4000829d98 x11;
mov L0x4000829da0 x12;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984716 *)
sbcs carry x15 x15 x23 carry;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0x4000829dc8; Value = 0x079e81741cfad861; PC = 0x274877984720 *)
mov x11 L0x4000829dc8;
mov x12 L0x4000829dd0;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984724 *)
sbcs carry x16 x16 x24 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x40008298d0; Value = 0xb53177eb21bf3324; PC = 0x274877984728 *)
mov x19 L0x40008298d0;
mov x20 L0x40008298d8;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x4000829da8; PC = 0x274877984732 *)
mov L0x4000829da8 x13;
mov L0x4000829db0 x14;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0x4000829dd8; Value = 0xced44c2473541441; PC = 0x274877984736 *)
mov x13 L0x4000829dd8;
mov x14 L0x4000829de0;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x40008298e0; Value = 0x4989224b8c59959a; PC = 0x274877984740 *)
mov x21 L0x40008298e0;
mov x22 L0x40008298e8;
(* sbcs	x11, x11, x19                              #! PC = 0x274877984744 *)
sbcs carry x11 x11 x19 carry;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x4000829db8; PC = 0x274877984748 *)
mov L0x4000829db8 x15;
mov L0x4000829dc0 x16;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984752 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #80]                         #! EA = L0x4000829de8; Value = 0x0000000000002000; PC = 0x274877984756 *)
mov x15 L0x4000829de8;
mov x16 L0x4000829df0;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984760 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x40008298f0; Value = 0x217a9f80010c44f5; PC = 0x274877984764 *)
mov x23 L0x40008298f0;
mov x24 L0x40008298f8;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984768 *)
sbcs carry x14 x14 x22 carry;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984772 *)
sbcs carry x15 x15 x23 carry;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984776 *)
sbcs carry x16 x16 x24 carry;
(* ngc	x17, xzr                                    #! PC = 0x274877984780 *)
cmov x17 carry 0@uint64 0xffffffffffffffff@uint64;
(* and	x19, x5, x17                                #! PC = 0x274877984784 *)
and x19@uint64 x5 x17;
(* and	x20, x6, x17                                #! PC = 0x274877984788 *)
and x20@uint64 x6 x17;
(* adds	x11, x11, x19                              #! PC = 0x274877984792 *)
adds carry x11 x11 x19;
(* and	x21, x7, x17                                #! PC = 0x274877984796 *)
and x21@uint64 x7 x17;
(* adcs	x12, x12, x20                              #! PC = 0x274877984800 *)
adcs carry x12 x12 x20 carry;
(* and	x22, x8, x17                                #! PC = 0x274877984804 *)
and x22@uint64 x8 x17;
(* adcs	x13, x13, x21                              #! PC = 0x274877984808 *)
adcs carry x13 x13 x21 carry;
(* and	x23, x9, x17                                #! PC = 0x274877984812 *)
and x23@uint64 x9 x17;
(* adcs	x14, x14, x22                              #! PC = 0x274877984816 *)
adcs carry x14 x14 x22 carry;
(* and	x24, x10, x17                               #! PC = 0x274877984820 *)
and x24@uint64 x10 x17;
(* adcs	x15, x15, x23                              #! PC = 0x274877984824 *)
adcs carry x15 x15 x23 carry;
(* stp	x11, x12, [x0, #48]                         #! EA = L0x4000829dc8; PC = 0x274877984828 *)
mov L0x4000829dc8 x11;
mov L0x4000829dd0 x12;
(* adc	x16, x16, x24                               #! PC = 0x274877984832 *)
adcs dontcare x16 x16 x24 carry;
(* stp	x13, x14, [x0, #64]                         #! EA = L0x4000829dd8; PC = 0x274877984836 *)
mov L0x4000829dd8 x13;
mov L0x4000829de0 x14;
(* stp	x15, x16, [x0, #80]                         #! EA = L0x4000829de8; PC = 0x274877984840 *)
mov L0x4000829de8 x15;
mov L0x4000829df0 x16;
(* #ret                                            #! PC = 0x274877984844 *)
#ret                                            #! 0x274877984844 = 0x274877984844;

assert true
    && eqmod (limbs 64 [L0x4000829d98, L0x4000829da0, L0x4000829da8,
                        L0x4000829db0, L0x4000829db8, L0x4000829dc0,
                        L0x4000829dc8, L0x4000829dd0, L0x4000829dd8,
                        L0x4000829de0, L0x4000829de8, L0x4000829df0] +
              limbs 64 [L0x40008298a0, L0x40008298a8, L0x40008298b0,
                        L0x40008298b8, L0x40008298c0, L0x40008298c8,
                        L0x40008298d0, L0x40008298d8, L0x40008298e0,
                        L0x40008298e8, L0x40008298f0, L0x40008298f8])
             (limbs 64 [L0x4000829d98o, L0x4000829da0o, L0x4000829da8o,
                        L0x4000829db0o, L0x4000829db8o, L0x4000829dc0o,
                        L0x4000829dc8o, L0x4000829dd0o, L0x4000829dd8o,
                        L0x4000829de0o, L0x4000829de8o, L0x4000829df0o])
             (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                          m0,   m1,   m2,   m3,   m4,   m5]);

assume eqmod (limbs 64 [L0x4000829d98, L0x4000829da0, L0x4000829da8,
                        L0x4000829db0, L0x4000829db8, L0x4000829dc0,
                        L0x4000829dc8, L0x4000829dd0, L0x4000829dd8,
                        L0x4000829de0, L0x4000829de8, L0x4000829df0] +
              limbs 64 [L0x40008298a0, L0x40008298a8, L0x40008298b0,
                        L0x40008298b8, L0x40008298c0, L0x40008298c8,
                        L0x40008298d0, L0x40008298d8, L0x40008298e0,
                        L0x40008298e8, L0x40008298f0, L0x40008298f8])
             (limbs 64 [L0x4000829d98o, L0x4000829da0o, L0x4000829da8o,
                        L0x4000829db0o, L0x4000829db8o, L0x4000829dc0o,
                        L0x4000829dc8o, L0x4000829dd0o, L0x4000829dd8o,
                        L0x4000829de0o, L0x4000829de8o, L0x4000829df0o])
             (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5])
    && true;

(* ldr	x30, [x29, #8]                              #! EA = L0x4000829908; Value = 0x001f004000008b50; PC = 0x274877990080 *)
mov x30 L0x4000829908;
(* add	sp, sp, #0x60                               #! PC = 0x274877990084 *)
adds dontcare sp sp 0x60@uint64;
(* ldp	x19, x20, [x29, #16]                        #! EA = L0x4000829910; Value = 0x0000004000016928; PC = 0x274877990088 *)
mov x19 L0x4000829910;
mov x20 L0x4000829918;
(* ldp	x21, x22, [x29, #32]                        #! EA = L0x4000829920; Value = 0x000000400082a228; PC = 0x274877990092 *)
mov x21 L0x4000829920;
mov x22 L0x4000829928;
(* ldp	x23, x24, [x29, #48]                        #! EA = L0x4000829930; Value = 0x0000004000829c88; PC = 0x274877990096 *)
mov x23 L0x4000829930;
mov x24 L0x4000829938;
(* ldp	x25, x26, [x29, #64]                        #! EA = L0x4000829940; Value = 0x0000004000829aa8; PC = 0x274877990100 *)
mov x25 L0x4000829940;
mov x26 L0x4000829948;
(* ldp	x27, x28, [x29, #80]                        #! EA = L0x4000829950; Value = 0x0000004000829b08; PC = 0x274877990104 *)
mov x27 L0x4000829950;
mov x28 L0x4000829958;
(* ldr	x29, [sp], #128                             #! EA = L0x4000829900; Value = 0x0000004000829980; PC = 0x274877990108 *)
mov x29 L0x4000829900;
(* #autiasp                                         #! PC = 0x274877990112 *)
#autiasp                                         #! 0x274877990112 = 0x274877990112;
(* #ret                                            #! PC = 0x274877990116 *)
#ret                                            #! 0x274877990116 = 0x274877990116;
(* ldp	x29, x30, [sp], #16                         #! EA = L0x4000829980; Value = 0x0000004000829990; PC = 0x274877942608 *)
mov x29 L0x4000829980;
mov x30 L0x4000829988;
(* #ret                                            #! PC = 0x274877942612 *)
#ret                                            #! 0x274877942612 = 0x274877942612;

(* mul_382x(ret[0], aa, bb) *)

assert and [eqmod (limbs 64 [L0x4000829d98, L0x4000829da0, L0x4000829da8,
                             L0x4000829db0, L0x4000829db8, L0x4000829dc0,
                             L0x4000829dc8, L0x4000829dd0, L0x4000829dd8,
                             L0x4000829de0, L0x4000829de8, L0x4000829df0] +
                   limbs 64 [L0x4000829df8, L0x4000829e00, L0x4000829e08,
                             L0x4000829e10, L0x4000829e18, L0x4000829e20,
                             L0x4000829e28, L0x4000829e30, L0x4000829e38,
                             L0x4000829e40, L0x4000829e48, L0x4000829e50] * U)
                  ((limbs 64 [L0x4000829a48, L0x4000829a50, L0x4000829a58,
                              L0x4000829a60, L0x4000829a68, L0x4000829a70] +
                    limbs 64 [L0x4000829a78, L0x4000829a80, L0x4000829a88,
                              L0x4000829a90, L0x4000829a98, L0x4000829aa0] * U) *
                   (limbs 64 [L0x4000829aa8, L0x4000829ab0, L0x4000829ab8,
                              L0x4000829ac0, L0x4000829ac8, L0x4000829ad0] +
                    limbs 64 [L0x4000829ad8, L0x4000829ae0, L0x4000829ae8,
                              L0x4000829af0, L0x4000829af8, L0x4000829b00] * U))
                  [limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5],
                             U * U + 1],
            eqmod (limbs 64 [L0x4000829a48, L0x4000829a50, L0x4000829a58,
                             L0x4000829a60, L0x4000829a68, L0x4000829a70] +
                   limbs 64 [L0x4000829a78, L0x4000829a80, L0x4000829a88,
                             L0x4000829a90, L0x4000829a98, L0x4000829aa0] * U)
                  (limbs 64 [a20, a21, a22, a23, a24, a25] +
                   limbs 64 [a30, a31, a32, a33, a34, a35] * U +
                   limbs 64 [a40, a41, a42, a43, a44, a45] +
                   limbs 64 [a50, a51, a52, a53, a54, a55] * U)
                  [limbs 64 [m0, m1, m2, m3, m4, m5], U * U + 1],
            eqmod (limbs 64 [L0x4000829aa8, L0x4000829ab0, L0x4000829ab8,
                             L0x4000829ac0, L0x4000829ac8, L0x4000829ad0] +
                   limbs 64 [L0x4000829ad8, L0x4000829ae0, L0x4000829ae8,
                             L0x4000829af0, L0x4000829af8, L0x4000829b00] * U)
                  (limbs 64 [b20, b21, b22, b23, b24, b25] +
                   limbs 64 [b30, b31, b32, b33, b34, b35] * U +
                   limbs 64 [b40, b41, b42, b43, b44, b45] +
                   limbs 64 [b50, b51, b52, b53, b54, b55] * U)
                  [limbs 64 [m0, m1, m2, m3, m4, m5], U * U + 1]]
    && true;


(* mov	x3, x19                                     #! PC = 0x274877950376 *)
mov x3 x19;
(* mov	x2, x28                                     #! PC = 0x274877950380 *)
mov x2 x28;
(* mov	x1, x20                                     #! PC = 0x274877950384 *)
mov x1 x20;
(* mov	x0, x20                                     #! PC = 0x274877950388 *)
mov x0 x20;
(* #bl	0x4000012f40 <sub_mod_384x384>              #! PC = 0x274877950392 *)
#bl	0x4000012f40 <sub_mod_384x384>              #! 0x274877950392 = 0x274877950392;
(* #paciasp                                         #! PC = 0x274877984576 *)
#paciasp                                         #! 0x274877984576 = 0x274877984576;
(* stp	x29, x30, [sp, #-64]!                       #! EA = L0x4000829950; PC = 0x274877984580 *)
mov L0x4000829950 x29;
mov L0x4000829958 x30;
(* mov	x29, sp                                     #! PC = 0x274877984584 *)
mov x29 sp;
(* stp	x19, x20, [sp, #16]                         #! EA = L0x4000829960; PC = 0x274877984588 *)
mov L0x4000829960 x19;
mov L0x4000829968 x20;
(* stp	x21, x22, [sp, #32]                         #! EA = L0x4000829970; PC = 0x274877984592 *)
mov L0x4000829970 x21;
mov L0x4000829978 x22;
(* stp	x23, x24, [sp, #48]                         #! EA = L0x4000829980; PC = 0x274877984596 *)
mov L0x4000829980 x23;
mov L0x4000829988 x24;
(* ldp	x5, x6, [x3]                                #! EA = L0x4000016928; Value = 0xb9feffffffffaaab; PC = 0x274877984600 *)
mov x5 L0x4000016928;
mov x6 L0x4000016930;
(* ldp	x7, x8, [x3, #16]                           #! EA = L0x4000016938; Value = 0x6730d2a0f6b0f624; PC = 0x274877984604 *)
mov x7 L0x4000016938;
mov x8 L0x4000016940;
(* ldp	x9, x10, [x3, #32]                          #! EA = L0x4000016948; Value = 0x4b1ba7b6434bacd7; PC = 0x274877984608 *)
mov x9 L0x4000016948;
mov x10 L0x4000016950;
(* #bl	0x4000012fa0 <__sub_mod_384x384>            #! PC = 0x274877984612 *)
#bl	0x4000012fa0 <__sub_mod_384x384>            #! 0x274877984612 = 0x274877984612;

rcut and [limbs 64 [L0x4000829dc8, L0x4000829dd0, L0x4000829dd8,
                    L0x4000829de0, L0x4000829de8, L0x4000829df0] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829e28, L0x4000829e30, L0x4000829e38,
                    L0x4000829e40, L0x4000829e48, L0x4000829e50] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829bf8, L0x4000829c00, L0x4000829c08,
                    L0x4000829c10, L0x4000829c18, L0x4000829c20] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829c58, L0x4000829c60, L0x4000829c68,
                    L0x4000829c70, L0x4000829c78, L0x4000829c80] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
          m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
          m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64
     ] prove with all cuts, precondition;

ghost L0x4000829d98q@uint64, L0x4000829da0q@uint64, L0x4000829da8q@uint64,
      L0x4000829db0q@uint64, L0x4000829db8q@uint64, L0x4000829dc0q@uint64,
      L0x4000829dc8q@uint64, L0x4000829dd0q@uint64, L0x4000829dd8q@uint64,
      L0x4000829de0q@uint64, L0x4000829de8q@uint64, L0x4000829df0q@uint64,
      L0x4000829df8q@uint64, L0x4000829e00q@uint64, L0x4000829e08q@uint64,
      L0x4000829e10q@uint64, L0x4000829e18q@uint64, L0x4000829e20q@uint64,
      L0x4000829e28q@uint64, L0x4000829e30q@uint64, L0x4000829e38q@uint64,
      L0x4000829e40q@uint64, L0x4000829e48q@uint64, L0x4000829e50q@uint64 :
      and [L0x4000829d98q=L0x4000829d98, L0x4000829da0q=L0x4000829da0,
           L0x4000829da8q=L0x4000829da8, L0x4000829db0q=L0x4000829db0,
           L0x4000829db8q=L0x4000829db8, L0x4000829dc0q=L0x4000829dc0,
           L0x4000829dc8q=L0x4000829dc8, L0x4000829dd0q=L0x4000829dd0,
           L0x4000829dd8q=L0x4000829dd8, L0x4000829de0q=L0x4000829de0,
           L0x4000829de8q=L0x4000829de8, L0x4000829df0q=L0x4000829df0,
           L0x4000829df8q=L0x4000829df8, L0x4000829e00q=L0x4000829e00,
           L0x4000829e08q=L0x4000829e08, L0x4000829e10q=L0x4000829e10,
           L0x4000829e18q=L0x4000829e18, L0x4000829e20q=L0x4000829e20,
           L0x4000829e28q=L0x4000829e28, L0x4000829e30q=L0x4000829e30,
           L0x4000829e38q=L0x4000829e38, L0x4000829e40q=L0x4000829e40,
           L0x4000829e48q=L0x4000829e48, L0x4000829e50q=L0x4000829e50]
   && and [L0x4000829d98q=L0x4000829d98, L0x4000829da0q=L0x4000829da0,
           L0x4000829da8q=L0x4000829da8, L0x4000829db0q=L0x4000829db0,
           L0x4000829db8q=L0x4000829db8, L0x4000829dc0q=L0x4000829dc0,
           L0x4000829dc8q=L0x4000829dc8, L0x4000829dd0q=L0x4000829dd0,
           L0x4000829dd8q=L0x4000829dd8, L0x4000829de0q=L0x4000829de0,
           L0x4000829de8q=L0x4000829de8, L0x4000829df0q=L0x4000829df0,
           L0x4000829df8q=L0x4000829df8, L0x4000829e00q=L0x4000829e00,
           L0x4000829e08q=L0x4000829e08, L0x4000829e10q=L0x4000829e10,
           L0x4000829e18q=L0x4000829e18, L0x4000829e20q=L0x4000829e20,
           L0x4000829e28q=L0x4000829e28, L0x4000829e30q=L0x4000829e30,
           L0x4000829e38q=L0x4000829e38, L0x4000829e40q=L0x4000829e40,
           L0x4000829e48q=L0x4000829e48, L0x4000829e50q=L0x4000829e50];

(* ldp	x11, x12, [x1]                              #! EA = L0x4000829d98; Value = 0xb63734c906c43200; PC = 0x274877984672 *)
mov x11 L0x4000829d98;
mov x12 L0x4000829da0;
(* ldp	x19, x20, [x2]                              #! EA = L0x4000829bc8; Value = 0xde8c000000000000; PC = 0x274877984676 *)
mov x19 L0x4000829bc8;
mov x20 L0x4000829bd0;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829da8; Value = 0x4a09b4b8bd49037d; PC = 0x274877984680 *)
mov x13 L0x4000829da8;
mov x14 L0x4000829db0;
(* subs	x11, x11, x19                              #! PC = 0x274877984684 *)
subc carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x4000829bd8; Value = 0x7a1bbdc054180c5e; PC = 0x274877984688 *)
mov x21 L0x4000829bd8;
mov x22 L0x4000829be0;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984692 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829db8; Value = 0x4c77797f9091afc9; PC = 0x274877984696 *)
mov x15 L0x4000829db8;
mov x16 L0x4000829dc0;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984700 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x4000829be8; Value = 0xabfafe98a7fa10f6; PC = 0x274877984704 *)
mov x23 L0x4000829be8;
mov x24 L0x4000829bf0;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984708 *)
sbcs carry x14 x14 x22 carry;
(* stp	x11, x12, [x0]                              #! EA = L0x4000829d98; PC = 0x274877984712 *)
mov L0x4000829d98 x11;
mov L0x4000829da0 x12;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984716 *)
sbcs carry x15 x15 x23 carry;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0x4000829dc8; Value = 0x0c6c0988fb3b4fe7; PC = 0x274877984720 *)
mov x11 L0x4000829dc8;
mov x12 L0x4000829dd0;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984724 *)
sbcs carry x16 x16 x24 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x4000829bf8; Value = 0x5fe26534850ac206; PC = 0x274877984728 *)
mov x19 L0x4000829bf8;
mov x20 L0x4000829c00;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x4000829da8; PC = 0x274877984732 *)
mov L0x4000829da8 x13;
mov L0x4000829db0 x14;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0x4000829dd8; Value = 0xec7bfc79ddab74cb; PC = 0x274877984736 *)
mov x13 L0x4000829dd8;
mov x14 L0x4000829de0;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x4000829c08; Value = 0x1681664ed2569f1a; PC = 0x274877984740 *)
mov x21 L0x4000829c08;
mov x22 L0x4000829c10;
(* sbcs	x11, x11, x19                              #! PC = 0x274877984744 *)
sbcs carry x11 x11 x19 carry;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x4000829db8; PC = 0x274877984748 *)
mov L0x4000829db8 x15;
mov L0x4000829dc0 x16;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984752 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #80]                         #! EA = L0x4000829de8; Value = 0x29a10836423f87e2; PC = 0x274877984756 *)
mov x15 L0x4000829de8;
mov x16 L0x4000829df0;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984760 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x4000829c18; Value = 0x4b1ba6f6434b7cd5; PC = 0x274877984764 *)
mov x23 L0x4000829c18;
mov x24 L0x4000829c20;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984768 *)
sbcs carry x14 x14 x22 carry;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984772 *)
sbcs carry x15 x15 x23 carry;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984776 *)
sbcs carry x16 x16 x24 carry;
(* ngc	x17, xzr                                    #! PC = 0x274877984780 *)
cmov x17 carry 0@uint64 0xffffffffffffffff@uint64;
(* and	x19, x5, x17                                #! PC = 0x274877984784 *)
and x19@uint64 x5 x17;
(* and	x20, x6, x17                                #! PC = 0x274877984788 *)
and x20@uint64 x6 x17;
(* adds	x11, x11, x19                              #! PC = 0x274877984792 *)
adds carry x11 x11 x19;
(* and	x21, x7, x17                                #! PC = 0x274877984796 *)
and x21@uint64 x7 x17;
(* adcs	x12, x12, x20                              #! PC = 0x274877984800 *)
adcs carry x12 x12 x20 carry;
(* and	x22, x8, x17                                #! PC = 0x274877984804 *)
and x22@uint64 x8 x17;
(* adcs	x13, x13, x21                              #! PC = 0x274877984808 *)
adcs carry x13 x13 x21 carry;
(* and	x23, x9, x17                                #! PC = 0x274877984812 *)
and x23@uint64 x9 x17;
(* adcs	x14, x14, x22                              #! PC = 0x274877984816 *)
adcs carry x14 x14 x22 carry;
(* and	x24, x10, x17                               #! PC = 0x274877984820 *)
and x24@uint64 x10 x17;
(* adcs	x15, x15, x23                              #! PC = 0x274877984824 *)
adcs carry x15 x15 x23 carry;
(* stp	x11, x12, [x0, #48]                         #! EA = L0x4000829dc8; PC = 0x274877984828 *)
mov L0x4000829dc8 x11;
mov L0x4000829dd0 x12;
(* adc	x16, x16, x24                               #! PC = 0x274877984832 *)
adcs dontcare x16 x16 x24 carry;
(* stp	x13, x14, [x0, #64]                         #! EA = L0x4000829dd8; PC = 0x274877984836 *)
mov L0x4000829dd8 x13;
mov L0x4000829de0 x14;
(* stp	x15, x16, [x0, #80]                         #! EA = L0x4000829de8; PC = 0x274877984840 *)
mov L0x4000829de8 x15;
mov L0x4000829df0 x16;
(* #ret                                            #! PC = 0x274877984844 *)
#ret                                            #! 0x274877984844 = 0x274877984844;
(* ldr	x30, [x29, #8]                              #! EA = L0x4000829958; Value = 0x005a00400000a9bc; PC = 0x274877984616 *)
mov x30 L0x4000829958;
(* ldp	x19, x20, [x29, #16]                        #! EA = L0x4000829960; Value = 0x0000004000016928; PC = 0x274877984620 *)
mov x19 L0x4000829960;
mov x20 L0x4000829968;
(* ldp	x21, x22, [x29, #32]                        #! EA = L0x4000829970; Value = 0x000000400082a228; PC = 0x274877984624 *)
mov x21 L0x4000829970;
mov x22 L0x4000829978;
(* ldp	x23, x24, [x29, #48]                        #! EA = L0x4000829980; Value = 0x0000004000829c88; PC = 0x274877984628 *)
mov x23 L0x4000829980;
mov x24 L0x4000829988;
(* ldr	x29, [sp], #64                              #! EA = L0x4000829950; Value = 0x0000004000829990; PC = 0x274877984632 *)
mov x29 L0x4000829950;
(* #autiasp                                         #! PC = 0x274877984636 *)
#autiasp                                         #! 0x274877984636 = 0x274877984636;
(* #ret                                            #! PC = 0x274877984640 *)
#ret                                            #! 0x274877984640 = 0x274877984640;
(* add	x21, x20, #0x60                             #! PC = 0x274877950396 *)
adds dontcare x21 x20 0x60@uint64;
(* add	x0, x28, #0x60                              #! PC = 0x274877950400 *)
adds dontcare x0 x28 0x60@uint64;
(* mov	x3, x19                                     #! PC = 0x274877950404 *)
mov x3 x19;
(* str	x0, [sp, #120]                              #! EA = L0x4000829a08; PC = 0x274877950408 *)
mov L0x4000829a08 x0;
(* mov	x2, x0                                      #! PC = 0x274877950412 *)
mov x2 x0;
(* mov	x1, x21                                     #! PC = 0x274877950416 *)
mov x1 x21;
(* mov	x0, x21                                     #! PC = 0x274877950420 *)
mov x0 x21;
(* #bl	0x4000012f40 <sub_mod_384x384>              #! PC = 0x274877950424 *)
#bl	0x4000012f40 <sub_mod_384x384>              #! 0x274877950424 = 0x274877950424;
(* #paciasp                                         #! PC = 0x274877984576 *)
#paciasp                                         #! 0x274877984576 = 0x274877984576;
(* stp	x29, x30, [sp, #-64]!                       #! EA = L0x4000829950; PC = 0x274877984580 *)
mov L0x4000829950 x29;
mov L0x4000829958 x30;
(* mov	x29, sp                                     #! PC = 0x274877984584 *)
mov x29 sp;
(* stp	x19, x20, [sp, #16]                         #! EA = L0x4000829960; PC = 0x274877984588 *)
mov L0x4000829960 x19;
mov L0x4000829968 x20;
(* stp	x21, x22, [sp, #32]                         #! EA = L0x4000829970; PC = 0x274877984592 *)
mov L0x4000829970 x21;
mov L0x4000829978 x22;
(* stp	x23, x24, [sp, #48]                         #! EA = L0x4000829980; PC = 0x274877984596 *)
mov L0x4000829980 x23;
mov L0x4000829988 x24;
(* ldp	x5, x6, [x3]                                #! EA = L0x4000016928; Value = 0xb9feffffffffaaab; PC = 0x274877984600 *)
mov x5 L0x4000016928;
mov x6 L0x4000016930;
(* ldp	x7, x8, [x3, #16]                           #! EA = L0x4000016938; Value = 0x6730d2a0f6b0f624; PC = 0x274877984604 *)
mov x7 L0x4000016938;
mov x8 L0x4000016940;
(* ldp	x9, x10, [x3, #32]                          #! EA = L0x4000016948; Value = 0x4b1ba7b6434bacd7; PC = 0x274877984608 *)
mov x9 L0x4000016948;
mov x10 L0x4000016950;
(* #bl	0x4000012fa0 <__sub_mod_384x384>            #! PC = 0x274877984612 *)
#bl	0x4000012fa0 <__sub_mod_384x384>            #! 0x274877984612 = 0x274877984612;
(* ldp	x11, x12, [x1]                              #! EA = L0x4000829df8; Value = 0x4d1fdcb794276580; PC = 0x274877984672 *)
mov x11 L0x4000829df8;
mov x12 L0x4000829e00;
(* ldp	x19, x20, [x2]                              #! EA = L0x4000829c28; Value = 0x0000000000000000; PC = 0x274877984676 *)
mov x19 L0x4000829c28;
mov x20 L0x4000829c30;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829e08; Value = 0xf1aaf81b29e2b111; PC = 0x274877984680 *)
mov x13 L0x4000829e08;
mov x14 L0x4000829e10;
(* subs	x11, x11, x19                              #! PC = 0x274877984684 *)
subc carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x4000829c38; Value = 0x0000000000000000; PC = 0x274877984688 *)
mov x21 L0x4000829c38;
mov x22 L0x4000829c40;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984692 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829e18; Value = 0x3b9192df2a94f3db; PC = 0x274877984696 *)
mov x15 L0x4000829e18;
mov x16 L0x4000829e20;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984700 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x4000829c48; Value = 0xa5b75f691182b810; PC = 0x274877984704 *)
mov x23 L0x4000829c48;
mov x24 L0x4000829c50;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984708 *)
sbcs carry x14 x14 x22 carry;
(* stp	x11, x12, [x0]                              #! EA = L0x4000829df8; PC = 0x274877984712 *)
mov L0x4000829df8 x11;
mov L0x4000829e00 x12;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984716 *)
sbcs carry x15 x15 x23 carry;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0x4000829e28; Value = 0x78ea079a7ceadfd5; PC = 0x274877984720 *)
mov x11 L0x4000829e28;
mov x12 L0x4000829e30;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984724 *)
sbcs carry x16 x16 x24 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x4000829c58; Value = 0x30e97a4437e7fa80; PC = 0x274877984728 *)
mov x19 L0x4000829c58;
mov x20 L0x4000829c60;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x4000829e08; PC = 0x274877984732 *)
mov L0x4000829e08 x13;
mov L0x4000829e10 x14;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0x4000829e38; Value = 0x0a988f1c485eb8b4; PC = 0x274877984736 *)
mov x13 L0x4000829e38;
mov x14 L0x4000829e40;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x4000829c68; Value = 0x2aca32e21865e811; PC = 0x274877984740 *)
mov x21 L0x4000829c68;
mov x22 L0x4000829c70;
(* sbcs	x11, x11, x19                              #! PC = 0x274877984744 *)
sbcs carry x11 x11 x19 carry;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x4000829e18; PC = 0x274877984748 *)
mov L0x4000829e18 x15;
mov L0x4000829e20 x16;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984752 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #80]                         #! EA = L0x4000829e48; Value = 0x20b8e88001065741; PC = 0x274877984756 *)
mov x15 L0x4000829e48;
mov x16 L0x4000829e50;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984760 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x4000829c78; Value = 0x0000000000003000; PC = 0x274877984764 *)
mov x23 L0x4000829c78;
mov x24 L0x4000829c80;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984768 *)
sbcs carry x14 x14 x22 carry;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984772 *)
sbcs carry x15 x15 x23 carry;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984776 *)
sbcs carry x16 x16 x24 carry;
(* ngc	x17, xzr                                    #! PC = 0x274877984780 *)
cmov x17 carry 0@uint64 0xffffffffffffffff@uint64;
(* and	x19, x5, x17                                #! PC = 0x274877984784 *)
and x19@uint64 x5 x17;
(* and	x20, x6, x17                                #! PC = 0x274877984788 *)
and x20@uint64 x6 x17;
(* adds	x11, x11, x19                              #! PC = 0x274877984792 *)
adds carry x11 x11 x19;
(* and	x21, x7, x17                                #! PC = 0x274877984796 *)
and x21@uint64 x7 x17;
(* adcs	x12, x12, x20                              #! PC = 0x274877984800 *)
adcs carry x12 x12 x20 carry;
(* and	x22, x8, x17                                #! PC = 0x274877984804 *)
and x22@uint64 x8 x17;
(* adcs	x13, x13, x21                              #! PC = 0x274877984808 *)
adcs carry x13 x13 x21 carry;
(* and	x23, x9, x17                                #! PC = 0x274877984812 *)
and x23@uint64 x9 x17;
(* adcs	x14, x14, x22                              #! PC = 0x274877984816 *)
adcs carry x14 x14 x22 carry;
(* and	x24, x10, x17                               #! PC = 0x274877984820 *)
and x24@uint64 x10 x17;
(* adcs	x15, x15, x23                              #! PC = 0x274877984824 *)
adcs carry x15 x15 x23 carry;
(* stp	x11, x12, [x0, #48]                         #! EA = L0x4000829e28; PC = 0x274877984828 *)
mov L0x4000829e28 x11;
mov L0x4000829e30 x12;
(* adc	x16, x16, x24                               #! PC = 0x274877984832 *)
adcs dontcare x16 x16 x24 carry;
(* stp	x13, x14, [x0, #64]                         #! EA = L0x4000829e38; PC = 0x274877984836 *)
mov L0x4000829e38 x13;
mov L0x4000829e40 x14;
(* stp	x15, x16, [x0, #80]                         #! EA = L0x4000829e48; PC = 0x274877984840 *)
mov L0x4000829e48 x15;
mov L0x4000829e50 x16;
(* #ret                                            #! PC = 0x274877984844 *)
#ret                                            #! 0x274877984844 = 0x274877984844;


(* sub_fp2x2(ret[0], ret[0], t1) *)
          
assert true
    && and [eqmod ((limbs 64 [L0x4000829d98, L0x4000829da0, L0x4000829da8,
                              L0x4000829db0, L0x4000829db8, L0x4000829dc0,
                              L0x4000829dc8, L0x4000829dd0, L0x4000829dd8,
                              L0x4000829de0, L0x4000829de8, L0x4000829df0]) +
                   (limbs 64 [L0x4000829bc8, L0x4000829bd0, L0x4000829bd8,
                              L0x4000829be0, L0x4000829be8, L0x4000829bf0,
                              L0x4000829bf8, L0x4000829c00, L0x4000829c08,
                              L0x4000829c10, L0x4000829c18, L0x4000829c20]))
                   (limbs 64 [L0x4000829d98q, L0x4000829da0q, L0x4000829da8q,
                              L0x4000829db0q, L0x4000829db8q, L0x4000829dc0q,
                              L0x4000829dc8q, L0x4000829dd0q, L0x4000829dd8q,
                              L0x4000829de0q, L0x4000829de8q, L0x4000829df0q])
                   (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                                m0,   m1,   m2,   m3,   m4,   m5]),
            eqmod ((limbs 64 [L0x4000829df8, L0x4000829e00, L0x4000829e08,
                              L0x4000829e10, L0x4000829e18, L0x4000829e20,
                              L0x4000829e28, L0x4000829e30, L0x4000829e38,
                              L0x4000829e40, L0x4000829e48, L0x4000829e50]) +
                   (limbs 64 [L0x4000829c28, L0x4000829c30, L0x4000829c38,
                              L0x4000829c40, L0x4000829c48, L0x4000829c50,
                              L0x4000829c58, L0x4000829c60, L0x4000829c68,
                              L0x4000829c70, L0x4000829c78, L0x4000829c80]))
                   (limbs 64 [L0x4000829df8q, L0x4000829e00q, L0x4000829e08q,
                              L0x4000829e10q, L0x4000829e18q, L0x4000829e20q,
                              L0x4000829e28q, L0x4000829e30q, L0x4000829e38q,
                              L0x4000829e40q, L0x4000829e48q, L0x4000829e50q])
                   (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                                m0,   m1,   m2,   m3,   m4,   m5])
       ];

assume and [eqmod ((limbs 64 [L0x4000829d98, L0x4000829da0, L0x4000829da8,
                              L0x4000829db0, L0x4000829db8, L0x4000829dc0,
                              L0x4000829dc8, L0x4000829dd0, L0x4000829dd8,
                              L0x4000829de0, L0x4000829de8, L0x4000829df0]) +
                   (limbs 64 [L0x4000829bc8, L0x4000829bd0, L0x4000829bd8,
                              L0x4000829be0, L0x4000829be8, L0x4000829bf0,
                              L0x4000829bf8, L0x4000829c00, L0x4000829c08,
                              L0x4000829c10, L0x4000829c18, L0x4000829c20]))
                   (limbs 64 [L0x4000829d98q, L0x4000829da0q, L0x4000829da8q,
                              L0x4000829db0q, L0x4000829db8q, L0x4000829dc0q,
                              L0x4000829dc8q, L0x4000829dd0q, L0x4000829dd8q,
                              L0x4000829de0q, L0x4000829de8q, L0x4000829df0q])
                   (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5]),
            eqmod ((limbs 64 [L0x4000829df8, L0x4000829e00, L0x4000829e08,
                              L0x4000829e10, L0x4000829e18, L0x4000829e20,
                              L0x4000829e28, L0x4000829e30, L0x4000829e38,
                              L0x4000829e40, L0x4000829e48, L0x4000829e50]) +
                   (limbs 64 [L0x4000829c28, L0x4000829c30, L0x4000829c38,
                              L0x4000829c40, L0x4000829c48, L0x4000829c50,
                              L0x4000829c58, L0x4000829c60, L0x4000829c68,
                              L0x4000829c70, L0x4000829c78, L0x4000829c80]))
                   (limbs 64 [L0x4000829df8q, L0x4000829e00q, L0x4000829e08q,
                              L0x4000829e10q, L0x4000829e18q, L0x4000829e20q,
                              L0x4000829e28q, L0x4000829e30q, L0x4000829e38q,
                              L0x4000829e40q, L0x4000829e48q, L0x4000829e50q])
                   (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5])
       ]
    && true;

(* ldr	x30, [x29, #8]                              #! EA = L0x4000829958; Value = 0x001f00400000a9dc; PC = 0x274877984616 *)
mov x30 L0x4000829958;
(* ldp	x19, x20, [x29, #16]                        #! EA = L0x4000829960; Value = 0x0000004000016928; PC = 0x274877984620 *)
mov x19 L0x4000829960;
mov x20 L0x4000829968;
(* ldp	x21, x22, [x29, #32]                        #! EA = L0x4000829970; Value = 0x0000004000829df8; PC = 0x274877984624 *)
mov x21 L0x4000829970;
mov x22 L0x4000829978;
(* ldp	x23, x24, [x29, #48]                        #! EA = L0x4000829980; Value = 0x0000004000829c88; PC = 0x274877984628 *)
mov x23 L0x4000829980;
mov x24 L0x4000829988;
(* ldr	x29, [sp], #64                              #! EA = L0x4000829950; Value = 0x0000004000829990; PC = 0x274877984632 *)
mov x29 L0x4000829950;
(* #autiasp                                         #! PC = 0x274877984636 *)
#autiasp                                         #! 0x274877984636 = 0x274877984636;
(* #ret                                            #! PC = 0x274877984640 *)
#ret                                            #! 0x274877984640 = 0x274877984640;

rcut and [limbs 64 [L0x4000829dc8, L0x4000829dd0, L0x4000829dd8,
                    L0x4000829de0, L0x4000829de8, L0x4000829df0] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829e28, L0x4000829e30, L0x4000829e38,
                    L0x4000829e40, L0x4000829e48, L0x4000829e50] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829cb8, L0x4000829cc0, L0x4000829cc8,
                    L0x4000829cd0, L0x4000829cd8, L0x4000829ce0] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829d18, L0x4000829d20, L0x4000829d28,
                    L0x4000829d30, L0x4000829d38, L0x4000829d40] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
          m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
          m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64
     ] prove with all cuts, precondition;

ghost L0x4000829d98r@uint64, L0x4000829da0r@uint64, L0x4000829da8r@uint64,
      L0x4000829db0r@uint64, L0x4000829db8r@uint64, L0x4000829dc0r@uint64,
      L0x4000829dc8r@uint64, L0x4000829dd0r@uint64, L0x4000829dd8r@uint64,
      L0x4000829de0r@uint64, L0x4000829de8r@uint64, L0x4000829df0r@uint64,
      L0x4000829df8r@uint64, L0x4000829e00r@uint64, L0x4000829e08r@uint64,
      L0x4000829e10r@uint64, L0x4000829e18r@uint64, L0x4000829e20r@uint64,
      L0x4000829e28r@uint64, L0x4000829e30r@uint64, L0x4000829e38r@uint64,
      L0x4000829e40r@uint64, L0x4000829e48r@uint64, L0x4000829e50r@uint64 :
      and [L0x4000829d98r=L0x4000829d98, L0x4000829da0r=L0x4000829da0,
           L0x4000829da8r=L0x4000829da8, L0x4000829db0r=L0x4000829db0,
           L0x4000829db8r=L0x4000829db8, L0x4000829dc0r=L0x4000829dc0,
           L0x4000829dc8r=L0x4000829dc8, L0x4000829dd0r=L0x4000829dd0,
           L0x4000829dd8r=L0x4000829dd8, L0x4000829de0r=L0x4000829de0,
           L0x4000829de8r=L0x4000829de8, L0x4000829df0r=L0x4000829df0,
           L0x4000829df8r=L0x4000829df8, L0x4000829e00r=L0x4000829e00,
           L0x4000829e08r=L0x4000829e08, L0x4000829e10r=L0x4000829e10,
           L0x4000829e18r=L0x4000829e18, L0x4000829e20r=L0x4000829e20,
           L0x4000829e28r=L0x4000829e28, L0x4000829e30r=L0x4000829e30,
           L0x4000829e38r=L0x4000829e38, L0x4000829e40r=L0x4000829e40,
           L0x4000829e48r=L0x4000829e48, L0x4000829e50r=L0x4000829e50]
   && and [L0x4000829d98r=L0x4000829d98, L0x4000829da0r=L0x4000829da0,
           L0x4000829da8r=L0x4000829da8, L0x4000829db0r=L0x4000829db0,
           L0x4000829db8r=L0x4000829db8, L0x4000829dc0r=L0x4000829dc0,
           L0x4000829dc8r=L0x4000829dc8, L0x4000829dd0r=L0x4000829dd0,
           L0x4000829dd8r=L0x4000829dd8, L0x4000829de0r=L0x4000829de0,
           L0x4000829de8r=L0x4000829de8, L0x4000829df0r=L0x4000829df0,
           L0x4000829df8r=L0x4000829df8, L0x4000829e00r=L0x4000829e00,
           L0x4000829e08r=L0x4000829e08, L0x4000829e10r=L0x4000829e10,
           L0x4000829e18r=L0x4000829e18, L0x4000829e20r=L0x4000829e20,
           L0x4000829e28r=L0x4000829e28, L0x4000829e30r=L0x4000829e30,
           L0x4000829e38r=L0x4000829e38, L0x4000829e40r=L0x4000829e40,
           L0x4000829e48r=L0x4000829e48, L0x4000829e50r=L0x4000829e50];

(* mov	x3, x19                                     #! PC = 0x274877950428 *)
mov x3 x19;
(* mov	x2, x23                                     #! PC = 0x274877950432 *)
mov x2 x23;
(* mov	x1, x20                                     #! PC = 0x274877950436 *)
mov x1 x20;
(* mov	x0, x20                                     #! PC = 0x274877950440 *)
mov x0 x20;
(* #bl	0x4000012f40 <sub_mod_384x384>              #! PC = 0x274877950444 *)
#bl	0x4000012f40 <sub_mod_384x384>              #! 0x274877950444 = 0x274877950444;
(* #paciasp                                         #! PC = 0x274877984576 *)
#paciasp                                         #! 0x274877984576 = 0x274877984576;
(* stp	x29, x30, [sp, #-64]!                       #! EA = L0x4000829950; PC = 0x274877984580 *)
mov L0x4000829950 x29;
mov L0x4000829958 x30;
(* mov	x29, sp                                     #! PC = 0x274877984584 *)
mov x29 sp;
(* stp	x19, x20, [sp, #16]                         #! EA = L0x4000829960; PC = 0x274877984588 *)
mov L0x4000829960 x19;
mov L0x4000829968 x20;
(* stp	x21, x22, [sp, #32]                         #! EA = L0x4000829970; PC = 0x274877984592 *)
mov L0x4000829970 x21;
mov L0x4000829978 x22;
(* stp	x23, x24, [sp, #48]                         #! EA = L0x4000829980; PC = 0x274877984596 *)
mov L0x4000829980 x23;
mov L0x4000829988 x24;
(* ldp	x5, x6, [x3]                                #! EA = L0x4000016928; Value = 0xb9feffffffffaaab; PC = 0x274877984600 *)
mov x5 L0x4000016928;
mov x6 L0x4000016930;
(* ldp	x7, x8, [x3, #16]                           #! EA = L0x4000016938; Value = 0x6730d2a0f6b0f624; PC = 0x274877984604 *)
mov x7 L0x4000016938;
mov x8 L0x4000016940;
(* ldp	x9, x10, [x3, #32]                          #! EA = L0x4000016948; Value = 0x4b1ba7b6434bacd7; PC = 0x274877984608 *)
mov x9 L0x4000016948;
mov x10 L0x4000016950;
(* #bl	0x4000012fa0 <__sub_mod_384x384>            #! PC = 0x274877984612 *)
#bl	0x4000012fa0 <__sub_mod_384x384>            #! 0x274877984612 = 0x274877984612;
(* ldp	x11, x12, [x1]                              #! EA = L0x4000829d98; Value = 0xd7ab34c906c43200; PC = 0x274877984672 *)
mov x11 L0x4000829d98;
mov x12 L0x4000829da0;
(* ldp	x19, x20, [x2]                              #! EA = L0x4000829c88; Value = 0xbf7e5d09780cb200; PC = 0x274877984676 *)
mov x19 L0x4000829c88;
mov x20 L0x4000829c90;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829da8; Value = 0xcfedf6f86930f71e; PC = 0x274877984680 *)
mov x13 L0x4000829da8;
mov x14 L0x4000829db0;
(* subs	x11, x11, x19                              #! PC = 0x274877984684 *)
subc carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x4000829c98; Value = 0x5ce62a1ce1098e3f; PC = 0x274877984688 *)
mov x21 L0x4000829c98;
mov x22 L0x4000829ca0;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984692 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829db8; Value = 0xa07c7ae6e8979ed3; PC = 0x274877984696 *)
mov x15 L0x4000829db8;
mov x16 L0x4000829dc0;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984700 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x4000829ca8; Value = 0x9e46be45859c8f1f; PC = 0x274877984704 *)
mov x23 L0x4000829ca8;
mov x24 L0x4000829cb0;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984708 *)
sbcs carry x14 x14 x22 carry;
(* stp	x11, x12, [x0]                              #! EA = L0x4000829d98; PC = 0x274877984712 *)
mov L0x4000829d98 x11;
mov L0x4000829da0 x12;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984716 *)
sbcs carry x15 x15 x23 carry;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0x4000829dc8; Value = 0x6688a4547630388b; PC = 0x274877984720 *)
mov x11 L0x4000829dc8;
mov x12 L0x4000829dd0;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984724 *)
sbcs carry x16 x16 x24 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x4000829cb8; Value = 0x9923a6debee0eac0; PC = 0x274877984728 *)
mov x19 L0x4000829cb8;
mov x20 L0x4000829cc0;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x4000829da8; PC = 0x274877984732 *)
mov L0x4000829da8 x13;
mov L0x4000829db0 x14;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0x4000829dd8; Value = 0x3d2b68cc0205cbd5; PC = 0x274877984736 *)
mov x13 L0x4000829dd8;
mov x14 L0x4000829de0;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x4000829cc8; Value = 0xa8efc16e4f1da713; PC = 0x274877984740 *)
mov x21 L0x4000829cc8;
mov x22 L0x4000829cd0;
(* sbcs	x11, x11, x19                              #! PC = 0x274877984744 *)
sbcs carry x11 x11 x19 carry;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x4000829db8; PC = 0x274877984748 *)
mov L0x4000829db8 x15;
mov L0x4000829dc0 x16;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984752 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #80]                         #! EA = L0x4000829de8; Value = 0x29a108f6423fb7e5; PC = 0x274877984756 *)
mov x15 L0x4000829de8;
mov x16 L0x4000829df0;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984760 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x4000829cd8; Value = 0x4b1ba77642c5c25f; PC = 0x274877984764 *)
mov x23 L0x4000829cd8;
mov x24 L0x4000829ce0;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984768 *)
sbcs carry x14 x14 x22 carry;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984772 *)
sbcs carry x15 x15 x23 carry;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984776 *)
sbcs carry x16 x16 x24 carry;
(* ngc	x17, xzr                                    #! PC = 0x274877984780 *)
cmov x17 carry 0@uint64 0xffffffffffffffff@uint64;
(* and	x19, x5, x17                                #! PC = 0x274877984784 *)
and x19@uint64 x5 x17;
(* and	x20, x6, x17                                #! PC = 0x274877984788 *)
and x20@uint64 x6 x17;
(* adds	x11, x11, x19                              #! PC = 0x274877984792 *)
adds carry x11 x11 x19;
(* and	x21, x7, x17                                #! PC = 0x274877984796 *)
and x21@uint64 x7 x17;
(* adcs	x12, x12, x20                              #! PC = 0x274877984800 *)
adcs carry x12 x12 x20 carry;
(* and	x22, x8, x17                                #! PC = 0x274877984804 *)
and x22@uint64 x8 x17;
(* adcs	x13, x13, x21                              #! PC = 0x274877984808 *)
adcs carry x13 x13 x21 carry;
(* and	x23, x9, x17                                #! PC = 0x274877984812 *)
and x23@uint64 x9 x17;
(* adcs	x14, x14, x22                              #! PC = 0x274877984816 *)
adcs carry x14 x14 x22 carry;
(* and	x24, x10, x17                               #! PC = 0x274877984820 *)
and x24@uint64 x10 x17;
(* adcs	x15, x15, x23                              #! PC = 0x274877984824 *)
adcs carry x15 x15 x23 carry;
(* stp	x11, x12, [x0, #48]                         #! EA = L0x4000829dc8; PC = 0x274877984828 *)
mov L0x4000829dc8 x11;
mov L0x4000829dd0 x12;
(* adc	x16, x16, x24                               #! PC = 0x274877984832 *)
adcs dontcare x16 x16 x24 carry;
(* stp	x13, x14, [x0, #64]                         #! EA = L0x4000829dd8; PC = 0x274877984836 *)
mov L0x4000829dd8 x13;
mov L0x4000829de0 x14;
(* stp	x15, x16, [x0, #80]                         #! EA = L0x4000829de8; PC = 0x274877984840 *)
mov L0x4000829de8 x15;
mov L0x4000829df0 x16;
(* #ret                                            #! PC = 0x274877984844 *)
#ret                                            #! 0x274877984844 = 0x274877984844;
(* ldr	x30, [x29, #8]                              #! EA = L0x4000829958; Value = 0x006800400000a9f0; PC = 0x274877984616 *)
mov x30 L0x4000829958;
(* ldp	x19, x20, [x29, #16]                        #! EA = L0x4000829960; Value = 0x0000004000016928; PC = 0x274877984620 *)
mov x19 L0x4000829960;
mov x20 L0x4000829968;
(* ldp	x21, x22, [x29, #32]                        #! EA = L0x4000829970; Value = 0x0000004000829df8; PC = 0x274877984624 *)
mov x21 L0x4000829970;
mov x22 L0x4000829978;
(* ldp	x23, x24, [x29, #48]                        #! EA = L0x4000829980; Value = 0x0000004000829c88; PC = 0x274877984628 *)
mov x23 L0x4000829980;
mov x24 L0x4000829988;
(* ldr	x29, [sp], #64                              #! EA = L0x4000829950; Value = 0x0000004000829990; PC = 0x274877984632 *)
mov x29 L0x4000829950;
(* #autiasp                                         #! PC = 0x274877984636 *)
#autiasp                                         #! 0x274877984636 = 0x274877984636;
(* #ret                                            #! PC = 0x274877984640 *)
#ret                                            #! 0x274877984640 = 0x274877984640;
(* add	x0, x23, #0x60                              #! PC = 0x274877950448 *)
adds dontcare x0 x23 0x60@uint64;
(* mov	x3, x19                                     #! PC = 0x274877950452 *)
mov x3 x19;
(* str	x0, [sp, #96]                               #! EA = L0x40008299f0; PC = 0x274877950456 *)
mov L0x40008299f0 x0;
(* mov	x2, x0                                      #! PC = 0x274877950460 *)
mov x2 x0;
(* mov	x1, x21                                     #! PC = 0x274877950464 *)
mov x1 x21;
(* mov	x0, x21                                     #! PC = 0x274877950468 *)
mov x0 x21;
(* #bl	0x4000012f40 <sub_mod_384x384>              #! PC = 0x274877950472 *)
#bl	0x4000012f40 <sub_mod_384x384>              #! 0x274877950472 = 0x274877950472;
(* #paciasp                                         #! PC = 0x274877984576 *)
#paciasp                                         #! 0x274877984576 = 0x274877984576;
(* stp	x29, x30, [sp, #-64]!                       #! EA = L0x4000829950; PC = 0x274877984580 *)
mov L0x4000829950 x29;
mov L0x4000829958 x30;
(* mov	x29, sp                                     #! PC = 0x274877984584 *)
mov x29 sp;
(* stp	x19, x20, [sp, #16]                         #! EA = L0x4000829960; PC = 0x274877984588 *)
mov L0x4000829960 x19;
mov L0x4000829968 x20;
(* stp	x21, x22, [sp, #32]                         #! EA = L0x4000829970; PC = 0x274877984592 *)
mov L0x4000829970 x21;
mov L0x4000829978 x22;
(* stp	x23, x24, [sp, #48]                         #! EA = L0x4000829980; PC = 0x274877984596 *)
mov L0x4000829980 x23;
mov L0x4000829988 x24;
(* ldp	x5, x6, [x3]                                #! EA = L0x4000016928; Value = 0xb9feffffffffaaab; PC = 0x274877984600 *)
mov x5 L0x4000016928;
mov x6 L0x4000016930;
(* ldp	x7, x8, [x3, #16]                           #! EA = L0x4000016938; Value = 0x6730d2a0f6b0f624; PC = 0x274877984604 *)
mov x7 L0x4000016938;
mov x8 L0x4000016940;
(* ldp	x9, x10, [x3, #32]                          #! EA = L0x4000016948; Value = 0x4b1ba7b6434bacd7; PC = 0x274877984608 *)
mov x9 L0x4000016948;
mov x10 L0x4000016950;
(* #bl	0x4000012fa0 <__sub_mod_384x384>            #! PC = 0x274877984612 *)
#bl	0x4000012fa0 <__sub_mod_384x384>            #! 0x274877984612 = 0x274877984612;
(* ldp	x11, x12, [x1]                              #! EA = L0x4000829df8; Value = 0x4d1fdcb794276580; PC = 0x274877984672 *)
mov x11 L0x4000829df8;
mov x12 L0x4000829e00;
(* ldp	x19, x20, [x2]                              #! EA = L0x4000829ce8; Value = 0xc73bbcb7f54de580; PC = 0x274877984676 *)
mov x19 L0x4000829ce8;
mov x20 L0x4000829cf0;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829e08; Value = 0xf1aaf81b29e2b111; PC = 0x274877984680 *)
mov x13 L0x4000829e08;
mov x14 L0x4000829e10;
(* subs	x11, x11, x19                              #! PC = 0x274877984684 *)
subc carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x4000829cf8; Value = 0x293deebfffea2401; PC = 0x274877984688 *)
mov x21 L0x4000829cf8;
mov x22 L0x4000829d00;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984692 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829e18; Value = 0x95da337619123bcb; PC = 0x274877984696 *)
mov x15 L0x4000829e18;
mov x16 L0x4000829e20;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984700 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x4000829d08; Value = 0xf05ac0a9b838b7e1; PC = 0x274877984704 *)
mov x23 L0x4000829d08;
mov x24 L0x4000829d10;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984708 *)
sbcs carry x14 x14 x22 carry;
(* stp	x11, x12, [x0]                              #! EA = L0x4000829df8; PC = 0x274877984712 *)
mov L0x4000829df8 x11;
mov L0x4000829e00 x12;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984716 *)
sbcs carry x15 x15 x23 carry;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0x4000829e28; Value = 0x48008d564502e554; PC = 0x274877984720 *)
mov x11 L0x4000829e28;
mov x12 L0x4000829e30;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984724 *)
sbcs carry x16 x16 x24 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x4000829d18; Value = 0x2941fad56ff9c9f1; PC = 0x274877984728 *)
mov x19 L0x4000829d18;
mov x20 L0x4000829d20;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x4000829e08; PC = 0x274877984732 *)
mov L0x4000829e08 x13;
mov L0x4000829e10 x14;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0x4000829e38; Value = 0xdfce5c3a2ff8d0a3; PC = 0x274877984736 *)
mov x13 L0x4000829e38;
mov x14 L0x4000829e40;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x4000829d28; Value = 0xc6bfe47aaf5d5198; PC = 0x274877984740 *)
mov x21 L0x4000829d28;
mov x22 L0x4000829d30;
(* sbcs	x11, x11, x19                              #! PC = 0x274877984744 *)
sbcs carry x11 x11 x19 carry;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x4000829e18; PC = 0x274877984748 *)
mov L0x4000829e18 x15;
mov L0x4000829e20 x16;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984752 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #80]                         #! EA = L0x4000829e48; Value = 0x20b8e88001062741; PC = 0x274877984756 *)
mov x15 L0x4000829e48;
mov x16 L0x4000829e50;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984760 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x4000829d38; Value = 0x00000040008303a0; PC = 0x274877984764 *)
mov x23 L0x4000829d38;
mov x24 L0x4000829d40;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984768 *)
sbcs carry x14 x14 x22 carry;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984772 *)
sbcs carry x15 x15 x23 carry;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984776 *)
sbcs carry x16 x16 x24 carry;
(* ngc	x17, xzr                                    #! PC = 0x274877984780 *)
cmov x17 carry 0@uint64 0xffffffffffffffff@uint64;
(* and	x19, x5, x17                                #! PC = 0x274877984784 *)
and x19@uint64 x5 x17;
(* and	x20, x6, x17                                #! PC = 0x274877984788 *)
and x20@uint64 x6 x17;
(* adds	x11, x11, x19                              #! PC = 0x274877984792 *)
adds carry x11 x11 x19;
(* and	x21, x7, x17                                #! PC = 0x274877984796 *)
and x21@uint64 x7 x17;
(* adcs	x12, x12, x20                              #! PC = 0x274877984800 *)
adcs carry x12 x12 x20 carry;
(* and	x22, x8, x17                                #! PC = 0x274877984804 *)
and x22@uint64 x8 x17;
(* adcs	x13, x13, x21                              #! PC = 0x274877984808 *)
adcs carry x13 x13 x21 carry;
(* and	x23, x9, x17                                #! PC = 0x274877984812 *)
and x23@uint64 x9 x17;
(* adcs	x14, x14, x22                              #! PC = 0x274877984816 *)
adcs carry x14 x14 x22 carry;
(* and	x24, x10, x17                               #! PC = 0x274877984820 *)
and x24@uint64 x10 x17;
(* adcs	x15, x15, x23                              #! PC = 0x274877984824 *)
adcs carry x15 x15 x23 carry;
(* stp	x11, x12, [x0, #48]                         #! EA = L0x4000829e28; PC = 0x274877984828 *)
mov L0x4000829e28 x11;
mov L0x4000829e30 x12;
(* adc	x16, x16, x24                               #! PC = 0x274877984832 *)
adcs dontcare x16 x16 x24 carry;
(* stp	x13, x14, [x0, #64]                         #! EA = L0x4000829e38; PC = 0x274877984836 *)
mov L0x4000829e38 x13;
mov L0x4000829e40 x14;
(* stp	x15, x16, [x0, #80]                         #! EA = L0x4000829e48; PC = 0x274877984840 *)
mov L0x4000829e48 x15;
mov L0x4000829e50 x16;
(* #ret                                            #! PC = 0x274877984844 *)
#ret                                            #! 0x274877984844 = 0x274877984844;
(* ldr	x30, [x29, #8]                              #! EA = L0x4000829958; Value = 0x007e00400000aa0c; PC = 0x274877984616 *)
mov x30 L0x4000829958;
(* ldp	x19, x20, [x29, #16]                        #! EA = L0x4000829960; Value = 0x0000004000016928; PC = 0x274877984620 *)
mov x19 L0x4000829960;
mov x20 L0x4000829968;
(* ldp	x21, x22, [x29, #32]                        #! EA = L0x4000829970; Value = 0x0000004000829df8; PC = 0x274877984624 *)
mov x21 L0x4000829970;
mov x22 L0x4000829978;
(* ldp	x23, x24, [x29, #48]                        #! EA = L0x4000829980; Value = 0x0000004000829c88; PC = 0x274877984628 *)
mov x23 L0x4000829980;
mov x24 L0x4000829988;
(* ldr	x29, [sp], #64                              #! EA = L0x4000829950; Value = 0x0000004000829990; PC = 0x274877984632 *)
mov x29 L0x4000829950;
(* #autiasp                                         #! PC = 0x274877984636 *)
#autiasp                                         #! 0x274877984636 = 0x274877984636;
(* #ret                                            #! PC = 0x274877984640 *)
#ret                                            #! 0x274877984640 = 0x274877984640;
(* add	x22, x20, #0xc0                             #! PC = 0x274877950476 *)
adds dontcare x22 x20 0xc0@uint64;
(* mov	x3, x19                                     #! PC = 0x274877950480 *)
mov x3 x19;
(* mov	x2, x21                                     #! PC = 0x274877950484 *)
mov x2 x21;
(* mov	x1, x20                                     #! PC = 0x274877950488 *)
mov x1 x20;
(* mov	x0, x22                                     #! PC = 0x274877950492 *)
mov x0 x22;
(* #bl	0x4000012f40 <sub_mod_384x384>              #! PC = 0x274877950496 *)
#bl	0x4000012f40 <sub_mod_384x384>              #! 0x274877950496 = 0x274877950496;
(* #paciasp                                         #! PC = 0x274877984576 *)
#paciasp                                         #! 0x274877984576 = 0x274877984576;

(* sub_fp2x2(ret[0], ret[0], t2) *)

assert true
    && and [eqmod ((limbs 64 [L0x4000829d98, L0x4000829da0, L0x4000829da8,
                              L0x4000829db0, L0x4000829db8, L0x4000829dc0,
                              L0x4000829dc8, L0x4000829dd0, L0x4000829dd8,
                              L0x4000829de0, L0x4000829de8, L0x4000829df0]) +
                   (limbs 64 [L0x4000829c88, L0x4000829c90, L0x4000829c98,
                              L0x4000829ca0, L0x4000829ca8, L0x4000829cb0,
                              L0x4000829cb8, L0x4000829cc0, L0x4000829cc8,
                              L0x4000829cd0, L0x4000829cd8, L0x4000829ce0]))
                  (limbs 64 [L0x4000829d98r, L0x4000829da0r, L0x4000829da8r,
                             L0x4000829db0r, L0x4000829db8r, L0x4000829dc0r,
                             L0x4000829dc8r, L0x4000829dd0r, L0x4000829dd8r,
                             L0x4000829de0r, L0x4000829de8r, L0x4000829df0r])
                  (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                               m0,   m1,   m2,   m3,   m4,   m5]),
            eqmod ((limbs 64 [L0x4000829df8, L0x4000829e00, L0x4000829e08,
                              L0x4000829e10, L0x4000829e18, L0x4000829e20,
                              L0x4000829e28, L0x4000829e30, L0x4000829e38,
                              L0x4000829e40, L0x4000829e48, L0x4000829e50]) +
                   (limbs 64 [L0x4000829ce8, L0x4000829cf0, L0x4000829cf8,
                              L0x4000829d00, L0x4000829d08, L0x4000829d10,
                              L0x4000829d18, L0x4000829d20, L0x4000829d28,
                              L0x4000829d30, L0x4000829d38, L0x4000829d40]))
                  (limbs 64 [L0x4000829df8r, L0x4000829e00r, L0x4000829e08r,
                             L0x4000829e10r, L0x4000829e18r, L0x4000829e20r,
                             L0x4000829e28r, L0x4000829e30r, L0x4000829e38r,
                             L0x4000829e40r, L0x4000829e48r, L0x4000829e50r])
                  (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                               m0,   m1,   m2,   m3,   m4,   m5])
       ];

assume and [eqmod ((limbs 64 [L0x4000829d98, L0x4000829da0, L0x4000829da8,
                              L0x4000829db0, L0x4000829db8, L0x4000829dc0,
                              L0x4000829dc8, L0x4000829dd0, L0x4000829dd8,
                              L0x4000829de0, L0x4000829de8, L0x4000829df0]) +
                   (limbs 64 [L0x4000829c88, L0x4000829c90, L0x4000829c98,
                              L0x4000829ca0, L0x4000829ca8, L0x4000829cb0,
                              L0x4000829cb8, L0x4000829cc0, L0x4000829cc8,
                              L0x4000829cd0, L0x4000829cd8, L0x4000829ce0]))
                  (limbs 64 [L0x4000829d98r, L0x4000829da0r, L0x4000829da8r,
                             L0x4000829db0r, L0x4000829db8r, L0x4000829dc0r,
                             L0x4000829dc8r, L0x4000829dd0r, L0x4000829dd8r,
                             L0x4000829de0r, L0x4000829de8r, L0x4000829df0r])
                  (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5]),
            eqmod ((limbs 64 [L0x4000829df8, L0x4000829e00, L0x4000829e08,
                              L0x4000829e10, L0x4000829e18, L0x4000829e20,
                              L0x4000829e28, L0x4000829e30, L0x4000829e38,
                              L0x4000829e40, L0x4000829e48, L0x4000829e50]) +
                   (limbs 64 [L0x4000829ce8, L0x4000829cf0, L0x4000829cf8,
                              L0x4000829d00, L0x4000829d08, L0x4000829d10,
                              L0x4000829d18, L0x4000829d20, L0x4000829d28,
                              L0x4000829d30, L0x4000829d38, L0x4000829d40]))
                  (limbs 64 [L0x4000829df8r, L0x4000829e00r, L0x4000829e08r,
                             L0x4000829e10r, L0x4000829e18r, L0x4000829e20r,
                             L0x4000829e28r, L0x4000829e30r, L0x4000829e38r,
                             L0x4000829e40r, L0x4000829e48r, L0x4000829e50r])
                  (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5])
       ]
    && true;

(* NOTE: summarize ret[0] = ret[0] - t1 - t2 *)
(*
assert eqmod (limbs 64 [L0x4000829d98, L0x4000829da0, L0x4000829da8,
                        L0x4000829db0, L0x4000829db8, L0x4000829dc0,
                        L0x4000829dc8, L0x4000829dd0, L0x4000829dd8,
                        L0x4000829de0, L0x4000829de8, L0x4000829df0] +
              limbs 64 [L0x4000829df8, L0x4000829e00, L0x4000829e08,
                        L0x4000829e10, L0x4000829e18, L0x4000829e20,
                        L0x4000829e28, L0x4000829e30, L0x4000829e38,
                        L0x4000829e40, L0x4000829e48, L0x4000829e50] * U +
              (limbs 64 [a20, a21, a22, a23, a24, a25] +
               limbs 64 [a30, a31, a32, a33, a34, a35] * U) *
              (limbs 64 [b20, b21, b22, b23, b24, b25] +
               limbs 64 [b30, b31, b32, b33, b34, b35] * U) +
              (limbs 64 [a40, a41, a42, a43, a44, a45] +
               limbs 64 [a50, a51, a52, a53, a54, a55] * U) *
              (limbs 64 [b40, b41, b42, b43, b44, b45] +
               limbs 64 [b50, b51, b52, b53, b54, b55] * U))
             (limbs 64 [L0x4000829d98q, L0x4000829da0q, L0x4000829da8q,
                        L0x4000829db0q, L0x4000829db8q, L0x4000829dc0q,
                        L0x4000829dc8q, L0x4000829dd0q, L0x4000829dd8q,
                        L0x4000829de0q, L0x4000829de8q, L0x4000829df0q] +
              limbs 64 [L0x4000829df8q, L0x4000829e00q, L0x4000829e08q,
                        L0x4000829e10q, L0x4000829e18q, L0x4000829e20q,
                        L0x4000829e28q, L0x4000829e30q, L0x4000829e38q,
                        L0x4000829e40q, L0x4000829e48q, L0x4000829e50q] * U)
             [limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5], U * U + 1]
    && true;
*)

(* stp	x29, x30, [sp, #-64]!                       #! EA = L0x4000829950; PC = 0x274877984580 *)
mov L0x4000829950 x29;
mov L0x4000829958 x30;
(* mov	x29, sp                                     #! PC = 0x274877984584 *)
mov x29 sp;
(* stp	x19, x20, [sp, #16]                         #! EA = L0x4000829960; PC = 0x274877984588 *)
mov L0x4000829960 x19;
mov L0x4000829968 x20;
(* stp	x21, x22, [sp, #32]                         #! EA = L0x4000829970; PC = 0x274877984592 *)
mov L0x4000829970 x21;
mov L0x4000829978 x22;
(* stp	x23, x24, [sp, #48]                         #! EA = L0x4000829980; PC = 0x274877984596 *)
mov L0x4000829980 x23;
mov L0x4000829988 x24;
(* ldp	x5, x6, [x3]                                #! EA = L0x4000016928; Value = 0xb9feffffffffaaab; PC = 0x274877984600 *)
mov x5 L0x4000016928;
mov x6 L0x4000016930;
(* ldp	x7, x8, [x3, #16]                           #! EA = L0x4000016938; Value = 0x6730d2a0f6b0f624; PC = 0x274877984604 *)
mov x7 L0x4000016938;
mov x8 L0x4000016940;
(* ldp	x9, x10, [x3, #32]                          #! EA = L0x4000016948; Value = 0x4b1ba7b6434bacd7; PC = 0x274877984608 *)
mov x9 L0x4000016948;
mov x10 L0x4000016950;
(* #bl	0x4000012fa0 <__sub_mod_384x384>            #! PC = 0x274877984612 *)
#bl	0x4000012fa0 <__sub_mod_384x384>            #! 0x274877984612 = 0x274877984612;
(* ldp	x11, x12, [x1]                              #! EA = L0x4000829d98; Value = 0x182cd7bf8eb78000; PC = 0x274877984672 *)
mov x11 L0x4000829d98;
mov x12 L0x4000829da0;
(* ldp	x19, x20, [x2]                              #! EA = L0x4000829df8; Value = 0x85e41fff9ed98000; PC = 0x274877984676 *)
mov x19 L0x4000829df8;
mov x20 L0x4000829e00;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829da8; Value = 0x7307ccdb882768de; PC = 0x274877984680 *)
mov x13 L0x4000829da8;
mov x14 L0x4000829db0;
(* subs	x11, x11, x19                              #! PC = 0x274877984684 *)
subc carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x4000829e08; Value = 0xc86d095b29f88d10; PC = 0x274877984688 *)
mov x21 L0x4000829e08;
mov x22 L0x4000829e10;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984692 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829db8; Value = 0x0235bca162fb0fb3; PC = 0x274877984696 *)
mov x15 L0x4000829db8;
mov x16 L0x4000829dc0;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984700 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x4000829e18; Value = 0xa57f72cc60d983e9; PC = 0x274877984704 *)
mov x23 L0x4000829e18;
mov x24 L0x4000829e20;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984708 *)
sbcs carry x14 x14 x22 carry;
(* stp	x11, x12, [x0]                              #! EA = L0x4000829e58; PC = 0x274877984712 *)
mov L0x4000829e58 x11;
mov L0x4000829e60 x12;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984716 *)
sbcs carry x15 x15 x23 carry;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0x4000829dc8; Value = 0x8763fd75b74ef876; PC = 0x274877984720 *)
mov x11 L0x4000829dc8;
mov x12 L0x4000829dd0;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984724 *)
sbcs carry x16 x16 x24 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x4000829e28; Value = 0x1ebe9280d5091b62; PC = 0x274877984728 *)
mov x19 L0x4000829e28;
mov x20 L0x4000829e30;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x4000829e68; PC = 0x274877984732 *)
mov L0x4000829e68 x13;
mov L0x4000829e70 x14;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0x4000829dd8; Value = 0xfb6c79fea9991ae5; PC = 0x274877984736 *)
mov x13 L0x4000829dd8;
mov x14 L0x4000829de0;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x4000829e38; Value = 0x190e77bf809b7f0a; PC = 0x274877984740 *)
mov x21 L0x4000829e38;
mov x22 L0x4000829e40;
(* sbcs	x11, x11, x19                              #! PC = 0x274877984744 *)
sbcs carry x11 x11 x19 carry;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x4000829e78; PC = 0x274877984748 *)
mov L0x4000829e78 x15;
mov L0x4000829e80 x16;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984752 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #80]                         #! EA = L0x4000829de8; Value = 0x29a1093642c5a25d; PC = 0x274877984756 *)
mov x15 L0x4000829de8;
mov x16 L0x4000829df0;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984760 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x4000829e48; Value = 0x20b8e840008323a0; PC = 0x274877984764 *)
mov x23 L0x4000829e48;
mov x24 L0x4000829e50;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984768 *)
sbcs carry x14 x14 x22 carry;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984772 *)
sbcs carry x15 x15 x23 carry;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984776 *)
sbcs carry x16 x16 x24 carry;
(* ngc	x17, xzr                                    #! PC = 0x274877984780 *)
cmov x17 carry 0@uint64 0xffffffffffffffff@uint64;
(* and	x19, x5, x17                                #! PC = 0x274877984784 *)
and x19@uint64 x5 x17;
(* and	x20, x6, x17                                #! PC = 0x274877984788 *)
and x20@uint64 x6 x17;
(* adds	x11, x11, x19                              #! PC = 0x274877984792 *)
adds carry x11 x11 x19;
(* and	x21, x7, x17                                #! PC = 0x274877984796 *)
and x21@uint64 x7 x17;
(* adcs	x12, x12, x20                              #! PC = 0x274877984800 *)
adcs carry x12 x12 x20 carry;
(* and	x22, x8, x17                                #! PC = 0x274877984804 *)
and x22@uint64 x8 x17;
(* adcs	x13, x13, x21                              #! PC = 0x274877984808 *)
adcs carry x13 x13 x21 carry;
(* and	x23, x9, x17                                #! PC = 0x274877984812 *)
and x23@uint64 x9 x17;
(* adcs	x14, x14, x22                              #! PC = 0x274877984816 *)
adcs carry x14 x14 x22 carry;
(* and	x24, x10, x17                               #! PC = 0x274877984820 *)
and x24@uint64 x10 x17;
(* adcs	x15, x15, x23                              #! PC = 0x274877984824 *)
adcs carry x15 x15 x23 carry;
(* stp	x11, x12, [x0, #48]                         #! EA = L0x4000829e88; PC = 0x274877984828 *)
mov L0x4000829e88 x11;
mov L0x4000829e90 x12;
(* adc	x16, x16, x24                               #! PC = 0x274877984832 *)
adcs dontcare x16 x16 x24 carry;
(* stp	x13, x14, [x0, #64]                         #! EA = L0x4000829e98; PC = 0x274877984836 *)
mov L0x4000829e98 x13;
mov L0x4000829ea0 x14;
(* stp	x15, x16, [x0, #80]                         #! EA = L0x4000829ea8; PC = 0x274877984840 *)
mov L0x4000829ea8 x15;
mov L0x4000829eb0 x16;
(* #ret                                            #! PC = 0x274877984844 *)
#ret                                            #! 0x274877984844 = 0x274877984844;
(* ldr	x30, [x29, #8]                              #! EA = L0x4000829958; Value = 0x001d00400000aa24; PC = 0x274877984616 *)
mov x30 L0x4000829958;
(* ldp	x19, x20, [x29, #16]                        #! EA = L0x4000829960; Value = 0x0000004000016928; PC = 0x274877984620 *)
mov x19 L0x4000829960;
mov x20 L0x4000829968;
(* ldp	x21, x22, [x29, #32]                        #! EA = L0x4000829970; Value = 0x0000004000829df8; PC = 0x274877984624 *)
mov x21 L0x4000829970;
mov x22 L0x4000829978;
(* ldp	x23, x24, [x29, #48]                        #! EA = L0x4000829980; Value = 0x0000004000829c88; PC = 0x274877984628 *)
mov x23 L0x4000829980;
mov x24 L0x4000829988;
(* ldr	x29, [sp], #64                              #! EA = L0x4000829950; Value = 0x0000004000829990; PC = 0x274877984632 *)
mov x29 L0x4000829950;
(* #autiasp                                         #! PC = 0x274877984636 *)
#autiasp                                         #! 0x274877984636 = 0x274877984636;
(* #ret                                            #! PC = 0x274877984640 *)
#ret                                            #! 0x274877984640 = 0x274877984640;
(* add	x26, x20, #0x120                            #! PC = 0x274877950500 *)
adds dontcare x26 x20 0x120@uint64;
(* mov	x3, x19                                     #! PC = 0x274877950504 *)
mov x3 x19;
(* mov	x2, x21                                     #! PC = 0x274877950508 *)
mov x2 x21;
(* mov	x1, x20                                     #! PC = 0x274877950512 *)
mov x1 x20;
(* mov	x0, x26                                     #! PC = 0x274877950516 *)
mov x0 x26;
(* #bl	0x4000012e20 <add_mod_384x384>              #! PC = 0x274877950520 *)
#bl	0x4000012e20 <add_mod_384x384>              #! 0x274877950520 = 0x274877950520;
(* #paciasp                                         #! PC = 0x274877984288 *)
#paciasp                                         #! 0x274877984288 = 0x274877984288;
(* stp	x29, x30, [sp, #-64]!                       #! EA = L0x4000829950; PC = 0x274877984292 *)
mov L0x4000829950 x29;
mov L0x4000829958 x30;
(* mov	x29, sp                                     #! PC = 0x274877984296 *)
mov x29 sp;
(* stp	x19, x20, [sp, #16]                         #! EA = L0x4000829960; PC = 0x274877984300 *)
mov L0x4000829960 x19;
mov L0x4000829968 x20;
(* stp	x21, x22, [sp, #32]                         #! EA = L0x4000829970; PC = 0x274877984304 *)
mov L0x4000829970 x21;
mov L0x4000829978 x22;
(* stp	x23, x24, [sp, #48]                         #! EA = L0x4000829980; PC = 0x274877984308 *)
mov L0x4000829980 x23;
mov L0x4000829988 x24;
(* ldp	x5, x6, [x3]                                #! EA = L0x4000016928; Value = 0xb9feffffffffaaab; PC = 0x274877984312 *)
mov x5 L0x4000016928;
mov x6 L0x4000016930;
(* ldp	x7, x8, [x3, #16]                           #! EA = L0x4000016938; Value = 0x6730d2a0f6b0f624; PC = 0x274877984316 *)
mov x7 L0x4000016938;
mov x8 L0x4000016940;
(* ldp	x9, x10, [x3, #32]                          #! EA = L0x4000016948; Value = 0x4b1ba7b6434bacd7; PC = 0x274877984320 *)
mov x9 L0x4000016948;
mov x10 L0x4000016950;
(* #bl	0x4000012e80 <__add_mod_384x384>            #! PC = 0x274877984324 *)
#bl	0x4000012e80 <__add_mod_384x384>            #! 0x274877984324 = 0x274877984324;
(* ldp	x11, x12, [x1]                              #! EA = L0x4000829d98; Value = 0x182cd7bf8eb78000; PC = 0x274877984384 *)
mov x11 L0x4000829d98;
mov x12 L0x4000829da0;
(* ldp	x19, x20, [x2]                              #! EA = L0x4000829df8; Value = 0x85e41fff9ed98000; PC = 0x274877984388 *)
mov x19 L0x4000829df8;
mov x20 L0x4000829e00;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829da8; Value = 0x7307ccdb882768de; PC = 0x274877984392 *)
mov x13 L0x4000829da8;
mov x14 L0x4000829db0;
(* adds	x11, x11, x19                              #! PC = 0x274877984396 *)
adds carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x4000829e08; Value = 0xc86d095b29f88d10; PC = 0x274877984400 *)
mov x21 L0x4000829e08;
mov x22 L0x4000829e10;
(* adcs	x12, x12, x20                              #! PC = 0x274877984404 *)
adcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829db8; Value = 0x0235bca162fb0fb3; PC = 0x274877984408 *)
mov x15 L0x4000829db8;
mov x16 L0x4000829dc0;
(* adcs	x13, x13, x21                              #! PC = 0x274877984412 *)
adcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x4000829e18; Value = 0xa57f72cc60d983e9; PC = 0x274877984416 *)
mov x23 L0x4000829e18;
mov x24 L0x4000829e20;
(* adcs	x14, x14, x22                              #! PC = 0x274877984420 *)
adcs carry x14 x14 x22 carry;
(* stp	x11, x12, [x0]                              #! EA = L0x4000829eb8; PC = 0x274877984424 *)
mov L0x4000829eb8 x11;
mov L0x4000829ec0 x12;
(* adcs	x15, x15, x23                              #! PC = 0x274877984428 *)
adcs carry x15 x15 x23 carry;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0x4000829dc8; Value = 0x8763fd75b74ef876; PC = 0x274877984432 *)
mov x11 L0x4000829dc8;
mov x12 L0x4000829dd0;
(* adcs	x16, x16, x24                              #! PC = 0x274877984436 *)
adcs carry x16 x16 x24 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x4000829e28; Value = 0x1ebe9280d5091b62; PC = 0x274877984440 *)
mov x19 L0x4000829e28;
mov x20 L0x4000829e30;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x4000829ec8; PC = 0x274877984444 *)
mov L0x4000829ec8 x13;
mov L0x4000829ed0 x14;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0x4000829dd8; Value = 0xfb6c79fea9991ae5; PC = 0x274877984448 *)
mov x13 L0x4000829dd8;
mov x14 L0x4000829de0;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x4000829e38; Value = 0x190e77bf809b7f0a; PC = 0x274877984452 *)
mov x21 L0x4000829e38;
mov x22 L0x4000829e40;
(* adcs	x11, x11, x19                              #! PC = 0x274877984456 *)
adcs carry x11 x11 x19 carry;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x4000829ed8; PC = 0x274877984460 *)
mov L0x4000829ed8 x15;
mov L0x4000829ee0 x16;
(* adcs	x12, x12, x20                              #! PC = 0x274877984464 *)
adcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #80]                         #! EA = L0x4000829de8; Value = 0x29a1093642c5a25d; PC = 0x274877984468 *)
mov x15 L0x4000829de8;
mov x16 L0x4000829df0;
(* adcs	x13, x13, x21                              #! PC = 0x274877984472 *)
adcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x4000829e48; Value = 0x20b8e840008323a0; PC = 0x274877984476 *)
mov x23 L0x4000829e48;
mov x24 L0x4000829e50;
(* adcs	x14, x14, x22                              #! PC = 0x274877984480 *)
adcs carry x14 x14 x22 carry;
(* adcs	x15, x15, x23                              #! PC = 0x274877984484 *)
adcs carry x15 x15 x23 carry;
(* adcs	x16, x16, x24                              #! PC = 0x274877984488 *)
adcs carry x16 x16 x24 carry;
(* adc	x17, xzr, xzr                               #! PC = 0x274877984492 *)
adc x17 0@uint64 0@uint64 carry;
(* subs	x19, x11, x5                               #! PC = 0x274877984496 *)
subc carry x19 x11 x5;
(* sbcs	x20, x12, x6                               #! PC = 0x274877984500 *)
sbcs carry x20 x12 x6 carry;
(* sbcs	x21, x13, x7                               #! PC = 0x274877984504 *)
sbcs carry x21 x13 x7 carry;
(* sbcs	x22, x14, x8                               #! PC = 0x274877984508 *)
sbcs carry x22 x14 x8 carry;
(* sbcs	x23, x15, x9                               #! PC = 0x274877984512 *)
sbcs carry x23 x15 x9 carry;
(* sbcs	x24, x16, x10                              #! PC = 0x274877984516 *)
sbcs carry x24 x16 x10 carry;
(* sbcs	xzr, x17, xzr                              #! PC = 0x274877984520 *)
sbcs carry dontcare x17 0@uint64 carry;
(* csel	x11, x11, x19, cc  // cc = lo, ul, last    #! PC = 0x274877984524 *)
cmov x11 carry x19 x11;
(* csel	x12, x12, x20, cc  // cc = lo, ul, last    #! PC = 0x274877984528 *)
cmov x12 carry x20 x12;
(* csel	x13, x13, x21, cc  // cc = lo, ul, last    #! PC = 0x274877984532 *)
cmov x13 carry x21 x13;
(* csel	x14, x14, x22, cc  // cc = lo, ul, last    #! PC = 0x274877984536 *)
cmov x14 carry x22 x14;
(* stp	x11, x12, [x0, #48]                         #! EA = L0x4000829ee8; PC = 0x274877984540 *)
mov L0x4000829ee8 x11;
mov L0x4000829ef0 x12;
(* csel	x15, x15, x23, cc  // cc = lo, ul, last    #! PC = 0x274877984544 *)
cmov x15 carry x23 x15;
(* stp	x13, x14, [x0, #64]                         #! EA = L0x4000829ef8; PC = 0x274877984548 *)
mov L0x4000829ef8 x13;
mov L0x4000829f00 x14;
(* csel	x16, x16, x24, cc  // cc = lo, ul, last    #! PC = 0x274877984552 *)
cmov x16 carry x24 x16;
(* stp	x15, x16, [x0, #80]                         #! EA = L0x4000829f08; PC = 0x274877984556 *)
mov L0x4000829f08 x15;
mov L0x4000829f10 x16;
(* #ret                                            #! PC = 0x274877984560 *)
#ret                                            #! 0x274877984560 = 0x274877984560;
(* ldr	x30, [x29, #8]                              #! EA = L0x4000829958; Value = 0x000e00400000aa3c; PC = 0x274877984328 *)
mov x30 L0x4000829958;
(* ldp	x19, x20, [x29, #16]                        #! EA = L0x4000829960; Value = 0x0000004000016928; PC = 0x274877984332 *)
mov x19 L0x4000829960;
mov x20 L0x4000829968;
(* ldp	x21, x22, [x29, #32]                        #! EA = L0x4000829970; Value = 0x0000004000829df8; PC = 0x274877984336 *)
mov x21 L0x4000829970;
mov x22 L0x4000829978;
(* ldp	x23, x24, [x29, #48]                        #! EA = L0x4000829980; Value = 0x0000004000829c88; PC = 0x274877984340 *)
mov x23 L0x4000829980;
mov x24 L0x4000829988;
(* ldr	x29, [sp], #64                              #! EA = L0x4000829950; Value = 0x0000004000829990; PC = 0x274877984344 *)
mov x29 L0x4000829950;
(* #autiasp                                         #! PC = 0x274877984348 *)
#autiasp                                         #! 0x274877984348 = 0x274877984348;
(* #ret                                            #! PC = 0x274877984352 *)
#ret                                            #! 0x274877984352 = 0x274877984352;
(* mov	x3, x19                                     #! PC = 0x274877950524 *)
mov x3 x19;
(* mov	x2, x27                                     #! PC = 0x274877950528 *)
mov x2 x27;
(* mov	x1, x22                                     #! PC = 0x274877950532 *)
mov x1 x22;
(* mov	x0, x20                                     #! PC = 0x274877950536 *)
mov x0 x20;
(* #bl	0x4000012e20 <add_mod_384x384>              #! PC = 0x274877950540 *)
#bl	0x4000012e20 <add_mod_384x384>              #! 0x274877950540 = 0x274877950540;
(* #paciasp                                         #! PC = 0x274877984288 *)
#paciasp                                         #! 0x274877984288 = 0x274877984288;

(* mul_by_u_plus_1_fp2x2(ret[1], ret[0]) *)

assert true
    && and [eqmod ((limbs 64 [L0x4000829e58, L0x4000829e60, L0x4000829e68,
                              L0x4000829e70, L0x4000829e78, L0x4000829e80,
                              L0x4000829e88, L0x4000829e90, L0x4000829e98,
                              L0x4000829ea0, L0x4000829ea8, L0x4000829eb0]) +
                   (limbs 64 [L0x4000829df8, L0x4000829e00, L0x4000829e08,
                              L0x4000829e10, L0x4000829e18, L0x4000829e20,
                              L0x4000829e28, L0x4000829e30, L0x4000829e38,
                              L0x4000829e40, L0x4000829e48, L0x4000829e50]))
                  (limbs 64 [L0x4000829d98, L0x4000829da0, L0x4000829da8,
                             L0x4000829db0, L0x4000829db8, L0x4000829dc0,
                             L0x4000829dc8, L0x4000829dd0, L0x4000829dd8,
                             L0x4000829de0, L0x4000829de8, L0x4000829df0])
                  (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                               m0,   m1,   m2,   m3,   m4,   m5]),
            eqmod (limbs 64 [L0x4000829eb8, L0x4000829ec0, L0x4000829ec8,
                             L0x4000829ed0, L0x4000829ed8, L0x4000829ee0,
                             L0x4000829ee8, L0x4000829ef0, L0x4000829ef8,
                             L0x4000829f00, L0x4000829f08, L0x4000829f10])
                  ((limbs 64 [L0x4000829d98, L0x4000829da0, L0x4000829da8,
                              L0x4000829db0, L0x4000829db8, L0x4000829dc0,
                              L0x4000829dc8, L0x4000829dd0, L0x4000829dd8,
                              L0x4000829de0, L0x4000829de8, L0x4000829df0]) +
                   (limbs 64 [L0x4000829df8, L0x4000829e00, L0x4000829e08,
                              L0x4000829e10, L0x4000829e18, L0x4000829e20,
                              L0x4000829e28, L0x4000829e30, L0x4000829e38,
                              L0x4000829e40, L0x4000829e48, L0x4000829e50]))
                  (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                               m0,   m1,   m2,   m3,   m4,   m5])
       ];

assume and [eqmod ((limbs 64 [L0x4000829e58, L0x4000829e60, L0x4000829e68,
                              L0x4000829e70, L0x4000829e78, L0x4000829e80,
                              L0x4000829e88, L0x4000829e90, L0x4000829e98,
                              L0x4000829ea0, L0x4000829ea8, L0x4000829eb0]) +
                   (limbs 64 [L0x4000829df8, L0x4000829e00, L0x4000829e08,
                              L0x4000829e10, L0x4000829e18, L0x4000829e20,
                              L0x4000829e28, L0x4000829e30, L0x4000829e38,
                              L0x4000829e40, L0x4000829e48, L0x4000829e50]))
                  (limbs 64 [L0x4000829d98, L0x4000829da0, L0x4000829da8,
                             L0x4000829db0, L0x4000829db8, L0x4000829dc0,
                             L0x4000829dc8, L0x4000829dd0, L0x4000829dd8,
                             L0x4000829de0, L0x4000829de8, L0x4000829df0])
                  (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5]),
            eqmod (limbs 64 [L0x4000829eb8, L0x4000829ec0, L0x4000829ec8,
                             L0x4000829ed0, L0x4000829ed8, L0x4000829ee0,
                             L0x4000829ee8, L0x4000829ef0, L0x4000829ef8,
                             L0x4000829f00, L0x4000829f08, L0x4000829f10])
                  ((limbs 64 [L0x4000829d98, L0x4000829da0, L0x4000829da8,
                              L0x4000829db0, L0x4000829db8, L0x4000829dc0,
                              L0x4000829dc8, L0x4000829dd0, L0x4000829dd8,
                              L0x4000829de0, L0x4000829de8, L0x4000829df0]) +
                   (limbs 64 [L0x4000829df8, L0x4000829e00, L0x4000829e08,
                              L0x4000829e10, L0x4000829e18, L0x4000829e20,
                              L0x4000829e28, L0x4000829e30, L0x4000829e38,
                              L0x4000829e40, L0x4000829e48, L0x4000829e50]))
                  (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5])
       ]
    && true;

rcut and [limbs 64 [L0x4000829e88, L0x4000829e90, L0x4000829e98,
                    L0x4000829ea0, L0x4000829ea8, L0x4000829eb0] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829ee8, L0x4000829ef0, L0x4000829ef8,
                    L0x4000829f00, L0x4000829f08, L0x4000829f10] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829b38, L0x4000829b40, L0x4000829b48,
                    L0x4000829b50, L0x4000829b58, L0x4000829b60] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829b98, L0x4000829ba0, L0x4000829ba8,
                    L0x4000829bb0, L0x4000829bb8, L0x4000829bc0] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
          m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
          m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64
     ] prove with all cuts, precondition;

(* stp	x29, x30, [sp, #-64]!                       #! EA = L0x4000829950; PC = 0x274877984292 *)
mov L0x4000829950 x29;
mov L0x4000829958 x30;
(* mov	x29, sp                                     #! PC = 0x274877984296 *)
mov x29 sp;
(* stp	x19, x20, [sp, #16]                         #! EA = L0x4000829960; PC = 0x274877984300 *)
mov L0x4000829960 x19;
mov L0x4000829968 x20;
(* stp	x21, x22, [sp, #32]                         #! EA = L0x4000829970; PC = 0x274877984304 *)
mov L0x4000829970 x21;
mov L0x4000829978 x22;
(* stp	x23, x24, [sp, #48]                         #! EA = L0x4000829980; PC = 0x274877984308 *)
mov L0x4000829980 x23;
mov L0x4000829988 x24;
(* ldp	x5, x6, [x3]                                #! EA = L0x4000016928; Value = 0xb9feffffffffaaab; PC = 0x274877984312 *)
mov x5 L0x4000016928;
mov x6 L0x4000016930;
(* ldp	x7, x8, [x3, #16]                           #! EA = L0x4000016938; Value = 0x6730d2a0f6b0f624; PC = 0x274877984316 *)
mov x7 L0x4000016938;
mov x8 L0x4000016940;
(* ldp	x9, x10, [x3, #32]                          #! EA = L0x4000016948; Value = 0x4b1ba7b6434bacd7; PC = 0x274877984320 *)
mov x9 L0x4000016948;
mov x10 L0x4000016950;
(* #bl	0x4000012e80 <__add_mod_384x384>            #! PC = 0x274877984324 *)
#bl	0x4000012e80 <__add_mod_384x384>            #! 0x274877984324 = 0x274877984324;
(* ldp	x11, x12, [x1]                              #! EA = L0x4000829e58; Value = 0x9248b7bfefde0000; PC = 0x274877984384 *)
mov x11 L0x4000829e58;
mov x12 L0x4000829e60;
(* ldp	x19, x20, [x2]                              #! EA = L0x4000829b08; Value = 0xa1aa48c1b6c4bf20; PC = 0x274877984388 *)
mov x19 L0x4000829b08;
mov x20 L0x4000829b10;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829e68; Value = 0xaa9ac3805e2edbce; PC = 0x274877984392 *)
mov x13 L0x4000829e68;
mov x14 L0x4000829e70;
(* adds	x11, x11, x19                              #! PC = 0x274877984396 *)
adds carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x4000829b18; Value = 0xdb753b9dee26c493; PC = 0x274877984400 *)
mov x21 L0x4000829b18;
mov x22 L0x4000829b20;
(* adcs	x12, x12, x20                              #! PC = 0x274877984404 *)
adcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829e78; Value = 0x5cb649d502218bc9; PC = 0x274877984408 *)
mov x15 L0x4000829e78;
mov x16 L0x4000829e80;
(* adcs	x13, x13, x21                              #! PC = 0x274877984412 *)
adcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x4000829b28; Value = 0xb416b4df03830d31; PC = 0x274877984416 *)
mov x23 L0x4000829b28;
mov x24 L0x4000829b30;
(* adcs	x14, x14, x22                              #! PC = 0x274877984420 *)
adcs carry x14 x14 x22 carry;
(* stp	x11, x12, [x0]                              #! EA = L0x4000829d98; PC = 0x274877984424 *)
mov L0x4000829d98 x11;
mov L0x4000829da0 x12;
(* adcs	x15, x15, x23                              #! PC = 0x274877984428 *)
adcs carry x15 x15 x23 carry;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0x4000829e88; Value = 0x68a56af4e245dd13; PC = 0x274877984432 *)
mov x11 L0x4000829e88;
mov x12 L0x4000829e90;
(* adcs	x16, x16, x24                              #! PC = 0x274877984436 *)
adcs carry x16 x16 x24 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x4000829b38; Value = 0x520fba46aeb315b1; PC = 0x274877984440 *)
mov x19 L0x4000829b38;
mov x20 L0x4000829b40;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x4000829da8; PC = 0x274877984444 *)
mov L0x4000829da8 x13;
mov L0x4000829db0 x14;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0x4000829e98; Value = 0xe25e023f28fd9bdb; PC = 0x274877984448 *)
mov x13 L0x4000829e98;
mov x14 L0x4000829ea0;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x4000829b48; Value = 0x09a67b1981fb69dc; PC = 0x274877984452 *)
mov x21 L0x4000829b48;
mov x22 L0x4000829b50;
(* adcs	x11, x11, x19                              #! PC = 0x274877984456 *)
adcs carry x11 x11 x19 carry;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x4000829db8; PC = 0x274877984460 *)
mov L0x4000829db8 x15;
mov L0x4000829dc0 x16;
(* adcs	x12, x12, x20                              #! PC = 0x274877984464 *)
adcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #80]                         #! EA = L0x4000829ea8; Value = 0x08e820f642427ebc; PC = 0x274877984468 *)
mov x15 L0x4000829ea8;
mov x16 L0x4000829eb0;
(* adcs	x13, x13, x21                              #! PC = 0x274877984472 *)
adcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x4000829b58; Value = 0xea09a14285a838b9; PC = 0x274877984476 *)
mov x23 L0x4000829b58;
mov x24 L0x4000829b60;
(* adcs	x14, x14, x22                              #! PC = 0x274877984480 *)
adcs carry x14 x14 x22 carry;
(* adcs	x15, x15, x23                              #! PC = 0x274877984484 *)
adcs carry x15 x15 x23 carry;
(* adcs	x16, x16, x24                              #! PC = 0x274877984488 *)
adcs carry x16 x16 x24 carry;
(* adc	x17, xzr, xzr                               #! PC = 0x274877984492 *)
adc x17 0@uint64 0@uint64 carry;
(* subs	x19, x11, x5                               #! PC = 0x274877984496 *)
subc carry x19 x11 x5;
(* sbcs	x20, x12, x6                               #! PC = 0x274877984500 *)
sbcs carry x20 x12 x6 carry;
(* sbcs	x21, x13, x7                               #! PC = 0x274877984504 *)
sbcs carry x21 x13 x7 carry;
(* sbcs	x22, x14, x8                               #! PC = 0x274877984508 *)
sbcs carry x22 x14 x8 carry;
(* sbcs	x23, x15, x9                               #! PC = 0x274877984512 *)
sbcs carry x23 x15 x9 carry;
(* sbcs	x24, x16, x10                              #! PC = 0x274877984516 *)
sbcs carry x24 x16 x10 carry;
(* sbcs	xzr, x17, xzr                              #! PC = 0x274877984520 *)
sbcs carry dontcare x17 0@uint64 carry;
(* csel	x11, x11, x19, cc  // cc = lo, ul, last    #! PC = 0x274877984524 *)
cmov x11 carry x19 x11;
(* csel	x12, x12, x20, cc  // cc = lo, ul, last    #! PC = 0x274877984528 *)
cmov x12 carry x20 x12;
(* csel	x13, x13, x21, cc  // cc = lo, ul, last    #! PC = 0x274877984532 *)
cmov x13 carry x21 x13;
(* csel	x14, x14, x22, cc  // cc = lo, ul, last    #! PC = 0x274877984536 *)
cmov x14 carry x22 x14;
(* stp	x11, x12, [x0, #48]                         #! EA = L0x4000829dc8; PC = 0x274877984540 *)
mov L0x4000829dc8 x11;
mov L0x4000829dd0 x12;
(* csel	x15, x15, x23, cc  // cc = lo, ul, last    #! PC = 0x274877984544 *)
cmov x15 carry x23 x15;
(* stp	x13, x14, [x0, #64]                         #! EA = L0x4000829dd8; PC = 0x274877984548 *)
mov L0x4000829dd8 x13;
mov L0x4000829de0 x14;
(* csel	x16, x16, x24, cc  // cc = lo, ul, last    #! PC = 0x274877984552 *)
cmov x16 carry x24 x16;
(* stp	x15, x16, [x0, #80]                         #! EA = L0x4000829de8; PC = 0x274877984556 *)
mov L0x4000829de8 x15;
mov L0x4000829df0 x16;
(* #ret                                            #! PC = 0x274877984560 *)
#ret                                            #! 0x274877984560 = 0x274877984560;
(* ldr	x30, [x29, #8]                              #! EA = L0x4000829958; Value = 0x000600400000aa50; PC = 0x274877984328 *)
mov x30 L0x4000829958;
(* ldp	x19, x20, [x29, #16]                        #! EA = L0x4000829960; Value = 0x0000004000016928; PC = 0x274877984332 *)
mov x19 L0x4000829960;
mov x20 L0x4000829968;
(* ldp	x21, x22, [x29, #32]                        #! EA = L0x4000829970; Value = 0x0000004000829df8; PC = 0x274877984336 *)
mov x21 L0x4000829970;
mov x22 L0x4000829978;
(* ldp	x23, x24, [x29, #48]                        #! EA = L0x4000829980; Value = 0x0000004000829c88; PC = 0x274877984340 *)
mov x23 L0x4000829980;
mov x24 L0x4000829988;
(* ldr	x29, [sp], #64                              #! EA = L0x4000829950; Value = 0x0000004000829990; PC = 0x274877984344 *)
mov x29 L0x4000829950;
(* #autiasp                                         #! PC = 0x274877984348 *)
#autiasp                                         #! 0x274877984348 = 0x274877984348;
(* #ret                                            #! PC = 0x274877984352 *)
#ret                                            #! 0x274877984352 = 0x274877984352;
(* add	x3, x27, #0x60                              #! PC = 0x274877950544 *)
adds dontcare x3 x27 0x60@uint64;
(* mov	x4, x3                                      #! PC = 0x274877950548 *)
mov x4 x3;
(* mov	x3, x19                                     #! PC = 0x274877950552 *)
mov x3 x19;
(* str	x4, [sp, #128]                              #! EA = L0x4000829a10; PC = 0x274877950556 *)
mov L0x4000829a10 x4;
(* mov	x2, x4                                      #! PC = 0x274877950560 *)
mov x2 x4;
(* mov	x1, x26                                     #! PC = 0x274877950564 *)
mov x1 x26;
(* mov	x0, x21                                     #! PC = 0x274877950568 *)
mov x0 x21;
(* #bl	0x4000012e20 <add_mod_384x384>              #! PC = 0x274877950572 *)
#bl	0x4000012e20 <add_mod_384x384>              #! 0x274877950572 = 0x274877950572;
(* #paciasp                                         #! PC = 0x274877984288 *)
#paciasp                                         #! 0x274877984288 = 0x274877984288;
(* stp	x29, x30, [sp, #-64]!                       #! EA = L0x4000829950; PC = 0x274877984292 *)
mov L0x4000829950 x29;
mov L0x4000829958 x30;
(* mov	x29, sp                                     #! PC = 0x274877984296 *)
mov x29 sp;
(* stp	x19, x20, [sp, #16]                         #! EA = L0x4000829960; PC = 0x274877984300 *)
mov L0x4000829960 x19;
mov L0x4000829968 x20;
(* stp	x21, x22, [sp, #32]                         #! EA = L0x4000829970; PC = 0x274877984304 *)
mov L0x4000829970 x21;
mov L0x4000829978 x22;
(* stp	x23, x24, [sp, #48]                         #! EA = L0x4000829980; PC = 0x274877984308 *)
mov L0x4000829980 x23;
mov L0x4000829988 x24;
(* ldp	x5, x6, [x3]                                #! EA = L0x4000016928; Value = 0xb9feffffffffaaab; PC = 0x274877984312 *)
mov x5 L0x4000016928;
mov x6 L0x4000016930;
(* ldp	x7, x8, [x3, #16]                           #! EA = L0x4000016938; Value = 0x6730d2a0f6b0f624; PC = 0x274877984316 *)
mov x7 L0x4000016938;
mov x8 L0x4000016940;
(* ldp	x9, x10, [x3, #32]                          #! EA = L0x4000016948; Value = 0x4b1ba7b6434bacd7; PC = 0x274877984320 *)
mov x9 L0x4000016948;
mov x10 L0x4000016950;
(* #bl	0x4000012e80 <__add_mod_384x384>            #! PC = 0x274877984324 *)
#bl	0x4000012e80 <__add_mod_384x384>            #! 0x274877984324 = 0x274877984324;
(* ldp	x11, x12, [x1]                              #! EA = L0x4000829eb8; Value = 0x9e10f7bf2d910000; PC = 0x274877984384 *)
mov x11 L0x4000829eb8;
mov x12 L0x4000829ec0;
(* ldp	x19, x20, [x2]                              #! EA = L0x4000829b68; Value = 0xe6c8f4bf2a867760; PC = 0x274877984388 *)
mov x19 L0x4000829b68;
mov x20 L0x4000829b70;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829ec8; Value = 0x3b74d636b21ff5ef; PC = 0x274877984392 *)
mov x13 L0x4000829ec8;
mov x14 L0x4000829ed0;
(* adds	x11, x11, x19                              #! PC = 0x274877984396 *)
adds carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x4000829b78; Value = 0x03848c78ce3ec7e6; PC = 0x274877984400 *)
mov x21 L0x4000829b78;
mov x22 L0x4000829b80;
(* adcs	x12, x12, x20                              #! PC = 0x274877984404 *)
adcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829ed8; Value = 0xa7b52f6dc3d4939d; PC = 0x274877984408 *)
mov x15 L0x4000829ed8;
mov x16 L0x4000829ee0;
(* adcs	x13, x13, x21                              #! PC = 0x274877984412 *)
adcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x4000829b88; Value = 0xd082d00b946555bc; PC = 0x274877984416 *)
mov x23 L0x4000829b88;
mov x24 L0x4000829b90;
(* adcs	x14, x14, x22                              #! PC = 0x274877984420 *)
adcs carry x14 x14 x22 carry;
(* stp	x11, x12, [x0]                              #! EA = L0x4000829df8; PC = 0x274877984424 *)
mov L0x4000829df8 x11;
mov L0x4000829e00 x12;
(* adcs	x15, x15, x23                              #! PC = 0x274877984428 *)
adcs carry x15 x15 x23 carry;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0x4000829ee8; Value = 0xa6228ff68c5813d8; PC = 0x274877984432 *)
mov x11 L0x4000829ee8;
mov x12 L0x4000829ef0;
(* adcs	x16, x16, x24                              #! PC = 0x274877984436 *)
adcs carry x16 x16 x24 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x4000829b98; Value = 0xaeda3b4fdaff2cd9; PC = 0x274877984440 *)
mov x19 L0x4000829b98;
mov x20 L0x4000829ba0;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x4000829e08; PC = 0x274877984444 *)
mov L0x4000829e08 x13;
mov L0x4000829e10 x14;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0x4000829ef8; Value = 0x147af1be2a3499f0; PC = 0x274877984448 *)
mov x13 L0x4000829ef8;
mov x14 L0x4000829f00;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x4000829ba8; Value = 0xc330383e3d66d124; PC = 0x274877984452 *)
mov x21 L0x4000829ba8;
mov x22 L0x4000829bb0;
(* adcs	x11, x11, x19                              #! PC = 0x274877984456 *)
adcs carry x11 x11 x19 carry;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x4000829e18; PC = 0x274877984460 *)
mov L0x4000829e18 x15;
mov L0x4000829e20 x16;
(* adcs	x12, x12, x20                              #! PC = 0x274877984464 *)
adcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #80]                         #! EA = L0x4000829f08; Value = 0x4a59f1764348c5fd; PC = 0x274877984468 *)
mov x15 L0x4000829f08;
mov x16 L0x4000829f10;
(* adcs	x13, x13, x21                              #! PC = 0x274877984472 *)
adcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x4000829bb8; Value = 0x0000048689a12172; PC = 0x274877984476 *)
mov x23 L0x4000829bb8;
mov x24 L0x4000829bc0;
(* adcs	x14, x14, x22                              #! PC = 0x274877984480 *)
adcs carry x14 x14 x22 carry;
(* adcs	x15, x15, x23                              #! PC = 0x274877984484 *)
adcs carry x15 x15 x23 carry;
(* adcs	x16, x16, x24                              #! PC = 0x274877984488 *)
adcs carry x16 x16 x24 carry;
(* adc	x17, xzr, xzr                               #! PC = 0x274877984492 *)
adc x17 0@uint64 0@uint64 carry;
(* subs	x19, x11, x5                               #! PC = 0x274877984496 *)
subc carry x19 x11 x5;
(* sbcs	x20, x12, x6                               #! PC = 0x274877984500 *)
sbcs carry x20 x12 x6 carry;
(* sbcs	x21, x13, x7                               #! PC = 0x274877984504 *)
sbcs carry x21 x13 x7 carry;
(* sbcs	x22, x14, x8                               #! PC = 0x274877984508 *)
sbcs carry x22 x14 x8 carry;
(* sbcs	x23, x15, x9                               #! PC = 0x274877984512 *)
sbcs carry x23 x15 x9 carry;
(* sbcs	x24, x16, x10                              #! PC = 0x274877984516 *)
sbcs carry x24 x16 x10 carry;
(* sbcs	xzr, x17, xzr                              #! PC = 0x274877984520 *)
sbcs carry dontcare x17 0@uint64 carry;
(* csel	x11, x11, x19, cc  // cc = lo, ul, last    #! PC = 0x274877984524 *)
cmov x11 carry x19 x11;
(* csel	x12, x12, x20, cc  // cc = lo, ul, last    #! PC = 0x274877984528 *)
cmov x12 carry x20 x12;
(* csel	x13, x13, x21, cc  // cc = lo, ul, last    #! PC = 0x274877984532 *)
cmov x13 carry x21 x13;
(* csel	x14, x14, x22, cc  // cc = lo, ul, last    #! PC = 0x274877984536 *)
cmov x14 carry x22 x14;
(* stp	x11, x12, [x0, #48]                         #! EA = L0x4000829e28; PC = 0x274877984540 *)
mov L0x4000829e28 x11;
mov L0x4000829e30 x12;
(* csel	x15, x15, x23, cc  // cc = lo, ul, last    #! PC = 0x274877984544 *)
cmov x15 carry x23 x15;
(* stp	x13, x14, [x0, #64]                         #! EA = L0x4000829e38; PC = 0x274877984548 *)
mov L0x4000829e38 x13;
mov L0x4000829e40 x14;
(* csel	x16, x16, x24, cc  // cc = lo, ul, last    #! PC = 0x274877984552 *)
cmov x16 carry x24 x16;
(* stp	x15, x16, [x0, #80]                         #! EA = L0x4000829e48; PC = 0x274877984556 *)
mov L0x4000829e48 x15;
mov L0x4000829e50 x16;
(* #ret                                            #! PC = 0x274877984560 *)
#ret                                            #! 0x274877984560 = 0x274877984560;
(* ldr	x30, [x29, #8]                              #! EA = L0x4000829958; Value = 0x001500400000aa70; PC = 0x274877984328 *)
mov x30 L0x4000829958;
(* ldp	x19, x20, [x29, #16]                        #! EA = L0x4000829960; Value = 0x0000004000016928; PC = 0x274877984332 *)
mov x19 L0x4000829960;
mov x20 L0x4000829968;
(* ldp	x21, x22, [x29, #32]                        #! EA = L0x4000829970; Value = 0x0000004000829df8; PC = 0x274877984336 *)
mov x21 L0x4000829970;
mov x22 L0x4000829978;
(* ldp	x23, x24, [x29, #48]                        #! EA = L0x4000829980; Value = 0x0000004000829c88; PC = 0x274877984340 *)
mov x23 L0x4000829980;
mov x24 L0x4000829988;
(* ldr	x29, [sp], #64                              #! EA = L0x4000829950; Value = 0x0000004000829990; PC = 0x274877984344 *)
mov x29 L0x4000829950;
(* #autiasp                                         #! PC = 0x274877984348 *)
#autiasp                                         #! 0x274877984348 = 0x274877984348;
(* #ret                                            #! PC = 0x274877984352 *)
#ret                                            #! 0x274877984352 = 0x274877984352;

assert true
    && and[eqmod (limbs 64 [L0x4000829d98, L0x4000829da0, L0x4000829da8,
                            L0x4000829db0, L0x4000829db8, L0x4000829dc0,
                            L0x4000829dc8, L0x4000829dd0, L0x4000829dd8,
                            L0x4000829de0, L0x4000829de8, L0x4000829df0])
                 ((limbs 64 [L0x4000829e58, L0x4000829e60, L0x4000829e68,
                             L0x4000829e70, L0x4000829e78, L0x4000829e80,
                             L0x4000829e88, L0x4000829e90, L0x4000829e98,
                             L0x4000829ea0, L0x4000829ea8, L0x4000829eb0]) +
                  (limbs 64 [L0x4000829b08, L0x4000829b10, L0x4000829b18,
                             L0x4000829b20, L0x4000829b28, L0x4000829b30,
                             L0x4000829b38, L0x4000829b40, L0x4000829b48,
                             L0x4000829b50, L0x4000829b58, L0x4000829b60]))
                 (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                              m0,   m1,   m2,   m3,   m4,   m5]),
           eqmod (limbs 64 [L0x4000829df8, L0x4000829e00, L0x4000829e08,
                            L0x4000829e10, L0x4000829e18, L0x4000829e20,
                            L0x4000829e28, L0x4000829e30, L0x4000829e38,
                            L0x4000829e40, L0x4000829e48, L0x4000829e50])
                 ((limbs 64 [L0x4000829eb8, L0x4000829ec0, L0x4000829ec8,
                             L0x4000829ed0, L0x4000829ed8, L0x4000829ee0,
                             L0x4000829ee8, L0x4000829ef0, L0x4000829ef8,
                             L0x4000829f00, L0x4000829f08, L0x4000829f10]) +
                  (limbs 64 [L0x4000829b68, L0x4000829b70, L0x4000829b78,
                             L0x4000829b80, L0x4000829b88, L0x4000829b90,
                             L0x4000829b98, L0x4000829ba0, L0x4000829ba8,
                             L0x4000829bb0, L0x4000829bb8, L0x4000829bc0]))
                 (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                              m0,   m1,   m2,   m3,   m4,   m5])
       ];

assume and[eqmod (limbs 64 [L0x4000829d98, L0x4000829da0, L0x4000829da8,
                            L0x4000829db0, L0x4000829db8, L0x4000829dc0,
                            L0x4000829dc8, L0x4000829dd0, L0x4000829dd8,
                            L0x4000829de0, L0x4000829de8, L0x4000829df0])
                 ((limbs 64 [L0x4000829e58, L0x4000829e60, L0x4000829e68,
                             L0x4000829e70, L0x4000829e78, L0x4000829e80,
                             L0x4000829e88, L0x4000829e90, L0x4000829e98,
                             L0x4000829ea0, L0x4000829ea8, L0x4000829eb0]) +
                  (limbs 64 [L0x4000829b08, L0x4000829b10, L0x4000829b18,
                             L0x4000829b20, L0x4000829b28, L0x4000829b30,
                             L0x4000829b38, L0x4000829b40, L0x4000829b48,
                             L0x4000829b50, L0x4000829b58, L0x4000829b60]))
                 (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5]),
           eqmod (limbs 64 [L0x4000829df8, L0x4000829e00, L0x4000829e08,
                            L0x4000829e10, L0x4000829e18, L0x4000829e20,
                            L0x4000829e28, L0x4000829e30, L0x4000829e38,
                            L0x4000829e40, L0x4000829e48, L0x4000829e50])
                 ((limbs 64 [L0x4000829eb8, L0x4000829ec0, L0x4000829ec8,
                             L0x4000829ed0, L0x4000829ed8, L0x4000829ee0,
                             L0x4000829ee8, L0x4000829ef0, L0x4000829ef8,
                             L0x4000829f00, L0x4000829f08, L0x4000829f10]) +
                  (limbs 64 [L0x4000829b68, L0x4000829b70, L0x4000829b78,
                             L0x4000829b80, L0x4000829b88, L0x4000829b90,
                             L0x4000829b98, L0x4000829ba0, L0x4000829ba8,
                             L0x4000829bb0, L0x4000829bb8, L0x4000829bc0]))
                 (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5])
       ]
    && true;

(* ret[0] = ((a1 + a2)*(b1 + b2) - a1*b1 - a2*b2)*(u+1) + a0*b0
          = (a1*b2 + a2*b1)*(u+1) + a0*b0 *)
(*
assert and [eqmod (limbs 64 [L0x4000829a48r0, L0x4000829a50r0, L0x4000829a58r0,
                             L0x4000829a60r0, L0x4000829a68r0, L0x4000829a70r0] +
                   limbs 64 [L0x4000829a78r0, L0x4000829a80r0, L0x4000829a88r0,
                             L0x4000829a90r0, L0x4000829a98r0, L0x4000829aa0r0] * U)
                  ((limbs 64 [a20, a21, a22, a23, a24, a25] +
                    limbs 64 [a30, a31, a32, a33, a34, a35] * U) +
                   (limbs 64 [a40, a41, a42, a43, a44, a45] +
                    limbs 64 [a50, a51, a52, a53, a54, a55] * U))
                  [limbs 64 [m0, m1, m2, m3, m4, m5], U * U + 1],
            eqmod (limbs 64 [L0x4000829aa8r0, L0x4000829ab0r0, L0x4000829ab8r0,
                             L0x4000829ac0r0, L0x4000829ac8r0, L0x4000829ad0r0] +
                   limbs 64 [L0x4000829ad8r0, L0x4000829ae0r0, L0x4000829ae8r0,
                             L0x4000829af0r0, L0x4000829af8r0, L0x4000829b00r0] * U)
                  ((limbs 64 [b20, b21, b22, b23, b24, b25] +
                    limbs 64 [b30, b31, b32, b33, b34, b35] * U) +
                   (limbs 64 [b40, b41, b42, b43, b44, b45] +
                    limbs 64 [b50, b51, b52, b53, b54, b55] * U))
                  [limbs 64 [m0, m1, m2, m3, m4, m5], U * U + 1],
            eqmod (limbs 64 [L0x4000829d98, L0x4000829da0, L0x4000829da8,
                             L0x4000829db0, L0x4000829db8, L0x4000829dc0,
                             L0x4000829dc8, L0x4000829dd0, L0x4000829dd8,
                             L0x4000829de0, L0x4000829de8, L0x4000829df0] +
                   limbs 64 [L0x4000829df8, L0x4000829e00, L0x4000829e08,
                             L0x4000829e10, L0x4000829e18, L0x4000829e20,
                             L0x4000829e28, L0x4000829e30, L0x4000829e38,
                             L0x4000829e40, L0x4000829e48, L0x4000829e50] * U)
                  (((limbs 64 [L0x4000829a48r0, L0x4000829a50r0, L0x4000829a58r0,
                               L0x4000829a60r0, L0x4000829a68r0, L0x4000829a70r0] +
                     limbs 64 [L0x4000829a78r0, L0x4000829a80r0, L0x4000829a88r0,
                               L0x4000829a90r0, L0x4000829a98r0, L0x4000829aa0r0] * U) *
                    (limbs 64 [L0x4000829aa8r0, L0x4000829ab0r0, L0x4000829ab8r0,
                               L0x4000829ac0r0, L0x4000829ac8r0, L0x4000829ad0r0] +
                     limbs 64 [L0x4000829ad8r0, L0x4000829ae0r0, L0x4000829ae8r0,
                               L0x4000829af0r0, L0x4000829af8r0, L0x4000829b00r0] * U) -
                    (limbs 64 [a20, a21, a22, a23, a24, a25] +
                     limbs 64 [a30, a31, a32, a33, a34, a35] * U) *
                    (limbs 64 [b20, b21, b22, b23, b24, b25] +
                     limbs 64 [b30, b31, b32, b33, b34, b35] * U) -
                    (limbs 64 [a40, a41, a42, a43, a44, a45] +
                     limbs 64 [a50, a51, a52, a53, a54, a55] * U) *
                    (limbs 64 [b40, b41, b42, b43, b44, b45] +
                     limbs 64 [b50, b51, b52, b53, b54, b55] * U)) *
                   (U + 1) +
                   (limbs 64 [a00, a01, a02, a03, a04, a05] +
                    limbs 64 [a10, a11, a12, a13, a14, a15] * U) *
                   (limbs 64 [b00, b01, b02, b03, b04, b05] +
                    limbs 64 [b10, b11, b12, b13, b14, b15] * U))
                  [limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5],
                   U * U + 1]]
    && true;
*)
(* mov	x3, x19                                     #! PC = 0x274877950576 *)
mov x3 x19;
(* ldr	x2, [sp, #136]                              #! EA = L0x4000829a18; Value = 0x000000400082a0a8; PC = 0x274877950580 *)
mov x2 L0x4000829a18;
(* ldr	x1, [sp, #104]                              #! EA = L0x40008299f8; Value = 0x000000400082a048; PC = 0x274877950584 *)
mov x1 L0x40008299f8;
(* mov	x0, x24                                     #! PC = 0x274877950588 *)
mov x0 x24;
(* #bl	0x4000011be0 <add_mod_384x>                 #! PC = 0x274877950592 *)
#bl	0x4000011be0 <add_mod_384x>                 #! 0x274877950592 = 0x274877950592;
(* #paciasp                                         #! PC = 0x274877979616 *)
#paciasp                                         #! 0x274877979616 = 0x274877979616;

rcut and [limbs 64 [a00, a01, a02, a03, a04, a05] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [a10, a11, a12, a13, a14, a15] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [a20, a21, a22, a23, a24, a25] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [a30, a31, a32, a33, a34, a35] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [b00, b01, b02, b03, b04, b05] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [b10, b11, b12, b13, b14, b15] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [b20, b21, b22, b23, b24, b25] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [b30, b31, b32, b33, b34, b35] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
          m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
          m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64
     ] prove with precondition;

(* stp	x29, x30, [sp, #-48]!                       #! EA = L0x4000829960; PC = 0x274877979620 *)
mov L0x4000829960 x29;
mov L0x4000829968 x30;
(* mov	x29, sp                                     #! PC = 0x274877979624 *)
mov x29 sp;
(* stp	x19, x20, [sp, #16]                         #! EA = L0x4000829970; PC = 0x274877979628 *)
mov L0x4000829970 x19;
mov L0x4000829978 x20;
(* stp	x21, x22, [sp, #32]                         #! EA = L0x4000829980; PC = 0x274877979632 *)
mov L0x4000829980 x21;
mov L0x4000829988 x22;
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
(* ldp	x10, x11, [x1]                              #! EA = L0x400082a048; Value = 0x0000004000841d60; PC = 0x274877979488 *)
mov x10 L0x400082a048;
mov x11 L0x400082a050;
(* ldp	x16, x17, [x2]                              #! EA = L0x400082a0a8; Value = 0x0000000000000000; PC = 0x274877979492 *)
mov x16 L0x400082a0a8;
mov x17 L0x400082a0b0;
(* ldp	x12, x13, [x1, #16]                         #! EA = L0x400082a058; Value = 0x000000400085d6d8; PC = 0x274877979496 *)
mov x12 L0x400082a058;
mov x13 L0x400082a060;
(* ldp	x19, x20, [x2, #16]                         #! EA = L0x400082a0b8; Value = 0x0000000000000000; PC = 0x274877979500 *)
mov x19 L0x400082a0b8;
mov x20 L0x400082a0c0;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0x400082a068; Value = 0x0000004000000040; PC = 0x274877979504 *)
mov x14 L0x400082a068;
mov x15 L0x400082a070;
(* ldp	x21, x22, [x2, #32]                         #! EA = L0x400082a0c8; Value = 0x0000008001086c68; PC = 0x274877979508 *)
mov x21 L0x400082a0c8;
mov x22 L0x400082a0d0;
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
(* stp	x10, x11, [x0]                              #! EA = L0x4000829a48; PC = 0x274877979652 *)
mov L0x4000829a48 x10;
mov L0x4000829a50 x11;
(* add	x1, x1, #0x30                               #! PC = 0x274877979656 *)
adds dontcare x1 x1 0x30@uint64;
(* stp	x12, x13, [x0, #16]                         #! EA = L0x4000829a58; PC = 0x274877979660 *)
mov L0x4000829a58 x12;
mov L0x4000829a60 x13;
(* add	x2, x2, #0x30                               #! PC = 0x274877979664 *)
adds dontcare x2 x2 0x30@uint64;
(* stp	x14, x15, [x0, #32]                         #! EA = L0x4000829a68; PC = 0x274877979668 *)
mov L0x4000829a68 x14;
mov L0x4000829a70 x15;
(* #bl	0x4000011b60 <__add_mod_384>                #! PC = 0x274877979672 *)
#bl	0x4000011b60 <__add_mod_384>                #! 0x274877979672 = 0x274877979672;
(* ldp	x10, x11, [x1]                              #! EA = L0x400082a078; Value = 0x000000400085de20; PC = 0x274877979488 *)
mov x10 L0x400082a078;
mov x11 L0x400082a080;
(* ldp	x16, x17, [x2]                              #! EA = L0x400082a0d8; Value = 0x000000800085d000; PC = 0x274877979492 *)
mov x16 L0x400082a0d8;
mov x17 L0x400082a0e0;
(* ldp	x12, x13, [x1, #16]                         #! EA = L0x400082a088; Value = 0x0000000000000000; PC = 0x274877979496 *)
mov x12 L0x400082a088;
mov x13 L0x400082a090;
(* ldp	x19, x20, [x2, #16]                         #! EA = L0x400082a0e8; Value = 0x000000800085ead0; PC = 0x274877979500 *)
mov x19 L0x400082a0e8;
mov x20 L0x400082a0f0;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0x400082a098; Value = 0x000000400082c000; PC = 0x274877979504 *)
mov x14 L0x400082a098;
mov x15 L0x400082a0a0;
(* ldp	x21, x22, [x2, #32]                         #! EA = L0x400082a0f8; Value = 0x00000080010bb000; PC = 0x274877979508 *)
mov x21 L0x400082a0f8;
mov x22 L0x400082a100;
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
(* ldr	x30, [sp, #8]                               #! EA = L0x4000829968; Value = 0x005b00400000aa84; PC = 0x274877979676 *)
mov x30 L0x4000829968;
(* stp	x10, x11, [x0, #48]                         #! EA = L0x4000829a78; PC = 0x274877979680 *)
mov L0x4000829a78 x10;
mov L0x4000829a80 x11;
(* stp	x12, x13, [x0, #64]                         #! EA = L0x4000829a88; PC = 0x274877979684 *)
mov L0x4000829a88 x12;
mov L0x4000829a90 x13;
(* stp	x14, x15, [x0, #80]                         #! EA = L0x4000829a98; PC = 0x274877979688 *)
mov L0x4000829a98 x14;
mov L0x4000829aa0 x15;
(* ldp	x19, x20, [x29, #16]                        #! EA = L0x4000829970; Value = 0x0000004000016928; PC = 0x274877979692 *)
mov x19 L0x4000829970;
mov x20 L0x4000829978;
(* ldp	x21, x22, [x29, #32]                        #! EA = L0x4000829980; Value = 0x0000004000829df8; PC = 0x274877979696 *)
mov x21 L0x4000829980;
mov x22 L0x4000829988;
(* ldr	x29, [sp], #48                              #! EA = L0x4000829960; Value = 0x0000004000829990; PC = 0x274877979700 *)
mov x29 L0x4000829960;
(* #autiasp                                         #! PC = 0x274877979704 *)
#autiasp                                         #! 0x274877979704 = 0x274877979704;
(* #ret                                            #! PC = 0x274877979708 *)
#ret                                            #! 0x274877979708 = 0x274877979708;
(* mov	x3, x19                                     #! PC = 0x274877950596 *)
mov x3 x19;
(* ldr	x2, [sp, #144]                              #! EA = L0x4000829a20; Value = 0x000000400082a1c8; PC = 0x274877950600 *)
mov x2 L0x4000829a20;
(* ldr	x1, [sp, #112]                              #! EA = L0x4000829a00; Value = 0x000000400082a168; PC = 0x274877950604 *)
mov x1 L0x4000829a00;
(* mov	x0, x25                                     #! PC = 0x274877950608 *)
mov x0 x25;
(* #bl	0x4000011be0 <add_mod_384x>                 #! PC = 0x274877950612 *)
#bl	0x4000011be0 <add_mod_384x>                 #! 0x274877950612 = 0x274877950612;
(* #paciasp                                         #! PC = 0x274877979616 *)
#paciasp                                         #! 0x274877979616 = 0x274877979616;
(* stp	x29, x30, [sp, #-48]!                       #! EA = L0x4000829960; PC = 0x274877979620 *)
mov L0x4000829960 x29;
mov L0x4000829968 x30;
(* mov	x29, sp                                     #! PC = 0x274877979624 *)
mov x29 sp;
(* stp	x19, x20, [sp, #16]                         #! EA = L0x4000829970; PC = 0x274877979628 *)
mov L0x4000829970 x19;
mov L0x4000829978 x20;
(* stp	x21, x22, [sp, #32]                         #! EA = L0x4000829980; PC = 0x274877979632 *)
mov L0x4000829980 x21;
mov L0x4000829988 x22;
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
(* ldp	x10, x11, [x1]                              #! EA = L0x400082a168; Value = 0xb9ff00400083c80b; PC = 0x274877979488 *)
mov x10 L0x400082a168;
mov x11 L0x400082a170;
(* ldp	x16, x17, [x2]                              #! EA = L0x400082a1c8; Value = 0x0000000000000000; PC = 0x274877979492 *)
mov x16 L0x400082a1c8;
mov x17 L0x400082a1d0;
(* ldp	x12, x13, [x1, #16]                         #! EA = L0x400082a178; Value = 0x6730d2e0f738100c; PC = 0x274877979496 *)
mov x12 L0x400082a178;
mov x13 L0x400082a180;
(* ldp	x19, x20, [x2, #16]                         #! EA = L0x400082a1d8; Value = 0x0000000000000000; PC = 0x274877979500 *)
mov x19 L0x400082a1d8;
mov x20 L0x400082a1e0;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0x400082a188; Value = 0x4b1ba7f6434ecfb7; PC = 0x274877979504 *)
mov x14 L0x400082a188;
mov x15 L0x400082a190;
(* ldp	x21, x22, [x2, #32]                         #! EA = L0x400082a1e8; Value = 0x0000004000845000; PC = 0x274877979508 *)
mov x21 L0x400082a1e8;
mov x22 L0x400082a1f0;
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
(* stp	x10, x11, [x0]                              #! EA = L0x4000829aa8; PC = 0x274877979652 *)
mov L0x4000829aa8 x10;
mov L0x4000829ab0 x11;
(* add	x1, x1, #0x30                               #! PC = 0x274877979656 *)
adds dontcare x1 x1 0x30@uint64;
(* stp	x12, x13, [x0, #16]                         #! EA = L0x4000829ab8; PC = 0x274877979660 *)
mov L0x4000829ab8 x12;
mov L0x4000829ac0 x13;
(* add	x2, x2, #0x30                               #! PC = 0x274877979664 *)
adds dontcare x2 x2 0x30@uint64;
(* stp	x14, x15, [x0, #32]                         #! EA = L0x4000829ac8; PC = 0x274877979668 *)
mov L0x4000829ac8 x14;
mov L0x4000829ad0 x15;
(* #bl	0x4000011b60 <__add_mod_384>                #! PC = 0x274877979672 *)
#bl	0x4000011b60 <__add_mod_384>                #! 0x274877979672 = 0x274877979672;
(* ldp	x10, x11, [x1]                              #! EA = L0x400082a198; Value = 0x000000400085de20; PC = 0x274877979488 *)
mov x10 L0x400082a198;
mov x11 L0x400082a1a0;
(* ldp	x16, x17, [x2]                              #! EA = L0x400082a1f8; Value = 0x0000004000000000; PC = 0x274877979492 *)
mov x16 L0x400082a1f8;
mov x17 L0x400082a200;
(* ldp	x12, x13, [x1, #16]                         #! EA = L0x400082a1a8; Value = 0x000000800106f748; PC = 0x274877979496 *)
mov x12 L0x400082a1a8;
mov x13 L0x400082a1b0;
(* ldp	x19, x20, [x2, #16]                         #! EA = L0x400082a208; Value = 0x000000400085ea90; PC = 0x274877979500 *)
mov x19 L0x400082a208;
mov x20 L0x400082a210;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0x400082a1b8; Value = 0x000000c0018b3d60; PC = 0x274877979504 *)
mov x14 L0x400082a1b8;
mov x15 L0x400082a1c0;
(* ldp	x21, x22, [x2, #32]                         #! EA = L0x400082a218; Value = 0x000000400085e000; PC = 0x274877979508 *)
mov x21 L0x400082a218;
mov x22 L0x400082a220;
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
(* ldr	x30, [sp, #8]                               #! EA = L0x4000829968; Value = 0x005e00400000aa98; PC = 0x274877979676 *)
mov x30 L0x4000829968;
(* stp	x10, x11, [x0, #48]                         #! EA = L0x4000829ad8; PC = 0x274877979680 *)
mov L0x4000829ad8 x10;
mov L0x4000829ae0 x11;
(* stp	x12, x13, [x0, #64]                         #! EA = L0x4000829ae8; PC = 0x274877979684 *)
mov L0x4000829ae8 x12;
mov L0x4000829af0 x13;
(* stp	x14, x15, [x0, #80]                         #! EA = L0x4000829af8; PC = 0x274877979688 *)
mov L0x4000829af8 x14;
mov L0x4000829b00 x15;
(* ldp	x19, x20, [x29, #16]                        #! EA = L0x4000829970; Value = 0x0000004000016928; PC = 0x274877979692 *)
mov x19 L0x4000829970;
mov x20 L0x4000829978;
(* ldp	x21, x22, [x29, #32]                        #! EA = L0x4000829980; Value = 0x0000004000829df8; PC = 0x274877979696 *)
mov x21 L0x4000829980;
mov x22 L0x4000829988;
(* ldr	x29, [sp], #48                              #! EA = L0x4000829960; Value = 0x0000004000829990; PC = 0x274877979700 *)
mov x29 L0x4000829960;
(* #autiasp                                         #! PC = 0x274877979704 *)
#autiasp                                         #! 0x274877979704 = 0x274877979704;
(* #ret                                            #! PC = 0x274877979708 *)
#ret                                            #! 0x274877979708 = 0x274877979708;

(* add_fp2(aa, a[0], a[1]) *)

assert true
    && and [eqmod (limbs 64 [L0x4000829a48, L0x4000829a50, L0x4000829a58,
                             L0x4000829a60, L0x4000829a68, L0x4000829a70])
                  (limbs 64 [a00, a01, a02, a03, a04, a05] +
                   limbs 64 [a20, a21, a22, a23, a24, a25])
                  (limbs 64 [m0, m1, m2, m3, m4, m5]),
            eqmod (limbs 64 [L0x4000829a78, L0x4000829a80, L0x4000829a88,
                             L0x4000829a90, L0x4000829a98, L0x4000829aa0])
                  (limbs 64 [a10, a11, a12, a13, a14, a15] +
                   limbs 64 [a30, a31, a32, a33, a34, a35])
                  (limbs 64 [m0, m1, m2, m3, m4, m5])
       ];

assume and [eqmod (limbs 64 [L0x4000829a48, L0x4000829a50, L0x4000829a58,
                             L0x4000829a60, L0x4000829a68, L0x4000829a70])
                  (limbs 64 [a00, a01, a02, a03, a04, a05] +
                   limbs 64 [a20, a21, a22, a23, a24, a25])
                  (limbs 64 [m0, m1, m2, m3, m4, m5]),
            eqmod (limbs 64 [L0x4000829a78, L0x4000829a80, L0x4000829a88,
                             L0x4000829a90, L0x4000829a98, L0x4000829aa0])
                  (limbs 64 [a10, a11, a12, a13, a14, a15] +
                   limbs 64 [a30, a31, a32, a33, a34, a35])
                  (limbs 64 [m0, m1, m2, m3, m4, m5])
       ]
    && true;

(*
assert eqmod (limbs 64 [L0x4000829a48, L0x4000829a50, L0x4000829a58,
                        L0x4000829a60, L0x4000829a68, L0x4000829a70] +
              limbs 64 [L0x4000829a78, L0x4000829a80, L0x4000829a88,
                        L0x4000829a90, L0x4000829a98, L0x4000829aa0] * U)
             (limbs 64 [a00, a01, a02, a03, a04, a05] +
              limbs 64 [a10, a11, a12, a13, a14, a15] * U +
              limbs 64 [a20, a21, a22, a23, a24, a25] +
              limbs 64 [a30, a31, a32, a33, a34, a35] * U)
             [limbs 64 [m0, m1, m2, m3, m4, m5], U * U + 1]
    && true;
*)

(* add_fp2(bb, b[0], b[1]) *)

assert true
    && and [eqmod (limbs 64 [L0x4000829aa8, L0x4000829ab0, L0x4000829ab8,
                             L0x4000829ac0, L0x4000829ac8, L0x4000829ad0])
                  (limbs 64 [b00, b01, b02, b03, b04, b05] +
                   limbs 64 [b20, b21, b22, b23, b24, b25])
                  (limbs 64 [m0, m1, m2, m3, m4, m5]),
            eqmod (limbs 64 [L0x4000829ad8, L0x4000829ae0, L0x4000829ae8,
                             L0x4000829af0, L0x4000829af8, L0x4000829b00])
                  (limbs 64 [b10, b11, b12, b13, b14, b15] +
                   limbs 64 [b30, b31, b32, b33, b34, b35])
                  (limbs 64 [m0, m1, m2, m3, m4, m5])
       ];

assume and [eqmod (limbs 64 [L0x4000829aa8, L0x4000829ab0, L0x4000829ab8,
                             L0x4000829ac0, L0x4000829ac8, L0x4000829ad0])
                  (limbs 64 [b00, b01, b02, b03, b04, b05] +
                   limbs 64 [b20, b21, b22, b23, b24, b25])
                  (limbs 64 [m0, m1, m2, m3, m4, m5]),
            eqmod (limbs 64 [L0x4000829ad8, L0x4000829ae0, L0x4000829ae8,
                             L0x4000829af0, L0x4000829af8, L0x4000829b00])
                  (limbs 64 [b10, b11, b12, b13, b14, b15] +
                   limbs 64 [b30, b31, b32, b33, b34, b35])
                  (limbs 64 [m0, m1, m2, m3, m4, m5])
       ]
    && true;
(*
assert eqmod (limbs 64 [L0x4000829aa8, L0x4000829ab0, L0x4000829ab8,
                        L0x4000829ac0, L0x4000829ac8, L0x4000829ad0] +
              limbs 64 [L0x4000829ad8, L0x4000829ae0, L0x4000829ae8,
                        L0x4000829af0, L0x4000829af8, L0x4000829b00] * U)
             (limbs 64 [b00, b01, b02, b03, b04, b05] +
              limbs 64 [b10, b11, b12, b13, b14, b15] * U +
              limbs 64 [b20, b21, b22, b23, b24, b25] +
              limbs 64 [b30, b31, b32, b33, b34, b35] * U)
             [limbs 64 [m0, m1, m2, m3, m4, m5], U * U + 1]
    && true;
*)

ghost L0x4000829a48r1@uint64, L0x4000829a50r1@uint64, L0x4000829a58r1@uint64,
      L0x4000829a60r1@uint64, L0x4000829a68r1@uint64, L0x4000829a70r1@uint64,
      L0x4000829a78r1@uint64, L0x4000829a80r1@uint64, L0x4000829a88r1@uint64,
      L0x4000829a90r1@uint64, L0x4000829a98r1@uint64, L0x4000829aa0r1@uint64,
      L0x4000829aa8r1@uint64, L0x4000829ab0r1@uint64, L0x4000829ab8r1@uint64,
      L0x4000829ac0r1@uint64, L0x4000829ac8r1@uint64, L0x4000829ad0r1@uint64,
      L0x4000829ad8r1@uint64, L0x4000829ae0r1@uint64, L0x4000829ae8r1@uint64,
      L0x4000829af0r1@uint64, L0x4000829af8r1@uint64, L0x4000829b00r1@uint64 :
      and [L0x4000829a48r1=L0x4000829a48, L0x4000829a50r1=L0x4000829a50,
           L0x4000829a58r1=L0x4000829a58, L0x4000829a60r1=L0x4000829a60,
           L0x4000829a68r1=L0x4000829a68, L0x4000829a70r1=L0x4000829a70,
           L0x4000829a78r1=L0x4000829a78, L0x4000829a80r1=L0x4000829a80,
           L0x4000829a88r1=L0x4000829a88, L0x4000829a90r1=L0x4000829a90,
           L0x4000829a98r1=L0x4000829a98, L0x4000829aa0r1=L0x4000829aa0,
           L0x4000829aa8r1=L0x4000829aa8, L0x4000829ab0r1=L0x4000829ab0,
           L0x4000829ab8r1=L0x4000829ab8, L0x4000829ac0r1=L0x4000829ac0,
           L0x4000829ac8r1=L0x4000829ac8, L0x4000829ad0r1=L0x4000829ad0,
           L0x4000829ad8r1=L0x4000829ad8, L0x4000829ae0r1=L0x4000829ae0,
           L0x4000829ae8r1=L0x4000829ae8, L0x4000829af0r1=L0x4000829af0,
           L0x4000829af8r1=L0x4000829af8, L0x4000829b00r1=L0x4000829b00]
   && true;

(* mov	x2, x25                                     #! PC = 0x274877950616 *)
mov x2 x25;
(* mov	x1, x24                                     #! PC = 0x274877950620 *)
mov x1 x24;
(* mov	x0, x22                                     #! PC = 0x274877950624 *)
mov x0 x22;
(* #bl	0x4000008b3c <mul_fp2x2>                    #! PC = 0x274877950628 *)
#bl	0x4000008b3c <mul_fp2x2>                    #! 0x274877950628 = 0x274877950628;
(* stp	x29, x30, [sp, #-16]!                       #! EA = L0x4000829980; PC = 0x274877942588 *)
mov L0x4000829980 x29;
mov L0x4000829988 x30;
(* mov	x29, sp                                     #! PC = 0x274877942592 *)
mov x29 sp;
(* #adrp	x3, 0x4000029000                           #! PC = 0x274877942596 *)
#adrp	%%x3, 0x4000029000                           #! 0x274877942596 = 0x274877942596;
(* ldr	x3, [x3, #4056]                             #! EA = L0x4000029fd8; Value = 0x0000004000016928; PC = 0x274877942600 *)
mov x3 L0x4000029fd8;
(* #bl	0x40000143c0 <mul_382x>                     #! PC = 0x274877942604 *)
#bl	0x40000143c0 <mul_382x>                     #! 0x274877942604 = 0x274877942604;
(* #paciasp                                         #! PC = 0x274877989824 *)
#paciasp                                         #! 0x274877989824 = 0x274877989824;
(* stp	x29, x30, [sp, #-128]!                      #! EA = L0x4000829900; PC = 0x274877989828 *)
mov L0x4000829900 x29;
mov L0x4000829908 x30;
(* mov	x29, sp                                     #! PC = 0x274877989832 *)
mov x29 sp;
(* stp	x19, x20, [sp, #16]                         #! EA = L0x4000829910; PC = 0x274877989836 *)
mov L0x4000829910 x19;
mov L0x4000829918 x20;
(* stp	x21, x22, [sp, #32]                         #! EA = L0x4000829920; PC = 0x274877989840 *)
mov L0x4000829920 x21;
mov L0x4000829928 x22;
(* stp	x23, x24, [sp, #48]                         #! EA = L0x4000829930; PC = 0x274877989844 *)
mov L0x4000829930 x23;
mov L0x4000829938 x24;
(* stp	x25, x26, [sp, #64]                         #! EA = L0x4000829940; PC = 0x274877989848 *)
mov L0x4000829940 x25;
mov L0x4000829948 x26;
(* stp	x27, x28, [sp, #80]                         #! EA = L0x4000829950; PC = 0x274877989852 *)
mov L0x4000829950 x27;
mov L0x4000829958 x28;
(* sub	sp, sp, #0x60                               #! PC = 0x274877989856 *)
subc dontcare sp sp 0x60@uint64;
(* ldp	x11, x12, [x1]                              #! EA = L0x4000829a48; Value = 0x0000004000841d60; PC = 0x274877989860 *)
mov x11 L0x4000829a48;
mov x12 L0x4000829a50;
(* mov	x26, x0                                     #! PC = 0x274877989864 *)
mov x26 x0;
(* ldp	x19, x20, [x1, #48]                         #! EA = L0x4000829a78; Value = 0x000000c0010bae20; PC = 0x274877989868 *)
mov x19 L0x4000829a78;
mov x20 L0x4000829a80;
(* mov	x27, x1                                     #! PC = 0x274877989872 *)
mov x27 x1;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829a58; Value = 0x000000400085d6d8; PC = 0x274877989876 *)
mov x13 L0x4000829a58;
mov x14 L0x4000829a60;
(* mov	x28, x2                                     #! PC = 0x274877989880 *)
mov x28 x2;
(* ldp	x21, x22, [x1, #64]                         #! EA = L0x4000829a88; Value = 0x000000800085ead0; PC = 0x274877989884 *)
mov x21 L0x4000829a88;
mov x22 L0x4000829a90;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829a68; Value = 0x000000c001086ca8; PC = 0x274877989888 *)
mov x15 L0x4000829a68;
mov x16 L0x4000829a70;
(* adds	x5, x11, x19                               #! PC = 0x274877989892 *)
adds carry x5 x11 x19;
(* ldp	x23, x24, [x1, #80]                         #! EA = L0x4000829a98; Value = 0x000000c0018e7000; PC = 0x274877989896 *)
mov x23 L0x4000829a98;
mov x24 L0x4000829aa0;
(* adcs	x6, x12, x20                               #! PC = 0x274877989900 *)
adcs carry x6 x12 x20 carry;
(* ldp	x11, x12, [x2]                              #! EA = L0x4000829aa8; Value = 0xb9ff00400083c80b; PC = 0x274877989904 *)
mov x11 L0x4000829aa8;
mov x12 L0x4000829ab0;
(* adcs	x7, x13, x21                               #! PC = 0x274877989908 *)
adcs carry x7 x13 x21 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x4000829ad8; Value = 0x000000800085de20; PC = 0x274877989912 *)
mov x19 L0x4000829ad8;
mov x20 L0x4000829ae0;
(* adcs	x8, x14, x22                               #! PC = 0x274877989916 *)
adcs carry x8 x14 x22 carry;
(* ldp	x13, x14, [x2, #16]                         #! EA = L0x4000829ab8; Value = 0x6730d2e0f738100c; PC = 0x274877989920 *)
mov x13 L0x4000829ab8;
mov x14 L0x4000829ac0;
(* adcs	x9, x15, x23                               #! PC = 0x274877989924 *)
adcs carry x9 x15 x23 carry;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x4000829ae8; Value = 0x000000c0018ce1d8; PC = 0x274877989928 *)
mov x21 L0x4000829ae8;
mov x22 L0x4000829af0;
(* adc	x10, x16, x24                               #! PC = 0x274877989932 *)
adc x10 x16 x24 carry;
(* ldp	x15, x16, [x2, #32]                         #! EA = L0x4000829ac8; Value = 0x4b1ba83643d31fb7; PC = 0x274877989936 *)
mov x15 L0x4000829ac8;
mov x16 L0x4000829ad0;
(* stp	x5, x6, [sp]                                #! EA = L0x40008298a0; PC = 0x274877989940 *)
mov L0x40008298a0 x5;
mov L0x40008298a8 x6;
(* adds	x5, x11, x19                               #! PC = 0x274877989944 *)
adds carry x5 x11 x19;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x4000829af8; Value = 0x0000010002111d60; PC = 0x274877989948 *)
mov x23 L0x4000829af8;
mov x24 L0x4000829b00;
(* adcs	x6, x12, x20                               #! PC = 0x274877989952 *)
adcs carry x6 x12 x20 carry;
(* stp	x7, x8, [sp, #16]                           #! EA = L0x40008298b0; PC = 0x274877989956 *)
mov L0x40008298b0 x7;
mov L0x40008298b8 x8;
(* adcs	x7, x13, x21                               #! PC = 0x274877989960 *)
adcs carry x7 x13 x21 carry;
(* adcs	x8, x14, x22                               #! PC = 0x274877989964 *)
adcs carry x8 x14 x22 carry;
(* stp	x9, x10, [sp, #32]                          #! EA = L0x40008298c0; PC = 0x274877989968 *)
mov L0x40008298c0 x9;
mov L0x40008298c8 x10;
(* adcs	x9, x15, x23                               #! PC = 0x274877989972 *)
adcs carry x9 x15 x23 carry;
(* stp	x5, x6, [sp, #48]                           #! EA = L0x40008298d0; PC = 0x274877989976 *)
mov L0x40008298d0 x5;
mov L0x40008298d8 x6;
(* adc	x10, x16, x24                               #! PC = 0x274877989980 *)
adc x10 x16 x24 carry;
(* stp	x7, x8, [sp, #64]                           #! EA = L0x40008298e0; PC = 0x274877989984 *)
mov L0x40008298e0 x7;
mov L0x40008298e8 x8;
(* stp	x9, x10, [sp, #80]                          #! EA = L0x40008298f0; PC = 0x274877989988 *)
mov L0x40008298f0 x9;
mov L0x40008298f8 x10;
(* #bl	0x4000014120 <__mul_384>                    #! PC = 0x274877989992 *)
#bl	0x4000014120 <__mul_384>                    #! 0x274877989992 = 0x274877989992;
(* ldp	x11, x12, [x1]                              #! EA = L0x4000829a48; Value = 0x0000004000841d60; PC = 0x274877989152 *)
mov x11 L0x4000829a48;
mov x12 L0x4000829a50;
(* ldr	x17, [x2]                                   #! EA = L0x4000829aa8; Value = 0xb9ff00400083c80b; PC = 0x274877989156 *)
mov x17 L0x4000829aa8;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829a58; Value = 0x000000400085d6d8; PC = 0x274877989160 *)
mov x13 L0x4000829a58;
mov x14 L0x4000829a60;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829a68; Value = 0x000000c001086ca8; PC = 0x274877989164 *)
mov x15 L0x4000829a68;
mov x16 L0x4000829a70;
(* mul	x19, x11, x17                               #! PC = 0x274877989168 *)
mull mulHx11x17 x19 x11 x17;
(* mul	x20, x12, x17                               #! PC = 0x274877989172 *)
mull mulHx12x17 x20 x12 x17;
(* mul	x21, x13, x17                               #! PC = 0x274877989176 *)
mull mulHx13x17 x21 x13 x17;
(* mul	x22, x14, x17                               #! PC = 0x274877989180 *)
mull mulHx14x17 x22 x14 x17;
(* mul	x23, x15, x17                               #! PC = 0x274877989184 *)
mull mulHx15x17 x23 x15 x17;
(* mul	x24, x16, x17                               #! PC = 0x274877989188 *)
mull mulHx16x17 x24 x16 x17;
(* umulh	x5, x11, x17                              #! PC = 0x274877989192 *)
mov x5 mulHx11x17;
(* umulh	x6, x12, x17                              #! PC = 0x274877989196 *)
mov x6 mulHx12x17;
(* umulh	x7, x13, x17                              #! PC = 0x274877989200 *)
mov x7 mulHx13x17;
(* umulh	x8, x14, x17                              #! PC = 0x274877989204 *)
mov x8 mulHx14x17;
(* umulh	x9, x15, x17                              #! PC = 0x274877989208 *)
mov x9 mulHx15x17;
(* umulh	x10, x16, x17                             #! PC = 0x274877989212 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #8]                               #! EA = L0x4000829ab0; Value = 0x1eac003eb1d9d667; PC = 0x274877989216 *)
mov x17 L0x4000829ab0;
(* str	x19, [x0]                                   #! EA = L0x4000829e58; PC = 0x274877989220 *)
mov L0x4000829e58 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989224 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989228 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989232 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989236 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989240 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989244 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989248 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989252 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989256 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989260 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, xzr, x10                               #! PC = 0x274877989264 *)
adc x24 0@uint64 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989268 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989272 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989276 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989280 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989284 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989288 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989292 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989296 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989300 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989304 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989308 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989312 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989316 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #16]                              #! EA = L0x4000829ab8; Value = 0x6730d2e0f738100c; PC = 0x274877989320 *)
mov x17 L0x4000829ab8;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989324 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #8]                               #! EA = L0x4000829e60; PC = 0x274877989328 *)
mov L0x4000829e60 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989332 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989336 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989340 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989344 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989348 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989352 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989356 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989360 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989364 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989368 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989372 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989376 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989380 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989384 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989388 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989392 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989396 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989400 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989404 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989408 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989412 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989416 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989420 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989424 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #24]                              #! EA = L0x4000829ac0; Value = 0x64774bc4f407ecd7; PC = 0x274877989428 *)
mov x17 L0x4000829ac0;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989432 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #16]                              #! EA = L0x4000829e68; PC = 0x274877989436 *)
mov L0x4000829e68 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989440 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989444 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989448 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989452 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989456 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989460 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989464 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989468 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989472 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989476 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989480 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989484 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989488 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989492 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989496 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989500 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989504 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989508 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989512 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989516 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989520 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989524 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989528 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989532 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #32]                              #! EA = L0x4000829ac8; Value = 0x4b1ba83643d31fb7; PC = 0x274877989536 *)
mov x17 L0x4000829ac8;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989540 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #24]                              #! EA = L0x4000829e70; PC = 0x274877989544 *)
mov L0x4000829e70 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989548 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989552 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989556 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989560 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989564 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989568 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989572 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989576 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989580 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989584 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989588 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989592 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989596 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989600 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989604 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989608 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989612 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989616 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989620 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989624 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989628 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989632 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989636 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989640 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #40]                              #! EA = L0x4000829ad0; Value = 0x1a0111ea397cdfcb; PC = 0x274877989644 *)
mov x17 L0x4000829ad0;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989648 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #32]                              #! EA = L0x4000829e78; PC = 0x274877989652 *)
mov L0x4000829e78 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989656 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989660 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989664 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989668 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989672 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989676 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989680 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989684 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989688 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989692 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989696 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989700 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989704 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989708 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989712 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989716 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989720 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989724 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989728 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989732 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989736 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989740 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989744 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989748 *)
mov x10 mulHx16x17;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989752 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #40]                              #! EA = L0x4000829e80; PC = 0x274877989756 *)
mov L0x4000829e80 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989760 *)
adds carry x19 x20 x5;
(* adcs	x20, x21, x6                               #! PC = 0x274877989764 *)
adcs carry x20 x21 x6 carry;
(* adcs	x21, x22, x7                               #! PC = 0x274877989768 *)
adcs carry x21 x22 x7 carry;
(* adcs	x22, x23, x8                               #! PC = 0x274877989772 *)
adcs carry x22 x23 x8 carry;
(* adcs	x23, x24, x9                               #! PC = 0x274877989776 *)
adcs carry x23 x24 x9 carry;
(* adc	x24, x25, x10                               #! PC = 0x274877989780 *)
adc x24 x25 x10 carry;
(* stp	x19, x20, [x0, #48]                         #! EA = L0x4000829e88; PC = 0x274877989784 *)
mov L0x4000829e88 x19;
mov L0x4000829e90 x20;
(* stp	x21, x22, [x0, #64]                         #! EA = L0x4000829e98; PC = 0x274877989788 *)
mov L0x4000829e98 x21;
mov L0x4000829ea0 x22;
(* stp	x23, x24, [x0, #80]                         #! EA = L0x4000829ea8; PC = 0x274877989792 *)
mov L0x4000829ea8 x23;
mov L0x4000829eb0 x24;
(* #ret                                            #! PC = 0x274877989796 *)
#ret                                            #! 0x274877989796 = 0x274877989796;
(* mov	x1, sp                                      #! PC = 0x274877989996 *)
mov x1 sp;
(* add	x2, sp, #0x30                               #! PC = 0x274877990000 *)
adds dontcare x2 sp 0x30@uint64;
(* add	x0, x26, #0x60                              #! PC = 0x274877990004 *)
adds dontcare x0 x26 0x60@uint64;
(* #bl	0x4000014120 <__mul_384>                    #! PC = 0x274877990008 *)
#bl	0x4000014120 <__mul_384>                    #! 0x274877990008 = 0x274877990008;
(* ldp	x11, x12, [x1]                              #! EA = L0x40008298a0; Value = 0x00000100018fcb80; PC = 0x274877989152 *)
mov x11 L0x40008298a0;
mov x12 L0x40008298a8;
(* ldr	x17, [x2]                                   #! EA = L0x40008298d0; Value = 0xb9ff00c00109a62b; PC = 0x274877989156 *)
mov x17 L0x40008298d0;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x40008298b0; Value = 0x000000c0010bc1a8; PC = 0x274877989160 *)
mov x13 L0x40008298b0;
mov x14 L0x40008298b8;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x40008298c0; Value = 0x000001800296dca8; PC = 0x274877989164 *)
mov x15 L0x40008298c0;
mov x16 L0x40008298c8;
(* mul	x19, x11, x17                               #! PC = 0x274877989168 *)
mull mulHx11x17 x19 x11 x17;
(* mul	x20, x12, x17                               #! PC = 0x274877989172 *)
mull mulHx12x17 x20 x12 x17;
(* mul	x21, x13, x17                               #! PC = 0x274877989176 *)
mull mulHx13x17 x21 x13 x17;
(* mul	x22, x14, x17                               #! PC = 0x274877989180 *)
mull mulHx14x17 x22 x14 x17;
(* mul	x23, x15, x17                               #! PC = 0x274877989184 *)
mull mulHx15x17 x23 x15 x17;
(* mul	x24, x16, x17                               #! PC = 0x274877989188 *)
mull mulHx16x17 x24 x16 x17;
(* umulh	x5, x11, x17                              #! PC = 0x274877989192 *)
mov x5 mulHx11x17;
(* umulh	x6, x12, x17                              #! PC = 0x274877989196 *)
mov x6 mulHx12x17;
(* umulh	x7, x13, x17                              #! PC = 0x274877989200 *)
mov x7 mulHx13x17;
(* umulh	x8, x14, x17                              #! PC = 0x274877989204 *)
mov x8 mulHx14x17;
(* umulh	x9, x15, x17                              #! PC = 0x274877989208 *)
mov x9 mulHx15x17;
(* umulh	x10, x16, x17                             #! PC = 0x274877989212 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #8]                               #! EA = L0x40008298d8; Value = 0x1eac00beb2df26f9; PC = 0x274877989216 *)
mov x17 L0x40008298d8;
(* str	x19, [x0]                                   #! EA = L0x4000829eb8; PC = 0x274877989220 *)
mov L0x4000829eb8 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989224 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989228 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989232 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989236 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989240 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989244 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989248 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989252 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989256 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989260 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, xzr, x10                               #! PC = 0x274877989264 *)
adc x24 0@uint64 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989268 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989272 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989276 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989280 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989284 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989288 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989292 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989296 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989300 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989304 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989308 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989312 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989316 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #16]                              #! EA = L0x40008298e0; Value = 0x6730d3a0f8c4f1e4; PC = 0x274877989320 *)
mov x17 L0x40008298e0;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989324 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #8]                               #! EA = L0x4000829ec0; PC = 0x274877989328 *)
mov L0x4000829ec0 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989332 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989336 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989340 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989344 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989348 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989352 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989356 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989360 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989364 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989368 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989372 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989376 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989380 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989384 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989388 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989392 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989396 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989400 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989404 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989408 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989412 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989416 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989420 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989424 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #24]                              #! EA = L0x40008298e8; Value = 0x64774c84f5b1d10f; PC = 0x274877989428 *)
mov x17 L0x40008298e8;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989432 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #16]                              #! EA = L0x4000829ec8; PC = 0x274877989436 *)
mov L0x4000829ec8 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989440 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989444 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989448 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989452 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989456 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989460 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989464 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989468 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989472 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989476 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989480 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989484 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989488 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989492 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989496 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989500 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989504 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989508 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989512 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989516 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989520 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989524 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989528 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989532 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #32]                              #! EA = L0x40008298f0; Value = 0x4b1ba93645e43d17; PC = 0x274877989536 *)
mov x17 L0x40008298f0;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989540 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #24]                              #! EA = L0x4000829ed0; PC = 0x274877989544 *)
mov L0x4000829ed0 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989548 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989552 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989556 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989560 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989564 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989568 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989572 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989576 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989580 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989584 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989588 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989592 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989596 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989600 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989604 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989608 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989612 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989616 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989620 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989624 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989628 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989632 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989636 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989640 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #40]                              #! EA = L0x40008298f8; Value = 0x1a0112aa3a85ade4; PC = 0x274877989644 *)
mov x17 L0x40008298f8;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989648 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #32]                              #! EA = L0x4000829ed8; PC = 0x274877989652 *)
mov L0x4000829ed8 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989656 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989660 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989664 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989668 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989672 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989676 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989680 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989684 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989688 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989692 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989696 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989700 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989704 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989708 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989712 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989716 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989720 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989724 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989728 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989732 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989736 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989740 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989744 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989748 *)
mov x10 mulHx16x17;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989752 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #40]                              #! EA = L0x4000829ee0; PC = 0x274877989756 *)
mov L0x4000829ee0 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989760 *)
adds carry x19 x20 x5;
(* adcs	x20, x21, x6                               #! PC = 0x274877989764 *)
adcs carry x20 x21 x6 carry;
(* adcs	x21, x22, x7                               #! PC = 0x274877989768 *)
adcs carry x21 x22 x7 carry;
(* adcs	x22, x23, x8                               #! PC = 0x274877989772 *)
adcs carry x22 x23 x8 carry;
(* adcs	x23, x24, x9                               #! PC = 0x274877989776 *)
adcs carry x23 x24 x9 carry;
(* adc	x24, x25, x10                               #! PC = 0x274877989780 *)
adc x24 x25 x10 carry;
(* stp	x19, x20, [x0, #48]                         #! EA = L0x4000829ee8; PC = 0x274877989784 *)
mov L0x4000829ee8 x19;
mov L0x4000829ef0 x20;
(* stp	x21, x22, [x0, #64]                         #! EA = L0x4000829ef8; PC = 0x274877989788 *)
mov L0x4000829ef8 x21;
mov L0x4000829f00 x22;
(* stp	x23, x24, [x0, #80]                         #! EA = L0x4000829f08; PC = 0x274877989792 *)
mov L0x4000829f08 x23;
mov L0x4000829f10 x24;
(* #ret                                            #! PC = 0x274877989796 *)
#ret                                            #! 0x274877989796 = 0x274877989796;
(* add	x1, x27, #0x30                              #! PC = 0x274877990012 *)
adds dontcare x1 x27 0x30@uint64;
(* add	x2, x28, #0x30                              #! PC = 0x274877990016 *)
adds dontcare x2 x28 0x30@uint64;
(* mov	x0, sp                                      #! PC = 0x274877990020 *)
mov x0 sp;
(* #bl	0x4000014120 <__mul_384>                    #! PC = 0x274877990024 *)
#bl	0x4000014120 <__mul_384>                    #! 0x274877990024 = 0x274877990024;
(* ldp	x11, x12, [x1]                              #! EA = L0x4000829a78; Value = 0x000000c0010bae20; PC = 0x274877989152 *)
mov x11 L0x4000829a78;
mov x12 L0x4000829a80;
(* ldr	x17, [x2]                                   #! EA = L0x4000829ad8; Value = 0x000000800085de20; PC = 0x274877989156 *)
mov x17 L0x4000829ad8;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829a88; Value = 0x000000800085ead0; PC = 0x274877989160 *)
mov x13 L0x4000829a88;
mov x14 L0x4000829a90;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829a98; Value = 0x000000c0018e7000; PC = 0x274877989164 *)
mov x15 L0x4000829a98;
mov x16 L0x4000829aa0;
(* mul	x19, x11, x17                               #! PC = 0x274877989168 *)
mull mulHx11x17 x19 x11 x17;
(* mul	x20, x12, x17                               #! PC = 0x274877989172 *)
mull mulHx12x17 x20 x12 x17;
(* mul	x21, x13, x17                               #! PC = 0x274877989176 *)
mull mulHx13x17 x21 x13 x17;
(* mul	x22, x14, x17                               #! PC = 0x274877989180 *)
mull mulHx14x17 x22 x14 x17;
(* mul	x23, x15, x17                               #! PC = 0x274877989184 *)
mull mulHx15x17 x23 x15 x17;
(* mul	x24, x16, x17                               #! PC = 0x274877989188 *)
mull mulHx16x17 x24 x16 x17;
(* umulh	x5, x11, x17                              #! PC = 0x274877989192 *)
mov x5 mulHx11x17;
(* umulh	x6, x12, x17                              #! PC = 0x274877989196 *)
mov x6 mulHx12x17;
(* umulh	x7, x13, x17                              #! PC = 0x274877989200 *)
mov x7 mulHx13x17;
(* umulh	x8, x14, x17                              #! PC = 0x274877989204 *)
mov x8 mulHx14x17;
(* umulh	x9, x15, x17                              #! PC = 0x274877989208 *)
mov x9 mulHx15x17;
(* umulh	x10, x16, x17                             #! PC = 0x274877989212 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #8]                               #! EA = L0x4000829ae0; Value = 0x0000008001055092; PC = 0x274877989216 *)
mov x17 L0x4000829ae0;
(* str	x19, [x0]                                   #! EA = L0x40008298a0; PC = 0x274877989220 *)
mov L0x40008298a0 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989224 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989228 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989232 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989236 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989240 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989244 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989248 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989252 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989256 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989260 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, xzr, x10                               #! PC = 0x274877989264 *)
adc x24 0@uint64 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989268 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989272 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989276 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989280 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989284 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989288 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989292 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989296 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989300 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989304 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989308 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989312 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989316 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #16]                              #! EA = L0x4000829ae8; Value = 0x000000c0018ce1d8; PC = 0x274877989320 *)
mov x17 L0x4000829ae8;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989324 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #8]                               #! EA = L0x40008298a8; PC = 0x274877989328 *)
mov L0x40008298a8 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989332 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989336 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989340 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989344 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989348 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989352 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989356 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989360 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989364 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989368 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989372 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989376 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989380 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989384 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989388 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989392 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989396 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989400 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989404 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989408 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989412 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989416 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989420 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989424 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #24]                              #! EA = L0x4000829af0; Value = 0x000000c001a9e438; PC = 0x274877989428 *)
mov x17 L0x4000829af0;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989432 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #16]                              #! EA = L0x40008298b0; PC = 0x274877989436 *)
mov L0x40008298b0 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989440 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989444 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989448 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989452 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989456 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989460 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989464 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989468 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989472 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989476 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989480 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989484 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989488 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989492 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989496 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989500 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989504 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989508 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989512 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989516 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989520 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989524 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989528 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989532 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #32]                              #! EA = L0x4000829af8; Value = 0x0000010002111d60; PC = 0x274877989536 *)
mov x17 L0x4000829af8;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989540 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #24]                              #! EA = L0x40008298b8; PC = 0x274877989544 *)
mov L0x40008298b8 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989548 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989552 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989556 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989560 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989564 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989568 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989572 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989576 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989580 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989584 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989588 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989592 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989596 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989600 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989604 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989608 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989612 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989616 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989620 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989624 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989628 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989632 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989636 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989640 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #40]                              #! EA = L0x4000829b00; Value = 0x000000c00108ce19; PC = 0x274877989644 *)
mov x17 L0x4000829b00;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989648 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #32]                              #! EA = L0x40008298c0; PC = 0x274877989652 *)
mov L0x40008298c0 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989656 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989660 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989664 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989668 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989672 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989676 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989680 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989684 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989688 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989692 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989696 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989700 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989704 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989708 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989712 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989716 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989720 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989724 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989728 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989732 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989736 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989740 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989744 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989748 *)
mov x10 mulHx16x17;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989752 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #40]                              #! EA = L0x40008298c8; PC = 0x274877989756 *)
mov L0x40008298c8 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989760 *)
adds carry x19 x20 x5;
(* adcs	x20, x21, x6                               #! PC = 0x274877989764 *)
adcs carry x20 x21 x6 carry;
(* adcs	x21, x22, x7                               #! PC = 0x274877989768 *)
adcs carry x21 x22 x7 carry;
(* adcs	x22, x23, x8                               #! PC = 0x274877989772 *)
adcs carry x22 x23 x8 carry;
(* adcs	x23, x24, x9                               #! PC = 0x274877989776 *)
adcs carry x23 x24 x9 carry;
(* adc	x24, x25, x10                               #! PC = 0x274877989780 *)
adc x24 x25 x10 carry;
(* stp	x19, x20, [x0, #48]                         #! EA = L0x40008298d0; PC = 0x274877989784 *)
mov L0x40008298d0 x19;
mov L0x40008298d8 x20;
(* stp	x21, x22, [x0, #64]                         #! EA = L0x40008298e0; PC = 0x274877989788 *)
mov L0x40008298e0 x21;
mov L0x40008298e8 x22;
(* stp	x23, x24, [x0, #80]                         #! EA = L0x40008298f0; PC = 0x274877989792 *)
mov L0x40008298f0 x23;
mov L0x40008298f8 x24;
(* #ret                                            #! PC = 0x274877989796 *)
#ret                                            #! 0x274877989796 = 0x274877989796;
(* ldp	x5, x6, [x3]                                #! EA = L0x4000016928; Value = 0xb9feffffffffaaab; PC = 0x274877990028 *)
mov x5 L0x4000016928;
mov x6 L0x4000016930;
(* ldp	x7, x8, [x3, #16]                           #! EA = L0x4000016938; Value = 0x6730d2a0f6b0f624; PC = 0x274877990032 *)
mov x7 L0x4000016938;
mov x8 L0x4000016940;
(* ldp	x9, x10, [x3, #32]                          #! EA = L0x4000016948; Value = 0x4b1ba7b6434bacd7; PC = 0x274877990036 *)
mov x9 L0x4000016948;
mov x10 L0x4000016950;
(* add	x1, x26, #0x60                              #! PC = 0x274877990040 *)
adds dontcare x1 x26 0x60@uint64;
(* mov	x2, sp                                      #! PC = 0x274877990044 *)
mov x2 sp;
(* add	x0, x26, #0x60                              #! PC = 0x274877990048 *)
adds dontcare x0 x26 0x60@uint64;
(* #bl	0x4000012fa0 <__sub_mod_384x384>            #! PC = 0x274877990052 *)
#bl	0x4000012fa0 <__sub_mod_384x384>            #! 0x274877990052 = 0x274877990052;

rcut and [limbs 64 [L0x40008298d0, L0x40008298d8, L0x40008298e0,
                    L0x40008298e8, L0x40008298f0, L0x40008298f8] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829e88, L0x4000829e90, L0x4000829e98,
                    L0x4000829ea0, L0x4000829ea8, L0x4000829eb0] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829ee8, L0x4000829ef0, L0x4000829ef8,
                    L0x4000829f00, L0x4000829f08, L0x4000829f10] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
          m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
          m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64
     ] prove with precondition;

ghost L0x4000829eb8o@uint64, L0x4000829ec0o@uint64, L0x4000829ec8o@uint64,
      L0x4000829ed0o@uint64, L0x4000829ed8o@uint64, L0x4000829ee0o@uint64,
      L0x4000829ee8o@uint64, L0x4000829ef0o@uint64, L0x4000829ef8o@uint64,
      L0x4000829f00o@uint64, L0x4000829f08o@uint64, L0x4000829f10o@uint64 :
      and [L0x4000829eb8o=L0x4000829eb8, L0x4000829ec0o=L0x4000829ec0,
           L0x4000829ec8o=L0x4000829ec8, L0x4000829ed0o=L0x4000829ed0,
           L0x4000829ed8o=L0x4000829ed8, L0x4000829ee0o=L0x4000829ee0,
           L0x4000829ee8o=L0x4000829ee8, L0x4000829ef0o=L0x4000829ef0,
           L0x4000829ef8o=L0x4000829ef8, L0x4000829f00o=L0x4000829f00,
           L0x4000829f08o=L0x4000829f08, L0x4000829f10o=L0x4000829f10]
   && and [L0x4000829eb8o=L0x4000829eb8, L0x4000829ec0o=L0x4000829ec0,
           L0x4000829ec8o=L0x4000829ec8, L0x4000829ed0o=L0x4000829ed0,
           L0x4000829ed8o=L0x4000829ed8, L0x4000829ee0o=L0x4000829ee0,
           L0x4000829ee8o=L0x4000829ee8, L0x4000829ef0o=L0x4000829ef0,
           L0x4000829ef8o=L0x4000829ef8, L0x4000829f00o=L0x4000829f00,
           L0x4000829f08o=L0x4000829f08, L0x4000829f10o=L0x4000829f10];

(* ldp	x11, x12, [x1]                              #! EA = L0x4000829eb8; Value = 0x6a0069dd289c2e80; PC = 0x274877984672 *)
mov x11 L0x4000829eb8;
mov x12 L0x4000829ec0;
(* ldp	x19, x20, [x2]                              #! EA = L0x40008298a0; Value = 0xea3e33f9b9158400; PC = 0x274877984676 *)
mov x19 L0x40008298a0;
mov x20 L0x40008298a8;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829ec8; Value = 0x9635e4c211fc0d80; PC = 0x274877984680 *)
mov x13 L0x4000829ec8;
mov x14 L0x4000829ed0;
(* subs	x11, x11, x19                              #! PC = 0x274877984684 *)
subc carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x40008298b0; Value = 0xfb18d21ff5c5b765; PC = 0x274877984688 *)
mov x21 L0x40008298b0;
mov x22 L0x40008298b8;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984692 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829ed8; Value = 0x1ecac891b9602a66; PC = 0x274877984696 *)
mov x15 L0x4000829ed8;
mov x16 L0x4000829ee0;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984700 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x40008298c0; Value = 0x4c177cef160e8e16; PC = 0x274877984704 *)
mov x23 L0x40008298c0;
mov x24 L0x40008298c8;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984708 *)
sbcs carry x14 x14 x22 carry;
(* stp	x11, x12, [x0]                              #! EA = L0x4000829eb8; PC = 0x274877984712 *)
mov L0x4000829eb8 x11;
mov L0x4000829ec0 x12;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984716 *)
sbcs carry x15 x15 x23 carry;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0x4000829ee8; Value = 0xb6ed786e0a35d169; PC = 0x274877984720 *)
mov x11 L0x4000829ee8;
mov x12 L0x4000829ef0;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984724 *)
sbcs carry x16 x16 x24 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x40008298d0; Value = 0xa9c929083df813f4; PC = 0x274877984728 *)
mov x19 L0x40008298d0;
mov x20 L0x40008298d8;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x4000829ec8; PC = 0x274877984732 *)
mov L0x4000829ec8 x13;
mov L0x4000829ed0 x14;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0x4000829ef8; Value = 0x36eba7b6dc7772ef; PC = 0x274877984736 *)
mov x13 L0x4000829ef8;
mov x14 L0x4000829f00;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x40008298e0; Value = 0x3e983fa0f466cc55; PC = 0x274877984740 *)
mov x21 L0x40008298e0;
mov x22 L0x40008298e8;
(* sbcs	x11, x11, x19                              #! PC = 0x274877984744 *)
sbcs carry x11 x11 x19 carry;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x4000829ed8; PC = 0x274877984748 *)
mov L0x4000829ed8 x15;
mov L0x4000829ee0 x16;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984752 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #80]                         #! EA = L0x4000829f08; Value = 0xbf77468a4c881ae8; PC = 0x274877984756 *)
mov x15 L0x4000829f08;
mov x16 L0x4000829f10;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984760 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x40008298f0; Value = 0x423387c002126c34; PC = 0x274877984764 *)
mov x23 L0x40008298f0;
mov x24 L0x40008298f8;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984768 *)
sbcs carry x14 x14 x22 carry;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984772 *)
sbcs carry x15 x15 x23 carry;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984776 *)
sbcs carry x16 x16 x24 carry;
(* ngc	x17, xzr                                    #! PC = 0x274877984780 *)
cmov x17 carry 0@uint64 0xffffffffffffffff@uint64;
(* and	x19, x5, x17                                #! PC = 0x274877984784 *)
and x19@uint64 x5 x17;
(* and	x20, x6, x17                                #! PC = 0x274877984788 *)
and x20@uint64 x6 x17;
(* adds	x11, x11, x19                              #! PC = 0x274877984792 *)
adds carry x11 x11 x19;
(* and	x21, x7, x17                                #! PC = 0x274877984796 *)
and x21@uint64 x7 x17;
(* adcs	x12, x12, x20                              #! PC = 0x274877984800 *)
adcs carry x12 x12 x20 carry;
(* and	x22, x8, x17                                #! PC = 0x274877984804 *)
and x22@uint64 x8 x17;
(* adcs	x13, x13, x21                              #! PC = 0x274877984808 *)
adcs carry x13 x13 x21 carry;
(* and	x23, x9, x17                                #! PC = 0x274877984812 *)
and x23@uint64 x9 x17;
(* adcs	x14, x14, x22                              #! PC = 0x274877984816 *)
adcs carry x14 x14 x22 carry;
(* and	x24, x10, x17                               #! PC = 0x274877984820 *)
and x24@uint64 x10 x17;
(* adcs	x15, x15, x23                              #! PC = 0x274877984824 *)
adcs carry x15 x15 x23 carry;
(* stp	x11, x12, [x0, #48]                         #! EA = L0x4000829ee8; PC = 0x274877984828 *)
mov L0x4000829ee8 x11;
mov L0x4000829ef0 x12;
(* adc	x16, x16, x24                               #! PC = 0x274877984832 *)
adcs dontcare x16 x16 x24 carry;
(* stp	x13, x14, [x0, #64]                         #! EA = L0x4000829ef8; PC = 0x274877984836 *)
mov L0x4000829ef8 x13;
mov L0x4000829f00 x14;
(* stp	x15, x16, [x0, #80]                         #! EA = L0x4000829f08; PC = 0x274877984840 *)
mov L0x4000829f08 x15;
mov L0x4000829f10 x16;
(* #ret                                            #! PC = 0x274877984844 *)
#ret                                            #! 0x274877984844 = 0x274877984844;

assert true
    && eqmod (limbs 64 [L0x4000829eb8, L0x4000829ec0, L0x4000829ec8,
                        L0x4000829ed0, L0x4000829ed8, L0x4000829ee0,
                        L0x4000829ee8, L0x4000829ef0, L0x4000829ef8,
                        L0x4000829f00, L0x4000829f08, L0x4000829f10] +
              limbs 64 [L0x40008298a0, L0x40008298a8, L0x40008298b0,
                        L0x40008298b8, L0x40008298c0, L0x40008298c8,
                        L0x40008298d0, L0x40008298d8, L0x40008298e0,
                        L0x40008298e8, L0x40008298f0, L0x40008298f8])
             (limbs 64 [L0x4000829eb8o, L0x4000829ec0o, L0x4000829ec8o,
                        L0x4000829ed0o, L0x4000829ed8o, L0x4000829ee0o,
                        L0x4000829ee8o, L0x4000829ef0o, L0x4000829ef8o,
                        L0x4000829f00o, L0x4000829f08o, L0x4000829f10o])
             (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                          m0,   m1,   m2,   m3,   m4,   m5]);

assume eqmod (limbs 64 [L0x4000829eb8, L0x4000829ec0, L0x4000829ec8,
                        L0x4000829ed0, L0x4000829ed8, L0x4000829ee0,
                        L0x4000829ee8, L0x4000829ef0, L0x4000829ef8,
                        L0x4000829f00, L0x4000829f08, L0x4000829f10] +
              limbs 64 [L0x40008298a0, L0x40008298a8, L0x40008298b0,
                        L0x40008298b8, L0x40008298c0, L0x40008298c8,
                        L0x40008298d0, L0x40008298d8, L0x40008298e0,
                        L0x40008298e8, L0x40008298f0, L0x40008298f8])
             (limbs 64 [L0x4000829eb8o, L0x4000829ec0o, L0x4000829ec8o,
                        L0x4000829ed0o, L0x4000829ed8o, L0x4000829ee0o,
                        L0x4000829ee8o, L0x4000829ef0o, L0x4000829ef8o,
                        L0x4000829f00o, L0x4000829f08o, L0x4000829f10o])
             (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5])
    && true;

(* add	x2, x26, #0x0                               #! PC = 0x274877990056 *)
adds dontcare x2 x26 0@uint64;
(* #bl	0x4000012fa0 <__sub_mod_384x384>            #! PC = 0x274877990060 *)
#bl	0x4000012fa0 <__sub_mod_384x384>            #! 0x274877990060 = 0x274877990060;

rcut and [limbs 64 [L0x4000829ee8, L0x4000829ef0, L0x4000829ef8,
                    L0x4000829f00, L0x4000829f08, L0x4000829f10] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
          m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
          m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64
     ];

ghost L0x4000829eb8p@uint64, L0x4000829ec0p@uint64, L0x4000829ec8p@uint64,
      L0x4000829ed0p@uint64, L0x4000829ed8p@uint64, L0x4000829ee0p@uint64,
      L0x4000829ee8p@uint64, L0x4000829ef0p@uint64, L0x4000829ef8p@uint64,
      L0x4000829f00p@uint64, L0x4000829f08p@uint64, L0x4000829f10p@uint64 :
      and [L0x4000829eb8p=L0x4000829eb8, L0x4000829ec0p=L0x4000829ec0,
           L0x4000829ec8p=L0x4000829ec8, L0x4000829ed0p=L0x4000829ed0,
           L0x4000829ed8p=L0x4000829ed8, L0x4000829ee0p=L0x4000829ee0,
           L0x4000829ee8p=L0x4000829ee8, L0x4000829ef0p=L0x4000829ef0,
           L0x4000829ef8p=L0x4000829ef8, L0x4000829f00p=L0x4000829f00,
           L0x4000829f08p=L0x4000829f08, L0x4000829f10p=L0x4000829f10]
   && and [L0x4000829eb8p=L0x4000829eb8, L0x4000829ec0p=L0x4000829ec0,
           L0x4000829ec8p=L0x4000829ec8, L0x4000829ed0p=L0x4000829ed0,
           L0x4000829ed8p=L0x4000829ed8, L0x4000829ee0p=L0x4000829ee0,
           L0x4000829ee8p=L0x4000829ee8, L0x4000829ef0p=L0x4000829ef0,
           L0x4000829ef8p=L0x4000829ef8, L0x4000829f00p=L0x4000829f00,
           L0x4000829f08p=L0x4000829f08, L0x4000829f10p=L0x4000829f10];

(* ldp	x11, x12, [x1]                              #! EA = L0x4000829eb8; Value = 0x7fc235e36f86aa80; PC = 0x274877984672 *)
mov x11 L0x4000829eb8;
mov x12 L0x4000829ec0;
(* ldp	x19, x20, [x2]                              #! EA = L0x4000829e58; Value = 0xe4999ec244c04320; PC = 0x274877984676 *)
mov x19 L0x4000829e58;
mov x20 L0x4000829e60;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829ec8; Value = 0x9b1d12a21c36561b; PC = 0x274877984680 *)
mov x13 L0x4000829ec8;
mov x14 L0x4000829ed0;
(* subs	x11, x11, x19                              #! PC = 0x274877984684 *)
subc carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x4000829e68; Value = 0x6022a7a092e38e24; PC = 0x274877984688 *)
mov x21 L0x4000829e68;
mov x22 L0x4000829e70;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984692 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829ed8; Value = 0xd2b34ba2a3519c50; PC = 0x274877984696 *)
mov x15 L0x4000829ed8;
mov x16 L0x4000829ee0;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984700 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x4000829e78; Value = 0x085d97820599b4eb; PC = 0x274877984704 *)
mov x23 L0x4000829e78;
mov x24 L0x4000829e80;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984708 *)
sbcs carry x14 x14 x22 carry;
(* stp	x11, x12, [x0]                              #! EA = L0x4000829eb8; PC = 0x274877984712 *)
mov L0x4000829eb8 x11;
mov L0x4000829ec0 x12;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984716 *)
sbcs carry x15 x15 x23 carry;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0x4000829ee8; Value = 0x0d244f65cc3dbd75; PC = 0x274877984720 *)
mov x11 L0x4000829ee8;
mov x12 L0x4000829ef0;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984724 *)
sbcs carry x16 x16 x24 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x4000829e88; Value = 0xbdb8b82693d45e98; PC = 0x274877984728 *)
mov x19 L0x4000829e88;
mov x20 L0x4000829e90;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x4000829ec8; PC = 0x274877984732 *)
mov L0x4000829ec8 x13;
mov L0x4000829ed0 x14;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0x4000829ef8; Value = 0xf8536815e810a699; PC = 0x274877984736 *)
mov x13 L0x4000829ef8;
mov x14 L0x4000829f00;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x4000829e98; Value = 0x4b4fada4c294efdb; PC = 0x274877984740 *)
mov x21 L0x4000829e98;
mov x22 L0x4000829ea0;
(* sbcs	x11, x11, x19                              #! PC = 0x274877984744 *)
sbcs carry x11 x11 x19 carry;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x4000829ed8; PC = 0x274877984748 *)
mov L0x4000829ed8 x15;
mov L0x4000829ee0 x16;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984752 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #80]                         #! EA = L0x4000829f08; Value = 0x7d43beca4a75aeb4; PC = 0x274877984756 *)
mov x15 L0x4000829f08;
mov x16 L0x4000829f10;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984760 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x4000829ea8; Value = 0xea09a14f864c29f4; PC = 0x274877984764 *)
mov x23 L0x4000829ea8;
mov x24 L0x4000829eb0;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984768 *)
sbcs carry x14 x14 x22 carry;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984772 *)
sbcs carry x15 x15 x23 carry;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984776 *)
sbcs carry x16 x16 x24 carry;
(* ngc	x17, xzr                                    #! PC = 0x274877984780 *)
cmov x17 carry 0@uint64 0xffffffffffffffff@uint64;
(* and	x19, x5, x17                                #! PC = 0x274877984784 *)
and x19@uint64 x5 x17;
(* and	x20, x6, x17                                #! PC = 0x274877984788 *)
and x20@uint64 x6 x17;
(* adds	x11, x11, x19                              #! PC = 0x274877984792 *)
adds carry x11 x11 x19;
(* and	x21, x7, x17                                #! PC = 0x274877984796 *)
and x21@uint64 x7 x17;
(* adcs	x12, x12, x20                              #! PC = 0x274877984800 *)
adcs carry x12 x12 x20 carry;
(* and	x22, x8, x17                                #! PC = 0x274877984804 *)
and x22@uint64 x8 x17;
(* adcs	x13, x13, x21                              #! PC = 0x274877984808 *)
adcs carry x13 x13 x21 carry;
(* and	x23, x9, x17                                #! PC = 0x274877984812 *)
and x23@uint64 x9 x17;
(* adcs	x14, x14, x22                              #! PC = 0x274877984816 *)
adcs carry x14 x14 x22 carry;
(* and	x24, x10, x17                               #! PC = 0x274877984820 *)
and x24@uint64 x10 x17;
(* adcs	x15, x15, x23                              #! PC = 0x274877984824 *)
adcs carry x15 x15 x23 carry;
(* stp	x11, x12, [x0, #48]                         #! EA = L0x4000829ee8; PC = 0x274877984828 *)
mov L0x4000829ee8 x11;
mov L0x4000829ef0 x12;
(* adc	x16, x16, x24                               #! PC = 0x274877984832 *)
adcs dontcare x16 x16 x24 carry;
(* stp	x13, x14, [x0, #64]                         #! EA = L0x4000829ef8; PC = 0x274877984836 *)
mov L0x4000829ef8 x13;
mov L0x4000829f00 x14;
(* stp	x15, x16, [x0, #80]                         #! EA = L0x4000829f08; PC = 0x274877984840 *)
mov L0x4000829f08 x15;
mov L0x4000829f10 x16;
(* #ret                                            #! PC = 0x274877984844 *)
#ret                                            #! 0x274877984844 = 0x274877984844;

assert true
    && eqmod (limbs 64 [L0x4000829eb8, L0x4000829ec0, L0x4000829ec8,
                        L0x4000829ed0, L0x4000829ed8, L0x4000829ee0,
                        L0x4000829ee8, L0x4000829ef0, L0x4000829ef8,
                        L0x4000829f00, L0x4000829f08, L0x4000829f10] +
              limbs 64 [L0x4000829e58, L0x4000829e60, L0x4000829e68,
                        L0x4000829e70, L0x4000829e78, L0x4000829e80,
                        L0x4000829e88, L0x4000829e90, L0x4000829e98,
                        L0x4000829ea0, L0x4000829ea8, L0x4000829eb0])
             (limbs 64 [L0x4000829eb8p, L0x4000829ec0p, L0x4000829ec8p,
                        L0x4000829ed0p, L0x4000829ed8p, L0x4000829ee0p,
                        L0x4000829ee8p, L0x4000829ef0p, L0x4000829ef8p,
                        L0x4000829f00p, L0x4000829f08p, L0x4000829f10p])
             (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                          m0,   m1,   m2,   m3,   m4,   m5]);

assume eqmod (limbs 64 [L0x4000829eb8, L0x4000829ec0, L0x4000829ec8,
                        L0x4000829ed0, L0x4000829ed8, L0x4000829ee0,
                        L0x4000829ee8, L0x4000829ef0, L0x4000829ef8,
                        L0x4000829f00, L0x4000829f08, L0x4000829f10] +
              limbs 64 [L0x4000829e58, L0x4000829e60, L0x4000829e68,
                        L0x4000829e70, L0x4000829e78, L0x4000829e80,
                        L0x4000829e88, L0x4000829e90, L0x4000829e98,
                        L0x4000829ea0, L0x4000829ea8, L0x4000829eb0])
             (limbs 64 [L0x4000829eb8p, L0x4000829ec0p, L0x4000829ec8p,
                        L0x4000829ed0p, L0x4000829ed8p, L0x4000829ee0p,
                        L0x4000829ee8p, L0x4000829ef0p, L0x4000829ef8p,
                        L0x4000829f00p, L0x4000829f08p, L0x4000829f10p])
             (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5])
    && true;

(* add	x1, x26, #0x0                               #! PC = 0x274877990064 *)
adds dontcare x1 x26 0@uint64;
(* mov	x2, sp                                      #! PC = 0x274877990068 *)
mov x2 sp;
(* add	x0, x26, #0x0                               #! PC = 0x274877990072 *)
adds dontcare x0 x26 0@uint64;
(* #bl	0x4000012fa0 <__sub_mod_384x384>            #! PC = 0x274877990076 *)
#bl	0x4000012fa0 <__sub_mod_384x384>            #! 0x274877990076 = 0x274877990076;

rcut and [limbs 64 [L0x40008298d0, L0x40008298d8, L0x40008298e0,
                    L0x40008298e8, L0x40008298f0, L0x40008298f8] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829e88, L0x4000829e90, L0x4000829e98,
                    L0x4000829ea0, L0x4000829ea8, L0x4000829eb0] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829ee8, L0x4000829ef0, L0x4000829ef8,
                    L0x4000829f00, L0x4000829f08, L0x4000829f10] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
          m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
          m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64
     ] prove with all cuts;

ghost L0x4000829e58o@uint64, L0x4000829e60o@uint64, L0x4000829e68o@uint64,
      L0x4000829e70o@uint64, L0x4000829e78o@uint64, L0x4000829e80o@uint64,
      L0x4000829e88o@uint64, L0x4000829e90o@uint64, L0x4000829e98o@uint64,
      L0x4000829ea0o@uint64, L0x4000829ea8o@uint64, L0x4000829eb0o@uint64 :
      and [L0x4000829e58o=L0x4000829e58, L0x4000829e60o=L0x4000829e60,
           L0x4000829e68o=L0x4000829e68, L0x4000829e70o=L0x4000829e70,
           L0x4000829e78o=L0x4000829e78, L0x4000829e80o=L0x4000829e80,
           L0x4000829e88o=L0x4000829e88, L0x4000829e90o=L0x4000829e90,
           L0x4000829e98o=L0x4000829e98, L0x4000829ea0o=L0x4000829ea0,
           L0x4000829ea8o=L0x4000829ea8, L0x4000829eb0o=L0x4000829eb0]
   && and [L0x4000829e58o=L0x4000829e58, L0x4000829e60o=L0x4000829e60,
           L0x4000829e68o=L0x4000829e68, L0x4000829e70o=L0x4000829e70,
           L0x4000829e78o=L0x4000829e78, L0x4000829e80o=L0x4000829e80,
           L0x4000829e88o=L0x4000829e88, L0x4000829e90o=L0x4000829e90,
           L0x4000829e98o=L0x4000829e98, L0x4000829ea0o=L0x4000829ea0,
           L0x4000829ea8o=L0x4000829ea8, L0x4000829eb0o=L0x4000829eb0];

(* ldp	x11, x12, [x1]                              #! EA = L0x4000829e58; Value = 0xe4999ec244c04320; PC = 0x274877984672 *)
mov x11 L0x4000829e58;
mov x12 L0x4000829e60;
(* ldp	x19, x20, [x2]                              #! EA = L0x40008298a0; Value = 0xea3e33f9b9158400; PC = 0x274877984676 *)
mov x19 L0x40008298a0;
mov x20 L0x40008298a8;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829e68; Value = 0x6022a7a092e38e24; PC = 0x274877984680 *)
mov x13 L0x4000829e68;
mov x14 L0x4000829e70;
(* subs	x11, x11, x19                              #! PC = 0x274877984684 *)
subc carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x40008298b0; Value = 0xfb18d21ff5c5b765; PC = 0x274877984688 *)
mov x21 L0x40008298b0;
mov x22 L0x40008298b8;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984692 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829e78; Value = 0x085d97820599b4eb; PC = 0x274877984696 *)
mov x15 L0x4000829e78;
mov x16 L0x4000829e80;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984700 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x40008298c0; Value = 0x4c177cef160e8e16; PC = 0x274877984704 *)
mov x23 L0x40008298c0;
mov x24 L0x40008298c8;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984708 *)
sbcs carry x14 x14 x22 carry;
(* stp	x11, x12, [x0]                              #! EA = L0x4000829e58; PC = 0x274877984712 *)
mov L0x4000829e58 x11;
mov L0x4000829e60 x12;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984716 *)
sbcs carry x15 x15 x23 carry;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0x4000829e88; Value = 0xbdb8b82693d45e98; PC = 0x274877984720 *)
mov x11 L0x4000829e88;
mov x12 L0x4000829e90;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984724 *)
sbcs carry x16 x16 x24 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x40008298d0; Value = 0xa9c929083df813f4; PC = 0x274877984728 *)
mov x19 L0x40008298d0;
mov x20 L0x40008298d8;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x4000829e68; PC = 0x274877984732 *)
mov L0x4000829e68 x13;
mov L0x4000829e70 x14;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0x4000829e98; Value = 0x4b4fada4c294efdb; PC = 0x274877984736 *)
mov x13 L0x4000829e98;
mov x14 L0x4000829ea0;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x40008298e0; Value = 0x3e983fa0f466cc55; PC = 0x274877984740 *)
mov x21 L0x40008298e0;
mov x22 L0x40008298e8;
(* sbcs	x11, x11, x19                              #! PC = 0x274877984744 *)
sbcs carry x11 x11 x19 carry;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x4000829e78; PC = 0x274877984748 *)
mov L0x4000829e78 x15;
mov L0x4000829e80 x16;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984752 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #80]                         #! EA = L0x4000829ea8; Value = 0xea09a14f864c29f4; PC = 0x274877984756 *)
mov x15 L0x4000829ea8;
mov x16 L0x4000829eb0;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984760 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x40008298f0; Value = 0x423387c002126c34; PC = 0x274877984764 *)
mov x23 L0x40008298f0;
mov x24 L0x40008298f8;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984768 *)
sbcs carry x14 x14 x22 carry;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984772 *)
sbcs carry x15 x15 x23 carry;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984776 *)
sbcs carry x16 x16 x24 carry;
(* ngc	x17, xzr                                    #! PC = 0x274877984780 *)
cmov x17 carry 0@uint64 0xffffffffffffffff@uint64;
(* and	x19, x5, x17                                #! PC = 0x274877984784 *)
and x19@uint64 x5 x17;
(* and	x20, x6, x17                                #! PC = 0x274877984788 *)
and x20@uint64 x6 x17;
(* adds	x11, x11, x19                              #! PC = 0x274877984792 *)
adds carry x11 x11 x19;
(* and	x21, x7, x17                                #! PC = 0x274877984796 *)
and x21@uint64 x7 x17;
(* adcs	x12, x12, x20                              #! PC = 0x274877984800 *)
adcs carry x12 x12 x20 carry;
(* and	x22, x8, x17                                #! PC = 0x274877984804 *)
and x22@uint64 x8 x17;
(* adcs	x13, x13, x21                              #! PC = 0x274877984808 *)
adcs carry x13 x13 x21 carry;
(* and	x23, x9, x17                                #! PC = 0x274877984812 *)
and x23@uint64 x9 x17;
(* adcs	x14, x14, x22                              #! PC = 0x274877984816 *)
adcs carry x14 x14 x22 carry;
(* and	x24, x10, x17                               #! PC = 0x274877984820 *)
and x24@uint64 x10 x17;
(* adcs	x15, x15, x23                              #! PC = 0x274877984824 *)
adcs carry x15 x15 x23 carry;
(* stp	x11, x12, [x0, #48]                         #! EA = L0x4000829e88; PC = 0x274877984828 *)
mov L0x4000829e88 x11;
mov L0x4000829e90 x12;
(* adc	x16, x16, x24                               #! PC = 0x274877984832 *)
adcs dontcare x16 x16 x24 carry;
(* stp	x13, x14, [x0, #64]                         #! EA = L0x4000829e98; PC = 0x274877984836 *)
mov L0x4000829e98 x13;
mov L0x4000829ea0 x14;
(* stp	x15, x16, [x0, #80]                         #! EA = L0x4000829ea8; PC = 0x274877984840 *)
mov L0x4000829ea8 x15;
mov L0x4000829eb0 x16;
(* #ret                                            #! PC = 0x274877984844 *)
#ret                                            #! 0x274877984844 = 0x274877984844;
(* ldr	x30, [x29, #8]                              #! EA = L0x4000829908; Value = 0x001f004000008b50; PC = 0x274877990080 *)
mov x30 L0x4000829908;
(* add	sp, sp, #0x60                               #! PC = 0x274877990084 *)
adds dontcare sp sp 0x60@uint64;
(* ldp	x19, x20, [x29, #16]                        #! EA = L0x4000829910; Value = 0x0000004000016928; PC = 0x274877990088 *)
mov x19 L0x4000829910;
mov x20 L0x4000829918;
(* ldp	x21, x22, [x29, #32]                        #! EA = L0x4000829920; Value = 0x0000004000829df8; PC = 0x274877990092 *)
mov x21 L0x4000829920;
mov x22 L0x4000829928;
(* ldp	x23, x24, [x29, #48]                        #! EA = L0x4000829930; Value = 0x0000004000829c88; PC = 0x274877990096 *)
mov x23 L0x4000829930;
mov x24 L0x4000829938;
(* ldp	x25, x26, [x29, #64]                        #! EA = L0x4000829940; Value = 0x0000004000829aa8; PC = 0x274877990100 *)
mov x25 L0x4000829940;
mov x26 L0x4000829948;
(* ldp	x27, x28, [x29, #80]                        #! EA = L0x4000829950; Value = 0x0000004000829b08; PC = 0x274877990104 *)
mov x27 L0x4000829950;
mov x28 L0x4000829958;
(* ldr	x29, [sp], #128                             #! EA = L0x4000829900; Value = 0x0000004000829980; PC = 0x274877990108 *)
mov x29 L0x4000829900;
(* #autiasp                                         #! PC = 0x274877990112 *)
#autiasp                                         #! 0x274877990112 = 0x274877990112;
(* #ret                                            #! PC = 0x274877990116 *)
#ret                                            #! 0x274877990116 = 0x274877990116;
(* ldp	x29, x30, [sp], #16                         #! EA = L0x4000829980; Value = 0x0000004000829990; PC = 0x274877942608 *)
mov x29 L0x4000829980;
mov x30 L0x4000829988;
(* #ret                                            #! PC = 0x274877942612 *)
#ret                                            #! 0x274877942612 = 0x274877942612;

assert true
    && eqmod (limbs 64 [L0x4000829e58, L0x4000829e60, L0x4000829e68,
                        L0x4000829e70, L0x4000829e78, L0x4000829e80,
                        L0x4000829e88, L0x4000829e90, L0x4000829e98,
                        L0x4000829ea0, L0x4000829ea8, L0x4000829eb0] +
              limbs 64 [L0x40008298a0, L0x40008298a8, L0x40008298b0,
                        L0x40008298b8, L0x40008298c0, L0x40008298c8,
                        L0x40008298d0, L0x40008298d8, L0x40008298e0,
                        L0x40008298e8, L0x40008298f0, L0x40008298f8])
             (limbs 64 [L0x4000829e58o, L0x4000829e60o, L0x4000829e68o,
                        L0x4000829e70o, L0x4000829e78o, L0x4000829e80o,
                        L0x4000829e88o, L0x4000829e90o, L0x4000829e98o,
                        L0x4000829ea0o, L0x4000829ea8o, L0x4000829eb0o])
             (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                          m0,   m1,   m2,   m3,   m4,   m5]);

assume eqmod (limbs 64 [L0x4000829e58, L0x4000829e60, L0x4000829e68,
                        L0x4000829e70, L0x4000829e78, L0x4000829e80,
                        L0x4000829e88, L0x4000829e90, L0x4000829e98,
                        L0x4000829ea0, L0x4000829ea8, L0x4000829eb0] +
              limbs 64 [L0x40008298a0, L0x40008298a8, L0x40008298b0,
                        L0x40008298b8, L0x40008298c0, L0x40008298c8,
                        L0x40008298d0, L0x40008298d8, L0x40008298e0,
                        L0x40008298e8, L0x40008298f0, L0x40008298f8])
             (limbs 64 [L0x4000829e58o, L0x4000829e60o, L0x4000829e68o,
                        L0x4000829e70o, L0x4000829e78o, L0x4000829e80o,
                        L0x4000829e88o, L0x4000829e90o, L0x4000829e98o,
                        L0x4000829ea0o, L0x4000829ea8o, L0x4000829eb0o])
             (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5])
    && true;

(* mul_382x(ret[1], aa, bb) *)

assert and [eqmod (limbs 64 [L0x4000829e58, L0x4000829e60, L0x4000829e68,
                             L0x4000829e70, L0x4000829e78, L0x4000829e80,
                             L0x4000829e88, L0x4000829e90, L0x4000829e98,
                             L0x4000829ea0, L0x4000829ea8, L0x4000829eb0] +
                   limbs 64 [L0x4000829eb8, L0x4000829ec0, L0x4000829ec8,
                             L0x4000829ed0, L0x4000829ed8, L0x4000829ee0,
                             L0x4000829ee8, L0x4000829ef0, L0x4000829ef8,
                             L0x4000829f00, L0x4000829f08, L0x4000829f10] * U)
                  ((limbs 64 [L0x4000829a48, L0x4000829a50, L0x4000829a58,
                              L0x4000829a60, L0x4000829a68, L0x4000829a70] +
                    limbs 64 [L0x4000829a78, L0x4000829a80, L0x4000829a88,
                              L0x4000829a90, L0x4000829a98, L0x4000829aa0] * U) *
                   (limbs 64 [L0x4000829aa8, L0x4000829ab0, L0x4000829ab8,
                              L0x4000829ac0, L0x4000829ac8, L0x4000829ad0] +
                    limbs 64 [L0x4000829ad8, L0x4000829ae0, L0x4000829ae8,
                              L0x4000829af0, L0x4000829af8, L0x4000829b00] * U))
                  [limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5],
                   U * U + 1],
            eqmod (limbs 64 [L0x4000829a48, L0x4000829a50, L0x4000829a58,
                             L0x4000829a60, L0x4000829a68, L0x4000829a70] +
                   limbs 64 [L0x4000829a78, L0x4000829a80, L0x4000829a88,
                             L0x4000829a90, L0x4000829a98, L0x4000829aa0] * U)
                  (limbs 64 [a00, a01, a02, a03, a04, a05] +
                   limbs 64 [a10, a11, a12, a13, a14, a15] * U +
                   limbs 64 [a20, a21, a22, a23, a24, a25] +
                   limbs 64 [a30, a31, a32, a33, a34, a35] * U)
                  [limbs 64 [m0, m1, m2, m3, m4, m5], U * U + 1],
            eqmod (limbs 64 [L0x4000829aa8, L0x4000829ab0, L0x4000829ab8,
                             L0x4000829ac0, L0x4000829ac8, L0x4000829ad0] +
                   limbs 64 [L0x4000829ad8, L0x4000829ae0, L0x4000829ae8,
                             L0x4000829af0, L0x4000829af8, L0x4000829b00] * U)
                  (limbs 64 [b00, b01, b02, b03, b04, b05] +
                   limbs 64 [b10, b11, b12, b13, b14, b15] * U +
                   limbs 64 [b20, b21, b22, b23, b24, b25] +
                   limbs 64 [b30, b31, b32, b33, b34, b35] * U)
                  [limbs 64 [m0, m1, m2, m3, m4, m5], U * U + 1]
       ]
    && true;

(* mov	x3, x19                                     #! PC = 0x274877950632 *)
mov x3 x19;
(* mov	x2, x27                                     #! PC = 0x274877950636 *)
mov x2 x27;
(* mov	x1, x22                                     #! PC = 0x274877950640 *)
mov x1 x22;
(* mov	x0, x22                                     #! PC = 0x274877950644 *)
mov x0 x22;
(* #bl	0x4000012f40 <sub_mod_384x384>              #! PC = 0x274877950648 *)
#bl	0x4000012f40 <sub_mod_384x384>              #! 0x274877950648 = 0x274877950648;
(* #paciasp                                         #! PC = 0x274877984576 *)
#paciasp                                         #! 0x274877984576 = 0x274877984576;

rcut and [limbs 64 [L0x4000829e88, L0x4000829e90, L0x4000829e98,
                    L0x4000829ea0, L0x4000829ea8, L0x4000829eb0] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829ee8, L0x4000829ef0, L0x4000829ef8,
                    L0x4000829f00, L0x4000829f08, L0x4000829f10] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829b38, L0x4000829b40, L0x4000829b48,
                    L0x4000829b50, L0x4000829b58, L0x4000829b60] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
          m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
          m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64
     ] prove with all cuts, precondition;

ghost L0x4000829e58p@uint64, L0x4000829e60p@uint64, L0x4000829e68p@uint64,
      L0x4000829e70p@uint64, L0x4000829e78p@uint64, L0x4000829e80p@uint64,
      L0x4000829e88p@uint64, L0x4000829e90p@uint64, L0x4000829e98p@uint64,
      L0x4000829ea0p@uint64, L0x4000829ea8p@uint64, L0x4000829eb0p@uint64,
      L0x4000829eb8q@uint64, L0x4000829ec0q@uint64, L0x4000829ec8q@uint64,
      L0x4000829ed0q@uint64, L0x4000829ed8q@uint64, L0x4000829ee0q@uint64,
      L0x4000829ee8q@uint64, L0x4000829ef0q@uint64, L0x4000829ef8q@uint64,
      L0x4000829f00q@uint64, L0x4000829f08q@uint64, L0x4000829f10q@uint64 :
      and [L0x4000829e58p=L0x4000829e58, L0x4000829e60p=L0x4000829e60,
           L0x4000829e68p=L0x4000829e68, L0x4000829e70p=L0x4000829e70,
           L0x4000829e78p=L0x4000829e78, L0x4000829e80p=L0x4000829e80,
           L0x4000829e88p=L0x4000829e88, L0x4000829e90p=L0x4000829e90,
           L0x4000829e98p=L0x4000829e98, L0x4000829ea0p=L0x4000829ea0,
           L0x4000829ea8p=L0x4000829ea8, L0x4000829eb0p=L0x4000829eb0,
           L0x4000829eb8q=L0x4000829eb8, L0x4000829ec0q=L0x4000829ec0,
           L0x4000829ec8q=L0x4000829ec8, L0x4000829ed0q=L0x4000829ed0,
           L0x4000829ed8q=L0x4000829ed8, L0x4000829ee0q=L0x4000829ee0,
           L0x4000829ee8q=L0x4000829ee8, L0x4000829ef0q=L0x4000829ef0,
           L0x4000829ef8q=L0x4000829ef8, L0x4000829f00q=L0x4000829f00,
           L0x4000829f08q=L0x4000829f08, L0x4000829f10q=L0x4000829f10]
   && and [L0x4000829e58p=L0x4000829e58, L0x4000829e60p=L0x4000829e60,
           L0x4000829e68p=L0x4000829e68, L0x4000829e70p=L0x4000829e70,
           L0x4000829e78p=L0x4000829e78, L0x4000829e80p=L0x4000829e80,
           L0x4000829e88p=L0x4000829e88, L0x4000829e90p=L0x4000829e90,
           L0x4000829e98p=L0x4000829e98, L0x4000829ea0p=L0x4000829ea0,
           L0x4000829ea8p=L0x4000829ea8, L0x4000829eb0p=L0x4000829eb0,
           L0x4000829eb8q=L0x4000829eb8, L0x4000829ec0q=L0x4000829ec0,
           L0x4000829ec8q=L0x4000829ec8, L0x4000829ed0q=L0x4000829ed0,
           L0x4000829ed8q=L0x4000829ed8, L0x4000829ee0q=L0x4000829ee0,
           L0x4000829ee8q=L0x4000829ee8, L0x4000829ef0q=L0x4000829ef0,
           L0x4000829ef8q=L0x4000829ef8, L0x4000829f00q=L0x4000829f00,
           L0x4000829f08q=L0x4000829f08, L0x4000829f10q=L0x4000829f10];

(* stp	x29, x30, [sp, #-64]!                       #! EA = L0x4000829950; PC = 0x274877984580 *)
mov L0x4000829950 x29;
mov L0x4000829958 x30;
(* mov	x29, sp                                     #! PC = 0x274877984584 *)
mov x29 sp;
(* stp	x19, x20, [sp, #16]                         #! EA = L0x4000829960; PC = 0x274877984588 *)
mov L0x4000829960 x19;
mov L0x4000829968 x20;
(* stp	x21, x22, [sp, #32]                         #! EA = L0x4000829970; PC = 0x274877984592 *)
mov L0x4000829970 x21;
mov L0x4000829978 x22;
(* stp	x23, x24, [sp, #48]                         #! EA = L0x4000829980; PC = 0x274877984596 *)
mov L0x4000829980 x23;
mov L0x4000829988 x24;
(* ldp	x5, x6, [x3]                                #! EA = L0x4000016928; Value = 0xb9feffffffffaaab; PC = 0x274877984600 *)
mov x5 L0x4000016928;
mov x6 L0x4000016930;
(* ldp	x7, x8, [x3, #16]                           #! EA = L0x4000016938; Value = 0x6730d2a0f6b0f624; PC = 0x274877984604 *)
mov x7 L0x4000016938;
mov x8 L0x4000016940;
(* ldp	x9, x10, [x3, #32]                          #! EA = L0x4000016948; Value = 0x4b1ba7b6434bacd7; PC = 0x274877984608 *)
mov x9 L0x4000016948;
mov x10 L0x4000016950;
(* #bl	0x4000012fa0 <__sub_mod_384x384>            #! PC = 0x274877984612 *)
#bl	0x4000012fa0 <__sub_mod_384x384>            #! 0x274877984612 = 0x274877984612;
(* ldp	x11, x12, [x1]                              #! EA = L0x4000829e58; Value = 0xfa5b6ac88baabf20; PC = 0x274877984672 *)
mov x11 L0x4000829e58;
mov x12 L0x4000829e60;
(* ldp	x19, x20, [x2]                              #! EA = L0x4000829b08; Value = 0xa1aa48c1b6c4bf20; PC = 0x274877984676 *)
mov x19 L0x4000829b08;
mov x20 L0x4000829b10;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829e68; Value = 0x6509d5809d1dd6bf; PC = 0x274877984680 *)
mov x13 L0x4000829e68;
mov x14 L0x4000829e70;
(* subs	x11, x11, x19                              #! PC = 0x274877984684 *)
subc carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x4000829b18; Value = 0xdb753b9dee26c493; PC = 0x274877984688 *)
mov x21 L0x4000829b18;
mov x22 L0x4000829b20;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984692 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829e78; Value = 0xbc461a92ef8b26d5; PC = 0x274877984696 *)
mov x15 L0x4000829e78;
mov x16 L0x4000829e80;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984700 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x4000829b28; Value = 0xb416b4df03830d31; PC = 0x274877984704 *)
mov x23 L0x4000829b28;
mov x24 L0x4000829b30;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984708 *)
sbcs carry x14 x14 x22 carry;
(* stp	x11, x12, [x0]                              #! EA = L0x4000829e58; PC = 0x274877984712 *)
mov L0x4000829e58 x11;
mov L0x4000829e60 x12;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984716 *)
sbcs carry x15 x15 x23 carry;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0x4000829e88; Value = 0xcdee8f1e55dbf54e; PC = 0x274877984720 *)
mov x11 L0x4000829e88;
mov x12 L0x4000829e90;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984724 *)
sbcs carry x16 x16 x24 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x4000829b38; Value = 0x520fba46aeb315b1; PC = 0x274877984728 *)
mov x19 L0x4000829b38;
mov x20 L0x4000829b40;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x4000829e68; PC = 0x274877984732 *)
mov L0x4000829e68 x13;
mov L0x4000829e70 x14;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0x4000829e98; Value = 0x73e840a4c4df19a9; PC = 0x274877984736 *)
mov x13 L0x4000829e98;
mov x14 L0x4000829ea0;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x4000829b48; Value = 0x09a67b1981fb69dc; PC = 0x274877984740 *)
mov x21 L0x4000829b48;
mov x22 L0x4000829b50;
(* sbcs	x11, x11, x19                              #! PC = 0x274877984744 *)
sbcs carry x11 x11 x19 carry;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x4000829e78; PC = 0x274877984748 *)
mov L0x4000829e78 x15;
mov L0x4000829e80 x16;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984752 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #80]                         #! EA = L0x4000829ea8; Value = 0xf2f1c145c7856a97; PC = 0x274877984756 *)
mov x15 L0x4000829ea8;
mov x16 L0x4000829eb0;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984760 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x4000829b58; Value = 0xea09a14285a838b9; PC = 0x274877984764 *)
mov x23 L0x4000829b58;
mov x24 L0x4000829b60;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984768 *)
sbcs carry x14 x14 x22 carry;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984772 *)
sbcs carry x15 x15 x23 carry;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984776 *)
sbcs carry x16 x16 x24 carry;
(* ngc	x17, xzr                                    #! PC = 0x274877984780 *)
cmov x17 carry 0@uint64 0xffffffffffffffff@uint64;
(* and	x19, x5, x17                                #! PC = 0x274877984784 *)
and x19@uint64 x5 x17;
(* and	x20, x6, x17                                #! PC = 0x274877984788 *)
and x20@uint64 x6 x17;
(* adds	x11, x11, x19                              #! PC = 0x274877984792 *)
adds carry x11 x11 x19;
(* and	x21, x7, x17                                #! PC = 0x274877984796 *)
and x21@uint64 x7 x17;
(* adcs	x12, x12, x20                              #! PC = 0x274877984800 *)
adcs carry x12 x12 x20 carry;
(* and	x22, x8, x17                                #! PC = 0x274877984804 *)
and x22@uint64 x8 x17;
(* adcs	x13, x13, x21                              #! PC = 0x274877984808 *)
adcs carry x13 x13 x21 carry;
(* and	x23, x9, x17                                #! PC = 0x274877984812 *)
and x23@uint64 x9 x17;
(* adcs	x14, x14, x22                              #! PC = 0x274877984816 *)
adcs carry x14 x14 x22 carry;
(* and	x24, x10, x17                               #! PC = 0x274877984820 *)
and x24@uint64 x10 x17;
(* adcs	x15, x15, x23                              #! PC = 0x274877984824 *)
adcs carry x15 x15 x23 carry;
(* stp	x11, x12, [x0, #48]                         #! EA = L0x4000829e88; PC = 0x274877984828 *)
mov L0x4000829e88 x11;
mov L0x4000829e90 x12;
(* adc	x16, x16, x24                               #! PC = 0x274877984832 *)
adcs dontcare x16 x16 x24 carry;
(* stp	x13, x14, [x0, #64]                         #! EA = L0x4000829e98; PC = 0x274877984836 *)
mov L0x4000829e98 x13;
mov L0x4000829ea0 x14;
(* stp	x15, x16, [x0, #80]                         #! EA = L0x4000829ea8; PC = 0x274877984840 *)
mov L0x4000829ea8 x15;
mov L0x4000829eb0 x16;
(* #ret                                            #! PC = 0x274877984844 *)
#ret                                            #! 0x274877984844 = 0x274877984844;
(* ldr	x30, [x29, #8]                              #! EA = L0x4000829958; Value = 0x000200400000aabc; PC = 0x274877984616 *)
mov x30 L0x4000829958;
(* ldp	x19, x20, [x29, #16]                        #! EA = L0x4000829960; Value = 0x0000004000016928; PC = 0x274877984620 *)
mov x19 L0x4000829960;
mov x20 L0x4000829968;
(* ldp	x21, x22, [x29, #32]                        #! EA = L0x4000829970; Value = 0x0000004000829df8; PC = 0x274877984624 *)
mov x21 L0x4000829970;
mov x22 L0x4000829978;
(* ldp	x23, x24, [x29, #48]                        #! EA = L0x4000829980; Value = 0x0000004000829c88; PC = 0x274877984628 *)
mov x23 L0x4000829980;
mov x24 L0x4000829988;
(* ldr	x29, [sp], #64                              #! EA = L0x4000829950; Value = 0x0000004000829990; PC = 0x274877984632 *)
mov x29 L0x4000829950;
(* #autiasp                                         #! PC = 0x274877984636 *)
#autiasp                                         #! 0x274877984636 = 0x274877984636;
(* #ret                                            #! PC = 0x274877984640 *)
#ret                                            #! 0x274877984640 = 0x274877984640;
(* mov	x3, x19                                     #! PC = 0x274877950652 *)
mov x3 x19;
(* ldr	x2, [sp, #128]                              #! EA = L0x4000829a10; Value = 0x0000004000829b68; PC = 0x274877950656 *)
mov x2 L0x4000829a10;
(* mov	x1, x26                                     #! PC = 0x274877950660 *)
mov x1 x26;
(* mov	x0, x26                                     #! PC = 0x274877950664 *)
mov x0 x26;
(* #bl	0x4000012f40 <sub_mod_384x384>              #! PC = 0x274877950668 *)
#bl	0x4000012f40 <sub_mod_384x384>              #! 0x274877950668 = 0x274877950668;
(* #paciasp                                         #! PC = 0x274877984576 *)
#paciasp                                         #! 0x274877984576 = 0x274877984576;
(* stp	x29, x30, [sp, #-64]!                       #! EA = L0x4000829950; PC = 0x274877984580 *)
mov L0x4000829950 x29;
mov L0x4000829958 x30;
(* mov	x29, sp                                     #! PC = 0x274877984584 *)
mov x29 sp;
(* stp	x19, x20, [sp, #16]                         #! EA = L0x4000829960; PC = 0x274877984588 *)
mov L0x4000829960 x19;
mov L0x4000829968 x20;
(* stp	x21, x22, [sp, #32]                         #! EA = L0x4000829970; PC = 0x274877984592 *)
mov L0x4000829970 x21;
mov L0x4000829978 x22;
(* stp	x23, x24, [sp, #48]                         #! EA = L0x4000829980; PC = 0x274877984596 *)
mov L0x4000829980 x23;
mov L0x4000829988 x24;
(* ldp	x5, x6, [x3]                                #! EA = L0x4000016928; Value = 0xb9feffffffffaaab; PC = 0x274877984600 *)
mov x5 L0x4000016928;
mov x6 L0x4000016930;
(* ldp	x7, x8, [x3, #16]                           #! EA = L0x4000016938; Value = 0x6730d2a0f6b0f624; PC = 0x274877984604 *)
mov x7 L0x4000016938;
mov x8 L0x4000016940;
(* ldp	x9, x10, [x3, #32]                          #! EA = L0x4000016948; Value = 0x4b1ba7b6434bacd7; PC = 0x274877984608 *)
mov x9 L0x4000016948;
mov x10 L0x4000016950;
(* #bl	0x4000012fa0 <__sub_mod_384x384>            #! PC = 0x274877984612 *)
#bl	0x4000012fa0 <__sub_mod_384x384>            #! 0x274877984612 = 0x274877984612;
(* ldp	x11, x12, [x1]                              #! EA = L0x4000829eb8; Value = 0x9b2897212ac66760; PC = 0x274877984672 *)
mov x11 L0x4000829eb8;
mov x12 L0x4000829ec0;
(* ldp	x19, x20, [x2]                              #! EA = L0x4000829b68; Value = 0xe6c8f4bf2a867760; PC = 0x274877984676 *)
mov x19 L0x4000829b68;
mov x20 L0x4000829b70;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829ec8; Value = 0x3afa6b018952c7f6; PC = 0x274877984680 *)
mov x13 L0x4000829ec8;
mov x14 L0x4000829ed0;
(* subs	x11, x11, x19                              #! PC = 0x274877984684 *)
subc carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x4000829b78; Value = 0x03848c78ce3ec7e6; PC = 0x274877984688 *)
mov x21 L0x4000829b78;
mov x22 L0x4000829b80;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984692 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829ed8; Value = 0xca55b4209db7e764; PC = 0x274877984696 *)
mov x15 L0x4000829ed8;
mov x16 L0x4000829ee0;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984700 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x4000829b88; Value = 0xd082d00b946555bc; PC = 0x274877984704 *)
mov x23 L0x4000829b88;
mov x24 L0x4000829b90;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984708 *)
sbcs carry x14 x14 x22 carry;
(* stp	x11, x12, [x0]                              #! EA = L0x4000829eb8; PC = 0x274877984712 *)
mov L0x4000829eb8 x11;
mov L0x4000829ec0 x12;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984716 *)
sbcs carry x15 x15 x23 carry;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0x4000829ee8; Value = 0x4f6b973f38695edd; PC = 0x274877984720 *)
mov x11 L0x4000829ee8;
mov x12 L0x4000829ef0;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984724 *)
sbcs carry x16 x16 x24 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x4000829b98; Value = 0xaeda3b4fdaff2cd9; PC = 0x274877984728 *)
mov x19 L0x4000829b98;
mov x20 L0x4000829ba0;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x4000829ec8; PC = 0x274877984732 *)
mov L0x4000829ec8 x13;
mov L0x4000829ed0 x14;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0x4000829ef8; Value = 0xad03ba71257bb6bd; PC = 0x274877984736 *)
mov x13 L0x4000829ef8;
mov x14 L0x4000829f00;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x4000829ba8; Value = 0xc330383e3d66d124; PC = 0x274877984740 *)
mov x21 L0x4000829ba8;
mov x22 L0x4000829bb0;
(* sbcs	x11, x11, x19                              #! PC = 0x274877984744 *)
sbcs carry x11 x11 x19 carry;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x4000829ed8; PC = 0x274877984748 *)
mov L0x4000829ed8 x15;
mov L0x4000829ee0 x16;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984752 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #80]                         #! EA = L0x4000829f08; Value = 0x933a1d7ac42984bf; PC = 0x274877984756 *)
mov x15 L0x4000829f08;
mov x16 L0x4000829f10;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984760 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x4000829bb8; Value = 0x0000048689a12172; PC = 0x274877984764 *)
mov x23 L0x4000829bb8;
mov x24 L0x4000829bc0;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984768 *)
sbcs carry x14 x14 x22 carry;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984772 *)
sbcs carry x15 x15 x23 carry;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984776 *)
sbcs carry x16 x16 x24 carry;
(* ngc	x17, xzr                                    #! PC = 0x274877984780 *)
cmov x17 carry 0@uint64 0xffffffffffffffff@uint64;
(* and	x19, x5, x17                                #! PC = 0x274877984784 *)
and x19@uint64 x5 x17;
(* and	x20, x6, x17                                #! PC = 0x274877984788 *)
and x20@uint64 x6 x17;
(* adds	x11, x11, x19                              #! PC = 0x274877984792 *)
adds carry x11 x11 x19;
(* and	x21, x7, x17                                #! PC = 0x274877984796 *)
and x21@uint64 x7 x17;
(* adcs	x12, x12, x20                              #! PC = 0x274877984800 *)
adcs carry x12 x12 x20 carry;
(* and	x22, x8, x17                                #! PC = 0x274877984804 *)
and x22@uint64 x8 x17;
(* adcs	x13, x13, x21                              #! PC = 0x274877984808 *)
adcs carry x13 x13 x21 carry;
(* and	x23, x9, x17                                #! PC = 0x274877984812 *)
and x23@uint64 x9 x17;
(* adcs	x14, x14, x22                              #! PC = 0x274877984816 *)
adcs carry x14 x14 x22 carry;
(* and	x24, x10, x17                               #! PC = 0x274877984820 *)
and x24@uint64 x10 x17;
(* adcs	x15, x15, x23                              #! PC = 0x274877984824 *)
adcs carry x15 x15 x23 carry;
(* stp	x11, x12, [x0, #48]                         #! EA = L0x4000829ee8; PC = 0x274877984828 *)
mov L0x4000829ee8 x11;
mov L0x4000829ef0 x12;
(* adc	x16, x16, x24                               #! PC = 0x274877984832 *)
adcs dontcare x16 x16 x24 carry;
(* stp	x13, x14, [x0, #64]                         #! EA = L0x4000829ef8; PC = 0x274877984836 *)
mov L0x4000829ef8 x13;
mov L0x4000829f00 x14;
(* stp	x15, x16, [x0, #80]                         #! EA = L0x4000829f08; PC = 0x274877984840 *)
mov L0x4000829f08 x15;
mov L0x4000829f10 x16;
(* #ret                                            #! PC = 0x274877984844 *)
#ret                                            #! 0x274877984844 = 0x274877984844;
(* ldr	x30, [x29, #8]                              #! EA = L0x4000829958; Value = 0x000e00400000aad0; PC = 0x274877984616 *)
mov x30 L0x4000829958;
(* ldp	x19, x20, [x29, #16]                        #! EA = L0x4000829960; Value = 0x0000004000016928; PC = 0x274877984620 *)
mov x19 L0x4000829960;
mov x20 L0x4000829968;
(* ldp	x21, x22, [x29, #32]                        #! EA = L0x4000829970; Value = 0x0000004000829df8; PC = 0x274877984624 *)
mov x21 L0x4000829970;
mov x22 L0x4000829978;
(* ldp	x23, x24, [x29, #48]                        #! EA = L0x4000829980; Value = 0x0000004000829c88; PC = 0x274877984628 *)
mov x23 L0x4000829980;
mov x24 L0x4000829988;
(* ldr	x29, [sp], #64                              #! EA = L0x4000829950; Value = 0x0000004000829990; PC = 0x274877984632 *)
mov x29 L0x4000829950;
(* #autiasp                                         #! PC = 0x274877984636 *)
#autiasp                                         #! 0x274877984636 = 0x274877984636;
(* #ret                                            #! PC = 0x274877984640 *)
#ret                                            #! 0x274877984640 = 0x274877984640;

(* sub_fp2x2(ret[1], ret[1], t0) *)

assert true
    && and [eqmod (limbs 64 [L0x4000829e58, L0x4000829e60, L0x4000829e68,
                             L0x4000829e70, L0x4000829e78, L0x4000829e80,
                             L0x4000829e88, L0x4000829e90, L0x4000829e98,
                             L0x4000829ea0, L0x4000829ea8, L0x4000829eb0] +
                   limbs 64 [L0x4000829b08, L0x4000829b10, L0x4000829b18,
                             L0x4000829b20, L0x4000829b28, L0x4000829b30,
                             L0x4000829b38, L0x4000829b40, L0x4000829b48,
                             L0x4000829b50, L0x4000829b58, L0x4000829b60])
                  (limbs 64 [L0x4000829e58p, L0x4000829e60p, L0x4000829e68p,
                             L0x4000829e70p, L0x4000829e78p, L0x4000829e80p,
                             L0x4000829e88p, L0x4000829e90p, L0x4000829e98p,
                             L0x4000829ea0p, L0x4000829ea8p, L0x4000829eb0p])
                  (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                               m0,   m1,   m2,   m3,   m4,   m5]),
            eqmod (limbs 64 [L0x4000829eb8, L0x4000829ec0, L0x4000829ec8,
                             L0x4000829ed0, L0x4000829ed8, L0x4000829ee0,
                             L0x4000829ee8, L0x4000829ef0, L0x4000829ef8,
                             L0x4000829f00, L0x4000829f08, L0x4000829f10] +
                   limbs 64 [L0x4000829b68, L0x4000829b70, L0x4000829b78,
                             L0x4000829b80, L0x4000829b88, L0x4000829b90,
                             L0x4000829b98, L0x4000829ba0, L0x4000829ba8,
                             L0x4000829bb0, L0x4000829bb8, L0x4000829bc0])
                  (limbs 64 [L0x4000829eb8q, L0x4000829ec0q, L0x4000829ec8q,
                             L0x4000829ed0q, L0x4000829ed8q, L0x4000829ee0q,
                             L0x4000829ee8q, L0x4000829ef0q, L0x4000829ef8q,
                             L0x4000829f00q, L0x4000829f08q, L0x4000829f10q])
                  (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                               m0,   m1,   m2,   m3,   m4,   m5])
       ];

assume and [eqmod (limbs 64 [L0x4000829e58, L0x4000829e60, L0x4000829e68,
                             L0x4000829e70, L0x4000829e78, L0x4000829e80,
                             L0x4000829e88, L0x4000829e90, L0x4000829e98,
                             L0x4000829ea0, L0x4000829ea8, L0x4000829eb0] +
                   limbs 64 [L0x4000829b08, L0x4000829b10, L0x4000829b18,
                             L0x4000829b20, L0x4000829b28, L0x4000829b30,
                             L0x4000829b38, L0x4000829b40, L0x4000829b48,
                             L0x4000829b50, L0x4000829b58, L0x4000829b60])
                  (limbs 64 [L0x4000829e58p, L0x4000829e60p, L0x4000829e68p,
                             L0x4000829e70p, L0x4000829e78p, L0x4000829e80p,
                             L0x4000829e88p, L0x4000829e90p, L0x4000829e98p,
                             L0x4000829ea0p, L0x4000829ea8p, L0x4000829eb0p])
                  (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5]),
            eqmod (limbs 64 [L0x4000829eb8, L0x4000829ec0, L0x4000829ec8,
                             L0x4000829ed0, L0x4000829ed8, L0x4000829ee0,
                             L0x4000829ee8, L0x4000829ef0, L0x4000829ef8,
                             L0x4000829f00, L0x4000829f08, L0x4000829f10] +
                   limbs 64 [L0x4000829b68, L0x4000829b70, L0x4000829b78,
                             L0x4000829b80, L0x4000829b88, L0x4000829b90,
                             L0x4000829b98, L0x4000829ba0, L0x4000829ba8,
                             L0x4000829bb0, L0x4000829bb8, L0x4000829bc0])
                  (limbs 64 [L0x4000829eb8q, L0x4000829ec0q, L0x4000829ec8q,
                             L0x4000829ed0q, L0x4000829ed8q, L0x4000829ee0q,
                             L0x4000829ee8q, L0x4000829ef0q, L0x4000829ef8q,
                             L0x4000829f00q, L0x4000829f08q, L0x4000829f10q])
                  (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5])
       ]
    && true;

(* mov	x3, x19                                     #! PC = 0x274877950672 *)
mov x3 x19;
(* mov	x2, x28                                     #! PC = 0x274877950676 *)
mov x2 x28;
(* mov	x1, x22                                     #! PC = 0x274877950680 *)
mov x1 x22;
(* mov	x0, x22                                     #! PC = 0x274877950684 *)
mov x0 x22;
(* #bl	0x4000012f40 <sub_mod_384x384>              #! PC = 0x274877950688 *)
#bl	0x4000012f40 <sub_mod_384x384>              #! 0x274877950688 = 0x274877950688;
(* #paciasp                                         #! PC = 0x274877984576 *)
#paciasp                                         #! 0x274877984576 = 0x274877984576;

rcut and [limbs 64 [L0x4000829e88, L0x4000829e90, L0x4000829e98,
                    L0x4000829ea0, L0x4000829ea8, L0x4000829eb0] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829ee8, L0x4000829ef0, L0x4000829ef8,
                    L0x4000829f00, L0x4000829f08, L0x4000829f10] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829bf8, L0x4000829c00, L0x4000829c08,
                    L0x4000829c10, L0x4000829c18, L0x4000829c20] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829c58, L0x4000829c60, L0x4000829c68,
                    L0x4000829c70, L0x4000829c78, L0x4000829c80] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
          m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
          m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64
     ] prove with all cuts, precondition;

ghost L0x4000829e58r@uint64, L0x4000829e60r@uint64, L0x4000829e68r@uint64,
      L0x4000829e70r@uint64, L0x4000829e78r@uint64, L0x4000829e80r@uint64,
      L0x4000829e88r@uint64, L0x4000829e90r@uint64, L0x4000829e98r@uint64,
      L0x4000829ea0r@uint64, L0x4000829ea8r@uint64, L0x4000829eb0r@uint64,
      L0x4000829eb8r@uint64, L0x4000829ec0r@uint64, L0x4000829ec8r@uint64,
      L0x4000829ed0r@uint64, L0x4000829ed8r@uint64, L0x4000829ee0r@uint64,
      L0x4000829ee8r@uint64, L0x4000829ef0r@uint64, L0x4000829ef8r@uint64,
      L0x4000829f00r@uint64, L0x4000829f08r@uint64, L0x4000829f10r@uint64 :
      and [L0x4000829e58r=L0x4000829e58, L0x4000829e60r=L0x4000829e60,
           L0x4000829e68r=L0x4000829e68, L0x4000829e70r=L0x4000829e70,
           L0x4000829e78r=L0x4000829e78, L0x4000829e80r=L0x4000829e80,
           L0x4000829e88r=L0x4000829e88, L0x4000829e90r=L0x4000829e90,
           L0x4000829e98r=L0x4000829e98, L0x4000829ea0r=L0x4000829ea0,
           L0x4000829ea8r=L0x4000829ea8, L0x4000829eb0r=L0x4000829eb0,
           L0x4000829eb8r=L0x4000829eb8, L0x4000829ec0r=L0x4000829ec0,
           L0x4000829ec8r=L0x4000829ec8, L0x4000829ed0r=L0x4000829ed0,
           L0x4000829ed8r=L0x4000829ed8, L0x4000829ee0r=L0x4000829ee0,
           L0x4000829ee8r=L0x4000829ee8, L0x4000829ef0r=L0x4000829ef0,
           L0x4000829ef8r=L0x4000829ef8, L0x4000829f00r=L0x4000829f00,
           L0x4000829f08r=L0x4000829f08, L0x4000829f10r=L0x4000829f10]
   && and [L0x4000829e58r=L0x4000829e58, L0x4000829e60r=L0x4000829e60,
           L0x4000829e68r=L0x4000829e68, L0x4000829e70r=L0x4000829e70,
           L0x4000829e78r=L0x4000829e78, L0x4000829e80r=L0x4000829e80,
           L0x4000829e88r=L0x4000829e88, L0x4000829e90r=L0x4000829e90,
           L0x4000829e98r=L0x4000829e98, L0x4000829ea0r=L0x4000829ea0,
           L0x4000829ea8r=L0x4000829ea8, L0x4000829eb0r=L0x4000829eb0,
           L0x4000829eb8r=L0x4000829eb8, L0x4000829ec0r=L0x4000829ec0,
           L0x4000829ec8r=L0x4000829ec8, L0x4000829ed0r=L0x4000829ed0,
           L0x4000829ed8r=L0x4000829ed8, L0x4000829ee0r=L0x4000829ee0,
           L0x4000829ee8r=L0x4000829ee8, L0x4000829ef0r=L0x4000829ef0,
           L0x4000829ef8r=L0x4000829ef8, L0x4000829f00r=L0x4000829f00,
           L0x4000829f08r=L0x4000829f08, L0x4000829f10r=L0x4000829f10];

(* stp	x29, x30, [sp, #-64]!                       #! EA = L0x4000829950; PC = 0x274877984580 *)
mov L0x4000829950 x29;
mov L0x4000829958 x30;
(* mov	x29, sp                                     #! PC = 0x274877984584 *)
mov x29 sp;
(* stp	x19, x20, [sp, #16]                         #! EA = L0x4000829960; PC = 0x274877984588 *)
mov L0x4000829960 x19;
mov L0x4000829968 x20;
(* stp	x21, x22, [sp, #32]                         #! EA = L0x4000829970; PC = 0x274877984592 *)
mov L0x4000829970 x21;
mov L0x4000829978 x22;
(* stp	x23, x24, [sp, #48]                         #! EA = L0x4000829980; PC = 0x274877984596 *)
mov L0x4000829980 x23;
mov L0x4000829988 x24;
(* ldp	x5, x6, [x3]                                #! EA = L0x4000016928; Value = 0xb9feffffffffaaab; PC = 0x274877984600 *)
mov x5 L0x4000016928;
mov x6 L0x4000016930;
(* ldp	x7, x8, [x3, #16]                           #! EA = L0x4000016938; Value = 0x6730d2a0f6b0f624; PC = 0x274877984604 *)
mov x7 L0x4000016938;
mov x8 L0x4000016940;
(* ldp	x9, x10, [x3, #32]                          #! EA = L0x4000016948; Value = 0x4b1ba7b6434bacd7; PC = 0x274877984608 *)
mov x9 L0x4000016948;
mov x10 L0x4000016950;
(* #bl	0x4000012fa0 <__sub_mod_384x384>            #! PC = 0x274877984612 *)
#bl	0x4000012fa0 <__sub_mod_384x384>            #! 0x274877984612 = 0x274877984612;
(* ldp	x11, x12, [x1]                              #! EA = L0x4000829e58; Value = 0x58b12206d4e60000; PC = 0x274877984672 *)
mov x11 L0x4000829e58;
mov x12 L0x4000829e60;
(* ldp	x19, x20, [x2]                              #! EA = L0x4000829bc8; Value = 0xde8c000000000000; PC = 0x274877984676 *)
mov x19 L0x4000829bc8;
mov x20 L0x4000829bd0;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829e68; Value = 0x899499e2aef7122b; PC = 0x274877984680 *)
mov x13 L0x4000829e68;
mov x14 L0x4000829e70;
(* subs	x11, x11, x19                              #! PC = 0x274877984684 *)
subc carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x4000829bd8; Value = 0x7a1bbdc054180c5e; PC = 0x274877984688 *)
mov x21 L0x4000829bd8;
mov x22 L0x4000829be0;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984692 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829e78; Value = 0x082f65b3ec0819a3; PC = 0x274877984696 *)
mov x15 L0x4000829e78;
mov x16 L0x4000829e80;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984700 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x4000829be8; Value = 0xabfafe98a7fa10f6; PC = 0x274877984704 *)
mov x23 L0x4000829be8;
mov x24 L0x4000829bf0;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984708 *)
sbcs carry x14 x14 x22 carry;
(* stp	x11, x12, [x0]                              #! EA = L0x4000829e58; PC = 0x274877984712 *)
mov L0x4000829e58 x11;
mov L0x4000829e60 x12;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984716 *)
sbcs carry x15 x15 x23 carry;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0x4000829e88; Value = 0x7bded4d7a728df9d; PC = 0x274877984720 *)
mov x11 L0x4000829e88;
mov x12 L0x4000829e90;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984724 *)
sbcs carry x16 x16 x24 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x4000829bf8; Value = 0x5fe26534850ac206; PC = 0x274877984728 *)
mov x19 L0x4000829bf8;
mov x20 L0x4000829c00;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x4000829e68; PC = 0x274877984732 *)
mov L0x4000829e68 x13;
mov L0x4000829e70 x14;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0x4000829e98; Value = 0x6a41c58b42e3afcd; PC = 0x274877984736 *)
mov x13 L0x4000829e98;
mov x14 L0x4000829ea0;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x4000829c08; Value = 0x1681664ed2569f1a; PC = 0x274877984740 *)
mov x21 L0x4000829c08;
mov x22 L0x4000829c10;
(* sbcs	x11, x11, x19                              #! PC = 0x274877984744 *)
sbcs carry x11 x11 x19 carry;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x4000829e78; PC = 0x274877984748 *)
mov L0x4000829e78 x15;
mov L0x4000829e80 x16;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984752 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #80]                         #! EA = L0x4000829ea8; Value = 0x08e8200341dd31dd; PC = 0x274877984756 *)
mov x15 L0x4000829ea8;
mov x16 L0x4000829eb0;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984760 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x4000829c18; Value = 0x4b1ba6f6434b7cd5; PC = 0x274877984764 *)
mov x23 L0x4000829c18;
mov x24 L0x4000829c20;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984768 *)
sbcs carry x14 x14 x22 carry;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984772 *)
sbcs carry x15 x15 x23 carry;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984776 *)
sbcs carry x16 x16 x24 carry;
(* ngc	x17, xzr                                    #! PC = 0x274877984780 *)
cmov x17 carry 0@uint64 0xffffffffffffffff@uint64;
(* and	x19, x5, x17                                #! PC = 0x274877984784 *)
and x19@uint64 x5 x17;
(* and	x20, x6, x17                                #! PC = 0x274877984788 *)
and x20@uint64 x6 x17;
(* adds	x11, x11, x19                              #! PC = 0x274877984792 *)
adds carry x11 x11 x19;
(* and	x21, x7, x17                                #! PC = 0x274877984796 *)
and x21@uint64 x7 x17;
(* adcs	x12, x12, x20                              #! PC = 0x274877984800 *)
adcs carry x12 x12 x20 carry;
(* and	x22, x8, x17                                #! PC = 0x274877984804 *)
and x22@uint64 x8 x17;
(* adcs	x13, x13, x21                              #! PC = 0x274877984808 *)
adcs carry x13 x13 x21 carry;
(* and	x23, x9, x17                                #! PC = 0x274877984812 *)
and x23@uint64 x9 x17;
(* adcs	x14, x14, x22                              #! PC = 0x274877984816 *)
adcs carry x14 x14 x22 carry;
(* and	x24, x10, x17                               #! PC = 0x274877984820 *)
and x24@uint64 x10 x17;
(* adcs	x15, x15, x23                              #! PC = 0x274877984824 *)
adcs carry x15 x15 x23 carry;
(* stp	x11, x12, [x0, #48]                         #! EA = L0x4000829e88; PC = 0x274877984828 *)
mov L0x4000829e88 x11;
mov L0x4000829e90 x12;
(* adc	x16, x16, x24                               #! PC = 0x274877984832 *)
adcs dontcare x16 x16 x24 carry;
(* stp	x13, x14, [x0, #64]                         #! EA = L0x4000829e98; PC = 0x274877984836 *)
mov L0x4000829e98 x13;
mov L0x4000829ea0 x14;
(* stp	x15, x16, [x0, #80]                         #! EA = L0x4000829ea8; PC = 0x274877984840 *)
mov L0x4000829ea8 x15;
mov L0x4000829eb0 x16;
(* #ret                                            #! PC = 0x274877984844 *)
#ret                                            #! 0x274877984844 = 0x274877984844;
(* ldr	x30, [x29, #8]                              #! EA = L0x4000829958; Value = 0x002d00400000aae4; PC = 0x274877984616 *)
mov x30 L0x4000829958;
(* ldp	x19, x20, [x29, #16]                        #! EA = L0x4000829960; Value = 0x0000004000016928; PC = 0x274877984620 *)
mov x19 L0x4000829960;
mov x20 L0x4000829968;
(* ldp	x21, x22, [x29, #32]                        #! EA = L0x4000829970; Value = 0x0000004000829df8; PC = 0x274877984624 *)
mov x21 L0x4000829970;
mov x22 L0x4000829978;
(* ldp	x23, x24, [x29, #48]                        #! EA = L0x4000829980; Value = 0x0000004000829c88; PC = 0x274877984628 *)
mov x23 L0x4000829980;
mov x24 L0x4000829988;
(* ldr	x29, [sp], #64                              #! EA = L0x4000829950; Value = 0x0000004000829990; PC = 0x274877984632 *)
mov x29 L0x4000829950;
(* #autiasp                                         #! PC = 0x274877984636 *)
#autiasp                                         #! 0x274877984636 = 0x274877984636;
(* #ret                                            #! PC = 0x274877984640 *)
#ret                                            #! 0x274877984640 = 0x274877984640;
(* mov	x3, x19                                     #! PC = 0x274877950692 *)
mov x3 x19;
(* ldr	x2, [sp, #120]                              #! EA = L0x4000829a08; Value = 0x0000004000829c28; PC = 0x274877950696 *)
mov x2 L0x4000829a08;
(* mov	x1, x26                                     #! PC = 0x274877950700 *)
mov x1 x26;
(* mov	x0, x26                                     #! PC = 0x274877950704 *)
mov x0 x26;
(* #bl	0x4000012f40 <sub_mod_384x384>              #! PC = 0x274877950708 *)
#bl	0x4000012f40 <sub_mod_384x384>              #! 0x274877950708 = 0x274877950708;
(* #paciasp                                         #! PC = 0x274877984576 *)
#paciasp                                         #! 0x274877984576 = 0x274877984576;
(* stp	x29, x30, [sp, #-64]!                       #! EA = L0x4000829950; PC = 0x274877984580 *)
mov L0x4000829950 x29;
mov L0x4000829958 x30;
(* mov	x29, sp                                     #! PC = 0x274877984584 *)
mov x29 sp;
(* stp	x19, x20, [sp, #16]                         #! EA = L0x4000829960; PC = 0x274877984588 *)
mov L0x4000829960 x19;
mov L0x4000829968 x20;
(* stp	x21, x22, [sp, #32]                         #! EA = L0x4000829970; PC = 0x274877984592 *)
mov L0x4000829970 x21;
mov L0x4000829978 x22;
(* stp	x23, x24, [sp, #48]                         #! EA = L0x4000829980; PC = 0x274877984596 *)
mov L0x4000829980 x23;
mov L0x4000829988 x24;
(* ldp	x5, x6, [x3]                                #! EA = L0x4000016928; Value = 0xb9feffffffffaaab; PC = 0x274877984600 *)
mov x5 L0x4000016928;
mov x6 L0x4000016930;
(* ldp	x7, x8, [x3, #16]                           #! EA = L0x4000016938; Value = 0x6730d2a0f6b0f624; PC = 0x274877984604 *)
mov x7 L0x4000016938;
mov x8 L0x4000016940;
(* ldp	x9, x10, [x3, #32]                          #! EA = L0x4000016948; Value = 0x4b1ba7b6434bacd7; PC = 0x274877984608 *)
mov x9 L0x4000016948;
mov x10 L0x4000016950;
(* #bl	0x4000012fa0 <__sub_mod_384x384>            #! PC = 0x274877984612 *)
#bl	0x4000012fa0 <__sub_mod_384x384>            #! 0x274877984612 = 0x274877984612;
(* ldp	x11, x12, [x1]                              #! EA = L0x4000829eb8; Value = 0xb45fa262003ff000; PC = 0x274877984672 *)
mov x11 L0x4000829eb8;
mov x12 L0x4000829ec0;
(* ldp	x19, x20, [x2]                              #! EA = L0x4000829c28; Value = 0x0000000000000000; PC = 0x274877984676 *)
mov x19 L0x4000829c28;
mov x20 L0x4000829c30;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829ec8; Value = 0x3775de88bb140010; PC = 0x274877984680 *)
mov x13 L0x4000829ec8;
mov x14 L0x4000829ed0;
(* subs	x11, x11, x19                              #! PC = 0x274877984684 *)
subc carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x4000829c38; Value = 0x0000000000000000; PC = 0x274877984688 *)
mov x21 L0x4000829c38;
mov x22 L0x4000829c40;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984692 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829ed8; Value = 0xf9d2e415095291a8; PC = 0x274877984696 *)
mov x15 L0x4000829ed8;
mov x16 L0x4000829ee0;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984700 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x4000829c48; Value = 0xa5b75f691182b810; PC = 0x274877984704 *)
mov x23 L0x4000829c48;
mov x24 L0x4000829c50;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984708 *)
sbcs carry x14 x14 x22 carry;
(* stp	x11, x12, [x0]                              #! EA = L0x4000829eb8; PC = 0x274877984712 *)
mov L0x4000829eb8 x11;
mov L0x4000829ec0 x12;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984716 *)
sbcs carry x15 x15 x23 carry;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0x4000829ee8; Value = 0xa0915bef5d6a3204; PC = 0x274877984720 *)
mov x11 L0x4000829ee8;
mov x12 L0x4000829ef0;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984724 *)
sbcs carry x16 x16 x24 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x4000829c58; Value = 0x30e97a4437e7fa80; PC = 0x274877984728 *)
mov x19 L0x4000829c58;
mov x20 L0x4000829c60;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x4000829ec8; PC = 0x274877984732 *)
mov L0x4000829ec8 x13;
mov L0x4000829ed0 x14;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0x4000829ef8; Value = 0xe9d38232e814e599; PC = 0x274877984736 *)
mov x13 L0x4000829ef8;
mov x14 L0x4000829f00;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x4000829c68; Value = 0x2aca32e21865e811; PC = 0x274877984740 *)
mov x21 L0x4000829c68;
mov x22 L0x4000829c70;
(* sbcs	x11, x11, x19                              #! PC = 0x274877984744 *)
sbcs carry x11 x11 x19 carry;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x4000829ed8; PC = 0x274877984748 *)
mov L0x4000829ed8 x15;
mov L0x4000829ee0 x16;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984752 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #80]                         #! EA = L0x4000829f08; Value = 0x933a18f43a88634c; PC = 0x274877984756 *)
mov x15 L0x4000829f08;
mov x16 L0x4000829f10;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984760 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x4000829c78; Value = 0x0000000000003000; PC = 0x274877984764 *)
mov x23 L0x4000829c78;
mov x24 L0x4000829c80;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984768 *)
sbcs carry x14 x14 x22 carry;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984772 *)
sbcs carry x15 x15 x23 carry;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984776 *)
sbcs carry x16 x16 x24 carry;
(* ngc	x17, xzr                                    #! PC = 0x274877984780 *)
cmov x17 carry 0@uint64 0xffffffffffffffff@uint64;
(* and	x19, x5, x17                                #! PC = 0x274877984784 *)
and x19@uint64 x5 x17;
(* and	x20, x6, x17                                #! PC = 0x274877984788 *)
and x20@uint64 x6 x17;
(* adds	x11, x11, x19                              #! PC = 0x274877984792 *)
adds carry x11 x11 x19;
(* and	x21, x7, x17                                #! PC = 0x274877984796 *)
and x21@uint64 x7 x17;
(* adcs	x12, x12, x20                              #! PC = 0x274877984800 *)
adcs carry x12 x12 x20 carry;
(* and	x22, x8, x17                                #! PC = 0x274877984804 *)
and x22@uint64 x8 x17;
(* adcs	x13, x13, x21                              #! PC = 0x274877984808 *)
adcs carry x13 x13 x21 carry;
(* and	x23, x9, x17                                #! PC = 0x274877984812 *)
and x23@uint64 x9 x17;
(* adcs	x14, x14, x22                              #! PC = 0x274877984816 *)
adcs carry x14 x14 x22 carry;
(* and	x24, x10, x17                               #! PC = 0x274877984820 *)
and x24@uint64 x10 x17;
(* adcs	x15, x15, x23                              #! PC = 0x274877984824 *)
adcs carry x15 x15 x23 carry;
(* stp	x11, x12, [x0, #48]                         #! EA = L0x4000829ee8; PC = 0x274877984828 *)
mov L0x4000829ee8 x11;
mov L0x4000829ef0 x12;
(* adc	x16, x16, x24                               #! PC = 0x274877984832 *)
adcs dontcare x16 x16 x24 carry;
(* stp	x13, x14, [x0, #64]                         #! EA = L0x4000829ef8; PC = 0x274877984836 *)
mov L0x4000829ef8 x13;
mov L0x4000829f00 x14;
(* stp	x15, x16, [x0, #80]                         #! EA = L0x4000829f08; PC = 0x274877984840 *)
mov L0x4000829f08 x15;
mov L0x4000829f10 x16;
(* #ret                                            #! PC = 0x274877984844 *)
#ret                                            #! 0x274877984844 = 0x274877984844;
(* ldr	x30, [x29, #8]                              #! EA = L0x4000829958; Value = 0x006f00400000aaf8; PC = 0x274877984616 *)
mov x30 L0x4000829958;
(* ldp	x19, x20, [x29, #16]                        #! EA = L0x4000829960; Value = 0x0000004000016928; PC = 0x274877984620 *)
mov x19 L0x4000829960;
mov x20 L0x4000829968;
(* ldp	x21, x22, [x29, #32]                        #! EA = L0x4000829970; Value = 0x0000004000829df8; PC = 0x274877984624 *)
mov x21 L0x4000829970;
mov x22 L0x4000829978;
(* ldp	x23, x24, [x29, #48]                        #! EA = L0x4000829980; Value = 0x0000004000829c88; PC = 0x274877984628 *)
mov x23 L0x4000829980;
mov x24 L0x4000829988;
(* ldr	x29, [sp], #64                              #! EA = L0x4000829950; Value = 0x0000004000829990; PC = 0x274877984632 *)
mov x29 L0x4000829950;
(* #autiasp                                         #! PC = 0x274877984636 *)
#autiasp                                         #! 0x274877984636 = 0x274877984636;
(* #ret                                            #! PC = 0x274877984640 *)
#ret                                            #! 0x274877984640 = 0x274877984640;

(* sub_fp2x2(ret[1], ret[1], t1) *)

assert true
    && and [eqmod (limbs 64 [L0x4000829e58, L0x4000829e60, L0x4000829e68,
                             L0x4000829e70, L0x4000829e78, L0x4000829e80,
                             L0x4000829e88, L0x4000829e90, L0x4000829e98,
                             L0x4000829ea0, L0x4000829ea8, L0x4000829eb0] +
                   limbs 64 [L0x4000829bc8, L0x4000829bd0, L0x4000829bd8,
                             L0x4000829be0, L0x4000829be8, L0x4000829bf0,
                             L0x4000829bf8, L0x4000829c00, L0x4000829c08,
                             L0x4000829c10, L0x4000829c18, L0x4000829c20])
                  (limbs 64 [L0x4000829e58r, L0x4000829e60r, L0x4000829e68r,
                             L0x4000829e70r, L0x4000829e78r, L0x4000829e80r,
                             L0x4000829e88r, L0x4000829e90r, L0x4000829e98r,
                             L0x4000829ea0r, L0x4000829ea8r, L0x4000829eb0r])
                  (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                               m0,   m1,   m2,   m3,   m4,   m5]),
            eqmod (limbs 64 [L0x4000829eb8, L0x4000829ec0, L0x4000829ec8,
                             L0x4000829ed0, L0x4000829ed8, L0x4000829ee0,
                             L0x4000829ee8, L0x4000829ef0, L0x4000829ef8,
                             L0x4000829f00, L0x4000829f08, L0x4000829f10] +
                   limbs 64 [L0x4000829c28, L0x4000829c30, L0x4000829c38,
                             L0x4000829c40, L0x4000829c48, L0x4000829c50,
                             L0x4000829c58, L0x4000829c60, L0x4000829c68,
                             L0x4000829c70, L0x4000829c78, L0x4000829c80])
                  (limbs 64 [L0x4000829eb8r, L0x4000829ec0r, L0x4000829ec8r,
                             L0x4000829ed0r, L0x4000829ed8r, L0x4000829ee0r,
                             L0x4000829ee8r, L0x4000829ef0r, L0x4000829ef8r,
                             L0x4000829f00r, L0x4000829f08r, L0x4000829f10r])
                  (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                               m0,   m1,   m2,   m3,   m4,   m5])
       ];

assume and [eqmod (limbs 64 [L0x4000829e58, L0x4000829e60, L0x4000829e68,
                             L0x4000829e70, L0x4000829e78, L0x4000829e80,
                             L0x4000829e88, L0x4000829e90, L0x4000829e98,
                             L0x4000829ea0, L0x4000829ea8, L0x4000829eb0] +
                   limbs 64 [L0x4000829bc8, L0x4000829bd0, L0x4000829bd8,
                             L0x4000829be0, L0x4000829be8, L0x4000829bf0,
                             L0x4000829bf8, L0x4000829c00, L0x4000829c08,
                             L0x4000829c10, L0x4000829c18, L0x4000829c20])
                  (limbs 64 [L0x4000829e58r, L0x4000829e60r, L0x4000829e68r,
                             L0x4000829e70r, L0x4000829e78r, L0x4000829e80r,
                             L0x4000829e88r, L0x4000829e90r, L0x4000829e98r,
                             L0x4000829ea0r, L0x4000829ea8r, L0x4000829eb0r])
                  (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5]),
            eqmod (limbs 64 [L0x4000829eb8, L0x4000829ec0, L0x4000829ec8,
                             L0x4000829ed0, L0x4000829ed8, L0x4000829ee0,
                             L0x4000829ee8, L0x4000829ef0, L0x4000829ef8,
                             L0x4000829f00, L0x4000829f08, L0x4000829f10] +
                   limbs 64 [L0x4000829c28, L0x4000829c30, L0x4000829c38,
                             L0x4000829c40, L0x4000829c48, L0x4000829c50,
                             L0x4000829c58, L0x4000829c60, L0x4000829c68,
                             L0x4000829c70, L0x4000829c78, L0x4000829c80])
                  (limbs 64 [L0x4000829eb8r, L0x4000829ec0r, L0x4000829ec8r,
                             L0x4000829ed0r, L0x4000829ed8r, L0x4000829ee0r,
                             L0x4000829ee8r, L0x4000829ef0r, L0x4000829ef8r,
                             L0x4000829f00r, L0x4000829f08r, L0x4000829f10r])
                  (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5])
       ]
    && true;


(* add	x21, x20, #0x180                            #! PC = 0x274877950712 *)
adds dontcare x21 x20 0x180@uint64;
(* mov	x3, x19                                     #! PC = 0x274877950716 *)
mov x3 x19;
(* ldr	x2, [sp, #96]                               #! EA = L0x40008299f0; Value = 0x0000004000829ce8; PC = 0x274877950720 *)
mov x2 L0x40008299f0;
(* mov	x1, x23                                     #! PC = 0x274877950724 *)
mov x1 x23;
(* mov	x0, x21                                     #! PC = 0x274877950728 *)
mov x0 x21;
(* #bl	0x4000012f40 <sub_mod_384x384>              #! PC = 0x274877950732 *)
#bl	0x4000012f40 <sub_mod_384x384>              #! 0x274877950732 = 0x274877950732;
(* #paciasp                                         #! PC = 0x274877984576 *)
#paciasp                                         #! 0x274877984576 = 0x274877984576;

rcut and [limbs 64 [L0x4000829cb8, L0x4000829cc0, L0x4000829cc8,
                    L0x4000829cd0, L0x4000829cd8, L0x4000829ce0] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829d18, L0x4000829d20, L0x4000829d28,
                    L0x4000829d30, L0x4000829d38, L0x4000829d40] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829e88, L0x4000829e90, L0x4000829e98,
                    L0x4000829ea0, L0x4000829ea8, L0x4000829eb0] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829ee8, L0x4000829ef0, L0x4000829ef8,
                    L0x4000829f00, L0x4000829f08, L0x4000829f10] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
          m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
          m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64
     ] prove with all cuts, precondition;

(* stp	x29, x30, [sp, #-64]!                       #! EA = L0x4000829950; PC = 0x274877984580 *)
mov L0x4000829950 x29;
mov L0x4000829958 x30;
(* mov	x29, sp                                     #! PC = 0x274877984584 *)
mov x29 sp;
(* stp	x19, x20, [sp, #16]                         #! EA = L0x4000829960; PC = 0x274877984588 *)
mov L0x4000829960 x19;
mov L0x4000829968 x20;
(* stp	x21, x22, [sp, #32]                         #! EA = L0x4000829970; PC = 0x274877984592 *)
mov L0x4000829970 x21;
mov L0x4000829978 x22;
(* stp	x23, x24, [sp, #48]                         #! EA = L0x4000829980; PC = 0x274877984596 *)
mov L0x4000829980 x23;
mov L0x4000829988 x24;
(* ldp	x5, x6, [x3]                                #! EA = L0x4000016928; Value = 0xb9feffffffffaaab; PC = 0x274877984600 *)
mov x5 L0x4000016928;
mov x6 L0x4000016930;
(* ldp	x7, x8, [x3, #16]                           #! EA = L0x4000016938; Value = 0x6730d2a0f6b0f624; PC = 0x274877984604 *)
mov x7 L0x4000016938;
mov x8 L0x4000016940;
(* ldp	x9, x10, [x3, #32]                          #! EA = L0x4000016948; Value = 0x4b1ba7b6434bacd7; PC = 0x274877984608 *)
mov x9 L0x4000016948;
mov x10 L0x4000016950;
(* #bl	0x4000012fa0 <__sub_mod_384x384>            #! PC = 0x274877984612 *)
#bl	0x4000012fa0 <__sub_mod_384x384>            #! 0x274877984612 = 0x274877984612;
(* ldp	x11, x12, [x1]                              #! EA = L0x4000829c88; Value = 0xbf7e5d09780cb200; PC = 0x274877984672 *)
mov x11 L0x4000829c88;
mov x12 L0x4000829c90;
(* ldp	x19, x20, [x2]                              #! EA = L0x4000829ce8; Value = 0xc73bbcb7f54de580; PC = 0x274877984676 *)
mov x19 L0x4000829ce8;
mov x20 L0x4000829cf0;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829c98; Value = 0x5ce62a1ce1098e3f; PC = 0x274877984680 *)
mov x13 L0x4000829c98;
mov x14 L0x4000829ca0;
(* subs	x11, x11, x19                              #! PC = 0x274877984684 *)
subc carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x4000829cf8; Value = 0x293deebfffea2401; PC = 0x274877984688 *)
mov x21 L0x4000829cf8;
mov x22 L0x4000829d00;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984692 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829ca8; Value = 0x9e46be45859c8f1f; PC = 0x274877984696 *)
mov x15 L0x4000829ca8;
mov x16 L0x4000829cb0;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984700 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x4000829d08; Value = 0xf05ac0a9b838b7e1; PC = 0x274877984704 *)
mov x23 L0x4000829d08;
mov x24 L0x4000829d10;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984708 *)
sbcs carry x14 x14 x22 carry;
(* stp	x11, x12, [x0]                              #! EA = L0x4000829f18; PC = 0x274877984712 *)
mov L0x4000829f18 x11;
mov L0x4000829f20 x12;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984716 *)
sbcs carry x15 x15 x23 carry;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0x4000829cb8; Value = 0x9923a6debee0eac0; PC = 0x274877984720 *)
mov x11 L0x4000829cb8;
mov x12 L0x4000829cc0;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984724 *)
sbcs carry x16 x16 x24 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x4000829d18; Value = 0x2941fad56ff9c9f1; PC = 0x274877984728 *)
mov x19 L0x4000829d18;
mov x20 L0x4000829d20;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x4000829f28; PC = 0x274877984732 *)
mov L0x4000829f28 x13;
mov L0x4000829f30 x14;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0x4000829cc8; Value = 0xa8efc16e4f1da713; PC = 0x274877984736 *)
mov x13 L0x4000829cc8;
mov x14 L0x4000829cd0;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x4000829d28; Value = 0xc6bfe47aaf5d5198; PC = 0x274877984740 *)
mov x21 L0x4000829d28;
mov x22 L0x4000829d30;
(* sbcs	x11, x11, x19                              #! PC = 0x274877984744 *)
sbcs carry x11 x11 x19 carry;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x4000829f38; PC = 0x274877984748 *)
mov L0x4000829f38 x15;
mov L0x4000829f40 x16;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984752 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #80]                         #! EA = L0x4000829cd8; Value = 0x4b1ba77642c5c25f; PC = 0x274877984756 *)
mov x15 L0x4000829cd8;
mov x16 L0x4000829ce0;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984760 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x4000829d38; Value = 0x00000040008303a0; PC = 0x274877984764 *)
mov x23 L0x4000829d38;
mov x24 L0x4000829d40;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984768 *)
sbcs carry x14 x14 x22 carry;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984772 *)
sbcs carry x15 x15 x23 carry;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984776 *)
sbcs carry x16 x16 x24 carry;
(* ngc	x17, xzr                                    #! PC = 0x274877984780 *)
cmov x17 carry 0@uint64 0xffffffffffffffff@uint64;
(* and	x19, x5, x17                                #! PC = 0x274877984784 *)
and x19@uint64 x5 x17;
(* and	x20, x6, x17                                #! PC = 0x274877984788 *)
and x20@uint64 x6 x17;
(* adds	x11, x11, x19                              #! PC = 0x274877984792 *)
adds carry x11 x11 x19;
(* and	x21, x7, x17                                #! PC = 0x274877984796 *)
and x21@uint64 x7 x17;
(* adcs	x12, x12, x20                              #! PC = 0x274877984800 *)
adcs carry x12 x12 x20 carry;
(* and	x22, x8, x17                                #! PC = 0x274877984804 *)
and x22@uint64 x8 x17;
(* adcs	x13, x13, x21                              #! PC = 0x274877984808 *)
adcs carry x13 x13 x21 carry;
(* and	x23, x9, x17                                #! PC = 0x274877984812 *)
and x23@uint64 x9 x17;
(* adcs	x14, x14, x22                              #! PC = 0x274877984816 *)
adcs carry x14 x14 x22 carry;
(* and	x24, x10, x17                               #! PC = 0x274877984820 *)
and x24@uint64 x10 x17;
(* adcs	x15, x15, x23                              #! PC = 0x274877984824 *)
adcs carry x15 x15 x23 carry;
(* stp	x11, x12, [x0, #48]                         #! EA = L0x4000829f48; PC = 0x274877984828 *)
mov L0x4000829f48 x11;
mov L0x4000829f50 x12;
(* adc	x16, x16, x24                               #! PC = 0x274877984832 *)
adcs dontcare x16 x16 x24 carry;
(* stp	x13, x14, [x0, #64]                         #! EA = L0x4000829f58; PC = 0x274877984836 *)
mov L0x4000829f58 x13;
mov L0x4000829f60 x14;
(* stp	x15, x16, [x0, #80]                         #! EA = L0x4000829f68; PC = 0x274877984840 *)
mov L0x4000829f68 x15;
mov L0x4000829f70 x16;
(* #ret                                            #! PC = 0x274877984844 *)
#ret                                            #! 0x274877984844 = 0x274877984844;
(* ldr	x30, [x29, #8]                              #! EA = L0x4000829958; Value = 0x000800400000ab10; PC = 0x274877984616 *)
mov x30 L0x4000829958;
(* ldp	x19, x20, [x29, #16]                        #! EA = L0x4000829960; Value = 0x0000004000016928; PC = 0x274877984620 *)
mov x19 L0x4000829960;
mov x20 L0x4000829968;
(* ldp	x21, x22, [x29, #32]                        #! EA = L0x4000829970; Value = 0x0000004000829f18; PC = 0x274877984624 *)
mov x21 L0x4000829970;
mov x22 L0x4000829978;
(* ldp	x23, x24, [x29, #48]                        #! EA = L0x4000829980; Value = 0x0000004000829c88; PC = 0x274877984628 *)
mov x23 L0x4000829980;
mov x24 L0x4000829988;
(* ldr	x29, [sp], #64                              #! EA = L0x4000829950; Value = 0x0000004000829990; PC = 0x274877984632 *)
mov x29 L0x4000829950;
(* #autiasp                                         #! PC = 0x274877984636 *)
#autiasp                                         #! 0x274877984636 = 0x274877984636;
(* #ret                                            #! PC = 0x274877984640 *)
#ret                                            #! 0x274877984640 = 0x274877984640;
(* add	x20, x20, #0x1e0                            #! PC = 0x274877950736 *)
adds dontcare x20 x20 0x1e0@uint64;
(* mov	x3, x19                                     #! PC = 0x274877950740 *)
mov x3 x19;
(* ldr	x2, [sp, #96]                               #! EA = L0x40008299f0; Value = 0x0000004000829ce8; PC = 0x274877950744 *)
mov x2 L0x40008299f0;
(* mov	x1, x23                                     #! PC = 0x274877950748 *)
mov x1 x23;
(* mov	x0, x20                                     #! PC = 0x274877950752 *)
mov x0 x20;
(* #bl	0x4000012e20 <add_mod_384x384>              #! PC = 0x274877950756 *)
#bl	0x4000012e20 <add_mod_384x384>              #! 0x274877950756 = 0x274877950756;
(* #paciasp                                         #! PC = 0x274877984288 *)
#paciasp                                         #! 0x274877984288 = 0x274877984288;
(* stp	x29, x30, [sp, #-64]!                       #! EA = L0x4000829950; PC = 0x274877984292 *)
mov L0x4000829950 x29;
mov L0x4000829958 x30;
(* mov	x29, sp                                     #! PC = 0x274877984296 *)
mov x29 sp;
(* stp	x19, x20, [sp, #16]                         #! EA = L0x4000829960; PC = 0x274877984300 *)
mov L0x4000829960 x19;
mov L0x4000829968 x20;
(* stp	x21, x22, [sp, #32]                         #! EA = L0x4000829970; PC = 0x274877984304 *)
mov L0x4000829970 x21;
mov L0x4000829978 x22;
(* stp	x23, x24, [sp, #48]                         #! EA = L0x4000829980; PC = 0x274877984308 *)
mov L0x4000829980 x23;
mov L0x4000829988 x24;
(* ldp	x5, x6, [x3]                                #! EA = L0x4000016928; Value = 0xb9feffffffffaaab; PC = 0x274877984312 *)
mov x5 L0x4000016928;
mov x6 L0x4000016930;
(* ldp	x7, x8, [x3, #16]                           #! EA = L0x4000016938; Value = 0x6730d2a0f6b0f624; PC = 0x274877984316 *)
mov x7 L0x4000016938;
mov x8 L0x4000016940;
(* ldp	x9, x10, [x3, #32]                          #! EA = L0x4000016948; Value = 0x4b1ba7b6434bacd7; PC = 0x274877984320 *)
mov x9 L0x4000016948;
mov x10 L0x4000016950;
(* #bl	0x4000012e80 <__add_mod_384x384>            #! PC = 0x274877984324 *)
#bl	0x4000012e80 <__add_mod_384x384>            #! 0x274877984324 = 0x274877984324;
(* ldp	x11, x12, [x1]                              #! EA = L0x4000829c88; Value = 0xbf7e5d09780cb200; PC = 0x274877984384 *)
mov x11 L0x4000829c88;
mov x12 L0x4000829c90;
(* ldp	x19, x20, [x2]                              #! EA = L0x4000829ce8; Value = 0xc73bbcb7f54de580; PC = 0x274877984388 *)
mov x19 L0x4000829ce8;
mov x20 L0x4000829cf0;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829c98; Value = 0x5ce62a1ce1098e3f; PC = 0x274877984392 *)
mov x13 L0x4000829c98;
mov x14 L0x4000829ca0;
(* adds	x11, x11, x19                              #! PC = 0x274877984396 *)
adds carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x4000829cf8; Value = 0x293deebfffea2401; PC = 0x274877984400 *)
mov x21 L0x4000829cf8;
mov x22 L0x4000829d00;
(* adcs	x12, x12, x20                              #! PC = 0x274877984404 *)
adcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829ca8; Value = 0x9e46be45859c8f1f; PC = 0x274877984408 *)
mov x15 L0x4000829ca8;
mov x16 L0x4000829cb0;
(* adcs	x13, x13, x21                              #! PC = 0x274877984412 *)
adcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x4000829d08; Value = 0xf05ac0a9b838b7e1; PC = 0x274877984416 *)
mov x23 L0x4000829d08;
mov x24 L0x4000829d10;
(* adcs	x14, x14, x22                              #! PC = 0x274877984420 *)
adcs carry x14 x14 x22 carry;
(* stp	x11, x12, [x0]                              #! EA = L0x4000829f78; PC = 0x274877984424 *)
mov L0x4000829f78 x11;
mov L0x4000829f80 x12;
(* adcs	x15, x15, x23                              #! PC = 0x274877984428 *)
adcs carry x15 x15 x23 carry;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0x4000829cb8; Value = 0x9923a6debee0eac0; PC = 0x274877984432 *)
mov x11 L0x4000829cb8;
mov x12 L0x4000829cc0;
(* adcs	x16, x16, x24                              #! PC = 0x274877984436 *)
adcs carry x16 x16 x24 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x4000829d18; Value = 0x2941fad56ff9c9f1; PC = 0x274877984440 *)
mov x19 L0x4000829d18;
mov x20 L0x4000829d20;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x4000829f88; PC = 0x274877984444 *)
mov L0x4000829f88 x13;
mov L0x4000829f90 x14;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0x4000829cc8; Value = 0xa8efc16e4f1da713; PC = 0x274877984448 *)
mov x13 L0x4000829cc8;
mov x14 L0x4000829cd0;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x4000829d28; Value = 0xc6bfe47aaf5d5198; PC = 0x274877984452 *)
mov x21 L0x4000829d28;
mov x22 L0x4000829d30;
(* adcs	x11, x11, x19                              #! PC = 0x274877984456 *)
adcs carry x11 x11 x19 carry;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x4000829f98; PC = 0x274877984460 *)
mov L0x4000829f98 x15;
mov L0x4000829fa0 x16;
(* adcs	x12, x12, x20                              #! PC = 0x274877984464 *)
adcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #80]                         #! EA = L0x4000829cd8; Value = 0x4b1ba77642c5c25f; PC = 0x274877984468 *)
mov x15 L0x4000829cd8;
mov x16 L0x4000829ce0;
(* adcs	x13, x13, x21                              #! PC = 0x274877984472 *)
adcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x4000829d38; Value = 0x00000040008303a0; PC = 0x274877984476 *)
mov x23 L0x4000829d38;
mov x24 L0x4000829d40;
(* adcs	x14, x14, x22                              #! PC = 0x274877984480 *)
adcs carry x14 x14 x22 carry;
(* adcs	x15, x15, x23                              #! PC = 0x274877984484 *)
adcs carry x15 x15 x23 carry;
(* adcs	x16, x16, x24                              #! PC = 0x274877984488 *)
adcs carry x16 x16 x24 carry;
(* adc	x17, xzr, xzr                               #! PC = 0x274877984492 *)
adc x17 0@uint64 0@uint64 carry;
(* subs	x19, x11, x5                               #! PC = 0x274877984496 *)
subc carry x19 x11 x5;
(* sbcs	x20, x12, x6                               #! PC = 0x274877984500 *)
sbcs carry x20 x12 x6 carry;
(* sbcs	x21, x13, x7                               #! PC = 0x274877984504 *)
sbcs carry x21 x13 x7 carry;
(* sbcs	x22, x14, x8                               #! PC = 0x274877984508 *)
sbcs carry x22 x14 x8 carry;
(* sbcs	x23, x15, x9                               #! PC = 0x274877984512 *)
sbcs carry x23 x15 x9 carry;
(* sbcs	x24, x16, x10                              #! PC = 0x274877984516 *)
sbcs carry x24 x16 x10 carry;
(* sbcs	xzr, x17, xzr                              #! PC = 0x274877984520 *)
sbcs carry dontcare x17 0@uint64 carry;
(* csel	x11, x11, x19, cc  // cc = lo, ul, last    #! PC = 0x274877984524 *)
cmov x11 carry x19 x11;
(* csel	x12, x12, x20, cc  // cc = lo, ul, last    #! PC = 0x274877984528 *)
cmov x12 carry x20 x12;
(* csel	x13, x13, x21, cc  // cc = lo, ul, last    #! PC = 0x274877984532 *)
cmov x13 carry x21 x13;
(* csel	x14, x14, x22, cc  // cc = lo, ul, last    #! PC = 0x274877984536 *)
cmov x14 carry x22 x14;
(* stp	x11, x12, [x0, #48]                         #! EA = L0x4000829fa8; PC = 0x274877984540 *)
mov L0x4000829fa8 x11;
mov L0x4000829fb0 x12;
(* csel	x15, x15, x23, cc  // cc = lo, ul, last    #! PC = 0x274877984544 *)
cmov x15 carry x23 x15;
(* stp	x13, x14, [x0, #64]                         #! EA = L0x4000829fb8; PC = 0x274877984548 *)
mov L0x4000829fb8 x13;
mov L0x4000829fc0 x14;
(* csel	x16, x16, x24, cc  // cc = lo, ul, last    #! PC = 0x274877984552 *)
cmov x16 carry x24 x16;
(* stp	x15, x16, [x0, #80]                         #! EA = L0x4000829fc8; PC = 0x274877984556 *)
mov L0x4000829fc8 x15;
mov L0x4000829fd0 x16;
(* #ret                                            #! PC = 0x274877984560 *)
#ret                                            #! 0x274877984560 = 0x274877984560;
(* ldr	x30, [x29, #8]                              #! EA = L0x4000829958; Value = 0x004200400000ab28; PC = 0x274877984328 *)
mov x30 L0x4000829958;
(* ldp	x19, x20, [x29, #16]                        #! EA = L0x4000829960; Value = 0x0000004000016928; PC = 0x274877984332 *)
mov x19 L0x4000829960;
mov x20 L0x4000829968;
(* ldp	x21, x22, [x29, #32]                        #! EA = L0x4000829970; Value = 0x0000004000829f18; PC = 0x274877984336 *)
mov x21 L0x4000829970;
mov x22 L0x4000829978;
(* ldp	x23, x24, [x29, #48]                        #! EA = L0x4000829980; Value = 0x0000004000829c88; PC = 0x274877984340 *)
mov x23 L0x4000829980;
mov x24 L0x4000829988;
(* ldr	x29, [sp], #64                              #! EA = L0x4000829950; Value = 0x0000004000829990; PC = 0x274877984344 *)
mov x29 L0x4000829950;
(* #autiasp                                         #! PC = 0x274877984348 *)
#autiasp                                         #! 0x274877984348 = 0x274877984348;
(* #ret                                            #! PC = 0x274877984352 *)
#ret                                            #! 0x274877984352 = 0x274877984352;

(* mul_by_u_plus_1_fp2x2(ret[2], t2) *)

assert true
    && and [eqmod (limbs 64 [L0x4000829f18, L0x4000829f20, L0x4000829f28,
                             L0x4000829f30, L0x4000829f38, L0x4000829f40,
                             L0x4000829f48, L0x4000829f50, L0x4000829f58,
                             L0x4000829f60, L0x4000829f68, L0x4000829f70] +
                   limbs 64 [L0x4000829ce8, L0x4000829cf0, L0x4000829cf8,
                              L0x4000829d00, L0x4000829d08, L0x4000829d10,
                              L0x4000829d18, L0x4000829d20, L0x4000829d28,
                              L0x4000829d30, L0x4000829d38, L0x4000829d40])
                  (limbs 64 [L0x4000829c88, L0x4000829c90, L0x4000829c98,
                             L0x4000829ca0, L0x4000829ca8, L0x4000829cb0,
                             L0x4000829cb8, L0x4000829cc0, L0x4000829cc8,
                             L0x4000829cd0, L0x4000829cd8, L0x4000829ce0])
                  (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                               m0,   m1,   m2,   m3,   m4,   m5]),
            eqmod (limbs 64 [L0x4000829f78, L0x4000829f80, L0x4000829f88,
                             L0x4000829f90, L0x4000829f98, L0x4000829fa0,
                             L0x4000829fa8, L0x4000829fb0, L0x4000829fb8,
                             L0x4000829fc0, L0x4000829fc8, L0x4000829fd0])
                  (limbs 64 [L0x4000829c88, L0x4000829c90, L0x4000829c98,
                             L0x4000829ca0, L0x4000829ca8, L0x4000829cb0,
                             L0x4000829cb8, L0x4000829cc0, L0x4000829cc8,
                             L0x4000829cd0, L0x4000829cd8, L0x4000829ce0] +
                   limbs 64 [L0x4000829ce8, L0x4000829cf0, L0x4000829cf8,
                             L0x4000829d00, L0x4000829d08, L0x4000829d10,
                             L0x4000829d18, L0x4000829d20, L0x4000829d28,
                             L0x4000829d30, L0x4000829d38, L0x4000829d40])
                  (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                               m0,   m1,   m2,   m3,   m4,   m5])
       ];

assume and [eqmod (limbs 64 [L0x4000829f18, L0x4000829f20, L0x4000829f28,
                             L0x4000829f30, L0x4000829f38, L0x4000829f40,
                             L0x4000829f48, L0x4000829f50, L0x4000829f58,
                             L0x4000829f60, L0x4000829f68, L0x4000829f70] +
                   limbs 64 [L0x4000829ce8, L0x4000829cf0, L0x4000829cf8,
                              L0x4000829d00, L0x4000829d08, L0x4000829d10,
                              L0x4000829d18, L0x4000829d20, L0x4000829d28,
                              L0x4000829d30, L0x4000829d38, L0x4000829d40])
                  (limbs 64 [L0x4000829c88, L0x4000829c90, L0x4000829c98,
                             L0x4000829ca0, L0x4000829ca8, L0x4000829cb0,
                             L0x4000829cb8, L0x4000829cc0, L0x4000829cc8,
                             L0x4000829cd0, L0x4000829cd8, L0x4000829ce0])
                  (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5]),
            eqmod (limbs 64 [L0x4000829f78, L0x4000829f80, L0x4000829f88,
                             L0x4000829f90, L0x4000829f98, L0x4000829fa0,
                             L0x4000829fa8, L0x4000829fb0, L0x4000829fb8,
                             L0x4000829fc0, L0x4000829fc8, L0x4000829fd0])
                  (limbs 64 [L0x4000829c88, L0x4000829c90, L0x4000829c98,
                             L0x4000829ca0, L0x4000829ca8, L0x4000829cb0,
                             L0x4000829cb8, L0x4000829cc0, L0x4000829cc8,
                             L0x4000829cd0, L0x4000829cd8, L0x4000829ce0] +
                   limbs 64 [L0x4000829ce8, L0x4000829cf0, L0x4000829cf8,
                             L0x4000829d00, L0x4000829d08, L0x4000829d10,
                             L0x4000829d18, L0x4000829d20, L0x4000829d28,
                             L0x4000829d30, L0x4000829d38, L0x4000829d40])
                  (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5])
       ]
    && true;

(* mov	x3, x19                                     #! PC = 0x274877950760 *)
mov x3 x19;
(* mov	x2, x21                                     #! PC = 0x274877950764 *)
mov x2 x21;
(* mov	x1, x22                                     #! PC = 0x274877950768 *)
mov x1 x22;
(* mov	x0, x22                                     #! PC = 0x274877950772 *)
mov x0 x22;
(* #bl	0x4000012e20 <add_mod_384x384>              #! PC = 0x274877950776 *)
#bl	0x4000012e20 <add_mod_384x384>              #! 0x274877950776 = 0x274877950776;
(* #paciasp                                         #! PC = 0x274877984288 *)
#paciasp                                         #! 0x274877984288 = 0x274877984288;

rcut and [limbs 64 [L0x4000829e88, L0x4000829e90, L0x4000829e98,
                    L0x4000829ea0, L0x4000829ea8, L0x4000829eb0] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829ee8, L0x4000829ef0, L0x4000829ef8,
                    L0x4000829f00, L0x4000829f08, L0x4000829f10] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829f48, L0x4000829f50, L0x4000829f58,
                    L0x4000829f60, L0x4000829f68, L0x4000829f70] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829fa8, L0x4000829fb0, L0x4000829fb8,
                    L0x4000829fc0, L0x4000829fc8, L0x4000829fd0] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
          m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
          m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64
     ] prove with all cuts, precondition;

ghost L0x4000829e58s@uint64, L0x4000829e60s@uint64, L0x4000829e68s@uint64,
      L0x4000829e70s@uint64, L0x4000829e78s@uint64, L0x4000829e80s@uint64,
      L0x4000829e88s@uint64, L0x4000829e90s@uint64, L0x4000829e98s@uint64,
      L0x4000829ea0s@uint64, L0x4000829ea8s@uint64, L0x4000829eb0s@uint64,
      L0x4000829eb8s@uint64, L0x4000829ec0s@uint64, L0x4000829ec8s@uint64,
      L0x4000829ed0s@uint64, L0x4000829ed8s@uint64, L0x4000829ee0s@uint64,
      L0x4000829ee8s@uint64, L0x4000829ef0s@uint64, L0x4000829ef8s@uint64,
      L0x4000829f00s@uint64, L0x4000829f08s@uint64, L0x4000829f10s@uint64 :
      and [L0x4000829e58s=L0x4000829e58, L0x4000829e60s=L0x4000829e60,
           L0x4000829e68s=L0x4000829e68, L0x4000829e70s=L0x4000829e70,
           L0x4000829e78s=L0x4000829e78, L0x4000829e80s=L0x4000829e80,
           L0x4000829e88s=L0x4000829e88, L0x4000829e90s=L0x4000829e90,
           L0x4000829e98s=L0x4000829e98, L0x4000829ea0s=L0x4000829ea0,
           L0x4000829ea8s=L0x4000829ea8, L0x4000829eb0s=L0x4000829eb0,
           L0x4000829eb8s=L0x4000829eb8, L0x4000829ec0s=L0x4000829ec0,
           L0x4000829ec8s=L0x4000829ec8, L0x4000829ed0s=L0x4000829ed0,
           L0x4000829ed8s=L0x4000829ed8, L0x4000829ee0s=L0x4000829ee0,
           L0x4000829ee8s=L0x4000829ee8, L0x4000829ef0s=L0x4000829ef0,
           L0x4000829ef8s=L0x4000829ef8, L0x4000829f00s=L0x4000829f00,
           L0x4000829f08s=L0x4000829f08, L0x4000829f10s=L0x4000829f10]
   && and [L0x4000829e58s=L0x4000829e58, L0x4000829e60s=L0x4000829e60,
           L0x4000829e68s=L0x4000829e68, L0x4000829e70s=L0x4000829e70,
           L0x4000829e78s=L0x4000829e78, L0x4000829e80s=L0x4000829e80,
           L0x4000829e88s=L0x4000829e88, L0x4000829e90s=L0x4000829e90,
           L0x4000829e98s=L0x4000829e98, L0x4000829ea0s=L0x4000829ea0,
           L0x4000829ea8s=L0x4000829ea8, L0x4000829eb0s=L0x4000829eb0,
           L0x4000829eb8s=L0x4000829eb8, L0x4000829ec0s=L0x4000829ec0,
           L0x4000829ec8s=L0x4000829ec8, L0x4000829ed0s=L0x4000829ed0,
           L0x4000829ed8s=L0x4000829ed8, L0x4000829ee0s=L0x4000829ee0,
           L0x4000829ee8s=L0x4000829ee8, L0x4000829ef0s=L0x4000829ef0,
           L0x4000829ef8s=L0x4000829ef8, L0x4000829f00s=L0x4000829f00,
           L0x4000829f08s=L0x4000829f08, L0x4000829f10s=L0x4000829f10];

(* stp	x29, x30, [sp, #-64]!                       #! EA = L0x4000829950; PC = 0x274877984292 *)
mov L0x4000829950 x29;
mov L0x4000829958 x30;
(* mov	x29, sp                                     #! PC = 0x274877984296 *)
mov x29 sp;
(* stp	x19, x20, [sp, #16]                         #! EA = L0x4000829960; PC = 0x274877984300 *)
mov L0x4000829960 x19;
mov L0x4000829968 x20;
(* stp	x21, x22, [sp, #32]                         #! EA = L0x4000829970; PC = 0x274877984304 *)
mov L0x4000829970 x21;
mov L0x4000829978 x22;
(* stp	x23, x24, [sp, #48]                         #! EA = L0x4000829980; PC = 0x274877984308 *)
mov L0x4000829980 x23;
mov L0x4000829988 x24;
(* ldp	x5, x6, [x3]                                #! EA = L0x4000016928; Value = 0xb9feffffffffaaab; PC = 0x274877984312 *)
mov x5 L0x4000016928;
mov x6 L0x4000016930;
(* ldp	x7, x8, [x3, #16]                           #! EA = L0x4000016938; Value = 0x6730d2a0f6b0f624; PC = 0x274877984316 *)
mov x7 L0x4000016938;
mov x8 L0x4000016940;
(* ldp	x9, x10, [x3, #32]                          #! EA = L0x4000016948; Value = 0x4b1ba7b6434bacd7; PC = 0x274877984320 *)
mov x9 L0x4000016948;
mov x10 L0x4000016950;
(* #bl	0x4000012e80 <__add_mod_384x384>            #! PC = 0x274877984324 *)
#bl	0x4000012e80 <__add_mod_384x384>            #! 0x274877984324 = 0x274877984324;
(* ldp	x11, x12, [x1]                              #! EA = L0x4000829e58; Value = 0x7a252206d4e60000; PC = 0x274877984384 *)
mov x11 L0x4000829e58;
mov x12 L0x4000829e60;
(* ldp	x19, x20, [x2]                              #! EA = L0x4000829f18; Value = 0xf842a05182becc80; PC = 0x274877984388 *)
mov x19 L0x4000829f18;
mov x20 L0x4000829f20;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829e68; Value = 0x0f78dc225adf05cc; PC = 0x274877984392 *)
mov x13 L0x4000829e68;
mov x14 L0x4000829e70;
(* adds	x11, x11, x19                              #! PC = 0x274877984396 *)
adds carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x4000829f28; Value = 0x33a83b5ce11f6a3e; PC = 0x274877984400 *)
mov x21 L0x4000829f28;
mov x22 L0x4000829f30;
(* adcs	x12, x12, x20                              #! PC = 0x274877984404 *)
adcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829e78; Value = 0x5c34671b440e08ad; PC = 0x274877984408 *)
mov x15 L0x4000829e78;
mov x16 L0x4000829e80;
(* adcs	x13, x13, x21                              #! PC = 0x274877984412 *)
adcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x4000829f38; Value = 0xadebfd9bcd63d73e; PC = 0x274877984416 *)
mov x23 L0x4000829f38;
mov x24 L0x4000829f40;
(* adcs	x14, x14, x22                              #! PC = 0x274877984420 *)
adcs carry x14 x14 x22 carry;
(* stp	x11, x12, [x0]                              #! EA = L0x4000829e58; PC = 0x274877984424 *)
mov L0x4000829e58 x11;
mov L0x4000829e60 x12;
(* adcs	x15, x15, x23                              #! PC = 0x274877984428 *)
adcs carry x15 x15 x23 carry;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0x4000829e88; Value = 0xd5fb6fa3221dc841; PC = 0x274877984432 *)
mov x11 L0x4000829e88;
mov x12 L0x4000829e90;
(* adcs	x16, x16, x24                              #! PC = 0x274877984436 *)
adcs carry x16 x16 x24 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x4000829f48; Value = 0x6fe1ac094ee720ce; PC = 0x274877984440 *)
mov x19 L0x4000829f48;
mov x20 L0x4000829f50;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x4000829e68; PC = 0x274877984444 *)
mov L0x4000829e68 x13;
mov L0x4000829e70 x14;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0x4000829e98; Value = 0xbaf131dd673e06d7; PC = 0x274877984448 *)
mov x13 L0x4000829e98;
mov x14 L0x4000829ea0;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x4000829f58; Value = 0xe22fdcf39fc0557a; PC = 0x274877984452 *)
mov x21 L0x4000829f58;
mov x22 L0x4000829f60;
(* adcs	x11, x11, x19                              #! PC = 0x274877984456 *)
adcs carry x11 x11 x19 carry;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x4000829e78; PC = 0x274877984460 *)
mov L0x4000829e78 x15;
mov L0x4000829e80 x16;
(* adcs	x12, x12, x20                              #! PC = 0x274877984464 *)
adcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #80]                         #! EA = L0x4000829ea8; Value = 0x08e820c341dd61e0; PC = 0x274877984468 *)
mov x15 L0x4000829ea8;
mov x16 L0x4000829eb0;
(* adcs	x13, x13, x21                              #! PC = 0x274877984472 *)
adcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x4000829f68; Value = 0x4b1ba7364242bebe; PC = 0x274877984476 *)
mov x23 L0x4000829f68;
mov x24 L0x4000829f70;
(* adcs	x14, x14, x22                              #! PC = 0x274877984480 *)
adcs carry x14 x14 x22 carry;
(* adcs	x15, x15, x23                              #! PC = 0x274877984484 *)
adcs carry x15 x15 x23 carry;
(* adcs	x16, x16, x24                              #! PC = 0x274877984488 *)
adcs carry x16 x16 x24 carry;
(* adc	x17, xzr, xzr                               #! PC = 0x274877984492 *)
adc x17 0@uint64 0@uint64 carry;
(* subs	x19, x11, x5                               #! PC = 0x274877984496 *)
subc carry x19 x11 x5;
(* sbcs	x20, x12, x6                               #! PC = 0x274877984500 *)
sbcs carry x20 x12 x6 carry;
(* sbcs	x21, x13, x7                               #! PC = 0x274877984504 *)
sbcs carry x21 x13 x7 carry;
(* sbcs	x22, x14, x8                               #! PC = 0x274877984508 *)
sbcs carry x22 x14 x8 carry;
(* sbcs	x23, x15, x9                               #! PC = 0x274877984512 *)
sbcs carry x23 x15 x9 carry;
(* sbcs	x24, x16, x10                              #! PC = 0x274877984516 *)
sbcs carry x24 x16 x10 carry;
(* sbcs	xzr, x17, xzr                              #! PC = 0x274877984520 *)
sbcs carry dontcare x17 0@uint64 carry;
(* csel	x11, x11, x19, cc  // cc = lo, ul, last    #! PC = 0x274877984524 *)
cmov x11 carry x19 x11;
(* csel	x12, x12, x20, cc  // cc = lo, ul, last    #! PC = 0x274877984528 *)
cmov x12 carry x20 x12;
(* csel	x13, x13, x21, cc  // cc = lo, ul, last    #! PC = 0x274877984532 *)
cmov x13 carry x21 x13;
(* csel	x14, x14, x22, cc  // cc = lo, ul, last    #! PC = 0x274877984536 *)
cmov x14 carry x22 x14;
(* stp	x11, x12, [x0, #48]                         #! EA = L0x4000829e88; PC = 0x274877984540 *)
mov L0x4000829e88 x11;
mov L0x4000829e90 x12;
(* csel	x15, x15, x23, cc  // cc = lo, ul, last    #! PC = 0x274877984544 *)
cmov x15 carry x23 x15;
(* stp	x13, x14, [x0, #64]                         #! EA = L0x4000829e98; PC = 0x274877984548 *)
mov L0x4000829e98 x13;
mov L0x4000829ea0 x14;
(* csel	x16, x16, x24, cc  // cc = lo, ul, last    #! PC = 0x274877984552 *)
cmov x16 carry x24 x16;
(* stp	x15, x16, [x0, #80]                         #! EA = L0x4000829ea8; PC = 0x274877984556 *)
mov L0x4000829ea8 x15;
mov L0x4000829eb0 x16;
(* #ret                                            #! PC = 0x274877984560 *)
#ret                                            #! 0x274877984560 = 0x274877984560;
(* ldr	x30, [x29, #8]                              #! EA = L0x4000829958; Value = 0x005100400000ab3c; PC = 0x274877984328 *)
mov x30 L0x4000829958;
(* ldp	x19, x20, [x29, #16]                        #! EA = L0x4000829960; Value = 0x0000004000016928; PC = 0x274877984332 *)
mov x19 L0x4000829960;
mov x20 L0x4000829968;
(* ldp	x21, x22, [x29, #32]                        #! EA = L0x4000829970; Value = 0x0000004000829f18; PC = 0x274877984336 *)
mov x21 L0x4000829970;
mov x22 L0x4000829978;
(* ldp	x23, x24, [x29, #48]                        #! EA = L0x4000829980; Value = 0x0000004000829c88; PC = 0x274877984340 *)
mov x23 L0x4000829980;
mov x24 L0x4000829988;
(* ldr	x29, [sp], #64                              #! EA = L0x4000829950; Value = 0x0000004000829990; PC = 0x274877984344 *)
mov x29 L0x4000829950;
(* #autiasp                                         #! PC = 0x274877984348 *)
#autiasp                                         #! 0x274877984348 = 0x274877984348;
(* #ret                                            #! PC = 0x274877984352 *)
#ret                                            #! 0x274877984352 = 0x274877984352;
(* mov	x3, x19                                     #! PC = 0x274877950780 *)
mov x3 x19;
(* mov	x2, x20                                     #! PC = 0x274877950784 *)
mov x2 x20;
(* mov	x1, x26                                     #! PC = 0x274877950788 *)
mov x1 x26;
(* mov	x0, x26                                     #! PC = 0x274877950792 *)
mov x0 x26;
(* #bl	0x4000012e20 <add_mod_384x384>              #! PC = 0x274877950796 *)
#bl	0x4000012e20 <add_mod_384x384>              #! 0x274877950796 = 0x274877950796;
(* #paciasp                                         #! PC = 0x274877984288 *)
#paciasp                                         #! 0x274877984288 = 0x274877984288;
(* stp	x29, x30, [sp, #-64]!                       #! EA = L0x4000829950; PC = 0x274877984292 *)
mov L0x4000829950 x29;
mov L0x4000829958 x30;
(* mov	x29, sp                                     #! PC = 0x274877984296 *)
mov x29 sp;
(* stp	x19, x20, [sp, #16]                         #! EA = L0x4000829960; PC = 0x274877984300 *)
mov L0x4000829960 x19;
mov L0x4000829968 x20;
(* stp	x21, x22, [sp, #32]                         #! EA = L0x4000829970; PC = 0x274877984304 *)
mov L0x4000829970 x21;
mov L0x4000829978 x22;
(* stp	x23, x24, [sp, #48]                         #! EA = L0x4000829980; PC = 0x274877984308 *)
mov L0x4000829980 x23;
mov L0x4000829988 x24;
(* ldp	x5, x6, [x3]                                #! EA = L0x4000016928; Value = 0xb9feffffffffaaab; PC = 0x274877984312 *)
mov x5 L0x4000016928;
mov x6 L0x4000016930;
(* ldp	x7, x8, [x3, #16]                           #! EA = L0x4000016938; Value = 0x6730d2a0f6b0f624; PC = 0x274877984316 *)
mov x7 L0x4000016938;
mov x8 L0x4000016940;
(* ldp	x9, x10, [x3, #32]                          #! EA = L0x4000016948; Value = 0x4b1ba7b6434bacd7; PC = 0x274877984320 *)
mov x9 L0x4000016948;
mov x10 L0x4000016950;
(* #bl	0x4000012e80 <__add_mod_384x384>            #! PC = 0x274877984324 *)
#bl	0x4000012e80 <__add_mod_384x384>            #! 0x274877984324 = 0x274877984324;
(* ldp	x11, x12, [x1]                              #! EA = L0x4000829eb8; Value = 0xb45fa262003ff000; PC = 0x274877984384 *)
mov x11 L0x4000829eb8;
mov x12 L0x4000829ec0;
(* ldp	x19, x20, [x2]                              #! EA = L0x4000829f78; Value = 0x86ba19c16d5a9780; PC = 0x274877984388 *)
mov x19 L0x4000829f78;
mov x20 L0x4000829f80;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829ec8; Value = 0x3775de88bb140010; PC = 0x274877984392 *)
mov x13 L0x4000829ec8;
mov x14 L0x4000829ed0;
(* adds	x11, x11, x19                              #! PC = 0x274877984396 *)
adds carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x4000829f88; Value = 0x862418dce0f3b240; PC = 0x274877984400 *)
mov x21 L0x4000829f88;
mov x22 L0x4000829f90;
(* adcs	x12, x12, x20                              #! PC = 0x274877984404 *)
adcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829ed8; Value = 0x541b84abf7cfd998; PC = 0x274877984408 *)
mov x15 L0x4000829ed8;
mov x16 L0x4000829ee0;
(* adcs	x13, x13, x21                              #! PC = 0x274877984412 *)
adcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x4000829f98; Value = 0x8ea17eef3dd54701; PC = 0x274877984416 *)
mov x23 L0x4000829f98;
mov x24 L0x4000829fa0;
(* adcs	x14, x14, x22                              #! PC = 0x274877984420 *)
adcs carry x14 x14 x22 carry;
(* stp	x11, x12, [x0]                              #! EA = L0x4000829eb8; PC = 0x274877984424 *)
mov L0x4000829eb8 x11;
mov L0x4000829ec0 x12;
(* adcs	x15, x15, x23                              #! PC = 0x274877984428 *)
adcs carry x15 x15 x23 carry;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0x4000829ee8; Value = 0x6fa7e1ab25823783; PC = 0x274877984432 *)
mov x11 L0x4000829ee8;
mov x12 L0x4000829ef0;
(* adcs	x16, x16, x24                              #! PC = 0x274877984436 *)
adcs carry x16 x16 x24 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x4000829fa8; Value = 0xc265a1b42edab4b2; PC = 0x274877984440 *)
mov x19 L0x4000829fa8;
mov x20 L0x4000829fb0;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x4000829ec8; PC = 0x274877984444 *)
mov L0x4000829ec8 x13;
mov L0x4000829ed0 x14;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0x4000829ef8; Value = 0xbf094f50cfaefd88; PC = 0x274877984448 *)
mov x13 L0x4000829ef8;
mov x14 L0x4000829f00;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x4000829fb8; Value = 0x6fafa5e8fe7af8ac; PC = 0x274877984452 *)
mov x21 L0x4000829fb8;
mov x22 L0x4000829fc0;
(* adcs	x11, x11, x19                              #! PC = 0x274877984456 *)
adcs carry x11 x11 x19 carry;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x4000829ed8; PC = 0x274877984460 *)
mov L0x4000829ed8 x15;
mov L0x4000829ee0 x16;
(* adcs	x12, x12, x20                              #! PC = 0x274877984464 *)
adcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #80]                         #! EA = L0x4000829f08; Value = 0x933a18f43a88334c; PC = 0x274877984468 *)
mov x15 L0x4000829f08;
mov x16 L0x4000829f10;
(* adcs	x13, x13, x21                              #! PC = 0x274877984472 *)
adcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x4000829fc8; Value = 0x4b1ba7b64348c5ff; PC = 0x274877984476 *)
mov x23 L0x4000829fc8;
mov x24 L0x4000829fd0;
(* adcs	x14, x14, x22                              #! PC = 0x274877984480 *)
adcs carry x14 x14 x22 carry;
(* adcs	x15, x15, x23                              #! PC = 0x274877984484 *)
adcs carry x15 x15 x23 carry;
(* adcs	x16, x16, x24                              #! PC = 0x274877984488 *)
adcs carry x16 x16 x24 carry;
(* adc	x17, xzr, xzr                               #! PC = 0x274877984492 *)
adc x17 0@uint64 0@uint64 carry;
(* subs	x19, x11, x5                               #! PC = 0x274877984496 *)
subc carry x19 x11 x5;
(* sbcs	x20, x12, x6                               #! PC = 0x274877984500 *)
sbcs carry x20 x12 x6 carry;
(* sbcs	x21, x13, x7                               #! PC = 0x274877984504 *)
sbcs carry x21 x13 x7 carry;
(* sbcs	x22, x14, x8                               #! PC = 0x274877984508 *)
sbcs carry x22 x14 x8 carry;
(* sbcs	x23, x15, x9                               #! PC = 0x274877984512 *)
sbcs carry x23 x15 x9 carry;
(* sbcs	x24, x16, x10                              #! PC = 0x274877984516 *)
sbcs carry x24 x16 x10 carry;
(* sbcs	xzr, x17, xzr                              #! PC = 0x274877984520 *)
sbcs carry dontcare x17 0@uint64 carry;
(* csel	x11, x11, x19, cc  // cc = lo, ul, last    #! PC = 0x274877984524 *)
cmov x11 carry x19 x11;
(* csel	x12, x12, x20, cc  // cc = lo, ul, last    #! PC = 0x274877984528 *)
cmov x12 carry x20 x12;
(* csel	x13, x13, x21, cc  // cc = lo, ul, last    #! PC = 0x274877984532 *)
cmov x13 carry x21 x13;
(* csel	x14, x14, x22, cc  // cc = lo, ul, last    #! PC = 0x274877984536 *)
cmov x14 carry x22 x14;
(* stp	x11, x12, [x0, #48]                         #! EA = L0x4000829ee8; PC = 0x274877984540 *)
mov L0x4000829ee8 x11;
mov L0x4000829ef0 x12;
(* csel	x15, x15, x23, cc  // cc = lo, ul, last    #! PC = 0x274877984544 *)
cmov x15 carry x23 x15;
(* stp	x13, x14, [x0, #64]                         #! EA = L0x4000829ef8; PC = 0x274877984548 *)
mov L0x4000829ef8 x13;
mov L0x4000829f00 x14;
(* csel	x16, x16, x24, cc  // cc = lo, ul, last    #! PC = 0x274877984552 *)
cmov x16 carry x24 x16;
(* stp	x15, x16, [x0, #80]                         #! EA = L0x4000829f08; PC = 0x274877984556 *)
mov L0x4000829f08 x15;
mov L0x4000829f10 x16;
(* #ret                                            #! PC = 0x274877984560 *)
#ret                                            #! 0x274877984560 = 0x274877984560;
(* ldr	x30, [x29, #8]                              #! EA = L0x4000829958; Value = 0x003800400000ab50; PC = 0x274877984328 *)
mov x30 L0x4000829958;
(* ldp	x19, x20, [x29, #16]                        #! EA = L0x4000829960; Value = 0x0000004000016928; PC = 0x274877984332 *)
mov x19 L0x4000829960;
mov x20 L0x4000829968;
(* ldp	x21, x22, [x29, #32]                        #! EA = L0x4000829970; Value = 0x0000004000829f18; PC = 0x274877984336 *)
mov x21 L0x4000829970;
mov x22 L0x4000829978;
(* ldp	x23, x24, [x29, #48]                        #! EA = L0x4000829980; Value = 0x0000004000829c88; PC = 0x274877984340 *)
mov x23 L0x4000829980;
mov x24 L0x4000829988;
(* ldr	x29, [sp], #64                              #! EA = L0x4000829950; Value = 0x0000004000829990; PC = 0x274877984344 *)
mov x29 L0x4000829950;
(* #autiasp                                         #! PC = 0x274877984348 *)
#autiasp                                         #! 0x274877984348 = 0x274877984348;
(* #ret                                            #! PC = 0x274877984352 *)
#ret                                            #! 0x274877984352 = 0x274877984352;

(* add_fp2x2(ret[1], ret[1], ret[2]) *)

assert true
    && and [eqmod (limbs 64 [L0x4000829e58, L0x4000829e60, L0x4000829e68,
                             L0x4000829e70, L0x4000829e78, L0x4000829e80,
                             L0x4000829e88, L0x4000829e90, L0x4000829e98,
                             L0x4000829ea0, L0x4000829ea8, L0x4000829eb0])
                  (limbs 64 [L0x4000829e58s, L0x4000829e60s, L0x4000829e68s,
                             L0x4000829e70s, L0x4000829e78s, L0x4000829e80s,
                             L0x4000829e88s, L0x4000829e90s, L0x4000829e98s,
                             L0x4000829ea0s, L0x4000829ea8s, L0x4000829eb0s] +
                   limbs 64 [L0x4000829f18, L0x4000829f20, L0x4000829f28,
                             L0x4000829f30, L0x4000829f38, L0x4000829f40,
                             L0x4000829f48, L0x4000829f50, L0x4000829f58,
                             L0x4000829f60, L0x4000829f68, L0x4000829f70])
                  (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                               m0,   m1,   m2,   m3,   m4,   m5]),
            eqmod (limbs 64 [L0x4000829eb8, L0x4000829ec0, L0x4000829ec8,
                             L0x4000829ed0, L0x4000829ed8, L0x4000829ee0,
                             L0x4000829ee8, L0x4000829ef0, L0x4000829ef8,
                             L0x4000829f00, L0x4000829f08, L0x4000829f10])
                  (limbs 64 [L0x4000829eb8s, L0x4000829ec0s, L0x4000829ec8s,
                             L0x4000829ed0s, L0x4000829ed8s, L0x4000829ee0s,
                             L0x4000829ee8s, L0x4000829ef0s, L0x4000829ef8s,
                             L0x4000829f00s, L0x4000829f08s, L0x4000829f10s] +
                   limbs 64 [L0x4000829f78, L0x4000829f80, L0x4000829f88,
                             L0x4000829f90, L0x4000829f98, L0x4000829fa0,
                             L0x4000829fa8, L0x4000829fb0, L0x4000829fb8,
                             L0x4000829fc0, L0x4000829fc8, L0x4000829fd0])
                  (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                               m0,   m1,   m2,   m3,   m4,   m5])
       ];

assume and [eqmod (limbs 64 [L0x4000829e58, L0x4000829e60, L0x4000829e68,
                             L0x4000829e70, L0x4000829e78, L0x4000829e80,
                             L0x4000829e88, L0x4000829e90, L0x4000829e98,
                             L0x4000829ea0, L0x4000829ea8, L0x4000829eb0])
                  (limbs 64 [L0x4000829e58s, L0x4000829e60s, L0x4000829e68s,
                             L0x4000829e70s, L0x4000829e78s, L0x4000829e80s,
                             L0x4000829e88s, L0x4000829e90s, L0x4000829e98s,
                             L0x4000829ea0s, L0x4000829ea8s, L0x4000829eb0s] +
                   limbs 64 [L0x4000829f18, L0x4000829f20, L0x4000829f28,
                             L0x4000829f30, L0x4000829f38, L0x4000829f40,
                             L0x4000829f48, L0x4000829f50, L0x4000829f58,
                             L0x4000829f60, L0x4000829f68, L0x4000829f70])
                  (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5]),
            eqmod (limbs 64 [L0x4000829eb8, L0x4000829ec0, L0x4000829ec8,
                             L0x4000829ed0, L0x4000829ed8, L0x4000829ee0,
                             L0x4000829ee8, L0x4000829ef0, L0x4000829ef8,
                             L0x4000829f00, L0x4000829f08, L0x4000829f10])
                  (limbs 64 [L0x4000829eb8s, L0x4000829ec0s, L0x4000829ec8s,
                             L0x4000829ed0s, L0x4000829ed8s, L0x4000829ee0s,
                             L0x4000829ee8s, L0x4000829ef0s, L0x4000829ef8s,
                             L0x4000829f00s, L0x4000829f08s, L0x4000829f10s] +
                   limbs 64 [L0x4000829f78, L0x4000829f80, L0x4000829f88,
                             L0x4000829f90, L0x4000829f98, L0x4000829fa0,
                             L0x4000829fa8, L0x4000829fb0, L0x4000829fb8,
                             L0x4000829fc0, L0x4000829fc8, L0x4000829fd0])
                  (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5])
       ]
    && true;

(* ret[1] = (a0 + a1)*(b0 + b1) - a0*b0 - a1*b1 + a2*b2*(u+1)
          = a0*b1 + a1*b0 + a2*b2*(u+1) *)
(*
assert and [eqmod (limbs 64 [L0x4000829a48r1, L0x4000829a50r1, L0x4000829a58r1,
                             L0x4000829a60r1, L0x4000829a68r1, L0x4000829a70r1] +
                   limbs 64 [L0x4000829a78r1, L0x4000829a80r1, L0x4000829a88r1,
                             L0x4000829a90r1, L0x4000829a98r1, L0x4000829aa0r1] * U)
                  (limbs 64 [a00, a01, a02, a03, a04, a05] +
                   limbs 64 [a10, a11, a12, a13, a14, a15] * U +
                   limbs 64 [a20, a21, a22, a23, a24, a25] +
                   limbs 64 [a30, a31, a32, a33, a34, a35] * U)
                  [limbs 64 [m0, m1, m2, m3, m4, m5], U * U + 1],
            eqmod (limbs 64 [L0x4000829aa8r1, L0x4000829ab0r1, L0x4000829ab8r1,
                             L0x4000829ac0r1, L0x4000829ac8r1, L0x4000829ad0r1] +
                   limbs 64 [L0x4000829ad8r1, L0x4000829ae0r1, L0x4000829ae8r1,
                             L0x4000829af0r1, L0x4000829af8r1, L0x4000829b00r1] * U)
                  (limbs 64 [b00, b01, b02, b03, b04, b05] +
                   limbs 64 [b10, b11, b12, b13, b14, b15] * U +
                   limbs 64 [b20, b21, b22, b23, b24, b25] +
                   limbs 64 [b30, b31, b32, b33, b34, b35] * U)
                  [limbs 64 [m0, m1, m2, m3, m4, m5], U * U + 1],
            eqmod (limbs 64 [L0x4000829e58, L0x4000829e60, L0x4000829e68,
                             L0x4000829e70, L0x4000829e78, L0x4000829e80,
                             L0x4000829e88, L0x4000829e90, L0x4000829e98,
                             L0x4000829ea0, L0x4000829ea8, L0x4000829eb0] +
                   limbs 64 [L0x4000829eb8, L0x4000829ec0, L0x4000829ec8,
                             L0x4000829ed0, L0x4000829ed8, L0x4000829ee0,
                             L0x4000829ee8, L0x4000829ef0, L0x4000829ef8,
                             L0x4000829f00, L0x4000829f08, L0x4000829f10] * U)
                  ((limbs 64 [L0x4000829a48r1, L0x4000829a50r1, L0x4000829a58r1,
                              L0x4000829a60r1, L0x4000829a68r1, L0x4000829a70r1] +
                    limbs 64 [L0x4000829a78r1, L0x4000829a80r1, L0x4000829a88r1,
                              L0x4000829a90r1, L0x4000829a98r1, L0x4000829aa0r1] * U) *
                   (limbs 64 [L0x4000829aa8r1, L0x4000829ab0r1, L0x4000829ab8r1,
                              L0x4000829ac0r1, L0x4000829ac8r1, L0x4000829ad0r1] +
                    limbs 64 [L0x4000829ad8r1, L0x4000829ae0r1, L0x4000829ae8r1,
                              L0x4000829af0r1, L0x4000829af8r1, L0x4000829b00r1] * U) -
                   (limbs 64 [a00, a01, a02, a03, a04, a05] +
                    limbs 64 [a10, a11, a12, a13, a14, a15] * U) *
                   (limbs 64 [b00, b01, b02, b03, b04, b05] +
                    limbs 64 [b10, b11, b12, b13, b14, b15] * U) -
                   (limbs 64 [a20, a21, a22, a23, a24, a25] +
                    limbs 64 [a30, a31, a32, a33, a34, a35] * U) *
                   (limbs 64 [b20, b21, b22, b23, b24, b25] +
                    limbs 64 [b30, b31, b32, b33, b34, b35] * U) +
                   (limbs 64 [a40, a41, a42, a43, a44, a45] +
                    limbs 64 [a50, a51, a52, a53, a54, a55] * U) *
                   (limbs 64 [b40, b41, b42, b43, b44, b45] +
                    limbs 64 [b50, b51, b52, b53, b54, b55] * U) *
                   (U + 1))
             [limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5],
              U * U + 1]]
    && true;
*)
rcut and [limbs 64 [a00, a01, a02, a03, a04, a05] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [a10, a11, a12, a13, a14, a15] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [a40, a41, a42, a43, a44, a45] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [a50, a51, a52, a53, a54, a55] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [b00, b01, b02, b03, b04, b05] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [b10, b11, b12, b13, b14, b15] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [b40, b41, b42, b43, b44, b45] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [b50, b51, b52, b53, b54, b55] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
          m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
          m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64
     ] prove with precondition;

(* mov	x3, x19                                     #! PC = 0x274877950800 *)
mov x3 x19;
(* ldr	x2, [sp, #152]                              #! EA = L0x4000829a28; Value = 0x000000400082a108; PC = 0x274877950804 *)
mov x2 L0x4000829a28;
(* ldr	x1, [sp, #104]                              #! EA = L0x40008299f8; Value = 0x000000400082a048; PC = 0x274877950808 *)
mov x1 L0x40008299f8;
(* mov	x0, x24                                     #! PC = 0x274877950812 *)
mov x0 x24;
(* #bl	0x4000011be0 <add_mod_384x>                 #! PC = 0x274877950816 *)
#bl	0x4000011be0 <add_mod_384x>                 #! 0x274877950816 = 0x274877950816;
(* #paciasp                                         #! PC = 0x274877979616 *)
#paciasp                                         #! 0x274877979616 = 0x274877979616;
(* stp	x29, x30, [sp, #-48]!                       #! EA = L0x4000829960; PC = 0x274877979620 *)
mov L0x4000829960 x29;
mov L0x4000829968 x30;
(* mov	x29, sp                                     #! PC = 0x274877979624 *)
mov x29 sp;
(* stp	x19, x20, [sp, #16]                         #! EA = L0x4000829970; PC = 0x274877979628 *)
mov L0x4000829970 x19;
mov L0x4000829978 x20;
(* stp	x21, x22, [sp, #32]                         #! EA = L0x4000829980; PC = 0x274877979632 *)
mov L0x4000829980 x21;
mov L0x4000829988 x22;
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
(* ldp	x10, x11, [x1]                              #! EA = L0x400082a048; Value = 0x0000004000841d60; PC = 0x274877979488 *)
mov x10 L0x400082a048;
mov x11 L0x400082a050;
(* ldp	x16, x17, [x2]                              #! EA = L0x400082a108; Value = 0x000000400085ea78; PC = 0x274877979492 *)
mov x16 L0x400082a108;
mov x17 L0x400082a110;
(* ldp	x12, x13, [x1, #16]                         #! EA = L0x400082a058; Value = 0x000000400085d6d8; PC = 0x274877979496 *)
mov x12 L0x400082a058;
mov x13 L0x400082a060;
(* ldp	x19, x20, [x2, #16]                         #! EA = L0x400082a118; Value = 0x0000004000841d2c; PC = 0x274877979500 *)
mov x19 L0x400082a118;
mov x20 L0x400082a120;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0x400082a068; Value = 0x0000004000000040; PC = 0x274877979504 *)
mov x14 L0x400082a068;
mov x15 L0x400082a070;
(* ldp	x21, x22, [x2, #32]                         #! EA = L0x400082a128; Value = 0x000000400085d000; PC = 0x274877979508 *)
mov x21 L0x400082a128;
mov x22 L0x400082a130;
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
(* stp	x10, x11, [x0]                              #! EA = L0x4000829a48; PC = 0x274877979652 *)
mov L0x4000829a48 x10;
mov L0x4000829a50 x11;
(* add	x1, x1, #0x30                               #! PC = 0x274877979656 *)
adds dontcare x1 x1 0x30@uint64;
(* stp	x12, x13, [x0, #16]                         #! EA = L0x4000829a58; PC = 0x274877979660 *)
mov L0x4000829a58 x12;
mov L0x4000829a60 x13;
(* add	x2, x2, #0x30                               #! PC = 0x274877979664 *)
adds dontcare x2 x2 0x30@uint64;
(* stp	x14, x15, [x0, #32]                         #! EA = L0x4000829a68; PC = 0x274877979668 *)
mov L0x4000829a68 x14;
mov L0x4000829a70 x15;
(* #bl	0x4000011b60 <__add_mod_384>                #! PC = 0x274877979672 *)
#bl	0x4000011b60 <__add_mod_384>                #! 0x274877979672 = 0x274877979672;
(* ldp	x10, x11, [x1]                              #! EA = L0x400082a078; Value = 0x000000400085de20; PC = 0x274877979488 *)
mov x10 L0x400082a078;
mov x11 L0x400082a080;
(* ldp	x16, x17, [x2]                              #! EA = L0x400082a138; Value = 0x000000400082ae28; PC = 0x274877979492 *)
mov x16 L0x400082a138;
mov x17 L0x400082a140;
(* ldp	x12, x13, [x1, #16]                         #! EA = L0x400082a088; Value = 0x0000000000000000; PC = 0x274877979496 *)
mov x12 L0x400082a088;
mov x13 L0x400082a090;
(* ldp	x19, x20, [x2, #16]                         #! EA = L0x400082a148; Value = 0x000000400082da1c; PC = 0x274877979500 *)
mov x19 L0x400082a148;
mov x20 L0x400082a150;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0x400082a098; Value = 0x000000400082c000; PC = 0x274877979504 *)
mov x14 L0x400082a098;
mov x15 L0x400082a0a0;
(* ldp	x21, x22, [x2, #32]                         #! EA = L0x400082a158; Value = 0x000000400082ad60; PC = 0x274877979508 *)
mov x21 L0x400082a158;
mov x22 L0x400082a160;
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
(* ldr	x30, [sp, #8]                               #! EA = L0x4000829968; Value = 0x003400400000ab64; PC = 0x274877979676 *)
mov x30 L0x4000829968;
(* stp	x10, x11, [x0, #48]                         #! EA = L0x4000829a78; PC = 0x274877979680 *)
mov L0x4000829a78 x10;
mov L0x4000829a80 x11;
(* stp	x12, x13, [x0, #64]                         #! EA = L0x4000829a88; PC = 0x274877979684 *)
mov L0x4000829a88 x12;
mov L0x4000829a90 x13;
(* stp	x14, x15, [x0, #80]                         #! EA = L0x4000829a98; PC = 0x274877979688 *)
mov L0x4000829a98 x14;
mov L0x4000829aa0 x15;
(* ldp	x19, x20, [x29, #16]                        #! EA = L0x4000829970; Value = 0x0000004000016928; PC = 0x274877979692 *)
mov x19 L0x4000829970;
mov x20 L0x4000829978;
(* ldp	x21, x22, [x29, #32]                        #! EA = L0x4000829980; Value = 0x0000004000829f18; PC = 0x274877979696 *)
mov x21 L0x4000829980;
mov x22 L0x4000829988;
(* ldr	x29, [sp], #48                              #! EA = L0x4000829960; Value = 0x0000004000829990; PC = 0x274877979700 *)
mov x29 L0x4000829960;
(* #autiasp                                         #! PC = 0x274877979704 *)
#autiasp                                         #! 0x274877979704 = 0x274877979704;
(* #ret                                            #! PC = 0x274877979708 *)
#ret                                            #! 0x274877979708 = 0x274877979708;
(* mov	x3, x19                                     #! PC = 0x274877950820 *)
mov x3 x19;
(* ldr	x2, [sp, #160]                              #! EA = L0x4000829a30; Value = 0x000000400082a228; PC = 0x274877950824 *)
mov x2 L0x4000829a30;
(* ldr	x1, [sp, #112]                              #! EA = L0x4000829a00; Value = 0x000000400082a168; PC = 0x274877950828 *)
mov x1 L0x4000829a00;
(* mov	x0, x25                                     #! PC = 0x274877950832 *)
mov x0 x25;
(* #bl	0x4000011be0 <add_mod_384x>                 #! PC = 0x274877950836 *)
#bl	0x4000011be0 <add_mod_384x>                 #! 0x274877950836 = 0x274877950836;
(* #paciasp                                         #! PC = 0x274877979616 *)
#paciasp                                         #! 0x274877979616 = 0x274877979616;
(* stp	x29, x30, [sp, #-48]!                       #! EA = L0x4000829960; PC = 0x274877979620 *)
mov L0x4000829960 x29;
mov L0x4000829968 x30;
(* mov	x29, sp                                     #! PC = 0x274877979624 *)
mov x29 sp;
(* stp	x19, x20, [sp, #16]                         #! EA = L0x4000829970; PC = 0x274877979628 *)
mov L0x4000829970 x19;
mov L0x4000829978 x20;
(* stp	x21, x22, [sp, #32]                         #! EA = L0x4000829980; PC = 0x274877979632 *)
mov L0x4000829980 x21;
mov L0x4000829988 x22;
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
(* ldp	x10, x11, [x1]                              #! EA = L0x400082a168; Value = 0xb9ff00400083c80b; PC = 0x274877979488 *)
mov x10 L0x400082a168;
mov x11 L0x400082a170;
(* ldp	x16, x17, [x2]                              #! EA = L0x400082a228; Value = 0x000000400085ea78; PC = 0x274877979492 *)
mov x16 L0x400082a228;
mov x17 L0x400082a230;
(* ldp	x12, x13, [x1, #16]                         #! EA = L0x400082a178; Value = 0x6730d2e0f738100c; PC = 0x274877979496 *)
mov x12 L0x400082a178;
mov x13 L0x400082a180;
(* ldp	x19, x20, [x2, #16]                         #! EA = L0x400082a238; Value = 0x0000000000000000; PC = 0x274877979500 *)
mov x19 L0x400082a238;
mov x20 L0x400082a240;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0x400082a188; Value = 0x4b1ba7f6434ecfb7; PC = 0x274877979504 *)
mov x14 L0x400082a188;
mov x15 L0x400082a190;
(* ldp	x21, x22, [x2, #32]                         #! EA = L0x400082a248; Value = 0x0000004000841c68; PC = 0x274877979508 *)
mov x21 L0x400082a248;
mov x22 L0x400082a250;
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
(* stp	x10, x11, [x0]                              #! EA = L0x4000829aa8; PC = 0x274877979652 *)
mov L0x4000829aa8 x10;
mov L0x4000829ab0 x11;
(* add	x1, x1, #0x30                               #! PC = 0x274877979656 *)
adds dontcare x1 x1 0x30@uint64;
(* stp	x12, x13, [x0, #16]                         #! EA = L0x4000829ab8; PC = 0x274877979660 *)
mov L0x4000829ab8 x12;
mov L0x4000829ac0 x13;
(* add	x2, x2, #0x30                               #! PC = 0x274877979664 *)
adds dontcare x2 x2 0x30@uint64;
(* stp	x14, x15, [x0, #32]                         #! EA = L0x4000829ac8; PC = 0x274877979668 *)
mov L0x4000829ac8 x14;
mov L0x4000829ad0 x15;
(* #bl	0x4000011b60 <__add_mod_384>                #! PC = 0x274877979672 *)
#bl	0x4000011b60 <__add_mod_384>                #! 0x274877979672 = 0x274877979672;
(* ldp	x10, x11, [x1]                              #! EA = L0x400082a198; Value = 0x000000400085de20; PC = 0x274877979488 *)
mov x10 L0x400082a198;
mov x11 L0x400082a1a0;
(* ldp	x16, x17, [x2]                              #! EA = L0x400082a258; Value = 0x0000008001087e28; PC = 0x274877979492 *)
mov x16 L0x400082a258;
mov x17 L0x400082a260;
(* ldp	x12, x13, [x1, #16]                         #! EA = L0x400082a1a8; Value = 0x000000800106f748; PC = 0x274877979496 *)
mov x12 L0x400082a1a8;
mov x13 L0x400082a1b0;
(* ldp	x19, x20, [x2, #16]                         #! EA = L0x400082a268; Value = 0x0000004000000040; PC = 0x274877979500 *)
mov x19 L0x400082a268;
mov x20 L0x400082a270;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0x400082a1b8; Value = 0x000000c0018b3d60; PC = 0x274877979504 *)
mov x14 L0x400082a1b8;
mov x15 L0x400082a1c0;
(* ldp	x21, x22, [x2, #32]                         #! EA = L0x400082a278; Value = 0x000000400085d000; PC = 0x274877979508 *)
mov x21 L0x400082a278;
mov x22 L0x400082a280;
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
(* ldr	x30, [sp, #8]                               #! EA = L0x4000829968; Value = 0x003000400000ab78; PC = 0x274877979676 *)
mov x30 L0x4000829968;
(* stp	x10, x11, [x0, #48]                         #! EA = L0x4000829ad8; PC = 0x274877979680 *)
mov L0x4000829ad8 x10;
mov L0x4000829ae0 x11;
(* stp	x12, x13, [x0, #64]                         #! EA = L0x4000829ae8; PC = 0x274877979684 *)
mov L0x4000829ae8 x12;
mov L0x4000829af0 x13;
(* stp	x14, x15, [x0, #80]                         #! EA = L0x4000829af8; PC = 0x274877979688 *)
mov L0x4000829af8 x14;
mov L0x4000829b00 x15;
(* ldp	x19, x20, [x29, #16]                        #! EA = L0x4000829970; Value = 0x0000004000016928; PC = 0x274877979692 *)
mov x19 L0x4000829970;
mov x20 L0x4000829978;
(* ldp	x21, x22, [x29, #32]                        #! EA = L0x4000829980; Value = 0x0000004000829f18; PC = 0x274877979696 *)
mov x21 L0x4000829980;
mov x22 L0x4000829988;
(* ldr	x29, [sp], #48                              #! EA = L0x4000829960; Value = 0x0000004000829990; PC = 0x274877979700 *)
mov x29 L0x4000829960;
(* #autiasp                                         #! PC = 0x274877979704 *)
#autiasp                                         #! 0x274877979704 = 0x274877979704;
(* #ret                                            #! PC = 0x274877979708 *)
#ret                                            #! 0x274877979708 = 0x274877979708;

(* add_fp2(aa, a[0], a[2]) *)

assert true
    && and [eqmod (limbs 64 [L0x4000829a48, L0x4000829a50, L0x4000829a58,
                             L0x4000829a60, L0x4000829a68, L0x4000829a70])
                  (limbs 64 [a00, a01, a02, a03, a04, a05] +
                   limbs 64 [a40, a41, a42, a43, a44, a45])
                  (limbs 64 [m0, m1, m2, m3, m4, m5]),
            eqmod (limbs 64 [L0x4000829a78, L0x4000829a80, L0x4000829a88,
                             L0x4000829a90, L0x4000829a98, L0x4000829aa0])
                  (limbs 64 [a10, a11, a12, a13, a14, a15] +
                   limbs 64 [a50, a51, a52, a53, a54, a55])
                  (limbs 64 [m0, m1, m2, m3, m4, m5])];

assume and [eqmod (limbs 64 [L0x4000829a48, L0x4000829a50, L0x4000829a58,
                             L0x4000829a60, L0x4000829a68, L0x4000829a70])
                  (limbs 64 [a00, a01, a02, a03, a04, a05] +
                   limbs 64 [a40, a41, a42, a43, a44, a45])
                  (limbs 64 [m0, m1, m2, m3, m4, m5]),
            eqmod (limbs 64 [L0x4000829a78, L0x4000829a80, L0x4000829a88,
                             L0x4000829a90, L0x4000829a98, L0x4000829aa0])
                  (limbs 64 [a10, a11, a12, a13, a14, a15] +
                   limbs 64 [a50, a51, a52, a53, a54, a55])
                  (limbs 64 [m0, m1, m2, m3, m4, m5])]
    && true;

(* add_fp2(bb, b[0], b[2]) *)

assert true
    && and [eqmod (limbs 64 [L0x4000829aa8, L0x4000829ab0, L0x4000829ab8,
                             L0x4000829ac0, L0x4000829ac8, L0x4000829ad0])
                  (limbs 64 [b00, b01, b02, b03, b04, b05] +
                   limbs 64 [b40, b41, b42, b43, b44, b45])
                  (limbs 64 [m0, m1, m2, m3, m4, m5]),
            eqmod (limbs 64 [L0x4000829ad8, L0x4000829ae0, L0x4000829ae8,
                             L0x4000829af0, L0x4000829af8, L0x4000829b00])
                  (limbs 64 [b10, b11, b12, b13, b14, b15] +
                   limbs 64 [b50, b51, b52, b53, b54, b55])
                  (limbs 64 [m0, m1, m2, m3, m4, m5])];

assume and [eqmod (limbs 64 [L0x4000829aa8, L0x4000829ab0, L0x4000829ab8,
                             L0x4000829ac0, L0x4000829ac8, L0x4000829ad0])
                  (limbs 64 [b00, b01, b02, b03, b04, b05] +
                   limbs 64 [b40, b41, b42, b43, b44, b45])
                  (limbs 64 [m0, m1, m2, m3, m4, m5]),
            eqmod (limbs 64 [L0x4000829ad8, L0x4000829ae0, L0x4000829ae8,
                             L0x4000829af0, L0x4000829af8, L0x4000829b00])
                  (limbs 64 [b10, b11, b12, b13, b14, b15] +
                   limbs 64 [b50, b51, b52, b53, b54, b55])
                  (limbs 64 [m0, m1, m2, m3, m4, m5])]
    && true;

ghost L0x4000829a48r2@uint64, L0x4000829a50r2@uint64, L0x4000829a58r2@uint64,
      L0x4000829a60r2@uint64, L0x4000829a68r2@uint64, L0x4000829a70r2@uint64,
      L0x4000829a78r2@uint64, L0x4000829a80r2@uint64, L0x4000829a88r2@uint64,
      L0x4000829a90r2@uint64, L0x4000829a98r2@uint64, L0x4000829aa0r2@uint64,
      L0x4000829aa8r2@uint64, L0x4000829ab0r2@uint64, L0x4000829ab8r2@uint64,
      L0x4000829ac0r2@uint64, L0x4000829ac8r2@uint64, L0x4000829ad0r2@uint64,
      L0x4000829ad8r2@uint64, L0x4000829ae0r2@uint64, L0x4000829ae8r2@uint64,
      L0x4000829af0r2@uint64, L0x4000829af8r2@uint64, L0x4000829b00r2@uint64 :
      and [L0x4000829a48r2=L0x4000829a48, L0x4000829a50r2=L0x4000829a50,
           L0x4000829a58r2=L0x4000829a58, L0x4000829a60r2=L0x4000829a60,
           L0x4000829a68r2=L0x4000829a68, L0x4000829a70r2=L0x4000829a70,
           L0x4000829a78r2=L0x4000829a78, L0x4000829a80r2=L0x4000829a80,
           L0x4000829a88r2=L0x4000829a88, L0x4000829a90r2=L0x4000829a90,
           L0x4000829a98r2=L0x4000829a98, L0x4000829aa0r2=L0x4000829aa0,
           L0x4000829aa8r2=L0x4000829aa8, L0x4000829ab0r2=L0x4000829ab0,
           L0x4000829ab8r2=L0x4000829ab8, L0x4000829ac0r2=L0x4000829ac0,
           L0x4000829ac8r2=L0x4000829ac8, L0x4000829ad0r2=L0x4000829ad0,
           L0x4000829ad8r2=L0x4000829ad8, L0x4000829ae0r2=L0x4000829ae0,
           L0x4000829ae8r2=L0x4000829ae8, L0x4000829af0r2=L0x4000829af0,
           L0x4000829af8r2=L0x4000829af8, L0x4000829b00r2=L0x4000829b00]
   && true;

(* mov	x2, x25                                     #! PC = 0x274877950840 *)
mov x2 x25;
(* mov	x1, x24                                     #! PC = 0x274877950844 *)
mov x1 x24;
(* mov	x0, x21                                     #! PC = 0x274877950848 *)
mov x0 x21;
(* #bl	0x4000008b3c <mul_fp2x2>                    #! PC = 0x274877950852 *)
#bl	0x4000008b3c <mul_fp2x2>                    #! 0x274877950852 = 0x274877950852;
(* stp	x29, x30, [sp, #-16]!                       #! EA = L0x4000829980; PC = 0x274877942588 *)
mov L0x4000829980 x29;
mov L0x4000829988 x30;
(* mov	x29, sp                                     #! PC = 0x274877942592 *)
mov x29 sp;
(* #adrp	x3, 0x4000029000                           #! PC = 0x274877942596 *)
#adrp	%%x3, 0x4000029000                           #! 0x274877942596 = 0x274877942596;
(* ldr	x3, [x3, #4056]                             #! EA = L0x4000029fd8; Value = 0x0000004000016928; PC = 0x274877942600 *)
mov x3 L0x4000029fd8;
(* #bl	0x40000143c0 <mul_382x>                     #! PC = 0x274877942604 *)
#bl	0x40000143c0 <mul_382x>                     #! 0x274877942604 = 0x274877942604;
(* #paciasp                                         #! PC = 0x274877989824 *)
#paciasp                                         #! 0x274877989824 = 0x274877989824;
(* stp	x29, x30, [sp, #-128]!                      #! EA = L0x4000829900; PC = 0x274877989828 *)
mov L0x4000829900 x29;
mov L0x4000829908 x30;
(* mov	x29, sp                                     #! PC = 0x274877989832 *)
mov x29 sp;
(* stp	x19, x20, [sp, #16]                         #! EA = L0x4000829910; PC = 0x274877989836 *)
mov L0x4000829910 x19;
mov L0x4000829918 x20;
(* stp	x21, x22, [sp, #32]                         #! EA = L0x4000829920; PC = 0x274877989840 *)
mov L0x4000829920 x21;
mov L0x4000829928 x22;
(* stp	x23, x24, [sp, #48]                         #! EA = L0x4000829930; PC = 0x274877989844 *)
mov L0x4000829930 x23;
mov L0x4000829938 x24;
(* stp	x25, x26, [sp, #64]                         #! EA = L0x4000829940; PC = 0x274877989848 *)
mov L0x4000829940 x25;
mov L0x4000829948 x26;
(* stp	x27, x28, [sp, #80]                         #! EA = L0x4000829950; PC = 0x274877989852 *)
mov L0x4000829950 x27;
mov L0x4000829958 x28;
(* sub	sp, sp, #0x60                               #! PC = 0x274877989856 *)
subc dontcare sp sp 0x60@uint64;
(* ldp	x11, x12, [x1]                              #! EA = L0x4000829a48; Value = 0x00000080010a07d8; PC = 0x274877989860 *)
mov x11 L0x4000829a48;
mov x12 L0x4000829a50;
(* mov	x26, x0                                     #! PC = 0x274877989864 *)
mov x26 x0;
(* ldp	x19, x20, [x1, #48]                         #! EA = L0x4000829a78; Value = 0x0000008001088c48; PC = 0x274877989868 *)
mov x19 L0x4000829a78;
mov x20 L0x4000829a80;
(* mov	x27, x1                                     #! PC = 0x274877989872 *)
mov x27 x1;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829a58; Value = 0x000000800109f404; PC = 0x274877989876 *)
mov x13 L0x4000829a58;
mov x14 L0x4000829a60;
(* mov	x28, x2                                     #! PC = 0x274877989880 *)
mov x28 x2;
(* ldp	x21, x22, [x1, #64]                         #! EA = L0x4000829a88; Value = 0x000000400082da1c; PC = 0x274877989884 *)
mov x21 L0x4000829a88;
mov x22 L0x4000829a90;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829a68; Value = 0x000000800085d040; PC = 0x274877989888 *)
mov x15 L0x4000829a68;
mov x16 L0x4000829a70;
(* adds	x5, x11, x19                               #! PC = 0x274877989892 *)
adds carry x5 x11 x19;
(* ldp	x23, x24, [x1, #80]                         #! EA = L0x4000829a98; Value = 0x0000008001056d60; PC = 0x274877989896 *)
mov x23 L0x4000829a98;
mov x24 L0x4000829aa0;
(* adcs	x6, x12, x20                               #! PC = 0x274877989900 *)
adcs carry x6 x12 x20 carry;
(* ldp	x11, x12, [x2]                              #! EA = L0x4000829aa8; Value = 0xb9ff00800109b283; PC = 0x274877989904 *)
mov x11 L0x4000829aa8;
mov x12 L0x4000829ab0;
(* adcs	x7, x13, x21                               #! PC = 0x274877989908 *)
adcs carry x7 x13 x21 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x4000829ad8; Value = 0x000000c0018e5c48; PC = 0x274877989912 *)
mov x19 L0x4000829ad8;
mov x20 L0x4000829ae0;
(* adcs	x8, x14, x22                               #! PC = 0x274877989916 *)
adcs carry x8 x14 x22 carry;
(* ldp	x13, x14, [x2, #16]                         #! EA = L0x4000829ab8; Value = 0x6730d2e0f738100c; PC = 0x274877989920 *)
mov x13 L0x4000829ab8;
mov x14 L0x4000829ac0;
(* adcs	x9, x15, x23                               #! PC = 0x274877989924 *)
adcs carry x9 x15 x23 carry;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x4000829ae8; Value = 0x000000c00106f788; PC = 0x274877989928 *)
mov x21 L0x4000829ae8;
mov x22 L0x4000829af0;
(* adc	x10, x16, x24                               #! PC = 0x274877989932 *)
adc x10 x16 x24 carry;
(* ldp	x15, x16, [x2, #32]                         #! EA = L0x4000829ac8; Value = 0x4b1ba83643d2ec1f; PC = 0x274877989936 *)
mov x15 L0x4000829ac8;
mov x16 L0x4000829ad0;
(* stp	x5, x6, [sp]                                #! EA = L0x40008298a0; PC = 0x274877989940 *)
mov L0x40008298a0 x5;
mov L0x40008298a8 x6;
(* adds	x5, x11, x19                               #! PC = 0x274877989944 *)
adds carry x5 x11 x19;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x4000829af8; Value = 0x0000010002110d60; PC = 0x274877989948 *)
mov x23 L0x4000829af8;
mov x24 L0x4000829b00;
(* adcs	x6, x12, x20                               #! PC = 0x274877989952 *)
adcs carry x6 x12 x20 carry;
(* stp	x7, x8, [sp, #16]                           #! EA = L0x40008298b0; PC = 0x274877989956 *)
mov L0x40008298b0 x7;
mov L0x40008298b8 x8;
(* adcs	x7, x13, x21                               #! PC = 0x274877989960 *)
adcs carry x7 x13 x21 carry;
(* adcs	x8, x14, x22                               #! PC = 0x274877989964 *)
adcs carry x8 x14 x22 carry;
(* stp	x9, x10, [sp, #32]                          #! EA = L0x40008298c0; PC = 0x274877989968 *)
mov L0x40008298c0 x9;
mov L0x40008298c8 x10;
(* adcs	x9, x15, x23                               #! PC = 0x274877989972 *)
adcs carry x9 x15 x23 carry;
(* stp	x5, x6, [sp, #48]                           #! EA = L0x40008298d0; PC = 0x274877989976 *)
mov L0x40008298d0 x5;
mov L0x40008298d8 x6;
(* adc	x10, x16, x24                               #! PC = 0x274877989980 *)
adc x10 x16 x24 carry;
(* stp	x7, x8, [sp, #64]                           #! EA = L0x40008298e0; PC = 0x274877989984 *)
mov L0x40008298e0 x7;
mov L0x40008298e8 x8;
(* stp	x9, x10, [sp, #80]                          #! EA = L0x40008298f0; PC = 0x274877989988 *)
mov L0x40008298f0 x9;
mov L0x40008298f8 x10;
(* #bl	0x4000014120 <__mul_384>                    #! PC = 0x274877989992 *)
#bl	0x4000014120 <__mul_384>                    #! 0x274877989992 = 0x274877989992;
(* ldp	x11, x12, [x1]                              #! EA = L0x4000829a48; Value = 0x00000080010a07d8; PC = 0x274877989152 *)
mov x11 L0x4000829a48;
mov x12 L0x4000829a50;
(* ldr	x17, [x2]                                   #! EA = L0x4000829aa8; Value = 0xb9ff00800109b283; PC = 0x274877989156 *)
mov x17 L0x4000829aa8;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829a58; Value = 0x000000800109f404; PC = 0x274877989160 *)
mov x13 L0x4000829a58;
mov x14 L0x4000829a60;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829a68; Value = 0x000000800085d040; PC = 0x274877989164 *)
mov x15 L0x4000829a68;
mov x16 L0x4000829a70;
(* mul	x19, x11, x17                               #! PC = 0x274877989168 *)
mull mulHx11x17 x19 x11 x17;
(* mul	x20, x12, x17                               #! PC = 0x274877989172 *)
mull mulHx12x17 x20 x12 x17;
(* mul	x21, x13, x17                               #! PC = 0x274877989176 *)
mull mulHx13x17 x21 x13 x17;
(* mul	x22, x14, x17                               #! PC = 0x274877989180 *)
mull mulHx14x17 x22 x14 x17;
(* mul	x23, x15, x17                               #! PC = 0x274877989184 *)
mull mulHx15x17 x23 x15 x17;
(* mul	x24, x16, x17                               #! PC = 0x274877989188 *)
mull mulHx16x17 x24 x16 x17;
(* umulh	x5, x11, x17                              #! PC = 0x274877989192 *)
mov x5 mulHx11x17;
(* umulh	x6, x12, x17                              #! PC = 0x274877989196 *)
mov x6 mulHx12x17;
(* umulh	x7, x13, x17                              #! PC = 0x274877989200 *)
mov x7 mulHx13x17;
(* umulh	x8, x14, x17                              #! PC = 0x274877989204 *)
mov x8 mulHx14x17;
(* umulh	x9, x15, x17                              #! PC = 0x274877989208 *)
mov x9 mulHx15x17;
(* umulh	x10, x16, x17                             #! PC = 0x274877989212 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #8]                               #! EA = L0x4000829ab0; Value = 0x1eac003eb1d9d667; PC = 0x274877989216 *)
mov x17 L0x4000829ab0;
(* str	x19, [x0]                                   #! EA = L0x4000829f18; PC = 0x274877989220 *)
mov L0x4000829f18 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989224 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989228 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989232 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989236 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989240 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989244 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989248 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989252 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989256 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989260 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, xzr, x10                               #! PC = 0x274877989264 *)
adc x24 0@uint64 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989268 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989272 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989276 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989280 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989284 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989288 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989292 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989296 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989300 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989304 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989308 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989312 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989316 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #16]                              #! EA = L0x4000829ab8; Value = 0x6730d2e0f738100c; PC = 0x274877989320 *)
mov x17 L0x4000829ab8;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989324 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #8]                               #! EA = L0x4000829f20; PC = 0x274877989328 *)
mov L0x4000829f20 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989332 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989336 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989340 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989344 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989348 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989352 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989356 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989360 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989364 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989368 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989372 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989376 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989380 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989384 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989388 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989392 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989396 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989400 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989404 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989408 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989412 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989416 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989420 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989424 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #24]                              #! EA = L0x4000829ac0; Value = 0x64774c04f48a94e7; PC = 0x274877989428 *)
mov x17 L0x4000829ac0;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989432 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #16]                              #! EA = L0x4000829f28; PC = 0x274877989436 *)
mov L0x4000829f28 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989440 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989444 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989448 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989452 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989456 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989460 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989464 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989468 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989472 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989476 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989480 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989484 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989488 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989492 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989496 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989500 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989504 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989508 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989512 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989516 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989520 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989524 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989528 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989532 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #32]                              #! EA = L0x4000829ac8; Value = 0x4b1ba83643d2ec1f; PC = 0x274877989536 *)
mov x17 L0x4000829ac8;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989540 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #24]                              #! EA = L0x4000829f30; PC = 0x274877989544 *)
mov L0x4000829f30 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989548 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989552 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989556 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989560 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989564 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989568 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989572 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989576 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989580 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989584 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989588 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989592 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989596 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989600 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989604 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989608 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989612 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989616 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989620 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989624 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989628 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989632 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989636 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989640 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #40]                              #! EA = L0x4000829ad0; Value = 0x1a0111ea397cdfcb; PC = 0x274877989644 *)
mov x17 L0x4000829ad0;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989648 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #32]                              #! EA = L0x4000829f38; PC = 0x274877989652 *)
mov L0x4000829f38 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989656 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989660 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989664 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989668 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989672 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989676 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989680 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989684 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989688 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989692 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989696 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989700 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989704 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989708 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989712 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989716 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989720 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989724 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989728 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989732 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989736 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989740 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989744 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989748 *)
mov x10 mulHx16x17;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989752 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #40]                              #! EA = L0x4000829f40; PC = 0x274877989756 *)
mov L0x4000829f40 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989760 *)
adds carry x19 x20 x5;
(* adcs	x20, x21, x6                               #! PC = 0x274877989764 *)
adcs carry x20 x21 x6 carry;
(* adcs	x21, x22, x7                               #! PC = 0x274877989768 *)
adcs carry x21 x22 x7 carry;
(* adcs	x22, x23, x8                               #! PC = 0x274877989772 *)
adcs carry x22 x23 x8 carry;
(* adcs	x23, x24, x9                               #! PC = 0x274877989776 *)
adcs carry x23 x24 x9 carry;
(* adc	x24, x25, x10                               #! PC = 0x274877989780 *)
adc x24 x25 x10 carry;
(* stp	x19, x20, [x0, #48]                         #! EA = L0x4000829f48; PC = 0x274877989784 *)
mov L0x4000829f48 x19;
mov L0x4000829f50 x20;
(* stp	x21, x22, [x0, #64]                         #! EA = L0x4000829f58; PC = 0x274877989788 *)
mov L0x4000829f58 x21;
mov L0x4000829f60 x22;
(* stp	x23, x24, [x0, #80]                         #! EA = L0x4000829f68; PC = 0x274877989792 *)
mov L0x4000829f68 x23;
mov L0x4000829f70 x24;
(* #ret                                            #! PC = 0x274877989796 *)
#ret                                            #! 0x274877989796 = 0x274877989796;
(* mov	x1, sp                                      #! PC = 0x274877989996 *)
mov x1 sp;
(* add	x2, sp, #0x30                               #! PC = 0x274877990000 *)
adds dontcare x2 sp 0x30@uint64;
(* add	x0, x26, #0x60                              #! PC = 0x274877990004 *)
adds dontcare x0 x26 0x60@uint64;
(* #bl	0x4000014120 <__mul_384>                    #! PC = 0x274877990008 *)
#bl	0x4000014120 <__mul_384>                    #! 0x274877990008 = 0x274877990008;
(* ldp	x11, x12, [x1]                              #! EA = L0x40008298a0; Value = 0x0000010002129420; PC = 0x274877989152 *)
mov x11 L0x40008298a0;
mov x12 L0x40008298a8;
(* ldr	x17, [x2]                                   #! EA = L0x40008298d0; Value = 0xb9ff014002980ecb; PC = 0x274877989156 *)
mov x17 L0x40008298d0;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x40008298b0; Value = 0x000000c0018cce20; PC = 0x274877989160 *)
mov x13 L0x40008298b0;
mov x14 L0x40008298b8;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x40008298c0; Value = 0x00000100018b3da0; PC = 0x274877989164 *)
mov x15 L0x40008298c0;
mov x16 L0x40008298c8;
(* mul	x19, x11, x17                               #! PC = 0x274877989168 *)
mull mulHx11x17 x19 x11 x17;
(* mul	x20, x12, x17                               #! PC = 0x274877989172 *)
mull mulHx12x17 x20 x12 x17;
(* mul	x21, x13, x17                               #! PC = 0x274877989176 *)
mull mulHx13x17 x21 x13 x17;
(* mul	x22, x14, x17                               #! PC = 0x274877989180 *)
mull mulHx14x17 x22 x14 x17;
(* mul	x23, x15, x17                               #! PC = 0x274877989184 *)
mull mulHx15x17 x23 x15 x17;
(* mul	x24, x16, x17                               #! PC = 0x274877989188 *)
mull mulHx16x17 x24 x16 x17;
(* umulh	x5, x11, x17                              #! PC = 0x274877989192 *)
mov x5 mulHx11x17;
(* umulh	x6, x12, x17                              #! PC = 0x274877989196 *)
mov x6 mulHx12x17;
(* umulh	x7, x13, x17                              #! PC = 0x274877989200 *)
mov x7 mulHx13x17;
(* umulh	x8, x14, x17                              #! PC = 0x274877989204 *)
mov x8 mulHx14x17;
(* umulh	x9, x15, x17                              #! PC = 0x274877989208 *)
mov x9 mulHx15x17;
(* umulh	x10, x16, x17                             #! PC = 0x274877989212 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #8]                               #! EA = L0x40008298d8; Value = 0x1eac00feb3620a98; PC = 0x274877989216 *)
mov x17 L0x40008298d8;
(* str	x19, [x0]                                   #! EA = L0x4000829f78; PC = 0x274877989220 *)
mov L0x4000829f78 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989224 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989228 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989232 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989236 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989240 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989244 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989248 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989252 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989256 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989260 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, xzr, x10                               #! PC = 0x274877989264 *)
adc x24 0@uint64 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989268 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989272 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989276 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989280 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989284 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989288 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989292 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989296 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989300 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989304 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989308 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989312 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989316 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #16]                              #! EA = L0x40008298e0; Value = 0x6730d3a0f83f0794; PC = 0x274877989320 *)
mov x17 L0x40008298e0;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989324 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #8]                               #! EA = L0x4000829f80; PC = 0x274877989328 *)
mov L0x4000829f80 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989332 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989336 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989340 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989344 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989348 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989352 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989356 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989360 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989364 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989368 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989372 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989376 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989380 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989384 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989388 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989392 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989396 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989400 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989404 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989408 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989412 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989416 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989420 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989424 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #24]                              #! EA = L0x40008298e8; Value = 0x64774c84f5964c29; PC = 0x274877989428 *)
mov x17 L0x40008298e8;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989432 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #16]                              #! EA = L0x4000829f88; PC = 0x274877989436 *)
mov L0x4000829f88 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989440 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989444 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989448 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989452 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989456 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989460 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989464 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989468 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989472 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989476 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989480 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989484 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989488 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989492 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989496 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989500 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989504 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989508 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989512 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989516 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989520 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989524 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989528 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989532 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #32]                              #! EA = L0x40008298f0; Value = 0x4b1ba93645e3f97f; PC = 0x274877989536 *)
mov x17 L0x40008298f0;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989540 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #24]                              #! EA = L0x4000829f90; PC = 0x274877989544 *)
mov L0x4000829f90 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989548 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989552 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989556 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989560 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989564 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989568 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989572 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989576 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989580 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989584 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989588 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989592 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989596 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989600 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989604 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989608 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989612 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989616 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989620 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989624 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989628 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989632 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989636 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989640 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #40]                              #! EA = L0x40008298f8; Value = 0x1a01126a3a85ade4; PC = 0x274877989644 *)
mov x17 L0x40008298f8;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989648 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #32]                              #! EA = L0x4000829f98; PC = 0x274877989652 *)
mov L0x4000829f98 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989656 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989660 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989664 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989668 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989672 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989676 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989680 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989684 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989688 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989692 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989696 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989700 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989704 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989708 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989712 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989716 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989720 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989724 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989728 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989732 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989736 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989740 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989744 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989748 *)
mov x10 mulHx16x17;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989752 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #40]                              #! EA = L0x4000829fa0; PC = 0x274877989756 *)
mov L0x4000829fa0 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989760 *)
adds carry x19 x20 x5;
(* adcs	x20, x21, x6                               #! PC = 0x274877989764 *)
adcs carry x20 x21 x6 carry;
(* adcs	x21, x22, x7                               #! PC = 0x274877989768 *)
adcs carry x21 x22 x7 carry;
(* adcs	x22, x23, x8                               #! PC = 0x274877989772 *)
adcs carry x22 x23 x8 carry;
(* adcs	x23, x24, x9                               #! PC = 0x274877989776 *)
adcs carry x23 x24 x9 carry;
(* adc	x24, x25, x10                               #! PC = 0x274877989780 *)
adc x24 x25 x10 carry;
(* stp	x19, x20, [x0, #48]                         #! EA = L0x4000829fa8; PC = 0x274877989784 *)
mov L0x4000829fa8 x19;
mov L0x4000829fb0 x20;
(* stp	x21, x22, [x0, #64]                         #! EA = L0x4000829fb8; PC = 0x274877989788 *)
mov L0x4000829fb8 x21;
mov L0x4000829fc0 x22;
(* stp	x23, x24, [x0, #80]                         #! EA = L0x4000829fc8; PC = 0x274877989792 *)
mov L0x4000829fc8 x23;
mov L0x4000829fd0 x24;
(* #ret                                            #! PC = 0x274877989796 *)
#ret                                            #! 0x274877989796 = 0x274877989796;
(* add	x1, x27, #0x30                              #! PC = 0x274877990012 *)
adds dontcare x1 x27 0x30@uint64;
(* add	x2, x28, #0x30                              #! PC = 0x274877990016 *)
adds dontcare x2 x28 0x30@uint64;
(* mov	x0, sp                                      #! PC = 0x274877990020 *)
mov x0 sp;
(* #bl	0x4000014120 <__mul_384>                    #! PC = 0x274877990024 *)
#bl	0x4000014120 <__mul_384>                    #! 0x274877990024 = 0x274877990024;
(* ldp	x11, x12, [x1]                              #! EA = L0x4000829a78; Value = 0x0000008001088c48; PC = 0x274877989152 *)
mov x11 L0x4000829a78;
mov x12 L0x4000829a80;
(* ldr	x17, [x2]                                   #! EA = L0x4000829ad8; Value = 0x000000c0018e5c48; PC = 0x274877989156 *)
mov x17 L0x4000829ad8;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829a88; Value = 0x000000400082da1c; PC = 0x274877989160 *)
mov x13 L0x4000829a88;
mov x14 L0x4000829a90;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829a98; Value = 0x0000008001056d60; PC = 0x274877989164 *)
mov x15 L0x4000829a98;
mov x16 L0x4000829aa0;
(* mul	x19, x11, x17                               #! PC = 0x274877989168 *)
mull mulHx11x17 x19 x11 x17;
(* mul	x20, x12, x17                               #! PC = 0x274877989172 *)
mull mulHx12x17 x20 x12 x17;
(* mul	x21, x13, x17                               #! PC = 0x274877989176 *)
mull mulHx13x17 x21 x13 x17;
(* mul	x22, x14, x17                               #! PC = 0x274877989180 *)
mull mulHx14x17 x22 x14 x17;
(* mul	x23, x15, x17                               #! PC = 0x274877989184 *)
mull mulHx15x17 x23 x15 x17;
(* mul	x24, x16, x17                               #! PC = 0x274877989188 *)
mull mulHx16x17 x24 x16 x17;
(* umulh	x5, x11, x17                              #! PC = 0x274877989192 *)
mov x5 mulHx11x17;
(* umulh	x6, x12, x17                              #! PC = 0x274877989196 *)
mov x6 mulHx12x17;
(* umulh	x7, x13, x17                              #! PC = 0x274877989200 *)
mov x7 mulHx13x17;
(* umulh	x8, x14, x17                              #! PC = 0x274877989204 *)
mov x8 mulHx14x17;
(* umulh	x9, x15, x17                              #! PC = 0x274877989208 *)
mov x9 mulHx15x17;
(* umulh	x10, x16, x17                             #! PC = 0x274877989212 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #8]                               #! EA = L0x4000829ae0; Value = 0x000000c001883431; PC = 0x274877989216 *)
mov x17 L0x4000829ae0;
(* str	x19, [x0]                                   #! EA = L0x40008298a0; PC = 0x274877989220 *)
mov L0x40008298a0 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989224 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989228 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989232 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989236 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989240 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989244 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989248 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989252 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989256 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989260 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, xzr, x10                               #! PC = 0x274877989264 *)
adc x24 0@uint64 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989268 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989272 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989276 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989280 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989284 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989288 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989292 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989296 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989300 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989304 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989308 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989312 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989316 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #16]                              #! EA = L0x4000829ae8; Value = 0x000000c00106f788; PC = 0x274877989320 *)
mov x17 L0x4000829ae8;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989324 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #8]                               #! EA = L0x40008298a8; PC = 0x274877989328 *)
mov L0x40008298a8 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989332 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989336 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989340 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989344 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989348 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989352 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989356 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989360 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989364 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989368 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989372 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989376 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989380 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989384 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989388 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989392 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989396 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989400 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989404 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989408 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989412 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989416 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989420 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989424 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #24]                              #! EA = L0x4000829af0; Value = 0x00000080010bb742; PC = 0x274877989428 *)
mov x17 L0x4000829af0;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989432 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #16]                              #! EA = L0x40008298b0; PC = 0x274877989436 *)
mov L0x40008298b0 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989440 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989444 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989448 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989452 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989456 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989460 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989464 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989468 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989472 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989476 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989480 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989484 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989488 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989492 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989496 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989500 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989504 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989508 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989512 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989516 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989520 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989524 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989528 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989532 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #32]                              #! EA = L0x4000829af8; Value = 0x0000010002110d60; PC = 0x274877989536 *)
mov x17 L0x4000829af8;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989540 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #24]                              #! EA = L0x40008298b8; PC = 0x274877989544 *)
mov L0x40008298b8 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989548 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989552 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989556 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989560 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989564 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989568 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989572 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989576 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989580 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989584 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989588 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989592 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989596 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989600 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989604 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989608 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989612 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989616 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989620 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989624 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989628 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989632 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989636 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989640 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #40]                              #! EA = L0x4000829b00; Value = 0x000000800108ce19; PC = 0x274877989644 *)
mov x17 L0x4000829b00;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989648 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #32]                              #! EA = L0x40008298c0; PC = 0x274877989652 *)
mov L0x40008298c0 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989656 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989660 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989664 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989668 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989672 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989676 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989680 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989684 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989688 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989692 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989696 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989700 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989704 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989708 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989712 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989716 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989720 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989724 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989728 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989732 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989736 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989740 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989744 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989748 *)
mov x10 mulHx16x17;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989752 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #40]                              #! EA = L0x40008298c8; PC = 0x274877989756 *)
mov L0x40008298c8 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989760 *)
adds carry x19 x20 x5;
(* adcs	x20, x21, x6                               #! PC = 0x274877989764 *)
adcs carry x20 x21 x6 carry;
(* adcs	x21, x22, x7                               #! PC = 0x274877989768 *)
adcs carry x21 x22 x7 carry;
(* adcs	x22, x23, x8                               #! PC = 0x274877989772 *)
adcs carry x22 x23 x8 carry;
(* adcs	x23, x24, x9                               #! PC = 0x274877989776 *)
adcs carry x23 x24 x9 carry;
(* adc	x24, x25, x10                               #! PC = 0x274877989780 *)
adc x24 x25 x10 carry;
(* stp	x19, x20, [x0, #48]                         #! EA = L0x40008298d0; PC = 0x274877989784 *)
mov L0x40008298d0 x19;
mov L0x40008298d8 x20;
(* stp	x21, x22, [x0, #64]                         #! EA = L0x40008298e0; PC = 0x274877989788 *)
mov L0x40008298e0 x21;
mov L0x40008298e8 x22;
(* stp	x23, x24, [x0, #80]                         #! EA = L0x40008298f0; PC = 0x274877989792 *)
mov L0x40008298f0 x23;
mov L0x40008298f8 x24;
(* #ret                                            #! PC = 0x274877989796 *)
#ret                                            #! 0x274877989796 = 0x274877989796;
(* ldp	x5, x6, [x3]                                #! EA = L0x4000016928; Value = 0xb9feffffffffaaab; PC = 0x274877990028 *)
mov x5 L0x4000016928;
mov x6 L0x4000016930;
(* ldp	x7, x8, [x3, #16]                           #! EA = L0x4000016938; Value = 0x6730d2a0f6b0f624; PC = 0x274877990032 *)
mov x7 L0x4000016938;
mov x8 L0x4000016940;
(* ldp	x9, x10, [x3, #32]                          #! EA = L0x4000016948; Value = 0x4b1ba7b6434bacd7; PC = 0x274877990036 *)
mov x9 L0x4000016948;
mov x10 L0x4000016950;
(* add	x1, x26, #0x60                              #! PC = 0x274877990040 *)
adds dontcare x1 x26 0x60@uint64;
(* mov	x2, sp                                      #! PC = 0x274877990044 *)
mov x2 sp;
(* add	x0, x26, #0x60                              #! PC = 0x274877990048 *)
adds dontcare x0 x26 0x60@uint64;
(* #bl	0x4000012fa0 <__sub_mod_384x384>            #! PC = 0x274877990052 *)
#bl	0x4000012fa0 <__sub_mod_384x384>            #! 0x274877990052 = 0x274877990052;

rcut and [limbs 64 [L0x40008298d0, L0x40008298d8, L0x40008298e0,
                    L0x40008298e8, L0x40008298f0, L0x40008298f8] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829f48, L0x4000829f50, L0x4000829f58,
                    L0x4000829f60, L0x4000829f68, L0x4000829f70] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829fa8, L0x4000829fb0, L0x4000829fb8,
                    L0x4000829fc0, L0x4000829fc8, L0x4000829fd0] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
          m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
          m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64
     ] prove with precondition;

ghost L0x4000829f78o@uint64, L0x4000829f80o@uint64, L0x4000829f88o@uint64,
      L0x4000829f90o@uint64, L0x4000829f98o@uint64, L0x4000829fa0o@uint64,
      L0x4000829fa8o@uint64, L0x4000829fb0o@uint64, L0x4000829fb8o@uint64,
      L0x4000829fc0o@uint64, L0x4000829fc8o@uint64, L0x4000829fd0o@uint64 :
      and [L0x4000829f78o=L0x4000829f78, L0x4000829f80o=L0x4000829f80,
           L0x4000829f88o=L0x4000829f88, L0x4000829f90o=L0x4000829f90,
           L0x4000829f98o=L0x4000829f98, L0x4000829fa0o=L0x4000829fa0,
           L0x4000829fa8o=L0x4000829fa8, L0x4000829fb0o=L0x4000829fb0,
           L0x4000829fb8o=L0x4000829fb8, L0x4000829fc0o=L0x4000829fc0,
           L0x4000829fc8o=L0x4000829fc8, L0x4000829fd0o=L0x4000829fd0]
   && and [L0x4000829f78o=L0x4000829f78, L0x4000829f80o=L0x4000829f80,
           L0x4000829f88o=L0x4000829f88, L0x4000829f90o=L0x4000829f90,
           L0x4000829f98o=L0x4000829f98, L0x4000829fa0o=L0x4000829fa0,
           L0x4000829fa8o=L0x4000829fa8, L0x4000829fb0o=L0x4000829fb0,
           L0x4000829fb8o=L0x4000829fb8, L0x4000829fc0o=L0x4000829fc0,
           L0x4000829fc8o=L0x4000829fc8, L0x4000829fd0o=L0x4000829fd0];

(* ldp	x11, x12, [x1]                              #! EA = L0x4000829f78; Value = 0xdb2d534edbd53560; PC = 0x274877984672 *)
mov x11 L0x4000829f78;
mov x12 L0x4000829f80;
(* ldp	x19, x20, [x2]                              #! EA = L0x40008298a0; Value = 0x8d98f5a974c15440; PC = 0x274877984676 *)
mov x19 L0x40008298a0;
mov x20 L0x40008298a8;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829f88; Value = 0xb1e7c06ac193cfdf; PC = 0x274877984680 *)
mov x13 L0x4000829f88;
mov x14 L0x4000829f90;
(* subs	x11, x11, x19                              #! PC = 0x274877984684 *)
subc carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x40008298b0; Value = 0xd3adb18a49106ad3; PC = 0x274877984688 *)
mov x21 L0x40008298b0;
mov x22 L0x40008298b8;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984692 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829f98; Value = 0x0e29cff53b97beb1; PC = 0x274877984696 *)
mov x15 L0x4000829f98;
mov x16 L0x4000829fa0;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984700 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x40008298c0; Value = 0x8af196ade03987b6; PC = 0x274877984704 *)
mov x23 L0x40008298c0;
mov x24 L0x40008298c8;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984708 *)
sbcs carry x14 x14 x22 carry;
(* stp	x11, x12, [x0]                              #! EA = L0x4000829f78; PC = 0x274877984712 *)
mov L0x4000829f78 x11;
mov L0x4000829f80 x12;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984716 *)
sbcs carry x15 x15 x23 carry;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0x4000829fa8; Value = 0x058de6395b845f1c; PC = 0x274877984720 *)
mov x11 L0x4000829fa8;
mov x12 L0x4000829fb0;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984724 *)
sbcs carry x16 x16 x24 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x40008298d0; Value = 0x1e91e94867250518; PC = 0x274877984728 *)
mov x19 L0x40008298d0;
mov x20 L0x40008298d8;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x4000829f88; PC = 0x274877984732 *)
mov L0x4000829f88 x13;
mov L0x4000829f90 x14;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0x4000829fb8; Value = 0x5ff0238e611eb87a; PC = 0x274877984736 *)
mov x13 L0x4000829fb8;
mov x14 L0x4000829fc0;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x40008298e0; Value = 0x18fe060b3feae66c; PC = 0x274877984740 *)
mov x21 L0x40008298e0;
mov x22 L0x40008298e8;
(* sbcs	x11, x11, x19                              #! PC = 0x274877984744 *)
sbcs carry x11 x11 x19 carry;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x4000829f98; PC = 0x274877984748 *)
mov L0x4000829f98 x15;
mov L0x4000829fa0 x16;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984752 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #80]                         #! EA = L0x4000829fc8; Value = 0x775826e3ffa5beab; PC = 0x274877984756 *)
mov x15 L0x4000829fc8;
mov x16 L0x4000829fd0;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984760 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x40008298f0; Value = 0x85294cc59b80f5ba; PC = 0x274877984764 *)
mov x23 L0x40008298f0;
mov x24 L0x40008298f8;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984768 *)
sbcs carry x14 x14 x22 carry;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984772 *)
sbcs carry x15 x15 x23 carry;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984776 *)
sbcs carry x16 x16 x24 carry;
(* ngc	x17, xzr                                    #! PC = 0x274877984780 *)
cmov x17 carry 0@uint64 0xffffffffffffffff@uint64;
(* and	x19, x5, x17                                #! PC = 0x274877984784 *)
and x19@uint64 x5 x17;
(* and	x20, x6, x17                                #! PC = 0x274877984788 *)
and x20@uint64 x6 x17;
(* adds	x11, x11, x19                              #! PC = 0x274877984792 *)
adds carry x11 x11 x19;
(* and	x21, x7, x17                                #! PC = 0x274877984796 *)
and x21@uint64 x7 x17;
(* adcs	x12, x12, x20                              #! PC = 0x274877984800 *)
adcs carry x12 x12 x20 carry;
(* and	x22, x8, x17                                #! PC = 0x274877984804 *)
and x22@uint64 x8 x17;
(* adcs	x13, x13, x21                              #! PC = 0x274877984808 *)
adcs carry x13 x13 x21 carry;
(* and	x23, x9, x17                                #! PC = 0x274877984812 *)
and x23@uint64 x9 x17;
(* adcs	x14, x14, x22                              #! PC = 0x274877984816 *)
adcs carry x14 x14 x22 carry;
(* and	x24, x10, x17                               #! PC = 0x274877984820 *)
and x24@uint64 x10 x17;
(* adcs	x15, x15, x23                              #! PC = 0x274877984824 *)
adcs carry x15 x15 x23 carry;
(* stp	x11, x12, [x0, #48]                         #! EA = L0x4000829fa8; PC = 0x274877984828 *)
mov L0x4000829fa8 x11;
mov L0x4000829fb0 x12;
(* adc	x16, x16, x24                               #! PC = 0x274877984832 *)
adcs dontcare x16 x16 x24 carry;
(* stp	x13, x14, [x0, #64]                         #! EA = L0x4000829fb8; PC = 0x274877984836 *)
mov L0x4000829fb8 x13;
mov L0x4000829fc0 x14;
(* stp	x15, x16, [x0, #80]                         #! EA = L0x4000829fc8; PC = 0x274877984840 *)
mov L0x4000829fc8 x15;
mov L0x4000829fd0 x16;
(* #ret                                            #! PC = 0x274877984844 *)
#ret                                            #! 0x274877984844 = 0x274877984844;

assert true
    && eqmod (limbs 64 [L0x4000829f78, L0x4000829f80, L0x4000829f88,
                        L0x4000829f90, L0x4000829f98, L0x4000829fa0,
                        L0x4000829fa8, L0x4000829fb0, L0x4000829fb8,
                        L0x4000829fc0, L0x4000829fc8, L0x4000829fd0] +
              limbs 64 [L0x40008298a0, L0x40008298a8, L0x40008298b0,
                        L0x40008298b8, L0x40008298c0, L0x40008298c8,
                        L0x40008298d0, L0x40008298d8, L0x40008298e0,
                        L0x40008298e8, L0x40008298f0, L0x40008298f8])
             (limbs 64 [L0x4000829f78o, L0x4000829f80o, L0x4000829f88o,
                        L0x4000829f90o, L0x4000829f98o, L0x4000829fa0o,
                        L0x4000829fa8o, L0x4000829fb0o, L0x4000829fb8o,
                        L0x4000829fc0o, L0x4000829fc8o, L0x4000829fd0o])
             (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                          m0,   m1,   m2,   m3,   m4,   m5]);

assume eqmod (limbs 64 [L0x4000829f78, L0x4000829f80, L0x4000829f88,
                        L0x4000829f90, L0x4000829f98, L0x4000829fa0,
                        L0x4000829fa8, L0x4000829fb0, L0x4000829fb8,
                        L0x4000829fc0, L0x4000829fc8, L0x4000829fd0] +
              limbs 64 [L0x40008298a0, L0x40008298a8, L0x40008298b0,
                        L0x40008298b8, L0x40008298c0, L0x40008298c8,
                        L0x40008298d0, L0x40008298d8, L0x40008298e0,
                        L0x40008298e8, L0x40008298f0, L0x40008298f8])
             (limbs 64 [L0x4000829f78o, L0x4000829f80o, L0x4000829f88o,
                        L0x4000829f90o, L0x4000829f98o, L0x4000829fa0o,
                        L0x4000829fa8o, L0x4000829fb0o, L0x4000829fb8o,
                        L0x4000829fc0o, L0x4000829fc8o, L0x4000829fd0o])
             (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5])
    && true;

(* add	x2, x26, #0x0                               #! PC = 0x274877990056 *)
adds dontcare x2 x26 0@uint64;
(* #bl	0x4000012fa0 <__sub_mod_384x384>            #! PC = 0x274877990060 *)
#bl	0x4000012fa0 <__sub_mod_384x384>            #! 0x274877990060 = 0x274877990060;

rcut and [limbs 64 [L0x4000829fa8, L0x4000829fb0, L0x4000829fb8,
                    L0x4000829fc0, L0x4000829fc8, L0x4000829fd0] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
          m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
          m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64
     ];

ghost L0x4000829f78p@uint64, L0x4000829f80p@uint64, L0x4000829f88p@uint64,
      L0x4000829f90p@uint64, L0x4000829f98p@uint64, L0x4000829fa0p@uint64,
      L0x4000829fa8p@uint64, L0x4000829fb0p@uint64, L0x4000829fb8p@uint64,
      L0x4000829fc0p@uint64, L0x4000829fc8p@uint64, L0x4000829fd0p@uint64 :
      and [L0x4000829f78p=L0x4000829f78, L0x4000829f80p=L0x4000829f80,
           L0x4000829f88p=L0x4000829f88, L0x4000829f90p=L0x4000829f90,
           L0x4000829f98p=L0x4000829f98, L0x4000829fa0p=L0x4000829fa0,
           L0x4000829fa8p=L0x4000829fa8, L0x4000829fb0p=L0x4000829fb0,
           L0x4000829fb8p=L0x4000829fb8, L0x4000829fc0p=L0x4000829fc0,
           L0x4000829fc8p=L0x4000829fc8, L0x4000829fd0p=L0x4000829fd0]
   && and [L0x4000829f78p=L0x4000829f78, L0x4000829f80p=L0x4000829f80,
           L0x4000829f88p=L0x4000829f88, L0x4000829f90p=L0x4000829f90,
           L0x4000829f98p=L0x4000829f98, L0x4000829fa0p=L0x4000829fa0,
           L0x4000829fa8p=L0x4000829fa8, L0x4000829fb0p=L0x4000829fb0,
           L0x4000829fb8p=L0x4000829fb8, L0x4000829fc0p=L0x4000829fc0,
           L0x4000829fc8p=L0x4000829fc8, L0x4000829fd0p=L0x4000829fd0];

(* ldp	x11, x12, [x1]                              #! EA = L0x4000829f78; Value = 0x4d945da56713e120; PC = 0x274877984672 *)
mov x11 L0x4000829f78;
mov x12 L0x4000829f80;
(* ldp	x19, x20, [x2]                              #! EA = L0x4000829f18; Value = 0xf206419ba02e3388; PC = 0x274877984676 *)
mov x19 L0x4000829f18;
mov x20 L0x4000829f20;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829f88; Value = 0xde3a0ee07883650c; PC = 0x274877984680 *)
mov x13 L0x4000829f88;
mov x14 L0x4000829f90;
(* subs	x11, x11, x19                              #! PC = 0x274877984684 *)
subc carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x4000829f28; Value = 0xc0210346ada5edb2; PC = 0x274877984688 *)
mov x21 L0x4000829f28;
mov x22 L0x4000829f30;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984692 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829f98; Value = 0x833839475b5e36fb; PC = 0x274877984696 *)
mov x15 L0x4000829f98;
mov x16 L0x4000829fa0;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984700 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x4000829f38; Value = 0x4b41c3b36b36d84d; PC = 0x274877984704 *)
mov x23 L0x4000829f38;
mov x24 L0x4000829f40;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984708 *)
sbcs carry x14 x14 x22 carry;
(* stp	x11, x12, [x0]                              #! EA = L0x4000829f78; PC = 0x274877984712 *)
mov L0x4000829f78 x11;
mov L0x4000829f80 x12;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984716 *)
sbcs carry x15 x15 x23 carry;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0x4000829fa8; Value = 0xe6fbfcf0f45f5a03; PC = 0x274877984720 *)
mov x11 L0x4000829fa8;
mov x12 L0x4000829fb0;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984724 *)
sbcs carry x16 x16 x24 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x4000829f48; Value = 0x4e3ad31c19d1d2ec; PC = 0x274877984728 *)
mov x19 L0x4000829f48;
mov x20 L0x4000829f50;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x4000829f88; PC = 0x274877984732 *)
mov L0x4000829f88 x13;
mov L0x4000829f90 x14;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0x4000829fb8; Value = 0x46f21d832133d20d; PC = 0x274877984736 *)
mov x13 L0x4000829fb8;
mov x14 L0x4000829fc0;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x4000829f58; Value = 0x95102f51fd067ec1; PC = 0x274877984740 *)
mov x21 L0x4000829f58;
mov x22 L0x4000829f60;
(* sbcs	x11, x11, x19                              #! PC = 0x274877984744 *)
sbcs carry x11 x11 x19 carry;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x4000829f98; PC = 0x274877984748 *)
mov L0x4000829f98 x15;
mov L0x4000829fa0 x16;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984752 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #80]                         #! EA = L0x4000829fc8; Value = 0xf22eda1e6424c8f1; PC = 0x274877984756 *)
mov x15 L0x4000829fc8;
mov x16 L0x4000829fd0;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984760 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x4000829f68; Value = 0x95c0a8e31a9dbf3c; PC = 0x274877984764 *)
mov x23 L0x4000829f68;
mov x24 L0x4000829f70;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984768 *)
sbcs carry x14 x14 x22 carry;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984772 *)
sbcs carry x15 x15 x23 carry;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984776 *)
sbcs carry x16 x16 x24 carry;
(* ngc	x17, xzr                                    #! PC = 0x274877984780 *)
cmov x17 carry 0@uint64 0xffffffffffffffff@uint64;
(* and	x19, x5, x17                                #! PC = 0x274877984784 *)
and x19@uint64 x5 x17;
(* and	x20, x6, x17                                #! PC = 0x274877984788 *)
and x20@uint64 x6 x17;
(* adds	x11, x11, x19                              #! PC = 0x274877984792 *)
adds carry x11 x11 x19;
(* and	x21, x7, x17                                #! PC = 0x274877984796 *)
and x21@uint64 x7 x17;
(* adcs	x12, x12, x20                              #! PC = 0x274877984800 *)
adcs carry x12 x12 x20 carry;
(* and	x22, x8, x17                                #! PC = 0x274877984804 *)
and x22@uint64 x8 x17;
(* adcs	x13, x13, x21                              #! PC = 0x274877984808 *)
adcs carry x13 x13 x21 carry;
(* and	x23, x9, x17                                #! PC = 0x274877984812 *)
and x23@uint64 x9 x17;
(* adcs	x14, x14, x22                              #! PC = 0x274877984816 *)
adcs carry x14 x14 x22 carry;
(* and	x24, x10, x17                               #! PC = 0x274877984820 *)
and x24@uint64 x10 x17;
(* adcs	x15, x15, x23                              #! PC = 0x274877984824 *)
adcs carry x15 x15 x23 carry;
(* stp	x11, x12, [x0, #48]                         #! EA = L0x4000829fa8; PC = 0x274877984828 *)
mov L0x4000829fa8 x11;
mov L0x4000829fb0 x12;
(* adc	x16, x16, x24                               #! PC = 0x274877984832 *)
adcs dontcare x16 x16 x24 carry;
(* stp	x13, x14, [x0, #64]                         #! EA = L0x4000829fb8; PC = 0x274877984836 *)
mov L0x4000829fb8 x13;
mov L0x4000829fc0 x14;
(* stp	x15, x16, [x0, #80]                         #! EA = L0x4000829fc8; PC = 0x274877984840 *)
mov L0x4000829fc8 x15;
mov L0x4000829fd0 x16;
(* #ret                                            #! PC = 0x274877984844 *)
#ret                                            #! 0x274877984844 = 0x274877984844;

assert true
    && eqmod (limbs 64 [L0x4000829f78, L0x4000829f80, L0x4000829f88,
                        L0x4000829f90, L0x4000829f98, L0x4000829fa0,
                        L0x4000829fa8, L0x4000829fb0, L0x4000829fb8,
                        L0x4000829fc0, L0x4000829fc8, L0x4000829fd0] +
              limbs 64 [L0x4000829f18, L0x4000829f20, L0x4000829f28,
                        L0x4000829f30, L0x4000829f38, L0x4000829f40,
                        L0x4000829f48, L0x4000829f50, L0x4000829f58,
                        L0x4000829f60, L0x4000829f68, L0x4000829f70])
             (limbs 64 [L0x4000829f78p, L0x4000829f80p, L0x4000829f88p,
                        L0x4000829f90p, L0x4000829f98p, L0x4000829fa0p,
                        L0x4000829fa8p, L0x4000829fb0p, L0x4000829fb8p,
                        L0x4000829fc0p, L0x4000829fc8p, L0x4000829fd0p])
             (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                          m0,   m1,   m2,   m3,   m4,   m5]);

assume eqmod (limbs 64 [L0x4000829f78, L0x4000829f80, L0x4000829f88,
                        L0x4000829f90, L0x4000829f98, L0x4000829fa0,
                        L0x4000829fa8, L0x4000829fb0, L0x4000829fb8,
                        L0x4000829fc0, L0x4000829fc8, L0x4000829fd0] +
              limbs 64 [L0x4000829f18, L0x4000829f20, L0x4000829f28,
                        L0x4000829f30, L0x4000829f38, L0x4000829f40,
                        L0x4000829f48, L0x4000829f50, L0x4000829f58,
                        L0x4000829f60, L0x4000829f68, L0x4000829f70])
             (limbs 64 [L0x4000829f78p, L0x4000829f80p, L0x4000829f88p,
                        L0x4000829f90p, L0x4000829f98p, L0x4000829fa0p,
                        L0x4000829fa8p, L0x4000829fb0p, L0x4000829fb8p,
                        L0x4000829fc0p, L0x4000829fc8p, L0x4000829fd0p])
             (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5])
    && true;

(* add	x1, x26, #0x0                               #! PC = 0x274877990064 *)
adds dontcare x1 x26 0@uint64;
(* mov	x2, sp                                      #! PC = 0x274877990068 *)
mov x2 sp;
(* add	x0, x26, #0x0                               #! PC = 0x274877990072 *)
adds dontcare x0 x26 0@uint64;
(* #bl	0x4000012fa0 <__sub_mod_384x384>            #! PC = 0x274877990076 *)
#bl	0x4000012fa0 <__sub_mod_384x384>            #! 0x274877990076 = 0x274877990076;

rcut and [limbs 64 [L0x40008298d0, L0x40008298d8, L0x40008298e0,
                    L0x40008298e8, L0x40008298f0, L0x40008298f8] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829f48, L0x4000829f50, L0x4000829f58,
                    L0x4000829f60, L0x4000829f68, L0x4000829f70] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829fa8, L0x4000829fb0, L0x4000829fb8,
                    L0x4000829fc0, L0x4000829fc8, L0x4000829fd0] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
          m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
          m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64
     ] prove with all cuts;

ghost L0x4000829f18o@uint64, L0x4000829f20o@uint64, L0x4000829f28o@uint64,
      L0x4000829f30o@uint64, L0x4000829f38o@uint64, L0x4000829f40o@uint64,
      L0x4000829f48o@uint64, L0x4000829f50o@uint64, L0x4000829f58o@uint64,
      L0x4000829f60o@uint64, L0x4000829f68o@uint64, L0x4000829f70o@uint64 :
      and [L0x4000829f18o=L0x4000829f18, L0x4000829f20o=L0x4000829f20,
           L0x4000829f28o=L0x4000829f28, L0x4000829f30o=L0x4000829f30,
           L0x4000829f38o=L0x4000829f38, L0x4000829f40o=L0x4000829f40,
           L0x4000829f48o=L0x4000829f48, L0x4000829f50o=L0x4000829f50,
           L0x4000829f58o=L0x4000829f58, L0x4000829f60o=L0x4000829f60,
           L0x4000829f68o=L0x4000829f68, L0x4000829f70o=L0x4000829f70]
   && and [L0x4000829f18o=L0x4000829f18, L0x4000829f20o=L0x4000829f20,
           L0x4000829f28o=L0x4000829f28, L0x4000829f30o=L0x4000829f30,
           L0x4000829f38o=L0x4000829f38, L0x4000829f40o=L0x4000829f40,
           L0x4000829f48o=L0x4000829f48, L0x4000829f50o=L0x4000829f50,
           L0x4000829f58o=L0x4000829f58, L0x4000829f60o=L0x4000829f60,
           L0x4000829f68o=L0x4000829f68, L0x4000829f70o=L0x4000829f70];

(* ldp	x11, x12, [x1]                              #! EA = L0x4000829f18; Value = 0xf206419ba02e3388; PC = 0x274877984672 *)
mov x11 L0x4000829f18;
mov x12 L0x4000829f20;
(* ldp	x19, x20, [x2]                              #! EA = L0x40008298a0; Value = 0x8d98f5a974c15440; PC = 0x274877984676 *)
mov x19 L0x40008298a0;
mov x20 L0x40008298a8;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829f28; Value = 0xc0210346ada5edb2; PC = 0x274877984680 *)
mov x13 L0x4000829f28;
mov x14 L0x4000829f30;
(* subs	x11, x11, x19                              #! PC = 0x274877984684 *)
subc carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x40008298b0; Value = 0xd3adb18a49106ad3; PC = 0x274877984688 *)
mov x21 L0x40008298b0;
mov x22 L0x40008298b8;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984692 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829f38; Value = 0x4b41c3b36b36d84d; PC = 0x274877984696 *)
mov x15 L0x4000829f38;
mov x16 L0x4000829f40;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984700 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x40008298c0; Value = 0x8af196ade03987b6; PC = 0x274877984704 *)
mov x23 L0x40008298c0;
mov x24 L0x40008298c8;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984708 *)
sbcs carry x14 x14 x22 carry;
(* stp	x11, x12, [x0]                              #! EA = L0x4000829f18; PC = 0x274877984712 *)
mov L0x4000829f18 x11;
mov L0x4000829f20 x12;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984716 *)
sbcs carry x15 x15 x23 carry;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0x4000829f48; Value = 0x4e3ad31c19d1d2ec; PC = 0x274877984720 *)
mov x11 L0x4000829f48;
mov x12 L0x4000829f50;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984724 *)
sbcs carry x16 x16 x24 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x40008298d0; Value = 0x1e91e94867250518; PC = 0x274877984728 *)
mov x19 L0x40008298d0;
mov x20 L0x40008298d8;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x4000829f28; PC = 0x274877984732 *)
mov L0x4000829f28 x13;
mov L0x4000829f30 x14;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0x4000829f58; Value = 0x95102f51fd067ec1; PC = 0x274877984736 *)
mov x13 L0x4000829f58;
mov x14 L0x4000829f60;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x40008298e0; Value = 0x18fe060b3feae66c; PC = 0x274877984740 *)
mov x21 L0x40008298e0;
mov x22 L0x40008298e8;
(* sbcs	x11, x11, x19                              #! PC = 0x274877984744 *)
sbcs carry x11 x11 x19 carry;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x4000829f38; PC = 0x274877984748 *)
mov L0x4000829f38 x15;
mov L0x4000829f40 x16;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984752 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #80]                         #! EA = L0x4000829f68; Value = 0x95c0a8e31a9dbf3c; PC = 0x274877984756 *)
mov x15 L0x4000829f68;
mov x16 L0x4000829f70;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984760 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x40008298f0; Value = 0x85294cc59b80f5ba; PC = 0x274877984764 *)
mov x23 L0x40008298f0;
mov x24 L0x40008298f8;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984768 *)
sbcs carry x14 x14 x22 carry;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984772 *)
sbcs carry x15 x15 x23 carry;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984776 *)
sbcs carry x16 x16 x24 carry;
(* ngc	x17, xzr                                    #! PC = 0x274877984780 *)
cmov x17 carry 0@uint64 0xffffffffffffffff@uint64;
(* and	x19, x5, x17                                #! PC = 0x274877984784 *)
and x19@uint64 x5 x17;
(* and	x20, x6, x17                                #! PC = 0x274877984788 *)
and x20@uint64 x6 x17;
(* adds	x11, x11, x19                              #! PC = 0x274877984792 *)
adds carry x11 x11 x19;
(* and	x21, x7, x17                                #! PC = 0x274877984796 *)
and x21@uint64 x7 x17;
(* adcs	x12, x12, x20                              #! PC = 0x274877984800 *)
adcs carry x12 x12 x20 carry;
(* and	x22, x8, x17                                #! PC = 0x274877984804 *)
and x22@uint64 x8 x17;
(* adcs	x13, x13, x21                              #! PC = 0x274877984808 *)
adcs carry x13 x13 x21 carry;
(* and	x23, x9, x17                                #! PC = 0x274877984812 *)
and x23@uint64 x9 x17;
(* adcs	x14, x14, x22                              #! PC = 0x274877984816 *)
adcs carry x14 x14 x22 carry;
(* and	x24, x10, x17                               #! PC = 0x274877984820 *)
and x24@uint64 x10 x17;
(* adcs	x15, x15, x23                              #! PC = 0x274877984824 *)
adcs carry x15 x15 x23 carry;
(* stp	x11, x12, [x0, #48]                         #! EA = L0x4000829f48; PC = 0x274877984828 *)
mov L0x4000829f48 x11;
mov L0x4000829f50 x12;
(* adc	x16, x16, x24                               #! PC = 0x274877984832 *)
adcs dontcare x16 x16 x24 carry;
(* stp	x13, x14, [x0, #64]                         #! EA = L0x4000829f58; PC = 0x274877984836 *)
mov L0x4000829f58 x13;
mov L0x4000829f60 x14;
(* stp	x15, x16, [x0, #80]                         #! EA = L0x4000829f68; PC = 0x274877984840 *)
mov L0x4000829f68 x15;
mov L0x4000829f70 x16;
(* #ret                                            #! PC = 0x274877984844 *)
#ret                                            #! 0x274877984844 = 0x274877984844;
(* ldr	x30, [x29, #8]                              #! EA = L0x4000829908; Value = 0x001f004000008b50; PC = 0x274877990080 *)
mov x30 L0x4000829908;
(* add	sp, sp, #0x60                               #! PC = 0x274877990084 *)
adds dontcare sp sp 0x60@uint64;
(* ldp	x19, x20, [x29, #16]                        #! EA = L0x4000829910; Value = 0x0000004000016928; PC = 0x274877990088 *)
mov x19 L0x4000829910;
mov x20 L0x4000829918;
(* ldp	x21, x22, [x29, #32]                        #! EA = L0x4000829920; Value = 0x0000004000829f18; PC = 0x274877990092 *)
mov x21 L0x4000829920;
mov x22 L0x4000829928;
(* ldp	x23, x24, [x29, #48]                        #! EA = L0x4000829930; Value = 0x0000004000829c88; PC = 0x274877990096 *)
mov x23 L0x4000829930;
mov x24 L0x4000829938;
(* ldp	x25, x26, [x29, #64]                        #! EA = L0x4000829940; Value = 0x0000004000829aa8; PC = 0x274877990100 *)
mov x25 L0x4000829940;
mov x26 L0x4000829948;
(* ldp	x27, x28, [x29, #80]                        #! EA = L0x4000829950; Value = 0x0000004000829b08; PC = 0x274877990104 *)
mov x27 L0x4000829950;
mov x28 L0x4000829958;
(* ldr	x29, [sp], #128                             #! EA = L0x4000829900; Value = 0x0000004000829980; PC = 0x274877990108 *)
mov x29 L0x4000829900;
(* #autiasp                                         #! PC = 0x274877990112 *)
#autiasp                                         #! 0x274877990112 = 0x274877990112;
(* #ret                                            #! PC = 0x274877990116 *)
#ret                                            #! 0x274877990116 = 0x274877990116;

assert true
    && eqmod (limbs 64 [L0x4000829f18, L0x4000829f20, L0x4000829f28,
                        L0x4000829f30, L0x4000829f38, L0x4000829f40,
                        L0x4000829f48, L0x4000829f50, L0x4000829f58,
                        L0x4000829f60, L0x4000829f68, L0x4000829f70] +
              limbs 64 [L0x40008298a0, L0x40008298a8, L0x40008298b0,
                        L0x40008298b8, L0x40008298c0, L0x40008298c8,
                        L0x40008298d0, L0x40008298d8, L0x40008298e0,
                        L0x40008298e8, L0x40008298f0, L0x40008298f8])
             (limbs 64 [L0x4000829f18o, L0x4000829f20o, L0x4000829f28o,
                        L0x4000829f30o, L0x4000829f38o, L0x4000829f40o,
                        L0x4000829f48o, L0x4000829f50o, L0x4000829f58o,
                        L0x4000829f60o, L0x4000829f68o, L0x4000829f70o])
             (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                          m0,   m1,   m2,   m3,   m4,   m5]);

assume eqmod (limbs 64 [L0x4000829f18, L0x4000829f20, L0x4000829f28,
                        L0x4000829f30, L0x4000829f38, L0x4000829f40,
                        L0x4000829f48, L0x4000829f50, L0x4000829f58,
                        L0x4000829f60, L0x4000829f68, L0x4000829f70] +
              limbs 64 [L0x40008298a0, L0x40008298a8, L0x40008298b0,
                        L0x40008298b8, L0x40008298c0, L0x40008298c8,
                        L0x40008298d0, L0x40008298d8, L0x40008298e0,
                        L0x40008298e8, L0x40008298f0, L0x40008298f8])
             (limbs 64 [L0x4000829f18o, L0x4000829f20o, L0x4000829f28o,
                        L0x4000829f30o, L0x4000829f38o, L0x4000829f40o,
                        L0x4000829f48o, L0x4000829f50o, L0x4000829f58o,
                        L0x4000829f60o, L0x4000829f68o, L0x4000829f70o])
             (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5])
    && true;

(* mul_382x(ret[2], aa, bb) *)

assert and [eqmod (limbs 64 [L0x4000829f18, L0x4000829f20, L0x4000829f28,
                             L0x4000829f30, L0x4000829f38, L0x4000829f40,
                             L0x4000829f48, L0x4000829f50, L0x4000829f58,
                             L0x4000829f60, L0x4000829f68, L0x4000829f70] +
                   limbs 64 [L0x4000829f78, L0x4000829f80, L0x4000829f88,
                             L0x4000829f90, L0x4000829f98, L0x4000829fa0,
                             L0x4000829fa8, L0x4000829fb0, L0x4000829fb8,
                             L0x4000829fc0, L0x4000829fc8, L0x4000829fd0] * U)
                  ((limbs 64 [L0x4000829a48, L0x4000829a50, L0x4000829a58,
                              L0x4000829a60, L0x4000829a68, L0x4000829a70] +
                    limbs 64 [L0x4000829a78, L0x4000829a80, L0x4000829a88,
                             L0x4000829a90, L0x4000829a98, L0x4000829aa0] * U) *
                   (limbs 64 [L0x4000829aa8, L0x4000829ab0, L0x4000829ab8,
                              L0x4000829ac0, L0x4000829ac8, L0x4000829ad0] +
                    limbs 64 [L0x4000829ad8, L0x4000829ae0, L0x4000829ae8,
                              L0x4000829af0, L0x4000829af8, L0x4000829b00] * U))
                  [limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5],
                   U * U + 1],
            eqmod (limbs 64 [L0x4000829a48, L0x4000829a50, L0x4000829a58,
                             L0x4000829a60, L0x4000829a68, L0x4000829a70] +
                   limbs 64 [L0x4000829a78, L0x4000829a80, L0x4000829a88,
                             L0x4000829a90, L0x4000829a98, L0x4000829aa0] * U)
                  (limbs 64 [a00, a01, a02, a03, a04, a05] +
                   limbs 64 [a10, a11, a12, a13, a14, a15] * U +
                   limbs 64 [a40, a41, a42, a43, a44, a45] +
                   limbs 64 [a50, a51, a52, a53, a54, a55] * U)
                  (limbs 64 [m0, m1, m2, m3, m4, m5]),
            eqmod (limbs 64 [L0x4000829aa8, L0x4000829ab0, L0x4000829ab8,
                             L0x4000829ac0, L0x4000829ac8, L0x4000829ad0] +
                   limbs 64 [L0x4000829ad8, L0x4000829ae0, L0x4000829ae8,
                             L0x4000829af0, L0x4000829af8, L0x4000829b00] * U)
                  (limbs 64 [b00, b01, b02, b03, b04, b05] +
                   limbs 64 [b10, b11, b12, b13, b14, b15] * U +
                   limbs 64 [b40, b41, b42, b43, b44, b45] +
                   limbs 64 [b50, b51, b52, b53, b54, b55] * U)
                  (limbs 64 [m0, m1, m2, m3, m4, m5])]
    && true;

(* ldp	x29, x30, [sp], #16                         #! EA = L0x4000829980; Value = 0x0000004000829990; PC = 0x274877942608 *)
mov x29 L0x4000829980;
mov x30 L0x4000829988;
(* #ret                                            #! PC = 0x274877942612 *)
#ret                                            #! 0x274877942612 = 0x274877942612;

rcut and [limbs 64 [L0x4000829b38, L0x4000829b40, L0x4000829b48,
                    L0x4000829b50, L0x4000829b58, L0x4000829b60] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829b98, L0x4000829ba0, L0x4000829ba8,
                    L0x4000829bb0, L0x4000829bb8, L0x4000829bc0] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829f48, L0x4000829f50, L0x4000829f58,
                    L0x4000829f60, L0x4000829f68, L0x4000829f70] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829fa8, L0x4000829fb0, L0x4000829fb8,
                    L0x4000829fc0, L0x4000829fc8, L0x4000829fd0] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
          m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
          m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64
     ] prove with all cuts;

ghost L0x4000829f18q@uint64, L0x4000829f20q@uint64, L0x4000829f28q@uint64,
      L0x4000829f30q@uint64, L0x4000829f38q@uint64, L0x4000829f40q@uint64,
      L0x4000829f48q@uint64, L0x4000829f50q@uint64, L0x4000829f58q@uint64,
      L0x4000829f60q@uint64, L0x4000829f68q@uint64, L0x4000829f70q@uint64,
      L0x4000829f78q@uint64, L0x4000829f80q@uint64, L0x4000829f88q@uint64,
      L0x4000829f90q@uint64, L0x4000829f98q@uint64, L0x4000829fa0q@uint64,
      L0x4000829fa8q@uint64, L0x4000829fb0q@uint64, L0x4000829fb8q@uint64,
      L0x4000829fc0q@uint64, L0x4000829fc8q@uint64, L0x4000829fd0q@uint64 :
      and [L0x4000829f18q=L0x4000829f18, L0x4000829f20q=L0x4000829f20,
           L0x4000829f28q=L0x4000829f28, L0x4000829f30q=L0x4000829f30,
           L0x4000829f38q=L0x4000829f38, L0x4000829f40q=L0x4000829f40,
           L0x4000829f48q=L0x4000829f48, L0x4000829f50q=L0x4000829f50,
           L0x4000829f58q=L0x4000829f58, L0x4000829f60q=L0x4000829f60,
           L0x4000829f68q=L0x4000829f68, L0x4000829f70q=L0x4000829f70,
           L0x4000829f78q=L0x4000829f78, L0x4000829f80q=L0x4000829f80,
           L0x4000829f88q=L0x4000829f88, L0x4000829f90q=L0x4000829f90,
           L0x4000829f98q=L0x4000829f98, L0x4000829fa0q=L0x4000829fa0,
           L0x4000829fa8q=L0x4000829fa8, L0x4000829fb0q=L0x4000829fb0,
           L0x4000829fb8q=L0x4000829fb8, L0x4000829fc0q=L0x4000829fc0,
           L0x4000829fc8q=L0x4000829fc8, L0x4000829fd0q=L0x4000829fd0]
   && and [L0x4000829f18q=L0x4000829f18, L0x4000829f20q=L0x4000829f20,
           L0x4000829f28q=L0x4000829f28, L0x4000829f30q=L0x4000829f30,
           L0x4000829f38q=L0x4000829f38, L0x4000829f40q=L0x4000829f40,
           L0x4000829f48q=L0x4000829f48, L0x4000829f50q=L0x4000829f50,
           L0x4000829f58q=L0x4000829f58, L0x4000829f60q=L0x4000829f60,
           L0x4000829f68q=L0x4000829f68, L0x4000829f70q=L0x4000829f70,
           L0x4000829f78q=L0x4000829f78, L0x4000829f80q=L0x4000829f80,
           L0x4000829f88q=L0x4000829f88, L0x4000829f90q=L0x4000829f90,
           L0x4000829f98q=L0x4000829f98, L0x4000829fa0q=L0x4000829fa0,
           L0x4000829fa8q=L0x4000829fa8, L0x4000829fb0q=L0x4000829fb0,
           L0x4000829fb8q=L0x4000829fb8, L0x4000829fc0q=L0x4000829fc0,
           L0x4000829fc8q=L0x4000829fc8, L0x4000829fd0q=L0x4000829fd0];


(* mov	x3, x19                                     #! PC = 0x274877950856 *)
mov x3 x19;
(* mov	x2, x27                                     #! PC = 0x274877950860 *)
mov x2 x27;
(* mov	x1, x21                                     #! PC = 0x274877950864 *)
mov x1 x21;
(* mov	x0, x21                                     #! PC = 0x274877950868 *)
mov x0 x21;
(* #bl	0x4000012f40 <sub_mod_384x384>              #! PC = 0x274877950872 *)
#bl	0x4000012f40 <sub_mod_384x384>              #! 0x274877950872 = 0x274877950872;
(* #paciasp                                         #! PC = 0x274877984576 *)
#paciasp                                         #! 0x274877984576 = 0x274877984576;
(* stp	x29, x30, [sp, #-64]!                       #! EA = L0x4000829950; PC = 0x274877984580 *)
mov L0x4000829950 x29;
mov L0x4000829958 x30;
(* mov	x29, sp                                     #! PC = 0x274877984584 *)
mov x29 sp;
(* stp	x19, x20, [sp, #16]                         #! EA = L0x4000829960; PC = 0x274877984588 *)
mov L0x4000829960 x19;
mov L0x4000829968 x20;
(* stp	x21, x22, [sp, #32]                         #! EA = L0x4000829970; PC = 0x274877984592 *)
mov L0x4000829970 x21;
mov L0x4000829978 x22;
(* stp	x23, x24, [sp, #48]                         #! EA = L0x4000829980; PC = 0x274877984596 *)
mov L0x4000829980 x23;
mov L0x4000829988 x24;
(* ldp	x5, x6, [x3]                                #! EA = L0x4000016928; Value = 0xb9feffffffffaaab; PC = 0x274877984600 *)
mov x5 L0x4000016928;
mov x6 L0x4000016930;
(* ldp	x7, x8, [x3, #16]                           #! EA = L0x4000016938; Value = 0x6730d2a0f6b0f624; PC = 0x274877984604 *)
mov x7 L0x4000016938;
mov x8 L0x4000016940;
(* ldp	x9, x10, [x3, #32]                          #! EA = L0x4000016948; Value = 0x4b1ba7b6434bacd7; PC = 0x274877984608 *)
mov x9 L0x4000016948;
mov x10 L0x4000016950;
(* #bl	0x4000012fa0 <__sub_mod_384x384>            #! PC = 0x274877984612 *)
#bl	0x4000012fa0 <__sub_mod_384x384>            #! 0x274877984612 = 0x274877984612;
(* ldp	x11, x12, [x1]                              #! EA = L0x4000829f18; Value = 0x646d4bf22b6cdf48; PC = 0x274877984672 *)
mov x11 L0x4000829f18;
mov x12 L0x4000829f20;
(* ldp	x19, x20, [x2]                              #! EA = L0x4000829b08; Value = 0xa1aa48c1b6c4bf20; PC = 0x274877984676 *)
mov x19 L0x4000829b08;
mov x20 L0x4000829b10;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829f28; Value = 0xec7351bc649582df; PC = 0x274877984680 *)
mov x13 L0x4000829f28;
mov x14 L0x4000829f30;
(* subs	x11, x11, x19                              #! PC = 0x274877984684 *)
subc carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x4000829b18; Value = 0xdb753b9dee26c493; PC = 0x274877984688 *)
mov x21 L0x4000829b18;
mov x22 L0x4000829b20;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984692 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829f38; Value = 0xc0502d058afd5096; PC = 0x274877984696 *)
mov x15 L0x4000829f38;
mov x16 L0x4000829f40;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984700 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x4000829b28; Value = 0xb416b4df03830d31; PC = 0x274877984704 *)
mov x23 L0x4000829b28;
mov x24 L0x4000829b30;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984708 *)
sbcs carry x14 x14 x22 carry;
(* stp	x11, x12, [x0]                              #! EA = L0x4000829f18; PC = 0x274877984712 *)
mov L0x4000829f18 x11;
mov L0x4000829f20 x12;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984716 *)
sbcs carry x15 x15 x23 carry;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0x4000829f48; Value = 0x2fa8e9d3b2accdd3; PC = 0x274877984720 *)
mov x11 L0x4000829f48;
mov x12 L0x4000829f50;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984724 *)
sbcs carry x16 x16 x24 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x4000829b38; Value = 0x520fba46aeb315b1; PC = 0x274877984728 *)
mov x19 L0x4000829b38;
mov x20 L0x4000829b40;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x4000829f28; PC = 0x274877984732 *)
mov L0x4000829f28 x13;
mov L0x4000829f30 x14;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0x4000829f58; Value = 0x7c122946bd1b9855; PC = 0x274877984736 *)
mov x13 L0x4000829f58;
mov x14 L0x4000829f60;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x4000829b48; Value = 0x09a67b1981fb69dc; PC = 0x274877984740 *)
mov x21 L0x4000829b48;
mov x22 L0x4000829b50;
(* sbcs	x11, x11, x19                              #! PC = 0x274877984744 *)
sbcs carry x11 x11 x19 carry;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x4000829f38; PC = 0x274877984748 *)
mov L0x4000829f38 x15;
mov L0x4000829f40 x16;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984752 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #80]                         #! EA = L0x4000829f68; Value = 0x10975c1d7f1cc982; PC = 0x274877984756 *)
mov x15 L0x4000829f68;
mov x16 L0x4000829f70;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984760 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x4000829b58; Value = 0xea09a14285a838b9; PC = 0x274877984764 *)
mov x23 L0x4000829b58;
mov x24 L0x4000829b60;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984768 *)
sbcs carry x14 x14 x22 carry;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984772 *)
sbcs carry x15 x15 x23 carry;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984776 *)
sbcs carry x16 x16 x24 carry;
(* ngc	x17, xzr                                    #! PC = 0x274877984780 *)
cmov x17 carry 0@uint64 0xffffffffffffffff@uint64;
(* and	x19, x5, x17                                #! PC = 0x274877984784 *)
and x19@uint64 x5 x17;
(* and	x20, x6, x17                                #! PC = 0x274877984788 *)
and x20@uint64 x6 x17;
(* adds	x11, x11, x19                              #! PC = 0x274877984792 *)
adds carry x11 x11 x19;
(* and	x21, x7, x17                                #! PC = 0x274877984796 *)
and x21@uint64 x7 x17;
(* adcs	x12, x12, x20                              #! PC = 0x274877984800 *)
adcs carry x12 x12 x20 carry;
(* and	x22, x8, x17                                #! PC = 0x274877984804 *)
and x22@uint64 x8 x17;
(* adcs	x13, x13, x21                              #! PC = 0x274877984808 *)
adcs carry x13 x13 x21 carry;
(* and	x23, x9, x17                                #! PC = 0x274877984812 *)
and x23@uint64 x9 x17;
(* adcs	x14, x14, x22                              #! PC = 0x274877984816 *)
adcs carry x14 x14 x22 carry;
(* and	x24, x10, x17                               #! PC = 0x274877984820 *)
and x24@uint64 x10 x17;
(* adcs	x15, x15, x23                              #! PC = 0x274877984824 *)
adcs carry x15 x15 x23 carry;
(* stp	x11, x12, [x0, #48]                         #! EA = L0x4000829f48; PC = 0x274877984828 *)
mov L0x4000829f48 x11;
mov L0x4000829f50 x12;
(* adc	x16, x16, x24                               #! PC = 0x274877984832 *)
adcs dontcare x16 x16 x24 carry;
(* stp	x13, x14, [x0, #64]                         #! EA = L0x4000829f58; PC = 0x274877984836 *)
mov L0x4000829f58 x13;
mov L0x4000829f60 x14;
(* stp	x15, x16, [x0, #80]                         #! EA = L0x4000829f68; PC = 0x274877984840 *)
mov L0x4000829f68 x15;
mov L0x4000829f70 x16;
(* #ret                                            #! PC = 0x274877984844 *)
#ret                                            #! 0x274877984844 = 0x274877984844;
(* ldr	x30, [x29, #8]                              #! EA = L0x4000829958; Value = 0x005a00400000ab9c; PC = 0x274877984616 *)
mov x30 L0x4000829958;
(* ldp	x19, x20, [x29, #16]                        #! EA = L0x4000829960; Value = 0x0000004000016928; PC = 0x274877984620 *)
mov x19 L0x4000829960;
mov x20 L0x4000829968;
(* ldp	x21, x22, [x29, #32]                        #! EA = L0x4000829970; Value = 0x0000004000829f18; PC = 0x274877984624 *)
mov x21 L0x4000829970;
mov x22 L0x4000829978;
(* ldp	x23, x24, [x29, #48]                        #! EA = L0x4000829980; Value = 0x0000004000829c88; PC = 0x274877984628 *)
mov x23 L0x4000829980;
mov x24 L0x4000829988;
(* ldr	x29, [sp], #64                              #! EA = L0x4000829950; Value = 0x0000004000829990; PC = 0x274877984632 *)
mov x29 L0x4000829950;
(* #autiasp                                         #! PC = 0x274877984636 *)
#autiasp                                         #! 0x274877984636 = 0x274877984636;
(* #ret                                            #! PC = 0x274877984640 *)
#ret                                            #! 0x274877984640 = 0x274877984640;
(* mov	x3, x19                                     #! PC = 0x274877950876 *)
mov x3 x19;
(* ldr	x2, [sp, #128]                              #! EA = L0x4000829a10; Value = 0x0000004000829b68; PC = 0x274877950880 *)
mov x2 L0x4000829a10;
(* mov	x1, x20                                     #! PC = 0x274877950884 *)
mov x1 x20;
(* mov	x0, x20                                     #! PC = 0x274877950888 *)
mov x0 x20;
(* #bl	0x4000012f40 <sub_mod_384x384>              #! PC = 0x274877950892 *)
#bl	0x4000012f40 <sub_mod_384x384>              #! 0x274877950892 = 0x274877950892;
(* #paciasp                                         #! PC = 0x274877984576 *)
#paciasp                                         #! 0x274877984576 = 0x274877984576;
(* stp	x29, x30, [sp, #-64]!                       #! EA = L0x4000829950; PC = 0x274877984580 *)
mov L0x4000829950 x29;
mov L0x4000829958 x30;
(* mov	x29, sp                                     #! PC = 0x274877984584 *)
mov x29 sp;
(* stp	x19, x20, [sp, #16]                         #! EA = L0x4000829960; PC = 0x274877984588 *)
mov L0x4000829960 x19;
mov L0x4000829968 x20;
(* stp	x21, x22, [sp, #32]                         #! EA = L0x4000829970; PC = 0x274877984592 *)
mov L0x4000829970 x21;
mov L0x4000829978 x22;
(* stp	x23, x24, [sp, #48]                         #! EA = L0x4000829980; PC = 0x274877984596 *)
mov L0x4000829980 x23;
mov L0x4000829988 x24;
(* ldp	x5, x6, [x3]                                #! EA = L0x4000016928; Value = 0xb9feffffffffaaab; PC = 0x274877984600 *)
mov x5 L0x4000016928;
mov x6 L0x4000016930;
(* ldp	x7, x8, [x3, #16]                           #! EA = L0x4000016938; Value = 0x6730d2a0f6b0f624; PC = 0x274877984604 *)
mov x7 L0x4000016938;
mov x8 L0x4000016940;
(* ldp	x9, x10, [x3, #32]                          #! EA = L0x4000016948; Value = 0x4b1ba7b6434bacd7; PC = 0x274877984608 *)
mov x9 L0x4000016948;
mov x10 L0x4000016950;
(* #bl	0x4000012fa0 <__sub_mod_384x384>            #! PC = 0x274877984612 *)
#bl	0x4000012fa0 <__sub_mod_384x384>            #! 0x274877984612 = 0x274877984612;
(* ldp	x11, x12, [x1]                              #! EA = L0x4000829f78; Value = 0x5b8e1c09c6e5ad98; PC = 0x274877984672 *)
mov x11 L0x4000829f78;
mov x12 L0x4000829f80;
(* ldp	x19, x20, [x2]                              #! EA = L0x4000829b68; Value = 0xe6c8f4bf2a867760; PC = 0x274877984676 *)
mov x19 L0x4000829b68;
mov x20 L0x4000829b70;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829f88; Value = 0x1e190b99cadd7759; PC = 0x274877984680 *)
mov x13 L0x4000829f88;
mov x14 L0x4000829f90;
(* subs	x11, x11, x19                              #! PC = 0x274877984684 *)
subc carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x4000829b78; Value = 0x03848c78ce3ec7e6; PC = 0x274877984688 *)
mov x21 L0x4000829b78;
mov x22 L0x4000829b80;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984692 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829f98; Value = 0x37f67593f0275eae; PC = 0x274877984696 *)
mov x15 L0x4000829f98;
mov x16 L0x4000829fa0;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984700 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x4000829b88; Value = 0xd082d00b946555bc; PC = 0x274877984704 *)
mov x23 L0x4000829b88;
mov x24 L0x4000829b90;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984708 *)
sbcs carry x14 x14 x22 carry;
(* stp	x11, x12, [x0]                              #! EA = L0x4000829f78; PC = 0x274877984712 *)
mov L0x4000829f78 x11;
mov L0x4000829f80 x12;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984716 *)
sbcs carry x15 x15 x23 carry;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0x4000829fa8; Value = 0x98c129d4da8d8717; PC = 0x274877984720 *)
mov x11 L0x4000829fa8;
mov x12 L0x4000829fb0;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984724 *)
sbcs carry x16 x16 x24 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x4000829b98; Value = 0xaeda3b4fdaff2cd9; PC = 0x274877984728 *)
mov x19 L0x4000829b98;
mov x20 L0x4000829ba0;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x4000829f88; PC = 0x274877984732 *)
mov L0x4000829f88 x13;
mov L0x4000829f90 x14;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0x4000829fb8; Value = 0xb1e1ee31242d534c; PC = 0x274877984736 *)
mov x13 L0x4000829fb8;
mov x14 L0x4000829fc0;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x4000829ba8; Value = 0xc330383e3d66d124; PC = 0x274877984740 *)
mov x21 L0x4000829ba8;
mov x22 L0x4000829bb0;
(* sbcs	x11, x11, x19                              #! PC = 0x274877984744 *)
sbcs carry x11 x11 x19 carry;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x4000829f98; PC = 0x274877984748 *)
mov L0x4000829f98 x15;
mov L0x4000829fa0 x16;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984752 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #80]                         #! EA = L0x4000829fc8; Value = 0x5c6e313b498709b4; PC = 0x274877984756 *)
mov x15 L0x4000829fc8;
mov x16 L0x4000829fd0;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984760 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x4000829bb8; Value = 0x0000048689a12172; PC = 0x274877984764 *)
mov x23 L0x4000829bb8;
mov x24 L0x4000829bc0;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984768 *)
sbcs carry x14 x14 x22 carry;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984772 *)
sbcs carry x15 x15 x23 carry;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984776 *)
sbcs carry x16 x16 x24 carry;
(* ngc	x17, xzr                                    #! PC = 0x274877984780 *)
cmov x17 carry 0@uint64 0xffffffffffffffff@uint64;
(* and	x19, x5, x17                                #! PC = 0x274877984784 *)
and x19@uint64 x5 x17;
(* and	x20, x6, x17                                #! PC = 0x274877984788 *)
and x20@uint64 x6 x17;
(* adds	x11, x11, x19                              #! PC = 0x274877984792 *)
adds carry x11 x11 x19;
(* and	x21, x7, x17                                #! PC = 0x274877984796 *)
and x21@uint64 x7 x17;
(* adcs	x12, x12, x20                              #! PC = 0x274877984800 *)
adcs carry x12 x12 x20 carry;
(* and	x22, x8, x17                                #! PC = 0x274877984804 *)
and x22@uint64 x8 x17;
(* adcs	x13, x13, x21                              #! PC = 0x274877984808 *)
adcs carry x13 x13 x21 carry;
(* and	x23, x9, x17                                #! PC = 0x274877984812 *)
and x23@uint64 x9 x17;
(* adcs	x14, x14, x22                              #! PC = 0x274877984816 *)
adcs carry x14 x14 x22 carry;
(* and	x24, x10, x17                               #! PC = 0x274877984820 *)
and x24@uint64 x10 x17;
(* adcs	x15, x15, x23                              #! PC = 0x274877984824 *)
adcs carry x15 x15 x23 carry;
(* stp	x11, x12, [x0, #48]                         #! EA = L0x4000829fa8; PC = 0x274877984828 *)
mov L0x4000829fa8 x11;
mov L0x4000829fb0 x12;
(* adc	x16, x16, x24                               #! PC = 0x274877984832 *)
adcs dontcare x16 x16 x24 carry;
(* stp	x13, x14, [x0, #64]                         #! EA = L0x4000829fb8; PC = 0x274877984836 *)
mov L0x4000829fb8 x13;
mov L0x4000829fc0 x14;
(* stp	x15, x16, [x0, #80]                         #! EA = L0x4000829fc8; PC = 0x274877984840 *)
mov L0x4000829fc8 x15;
mov L0x4000829fd0 x16;
(* #ret                                            #! PC = 0x274877984844 *)
#ret                                            #! 0x274877984844 = 0x274877984844;
(* ldr	x30, [x29, #8]                              #! EA = L0x4000829958; Value = 0x004f00400000abb0; PC = 0x274877984616 *)
mov x30 L0x4000829958;
(* ldp	x19, x20, [x29, #16]                        #! EA = L0x4000829960; Value = 0x0000004000016928; PC = 0x274877984620 *)
mov x19 L0x4000829960;
mov x20 L0x4000829968;
(* ldp	x21, x22, [x29, #32]                        #! EA = L0x4000829970; Value = 0x0000004000829f18; PC = 0x274877984624 *)
mov x21 L0x4000829970;
mov x22 L0x4000829978;
(* ldp	x23, x24, [x29, #48]                        #! EA = L0x4000829980; Value = 0x0000004000829c88; PC = 0x274877984628 *)
mov x23 L0x4000829980;
mov x24 L0x4000829988;
(* ldr	x29, [sp], #64                              #! EA = L0x4000829950; Value = 0x0000004000829990; PC = 0x274877984632 *)
mov x29 L0x4000829950;
(* #autiasp                                         #! PC = 0x274877984636 *)
#autiasp                                         #! 0x274877984636 = 0x274877984636;
(* #ret                                            #! PC = 0x274877984640 *)
#ret                                            #! 0x274877984640 = 0x274877984640;

assert true
    && and [eqmod (limbs 64 [L0x4000829f18, L0x4000829f20, L0x4000829f28,
                             L0x4000829f30, L0x4000829f38, L0x4000829f40,
                             L0x4000829f48, L0x4000829f50, L0x4000829f58,
                             L0x4000829f60, L0x4000829f68, L0x4000829f70] +
                   limbs 64 [L0x4000829b08, L0x4000829b10, L0x4000829b18,
                             L0x4000829b20, L0x4000829b28, L0x4000829b30,
                             L0x4000829b38, L0x4000829b40, L0x4000829b48,
                             L0x4000829b50, L0x4000829b58, L0x4000829b60])
                  (limbs 64 [L0x4000829f18q, L0x4000829f20q, L0x4000829f28q,
                             L0x4000829f30q, L0x4000829f38q, L0x4000829f40q,
                             L0x4000829f48q, L0x4000829f50q, L0x4000829f58q,
                             L0x4000829f60q, L0x4000829f68q, L0x4000829f70q])
                  (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                               m0,   m1,   m2,   m3,   m4,   m5]),
            eqmod (limbs 64 [L0x4000829f78, L0x4000829f80, L0x4000829f88,
                             L0x4000829f90, L0x4000829f98, L0x4000829fa0,
                             L0x4000829fa8, L0x4000829fb0, L0x4000829fb8,
                             L0x4000829fc0, L0x4000829fc8, L0x4000829fd0] +
                   limbs 64 [L0x4000829b68, L0x4000829b70, L0x4000829b78,
                             L0x4000829b80, L0x4000829b88, L0x4000829b90,
                             L0x4000829b98, L0x4000829ba0, L0x4000829ba8,
                             L0x4000829bb0, L0x4000829bb8, L0x4000829bc0])
                  (limbs 64 [L0x4000829f78q, L0x4000829f80q, L0x4000829f88q,
                             L0x4000829f90q, L0x4000829f98q, L0x4000829fa0q,
                             L0x4000829fa8q, L0x4000829fb0q, L0x4000829fb8q,
                             L0x4000829fc0q, L0x4000829fc8q, L0x4000829fd0q])
                  (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                               m0,   m1,   m2,   m3,   m4,   m5])
      ];

assume and [eqmod (limbs 64 [L0x4000829f18, L0x4000829f20, L0x4000829f28,
                             L0x4000829f30, L0x4000829f38, L0x4000829f40,
                             L0x4000829f48, L0x4000829f50, L0x4000829f58,
                             L0x4000829f60, L0x4000829f68, L0x4000829f70] +
                   limbs 64 [L0x4000829b08, L0x4000829b10, L0x4000829b18,
                             L0x4000829b20, L0x4000829b28, L0x4000829b30,
                             L0x4000829b38, L0x4000829b40, L0x4000829b48,
                             L0x4000829b50, L0x4000829b58, L0x4000829b60])
                  (limbs 64 [L0x4000829f18q, L0x4000829f20q, L0x4000829f28q,
                             L0x4000829f30q, L0x4000829f38q, L0x4000829f40q,
                             L0x4000829f48q, L0x4000829f50q, L0x4000829f58q,
                             L0x4000829f60q, L0x4000829f68q, L0x4000829f70q])
                  (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5]),
            eqmod (limbs 64 [L0x4000829f78, L0x4000829f80, L0x4000829f88,
                             L0x4000829f90, L0x4000829f98, L0x4000829fa0,
                             L0x4000829fa8, L0x4000829fb0, L0x4000829fb8,
                             L0x4000829fc0, L0x4000829fc8, L0x4000829fd0] +
                   limbs 64 [L0x4000829b68, L0x4000829b70, L0x4000829b78,
                             L0x4000829b80, L0x4000829b88, L0x4000829b90,
                             L0x4000829b98, L0x4000829ba0, L0x4000829ba8,
                             L0x4000829bb0, L0x4000829bb8, L0x4000829bc0])
                  (limbs 64 [L0x4000829f78q, L0x4000829f80q, L0x4000829f88q,
                             L0x4000829f90q, L0x4000829f98q, L0x4000829fa0q,
                             L0x4000829fa8q, L0x4000829fb0q, L0x4000829fb8q,
                             L0x4000829fc0q, L0x4000829fc8q, L0x4000829fd0q])
                  (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5])
      ]
   && true;

(* mov	x3, x19                                     #! PC = 0x274877950896 *)
mov x3 x19;
(* mov	x2, x23                                     #! PC = 0x274877950900 *)
mov x2 x23;
(* mov	x1, x21                                     #! PC = 0x274877950904 *)
mov x1 x21;
(* mov	x0, x21                                     #! PC = 0x274877950908 *)
mov x0 x21;
(* #bl	0x4000012f40 <sub_mod_384x384>              #! PC = 0x274877950912 *)
#bl	0x4000012f40 <sub_mod_384x384>              #! 0x274877950912 = 0x274877950912;
(* #paciasp                                         #! PC = 0x274877984576 *)
#paciasp                                         #! 0x274877984576 = 0x274877984576;

rcut and [limbs 64 [L0x4000829cb8, L0x4000829cc0, L0x4000829cc8,
                    L0x4000829cd0, L0x4000829cd8, L0x4000829ce0] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829d18, L0x4000829d20, L0x4000829d28,
                    L0x4000829d30, L0x4000829d38, L0x4000829d40] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829f48, L0x4000829f50, L0x4000829f58,
                    L0x4000829f60, L0x4000829f68, L0x4000829f70] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829fa8, L0x4000829fb0, L0x4000829fb8,
                    L0x4000829fc0, L0x4000829fc8, L0x4000829fd0] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
          m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
          m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64
     ] prove with all cuts;

ghost L0x4000829f18r@uint64, L0x4000829f20r@uint64, L0x4000829f28r@uint64,
      L0x4000829f30r@uint64, L0x4000829f38r@uint64, L0x4000829f40r@uint64,
      L0x4000829f48r@uint64, L0x4000829f50r@uint64, L0x4000829f58r@uint64,
      L0x4000829f60r@uint64, L0x4000829f68r@uint64, L0x4000829f70r@uint64,
      L0x4000829f78r@uint64, L0x4000829f80r@uint64, L0x4000829f88r@uint64,
      L0x4000829f90r@uint64, L0x4000829f98r@uint64, L0x4000829fa0r@uint64,
      L0x4000829fa8r@uint64, L0x4000829fb0r@uint64, L0x4000829fb8r@uint64,
      L0x4000829fc0r@uint64, L0x4000829fc8r@uint64, L0x4000829fd0r@uint64 :
      and [L0x4000829f18r=L0x4000829f18, L0x4000829f20r=L0x4000829f20,
           L0x4000829f28r=L0x4000829f28, L0x4000829f30r=L0x4000829f30,
           L0x4000829f38r=L0x4000829f38, L0x4000829f40r=L0x4000829f40,
           L0x4000829f48r=L0x4000829f48, L0x4000829f50r=L0x4000829f50,
           L0x4000829f58r=L0x4000829f58, L0x4000829f60r=L0x4000829f60,
           L0x4000829f68r=L0x4000829f68, L0x4000829f70r=L0x4000829f70,
           L0x4000829f78r=L0x4000829f78, L0x4000829f80r=L0x4000829f80,
           L0x4000829f88r=L0x4000829f88, L0x4000829f90r=L0x4000829f90,
           L0x4000829f98r=L0x4000829f98, L0x4000829fa0r=L0x4000829fa0,
           L0x4000829fa8r=L0x4000829fa8, L0x4000829fb0r=L0x4000829fb0,
           L0x4000829fb8r=L0x4000829fb8, L0x4000829fc0r=L0x4000829fc0,
           L0x4000829fc8r=L0x4000829fc8, L0x4000829fd0r=L0x4000829fd0]
   && and [L0x4000829f18r=L0x4000829f18, L0x4000829f20r=L0x4000829f20,
           L0x4000829f28r=L0x4000829f28, L0x4000829f30r=L0x4000829f30,
           L0x4000829f38r=L0x4000829f38, L0x4000829f40r=L0x4000829f40,
           L0x4000829f48r=L0x4000829f48, L0x4000829f50r=L0x4000829f50,
           L0x4000829f58r=L0x4000829f58, L0x4000829f60r=L0x4000829f60,
           L0x4000829f68r=L0x4000829f68, L0x4000829f70r=L0x4000829f70,
           L0x4000829f78r=L0x4000829f78, L0x4000829f80r=L0x4000829f80,
           L0x4000829f88r=L0x4000829f88, L0x4000829f90r=L0x4000829f90,
           L0x4000829f98r=L0x4000829f98, L0x4000829fa0r=L0x4000829fa0,
           L0x4000829fa8r=L0x4000829fa8, L0x4000829fb0r=L0x4000829fb0,
           L0x4000829fb8r=L0x4000829fb8, L0x4000829fc0r=L0x4000829fc0,
           L0x4000829fc8r=L0x4000829fc8, L0x4000829fd0r=L0x4000829fd0];

(* stp	x29, x30, [sp, #-64]!                       #! EA = L0x4000829950; PC = 0x274877984580 *)
mov L0x4000829950 x29;
mov L0x4000829958 x30;
(* mov	x29, sp                                     #! PC = 0x274877984584 *)
mov x29 sp;
(* stp	x19, x20, [sp, #16]                         #! EA = L0x4000829960; PC = 0x274877984588 *)
mov L0x4000829960 x19;
mov L0x4000829968 x20;
(* stp	x21, x22, [sp, #32]                         #! EA = L0x4000829970; PC = 0x274877984592 *)
mov L0x4000829970 x21;
mov L0x4000829978 x22;
(* stp	x23, x24, [sp, #48]                         #! EA = L0x4000829980; PC = 0x274877984596 *)
mov L0x4000829980 x23;
mov L0x4000829988 x24;
(* ldp	x5, x6, [x3]                                #! EA = L0x4000016928; Value = 0xb9feffffffffaaab; PC = 0x274877984600 *)
mov x5 L0x4000016928;
mov x6 L0x4000016930;
(* ldp	x7, x8, [x3, #16]                           #! EA = L0x4000016938; Value = 0x6730d2a0f6b0f624; PC = 0x274877984604 *)
mov x7 L0x4000016938;
mov x8 L0x4000016940;
(* ldp	x9, x10, [x3, #32]                          #! EA = L0x4000016948; Value = 0x4b1ba7b6434bacd7; PC = 0x274877984608 *)
mov x9 L0x4000016948;
mov x10 L0x4000016950;
(* #bl	0x4000012fa0 <__sub_mod_384x384>            #! PC = 0x274877984612 *)
#bl	0x4000012fa0 <__sub_mod_384x384>            #! 0x274877984612 = 0x274877984612;
(* ldp	x11, x12, [x1]                              #! EA = L0x4000829f18; Value = 0xc2c3033074a82028; PC = 0x274877984672 *)
mov x11 L0x4000829f18;
mov x12 L0x4000829f20;
(* ldp	x19, x20, [x2]                              #! EA = L0x4000829c88; Value = 0xbf7e5d09780cb200; PC = 0x274877984676 *)
mov x19 L0x4000829c88;
mov x20 L0x4000829c90;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829f28; Value = 0x10fe161e766ebe4c; PC = 0x274877984680 *)
mov x13 L0x4000829f28;
mov x14 L0x4000829f30;
(* subs	x11, x11, x19                              #! PC = 0x274877984684 *)
subc carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x4000829c98; Value = 0x5ce62a1ce1098e3f; PC = 0x274877984688 *)
mov x21 L0x4000829c98;
mov x22 L0x4000829ca0;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984692 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829f38; Value = 0x0c397826877a4364; PC = 0x274877984696 *)
mov x15 L0x4000829f38;
mov x16 L0x4000829f40;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984700 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x4000829ca8; Value = 0x9e46be45859c8f1f; PC = 0x274877984704 *)
mov x23 L0x4000829ca8;
mov x24 L0x4000829cb0;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984708 *)
sbcs carry x14 x14 x22 carry;
(* stp	x11, x12, [x0]                              #! EA = L0x4000829f18; PC = 0x274877984712 *)
mov L0x4000829f18 x11;
mov L0x4000829f20 x12;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984716 *)
sbcs carry x15 x15 x23 carry;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0x4000829f48; Value = 0xdd992f8d03f9b822; PC = 0x274877984720 *)
mov x11 L0x4000829f48;
mov x12 L0x4000829f50;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984724 *)
sbcs carry x16 x16 x24 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x4000829cb8; Value = 0x9923a6debee0eac0; PC = 0x274877984728 *)
mov x19 L0x4000829cb8;
mov x20 L0x4000829cc0;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x4000829f28; PC = 0x274877984732 *)
mov L0x4000829f28 x13;
mov L0x4000829f30 x14;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0x4000829f58; Value = 0x726bae2d3b202e78; PC = 0x274877984736 *)
mov x13 L0x4000829f58;
mov x14 L0x4000829f60;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x4000829cc8; Value = 0xa8efc16e4f1da713; PC = 0x274877984740 *)
mov x21 L0x4000829cc8;
mov x22 L0x4000829cd0;
(* sbcs	x11, x11, x19                              #! PC = 0x274877984744 *)
sbcs carry x11 x11 x19 carry;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x4000829f38; PC = 0x274877984748 *)
mov L0x4000829f38 x15;
mov L0x4000829f40 x16;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984752 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #80]                         #! EA = L0x4000829f68; Value = 0x268dbadaf97490c8; PC = 0x274877984756 *)
mov x15 L0x4000829f68;
mov x16 L0x4000829f70;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984760 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x4000829cd8; Value = 0x4b1ba77642c5c25f; PC = 0x274877984764 *)
mov x23 L0x4000829cd8;
mov x24 L0x4000829ce0;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984768 *)
sbcs carry x14 x14 x22 carry;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984772 *)
sbcs carry x15 x15 x23 carry;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984776 *)
sbcs carry x16 x16 x24 carry;
(* ngc	x17, xzr                                    #! PC = 0x274877984780 *)
cmov x17 carry 0@uint64 0xffffffffffffffff@uint64;
(* and	x19, x5, x17                                #! PC = 0x274877984784 *)
and x19@uint64 x5 x17;
(* and	x20, x6, x17                                #! PC = 0x274877984788 *)
and x20@uint64 x6 x17;
(* adds	x11, x11, x19                              #! PC = 0x274877984792 *)
adds carry x11 x11 x19;
(* and	x21, x7, x17                                #! PC = 0x274877984796 *)
and x21@uint64 x7 x17;
(* adcs	x12, x12, x20                              #! PC = 0x274877984800 *)
adcs carry x12 x12 x20 carry;
(* and	x22, x8, x17                                #! PC = 0x274877984804 *)
and x22@uint64 x8 x17;
(* adcs	x13, x13, x21                              #! PC = 0x274877984808 *)
adcs carry x13 x13 x21 carry;
(* and	x23, x9, x17                                #! PC = 0x274877984812 *)
and x23@uint64 x9 x17;
(* adcs	x14, x14, x22                              #! PC = 0x274877984816 *)
adcs carry x14 x14 x22 carry;
(* and	x24, x10, x17                               #! PC = 0x274877984820 *)
and x24@uint64 x10 x17;
(* adcs	x15, x15, x23                              #! PC = 0x274877984824 *)
adcs carry x15 x15 x23 carry;
(* stp	x11, x12, [x0, #48]                         #! EA = L0x4000829f48; PC = 0x274877984828 *)
mov L0x4000829f48 x11;
mov L0x4000829f50 x12;
(* adc	x16, x16, x24                               #! PC = 0x274877984832 *)
adcs dontcare x16 x16 x24 carry;
(* stp	x13, x14, [x0, #64]                         #! EA = L0x4000829f58; PC = 0x274877984836 *)
mov L0x4000829f58 x13;
mov L0x4000829f60 x14;
(* stp	x15, x16, [x0, #80]                         #! EA = L0x4000829f68; PC = 0x274877984840 *)
mov L0x4000829f68 x15;
mov L0x4000829f70 x16;
(* #ret                                            #! PC = 0x274877984844 *)
#ret                                            #! 0x274877984844 = 0x274877984844;
(* ldr	x30, [x29, #8]                              #! EA = L0x4000829958; Value = 0x000400400000abc4; PC = 0x274877984616 *)
mov x30 L0x4000829958;
(* ldp	x19, x20, [x29, #16]                        #! EA = L0x4000829960; Value = 0x0000004000016928; PC = 0x274877984620 *)
mov x19 L0x4000829960;
mov x20 L0x4000829968;
(* ldp	x21, x22, [x29, #32]                        #! EA = L0x4000829970; Value = 0x0000004000829f18; PC = 0x274877984624 *)
mov x21 L0x4000829970;
mov x22 L0x4000829978;
(* ldp	x23, x24, [x29, #48]                        #! EA = L0x4000829980; Value = 0x0000004000829c88; PC = 0x274877984628 *)
mov x23 L0x4000829980;
mov x24 L0x4000829988;
(* ldr	x29, [sp], #64                              #! EA = L0x4000829950; Value = 0x0000004000829990; PC = 0x274877984632 *)
mov x29 L0x4000829950;
(* #autiasp                                         #! PC = 0x274877984636 *)
#autiasp                                         #! 0x274877984636 = 0x274877984636;
(* #ret                                            #! PC = 0x274877984640 *)
#ret                                            #! 0x274877984640 = 0x274877984640;
(* mov	x3, x19                                     #! PC = 0x274877950916 *)
mov x3 x19;
(* ldr	x2, [sp, #96]                               #! EA = L0x40008299f0; Value = 0x0000004000829ce8; PC = 0x274877950920 *)
mov x2 L0x40008299f0;
(* mov	x1, x20                                     #! PC = 0x274877950924 *)
mov x1 x20;
(* mov	x0, x20                                     #! PC = 0x274877950928 *)
mov x0 x20;
(* #bl	0x4000012f40 <sub_mod_384x384>              #! PC = 0x274877950932 *)
#bl	0x4000012f40 <sub_mod_384x384>              #! 0x274877950932 = 0x274877950932;
(* #paciasp                                         #! PC = 0x274877984576 *)
#paciasp                                         #! 0x274877984576 = 0x274877984576;
(* stp	x29, x30, [sp, #-64]!                       #! EA = L0x4000829950; PC = 0x274877984580 *)
mov L0x4000829950 x29;
mov L0x4000829958 x30;
(* mov	x29, sp                                     #! PC = 0x274877984584 *)
mov x29 sp;
(* stp	x19, x20, [sp, #16]                         #! EA = L0x4000829960; PC = 0x274877984588 *)
mov L0x4000829960 x19;
mov L0x4000829968 x20;
(* stp	x21, x22, [sp, #32]                         #! EA = L0x4000829970; PC = 0x274877984592 *)
mov L0x4000829970 x21;
mov L0x4000829978 x22;
(* stp	x23, x24, [sp, #48]                         #! EA = L0x4000829980; PC = 0x274877984596 *)
mov L0x4000829980 x23;
mov L0x4000829988 x24;
(* ldp	x5, x6, [x3]                                #! EA = L0x4000016928; Value = 0xb9feffffffffaaab; PC = 0x274877984600 *)
mov x5 L0x4000016928;
mov x6 L0x4000016930;
(* ldp	x7, x8, [x3, #16]                           #! EA = L0x4000016938; Value = 0x6730d2a0f6b0f624; PC = 0x274877984604 *)
mov x7 L0x4000016938;
mov x8 L0x4000016940;
(* ldp	x9, x10, [x3, #32]                          #! EA = L0x4000016948; Value = 0x4b1ba7b6434bacd7; PC = 0x274877984608 *)
mov x9 L0x4000016948;
mov x10 L0x4000016950;
(* #bl	0x4000012fa0 <__sub_mod_384x384>            #! PC = 0x274877984612 *)
#bl	0x4000012fa0 <__sub_mod_384x384>            #! 0x274877984612 = 0x274877984612;
(* ldp	x11, x12, [x1]                              #! EA = L0x4000829f78; Value = 0x74c5274a9c5f3638; PC = 0x274877984672 *)
mov x11 L0x4000829f78;
mov x12 L0x4000829f80;
(* ldp	x19, x20, [x2]                              #! EA = L0x4000829ce8; Value = 0xc73bbcb7f54de580; PC = 0x274877984676 *)
mov x19 L0x4000829ce8;
mov x20 L0x4000829cf0;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829f88; Value = 0x1a947f20fc9eaf73; PC = 0x274877984680 *)
mov x13 L0x4000829f88;
mov x14 L0x4000829f90;
(* subs	x11, x11, x19                              #! PC = 0x274877984684 *)
subc carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x4000829cf8; Value = 0x293deebfffea2401; PC = 0x274877984688 *)
mov x21 L0x4000829cf8;
mov x22 L0x4000829d00;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984692 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829f98; Value = 0x6773a5885bc208f1; PC = 0x274877984696 *)
mov x15 L0x4000829f98;
mov x16 L0x4000829fa0;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984700 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x4000829d08; Value = 0xf05ac0a9b838b7e1; PC = 0x274877984704 *)
mov x23 L0x4000829d08;
mov x24 L0x4000829d10;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984708 *)
sbcs carry x14 x14 x22 carry;
(* stp	x11, x12, [x0]                              #! EA = L0x4000829f78; PC = 0x274877984712 *)
mov L0x4000829f78 x11;
mov L0x4000829f80 x12;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984716 *)
sbcs carry x15 x15 x23 carry;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0x4000829fa8; Value = 0xe9e6ee84ff8e5a3d; PC = 0x274877984720 *)
mov x11 L0x4000829fa8;
mov x12 L0x4000829fb0;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984724 *)
sbcs carry x16 x16 x24 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x4000829d18; Value = 0x2941fad56ff9c9f1; PC = 0x274877984728 *)
mov x19 L0x4000829d18;
mov x20 L0x4000829d20;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x4000829f88; PC = 0x274877984732 *)
mov L0x4000829f88 x13;
mov L0x4000829f90 x14;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0x4000829fb8; Value = 0xeeb1b5f2e6c68227; PC = 0x274877984736 *)
mov x13 L0x4000829fb8;
mov x14 L0x4000829fc0;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x4000829d28; Value = 0xc6bfe47aaf5d5198; PC = 0x274877984740 *)
mov x21 L0x4000829d28;
mov x22 L0x4000829d30;
(* sbcs	x11, x11, x19                              #! PC = 0x274877984744 *)
sbcs carry x11 x11 x19 carry;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x4000829f98; PC = 0x274877984748 *)
mov L0x4000829f98 x15;
mov L0x4000829fa0 x16;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984752 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #80]                         #! EA = L0x4000829fc8; Value = 0x5c6e2cb4bfe5e842; PC = 0x274877984756 *)
mov x15 L0x4000829fc8;
mov x16 L0x4000829fd0;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984760 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x4000829d38; Value = 0x00000040008303a0; PC = 0x274877984764 *)
mov x23 L0x4000829d38;
mov x24 L0x4000829d40;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984768 *)
sbcs carry x14 x14 x22 carry;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984772 *)
sbcs carry x15 x15 x23 carry;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984776 *)
sbcs carry x16 x16 x24 carry;
(* ngc	x17, xzr                                    #! PC = 0x274877984780 *)
cmov x17 carry 0@uint64 0xffffffffffffffff@uint64;
(* and	x19, x5, x17                                #! PC = 0x274877984784 *)
and x19@uint64 x5 x17;
(* and	x20, x6, x17                                #! PC = 0x274877984788 *)
and x20@uint64 x6 x17;
(* adds	x11, x11, x19                              #! PC = 0x274877984792 *)
adds carry x11 x11 x19;
(* and	x21, x7, x17                                #! PC = 0x274877984796 *)
and x21@uint64 x7 x17;
(* adcs	x12, x12, x20                              #! PC = 0x274877984800 *)
adcs carry x12 x12 x20 carry;
(* and	x22, x8, x17                                #! PC = 0x274877984804 *)
and x22@uint64 x8 x17;
(* adcs	x13, x13, x21                              #! PC = 0x274877984808 *)
adcs carry x13 x13 x21 carry;
(* and	x23, x9, x17                                #! PC = 0x274877984812 *)
and x23@uint64 x9 x17;
(* adcs	x14, x14, x22                              #! PC = 0x274877984816 *)
adcs carry x14 x14 x22 carry;
(* and	x24, x10, x17                               #! PC = 0x274877984820 *)
and x24@uint64 x10 x17;
(* adcs	x15, x15, x23                              #! PC = 0x274877984824 *)
adcs carry x15 x15 x23 carry;
(* stp	x11, x12, [x0, #48]                         #! EA = L0x4000829fa8; PC = 0x274877984828 *)
mov L0x4000829fa8 x11;
mov L0x4000829fb0 x12;
(* adc	x16, x16, x24                               #! PC = 0x274877984832 *)
adcs dontcare x16 x16 x24 carry;
(* stp	x13, x14, [x0, #64]                         #! EA = L0x4000829fb8; PC = 0x274877984836 *)
mov L0x4000829fb8 x13;
mov L0x4000829fc0 x14;
(* stp	x15, x16, [x0, #80]                         #! EA = L0x4000829fc8; PC = 0x274877984840 *)
mov L0x4000829fc8 x15;
mov L0x4000829fd0 x16;
(* #ret                                            #! PC = 0x274877984844 *)
#ret                                            #! 0x274877984844 = 0x274877984844;
(* ldr	x30, [x29, #8]                              #! EA = L0x4000829958; Value = 0x003400400000abd8; PC = 0x274877984616 *)
mov x30 L0x4000829958;
(* ldp	x19, x20, [x29, #16]                        #! EA = L0x4000829960; Value = 0x0000004000016928; PC = 0x274877984620 *)
mov x19 L0x4000829960;
mov x20 L0x4000829968;
(* ldp	x21, x22, [x29, #32]                        #! EA = L0x4000829970; Value = 0x0000004000829f18; PC = 0x274877984624 *)
mov x21 L0x4000829970;
mov x22 L0x4000829978;
(* ldp	x23, x24, [x29, #48]                        #! EA = L0x4000829980; Value = 0x0000004000829c88; PC = 0x274877984628 *)
mov x23 L0x4000829980;
mov x24 L0x4000829988;
(* ldr	x29, [sp], #64                              #! EA = L0x4000829950; Value = 0x0000004000829990; PC = 0x274877984632 *)
mov x29 L0x4000829950;
(* #autiasp                                         #! PC = 0x274877984636 *)
#autiasp                                         #! 0x274877984636 = 0x274877984636;
(* #ret                                            #! PC = 0x274877984640 *)
#ret                                            #! 0x274877984640 = 0x274877984640;

assert true
    && and [eqmod (limbs 64 [L0x4000829f18, L0x4000829f20, L0x4000829f28,
                             L0x4000829f30, L0x4000829f38, L0x4000829f40,
                             L0x4000829f48, L0x4000829f50, L0x4000829f58,
                             L0x4000829f60, L0x4000829f68, L0x4000829f70] +
                   limbs 64 [L0x4000829c88, L0x4000829c90, L0x4000829c98,
                             L0x4000829ca0, L0x4000829ca8, L0x4000829cb0,
                             L0x4000829cb8, L0x4000829cc0, L0x4000829cc8,
                             L0x4000829cd0, L0x4000829cd8, L0x4000829ce0])
                  (limbs 64 [L0x4000829f18r, L0x4000829f20r, L0x4000829f28r,
                             L0x4000829f30r, L0x4000829f38r, L0x4000829f40r,
                             L0x4000829f48r, L0x4000829f50r, L0x4000829f58r,
                             L0x4000829f60r, L0x4000829f68r, L0x4000829f70r])
                  (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                               m0,   m1,   m2,   m3,   m4,   m5]),
            eqmod (limbs 64 [L0x4000829f78, L0x4000829f80, L0x4000829f88,
                             L0x4000829f90, L0x4000829f98, L0x4000829fa0,
                             L0x4000829fa8, L0x4000829fb0, L0x4000829fb8,
                             L0x4000829fc0, L0x4000829fc8, L0x4000829fd0] +
                   limbs 64 [L0x4000829ce8, L0x4000829cf0, L0x4000829cf8,
                             L0x4000829d00, L0x4000829d08, L0x4000829d10,
                             L0x4000829d18, L0x4000829d20, L0x4000829d28,
                             L0x4000829d30, L0x4000829d38, L0x4000829d40])
                  (limbs 64 [L0x4000829f78r, L0x4000829f80r, L0x4000829f88r,
                             L0x4000829f90r, L0x4000829f98r, L0x4000829fa0r,
                             L0x4000829fa8r, L0x4000829fb0r, L0x4000829fb8r,
                             L0x4000829fc0r, L0x4000829fc8r, L0x4000829fd0r])
                  (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                               m0,   m1,   m2,   m3,   m4,   m5])
       ];

assume and [eqmod (limbs 64 [L0x4000829f18, L0x4000829f20, L0x4000829f28,
                             L0x4000829f30, L0x4000829f38, L0x4000829f40,
                             L0x4000829f48, L0x4000829f50, L0x4000829f58,
                             L0x4000829f60, L0x4000829f68, L0x4000829f70] +
                   limbs 64 [L0x4000829c88, L0x4000829c90, L0x4000829c98,
                             L0x4000829ca0, L0x4000829ca8, L0x4000829cb0,
                             L0x4000829cb8, L0x4000829cc0, L0x4000829cc8,
                             L0x4000829cd0, L0x4000829cd8, L0x4000829ce0])
                  (limbs 64 [L0x4000829f18r, L0x4000829f20r, L0x4000829f28r,
                             L0x4000829f30r, L0x4000829f38r, L0x4000829f40r,
                             L0x4000829f48r, L0x4000829f50r, L0x4000829f58r,
                             L0x4000829f60r, L0x4000829f68r, L0x4000829f70r])
                  (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5]),
            eqmod (limbs 64 [L0x4000829f78, L0x4000829f80, L0x4000829f88,
                             L0x4000829f90, L0x4000829f98, L0x4000829fa0,
                             L0x4000829fa8, L0x4000829fb0, L0x4000829fb8,
                             L0x4000829fc0, L0x4000829fc8, L0x4000829fd0] +
                   limbs 64 [L0x4000829ce8, L0x4000829cf0, L0x4000829cf8,
                             L0x4000829d00, L0x4000829d08, L0x4000829d10,
                             L0x4000829d18, L0x4000829d20, L0x4000829d28,
                             L0x4000829d30, L0x4000829d38, L0x4000829d40])
                  (limbs 64 [L0x4000829f78r, L0x4000829f80r, L0x4000829f88r,
                             L0x4000829f90r, L0x4000829f98r, L0x4000829fa0r,
                             L0x4000829fa8r, L0x4000829fb0r, L0x4000829fb8r,
                             L0x4000829fc0r, L0x4000829fc8r, L0x4000829fd0r])
                  (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5])
       ]
    && true;

(* mov	x3, x19                                     #! PC = 0x274877950936 *)
mov x3 x19;
(* mov	x2, x28                                     #! PC = 0x274877950940 *)
mov x2 x28;
(* mov	x1, x21                                     #! PC = 0x274877950944 *)
mov x1 x21;
(* mov	x0, x21                                     #! PC = 0x274877950948 *)
mov x0 x21;
(* #bl	0x4000012e20 <add_mod_384x384>              #! PC = 0x274877950952 *)
#bl	0x4000012e20 <add_mod_384x384>              #! 0x274877950952 = 0x274877950952;
(* #paciasp                                         #! PC = 0x274877984288 *)
#paciasp                                         #! 0x274877984288 = 0x274877984288;

rcut and [limbs 64 [L0x4000829bf8, L0x4000829c00, L0x4000829c08,
                    L0x4000829c10, L0x4000829c18, L0x4000829c20] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829c58, L0x4000829c60, L0x4000829c68,
                    L0x4000829c70, L0x4000829c78, L0x4000829c80] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829f48, L0x4000829f50, L0x4000829f58,
                    L0x4000829f60, L0x4000829f68, L0x4000829f70] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          limbs 64 [L0x4000829fa8, L0x4000829fb0, L0x4000829fb8,
                    L0x4000829fc0, L0x4000829fc8, L0x4000829fd0] <u
          limbs 64 [m0, m1, m2, m3, m4, m5],
          m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
          m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
          m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64
     ] prove with all cuts;

ghost L0x4000829f18s@uint64, L0x4000829f20s@uint64, L0x4000829f28s@uint64,
      L0x4000829f30s@uint64, L0x4000829f38s@uint64, L0x4000829f40s@uint64,
      L0x4000829f48s@uint64, L0x4000829f50s@uint64, L0x4000829f58s@uint64,
      L0x4000829f60s@uint64, L0x4000829f68s@uint64, L0x4000829f70s@uint64,
      L0x4000829f78s@uint64, L0x4000829f80s@uint64, L0x4000829f88s@uint64,
      L0x4000829f90s@uint64, L0x4000829f98s@uint64, L0x4000829fa0s@uint64,
      L0x4000829fa8s@uint64, L0x4000829fb0s@uint64, L0x4000829fb8s@uint64,
      L0x4000829fc0s@uint64, L0x4000829fc8s@uint64, L0x4000829fd0s@uint64 :
      and [L0x4000829f18s=L0x4000829f18, L0x4000829f20s=L0x4000829f20,
           L0x4000829f28s=L0x4000829f28, L0x4000829f30s=L0x4000829f30,
           L0x4000829f38s=L0x4000829f38, L0x4000829f40s=L0x4000829f40,
           L0x4000829f48s=L0x4000829f48, L0x4000829f50s=L0x4000829f50,
           L0x4000829f58s=L0x4000829f58, L0x4000829f60s=L0x4000829f60,
           L0x4000829f68s=L0x4000829f68, L0x4000829f70s=L0x4000829f70,
           L0x4000829f78s=L0x4000829f78, L0x4000829f80s=L0x4000829f80,
           L0x4000829f88s=L0x4000829f88, L0x4000829f90s=L0x4000829f90,
           L0x4000829f98s=L0x4000829f98, L0x4000829fa0s=L0x4000829fa0,
           L0x4000829fa8s=L0x4000829fa8, L0x4000829fb0s=L0x4000829fb0,
           L0x4000829fb8s=L0x4000829fb8, L0x4000829fc0s=L0x4000829fc0,
           L0x4000829fc8s=L0x4000829fc8, L0x4000829fd0s=L0x4000829fd0]
   && and [L0x4000829f18s=L0x4000829f18, L0x4000829f20s=L0x4000829f20,
           L0x4000829f28s=L0x4000829f28, L0x4000829f30s=L0x4000829f30,
           L0x4000829f38s=L0x4000829f38, L0x4000829f40s=L0x4000829f40,
           L0x4000829f48s=L0x4000829f48, L0x4000829f50s=L0x4000829f50,
           L0x4000829f58s=L0x4000829f58, L0x4000829f60s=L0x4000829f60,
           L0x4000829f68s=L0x4000829f68, L0x4000829f70s=L0x4000829f70,
           L0x4000829f78s=L0x4000829f78, L0x4000829f80s=L0x4000829f80,
           L0x4000829f88s=L0x4000829f88, L0x4000829f90s=L0x4000829f90,
           L0x4000829f98s=L0x4000829f98, L0x4000829fa0s=L0x4000829fa0,
           L0x4000829fa8s=L0x4000829fa8, L0x4000829fb0s=L0x4000829fb0,
           L0x4000829fb8s=L0x4000829fb8, L0x4000829fc0s=L0x4000829fc0,
           L0x4000829fc8s=L0x4000829fc8, L0x4000829fd0s=L0x4000829fd0];

(* stp	x29, x30, [sp, #-64]!                       #! EA = L0x4000829950; PC = 0x274877984292 *)
mov L0x4000829950 x29;
mov L0x4000829958 x30;
(* mov	x29, sp                                     #! PC = 0x274877984296 *)
mov x29 sp;
(* stp	x19, x20, [sp, #16]                         #! EA = L0x4000829960; PC = 0x274877984300 *)
mov L0x4000829960 x19;
mov L0x4000829968 x20;
(* stp	x21, x22, [sp, #32]                         #! EA = L0x4000829970; PC = 0x274877984304 *)
mov L0x4000829970 x21;
mov L0x4000829978 x22;
(* stp	x23, x24, [sp, #48]                         #! EA = L0x4000829980; PC = 0x274877984308 *)
mov L0x4000829980 x23;
mov L0x4000829988 x24;
(* ldp	x5, x6, [x3]                                #! EA = L0x4000016928; Value = 0xb9feffffffffaaab; PC = 0x274877984312 *)
mov x5 L0x4000016928;
mov x6 L0x4000016930;
(* ldp	x7, x8, [x3, #16]                           #! EA = L0x4000016938; Value = 0x6730d2a0f6b0f624; PC = 0x274877984316 *)
mov x7 L0x4000016938;
mov x8 L0x4000016940;
(* ldp	x9, x10, [x3, #32]                          #! EA = L0x4000016948; Value = 0x4b1ba7b6434bacd7; PC = 0x274877984320 *)
mov x9 L0x4000016948;
mov x10 L0x4000016950;
(* #bl	0x4000012e80 <__add_mod_384x384>            #! PC = 0x274877984324 *)
#bl	0x4000012e80 <__add_mod_384x384>            #! 0x274877984324 = 0x274877984324;
(* ldp	x11, x12, [x1]                              #! EA = L0x4000829f18; Value = 0x0344a626fc9b6e28; PC = 0x274877984384 *)
mov x11 L0x4000829f18;
mov x12 L0x4000829f20;
(* ldp	x19, x20, [x2]                              #! EA = L0x4000829bc8; Value = 0xde8c000000000000; PC = 0x274877984388 *)
mov x19 L0x4000829bc8;
mov x20 L0x4000829bd0;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829f28; Value = 0xb417ec019565300c; PC = 0x274877984392 *)
mov x13 L0x4000829f28;
mov x14 L0x4000829f30;
(* adds	x11, x11, x19                              #! PC = 0x274877984396 *)
adds carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x4000829bd8; Value = 0x7a1bbdc054180c5e; PC = 0x274877984400 *)
mov x21 L0x4000829bd8;
mov x22 L0x4000829be0;
(* adcs	x12, x12, x20                              #! PC = 0x274877984404 *)
adcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829f38; Value = 0x6df2b9e101ddb445; PC = 0x274877984408 *)
mov x15 L0x4000829f38;
mov x16 L0x4000829f40;
(* adcs	x13, x13, x21                              #! PC = 0x274877984412 *)
adcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x4000829be8; Value = 0xabfafe98a7fa10f6; PC = 0x274877984416 *)
mov x23 L0x4000829be8;
mov x24 L0x4000829bf0;
(* adcs	x14, x14, x22                              #! PC = 0x274877984420 *)
adcs carry x14 x14 x22 carry;
(* stp	x11, x12, [x0]                              #! EA = L0x4000829f18; PC = 0x274877984424 *)
mov L0x4000829f18 x11;
mov L0x4000829f20 x12;
(* adcs	x15, x15, x23                              #! PC = 0x274877984428 *)
adcs carry x15 x15 x23 carry;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0x4000829f48; Value = 0xfe7488ae4518780d; PC = 0x274877984432 *)
mov x11 L0x4000829f48;
mov x12 L0x4000829f50;
(* adcs	x16, x16, x24                              #! PC = 0x274877984436 *)
adcs carry x16 x16 x24 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x4000829bf8; Value = 0x5fe26534850ac206; PC = 0x274877984440 *)
mov x19 L0x4000829bf8;
mov x20 L0x4000829c00;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x4000829f28; PC = 0x274877984444 *)
mov L0x4000829f28 x13;
mov L0x4000829f30 x14;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0x4000829f58; Value = 0x30acbf5fe2b37d89; PC = 0x274877984448 *)
mov x13 L0x4000829f58;
mov x14 L0x4000829f60;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x4000829c08; Value = 0x1681664ed2569f1a; PC = 0x274877984452 *)
mov x21 L0x4000829c08;
mov x22 L0x4000829c10;
(* adcs	x11, x11, x19                              #! PC = 0x274877984456 *)
adcs carry x11 x11 x19 carry;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x4000829f38; PC = 0x274877984460 *)
mov L0x4000829f38 x15;
mov L0x4000829f40 x16;
(* adcs	x12, x12, x20                              #! PC = 0x274877984464 *)
adcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #80]                         #! EA = L0x4000829f68; Value = 0x268dbb1af9fa7b40; PC = 0x274877984468 *)
mov x15 L0x4000829f68;
mov x16 L0x4000829f70;
(* adcs	x13, x13, x21                              #! PC = 0x274877984472 *)
adcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x4000829c18; Value = 0x4b1ba6f6434b7cd5; PC = 0x274877984476 *)
mov x23 L0x4000829c18;
mov x24 L0x4000829c20;
(* adcs	x14, x14, x22                              #! PC = 0x274877984480 *)
adcs carry x14 x14 x22 carry;
(* adcs	x15, x15, x23                              #! PC = 0x274877984484 *)
adcs carry x15 x15 x23 carry;
(* adcs	x16, x16, x24                              #! PC = 0x274877984488 *)
adcs carry x16 x16 x24 carry;
(* adc	x17, xzr, xzr                               #! PC = 0x274877984492 *)
adc x17 0@uint64 0@uint64 carry;
(* subs	x19, x11, x5                               #! PC = 0x274877984496 *)
subc carry x19 x11 x5;
(* sbcs	x20, x12, x6                               #! PC = 0x274877984500 *)
sbcs carry x20 x12 x6 carry;
(* sbcs	x21, x13, x7                               #! PC = 0x274877984504 *)
sbcs carry x21 x13 x7 carry;
(* sbcs	x22, x14, x8                               #! PC = 0x274877984508 *)
sbcs carry x22 x14 x8 carry;
(* sbcs	x23, x15, x9                               #! PC = 0x274877984512 *)
sbcs carry x23 x15 x9 carry;
(* sbcs	x24, x16, x10                              #! PC = 0x274877984516 *)
sbcs carry x24 x16 x10 carry;
(* sbcs	xzr, x17, xzr                              #! PC = 0x274877984520 *)
sbcs carry dontcare x17 0@uint64 carry;
(* csel	x11, x11, x19, cc  // cc = lo, ul, last    #! PC = 0x274877984524 *)
cmov x11 carry x19 x11;
(* csel	x12, x12, x20, cc  // cc = lo, ul, last    #! PC = 0x274877984528 *)
cmov x12 carry x20 x12;
(* csel	x13, x13, x21, cc  // cc = lo, ul, last    #! PC = 0x274877984532 *)
cmov x13 carry x21 x13;
(* csel	x14, x14, x22, cc  // cc = lo, ul, last    #! PC = 0x274877984536 *)
cmov x14 carry x22 x14;
(* stp	x11, x12, [x0, #48]                         #! EA = L0x4000829f48; PC = 0x274877984540 *)
mov L0x4000829f48 x11;
mov L0x4000829f50 x12;
(* csel	x15, x15, x23, cc  // cc = lo, ul, last    #! PC = 0x274877984544 *)
cmov x15 carry x23 x15;
(* stp	x13, x14, [x0, #64]                         #! EA = L0x4000829f58; PC = 0x274877984548 *)
mov L0x4000829f58 x13;
mov L0x4000829f60 x14;
(* csel	x16, x16, x24, cc  // cc = lo, ul, last    #! PC = 0x274877984552 *)
cmov x16 carry x24 x16;
(* stp	x15, x16, [x0, #80]                         #! EA = L0x4000829f68; PC = 0x274877984556 *)
mov L0x4000829f68 x15;
mov L0x4000829f70 x16;
(* #ret                                            #! PC = 0x274877984560 *)
#ret                                            #! 0x274877984560 = 0x274877984560;
(* ldr	x30, [x29, #8]                              #! EA = L0x4000829958; Value = 0x006d00400000abec; PC = 0x274877984328 *)
mov x30 L0x4000829958;
(* ldp	x19, x20, [x29, #16]                        #! EA = L0x4000829960; Value = 0x0000004000016928; PC = 0x274877984332 *)
mov x19 L0x4000829960;
mov x20 L0x4000829968;
(* ldp	x21, x22, [x29, #32]                        #! EA = L0x4000829970; Value = 0x0000004000829f18; PC = 0x274877984336 *)
mov x21 L0x4000829970;
mov x22 L0x4000829978;
(* ldp	x23, x24, [x29, #48]                        #! EA = L0x4000829980; Value = 0x0000004000829c88; PC = 0x274877984340 *)
mov x23 L0x4000829980;
mov x24 L0x4000829988;
(* ldr	x29, [sp], #64                              #! EA = L0x4000829950; Value = 0x0000004000829990; PC = 0x274877984344 *)
mov x29 L0x4000829950;
(* #autiasp                                         #! PC = 0x274877984348 *)
#autiasp                                         #! 0x274877984348 = 0x274877984348;
(* #ret                                            #! PC = 0x274877984352 *)
#ret                                            #! 0x274877984352 = 0x274877984352;
(* mov	x3, x19                                     #! PC = 0x274877950956 *)
mov x3 x19;
(* ldr	x2, [sp, #120]                              #! EA = L0x4000829a08; Value = 0x0000004000829c28; PC = 0x274877950960 *)
mov x2 L0x4000829a08;
(* mov	x1, x20                                     #! PC = 0x274877950964 *)
mov x1 x20;
(* mov	x0, x20                                     #! PC = 0x274877950968 *)
mov x0 x20;
(* #bl	0x4000012e20 <add_mod_384x384>              #! PC = 0x274877950972 *)
#bl	0x4000012e20 <add_mod_384x384>              #! 0x274877950972 = 0x274877950972;
(* #paciasp                                         #! PC = 0x274877984288 *)
#paciasp                                         #! 0x274877984288 = 0x274877984288;
(* stp	x29, x30, [sp, #-64]!                       #! EA = L0x4000829950; PC = 0x274877984292 *)
mov L0x4000829950 x29;
mov L0x4000829958 x30;
(* mov	x29, sp                                     #! PC = 0x274877984296 *)
mov x29 sp;
(* stp	x19, x20, [sp, #16]                         #! EA = L0x4000829960; PC = 0x274877984300 *)
mov L0x4000829960 x19;
mov L0x4000829968 x20;
(* stp	x21, x22, [sp, #32]                         #! EA = L0x4000829970; PC = 0x274877984304 *)
mov L0x4000829970 x21;
mov L0x4000829978 x22;
(* stp	x23, x24, [sp, #48]                         #! EA = L0x4000829980; PC = 0x274877984308 *)
mov L0x4000829980 x23;
mov L0x4000829988 x24;
(* ldp	x5, x6, [x3]                                #! EA = L0x4000016928; Value = 0xb9feffffffffaaab; PC = 0x274877984312 *)
mov x5 L0x4000016928;
mov x6 L0x4000016930;
(* ldp	x7, x8, [x3, #16]                           #! EA = L0x4000016938; Value = 0x6730d2a0f6b0f624; PC = 0x274877984316 *)
mov x7 L0x4000016938;
mov x8 L0x4000016940;
(* ldp	x9, x10, [x3, #32]                          #! EA = L0x4000016948; Value = 0x4b1ba7b6434bacd7; PC = 0x274877984320 *)
mov x9 L0x4000016948;
mov x10 L0x4000016950;
(* #bl	0x4000012e80 <__add_mod_384x384>            #! PC = 0x274877984324 *)
#bl	0x4000012e80 <__add_mod_384x384>            #! 0x274877984324 = 0x274877984324;
(* ldp	x11, x12, [x1]                              #! EA = L0x4000829f78; Value = 0xad896a92a71150b8; PC = 0x274877984384 *)
mov x11 L0x4000829f78;
mov x12 L0x4000829f80;
(* ldp	x19, x20, [x2]                              #! EA = L0x4000829c28; Value = 0x0000000000000000; PC = 0x274877984388 *)
mov x19 L0x4000829c28;
mov x20 L0x4000829c30;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x4000829f88; Value = 0xf1569060fcb48b72; PC = 0x274877984392 *)
mov x13 L0x4000829f88;
mov x14 L0x4000829f90;
(* adds	x11, x11, x19                              #! PC = 0x274877984396 *)
adds carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x4000829c38; Value = 0x0000000000000000; PC = 0x274877984400 *)
mov x21 L0x4000829c38;
mov x22 L0x4000829c40;
(* adcs	x12, x12, x20                              #! PC = 0x274877984404 *)
adcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x4000829f98; Value = 0x7718e4dea3895110; PC = 0x274877984408 *)
mov x15 L0x4000829f98;
mov x16 L0x4000829fa0;
(* adcs	x13, x13, x21                              #! PC = 0x274877984412 *)
adcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x4000829c48; Value = 0xa5b75f691182b810; PC = 0x274877984416 *)
mov x23 L0x4000829c48;
mov x24 L0x4000829c50;
(* adcs	x14, x14, x22                              #! PC = 0x274877984420 *)
adcs carry x14 x14 x22 carry;
(* stp	x11, x12, [x0]                              #! EA = L0x4000829f78; PC = 0x274877984424 *)
mov L0x4000829f78 x11;
mov L0x4000829f80 x12;
(* adcs	x15, x15, x23                              #! PC = 0x274877984428 *)
adcs carry x15 x15 x23 carry;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0x4000829fa8; Value = 0xc0a4f3af8f94904b; PC = 0x274877984432 *)
mov x11 L0x4000829fa8;
mov x12 L0x4000829fb0;
(* adcs	x16, x16, x24                              #! PC = 0x274877984436 *)
adcs carry x16 x16 x24 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x4000829c58; Value = 0x30e97a4437e7fa80; PC = 0x274877984440 *)
mov x19 L0x4000829c58;
mov x20 L0x4000829c60;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x4000829f88; PC = 0x274877984444 *)
mov L0x4000829f88 x13;
mov L0x4000829f90 x14;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0x4000829fb8; Value = 0x27f1d1783769308e; PC = 0x274877984448 *)
mov x13 L0x4000829fb8;
mov x14 L0x4000829fc0;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x4000829c68; Value = 0x2aca32e21865e811; PC = 0x274877984452 *)
mov x21 L0x4000829c68;
mov x22 L0x4000829c70;
(* adcs	x11, x11, x19                              #! PC = 0x274877984456 *)
adcs carry x11 x11 x19 carry;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x4000829f98; PC = 0x274877984460 *)
mov L0x4000829f98 x15;
mov L0x4000829fa0 x16;
(* adcs	x12, x12, x20                              #! PC = 0x274877984464 *)
adcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #80]                         #! EA = L0x4000829fc8; Value = 0x5c6e2c74bf62e4a1; PC = 0x274877984468 *)
mov x15 L0x4000829fc8;
mov x16 L0x4000829fd0;
(* adcs	x13, x13, x21                              #! PC = 0x274877984472 *)
adcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x4000829c78; Value = 0x0000000000003000; PC = 0x274877984476 *)
mov x23 L0x4000829c78;
mov x24 L0x4000829c80;
(* adcs	x14, x14, x22                              #! PC = 0x274877984480 *)
adcs carry x14 x14 x22 carry;
(* adcs	x15, x15, x23                              #! PC = 0x274877984484 *)
adcs carry x15 x15 x23 carry;
(* adcs	x16, x16, x24                              #! PC = 0x274877984488 *)
adcs carry x16 x16 x24 carry;
(* adc	x17, xzr, xzr                               #! PC = 0x274877984492 *)
adc x17 0@uint64 0@uint64 carry;
(* subs	x19, x11, x5                               #! PC = 0x274877984496 *)
subc carry x19 x11 x5;
(* sbcs	x20, x12, x6                               #! PC = 0x274877984500 *)
sbcs carry x20 x12 x6 carry;
(* sbcs	x21, x13, x7                               #! PC = 0x274877984504 *)
sbcs carry x21 x13 x7 carry;
(* sbcs	x22, x14, x8                               #! PC = 0x274877984508 *)
sbcs carry x22 x14 x8 carry;
(* sbcs	x23, x15, x9                               #! PC = 0x274877984512 *)
sbcs carry x23 x15 x9 carry;
(* sbcs	x24, x16, x10                              #! PC = 0x274877984516 *)
sbcs carry x24 x16 x10 carry;
(* sbcs	xzr, x17, xzr                              #! PC = 0x274877984520 *)
sbcs carry dontcare x17 0@uint64 carry;
(* csel	x11, x11, x19, cc  // cc = lo, ul, last    #! PC = 0x274877984524 *)
cmov x11 carry x19 x11;
(* csel	x12, x12, x20, cc  // cc = lo, ul, last    #! PC = 0x274877984528 *)
cmov x12 carry x20 x12;
(* csel	x13, x13, x21, cc  // cc = lo, ul, last    #! PC = 0x274877984532 *)
cmov x13 carry x21 x13;
(* csel	x14, x14, x22, cc  // cc = lo, ul, last    #! PC = 0x274877984536 *)
cmov x14 carry x22 x14;
(* stp	x11, x12, [x0, #48]                         #! EA = L0x4000829fa8; PC = 0x274877984540 *)
mov L0x4000829fa8 x11;
mov L0x4000829fb0 x12;
(* csel	x15, x15, x23, cc  // cc = lo, ul, last    #! PC = 0x274877984544 *)
cmov x15 carry x23 x15;
(* stp	x13, x14, [x0, #64]                         #! EA = L0x4000829fb8; PC = 0x274877984548 *)
mov L0x4000829fb8 x13;
mov L0x4000829fc0 x14;
(* csel	x16, x16, x24, cc  // cc = lo, ul, last    #! PC = 0x274877984552 *)
cmov x16 carry x24 x16;
(* stp	x15, x16, [x0, #80]                         #! EA = L0x4000829fc8; PC = 0x274877984556 *)
mov L0x4000829fc8 x15;
mov L0x4000829fd0 x16;
(* #ret                                            #! PC = 0x274877984560 *)
#ret                                            #! 0x274877984560 = 0x274877984560;
(* ldr	x30, [x29, #8]                              #! EA = L0x4000829958; Value = 0x001900400000ac00; PC = 0x274877984328 *)
mov x30 L0x4000829958;
(* ldp	x19, x20, [x29, #16]                        #! EA = L0x4000829960; Value = 0x0000004000016928; PC = 0x274877984332 *)
mov x19 L0x4000829960;
mov x20 L0x4000829968;
(* ldp	x21, x22, [x29, #32]                        #! EA = L0x4000829970; Value = 0x0000004000829f18; PC = 0x274877984336 *)
mov x21 L0x4000829970;
mov x22 L0x4000829978;
(* ldp	x23, x24, [x29, #48]                        #! EA = L0x4000829980; Value = 0x0000004000829c88; PC = 0x274877984340 *)
mov x23 L0x4000829980;
mov x24 L0x4000829988;
(* ldr	x29, [sp], #64                              #! EA = L0x4000829950; Value = 0x0000004000829990; PC = 0x274877984344 *)
mov x29 L0x4000829950;
(* #autiasp                                         #! PC = 0x274877984348 *)
#autiasp                                         #! 0x274877984348 = 0x274877984348;
(* #ret                                            #! PC = 0x274877984352 *)
#ret                                            #! 0x274877984352 = 0x274877984352;

assert true
    && and [eqmod (limbs 64 [L0x4000829f18, L0x4000829f20, L0x4000829f28,
                             L0x4000829f30, L0x4000829f38, L0x4000829f40,
                             L0x4000829f48, L0x4000829f50, L0x4000829f58,
                             L0x4000829f60, L0x4000829f68, L0x4000829f70])
                  (limbs 64 [L0x4000829f18s, L0x4000829f20s, L0x4000829f28s,
                             L0x4000829f30s, L0x4000829f38s, L0x4000829f40s,
                             L0x4000829f48s, L0x4000829f50s, L0x4000829f58s,
                             L0x4000829f60s, L0x4000829f68s, L0x4000829f70s] +
                   limbs 64 [L0x4000829bc8, L0x4000829bd0, L0x4000829bd8,
                             L0x4000829be0, L0x4000829be8, L0x4000829bf0,
                             L0x4000829bf8, L0x4000829c00, L0x4000829c08,
                             L0x4000829c10, L0x4000829c18, L0x4000829c20])
                  (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                               m0,   m1,   m2,   m3,   m4,   m5]),
            eqmod (limbs 64 [L0x4000829f78, L0x4000829f80, L0x4000829f88,
                             L0x4000829f90, L0x4000829f98, L0x4000829fa0,
                             L0x4000829fa8, L0x4000829fb0, L0x4000829fb8,
                             L0x4000829fc0, L0x4000829fc8, L0x4000829fd0])
                  (limbs 64 [L0x4000829f78s, L0x4000829f80s, L0x4000829f88s,
                             L0x4000829f90s, L0x4000829f98s, L0x4000829fa0s,
                             L0x4000829fa8s, L0x4000829fb0s, L0x4000829fb8s,
                             L0x4000829fc0s, L0x4000829fc8s, L0x4000829fd0s] +
                   limbs 64 [L0x4000829c28, L0x4000829c30, L0x4000829c38,
                             L0x4000829c40, L0x4000829c48, L0x4000829c50,
                             L0x4000829c58, L0x4000829c60, L0x4000829c68,
                             L0x4000829c70, L0x4000829c78, L0x4000829c80])
                  (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                               m0,   m1,   m2,   m3,   m4,   m5])
       ];

assume and [eqmod (limbs 64 [L0x4000829f18, L0x4000829f20, L0x4000829f28,
                             L0x4000829f30, L0x4000829f38, L0x4000829f40,
                             L0x4000829f48, L0x4000829f50, L0x4000829f58,
                             L0x4000829f60, L0x4000829f68, L0x4000829f70])
                  (limbs 64 [L0x4000829f18s, L0x4000829f20s, L0x4000829f28s,
                             L0x4000829f30s, L0x4000829f38s, L0x4000829f40s,
                             L0x4000829f48s, L0x4000829f50s, L0x4000829f58s,
                             L0x4000829f60s, L0x4000829f68s, L0x4000829f70s] +
                   limbs 64 [L0x4000829bc8, L0x4000829bd0, L0x4000829bd8,
                             L0x4000829be0, L0x4000829be8, L0x4000829bf0,
                             L0x4000829bf8, L0x4000829c00, L0x4000829c08,
                             L0x4000829c10, L0x4000829c18, L0x4000829c20])
                  (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5]),
            eqmod (limbs 64 [L0x4000829f78, L0x4000829f80, L0x4000829f88,
                             L0x4000829f90, L0x4000829f98, L0x4000829fa0,
                             L0x4000829fa8, L0x4000829fb0, L0x4000829fb8,
                             L0x4000829fc0, L0x4000829fc8, L0x4000829fd0])
                  (limbs 64 [L0x4000829f78s, L0x4000829f80s, L0x4000829f88s,
                             L0x4000829f90s, L0x4000829f98s, L0x4000829fa0s,
                             L0x4000829fa8s, L0x4000829fb0s, L0x4000829fb8s,
                             L0x4000829fc0s, L0x4000829fc8s, L0x4000829fd0s] +
                   limbs 64 [L0x4000829c28, L0x4000829c30, L0x4000829c38,
                             L0x4000829c40, L0x4000829c48, L0x4000829c50,
                             L0x4000829c58, L0x4000829c60, L0x4000829c68,
                             L0x4000829c70, L0x4000829c78, L0x4000829c80])
                  (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5])
       ]
    && true;

(* ret[2] = (a0 + a2)*(b0 + b2) - a0*b0 - a2*b2 + a1*b1
          = a0*b2 + a2*b0 + a1*b1 *)
(*
assert and [eqmod (limbs 64 [L0x4000829a48r2, L0x4000829a50r2, L0x4000829a58r2,
                             L0x4000829a60r2, L0x4000829a68r2, L0x4000829a70r2] +
                   limbs 64 [L0x4000829a78r2, L0x4000829a80r2, L0x4000829a88r2,
                             L0x4000829a90r2, L0x4000829a98r2, L0x4000829aa0r2] * U)
                  (limbs 64 [a00, a01, a02, a03, a04, a05] +
                   limbs 64 [a10, a11, a12, a13, a14, a15] * U +
                   limbs 64 [a40, a41, a42, a43, a44, a45] +
                   limbs 64 [a50, a51, a52, a53, a54, a55] * U)
                  [limbs 64 [m0, m1, m2, m3, m4, m5], U * U + 1],
            eqmod (limbs 64 [L0x4000829aa8r2, L0x4000829ab0r2, L0x4000829ab8r2,
                             L0x4000829ac0r2, L0x4000829ac8r2, L0x4000829ad0r2] +
                   limbs 64 [L0x4000829ad8r2, L0x4000829ae0r2, L0x4000829ae8r2,
                             L0x4000829af0r2, L0x4000829af8r2, L0x4000829b00r2] * U)
                  (limbs 64 [b00, b01, b02, b03, b04, b05] +
                   limbs 64 [b10, b11, b12, b13, b14, b15] * U +
                   limbs 64 [b40, b41, b42, b43, b44, b45] +
                   limbs 64 [b50, b51, b52, b53, b54, b55] * U)
                  [limbs 64 [m0, m1, m2, m3, m4, m5], U * U + 1],
            eqmod (limbs 64 [L0x4000829f18, L0x4000829f20, L0x4000829f28,
                             L0x4000829f30, L0x4000829f38, L0x4000829f40,
                             L0x4000829f48, L0x4000829f50, L0x4000829f58,
                             L0x4000829f60, L0x4000829f68, L0x4000829f70] +
                   limbs 64 [L0x4000829f78, L0x4000829f80, L0x4000829f88,
                             L0x4000829f90, L0x4000829f98, L0x4000829fa0,
                             L0x4000829fa8, L0x4000829fb0, L0x4000829fb8,
                             L0x4000829fc0, L0x4000829fc8, L0x4000829fd0] * U)
                  ((limbs 64 [L0x4000829a48r2, L0x4000829a50r2, L0x4000829a58r2,
                              L0x4000829a60r2, L0x4000829a68r2, L0x4000829a70r2] +
                    limbs 64 [L0x4000829a78r2, L0x4000829a80r2, L0x4000829a88r2,
                              L0x4000829a90r2, L0x4000829a98r2, L0x4000829aa0r2] * U) *
                   (limbs 64 [L0x4000829aa8r2, L0x4000829ab0r2, L0x4000829ab8r2,
                              L0x4000829ac0r2, L0x4000829ac8r2, L0x4000829ad0r2] +
                    limbs 64 [L0x4000829ad8r2, L0x4000829ae0r2, L0x4000829ae8r2,
                              L0x4000829af0r2, L0x4000829af8r2, L0x4000829b00r2] * U) -
                   (limbs 64 [a00, a01, a02, a03, a04, a05] +
                    limbs 64 [a10, a11, a12, a13, a14, a15] * U) *
                   (limbs 64 [b00, b01, b02, b03, b04, b05] +
                    limbs 64 [b10, b11, b12, b13, b14, b15] * U) -
                   (limbs 64 [a40, a41, a42, a43, a44, a45] +
                    limbs 64 [a50, a51, a52, a53, a54, a55] * U) *
                   (limbs 64 [b40, b41, b42, b43, b44, b45] +
                    limbs 64 [b50, b51, b52, b53, b54, b55] * U) +
                   (limbs 64 [a20, a21, a22, a23, a24, a25] +
                    limbs 64 [a30, a31, a32, a33, a34, a35] * U) *
                   (limbs 64 [b20, b21, b22, b23, b24, b25] +
                    limbs 64 [b30, b31, b32, b33, b34, b35] * U))
                  [limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5],
                   U * U + 1]]
    && true;
*)
(* ldr	x0, [sp, #168]                              #! EA = L0x4000829a38; Value = 0x000000400085d6d0; PC = 0x274877950976 *)
mov x0 L0x4000829a38;
(* ldr	x1, [sp, #952]                              #! EA = L0x4000829d48; Value = 0xb9a8639ce44cac00; PC = 0x274877950980 *)
mov x1 L0x4000829d48;
(* ldr	x0, [x0]                                    #! EA = L0x400085d6d0; Value = 0xb9a8639ce44cac00; PC = 0x274877950984 *)
mov x0 L0x400085d6d0;
(* eor	x0, x1, x0                                  #! PC = 0x274877950988 *)
xor x0@uint64 x1 x0;
(* #cbnz	x0, 0x400000ac34 <mul_fp6x2+892>          #! PC = 0x274877950992 *)
#cbnz	%%x0, 0x400000ac34 <mul_fp6x2+892>          #! 0x274877950992 = 0x274877950992;
(* ldp	x19, x20, [sp, #16]                         #! EA = L0x40008299a0; Value = 0x000000400082a048; PC = 0x274877950996 *)
mov x19 L0x40008299a0;
mov x20 L0x40008299a8;
(* ldp	x21, x22, [sp, #32]                         #! EA = L0x40008299b0; Value = 0x0000004000829d98; PC = 0x274877951000 *)
mov x21 L0x40008299b0;
mov x22 L0x40008299b8;
(* ldp	x23, x24, [sp, #48]                         #! EA = L0x40008299c0; Value = 0x000000400085d6d0; PC = 0x274877951004 *)
mov x23 L0x40008299c0;
mov x24 L0x40008299c8;
(* ldp	x25, x26, [sp, #64]                         #! EA = L0x40008299d0; Value = 0x000000400085d6d0; PC = 0x274877951008 *)
mov x25 L0x40008299d0;
mov x26 L0x40008299d8;
(* ldp	x27, x28, [sp, #80]                         #! EA = L0x40008299e0; Value = 0x000000400082a718; PC = 0x274877951012 *)
mov x27 L0x40008299e0;
mov x28 L0x40008299e8;
(* ldp	x29, x30, [sp]                              #! EA = L0x4000829990; Value = 0x0000004000829d50; PC = 0x274877951016 *)
mov x29 L0x4000829990;
mov x30 L0x4000829998;
(* add	sp, sp, #0x3c0                              #! PC = 0x274877951020 *)
adds dontcare sp sp 0x3c0@uint64;
(* #ret                                            #! PC = 0x274877951024 *)
#ret                                            #! 0x274877951024 = 0x274877951024;

{
  and [
       (* ret[0] = ((a1 + a2)*(b1 + b2) - a1*b1 - a2*b2)*(u+1) + a0*b0
                 = (a1*b2 + a2*b1)*(u+1) + a0*b0 *)
       eqmod (limbs 64 [L0x4000829a48r0, L0x4000829a50r0, L0x4000829a58r0,
                        L0x4000829a60r0, L0x4000829a68r0, L0x4000829a70r0] +
              limbs 64 [L0x4000829a78r0, L0x4000829a80r0, L0x4000829a88r0,
                        L0x4000829a90r0, L0x4000829a98r0, L0x4000829aa0r0] * U)
             ((limbs 64 [a20, a21, a22, a23, a24, a25] +
               limbs 64 [a30, a31, a32, a33, a34, a35] * U) +
              (limbs 64 [a40, a41, a42, a43, a44, a45] +
               limbs 64 [a50, a51, a52, a53, a54, a55] * U))
             [limbs 64 [m0, m1, m2, m3, m4, m5], U * U + 1],
       eqmod (limbs 64 [L0x4000829aa8r0, L0x4000829ab0r0, L0x4000829ab8r0,
                        L0x4000829ac0r0, L0x4000829ac8r0, L0x4000829ad0r0] +
              limbs 64 [L0x4000829ad8r0, L0x4000829ae0r0, L0x4000829ae8r0,
                        L0x4000829af0r0, L0x4000829af8r0, L0x4000829b00r0] * U)
             ((limbs 64 [b20, b21, b22, b23, b24, b25] +
               limbs 64 [b30, b31, b32, b33, b34, b35] * U) +
              (limbs 64 [b40, b41, b42, b43, b44, b45] +
               limbs 64 [b50, b51, b52, b53, b54, b55] * U))
             [limbs 64 [m0, m1, m2, m3, m4, m5], U * U + 1],
       eqmod (limbs 64 [L0x4000829d98, L0x4000829da0, L0x4000829da8,
                        L0x4000829db0, L0x4000829db8, L0x4000829dc0,
                        L0x4000829dc8, L0x4000829dd0, L0x4000829dd8,
                        L0x4000829de0, L0x4000829de8, L0x4000829df0] +
              limbs 64 [L0x4000829df8, L0x4000829e00, L0x4000829e08,
                        L0x4000829e10, L0x4000829e18, L0x4000829e20,
                        L0x4000829e28, L0x4000829e30, L0x4000829e38,
                        L0x4000829e40, L0x4000829e48, L0x4000829e50] * U)
             (((limbs 64 [L0x4000829a48r0, L0x4000829a50r0, L0x4000829a58r0,
                          L0x4000829a60r0, L0x4000829a68r0, L0x4000829a70r0] +
                limbs 64 [L0x4000829a78r0, L0x4000829a80r0, L0x4000829a88r0,
                          L0x4000829a90r0, L0x4000829a98r0, L0x4000829aa0r0] * U) *
               (limbs 64 [L0x4000829aa8r0, L0x4000829ab0r0, L0x4000829ab8r0,
                          L0x4000829ac0r0, L0x4000829ac8r0, L0x4000829ad0r0] +
                limbs 64 [L0x4000829ad8r0, L0x4000829ae0r0, L0x4000829ae8r0,
                          L0x4000829af0r0, L0x4000829af8r0, L0x4000829b00r0] * U) -
               (limbs 64 [a20, a21, a22, a23, a24, a25] +
                limbs 64 [a30, a31, a32, a33, a34, a35] * U) *
               (limbs 64 [b20, b21, b22, b23, b24, b25] +
                limbs 64 [b30, b31, b32, b33, b34, b35] * U) -
               (limbs 64 [a40, a41, a42, a43, a44, a45] +
                limbs 64 [a50, a51, a52, a53, a54, a55] * U) *
               (limbs 64 [b40, b41, b42, b43, b44, b45] +
                limbs 64 [b50, b51, b52, b53, b54, b55] * U)) *
              (U + 1) +
              (limbs 64 [a00, a01, a02, a03, a04, a05] +
               limbs 64 [a10, a11, a12, a13, a14, a15] * U) *
              (limbs 64 [b00, b01, b02, b03, b04, b05] +
               limbs 64 [b10, b11, b12, b13, b14, b15] * U))
             [limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5],
              U * U + 1],
              
       (* ret[1] = (a0 + a1)*(b0 + b1) - a0*b0 - a1*b1 + a2*b2*(u+1)
                 = a0*b1 + a1*b0 + a2*b2*(u+1) *)
       eqmod (limbs 64 [L0x4000829a48r1, L0x4000829a50r1, L0x4000829a58r1,
                        L0x4000829a60r1, L0x4000829a68r1, L0x4000829a70r1] +
              limbs 64 [L0x4000829a78r1, L0x4000829a80r1, L0x4000829a88r1,
                        L0x4000829a90r1, L0x4000829a98r1, L0x4000829aa0r1] * U)
             (limbs 64 [a00, a01, a02, a03, a04, a05] +
              limbs 64 [a10, a11, a12, a13, a14, a15] * U +
              limbs 64 [a20, a21, a22, a23, a24, a25] +
              limbs 64 [a30, a31, a32, a33, a34, a35] * U)
             [limbs 64 [m0, m1, m2, m3, m4, m5], U * U + 1],
       eqmod (limbs 64 [L0x4000829aa8r1, L0x4000829ab0r1, L0x4000829ab8r1,
                        L0x4000829ac0r1, L0x4000829ac8r1, L0x4000829ad0r1] +
              limbs 64 [L0x4000829ad8r1, L0x4000829ae0r1, L0x4000829ae8r1,
                        L0x4000829af0r1, L0x4000829af8r1, L0x4000829b00r1] * U)
             (limbs 64 [b00, b01, b02, b03, b04, b05] +
              limbs 64 [b10, b11, b12, b13, b14, b15] * U +
              limbs 64 [b20, b21, b22, b23, b24, b25] +
              limbs 64 [b30, b31, b32, b33, b34, b35] * U)
             [limbs 64 [m0, m1, m2, m3, m4, m5], U * U + 1],
       eqmod (limbs 64 [L0x4000829e58, L0x4000829e60, L0x4000829e68,
                        L0x4000829e70, L0x4000829e78, L0x4000829e80,
                        L0x4000829e88, L0x4000829e90, L0x4000829e98,
                        L0x4000829ea0, L0x4000829ea8, L0x4000829eb0] +
              limbs 64 [L0x4000829eb8, L0x4000829ec0, L0x4000829ec8,
                        L0x4000829ed0, L0x4000829ed8, L0x4000829ee0,
                        L0x4000829ee8, L0x4000829ef0, L0x4000829ef8,
                        L0x4000829f00, L0x4000829f08, L0x4000829f10] * U)
             ((limbs 64 [L0x4000829a48r1, L0x4000829a50r1, L0x4000829a58r1,
                         L0x4000829a60r1, L0x4000829a68r1, L0x4000829a70r1] +
               limbs 64 [L0x4000829a78r1, L0x4000829a80r1, L0x4000829a88r1,
                         L0x4000829a90r1, L0x4000829a98r1, L0x4000829aa0r1] * U) *
              (limbs 64 [L0x4000829aa8r1, L0x4000829ab0r1, L0x4000829ab8r1,
                         L0x4000829ac0r1, L0x4000829ac8r1, L0x4000829ad0r1] +
               limbs 64 [L0x4000829ad8r1, L0x4000829ae0r1, L0x4000829ae8r1,
                         L0x4000829af0r1, L0x4000829af8r1, L0x4000829b00r1] * U) -
              (limbs 64 [a00, a01, a02, a03, a04, a05] +
               limbs 64 [a10, a11, a12, a13, a14, a15] * U) *
              (limbs 64 [b00, b01, b02, b03, b04, b05] +
               limbs 64 [b10, b11, b12, b13, b14, b15] * U) -
              (limbs 64 [a20, a21, a22, a23, a24, a25] +
               limbs 64 [a30, a31, a32, a33, a34, a35] * U) *
              (limbs 64 [b20, b21, b22, b23, b24, b25] +
               limbs 64 [b30, b31, b32, b33, b34, b35] * U) +
              (limbs 64 [a40, a41, a42, a43, a44, a45] +
               limbs 64 [a50, a51, a52, a53, a54, a55] * U) *
              (limbs 64 [b40, b41, b42, b43, b44, b45] +
               limbs 64 [b50, b51, b52, b53, b54, b55] * U) *
              (U + 1))
             [limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5],
              U * U + 1],

       (* ret[2] = (a0 + a2)*(b0 + b2) - a0*b0 - a2*b2 + a1*b1
                 = a0*b2 + a2*b0 + a1*b1 *)
       eqmod (limbs 64 [L0x4000829a48r2, L0x4000829a50r2, L0x4000829a58r2,
                        L0x4000829a60r2, L0x4000829a68r2, L0x4000829a70r2] +
              limbs 64 [L0x4000829a78r2, L0x4000829a80r2, L0x4000829a88r2,
                        L0x4000829a90r2, L0x4000829a98r2, L0x4000829aa0r2] * U)
             (limbs 64 [a00, a01, a02, a03, a04, a05] +
              limbs 64 [a10, a11, a12, a13, a14, a15] * U +
              limbs 64 [a40, a41, a42, a43, a44, a45] +
              limbs 64 [a50, a51, a52, a53, a54, a55] * U)
             [limbs 64 [m0, m1, m2, m3, m4, m5], U * U + 1],
       eqmod (limbs 64 [L0x4000829aa8r2, L0x4000829ab0r2, L0x4000829ab8r2,
                        L0x4000829ac0r2, L0x4000829ac8r2, L0x4000829ad0r2] +
              limbs 64 [L0x4000829ad8r2, L0x4000829ae0r2, L0x4000829ae8r2,
                        L0x4000829af0r2, L0x4000829af8r2, L0x4000829b00r2] * U)
             (limbs 64 [b00, b01, b02, b03, b04, b05] +
              limbs 64 [b10, b11, b12, b13, b14, b15] * U +
              limbs 64 [b40, b41, b42, b43, b44, b45] +
              limbs 64 [b50, b51, b52, b53, b54, b55] * U)
             [limbs 64 [m0, m1, m2, m3, m4, m5], U * U + 1],
       eqmod (limbs 64 [L0x4000829f18, L0x4000829f20, L0x4000829f28,
                        L0x4000829f30, L0x4000829f38, L0x4000829f40,
                        L0x4000829f48, L0x4000829f50, L0x4000829f58,
                        L0x4000829f60, L0x4000829f68, L0x4000829f70] +
              limbs 64 [L0x4000829f78, L0x4000829f80, L0x4000829f88,
                        L0x4000829f90, L0x4000829f98, L0x4000829fa0,
                        L0x4000829fa8, L0x4000829fb0, L0x4000829fb8,
                        L0x4000829fc0, L0x4000829fc8, L0x4000829fd0] * U)
             ((limbs 64 [L0x4000829a48r2, L0x4000829a50r2, L0x4000829a58r2,
                         L0x4000829a60r2, L0x4000829a68r2, L0x4000829a70r2] +
               limbs 64 [L0x4000829a78r2, L0x4000829a80r2, L0x4000829a88r2,
                         L0x4000829a90r2, L0x4000829a98r2, L0x4000829aa0r2] * U) *
              (limbs 64 [L0x4000829aa8r2, L0x4000829ab0r2, L0x4000829ab8r2,
                         L0x4000829ac0r2, L0x4000829ac8r2, L0x4000829ad0r2] +
               limbs 64 [L0x4000829ad8r2, L0x4000829ae0r2, L0x4000829ae8r2,
                         L0x4000829af0r2, L0x4000829af8r2, L0x4000829b00r2] * U) -
              (limbs 64 [a00, a01, a02, a03, a04, a05] +
               limbs 64 [a10, a11, a12, a13, a14, a15] * U) *
              (limbs 64 [b00, b01, b02, b03, b04, b05] +
               limbs 64 [b10, b11, b12, b13, b14, b15] * U) -
              (limbs 64 [a40, a41, a42, a43, a44, a45] +
               limbs 64 [a50, a51, a52, a53, a54, a55] * U) *
              (limbs 64 [b40, b41, b42, b43, b44, b45] +
               limbs 64 [b50, b51, b52, b53, b54, b55] * U) +
              (limbs 64 [a20, a21, a22, a23, a24, a25] +
               limbs 64 [a30, a31, a32, a33, a34, a35] * U) *
              (limbs 64 [b20, b21, b22, b23, b24, b25] +
               limbs 64 [b30, b31, b32, b33, b34, b35] * U))
             [limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5],
              U * U + 1]
  ]
&&
  true
}

