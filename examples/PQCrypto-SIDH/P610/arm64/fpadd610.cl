(* quine: -v -isafety -slicing fpadd610.cl
Parsing Cryptoline file:                [OK]            0.002265 seconds
Checking well-formedness:               [OK]            0.000483 seconds
Transforming to SSA form:               [OK]            0.000199 seconds
Normalizing specification:              [OK]            0.000227 seconds
Rewriting assignments:                  [OK]            0.000273 seconds
Verifying program safety:               [OK]            0.000831 seconds
Verifying range specification:          [OK]            25.859494 seconds
Rewriting value-preserved casting:      [OK]            0.000036 seconds
Verifying algebraic specification:      [OK]            0.000577 seconds
Verification result:                    [OK]            25.865007 seconds
*)                               

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4,
           uint64 a5, uint64 a6, uint64 a7, uint64 a8, uint64 a9,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3, uint64 b4,
           uint64 b5, uint64 b6, uint64 b7, uint64 b8, uint64 b9,
           uint64 m0, uint64 m1, uint64 m2, uint64 m3, uint64 m4,
           uint64 m5, uint64 m6, uint64 m7, uint64 m8, uint64 m9) =
{
  true
&&
  and [
  limbs 64 [a0, a1, a2, a3, a4, a5, a6, a7, a8, a9] <u
  2@640 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9],
  limbs 64 [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9] <u
  2@640 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9],
  m0=0xFFFFFFFFFFFFFFFF@64, m1=0xFFFFFFFFFFFFFFFF@64, m2=0xFFFFFFFFFFFFFFFF@64,
  m3=0xFFFFFFFFFFFFFFFF@64, m4=0x6E01FFFFFFFFFFFF@64, m5=0xB1784DE8AA5AB02E@64,
  m6=0x9AE7BF45048FF9AB@64, m7=0xB255B2FA10C4252A@64, m8=0x819010C251E7D88C@64,
  m9=0x000000027BF6A768@64 ]
}

mov L0xffffffffc8f8 a0; mov L0xffffffffc900 a1; mov L0xffffffffc908 a2;
mov L0xffffffffc910 a3; mov L0xffffffffc918 a4; mov L0xffffffffc920 a5;
mov L0xffffffffc928 a6; mov L0xffffffffc930 a7; mov L0xffffffffc938 a8;
mov L0xffffffffc940 a9;

mov L0xffffffffc7b8 b0; mov L0xffffffffc7c0 b1; mov L0xffffffffc7c8 b2;
mov L0xffffffffc7d0 b3; mov L0xffffffffc7d8 b4; mov L0xffffffffc7e0 b5;
mov L0xffffffffc7e8 b6; mov L0xffffffffc7f0 b7; mov L0xffffffffc7f8 b8;
mov L0xffffffffc800 b9;

mov L0xaaaaaaab5230 0xFFFFFFFFFFFFFFFE@uint64;
mov L0xaaaaaaab5238 0xFFFFFFFFFFFFFFFF@uint64;
mov L0xaaaaaaab5240 0xDC03FFFFFFFFFFFF@uint64;
mov L0xaaaaaaab5248 0x62F09BD154B5605C@uint64;
mov L0xaaaaaaab5250 0x35CF7E8A091FF357@uint64;
mov L0xaaaaaaab5258 0x64AB65F421884A55@uint64;
mov L0xaaaaaaab5260 0x03202184A3CFB119@uint64;
mov L0xaaaaaaab5268 0x00000004F7ED4ED1@uint64;

