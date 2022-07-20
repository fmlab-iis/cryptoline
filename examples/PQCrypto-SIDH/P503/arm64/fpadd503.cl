(* quine:  -v -isafety fpadd503.cl
Parsing Cryptoline file:                [OK]            0.002326 seconds
Checking well-formedness:               [OK]            0.000725 seconds
Transforming to SSA form:               [OK]            0.000256 seconds
Normalizing specification:              [OK]            0.000153 seconds
Rewriting assignments:                  [OK]            0.000190 seconds
Verifying program safety:               [OK]            0.000770 seconds
Verifying range specification:          [OK]            16.346411 seconds
Rewriting value-preserved casting:      [OK]            0.000037 seconds
Verifying algebraic specification:      [OK]            0.000540 seconds
Verification result:                    [OK]            16.352213 seconds
*)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
           uint64 a4, uint64 a5, uint64 a6, uint64 a7,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3,
           uint64 b4, uint64 b5, uint64 b6, uint64 b7,
           uint64 m0, uint64 m1, uint64 m2, uint64 m3,
           uint64 m4, uint64 m5, uint64 m6, uint64 m7) =
{
  true
&&
  and [
  limbs 64 [a0, a1, a2, a3, a4, a5, a6, a7] <u
  2@512 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7],
  limbs 64 [b0, b1, b2, b3, b4, b5, b6, b7] <u
  2@512 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7],
  m0=0xFFFFFFFFFFFFFFFF@64, m1=0xFFFFFFFFFFFFFFFF@64,
  m2=0xFFFFFFFFFFFFFFFF@64, m3=0xABFFFFFFFFFFFFFF@64,
  m4=0x13085BDA2211E7A0@64, m5=0x1B9BF6C87B7E7DAF@64,
  m6=0x6045C6BDDA77A4D0@64, m7=0x004066F541811E1E@64 ]
}

mov L0xffffffffe778 a0; mov L0xffffffffe780 a1;
mov L0xffffffffe788 a2; mov L0xffffffffe790 a3;
mov L0xffffffffe798 a4; mov L0xffffffffe7a0 a5;
mov L0xffffffffe7a8 a6; mov L0xffffffffe7b0 a7;

mov L0xffffffffe7b8 b0; mov L0xffffffffe7c0 b1;
mov L0xffffffffe7c8 b2; mov L0xffffffffe7d0 b3;
mov L0xffffffffe7d8 b4; mov L0xffffffffe7e0 b5;
mov L0xffffffffe7e8 b6; mov L0xffffffffe7f0 b7;

mov L0xaaaaaaab5bd8 0xFFFFFFFFFFFFFFFE@uint64;
mov L0xaaaaaaab5be0 0xFFFFFFFFFFFFFFFF@uint64;
mov L0xaaaaaaab5be8 0x57FFFFFFFFFFFFFF@uint64;
mov L0xaaaaaaab5bf0 0x2610B7B44423CF41@uint64;
mov L0xaaaaaaab5bf8 0x3737ED90F6FCFB5E@uint64;
mov L0xaaaaaaab5c00 0xC08B8D7BB4EF49A0@uint64;
mov L0xaaaaaaab5c08 0x0080CDEA83023C3C@uint64;

