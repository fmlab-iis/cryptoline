(*cv -v -disable_safety -jobs 4 -o cryptoline-fp2add434.log PQCrypto-SIDH/P434/arm64/fp2add434.cl 
Parsing Cryptoline file:		[OK]		0.001904 seconds
Checking well-formedness:		[OK]		0.000498 seconds
Transforming to SSA form:		[OK]		0.000160 seconds
Normalizing specification:		[OK]		0.000173 seconds
Rewriting assignments:			[OK]		0.000242 seconds
Verifying range specification:		[OK]		20.786918 seconds
Rewriting value-preserved casting:	[OK]		0.000015 seconds
Verifying algebraic specification:	[OK]		0.000224 seconds
Verification result:			[OK]		20.790962 seconds
*)

proc main (uint64 a0,uint64 a1,uint64 a2,uint64 a3,uint64 a4,uint64 a5,uint64 a6,
     	   uint64 a7,uint64 a8,uint64 a9,uint64 a10,uint64 a11,uint64 a12,uint64 a13,
     	   uint64 b0,uint64 b1,uint64 b2,uint64 b3,uint64 b4,uint64 b5,uint64 b6,
	   uint64 b7,uint64 b8,uint64 b9,uint64 b10,uint64 b11,uint64 b12,uint64 b13) =
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
	0@448 <=u limbs 64 [a7, a8, a9, a10, a11, a12, a13],
    	(limbs 64 [a7, a8, a9, a10, a11, a12, a13]) <u (limbs 64 [px2_0, px2_1, px2_2, px2_3, px2_4, px2_5, px2_6]),
	0@448 <=u limbs 64 [b0, b1, b2, b3, b4, b5, b6],
    	(limbs 64 [b0, b1, b2, b3, b4, b5, b6]) <u (limbs 64 [px2_0, px2_1, px2_2, px2_3, px2_4, px2_5, px2_6]),
	0@448 <=u limbs 64 [b7, b8, b9, b10, b11, b12, b13],
    	(limbs 64 [b7, b8, b9, b10, b11, b12, b13]) <u (limbs 64 [px2_0, px2_1, px2_2, px2_3, px2_4, px2_5, px2_6])]
;

mov L0xffffffffe538 a0;
mov L0xffffffffe540 a1;
mov L0xffffffffe548 a2;
mov L0xffffffffe550 a3;
mov L0xffffffffe558 a4;
mov L0xffffffffe560 a5;
mov L0xffffffffe568 a6;
mov L0xffffffffe570 a7;
mov L0xffffffffe578 a8;
mov L0xffffffffe580 a9;
mov L0xffffffffe588 a10;
mov L0xffffffffe590 a11;
mov L0xffffffffe598 a12;
mov L0xffffffffe5a0 a13;
mov L0xffffffffe5a8 b0;
mov L0xffffffffe5b0 b1;
mov L0xffffffffe5b8 b2;
mov L0xffffffffe5c0 b3;
mov L0xffffffffe5c8 b4;
mov L0xffffffffe5d0 b5;
mov L0xffffffffe5d8 b6;
mov L0xffffffffe5e0 b7;
mov L0xffffffffe5e8 b8;
mov L0xffffffffe5f0 b9;
mov L0xffffffffe5f8 b10;
mov L0xffffffffe600 b11;
mov L0xffffffffe608 b12;
mov L0xffffffffe610 b13;

mov L0xaaaaaaab4f70 px2_0;
mov L0xaaaaaaab4f78 px2_1;
mov L0xaaaaaaab4f80 px2_3;
mov L0xaaaaaaab4f88 px2_4;
mov L0xaaaaaaab4f90 px2_5;
mov L0xaaaaaaab4f98 px2_6;

nondet x19@uint64; nondet x20@uint64; nondet x21@uint64;
nondet x29@uint64; nondet x30@uint64; nondet sp@uint64;


