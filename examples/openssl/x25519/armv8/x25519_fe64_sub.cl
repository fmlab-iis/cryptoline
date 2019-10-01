(* quine: -v -btor -isafety -qfbv_args '-SE minisat' x25519_fe64_sub.cl
Parsing Cryptoline file:                [OK]            0.000838 seconds
Checking well-formedness:               [OK]            0.000163 seconds
Transforming to SSA form:               [OK]            0.000079 seconds
Rewriting assignments:                  [OK]            0.000141 seconds
Verifying program safety:               [OK]            0.076059 seconds
Verifying range specification:          [OK]            11.575081 seconds
Rewriting value-preserved casting:      [OK]            0.000010 seconds
Verifying algebraic specification:      [OK]            0.000088 seconds
Verification result:                    [OK]            11.652787 seconds
*)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3) =
{
  true
&&
  true
}

mov L0x420020 a0;
mov L0x420028 a1;
mov L0x420030 a2;
mov L0x420038 a3;

mov L0x420048 b0;
mov L0x420050 b1;
mov L0x420058 b2;
mov L0x420060 b3;

(* ldp	x12, x13, [x1]                              #! EA = L0x420020; Value = 0x082374abe23ab903; PC = 0x4196752 *)
mov x12 L0x420020;
mov x13 L0x420028;
(* ldp	x8, x9, [x2]                                #! EA = L0x420048; Value = 0x0ab903c829a82374; PC = 0x4196756 *)
mov x8 L0x420048;
mov x9 L0x420050;
(* ldp	x14, x15, [x1, #16]                         #! EA = L0x420030; Value = 0x0be23ab903c829a8; PC = 0x4196760 *)
mov x14 L0x420030;
mov x15 L0x420038;
(* ldp	x10, x11, [x2, #16]                         #! EA = L0x420058; Value = 0x0c829a82374abe23; PC = 0x4196764 *)
mov x10 L0x420058;
mov x11 L0x420060;
(* subs	x12, x12, x8                               #! PC = 0x4196768 *)
subc carry x12 x12 x8;
(* mov	x8, #0x26                  	// #38          #! PC = 0x4196772 *)
mov x8 38@uint64;
(* sbcs	x13, x13, x9                               #! PC = 0x4196776 *)
sbcs carry x13 x13 x9 carry;
(* sbcs	x14, x14, x10                              #! PC = 0x4196780 *)
sbcs carry x14 x14 x10 carry;
(* sbcs	x15, x15, x11                              #! PC = 0x4196784 *)
sbcs carry x15 x15 x11 carry;
(* ngc	x16, xzr                                    #! PC = 0x4196788 *)
usbcs dontcare x16 0@uint64 0@uint64 carry;
(* and	x16, x16, x8                                #! PC = 0x4196792 *)
and x16@uint64 x16 x8;
(* subs	x12, x12, x16                              #! PC = 0x4196796 *)
subc carry x12 x12 x16;
(* sbcs	x13, x13, xzr                              #! PC = 0x4196800 *)
sbcs carry x13 x13 0@uint64 carry;
(* sbcs	x14, x14, xzr                              #! PC = 0x4196804 *)
sbcs carry x14 x14 0@uint64 carry;
(* sbcs	x15, x15, xzr                              #! PC = 0x4196808 *)
sbcs carry x15 x15 0@uint64 carry;
(* ngc	x16, xzr                                    #! PC = 0x4196812 *)
usbcs dontcare x16 0@uint64 0@uint64 carry;
(* and	x16, x16, x8                                #! PC = 0x4196816 *)
and x16@uint64 x16 x8;
(* sub	x12, x12, x16                               #! PC = 0x4196820 *)
sub x12 x12 x16;
(* stp	x14, x15, [x0, #16]                         #! EA = L0xffffffffe178; Value = 0x1864d53b3b12e7cb; PC = 0x4196824 *)
mov L0xffffffffe178 x14;
mov L0xffffffffe180 x15;
(* stp	x12, x13, [x0]                              #! EA = L0xffffffffe168; Value = 0x12dc78740be2dc77; PC = 0x4196828 *)
mov L0xffffffffe168 x12;
mov L0xffffffffe170 x13;
(* 0x0000000000400594 in main () *)
(* #ret                                            #! PC = 0x4196832 *)
#ret                                            #! 0x4196832 = 0x4196832;

mov r0 L0xffffffffe168;
mov r1 L0xffffffffe170;
mov r2 L0xffffffffe178;
mov r3 L0xffffffffe180;

{
  true
&&
  and [
#    (limbs 64 [r0, r1, r2, r3]) <u ((2**255) - 19)@256,
    eqmod ((limbs 64 [a0, a1, a2, a3, 0@64]) - (limbs 64 [b0, b1, b2, b3, 0@64]))
          (limbs 64 [r0, r1, r2, r3, 0@64])
          ((2**256)@320 - 38@320)
  ]
}


