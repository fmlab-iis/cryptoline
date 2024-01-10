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
(* ldp	x8, x9, [x2]                                #! EA = L0x555558e060 *)
mov x8 L0x555558e060_1;
mov x9 L0x555558e060_2;
(* ldp	x16, x17, [x1, #16]                         #! EA = L0x555558e050 *)
mov x16 L0x555558e050_1;
mov x17 L0x555558e050_2;
(* ldp	x10, x11, [x2, #16]                         #! EA = L0x555558e070 *)
mov x10 L0x555558e070_1;
mov x11 L0x555558e070_2;
(* ldr	x12, 0x555557c008 *)
mov x12 L0x555557c008;
(* ldr	x13, 0x555557c018 *)
mov x13 L0x555557c018;
(* adds	x14, x14, x8 *)
adds carry x14 x14 x8;
(* adcs	x15, x15, x9 *)
adcs carry x15 x15 x9 carry;
(* adcs	x16, x16, x10 *)
adcs carry x16 x16 x10 carry;
(* adcs	x17, x17, x11 *)
adcs carry x17 x17 x11 carry;
(* adc	x1, xzr, xzr *)
adc x1 0@uint64 0@uint64 carry;

assert eqmod (limbs 64 [x14, x15, x16, x17, x1])
             ((limbs 64 [a0, a1, a2, a3]) + (limbs 64 [b0, b1, b2, b3]))
             (limbs 64 [p0, p1, p2, p3])
    && eqmod (limbs 64 [x14, x15, x16, x17, x1])
             ((limbs 64 [a0, a1, a2, a3, 0@64]) +
              (limbs 64 [b0, b1, b2, b3, 0@64]))
             (limbs 64 [p0, p1, p2, p3, 0@64]);

(* adds	x8, x14, #0x1 *)
adds carry x8 x14 0x1@uint64;

(* NOTE: convert x14 + 1 to x14 - 0xff...f *)
assert eqmod (x14 - p0) (x8 + carry * (2**64)) (2**64)
    && true;
(* NOTE: the following algebraic equation contradicts to
         x14 + 1 = x8 + carry * (2**64) and hence should
         not be added
assume x14 - p0 = x8 + carry * (2**64)
    && true;
*)

(* sbcs	x9, x15, x12 *)
sbcs carry x9 x15 x12 carry;
(* sbcs	x10, x16, xzr *)
sbcs carry x10 x16 0@uint64 carry;
(* sbcs	x11, x17, x13 *)
sbcs carry x11 x17 x13 carry;
(* sbcs	xzr, x1, xzr *)
sbcs carry dontcare x1 0@uint64 carry;
(* csel	x14, x14, x8, cc *)
cmov x14 carry x8 x14;
(* csel	x15, x15, x9, cc *)
cmov x15 carry x9 x15;
(* csel	x16, x16, x10, cc *)
cmov x16 carry x10 x16;
(* stp	x14, x15, [x0]                              #! EA = L0x7fffffeb48 *)
mov L0x7fffffeb48_1 x14;
mov L0x7fffffeb48_2 x15;
(* csel	x17, x17, x11, cc *)
cmov x17 carry x11 x17;
(* stp	x16, x17, [x0, #16]                         #! EA = L0x7fffffeb58 *)
mov L0x7fffffeb58_1 x16;
mov L0x7fffffeb58_2 x17;
(* ldp	x29, x30, [sp], #16                         #! EA = L0x7fffffeb20 *)
#mov x29 L0x7fffffeb20_1;
#mov x30 L0x7fffffeb20_2;

mov c0 L0x7fffffeb48_1;
mov c1 L0x7fffffeb48_2;
mov c2 L0x7fffffeb58_1;
mov c3 L0x7fffffeb58_2;

{
  true
&&
  and [
    eqsmod ((limbs 64 [a0, a1, a2, a3, 0@64]) + (limbs 64 [b0, b1, b2, b3, 0@64]))
            (limbs 64 [c0, c1, c2, c3, 0@64])
            (limbs 64 [p0, p1, p2, p3, 0@64]),
    (limbs 64 [c0, c1, c2, c3]) <u (limbs 64 [p0, p1, p2, p3])]
}

