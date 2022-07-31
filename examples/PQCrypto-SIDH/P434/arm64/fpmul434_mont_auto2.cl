(*
cv -v -disable_safety -jobs 6 -slicing -no_carry_constraint -o cryptoline-fpmul434_mont.log PQCrypto-SIDH/P434/arm64/fpmul434_mont_auto2.cl 
Parsing Cryptoline file:		[OK]		0.005126 seconds
Checking well-formedness:		[OK]		0.000883 seconds
Transforming to SSA form:		[OK]		0.000394 seconds
Normalizing specification:		[OK]		0.000740 seconds
Rewriting assignments:			[OK]		0.000519 seconds
Verifying range assertions:		[OK]		0.710256 seconds
Verifying range specification:		[OK]		7.984787 seconds
Rewriting value-preserved casting:	[OK]		0.000064 seconds
Verifying algebraic assertions:		[OK]		0.135354 seconds
Verifying algebraic specification:	[OK]		0.126943 seconds
Verification result:			[OK]		8.965674 seconds
*)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 a5, uint64 a6,
     	   uint64 b0, uint64 b1, uint64 b2, uint64 b3, uint64 b4, uint64 b5, uint64 b6,
	   uint64 px2_0, uint64 px2_1, uint64 px2_2, uint64 px2_3, uint64 px2_4, uint64 px2_5, uint64 px2_6) =
{
  and[
  px2_0 =0xFFFFFFFFFFFFFFFE,
  px2_1 =0xFFFFFFFFFFFFFFFF,
  px2_2 =0xFFFFFFFFFFFFFFFF,
  px2_3 =0xFB82ECF5C5FFFFFF,
  px2_4 =0xF78CB8F062B15D47,
  px2_5 =0xD9F8BFAD038A40AC,
  px2_6 =0x0004683E4E2EE688]
  &&
  and [0@448 <=u limbs 64 [a0, a1, a2, a3, a4, a5, a6],
    	(limbs 64 [a0, a1, a2, a3, a4, a5, a6]) <u (limbs 64 [px2_0, px2_1, px2_2, px2_3, px2_4, px2_5, px2_6]),
	0@448 <=u limbs 64 [b0, b1, b2, b3, b4, b5, b6],
    	(limbs 64 [b0, b1, b2, b3, b4, b5, b6]) <u (limbs 64 [px2_0, px2_1, px2_2, px2_3, px2_4, px2_5, px2_6]),
	px2_0 =0xFFFFFFFFFFFFFFFE@64,
  	px2_1 =0xFFFFFFFFFFFFFFFF@64,
	px2_2 =0xFFFFFFFFFFFFFFFF@64,
	px2_3 =0xFB82ECF5C5FFFFFF@64,
	px2_4 =0xF78CB8F062B15D47@64,
	px2_5 =0xD9F8BFAD038A40AC@64,
	px2_6 =0x0004683E4E2EE688@64]
}


mov p1_0 0x0000000000000000@uint64;
mov p1_1 0x0000000000000000@uint64;
mov p1_2 0x0000000000000000@uint64;
mov p1_3 0xFDC1767AE3000000@uint64;
mov p1_4 0x7BC65C783158AEA3@uint64;
mov p1_5 0x6CFC5FD681C52056@uint64;
mov p1_6 0x0002341F27177344@uint64;

mov p_0 0xFFFFFFFFFFFFFFFF@uint64;
mov p_1 0xFFFFFFFFFFFFFFFF@uint64;
mov p_2 0xFFFFFFFFFFFFFFFF@uint64;
mov p_3 0xFDC1767AE2FFFFFF@uint64;
mov p_4 0x7BC65C783158AEA3@uint64;
mov p_5 0x6CFC5FD681C52056@uint64;
mov p_6 0x0002341F27177344@uint64;

mov L0xffffffffe928 a0;
mov L0xffffffffe930 a1;
mov L0xffffffffe938 a2;
mov L0xffffffffe940 a3;
mov L0xffffffffe948 a4;
mov L0xffffffffe950 a5;
mov L0xffffffffe958 a6;
mov L0xffffffffe960 b0;
mov L0xffffffffe968 b1;
mov L0xffffffffe970 b2;
mov L0xffffffffe978 b3;
mov L0xffffffffe980 b4;
mov L0xffffffffe988 b5;
mov L0xffffffffe990 b6;

mov L0xaaaaaaab4fd0 p1_3;
mov L0xaaaaaaab4fd8 p1_4;
mov L0xaaaaaaab4fe0 p1_5;
mov L0xaaaaaaab4fe8 p1_6;

nondet  x2@uint64;
nondet x19@uint64; nondet x20@uint64;
nondet x21@uint64; nondet x22@uint64;
nondet x23@uint64; nondet x24@uint64;
nondet x25@uint64; nondet x26@uint64;
nondet x27@uint64; nondet x28@uint64;
nondet x29@uint64; nondet x30@uint64;
nondet sp@uint64;

nondet L0xaaaaaaac9fd8@uint64;
nondet L0xfffff7ffd6b0@uint64;

