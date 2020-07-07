(* quine: -v -isafety -btor -jobs 10 -qfbv_args '-SE cms' blst_fr_sqr-armv8.cl
Parsing Cryptoline file:                [OK]            0.003514 seconds
Checking well-formedness:               [OK]            0.000582 seconds
Transforming to SSA form:               [OK]            0.000792 seconds
Rewriting assignments:                  [OK]            0.000357 seconds
Verifying program safety:               [OK]            1.387516 seconds
Verifying range assertions:             [OK]            83.110444 seconds
Verifying range specification:          [OK]            0.040761 seconds
Rewriting value-preserved casting:      [OK]            0.000019 seconds
Verifying algebraic assertions:         [OK]            0.282252 seconds
Verifying algebraic specification:      [OK]            0.207196 seconds
Verification result:                    [OK]            85.034072 seconds
*)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
           uint64 m0, uint64 m1, uint64 m2, uint64 m3,
           uint64 x3) =
{
  and [
    m0=0xffffffff00000001, m1=0x53bda402fffe5bfe,
    m2=0x3339d80809a1d805, m3=0x73eda753299d7d48,
    eqmod m0 1 2,
    eqmod (1 + m0 * x3) 0 (2**64)
  ]
&&
  and [
    m0=0xffffffff00000001@64, m1=0x53bda402fffe5bfe@64,
    m2=0x3339d80809a1d805@64, m3=0x73eda753299d7d48@64,
    eqmod m0 (1@64) (2@64),
    add 1@64 (mul m0 x3) = 0@64,
    limbs 64 [a0, a1, a2, a3] <u limbs 64 [m0, m1, m2, m3]
  ]
}

(* inputs *)

mov L0x400082abc8 a0;
mov L0x400082abd0 a1;
mov L0x400082abd8 a2;
mov L0x400082abe0 a3;

mov L0x40000167b0 m0;
mov L0x40000167b8 m1;
mov L0x40000167c0 m2;
mov L0x40000167c8 m3;

