proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3) =
{
  true
&&
  and [
    (limbs 64 [a0, a1, a2, a3]) <u
    (limbs 64 [0xFFFFFFFFFFFFFFFF@64, 0x00000000FFFFFFFF@64,
               0x0000000000000000@64, 0xFFFFFFFF00000001@64]),
    (limbs 64 [b0, b1, b2, b3]) <u
    (limbs 64 [0xFFFFFFFFFFFFFFFF@64, 0x00000000FFFFFFFF@64,
               0x0000000000000000@64, 0xFFFFFFFF00000001@64])
  ]
}

mov p0 0xFFFFFFFFFFFFFFFF@uint64;
mov p1 0x00000000FFFFFFFF@uint64;
mov p2 0x0000000000000000@uint64;
mov p3 0xFFFFFFFF00000001@uint64;

mov L0x555557c008 p1;
mov L0x555557c018 p3;

mov L0x555558e040_1 a0;
mov L0x555558e040_2 a1;
mov L0x555558e050_1 a2;
mov L0x555558e050_2 a3;
mov L0x555558e060_1 b0;
mov L0x555558e060_2 b1;
mov L0x555558e070_1 b2;
mov L0x555558e070_2 b3;

(* ldp	x14, x15, [x1]                              #! EA = L0x555558e040 *)
mov x14 L0x555558e040_1;
mov x15 L0x555558e040_2;
(* ldp	x16, x17, [x1, #16]                         #! EA = L0x555558e050 *)
mov x16 L0x555558e050_1;
mov x17 L0x555558e050_2;
(* ldr	x12, 0x555557c008 *)
mov x12 L0x555557c008;
(* ldr	x13, 0x555557c018 *)
mov x13 L0x555557c018;
(* #bl	0x555557c6e0 <__ecp_nistz256_sub_from> *)
#bl	0x555557c6e0 <__ecp_nistz256_sub_from>;
(* ldp	x8, x9, [x2]                                #! EA = L0x555558e060 *)
mov x8 L0x555558e060_1;
mov x9 L0x555558e060_2;
(* ldp	x10, x11, [x2, #16]                         #! EA = L0x555558e070 *)
mov x10 L0x555558e070_1;
mov x11 L0x555558e070_2;
(* subs	x14, x14, x8 *)
subc carry x14 x14 x8;
(* sbcs	x15, x15, x9 *)
sbcs carry x15 x15 x9 carry;
(* sbcs	x16, x16, x10 *)
sbcs carry x16 x16 x10 carry;
(* sbcs	x17, x17, x11 *)
sbcs carry x17 x17 x11 carry;
(* ngc	x1, xzr *)
sbcs carry x1 0@uint64 0@uint64 carry;

assert eqmod (limbs 64 [x14, x15, x16, x17])
             ((limbs 64 [a0, a1, a2, a3]) - (limbs 64 [b0, b1, b2, b3]))
             (limbs 64 [0, 0, 0, 0, 1])
    && true;
assume true
    && eqmod (limbs 64 [x14, x15, x16, x17, 0@64])
             ((limbs 64 [a0, a1, a2, a3, 0@64]) -
              (limbs 64 [b0, b1, b2, b3, 0@64]))
             (limbs 64 [0@64, 0@64, 0@64, 0@64, 1@64]);

(* subs	x8, x14, #0x1 *)
subc carry x8 x14 1@uint64;
(* adcs	x9, x15, x12 *)
adcs carry x9 x15 x12 carry;
(* adcs	x10, x16, xzr *)
adcs carry x10 x16 0@uint64 carry;
(* adc	x11, x17, x13 *)
adcs dontcare x11 x17 x13 carry;
(* cmp	x1, xzr *)
subc zero dontcare 0@uint64 x1;
(* csel	x14, x14, x8, eq  // eq = none *)
cmov x14 zero x14 x8;
(* csel	x15, x15, x9, eq  // eq = none *)
cmov x15 zero x15 x9;
(* csel	x16, x16, x10, eq  // eq = none *)
cmov x16 zero x16 x10;
(* stp	x14, x15, [x0]                              #! EA = L0x7fffffeb28 *)
mov L0x7fffffeb28_1 x14;
mov L0x7fffffeb28_2 x15;
(* csel	x17, x17, x11, eq  // eq = none *)
cmov x17 zero x17 x11;
(* stp	x16, x17, [x0, #16]                         #! EA = L0x7fffffeb38 *)
mov L0x7fffffeb38_1 x16;
mov L0x7fffffeb38_2 x17;
(* #ret *)
#ret;

mov c0 L0x7fffffeb28_1;
mov c1 L0x7fffffeb28_2;
mov c2 L0x7fffffeb38_1;
mov c3 L0x7fffffeb38_2;

{
  true
&&
  and [
    eqsmod ((limbs 64 [a0, a1, a2, a3, 0@64]) - (limbs 64 [b0, b1, b2, b3, 0@64]))
            (limbs 64 [c0, c1, c2, c3, 0@64])
            (limbs 64 [p0, p1, p2, p3, 0@64]),
    (limbs 64 [c0, c1, c2, c3]) <u (limbs 64 [p0, p1, p2, p3])
  ]
}

