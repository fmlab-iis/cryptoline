(* frege:  -v -btor -qfbv_args '-SE minisat' -isafety
Parsing Cryptoline file:                [OK]            0.002108 seconds
Checking well-formedness:               [OK]            0.000816 seconds
Transforming to SSA form:               [OK]            0.000355 seconds
Rewriting assignments:                  [OK]            0.000786 seconds
Verifying program safety:               [OK]            2.013933 seconds
Verifying range assertions:             [OK]            7.370931 seconds
Verifying range specification:          [OK]            3.208025 seconds
Rewriting value-preserved casting:      [OK]            0.000011 seconds
Verifying algebraic assertions:         [OK]            0.084104 seconds
Verifying algebraic specification:      [OK]            0.084122 seconds
Verification result:                    [OK]            12.765839 seconds
*)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3) =
{
  true
&&
  (limbs 64 [a0, a1, a2, a3]) <u
  (limbs 64 [0xFFFFFFFFFFFFFFFF@64, 0x00000000FFFFFFFF@64,
             0x0000000000000000@64, 0xFFFFFFFF00000001@64])
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
(* #bl	0x555557c520 <__ecp_nistz256_sqr_mont> *)
#bl	0x555557c520 <__ecp_nistz256_sqr_mont>;
(* mul	x15, x5, x4 *)
(* NOTE: merge with umulh x9, x5, x4 *)
mull x9 x15 x5 x4;
(* umulh	x9, x5, x4 *)
(* mull x9 dontcare x5 x4; *)
(* mul	x16, x6, x4 *)
(* NOTE: merge with umulh x10, x6, x4 *)
mull x10 x16 x6 x4;
(* umulh	x10, x6, x4 *)
(* mull x10 dontcare x6 x4; *)
(* mul	x17, x7, x4 *)
(* NOTE: merge with umulh x19, x7, x4 *)
mull x19 x17 x7 x4;
(* umulh	x19, x7, x4 *)
(* mull x19 dontcare x7 x4; *)
(* adds	x16, x16, x9 *)
adds carry x16 x16 x9;
(* mul	x8, x6, x5 *)
(* NOTE: merge with umulh x9, x6, x5 *)
mull x9 x8 x6 x5;
(* umulh	x9, x6, x5 *)
(* mull x9 dontcare x6 x5; *)
(* adcs	x17, x17, x10 *)
adcs carry x17 x17 x10 carry;
(* mul	x10, x7, x5 *)
(* NOTE: merge with umulh x11, x7, x5 *)
mull x11 x10 x7 x5;
(* umulh	x11, x7, x5 *)
(* mull x11 dontcare x7 x5; *)
(* adc	x19, x19, xzr *)
adc x19 x19 0@uint64 carry;
(* mul	x20, x7, x6 *)
(* NOTE: merge umulh x1, x7, x6 *)
mull x1 x20 x7 x6;
(* umulh	x1, x7, x6 *)
(* mull x1 dontcare x7 x6; *)
(* adds	x9, x9, x10 *)
adds carry x9 x9 x10;
(* mul	x14, x4, x4 *)
(* NOTE: merge with umulh x4, x4, x4 *)
mull x4H x14 x4 x4;
(* adc	x10, x11, xzr *)
adc x10 x11 0@uint64 carry;
(* adds	x17, x17, x8 *)
adds carry x17 x17 x8;
(* umulh	x4, x4, x4 *)
(* mull x4 dontcare x4 x4; *)
mov x4 x4H;
(* adcs	x19, x19, x9 *)
adcs carry x19 x19 x9 carry;
(* mul	x9, x5, x5 *)
(* NOTE: merge with umulh x5, x5, x5 *)
mull x5H x9 x5 x5;
(* adcs	x20, x20, x10 *)
adcs carry x20 x20 x10 carry;
(* umulh	x5, x5, x5 *)
(* mull x5 dontcare x5 x5; *)
mov x5 x5H;
(* adc	x1, x1, xzr *)
adc x1 x1 0@uint64 carry;
(* adds	x15, x15, x15 *)
adds carry x15 x15 x15;
(* mul	x10, x6, x6 *)
(* NOTE: merge with umulh x6, x6, x6 *)
mull x6H x10 x6 x6;
(* adcs	x16, x16, x16 *)
adcs carry x16 x16 x16 carry;
(* umulh	x6, x6, x6 *)
(* mull x6 dontcare x6 x6; *)
mov x6 x6H;
(* adcs	x17, x17, x17 *)
adcs carry x17 x17 x17 carry;
(* mul	x11, x7, x7 *)
(* NOTE: merge with umulh x7, x7, x7 *)
mull x7H x11 x7 x7;
(* adcs	x19, x19, x19 *)
adcs carry x19 x19 x19 carry;
(* umulh	x7, x7, x7 *)
(* mull x7 dontcare x7 x7; *)
mov x7 x7H;
(* adcs	x20, x20, x20 *)
adcs carry x20 x20 x20 carry;
(* adcs	x1, x1, x1 *)
adcs carry x1 x1 x1 carry;
(* adc	x2, xzr, xzr *)
adc x2 0@uint64 0@uint64 carry;
(* adds	x15, x15, x4 *)
adds carry x15 x15 x4;
(* adcs	x16, x16, x9 *)
adcs carry x16 x16 x9 carry;
(* adcs	x17, x17, x5 *)
adcs carry x17 x17 x5 carry;
(* adcs	x19, x19, x10 *)
adcs carry x19 x19 x10 carry;
(* adcs	x20, x20, x6 *)
adcs carry x20 x20 x6 carry;
(* lsl	x8, x14, #32 *)
(* mul x8 x14 (2**32); *)
(* adcs	x1, x1, x11 *)
adcs carry x1 x1 x11 carry;
(* lsr	x9, x14, #32 *)
(* NOTE: merge with lsl x8, x14, #32 *)
split x9 x8 x14 32;
lsl x8 x8 32;
(* adc	x2, x2, x7 *)
adc x2 x2 x7 carry;
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
(* lsl	x8, x14, #32 *)
(* mul x8 x14 (2**32); *)
(* adcs	x16, x17, x10 *)
adcs carry x16 x17 x10 carry;
(* lsr	x9, x14, #32 *)
(* NOTE: merge with lsl x8, x14, #32 *)
split x9 x8 x14 32;
lsl x8 x8 32;
(* adc	x17, x11, xzr *)
adc x17 x11 0@uint64 carry;
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
(* lsl	x8, x14, #32 *)
(* mul x8 x14 (2**32); *)
(* adcs	x16, x17, x10 *)
adcs carry x16 x17 x10 carry;
(* lsr	x9, x14, #32 *)
(* NOTE: merge with lsl x8, x14, #32 *)
split x9 x8 x14 32;
lsl x8 x8 32;
(* adc	x17, x11, xzr *)
adc x17 x11 0@uint64 carry;
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
(* lsl	x8, x14, #32 *)
(* mul x8 x14 (2**32); *)
(* adcs	x16, x17, x10 *)
adcs carry x16 x17 x10 carry;
(* lsr	x9, x14, #32 *)
(* NOTE: merge with lsl x8, x14, #32 *)
split x9 x8 x14 32;
lsl x8 x8 32;
(* adc	x17, x11, xzr *)
adc x17 x11 0@uint64 carry;
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
(* adc	x17, x11, xzr *)
adc x17 x11 0@uint64 carry;
(* adds	x14, x14, x19 *)
adds carry x14 x14 x19;
(* adcs	x15, x15, x20 *)
adcs carry x15 x15 x20 carry;
(* adcs	x16, x16, x1 *)
adcs carry x16 x16 x1 carry;
(* adcs	x17, x17, x2 *)
adcs carry x17 x17 x2 carry;
(* adc	x19, xzr, xzr *)
adc x19 0@uint64 0@uint64 carry;
mov saved_carry carry;

assert eqmod (limbs 64 [0, 0, 0, 0, x14, x15, x16, x17, x19])
             ((limbs 64 [a0, a1, a2, a3]) * (limbs 64 [a0, a1, a2, a3]))
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
assert true && or (saved_carry = 0@1)
                  (and (saved_carry = 1@1) (carry = 1@1));
*)
(* The following two assertions translate the above to polynomial form *)
assert true
    && saved_carry * (saved_carry - 1@1) = 0@1;
assume saved_carry * (saved_carry - 1) = 0 && true;

assert true
    && saved_carry * (carry - 1@1) = 0@1;
assume saved_carry * (carry - 1) = 0 && true;

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
assume (carry - 0) * (carry - 1) = 0
    && true;

cast carry_uint320@uint320 carry@bit;
assert true
    && (carry_uint320 - 0@320) *
       ((limbs 64 [x14, x15, x16, x17, x19]) -
        (limbs 64 [p0, p1, p2, p3, 0@64]) -
        (limbs 64 [x8, x9, x10, x11, 0@64])) = 0@320;
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
(* stp	x14, x15, [x0]                              #! EA = L0x7fffffeb18 *)
mov L0x7fffffeb18_1 x14;
mov L0x7fffffeb18_2 x15;
(* csel	x17, x17, x11, cc  // cc = lo, ul, last *)
cmov x17 carry x11 x17;
(* stp	x16, x17, [x0, #16]                         #! EA = L0x7fffffeb28 *)
mov L0x7fffffeb28_1 x16;
mov L0x7fffffeb28_2 x17;
(* #ret *)
#ret;

mov r0 L0x7fffffeb18_1;
mov r1 L0x7fffffeb18_2;
mov r2 L0x7fffffeb28_1;
mov r3 L0x7fffffeb28_2;

{
  eqmod (limbs 64 [0, 0, 0, 0, r0, r1, r2, r3])
        ((limbs 64 [a0, a1, a2, a3]) *
         (limbs 64 [a0, a1, a2, a3]))
        (limbs 64 [p0, p1, p2, p3])
&&
  (limbs 64 [r0, r1, r2, r3]) <u (limbs 64 [p0, p1, p2, p3])
}

