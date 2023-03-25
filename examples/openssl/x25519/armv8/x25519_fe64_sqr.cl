(* quine:  -v -btor -isafety -qfbv_args '-SE minisat' -jobs 8 x25519_fe64_sqr.cl
Parsing Cryptoline file:                [OK]            0.001725 seconds
Checking well-formedness:               [OK]            0.000392 seconds
Transforming to SSA form:               [OK]            0.000185 seconds
Rewriting assignments:                  [OK]            0.000194 seconds
Verifying program safety:               [OK]            1.212195 seconds
Verifying range assertions:             [OK]            0.644645 seconds
Verifying range specification:          [OK]            0.027408 seconds
Rewriting value-preserved casting:      [OK]            0.000008 seconds
Verifying algebraic assertions:         [OK]            0.001722 seconds
Verifying algebraic specification:      [OK]            0.051295 seconds
Verification result:                    [OK]            1.940235 seconds
*)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3) =
{
  true
&&
  true
}

mov L0x420020 a0;
mov L0x420028 a1;
mov L0x420030 a2;
mov L0x420038 a3;

(* ldp	x4, x5, [x1]                                #! EA = L0x420020; Value = 0x082374abe23ab903; PC = 0x4196224 *)
mov x4 L0x420020;
mov x5 L0x420028;
(* ldp	x6, x7, [x1, #16]                           #! EA = L0x420030; Value = 0x0be23ab903c829a8; PC = 0x4196228 *)
mov x6 L0x420030;
mov x7 L0x420038;
(* mul	x13, x5, x4                                 #! PC = 0x4196232 *)
(* NOTE: merge with umulh x9, x5, x4 *)
umull x9 x13 x5 x4;
(* umulh	x9, x5, x4                                #! PC = 0x4196236 *)
(* umull x9 x9_L x5 x4; *)
(* mul	x14, x6, x4                                 #! PC = 0x4196240 *)
(* NOTE: merge with umulh x10, x6, x4 *)
umull x10 x14 x6 x4;
(* umulh	x10, x6, x4                               #! PC = 0x4196244 *)
(* umull x10 x10_L x6 x4; *)
(* mul	x15, x7, x4                                 #! PC = 0x4196248 *)
(* NOTE: merge with umulh x16, x7, x4 *)
umull x16 x15 x7 x4;
(* umulh	x16, x7, x4                               #! PC = 0x4196252 *)
(* umull x16 x16_L x7 x4; *)
(* adds	x14, x14, x9                               #! PC = 0x4196256 *)
uadds carry x14 x14 x9;
(* mul	x8, x6, x5                                  #! PC = 0x4196260 *)
(* NOTE: merge with umulh x9, x6, x5 *)
umull x9 x8 x6 x5;
(* umulh	x9, x6, x5                                #! PC = 0x4196264 *)
(* umull x9 x9_L x6 x5; *)
(* adcs	x15, x15, x10                              #! PC = 0x4196268 *)
uadcs carry x15 x15 x10 carry;
(* mul	x10, x7, x5                                 #! PC = 0x4196272 *)
(* NOTE: merge with umulh x11, x7, x5 *)
umull x11 x10 x7 x5;
(* umulh	x11, x7, x5                               #! PC = 0x4196276 *)
(* umull x11 x11_L x7 x5; *)
(* adc	x16, x16, xzr                               #! PC = 0x4196280 *)
uadc x16 x16 0@uint64 carry;
(* mul	x17, x7, x6                                 #! PC = 0x4196284 *)
(* NOTE: merge with umulh x1, x7, x6 *)
umull x1 x17 x7 x6;
(* umulh	x1, x7, x6                                #! PC = 0x4196288 *)
(* umull x1 x1_L x7 x6; *)
(* adds	x9, x9, x10                                #! PC = 0x4196292 *)
uadds carry x9 x9 x10;
(* mul	x12, x4, x4                                 #! PC = 0x4196296 *)
umull x12_H x12 x4 x4;
(* adc	x10, x11, xzr                               #! PC = 0x4196300 *)
uadc x10 x11 0@uint64 carry;
(* adds	x15, x15, x8                               #! PC = 0x4196304 *)
uadds carry x15 x15 x8;
(* umulh	x4, x4, x4                                #! PC = 0x4196308 *)
(* umull x4 x4_L x4 x4; *)
(* NOTE: merge with mul x12, x4, x4 *)
mov x4 x12_H;
(* adcs	x16, x16, x9                               #! PC = 0x4196312 *)
uadcs carry x16 x16 x9 carry;
(* mul	x9, x5, x5                                  #! PC = 0x4196316 *)
umull x9_H x9 x5 x5;
(* adcs	x17, x17, x10                              #! PC = 0x4196320 *)
uadcs carry x17 x17 x10 carry;
(* umulh	x5, x5, x5                                #! PC = 0x4196324 *)
(* umull x5 x5_L x5 x5; *)
(* NOTE: merge with mul x9, x5, x5 *)
mov x5 x9_H;
(* adc	x1, x1, xzr                                 #! PC = 0x4196328 *)
uadc x1 x1 0@uint64 carry;
(* adds	x13, x13, x13                              #! PC = 0x4196332 *)
uadds carry x13 x13 x13;
(* mul	x10, x6, x6                                 #! PC = 0x4196336 *)
umull x10_H x10 x6 x6;
(* adcs	x14, x14, x14                              #! PC = 0x4196340 *)
uadcs carry x14 x14 x14 carry;
(* umulh	x6, x6, x6                                #! PC = 0x4196344 *)
(* umull x6 x6_L x6 x6; *)
(* NOTE: merge with mul x10, x6, x6 *)
mov x6 x10_H;
(* adcs	x15, x15, x15                              #! PC = 0x4196348 *)
uadcs carry x15 x15 x15 carry;
(* mul	x11, x7, x7                                 #! PC = 0x4196352 *)
umull x11_H x11 x7 x7;
(* adcs	x16, x16, x16                              #! PC = 0x4196356 *)
uadcs carry x16 x16 x16 carry;
(* umulh	x7, x7, x7                                #! PC = 0x4196360 *)
(* umull x7 x7_L x7 x7; *)
(* NOTE: merge with mul x11, x7, x7 *)
mov x7 x11_H;
(* adcs	x17, x17, x17                              #! PC = 0x4196364 *)
uadcs carry x17 x17 x17 carry;
(* adcs	x1, x1, x1                                 #! PC = 0x4196368 *)
uadcs carry x1 x1 x1 carry;
(* adc	x2, xzr, xzr                                #! PC = 0x4196372 *)
uadc x2 0@uint64 0@uint64 carry;
(* adds	x13, x13, x4                               #! PC = 0x4196376 *)
uadds carry x13 x13 x4;
(* mov	x3, #0x26                  	// #38          #! PC = 0x4196380 *)
mov x3 38@uint64;
(* adcs	x14, x14, x9                               #! PC = 0x4196384 *)
uadcs carry x14 x14 x9 carry;
(* adcs	x15, x15, x5                               #! PC = 0x4196388 *)
uadcs carry x15 x15 x5 carry;
(* adcs	x16, x16, x10                              #! PC = 0x4196392 *)
uadcs carry x16 x16 x10 carry;
(* adcs	x17, x17, x6                               #! PC = 0x4196396 *)
uadcs carry x17 x17 x6 carry;
(* adcs	x1, x1, x11                                #! PC = 0x4196400 *)
uadcs carry x1 x1 x11 carry;
(* adc	x2, x2, x7                                  #! PC = 0x4196404 *)
uadc x2 x2 x7 carry;
(* mul	x8, x16, x3                                 #! PC = 0x4196408 *)
umull x8_H x8 x16 x3;
(* mul	x9, x17, x3                                 #! PC = 0x4196412 *)
umull x9_H x9 x17 x3;
(* mul	x10, x1, x3                                 #! PC = 0x4196416 *)
umull x10_H x10 x1 x3;
(* mul	x11, x2, x3                                 #! PC = 0x4196420 *)
umull x11_H x11 x2 x3;
(* adds	x12, x12, x8                               #! PC = 0x4196424 *)
uadds carry x12 x12 x8;
(* umulh	x8, x16, x3                               #! PC = 0x4196428 *)
(* umull x8 x8_L x16 x3; *)
(* NOTE: merge with mul x8, x16, x3 *)
mov x8 x8_H;
(* adcs	x13, x13, x9                               #! PC = 0x4196432 *)
uadcs carry x13 x13 x9 carry;
(* umulh	x9, x17, x3                               #! PC = 0x4196436 *)
(* umull x9 x9_L x17 x3; *)
(* NOTE: merge with mul x9, x17, x3 *)
mov x9 x9_H;
(* adcs	x14, x14, x10                              #! PC = 0x4196440 *)
uadcs carry x14 x14 x10 carry;
(* umulh	x10, x1, x3                               #! PC = 0x4196444 *)
(* umull x10 x10_L x1 x3; *)
(* NOTE: merge with mul x10, x1, x3 *)
mov x10 x10_H;
(* adcs	x15, x15, x11                              #! PC = 0x4196448 *)
uadcs carry x15 x15 x11 carry;
(* umulh	x11, x2, x3                               #! PC = 0x4196452 *)
(* umull x11 x11_L x2 x3; *)
(* NOTE: merge with mul x11, x2, x3 *)
mov x11 x11_H;
(* adc	x16, xzr, xzr                               #! PC = 0x4196456 *)
uadc x16 0@uint64 0@uint64 carry;
(* adds	x13, x13, x8                               #! PC = 0x4196460 *)
uadds carry x13 x13 x8;
(* adcs	x14, x14, x9                               #! PC = 0x4196464 *)
uadcs carry x14 x14 x9 carry;
(* adcs	x15, x15, x10                              #! PC = 0x4196468 *)
uadcs carry x15 x15 x10 carry;
(* adc	x16, x16, x11                               #! PC = 0x4196472 *)
uadc x16 x16 x11 carry;
(* add	x8, x16, x16, lsl #3                        #! PC = 0x4196476 *)
shl x16_x8 x16 3@uint64;
uadd x8 x16 x16_x8;
(* add	x8, x16, x8, lsl #1                         #! PC = 0x4196480 *)
shl x8_x2 x8 1@uint64;
uadd x8 x16 x8_x2;
(* adds	x12, x12, x8, lsl #1                       #! PC = 0x4196484 *)
shl x8_x2 x8 1@uint64;
uadds carry x12 x12 x8_x2;
(* adcs	x13, x13, xzr                              #! PC = 0x4196488 *)
uadcs carry x13 x13 0@uint64 carry;
(* adcs	x14, x14, xzr                              #! PC = 0x4196492 *)
uadcs carry x14 x14 0@uint64 carry;
(* adcs	x15, x15, xzr                              #! PC = 0x4196496 *)
uadcs carry x15 x15 0@uint64 carry;
(* ngc	x16, xzr                                    #! PC = 0x4196500 *)
usbcs dontcare x16@uint64 0@uint64 0@uint64 carry;
(* bic	x16, x3, x16                                #! PC = 0x4196504 *)
not x16_not@uint64 x16;
and x16@uint64 x3 x16_not;
assert true &&
       or [ and [carry = 1@1, x16 = 38@64],
            and [carry = 0@1, x16 =  0@64] ];
assume (carry - 1)*(x16 -  0) = 0 && true;
assume (carry - 0)*(x16 - 38) = 0 && true;
(* add	x12, x12, x16                               #! PC = 0x4196508 *)
uadd x12 x12 x16;
(* stp	x14, x15, [x0, #16]                         #! EA = L0xffffffffe178; Value = 0xf16dcd1a51799ff1; PC = 0x4196512 *)
mov L0xffffffffe178 x14;
mov L0xffffffffe180 x15;
(* stp	x12, x13, [x0]                              #! EA = L0xffffffffe168; Value = 0xce2a4f1259bd844e; PC = 0x4196516 *)
mov L0xffffffffe168 x12;
mov L0xffffffffe170 x13;
(* 0x00000000004005c4 in main () *)
(* #ret                                            #! PC = 0x4196520 *)
#ret                                            #! 0x4196520 = 0x4196520;

mov r0 L0xffffffffe168;
mov r1 L0xffffffffe170;
mov r2 L0xffffffffe178;
mov r3 L0xffffffffe180;

{
  eqmod (limbs 64 [r0, r1, r2, r3])
        ((limbs 64 [a0, a1, a2, a3]) * (limbs 64 [a0, a1, a2, a3]))
        (2**256 - 38)
&&
  true
}

