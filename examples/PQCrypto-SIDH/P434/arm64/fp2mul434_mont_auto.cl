(*
 cv -v -disable_safety -jobs 6 -slicing -no_carry_constraint -o cryptoline-fp2mul434_mont.log PQCrypto-SIDH/P434/arm64/fp2mul434_mont_auto.cl 
Parsing Cryptoline file:		[OK]		0.018105 seconds
Checking well-formedness:		[OK]		0.003236 seconds
Transforming to SSA form:		[OK]		0.003013 seconds
Normalizing specification:		[OK]		0.002000 seconds
Rewriting assignments:			[OK]		0.002778 seconds
Verifying range assertions:		[OK]		54.157702 seconds
Verifying range specification:		[OK]		59.897914 seconds
Rewriting value-preserved casting:	[OK]		0.001263 seconds
Verifying algebraic assertions:		[OK]		0.355937 seconds
Verifying algebraic specification:	[OK]		0.413646 seconds
Verification result:			[OK]		114.857250 seconds
*)

proc main (uint64 a0,uint64 a1,uint64 a2,uint64 a3,uint64 a4,uint64 a5,uint64 a6,
     	   uint64 a7,uint64 a8,uint64 a9,uint64 a10,uint64 a11,uint64 a12,uint64 a13,
     	   uint64 b0,uint64 b1,uint64 b2,uint64 b3,uint64 b4,uint64 b5,uint64 b6,
	   uint64 b7,uint64 b8,uint64 b9,uint64 b10,uint64 b11,uint64 b12,uint64 b13,
	   uint64 px2_0, uint64 px2_1, uint64 px2_2, uint64 px2_3, uint64 px2_4, uint64 px2_5, uint64 px2_6
	   ) =
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
  and [
    	(limbs 64 [a0, a1, a2, a3, a4, a5, a6]) <u (limbs 64 [px2_0, px2_1, px2_2, px2_3, px2_4, px2_5, px2_6]),
    	(limbs 64 [a7, a8, a9, a10, a11, a12, a13]) <u (limbs 64 [px2_0, px2_1, px2_2, px2_3, px2_4, px2_5, px2_6]),
    	(limbs 64 [b0, b1, b2, b3, b4, b5, b6]) <u (limbs 64 [px2_0, px2_1, px2_2, px2_3, px2_4, px2_5, px2_6]),
    	(limbs 64 [b7, b8, b9, b10, b11, b12, b13]) <u (limbs 64 [px2_0, px2_1, px2_2, px2_3, px2_4, px2_5, px2_6]),
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

(*
mov px2_0 0xFFFFFFFFFFFFFFFE@uint64;
mov px2_1 0xFFFFFFFFFFFFFFFF@uint64;
mov px2_2 0xFFFFFFFFFFFFFFFF@uint64;
mov px2_3 0xFB82ECF5C5FFFFFF@uint64;
mov px2_4 0xF78CB8F062B15D47@uint64;
mov px2_5 0xD9F8BFAD038A40AC@uint64;
mov px2_6 0x0004683E4E2EE688@uint64;
*)

mov L0xffffffffe7d8 a0;
mov L0xffffffffe7e0 a1;
mov L0xffffffffe7e8 a2;
mov L0xffffffffe7f0 a3;
mov L0xffffffffe7f8 a4;
mov L0xffffffffe800 a5;
mov L0xffffffffe808 a6;
mov L0xffffffffe810 a7;
mov L0xffffffffe818 a8;
mov L0xffffffffe820 a9;
mov L0xffffffffe828 a10;
mov L0xffffffffe830 a11;
mov L0xffffffffe838 a12;
mov L0xffffffffe840 a13;
mov L0xffffffffe848 b0;
mov L0xffffffffe850 b1;
mov L0xffffffffe858 b2;
mov L0xffffffffe860 b3;
mov L0xffffffffe868 b4;
mov L0xffffffffe870 b5;
mov L0xffffffffe878 b6;
mov L0xffffffffe880 b7;
mov L0xffffffffe888 b8;
mov L0xffffffffe890 b9;
mov L0xffffffffe898 b10;
mov L0xffffffffe8a0 b11;
mov L0xffffffffe8a8 b12;
mov L0xffffffffe8b0 b13;

mov L0xaaaaaaab4f48 p_0;
mov L0xaaaaaaab4f50 p_3;
mov L0xaaaaaaab4f58 p_4;
mov L0xaaaaaaab4f60 p_5;
mov L0xaaaaaaab4f68 p_6;

mov L0xaaaaaaab4fd0 p1_3;
mov L0xaaaaaaab4fd8 p1_4;
mov L0xaaaaaaab4fe0 p1_5;
mov L0xaaaaaaab4fe8 p1_6;

nondet L0xaaaaaaac9fd8@uint64;
nondet L0xfffff7ffd6b0@uint64;

nondet x0@uint64; nondet x1@uint64; nondet x2@uint64; 
nondet x19@uint64; nondet x20@uint64; nondet x21@uint64;
nondet x22@uint64; nondet x23@uint64; nondet x24@uint64;
nondet x25@uint64; nondet x26@uint64; nondet x27@uint64;
nondet x28@uint64; nondet x29@uint64; nondet x30@uint64;
nondet sp@uint64;

(* #! -> SP = 0xffffffffe4b0 *)
#! 0xffffffffe4b0 = 0xffffffffe4b0;
(* sub	sp, sp, #0x230                              #! PC = 0xaaaaaaaae2a4 *)
subc dontcare sp sp 0x230@uint64;
(* stp	x29, x30, [sp]                              #! EA = L0xffffffffe280; PC = 0xaaaaaaaae2ac *)
mov L0xffffffffe280 x29;
mov L0xffffffffe288 x30;
(* mov	x29, sp                                     #! PC = 0xaaaaaaaae2b0 *)
mov x29 sp;
(* ldr	x3, [x3, #4056]                             #! EA = L0xaaaaaaac9fd8; Value = 0x0000fffff7ffd6b0; PC = 0xaaaaaaaae2b4 *)
mov x3 L0xaaaaaaac9fd8;
(* stp	x19, x20, [sp, #16]                         #! EA = L0xffffffffe290; PC = 0xaaaaaaaae2b8 *)
mov L0xffffffffe290 x19;
mov L0xffffffffe298 x20;
(* mov	x20, x1                                     #! PC = 0xaaaaaaaae2bc *)
mov x20 x1;
(* stp	x21, x22, [sp, #32]                         #! EA = L0xffffffffe2a0; PC = 0xaaaaaaaae2c0 *)
mov L0xffffffffe2a0 x21;
mov L0xffffffffe2a8 x22;
(* mov	x22, x2                                     #! PC = 0xaaaaaaaae2c4 *)
mov x22 x2;
(* add	x19, sp, #0xd8                              #! PC = 0xaaaaaaaae2c8 *)
adds dontcare x19 sp 0xd8@uint64;
(* stp	x23, x24, [sp, #48]                         #! EA = L0xffffffffe2b0; PC = 0xaaaaaaaae2cc *)
mov L0xffffffffe2b0 x23;
mov L0xffffffffe2b8 x24;
(* add	x23, sp, #0x68                              #! PC = 0xaaaaaaaae2d0 *)
adds dontcare x23 sp 0x68@uint64;
(* add	x24, sp, #0xa0                              #! PC = 0xaaaaaaaae2d4 *)
adds dontcare x24 sp 0xa0@uint64;
(* stp	x25, x26, [sp, #64]                         #! EA = L0xffffffffe2c0; PC = 0xaaaaaaaae2d8 *)
mov L0xffffffffe2c0 x25;
mov L0xffffffffe2c8 x26;
(* add	x26, x0, #0x38                              #! PC = 0xaaaaaaaae2dc *)
adds dontcare x26 x0 0x38@uint64;
(* mov	x25, x0                                     #! PC = 0xaaaaaaaae2e0 *)
mov x25 x0;
(* str	x27, [sp, #80]                              #! EA = L0xffffffffe2d0; PC = 0xaaaaaaaae2e4 *)
mov L0xffffffffe2d0 x27;
(* mov	x1, x26                                     #! PC = 0xaaaaaaaae2e8 *)
mov x1 x26;
(* add	x27, x20, #0x38                             #! PC = 0xaaaaaaaae2ec *)
adds dontcare x27 x20 0x38@uint64;
(* add	x21, sp, #0x148                             #! PC = 0xaaaaaaaae2f0 *)
adds dontcare x21 sp 0x148@uint64;
(* ldr	x2, [x3]                                    #! EA = L0xfffff7ffd6b0; Value = 0xbb654521af6c0200; PC = 0xaaaaaaaae2f4 *)
mov x2 L0xfffff7ffd6b0;
(* str	x2, [sp, #552]                              #! EA = L0xffffffffe4a8; PC = 0xaaaaaaaae2f8 *)
mov L0xffffffffe4a8 x2;
(* mov	x2, #0x0                   	// #0           #! PC = 0xaaaaaaaae2fc *)
mov x2 0x0@uint64;
(* mov	x2, x23                                     #! PC = 0xaaaaaaaae300 *)
mov x2 x23;
(* #bl	0xaaaaaaab59b0 <mp_add434_asm>              #! PC = 0xaaaaaaaae304 *)
#bl	0xaaaaaaab59b0 <mp_add434_asm>              #! 0xaaaaaaaae304 = 0xaaaaaaaae304;
(* #! -> SP = 0xffffffffe280 *)
#! 0xffffffffe280 = 0xffffffffe280;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe7d8; Value = 0x4350d897eb938fb1; PC = 0xaaaaaaab59b0 *)
mov x3 L0xffffffffe7d8;
mov x4 L0xffffffffe7e0;
(* ldp	x11, x12, [x1]                              #! EA = L0xffffffffe810; Value = 0x8c61d70138480051; PC = 0xaaaaaaab59b4 *)
mov x11 L0xffffffffe810;
mov x12 L0xffffffffe818;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffe7e8; Value = 0x277c2127655a5018; PC = 0xaaaaaaab59b8 *)
mov x5 L0xffffffffe7e8;
mov x6 L0xffffffffe7f0;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0xffffffffe820; Value = 0xe7ccd1b09f0a9c00; PC = 0xaaaaaaab59bc *)
mov x13 L0xffffffffe820;
mov x14 L0xffffffffe828;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe7f8; Value = 0x2a039e3faeaf550c; PC = 0xaaaaaaab59c0 *)
mov x7 L0xffffffffe7f8;
mov x8 L0xffffffffe800;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0xffffffffe830; Value = 0x35b566b83e165846; PC = 0xaaaaaaab59c4 *)
mov x15 L0xffffffffe830;
mov x16 L0xffffffffe838;
(* adds	x3, x3, x11                                #! PC = 0xaaaaaaab59c8 *)
adds carry x3 x3 x11;
(* adcs	x4, x4, x12                                #! PC = 0xaaaaaaab59cc *)
adcs carry x4 x4 x12 carry;
(* stp	x3, x4, [x2]                                #! EA = L0xffffffffe2e8; PC = 0xaaaaaaab59d0 *)
mov L0xffffffffe2e8 x3;
mov L0xffffffffe2f0 x4;
(* ldr	x9, [x0, #48]                               #! EA = L0xffffffffe808; Value = 0x00013d3a90c3437c; PC = 0xaaaaaaab59d4 *)
mov x9 L0xffffffffe808;
(* ldr	x17, [x1, #48]                              #! EA = L0xffffffffe840; Value = 0x0000d563aaffd71d; PC = 0xaaaaaaab59d8 *)
mov x17 L0xffffffffe840;
(* adcs	x5, x5, x13                                #! PC = 0xaaaaaaab59dc *)
adcs carry x5 x5 x13 carry;
(* adcs	x6, x6, x14                                #! PC = 0xaaaaaaab59e0 *)
adcs carry x6 x6 x14 carry;
(* stp	x5, x6, [x2, #16]                           #! EA = L0xffffffffe2f8; PC = 0xaaaaaaab59e4 *)
mov L0xffffffffe2f8 x5;
mov L0xffffffffe300 x6;
(* adcs	x7, x7, x15                                #! PC = 0xaaaaaaab59e8 *)
adcs carry x7 x7 x15 carry;
(* adcs	x8, x8, x16                                #! PC = 0xaaaaaaab59ec *)
adcs carry x8 x8 x16 carry;
(* stp	x7, x8, [x2, #32]                           #! EA = L0xffffffffe308; PC = 0xaaaaaaab59f0 *)
mov L0xffffffffe308 x7;
mov L0xffffffffe310 x8;
(* adc	x9, x9, x17                                 #! PC = 0xaaaaaaab59f4 *)
adc x9 x9 x17 carry;
(* str	x9, [x2, #48]                               #! EA = L0xffffffffe318; PC = 0xaaaaaaab59f8 *)
mov L0xffffffffe318 x9;
(* #! <- SP = 0xffffffffe280 *)
#! 0xffffffffe280 = 0xffffffffe280;
(* #ret                                            #! PC = 0xaaaaaaab59fc *)
#ret                                            #! 0xaaaaaaab59fc = 0xaaaaaaab59fc;

assert
true &&  
  and [ eqmod (limbs 64 [L0xffffffffe2e8, L0xffffffffe2f0, L0xffffffffe2f8, L0xffffffffe300,
	  	     	 L0xffffffffe308, L0xffffffffe310, L0xffffffffe318])
          ((limbs 64 [a0, a1, a2, a3, a4, a5, a6]) + (limbs 64 [a7, a8, a9, a10, a11, a12, a13]))
          (limbs 64 [px2_0, px2_1, px2_2, px2_3, px2_4, px2_5, px2_6]),
	  (limbs 64 [L0xffffffffe2e8, L0xffffffffe2f0, L0xffffffffe2f8, L0xffffffffe300,
	  	     		      L0xffffffffe308, L0xffffffffe310, L0xffffffffe318]) <u
	  (2@448 * limbs 64 [px2_0, px2_1, px2_2, px2_3, px2_4, px2_5, px2_6])
	  ];
assume
  and [ eqmod (limbs 64 [L0xffffffffe2e8, L0xffffffffe2f0, L0xffffffffe2f8, L0xffffffffe300,
	  	     	 L0xffffffffe308, L0xffffffffe310, L0xffffffffe318])
          ((limbs 64 [a0, a1, a2, a3, a4, a5, a6]) + (limbs 64 [a7, a8, a9, a10, a11, a12, a13]))
          (limbs 64 [px2_0, px2_1, px2_2, px2_3, px2_4, px2_5, px2_6])
	  ] && true;

//0
cut
  and [ eqmod (limbs 64 [L0xffffffffe2e8, L0xffffffffe2f0, L0xffffffffe2f8, L0xffffffffe300,
	  	     	 L0xffffffffe308, L0xffffffffe310, L0xffffffffe318])
          ((limbs 64 [a0, a1, a2, a3, a4, a5, a6]) + (limbs 64 [a7, a8, a9, a10, a11, a12, a13]))
          (limbs 64 [px2_0, px2_1, px2_2, px2_3, px2_4, px2_5, px2_6])]
&& and [(limbs 64 [L0xffffffffe2e8, L0xffffffffe2f0, L0xffffffffe2f8, L0xffffffffe300,
	  	     	 	    L0xffffffffe308, L0xffffffffe310, L0xffffffffe318]) <u
	  (2@448 * limbs 64 [px2_0, px2_1, px2_2, px2_3, px2_4, px2_5, px2_6])];

(* mov	x0, x20                                     #! PC = 0xaaaaaaaae308 *)
mov x0 x20;
(* mov	x1, x27                                     #! PC = 0xaaaaaaaae30c *)
mov x1 x27;
(* mov	x2, x24                                     #! PC = 0xaaaaaaaae310 *)
mov x2 x24;
(* #bl	0xaaaaaaab59b0 <mp_add434_asm>              #! PC = 0xaaaaaaaae314 *)
#bl	0xaaaaaaab59b0 <mp_add434_asm>              #! 0xaaaaaaaae314 = 0xaaaaaaaae314;
(* #! -> SP = 0xffffffffe280 *)
#! 0xffffffffe280 = 0xffffffffe280;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe848; Value = 0x254d450f84202d69; PC = 0xaaaaaaab59b0 *)
mov x3 L0xffffffffe848;
mov x4 L0xffffffffe850;
(* ldp	x11, x12, [x1]                              #! EA = L0xffffffffe880; Value = 0xffefdec24f75d4a3; PC = 0xaaaaaaab59b4 *)
mov x11 L0xffffffffe880;
mov x12 L0xffffffffe888;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffe858; Value = 0x81bd35201f6cdf17; PC = 0xaaaaaaab59b8 *)
mov x5 L0xffffffffe858;
mov x6 L0xffffffffe860;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0xffffffffe890; Value = 0x52a34e5f50e13232; PC = 0xaaaaaaab59bc *)
mov x13 L0xffffffffe890;
mov x14 L0xffffffffe898;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe868; Value = 0x9e1daa21200173ae; PC = 0xaaaaaaab59c0 *)
mov x7 L0xffffffffe868;
mov x8 L0xffffffffe870;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0xffffffffe8a0; Value = 0x7aa1ccd7d940c358; PC = 0xaaaaaaab59c4 *)
mov x15 L0xffffffffe8a0;
mov x16 L0xffffffffe8a8;
(* adds	x3, x3, x11                                #! PC = 0xaaaaaaab59c8 *)
adds carry x3 x3 x11;
(* adcs	x4, x4, x12                                #! PC = 0xaaaaaaab59cc *)
adcs carry x4 x4 x12 carry;
(* stp	x3, x4, [x2]                                #! EA = L0xffffffffe320; PC = 0xaaaaaaab59d0 *)
mov L0xffffffffe320 x3;
mov L0xffffffffe328 x4;
(* ldr	x9, [x0, #48]                               #! EA = L0xffffffffe878; Value = 0x00010d558f5173b6; PC = 0xaaaaaaab59d4 *)
mov x9 L0xffffffffe878;
(* ldr	x17, [x1, #48]                              #! EA = L0xffffffffe8b0; Value = 0x0001febb2472823d; PC = 0xaaaaaaab59d8 *)
mov x17 L0xffffffffe8b0;
(* adcs	x5, x5, x13                                #! PC = 0xaaaaaaab59dc *)
adcs carry x5 x5 x13 carry;
(* adcs	x6, x6, x14                                #! PC = 0xaaaaaaab59e0 *)
adcs carry x6 x6 x14 carry;
(* stp	x5, x6, [x2, #16]                           #! EA = L0xffffffffe330; PC = 0xaaaaaaab59e4 *)
mov L0xffffffffe330 x5;
mov L0xffffffffe338 x6;
(* adcs	x7, x7, x15                                #! PC = 0xaaaaaaab59e8 *)
adcs carry x7 x7 x15 carry;
(* adcs	x8, x8, x16                                #! PC = 0xaaaaaaab59ec *)
adcs carry x8 x8 x16 carry;
(* stp	x7, x8, [x2, #32]                           #! EA = L0xffffffffe340; PC = 0xaaaaaaab59f0 *)
mov L0xffffffffe340 x7;
mov L0xffffffffe348 x8;
(* adc	x9, x9, x17                                 #! PC = 0xaaaaaaab59f4 *)
adc x9 x9 x17 carry;
(* str	x9, [x2, #48]                               #! EA = L0xffffffffe350; PC = 0xaaaaaaab59f8 *)
mov L0xffffffffe350 x9;
(* #! <- SP = 0xffffffffe280 *)
#! 0xffffffffe280 = 0xffffffffe280;
(* #ret                                            #! PC = 0xaaaaaaab59fc *)
#ret                                            #! 0xaaaaaaab59fc = 0xaaaaaaab59fc;

assert
true &&  
  and [ eqmod (limbs 64 [L0xffffffffe320, L0xffffffffe328, L0xffffffffe330, L0xffffffffe338,
      	      	     			  L0xffffffffe340, L0xffffffffe348, L0xffffffffe350])
          ((limbs 64 [b0, b1, b2, b3, b4, b5, b6]) + (limbs 64 [b7, b8, b9, b10, b11, b12, b13]))
          (limbs 64 [px2_0, px2_1, px2_2, px2_3, px2_4, px2_5, px2_6]),
	  (limbs 64 [L0xffffffffe320, L0xffffffffe328, L0xffffffffe330, L0xffffffffe338,
      	      	     			  L0xffffffffe340, L0xffffffffe348, L0xffffffffe350]) <u
	  2@448 * (limbs 64 [px2_0, px2_1, px2_2, px2_3, px2_4, px2_5, px2_6])
	  ];
assume
  and [ eqmod (limbs 64 [L0xffffffffe320, L0xffffffffe328, L0xffffffffe330, L0xffffffffe338,
      	      	     			  L0xffffffffe340, L0xffffffffe348, L0xffffffffe350])
          ((limbs 64 [b0, b1, b2, b3, b4, b5, b6]) + (limbs 64 [b7, b8, b9, b10, b11, b12, b13]))
          (limbs 64 [px2_0, px2_1, px2_2, px2_3, px2_4, px2_5, px2_6])
	  ] && true;

//1
cut
  and [ eqmod (limbs 64 [L0xffffffffe320, L0xffffffffe328, L0xffffffffe330, L0xffffffffe338,
      	      	     			  L0xffffffffe340, L0xffffffffe348, L0xffffffffe350])
          ((limbs 64 [b0, b1, b2, b3, b4, b5, b6]) + (limbs 64 [b7, b8, b9, b10, b11, b12, b13]))
          (limbs 64 [px2_0, px2_1, px2_2, px2_3, px2_4, px2_5, px2_6])]
&& and [(limbs 64 [L0xffffffffe320, L0xffffffffe328, L0xffffffffe330, L0xffffffffe338,
      	      	     		    L0xffffffffe340, L0xffffffffe348, L0xffffffffe350]) <u
	  2@448 * (limbs 64 [px2_0, px2_1, px2_2, px2_3, px2_4, px2_5, px2_6])]
    prove with [ precondition ];

(* mov	x1, x20                                     #! PC = 0xaaaaaaaae318 *)
mov x1 x20;
(* mov	x0, x25                                     #! PC = 0xaaaaaaaae31c *)
mov x0 x25;
(* mov	x2, x19                                     #! PC = 0xaaaaaaaae320 *)
mov x2 x19;
(* mov	w3, #0x7                   	// #7           #! PC = 0xaaaaaaaae324 *)
mov w3 7@uint64;
(* #bl	0xaaaaaaab4f40 <mp_mul>                     #! PC = 0xaaaaaaaae328 *)
#bl	0xaaaaaaab4f40 <mp_mul>                     #! 0xaaaaaaaae328 = 0xaaaaaaaae328;
(* #! -> SP = 0xffffffffe280 *)
#! 0xffffffffe280 = 0xffffffffe280;
(* #b	0xaaaaaaab5254 <mul434_asm>                  #! PC = 0xaaaaaaab4f40 *)
#b	0xaaaaaaab5254 <mul434_asm>                  #! 0xaaaaaaab4f40 = 0xaaaaaaab4f40;
(* sub	sp, sp, #0x60                               #! PC = 0xaaaaaaab5254 *)
subc dontcare sp sp 0x60@uint64;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe7d8; Value = 0x4350d897eb938fb1; PC = 0xaaaaaaab5258 *)
mov x3 L0xffffffffe7d8;
mov x4 L0xffffffffe7e0;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe7f8; Value = 0x2a039e3faeaf550c; PC = 0xaaaaaaab525c *)
mov x7 L0xffffffffe7f8;
mov x8 L0xffffffffe800;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffe7e8; Value = 0x277c2127655a5018; PC = 0xaaaaaaab5260 *)
mov x5 L0xffffffffe7e8;
mov x6 L0xffffffffe7f0;
(* ldr	x9, [x0, #48]                               #! EA = L0xffffffffe808; Value = 0x00013d3a90c3437c; PC = 0xaaaaaaab5264 *)
mov x9 L0xffffffffe808;
(* stp	x25, x26, [sp, #48]                         #! EA = L0xffffffffe250; PC = 0xaaaaaaab5268 *)
mov L0xffffffffe250 x25;
mov L0xffffffffe258 x26;
(* stp	x27, x28, [sp, #64]                         #! EA = L0xffffffffe260; PC = 0xaaaaaaab526c *)
mov L0xffffffffe260 x27;
mov L0xffffffffe268 x28;
(* stp	x29, x30, [sp, #80]                         #! EA = L0xffffffffe270; PC = 0xaaaaaaab5270 *)
mov L0xffffffffe270 x29;
mov L0xffffffffe278 x30;
(* adds	x26, x3, x7                                #! PC = 0xaaaaaaab5274 *)
adds carry x26 x3 x7;
(* ldp	x11, x12, [x1]                              #! EA = L0xffffffffe848; Value = 0x254d450f84202d69; PC = 0xaaaaaaab5278 *)
mov x11 L0xffffffffe848;
mov x12 L0xffffffffe850;
(* adcs	x27, x4, x8                                #! PC = 0xaaaaaaab527c *)
adcs carry x27 x4 x8 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0xffffffffe868; Value = 0x9e1daa21200173ae; PC = 0xaaaaaaab5280 *)
mov x15 L0xffffffffe868;
mov x16 L0xffffffffe870;
(* adcs	x28, x5, x9                                #! PC = 0xaaaaaaab5284 *)
adcs carry x28 x5 x9 carry;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0xffffffffe858; Value = 0x81bd35201f6cdf17; PC = 0xaaaaaaab5288 *)
mov x13 L0xffffffffe858;
mov x14 L0xffffffffe860;
(* adcs	x29, x6, xzr                               #! PC = 0xaaaaaaab528c *)
adcs carry x29 x6 0@uint64 carry;
(* ldr	x17, [x1, #48]                              #! EA = L0xffffffffe878; Value = 0x00010d558f5173b6; PC = 0xaaaaaaab5290 *)
mov x17 L0xffffffffe878;
(* adc	x7, xzr, xzr                                #! PC = 0xaaaaaaab5294 *)
adc x7 0@uint64 0@uint64 carry;
(* stp	x19, x20, [sp]                              #! EA = L0xffffffffe220; PC = 0xaaaaaaab5298 *)
mov L0xffffffffe220 x19;
mov L0xffffffffe228 x20;
(* adds	x11, x11, x15                              #! PC = 0xaaaaaaab529c *)
adds carry x11 x11 x15;
(* adcs	x12, x12, x16                              #! PC = 0xaaaaaaab52a0 *)
adcs carry x12 x12 x16 carry;
(* stp	x21, x22, [sp, #16]                         #! EA = L0xffffffffe230; PC = 0xaaaaaaab52a4 *)
mov L0xffffffffe230 x21;
mov L0xffffffffe238 x22;
(* adcs	x13, x13, x17                              #! PC = 0xaaaaaaab52a8 *)
adcs carry x13 x13 x17 carry;
(* adcs	x14, x14, xzr                              #! PC = 0xaaaaaaab52ac *)
adcs carry x14 x14 0@uint64 carry;
(* stp	x23, x24, [sp, #32]                         #! EA = L0xffffffffe240; PC = 0xaaaaaaab52b0 *)
mov L0xffffffffe240 x23;
mov L0xffffffffe248 x24;
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
(* stp	x26, x27, [x2]                              #! EA = L0xffffffffe358; PC = 0xaaaaaaab52ec *)
mov L0xffffffffe358 x26;
mov L0xffffffffe360 x27;
(* adc	x17, x17, x22                               #! PC = 0xaaaaaaab52f0 *)
adc x17 x17 x22 carry;

//MUL256_KARATSUBA_COMBA1_1
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

//MUL128_COMBA_CUT
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
//end 
(* ldp	x26, x27, [x2]                              #! EA = L0xffffffffe358; Value = 0x6d5476d79a42e4bd; PC = 0xaaaaaaab5370 *)
mov x26 L0xffffffffe358;
mov x27 L0xffffffffe360;
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
#mull Hx26x11 Lx26x11 x26 x11;
mov x8 Lx26x11;
(* mul	x9, x26, x12                                #! PC = 0xaaaaaaab5388 *)
#mull Hx26x12 x9 x26 x12;
mov x9 Lx26x12;
(* adc	x24, x24, xzr                               #! PC = 0xaaaaaaab538c *)
adc x24 x24 0@uint64 carry;

//MUL128_COMBA_CUT
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
//end

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

//MUL128_COMBA_CUT
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
//end

(* subs	x30, x30, x26                              #! PC = 0xaaaaaaab540c *)
subc carry x30 x30 x26;
(* sbcs	x19, x19, x27                              #! PC = 0xaaaaaaab5410 *)
sbcs carry x19 x19 x27 carry;
(* sbcs	x20, x20, x22                              #! PC = 0xaaaaaaab5414 *)
sbcs carry x20 x20 x22 carry;
(* sbcs	x21, x21, x11                              #! PC = 0xaaaaaaab5418 *)
sbcs carry x21 x21 x11 carry;
(* sbc	x24, x24, xzr                               #! PC = 0xaaaaaaab541c *)
sbcs carry x24 x24 0@uint64 carry;
assume carry = 1 && true;

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
//58
assume carry = 0 && true;
//end MUL256_KARATSUBA_COMBA1_1

#// x8-x9, x30, x19, x10, x15-x17 <- (AH+AL) x (BH+BL), final step
(* adds	x10, x10, x20                              #! PC = 0xaaaaaaab5438 *)
adds carry x10 x10 x20;
(* ldp	x11, x12, [x1]                              #! EA = L0xffffffffe848; Value = 0x254d450f84202d69; PC = 0xaaaaaaab543c *)
mov x11 L0xffffffffe848;
mov x12 L0xffffffffe850;
(* adcs	x15, x15, x21                              #! PC = 0xaaaaaaab5440 *)
adcs carry x15 x15 x21 carry;
(* adcs	x16, x16, x22                              #! PC = 0xaaaaaaab5444 *)
adcs carry x16 x16 x22 carry;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0xffffffffe858; Value = 0x81bd35201f6cdf17; PC = 0xaaaaaaab5448 *)
mov x13 L0xffffffffe858;
mov x14 L0xffffffffe860;
(* adc	x17, x17, x23                               #! PC = 0xaaaaaaab544c *)
adc x17 x17 x23 carry;

//MUL256_KARATSUBA_COMBA1_2
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

//MUL128_COMBA_CUT
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
//end

(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe7d8; Value = 0x4350d897eb938fb1; PC = 0xaaaaaaab54cc *)
mov x3 L0xffffffffe7d8;
mov x4 L0xffffffffe7e0;
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
#mull Hx3x11 x20 x3 x11;
mov x20 Lx3x11;
(* mul	x21, x3, x12                                #! PC = 0xaaaaaaab54e4 *)
#mull Hx3x12 x21 x3 x12;
mov x21 Lx3x12;
(* adc	x28, x28, xzr                               #! PC = 0xaaaaaaab54e8 *)
adc x28 x28 0@uint64 carry;

//MUL128_COMBA_CUT
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
//end

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
sbcs carry x28 x28 0@uint64 carry;
assume carry = 1 && true;

//MUL128_COMBA_CUT
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
//end

(* subs	x22, x22, x3                               #! PC = 0xaaaaaaab5568 *)
subc carry x22 x22 x3;
(* sbcs	x23, x23, x4                               #! PC = 0xaaaaaaab556c *)
sbcs carry x23 x23 x4 carry;
(* sbcs	x24, x24, x26                              #! PC = 0xaaaaaaab5570 *)
sbcs carry x24 x24 x26 carry;
(* sbcs	x25, x25, x11                              #! PC = 0xaaaaaaab5574 *)
sbcs carry x25 x25 x11 carry;
(* sbc	x28, x28, xzr                               #! PC = 0xaaaaaaab5578 *)
sbcs carry x28 x28 0@uint64 carry;
assume carry = 1 && true;

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
//end MUL256_KARATSUBA_COMBA1_2

//mul1
assert eqmod limbs 64 [x8, x9, x30, x19, x10, x15, x16, x17]
             (limbs 64 [a0, a1, a2, a3] + limbs 64 [a4, a5, a6, 0]) *
             (limbs 64 [b0, b1, b2, b3] + limbs 64 [b4, b5, b6, 0])
             2**512 && true;
assume limbs 64 [x8, x9, x30, x19, x10, x15, x16, x17] =
       (limbs 64 [a0, a1, a2, a3] + limbs 64 [a4, a5, a6, 0]) *
       (limbs 64 [b0, b1, b2, b3] + limbs 64 [b4, b5, b6, 0]) && true;


#// x8-x9, x30, x19, x10, x15-x17 <- (AH+AL) x (BH+BL) - ALxBL
(* ldp	x3, x4, [x0, #32]                           #! EA = L0xffffffffe7f8; Value = 0x2a039e3faeaf550c; PC = 0xaaaaaaab5594 *)
mov x3 L0xffffffffe7f8;
mov x4 L0xffffffffe800;
(* ldp	x11, x12, [x1, #32]                         #! EA = L0xffffffffe868; Value = 0x9e1daa21200173ae; PC = 0xaaaaaaab5598 *)
mov x11 L0xffffffffe868;
mov x12 L0xffffffffe870;
(* subs	x8, x8, x20                                #! PC = 0xaaaaaaab559c *)
subc carry x8 x8 x20;
(* sbcs	x9, x9, x21                                #! PC = 0xaaaaaaab55a0 *)
sbcs carry x9 x9 x21 carry;
(* stp	x20, x21, [x2]                              #! EA = L0xffffffffe358; PC = 0xaaaaaaab55a4 *)
mov L0xffffffffe358 x20;
mov L0xffffffffe360 x21;
(* ldr	x5, [x0, #48]                               #! EA = L0xffffffffe808; Value = 0x00013d3a90c3437c; PC = 0xaaaaaaab55a8 *)
mov x5 L0xffffffffe808;
(* mul	x20, x3, x11                                #! PC = 0xaaaaaaab55ac *)
mull Hx3x11 x20 x3 x11;
(* mul	x21, x3, x12                                #! PC = 0xaaaaaaab55b0 *)
mull Hx3x12 x21 x3 x12;
(* sbcs	x30, x30, x22                              #! PC = 0xaaaaaaab55b4 *)
sbcs carry x30 x30 x22 carry;
(* sbcs	x19, x19, x23                              #! PC = 0xaaaaaaab55b8 *)
sbcs carry x19 x19 x23 carry;
(* stp	x22, x23, [x2, #16]                         #! EA = L0xffffffffe368; PC = 0xaaaaaaab55bc *)
mov L0xffffffffe368 x22;
mov L0xffffffffe370 x23;
(* ldr	x13, [x1, #48]                              #! EA = L0xffffffffe878; Value = 0x00010d558f5173b6; PC = 0xaaaaaaab55c0 *)
mov x13 L0xffffffffe878;
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
sbcs carry  x17 x17 x27 carry;

//mul1
assert eqmod limbs 64 [x8, x9, x30, x19, x10, x15, x16, x17]
             (limbs 64 [a0, a1, a2, a3] + limbs 64 [a4, a5, a6, 0]) *
             (limbs 64 [b0, b1, b2, b3] + limbs 64 [b4, b5, b6, 0]) -
             limbs 64 [a0, a1, a2, a3] * limbs 64 [b0, b1, b2, b3]
             2**512 && true;
assume limbs 64 [x8, x9, x30, x19, x10, x15, x16, x17] =
       (limbs 64 [a0, a1, a2, a3] + limbs 64 [a4, a5, a6, 0]) *
       (limbs 64 [b0, b1, b2, b3] + limbs 64 [b4, b5, b6, 0]) -
       limbs 64 [a0, a1, a2, a3] * limbs 64 [b0, b1, b2, b3] && true;

//MUL192_COMBA_CUT
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
//109
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
//end

// x8-x9, x30, x19, x10, x15-x17 <- (AH+AL) x (BH+BL) - ALxBL - AHxBH
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
sbcs carry x17 x17 0@uint64 carry;
//127
assume carry = 1 && true;

(* adds	x8, x8, x24                                #! PC = 0xaaaaaaab5684 *)
adds carry x8 x8 x24;
(* adcs	x9, x9, x25                                #! PC = 0xaaaaaaab5688 *)
adcs carry x9 x9 x25 carry;
(* stp	x8, x9, [x2, #32]                           #! EA = L0xffffffffe378; PC = 0xaaaaaaab568c *)
mov L0xffffffffe378 x8;
mov L0xffffffffe380 x9;
(* adcs	x30, x30, x26                              #! PC = 0xaaaaaaab5690 *)
adcs carry x30 x30 x26 carry;
(* ldp	x25, x26, [sp, #48]                         #! EA = L0xffffffffe250; Value = 0x0000ffffffffe7d8; PC = 0xaaaaaaab5694 *)
mov x25 L0xffffffffe250;
mov x26 L0xffffffffe258;
(* adcs	x19, x19, x27                              #! PC = 0xaaaaaaab5698 *)
adcs carry x19 x19 x27 carry;
(* stp	x30, x19, [x2, #48]                         #! EA = L0xffffffffe388; PC = 0xaaaaaaab569c *)
mov L0xffffffffe388 x30;
mov L0xffffffffe390 x19;
(* adcs	x10, x10, x20                              #! PC = 0xaaaaaaab56a0 *)
adcs carry x10 x10 x20 carry;
(* ldp	x19, x20, [sp]                              #! EA = L0xffffffffe220; Value = 0x0000ffffffffe358; PC = 0xaaaaaaab56a4 *)
mov x19 L0xffffffffe220;
mov x20 L0xffffffffe228;
(* adcs	x15, x15, x21                              #! PC = 0xaaaaaaab56a8 *)
adcs carry x15 x15 x21 carry;
(* stp	x10, x15, [x2, #64]                         #! EA = L0xffffffffe398; PC = 0xaaaaaaab56ac *)
mov L0xffffffffe398 x10;
mov L0xffffffffe3a0 x15;
(* adcs	x16, x16, x22                              #! PC = 0xaaaaaaab56b0 *)
adcs carry x16 x16 x22 carry;
(* ldp	x21, x22, [sp, #16]                         #! EA = L0xffffffffe230; Value = 0x0000ffffffffe3c8; PC = 0xaaaaaaab56b4 *)
mov x21 L0xffffffffe230;
mov x22 L0xffffffffe238;
(* adcs	x17, x17, x23                              #! PC = 0xaaaaaaab56b8 *)
adcs carry x17 x17 x23 carry;
(* stp	x16, x17, [x2, #80]                         #! EA = L0xffffffffe3a8; PC = 0xaaaaaaab56bc *)
mov L0xffffffffe3a8 x16;
mov L0xffffffffe3b0 x17;
(* adcs	x28, x28, xzr                              #! PC = 0xaaaaaaab56c0 *)
adcs carry x28 x28 0@uint64 carry;
(* ldp	x23, x24, [sp, #32]                         #! EA = L0xffffffffe240; Value = 0x0000ffffffffe2e8; PC = 0xaaaaaaab56c4 *)
mov x23 L0xffffffffe240;
mov x24 L0xffffffffe248;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab56c8 *)
adcs carry x29 x29 0@uint64 carry;
assume carry = 0 && true;

(* stp	x28, x29, [x2, #96]                         #! EA = L0xffffffffe3b8; PC = 0xaaaaaaab56cc *)
mov L0xffffffffe3b8 x28;
mov L0xffffffffe3c0 x29;
(* ldp	x27, x28, [sp, #64]                         #! EA = L0xffffffffe260; Value = 0x0000ffffffffe880; PC = 0xaaaaaaab56d0 *)
mov x27 L0xffffffffe260;
mov x28 L0xffffffffe268;
(* ldp	x29, x30, [sp, #80]                         #! EA = L0xffffffffe270; Value = 0x0000ffffffffe280; PC = 0xaaaaaaab56d4 *)
mov x29 L0xffffffffe270;
mov x30 L0xffffffffe278;
(* add	sp, sp, #0x60                               #! PC = 0xaaaaaaab56d8 *)
adds dontcare sp sp 0x60@uint64;
(* #! <- SP = 0xffffffffe280 *)
#! 0xffffffffe280 = 0xffffffffe280;
(* #ret                                            #! PC = 0xaaaaaaab56dc *)
#ret                                            #! 0xaaaaaaab56dc = 0xaaaaaaab56dc;

//mul1 end
//2
cut
  and [ eq (limbs 64 [L0xffffffffe358, L0xffffffffe360, L0xffffffffe368, L0xffffffffe370,
      	   	     		       L0xffffffffe378, L0xffffffffe380, L0xffffffffe388,
      	      	      L0xffffffffe390, L0xffffffffe398, L0xffffffffe3a0, L0xffffffffe3a8,
				       L0xffffffffe3b0, L0xffffffffe3b8, L0xffffffffe3c0])
          ((limbs 64 [a0, a1, a2, a3, a4, a5, a6])
	  * (limbs 64 [b0, b1, b2, b3, b4, b5, b6]))
	  ]
&&
(limbs 64 [L0xffffffffe358, L0xffffffffe360, L0xffffffffe368, L0xffffffffe370,
      	   	     	    L0xffffffffe378, L0xffffffffe380, L0xffffffffe388,
      	   L0xffffffffe390, L0xffffffffe398, L0xffffffffe3a0, L0xffffffffe3a8,
			    L0xffffffffe3b0, L0xffffffffe3b8, L0xffffffffe3c0])
<u (2**869)@896
			prove with [ precondition ];


(* add	x20, sp, #0x1b8                             #! PC = 0xaaaaaaaae32c *)
adds dontcare x20 sp 0x1b8@uint64;
(* mov	x1, x27                                     #! PC = 0xaaaaaaaae330 *)
mov x1 x27;
(* mov	x0, x26                                     #! PC = 0xaaaaaaaae334 *)
mov x0 x26;
(* mov	x2, x21                                     #! PC = 0xaaaaaaaae338 *)
mov x2 x21;
(* mov	w3, #0x7                   	// #7           #! PC = 0xaaaaaaaae33c *)
mov w3 7@uint64;
(* #bl	0xaaaaaaab4f40 <mp_mul>                     #! PC = 0xaaaaaaaae340 *)
#bl	0xaaaaaaab4f40 <mp_mul>                     #! 0xaaaaaaaae340 = 0xaaaaaaaae340;
(* #! -> SP = 0xffffffffe280 *)
#! 0xffffffffe280 = 0xffffffffe280;
(* #b	0xaaaaaaab5254 <mul434_asm>                  #! PC = 0xaaaaaaab4f40 *)
#b	0xaaaaaaab5254 <mul434_asm>                  #! 0xaaaaaaab4f40 = 0xaaaaaaab4f40;
(* sub	sp, sp, #0x60                               #! PC = 0xaaaaaaab5254 *)
subc dontcare sp sp 0x60@uint64;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe810; Value = 0x8c61d70138480051; PC = 0xaaaaaaab5258 *)
mov x3 L0xffffffffe810;
mov x4 L0xffffffffe818;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe830; Value = 0x35b566b83e165846; PC = 0xaaaaaaab525c *)
mov x7 L0xffffffffe830;
mov x8 L0xffffffffe838;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffe820; Value = 0xe7ccd1b09f0a9c00; PC = 0xaaaaaaab5260 *)
mov x5 L0xffffffffe820;
mov x6 L0xffffffffe828;
(* ldr	x9, [x0, #48]                               #! EA = L0xffffffffe840; Value = 0x0000d563aaffd71d; PC = 0xaaaaaaab5264 *)
mov x9 L0xffffffffe840;
(* stp	x25, x26, [sp, #48]                         #! EA = L0xffffffffe250; PC = 0xaaaaaaab5268 *)
mov L0xffffffffe250 x25;
mov L0xffffffffe258 x26;
(* stp	x27, x28, [sp, #64]                         #! EA = L0xffffffffe260; PC = 0xaaaaaaab526c *)
mov L0xffffffffe260 x27;
mov L0xffffffffe268 x28;
(* stp	x29, x30, [sp, #80]                         #! EA = L0xffffffffe270; PC = 0xaaaaaaab5270 *)
mov L0xffffffffe270 x29;
mov L0xffffffffe278 x30;
(* adds	x26, x3, x7                                #! PC = 0xaaaaaaab5274 *)
adds carry x26 x3 x7;
(* ldp	x11, x12, [x1]                              #! EA = L0xffffffffe880; Value = 0xffefdec24f75d4a3; PC = 0xaaaaaaab5278 *)
mov x11 L0xffffffffe880;
mov x12 L0xffffffffe888;
(* adcs	x27, x4, x8                                #! PC = 0xaaaaaaab527c *)
adcs carry x27 x4 x8 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0xffffffffe8a0; Value = 0x7aa1ccd7d940c358; PC = 0xaaaaaaab5280 *)
mov x15 L0xffffffffe8a0;
mov x16 L0xffffffffe8a8;
(* adcs	x28, x5, x9                                #! PC = 0xaaaaaaab5284 *)
adcs carry x28 x5 x9 carry;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0xffffffffe890; Value = 0x52a34e5f50e13232; PC = 0xaaaaaaab5288 *)
mov x13 L0xffffffffe890;
mov x14 L0xffffffffe898;
(* adcs	x29, x6, xzr                               #! PC = 0xaaaaaaab528c *)
adcs carry x29 x6 0@uint64 carry;
(* ldr	x17, [x1, #48]                              #! EA = L0xffffffffe8b0; Value = 0x0001febb2472823d; PC = 0xaaaaaaab5290 *)
mov x17 L0xffffffffe8b0;
(* adc	x7, xzr, xzr                                #! PC = 0xaaaaaaab5294 *)
adc x7 0@uint64 0@uint64 carry;
(* stp	x19, x20, [sp]                              #! EA = L0xffffffffe220; PC = 0xaaaaaaab5298 *)
mov L0xffffffffe220 x19;
mov L0xffffffffe228 x20;
(* adds	x11, x11, x15                              #! PC = 0xaaaaaaab529c *)
adds carry x11 x11 x15;
(* adcs	x12, x12, x16                              #! PC = 0xaaaaaaab52a0 *)
adcs carry x12 x12 x16 carry;
(* stp	x21, x22, [sp, #16]                         #! EA = L0xffffffffe230; PC = 0xaaaaaaab52a4 *)
mov L0xffffffffe230 x21;
mov L0xffffffffe238 x22;
(* adcs	x13, x13, x17                              #! PC = 0xaaaaaaab52a8 *)
adcs carry x13 x13 x17 carry;
(* adcs	x14, x14, xzr                              #! PC = 0xaaaaaaab52ac *)
adcs carry x14 x14 0@uint64 carry;
(* stp	x23, x24, [sp, #32]                         #! EA = L0xffffffffe240; PC = 0xaaaaaaab52b0 *)
mov L0xffffffffe240 x23;
mov L0xffffffffe248 x24;
(* adc	x8, xzr, xzr                                #! PC = 0xaaaaaaab52b4 *)
adc x8 0@uint64 0@uint64 carry;
(* neg	x9, x7                                      #! PC = 0xaaaaaaab52b8 *)
subc dontcare x9 0@uint64 x7;
(* neg	x8, x8                                      #! PC = 0xaaaaaaab52bc *)
ghost x8_o2@uint64 : x8_o2 = x8 && x8_o2 = x8;
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
    && and [x7*(x7-1@64) = 0@64, x8_o2*(x8_o2-1@64) = 0@64,
            limbs 64 [x10, x15, x16, x17] =
            uext x7 192 * limbs 64 [x11, x12, x13, x14],
            limbs 64 [x19, x20, x21, x22] =
            uext x8_o2 192 * limbs 64 [x26, x27, x28, x29]];
assume and [x7*(x7-1) = 0, x8_o2*(x8_o2-1) = 0,
            limbs 64 [x10, x15, x16, x17] =
            x7 * limbs 64 [x11, x12, x13, x14],
            limbs 64 [x19, x20, x21, x22] =
            x8_o2 * limbs 64 [x26, x27, x28, x29]] && true;

(* adds	x10, x10, x19                              #! PC = 0xaaaaaaab52e0 *)
adds carry x10 x10 x19;
(* adcs	x15, x15, x20                              #! PC = 0xaaaaaaab52e4 *)
adcs carry x15 x15 x20 carry;
(* adcs	x16, x16, x21                              #! PC = 0xaaaaaaab52e8 *)
adcs carry x16 x16 x21 carry;
(* stp	x26, x27, [x2]                              #! EA = L0xffffffffe3c8; PC = 0xaaaaaaab52ec *)
mov L0xffffffffe3c8 x26;
mov L0xffffffffe3d0 x27;
(* adc	x17, x17, x22                               #! PC = 0xaaaaaaab52f0 *)
adcs carry x17 x17 x22 carry;

//MUL256_KARATSUBA_COMBA2_1
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
    && and [x24*(1@64-x24) = 0@64, x23*(1@64-x23) = 0@64,
            limbs 64 [ x8,  x9] = uext x24 64 * limbs 64 [x22, x25],
            limbs 64 [x20, x21] = uext x23 64 * limbs 64 [x26, x27]];
assume and [x24*(1-x24) = 0, x23*(1-x23) = 0,
            limbs 64 [ x8,  x9] = x24 * limbs 64 [x22, x25],
            limbs 64 [x20, x21] = x23 * limbs 64 [x26, x27]] && true;

(* mul	x30, x26, x22                               #! PC = 0xaaaaaaab5324 *)
mull Hx26x22 x30 x26 x22;
(* mul	x19, x26, x25                               #! PC = 0xaaaaaaab5328 *)
mull Hx26x25 x19 x26 x25;

ghost x24c2@uint64 : x24c2 = x24 && x24c2 = x24;
(* and	x24, x24, x23                               #! PC = 0xaaaaaaab532c *)
and x24@uint64 x24 x23;

assert true && x24 = x24c2 * x23;
assume x24 = x24c2 * x23 && true;

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

//MUL128_COMBA_CUT 
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
//end

(* ldp	x26, x27, [x2]                              #! EA = L0xffffffffe3c8; Value = 0xc2173db9765e5897; PC = 0xaaaaaaab5370 *)
mov x26 L0xffffffffe3c8;
mov x27 L0xffffffffe3d0;
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
#mull Hx26x11 x8 x26 x11;
mov x8 Lx26x11;
(* mul	x9, x26, x12                                #! PC = 0xaaaaaaab5388 *)
#mull Hx26x12 x9 x26 x12;
mov x9 Lx26x12;
(* adc	x24, x24, xzr                               #! PC = 0xaaaaaaab538c *)
adc x24 x24 0@uint64 carry;

//MUL128_COMBA_CUT
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
//end

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

//MUL128_COMBA_CUT
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
//end

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
//end MUL256_KARATSUBA_COMBA2_1

#// x8-x9, x30, x19, x10, x15-x17 <- (AH+AL) x (BH+BL), final step
(* adds	x10, x10, x20                              #! PC = 0xaaaaaaab5438 *)
adds carry x10 x10 x20;
(* ldp	x11, x12, [x1]                              #! EA = L0xffffffffe880; Value = 0xffefdec24f75d4a3; PC = 0xaaaaaaab543c *)
mov x11 L0xffffffffe880;
mov x12 L0xffffffffe888;
(* adcs	x15, x15, x21                              #! PC = 0xaaaaaaab5440 *)
adcs carry x15 x15 x21 carry;
(* adcs	x16, x16, x22                              #! PC = 0xaaaaaaab5444 *)
adcs carry x16 x16 x22 carry;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0xffffffffe890; Value = 0x52a34e5f50e13232; PC = 0xaaaaaaab5448 *)
mov x13 L0xffffffffe890;
mov x14 L0xffffffffe898;
(* adc	x17, x17, x23                               #! PC = 0xaaaaaaab544c *)
adc x17 x17 x23 carry;

//MUL256_KARATSUBA_COMBA2_2
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

ghost x28c3@uint64 : x28c3 = x28 && x28c3 = x28;

(* and	x28, x28, x27                               #! PC = 0xaaaaaaab5488 *)
and x28@uint64 x28 x27;

assert true && x28 = x28c3 * x27;
assume x28 = x28c3 * x27 && true;

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

//MUL128_COMBA_CUT
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
//end

(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe810; Value = 0x8c61d70138480051; PC = 0xaaaaaaab54cc *)
mov x3 L0xffffffffe810;
mov x4 L0xffffffffe818;
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
#mull Hx3x11 x20 x3 x11;
mov x20 Lx3x11;
(* mul	x21, x3, x12                                #! PC = 0xaaaaaaab54e4 *)
#mull Hx3x12 x21 x3 x12;
mov x21 Lx3x12;
(* adc	x28, x28, xzr                               #! PC = 0xaaaaaaab54e8 *)
adc x28 x28 0@uint64 carry;

//MUL128_COMBA_CUT
(* mul	x3, x4, x11                                 #! PC = 0xaaaaaaab54ec *)
mull Hx4x11 x3 x4 x11;
(* umulh	x11, x4, x11                              #! PC = 0xaaaaaaab54f0 *)
mov x11 Hx4x11;
(* adds	x21, x21, x27                              #! PC = 0xaaaaaaab54f4 *)
//200
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
//end

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

//MUL128_COMBA_CUT
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
//end

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
adc x27 x11 0@uint64 carry;
assume carry = 0 && true;
//end MUL256_KARATSUBA_COMBA2_2


//mul2
assert eqmod limbs 64 [x8, x9, x30, x19, x10, x15, x16, x17]
             (limbs 64 [a7, a8, a9, a10] + limbs 64 [a11, a12, a13, 0]) *
             (limbs 64 [b7, b8, b9, b10] + limbs 64 [b11, b12, b13, 0])
             2**512 && true;
assume limbs 64 [x8, x9, x30, x19, x10, x15, x16, x17] =
       (limbs 64 [a7, a8, a9, a10] + limbs 64 [a11, a12, a13, 0]) *
       (limbs 64 [b7, b8, a9, b10] + limbs 64 [b11, b12, b13, 0]) && true;

// x8-x9, x30, x19, x10, x15-x17 <- (AH+AL) x (BH+BL) - ALxBL
(* ldp	x3, x4, [x0, #32]                           #! EA = L0xffffffffe830; Value = 0x35b566b83e165846; PC = 0xaaaaaaab5594 *)
mov x3 L0xffffffffe830;
mov x4 L0xffffffffe838;
(* ldp	x11, x12, [x1, #32]                         #! EA = L0xffffffffe8a0; Value = 0x7aa1ccd7d940c358; PC = 0xaaaaaaab5598 *)
mov x11 L0xffffffffe8a0;
mov x12 L0xffffffffe8a8;
(* subs	x8, x8, x20                                #! PC = 0xaaaaaaab559c *)
subc carry x8 x8 x20;
(* sbcs	x9, x9, x21                                #! PC = 0xaaaaaaab55a0 *)
sbcs carry x9 x9 x21 carry;
(* stp	x20, x21, [x2]                              #! EA = L0xffffffffe3c8; PC = 0xaaaaaaab55a4 *)
mov L0xffffffffe3c8 x20;
mov L0xffffffffe3d0 x21;
(* ldr	x5, [x0, #48]                               #! EA = L0xffffffffe840; Value = 0x0000d563aaffd71d; PC = 0xaaaaaaab55a8 *)
mov x5 L0xffffffffe840;
(* mul	x20, x3, x11                                #! PC = 0xaaaaaaab55ac *)
mull Hx3x11 x20 x3 x11;
(* mul	x21, x3, x12                                #! PC = 0xaaaaaaab55b0 *)
mull Hx3x12 x21 x3 x12;
(* sbcs	x30, x30, x22                              #! PC = 0xaaaaaaab55b4 *)
sbcs carry x30 x30 x22 carry;
(* sbcs	x19, x19, x23                              #! PC = 0xaaaaaaab55b8 *)
sbcs carry x19 x19 x23 carry;
(* stp	x22, x23, [x2, #16]                         #! EA = L0xffffffffe3d8; PC = 0xaaaaaaab55bc *)
mov L0xffffffffe3d8 x22;
mov L0xffffffffe3e0 x23;
(* ldr	x13, [x1, #48]                              #! EA = L0xffffffffe8b0; Value = 0x0001febb2472823d; PC = 0xaaaaaaab55c0 *)
mov x13 L0xffffffffe8b0;
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

//mul2
assert eqmod limbs 64 [x8, x9, x30, x19, x10, x15, x16, x17]
             (limbs 64 [a7, a8, a9, a10] + limbs 64 [a11, a12, a13, 0]) *
             (limbs 64 [b7, b8, b9, b10] + limbs 64 [b11, b12, b13, 0]) -
             limbs 64 [a7, a8, a9, a10] * limbs 64 [b7, b8, b9, b10]
             2**512 && true;
assume limbs 64 [x8, x9, x30, x19, x10, x15, x16, x17] =
       (limbs 64 [a7, a8, a9, a10] + limbs 64 [a11, a12, a13, 0]) *
       (limbs 64 [b7, b8, b9, b10] + limbs 64 [b11, b12, b13, 0]) -
       limbs 64 [a7, a8, a9, a10] * limbs 64 [b7, b8, b9, b10] && true;

// MUL192_COMBA_CUT2_1
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
adc x23 x23 0@uint64 carry;
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
//end MUL192_COMBA_CUT2_1

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
(* stp	x8, x9, [x2, #32]                           #! EA = L0xffffffffe3e8; PC = 0xaaaaaaab568c *)
mov L0xffffffffe3e8 x8;
mov L0xffffffffe3f0 x9;
(* adcs	x30, x30, x26                              #! PC = 0xaaaaaaab5690 *)
adcs carry x30 x30 x26 carry;
(* ldp	x25, x26, [sp, #48]                         #! EA = L0xffffffffe250; Value = 0x0000ffffffffe7d8; PC = 0xaaaaaaab5694 *)
mov x25 L0xffffffffe250;
mov x26 L0xffffffffe258;
(* adcs	x19, x19, x27                              #! PC = 0xaaaaaaab5698 *)
adcs carry x19 x19 x27 carry;
(* stp	x30, x19, [x2, #48]                         #! EA = L0xffffffffe3f8; PC = 0xaaaaaaab569c *)
mov L0xffffffffe3f8 x30;
mov L0xffffffffe400 x19;
(* adcs	x10, x10, x20                              #! PC = 0xaaaaaaab56a0 *)
adcs carry x10 x10 x20 carry;
(* ldp	x19, x20, [sp]                              #! EA = L0xffffffffe220; Value = 0x0000ffffffffe358; PC = 0xaaaaaaab56a4 *)
mov x19 L0xffffffffe220;
mov x20 L0xffffffffe228;
(* adcs	x15, x15, x21                              #! PC = 0xaaaaaaab56a8 *)
adcs carry x15 x15 x21 carry;
(* stp	x10, x15, [x2, #64]                         #! EA = L0xffffffffe408; PC = 0xaaaaaaab56ac *)
mov L0xffffffffe408 x10;
mov L0xffffffffe410 x15;
(* adcs	x16, x16, x22                              #! PC = 0xaaaaaaab56b0 *)
adcs carry x16 x16 x22 carry;
(* ldp	x21, x22, [sp, #16]                         #! EA = L0xffffffffe230; Value = 0x0000ffffffffe3c8; PC = 0xaaaaaaab56b4 *)
mov x21 L0xffffffffe230;
mov x22 L0xffffffffe238;
(* adcs	x17, x17, x23                              #! PC = 0xaaaaaaab56b8 *)
adcs carry x17 x17 x23 carry;
(* stp	x16, x17, [x2, #80]                         #! EA = L0xffffffffe418; PC = 0xaaaaaaab56bc *)
mov L0xffffffffe418 x16;
mov L0xffffffffe420 x17;
(* adcs	x28, x28, xzr                              #! PC = 0xaaaaaaab56c0 *)
adcs carry x28 x28 0@uint64 carry;
(* ldp	x23, x24, [sp, #32]                         #! EA = L0xffffffffe240; Value = 0x0000ffffffffe2e8; PC = 0xaaaaaaab56c4 *)
mov x23 L0xffffffffe240;
mov x24 L0xffffffffe248;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab56c8 *)
adcs carry x29 x29 0@uint64 carry;
//256
assume carry = 0 && true;

(* stp	x28, x29, [x2, #96]                         #! EA = L0xffffffffe428; PC = 0xaaaaaaab56cc *)
mov L0xffffffffe428 x28;
mov L0xffffffffe430 x29;
(* ldp	x27, x28, [sp, #64]                         #! EA = L0xffffffffe260; Value = 0x0000ffffffffe880; PC = 0xaaaaaaab56d0 *)
mov x27 L0xffffffffe260;
mov x28 L0xffffffffe268;
(* ldp	x29, x30, [sp, #80]                         #! EA = L0xffffffffe270; Value = 0x0000ffffffffe280; PC = 0xaaaaaaab56d4 *)
mov x29 L0xffffffffe270;
mov x30 L0xffffffffe278;
(* add	sp, sp, #0x60                               #! PC = 0xaaaaaaab56d8 *)
adds dontcare sp sp 0x60@uint64;
(* #! <- SP = 0xffffffffe280 *)
#! 0xffffffffe280 = 0xffffffffe280;
(* #ret                                            #! PC = 0xaaaaaaab56dc *)
#ret                                            #! 0xaaaaaaab56dc = 0xaaaaaaab56dc;

//mul2 end
//3
cut
  and [ eq (limbs 64 [L0xffffffffe3c8, L0xffffffffe3d0, L0xffffffffe3d8, L0xffffffffe3e0,
      	   	     		       L0xffffffffe3e8, L0xffffffffe3f0, L0xffffffffe3f8,
      	      	      L0xffffffffe400, L0xffffffffe408, L0xffffffffe410, L0xffffffffe418,
				       L0xffffffffe420, L0xffffffffe428, L0xffffffffe430])
          ((limbs 64 [a7, a8, a9, a10, a11, a12, a13])
	  * (limbs 64 [b7, b8, b9, b10, b11, b12, b13]))
	  ] 
&&
  and [limbs 64 [L0xffffffffe3c8, L0xffffffffe3d0, L0xffffffffe3d8, L0xffffffffe3e0,
      	      	   	     	   L0xffffffffe3e8, L0xffffffffe3f0, L0xffffffffe3f8,
		  L0xffffffffe400, L0xffffffffe408, L0xffffffffe410, L0xffffffffe418,
	   		    	   L0xffffffffe420, L0xffffffffe428, L0xffffffffe430]
	<u (2**869)@896,
	(limbs 64 [a0, a1, a2, a3, a4, a5, a6]) <u (limbs 64 [px2_0, px2_1, px2_2, px2_3, px2_4, px2_5, px2_6]),
    	(limbs 64 [a7, a8, a9, a10, a11, a12, a13]) <u (limbs 64 [px2_0, px2_1, px2_2, px2_3, px2_4, px2_5, px2_6]),
    	(limbs 64 [b0, b1, b2, b3, b4, b5, b6]) <u (limbs 64 [px2_0, px2_1, px2_2, px2_3, px2_4, px2_5, px2_6]),
    	(limbs 64 [b7, b8, b9, b10, b11, b12, b13]) <u (limbs 64 [px2_0, px2_1, px2_2, px2_3, px2_4, px2_5, px2_6])]
prove with [ precondition, cuts [0, 1] ];

//tt3 = (a0+a1)*(b0+b1)
(* mov	w3, #0x7                   	// #7           #! PC = 0xaaaaaaaae344 *)
mov w3 7@uint64;
(* mov	x1, x24                                     #! PC = 0xaaaaaaaae348 *)
mov x1 x24;
(* mov	x0, x23                                     #! PC = 0xaaaaaaaae34c *)
mov x0 x23;
(* mov	x2, x20                                     #! PC = 0xaaaaaaaae350 *)
mov x2 x20;
(* #bl	0xaaaaaaab4f40 <mp_mul>                     #! PC = 0xaaaaaaaae354 *)
#bl	0xaaaaaaab4f40 <mp_mul>                     #! 0xaaaaaaaae354 = 0xaaaaaaaae354;
(* #! -> SP = 0xffffffffe280 *)
#! 0xffffffffe280 = 0xffffffffe280;
(* #b	0xaaaaaaab5254 <mul434_asm>                  #! PC = 0xaaaaaaab4f40 *)
#b	0xaaaaaaab5254 <mul434_asm>                  #! 0xaaaaaaab4f40 = 0xaaaaaaab4f40;
(* sub	sp, sp, #0x60                               #! PC = 0xaaaaaaab5254 *)
subc dontcare sp sp 0x60@uint64;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe2e8; Value = 0xcfb2af9923db9002; PC = 0xaaaaaaab5258 *)
mov x3 L0xffffffffe2e8;
mov x4 L0xffffffffe2f0;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe308; Value = 0x5fb904f7ecc5ad52; PC = 0xaaaaaaab525c *)
mov x7 L0xffffffffe308;
mov x8 L0xffffffffe310;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffe2f8; Value = 0x0f48f2d80464ec18; PC = 0xaaaaaaab5260 *)
mov x5 L0xffffffffe2f8;
mov x6 L0xffffffffe300;
(* ldr	x9, [x0, #48]                               #! EA = L0xffffffffe318; Value = 0x0002129e3bc31a9a; PC = 0xaaaaaaab5264 *)
mov x9 L0xffffffffe318;
(* stp	x25, x26, [sp, #48]                         #! EA = L0xffffffffe250; PC = 0xaaaaaaab5268 *)
mov L0xffffffffe250 x25;
mov L0xffffffffe258 x26;
(* stp	x27, x28, [sp, #64]                         #! EA = L0xffffffffe260; PC = 0xaaaaaaab526c *)
mov L0xffffffffe260 x27;
mov L0xffffffffe268 x28;
(* stp	x29, x30, [sp, #80]                         #! EA = L0xffffffffe270; PC = 0xaaaaaaab5270 *)
mov L0xffffffffe270 x29;
mov L0xffffffffe278 x30;
(* adds	x26, x3, x7                                #! PC = 0xaaaaaaab5274 *)
adds carry x26 x3 x7;
(* ldp	x11, x12, [x1]                              #! EA = L0xffffffffe320; Value = 0x253d23d1d396020c; PC = 0xaaaaaaab5278 *)
mov x11 L0xffffffffe320;
mov x12 L0xffffffffe328;
(* adcs	x27, x4, x8                                #! PC = 0xaaaaaaab527c *)
adcs carry x27 x4 x8 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0xffffffffe340; Value = 0x18bf76f8f9423706; PC = 0xaaaaaaab5280 *)
mov x15 L0xffffffffe340;
mov x16 L0xffffffffe348;
(* adcs	x28, x5, x9                                #! PC = 0xaaaaaaab5284 *)
adcs carry x28 x5 x9 carry;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0xffffffffe330; Value = 0xd460837f704e114a; PC = 0xaaaaaaab5288 *)
mov x13 L0xffffffffe330;
mov x14 L0xffffffffe338;
(* adcs	x29, x6, xzr                               #! PC = 0xaaaaaaab528c *)
adcs carry x29 x6 0@uint64 carry;
(* ldr	x17, [x1, #48]                              #! EA = L0xffffffffe350; Value = 0x00030c10b3c3f5f3; PC = 0xaaaaaaab5290 *)
mov x17 L0xffffffffe350;
(* adc	x7, xzr, xzr                                #! PC = 0xaaaaaaab5294 *)
adc x7 0@uint64 0@uint64 carry;
(* stp	x19, x20, [sp]                              #! EA = L0xffffffffe220; PC = 0xaaaaaaab5298 *)
mov L0xffffffffe220 x19;
mov L0xffffffffe228 x20;
(* adds	x11, x11, x15                              #! PC = 0xaaaaaaab529c *)
adds carry x11 x11 x15;
(* adcs	x12, x12, x16                              #! PC = 0xaaaaaaab52a0 *)
adcs carry x12 x12 x16 carry;
(* stp	x21, x22, [sp, #16]                         #! EA = L0xffffffffe230; PC = 0xaaaaaaab52a4 *)
mov L0xffffffffe230 x21;
mov L0xffffffffe238 x22;
(* adcs	x13, x13, x17                              #! PC = 0xaaaaaaab52a8 *)
adcs carry x13 x13 x17 carry;
(* adcs	x14, x14, xzr                              #! PC = 0xaaaaaaab52ac *)
adcs carry x14 x14 0@uint64 carry;
(* stp	x23, x24, [sp, #32]                         #! EA = L0xffffffffe240; PC = 0xaaaaaaab52b0 *)
mov L0xffffffffe240 x23;
mov L0xffffffffe248 x24;
(* adc	x8, xzr, xzr                                #! PC = 0xaaaaaaab52b4 *)
adc x8 0@uint64 0@uint64 carry;
(* neg	x9, x7                                      #! PC = 0xaaaaaaab52b8 *)
subc dontcare x9 0@uint64 x7;
(* neg	x8, x8                                      #! PC = 0xaaaaaaab52bc *)
ghost x8_o3@uint64 : x8_o3 = x8 && x8_o3 = x8;
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
    && and [x7*(x7-1@64) = 0@64, x8_o3*(x8_o3-1@64) = 0@64,
            limbs 64 [x10, x15, x16, x17] =
            uext x7 192 * limbs 64 [x11, x12, x13, x14],
            limbs 64 [x19, x20, x21, x22] =
            uext x8_o3 192 * limbs 64 [x26, x27, x28, x29]];
assume and [x7*(x7-1) = 0, x8_o3*(x8_o3-1) = 0,
            limbs 64 [x10, x15, x16, x17] =
            x7 * limbs 64 [x11, x12, x13, x14],
            limbs 64 [x19, x20, x21, x22] =
            x8_o3 * limbs 64 [x26, x27, x28, x29]] && true;

(* adds	x10, x10, x19                              #! PC = 0xaaaaaaab52e0 *)
adds carry x10 x10 x19;
(* adcs	x15, x15, x20                              #! PC = 0xaaaaaaab52e4 *)
adcs carry x15 x15 x20 carry;
(* adcs	x16, x16, x21                              #! PC = 0xaaaaaaab52e8 *)
adcs carry x16 x16 x21 carry;
(* stp	x26, x27, [x2]                              #! EA = L0xffffffffe438; PC = 0xaaaaaaab52ec *)
mov L0xffffffffe438 x26;
mov L0xffffffffe440 x27;
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

ghost x24c3@uint64 : x24c3 = x24 && x24c3 = x24;

(* and	x24, x24, x23                               #! PC = 0xaaaaaaab532c *)
and x24@uint64 x24 x23;

assert true && x24 = x24c3 * x23;
assume x24 = x24c3 * x23 && true;

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
(* ldp	x26, x27, [x2]                              #! EA = L0xffffffffe438; Value = 0x2f6bb49110a13d54; PC = 0xaaaaaaab5370 *)
mov x26 L0xffffffffe438;
mov x27 L0xffffffffe440;
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
#mull Hx26x11 x8 x26 x11;
mov x8 Lx26x11;
(* mul	x9, x26, x12                                #! PC = 0xaaaaaaab5388 *)
#mull Hx26x12 x9 x26 x12;
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
(* ldp	x11, x12, [x1]                              #! EA = L0xffffffffe320; Value = 0x253d23d1d396020c; PC = 0xaaaaaaab543c *)
mov x11 L0xffffffffe320;
mov x12 L0xffffffffe328;
(* adcs	x15, x15, x21                              #! PC = 0xaaaaaaab5440 *)
adcs carry x15 x15 x21 carry;
(* adcs	x16, x16, x22                              #! PC = 0xaaaaaaab5444 *)
adcs carry x16 x16 x22 carry;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0xffffffffe330; Value = 0xd460837f704e114a; PC = 0xaaaaaaab5448 *)
mov x13 L0xffffffffe330;
mov x14 L0xffffffffe338;
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

ghost x28c4@uint64 : x28c4 = x28 && x28c4 = x28;

(* and	x28, x28, x27                               #! PC = 0xaaaaaaab5488 *)
and x28@uint64 x28 x27;

assert true && x28 = x28c4 * x27;
assume x28 = x28c4 * x27 && true;

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
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe2e8; Value = 0xcfb2af9923db9002; PC = 0xaaaaaaab54cc *)
mov x3 L0xffffffffe2e8;
mov x4 L0xffffffffe2f0;
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
#mull Hx3x11 x20 x3 x11;
mov x20 Lx3x11;
(* mul	x21, x3, x12                                #! PC = 0xaaaaaaab54e4 *)
#mull Hx3x12 x21 x3 x12;
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
sbcs carry x28 x28 0@uint64 carry;
assume carry = 1 && true;

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
sbcs carry x28 x28 0@uint64 carry;
assume carry = 1 && true;

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

// t1 = (a0+a1) t2 = (b0+b1)
assert eqmod limbs 64 [x8, x9, x30, x19, x10, x15, x16, x17]
             (limbs 64 [L0xffffffffe2e8, L0xffffffffe2f0, L0xffffffffe2f8, L0xffffffffe300]
	     + limbs 64 [L0xffffffffe308, L0xffffffffe310, L0xffffffffe318, 0]) *
             (limbs 64 [L0xffffffffe320, L0xffffffffe328, L0xffffffffe330, L0xffffffffe338]
	     + limbs 64 [L0xffffffffe340, L0xffffffffe348, L0xffffffffe350, 0])
             2**512 && true ;
assume limbs 64 [x8, x9, x30, x19, x10, x15, x16, x17] =
       (limbs 64 [L0xffffffffe2e8, L0xffffffffe2f0, L0xffffffffe2f8, L0xffffffffe300]
       + limbs 64 [L0xffffffffe308, L0xffffffffe310, L0xffffffffe318, 0]) *
       (limbs 64 [L0xffffffffe320, L0xffffffffe328, L0xffffffffe330, L0xffffffffe338]
       + limbs 64 [L0xffffffffe340, L0xffffffffe348, L0xffffffffe350, 0]) && true;

(* ldp	x3, x4, [x0, #32]                           #! EA = L0xffffffffe308; Value = 0x5fb904f7ecc5ad52; PC = 0xaaaaaaab5594 *)
mov x3 L0xffffffffe308;
mov x4 L0xffffffffe310;
(* ldp	x11, x12, [x1, #32]                         #! EA = L0xffffffffe340; Value = 0x18bf76f8f9423706; PC = 0xaaaaaaab5598 *)
mov x11 L0xffffffffe340;
mov x12 L0xffffffffe348;
(* subs	x8, x8, x20                                #! PC = 0xaaaaaaab559c *)
subc carry x8 x8 x20;
(* sbcs	x9, x9, x21                                #! PC = 0xaaaaaaab55a0 *)
sbcs carry x9 x9 x21 carry;
(* stp	x20, x21, [x2]                              #! EA = L0xffffffffe438; PC = 0xaaaaaaab55a4 *)
mov L0xffffffffe438 x20;
mov L0xffffffffe440 x21;
(* ldr	x5, [x0, #48]                               #! EA = L0xffffffffe318; Value = 0x0002129e3bc31a9a; PC = 0xaaaaaaab55a8 *)
mov x5 L0xffffffffe318;
(* mul	x20, x3, x11                                #! PC = 0xaaaaaaab55ac *)
mull Hx3x11 x20 x3 x11;
(* mul	x21, x3, x12                                #! PC = 0xaaaaaaab55b0 *)
mull Hx3x12 x21 x3 x12;
(* sbcs	x30, x30, x22                              #! PC = 0xaaaaaaab55b4 *)
sbcs carry x30 x30 x22 carry;
(* sbcs	x19, x19, x23                              #! PC = 0xaaaaaaab55b8 *)
sbcs carry x19 x19 x23 carry;
(* stp	x22, x23, [x2, #16]                         #! EA = L0xffffffffe448; PC = 0xaaaaaaab55bc *)
mov L0xffffffffe448 x22;
mov L0xffffffffe450 x23;
(* ldr	x13, [x1, #48]                              #! EA = L0xffffffffe350; Value = 0x00030c10b3c3f5f3; PC = 0xaaaaaaab55c0 *)
mov x13 L0xffffffffe350;
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

//  t1 = (a0+a1) t2 = (b0+b1)
assert eqmod limbs 64 [x8, x9, x30, x19, x10, x15, x16, x17]
             (limbs 64 [L0xffffffffe2e8, L0xffffffffe2f0, L0xffffffffe2f8, L0xffffffffe300]
	     + limbs 64 [L0xffffffffe308, L0xffffffffe310, L0xffffffffe318, 0]) *
             (limbs 64 [L0xffffffffe320, L0xffffffffe328, L0xffffffffe330, L0xffffffffe338]
	     + limbs 64 [L0xffffffffe340, L0xffffffffe348, L0xffffffffe350, 0]) -
             limbs 64 [L0xffffffffe2e8, L0xffffffffe2f0, L0xffffffffe2f8, L0xffffffffe300]
	     * limbs 64 [L0xffffffffe320, L0xffffffffe328, L0xffffffffe330, L0xffffffffe338]
             2**512 && true;
assume limbs 64 [x8, x9, x30, x19, x10, x15, x16, x17] =
        (limbs 64 [L0xffffffffe2e8, L0xffffffffe2f0, L0xffffffffe2f8, L0xffffffffe300]
	+ limbs 64 [L0xffffffffe308, L0xffffffffe310, L0xffffffffe318, 0]) *
        (limbs 64 [L0xffffffffe320, L0xffffffffe328, L0xffffffffe330, L0xffffffffe338]
	+ limbs 64 [L0xffffffffe340, L0xffffffffe348, L0xffffffffe350, 0]) -
        limbs 64 [L0xffffffffe2e8, L0xffffffffe2f0, L0xffffffffe2f8, L0xffffffffe300]
	* limbs 64 [L0xffffffffe320, L0xffffffffe328, L0xffffffffe330, L0xffffffffe338]
	&& true;

// MUL192_COMBA_CUT3_1
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
(* stp	x8, x9, [x2, #32]                           #! EA = L0xffffffffe458; PC = 0xaaaaaaab568c *)
mov L0xffffffffe458 x8;
mov L0xffffffffe460 x9;
(* adcs	x30, x30, x26                              #! PC = 0xaaaaaaab5690 *)
adcs carry x30 x30 x26 carry;
(* ldp	x25, x26, [sp, #48]                         #! EA = L0xffffffffe250; Value = 0x0000ffffffffe7d8; PC = 0xaaaaaaab5694 *)
mov x25 L0xffffffffe250;
mov x26 L0xffffffffe258;
(* adcs	x19, x19, x27                              #! PC = 0xaaaaaaab5698 *)
adcs carry x19 x19 x27 carry;
(* stp	x30, x19, [x2, #48]                         #! EA = L0xffffffffe468; PC = 0xaaaaaaab569c *)
mov L0xffffffffe468 x30;
mov L0xffffffffe470 x19;
(* adcs	x10, x10, x20                              #! PC = 0xaaaaaaab56a0 *)
adcs carry x10 x10 x20 carry;
(* ldp	x19, x20, [sp]                              #! EA = L0xffffffffe220; Value = 0x0000ffffffffe358; PC = 0xaaaaaaab56a4 *)
mov x19 L0xffffffffe220;
mov x20 L0xffffffffe228;
(* adcs	x15, x15, x21                              #! PC = 0xaaaaaaab56a8 *)
adcs carry x15 x15 x21 carry;
(* stp	x10, x15, [x2, #64]                         #! EA = L0xffffffffe478; PC = 0xaaaaaaab56ac *)
mov L0xffffffffe478 x10;
mov L0xffffffffe480 x15;
(* adcs	x16, x16, x22                              #! PC = 0xaaaaaaab56b0 *)
adcs carry x16 x16 x22 carry;
(* ldp	x21, x22, [sp, #16]                         #! EA = L0xffffffffe230; Value = 0x0000ffffffffe3c8; PC = 0xaaaaaaab56b4 *)
mov x21 L0xffffffffe230;
mov x22 L0xffffffffe238;
(* adcs	x17, x17, x23                              #! PC = 0xaaaaaaab56b8 *)
adcs carry x17 x17 x23 carry;
(* stp	x16, x17, [x2, #80]                         #! EA = L0xffffffffe488; PC = 0xaaaaaaab56bc *)
mov L0xffffffffe488 x16;
mov L0xffffffffe490 x17;
(* adcs	x28, x28, xzr                              #! PC = 0xaaaaaaab56c0 *)
adcs carry x28 x28 0@uint64 carry;
(* ldp	x23, x24, [sp, #32]                         #! EA = L0xffffffffe240; Value = 0x0000ffffffffe2e8; PC = 0xaaaaaaab56c4 *)
mov x23 L0xffffffffe240;
mov x24 L0xffffffffe248;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab56c8 *)
adcs carry x29 x29 0@uint64 carry;
assume carry = 0 && true;

(* stp	x28, x29, [x2, #96]                         #! EA = L0xffffffffe498; PC = 0xaaaaaaab56cc *)
mov L0xffffffffe498 x28;
mov L0xffffffffe4a0 x29;
(* ldp	x27, x28, [sp, #64]                         #! EA = L0xffffffffe260; Value = 0x0000ffffffffe880; PC = 0xaaaaaaab56d0 *)
mov x27 L0xffffffffe260;
mov x28 L0xffffffffe268;
(* ldp	x29, x30, [sp, #80]                         #! EA = L0xffffffffe270; Value = 0x0000ffffffffe280; PC = 0xaaaaaaab56d4 *)
mov x29 L0xffffffffe270;
mov x30 L0xffffffffe278;
(* add	sp, sp, #0x60                               #! PC = 0xaaaaaaab56d8 *)
adds dontcare sp sp 0x60@uint64;
(* #! <- SP = 0xffffffffe280 *)
#! 0xffffffffe280 = 0xffffffffe280;
(* #ret                                            #! PC = 0xaaaaaaab56dc *)
#ret                                            #! 0xaaaaaaab56dc = 0xaaaaaaab56dc;

//mul3 end t1 = (a0+a1) t2 = (b0+b1)
//4
cut
  and [ eqmod (limbs 64 [L0xffffffffe438, L0xffffffffe440, L0xffffffffe448, L0xffffffffe450,
      	   	     		       	  L0xffffffffe458, L0xffffffffe460, L0xffffffffe468,
      	      	      	 L0xffffffffe470, L0xffffffffe478, L0xffffffffe480, L0xffffffffe488,
				       	  L0xffffffffe490, L0xffffffffe498, L0xffffffffe4a0])
	       (limbs 64 [a0, a1, a2, a3, a4, a5, a6] +
                limbs 64 [a7, a8, a9, a10, a11, a12, a13]) *
               (limbs 64 [b0, b1, b2, b3, b4, b5, b6] +
                limbs 64 [b7, b8, b9, b10, b11, b12, b13])
	  limbs 64 [px2_0, px2_1, px2_2, px2_3, px2_4, px2_5, px2_6]]
prove with [ precondition, cuts [0, 1] ]
&&
(limbs 64 [L0xffffffffe438, L0xffffffffe440, L0xffffffffe448, L0xffffffffe450,
      	   	     	    L0xffffffffe458, L0xffffffffe460, L0xffffffffe468,
      	   L0xffffffffe470, L0xffffffffe478, L0xffffffffe480, L0xffffffffe488,
			    L0xffffffffe490, L0xffffffffe498, L0xffffffffe4a0])
<u (2**880)@896
prove with [ precondition, cuts [0, 1] ];

// tt3 = (a0+a1)*(b0+b1) - a0*b0 - a1*b1

assume true &&
limbs 64 [L0xffffffffe438, L0xffffffffe440, L0xffffffffe448, L0xffffffffe450,
      	   	     	   L0xffffffffe458, L0xffffffffe460, L0xffffffffe468,
      	  L0xffffffffe470, L0xffffffffe478, L0xffffffffe480, L0xffffffffe488,
			   L0xffffffffe490, L0xffffffffe498, L0xffffffffe4a0,
			   0@64] >=u
limbs 64 [L0xffffffffe358, L0xffffffffe360, L0xffffffffe368, L0xffffffffe370,
      	   	     	   L0xffffffffe378, L0xffffffffe380, L0xffffffffe388,
      	  L0xffffffffe390, L0xffffffffe398, L0xffffffffe3a0, L0xffffffffe3a8,
			   L0xffffffffe3b0, L0xffffffffe3b8, L0xffffffffe3c0,
			   0@64] +
limbs 64 [L0xffffffffe3c8, L0xffffffffe3d0, L0xffffffffe3d8, L0xffffffffe3e0,
      	   	     	   L0xffffffffe3e8, L0xffffffffe3f0, L0xffffffffe3f8,
      	  L0xffffffffe400, L0xffffffffe408, L0xffffffffe410, L0xffffffffe418,
			   L0xffffffffe420, L0xffffffffe428, L0xffffffffe430,
			   0@64];

(* mov	x2, x20                                     #! PC = 0xaaaaaaaae358 *)
mov x2 x20;
(* mov	x1, x21                                     #! PC = 0xaaaaaaaae35c *)
mov x1 x21;
(* mov	x0, x19                                     #! PC = 0xaaaaaaaae360 *)
mov x0 x19;
(* #bl	0xaaaaaaab5b6c <mp_dblsub434x2_asm>         #! PC = 0xaaaaaaaae364 *)
#bl	0xaaaaaaab5b6c <mp_dblsub434x2_asm>         #! 0xaaaaaaaae364 = 0xaaaaaaaae364;
(* #! -> SP = 0xffffffffe280 *)
#! 0xffffffffe280 = 0xffffffffe280;
(* sub	sp, sp, #0x20                               #! PC = 0xaaaaaaab5b6c *)
subc dontcare sp sp 0x20@uint64;
(* stp	x27, x28, [sp]                              #! EA = L0xffffffffe260; PC = 0xaaaaaaab5b70 *)
mov L0xffffffffe260 x27;
mov L0xffffffffe268 x28;
(* stp	x29, x30, [sp, #16]                         #! EA = L0xffffffffe270; PC = 0xaaaaaaab5b74 *)
mov L0xffffffffe270 x29;
mov L0xffffffffe278 x30;
(* ldp	x3, x4, [x2]                                #! EA = L0xffffffffe438; Value = 0x23733f6f6c96c418; PC = 0xaaaaaaab5b78 *)
mov x3 L0xffffffffe438;
mov x4 L0xffffffffe440;
(* ldp	x5, x6, [x2, #16]                           #! EA = L0xffffffffe448; Value = 0x77fcfa8ef4c87d20; PC = 0xaaaaaaab5b7c *)
mov x5 L0xffffffffe448;
mov x6 L0xffffffffe450;
(* ldp	x27, x28, [x0]                              #! EA = L0xffffffffe358; Value = 0x9b4e33a0c9e80c99; PC = 0xaaaaaaab5b80 *)
mov x27 L0xffffffffe358;
mov x28 L0xffffffffe360;
(* ldp	x29, x30, [x0, #16]                         #! EA = L0xffffffffe368; Value = 0x4a67866caa027572; PC = 0xaaaaaaab5b84 *)
mov x29 L0xffffffffe368;
mov x30 L0xffffffffe370;
(* ldp	x7, x8, [x2, #32]                           #! EA = L0xffffffffe458; Value = 0xaf3032e4aa91d0b4; PC = 0xaaaaaaab5b88 *)
mov x7 L0xffffffffe458;
mov x8 L0xffffffffe460;
(* ldp	x9, x10, [x2, #48]                          #! EA = L0xffffffffe468; Value = 0x7620f05fa470feeb; PC = 0xaaaaaaab5b8c *)
mov x9 L0xffffffffe468;
mov x10 L0xffffffffe470;
(* subs	x3, x3, x27                                #! PC = 0xaaaaaaab5b90 *)
subc carry x3 x3 x27;
(* sbcs	x4, x4, x28                                #! PC = 0xaaaaaaab5b94 *)
sbcs carry x4 x4 x28 carry;
(* sbcs	x5, x5, x29                                #! PC = 0xaaaaaaab5b98 *)
sbcs carry x5 x5 x29 carry;
(* sbcs	x6, x6, x30                                #! PC = 0xaaaaaaab5b9c *)
sbcs carry x6 x6 x30 carry;
(* ldp	x27, x28, [x0, #32]                         #! EA = L0xffffffffe378; Value = 0x0ccba6fa01c201dd; PC = 0xaaaaaaab5ba0 *)
mov x27 L0xffffffffe378;
mov x28 L0xffffffffe380;
(* ldp	x29, x30, [x0, #48]                         #! EA = L0xffffffffe388; Value = 0x41d8b6497ecfb181; PC = 0xaaaaaaab5ba4 *)
mov x29 L0xffffffffe388;
mov x30 L0xffffffffe390;
(* ldp	x11, x12, [x2, #64]                         #! EA = L0xffffffffe478; Value = 0xe67e433d5f802ec1; PC = 0xaaaaaaab5ba8 *)
mov x11 L0xffffffffe478;
mov x12 L0xffffffffe480;
(* ldp	x13, x14, [x2, #80]                         #! EA = L0xffffffffe488; Value = 0xb3222d223172f437; PC = 0xaaaaaaab5bac *)
mov x13 L0xffffffffe488;
mov x14 L0xffffffffe490;
(* sbcs	x7, x7, x27                                #! PC = 0xaaaaaaab5bb0 *)
sbcs carry x7 x7 x27 carry;
(* sbcs	x8, x8, x28                                #! PC = 0xaaaaaaab5bb4 *)
sbcs carry x8 x8 x28 carry;
(* ldp	x27, x28, [x0, #64]                         #! EA = L0xffffffffe398; Value = 0x25201a3f1565be26; PC = 0xaaaaaaab5bb8 *)
mov x27 L0xffffffffe398;
mov x28 L0xffffffffe3a0;
(* sbcs	x9, x9, x29                                #! PC = 0xaaaaaaab5bbc *)
sbcs carry x9 x9 x29 carry;
(* sbcs	x10, x10, x30                              #! PC = 0xaaaaaaab5bc0 *)
sbcs carry x10 x10 x30 carry;
(* ldp	x29, x30, [x0, #80]                         #! EA = L0xffffffffe3a8; Value = 0x472a1e65f6372c05; PC = 0xaaaaaaab5bc4 *)
mov x29 L0xffffffffe3a8;
mov x30 L0xffffffffe3b0;
(* ldp	x15, x16, [x2, #96]                         #! EA = L0xffffffffe498; Value = 0x015ca229eedaa478; PC = 0xaaaaaaab5bc8 *)
mov x15 L0xffffffffe498;
mov x16 L0xffffffffe4a0;
(* sbcs	x11, x11, x27                              #! PC = 0xaaaaaaab5bcc *)
sbcs carry x11 x11 x27 carry;
(* sbcs	x12, x12, x28                              #! PC = 0xaaaaaaab5bd0 *)
sbcs carry x12 x12 x28 carry;
(* ldp	x27, x28, [x0, #96]                         #! EA = L0xffffffffe3b8; Value = 0xe48852119fc299e5; PC = 0xaaaaaaab5bd4 *)
mov x27 L0xffffffffe3b8;
mov x28 L0xffffffffe3c0;
(* sbcs	x13, x13, x29                              #! PC = 0xaaaaaaab5bd8 *)
sbcs carry x13 x13 x29 carry;
(* sbcs	x14, x14, x30                              #! PC = 0xaaaaaaab5bdc *)
sbcs carry x14 x14 x30 carry;
(* ldp	x29, x30, [x1]                              #! EA = L0xffffffffe3c8; Value = 0x1dbb54c59a204793; PC = 0xaaaaaaab5be0 *)
mov x29 L0xffffffffe3c8;
mov x30 L0xffffffffe3d0;
(* sbcs	x15, x15, x27                              #! PC = 0xaaaaaaab5be4 *)
sbcs carry x15 x15 x27 carry;
(* sbc	x16, x16, x28                               #! PC = 0xaaaaaaab5be8 *)
//45
sbcs dontcare x16 x16 x28 carry;
assume dontcare = 1 && true;

(* ldp	x27, x28, [x1, #16]                         #! EA = L0xffffffffe3d8; Value = 0x5639fa2b64af4300; PC = 0xaaaaaaab5bec *)
mov x27 L0xffffffffe3d8;
mov x28 L0xffffffffe3e0;
(* subs	x3, x3, x29                                #! PC = 0xaaaaaaab5bf0 *)
subc carry x3 x3 x29;
(* sbcs	x4, x4, x30                                #! PC = 0xaaaaaaab5bf4 *)
sbcs carry x4 x4 x30 carry;
(* stp	x3, x4, [x2]                                #! EA = L0xffffffffe438; PC = 0xaaaaaaab5bf8 *)
mov L0xffffffffe438 x3;
mov L0xffffffffe440 x4;
(* ldp	x29, x30, [x1, #32]                         #! EA = L0xffffffffe3e8; Value = 0xfe2efe603fecc7ce; PC = 0xaaaaaaab5bfc *)
mov x29 L0xffffffffe3e8;
mov x30 L0xffffffffe3f0;
(* sbcs	x5, x5, x27                                #! PC = 0xaaaaaaab5c00 *)
sbcs carry x5 x5 x27 carry;
(* sbcs	x6, x6, x28                                #! PC = 0xaaaaaaab5c04 *)
sbcs carry x6 x6 x28 carry;
(* stp	x5, x6, [x2, #16]                           #! EA = L0xffffffffe448; PC = 0xaaaaaaab5c08 *)
mov L0xffffffffe448 x5;
mov L0xffffffffe450 x6;
(* ldp	x27, x28, [x1, #48]                         #! EA = L0xffffffffe3f8; Value = 0xb77a4ab8603e12a4; PC = 0xaaaaaaab5c0c *)
mov x27 L0xffffffffe3f8;
mov x28 L0xffffffffe400;
(* sbcs	x7, x7, x29                                #! PC = 0xaaaaaaab5c10 *)
sbcs carry x7 x7 x29 carry;
(* sbcs	x8, x8, x30                                #! PC = 0xaaaaaaab5c14 *)
sbcs carry x8 x8 x30 carry;
(* stp	x7, x8, [x2, #32]                           #! EA = L0xffffffffe458; PC = 0xaaaaaaab5c18 *)
mov L0xffffffffe458 x7;
mov L0xffffffffe460 x8;
(* ldp	x29, x30, [x1, #64]                         #! EA = L0xffffffffe408; Value = 0x03ba1fed595d1f19; PC = 0xaaaaaaab5c1c *)
mov x29 L0xffffffffe408;
mov x30 L0xffffffffe410;
(* sbcs	x9, x9, x27                                #! PC = 0xaaaaaaab5c20 *)
sbcs carry x9 x9 x27 carry;
(* sbcs	x10, x10, x28                              #! PC = 0xaaaaaaab5c24 *)
sbcs carry x10 x10 x28 carry;
(* stp	x9, x10, [x2, #48]                          #! EA = L0xffffffffe468; PC = 0xaaaaaaab5c28 *)
mov L0xffffffffe468 x9;
mov L0xffffffffe470 x10;
(* ldp	x27, x28, [x1, #80]                         #! EA = L0xffffffffe418; Value = 0xef88faacb4a7c43b; PC = 0xaaaaaaab5c2c *)
mov x27 L0xffffffffe418;
mov x28 L0xffffffffe420;
(* sbcs	x11, x11, x29                              #! PC = 0xaaaaaaab5c30 *)
sbcs carry x11 x11 x29 carry;
(* sbcs	x12, x12, x30                              #! PC = 0xaaaaaaab5c34 *)
sbcs carry x12 x12 x30 carry;
(* stp	x11, x12, [x2, #64]                         #! EA = L0xffffffffe478; PC = 0xaaaaaaab5c38 *)
mov L0xffffffffe478 x11;
mov L0xffffffffe480 x12;
(* ldp	x29, x30, [x1, #96]                         #! EA = L0xffffffffe428; Value = 0x0e6d139f64d184af; PC = 0xaaaaaaab5c3c *)
mov x29 L0xffffffffe428;
mov x30 L0xffffffffe430;
(* sbcs	x13, x13, x27                              #! PC = 0xaaaaaaab5c40 *)
sbcs carry x13 x13 x27 carry;
(* sbcs	x14, x14, x28                              #! PC = 0xaaaaaaab5c44 *)
sbcs carry x14 x14 x28 carry;
(* stp	x13, x14, [x2, #80]                         #! EA = L0xffffffffe488; PC = 0xaaaaaaab5c48 *)
mov L0xffffffffe488 x13;
mov L0xffffffffe490 x14;
(* ldp	x27, x28, [sp]                              #! EA = L0xffffffffe260; Value = 0x0000ffffffffe880; PC = 0xaaaaaaab5c4c *)
mov x27 L0xffffffffe260;
mov x28 L0xffffffffe268;
(* sbcs	x15, x15, x29                              #! PC = 0xaaaaaaab5c50 *)
sbcs carry x15 x15 x29 carry;
(* sbc	x16, x16, x30                               #! PC = 0xaaaaaaab5c54 *)
sbcs dontcare x16 x16 x30 carry;
//46
assume dontcare = 1 && true;

(* stp	x15, x16, [x2, #96]                         #! EA = L0xffffffffe498; PC = 0xaaaaaaab5c58 *)
mov L0xffffffffe498 x15;
mov L0xffffffffe4a0 x16;
(* ldp	x29, x30, [sp, #16]                         #! EA = L0xffffffffe270; Value = 0x0000ffffffffe280; PC = 0xaaaaaaab5c5c *)
mov x29 L0xffffffffe270;
mov x30 L0xffffffffe278;
(* add	sp, sp, #0x20                               #! PC = 0xaaaaaaab5c60 *)
adds dontcare sp sp 0x20@uint64;
(* #! <- SP = 0xffffffffe280 *)
#! 0xffffffffe280 = 0xffffffffe280;
(* #ret                                            #! PC = 0xaaaaaaab5c64 *)
#ret                                            #! 0xaaaaaaab5c64 = 0xaaaaaaab5c64;

//dblsub end tt3 = (a0+a1)*(b0+b1) - a0*b0 - a1*b1
//5
cut eqmod limbs 64 [L0xffffffffe438, L0xffffffffe440, L0xffffffffe448, L0xffffffffe450,
    	  	   		     L0xffffffffe458, L0xffffffffe460, L0xffffffffe468,
		    L0xffffffffe470, L0xffffffffe478, L0xffffffffe480, L0xffffffffe488,
		    		     L0xffffffffe490, L0xffffffffe498, L0xffffffffe4a0]
		   (limbs 64 [a0, a1, a2, a3, a4, a5, a6] +
           	   limbs 64 [a7, a8, a9, a10, a11, a12, a13]) *
          	   (limbs 64 [b0, b1, b2, b3, b4, b5, b6] +
		   limbs 64 [b7, b8, b9, b10, b11, b12, b13])    -
          	   limbs 64 [a0, a1, a2, a3, a4, a5, a6] *
          	   limbs 64 [b0, b1, b2, b3, b4, b5, b6]      -
          	   limbs 64 [a7, a8, a9, a10, a11, a12, a13] *
          	   limbs 64 [b7, b8, b9, b10, b11, b12, b13]
          	   limbs 64 [px2_0, px2_1, px2_2, px2_3, px2_4, px2_5, px2_6]
		   prove with [ precondition, cuts [ 2, 3 ] ]
&& and [limbs 64 [L0xffffffffe438, L0xffffffffe440, L0xffffffffe448, L0xffffffffe450,
    	  	   		   L0xffffffffe458, L0xffffffffe460, L0xffffffffe468,
		  L0xffffffffe470, L0xffffffffe478, L0xffffffffe480, L0xffffffffe488,
		    		   L0xffffffffe490, L0xffffffffe498, L0xffffffffe4a0] <u
	(2 ** 880)@896,
	limbs 64 [L0xffffffffe358, L0xffffffffe360, L0xffffffffe368, L0xffffffffe370,
      	   	     	   	   L0xffffffffe378, L0xffffffffe380, L0xffffffffe388,
      	          L0xffffffffe390, L0xffffffffe398, L0xffffffffe3a0, L0xffffffffe3a8,
			   	   L0xffffffffe3b0, L0xffffffffe3b8, L0xffffffffe3c0] <u
	(2 ** 880)@896,
	limbs 64 [L0xffffffffe3c8, L0xffffffffe3d0, L0xffffffffe3d8, L0xffffffffe3e0,
      	   	     	   	   L0xffffffffe3e8, L0xffffffffe3f0, L0xffffffffe3f8,
      	  	  L0xffffffffe400, L0xffffffffe408, L0xffffffffe410, L0xffffffffe418,
			   	   L0xffffffffe420, L0xffffffffe428, L0xffffffffe430] <u
	(2 ** 880)@896]
prove with [ precondition, cuts [ 0, 2, 3 ] ];

// tt1 = a0*b0 - a1*b1 + p*2^MAXBITS_FIELD if a0*b0 - a1*b1 < 0, else tt1 = a0*b0 - a1*b1

ghost L0xffffffffe358_o@uint64, L0xffffffffe360_o@uint64, L0xffffffffe368_o@uint64, L0xffffffffe370_o@uint64,
      L0xffffffffe378_o@uint64, L0xffffffffe380_o@uint64, L0xffffffffe388_o@uint64,
      L0xffffffffe390_o@uint64, L0xffffffffe398_o@uint64, L0xffffffffe3a0_o@uint64, L0xffffffffe3a8_o@uint64,
      L0xffffffffe3b0_o@uint64, L0xffffffffe3b8_o@uint64, L0xffffffffe3c0_o@uint64,
      L0xffffffffe3c8_o@uint64, L0xffffffffe3d0_o@uint64, L0xffffffffe3d8_o@uint64, L0xffffffffe3e0_o@uint64,
      L0xffffffffe3e8_o@uint64, L0xffffffffe3f0_o@uint64, L0xffffffffe3f8_o@uint64,
      L0xffffffffe400_o@uint64, L0xffffffffe408_o@uint64, L0xffffffffe410_o@uint64, L0xffffffffe418_o@uint64,
      L0xffffffffe420_o@uint64, L0xffffffffe428_o@uint64, L0xffffffffe430_o@uint64 :
      and [
      L0xffffffffe358_o=L0xffffffffe358, L0xffffffffe360_o=L0xffffffffe360, L0xffffffffe368_o=L0xffffffffe368,
      L0xffffffffe370_o=L0xffffffffe370,
      L0xffffffffe378_o=L0xffffffffe378, L0xffffffffe380_o=L0xffffffffe380, L0xffffffffe388_o=L0xffffffffe388,
      L0xffffffffe390_o=L0xffffffffe390, L0xffffffffe398_o=L0xffffffffe398, L0xffffffffe3a0_o=L0xffffffffe3a0,
      L0xffffffffe3a8_o=L0xffffffffe3a8,
      L0xffffffffe3b0_o=L0xffffffffe3b0, L0xffffffffe3b8_o=L0xffffffffe3b8, L0xffffffffe3c0_o=L0xffffffffe3c0,
      L0xffffffffe3c8_o=L0xffffffffe3c8, L0xffffffffe3d0_o=L0xffffffffe3d0, L0xffffffffe3d8_o=L0xffffffffe3d8,
      L0xffffffffe3e0_o=L0xffffffffe3e0,
      L0xffffffffe3e8_o=L0xffffffffe3e8, L0xffffffffe3f0_o=L0xffffffffe3f0, L0xffffffffe3f8_o=L0xffffffffe3f8,
      L0xffffffffe400_o=L0xffffffffe400, L0xffffffffe408_o=L0xffffffffe408, L0xffffffffe410_o=L0xffffffffe410,
      L0xffffffffe418_o=L0xffffffffe418,
      L0xffffffffe420_o=L0xffffffffe420, L0xffffffffe428_o=L0xffffffffe428, L0xffffffffe430_o=L0xffffffffe430]
      && and [
      L0xffffffffe358_o=L0xffffffffe358, L0xffffffffe360_o=L0xffffffffe360, L0xffffffffe368_o=L0xffffffffe368,
      L0xffffffffe370_o=L0xffffffffe370,
      L0xffffffffe378_o=L0xffffffffe378, L0xffffffffe380_o=L0xffffffffe380, L0xffffffffe388_o=L0xffffffffe388,
      L0xffffffffe390_o=L0xffffffffe390, L0xffffffffe398_o=L0xffffffffe398, L0xffffffffe3a0_o=L0xffffffffe3a0,
      L0xffffffffe3a8_o=L0xffffffffe3a8,
      L0xffffffffe3b0_o=L0xffffffffe3b0, L0xffffffffe3b8_o=L0xffffffffe3b8, L0xffffffffe3c0_o=L0xffffffffe3c0,
      L0xffffffffe3c8_o=L0xffffffffe3c8, L0xffffffffe3d0_o=L0xffffffffe3d0, L0xffffffffe3d8_o=L0xffffffffe3d8,
      L0xffffffffe3e0_o=L0xffffffffe3e0,
      L0xffffffffe3e8_o=L0xffffffffe3e8, L0xffffffffe3f0_o=L0xffffffffe3f0, L0xffffffffe3f8_o=L0xffffffffe3f8,
      L0xffffffffe400_o=L0xffffffffe400, L0xffffffffe408_o=L0xffffffffe408, L0xffffffffe410_o=L0xffffffffe410,
      L0xffffffffe418_o=L0xffffffffe418,
      L0xffffffffe420_o=L0xffffffffe420, L0xffffffffe428_o=L0xffffffffe428, L0xffffffffe430_o=L0xffffffffe430]
      ;

(* mov	x2, x19                                     #! PC = 0xaaaaaaaae368 *)
mov x2 x19;
(* mov	x1, x21                                     #! PC = 0xaaaaaaaae36c *)
mov x1 x21;
(* mov	x0, x19                                     #! PC = 0xaaaaaaaae370 *)
mov x0 x19;
(* #bl	0xaaaaaaab5a90 <mp_subadd434x2_asm>         #! PC = 0xaaaaaaaae374 *)
#bl	0xaaaaaaab5a90 <mp_subadd434x2_asm>         #! 0xaaaaaaaae374 = 0xaaaaaaaae374;
(* #! -> SP = 0xffffffffe280 *)
#! 0xffffffffe280 = 0xffffffffe280;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe358; Value = 0x9b4e33a0c9e80c99; PC = 0xaaaaaaab5a90 *)
mov x3 L0xffffffffe358;
mov x4 L0xffffffffe360;
(* ldp	x11, x12, [x1]                              #! EA = L0xffffffffe3c8; Value = 0x1dbb54c59a204793; PC = 0xaaaaaaab5a94 *)
mov x11 L0xffffffffe3c8;
mov x12 L0xffffffffe3d0;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffe368; Value = 0x4a67866caa027572; PC = 0xaaaaaaab5a98 *)
mov x5 L0xffffffffe368;
mov x6 L0xffffffffe370;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0xffffffffe3d8; Value = 0x5639fa2b64af4300; PC = 0xaaaaaaab5a9c *)
mov x13 L0xffffffffe3d8;
mov x14 L0xffffffffe3e0;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe378; Value = 0x0ccba6fa01c201dd; PC = 0xaaaaaaab5aa0 *)
mov x7 L0xffffffffe378;
mov x8 L0xffffffffe380;
(* subs	x3, x3, x11                                #! PC = 0xaaaaaaab5aa4 *)
subc carry x3 x3 x11;
(* sbcs	x4, x4, x12                                #! PC = 0xaaaaaaab5aa8 *)
sbcs carry x4 x4 x12 carry;
(* stp	x3, x4, [x2]                                #! EA = L0xffffffffe358; PC = 0xaaaaaaab5aac *)
mov L0xffffffffe358 x3;
mov L0xffffffffe360 x4;
(* ldp	x11, x12, [x1, #32]                         #! EA = L0xffffffffe3e8; Value = 0xfe2efe603fecc7ce; PC = 0xaaaaaaab5ab0 *)
mov x11 L0xffffffffe3e8;
mov x12 L0xffffffffe3f0;
(* sbcs	x5, x5, x13                                #! PC = 0xaaaaaaab5ab4 *)
sbcs carry x5 x5 x13 carry;
(* ldp	x9, x10, [x0, #48]                          #! EA = L0xffffffffe388; Value = 0x41d8b6497ecfb181; PC = 0xaaaaaaab5ab8 *)
mov x9 L0xffffffffe388;
mov x10 L0xffffffffe390;
(* ldp	x15, x16, [x1, #48]                         #! EA = L0xffffffffe3f8; Value = 0xb77a4ab8603e12a4; PC = 0xaaaaaaab5abc *)
mov x15 L0xffffffffe3f8;
mov x16 L0xffffffffe400;
(* sbcs	x6, x6, x14                                #! PC = 0xaaaaaaab5ac0 *)
sbcs carry x6 x6 x14 carry;
(* stp	x5, x6, [x2, #16]                           #! EA = L0xffffffffe368; PC = 0xaaaaaaab5ac4 *)
mov L0xffffffffe368 x5;
mov L0xffffffffe370 x6;
(* sbcs	x7, x7, x11                                #! PC = 0xaaaaaaab5ac8 *)
sbcs carry x7 x7 x11 carry;
(* sbcs	x8, x8, x12                                #! PC = 0xaaaaaaab5acc *)
sbcs carry x8 x8 x12 carry;
(* stp	x7, x8, [x2, #32]                           #! EA = L0xffffffffe378; PC = 0xaaaaaaab5ad0 *)
mov L0xffffffffe378 x7;
mov L0xffffffffe380 x8;
(* sbcs	x9, x9, x15                                #! PC = 0xaaaaaaab5ad4 *)
sbcs carry x9 x9 x15 carry;
(* sbcs	x10, x10, x16                              #! PC = 0xaaaaaaab5ad8 *)
sbcs carry x10 x10 x16 carry;
(* str	x9, [x2, #48]                               #! EA = L0xffffffffe388; PC = 0xaaaaaaab5adc *)
mov L0xffffffffe388 x9;
(* ldp	x3, x4, [x0, #64]                           #! EA = L0xffffffffe398; Value = 0x25201a3f1565be26; PC = 0xaaaaaaab5ae0 *)
mov x3 L0xffffffffe398;
mov x4 L0xffffffffe3a0;
(* ldp	x11, x12, [x1, #64]                         #! EA = L0xffffffffe408; Value = 0x03ba1fed595d1f19; PC = 0xaaaaaaab5ae4 *)
mov x11 L0xffffffffe408;
mov x12 L0xffffffffe410;
(* ldp	x5, x6, [x0, #80]                           #! EA = L0xffffffffe3a8; Value = 0x472a1e65f6372c05; PC = 0xaaaaaaab5ae8 *)
mov x5 L0xffffffffe3a8;
mov x6 L0xffffffffe3b0;
(* ldp	x13, x14, [x1, #80]                         #! EA = L0xffffffffe418; Value = 0xef88faacb4a7c43b; PC = 0xaaaaaaab5aec *)
mov x13 L0xffffffffe418;
mov x14 L0xffffffffe420;
(* ldp	x7, x8, [x0, #96]                           #! EA = L0xffffffffe3b8; Value = 0xe48852119fc299e5; PC = 0xaaaaaaab5af0 *)
mov x7 L0xffffffffe3b8;
mov x8 L0xffffffffe3c0;
(* ldp	x15, x16, [x1, #96]                         #! EA = L0xffffffffe428; Value = 0x0e6d139f64d184af; PC = 0xaaaaaaab5af4 *)
mov x15 L0xffffffffe428;
mov x16 L0xffffffffe430;
(* sbcs	x3, x3, x11                                #! PC = 0xaaaaaaab5af8 *)
sbcs carry x3 x3 x11 carry;
(* sbcs	x4, x4, x12                                #! PC = 0xaaaaaaab5afc *)
sbcs carry x4 x4 x12 carry;
(* ldr	x11, 0xaaaaaaab4f48 <p434>                  #! PC = 0xaaaaaaab5b00 *)
mov x11 L0xaaaaaaab4f48;
(* sbcs	x5, x5, x13                                #! PC = 0xaaaaaaab5b04 *)
sbcs carry x5 x5 x13 carry;
(* sbcs	x6, x6, x14                                #! PC = 0xaaaaaaab5b08 *)
sbcs carry x6 x6 x14 carry;
(* ldr	x12, 0xaaaaaaab4f50 <p434+8>                #! PC = 0xaaaaaaab5b0c *)
mov x12 L0xaaaaaaab4f50;
(* sbcs	x7, x7, x15                                #! PC = 0xaaaaaaab5b10 *)
sbcs carry x7 x7 x15 carry;
(* ldr	x13, 0xaaaaaaab4f58 <p434+16>               #! PC = 0xaaaaaaab5b14 *)
mov x13 L0xaaaaaaab4f58;
(* sbcs	x8, x8, x16                                #! PC = 0xaaaaaaab5b18 *)
sbcs carry x8 x8 x16 carry;
(* ldr	x14, 0xaaaaaaab4f60 <p434+24>               #! PC = 0xaaaaaaab5b1c *)
mov x14 L0xaaaaaaab4f60;
(* ngc	x0, xzr                                     #! PC = 0xaaaaaaab5b20 *)
sbcs dontcare x0 0@uint64 0@uint64 carry;
(* ldr	x15, 0xaaaaaaab4f68 <p434+32>               #! PC = 0xaaaaaaab5b24 *)
mov x15 L0xaaaaaaab4f68;
(* and	x11, x11, x0                                #! PC = 0xaaaaaaab5b28 *)
and x11@uint64 x11 x0;
(* and	x12, x12, x0                                #! PC = 0xaaaaaaab5b2c *)
and x12@uint64 x12 x0;
(* and	x13, x13, x0                                #! PC = 0xaaaaaaab5b30 *)
and x13@uint64 x13 x0;
(* and	x14, x14, x0                                #! PC = 0xaaaaaaab5b34 *)
and x14@uint64 x14 x0;
(* and	x15, x15, x0                                #! PC = 0xaaaaaaab5b38 *)
and x15@uint64 x15 x0;
(* adds	x10, x10, x11                              #! PC = 0xaaaaaaab5b3c *)
adds carry x10 x10 x11;
(* str	x10, [x2, #56]                              #! EA = L0xffffffffe390; PC = 0xaaaaaaab5b40 *)
mov L0xffffffffe390 x10;
(* adcs	x3, x3, x11                                #! PC = 0xaaaaaaab5b44 *)
adcs carry x3 x3 x11 carry;
(* adcs	x4, x4, x11                                #! PC = 0xaaaaaaab5b48 *)
adcs carry x4 x4 x11 carry;
(* stp	x3, x4, [x2, #64]                           #! EA = L0xffffffffe398; PC = 0xaaaaaaab5b4c *)
mov L0xffffffffe398 x3;
mov L0xffffffffe3a0 x4;
(* adcs	x5, x5, x12                                #! PC = 0xaaaaaaab5b50 *)
adcs carry x5 x5 x12 carry;
(* adcs	x6, x6, x13                                #! PC = 0xaaaaaaab5b54 *)
adcs carry x6 x6 x13 carry;
(* stp	x5, x6, [x2, #80]                           #! EA = L0xffffffffe3a8; PC = 0xaaaaaaab5b58 *)
mov L0xffffffffe3a8 x5;
mov L0xffffffffe3b0 x6;
(* adcs	x7, x7, x14                                #! PC = 0xaaaaaaab5b5c *)
adcs carry x7 x7 x14 carry;
(* adc	x8, x8, x15                                 #! PC = 0xaaaaaaab5b60 *)
adc x8 x8 x15 carry;
(* stp	x7, x8, [x2, #96]                           #! EA = L0xffffffffe3b8; PC = 0xaaaaaaab5b64 *)
mov L0xffffffffe3b8 x7;
mov L0xffffffffe3c0 x8;
(* #! <- SP = 0xffffffffe280 *)
#! 0xffffffffe280 = 0xffffffffe280;
(* #ret                                            #! PC = 0xaaaaaaab5b68 *)
#ret                                            #! 0xaaaaaaab5b68 = 0xaaaaaaab5b68;

//end mp_subaddx2_asm
assert true &&
and [
eqsmod limbs 64 [L0xffffffffe358, L0xffffffffe360, L0xffffffffe368, L0xffffffffe370,
       	     	 L0xffffffffe378, L0xffffffffe380, L0xffffffffe388,
      		 L0xffffffffe390, L0xffffffffe398, L0xffffffffe3a0, L0xffffffffe3a8,
      		 L0xffffffffe3b0, L0xffffffffe3b8, L0xffffffffe3c0]
       (limbs 64 [L0xffffffffe358_o, L0xffffffffe360_o, L0xffffffffe368_o, L0xffffffffe370_o,
       	     	  L0xffffffffe378_o, L0xffffffffe380_o, L0xffffffffe388_o,
      		  L0xffffffffe390_o, L0xffffffffe398_o, L0xffffffffe3a0_o, L0xffffffffe3a8_o,
      		  L0xffffffffe3b0_o, L0xffffffffe3b8_o, L0xffffffffe3c0_o] -
       (limbs 64 [L0xffffffffe3c8_o, L0xffffffffe3d0_o, L0xffffffffe3d8_o, L0xffffffffe3e0_o,
       	      	  L0xffffffffe3e8_o, L0xffffffffe3f0_o, L0xffffffffe3f8_o,
      		  L0xffffffffe400_o, L0xffffffffe408_o, L0xffffffffe410_o, L0xffffffffe418_o,
      		  L0xffffffffe420_o, L0xffffffffe428_o, L0xffffffffe430_o]))
       (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
       	      	  p_0, p_1, p_2, p_3, p_4, p_5, p_6])
];
assume
eqmod limbs 64 [L0xffffffffe358, L0xffffffffe360, L0xffffffffe368, L0xffffffffe370,
       	     	 L0xffffffffe378, L0xffffffffe380, L0xffffffffe388,
      		 L0xffffffffe390, L0xffffffffe398, L0xffffffffe3a0, L0xffffffffe3a8,
      		 L0xffffffffe3b0, L0xffffffffe3b8, L0xffffffffe3c0]
       (limbs 64 [L0xffffffffe358_o, L0xffffffffe360_o, L0xffffffffe368_o, L0xffffffffe370_o,
       	     	  L0xffffffffe378_o, L0xffffffffe380_o, L0xffffffffe388_o,
      		  L0xffffffffe390_o, L0xffffffffe398_o, L0xffffffffe3a0_o, L0xffffffffe3a8_o,
      		  L0xffffffffe3b0_o, L0xffffffffe3b8_o, L0xffffffffe3c0_o] -
       (limbs 64 [L0xffffffffe3c8_o, L0xffffffffe3d0_o, L0xffffffffe3d8_o, L0xffffffffe3e0_o,
       	      	  L0xffffffffe3e8_o, L0xffffffffe3f0_o, L0xffffffffe3f8_o,
      		  L0xffffffffe400_o, L0xffffffffe408_o, L0xffffffffe410_o, L0xffffffffe418_o,
      		  L0xffffffffe420_o, L0xffffffffe428_o, L0xffffffffe430_o]))
       (limbs 64 [0, 0, 0, 0, 0, 0, 0,
       	      	  p_0, p_1, p_2, p_3, p_4, p_5, p_6]) && true;


assert true &&
limbs 64 [L0xffffffffe358, L0xffffffffe360, L0xffffffffe368, L0xffffffffe370,
       	  L0xffffffffe378, L0xffffffffe380, L0xffffffffe388,
      	  L0xffffffffe390, L0xffffffffe398, L0xffffffffe3a0, L0xffffffffe3a8,
      	  L0xffffffffe3b0, L0xffffffffe3b8, L0xffffffffe3c0] <u (2 ** 895)@896;
assume true &&
limbs 64 [L0xffffffffe358, L0xffffffffe360, L0xffffffffe368, L0xffffffffe370,
       	  L0xffffffffe378, L0xffffffffe380, L0xffffffffe388,
      	  L0xffffffffe390, L0xffffffffe398, L0xffffffffe3a0, L0xffffffffe3a8,
      	  L0xffffffffe3b0, L0xffffffffe3b8, L0xffffffffe3c0] <u (2 ** 895)@896;

//6
cut and
[eqmod limbs 64 [L0xffffffffe358, L0xffffffffe360, L0xffffffffe368, L0xffffffffe370,
       	       	 L0xffffffffe378, L0xffffffffe380, L0xffffffffe388,
      	  	 L0xffffffffe390, L0xffffffffe398, L0xffffffffe3a0, L0xffffffffe3a8,
      	  	 L0xffffffffe3b0, L0xffffffffe3b8, L0xffffffffe3c0]
	(limbs 64 [a0, a1, a2, a3, a4, a5, a6] *
                limbs 64 [b0, b1, b2, b3, b4, b5, b6]) -
               (limbs 64 [a7, a8, a9, a10, a11, a12, a13] *
                limbs 64 [b7, b8, b9, b10, b11, b12, b13])
               limbs 64 [0, 0, 0, 0, 0, 0, 0,
                         p_0, p_1, p_2, p_3, p_4, p_5, p_6]]
    prove with [ precondition, cuts [ 2, 3 ] ]
&& and [limbs 64 [L0xffffffffe358, L0xffffffffe360, L0xffffffffe368, L0xffffffffe370,
       	       	 L0xffffffffe378, L0xffffffffe380, L0xffffffffe388,
      	  	 L0xffffffffe390, L0xffffffffe398, L0xffffffffe3a0, L0xffffffffe3a8,
      	  	 L0xffffffffe3b0, L0xffffffffe3b8, L0xffffffffe3c0] <u (2**895)@896,
	limbs 64 [L0xffffffffe438, L0xffffffffe440, L0xffffffffe448, L0xffffffffe450,
    	  	 L0xffffffffe458, L0xffffffffe460, L0xffffffffe468,
		 L0xffffffffe470, L0xffffffffe478, L0xffffffffe480, L0xffffffffe488,
		 L0xffffffffe490, L0xffffffffe498, L0xffffffffe4a0]  <u (2**895)@896]
    prove with [ precondition, cuts [ 0, 2, 3 ] ];

// c1 = (a0+a1)*(b0+b1) - a0*b0 - a1*b1
(* mov	x0, x20                                     #! PC = 0xaaaaaaaae378 *)
mov x0 x20;
(* add	x1, x22, #0x38                              #! PC = 0xaaaaaaaae37c *)
adds dontcare x1 x22 0x38@uint64;
(* #bl	0xaaaaaaab4f44 <rdc_mont>                   #! PC = 0xaaaaaaaae380 *)
#bl	0xaaaaaaab4f44 <rdc_mont>                   #! 0xaaaaaaaae380 = 0xaaaaaaaae380;
(* #! -> SP = 0xffffffffe280 *)
#! 0xffffffffe280 = 0xffffffffe280;
(* #b	0xaaaaaaab56e0 <rdc434_asm>                  #! PC = 0xaaaaaaab4f44 *)
#b	0xaaaaaaab56e0 <rdc434_asm>                  #! 0xaaaaaaab4f44 = 0xaaaaaaab4f44;
(* sub	sp, sp, #0x50                               #! PC = 0xaaaaaaab56e0 *)
subc dontcare sp sp 0x50@uint64;
(* stp	x21, x24, [sp, #16]                         #! EA = L0xffffffffe240; PC = 0xaaaaaaab56e4 *)
mov L0xffffffffe240 x21;
mov L0xffffffffe248 x24;
(* stp	x25, x26, [sp, #32]                         #! EA = L0xffffffffe250; PC = 0xaaaaaaab56e8 *)
mov L0xffffffffe250 x25;
mov L0xffffffffe258 x26;
(* ldp	x2, x3, [x0]                                #! EA = L0xffffffffe438; Value = 0x6a69b709088e6fec; PC = 0xaaaaaaab56ec *)
mov x2 L0xffffffffe438;
mov x3 L0xffffffffe440;
(* ldr	x24, 0xaaaaaaab4fd0 <p434p1_nz>             #! PC = 0xaaaaaaab56f0 *)
mov x24 L0xaaaaaaab4fd0;
(* ldr	x25, 0xaaaaaaab4fd8 <p434p1_nz+8>           #! PC = 0xaaaaaaab56f4 *)
mov x25 L0xaaaaaaab4fd8;
(* stp	x19, x20, [sp]                              #! EA = L0xffffffffe230; PC = 0xaaaaaaab56f8 *)
mov L0xffffffffe230 x19;
mov L0xffffffffe238 x20;
(* stp	x27, x28, [sp, #48]                         #! EA = L0xffffffffe260; PC = 0xaaaaaaab56fc *)
mov L0xffffffffe260 x27;
mov L0xffffffffe268 x28;
(* mul	x4, x2, x24                                 #! PC = 0xaaaaaaab5700 *)
mull Hx2x24 x4 x2 x24;
(* umulh	x7, x2, x24                               #! PC = 0xaaaaaaab5704 *)
mov x7 Hx2x24;
(* stp	x29, x30, [sp, #64]                         #! EA = L0xffffffffe270; PC = 0xaaaaaaab5708 *)
mov L0xffffffffe270 x29;
mov L0xffffffffe278 x30;
(* ldr	x26, 0xaaaaaaab4fe0 <p434p1_nz+16>          #! PC = 0xaaaaaaab570c *)
mov x26 L0xaaaaaaab4fe0;
(* ldr	x27, 0xaaaaaaab4fe8 <p434p1_nz+24>          #! PC = 0xaaaaaaab5710 *)
mov x27 L0xaaaaaaab4fe8;
(* mul	x5, x2, x25                                 #! PC = 0xaaaaaaab5714 *)
mull Hx2x25 x5 x2 x25;
(* umulh	x6, x2, x25                               #! PC = 0xaaaaaaab5718 *)
mov x6 Hx2x25;
(* ldr	x10, [x0, #24]                              #! EA = L0xffffffffe450; Value = 0x77a6c7a410bfeef8; PC = 0xaaaaaaab571c *)
mov x10 L0xffffffffe450;
(* ldp	x11, x12, [x0, #32]                         #! EA = L0xffffffffe458; Value = 0xa4358d8a68e30708; PC = 0xaaaaaaab5720 *)
mov x11 L0xffffffffe458;
mov x12 L0xffffffffe460;
(* ldp	x13, x14, [x0, #48]                         #! EA = L0xffffffffe468; Value = 0x7ccdef5dc5633ac6; PC = 0xaaaaaaab5724 *)
mov x13 L0xffffffffe468;
mov x14 L0xffffffffe470;
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
(* ldr	x3, [x0, #16]                               #! EA = L0xffffffffe448; Value = 0xd75b79f6e616c4ad; PC = 0xaaaaaaab57a4 *)
mov x3 L0xffffffffe448;
(* adds	x10, x4, x10                               #! PC = 0xaaaaaaab57a8 *)
adds carry x10 x4 x10;
(* adcs	x11, x5, x11                               #! PC = 0xaaaaaaab57ac *)
adcs carry x11 x5 x11 carry;
(* ldp	x15, x16, [x0, #64]                         #! EA = L0xffffffffe478; Value = 0xbda40910f0bd5181; PC = 0xaaaaaaab57b0 *)
mov x15 L0xffffffffe478;
mov x16 L0xffffffffe480;
(* adcs	x12, x6, x12                               #! PC = 0xaaaaaaab57b4 *)
adcs carry x12 x6 x12 carry;
(* adcs	x13, x7, x13                               #! PC = 0xaaaaaaab57b8 *)
adcs carry x13 x7 x13 carry;
(* ldp	x17, x19, [x0, #80]                         #! EA = L0xffffffffe488; Value = 0x7c6f140f869403f6; PC = 0xaaaaaaab57bc *)
mov x17 L0xffffffffe488;
mov x19 L0xffffffffe490;
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
(* ldp	x20, x21, [x0, #96]                         #! EA = L0xffffffffe498; Value = 0x0e673c78ea4685e3; PC = 0xaaaaaaab57d4 *)
mov x20 L0xffffffffe498;
mov x21 L0xffffffffe4a0;
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
(* stp	x14, x15, [x1]                              #! EA = L0xffffffffe960; PC = 0xaaaaaaab5924 *)
mov L0xffffffffe960 x14;
mov L0xffffffffe968 x15;
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
(* ldp	x25, x26, [sp, #32]                         #! EA = L0xffffffffe250; Value = 0x0000ffffffffe7d8; PC = 0xaaaaaaab5978 *)
mov x25 L0xffffffffe250;
mov x26 L0xffffffffe258;
(* adcs	x17, x3, x17                               #! PC = 0xaaaaaaab597c *)
adcs carry x17 x3 x17 carry;
(* stp	x16, x17, [x1, #16]                         #! EA = L0xffffffffe970; PC = 0xaaaaaaab5980 *)
mov L0xffffffffe970 x16;
mov L0xffffffffe978 x17;
(* ldp	x27, x28, [sp, #48]                         #! EA = L0xffffffffe260; Value = 0x0000ffffffffe880; PC = 0xaaaaaaab5984 *)
mov x27 L0xffffffffe260;
mov x28 L0xffffffffe268;
(* adcs	x19, x4, x19                               #! PC = 0xaaaaaaab5988 *)
adcs carry x19 x4 x19 carry;
(* ldp	x29, x30, [sp, #64]                         #! EA = L0xffffffffe270; Value = 0x0000ffffffffe280; PC = 0xaaaaaaab598c *)
mov x29 L0xffffffffe270;
mov x30 L0xffffffffe278;
(* adcs	x20, x5, x20                               #! PC = 0xaaaaaaab5990 *)
adcs carry x20 x5 x20 carry;
(* stp	x19, x20, [x1, #32]                         #! EA = L0xffffffffe980; PC = 0xaaaaaaab5994 *)
mov L0xffffffffe980 x19;
mov L0xffffffffe988 x20;
(* ldp	x19, x20, [sp]                              #! EA = L0xffffffffe230; Value = 0x0000ffffffffe358; PC = 0xaaaaaaab5998 *)
mov x19 L0xffffffffe230;
mov x20 L0xffffffffe238;
(* adc	x21, x8, x21                                #! PC = 0xaaaaaaab599c *)
adc x21 x8 x21 carry;
(* str	x21, [x1, #48]                              #! EA = L0xffffffffe990; PC = 0xaaaaaaab59a0 *)
mov L0xffffffffe990 x21;
(* ldp	x21, x24, [sp, #16]                         #! EA = L0xffffffffe240; Value = 0x0000ffffffffe3c8; PC = 0xaaaaaaab59a4 *)
mov x21 L0xffffffffe240;
mov x24 L0xffffffffe248;
(* add	sp, sp, #0x50                               #! PC = 0xaaaaaaab59a8 *)
adds dontcare sp sp 0x50@uint64;
(* #! <- SP = 0xffffffffe280 *)
#! 0xffffffffe280 = 0xffffffffe280;
(* #ret                                            #! PC = 0xaaaaaaab59ac *)
#ret                                            #! 0xaaaaaaab59ac = 0xaaaaaaab59ac;

//end c1 = (a0+a1)*(b0+b1) - a0*b0 - a1*b1
//7
cut
eqmod limbs 64 [0, 0, 0, 0, 0, 0, 0,
      	       L0xffffffffe960, L0xffffffffe968, L0xffffffffe970, L0xffffffffe978,
	       L0xffffffffe980, L0xffffffffe988, L0xffffffffe990]
      (limbs 64 [a0, a1, a2, a3, a4, a5, a6] +
           limbs 64 [a7, a8, a9, a10, a11, a12, a13]) *
          (limbs 64 [b0, b1, b2, b3, b4, b5, b6] +
           limbs 64 [b7, b8, b9, b10, b11, b12, b13])    -
          limbs 64 [a0, a1, a2, a3, a4, a5, a6] *
          limbs 64 [b0, b1, b2, b3, b4, b5, b6]      -
          limbs 64 [a7, a8, a9, a10, a11, a12, a13] *
          limbs 64 [b7, b8, b9, b10, b11, b12, b13]
          limbs 64 [p_0, p_1, p_2, p_3, p_4, p_5, p_6]
    prove with [ precondition, cuts [ 5 ] ]
&& true (*and [limbs 64 [L0xffffffffe960, L0xffffffffe968, L0xffffffffe970, L0xffffffffe978,
	       	 L0xffffffffe980, L0xffffffffe988, L0xffffffffe990] <u (2**447)@448
      ]*);

(* mov	x1, x22                                     #! PC = 0xaaaaaaaae384 *)
mov x1 x22;
(* mov	x0, x19                                     #! PC = 0xaaaaaaaae388 *)
mov x0 x19;
(* #bl	0xaaaaaaab4f44 <rdc_mont>                   #! PC = 0xaaaaaaaae38c *)
#bl	0xaaaaaaab4f44 <rdc_mont>                   #! 0xaaaaaaaae38c = 0xaaaaaaaae38c;
(* #! -> SP = 0xffffffffe280 *)
#! 0xffffffffe280 = 0xffffffffe280;
(* #b	0xaaaaaaab56e0 <rdc434_asm>                  #! PC = 0xaaaaaaab4f44 *)
#b	0xaaaaaaab56e0 <rdc434_asm>                  #! 0xaaaaaaab4f44 = 0xaaaaaaab4f44;
(* sub	sp, sp, #0x50                               #! PC = 0xaaaaaaab56e0 *)
subc dontcare sp sp 0x50@uint64;
(* stp	x21, x24, [sp, #16]                         #! EA = L0xffffffffe240; PC = 0xaaaaaaab56e4 *)
mov L0xffffffffe240 x21;
mov L0xffffffffe248 x24;
(* stp	x25, x26, [sp, #32]                         #! EA = L0xffffffffe250; PC = 0xaaaaaaab56e8 *)
mov L0xffffffffe250 x25;
mov L0xffffffffe258 x26;
(* ldp	x2, x3, [x0]                                #! EA = L0xffffffffe358; Value = 0x7d92dedb2fc7c506; PC = 0xaaaaaaab56ec *)
mov x2 L0xffffffffe358;
mov x3 L0xffffffffe360;
(* ldr	x24, 0xaaaaaaab4fd0 <p434p1_nz>             #! PC = 0xaaaaaaab56f0 *)
mov x24 L0xaaaaaaab4fd0;
(* ldr	x25, 0xaaaaaaab4fd8 <p434p1_nz+8>           #! PC = 0xaaaaaaab56f4 *)
mov x25 L0xaaaaaaab4fd8;
(* stp	x19, x20, [sp]                              #! EA = L0xffffffffe230; PC = 0xaaaaaaab56f8 *)
mov L0xffffffffe230 x19;
mov L0xffffffffe238 x20;
(* stp	x27, x28, [sp, #48]                         #! EA = L0xffffffffe260; PC = 0xaaaaaaab56fc *)
mov L0xffffffffe260 x27;
mov L0xffffffffe268 x28;
(* mul	x4, x2, x24                                 #! PC = 0xaaaaaaab5700 *)
mull Hx2x24 x4 x2 x24;
(* umulh	x7, x2, x24                               #! PC = 0xaaaaaaab5704 *)
mov x7 Hx2x24;
(* stp	x29, x30, [sp, #64]                         #! EA = L0xffffffffe270; PC = 0xaaaaaaab5708 *)
mov L0xffffffffe270 x29;
mov L0xffffffffe278 x30;
(* ldr	x26, 0xaaaaaaab4fe0 <p434p1_nz+16>          #! PC = 0xaaaaaaab570c *)
mov x26 L0xaaaaaaab4fe0;
(* ldr	x27, 0xaaaaaaab4fe8 <p434p1_nz+24>          #! PC = 0xaaaaaaab5710 *)
mov x27 L0xaaaaaaab4fe8;
(* mul	x5, x2, x25                                 #! PC = 0xaaaaaaab5714 *)
mull Hx2x25 x5 x2 x25;
(* umulh	x6, x2, x25                               #! PC = 0xaaaaaaab5718 *)
mov x6 Hx2x25;
(* ldr	x10, [x0, #24]                              #! EA = L0xffffffffe370; Value = 0x15afe4e555330a62; PC = 0xaaaaaaab571c *)
mov x10 L0xffffffffe370;
(* ldp	x11, x12, [x0, #32]                         #! EA = L0xffffffffe378; Value = 0x0e9ca899c1d53a0f; PC = 0xaaaaaaab5720 *)
mov x11 L0xffffffffe378;
mov x12 L0xffffffffe380;
(* ldp	x13, x14, [x0, #48]                         #! EA = L0xffffffffe388; Value = 0x8a5e6b911e919edd; PC = 0xaaaaaaab5724 *)
mov x13 L0xffffffffe388;
mov x14 L0xffffffffe390;
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
(* ldr	x3, [x0, #16]                               #! EA = L0xffffffffe368; Value = 0xf42d8c4145533272; PC = 0xaaaaaaab57a4 *)
mov x3 L0xffffffffe368;
(* adds	x10, x4, x10                               #! PC = 0xaaaaaaab57a8 *)
adds carry x10 x4 x10;
(* adcs	x11, x5, x11                               #! PC = 0xaaaaaaab57ac *)
adcs carry x11 x5 x11 carry;
(* ldp	x15, x16, [x0, #64]                         #! EA = L0xffffffffe398; Value = 0x2165fa51bc089f0d; PC = 0xaaaaaaab57b0 *)
mov x15 L0xffffffffe398;
mov x16 L0xffffffffe3a0;
(* adcs	x12, x6, x12                               #! PC = 0xaaaaaaab57b4 *)
adcs carry x12 x6 x12 carry;
(* adcs	x13, x7, x13                               #! PC = 0xaaaaaaab57b8 *)
adcs carry x13 x7 x13 carry;
(* ldp	x17, x19, [x0, #80]                         #! EA = L0xffffffffe3a8; Value = 0x55629a34248f67ca; PC = 0xaaaaaaab57bc *)
mov x17 L0xffffffffe3a8;
mov x19 L0xffffffffe3b0;
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
(* ldp	x20, x21, [x0, #96]                         #! EA = L0xffffffffe3b8; Value = 0x43179e48bcb6358b; PC = 0xaaaaaaab57d4 *)
mov x20 L0xffffffffe3b8;
mov x21 L0xffffffffe3c0;
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
(* stp	x14, x15, [x1]                              #! EA = L0xffffffffe928; PC = 0xaaaaaaab5924 *)
mov L0xffffffffe928 x14;
mov L0xffffffffe930 x15;
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
(* ldp	x25, x26, [sp, #32]                         #! EA = L0xffffffffe250; Value = 0x0000ffffffffe7d8; PC = 0xaaaaaaab5978 *)
mov x25 L0xffffffffe250;
mov x26 L0xffffffffe258;
(* adcs	x17, x3, x17                               #! PC = 0xaaaaaaab597c *)
adcs carry x17 x3 x17 carry;
(* stp	x16, x17, [x1, #16]                         #! EA = L0xffffffffe938; PC = 0xaaaaaaab5980 *)
mov L0xffffffffe938 x16;
mov L0xffffffffe940 x17;
(* ldp	x27, x28, [sp, #48]                         #! EA = L0xffffffffe260; Value = 0x0000ffffffffe880; PC = 0xaaaaaaab5984 *)
mov x27 L0xffffffffe260;
mov x28 L0xffffffffe268;
(* adcs	x19, x4, x19                               #! PC = 0xaaaaaaab5988 *)
adcs carry x19 x4 x19 carry;
(* ldp	x29, x30, [sp, #64]                         #! EA = L0xffffffffe270; Value = 0x0000ffffffffe280; PC = 0xaaaaaaab598c *)
mov x29 L0xffffffffe270;
mov x30 L0xffffffffe278;
(* adcs	x20, x5, x20                               #! PC = 0xaaaaaaab5990 *)
adcs carry x20 x5 x20 carry;
(* stp	x19, x20, [x1, #32]                         #! EA = L0xffffffffe948; PC = 0xaaaaaaab5994 *)
mov L0xffffffffe948 x19;
mov L0xffffffffe950 x20;
(* ldp	x19, x20, [sp]                              #! EA = L0xffffffffe230; Value = 0x0000ffffffffe358; PC = 0xaaaaaaab5998 *)
mov x19 L0xffffffffe230;
mov x20 L0xffffffffe238;
(* adc	x21, x8, x21                                #! PC = 0xaaaaaaab599c *)
adc x21 x8 x21 carry;
(* str	x21, [x1, #48]                              #! EA = L0xffffffffe958; PC = 0xaaaaaaab59a0 *)
mov L0xffffffffe958 x21;
(* ldp	x21, x24, [sp, #16]                         #! EA = L0xffffffffe240; Value = 0x0000ffffffffe3c8; PC = 0xaaaaaaab59a4 *)
mov x21 L0xffffffffe240;
mov x24 L0xffffffffe248;
(* add	sp, sp, #0x50                               #! PC = 0xaaaaaaab59a8 *)
adds dontcare sp sp 0x50@uint64;
(* #! <- SP = 0xffffffffe280 *)
#! 0xffffffffe280 = 0xffffffffe280;
(* #ret                                            #! PC = 0xaaaaaaab59ac *)
#ret
#! 0xaaaaaaab59ac = 0xaaaaaaab59ac;
(* ldr	x0, [x0, #4056]                             #! EA = L0xaaaaaaac9fd8; Value = 0x0000fffff7ffd6b0; PC = 0xaaaaaaaae394 *)
mov x0 L0xaaaaaaac9fd8;
(* ldr	x1, [sp, #552]                              #! EA = L0xffffffffe4a8; Value = 0xbb654521af6c0200; PC = 0xaaaaaaaae398 *)
mov x1 L0xffffffffe4a8;
(* ldr	x2, [x0]                                    #! EA = L0xfffff7ffd6b0; Value = 0xbb654521af6c0200; PC = 0xaaaaaaaae39c *)
mov x2 L0xfffff7ffd6b0;
(* subs	x1, x1, x2                                 #! PC = 0xaaaaaaaae3a0 *)
subc carry x1 x1 x2;
(* mov	x2, #0x0                   	// #0           #! PC = 0xaaaaaaaae3a4 *)
mov x2 0x0@uint64;
(* #b.ne	0xaaaaaaaae3cc <fp2mul434_mont+296>  // b.any#! PC = 0xaaaaaaaae3a8 *)
#b.ne	0xaaaaaaaae3cc <fp2mul434_mont+296>  // b.any#! 0xaaaaaaaae3a8 = 0xaaaaaaaae3a8;
(* ldp	x29, x30, [sp]                              #! EA = L0xffffffffe280; Value = 0x0000ffffffffe4b0; PC = 0xaaaaaaaae3ac *)
mov x29 L0xffffffffe280;
mov x30 L0xffffffffe288;
(* ldp	x19, x20, [sp, #16]                         #! EA = L0xffffffffe290; Value = 0x0000ffffffffe688; PC = 0xaaaaaaaae3b0 *)
mov x19 L0xffffffffe290;
mov x20 L0xffffffffe298;
(* ldp	x21, x22, [sp, #32]                         #! EA = L0xffffffffe2a0; Value = 0x0000ffffffffe5a8; PC = 0xaaaaaaaae3b4 *)
mov x21 L0xffffffffe2a0;
mov x22 L0xffffffffe2a8;
(* ldp	x23, x24, [sp, #48]                         #! EA = L0xffffffffe2b0; Value = 0x0000ffffffffe618; PC = 0xaaaaaaaae3b8 *)
mov x23 L0xffffffffe2b0;
mov x24 L0xffffffffe2b8;
(* ldp	x25, x26, [sp, #64]                         #! EA = L0xffffffffe2c0; Value = 0x0000ffffffffe7d8; PC = 0xaaaaaaaae3bc *)
mov x25 L0xffffffffe2c0;
mov x26 L0xffffffffe2c8;
(* ldr	x27, [sp, #80]                              #! EA = L0xffffffffe2d0; Value = 0x0000ffffffffe848; PC = 0xaaaaaaaae3c0 *)
mov x27 L0xffffffffe2d0;
(* add	sp, sp, #0x230                              #! PC = 0xaaaaaaaae3c4 *)
adds dontcare sp sp 0x230@uint64;
(* #! <- SP = 0xffffffffe4b0 *)
#! 0xffffffffe4b0 = 0xffffffffe4b0;
(* #ret                                            #! PC = 0xaaaaaaaae3c8 *)
#ret                                            #! 0xaaaaaaaae3c8 = 0xaaaaaaaae3c8;

//8
cut eqmod limbs 64 [0, 0, 0, 0, 0, 0, 0,
    	  	   L0xffffffffe928, L0xffffffffe930, L0xffffffffe938, L0xffffffffe940,
		   L0xffffffffe948, L0xffffffffe950, L0xffffffffe958]
	  (limbs 64 [a0, a1, a2, a3, a4, a5, a6] *
           limbs 64 [b0, b1, b2, b3, b4, b5, b6]) -
          (limbs 64 [a7, a8, a9, a10, a11, a12, a13] *
           limbs 64 [b7, b8, b9, b10, b11, b12, b13])
           limbs 64 [p_0, p_1, p_2, p_3, p_4, p_5, p_6]
    prove with [ precondition, cuts [ 6 ] ]
&& true;

mov c0 L0xffffffffe928;
mov c1 L0xffffffffe930;
mov c2 L0xffffffffe938;
mov c3 L0xffffffffe940;
mov c4 L0xffffffffe948;
mov c5 L0xffffffffe950;
mov c6 L0xffffffffe958;
mov c7 L0xffffffffe960;
mov c8 L0xffffffffe968;
mov c9 L0xffffffffe970;
mov c10 L0xffffffffe978;
mov c11 L0xffffffffe980;
mov c12 L0xffffffffe988;
mov c13 L0xffffffffe990;

(*
ghost I@uint64 : true && true;

{
   eqmod 2 ** 448 *
         (    limbs 64 [c0, c1, c2, c3, c4, c5, c6] +
          I * limbs 64 [c7, c8, c9, c10, c11, c12, c13])
         (    limbs 64 [a0, a1, a2, a3, a4, a5, a6] +
          I * limbs 64 [a7, a8, a9, a10, a11, a12, a13]) *
         (    limbs 64 [b0, b1, b2, b3, b4, b5, b6, b7] +
          I * limbs 64 [b7, b8, b9, b10, b11, b12, b13])
         [ I**2 + 1, limbs 64 [p1_0, p1_1, p1_2, p1_3, p1_4, p1_5, p1_6] ]
   prove with [ cuts [ 7 ] ] 
  &&
  true
}
*)

{true && true}
