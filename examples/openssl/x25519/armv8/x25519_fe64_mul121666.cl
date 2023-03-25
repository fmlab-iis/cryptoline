(* quine:  -v -btor -isafety -qfbv_args '-SE minisat' x25519_fe64_mul121666.cl
Parsing Cryptoline file:                [OK]            0.000876 seconds
Checking well-formedness:               [OK]            0.000179 seconds
Transforming to SSA form:               [OK]            0.000079 seconds
Rewriting assignments:                  [OK]            0.000082 seconds
Verifying program safety:               [OK]            0.160856 seconds
Verifying range assertions:             [OK]            0.069554 seconds
Verifying range specification:          [OK]            0.021272 seconds
Rewriting value-preserved casting:      [OK]            0.000004 seconds
Verifying algebraic assertions:         [OK]            0.001146 seconds
Verifying algebraic specification:      [OK]            0.048035 seconds
Verification result:                    [OK]            0.302477 seconds
*)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3) =
{
  true
&&
  true
}

mov L0x420048 a0;
mov L0x420050 a1;
mov L0x420058 a2;
mov L0x420060 a3;

(* mov	x3, #0xdb42                	// #56130       #! PC = 0x4196528 *)
mov x3 56130@uint64;
(* movk	x3, #0x1, lsl #16                          #! PC = 0x4196532 *)
add x3 x3 (2**16)@uint64;
(* ldp	x8, x9, [x1]                                #! EA = L0x420048; Value = 0x0ab903c829a82374; PC = 0x4196536 *)
mov x8 L0x420048;
mov x9 L0x420050;
(* ldp	x10, x11, [x1, #16]                         #! EA = L0x420058; Value = 0x0c829a82374abe23; PC = 0x4196540 *)
mov x10 L0x420058;
mov x11 L0x420060;
(* mul	x12, x8, x3                                 #! PC = 0x4196544 *)
(* NOTE: merge with umulh x8, x8, x3 *)
umull x8 x12 x8 x3;
(* umulh	x8, x8, x3                                #! PC = 0x4196548 *)
(* umull x8 x8_L x8 x3; *)
(* mul	x13, x9, x3                                 #! PC = 0x4196552 *)
(* NOTE: merge with umulh x9, x9, x3 *)
umull x9 x13 x9 x3;
(* umulh	x9, x9, x3                                #! PC = 0x4196556 *)
(* umull x9 x9_L x9 x3; *)
(* mul	x14, x10, x3                                #! PC = 0x4196560 *)
(* NOTE: merge with umulh x10, x10, x3 *)
umull x10 x14 x10 x3;
(* umulh	x10, x10, x3                              #! PC = 0x4196564 *)
(* umull x10 x10_L x10 x3; *)
(* mul	x15, x11, x3                                #! PC = 0x4196568 *)
(* NOTE: merge with umulh x11, x11, x3 *)
umull x11 x15 x11 x3;
(* umulh	x11, x11, x3                              #! PC = 0x4196572 *)
(* umull x11 x11_L x11 x3; *)
(* adds	x13, x13, x8                               #! PC = 0x4196576 *)
uadds carry x13 x13 x8;
(* mov	x3, #0x26                  	// #38          #! PC = 0x4196580 *)
mov x3 38@uint64;
(* adcs	x14, x14, x9                               #! PC = 0x4196584 *)
uadcs carry x14 x14 x9 carry;
(* adcs	x15, x15, x10                              #! PC = 0x4196588 *)
uadcs carry x15 x15 x10 carry;
(* adc	x16, xzr, x11                               #! PC = 0x4196592 *)
uadc x16 0@uint64 x11 carry;
(* add	x8, x16, x16, lsl #3                        #! PC = 0x4196596 *)
shl x16_x8 x16 3@uint64;
uadd x8 x16 x16_x8;
(* add	x8, x16, x8, lsl #1                         #! PC = 0x4196600 *)
shl x8_x2 x8 1@uint64;
uadd x8 x16 x8_x2;
(* adds	x12, x12, x8, lsl #1                       #! PC = 0x4196604 *)
shl x8_x2 x8 1@uint64;
uadds carry x12 x12 x8_x2;
(* adcs	x13, x13, xzr                              #! PC = 0x4196608 *)
uadcs carry x13 x13 0@uint64 carry;
(* adcs	x14, x14, xzr                              #! PC = 0x4196612 *)
uadcs carry x14 x14 0@uint64 carry;
(* adcs	x15, x15, xzr                              #! PC = 0x4196616 *)
uadcs carry x15 x15 0@uint64 carry;
(* ngc	x16, xzr                                    #! PC = 0x4196620 *)
usbcs dontcare x16@uint64 0@uint64 0@uint64 carry;
(* bic	x16, x3, x16                                #! PC = 0x4196624 *)
not x16_not@uint64 x16;
and x16@uint64 x3 x16_not;
assert true &&
       or [ and [carry = 1@1, x16 = 38@64],
            and [carry = 0@1, x16 =  0@64] ];
assume (carry - 1)*(x16 -  0) = 0 && true;
assume (carry - 0)*(x16 - 38) = 0 && true;
(* add	x12, x12, x16                               #! PC = 0x4196628 *)
uadd x12 x12 x16;
(* stp	x14, x15, [x0, #16]                         #! EA = L0xffffffffe178; Value = 0x6c7fc3dee64c58b5; PC = 0x4196632 *)
mov L0xffffffffe178 x14;
mov L0xffffffffe180 x15;
(* stp	x12, x13, [x0]                              #! EA = L0xffffffffe168; Value = 0xc2b92c74545d3499; PC = 0x4196636 *)
mov L0xffffffffe168 x12;
mov L0xffffffffe170 x13;
(* 0x00000000004005d8 in main () *)
(* #ret                                            #! PC = 0x4196640 *)
#ret                                            #! 0x4196640 = 0x4196640;

mov r0 L0xffffffffe168;
mov r1 L0xffffffffe170;
mov r2 L0xffffffffe178;
mov r3 L0xffffffffe180;

{
  eqmod (limbs 64 [r0, r1, r2, r3])
        ((limbs 64 [a0, a1, a2, a3]) * 121666)
        (2**256 - 38)
&&
  true
}