(* #! -> SP = 0xffffffffe750 *)
#! 0xffffffffe750 = 0xffffffffe750;
(* stp	x29, x30, [sp, #-160]!                      #! EA = L0xffffffffe6b0; PC = 0xaaaaaaaadde0 *)
mov L0xffffffffe6b0 x29;
mov L0xffffffffe6b8 x30;
(* #mov	w3, #0x7                   	// #7           #! PC = 0xaaaaaaaadde8 *)
mov	w3 0x7@uint64;
(* mov	x29, sp                                     #! PC = 0xaaaaaaaaddec *)
mov x29 sp;
(* ldr	x4, [x4, #4056]                             #! EA = L0xaaaaaaac9fd8; Value = 0x0000fffff7ffd6b0; PC = 0xaaaaaaaaddf0 *)
mov x4 L0xaaaaaaac9fd8;
(* stp	x19, x20, [sp, #16]                         #! EA = L0xffffffffe6c0; PC = 0xaaaaaaaaddf4 *)
mov L0xffffffffe6c0 x19;
mov L0xffffffffe6c8 x20;
(* add	x19, sp, #0x28                              #! PC = 0xaaaaaaaaddf8 *)
adds dontcare x19 sp 0x28@uint64;
(* ldr	x5, [x4]                                    #! EA = L0xfffff7ffd6b0; Value = 0x7805953c03e91300; PC = 0xaaaaaaaaddfc *)
mov x5 L0xfffff7ffd6b0;
(* str	x5, [sp, #152]                              #! EA = L0xffffffffe748; PC = 0xaaaaaaaade00 *)
mov L0xffffffffe748 x5;
(* mov	x5, #0x0                   	// #0           #! PC = 0xaaaaaaaade04 *)
mov x5 0x0@uint64;                   	
(* mov	x20, x2                                     #! PC = 0xaaaaaaaade08 *)
mov x20 x2;
(* mov	x2, x19                                     #! PC = 0xaaaaaaaade0c *)
mov x2 x19;
(* stp	xzr, xzr, [sp, #40]                         #! EA = L0xffffffffe6d8; PC = 0xaaaaaaaade10 *)
mov L0xffffffffe6d8 0@uint64;
mov L0xffffffffe6e0 0@uint64;
(* stp	xzr, xzr, [sp, #56]                         #! EA = L0xffffffffe6e8; PC = 0xaaaaaaaade14 *)
mov L0xffffffffe6e8 0@uint64;
mov L0xffffffffe6f0 0@uint64;
(* stp	xzr, xzr, [sp, #72]                         #! EA = L0xffffffffe6f8; PC = 0xaaaaaaaade18 *)
mov L0xffffffffe6f8 0@uint64;
mov L0xffffffffe700 0@uint64;
(* stp	xzr, xzr, [sp, #88]                         #! EA = L0xffffffffe708; PC = 0xaaaaaaaade1c *)
mov L0xffffffffe708 0@uint64;
mov L0xffffffffe710 0@uint64;
(* stp	xzr, xzr, [sp, #104]                        #! EA = L0xffffffffe718; PC = 0xaaaaaaaade20 *)
mov L0xffffffffe718 0@uint64;
mov L0xffffffffe720 0@uint64;
(* stp	xzr, xzr, [sp, #120]                        #! EA = L0xffffffffe728; PC = 0xaaaaaaaade24 *)
mov L0xffffffffe728 0@uint64;
mov L0xffffffffe730 0@uint64;
(* stp	xzr, xzr, [sp, #136]                        #! EA = L0xffffffffe738; PC = 0xaaaaaaaade28 *)
mov L0xffffffffe738 0@uint64;
mov L0xffffffffe740 0@uint64;
(* #bl	0xaaaaaaab4f40 <mp_mul>                     #! PC = 0xaaaaaaaade2c *)
#bl	0xaaaaaaab4f40 <mp_mul>                     #! 0xaaaaaaaade2c = 0xaaaaaaaade2c;
(* #! -> SP = 0xffffffffe6b0 *)
#! 0xffffffffe6b0 = 0xffffffffe6b0;
(* #b	0xaaaaaaab5254 <mul434_asm>                  #! PC = 0xaaaaaaab4f40 *)
#b	0xaaaaaaab5254 <mul434_asm>                  #! 0xaaaaaaab4f40 = 0xaaaaaaab4f40;
(* sub	sp, sp, #0x60                               #! PC = 0xaaaaaaab5254 *)
subc dontcare sp sp 0x60@uint64;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe928; Value = 0x58c05c6fc0fe4efa; PC = 0xaaaaaaab5258 *)
mov x3 L0xffffffffe928;
mov x4 L0xffffffffe930;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe948; Value = 0xcda74475c45f28d2; PC = 0xaaaaaaab525c *)
mov x7 L0xffffffffe948;
mov x8 L0xffffffffe950;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffe938; Value = 0xc547f7c363e74bbc; PC = 0xaaaaaaab5260 *)
mov x5 L0xffffffffe938;
mov x6 L0xffffffffe940;
(* ldr	x9, [x0, #48]                               #! EA = L0xffffffffe958; Value = 0x0000f80490342f70; PC = 0xaaaaaaab5264 *)
mov x9 L0xffffffffe958;
(* stp	x25, x26, [sp, #48]                         #! EA = L0xffffffffe680; PC = 0xaaaaaaab5268 *)
mov L0xffffffffe680 x25;
mov L0xffffffffe688 x26;
(* stp	x27, x28, [sp, #64]                         #! EA = L0xffffffffe690; PC = 0xaaaaaaab526c *)
mov L0xffffffffe690 x27;
mov L0xffffffffe698 x28;
(* stp	x29, x30, [sp, #80]                         #! EA = L0xffffffffe6a0; PC = 0xaaaaaaab5270 *)
mov L0xffffffffe6a0 x29;
mov L0xffffffffe6a8 x30;
(* adds	x26, x3, x7                                #! PC = 0xaaaaaaab5274 *)
adds carry x26 x3 x7;
(* ldp	x11, x12, [x1]                              #! EA = L0xffffffffe960; Value = 0xc20c1a870e6f01ae; PC = 0xaaaaaaab5278 *)
mov x11 L0xffffffffe960;
mov x12 L0xffffffffe968;
(* adcs	x27, x4, x8                                #! PC = 0xaaaaaaab527c *)
adcs carry x27 x4 x8 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0xffffffffe980; Value = 0x37fdd87b6b64ac1c; PC = 0xaaaaaaab5280 *)
mov x15 L0xffffffffe980;
mov x16 L0xffffffffe988;
(* adcs	x28, x5, x9                                #! PC = 0xaaaaaaab5284 *)
adcs carry x28 x5 x9 carry;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0xffffffffe970; Value = 0x19e6be2744d37c8f; PC = 0xaaaaaaab5288 *)
mov x13 L0xffffffffe970;
mov x14 L0xffffffffe978;
(* adcs	x29, x6, xzr                               #! PC = 0xaaaaaaab528c *)
adcs carry x29 x6 0@uint64 carry;
(* ldr	x17, [x1, #48]                              #! EA = L0xffffffffe990; Value = 0x000059b95660e18e; PC = 0xaaaaaaab5290 *)
mov x17 L0xffffffffe990;
(* adc	x7, xzr, xzr                                #! PC = 0xaaaaaaab5294 *)
adc x7 0@uint64 0@uint64 carry;
(* stp	x19, x20, [sp]                              #! EA = L0xffffffffe650; PC = 0xaaaaaaab5298 *)
mov L0xffffffffe650 x19;
mov L0xffffffffe658 x20;
(* adds	x11, x11, x15                              #! PC = 0xaaaaaaab529c *)
adds carry x11 x11 x15;
(* adcs	x12, x12, x16                              #! PC = 0xaaaaaaab52a0 *)
adcs carry x12 x12 x16 carry;
(* stp	x21, x22, [sp, #16]                         #! EA = L0xffffffffe660; PC = 0xaaaaaaab52a4 *)
mov L0xffffffffe660 x21;
mov L0xffffffffe668 x22;
(* adcs	x13, x13, x17                              #! PC = 0xaaaaaaab52a8 *)
adcs carry x13 x13 x17 carry;
(* adcs	x14, x14, xzr                              #! PC = 0xaaaaaaab52ac *)
adcs carry x14 x14 0@uint64 carry;
(* stp	x23, x24, [sp, #32]                         #! EA = L0xffffffffe670; PC = 0xaaaaaaab52b0 *)
mov L0xffffffffe670 x23;
mov L0xffffffffe678 x24;
(* adc	x8, xzr, xzr                                #! PC = 0xaaaaaaab52b4 *)
adc x8 0@uint64 0@uint64 carry;
(* neg	x9, x7                                      #! PC = 0xaaaaaaab52b8 *)
subc dontcare x9 0@uint64 x7;
(* neg	x8, x8                                      #! PC = 0xaaaaaaab52bc *)
ghost x8_o@uint64 : x8_o = x8 && x8_o = x8;

subc dontcare x8 0@uint64 x8;
(* and	x10, x11, x9                                #! PC = 0xaaaaaaab52c0 *)
and x10@uint64 x11 x9;
(* and	x15, x12, x9                                #! PC = 0xaaaaaaab52c4 *)
and x15@uint64 x12 x9;
(* and	x16, x13, x9                                #! PC = 0xaaaaaaab52c8 *)
and x16@uint64 x13 x9;
(* and	x17, x14, x9                                #! PC = 0xaaaaaaab52cc *)
and x17@uint64 x14 x9;
(* and	x19, x26, x8                                #! PC = 0xaaaaaaab52d0 *)
and x19@uint64 x26 x8;
(* and	x20, x27, x8                                #! PC = 0xaaaaaaab52d4 *)
and x20@uint64 x27 x8;
(* and	x21, x28, x8                                #! PC = 0xaaaaaaab52d8 *)
and x21@uint64 x28 x8;
(* and	x22, x29, x8                                #! PC = 0xaaaaaaab52dc *)
and x22@uint64 x29 x8;

assert true 
    && and [x7*(x7-1@64) = 0@64, x8_o*(x8_o-1@64) = 0@64,
            limbs 64 [x10, x15, x16, x17] =
            uext x7 192 * limbs 64 [x11, x12, x13, x14],
            limbs 64 [x19, x20, x21, x22] =
            uext x8_o 192 * limbs 64 [x26, x27, x28, x29]];
assume and [x7*(x7-1) = 0, x8_o*(x8_o-1) = 0,
            limbs 64 [x10, x15, x16, x17] =
            x7 * limbs 64 [x11, x12, x13, x14],
            limbs 64 [x19, x20, x21, x22] =
            x8_o * limbs 64 [x26, x27, x28, x29]] && true;

(* adds	x10, x10, x19                              #! PC = 0xaaaaaaab52e0 *)
adds carry x10 x10 x19;
(* adcs	x15, x15, x20                              #! PC = 0xaaaaaaab52e4 *)
adcs carry x15 x15 x20 carry;
(* adcs	x16, x16, x21                              #! PC = 0xaaaaaaab52e8 *)
adcs carry x16 x16 x21 carry;
(* stp	x26, x27, [x2]                              #! EA = L0xffffffffe6d8; PC = 0xaaaaaaab52ec *)
mov L0xffffffffe6d8 x26;
mov L0xffffffffe6e0 x27;
(* adc	x17, x17, x22                               #! PC = 0xaaaaaaab52f0 *)
adc x17 x17 x22 carry;
(* adds	x26, x26, x28                              #! PC = 0xaaaaaaab52f4 *)
adds carry x26 x26 x28;
(* adcs	x27, x27, x29                              #! PC = 0xaaaaaaab52f8 *)
adcs carry x27 x27 x29 carry;
(* adc	x24, xzr, xzr                               #! PC = 0xaaaaaaab52fc *)
adc x24 0@uint64 0@uint64 carry;
(* adds	x22, x11, x13                              #! PC = 0xaaaaaaab5300 *)
adds carry x22 x11 x13;
(* adcs	x25, x12, x14                              #! PC = 0xaaaaaaab5304 *)
adcs carry x25 x12 x14 carry;
(* adc	x23, xzr, xzr                               #! PC = 0xaaaaaaab5308 *)
adc x23 0@uint64 0@uint64 carry;
(* neg	x30, x24                                    #! PC = 0xaaaaaaab530c *)
subc dontcare x30 0@uint64 x24;
(* neg	x19, x23                                    #! PC = 0xaaaaaaab5310 *)
subc dontcare x19 0@uint64 x23;
(* and	x8, x22, x30                                #! PC = 0xaaaaaaab5314 *)
and x8@uint64 x22 x30;
(* and	x9, x25, x30                                #! PC = 0xaaaaaaab5318 *)
and x9@uint64 x25 x30;
(* and	x20, x26, x19                               #! PC = 0xaaaaaaab531c *)
and x20@uint64 x26 x19;
(* and	x21, x27, x19                               #! PC = 0xaaaaaaab5320 *)
and x21@uint64 x27 x19;

assert true 
    && and [x24*(x24-1@64) = 0@64, x23*(x23-1@64) = 0@64,
            limbs 64 [x8, x9] =
            uext x24 64 * limbs 64 [x22, x25],
            limbs 64 [x20, x21] =
            uext x23 64 * limbs 64 [x26, x27]];
assume and [x24*(x24-1) = 0, x23*(x23-1) = 0,
            limbs 64 [x8, x9] =
            x24 * limbs 64 [x22, x25],
            limbs 64 [x20, x21] =
            x23 * limbs 64 [x26, x27]] && true;
	    
(* mul	x30, x26, x22                               #! PC = 0xaaaaaaab5324 *)
mull Hx26x22 x30 x26 x22;
(* mul	x19, x26, x25                               #! PC = 0xaaaaaaab5328 *)
mull Hx26x25 x19 x26 x25;

ghost x24c@uint64 : x24c = x24 && x24c = x24;

(* and	x24, x24, x23                               #! PC = 0xaaaaaaab532c *)
and x24@uint64 x24 x23;

assert true && x24 = x24c * x23;
assume x24 = x24c * x23 && true;

(* adds	x8, x20, x8                                #! PC = 0xaaaaaaab5330 *)
adds carry x8 x20 x8;
(* umulh	x20, x26, x25                             #! PC = 0xaaaaaaab5334 *)
mov x20 Hx26x25;
(* adcs	x9, x21, x9                                #! PC = 0xaaaaaaab5338 *)
adcs carry x9 x21 x9 carry;
(* umulh	x21, x26, x22                             #! PC = 0xaaaaaaab533c *)
mov x21 Hx26x22;
(* adc	x24, x24, xzr                               #! PC = 0xaaaaaaab5340 *)
adc x24 x24 0@uint64 carry;
(* mul	x26, x27, x22                               #! PC = 0xaaaaaaab5344 *)
mull Hx27x22 x26 x27 x22;
(* umulh	x22, x27, x22                             #! PC = 0xaaaaaaab5348 *)
mov x22 Hx27x22;
(* adds	x19, x19, x21                              #! PC = 0xaaaaaaab534c *)
adds carry x19 x19 x21;
(* adc	x20, x20, xzr                               #! PC = 0xaaaaaaab5350 *)
adc x20 x20 0@uint64 carry;
(* mul	x23, x27, x25                               #! PC = 0xaaaaaaab5354 *)
mull Hx27x25 x23 x27 x25;
(* umulh	x25, x27, x25                             #! PC = 0xaaaaaaab5358 *)
mov x25 Hx27x25;
(* adds	x19, x19, x26                              #! PC = 0xaaaaaaab535c *)
adds carry x19 x19 x26;
(* adcs	x20, x20, x22                              #! PC = 0xaaaaaaab5360 *)
adcs carry x20 x20 x22 carry;
(* adc	x21, xzr, xzr                               #! PC = 0xaaaaaaab5364 *)
adc x21 0@uint64 0@uint64 carry;
(* adds	x20, x20, x23                              #! PC = 0xaaaaaaab5368 *)
adds carry x20 x20 x23;
(* adc	x21, x21, x25                               #! PC = 0xaaaaaaab536c *)
adc x21 x21 x25 carry;
(* ldp	x26, x27, [x2]                              #! EA = L0xffffffffe6d8; Value = 0x2667a0e5855d77cc; PC = 0xaaaaaaab5370 *)
mov x26 L0xffffffffe6d8;
mov x27 L0xffffffffe6e0;
(* adds	x20, x8, x20                               #! PC = 0xaaaaaaab5374 *)
adds carry x20 x8 x20;
(* umulh	x23, x26, x11                             #! PC = 0xaaaaaaab5378 *)
mull Hx26x11 Lx26x11 x26 x11;
mov x23 Hx26x11;
(* umulh	x25, x26, x12                             #! PC = 0xaaaaaaab537c *)
mull Hx26x12 Lx26x12 x26 x12;
mov x25 Hx26x12;
(* adcs	x21, x9, x21                               #! PC = 0xaaaaaaab5380 *)
adcs carry x21 x9 x21 carry;
(* mul	x8, x26, x11                                #! PC = 0xaaaaaaab5384 *)
mov x8 Lx26x11;
(* mul	x9, x26, x12                                #! PC = 0xaaaaaaab5388 *)
mov x9 Lx26x12;
(* adc	x24, x24, xzr                               #! PC = 0xaaaaaaab538c *)
adc x24 x24 0@uint64 carry;
(* mul	x26, x27, x11                               #! PC = 0xaaaaaaab5390 *)
mull Hx27x11 x26 x27 x11;
(* umulh	x11, x27, x11                             #! PC = 0xaaaaaaab5394 *)
mov x11 Hx27x11;
(* adds	x9, x9, x23                                #! PC = 0xaaaaaaab5398 *)
adds carry x9 x9 x23;
(* adc	x25, x25, xzr                               #! PC = 0xaaaaaaab539c *)
adc x25 x25 0@uint64 carry;
(* mul	x22, x27, x12                               #! PC = 0xaaaaaaab53a0 *)
mull Hx27x12 x22 x27 x12;
(* umulh	x12, x27, x12                             #! PC = 0xaaaaaaab53a4 *)
mov x12 Hx27x12;
(* adds	x9, x9, x26                                #! PC = 0xaaaaaaab53a8 *)
adds carry x9 x9 x26;
(* adcs	x25, x25, x11                              #! PC = 0xaaaaaaab53ac *)
adcs carry x25 x25 x11 carry;
(* adc	x23, xzr, xzr                               #! PC = 0xaaaaaaab53b0 *)
adc x23 0@uint64 0@uint64 carry;
(* adds	x25, x25, x22                              #! PC = 0xaaaaaaab53b4 *)
adds carry x25 x25 x22;
(* adc	x23, x23, x12                               #! PC = 0xaaaaaaab53b8 *)
adc x23 x23 x12 carry;
(* mul	x26, x28, x13                               #! PC = 0xaaaaaaab53bc *)
mull Hx28x13 x26 x28 x13;
(* umulh	x11, x28, x13                             #! PC = 0xaaaaaaab53c0 *)
mov x11 Hx28x13;
(* subs	x30, x30, x8                               #! PC = 0xaaaaaaab53c4 *)
subc carry x30 x30 x8;
(* sbcs	x19, x19, x9                               #! PC = 0xaaaaaaab53c8 *)
sbcs carry x19 x19 x9 carry;
(* sbcs	x20, x20, x25                              #! PC = 0xaaaaaaab53cc *)
sbcs carry x20 x20 x25 carry;
(* mul	x27, x28, x14                               #! PC = 0xaaaaaaab53d0 *)
mull Hx28x14 x27 x28 x14;
(* umulh	x22, x28, x14                             #! PC = 0xaaaaaaab53d4 *)
mov x22 Hx28x14;
(* sbcs	x21, x21, x23                              #! PC = 0xaaaaaaab53d8 *)
sbcs carry x21 x21 x23 carry;
(* sbc	x24, x24, xzr                               #! PC = 0xaaaaaaab53dc *)
sbcs dontcare x24 x24 0@uint64 carry;
assume dontcare = 1 && true;

(* mul	x28, x29, x13                               #! PC = 0xaaaaaaab53e0 *)
mull Hx29x13 x28 x29 x13;
(* umulh	x13, x29, x13                             #! PC = 0xaaaaaaab53e4 *)
mov x13 Hx29x13;
(* adds	x27, x27, x11                              #! PC = 0xaaaaaaab53e8 *)
adds carry x27 x27 x11;
(* adc	x22, x22, xzr                               #! PC = 0xaaaaaaab53ec *)
adc x22 x22 0@uint64 carry;
(* mul	x12, x29, x14                               #! PC = 0xaaaaaaab53f0 *)
mull Hx29x14 x12 x29 x14;
(* umulh	x14, x29, x14                             #! PC = 0xaaaaaaab53f4 *)
mov x14 Hx29x14;
(* adds	x27, x27, x28                              #! PC = 0xaaaaaaab53f8 *)
adds carry x27 x27 x28;
(* adcs	x22, x22, x13                              #! PC = 0xaaaaaaab53fc *)
adcs carry x22 x22 x13 carry;
(* adc	x11, xzr, xzr                               #! PC = 0xaaaaaaab5400 *)
adc x11 0@uint64 0@uint64 carry;
(* adds	x22, x22, x12                              #! PC = 0xaaaaaaab5404 *)
adds carry x22 x22 x12;
(* adc	x11, x11, x14                               #! PC = 0xaaaaaaab5408 *)
adc x11 x11 x14 carry;
(* subs	x30, x30, x26                              #! PC = 0xaaaaaaab540c *)
subc carry x30 x30 x26;
(* sbcs	x19, x19, x27                              #! PC = 0xaaaaaaab5410 *)
sbcs carry x19 x19 x27 carry;
(* sbcs	x20, x20, x22                              #! PC = 0xaaaaaaab5414 *)
sbcs carry x20 x20 x22 carry;
(* sbcs	x21, x21, x11                              #! PC = 0xaaaaaaab5418 *)
sbcs carry x21 x21 x11 carry;
(* sbc	x24, x24, xzr                               #! PC = 0xaaaaaaab541c *)
sbcs dontcare x24 x24 0@uint64 carry;
assume dontcare = 1 && true;

(* adds	x30, x30, x25                              #! PC = 0xaaaaaaab5420 *)
adds carry x30 x30 x25;
(* adcs	x19, x19, x23                              #! PC = 0xaaaaaaab5424 *)
adcs carry x19 x19 x23 carry;
(* adcs	x20, x20, x26                              #! PC = 0xaaaaaaab5428 *)
adcs carry x20 x20 x26 carry;
(* adcs	x21, x21, x27                              #! PC = 0xaaaaaaab542c *)
adcs carry x21 x21 x27 carry;
(* adcs	x22, x24, x22                              #! PC = 0xaaaaaaab5430 *)
adcs carry x22 x24 x22 carry;
(* adc	x23, x11, xzr                               #! PC = 0xaaaaaaab5434 *)
adcs carry x23 x11 0@uint64 carry;
assume carry = 0 && true;

(* adds	x10, x10, x20                              #! PC = 0xaaaaaaab5438 *)
adds carry x10 x10 x20;
(* ldp	x11, x12, [x1]                              #! EA = L0xffffffffe960; Value = 0xc20c1a870e6f01ae; PC = 0xaaaaaaab543c *)
mov x11 L0xffffffffe960;
mov x12 L0xffffffffe968;
(* adcs	x15, x15, x21                              #! PC = 0xaaaaaaab5440 *)
adcs carry x15 x15 x21 carry;
(* adcs	x16, x16, x22                              #! PC = 0xaaaaaaab5444 *)
adcs carry x16 x16 x22 carry;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0xffffffffe970; Value = 0x19e6be2744d37c8f; PC = 0xaaaaaaab5448 *)
mov x13 L0xffffffffe970;
mov x14 L0xffffffffe978;
(* adc	x17, x17, x23                               #! PC = 0xaaaaaaab544c *)
adc x17 x17 x23 carry;
(* adds	x3, x3, x5                                 #! PC = 0xaaaaaaab5450 *)
adds carry x3 x3 x5;
(* adcs	x4, x4, x6                                 #! PC = 0xaaaaaaab5454 *)
adcs carry x4 x4 x6 carry;
(* adc	x28, xzr, xzr                               #! PC = 0xaaaaaaab5458 *)
adc x28 0@uint64 0@uint64 carry;
(* adds	x26, x11, x13                              #! PC = 0xaaaaaaab545c *)
adds carry x26 x11 x13;
(* adcs	x29, x12, x14                              #! PC = 0xaaaaaaab5460 *)
adcs carry x29 x12 x14 carry;
(* adc	x27, xzr, xzr                               #! PC = 0xaaaaaaab5464 *)
adc x27 0@uint64 0@uint64 carry;
(* neg	x22, x28                                    #! PC = 0xaaaaaaab5468 *)
subc dontcare x22 0@uint64 x28;
(* neg	x23, x27                                    #! PC = 0xaaaaaaab546c *)
subc dontcare x23 0@uint64 x27;
(* and	x20, x26, x22                               #! PC = 0xaaaaaaab5470 *)
and x20@uint64 x26 x22;
(* and	x21, x29, x22                               #! PC = 0xaaaaaaab5474 *)
and x21@uint64 x29 x22;
(* and	x24, x3, x23                                #! PC = 0xaaaaaaab5478 *)
and x24@uint64 x3 x23;
(* and	x25, x4, x23                                #! PC = 0xaaaaaaab547c *)
and x25@uint64 x4 x23;

assert true
    && and [x28*(1@64-x28) = 0@64, x27*(1@64-x27) = 0@64,
            limbs 64 [x20, x21] = uext x28 64 * limbs 64 [x26, x29],
            limbs 64 [x24, x25] = uext x27 64 * limbs 64 [ x3,  x4]];
assume and [x28*(1-x28) = 0, x27*(1-x27) = 0,
            limbs 64 [x20, x21] = x28 * limbs 64 [x26, x29],
            limbs 64 [x24, x25] = x27 * limbs 64 [ x3,  x4]] && true;

(* mul	x22, x3, x26                                #! PC = 0xaaaaaaab5480 *)
mull Hx3x26 x22 x3 x26;
(* mul	x23, x3, x29                                #! PC = 0xaaaaaaab5484 *)
mull Hx3x29 x23 x3 x29;

ghost x28c@uint64 : x28c = x28 && x28c = x28;

(* and	x28, x28, x27                               #! PC = 0xaaaaaaab5488 *)
and x28@uint64 x28 x27;

assert true && x28 = x28c * x27;
assume x28 = x28c * x27 && true;

(* adds	x20, x24, x20                              #! PC = 0xaaaaaaab548c *)
adds carry x20 x24 x20;
(* umulh	x24, x3, x29                              #! PC = 0xaaaaaaab5490 *)
mov x24 Hx3x29;
(* adcs	x21, x25, x21                              #! PC = 0xaaaaaaab5494 *)
adcs carry x21 x25 x21 carry;
(* umulh	x25, x3, x26                              #! PC = 0xaaaaaaab5498 *)
mov x25 Hx3x26;
(* adc	x28, x28, xzr                               #! PC = 0xaaaaaaab549c *)
adc x28 x28 0@uint64 carry;
(* mul	x3, x4, x26                                 #! PC = 0xaaaaaaab54a0 *)
mull Hx4x26 x3 x4 x26;
(* umulh	x26, x4, x26                              #! PC = 0xaaaaaaab54a4 *)
mov x26 Hx4x26;
(* adds	x23, x23, x25                              #! PC = 0xaaaaaaab54a8 *)
adds carry x23 x23 x25;
(* adc	x24, x24, xzr                               #! PC = 0xaaaaaaab54ac *)
adc x24 x24 0@uint64 carry;
(* mul	x27, x4, x29                                #! PC = 0xaaaaaaab54b0 *)
mull Hx4x29 x27 x4 x29;
(* umulh	x29, x4, x29                              #! PC = 0xaaaaaaab54b4 *)
mov x29 Hx4x29;
(* adds	x23, x23, x3                               #! PC = 0xaaaaaaab54b8 *)
adds carry x23 x23 x3;
(* adcs	x24, x24, x26                              #! PC = 0xaaaaaaab54bc *)
adcs carry x24 x24 x26 carry;
(* adc	x25, xzr, xzr                               #! PC = 0xaaaaaaab54c0 *)
adc x25 0@uint64 0@uint64 carry;
(* adds	x24, x24, x27                              #! PC = 0xaaaaaaab54c4 *)
adds carry x24 x24 x27;
(* adc	x25, x25, x29                               #! PC = 0xaaaaaaab54c8 *)
adc x25 x25 x29 carry;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe928; Value = 0x58c05c6fc0fe4efa; PC = 0xaaaaaaab54cc *)
mov x3 L0xffffffffe928;
mov x4 L0xffffffffe930;
(* adds	x24, x20, x24                              #! PC = 0xaaaaaaab54d0 *)
adds carry x24 x20 x24;
(* umulh	x27, x3, x11                              #! PC = 0xaaaaaaab54d4 *)
mull Hx3x11 Lx3x11 x3 x11;
mov x27 Hx3x11;
(* umulh	x29, x3, x12                              #! PC = 0xaaaaaaab54d8 *)
mull Hx3x12 Lx3x12 x3 x12;
mov x29 Hx3x12;
(* adcs	x25, x21, x25                              #! PC = 0xaaaaaaab54dc *)
adcs carry x25 x21 x25 carry;
(* mul	x20, x3, x11                                #! PC = 0xaaaaaaab54e0 *)
mov x20 Lx3x11;
(* mul	x21, x3, x12                                #! PC = 0xaaaaaaab54e4 *)
mov x21 Lx3x12;
(* adc	x28, x28, xzr                               #! PC = 0xaaaaaaab54e8 *)
adc x28 x28 0@uint64 carry;
(* mul	x3, x4, x11                                 #! PC = 0xaaaaaaab54ec *)
mull Hx4x11 x3 x4 x11;
(* umulh	x11, x4, x11                              #! PC = 0xaaaaaaab54f0 *)
mov x11 Hx4x11;
(* adds	x21, x21, x27                              #! PC = 0xaaaaaaab54f4 *)
adds carry x21 x21 x27;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab54f8 *)
adc x29 x29 0@uint64 carry;
(* mul	x26, x4, x12                                #! PC = 0xaaaaaaab54fc *)
mull Hx4x12 x26 x4 x12;
(* umulh	x12, x4, x12                              #! PC = 0xaaaaaaab5500 *)
mov x12 Hx4x12;
(* adds	x21, x21, x3                               #! PC = 0xaaaaaaab5504 *)
adds carry x21 x21 x3;
(* adcs	x29, x29, x11                              #! PC = 0xaaaaaaab5508 *)
adcs carry x29 x29 x11 carry;
(* adc	x27, xzr, xzr                               #! PC = 0xaaaaaaab550c *)
adc x27 0@uint64 0@uint64 carry;
(* adds	x29, x29, x26                              #! PC = 0xaaaaaaab5510 *)
adds carry x29 x29 x26;
(* adc	x27, x27, x12                               #! PC = 0xaaaaaaab5514 *)
adc x27 x27 x12 carry;
(* mul	x3, x5, x13                                 #! PC = 0xaaaaaaab5518 *)
mull Hx5x13 x3 x5 x13;
(* umulh	x11, x5, x13                              #! PC = 0xaaaaaaab551c *)
mov x11 Hx5x13;
(* subs	x22, x22, x20                              #! PC = 0xaaaaaaab5520 *)
subc carry x22 x22 x20;
(* sbcs	x23, x23, x21                              #! PC = 0xaaaaaaab5524 *)
sbcs carry x23 x23 x21 carry;
(* sbcs	x24, x24, x29                              #! PC = 0xaaaaaaab5528 *)
sbcs carry x24 x24 x29 carry;
(* mul	x4, x5, x14                                 #! PC = 0xaaaaaaab552c *)
mull Hx5x14 x4 x5 x14;
(* umulh	x26, x5, x14                              #! PC = 0xaaaaaaab5530 *)
mov x26 Hx5x14;
(* sbcs	x25, x25, x27                              #! PC = 0xaaaaaaab5534 *)
sbcs carry x25 x25 x27 carry;
(* sbc	x28, x28, xzr                               #! PC = 0xaaaaaaab5538 *)
sbcs dontcare x28 x28 0@uint64 carry;
assume dontcare = 1 && true;

(* mul	x5, x6, x13                                 #! PC = 0xaaaaaaab553c *)
mull Hx6x13 x5 x6 x13;
(* umulh	x13, x6, x13                              #! PC = 0xaaaaaaab5540 *)
mov x13 Hx6x13;
(* adds	x4, x4, x11                                #! PC = 0xaaaaaaab5544 *)
adds carry x4 x4 x11;
(* adc	x26, x26, xzr                               #! PC = 0xaaaaaaab5548 *)
adc x26 x26 0@uint64 carry;
(* mul	x12, x6, x14                                #! PC = 0xaaaaaaab554c *)
mull Hx6x14 x12 x6 x14;
(* umulh	x14, x6, x14                              #! PC = 0xaaaaaaab5550 *)
mov x14 Hx6x14;
(* adds	x4, x4, x5                                 #! PC = 0xaaaaaaab5554 *)
adds carry x4 x4 x5;
(* adcs	x26, x26, x13                              #! PC = 0xaaaaaaab5558 *)
adcs carry x26 x26 x13 carry;
(* adc	x11, xzr, xzr                               #! PC = 0xaaaaaaab555c *)
adc x11 0@uint64 0@uint64 carry;
(* adds	x26, x26, x12                              #! PC = 0xaaaaaaab5560 *)
adds carry x26 x26 x12;
(* adc	x11, x11, x14                               #! PC = 0xaaaaaaab5564 *)
adc x11 x11 x14 carry;
(* subs	x22, x22, x3                               #! PC = 0xaaaaaaab5568 *)
subc carry x22 x22 x3;
(* sbcs	x23, x23, x4                               #! PC = 0xaaaaaaab556c *)
sbcs carry x23 x23 x4 carry;
(* sbcs	x24, x24, x26                              #! PC = 0xaaaaaaab5570 *)
sbcs carry x24 x24 x26 carry;
(* sbcs	x25, x25, x11                              #! PC = 0xaaaaaaab5574 *)
sbcs carry x25 x25 x11 carry;
(* sbc	x28, x28, xzr                               #! PC = 0xaaaaaaab5578 *)
sbcs dontcare x28 x28 0@uint64 carry;
assume dontcare = 1 && true;

(* adds	x22, x22, x29                              #! PC = 0xaaaaaaab557c *)
adds carry x22 x22 x29;
(* adcs	x23, x23, x27                              #! PC = 0xaaaaaaab5580 *)
adcs carry x23 x23 x27 carry;
(* adcs	x24, x24, x3                               #! PC = 0xaaaaaaab5584 *)
adcs carry x24 x24 x3 carry;
(* adcs	x25, x25, x4                               #! PC = 0xaaaaaaab5588 *)
adcs carry x25 x25 x4 carry;
(* adcs	x26, x28, x26                              #! PC = 0xaaaaaaab558c *)
adcs carry x26 x28 x26 carry;
(* adc	x27, x11, xzr                               #! PC = 0xaaaaaaab5590 *)
adcs carry x27 x11 0@uint64 carry;
assume carry = 0 && true;
//end MUL256_KARATSUBA_COMBA

//mul1
assert eqmod limbs 64 [x8, x9, x30, x19, x10, x15, x16, x17]
             (limbs 64 [a0, a1, a2, a3] + limbs 64 [a4, a5, a6, 0]) *
             (limbs 64 [b0, b1, b2, b3] + limbs 64 [b4, b5, b6, 0])
             2**512 && true;
assume limbs 64 [x8, x9, x30, x19, x10, x15, x16, x17] =
       (limbs 64 [a0, a1, a2, a3] + limbs 64 [a4, a5, a6, 0]) *
       (limbs 64 [b0, b1, b2, b3] + limbs 64 [b4, b5, b6, 0]) && true;

(* ldp	x3, x4, [x0, #32]                           #! EA = L0xffffffffe948; Value = 0xcda74475c45f28d2; PC = 0xaaaaaaab5594 *)
mov x3 L0xffffffffe948;
mov x4 L0xffffffffe950;
(* ldp	x11, x12, [x1, #32]                         #! EA = L0xffffffffe980; Value = 0x37fdd87b6b64ac1c; PC = 0xaaaaaaab5598 *)
mov x11 L0xffffffffe980;
mov x12 L0xffffffffe988;
(* subs	x8, x8, x20                                #! PC = 0xaaaaaaab559c *)
subc carry x8 x8 x20;
(* sbcs	x9, x9, x21                                #! PC = 0xaaaaaaab55a0 *)
sbcs carry x9 x9 x21 carry;
(* stp	x20, x21, [x2]                              #! EA = L0xffffffffe6d8; PC = 0xaaaaaaab55a4 *)
mov L0xffffffffe6d8 x20;
mov L0xffffffffe6e0 x21;
(* ldr	x5, [x0, #48]                               #! EA = L0xffffffffe958; Value = 0x0000f80490342f70; PC = 0xaaaaaaab55a8 *)
mov x5 L0xffffffffe958;
(* mul	x20, x3, x11                                #! PC = 0xaaaaaaab55ac *)
mull Hx3x11 x20 x3 x11;
(* mul	x21, x3, x12                                #! PC = 0xaaaaaaab55b0 *)
mull Hx3x12 x21 x3 x12;
(* sbcs	x30, x30, x22                              #! PC = 0xaaaaaaab55b4 *)
sbcs carry x30 x30 x22 carry;
(* sbcs	x19, x19, x23                              #! PC = 0xaaaaaaab55b8 *)
sbcs carry x19 x19 x23 carry;
(* stp	x22, x23, [x2, #16]                         #! EA = L0xffffffffe6e8; PC = 0xaaaaaaab55bc *)
mov L0xffffffffe6e8 x22;
mov L0xffffffffe6f0 x23;
(* ldr	x13, [x1, #48]                              #! EA = L0xffffffffe990; Value = 0x000059b95660e18e; PC = 0xaaaaaaab55c0 *)
mov x13 L0xffffffffe990;
(* sbcs	x10, x10, x24                              #! PC = 0xaaaaaaab55c4 *)
sbcs carry x10 x10 x24 carry;
(* umulh	x22, x3, x12                              #! PC = 0xaaaaaaab55c8 *)
mov x22 Hx3x12;
(* umulh	x23, x3, x11                              #! PC = 0xaaaaaaab55cc *)
mov x23 Hx3x11;
(* sbcs	x15, x15, x25                              #! PC = 0xaaaaaaab55d0 *)
sbcs carry x15 x15 x25 carry;
(* sbcs	x16, x16, x26                              #! PC = 0xaaaaaaab55d4 *)
sbcs carry x16 x16 x26 carry;
(* sbc	x17, x17, x27                               #! PC = 0xaaaaaaab55d8 *)
sbcs dontcare x17 x17 x27 carry;

assert eqmod limbs 64 [x8, x9, x30, x19, x10, x15, x16, x17]
             (limbs 64 [a0, a1, a2, a3] + limbs 64 [a4, a5, a6, 0]) *
             (limbs 64 [b0, b1, b2, b3] + limbs 64 [b4, b5, b6, 0]) -
             limbs 64 [a0, a1, a2, a3] * limbs 64 [b0, b1, b2, b3]
             2**512 && true;
assume limbs 64 [x8, x9, x30, x19, x10, x15, x16, x17] =
       (limbs 64 [a0, a1, a2, a3] + limbs 64 [a4, a5, a6, 0]) *
       (limbs 64 [b0, b1, b2, b3] + limbs 64 [b4, b5, b6, 0]) -
       limbs 64 [a0, a1, a2, a3] * limbs 64 [b0, b1, b2, b3] && true;

(* mul	x28, x4, x11                                #! PC = 0xaaaaaaab55dc *)
mull Hx4x11 x28 x4 x11;
(* umulh	x29, x4, x11                              #! PC = 0xaaaaaaab55e0 *)
mov x29 Hx4x11;
(* adds	x21, x21, x23                              #! PC = 0xaaaaaaab55e4 *)
adds carry x21 x21 x23;
(* adc	x22, x22, xzr                               #! PC = 0xaaaaaaab55e8 *)
adc x22 x22 0@uint64 carry;
(* mul	x0, x4, x12                                 #! PC = 0xaaaaaaab55ec *)
mull Hx4x12 x0 x4 x12;
(* umulh	x23, x4, x12                              #! PC = 0xaaaaaaab55f0 *)
mov x23 Hx4x12;
(* adds	x21, x21, x28                              #! PC = 0xaaaaaaab55f4 *)
adds carry x21 x21 x28;
(* adcs	x22, x22, x29                              #! PC = 0xaaaaaaab55f8 *)
adcs carry x22 x22 x29 carry;
(* adc	x23, x23, xzr                               #! PC = 0xaaaaaaab55fc *)
adcs carry x23 x23 0@uint64 carry;
assume carry = 0 && true;

(* mul	x28, x3, x13                                #! PC = 0xaaaaaaab5600 *)
mull Hx3x13 x28 x3 x13;
(* umulh	x29, x3, x13                              #! PC = 0xaaaaaaab5604 *)
mov x29 Hx3x13;
(* adds	x22, x22, x0                               #! PC = 0xaaaaaaab5608 *)
adds carry x22 x22 x0;
(* adcs	x23, x23, x29                              #! PC = 0xaaaaaaab560c *)
adcs carry x23 x23 x29 carry;
(* adc	x6, xzr, xzr                                #! PC = 0xaaaaaaab5610 *)
adc x6 0@uint64 0@uint64 carry;
(* mul	x0, x5, x11                                 #! PC = 0xaaaaaaab5614 *)
mull Hx5x11 x0 x5 x11;
(* umulh	x29, x5, x11                              #! PC = 0xaaaaaaab5618 *)
mov x29 Hx5x11;
(* adds	x22, x22, x28                              #! PC = 0xaaaaaaab561c *)
adds carry x22 x22 x28;
(* adcs	x23, x23, x29                              #! PC = 0xaaaaaaab5620 *)
adcs carry x23 x23 x29 carry;
(* adc	x6, x6, xzr                                 #! PC = 0xaaaaaaab5624 *)
adc x6 x6 0@uint64 carry;
(* mul	x28, x4, x13                                #! PC = 0xaaaaaaab5628 *)
mull Hx4x13 x28 x4 x13;
(* umulh	x29, x4, x13                              #! PC = 0xaaaaaaab562c *)
mov x29 Hx4x13;
(* adds	x22, x22, x0                               #! PC = 0xaaaaaaab5630 *)
adds carry x22 x22 x0;
(* adcs	x23, x23, x28                              #! PC = 0xaaaaaaab5634 *)
adcs carry x23 x23 x28 carry;
(* adcs	x6, x6, x29                                #! PC = 0xaaaaaaab5638 *)
adcs carry x6 x6 x29 carry;
(* adc	x0, xzr, xzr                                #! PC = 0xaaaaaaab563c *)
adc x0 0@uint64 0@uint64 carry;
(* mul	x28, x5, x12                                #! PC = 0xaaaaaaab5640 *)
mull Hx5x12 x28 x5 x12;
(* umulh	x29, x5, x12                              #! PC = 0xaaaaaaab5644 *)
mov x29 Hx5x12;
(* adds	x23, x23, x28                              #! PC = 0xaaaaaaab5648 *)
adds carry x23 x23 x28;
(* adcs	x6, x6, x29                                #! PC = 0xaaaaaaab564c *)
adcs carry x6 x6 x29 carry;
(* adc	x0, x0, xzr                                 #! PC = 0xaaaaaaab5650 *)
adc x0 x0 0@uint64 carry;
(* mul	x28, x5, x13                                #! PC = 0xaaaaaaab5654 *)
mull Hx5x13 x28 x5 x13;
(* umulh	x29, x5, x13                              #! PC = 0xaaaaaaab5658 *)
mov x29 Hx5x13;
(* adds	x28, x28, x6                               #! PC = 0xaaaaaaab565c *)
adds carry x28 x28 x6;
(* adc	x29, x29, x0                                #! PC = 0xaaaaaaab5660 *)
adc x29 x29 x0 carry;
(* subs	x8, x8, x20                                #! PC = 0xaaaaaaab5664 *)
subc carry x8 x8 x20;
(* sbcs	x9, x9, x21                                #! PC = 0xaaaaaaab5668 *)
sbcs carry x9 x9 x21 carry;
(* sbcs	x30, x30, x22                              #! PC = 0xaaaaaaab566c *)
sbcs carry x30 x30 x22 carry;
(* sbcs	x19, x19, x23                              #! PC = 0xaaaaaaab5670 *)
sbcs carry x19 x19 x23 carry;
(* sbcs	x10, x10, x28                              #! PC = 0xaaaaaaab5674 *)
sbcs carry x10 x10 x28 carry;
(* sbcs	x15, x15, x29                              #! PC = 0xaaaaaaab5678 *)
sbcs carry x15 x15 x29 carry;
(* sbcs	x16, x16, xzr                              #! PC = 0xaaaaaaab567c *)
sbcs carry x16 x16 0@uint64 carry;
(* sbc	x17, x17, xzr                               #! PC = 0xaaaaaaab5680 *)
sbcs dontcare x17 x17 0@uint64 carry;
assume dontcare = 1 && true;

(* adds	x8, x8, x24                                #! PC = 0xaaaaaaab5684 *)
adds carry x8 x8 x24;
(* adcs	x9, x9, x25                                #! PC = 0xaaaaaaab5688 *)
adcs carry x9 x9 x25 carry;
(* stp	x8, x9, [x2, #32]                           #! EA = L0xffffffffe6f8; PC = 0xaaaaaaab568c *)
mov L0xffffffffe6f8 x8;
mov L0xffffffffe700 x9;
(* adcs	x30, x30, x26                              #! PC = 0xaaaaaaab5690 *)
adcs carry x30 x30 x26 carry;
(* ldp	x25, x26, [sp, #48]                         #! EA = L0xffffffffe680; Value = 0x0000ffffffffe928; PC = 0xaaaaaaab5694 *)
mov x25 L0xffffffffe680;
mov x26 L0xffffffffe688;
(* adcs	x19, x19, x27                              #! PC = 0xaaaaaaab5698 *)
adcs carry x19 x19 x27 carry;
(* stp	x30, x19, [x2, #48]                         #! EA = L0xffffffffe708; PC = 0xaaaaaaab569c *)
mov L0xffffffffe708 x30;
mov L0xffffffffe710 x19;
(* adcs	x10, x10, x20                              #! PC = 0xaaaaaaab56a0 *)
adcs carry x10 x10 x20 carry;
(* ldp	x19, x20, [sp]                              #! EA = L0xffffffffe650; Value = 0x0000ffffffffe6d8; PC = 0xaaaaaaab56a4 *)
mov x19 L0xffffffffe650;
mov x20 L0xffffffffe658;
(* adcs	x15, x15, x21                              #! PC = 0xaaaaaaab56a8 *)
adcs carry x15 x15 x21 carry;
(* stp	x10, x15, [x2, #64]                         #! EA = L0xffffffffe718; PC = 0xaaaaaaab56ac *)
mov L0xffffffffe718 x10;
mov L0xffffffffe720 x15;
(* adcs	x16, x16, x22                              #! PC = 0xaaaaaaab56b0 *)
adcs carry x16 x16 x22 carry;
(* ldp	x21, x22, [sp, #16]                         #! EA = L0xffffffffe660; Value = 0x0000ffffffffe7d8; PC = 0xaaaaaaab56b4 *)
mov x21 L0xffffffffe660;
mov x22 L0xffffffffe668;
(* adcs	x17, x17, x23                              #! PC = 0xaaaaaaab56b8 *)
adcs carry x17 x17 x23 carry;
(* stp	x16, x17, [x2, #80]                         #! EA = L0xffffffffe728; PC = 0xaaaaaaab56bc *)
mov L0xffffffffe728 x16;
mov L0xffffffffe730 x17;
(* adcs	x28, x28, xzr                              #! PC = 0xaaaaaaab56c0 *)
adcs carry x28 x28 0@uint64 carry;
(* ldp	x23, x24, [sp, #32]                         #! EA = L0xffffffffe670; Value = 0x0000ffffffffe8f0; PC = 0xaaaaaaab56c4 *)
mov x23 L0xffffffffe670;
mov x24 L0xffffffffe678;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab56c8 *)
adcs carry x29 x29 0@uint64 carry;
assume carry = 0 && true;

(* stp	x28, x29, [x2, #96]                         #! EA = L0xffffffffe738; PC = 0xaaaaaaab56cc *)
mov L0xffffffffe738 x28;
mov L0xffffffffe740 x29;
(* ldp	x27, x28, [sp, #64]                         #! EA = L0xffffffffe690; Value = 0x0000ffffffffe960; PC = 0xaaaaaaab56d0 *)
mov x27 L0xffffffffe690;
mov x28 L0xffffffffe698;
(* ldp	x29, x30, [sp, #80]                         #! EA = L0xffffffffe6a0; Value = 0x0000ffffffffe6b0; PC = 0xaaaaaaab56d4 *)
mov x29 L0xffffffffe6a0;
mov x30 L0xffffffffe6a8;
(* add	sp, sp, #0x60                               #! PC = 0xaaaaaaab56d8 *)
adds dontcare sp sp 0x60@uint64;
(* #! <- SP = 0xffffffffe6b0 *)
#! 0xffffffffe6b0 = 0xffffffffe6b0;
(* #ret                                            #! PC = 0xaaaaaaab56dc *)
#ret                                            #! 0xaaaaaaab56dc = 0xaaaaaaab56dc;

cut
  and [ eq (limbs 64 [L0xffffffffe6d8, L0xffffffffe6e0, L0xffffffffe6e8, L0xffffffffe6f0,
      	   	     		       L0xffffffffe6f8, L0xffffffffe700, L0xffffffffe708,
      	      	      L0xffffffffe710, L0xffffffffe718, L0xffffffffe720, L0xffffffffe728,
				       L0xffffffffe730, L0xffffffffe738, L0xffffffffe740])
          ((limbs 64 [a0, a1, a2, a3, a4, a5, a6])
	  * (limbs 64 [b0, b1, b2, b3, b4, b5, b6]))
	  ]
&& and[
(limbs 64 [L0xffffffffe6d8, L0xffffffffe6e0, L0xffffffffe6e8, L0xffffffffe6f0,
      	   	     		       L0xffffffffe6f8, L0xffffffffe700, L0xffffffffe708,
      	      	      L0xffffffffe710, L0xffffffffe718, L0xffffffffe720, L0xffffffffe728,
				       L0xffffffffe730, L0xffffffffe738, L0xffffffffe740])
<u (2**869)@896,
	px2_0 =0xFFFFFFFFFFFFFFFE@64,
  	px2_1 =0xFFFFFFFFFFFFFFFF@64,
	px2_2 =0xFFFFFFFFFFFFFFFF@64,
	px2_3 =0xFB82ECF5C5FFFFFF@64,
	px2_4 =0xF78CB8F062B15D47@64,
	px2_5 =0xD9F8BFAD038A40AC@64,
	px2_6 =0x0004683E4E2EE688@64
]
			prove with [ precondition ];

(* mov	x1, x20                                     #! PC = 0xaaaaaaaade30 *)
mov x1 x20;
(* mov	x0, x19                                     #! PC = 0xaaaaaaaade34 *)
mov x0 x19;
(* #bl	0xaaaaaaab4f44 <rdc_mont>                   #! PC = 0xaaaaaaaade38 *)
#bl	0xaaaaaaab4f44 <rdc_mont>                   #! 0xaaaaaaaade38 = 0xaaaaaaaade38;
(* #! -> SP = 0xffffffffe6b0 *)
#! 0xffffffffe6b0 = 0xffffffffe6b0;
(* #b	0xaaaaaaab56e0 <rdc434_asm>                  #! PC = 0xaaaaaaab4f44 *)
#b	0xaaaaaaab56e0 <rdc434_asm>                  #! 0xaaaaaaab4f44 = 0xaaaaaaab4f44;
(* sub	sp, sp, #0x50                               #! PC = 0xaaaaaaab56e0 *)
subc dontcare sp sp 0x50@uint64;
(* stp	x21, x24, [sp, #16]                         #! EA = L0xffffffffe670; PC = 0xaaaaaaab56e4 *)
mov L0xffffffffe670 x21;
mov L0xffffffffe678 x24;
(* stp	x25, x26, [sp, #32]                         #! EA = L0xffffffffe680; PC = 0xaaaaaaab56e8 *)
mov L0xffffffffe680 x25;
mov L0xffffffffe688 x26;
(* ldp	x2, x3, [x0]                                #! EA = L0xffffffffe6d8; Value = 0x05f6e422158ea7ec; PC = 0xaaaaaaab56ec *)
mov x2 L0xffffffffe6d8;
mov x3 L0xffffffffe6e0;
(* ldr	x24, 0xaaaaaaab4fd0 <p434p1_nz>             #! PC = 0xaaaaaaab56f0 *)
mov x24 L0xaaaaaaab4fd0;
(* ldr	x25, 0xaaaaaaab4fd8 <p434p1_nz+8>           #! PC = 0xaaaaaaab56f4 *)
mov x25 L0xaaaaaaab4fd8;
(* stp	x19, x20, [sp]                              #! EA = L0xffffffffe660; PC = 0xaaaaaaab56f8 *)
mov L0xffffffffe660 x19;
mov L0xffffffffe668 x20;
(* stp	x27, x28, [sp, #48]                         #! EA = L0xffffffffe690; PC = 0xaaaaaaab56fc *)
mov L0xffffffffe690 x27;
mov L0xffffffffe698 x28;
(* mul	x4, x2, x24                                 #! PC = 0xaaaaaaab5700 *)
mull Hx2x24 x4 x2 x24;
(* umulh	x7, x2, x24                               #! PC = 0xaaaaaaab5704 *)
mov x7 Hx2x24;
(* stp	x29, x30, [sp, #64]                         #! EA = L0xffffffffe6a0; PC = 0xaaaaaaab5708 *)
mov L0xffffffffe6a0 x29;
mov L0xffffffffe6a8 x30;
(* ldr	x26, 0xaaaaaaab4fe0 <p434p1_nz+16>          #! PC = 0xaaaaaaab570c *)
mov x26 L0xaaaaaaab4fe0;
(* ldr	x27, 0xaaaaaaab4fe8 <p434p1_nz+24>          #! PC = 0xaaaaaaab5710 *)
mov x27 L0xaaaaaaab4fe8;
(* mul	x5, x2, x25                                 #! PC = 0xaaaaaaab5714 *)
mull Hx2x25 x5 x2 x25;
(* umulh	x6, x2, x25                               #! PC = 0xaaaaaaab5718 *)
mov x6 Hx2x25;
(* ldr	x10, [x0, #24]                              #! EA = L0xffffffffe6f0; Value = 0xf210ad8c4552fc3d; PC = 0xaaaaaaab571c *)
mov x10 L0xffffffffe6f0;
(* ldp	x11, x12, [x0, #32]                         #! EA = L0xffffffffe6f8; Value = 0x156abb5ed1b7c717; PC = 0xaaaaaaab5720 *)
mov x11 L0xffffffffe6f8;
mov x12 L0xffffffffe700;
(* ldp	x13, x14, [x0, #48]                         #! EA = L0xffffffffe708; Value = 0x7f544e16078761fc; PC = 0xaaaaaaab5724 *)
mov x13 L0xffffffffe708;
mov x14 L0xffffffffe710;
(* mul	x28, x3, x24                                #! PC = 0xaaaaaaab5728 *)
mull Hx3x24 x28 x3 x24;
(* umulh	x29, x3, x24                              #! PC = 0xaaaaaaab572c *)
mov x29 Hx3x24;
(* adds	x5, x5, x7                                 #! PC = 0xaaaaaaab5730 *)
adds carry x5 x5 x7;
(* adc	x6, x6, xzr                                 #! PC = 0xaaaaaaab5734 *)
adc x6 x6 0@uint64 carry;
(* mul	x30, x2, x26                                #! PC = 0xaaaaaaab5738 *)
mull Hx2x26 x30 x2 x26;
(* umulh	x9, x2, x26                               #! PC = 0xaaaaaaab573c *)
mov x9 Hx2x26;
(* adds	x5, x5, x28                                #! PC = 0xaaaaaaab5740 *)
adds carry x5 x5 x28;
(* adcs	x6, x6, x29                                #! PC = 0xaaaaaaab5744 *)
adcs carry x6 x6 x29 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xaaaaaaab5748 *)
adc x7 0@uint64 0@uint64 carry;
(* mul	x28, x3, x25                                #! PC = 0xaaaaaaab574c *)
mull Hx3x25 x28 x3 x25;
(* umulh	x29, x3, x25                              #! PC = 0xaaaaaaab5750 *)
mov x29 Hx3x25;
(* adds	x6, x6, x30                                #! PC = 0xaaaaaaab5754 *)
adds carry x6 x6 x30;
(* adcs	x7, x7, x9                                 #! PC = 0xaaaaaaab5758 *)
adcs carry x7 x7 x9 carry;
(* adc	x8, xzr, xzr                                #! PC = 0xaaaaaaab575c *)
adc x8 0@uint64 0@uint64 carry;
(* mul	x30, x2, x27                                #! PC = 0xaaaaaaab5760 *)
mull Hx2x27 x30 x2 x27;
(* umulh	x9, x2, x27                               #! PC = 0xaaaaaaab5764 *)
mov x9 Hx2x27;
(* adds	x6, x6, x28                                #! PC = 0xaaaaaaab5768 *)
adds carry x6 x6 x28;
(* adcs	x7, x7, x29                                #! PC = 0xaaaaaaab576c *)
adcs carry x7 x7 x29 carry;
(* adc	x8, x8, xzr                                 #! PC = 0xaaaaaaab5770 *)
adc x8 x8 0@uint64 carry;
(* mul	x28, x3, x26                                #! PC = 0xaaaaaaab5774 *)
mull Hx3x26 x28 x3 x26;
(* umulh	x29, x3, x26                              #! PC = 0xaaaaaaab5778 *)
mov x29 Hx3x26;
(* adds	x7, x7, x30                                #! PC = 0xaaaaaaab577c *)
adds carry x7 x7 x30;
(* adcs	x8, x8, x9                                 #! PC = 0xaaaaaaab5780 *)
adcs carry x8 x8 x9 carry;
(* adc	x2, xzr, xzr                                #! PC = 0xaaaaaaab5784 *)
adc x2 0@uint64 0@uint64 carry;
(* mul	x30, x3, x27                                #! PC = 0xaaaaaaab5788 *)
mull Hx3x27 x30 x3 x27;
(* umulh	x9, x3, x27                               #! PC = 0xaaaaaaab578c *)
mov x9 Hx3x27;
(* adds	x7, x7, x28                                #! PC = 0xaaaaaaab5790 *)
adds carry x7 x7 x28;
(* adcs	x8, x8, x29                                #! PC = 0xaaaaaaab5794 *)
adcs carry x8 x8 x29 carry;
(* adc	x2, x2, xzr                                 #! PC = 0xaaaaaaab5798 *)
adc x2 x2 0@uint64 carry;
(* adds	x8, x8, x30                                #! PC = 0xaaaaaaab579c *)
adds carry x8 x8 x30;
(* adc	x2, x2, x9                                  #! PC = 0xaaaaaaab57a0 *)
adc x2 x2 x9 carry;
(* ldr	x3, [x0, #16]                               #! EA = L0xffffffffe6e8; Value = 0xea4eeec74f19e6c5; PC = 0xaaaaaaab57a4 *)
mov x3 L0xffffffffe6e8;
(* adds	x10, x4, x10                               #! PC = 0xaaaaaaab57a8 *)
adds carry x10 x4 x10;
(* adcs	x11, x5, x11                               #! PC = 0xaaaaaaab57ac *)
adcs carry x11 x5 x11 carry;
(* ldp	x15, x16, [x0, #64]                         #! EA = L0xffffffffe718; Value = 0xa74291e2ea636718; PC = 0xaaaaaaab57b0 *)
mov x15 L0xffffffffe718;
mov x16 L0xffffffffe720;
(* adcs	x12, x6, x12                               #! PC = 0xaaaaaaab57b4 *)
adcs carry x12 x6 x12 carry;
(* adcs	x13, x7, x13                               #! PC = 0xaaaaaaab57b8 *)
adcs carry x13 x7 x13 carry;
(* ldp	x17, x19, [x0, #80]                         #! EA = L0xffffffffe728; Value = 0x5a01a831ab8b0aeb; PC = 0xaaaaaaab57bc *)
mov x17 L0xffffffffe728;
mov x19 L0xffffffffe730;
(* adcs	x14, x8, x14                               #! PC = 0xaaaaaaab57c0 *)
adcs carry x14 x8 x14 carry;
(* mul	x4, x3, x24                                 #! PC = 0xaaaaaaab57c4 *)
mull Hx3x24 x4 x3 x24;
(* umulh	x7, x3, x24                               #! PC = 0xaaaaaaab57c8 *)
mov x7 Hx3x24;
(* adcs	x15, x2, x15                               #! PC = 0xaaaaaaab57cc *)
adcs carry x15 x2 x15 carry;
(* adcs	x16, xzr, x16                              #! PC = 0xaaaaaaab57d0 *)
adcs carry x16 0@uint64 x16 carry;
(* ldp	x20, x21, [x0, #96]                         #! EA = L0xffffffffe738; Value = 0xbee1e8b661486136; PC = 0xaaaaaaab57d4 *)
mov x20 L0xffffffffe738;
mov x21 L0xffffffffe740;
(* adcs	x17, xzr, x17                              #! PC = 0xaaaaaaab57d8 *)
adcs carry x17 0@uint64 x17 carry;
(* adcs	x19, xzr, x19                              #! PC = 0xaaaaaaab57dc *)
adcs carry x19 0@uint64 x19 carry;
(* mul	x5, x3, x25                                 #! PC = 0xaaaaaaab57e0 *)
mull Hx3x25 x5 x3 x25;
(* umulh	x6, x3, x25                               #! PC = 0xaaaaaaab57e4 *)
mov x6 Hx3x25;
(* adcs	x20, xzr, x20                              #! PC = 0xaaaaaaab57e8 *)
adcs carry x20 0@uint64 x20 carry;
(* adc	x21, xzr, x21                               #! PC = 0xaaaaaaab57ec *)
adc x21 0@uint64 x21 carry;
(* mul	x28, x10, x24                               #! PC = 0xaaaaaaab57f0 *)
mull Hx10x24 x28 x10 x24;
(* umulh	x29, x10, x24                             #! PC = 0xaaaaaaab57f4 *)
mov x29 Hx10x24;
(* adds	x5, x5, x7                                 #! PC = 0xaaaaaaab57f8 *)
adds carry x5 x5 x7;
(* adc	x6, x6, xzr                                 #! PC = 0xaaaaaaab57fc *)
adc x6 x6 0@uint64 carry;
(* mul	x30, x3, x26                                #! PC = 0xaaaaaaab5800 *)
mull Hx3x26 x30 x3 x26;
(* umulh	x9, x3, x26                               #! PC = 0xaaaaaaab5804 *)
mov x9 Hx3x26;
(* adds	x5, x5, x28                                #! PC = 0xaaaaaaab5808 *)
adds carry x5 x5 x28;
(* adcs	x6, x6, x29                                #! PC = 0xaaaaaaab580c *)
adcs carry x6 x6 x29 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xaaaaaaab5810 *)
adc x7 0@uint64 0@uint64 carry;
(* mul	x28, x10, x25                               #! PC = 0xaaaaaaab5814 *)
mull Hx10x25 x28 x10 x25;
(* umulh	x29, x10, x25                             #! PC = 0xaaaaaaab5818 *)
mov x29 Hx10x25;
(* adds	x6, x6, x30                                #! PC = 0xaaaaaaab581c *)
adds carry x6 x6 x30;
(* adcs	x7, x7, x9                                 #! PC = 0xaaaaaaab5820 *)
adcs carry x7 x7 x9 carry;
(* adc	x8, xzr, xzr                                #! PC = 0xaaaaaaab5824 *)
adc x8 0@uint64 0@uint64 carry;
(* mul	x30, x3, x27                                #! PC = 0xaaaaaaab5828 *)
mull Hx3x27 x30 x3 x27;
(* umulh	x9, x3, x27                               #! PC = 0xaaaaaaab582c *)
mov x9 Hx3x27;
(* adds	x6, x6, x28                                #! PC = 0xaaaaaaab5830 *)
adds carry x6 x6 x28;
(* adcs	x7, x7, x29                                #! PC = 0xaaaaaaab5834 *)
adcs carry x7 x7 x29 carry;
(* adc	x8, x8, xzr                                 #! PC = 0xaaaaaaab5838 *)
adc x8 x8 0@uint64 carry;
(* mul	x28, x10, x26                               #! PC = 0xaaaaaaab583c *)
mull Hx10x26 x28 x10 x26;
(* umulh	x29, x10, x26                             #! PC = 0xaaaaaaab5840 *)
mov x29 Hx10x26;
(* adds	x7, x7, x30                                #! PC = 0xaaaaaaab5844 *)
adds carry x7 x7 x30;
(* adcs	x8, x8, x9                                 #! PC = 0xaaaaaaab5848 *)
adcs carry x8 x8 x9 carry;
(* adc	x3, xzr, xzr                                #! PC = 0xaaaaaaab584c *)
adc x3 0@uint64 0@uint64 carry;
(* mul	x30, x10, x27                               #! PC = 0xaaaaaaab5850 *)
mull Hx10x27 x30 x10 x27;
(* umulh	x9, x10, x27                              #! PC = 0xaaaaaaab5854 *)
mov x9 Hx10x27;
(* adds	x7, x7, x28                                #! PC = 0xaaaaaaab5858 *)
adds carry x7 x7 x28;
(* adcs	x8, x8, x29                                #! PC = 0xaaaaaaab585c *)
adcs carry x8 x8 x29 carry;
(* adc	x3, x3, xzr                                 #! PC = 0xaaaaaaab5860 *)
adc x3 x3 0@uint64 carry;
(* adds	x8, x8, x30                                #! PC = 0xaaaaaaab5864 *)
adds carry x8 x8 x30;
(* adc	x3, x3, x9                                  #! PC = 0xaaaaaaab5868 *)
adc x3 x3 x9 carry;
(* adds	x12, x4, x12                               #! PC = 0xaaaaaaab586c *)
adds carry x12 x4 x12;
(* adcs	x13, x5, x13                               #! PC = 0xaaaaaaab5870 *)
adcs carry x13 x5 x13 carry;
(* adcs	x14, x6, x14                               #! PC = 0xaaaaaaab5874 *)
adcs carry x14 x6 x14 carry;
(* adcs	x15, x7, x15                               #! PC = 0xaaaaaaab5878 *)
adcs carry x15 x7 x15 carry;
(* mul	x4, x11, x24                                #! PC = 0xaaaaaaab587c *)
mull Hx11x24 x4 x11 x24;
(* umulh	x7, x11, x24                              #! PC = 0xaaaaaaab5880 *)
mov x7 Hx11x24;
(* adcs	x16, x8, x16                               #! PC = 0xaaaaaaab5884 *)
adcs carry x16 x8 x16 carry;
(* adcs	x17, x3, x17                               #! PC = 0xaaaaaaab5888 *)
adcs carry x17 x3 x17 carry;
(* adcs	x19, xzr, x19                              #! PC = 0xaaaaaaab588c *)
adcs carry x19 0@uint64 x19 carry;
(* adcs	x20, xzr, x20                              #! PC = 0xaaaaaaab5890 *)
adcs carry x20 0@uint64 x20 carry;
(* mul	x5, x11, x25                                #! PC = 0xaaaaaaab5894 *)
mull Hx11x25 x5 x11 x25;
(* umulh	x6, x11, x25                              #! PC = 0xaaaaaaab5898 *)
mov x6 Hx11x25;
(* adc	x21, xzr, x21                               #! PC = 0xaaaaaaab589c *)
adc x21 0@uint64 x21 carry;
(* mul	x28, x12, x24                               #! PC = 0xaaaaaaab58a0 *)
mull Hx12x24 x28 x12 x24;
(* umulh	x29, x12, x24                             #! PC = 0xaaaaaaab58a4 *)
mov x29 Hx12x24;
(* adds	x5, x5, x7                                 #! PC = 0xaaaaaaab58a8 *)
adds carry x5 x5 x7;
(* adc	x6, x6, xzr                                 #! PC = 0xaaaaaaab58ac *)
adc x6 x6 0@uint64 carry;
(* mul	x30, x11, x26                               #! PC = 0xaaaaaaab58b0 *)
mull Hx11x26 x30 x11 x26;
(* umulh	x9, x11, x26                              #! PC = 0xaaaaaaab58b4 *)
mov x9 Hx11x26;
(* adds	x5, x5, x28                                #! PC = 0xaaaaaaab58b8 *)
adds carry x5 x5 x28;
(* adcs	x6, x6, x29                                #! PC = 0xaaaaaaab58bc *)
adcs carry x6 x6 x29 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xaaaaaaab58c0 *)
adc x7 0@uint64 0@uint64 carry;
(* mul	x28, x12, x25                               #! PC = 0xaaaaaaab58c4 *)
mull Hx12x25 x28 x12 x25;
(* umulh	x29, x12, x25                             #! PC = 0xaaaaaaab58c8 *)
mov x29 Hx12x25;
(* adds	x6, x6, x30                                #! PC = 0xaaaaaaab58cc *)
adds carry x6 x6 x30;
(* adcs	x7, x7, x9                                 #! PC = 0xaaaaaaab58d0 *)
adcs carry x7 x7 x9 carry;
(* adc	x8, xzr, xzr                                #! PC = 0xaaaaaaab58d4 *)
adc x8 0@uint64 0@uint64 carry;
(* mul	x30, x11, x27                               #! PC = 0xaaaaaaab58d8 *)
mull Hx11x27 x30 x11 x27;
(* umulh	x9, x11, x27                              #! PC = 0xaaaaaaab58dc *)
mov x9 Hx11x27;
(* adds	x6, x6, x28                                #! PC = 0xaaaaaaab58e0 *)
adds carry x6 x6 x28;
(* adcs	x7, x7, x29                                #! PC = 0xaaaaaaab58e4 *)
adcs carry x7 x7 x29 carry;
(* adc	x8, x8, xzr                                 #! PC = 0xaaaaaaab58e8 *)
adc x8 x8 0@uint64 carry;
(* mul	x28, x12, x26                               #! PC = 0xaaaaaaab58ec *)
mull Hx12x26 x28 x12 x26;
(* umulh	x29, x12, x26                             #! PC = 0xaaaaaaab58f0 *)
mov x29 Hx12x26;
(* adds	x7, x7, x30                                #! PC = 0xaaaaaaab58f4 *)
adds carry x7 x7 x30;
(* adcs	x8, x8, x9                                 #! PC = 0xaaaaaaab58f8 *)
adcs carry x8 x8 x9 carry;
(* adc	x11, xzr, xzr                               #! PC = 0xaaaaaaab58fc *)
adc x11 0@uint64 0@uint64 carry;
(* mul	x30, x12, x27                               #! PC = 0xaaaaaaab5900 *)
mull Hx12x27 x30 x12 x27;
(* umulh	x9, x12, x27                              #! PC = 0xaaaaaaab5904 *)
mov x9 Hx12x27;
(* adds	x7, x7, x28                                #! PC = 0xaaaaaaab5908 *)
adds carry x7 x7 x28;
(* adcs	x8, x8, x29                                #! PC = 0xaaaaaaab590c *)
adcs carry x8 x8 x29 carry;
(* adc	x11, x11, xzr                               #! PC = 0xaaaaaaab5910 *)
adc x11 x11 0@uint64 carry;
(* adds	x8, x8, x30                                #! PC = 0xaaaaaaab5914 *)
adds carry x8 x8 x30;
(* adc	x11, x11, x9                                #! PC = 0xaaaaaaab5918 *)
adc x11 x11 x9 carry;
(* adds	x14, x4, x14                               #! PC = 0xaaaaaaab591c *)
adds carry x14 x4 x14;
(* adcs	x15, x5, x15                               #! PC = 0xaaaaaaab5920 *)
adcs carry x15 x5 x15 carry;
(* stp	x14, x15, [x1]                              #! EA = L0xffffffffe9d0; PC = 0xaaaaaaab5924 *)
mov L0xffffffffe9d0 x14;
mov L0xffffffffe9d8 x15;
(* adcs	x16, x6, x16                               #! PC = 0xaaaaaaab5928 *)
adcs carry x16 x6 x16 carry;
(* mul	x2, x13, x24                                #! PC = 0xaaaaaaab592c *)
mull Hx13x24 x2 x13 x24;
(* umulh	x3, x13, x24                              #! PC = 0xaaaaaaab5930 *)
mov x3 Hx13x24;
(* adcs	x17, x7, x17                               #! PC = 0xaaaaaaab5934 *)
adcs carry x17 x7 x17 carry;
(* adcs	x19, x8, x19                               #! PC = 0xaaaaaaab5938 *)
adcs carry x19 x8 x19 carry;
(* adcs	x20, x11, x20                              #! PC = 0xaaaaaaab593c *)
adcs carry x20 x11 x20 carry;
(* adc	x21, xzr, x21                               #! PC = 0xaaaaaaab5940 *)
adc x21 0@uint64 x21 carry;
(* mul	x30, x13, x25                               #! PC = 0xaaaaaaab5944 *)
mull Hx13x25 x30 x13 x25;
(* umulh	x4, x13, x25                              #! PC = 0xaaaaaaab5948 *)
mov x4 Hx13x25;
(* adds	x3, x3, x30                                #! PC = 0xaaaaaaab594c *)
adds carry x3 x3 x30;
(* adc	x4, x4, xzr                                 #! PC = 0xaaaaaaab5950 *)
adc x4 x4 0@uint64 carry;
(* mul	x30, x13, x26                               #! PC = 0xaaaaaaab5954 *)
mull Hx13x26 x30 x13 x26;
(* umulh	x5, x13, x26                              #! PC = 0xaaaaaaab5958 *)
mov x5 Hx13x26;
(* adds	x4, x4, x30                                #! PC = 0xaaaaaaab595c *)
adds carry x4 x4 x30;
(* adc	x5, x5, xzr                                 #! PC = 0xaaaaaaab5960 *)
adc x5 x5 0@uint64 carry;
(* mul	x30, x13, x27                               #! PC = 0xaaaaaaab5964 *)
mull Hx13x27 x30 x13 x27;
(* umulh	x8, x13, x27                              #! PC = 0xaaaaaaab5968 *)
mov x8 Hx13x27;
(* adds	x5, x5, x30                                #! PC = 0xaaaaaaab596c *)
adds carry x5 x5 x30;
(* adc	x8, x8, xzr                                 #! PC = 0xaaaaaaab5970 *)
adc x8 x8 0@uint64 carry;
(* adds	x16, x2, x16                               #! PC = 0xaaaaaaab5974 *)
adds carry x16 x2 x16;
(* ldp	x25, x26, [sp, #32]                         #! EA = L0xffffffffe680; Value = 0x0000ffffffffe928; PC = 0xaaaaaaab5978 *)
mov x25 L0xffffffffe680;
mov x26 L0xffffffffe688;
(* adcs	x17, x3, x17                               #! PC = 0xaaaaaaab597c *)
adcs carry x17 x3 x17 carry;
(* stp	x16, x17, [x1, #16]                         #! EA = L0xffffffffe9e0; PC = 0xaaaaaaab5980 *)
mov L0xffffffffe9e0 x16;
mov L0xffffffffe9e8 x17;
(* ldp	x27, x28, [sp, #48]                         #! EA = L0xffffffffe690; Value = 0x0000ffffffffe960; PC = 0xaaaaaaab5984 *)
mov x27 L0xffffffffe690;
mov x28 L0xffffffffe698;
(* adcs	x19, x4, x19                               #! PC = 0xaaaaaaab5988 *)
adcs carry x19 x4 x19 carry;
(* ldp	x29, x30, [sp, #64]                         #! EA = L0xffffffffe6a0; Value = 0x0000ffffffffe6b0; PC = 0xaaaaaaab598c *)
mov x29 L0xffffffffe6a0;
mov x30 L0xffffffffe6a8;
(* adcs	x20, x5, x20                               #! PC = 0xaaaaaaab5990 *)
adcs carry x20 x5 x20 carry;
(* stp	x19, x20, [x1, #32]                         #! EA = L0xffffffffe9f0; PC = 0xaaaaaaab5994 *)
mov L0xffffffffe9f0 x19;
mov L0xffffffffe9f8 x20;
(* ldp	x19, x20, [sp]                              #! EA = L0xffffffffe660; Value = 0x0000ffffffffe6d8; PC = 0xaaaaaaab5998 *)
mov x19 L0xffffffffe660;
mov x20 L0xffffffffe668;
(* adc	x21, x8, x21                                #! PC = 0xaaaaaaab599c *)
adc x21 x8 x21 carry;
(* str	x21, [x1, #48]                              #! EA = L0xffffffffea00; PC = 0xaaaaaaab59a0 *)
mov L0xffffffffea00 x21;
(* ldp	x21, x24, [sp, #16]                         #! EA = L0xffffffffe670; Value = 0x0000ffffffffe7d8; PC = 0xaaaaaaab59a4 *)
mov x21 L0xffffffffe670;
mov x24 L0xffffffffe678;
(* add	sp, sp, #0x50                               #! PC = 0xaaaaaaab59a8 *)
adds dontcare sp sp 0x50@uint64;
(* #! <- SP = 0xffffffffe6b0 *)
#! 0xffffffffe6b0 = 0xffffffffe6b0;
(* #ret                                            #! PC = 0xaaaaaaab59ac *)
#ret                                            #! 0xaaaaaaab59ac = 0xaaaaaaab59ac;
(* ldr	x0, [x0, #4056]                             #! EA = L0xaaaaaaac9fd8; Value = 0x0000fffff7ffd6b0; PC = 0xaaaaaaaade40 *)
mov x0 L0xaaaaaaac9fd8;
(* ldr	x1, [sp, #152]                              #! EA = L0xffffffffe748; Value = 0x7805953c03e91300; PC = 0xaaaaaaaade44 *)
mov x1 L0xffffffffe748;
(* ldr	x2, [x0]                                    #! EA = L0xfffff7ffd6b0; Value = 0x7805953c03e91300; PC = 0xaaaaaaaade48 *)
mov x2 L0xfffff7ffd6b0;
(* subs	x1, x1, x2                                 #! PC = 0xaaaaaaaade4c *)
subc carry x1 x1 x2;
(* mov	x2, #0x0                   	// #0           #! PC = 0xaaaaaaaade50 *)
mov x2 0x0@uint64;
(* #b.ne	0xaaaaaaaade64 <fpmul434_mont+132>  // b.any#! PC = 0xaaaaaaaade54 *)
#b.ne	0xaaaaaaaade64 <fpmul434_mont+132>  // b.any#! 0xaaaaaaaade54 = 0xaaaaaaaade54;
(* ldp	x19, x20, [sp, #16]                         #! EA = L0xffffffffe6c0; Value = 0x0000ffffffffe880; PC = 0xaaaaaaaade58 *)
mov x19 L0xffffffffe6c0;
mov x20 L0xffffffffe6c8;
(* ldp	x29, x30, [sp], #160                        #! EA = L0xffffffffe6b0; Value = 0x0000ffffffffe750; PC = 0xaaaaaaaade5c *)
mov x29 L0xffffffffe6b0;
mov x30 L0xffffffffe6b8;
(* #! <- SP = 0xffffffffe750 *)
#! 0xffffffffe750 = 0xffffffffe750;
(* #ret                                            #! PC = 0xaaaaaaaade60 *)
#ret                                            #! 0xaaaaaaaade60 = 0xaaaaaaaade60;



mov r0 L0xffffffffe9d0;
mov r1 L0xffffffffe9d8;
mov r2 L0xffffffffe9e0;
mov r3 L0xffffffffe9e8;
mov r4 L0xffffffffe9f0;
mov r5 L0xffffffffe9f8;
mov r6 L0xffffffffea00;

{
  
  eqmod limbs 64 [ 0,  0,  0,  0,  0,  0,  0,
                  r0, r1, r2, r3, r4, r5, r6]
        limbs 64 [a0, a1, a2, a3, a4, a5, a6] *
        limbs 64 [b0, b1, b2, b3, b4, b5, b6]
        limbs 64 [p_0, p_1, p_2, p_3, p_4, p_5, p_6]

  && 
  limbs 64 [r0, r1, r2, r3, r4, r5, r6] <u limbs 64 [px2_0, px2_1, px2_2, px2_3, px2_4, px2_5, px2_6]
}


