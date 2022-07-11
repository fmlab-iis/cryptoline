(* quine: -v -isafety fpsub503.cl
Parsing Cryptoline file:                [OK]            0.001458 seconds
Checking well-formedness:               [OK]            0.000437 seconds
Transforming to SSA form:               [OK]            0.000191 seconds
Normalizing specification:              [OK]            0.000188 seconds
Rewriting assignments:                  [OK]            0.000251 seconds
Verifying program safety:               [OK]            0.000999 seconds
Verifying range specification:          [OK]            53.909305 seconds
Rewriting value-preserved casting:      [OK]            0.000032 seconds
Verifying algebraic specification:      [OK]            0.000441 seconds
Verification result:                    [OK]            53.913847 seconds
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
(* #b	0xaaaaaaab5d38 <fpsub503_asm>                #! PC = 0xaaaaaaab5814 *)
#b	0xaaaaaaab5d38 <fpsub503_asm>                #! 0xaaaaaaab5814 = 0xaaaaaaab5814;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe778; Value = 0xdbb1598ca655327f; PC = 0xaaaaaaab5d38 *)
mov x3 L0xffffffffe778;
mov x4 L0xffffffffe780;
(* ldp	x11, x12, [x1]                              #! EA = L0xffffffffe7b8; Value = 0x41b15f47686d9ae6; PC = 0xaaaaaaab5d3c *)
mov x11 L0xffffffffe7b8;
mov x12 L0xffffffffe7c0;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffe788; Value = 0xd786494c0de734b9; PC = 0xaaaaaaab5d40 *)
mov x5 L0xffffffffe788;
mov x6 L0xffffffffe790;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0xffffffffe7c8; Value = 0xc67d9f518ff96669; PC = 0xaaaaaaab5d44 *)
mov x13 L0xffffffffe7c8;
mov x14 L0xffffffffe7d0;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe798; Value = 0x49f2ac8317fb298a; PC = 0xaaaaaaab5d48 *)
mov x7 L0xffffffffe798;
mov x8 L0xffffffffe7a0;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0xffffffffe7d8; Value = 0xf6cac226705bb9aa; PC = 0xaaaaaaab5d4c *)
mov x15 L0xffffffffe7d8;
mov x16 L0xffffffffe7e0;
(* subs	x3, x3, x11                                #! PC = 0xaaaaaaab5d50 *)
subc carry x3 x3 x11;
(* sbcs	x4, x4, x12                                #! PC = 0xaaaaaaab5d54 *)
sbcs carry x4 x4 x12 carry;
(* ldp	x9, x10, [x0, #48]                          #! EA = L0xffffffffe7a8; Value = 0xeea6eb25ce65dc82; PC = 0xaaaaaaab5d58 *)
mov x9 L0xffffffffe7a8;
mov x10 L0xffffffffe7b0;
(* ldp	x17, x18, [x1, #48]                         #! EA = L0xffffffffe7e8; Value = 0x96e9a7268f78a047; PC = 0xaaaaaaab5d5c *)
mov x17 L0xffffffffe7e8;
mov x18 L0xffffffffe7f0;
(* sbcs	x5, x5, x13                                #! PC = 0xaaaaaaab5d60 *)
sbcs carry x5 x5 x13 carry;
(* sbcs	x6, x6, x14                                #! PC = 0xaaaaaaab5d64 *)
sbcs carry x6 x6 x14 carry;
(* ldr	x11, 0xaaaaaaab5bd8 <p503x2>                #! PC = 0xaaaaaaab5d68 *)
mov x11 L0xaaaaaaab5bd8;
(* sbcs	x7, x7, x15                                #! PC = 0xaaaaaaab5d6c *)
sbcs carry x7 x7 x15 carry;
(* ldr	x12, 0xaaaaaaab5be0 <p503x2+8>              #! PC = 0xaaaaaaab5d70 *)
mov x12 L0xaaaaaaab5be0;
(* sbcs	x8, x8, x16                                #! PC = 0xaaaaaaab5d74 *)
sbcs carry x8 x8 x16 carry;
(* ldr	x13, 0xaaaaaaab5be8 <p503x2+16>             #! PC = 0xaaaaaaab5d78 *)
mov x13 L0xaaaaaaab5be8;
(* sbcs	x9, x9, x17                                #! PC = 0xaaaaaaab5d7c *)
sbcs carry x9 x9 x17 carry;
(* ldr	x14, 0xaaaaaaab5bf0 <p503x2+24>             #! PC = 0xaaaaaaab5d80 *)
mov x14 L0xaaaaaaab5bf0;
(* sbcs	x10, x10, x18                              #! PC = 0xaaaaaaab5d84 *)
sbcs carry x10 x10 x18 carry;
(* ngc	x18, xzr                                    #! PC = 0xaaaaaaab5d88 *)
sbcs dontcare x18 0@uint64 0@uint64 carry;
(* ldr	x15, 0xaaaaaaab5bf8 <p503x2+32>             #! PC = 0xaaaaaaab5d8c *)
mov x15 L0xaaaaaaab5bf8;
(* and	x11, x11, x18                               #! PC = 0xaaaaaaab5d90 *)
and x11@uint64 x11 x18;
(* ldr	x16, 0xaaaaaaab5c00 <p503x2+40>             #! PC = 0xaaaaaaab5d94 *)
mov x16 L0xaaaaaaab5c00;
(* and	x12, x12, x18                               #! PC = 0xaaaaaaab5d98 *)
and x12@uint64 x12 x18;
(* ldr	x17, 0xaaaaaaab5c08 <p503x2+48>             #! PC = 0xaaaaaaab5d9c *)
mov x17 L0xaaaaaaab5c08;
(* and	x13, x13, x18                               #! PC = 0xaaaaaaab5da0 *)
and x13@uint64 x13 x18;
(* and	x14, x14, x18                               #! PC = 0xaaaaaaab5da4 *)
and x14@uint64 x14 x18;
(* and	x15, x15, x18                               #! PC = 0xaaaaaaab5da8 *)
and x15@uint64 x15 x18;
(* and	x16, x16, x18                               #! PC = 0xaaaaaaab5dac *)
and x16@uint64 x16 x18;
(* and	x17, x17, x18                               #! PC = 0xaaaaaaab5db0 *)
and x17@uint64 x17 x18;
(* adds	x3, x3, x11                                #! PC = 0xaaaaaaab5db4 *)
adds carry x3 x3 x11;
(* adcs	x4, x4, x12                                #! PC = 0xaaaaaaab5db8 *)
adcs carry x4 x4 x12 carry;
(* stp	x3, x4, [x2]                                #! EA = L0xffffffffe838; PC = 0xaaaaaaab5dbc *)
mov L0xffffffffe838 x3;
mov L0xffffffffe840 x4;
(* adcs	x5, x5, x12                                #! PC = 0xaaaaaaab5dc0 *)
adcs carry x5 x5 x12 carry;
(* adcs	x6, x6, x13                                #! PC = 0xaaaaaaab5dc4 *)
adcs carry x6 x6 x13 carry;
(* stp	x5, x6, [x2, #16]                           #! EA = L0xffffffffe848; PC = 0xaaaaaaab5dc8 *)
mov L0xffffffffe848 x5;
mov L0xffffffffe850 x6;
(* adcs	x7, x7, x14                                #! PC = 0xaaaaaaab5dcc *)
adcs carry x7 x7 x14 carry;
(* adcs	x8, x8, x15                                #! PC = 0xaaaaaaab5dd0 *)
adcs carry x8 x8 x15 carry;
(* stp	x7, x8, [x2, #32]                           #! EA = L0xffffffffe858; PC = 0xaaaaaaab5dd4 *)
mov L0xffffffffe858 x7;
mov L0xffffffffe860 x8;
(* adcs	x9, x9, x16                                #! PC = 0xaaaaaaab5dd8 *)
adcs carry x9 x9 x16 carry;
(* adc	x10, x10, x17                               #! PC = 0xaaaaaaab5ddc *)
adcs dontcare x10 x10 x17 carry;
(* stp	x9, x10, [x2, #48]                          #! EA = L0xffffffffe868; PC = 0xaaaaaaab5de0 *)
mov L0xffffffffe868 x9;
mov L0xffffffffe870 x10;
(* #! <- SP = 0xffffffffe6f0 *)
#! 0xffffffffe6f0 = 0xffffffffe6f0;
(* #ret                                            #! PC = 0xaaaaaaab5de4 *)
#ret                                            #! 0xaaaaaaab5de4 = 0xaaaaaaab5de4;

mov r0 L0xffffffffe838; mov r1 L0xffffffffe840;
mov r2 L0xffffffffe848; mov r3 L0xffffffffe850;
mov r4 L0xffffffffe858; mov r5 L0xffffffffe860;
mov r6 L0xffffffffe868; mov r7 L0xffffffffe870;

{
  true
&& and [
     limbs 64 [r0, r1, r2, r3, r4, r5, r6, r7] <u
     2@512 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7],
     eqsmod limbs 64 [r0, r1, r2, r3, r4, r5, r6, r7]
           (limbs 64 [a0, a1, a2, a3, a4, a5, a6, a7] -
            limbs 64 [b0, b1, b2, b3, b4, b5, b6, b7])
           limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7] ]
}
