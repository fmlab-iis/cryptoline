(*cv -v -disable_safety -jobs 4 -btor -slicing -o cryptoline-fp434sub.log PQCrypto-SIDH/P434/arm64/fpsub434.cl
Parsing Cryptoline file:		[OK]		0.000789 seconds
Checking well-formedness:		[OK]		0.000183 seconds
Transforming to SSA form:		[OK]		0.000084 seconds
Normalizing specification:		[OK]		0.000074 seconds
Rewriting assignments:			[OK]		0.000122 seconds
Verifying range specification:		[OK]		47.786558 seconds
Rewriting value-preserved casting:	[OK]		0.000009 seconds
Verifying algebraic specification:	[OK]		0.000985 seconds
Verification result:			[OK]		47.789063 seconds
*)

proc main (uint64 a0,uint64 a1,uint64 a2,uint64 a3,uint64 a4,uint64 a5,uint64 a6,
     	  uint64 b0,uint64 b1,uint64 b2,uint64 b3,uint64 b4,uint64 b5,uint64 b6) =
{
  true
  &&
  true
}

mov p_0 0xFFFFFFFFFFFFFFFF@uint64;
mov p_1 0xFFFFFFFFFFFFFFFF@uint64;
mov p_2 0xFFFFFFFFFFFFFFFF@uint64;
mov p_3 0xFDC1767AE2FFFFFF@uint64;
mov p_4 0x7BC65C783158AEA3@uint64;
mov p_5 0x6CFC5FD681C52056@uint64;
mov p_6 0x0002341F27177344@uint64;

mov px2_0 0xFFFFFFFFFFFFFFFE@uint64;
mov px2_1 0xFFFFFFFFFFFFFFFF@uint64;
mov px2_2 0xFFFFFFFFFFFFFFFF@uint64;
mov px2_3 0xFB82ECF5C5FFFFFF@uint64;
mov px2_4 0xF78CB8F062B15D47@uint64;
mov px2_5 0xD9F8BFAD038A40AC@uint64;
mov px2_6 0x0004683E4E2EE688@uint64;

assume
true
&& and [0@448 <=u limbs 64 [a0, a1, a2, a3, a4, a5, a6],
    	(limbs 64 [a0, a1, a2, a3, a4, a5, a6]) <u (limbs 64 [px2_0, px2_1, px2_2, px2_3, px2_4, px2_5, px2_6]),
	0@448 <=u limbs 64 [b0, b1, b2, b3, b4, b5, b6],
    	(limbs 64 [b0, b1, b2, b3, b4, b5, b6]) <u (limbs 64 [px2_0, px2_1, px2_2, px2_3, px2_4, px2_5, px2_6])];

mov L0xffffffffe7d8 a0;
mov L0xffffffffe7e0 a1;
mov L0xffffffffe7e8 a2;
mov L0xffffffffe7f0 a3;
mov L0xffffffffe7f8 a4;
mov L0xffffffffe800 a5;
mov L0xffffffffe808 a6;

mov L0xffffffffe810 b0;
mov L0xffffffffe818 b1;
mov L0xffffffffe820 b2;
mov L0xffffffffe828 b3;
mov L0xffffffffe830 b4;
mov L0xffffffffe838 b5;
mov L0xffffffffe840 b6;

