(* quine:  -v -btor -isafety -qfbv_args '-SE minisat' x25519_fe64_add.cl
Parsing Cryptoline file:                [OK]            0.000643 seconds
Checking well-formedness:               [OK]            0.000146 seconds
Transforming to SSA form:               [OK]            0.000064 seconds
Rewriting assignments:                  [OK]            0.000100 seconds
Verifying program safety:               [OK]            0.050049 seconds
Verifying range specification:          [OK]            0.829844 seconds
Rewriting value-preserved casting:      [OK]            0.000008 seconds
Verifying algebraic specification:      [OK]            0.000096 seconds
Verification result:                    [OK]            0.881243 seconds
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

(* ldp	x12, x13, [x1]                              #! EA = L0x420020; Value = 0x082374abe23ab903; PC = 0x4196656 *)
mov x12 L0x420020;
mov x13 L0x420028;
(* ldp	x8, x9, [x2]                                #! EA = L0x420048; Value = 0x0ab903c829a82374; PC = 0x4196660 *)
mov x8 L0x420048;
mov x9 L0x420050;
(* ldp	x14, x15, [x1, #16]                         #! EA = L0x420030; Value = 0x0be23ab903c829a8; PC = 0x4196664 *)
mov x14 L0x420030;
mov x15 L0x420038;
(* ldp	x10, x11, [x2, #16]                         #! EA = L0x420058; Value = 0x0c829a82374abe23; PC = 0x4196668 *)
mov x10 L0x420058;
mov x11 L0x420060;
(* adds	x12, x12, x8                               #! PC = 0x4196672 *)
uadds carry x12 x12 x8;
(* mov	x8, #0x26                  	// #38          #! PC = 0x4196676 *)
mov x8 38@uint64;
(* adcs	x13, x13, x9                               #! PC = 0x4196680 *)
uadcs carry x13 x13 x9 carry;
(* adcs	x14, x14, x10                              #! PC = 0x4196684 *)
uadcs carry x14 x14 x10 carry;
(* adcs	x15, x15, x11                              #! PC = 0x4196688 *)
uadcs carry x15 x15 x11 carry;
(* ngc	x16, xzr                                    #! PC = 0x4196692 *)
usbcs dontcare x16 0@uint64 0@uint64 carry;
(* bic	x16, x8, x16                                #! PC = 0x4196696 *)
not x16_not@uint64 x16;
and x16@uint64 x8 x16_not;
(* adds	x12, x12, x16                              #! PC = 0x4196700 *)
uadds carry x12 x12 x16;
(* adcs	x13, x13, xzr                              #! PC = 0x4196704 *)
uadcs carry x13 x13 0@uint64 carry;
(* adcs	x14, x14, xzr                              #! PC = 0x4196708 *)
uadcs carry x14 x14 0@uint64 carry;
(* adcs	x15, x15, xzr                              #! PC = 0x4196712 *)
uadcs carry x15 x15 0@uint64 carry;
(* ngc	x16, xzr                                    #! PC = 0x4196716 *)
usbcs dontcare x16 0@uint64 0@uint64 carry;
(* bic	x16, x8, x16                                #! PC = 0x4196720 *)
not x16_not@uint64 x16;
and x16@uint64 x8 x16_not;
(* add	x12, x12, x16                               #! PC = 0x4196724 *)
uadd x12 x12 x16;
(* stp	x14, x15, [x0, #16]                         #! EA = L0xffffffffe178; Value = 0x0000ffffbf566ce8; PC = 0x4196728 *)
mov L0xffffffffe178 x14;
mov L0xffffffffe180 x15;
(* stp	x12, x13, [x0]                              #! EA = L0xffffffffe168; Value = 0x0000000000000000; PC = 0x4196732 *)
mov L0xffffffffe168 x12;
mov L0xffffffffe170 x13;
(* #ret                                            #! PC = 0x4196736 *)
#ret                                            #! 0x4196736 = 0x4196736;

mov r0 L0xffffffffe168;
mov r1 L0xffffffffe170;
mov r2 L0xffffffffe178;
mov r3 L0xffffffffe180;

{
  true
&&
  and [
#    (limbs 64 [r0, r1, r2, r3]) <u ((2**255) - 19)@256,
    eqmod (limbs 64 [r0, r1, r2, r3, 0@64])
          ((limbs 64 [a0, a1, a2, a3, 0@64]) + (limbs 64 [b0, b1, b2, b3, 0@64]))
          ((2**256)@320 - 38@320)]
}

