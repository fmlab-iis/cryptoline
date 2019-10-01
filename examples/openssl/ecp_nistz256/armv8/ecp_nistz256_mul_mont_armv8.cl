(* on frege: -v -btor -qfbv_args '-SE minisat' -isafety 
Parsing Cryptoline file:                [OK]            0.002770 seconds
Checking well-formedness:               [OK]            0.001058 seconds
Transforming to SSA form:               [OK]            0.000437 seconds
Rewriting assignments:                  [OK]            0.002052 seconds
Verifying program safety:               [OK]            1.452611 seconds
Verifying range assertions:             [OK]            93.021049 seconds
Verifying range specification:          [OK]            712.878732 seconds
Rewriting value-preserved casting:      [OK]            0.000013 seconds
Verifying algebraic assertions:         [OK]            0.082699 seconds
Verifying algebraic specification:      [OK]            0.088664 seconds
Verification result:                    [OK]            807.530898 seconds
*)

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

mov L0x555558e060 b0;
mov L0x555558e068 b1;
mov L0x555558e070 b2;
mov L0x555558e078 b3;

(* ldr	x3, [x2]                                    #! EA = L0x555558e060 *)
mov x3 L0x555558e060;
(* ldp	x4, x5, [x1]                                #! EA = L0x555558e040 *)
mov x4 L0x555558e040_1;
mov x5 L0x555558e040_2;
(* ldp	x6, x7, [x1, #16]                           #! EA = L0x555558e050 *)
mov x6 L0x555558e050_1;
mov x7 L0x555558e050_2;
(* ldr	x12, 0x555557c008 *)
mov x12 L0x555557c008;
(* ldr	x13, 0x555557c018 *)
mov x13 L0x555557c018;
(* #bl	0x555557c340 <__ecp_nistz256_mul_mont> *)
#bl	0x555557c340 <__ecp_nistz256_mul_mont>;
(* mul	x14, x4, x3 *)
(* mul x14 x4 x3; *)
(* umulh	x8, x4, x3 *)
(* NOTE: merge with mul x14, x4, x3 *)
mull x8 x14 x4 x3;
(* mul	x15, x5, x3 *)
(* mul x15 x5 x3; *)
(* umulh	x9, x5, x3 *)
(* NOTE: merge with mul x15, x5, x3 *)
mull x9 x15 x5 x3;
(* mul	x16, x6, x3 *)
(* mul x16 x6 x3; *)
(* umulh	x10, x6, x3 *)
(* NOTE: merge with mul x16, x6, x3 *)
mull x10 x16 x6 x3;
(* mul	x17, x7, x3 *)
(* mul x17 x7 x3; *)
(* umulh	x11, x7, x3 *)
(* NOTE: merge with mul x17, x7, x3 *)
mull x11 x17 x7 x3;
(* ldr	x3, [x2, #8]                                #! EA = L0x555558e068 *)
mov x3 L0x555558e068;
(* adds	x15, x15, x8 *)
adds carry x15 x15 x8;
(* lsl	x8, x14, #32 *)
(* mul x8 x14 (2**32); *)
(* adcs	x16, x16, x9 *)
adcs carry x16 x16 x9 carry;
(* lsr	x9, x14, #32 *)
(* NOTE: merge with lsl x8, x14, #32 *)
split x9 x8 x14 32;
lsl x8 x8 32;
(* adcs	x17, x17, x10 *)
adcs carry x17 x17 x10 carry;
(* adc	x19, xzr, x11 *)
adc x19 0@uint64 x11 carry;
(* mov	x20, xzr *)
mov x20 0@uint64;
(* subs	x10, x14, x8 *)
subc carry x10 x14 x8;
(* sbc	x11, x14, x9 *)
sbcs dontcare x11 x14 x9 carry;
assert true && dontcare = 1@1;
assume dontcare = 1 && true;
(* adds	x14, x15, x8 *)
adds carry x14 x15 x8;
(* mul	x8, x4, x3 *)
(* NOTE: merge with umulh x8, x4, x3 *)
mull x8H x8 x4 x3;
(* adcs	x15, x16, x9 *)
adcs carry x15 x16 x9 carry;
(* mul	x9, x5, x3 *)
(* NOTE: merge with umulh x9, x5, x3 *)
mull x9H x9 x5 x3;
(* adcs	x16, x17, x10 *)
adcs carry x16 x17 x10 carry;
(* mul	x10, x6, x3 *)
(* NOTE: merge with umulh x10, x6, x3 *)
mull x10H x10 x6 x3;
(* adcs	x17, x19, x11 *)
adcs carry x17 x19 x11 carry;
(* mul	x11, x7, x3 *)
(* NOTE: merge with umulh x8, x7, x3 *)
mull x11H x11 x7 x3;
(* adc	x19, x20, xzr *)
adc x19 x20 0@uint64 carry;
(* adds	x14, x14, x8 *)
adds carry x14 x14 x8;
(* umulh	x8, x4, x3 *)
(* mull x8 dontcare x4 x3; *)
mov x8 x8H;
(* adcs	x15, x15, x9 *)
adcs carry x15 x15 x9 carry;
(* umulh	x9, x5, x3 *)
(* mull x9 dontcare x5 x3; *)
mov x9 x9H;
(* adcs	x16, x16, x10 *)
adcs carry x16 x16 x10 carry;
(* umulh	x10, x6, x3 *)
(* mull x10 dontcare x6 x3; *)
mov x10 x10H;
(* adcs	x17, x17, x11 *)
adcs carry x17 x17 x11 carry;
(* umulh	x11, x7, x3 *)
(* mull x11 dontcare x7 x3; *)
mov x11 x11H;
(* adc	x19, x19, xzr *)
adc x19 x19 0@uint64 carry;
(* ldr	x3, [x2, #16]                               #! EA = L0x555558e070 *)
mov x3 L0x555558e070;
(* adds	x15, x15, x8 *)
adds carry x15 x15 x8;
(* lsl	x8, x14, #32 *)
(* mul x8 x14 (2**32); *)
(* adcs	x16, x16, x9 *)
adcs carry x16 x16 x9 carry;
(* lsr	x9, x14, #32 *)
(* NOTE: merge with lsl x8, x14, #32 *)
split x9 x8 x14 32;
lsl x8 x8 32;
(* adcs	x17, x17, x10 *)
adcs carry x17 x17 x10 carry;
(* adcs	x19, x19, x11 *)
adcs carry x19 x19 x11 carry;
(* adc	x20, xzr, xzr *)
adc x20 0@uint64 0@uint64 carry;
(* subs	x10, x14, x8 *)
subc carry x10 x14 x8;
(* sbc	x11, x14, x9 *)
sbcs dontcare x11 x14 x9 carry;
assert true && dontcare = 1@1;
assume dontcare = 1 && true;
(* adds	x14, x15, x8 *)
adds carry x14 x15 x8;
(* mul	x8, x4, x3 *)
(* NOTE: merge with umulh x8, x4, x3 *)
mull x8H x8 x4 x3;
(* adcs	x15, x16, x9 *)
adcs carry x15 x16 x9 carry;
(* mul	x9, x5, x3 *)
(* NOTE: merge with umulh x9, x5, x3 *)
mull x9H x9 x5 x3;
(* adcs	x16, x17, x10 *)
adcs carry x16 x17 x10 carry;
(* mul	x10, x6, x3 *)
(* NOTE: merge with umulh x10, x6, x3 *)
mull x10H x10 x6 x3;
(* adcs	x17, x19, x11 *)
adcs carry x17 x19 x11 carry;
(* mul	x11, x7, x3 *)
(* NOTE: merge with umulh x11, x7, x3 *)
mull x11H x11 x7 x3;
(* adc	x19, x20, xzr *)
adc x19 x20 0@uint64 carry;
(* adds	x14, x14, x8 *)
adds carry x14 x14 x8;
(* umulh	x8, x4, x3 *)
(* mull x8 dontcare x4 x3; *)
mov x8 x8H;
(* adcs	x15, x15, x9 *)
adcs carry x15 x15 x9 carry;
(* umulh	x9, x5, x3 *)
(* mull x9 dontcare x5 x3; *)
mov x9 x9H;
(* adcs	x16, x16, x10 *)
adcs carry x16 x16 x10 carry;
(* umulh	x10, x6, x3 *)
(* mull x10 dontcare x6 x3; *)
mov x10 x10H;
(* adcs	x17, x17, x11 *)
adcs carry x17 x17 x11 carry;
(* umulh	x11, x7, x3 *)
(* mull x11 dontcare x7 x3; *)
mov x11 x11H;
(* adc	x19, x19, xzr *)
adc x19 x19 0@uint64 carry;
(* ldr	x3, [x2, #24]                               #! EA = L0x555558e078 *)
mov x3 L0x555558e078;
(* adds	x15, x15, x8 *)
adds carry x15 x15 x8;
(* lsl	x8, x14, #32 *)
(* mul x8 x14 (2**32); *)
(* adcs	x16, x16, x9 *)
adcs carry x16 x16 x9 carry;
(* lsr	x9, x14, #32 *)
(* NOTE: merge with lsl x8, x14, #32 *)
split x9 x8 x14 32;
lsl x8 x8 32;
(* adcs	x17, x17, x10 *)
adcs carry x17 x17 x10 carry;
(* adcs	x19, x19, x11 *)
adcs carry x19 x19 x11 carry;
(* adc	x20, xzr, xzr *)
adc x20 0@uint64 0@uint64 carry;
(* subs	x10, x14, x8 *)
subc carry x10 x14 x8;
(* sbc	x11, x14, x9 *)
sbcs dontcare x11 x14 x9 carry;
assert true && dontcare = 1@1;
assume dontcare = 1 && true;
(* adds	x14, x15, x8 *)
adds carry x14 x15 x8;
(* mul	x8, x4, x3 *)
(* NOTE: merge with umulh x8, x4, x3 *)
mull x8H x8 x4 x3;
(* adcs	x15, x16, x9 *)
adcs carry x15 x16 x9 carry;
(* mul	x9, x5, x3 *)
(* NOTE: merge with umulh x9, x5, x3 *)
mull x9H x9 x5 x3;
(* adcs	x16, x17, x10 *)
adcs carry x16 x17 x10 carry;
(* mul	x10, x6, x3 *)
(* NOTE: merge with umulh x10, x6, x3 *)
mull x10H x10 x6 x3;
(* adcs	x17, x19, x11 *)
adcs carry x17 x19 x11 carry;
(* mul	x11, x7, x3 *)
(* NOTE: merge with umulh x11, x7, x3 *)
mull x11H x11 x7 x3;
(* adc	x19, x20, xzr *)
adc x19 x20 0@uint64 carry;
(* adds	x14, x14, x8 *)
adds carry x14 x14 x8;
(* umulh	x8, x4, x3 *)
(* mull x8 dontcare x4 x3; *)
mov x8 x8H;
(* adcs	x15, x15, x9 *)
adcs carry x15 x15 x9 carry;
(* umulh	x9, x5, x3 *)
(* mull x9 dontcare x5 x3; *)
mov x9 x9H;
(* adcs	x16, x16, x10 *)
adcs carry x16 x16 x10 carry;
(* umulh	x10, x6, x3 *)
(* mull x10 dontcare x6 x3; *)
mov x10 x10H;
(* adcs	x17, x17, x11 *)
adcs carry x17 x17 x11 carry;
(* umulh	x11, x7, x3 *)
(* mull x11 dontcare x7 x3; *)
mov x11 x11H;
(* adc	x19, x19, xzr *)
adc x19 x19 0@uint64 carry;
(* adds	x15, x15, x8 *)
adds carry x15 x15 x8;
(* lsl	x8, x14, #32 *)
(* mul x8 x14 (2**32); *)
(* adcs	x16, x16, x9 *)
adcs carry x16 x16 x9 carry;
(* lsr	x9, x14, #32 *)
(* NOTE: merge with lsl x8, x14, #32 *)
split x9 x8 x14 32;
lsl x8 x8 32;
(* adcs	x17, x17, x10 *)
adcs carry x17 x17 x10 carry;
(* adcs	x19, x19, x11 *)
adcs carry x19 x19 x11 carry;
(* adc	x20, xzr, xzr *)
adc x20 0@uint64 0@uint64 carry;
(* subs	x10, x14, x8 *)
subc carry x10 x14 x8;
(* sbc	x11, x14, x9 *)
sbcs dontcare x11 x14 x9 carry;
assert true && dontcare = 1@1;
assume dontcare = 1 && true;
(* adds	x14, x15, x8 *)
adds carry x14 x15 x8;
(* adcs	x15, x16, x9 *)
adcs carry x15 x16 x9 carry;
(* adcs	x16, x17, x10 *)
adcs carry x16 x17 x10 carry;
(* adcs	x17, x19, x11 *)
adcs carry x17 x19 x11 carry;
(* adc	x19, x20, xzr *)
adc x19 x20 0@uint64 carry;
mov saved_carry carry;

assert eqmod (limbs 64 [0, 0, 0, 0, x14, x15, x16, x17, x19])
             ((limbs 64 [a0, a1, a2, a3]) * (limbs 64 [b0, b1, b2, b3]))
             (limbs 64 [p0, p1, p2, p3])
    && x19 <=u 1@64;

(* adds	x8, x14, #0x1 *)
adds carry x8 x14 1@uint64;
(* sbcs	x9, x15, x12 *)
sbcs carry x9 x15 x12 carry;
(* sbcs	x10, x16, xzr *)
sbcs carry x10 x16 0@uint64 carry;
(* sbcs	x11, x17, x13 *)
sbcs carry x11 x17 x13 carry;
(* sbcs	xzr, x19, xzr *)
sbcs carry dontcare x19 0@uint64 carry;

(*
assert true
    && or (x20 = 0@64)
          (and (x20 = 1@64) (carry = 1@1));
*)
(* The following two assertions translate the above to polynomial form *)
assert true
    && (x20 - 0@64) * (x20 - 1@64) = 0@64;
cast carry_uint64@uint64 carry;
assert true
    && (x20 - 0@64) * (carry_uint64 - 1@64) = 0@64;
assume (x20 - 0) * (x20 - 1) = 0
    && true;
assume (x20 - 0) * (carry - 1) = 0
    && true;

(*
assert true
    && or (saved_carry = 0@1)
          (and (saved_carry = 1@1) (carry = 1@1));
*)
(* The following two assertions translate the above to polynomial form *)
assert true
    && (saved_carry - 0@1) * (saved_carry - 1@1) = 0@1;
assert true
    && (saved_carry - 0@1) * (carry - 1@1) = 0@1;
assume (saved_carry - 0) * (saved_carry - 1) = 0
    && true;
assume (saved_carry - 0) * (carry - 1) = 0
    && true;

(*
assert true
    && or (carry = 0@1)
          (and (carry = 1@1)
               ((limbs 64 [x8, x9, x10, x11, 0@64]) =
                (limbs 64 [x14, x15, x16, x17, x19]) -
                (limbs 64 [p0, p1, p2, p3, 0@64])));
*)
(* The following two assertions translate the above to polynomial form *)
assert true
    && (carry - 0@1) * (carry - 1@1) = 0@1;
cast carry_uint320@uint320 carry@bit;
assert true
    && (carry_uint320 - 0@320) *
       ((limbs 64 [x14, x15, x16, x17, x19]) -
        (limbs 64 [p0, p1, p2, p3, 0@64]) -
        (limbs 64 [x8, x9, x10, x11, 0@64])) = 0@320;
assume (carry - 0) * (carry - 1) = 0
    && true;
assume (carry - 0) * ((limbs 64 [x14, x15, x16, x17, x19]) -
                      (limbs 64 [p0, p1, p2, p3]) -
                      (limbs 64 [x8, x9, x10, x11])) = 0
    && true;

(* csel	x14, x14, x8, cc  // cc = lo, ul, last *)
cmov x14 carry x8 x14;
(* csel	x15, x15, x9, cc  // cc = lo, ul, last *)
cmov x15 carry x9 x15;
(* csel	x16, x16, x10, cc  // cc = lo, ul, last *)
cmov x16 carry x10 x16;
(* stp	x14, x15, [x0]                              #! EA = L0x7fffffeb38 *)
mov L0x7fffffeb38_1 x14;
mov L0x7fffffeb38_2 x15;
(* csel	x17, x17, x11, cc  // cc = lo, ul, last *)
cmov x17 carry x11 x17;
(* stp	x16, x17, [x0, #16]                         #! EA = L0x7fffffeb48 *)
mov L0x7fffffeb48_1 x16;
mov L0x7fffffeb48_2 x17;
(* #ret *)
#ret;

mov r0 L0x7fffffeb38_1;
mov r1 L0x7fffffeb38_2;
mov r2 L0x7fffffeb48_1;
mov r3 L0x7fffffeb48_2;

{
  eqmod (limbs 64 [0, 0, 0, 0, r0, r1, r2, r3])
        ((limbs 64 [a0, a1, a2, a3]) *
         (limbs 64 [b0, b1, b2, b3]))
        (limbs 64 [p0, p1, p2, p3])
&&
  (limbs 64 [r0, r1, r2, r3]) <u (limbs 64 [p0, p1, p2, p3])
}