(* #! -> SP = 0xffffffffe6f0 *)
#! 0xffffffffe6f0 = 0xffffffffe6f0;
(* #b	0xaaaaaaab5c68 <fpadd503_asm>                #! PC = 0xaaaaaaab5810 *)
#b	0xaaaaaaab5c68 <fpadd503_asm>                #! 0xaaaaaaab5810 = 0xaaaaaaab5810;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe778; Value = 0xec4aff517369c668; PC = 0xaaaaaaab5c68 *)
mov x3 L0xffffffffe778;
mov x4 L0xffffffffe780;
(* ldp	x11, x12, [x1]                              #! EA = L0xffffffffe7b8; Value = 0x67fce141a13ee971; PC = 0xaaaaaaab5c6c *)
mov x11 L0xffffffffe7b8;
mov x12 L0xffffffffe7c0;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffe788; Value = 0x8de7e81bf854c27c; PC = 0xaaaaaaab5c70 *)
mov x5 L0xffffffffe788;
mov x6 L0xffffffffe790;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0xffffffffe7c8; Value = 0xfb3bb0ec2a5c388f; PC = 0xaaaaaaab5c74 *)
mov x13 L0xffffffffe7c8;
mov x14 L0xffffffffe7d0;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe798; Value = 0x479afc5794fb4ac5; PC = 0xaaaaaaab5c78 *)
mov x7 L0xffffffffe798;
mov x8 L0xffffffffe7a0;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0xffffffffe7d8; Value = 0x27a29f2121ec3261; PC = 0xaaaaaaab5c7c *)
mov x15 L0xffffffffe7d8;
mov x16 L0xffffffffe7e0;
(* adds	x3, x3, x11                                #! PC = 0xaaaaaaab5c80 *)
adds carry x3 x3 x11;
(* adcs	x4, x4, x12                                #! PC = 0xaaaaaaab5c84 *)
adcs carry x4 x4 x12 carry;
(* ldp	x9, x10, [x0, #48]                          #! EA = L0xffffffffe7a8; Value = 0xb10eedddec560ddb; PC = 0xaaaaaaab5c88 *)
mov x9 L0xffffffffe7a8;
mov x10 L0xffffffffe7b0;
(* ldp	x17, x18, [x1, #48]                         #! EA = L0xffffffffe7e8; Value = 0x5b1732cb874733a5; PC = 0xaaaaaaab5c8c *)
mov x17 L0xffffffffe7e8;
mov x18 L0xffffffffe7f0;
(* adcs	x5, x5, x13                                #! PC = 0xaaaaaaab5c90 *)
adcs carry x5 x5 x13 carry;
(* adcs	x6, x6, x14                                #! PC = 0xaaaaaaab5c94 *)
adcs carry x6 x6 x14 carry;
(* ldr	x11, 0xaaaaaaab5bd8 <p503x2>                #! PC = 0xaaaaaaab5c98 *)
mov x11 L0xaaaaaaab5bd8;
(* adcs	x7, x7, x15                                #! PC = 0xaaaaaaab5c9c *)
adcs carry x7 x7 x15 carry;
(* ldr	x12, 0xaaaaaaab5be0 <p503x2+8>              #! PC = 0xaaaaaaab5ca0 *)
mov x12 L0xaaaaaaab5be0;
(* adcs	x8, x8, x16                                #! PC = 0xaaaaaaab5ca4 *)
adcs carry x8 x8 x16 carry;
(* ldr	x13, 0xaaaaaaab5be8 <p503x2+16>             #! PC = 0xaaaaaaab5ca8 *)
mov x13 L0xaaaaaaab5be8;
(* adcs	x9, x9, x17                                #! PC = 0xaaaaaaab5cac *)
adcs carry x9 x9 x17 carry;
(* ldr	x14, 0xaaaaaaab5bf0 <p503x2+24>             #! PC = 0xaaaaaaab5cb0 *)
mov x14 L0xaaaaaaab5bf0;
(* adc	x10, x10, x18                               #! PC = 0xaaaaaaab5cb4 *)
adcs dontcare x10 x10 x18 carry;
(* ldr	x15, 0xaaaaaaab5bf8 <p503x2+32>             #! PC = 0xaaaaaaab5cb8 *)
mov x15 L0xaaaaaaab5bf8;
(* subs	x3, x3, x11                                #! PC = 0xaaaaaaab5cbc *)
subc carry x3 x3 x11;
(* sbcs	x4, x4, x12                                #! PC = 0xaaaaaaab5cc0 *)
sbcs carry x4 x4 x12 carry;
(* ldr	x16, 0xaaaaaaab5c00 <p503x2+40>             #! PC = 0xaaaaaaab5cc4 *)
mov x16 L0xaaaaaaab5c00;
(* sbcs	x5, x5, x12                                #! PC = 0xaaaaaaab5cc8 *)
sbcs carry x5 x5 x12 carry;
(* sbcs	x6, x6, x13                                #! PC = 0xaaaaaaab5ccc *)
sbcs carry x6 x6 x13 carry;
(* ldr	x17, 0xaaaaaaab5c08 <p503x2+48>             #! PC = 0xaaaaaaab5cd0 *)
mov x17 L0xaaaaaaab5c08;
(* sbcs	x7, x7, x14                                #! PC = 0xaaaaaaab5cd4 *)
sbcs carry x7 x7 x14 carry;
(* sbcs	x8, x8, x15                                #! PC = 0xaaaaaaab5cd8 *)
sbcs carry x8 x8 x15 carry;
(* sbcs	x9, x9, x16                                #! PC = 0xaaaaaaab5cdc *)
sbcs carry x9 x9 x16 carry;
(* sbcs	x10, x10, x17                              #! PC = 0xaaaaaaab5ce0 *)
sbcs carry x10 x10 x17 carry;
(* ngc	x18, xzr                                    #! PC = 0xaaaaaaab5ce4 *)
sbcs dontcare x18 0@uint64 0@uint64 carry;
(* and	x11, x11, x18                               #! PC = 0xaaaaaaab5ce8 *)
and x11@uint64 x11 x18;
(* and	x12, x12, x18                               #! PC = 0xaaaaaaab5cec *)
and x12@uint64 x12 x18;
(* and	x13, x13, x18                               #! PC = 0xaaaaaaab5cf0 *)
and x13@uint64 x13 x18;
(* and	x14, x14, x18                               #! PC = 0xaaaaaaab5cf4 *)
and x14@uint64 x14 x18;
(* and	x15, x15, x18                               #! PC = 0xaaaaaaab5cf8 *)
and x15@uint64 x15 x18;
(* and	x16, x16, x18                               #! PC = 0xaaaaaaab5cfc *)
and x16@uint64 x16 x18;
(* and	x17, x17, x18                               #! PC = 0xaaaaaaab5d00 *)
and x17@uint64 x17 x18;
(* adds	x3, x3, x11                                #! PC = 0xaaaaaaab5d04 *)
adds carry x3 x3 x11;
(* adcs	x4, x4, x12                                #! PC = 0xaaaaaaab5d08 *)
adcs carry x4 x4 x12 carry;
(* stp	x3, x4, [x2]                                #! EA = L0xffffffffe838; PC = 0xaaaaaaab5d0c *)
mov L0xffffffffe838 x3;
mov L0xffffffffe840 x4;
(* adcs	x5, x5, x12                                #! PC = 0xaaaaaaab5d10 *)
adcs carry x5 x5 x12 carry;
(* adcs	x6, x6, x13                                #! PC = 0xaaaaaaab5d14 *)
adcs carry x6 x6 x13 carry;
(* stp	x5, x6, [x2, #16]                           #! EA = L0xffffffffe848; PC = 0xaaaaaaab5d18 *)
mov L0xffffffffe848 x5;
mov L0xffffffffe850 x6;
(* adcs	x7, x7, x14                                #! PC = 0xaaaaaaab5d1c *)
adcs carry x7 x7 x14 carry;
(* adcs	x8, x8, x15                                #! PC = 0xaaaaaaab5d20 *)
adcs carry x8 x8 x15 carry;
(* stp	x7, x8, [x2, #32]                           #! EA = L0xffffffffe858; PC = 0xaaaaaaab5d24 *)
mov L0xffffffffe858 x7;
mov L0xffffffffe860 x8;
(* adcs	x9, x9, x16                                #! PC = 0xaaaaaaab5d28 *)
adcs carry x9 x9 x16 carry;
(* adc	x10, x10, x17                               #! PC = 0xaaaaaaab5d2c *)
adcs dontcare x10 x10 x17 carry;
(* stp	x9, x10, [x2, #48]                          #! EA = L0xffffffffe868; PC = 0xaaaaaaab5d30 *)
mov L0xffffffffe868 x9;
mov L0xffffffffe870 x10;
(* #! <- SP = 0xffffffffe6f0 *)
#! 0xffffffffe6f0 = 0xffffffffe6f0;
(* #ret                                            #! PC = 0xaaaaaaab5d34 *)
#ret                                            #! 0xaaaaaaab5d34 = 0xaaaaaaab5d34;

mov r0 L0xffffffffe838; mov r1 L0xffffffffe840;
mov r2 L0xffffffffe848; mov r3 L0xffffffffe850;
mov r4 L0xffffffffe858; mov r5 L0xffffffffe860;
mov r6 L0xffffffffe868; mov r7 L0xffffffffe870;


{
  true
&& and [
     limbs 64 [r0, r1, r2, r3, r4, r5, r6, r7, 0@64] <u
     2@576 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, 0@64],
     equmod limbs 64 [r0, r1, r2, r3, r4, r5, r6, r7, 0@64]
            (limbs 64 [a0, a1, a2, a3, a4, a5, a6, a7, 0@64] +
             limbs 64 [b0, b1, b2, b3, b4, b5, b6, b7, 0@64])
            limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, 0@64] ]
}