(* #! -> SP = 0xffffffffe750 *)
#! 0xffffffffe750 = 0xffffffffe750;
(* #b	0xaaaaaaab50ac <fpsub434_asm>                #! PC = 0xaaaaaaab4c34 *)
#b	0xaaaaaaab50ac <fpsub434_asm>                #! 0xaaaaaaab4c34 = 0xaaaaaaab4c34;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe7d8; Value = 0xc3b42df01a07738f; PC = 0xaaaaaaab50ac *)
mov x3 L0xffffffffe7d8;
mov x4 L0xffffffffe7e0;
(* ldp	x11, x12, [x1]                              #! EA = L0xffffffffe810; Value = 0x9c72e565ed30a1f7; PC = 0xaaaaaaab50b0 *)
mov x11 L0xffffffffe810;
mov x12 L0xffffffffe818;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffe7e8; Value = 0x4b77b3f074420fb5; PC = 0xaaaaaaab50b4 *)
mov x5 L0xffffffffe7e8;
mov x6 L0xffffffffe7f0;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0xffffffffe820; Value = 0x4c48669f51f2010f; PC = 0xaaaaaaab50b8 *)
mov x13 L0xffffffffe820;
mov x14 L0xffffffffe828;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe7f8; Value = 0x91eb54e9279fbc37; PC = 0xaaaaaaab50bc *)
mov x7 L0xffffffffe7f8;
mov x8 L0xffffffffe800;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0xffffffffe830; Value = 0x9076eeeed97b0874; PC = 0xaaaaaaab50c0 *)
mov x15 L0xffffffffe830;
mov x16 L0xffffffffe838;
(* subs	x3, x3, x11                                #! PC = 0xaaaaaaab50c4 *)
usubc carry x3 x3 x11;
(* sbcs	x4, x4, x12                                #! PC = 0xaaaaaaab50c8 *)
usbcs carry x4 x4 x12 carry;
(* ldr	x9, [x0, #48]                               #! EA = L0xffffffffe808; Value = 0x0000e3699d6bb6ad; PC = 0xaaaaaaab50cc *)
mov x9 L0xffffffffe808;
(* ldr	x17, [x1, #48]                              #! EA = L0xffffffffe840; Value = 0x0001917cd8491539; PC = 0xaaaaaaab50d0 *)
mov x17 L0xffffffffe840;
(* sbcs	x5, x5, x13                                #! PC = 0xaaaaaaab50d4 *)
usbcs carry x5 x5 x13 carry;
(* sbcs	x6, x6, x14                                #! PC = 0xaaaaaaab50d8 *)
usbcs carry x6 x6 x14 carry;
(* ldr	x11, 0xaaaaaaab4f70 <p434x2>                #! PC = 0xaaaaaaab50dc *)
#ldr	%%x11, 0xaaaaaaab4f70 <p434x2>                #! 0xaaaaaaab50dc = 0xaaaaaaab50dc;
mov x11 px2_0;
(* sbcs	x7, x7, x15                                #! PC = 0xaaaaaaab50e0 *)
usbcs carry x7 x7 x15 carry;
(* ldr	x12, 0xaaaaaaab4f78 <p434x2+8>              #! PC = 0xaaaaaaab50e4 *)
#ldr	%%x12, 0xaaaaaaab4f78 <p434x2+8>              #! 0xaaaaaaab50e4 = 0xaaaaaaab50e4;
mov x12 px2_1;
(* sbcs	x8, x8, x16                                #! PC = 0xaaaaaaab50e8 *)
usbcs carry x8 x8 x16 carry;
(* ldr	x13, 0xaaaaaaab4f80 <p434x2+16>             #! PC = 0xaaaaaaab50ec *)
#ldr	%%x13, 0xaaaaaaab4f80 <p434x2+16>             #! 0xaaaaaaab50ec = 0xaaaaaaab50ec;
mov x13 px2_3;
(* sbcs	x9, x9, x17                                #! PC = 0xaaaaaaab50f0 *)
usbcs carry x9 x9 x17 carry;
(* ldr	x14, 0xaaaaaaab4f88 <p434x2+24>             #! PC = 0xaaaaaaab50f4 *)
#ldr	%%x14, 0xaaaaaaab4f88 <p434x2+24>             #! 0xaaaaaaab50f4 = 0xaaaaaaab50f4;
mov x14 px2_4;
(* ngc	x10, xzr                                    #! PC = 0xaaaaaaab50f8 *)
cmov x10 carry 0@uint64 0xffffffffffffffff@uint64;
(* ldr	x15, 0xaaaaaaab4f90 <p434x2+32>             #! PC = 0xaaaaaaab50fc *)
#ldr	%%x15, 0xaaaaaaab4f90 <p434x2+32>             #! 0xaaaaaaab50fc = 0xaaaaaaab50fc;
mov x15 px2_5;
(* and	x11, x11, x10                               #! PC = 0xaaaaaaab5100 *)
and x11@uint64 x11 x10;
(* ldr	x16, 0xaaaaaaab4f98 <p434x2+40>             #! PC = 0xaaaaaaab5104 *)
#ldr	%%x16, 0xaaaaaaab4f98 <p434x2+40>             #! 0xaaaaaaab5104 = 0xaaaaaaab5104;
mov x16 px2_6;
(* and	x12, x12, x10                               #! PC = 0xaaaaaaab5108 *)
and x12@uint64 x12 x10;
(* and	x13, x13, x10                               #! PC = 0xaaaaaaab510c *)
and x13@uint64 x13 x10;
(* and	x14, x14, x10                               #! PC = 0xaaaaaaab5110 *)
and x14@uint64 x14 x10;
(* and	x15, x15, x10                               #! PC = 0xaaaaaaab5114 *)
and x15@uint64 x15 x10;
(* and	x16, x16, x10                               #! PC = 0xaaaaaaab5118 *)
and x16@uint64 x16 x10;
(* adds	x3, x3, x11                                #! PC = 0xaaaaaaab511c *)
uadds carry x3 x3 x11;
(* adcs	x4, x4, x12                                #! PC = 0xaaaaaaab5120 *)
uadcs carry x4 x4 x12 carry;
(* stp	x3, x4, [x2]                                #! EA = L0xffffffffe880; PC = 0xaaaaaaab5124 *)
mov L0xffffffffe880 x3;
mov L0xffffffffe888 x4;
(* adcs	x5, x5, x12                                #! PC = 0xaaaaaaab5128 *)
uadcs carry x5 x5 x12 carry;
(* adcs	x6, x6, x13                                #! PC = 0xaaaaaaab512c *)
uadcs carry x6 x6 x13 carry;
(* stp	x5, x6, [x2, #16]                           #! EA = L0xffffffffe890; PC = 0xaaaaaaab5130 *)
mov L0xffffffffe890 x5;
mov L0xffffffffe898 x6;
(* adcs	x7, x7, x14                                #! PC = 0xaaaaaaab5134 *)
uadcs carry x7 x7 x14 carry;
(* adcs	x8, x8, x15                                #! PC = 0xaaaaaaab5138 *)
uadcs carry x8 x8 x15 carry;
(* stp	x7, x8, [x2, #32]                           #! EA = L0xffffffffe8a0; PC = 0xaaaaaaab513c *)
mov L0xffffffffe8a0 x7;
mov L0xffffffffe8a8 x8;
(* adc	x9, x9, x16                                 #! PC = 0xaaaaaaab5140 *)
adc x9 x9 x16 carry;
(* str	x9, [x2, #48]                               #! EA = L0xffffffffe8b0; PC = 0xaaaaaaab5144 *)
mov L0xffffffffe8b0 x9;
(* #! <- SP = 0xffffffffe750 *)
#! 0xffffffffe750 = 0xffffffffe750;
(* #ret                                            #! PC = 0xaaaaaaab5148 *)
#ret                                            #! 0xaaaaaaab5148 = 0xaaaaaaab5148;

mov r0 L0xffffffffe880;
mov r1 L0xffffffffe888;
mov r2 L0xffffffffe890;
mov r3 L0xffffffffe898;
mov r4 L0xffffffffe8a0;
mov r5 L0xffffffffe8a8;
mov r6 L0xffffffffe8b0;

{
true &&  
  and [
    eqsmod (limbs 64 [r0, r1, r2, r3, r4, r5, r6])
          ((limbs 64 [a0, a1, a2, a3, a4, a5, a6]) - (limbs 64 [b0, b1, b2, b3, b4, b5, b6]))
          (limbs 64 [px2_0, px2_1, px2_2, px2_3, px2_4, px2_5, px2_6])]
}