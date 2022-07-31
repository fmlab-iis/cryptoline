(*cv -v -disable_safety -jobs 4 -btor -slicing -o cryptoline-fp434add.log PQCrypto-SIDH/P434/arm64/fpadd434.cl
Parsing Cryptoline file:		[OK]		0.001120 seconds
Checking well-formedness:		[OK]		0.000243 seconds
Transforming to SSA form:		[OK]		0.000108 seconds
Normalizing specification:		[OK]		0.000104 seconds
Rewriting assignments:			[OK]		0.000145 seconds
Verifying range specification:		[OK]		22.771437 seconds
Rewriting value-preserved casting:	[OK]		0.000067 seconds
Verifying algebraic specification:	[OK]		0.000220 seconds
Verification result:			[OK]		22.773771 seconds
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
    	(limbs 64 [b0, b1, b2, b3, b4, b5, b6]) <u (limbs 64 [px2_0, px2_1, px2_2, px2_3, px2_4, px2_5, px2_6])]
;

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
(* #b	0xaaaaaaab4ff0 <fpadd434_asm>                #! PC = 0xaaaaaaab4c30 *)
#b	0xaaaaaaab4ff0 <fpadd434_asm>                #! 0xaaaaaaab4c30 = 0xaaaaaaab4c30;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe7d8; Value = 0xec4aff517369c667; PC = 0xaaaaaaab4ff0 *)
mov x3 L0xffffffffe7d8;
mov x4 L0xffffffffe7e0;
(* ldp	x11, x12, [x1]                              #! EA = L0xffffffffe810; Value = 0x87dc3d214174820e; PC = 0xaaaaaaab4ff4 *)
mov x11 L0xffffffffe810;
mov x12 L0xffffffffe818;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffe7e8; Value = 0x8de7e81bf854c27c; PC = 0xaaaaaaab4ff8 *)
mov x5 L0xffffffffe7e8;
mov x6 L0xffffffffe7f0;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0xffffffffe820; Value = 0x966bdcea977e013e; PC = 0xaaaaaaab4ffc *)
mov x13 L0xffffffffe820;
mov x14 L0xffffffffe828;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe7f8; Value = 0x5aa35831b70d3266; PC = 0xaaaaaaab5000 *)
mov x7 L0xffffffffe7f8;
mov x8 L0xffffffffe800;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0xffffffffe830; Value = 0x5cdb18ec543caf32; PC = 0xaaaaaaab5004 *)
mov x15 L0xffffffffe830;
mov x16 L0xffffffffe838;
(* adds	x3, x3, x11                                #! PC = 0xaaaaaaab5008 *)
uadds carry x3 x3 x11;
(* adcs	x4, x4, x12                                #! PC = 0xaaaaaaab500c *)
uadcs carry x4 x4 x12 carry;
(* ldr	x9, [x0, #48]                               #! EA = L0xffffffffe808; Value = 0x0000b49bc6cdb2ab; PC = 0xaaaaaaab5010 *)
mov x9 L0xffffffffe808;
(* ldr	x17, [x1, #48]                              #! EA = L0xffffffffe840; Value = 0x00003c05e6d129fb; PC = 0xaaaaaaab5014 *)
mov x17 L0xffffffffe840;
(* adcs	x5, x5, x13                                #! PC = 0xaaaaaaab5018 *)
uadcs carry x5 x5 x13 carry;
(* adcs	x6, x6, x14                                #! PC = 0xaaaaaaab501c *)
uadcs carry x6 x6 x14 carry;
(* ldr	x11, 0xaaaaaaab4f70 <p434x2>                #! PC = 0xaaaaaaab5020 *)
# ldr	%%x11, 0xaaaaaaab4f70 <p434x2>                #! 0xaaaaaaab5020 = 0xaaaaaaab5020;
mov x11 px2_0;
(* adcs	x7, x7, x15                                #! PC = 0xaaaaaaab5024 *)
uadcs carry x7 x7 x15 carry;
(* ldr	x12, 0xaaaaaaab4f78 <p434x2+8>              #! PC = 0xaaaaaaab5028 *)
# ldr	%%x12, 0xaaaaaaab4f78 <p434x2+8>              #! 0xaaaaaaab5028 = 0xaaaaaaab5028;
mov x12 px2_1;
(* adcs	x8, x8, x16                                #! PC = 0xaaaaaaab502c *)
uadcs carry x8 x8 x16 carry;
(* ldr	x13, 0xaaaaaaab4f80 <p434x2+16>             #! PC = 0xaaaaaaab5030 *)
# ldr	%%x13, 0xaaaaaaab4f80 <p434x2+16>             #! 0xaaaaaaab5030 = 0xaaaaaaab5030;
mov x13 px2_3;
(* adc	x9, x9, x17                                 #! PC = 0xaaaaaaab5034 *)
adc	x9 x9 x17 carry;                                 #! 0xaaaaaaab5034 = 0xaaaaaaab5034;
(* subs	x3, x3, x11                                #! PC = 0xaaaaaaab5038 *)
usubc carry x3 x3 x11;
(* ldr	x14, 0xaaaaaaab4f88 <p434x2+24>             #! PC = 0xaaaaaaab503c *)
# ldr	%%x14, 0xaaaaaaab4f88 <p434x2+24>             #! 0xaaaaaaab503c = 0xaaaaaaab503c;
mov x14 px2_4;
(* sbcs	x4, x4, x12                                #! PC = 0xaaaaaaab5040 *)
usbcs carry x4 x4 x12 carry;
(* ldr	x15, 0xaaaaaaab4f90 <p434x2+32>             #! PC = 0xaaaaaaab5044 *)
# ldr	%%x15, 0xaaaaaaab4f90 <p434x2+32>             #! 0xaaaaaaab5044 = 0xaaaaaaab5044;
mov x15 px2_5;
(* sbcs	x5, x5, x12                                #! PC = 0xaaaaaaab5048 *)
usbcs carry x5 x5 x12 carry;
(* ldr	x16, 0xaaaaaaab4f98 <p434x2+40>             #! PC = 0xaaaaaaab504c *)
# ldr	%%x16, 0xaaaaaaab4f98 <p434x2+40>             #! 0xaaaaaaab504c = 0xaaaaaaab504c;
mov x16 px2_6;
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
(* stp	x3, x4, [x2]                                #! EA = L0xffffffffe880; PC = 0xaaaaaaab5084 *)
mov L0xffffffffe880 x3;
mov L0xffffffffe888 x4;
(* adcs	x5, x5, x12                                #! PC = 0xaaaaaaab5088 *)
uadcs carry x5 x5 x12 carry;
(* adcs	x6, x6, x13                                #! PC = 0xaaaaaaab508c *)
uadcs carry x6 x6 x13 carry;
(* stp	x5, x6, [x2, #16]                           #! EA = L0xffffffffe890; PC = 0xaaaaaaab5090 *)
mov L0xffffffffe890 x5;
mov L0xffffffffe898 x6;
(* adcs	x7, x7, x14                                #! PC = 0xaaaaaaab5094 *)
uadcs carry x7 x7 x14 carry;
(* adcs	x8, x8, x15                                #! PC = 0xaaaaaaab5098 *)
uadcs carry x8 x8 x15 carry;
(* stp	x7, x8, [x2, #32]                           #! EA = L0xffffffffe8a0; PC = 0xaaaaaaab509c *)
mov L0xffffffffe8a0 x7;
mov L0xffffffffe8a8 x8;
(* adc	x9, x9, x16                                 #! PC = 0xaaaaaaab50a0 *)
adc	x9 x9 x16 carry;                                 #! 0xaaaaaaab50a0 = 0xaaaaaaab50a0;
(* str	x9, [x2, #48]                               #! EA = L0xffffffffe8b0; PC = 0xaaaaaaab50a4 *)
mov L0xffffffffe8b0 x9;
(* #! <- SP = 0xffffffffe750 *)
#! 0xffffffffe750 = 0xffffffffe750;
(* #ret                                            #! PC = 0xaaaaaaab50a8 *)
#ret                                            #! 0xaaaaaaab50a8 = 0xaaaaaaab50a8;

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
    eqmod (limbs 64 [r0, r1, r2, r3, r4, r5, r6])
          ((limbs 64 [a0, a1, a2, a3, a4, a5, a6]) + (limbs 64 [b0, b1, b2, b3, b4, b5, b6]))
          (limbs 64 [px2_0, px2_1, px2_2, px2_3, px2_4, px2_5, px2_6]),
       limbs 64 [r0, r1, r2, r3, r4, r5, r6] <u
       limbs 64 [px2_0, px2_1, px2_2, px2_3, px2_4, px2_5, px2_6]
]
}