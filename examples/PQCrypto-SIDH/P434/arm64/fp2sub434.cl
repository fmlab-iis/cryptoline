(*cv -v -disable_safety -jobs 4 -o cryptoline-fp2sub434.log PQCrypto-SIDH/P434/arm64/fp2sub434.cl 
Parsing Cryptoline file:		[OK]		0.001626 seconds
Checking well-formedness:		[OK]		0.000435 seconds
Transforming to SSA form:		[OK]		0.000135 seconds
Normalizing specification:		[OK]		0.000138 seconds
Rewriting assignments:			[OK]		0.000212 seconds
Verifying range specification:		[OK]		35.596057 seconds
Rewriting value-preserved casting:	[OK]		0.000015 seconds
Verifying algebraic specification:	[OK]		0.000260 seconds
Verification result:			[OK]		35.599704 seconds
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
(* stp	x29, x30, [sp, #-48]!                       #! EA = L0xffffffffe480; PC = 0xaaaaaaaae050 *)
mov L0xffffffffe480 x29;
mov L0xffffffffe488 x30;
(* mov	x29, sp                                     #! PC = 0xaaaaaaaae054 *)
mov sp x29;
(* stp	x19, x20, [sp, #16]                         #! EA = L0xffffffffe490; PC = 0xaaaaaaaae058 *)
mov L0xffffffffe490 x19;
mov L0xffffffffe498 x20;
(* mov	x19, x0                                     #! PC = 0xaaaaaaaae05c *)
mov x0 x19;
(* mov	x20, x1                                     #! PC = 0xaaaaaaaae060 *)
mov x1 x20;
(* str	x21, [sp, #32]                              #! EA = L0xffffffffe4a0; PC = 0xaaaaaaaae064 *)
mov L0xffffffffe4a0 x21;
(* mov	x21, x2                                     #! PC = 0xaaaaaaaae068 *)
mov x2 x21;
(* #bl	0xaaaaaaab4c34 <fpsub434>                   #! PC = 0xaaaaaaaae06c *)
#bl	0xaaaaaaab4c34 <fpsub434>                   #! 0xaaaaaaaae06c = 0xaaaaaaaae06c;
(* #! -> SP = 0xffffffffe480 *)
#! 0xffffffffe480 = 0xffffffffe480;
(* #b	0xaaaaaaab50ac <fpsub434_asm>                #! PC = 0xaaaaaaab4c34 *)
#b	0xaaaaaaab50ac <fpsub434_asm>                #! 0xaaaaaaab4c34 = 0xaaaaaaab4c34;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe538; Value = 0xb979d681c7e367d6; PC = 0xaaaaaaab50ac *)
mov x3 L0xffffffffe538;
mov x4 L0xffffffffe540;
(* ldp	x11, x12, [x1]                              #! EA = L0xffffffffe5a8; Value = 0xea34f801adbdf7ed; PC = 0xaaaaaaab50b0 *)
mov x11 L0xffffffffe5a8;
mov x12 L0xffffffffe5b0;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffe548; Value = 0xcf149957f9641329; PC = 0xaaaaaaab50b4 *)
mov x5 L0xffffffffe548;
mov x6 L0xffffffffe550;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0xffffffffe5b8; Value = 0xd3527a42e30897e8; PC = 0xaaaaaaab50b8 *)
mov x13 L0xffffffffe5b8;
mov x14 L0xffffffffe5c0;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe558; Value = 0x3ced9635341d5fb2; PC = 0xaaaaaaab50bc *)
mov x7 L0xffffffffe558;
mov x8 L0xffffffffe560;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0xffffffffe5c8; Value = 0x39094c471f184f1d; PC = 0xaaaaaaab50c0 *)
mov x15 L0xffffffffe5c8;
mov x16 L0xffffffffe5d0;
(* subs	x3, x3, x11                                #! PC = 0xaaaaaaab50c4 *)
subc carry x3 x3 x11;
(* sbcs	x4, x4, x12                                #! PC = 0xaaaaaaab50c8 *)
sbcs carry x4 x4 x12 carry;
(* ldr	x9, [x0, #48]                               #! EA = L0xffffffffe568; Value = 0x0001292dc615936e; PC = 0xaaaaaaab50cc *)
mov x9 L0xffffffffe568;
(* ldr	x17, [x1, #48]                              #! EA = L0xffffffffe5d8; Value = 0x00000cd131ba57ef; PC = 0xaaaaaaab50d0 *)
mov x17 L0xffffffffe5d8;
(* sbcs	x5, x5, x13                                #! PC = 0xaaaaaaab50d4 *)
sbcs carry x5 x5 x13 carry;
(* sbcs	x6, x6, x14                                #! PC = 0xaaaaaaab50d8 *)
sbcs carry x6 x6 x14 carry;
(* ldr	x11, 0xaaaaaaab4f70 <p434x2>                #! PC = 0xaaaaaaab50dc *)
mov x11 L0xaaaaaaab4f70;
(* sbcs	x7, x7, x15                                #! PC = 0xaaaaaaab50e0 *)
sbcs carry x7 x7 x15 carry;
(* ldr	x12, 0xaaaaaaab4f78 <p434x2+8>              #! PC = 0xaaaaaaab50e4 *)
mov x12 L0xaaaaaaab4f78;
(* sbcs	x8, x8, x16                                #! PC = 0xaaaaaaab50e8 *)
sbcs carry x8 x8 x16 carry;
(* ldr	x13, 0xaaaaaaab4f80 <p434x2+16>             #! PC = 0xaaaaaaab50ec *)
mov x13 L0xaaaaaaab4f80;
(* sbcs	x9, x9, x17                                #! PC = 0xaaaaaaab50f0 *)
sbcs carry x9 x9 x17 carry;
(* ldr	x14, 0xaaaaaaab4f88 <p434x2+24>             #! PC = 0xaaaaaaab50f4 *)
mov x14 L0xaaaaaaab4f88;
(* ngc	x10, xzr                                    #! PC = 0xaaaaaaab50f8 *)
cmov x10 carry 0@uint64 0xffffffffffffffff@uint64;
(* ldr	x15, 0xaaaaaaab4f90 <p434x2+32>             #! PC = 0xaaaaaaab50fc *)
mov x15 L0xaaaaaaab4f90;
(* and	x11, x11, x10                               #! PC = 0xaaaaaaab5100 *)
and x11@uint64 x11 x10;
(* ldr	x16, 0xaaaaaaab4f98 <p434x2+40>             #! PC = 0xaaaaaaab5104 *)
mov x16 L0xaaaaaaab4f98;
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
adds carry x3 x3 x11;
(* adcs	x4, x4, x12                                #! PC = 0xaaaaaaab5120 *)
adcs carry x4 x4 x12 carry;
(* stp	x3, x4, [x2]                                #! EA = L0xffffffffe688; PC = 0xaaaaaaab5124 *)
mov L0xffffffffe688 x3;
mov L0xffffffffe690 x4;
(* adcs	x5, x5, x12                                #! PC = 0xaaaaaaab5128 *)
adcs carry x5 x5 x12 carry;
(* adcs	x6, x6, x13                                #! PC = 0xaaaaaaab512c *)
adcs carry x6 x6 x13 carry;
(* stp	x5, x6, [x2, #16]                           #! EA = L0xffffffffe698; PC = 0xaaaaaaab5130 *)
mov L0xffffffffe698 x5;
mov L0xffffffffe6a0 x6;
(* adcs	x7, x7, x14                                #! PC = 0xaaaaaaab5134 *)
adcs carry x7 x7 x14 carry;
(* adcs	x8, x8, x15                                #! PC = 0xaaaaaaab5138 *)
adcs carry x8 x8 x15 carry;
(* stp	x7, x8, [x2, #32]                           #! EA = L0xffffffffe6a8; PC = 0xaaaaaaab513c *)
mov L0xffffffffe6a8 x7;
mov L0xffffffffe6b0 x8;
(* adc	x9, x9, x16                                 #! PC = 0xaaaaaaab5140 *)
adc x9 x9 x16 carry;
(* str	x9, [x2, #48]                               #! EA = L0xffffffffe6b8; PC = 0xaaaaaaab5144 *)
mov L0xffffffffe6b8 x9;
(* #! <- SP = 0xffffffffe480 *)
#! 0xffffffffe480 = 0xffffffffe480;
(* #ret                                            #! PC = 0xaaaaaaab5148 *)
#ret                                            #! 0xaaaaaaab5148 = 0xaaaaaaab5148;



(* add	x2, x21, #0x38                              #! PC = 0xaaaaaaaae070 *)
#add x2 x21 0x38@uint64;
(* add	x1, x20, #0x38                              #! PC = 0xaaaaaaaae074 *)
#add x1 x20 0x38@uint64;
(* add	x0, x19, #0x38                              #! PC = 0xaaaaaaaae078 *)
#add x0 x19 0x38@uint64;
(* ldp	x19, x20, [sp, #16]                         #! EA = L0xffffffffe490; Value = 0x0000ffffffffe688; PC = 0xaaaaaaaae07c *)
#mov x19 L0xffffffffe490;
#mov x20 L0xffffffffe498;
(* ldr	x21, [sp, #32]                              #! EA = L0xffffffffe4a0; Value = 0x0000ffffffffe5a8; PC = 0xaaaaaaaae080 *)
#mov x21 L0xffffffffe4a0;
(* ldp	x29, x30, [sp], #48                         #! EA = L0xffffffffe480; Value = 0x0000ffffffffe4b0; PC = 0xaaaaaaaae084 *)
#mov x29 L0xffffffffe480;
#mov x30 L0xffffffffe488;
(* #b	0xaaaaaaab4c34 <fpsub434>                    #! PC = 0xaaaaaaaae088 *)
#b	0xaaaaaaab4c34 <fpsub434>                    #! 0xaaaaaaaae088 = 0xaaaaaaaae088;
(* #b	0xaaaaaaab50ac <fpsub434_asm>                #! PC = 0xaaaaaaab4c34 *)
#b	0xaaaaaaab50ac <fpsub434_asm>                #! 0xaaaaaaab4c34 = 0xaaaaaaab4c34;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe570; Value = 0xdc9d3b2947bfdec7; PC = 0xaaaaaaab50ac *)
mov x3 L0xffffffffe570;
mov x4 L0xffffffffe578;
(* ldp	x11, x12, [x1]                              #! EA = L0xffffffffe5e0; Value = 0xed1a48cfb0b7a934; PC = 0xaaaaaaab50b0 *)
mov x11 L0xffffffffe5e0;
mov x12 L0xffffffffe5e8;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffe580; Value = 0xaf82c941669ae673; PC = 0xaaaaaaab50b4 *)
mov x5 L0xffffffffe580;
mov x6 L0xffffffffe588;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0xffffffffe5f0; Value = 0xbfe0d9d0098a781a; PC = 0xaaaaaaab50b8 *)
mov x13 L0xffffffffe5f0;
mov x14 L0xffffffffe5f8;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe590; Value = 0xd0ee6b3512cefae8; PC = 0xaaaaaaab50bc *)
mov x7 L0xffffffffe590;
mov x8 L0xffffffffe598;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0xffffffffe600; Value = 0x769347e23b3163f9; PC = 0xaaaaaaab50c0 *)
mov x15 L0xffffffffe600;
mov x16 L0xffffffffe608;
(* subs	x3, x3, x11                                #! PC = 0xaaaaaaab50c4 *)
subc carry x3 x3 x11;
(* sbcs	x4, x4, x12                                #! PC = 0xaaaaaaab50c8 *)
sbcs carry x4 x4 x12 carry;
(* ldr	x9, [x0, #48]                               #! EA = L0xffffffffe5a0; Value = 0x000156d6d2d40d91; PC = 0xaaaaaaab50cc *)
mov x9 L0xffffffffe5a0;
(* ldr	x17, [x1, #48]                              #! EA = L0xffffffffe610; Value = 0x0001496909863b1c; PC = 0xaaaaaaab50d0 *)
mov x17 L0xffffffffe610;
(* sbcs	x5, x5, x13                                #! PC = 0xaaaaaaab50d4 *)
sbcs carry x5 x5 x13 carry;
(* sbcs	x6, x6, x14                                #! PC = 0xaaaaaaab50d8 *)
sbcs carry x6 x6 x14 carry;
(* ldr	x11, 0xaaaaaaab4f70 <p434x2>                #! PC = 0xaaaaaaab50dc *)
mov x11 L0xaaaaaaab4f70;
(* sbcs	x7, x7, x15                                #! PC = 0xaaaaaaab50e0 *)
sbcs carry x7 x7 x15 carry;
(* ldr	x12, 0xaaaaaaab4f78 <p434x2+8>              #! PC = 0xaaaaaaab50e4 *)
mov x12 L0xaaaaaaab4f78;
(* sbcs	x8, x8, x16                                #! PC = 0xaaaaaaab50e8 *)
sbcs carry x8 x8 x16 carry;
(* ldr	x13, 0xaaaaaaab4f80 <p434x2+16>             #! PC = 0xaaaaaaab50ec *)
mov x13 L0xaaaaaaab4f80;
(* sbcs	x9, x9, x17                                #! PC = 0xaaaaaaab50f0 *)
sbcs carry x9 x9 x17 carry;
(* ldr	x14, 0xaaaaaaab4f88 <p434x2+24>             #! PC = 0xaaaaaaab50f4 *)
mov x14 L0xaaaaaaab4f88;
(* ngc	x10, xzr                                    #! PC = 0xaaaaaaab50f8 *)
cmov x10 carry 0@uint64 0xffffffffffffffff@uint64;
(* ldr	x15, 0xaaaaaaab4f90 <p434x2+32>             #! PC = 0xaaaaaaab50fc *)
mov x15 L0xaaaaaaab4f90;
(* and	x11, x11, x10                               #! PC = 0xaaaaaaab5100 *)
and x11@uint64 x11 x10;
(* ldr	x16, 0xaaaaaaab4f98 <p434x2+40>             #! PC = 0xaaaaaaab5104 *)
mov x16 L0xaaaaaaab4f98;
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
adds carry x3 x3 x11;
(* adcs	x4, x4, x12                                #! PC = 0xaaaaaaab5120 *)
adcs carry x4 x4 x12 carry;
(* stp	x3, x4, [x2]                                #! EA = L0xffffffffe6c0; PC = 0xaaaaaaab5124 *)
mov L0xffffffffe6c0 x3;
mov L0xffffffffe6c8 x4;
(* adcs	x5, x5, x12                                #! PC = 0xaaaaaaab5128 *)
adcs carry x5 x5 x12 carry;
(* adcs	x6, x6, x13                                #! PC = 0xaaaaaaab512c *)
adcs carry x6 x6 x13 carry;
(* stp	x5, x6, [x2, #16]                           #! EA = L0xffffffffe6d0; PC = 0xaaaaaaab5130 *)
mov L0xffffffffe6d0 x5;
mov L0xffffffffe6d8 x6;
(* adcs	x7, x7, x14                                #! PC = 0xaaaaaaab5134 *)
adcs carry x7 x7 x14 carry;
(* adcs	x8, x8, x15                                #! PC = 0xaaaaaaab5138 *)
adcs carry x8 x8 x15 carry;
(* stp	x7, x8, [x2, #32]                           #! EA = L0xffffffffe6e0; PC = 0xaaaaaaab513c *)
mov L0xffffffffe6e0 x7;
mov L0xffffffffe6e8 x8;
(* adc	x9, x9, x16                                 #! PC = 0xaaaaaaab5140 *)
adc x9 x9 x16 carry;
(* str	x9, [x2, #48]                               #! EA = L0xffffffffe6f0; PC = 0xaaaaaaab5144 *)
mov L0xffffffffe6f0 x9;
(* #! <- SP = 0xffffffffe4b0 *)
#! 0xffffffffe4b0 = 0xffffffffe4b0;
(* #ret                                            #! PC = 0xaaaaaaab5148 *)
#ret                                            #! 0xaaaaaaab5148 = 0xaaaaaaab5148;

mov r0 L0xffffffffe688;
mov r1 L0xffffffffe690;
mov r2 L0xffffffffe698;
mov r3 L0xffffffffe6a0;
mov r4 L0xffffffffe6a8;
mov r5 L0xffffffffe6b0;
mov r6 L0xffffffffe6b8;

mov r7  L0xffffffffe6c0;
mov r8  L0xffffffffe6c8;
mov r9  L0xffffffffe6d0;
mov r10 L0xffffffffe6d8;
mov r11 L0xffffffffe6e0;
mov r12 L0xffffffffe6e8;
mov r13 L0xffffffffe6f0;

{
true &&  
  and [
        eqsmod (limbs 64 [r0, r1, r2, r3, r4, r5, r6])
          ((limbs 64 [a0, a1, a2, a3, a4, a5, a6]) - (limbs 64 [b0, b1, b2, b3, b4, b5, b6]))
          (limbs 64 [px2_0, px2_1, px2_2, px2_3, px2_4, px2_5, px2_6]),
	  limbs 64 [r0, r1, r2, r3, r4, r5, r6] <u
          limbs 64 [px2_0, px2_1, px2_2, px2_3, px2_4, px2_5, px2_6],
	eqsmod (limbs 64 [r7, r8, r9, r10, r11, r12, r13])
          ((limbs 64 [a7, a8, a9, a10, a11, a12, a13]) - (limbs 64 [b7, b8, b9, b10, b11, b12, b13]))
          (limbs 64 [p_0, p_1, p_2, p_3, p_4, p_5, p_6]),
	  limbs 64 [r7, r8, r9, r10, r11, r12, r13] <u
          limbs 64 [px2_0, px2_1, px2_2, px2_3, px2_4, px2_5, px2_6]]
}