(* #bl	0x4000012a20 <sqr_mont_sparse_256>          #! PC = 0x274877971056 *)
#bl	0x4000012a20 <sqr_mont_sparse_256>          #! 0x274877971056 = 0x274877971056;
(* ldp	x5, x6, [x1]                                #! EA = L0x400082abc8; Value = 0x0000000000000000; PC = 0x274877983284 *)
mov x5 L0x400082abc8;
mov x6 L0x400082abd0;
(* ldp	x7, x8, [x1, #16]                           #! EA = L0x400082abd8; Value = 0x0000000000000000; PC = 0x274877983288 *)
mov x7 L0x400082abd8;
mov x8 L0x400082abe0;
(* mov	x4, x3                                      #! PC = 0x274877983292 *)
mov x4 x3;                                          #! 0x274877983292 = 0x274877983292;
(* mul	x11, x6, x5                                 #! PC = 0x274877983296 *)
mull mulHx6x5 x11 x6 x5;
(* umulh	x15, x6, x5                               #! PC = 0x274877983300 *)
mov x15 mulHx6x5;
(* mul	x12, x7, x5                                 #! PC = 0x274877983304 *)
mull mulHx7x5 x12 x7 x5;
(* umulh	x16, x7, x5                               #! PC = 0x274877983308 *)
mov x16 mulHx7x5;
(* mul	x13, x8, x5                                 #! PC = 0x274877983312 *)
mull mulHx8x5 x13 x8 x5;
(* umulh	x19, x8, x5                               #! PC = 0x274877983316 *)
mov x19 mulHx8x5;
(* adds	x12, x12, x15                              #! PC = 0x274877983320 *)
adds carry x12 x12 x15;
(* mul	x14, x7, x6                                 #! PC = 0x274877983324 *)
mull mulHx7x6 x14 x7 x6;
(* umulh	x15, x7, x6                               #! PC = 0x274877983328 *)
mov x15 mulHx7x6;
(* adcs	x13, x13, x16                              #! PC = 0x274877983332 *)
adcs carry x13 x13 x16 carry;
(* mul	x16, x8, x6                                 #! PC = 0x274877983336 *)
mull mulHx8x6 x16 x8 x6;
(* umulh	x17, x8, x6                               #! PC = 0x274877983340 *)
mov x17 mulHx8x6;
(* adc	x19, x19, xzr                               #! PC = 0x274877983344 *)
adc x19 x19 0@uint64 carry;
(* mul	x20, x8, x7                                 #! PC = 0x274877983348 *)
mull mulHx8x7 x20 x8 x7;
(* umulh	x21, x8, x7                               #! PC = 0x274877983352 *)
mov x21 mulHx8x7;
(* adds	x15, x15, x16                              #! PC = 0x274877983356 *)
adds carry x15 x15 x16;
(* mul	x10, x5, x5                                 #! PC = 0x274877983360 *)
mull mulHx5x5 x10 x5 x5;
(* adc	x16, x17, xzr                               #! PC = 0x274877983364 *)
adc x16 x17 0@uint64 carry;
(* adds	x13, x13, x14                              #! PC = 0x274877983368 *)
adds carry x13 x13 x14;
(* umulh	x5, x5, x5                                #! PC = 0x274877983372 *)
mov x5 mulHx5x5;
(* adcs	x19, x19, x15                              #! PC = 0x274877983376 *)
adcs carry x19 x19 x15 carry;
(* mul	x15, x6, x6                                 #! PC = 0x274877983380 *)
mull mulHx6x6 x15 x6 x6;
(* adcs	x20, x20, x16                              #! PC = 0x274877983384 *)
adcs carry x20 x20 x16 carry;
(* umulh	x6, x6, x6                                #! PC = 0x274877983388 *)
mov x6 mulHx6x6;
(* adc	x21, x21, xzr                               #! PC = 0x274877983392 *)
adc x21 x21 0@uint64 carry;
(* adds	x11, x11, x11                              #! PC = 0x274877983396 *)
adds carry x11 x11 x11;
(* mul	x16, x7, x7                                 #! PC = 0x274877983400 *)
mull mulHx7x7 x16 x7 x7;
(* adcs	x12, x12, x12                              #! PC = 0x274877983404 *)
adcs carry x12 x12 x12 carry;
(* umulh	x7, x7, x7                                #! PC = 0x274877983408 *)
mov x7 mulHx7x7;
(* adcs	x13, x13, x13                              #! PC = 0x274877983412 *)
adcs carry x13 x13 x13 carry;
(* mul	x17, x8, x8                                 #! PC = 0x274877983416 *)
mull mulHx8x8 x17 x8 x8;
(* adcs	x19, x19, x19                              #! PC = 0x274877983420 *)
adcs carry x19 x19 x19 carry;
(* umulh	x8, x8, x8                                #! PC = 0x274877983424 *)
mov x8 mulHx8x8;
(* adcs	x20, x20, x20                              #! PC = 0x274877983428 *)
adcs carry x20 x20 x20 carry;
(* adcs	x21, x21, x21                              #! PC = 0x274877983432 *)
adcs carry x21 x21 x21 carry;
(* adc	x22, xzr, xzr                               #! PC = 0x274877983436 *)
adc x22 0@uint64 0@uint64 carry;
(* adds	x11, x11, x5                               #! PC = 0x274877983440 *)
adds carry x11 x11 x5;
(* adcs	x12, x12, x15                              #! PC = 0x274877983444 *)
adcs carry x12 x12 x15 carry;
(* adcs	x13, x13, x6                               #! PC = 0x274877983448 *)
adcs carry x13 x13 x6 carry;
(* adcs	x19, x19, x16                              #! PC = 0x274877983452 *)
adcs carry x19 x19 x16 carry;
(* adcs	x20, x20, x7                               #! PC = 0x274877983456 *)
adcs carry x20 x20 x7 carry;
(* adcs	x21, x21, x17                              #! PC = 0x274877983460 *)
adcs carry x21 x21 x17 carry;
(* adc	x22, x22, x8                                #! PC = 0x274877983464 *)
adc x22 x22 x8 carry;
(* #bl	0x4000012c40 <__mul_by_1_mont_256>          #! PC = 0x274877983468 *)
#bl	0x4000012c40 <__mul_by_1_mont_256>          #! 0x274877983468 = 0x274877983468;
(* mul	x3, x4, x10                                 #! PC = 0x274877983808 *)
mull mulHx4x10 x3 x4 x10;
(* ldp	x5, x6, [x2]                                #! EA = L0x40000167b0; Value = 0xffffffff00000001; PC = 0x274877983812 *)
mov x5 L0x40000167b0;
mov x6 L0x40000167b8;
(* ldp	x7, x8, [x2, #16]                           #! EA = L0x40000167c0; Value = 0x3339d80809a1d805; PC = 0x274877983816 *)
mov x7 L0x40000167c0;
mov x8 L0x40000167c8;
(* mul	x15, x6, x3                                 #! PC = 0x274877983820 *)
mull mulHx6x3 x15 x6 x3;
(* mul	x16, x7, x3                                 #! PC = 0x274877983824 *)
mull mulHx7x3 x16 x7 x3;
(* mul	x17, x8, x3                                 #! PC = 0x274877983828 *)
mull mulHx8x3 x17 x8 x3;
(* cmp	x10, #0x1                                   #! PC = 0x274877983832 *)
subc carry dontcare x10 1@uint64;
(* umulh	x14, x5, x3                               #! PC = 0x274877983836 *)
(*
mov x14 mulHx5x3;
*)
(* NOTE: Montgomery reduction *)
mull x14 mulLx5x3 x5 x3;
adds mycarry zeros mulLx5x3 x10;
assert eqmod zeros 0 (2**64) && true;
assume zeros=0 && true;
assert true && mycarry=carry;
assume mycarry=carry && true;
(* adcs	x11, x11, x15                              #! PC = 0x274877983840 *)
adcs carry x11 x11 x15 carry;
(* umulh	x15, x6, x3                               #! PC = 0x274877983844 *)
mov x15 mulHx6x3;
(* adcs	x12, x12, x16                              #! PC = 0x274877983848 *)
adcs carry x12 x12 x16 carry;
(* umulh	x16, x7, x3                               #! PC = 0x274877983852 *)
mov x16 mulHx7x3;
(* adcs	x13, x13, x17                              #! PC = 0x274877983856 *)
adcs carry x13 x13 x17 carry;
(* umulh	x17, x8, x3                               #! PC = 0x274877983860 *)
mov x17 mulHx8x3;
(* adc	x9, xzr, xzr                                #! PC = 0x274877983864 *)
adc x9 0@uint64 0@uint64 carry;
(* adds	x10, x11, x14                              #! PC = 0x274877983868 *)
adds carry x10 x11 x14;
(* adcs	x11, x12, x15                              #! PC = 0x274877983872 *)
adcs carry x11 x12 x15 carry;
(* adcs	x12, x13, x16                              #! PC = 0x274877983876 *)
adcs carry x12 x13 x16 carry;
(* mul	x3, x4, x10                                 #! PC = 0x274877983880 *)
mull mulHx4x10 x3 x4 x10;
(* adc	x13, x9, x17                                #! PC = 0x274877983884 *)
adc x13 x9 x17 carry;
(* mul	x15, x6, x3                                 #! PC = 0x274877983888 *)
mull mulHx6x3 x15 x6 x3;
(* mul	x16, x7, x3                                 #! PC = 0x274877983892 *)
mull mulHx7x3 x16 x7 x3;
(* mul	x17, x8, x3                                 #! PC = 0x274877983896 *)
mull mulHx8x3 x17 x8 x3;
(* cmp	x10, #0x1                                   #! PC = 0x274877983900 *)
subc carry dontcare x10 1@uint64;
(* umulh	x14, x5, x3                               #! PC = 0x274877983904 *)
(*
mov x14 mulHx5x3;
*)
(* NOTE: Montgomery reduction *)
mull x14 mulLx5x3 x5 x3;
adds mycarry zeros mulLx5x3 x10;
assert eqmod zeros 0 (2**64) && true;
assume zeros=0 && true;
assert true && mycarry=carry;
assume mycarry=carry && true;
(* adcs	x11, x11, x15                              #! PC = 0x274877983908 *)
adcs carry x11 x11 x15 carry;
(* umulh	x15, x6, x3                               #! PC = 0x274877983912 *)
mov x15 mulHx6x3;
(* adcs	x12, x12, x16                              #! PC = 0x274877983916 *)
adcs carry x12 x12 x16 carry;
(* umulh	x16, x7, x3                               #! PC = 0x274877983920 *)
mov x16 mulHx7x3;
(* adcs	x13, x13, x17                              #! PC = 0x274877983924 *)
adcs carry x13 x13 x17 carry;
(* umulh	x17, x8, x3                               #! PC = 0x274877983928 *)
mov x17 mulHx8x3;
(* adc	x9, xzr, xzr                                #! PC = 0x274877983932 *)
adc x9 0@uint64 0@uint64 carry;
(* adds	x10, x11, x14                              #! PC = 0x274877983936 *)
adds carry x10 x11 x14;
(* adcs	x11, x12, x15                              #! PC = 0x274877983940 *)
adcs carry x11 x12 x15 carry;
(* adcs	x12, x13, x16                              #! PC = 0x274877983944 *)
adcs carry x12 x13 x16 carry;
(* mul	x3, x4, x10                                 #! PC = 0x274877983948 *)
mull mulHx4x10 x3 x4 x10;
(* adc	x13, x9, x17                                #! PC = 0x274877983952 *)
adc x13 x9 x17 carry;
(* mul	x15, x6, x3                                 #! PC = 0x274877983956 *)
mull mulHx6x3 x15 x6 x3;
(* mul	x16, x7, x3                                 #! PC = 0x274877983960 *)
mull mulHx7x3 x16 x7 x3;
(* mul	x17, x8, x3                                 #! PC = 0x274877983964 *)
mull mulHx8x3 x17 x8 x3;
(* cmp	x10, #0x1                                   #! PC = 0x274877983968 *)
subc carry dontcare x10 1@uint64;
(* umulh	x14, x5, x3                               #! PC = 0x274877983972 *)
(*
mov x14 mulHx5x3;
*)
(* NOTE: Montgomery reduction *)
mull x14 mulLx5x3 x5 x3;
adds mycarry zeros mulLx5x3 x10;
assert eqmod zeros 0 (2**64) && true;
assume zeros=0 && true;
assert true && mycarry=carry;
assume mycarry=carry && true;
(* adcs	x11, x11, x15                              #! PC = 0x274877983976 *)
adcs carry x11 x11 x15 carry;
(* umulh	x15, x6, x3                               #! PC = 0x274877983980 *)
mov x15 mulHx6x3;
(* adcs	x12, x12, x16                              #! PC = 0x274877983984 *)
adcs carry x12 x12 x16 carry;
(* umulh	x16, x7, x3                               #! PC = 0x274877983988 *)
mov x16 mulHx7x3;
(* adcs	x13, x13, x17                              #! PC = 0x274877983992 *)
adcs carry x13 x13 x17 carry;
(* umulh	x17, x8, x3                               #! PC = 0x274877983996 *)
mov x17 mulHx8x3;
(* adc	x9, xzr, xzr                                #! PC = 0x274877984000 *)
adc x9 0@uint64 0@uint64 carry;
(* adds	x10, x11, x14                              #! PC = 0x274877984004 *)
adds carry x10 x11 x14;
(* adcs	x11, x12, x15                              #! PC = 0x274877984008 *)
adcs carry x11 x12 x15 carry;
(* adcs	x12, x13, x16                              #! PC = 0x274877984012 *)
adcs carry x12 x13 x16 carry;
(* mul	x3, x4, x10                                 #! PC = 0x274877984016 *)
mull mulHx4x10 x3 x4 x10;
(* adc	x13, x9, x17                                #! PC = 0x274877984020 *)
adc x13 x9 x17 carry;
(* mul	x15, x6, x3                                 #! PC = 0x274877984024 *)
mull mulHx6x3 x15 x6 x3;
(* mul	x16, x7, x3                                 #! PC = 0x274877984028 *)
mull mulHx7x3 x16 x7 x3;
(* mul	x17, x8, x3                                 #! PC = 0x274877984032 *)
mull mulHx8x3 x17 x8 x3;
(* cmp	x10, #0x1                                   #! PC = 0x274877984036 *)
subc carry dontcare x10 1@uint64;
(* umulh	x14, x5, x3                               #! PC = 0x274877984040 *)
(*
mov x14 mulHx5x3;
*)
(* NOTE: Montgomery reduction *)
mull x14 mulLx5x3 x5 x3;
adds mycarry zeros mulLx5x3 x10;
assert eqmod zeros 0 (2**64) && true;
assume zeros=0 && true;
assert true && mycarry=carry;
assume mycarry=carry && true;
(* adcs	x11, x11, x15                              #! PC = 0x274877984044 *)
adcs carry x11 x11 x15 carry;
(* umulh	x15, x6, x3                               #! PC = 0x274877984048 *)
mov x15 mulHx6x3;
(* adcs	x12, x12, x16                              #! PC = 0x274877984052 *)
adcs carry x12 x12 x16 carry;
(* umulh	x16, x7, x3                               #! PC = 0x274877984056 *)
mov x16 mulHx7x3;
(* adcs	x13, x13, x17                              #! PC = 0x274877984060 *)
adcs carry x13 x13 x17 carry;
(* umulh	x17, x8, x3                               #! PC = 0x274877984064 *)
mov x17 mulHx8x3;
(* adc	x9, xzr, xzr                                #! PC = 0x274877984068 *)
adc x9 0@uint64 0@uint64 carry;
(* adds	x10, x11, x14                              #! PC = 0x274877984072 *)
adds carry x10 x11 x14;
(* adcs	x11, x12, x15                              #! PC = 0x274877984076 *)
adcs carry x11 x12 x15 carry;
(* adcs	x12, x13, x16                              #! PC = 0x274877984080 *)
adcs carry x12 x13 x16 carry;
(* adc	x13, x9, x17                                #! PC = 0x274877984084 *)
adc x13 x9 x17 carry;
(* #ret                                            #! PC = 0x274877984088 *)
#ret                                            #! 0x274877984088 = 0x274877984088;
(* ldr	x30, [x29, #8]                              #! EA = L0x400082ab68; Value = 0x007700400000fa74; PC = 0x274877983472 *)
(* adds	x10, x10, x19                              #! PC = 0x274877983476 *)
adds carry x10 x10 x19;
(* adcs	x11, x11, x20                              #! PC = 0x274877983480 *)
adcs carry x11 x11 x20 carry;
(* adcs	x12, x12, x21                              #! PC = 0x274877983484 *)
adcs carry x12 x12 x21 carry;
(* adcs	x13, x13, x22                              #! PC = 0x274877983488 *)
adcs carry x13 x13 x22 carry;
(* adc	x19, xzr, xzr                               #! PC = 0x274877983492 *)
adc x19 0@uint64 0@uint64 carry;

(* NOTE: end of multiplication *)

assert eqmod (limbs 64 [0, 0, 0, 0, x10, x11, x12, x13, x19])
             ((limbs 64 [a0, a1, a2, a3]) * (limbs 64 [a0, a1, a2, a3]))
             (limbs 64 [m0, m1, m2, m3]) && true;
mov r0 x10;
mov r1 x11;
mov r2 x12;
mov r3 x13;
mov r4 x19;

(* subs	x14, x10, x5                               #! PC = 0x274877983496 *)
subc carry x14 x10 x5;
(* sbcs	x15, x11, x6                               #! PC = 0x274877983500 *)
sbcs carry x15 x11 x6 carry;
(* sbcs	x16, x12, x7                               #! PC = 0x274877983504 *)
sbcs carry x16 x12 x7 carry;
(* sbcs	x17, x13, x8                               #! PC = 0x274877983508 *)
sbcs carry x17 x13 x8 carry;
(* sbcs	xzr, x19, xzr                              #! PC = 0x274877983512 *)
sbcs carry dontcare x19 0@uint64 carry;
(* csel	x10, x10, x14, cc  // cc = lo, ul, last    #! PC = 0x274877983516 *)
cmov x10 carry x14 x10;
(* csel	x11, x11, x15, cc  // cc = lo, ul, last    #! PC = 0x274877983520 *)
cmov x11 carry x15 x11;
(* csel	x12, x12, x16, cc  // cc = lo, ul, last    #! PC = 0x274877983524 *)
cmov x12 carry x16 x12;
(* csel	x13, x13, x17, cc  // cc = lo, ul, last    #! PC = 0x274877983528 *)
cmov x13 carry x17 x13;

assert true &&
       eqmod (limbs 64 [r0, r1, r2, r3, r4])
             (limbs 64 [x10, x11, x12, x13, 0@64])
             (limbs 64 [m0, m1, m2, m3, 0@64]);
assume eqmod (limbs 64 [r0, r1, r2, r3, r4])
             (limbs 64 [x10, x11, x12, x13, 0])
             (limbs 64 [m0, m1, m2, m3, 0]) && true;

(* stp	x10, x11, [x0]                              #! EA = L0x400082ac08; PC = 0x274877983532 *)
mov L0x400082ac08 x10;
mov L0x400082ac10 x11;
(* stp	x12, x13, [x0, #16]                         #! EA = L0x400082ac18; PC = 0x274877983536 *)
mov L0x400082ac18 x12;
mov L0x400082ac20 x13;
(* #ret                                            #! PC = 0x274877983556 *)
#ret                                            #! 0x274877983556 = 0x274877983556;
(* #ret                                            #! PC = 0x274877971064 *)
#ret                                            #! 0x274877971064 = 0x274877971064;

mov c0 L0x400082ac08;
mov c1 L0x400082ac10;
mov c2 L0x400082ac18;
mov c3 L0x400082ac20;

{
  eqmod (limbs 64 [0, 0, 0, 0, c0, c1, c2, c3])
        ((limbs 64 [a0, a1, a2, a3]) * (limbs 64 [a0, a1, a2, a3]))
        (limbs 64 [m0, m1, m2, m3])
&&
  true
}

