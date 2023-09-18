(* quine: -v -isafety -slicing fpsub610.cl
Parsing Cryptoline file:                [OK]            0.002679 seconds
Checking well-formedness:               [OK]            0.000657 seconds
Transforming to SSA form:               [OK]            0.000178 seconds
Normalizing specification:              [OK]            0.000166 seconds
Rewriting assignments:                  [OK]            0.000250 seconds
Verifying program safety:               [OK]            0.000780 seconds
Verifying range specification:          [OK]            68.396704 seconds
Rewriting value-preserved casting:      [OK]            0.000037 seconds
Verifying algebraic specification:      [OK]            0.000460 seconds
Verification result:                    [OK]            68.402485 seconds
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
(* #b	0xaaaaaaab53dc <fpsub610_asm>                #! PC = 0xaaaaaaab4d74 *)
#b	0xaaaaaaab53dc <fpsub610_asm>                #! 0xaaaaaaab4d74 = 0xaaaaaaab4d74;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffc8f8; Value = 0x72e0bd4d16c66ade; PC = 0xaaaaaaab53dc *)
mov x3 L0xffffffffc8f8;
mov x4 L0xffffffffc900;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffc908; Value = 0x5e470c589305ec10; PC = 0xaaaaaaab53e0 *)
mov x5 L0xffffffffc908;
mov x6 L0xffffffffc910;
(* ldp	x13, x14, [x1]                              #! EA = L0xffffffffc7b8; Value = 0x0b6617679dbf8d02; PC = 0xaaaaaaab53e4 *)
mov x13 L0xffffffffc7b8;
mov x14 L0xffffffffc7c0;
(* ldp	x15, x16, [x1, #16]                         #! EA = L0xffffffffc7c8; Value = 0x38abd91adc0b2ae2; PC = 0xaaaaaaab53e8 *)
mov x15 L0xffffffffc7c8;
mov x16 L0xffffffffc7d0;
(* subs	x3, x3, x13                                #! PC = 0xaaaaaaab53ec *)
subc carry x3 x3 x13;
(* sbcs	x4, x4, x14                                #! PC = 0xaaaaaaab53f0 *)
sbcs carry x4 x4 x14 carry;
(* sbcs	x5, x5, x15                                #! PC = 0xaaaaaaab53f4 *)
sbcs carry x5 x5 x15 carry;
(* sbcs	x6, x6, x16                                #! PC = 0xaaaaaaab53f8 *)
sbcs carry x6 x6 x16 carry;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffc918; Value = 0xefb5c9d80b44100b; PC = 0xaaaaaaab53fc *)
mov x7 L0xffffffffc918;
mov x8 L0xffffffffc920;
(* ldp	x9, x10, [x0, #48]                          #! EA = L0xffffffffc928; Value = 0x9a9431796699e627; PC = 0xaaaaaaab5400 *)
mov x9 L0xffffffffc928;
mov x10 L0xffffffffc930;
(* ldp	x13, x14, [x1, #32]                         #! EA = L0xffffffffc7d8; Value = 0x0b987e6531e28dd0; PC = 0xaaaaaaab5404 *)
mov x13 L0xffffffffc7d8;
mov x14 L0xffffffffc7e0;
(* ldp	x15, x16, [x1, #48]                         #! EA = L0xffffffffc7e8; Value = 0x4bf7ba7b9b598876; PC = 0xaaaaaaab5408 *)
mov x15 L0xffffffffc7e8;
mov x16 L0xffffffffc7f0;
(* sbcs	x7, x7, x13                                #! PC = 0xaaaaaaab540c *)
sbcs carry x7 x7 x13 carry;
(* sbcs	x8, x8, x14                                #! PC = 0xaaaaaaab5410 *)
sbcs carry x8 x8 x14 carry;
(* sbcs	x9, x9, x15                                #! PC = 0xaaaaaaab5414 *)
sbcs carry x9 x9 x15 carry;
(* sbcs	x10, x10, x16                              #! PC = 0xaaaaaaab5418 *)
sbcs carry x10 x10 x16 carry;
(* ldp	x11, x12, [x0, #64]                         #! EA = L0xffffffffc938; Value = 0x336e50e344011e79; PC = 0xaaaaaaab541c *)
mov x11 L0xffffffffc938;
mov x12 L0xffffffffc940;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0xffffffffc7f8; Value = 0xc44837e1a768fd21; PC = 0xaaaaaaab5420 *)
mov x13 L0xffffffffc7f8;
mov x14 L0xffffffffc800;
(* sbcs	x11, x11, x13                              #! PC = 0xaaaaaaab5424 *)
sbcs carry x11 x11 x13 carry;
(* sbcs	x12, x12, x14                              #! PC = 0xaaaaaaab5428 *)
sbcs carry x12 x12 x14 carry;
(* ngc	x17, xzr                                    #! PC = 0xaaaaaaab542c *)
sbcs dontcare x17 0@uint64 0@uint64 carry;
(* ldr	x13, 0xaaaaaaab5230 <p610x2>                #! PC = 0xaaaaaaab5430 *)
mov x13 L0xaaaaaaab5230;
(* ldr	x14, 0xaaaaaaab5238 <p610x2+8>              #! PC = 0xaaaaaaab5434 *)
mov x14 L0xaaaaaaab5238;
(* ldr	x15, 0xaaaaaaab5240 <p610x2+16>             #! PC = 0xaaaaaaab5438 *)
mov x15 L0xaaaaaaab5240;
(* and	x13, x13, x17                               #! PC = 0xaaaaaaab543c *)
and x13@uint64 x13 x17;
(* and	x14, x14, x17                               #! PC = 0xaaaaaaab5440 *)
and x14@uint64 x14 x17;
(* and	x15, x15, x17                               #! PC = 0xaaaaaaab5444 *)
and x15@uint64 x15 x17;
(* adds	x3, x3, x13                                #! PC = 0xaaaaaaab5448 *)
adds carry x3 x3 x13;
(* adcs	x4, x4, x14                                #! PC = 0xaaaaaaab544c *)
adcs carry x4 x4 x14 carry;
(* adcs	x5, x5, x14                                #! PC = 0xaaaaaaab5450 *)
adcs carry x5 x5 x14 carry;
(* adcs	x6, x6, x14                                #! PC = 0xaaaaaaab5454 *)
adcs carry x6 x6 x14 carry;
(* adcs	x7, x7, x15                                #! PC = 0xaaaaaaab5458 *)
adcs carry x7 x7 x15 carry;
(* ldr	x13, 0xaaaaaaab5248 <p610x2+24>             #! PC = 0xaaaaaaab545c *)
mov x13 L0xaaaaaaab5248;
(* ldr	x14, 0xaaaaaaab5250 <p610x2+32>             #! PC = 0xaaaaaaab5460 *)
mov x14 L0xaaaaaaab5250;
(* ldr	x15, 0xaaaaaaab5258 <p610x2+40>             #! PC = 0xaaaaaaab5464 *)
mov x15 L0xaaaaaaab5258;
(* and	x13, x13, x17                               #! PC = 0xaaaaaaab5468 *)
and x13@uint64 x13 x17;
(* and	x14, x14, x17                               #! PC = 0xaaaaaaab546c *)
and x14@uint64 x14 x17;
(* and	x15, x15, x17                               #! PC = 0xaaaaaaab5470 *)
and x15@uint64 x15 x17;
(* adcs	x8, x8, x13                                #! PC = 0xaaaaaaab5474 *)
adcs carry x8 x8 x13 carry;
(* adcs	x9, x9, x14                                #! PC = 0xaaaaaaab5478 *)
adcs carry x9 x9 x14 carry;
(* adcs	x10, x10, x15                              #! PC = 0xaaaaaaab547c *)
adcs carry x10 x10 x15 carry;
(* ldr	x13, 0xaaaaaaab5260 <p610x2+48>             #! PC = 0xaaaaaaab5480 *)
mov x13 L0xaaaaaaab5260;
(* ldr	x14, 0xaaaaaaab5268 <p610x2+56>             #! PC = 0xaaaaaaab5484 *)
mov x14 L0xaaaaaaab5268;
(* and	x13, x13, x17                               #! PC = 0xaaaaaaab5488 *)
and x13@uint64 x13 x17;
(* and	x14, x14, x17                               #! PC = 0xaaaaaaab548c *)
and x14@uint64 x14 x17;
(* adcs	x11, x11, x13                              #! PC = 0xaaaaaaab5490 *)
adcs carry x11 x11 x13 carry;
(* adc	x12, x12, x14                               #! PC = 0xaaaaaaab5494 *)
adcs dontcare x12 x12 x14 carry;
(* stp	x3, x4, [x2]                                #! EA = L0xffffffffc7b8; PC = 0xaaaaaaab5498 *)
mov L0xffffffffc7b8 x3;
mov L0xffffffffc7c0 x4;
(* stp	x5, x6, [x2, #16]                           #! EA = L0xffffffffc7c8; PC = 0xaaaaaaab549c *)
mov L0xffffffffc7c8 x5;
mov L0xffffffffc7d0 x6;
(* stp	x7, x8, [x2, #32]                           #! EA = L0xffffffffc7d8; PC = 0xaaaaaaab54a0 *)
mov L0xffffffffc7d8 x7;
mov L0xffffffffc7e0 x8;
(* stp	x9, x10, [x2, #48]                          #! EA = L0xffffffffc7e8; PC = 0xaaaaaaab54a4 *)
mov L0xffffffffc7e8 x9;
mov L0xffffffffc7f0 x10;
(* stp	x11, x12, [x2, #64]                         #! EA = L0xffffffffc7f8; PC = 0xaaaaaaab54a8 *)
mov L0xffffffffc7f8 x11;
mov L0xffffffffc800 x12;
(* #! <- SP = 0xffffffffc690 *)
#! 0xffffffffc690 = 0xffffffffc690;
(* #ret                                            #! PC = 0xaaaaaaab54ac *)
#ret                                            #! 0xaaaaaaab54ac = 0xaaaaaaab54ac;

mov c0 L0xffffffffc7b8; mov c1 L0xffffffffc7c0; mov c2 L0xffffffffc7c8;
mov c3 L0xffffffffc7d0; mov c4 L0xffffffffc7d8; mov c5 L0xffffffffc7e0;
mov c6 L0xffffffffc7e8; mov c7 L0xffffffffc7f0; mov c8 L0xffffffffc7f8;
mov c9 L0xffffffffc800;

{
  true
&&
  and [eqsmod (limbs 64 [c0, c1, c2, c3, c4, c5, c6, c7, c8, c9])
              (limbs 64 [a0, a1, a2, a3, a4, a5, a6, a7, a8, a9] -
               limbs 64 [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9])
              (limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9]),
       limbs 64 [c0, c1, c2, c3, c4, c5, c6, c7, c8, c9] <u
       2@640 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9]]
}