(* #! -> SP = 0xffffffffc690 *)
#! 0xffffffffc690 = 0xffffffffc690;
(* #b	0xaaaaaaab52d8 <fpadd610_asm>                #! PC = 0xaaaaaaab4d70 *)
#b	0xaaaaaaab52d8 <fpadd610_asm>                #! 0xaaaaaaab4d70 = 0xaaaaaaab4d70;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffc8f8; Value = 0xb2b4da8d9a1742b9; PC = 0xaaaaaaab52d8 *)
mov x3 L0xffffffffc8f8;
mov x4 L0xffffffffc900;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffc908; Value = 0x4a868149118116e8; PC = 0xaaaaaaab52dc *)
mov x5 L0xffffffffc908;
mov x6 L0xffffffffc910;
(* ldp	x13, x14, [x1]                              #! EA = L0xffffffffc7b8; Value = 0x4911a5045363c7cd; PC = 0xaaaaaaab52e0 *)
mov x13 L0xffffffffc7b8;
mov x14 L0xffffffffc7c0;
(* ldp	x15, x16, [x1, #16]                         #! EA = L0xffffffffc7c8; Value = 0xb4b1d29af84fb938; PC = 0xaaaaaaab52e4 *)
mov x15 L0xffffffffc7c8;
mov x16 L0xffffffffc7d0;
(* adds	x3, x3, x13                                #! PC = 0xaaaaaaab52e8 *)
adds carry x3 x3 x13;
(* adcs	x4, x4, x14                                #! PC = 0xaaaaaaab52ec *)
adcs carry x4 x4 x14 carry;
(* adcs	x5, x5, x15                                #! PC = 0xaaaaaaab52f0 *)
adcs carry x5 x5 x15 carry;
(* adcs	x6, x6, x16                                #! PC = 0xaaaaaaab52f4 *)
adcs carry x6 x6 x16 carry;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffc918; Value = 0x48aa1aac456ccbdc; PC = 0xaaaaaaab52f8 *)
mov x7 L0xffffffffc918;
mov x8 L0xffffffffc920;
(* ldp	x9, x10, [x0, #48]                          #! EA = L0xffffffffc928; Value = 0xfaa80c9a0d6e67f0; PC = 0xaaaaaaab52fc *)
mov x9 L0xffffffffc928;
mov x10 L0xffffffffc930;
(* ldp	x13, x14, [x1, #32]                         #! EA = L0xffffffffc7d8; Value = 0x09c20133d93df47d; PC = 0xaaaaaaab5300 *)
mov x13 L0xffffffffc7d8;
mov x14 L0xffffffffc7e0;
(* ldp	x15, x16, [x1, #48]                         #! EA = L0xffffffffc7e8; Value = 0xfbf26d335727df6d; PC = 0xaaaaaaab5304 *)
mov x15 L0xffffffffc7e8;
mov x16 L0xffffffffc7f0;
(* adcs	x7, x7, x13                                #! PC = 0xaaaaaaab5308 *)
adcs carry x7 x7 x13 carry;
(* adcs	x8, x8, x14                                #! PC = 0xaaaaaaab530c *)
adcs carry x8 x8 x14 carry;
(* adcs	x9, x9, x15                                #! PC = 0xaaaaaaab5310 *)
adcs carry x9 x9 x15 carry;
(* adcs	x10, x10, x16                              #! PC = 0xaaaaaaab5314 *)
adcs carry x10 x10 x16 carry;
(* ldp	x11, x12, [x0, #64]                         #! EA = L0xffffffffc938; Value = 0xc16c1117ea6c4b97; PC = 0xaaaaaaab5318 *)
mov x11 L0xffffffffc938;
mov x12 L0xffffffffc940;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0xffffffffc7f8; Value = 0x5fc9f1ef86e15c95; PC = 0xaaaaaaab531c *)
mov x13 L0xffffffffc7f8;
mov x14 L0xffffffffc800;
(* adcs	x11, x11, x13                              #! PC = 0xaaaaaaab5320 *)
adcs carry x11 x11 x13 carry;
(* adc	x12, x12, x14                               #! PC = 0xaaaaaaab5324 *)
adcs dontcare x12 x12 x14 carry;
(* ldr	x0, 0xaaaaaaab5230 <p610x2>                 #! PC = 0xaaaaaaab5328 *)
mov x0 L0xaaaaaaab5230;
(* ldr	x1, 0xaaaaaaab5238 <p610x2+8>               #! PC = 0xaaaaaaab532c *)
mov x1 L0xaaaaaaab5238;
(* ldr	x13, 0xaaaaaaab5240 <p610x2+16>             #! PC = 0xaaaaaaab5330 *)
mov x13 L0xaaaaaaab5240;
(* subs	x3, x3, x0                                 #! PC = 0xaaaaaaab5334 *)
subc carry x3 x3 x0;
(* sbcs	x4, x4, x1                                 #! PC = 0xaaaaaaab5338 *)
sbcs carry x4 x4 x1 carry;
(* sbcs	x5, x5, x1                                 #! PC = 0xaaaaaaab533c *)
sbcs carry x5 x5 x1 carry;
(* sbcs	x6, x6, x1                                 #! PC = 0xaaaaaaab5340 *)
sbcs carry x6 x6 x1 carry;
(* sbcs	x7, x7, x13                                #! PC = 0xaaaaaaab5344 *)
sbcs carry x7 x7 x13 carry;
(* ldr	x14, 0xaaaaaaab5248 <p610x2+24>             #! PC = 0xaaaaaaab5348 *)
mov x14 L0xaaaaaaab5248;
(* ldr	x15, 0xaaaaaaab5250 <p610x2+32>             #! PC = 0xaaaaaaab534c *)
mov x15 L0xaaaaaaab5250;
(* ldr	x16, 0xaaaaaaab5258 <p610x2+40>             #! PC = 0xaaaaaaab5350 *)
mov x16 L0xaaaaaaab5258;
(* sbcs	x8, x8, x14                                #! PC = 0xaaaaaaab5354 *)
sbcs carry x8 x8 x14 carry;
(* sbcs	x9, x9, x15                                #! PC = 0xaaaaaaab5358 *)
sbcs carry x9 x9 x15 carry;
(* sbcs	x10, x10, x16                              #! PC = 0xaaaaaaab535c *)
sbcs carry x10 x10 x16 carry;
(* ldr	x14, 0xaaaaaaab5260 <p610x2+48>             #! PC = 0xaaaaaaab5360 *)
mov x14 L0xaaaaaaab5260;
(* ldr	x15, 0xaaaaaaab5268 <p610x2+56>             #! PC = 0xaaaaaaab5364 *)
mov x15 L0xaaaaaaab5268;
(* sbcs	x11, x11, x14                              #! PC = 0xaaaaaaab5368 *)
sbcs carry x11 x11 x14 carry;
(* sbcs	x12, x12, x15                              #! PC = 0xaaaaaaab536c *)
sbcs carry x12 x12 x15 carry;
(* ngc	x17, xzr                                    #! PC = 0xaaaaaaab5370 *)
sbcs dontcare x17 0@uint64 0@uint64 carry;
(* and	x0, x0, x17                                 #! PC = 0xaaaaaaab5374 *)
and x0@uint64 x0 x17;
(* and	x1, x1, x17                                 #! PC = 0xaaaaaaab5378 *)
and x1@uint64 x1 x17;
(* and	x13, x13, x17                               #! PC = 0xaaaaaaab537c *)
and x13@uint64 x13 x17;
(* and	x14, x14, x17                               #! PC = 0xaaaaaaab5380 *)
and x14@uint64 x14 x17;
(* and	x15, x15, x17                               #! PC = 0xaaaaaaab5384 *)
and x15@uint64 x15 x17;
(* and	x16, x16, x17                               #! PC = 0xaaaaaaab5388 *)
and x16@uint64 x16 x17;
(* adds	x3, x3, x0                                 #! PC = 0xaaaaaaab538c *)
adds carry x3 x3 x0;
(* adcs	x4, x4, x1                                 #! PC = 0xaaaaaaab5390 *)
adcs carry x4 x4 x1 carry;
(* adcs	x5, x5, x1                                 #! PC = 0xaaaaaaab5394 *)
adcs carry x5 x5 x1 carry;
(* adcs	x6, x6, x1                                 #! PC = 0xaaaaaaab5398 *)
adcs carry x6 x6 x1 carry;
(* adcs	x7, x7, x13                                #! PC = 0xaaaaaaab539c *)
adcs carry x7 x7 x13 carry;
(* ldr	x0, 0xaaaaaaab5248 <p610x2+24>              #! PC = 0xaaaaaaab53a0 *)
mov x0 L0xaaaaaaab5248;
(* ldr	x1, 0xaaaaaaab5250 <p610x2+32>              #! PC = 0xaaaaaaab53a4 *)
mov x1 L0xaaaaaaab5250;
(* and	x0, x0, x17                                 #! PC = 0xaaaaaaab53a8 *)
and x0@uint64 x0 x17;
(* and	x1, x1, x17                                 #! PC = 0xaaaaaaab53ac *)
and x1@uint64 x1 x17;
(* adcs	x8, x8, x0                                 #! PC = 0xaaaaaaab53b0 *)
adcs carry x8 x8 x0 carry;
(* adcs	x9, x9, x1                                 #! PC = 0xaaaaaaab53b4 *)
adcs carry x9 x9 x1 carry;
(* adcs	x10, x10, x16                              #! PC = 0xaaaaaaab53b8 *)
adcs carry x10 x10 x16 carry;
(* adcs	x11, x11, x14                              #! PC = 0xaaaaaaab53bc *)
adcs carry x11 x11 x14 carry;
(* adc	x12, x12, x15                               #! PC = 0xaaaaaaab53c0 *)
adcs dontcare x12 x12 x15 carry;
(* stp	x3, x4, [x2]                                #! EA = L0xffffffffc858; PC = 0xaaaaaaab53c4 *)
mov L0xffffffffc858 x3;
mov L0xffffffffc860 x4;
(* stp	x5, x6, [x2, #16]                           #! EA = L0xffffffffc868; PC = 0xaaaaaaab53c8 *)
mov L0xffffffffc868 x5;
mov L0xffffffffc870 x6;
(* stp	x7, x8, [x2, #32]                           #! EA = L0xffffffffc878; PC = 0xaaaaaaab53cc *)
mov L0xffffffffc878 x7;
mov L0xffffffffc880 x8;
(* stp	x9, x10, [x2, #48]                          #! EA = L0xffffffffc888; PC = 0xaaaaaaab53d0 *)
mov L0xffffffffc888 x9;
mov L0xffffffffc890 x10;
(* stp	x11, x12, [x2, #64]                         #! EA = L0xffffffffc898; PC = 0xaaaaaaab53d4 *)
mov L0xffffffffc898 x11;
mov L0xffffffffc8a0 x12;
(* #! <- SP = 0xffffffffc690 *)
#! 0xffffffffc690 = 0xffffffffc690;
(* #ret                                            #! PC = 0xaaaaaaab53d8 *)
#ret                                            #! 0xaaaaaaab53d8 = 0xaaaaaaab53d8;

mov c0 L0xffffffffc858; mov c1 L0xffffffffc860; mov c2 L0xffffffffc868;
mov c3 L0xffffffffc870; mov c4 L0xffffffffc878; mov c5 L0xffffffffc880;
mov c6 L0xffffffffc888; mov c7 L0xffffffffc890; mov c8 L0xffffffffc898;
mov c9 L0xffffffffc8a0;

{
  true
&&
  and [eqmod (limbs 64 [c0, c1, c2, c3, c4, c5, c6, c7, c8, c9])
             (limbs 64 [a0, a1, a2, a3, a4, a5, a6, a7, a8, a9] +
              limbs 64 [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9])
             (limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9]),
       limbs 64 [c0, c1, c2, c3, c4, c5, c6, c7, c8, c9] <u
       2@640 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9]]
}