(* #! -> SP = 0xffffffffe4b0 *)
#! 0xffffffffe4b0 = 0xffffffffe4b0;
(* stp	x29, x30, [sp, #-48]!                       #! EA = L0xffffffffe480; PC = 0xaaaaaaaae010 *)
mov L0xffffffffe480 x29;
mov L0xffffffffe488 x30;
(* mov	x29, sp                                     #! PC = 0xaaaaaaaae014 *)
mov sp x29;
(* stp	x19, x20, [sp, #16]                         #! EA = L0xffffffffe490; PC = 0xaaaaaaaae018 *)
mov L0xffffffffe490 x19;
mov L0xffffffffe498 x20;
(* mov	x19, x0                                     #! PC = 0xaaaaaaaae01c *)
mov x0 x19;
(* mov	x20, x1                                     #! PC = 0xaaaaaaaae020 *)
mov x1 x20;
(* str	x21, [sp, #32]                              #! EA = L0xffffffffe4a0; PC = 0xaaaaaaaae024 *)
mov L0xffffffffe4a0 x21;
(* mov	x21, x2                                     #! PC = 0xaaaaaaaae028 *)
mov x2 x21;
(* #bl	0xaaaaaaab4c30 <fpadd434>                   #! PC = 0xaaaaaaaae02c *)
#bl	0xaaaaaaab4c30 <fpadd434>                   #! 0xaaaaaaaae02c = 0xaaaaaaaae02c;
(* #! -> SP = 0xffffffffe480 *)
#! 0xffffffffe480 = 0xffffffffe480;
(* #b	0xaaaaaaab4ff0 <fpadd434_asm>                #! PC = 0xaaaaaaab4c30 *)
#b	0xaaaaaaab4ff0 <fpadd434_asm>                #! 0xaaaaaaab4c30 = 0xaaaaaaab4c30;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe538; Value = 0x515af3853d3ffc4f; PC = 0xaaaaaaab4ff0 *)
mov x3 L0xffffffffe538;
mov x4 L0xffffffffe540;
(* ldp	x11, x12, [x1]                              #! EA = L0xffffffffe5a8; Value = 0x150b94d81317c178; PC = 0xaaaaaaab4ff4 *)
mov x11 L0xffffffffe5a8;
mov x12 L0xffffffffe5b0;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffe548; Value = 0x9bfb8256f5a062d3; PC = 0xaaaaaaab4ff8 *)
mov x5 L0xffffffffe548;
mov x6 L0xffffffffe550;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0xffffffffe5b8; Value = 0xad3bb55e04f409c7; PC = 0xaaaaaaab4ffc *)
mov x13 L0xffffffffe5b8;
mov x14 L0xffffffffe5c0;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe558; Value = 0xdee9099f2bb27634; PC = 0xaaaaaaab5000 *)
mov x7 L0xffffffffe558;
mov x8 L0xffffffffe560;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0xffffffffe5c8; Value = 0x9ef94549e43ab50c; PC = 0xaaaaaaab5004 *)
mov x15 L0xffffffffe5c8;
mov x16 L0xffffffffe5d0;
(* adds	x3, x3, x11                                #! PC = 0xaaaaaaab5008 *)
uadds carry x3 x3 x11;
(* adcs	x4, x4, x12                                #! PC = 0xaaaaaaab500c *)
uadcs carry x4 x4 x12 carry;
(* ldr	x9, [x0, #48]                               #! EA = L0xffffffffe568; Value = 0x0000dfe53d010dc9; PC = 0xaaaaaaab5010 *)
mov x9 L0xffffffffe568;
(* ldr	x17, [x1, #48]                              #! EA = L0xffffffffe5d8; Value = 0x0000c8d0b38c1b55; PC = 0xaaaaaaab5014 *)
mov x17 L0xffffffffe5d8;
(* adcs	x5, x5, x13                                #! PC = 0xaaaaaaab5018 *)
uadcs carry x5 x5 x13 carry;
(* adcs	x6, x6, x14                                #! PC = 0xaaaaaaab501c *)
uadcs carry x6 x6 x14 carry;
(* ldr	x11, 0xaaaaaaab4f70 <p434x2>                #! PC = 0xaaaaaaab5020 *)
mov x11 L0xaaaaaaab4f70;
(* adcs	x7, x7, x15                                #! PC = 0xaaaaaaab5024 *)
uadcs carry x7 x7 x15 carry;
(* ldr	x12, 0xaaaaaaab4f78 <p434x2+8>              #! PC = 0xaaaaaaab5028 *)
mov x12 L0xaaaaaaab4f78;
(* adcs	x8, x8, x16                                #! PC = 0xaaaaaaab502c *)
uadcs carry x8 x8 x16 carry;
(* ldr	x13, 0xaaaaaaab4f80 <p434x2+16>             #! PC = 0xaaaaaaab5030 *)
mov x13 L0xaaaaaaab4f80;
(* adc	x9, x9, x17                                 #! PC = 0xaaaaaaab5034 *)
adc x9 x9 x17 carry;
(* subs	x3, x3, x11                                #! PC = 0xaaaaaaab5038 *)
usubc carry x3 x3 x11;
(* ldr	x14, 0xaaaaaaab4f88 <p434x2+24>             #! PC = 0xaaaaaaab503c *)
mov x14 L0xaaaaaaab4f88;
(* sbcs	x4, x4, x12                                #! PC = 0xaaaaaaab5040 *)
usbcs carry x4 x4 x12 carry;
(* ldr	x15, 0xaaaaaaab4f90 <p434x2+32>             #! PC = 0xaaaaaaab5044 *)
mov x15 L0xaaaaaaab4f90;
(* sbcs	x5, x5, x12                                #! PC = 0xaaaaaaab5048 *)
usbcs carry x5 x5 x12 carry;
(* ldr	x16, 0xaaaaaaab4f98 <p434x2+40>             #! PC = 0xaaaaaaab504c *)
mov x16 L0xaaaaaaab4f98;
(* sbcs	x6, x6, x13                                #! PC = 0xaaaaaaab5050 *)
usbcs carry x6 x6 x13 carry;
(* sbcs	x7, x7, x14                                #! PC = 0xaaaaaaab5054 *)
usbcs carry x7 x7 x14 carry;
(* sbcs	x8, x8, x15                                #! PC = 0xaaaaaaab5058 *)
usbcs carry x8 x8 x15 carry;
(* sbcs	x9, x9, x16                                #! PC = 0xaaaaaaab505c *)
usbcs carry x9 x9 x16 carry;
(* ngc	x10, xzr                                    #! PC = 0xaaaaaaab5060 *)
cmov x10 carry 0@uint64 0xffffffffffffffff@uint64;
(* and	x11, x11, x10                               #! PC = 0xaaaaaaab5064 *)
and x11@uint64 x11 x10;
(* and	x12, x12, x10                               #! PC = 0xaaaaaaab5068 *)
and x12@uint64 x12 x10;
(* and	x13, x13, x10                               #! PC = 0xaaaaaaab506c *)
and x13@uint64 x13 x10;
(* and	x14, x14, x10                               #! PC = 0xaaaaaaab5070 *)
and x14@uint64 x14 x10;
(* and	x15, x15, x10                               #! PC = 0xaaaaaaab5074 *)
and x15@uint64 x15 x10;
(* and	x16, x16, x10                               #! PC = 0xaaaaaaab5078 *)
and x16@uint64 x16 x10;
(* adds	x3, x3, x11                                #! PC = 0xaaaaaaab507c *)
uadds carry x3 x3 x11;
(* adcs	x4, x4, x12                                #! PC = 0xaaaaaaab5080 *)
uadcs carry x4 x4 x12 carry;
(* stp	x3, x4, [x2]                                #! EA = L0xffffffffe688; PC = 0xaaaaaaab5084 *)
mov L0xffffffffe688 x3;
mov L0xffffffffe690 x4;
(* adcs	x5, x5, x12                                #! PC = 0xaaaaaaab5088 *)
uadcs carry x5 x5 x12 carry;
(* adcs	x6, x6, x13                                #! PC = 0xaaaaaaab508c *)
uadcs carry x6 x6 x13 carry;
(* stp	x5, x6, [x2, #16]                           #! EA = L0xffffffffe698; PC = 0xaaaaaaab5090 *)
mov L0xffffffffe698 x5;
mov L0xffffffffe6a0 x6;
(* adcs	x7, x7, x14                                #! PC = 0xaaaaaaab5094 *)
uadcs carry x7 x7 x14 carry;
(* adcs	x8, x8, x15                                #! PC = 0xaaaaaaab5098 *)
uadcs carry x8 x8 x15 carry;
(* stp	x7, x8, [x2, #32]                           #! EA = L0xffffffffe6a8; PC = 0xaaaaaaab509c *)
mov L0xffffffffe6a8 x7;
mov L0xffffffffe6b0 x8;
(* adc	x9, x9, x16                                 #! PC = 0xaaaaaaab50a0 *)
adc x9 x9 x16 carry;
(* str	x9, [x2, #48]                               #! EA = L0xffffffffe6b8; PC = 0xaaaaaaab50a4 *)
mov L0xffffffffe6b8 x9;
(* #! <- SP = 0xffffffffe480 *)
#! 0xffffffffe480 = 0xffffffffe480;
(* #ret                                            #! PC = 0xaaaaaaab50a8 *)
#ret                                            #! 0xaaaaaaab50a8 = 0xaaaaaaab50a8;
(* add	x2, x21, #0x38                              #! PC = 0xaaaaaaaae030 *)
add x2 x21 0x38@uint64;
(* add	x1, x20, #0x38                              #! PC = 0xaaaaaaaae034 *)
add x1 x20 0x38@uint64;
(* add	x0, x19, #0x38                              #! PC = 0xaaaaaaaae038 *)
add x0 x19 0x38@uint64;
(* ldp	x19, x20, [sp, #16]                         #! EA = L0xffffffffe490; Value = 0x0000ffffffffe688; PC = 0xaaaaaaaae03c *)
mov x19 L0xffffffffe490;
mov x20 L0xffffffffe498;
(* ldr	x21, [sp, #32]                              #! EA = L0xffffffffe4a0; Value = 0x0000ffffffffe5a8; PC = 0xaaaaaaaae040 *)
mov x21 L0xffffffffe4a0;
(* ldp	x29, x30, [sp], #48                         #! EA = L0xffffffffe480; Value = 0x0000ffffffffe4b0; PC = 0xaaaaaaaae044 *)
mov x29 L0xffffffffe480;
mov x30 L0xffffffffe488;
(* #b	0xaaaaaaab4c30 <fpadd434>                    #! PC = 0xaaaaaaaae048 *)
#b	0xaaaaaaab4c30 <fpadd434>                    #! 0xaaaaaaaae048 = 0xaaaaaaaae048;
(* #b	0xaaaaaaab4ff0 <fpadd434_asm>                #! PC = 0xaaaaaaab4c30 *)
#b	0xaaaaaaab4ff0 <fpadd434_asm>                #! 0xaaaaaaab4c30 = 0xaaaaaaab4c30;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe570; Value = 0xdbac2803dd43265d; PC = 0xaaaaaaab4ff0 *)
mov x3 L0xffffffffe570;
mov x4 L0xffffffffe578;
(* ldp	x11, x12, [x1]                              #! EA = L0xffffffffe5e0; Value = 0x595ca94d350a0287; PC = 0xaaaaaaab4ff4 *)
mov x11 L0xffffffffe5e0;
mov x12 L0xffffffffe5e8;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffe580; Value = 0xb46ecca64bebfafa; PC = 0xaaaaaaab4ff8 *)
mov x5 L0xffffffffe580;
mov x6 L0xffffffffe588;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0xffffffffe5f0; Value = 0xc3d0b46d488d2186; PC = 0xaaaaaaab4ffc *)
mov x13 L0xffffffffe5f0;
mov x14 L0xffffffffe5f8;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe590; Value = 0x341c82e840d6c03d; PC = 0xaaaaaaab5000 *)
mov x7 L0xffffffffe590;
mov x8 L0xffffffffe598;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0xffffffffe600; Value = 0x68b9e00cf6882e35; PC = 0xaaaaaaab5004 *)
mov x15 L0xffffffffe600;
mov x16 L0xffffffffe608;
(* adds	x3, x3, x11                                #! PC = 0xaaaaaaab5008 *)
uadds carry x3 x3 x11;
(* adcs	x4, x4, x12                                #! PC = 0xaaaaaaab500c *)
uadcs carry x4 x4 x12 carry;
(* ldr	x9, [x0, #48]                               #! EA = L0xffffffffe5a0; Value = 0x0001f178f582ac4f; PC = 0xaaaaaaab5010 *)
mov x9 L0xffffffffe5a0;
(* ldr	x17, [x1, #48]                              #! EA = L0xffffffffe610; Value = 0x000160d239abcaaf; PC = 0xaaaaaaab5014 *)
mov x17 L0xffffffffe610;
(* adcs	x5, x5, x13                                #! PC = 0xaaaaaaab5018 *)
uadcs carry x5 x5 x13 carry;
(* adcs	x6, x6, x14                                #! PC = 0xaaaaaaab501c *)
uadcs carry x6 x6 x14 carry;
(* ldr	x11, 0xaaaaaaab4f70 <p434x2>                #! PC = 0xaaaaaaab5020 *)
mov x11 L0xaaaaaaab4f70;
(* adcs	x7, x7, x15                                #! PC = 0xaaaaaaab5024 *)
uadcs carry x7 x7 x15 carry;
(* ldr	x12, 0xaaaaaaab4f78 <p434x2+8>              #! PC = 0xaaaaaaab5028 *)
mov x12 L0xaaaaaaab4f78;
(* adcs	x8, x8, x16                                #! PC = 0xaaaaaaab502c *)
uadcs carry x8 x8 x16 carry;
(* ldr	x13, 0xaaaaaaab4f80 <p434x2+16>             #! PC = 0xaaaaaaab5030 *)
mov x13 L0xaaaaaaab4f80;
(* adc	x9, x9, x17                                 #! PC = 0xaaaaaaab5034 *)
adc x9 x9 x17 carry;
(* subs	x3, x3, x11                                #! PC = 0xaaaaaaab5038 *)
usubc carry x3 x3 x11;
(* ldr	x14, 0xaaaaaaab4f88 <p434x2+24>             #! PC = 0xaaaaaaab503c *)
mov x14 L0xaaaaaaab4f88;
(* sbcs	x4, x4, x12                                #! PC = 0xaaaaaaab5040 *)
usbcs carry x4 x4 x12 carry;
(* ldr	x15, 0xaaaaaaab4f90 <p434x2+32>             #! PC = 0xaaaaaaab5044 *)
mov x15 L0xaaaaaaab4f90;
(* sbcs	x5, x5, x12                                #! PC = 0xaaaaaaab5048 *)
usbcs carry x5 x5 x12 carry;
(* ldr	x16, 0xaaaaaaab4f98 <p434x2+40>             #! PC = 0xaaaaaaab504c *)
mov x16 L0xaaaaaaab4f98;
(* sbcs	x6, x6, x13                                #! PC = 0xaaaaaaab5050 *)
usbcs carry x6 x6 x13 carry;
(* sbcs	x7, x7, x14                                #! PC = 0xaaaaaaab5054 *)
usbcs carry x7 x7 x14 carry;
(* sbcs	x8, x8, x15                                #! PC = 0xaaaaaaab5058 *)
usbcs carry x8 x8 x15 carry;
(* sbcs	x9, x9, x16                                #! PC = 0xaaaaaaab505c *)
usbcs carry x9 x9 x16 carry;
(* ngc	x10, xzr                                    #! PC = 0xaaaaaaab5060 *)
cmov x10 carry 0@uint64 0xffffffffffffffff@uint64;
(* and	x11, x11, x10                               #! PC = 0xaaaaaaab5064 *)
and x11@uint64 x11 x10;
(* and	x12, x12, x10                               #! PC = 0xaaaaaaab5068 *)
and x12@uint64 x12 x10;
(* and	x13, x13, x10                               #! PC = 0xaaaaaaab506c *)
and x13@uint64 x13 x10;
(* and	x14, x14, x10                               #! PC = 0xaaaaaaab5070 *)
and x14@uint64 x14 x10;
(* and	x15, x15, x10                               #! PC = 0xaaaaaaab5074 *)
and x15@uint64 x15 x10;
(* and	x16, x16, x10                               #! PC = 0xaaaaaaab5078 *)
and x16@uint64 x16 x10;
(* adds	x3, x3, x11                                #! PC = 0xaaaaaaab507c *)
uadds carry x3 x3 x11;
(* adcs	x4, x4, x12                                #! PC = 0xaaaaaaab5080 *)
uadcs carry x4 x4 x12 carry;
(* stp	x3, x4, [x2]                                #! EA = L0xffffffffe6c0; PC = 0xaaaaaaab5084 *)
mov L0xffffffffe6c0 x3;
mov L0xffffffffe6c8 x4;
(* adcs	x5, x5, x12                                #! PC = 0xaaaaaaab5088 *)
uadcs carry x5 x5 x12 carry;
(* adcs	x6, x6, x13                                #! PC = 0xaaaaaaab508c *)
uadcs carry x6 x6 x13 carry;
(* stp	x5, x6, [x2, #16]                           #! EA = L0xffffffffe6d0; PC = 0xaaaaaaab5090 *)
mov L0xffffffffe6d0 x5;
mov L0xffffffffe6d8 x6;
(* adcs	x7, x7, x14                                #! PC = 0xaaaaaaab5094 *)
uadcs carry x7 x7 x14 carry;
(* adcs	x8, x8, x15                                #! PC = 0xaaaaaaab5098 *)
uadcs carry x8 x8 x15 carry;
(* stp	x7, x8, [x2, #32]                           #! EA = L0xffffffffe6e0; PC = 0xaaaaaaab509c *)
mov L0xffffffffe6e0 x7;
mov L0xffffffffe6e8 x8;
(* adc	x9, x9, x16                                 #! PC = 0xaaaaaaab50a0 *)
adc x9 x9 x16 carry;
(* str	x9, [x2, #48]                               #! EA = L0xffffffffe6f0; PC = 0xaaaaaaab50a4 *)
mov L0xffffffffe6f0 x9;
(* #! <- SP = 0xffffffffe4b0 *)
#! 0xffffffffe4b0 = 0xffffffffe4b0;
(* #ret                                            #! PC = 0xaaaaaaab50a8 *)
#ret                                            #! 0xaaaaaaab50a8 = 0xaaaaaaab50a8;

mov r0 L0xffffffffe688;
mov r1 L0xffffffffe690;
mov r2 L0xffffffffe698;
mov r3 L0xffffffffe6a0;
mov r4 L0xffffffffe6a8;
mov r5 L0xffffffffe6b0;
mov r6 L0xffffffffe6b8;
mov r7 L0xffffffffe6c0;
mov r8 L0xffffffffe6c8;
mov r9 L0xffffffffe6d0;
mov r10 L0xffffffffe6d8;
mov r11 L0xffffffffe6e0;
mov r12 L0xffffffffe6e8;
mov r13 L0xffffffffe6f0;

{
true &&  
  and [ eqmod (limbs 64 [r0, r1, r2, r3, r4, r5, r6])
          ((limbs 64 [a0, a1, a2, a3, a4, a5, a6]) + (limbs 64 [b0, b1, b2, b3, b4, b5, b6]))
          (limbs 64 [px2_0, px2_1, px2_2, px2_3, px2_4, px2_5, px2_6]),
	eqmod (limbs 64 [r7, r8, r9, r10, r11, r12, r13])
          ((limbs 64 [a7, a8, a9, a10, a11, a12, a13]) + (limbs 64 [b7, b8, b9, b10, b11, b12, b13]))
          (limbs 64 [px2_0, px2_1, px2_2, px2_3, px2_4, px2_5, px2_6]),
	0@448  <=u limbs 64 [r0, r1, r2, r3, r4, r5, r6],
	limbs 64 [r0, r1, r2, r3, r4, r5, r6] <u
        limbs 64 [px2_0, px2_1, px2_2, px2_3, px2_4, px2_5, px2_6],
	0@448  <=u limbs 64 [r7, r8, r9, r10, r11, r12, r13],
	limbs 64 [r7, r8, r9, r10, r11, r12, r13] <u
        limbs 64 [px2_0, px2_1, px2_2, px2_3, px2_4, px2_5, px2_6]]
}

