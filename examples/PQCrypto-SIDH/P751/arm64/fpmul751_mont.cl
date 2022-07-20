(* quine: -v -isafety -jobs 20 -slicing -no_carry_constraint fpmul751_mont.cl
Parsing Cryptoline file:                [OK]            0.015343 seconds
Checking well-formedness:               [OK]            0.002384 seconds
Transforming to SSA form:               [OK]            0.001180 seconds
Normalizing specification:              [OK]            0.002901 seconds
Rewriting assignments:                  [OK]            0.001537 seconds
Verifying program safety:               [OK]            25.306214 seconds
Verifying range assertions:             [OK]            4.698093 seconds
Verifying range specification:          [OK]            10.578592 seconds
Rewriting value-preserved casting:      [OK]            0.004668 seconds
Verifying algebraic assertions:         [OK]            0.001824 seconds
Verifying algebraic specification:      [OK]            0.318593 seconds
Verification result:                    [OK]            40.932669 seconds
*)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
           uint64 a4, uint64 a5, uint64 a6, uint64 a7,
           uint64 a8, uint64 a9, uint64 aa, uint64 ab,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3,
           uint64 b4, uint64 b5, uint64 b6, uint64 b7,
           uint64 b8, uint64 b9, uint64 ba, uint64 bb,
           uint64 m0, uint64 m1, uint64 m2, uint64 m3,
           uint64 m4, uint64 m5, uint64 m6, uint64 m7,
           uint64 m8, uint64 m9, uint64 ma, uint64 mb) =
{
  and [m0=0xFFFFFFFFFFFFFFFF, m1=0xFFFFFFFFFFFFFFFF, m2=0xFFFFFFFFFFFFFFFF,
       m3=0xFFFFFFFFFFFFFFFF, m4=0xFFFFFFFFFFFFFFFF, m5=0xEEAFFFFFFFFFFFFF,
       m6=0xE3EC968549F878A8, m7=0xDA959B1A13F7CC76, m8=0x084E9867D6EBE876,
       m9=0x8562B5045CB25748, ma=0x0E12909F97BADC66, mb=0x00006FE5D541F71C]
&&
  and [limbs 64 [a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, aa, ab] <u
       2@768 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, ma, mb],
       limbs 64 [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, ba, bb] <u
       2@768 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, ma, mb],
       m0=0xFFFFFFFFFFFFFFFF@64, m1=0xFFFFFFFFFFFFFFFF@64,
       m2=0xFFFFFFFFFFFFFFFF@64, m3=0xFFFFFFFFFFFFFFFF@64,
       m4=0xFFFFFFFFFFFFFFFF@64, m5=0xEEAFFFFFFFFFFFFF@64,
       m6=0xE3EC968549F878A8@64, m7=0xDA959B1A13F7CC76@64,
       m8=0x084E9867D6EBE876@64, m9=0x8562B5045CB25748@64,
       ma=0x0E12909F97BADC66@64, mb=0x00006FE5D541F71C@64]
}

mov L0xffffffffe838 a0; mov L0xffffffffe840 a1; mov L0xffffffffe848 a2;
mov L0xffffffffe850 a3; mov L0xffffffffe858 a4; mov L0xffffffffe860 a5;
mov L0xffffffffe868 a6; mov L0xffffffffe870 a7; mov L0xffffffffe878 a8;
mov L0xffffffffe880 a9; mov L0xffffffffe888 aa; mov L0xffffffffe890 ab;

mov L0xffffffffe898 b0; mov L0xffffffffe8a0 b1; mov L0xffffffffe8a8 b2;
mov L0xffffffffe8b0 b3; mov L0xffffffffe8b8 b4; mov L0xffffffffe8c0 b5;
mov L0xffffffffe8c8 b6; mov L0xffffffffe8d0 b7; mov L0xffffffffe8d8 b8;
mov L0xffffffffe8e0 b9; mov L0xffffffffe8e8 ba; mov L0xffffffffe8f0 bb;

mov L0xaaaaaaab7618 0x2D0A93F0F151DD60@uint64;
mov L0xaaaaaaab7620 0x363427EF98EDC7D9@uint64;
mov L0xaaaaaaab7628 0x30CFADD7D0EDB52B@uint64;
mov L0xaaaaaaab7630 0x6A08B964AE90109D@uint64;
mov L0xaaaaaaab7638 0x213F2F75B8CD0AC5@uint64;
mov L0xaaaaaaab7640 0xDFCBAA83EE381C25@uint64;

nondet  x0@uint64; nondet  x1@uint64; nondet  x2@uint64;
nondet x19@uint64; nondet x20@uint64; nondet x21@uint64; nondet x22@uint64;
nondet x23@uint64; nondet x24@uint64; nondet x25@uint64; nondet x26@uint64;
nondet x27@uint64; nondet x28@uint64; nondet x29@uint64; nondet x30@uint64;
nondet sp@uint64;

nondet L0xaaaaaaacdfd8@uint64; nondet L0xfffff7ffd6b0@uint64;

(* #! -> SP = 0xffffffffe570 *)
#! 0xffffffffe570 = 0xffffffffe570;
(* stp	x29, x30, [sp, #-240]!                      #! EA = L0xffffffffe480; PC = 0xaaaaaaaadf10 *)
mov L0xffffffffe480 x29;
mov L0xffffffffe488 x30;
(* mov	w3, #0xc                   	// #12          #! PC = 0xaaaaaaaadf18 *)
# mov	w3, #0xc                   	// #12          #! 0xaaaaaaaadf18 = 0xaaaaaaaadf18;
(* mov	x29, sp                                     #! PC = 0xaaaaaaaadf1c *)
mov x29 sp;
(* ldr	x4, [x4, #4056]                             #! EA = L0xaaaaaaacdfd8; Value = 0x0000fffff7ffd6b0; PC = 0xaaaaaaaadf20 *)
mov x4 L0xaaaaaaacdfd8;
(* stp	x19, x20, [sp, #16]                         #! EA = L0xffffffffe490; PC = 0xaaaaaaaadf24 *)
mov L0xffffffffe490 x19;
mov L0xffffffffe498 x20;
(* add	x19, sp, #0x28                              #! PC = 0xaaaaaaaadf28 *)
adds dontcare x19 sp 0x28@uint64;
(* ldr	x5, [x4]                                    #! EA = L0xfffff7ffd6b0; Value = 0xce81c7af3cbcd000; PC = 0xaaaaaaaadf2c *)
mov x5 L0xfffff7ffd6b0;
(* str	x5, [sp, #232]                              #! EA = L0xffffffffe568; PC = 0xaaaaaaaadf30 *)
mov L0xffffffffe568 x5;
(* mov	x5, #0x0                   	// #0           #! PC = 0xaaaaaaaadf34 *)
mov x5 0x0@uint64;
(* mov	x20, x2                                     #! PC = 0xaaaaaaaadf38 *)
mov x20 x2;
(* mov	x2, x19                                     #! PC = 0xaaaaaaaadf3c *)
mov x2 x19;
(* stp	xzr, xzr, [sp, #40]                         #! EA = L0xffffffffe4a8; PC = 0xaaaaaaaadf40 *)
mov L0xffffffffe4a8 0@uint64;
mov L0xffffffffe4b0 0@uint64;
(* stp	xzr, xzr, [sp, #56]                         #! EA = L0xffffffffe4b8; PC = 0xaaaaaaaadf44 *)
mov L0xffffffffe4b8 0@uint64;
mov L0xffffffffe4c0 0@uint64;
(* stp	xzr, xzr, [sp, #72]                         #! EA = L0xffffffffe4c8; PC = 0xaaaaaaaadf48 *)
mov L0xffffffffe4c8 0@uint64;
mov L0xffffffffe4d0 0@uint64;
(* stp	xzr, xzr, [sp, #88]                         #! EA = L0xffffffffe4d8; PC = 0xaaaaaaaadf4c *)
mov L0xffffffffe4d8 0@uint64;
mov L0xffffffffe4e0 0@uint64;
(* stp	xzr, xzr, [sp, #104]                        #! EA = L0xffffffffe4e8; PC = 0xaaaaaaaadf50 *)
mov L0xffffffffe4e8 0@uint64;
mov L0xffffffffe4f0 0@uint64;
(* stp	xzr, xzr, [sp, #120]                        #! EA = L0xffffffffe4f8; PC = 0xaaaaaaaadf54 *)
mov L0xffffffffe4f8 0@uint64;
mov L0xffffffffe500 0@uint64;
(* stp	xzr, xzr, [sp, #136]                        #! EA = L0xffffffffe508; PC = 0xaaaaaaaadf58 *)
mov L0xffffffffe508 0@uint64;
mov L0xffffffffe510 0@uint64;
(* stp	xzr, xzr, [sp, #152]                        #! EA = L0xffffffffe518; PC = 0xaaaaaaaadf5c *)
mov L0xffffffffe518 0@uint64;
mov L0xffffffffe520 0@uint64;
(* stp	xzr, xzr, [sp, #168]                        #! EA = L0xffffffffe528; PC = 0xaaaaaaaadf60 *)
mov L0xffffffffe528 0@uint64;
mov L0xffffffffe530 0@uint64;
(* stp	xzr, xzr, [sp, #184]                        #! EA = L0xffffffffe538; PC = 0xaaaaaaaadf64 *)
mov L0xffffffffe538 0@uint64;
mov L0xffffffffe540 0@uint64;
(* stp	xzr, xzr, [sp, #200]                        #! EA = L0xffffffffe548; PC = 0xaaaaaaaadf68 *)
mov L0xffffffffe548 0@uint64;
mov L0xffffffffe550 0@uint64;
(* stp	xzr, xzr, [sp, #216]                        #! EA = L0xffffffffe558; PC = 0xaaaaaaaadf6c *)
mov L0xffffffffe558 0@uint64;
mov L0xffffffffe560 0@uint64;
(* #bl	0xaaaaaaab7540 <mp_mul>                     #! PC = 0xaaaaaaaadf70 *)
#bl	0xaaaaaaab7540 <mp_mul>                     #! 0xaaaaaaaadf70 = 0xaaaaaaaadf70;
(* #! -> SP = 0xffffffffe480 *)
#! 0xffffffffe480 = 0xffffffffe480;
(* #b	0xaaaaaaab7a54 <mul751_asm>                  #! PC = 0xaaaaaaab7540 *)
#b	0xaaaaaaab7a54 <mul751_asm>                  #! 0xaaaaaaab7540 = 0xaaaaaaab7540;
(* sub	sp, sp, #0x60                               #! PC = 0xaaaaaaab7a54 *)
subc dontcare sp sp 0x60@uint64;
(* stp	x19, x20, [sp]                              #! EA = L0xffffffffe420; PC = 0xaaaaaaab7a58 *)
mov L0xffffffffe420 x19;
mov L0xffffffffe428 x20;
(* stp	x21, x22, [sp, #16]                         #! EA = L0xffffffffe430; PC = 0xaaaaaaab7a5c *)
mov L0xffffffffe430 x21;
mov L0xffffffffe438 x22;
(* stp	x23, x24, [sp, #32]                         #! EA = L0xffffffffe440; PC = 0xaaaaaaab7a60 *)
mov L0xffffffffe440 x23;
mov L0xffffffffe448 x24;
(* stp	x25, x26, [sp, #48]                         #! EA = L0xffffffffe450; PC = 0xaaaaaaab7a64 *)
mov L0xffffffffe450 x25;
mov L0xffffffffe458 x26;
(* stp	x27, x28, [sp, #64]                         #! EA = L0xffffffffe460; PC = 0xaaaaaaab7a68 *)
mov L0xffffffffe460 x27;
mov L0xffffffffe468 x28;
(* stp	x29, x30, [sp, #80]                         #! EA = L0xffffffffe470; PC = 0xaaaaaaab7a6c *)
mov L0xffffffffe470 x29;
mov L0xffffffffe478 x30;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe838; Value = 0xb3d32c00c7e5bb72; PC = 0xaaaaaaab7a70 *)
mov x3 L0xffffffffe838;
mov x4 L0xffffffffe840;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffe848; Value = 0x09864600de88a2da; PC = 0xaaaaaaab7a74 *)
mov x5 L0xffffffffe848;
mov x6 L0xffffffffe850;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe858; Value = 0x1f8f6d152878a4ee; PC = 0xaaaaaaab7a78 *)
mov x7 L0xffffffffe858;
mov x8 L0xffffffffe860;
(* ldp	x10, x11, [x0, #48]                         #! EA = L0xffffffffe868; Value = 0x5ec00322287d7b20; PC = 0xaaaaaaab7a7c *)
mov x10 L0xffffffffe868;
mov x11 L0xffffffffe870;
(* ldp	x12, x13, [x0, #64]                         #! EA = L0xffffffffe878; Value = 0x8c65ca99b17d9cfa; PC = 0xaaaaaaab7a80 *)
mov x12 L0xffffffffe878;
mov x13 L0xffffffffe880;
(* ldp	x14, x15, [x0, #80]                         #! EA = L0xffffffffe888; Value = 0x17fea44b90c12f4b; PC = 0xaaaaaaab7a84 *)
mov x14 L0xffffffffe888;
mov x15 L0xffffffffe890;
(* adds	x3, x3, x10                                #! PC = 0xaaaaaaab7a88 *)
adds carry x3 x3 x10;
(* adcs	x4, x4, x11                                #! PC = 0xaaaaaaab7a8c *)
adcs carry x4 x4 x11 carry;
(* adcs	x5, x5, x12                                #! PC = 0xaaaaaaab7a90 *)
adcs carry x5 x5 x12 carry;
(* adcs	x6, x6, x13                                #! PC = 0xaaaaaaab7a94 *)
adcs carry x6 x6 x13 carry;
(* adcs	x7, x7, x14                                #! PC = 0xaaaaaaab7a98 *)
adcs carry x7 x7 x14 carry;
(* adcs	x8, x8, x15                                #! PC = 0xaaaaaaab7a9c *)
adcs carry x8 x8 x15 carry;
(* adc	x9, xzr, xzr                                #! PC = 0xaaaaaaab7aa0 *)
adc x9 0@uint64 0@uint64 carry;
(* ldp	x10, x11, [x1]                              #! EA = L0xffffffffe898; Value = 0xa54d8644b01b47ab; PC = 0xaaaaaaab7aa4 *)
mov x10 L0xffffffffe898;
mov x11 L0xffffffffe8a0;
(* ldp	x12, x13, [x1, #16]                         #! EA = L0xffffffffe8a8; Value = 0x2f9712d9dacc749a; PC = 0xaaaaaaab7aa8 *)
mov x12 L0xffffffffe8a8;
mov x13 L0xffffffffe8b0;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0xffffffffe8b8; Value = 0xed88dd8de615df5d; PC = 0xaaaaaaab7aac *)
mov x14 L0xffffffffe8b8;
mov x15 L0xffffffffe8c0;
(* ldp	x17, x19, [x1, #48]                         #! EA = L0xffffffffe8c8; Value = 0x87f7d31828c003e5; PC = 0xaaaaaaab7ab0 *)
mov x17 L0xffffffffe8c8;
mov x19 L0xffffffffe8d0;
(* ldp	x20, x21, [x1, #64]                         #! EA = L0xffffffffe8d8; Value = 0x91a96ba63d77a125; PC = 0xaaaaaaab7ab4 *)
mov x20 L0xffffffffe8d8;
mov x21 L0xffffffffe8e0;
(* ldp	x22, x23, [x1, #80]                         #! EA = L0xffffffffe8e8; Value = 0xb88acab68fac3650; PC = 0xaaaaaaab7ab8 *)
mov x22 L0xffffffffe8e8;
mov x23 L0xffffffffe8f0;
(* adds	x10, x10, x17                              #! PC = 0xaaaaaaab7abc *)
adds carry x10 x10 x17;
(* adcs	x11, x11, x19                              #! PC = 0xaaaaaaab7ac0 *)
adcs carry x11 x11 x19 carry;
(* adcs	x12, x12, x20                              #! PC = 0xaaaaaaab7ac4 *)
adcs carry x12 x12 x20 carry;
(* adcs	x13, x13, x21                              #! PC = 0xaaaaaaab7ac8 *)
adcs carry x13 x13 x21 carry;
(* adcs	x14, x14, x22                              #! PC = 0xaaaaaaab7acc *)
adcs carry x14 x14 x22 carry;
(* adcs	x15, x15, x23                              #! PC = 0xaaaaaaab7ad0 *)
adcs carry x15 x15 x23 carry;
(* adc	x16, xzr, xzr                               #! PC = 0xaaaaaaab7ad4 *)
adc x16 0@uint64 0@uint64 carry;

ghost x9m@uint64, x16m@uint64 :
      and [x9m=x9, x16m=x16] && and [x9m=x9, x16m=x16];

(* neg	x17, x9                                     #! PC = 0xaaaaaaab7ad8 *)
subc dontcare x17 0@uint64 x9;
(* and	x19, x10, x17                               #! PC = 0xaaaaaaab7adc *)
and x19@uint64 x10 x17;
(* and	x20, x11, x17                               #! PC = 0xaaaaaaab7ae0 *)
and x20@uint64 x11 x17;
(* and	x21, x12, x17                               #! PC = 0xaaaaaaab7ae4 *)
and x21@uint64 x12 x17;
(* and	x22, x13, x17                               #! PC = 0xaaaaaaab7ae8 *)
and x22@uint64 x13 x17;
(* and	x23, x14, x17                               #! PC = 0xaaaaaaab7aec *)
and x23@uint64 x14 x17;
(* and	x24, x15, x17                               #! PC = 0xaaaaaaab7af0 *)
and x24@uint64 x15 x17;
(* neg	x17, x16                                    #! PC = 0xaaaaaaab7af4 *)
subc dontcare x17 0@uint64 x16;
(* and	x25, x3, x17                                #! PC = 0xaaaaaaab7af8 *)
and x25@uint64 x3 x17;
(* and	x26, x4, x17                                #! PC = 0xaaaaaaab7afc *)
and x26@uint64 x4 x17;
(* and	x27, x5, x17                                #! PC = 0xaaaaaaab7b00 *)
and x27@uint64 x5 x17;
(* and	x28, x6, x17                                #! PC = 0xaaaaaaab7b04 *)
and x28@uint64 x6 x17;
(* and	x29, x7, x17                                #! PC = 0xaaaaaaab7b08 *)
and x29@uint64 x7 x17;
(* and	x17, x8, x17                                #! PC = 0xaaaaaaab7b0c *)
and x17@uint64 x8 x17;

(* NOTE: mask *)
assert true
    && and [x9m*(1@64-x9m) = 0@64, x16m*(1@64-x16m) = 0@64,
            limbs 64 [x19, x20, x21, x22, x23, x24] =
            uext  x9m 320 * limbs 64 [x10, x11, x12, x13, x14, x15],
            limbs 64 [x25, x26, x27, x28, x29, x17] =
            uext x16m 320 * limbs 64 [ x3,  x4,  x5,  x6,  x7,  x8]];
assume and [x9m*(1-x9m) = 0, x16m*(1-x16m) = 0,
            limbs 64 [x19, x20, x21, x22, x23, x24] =
             x9m * limbs 64 [x10, x11, x12, x13, x14, x15],
            limbs 64 [x25, x26, x27, x28, x29, x17] =
            x16m * limbs 64 [ x3,  x4,  x5,  x6,  x7,  x8]] && true;

(* and	x9, x9, x16                                 #! PC = 0xaaaaaaab7b10 *)
and x9@uint64 x9 x16;

(* NOTE: combine carries *)
assert true && x9 = x9m*x16m;
assume x9 = x9m*x16m && true;

(* adds	x19, x19, x25                              #! PC = 0xaaaaaaab7b14 *)
adds carry x19 x19 x25;
(* adcs	x20, x20, x26                              #! PC = 0xaaaaaaab7b18 *)
adcs carry x20 x20 x26 carry;
(* adcs	x21, x21, x27                              #! PC = 0xaaaaaaab7b1c *)
adcs carry x21 x21 x27 carry;
(* adcs	x22, x22, x28                              #! PC = 0xaaaaaaab7b20 *)
adcs carry x22 x22 x28 carry;
(* adcs	x23, x23, x29                              #! PC = 0xaaaaaaab7b24 *)
adcs carry x23 x23 x29 carry;
(* adcs	x24, x24, x17                              #! PC = 0xaaaaaaab7b28 *)
adcs carry x24 x24 x17 carry;
(* adc	x9, x9, xzr                                 #! PC = 0xaaaaaaab7b2c *)
adc x9 x9 0@uint64 carry;
(* stp	x19, x20, [x2]                              #! EA = L0xffffffffe4a8; PC = 0xaaaaaaab7b30 *)
mov L0xffffffffe4a8 x19;
mov L0xffffffffe4b0 x20;
(* stp	x21, x22, [x2, #16]                         #! EA = L0xffffffffe4b8; PC = 0xaaaaaaab7b34 *)
mov L0xffffffffe4b8 x21;
mov L0xffffffffe4c0 x22;
(* stp	x23, x24, [x2, #32]                         #! EA = L0xffffffffe4c8; PC = 0xaaaaaaab7b38 *)
mov L0xffffffffe4c8 x23;
mov L0xffffffffe4d0 x24;
(* stp	x3, x4, [x2, #64]                           #! EA = L0xffffffffe4e8; PC = 0xaaaaaaab7b3c *)
mov L0xffffffffe4e8 x3;
mov L0xffffffffe4f0 x4;
(* stp	x5, x6, [x2, #80]                           #! EA = L0xffffffffe4f8; PC = 0xaaaaaaab7b40 *)
mov L0xffffffffe4f8 x5;
mov L0xffffffffe500 x6;
(* stp	x7, x8, [x2, #96]                           #! EA = L0xffffffffe508; PC = 0xaaaaaaab7b44 *)
mov L0xffffffffe508 x7;
mov L0xffffffffe510 x8;
(* stp	x14, x15, [x2, #112]                        #! EA = L0xffffffffe518; PC = 0xaaaaaaab7b48 *)
mov L0xffffffffe518 x14;
mov L0xffffffffe520 x15;

(* NOTE: MUL384_KARATSUBA_COMBA_B starts *)

(* adds	x23, x3, x6                                #! PC = 0xaaaaaaab7b4c *)
adds carry x23 x3 x6;
(* adcs	x24, x4, x7                                #! PC = 0xaaaaaaab7b50 *)
adcs carry x24 x4 x7 carry;
(* adcs	x25, x5, x8                                #! PC = 0xaaaaaaab7b54 *)
adcs carry x25 x5 x8 carry;
(* adc	x4, xzr, xzr                                #! PC = 0xaaaaaaab7b58 *)
adc x4 0@uint64 0@uint64 carry;
(* adds	x26, x10, x13                              #! PC = 0xaaaaaaab7b5c *)
adds carry x26 x10 x13;
(* adcs	x27, x11, x14                              #! PC = 0xaaaaaaab7b60 *)
adcs carry x27 x11 x14 carry;
(* adcs	x28, x12, x15                              #! PC = 0xaaaaaaab7b64 *)
adcs carry x28 x12 x15 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab7b68 *)
adc x29 0@uint64 0@uint64 carry;

ghost x4m@uint64, x29m@uint64 :
      and [x4m=x4, x29m=x29] && and [x4m=x4, x29m=x29];

(* neg	x30, x4                                     #! PC = 0xaaaaaaab7b6c *)
subc dontcare x30 0@uint64 x4;
(* and	x5, x26, x30                                #! PC = 0xaaaaaaab7b70 *)
and x5@uint64 x26 x30;
(* and	x14, x27, x30                               #! PC = 0xaaaaaaab7b74 *)
and x14@uint64 x27 x30;
(* and	x7, x28, x30                                #! PC = 0xaaaaaaab7b78 *)
and x7@uint64 x28 x30;
(* neg	x30, x29                                    #! PC = 0xaaaaaaab7b7c *)
subc dontcare x30 0@uint64 x29;
(* and	x3, x23, x30                                #! PC = 0xaaaaaaab7b80 *)
and x3@uint64 x23 x30;
(* umulh	x19, x23, x26                             #! PC = 0xaaaaaaab7b84 *)
(* NOTE: merged with mul x3, x23, x26 *)
(* mov x19 Hx23x26; *)
(* and	x21, x24, x30                               #! PC = 0xaaaaaaab7b88 *)
and x21@uint64 x24 x30;
(* and	x22, x25, x30                               #! PC = 0xaaaaaaab7b8c *)
and x22@uint64 x25 x30;

(* NOTE: mask *)
assert true
    && and [x4m*(1@64-x4m) = 0@64, x29m*(1@64-x29m) = 0@64,
            limbs 64 [ x5, x14,  x7] =
            uext  x4m 128 * limbs 64 [x26, x27, x28],
            limbs 64 [ x3, x21,  x22] =
            uext x29m 128 * limbs 64 [x23, x24, x25]];
assume and [x4m*(1-x4m) = 0, x29m*(1-x29m) = 0,
            limbs 64 [ x5, x14,  x7] =  x4m * limbs 64 [x26, x27, x28],
            limbs 64 [ x3, x21,  x22] = x29m * limbs 64 [x23, x24, x25]]
    && true;

(* and	x4, x4, x29                                 #! PC = 0xaaaaaaab7b90 *)
and x4@uint64 x4 x29;

(* NOTE: combine carries *)
assert true && x4=x4m*x29m;
assume x4=x4m*x29m && true;

(* adds	x5, x5, x3                                 #! PC = 0xaaaaaaab7b94 *)
adds carry x5 x5 x3;
(* adcs	x14, x14, x21                              #! PC = 0xaaaaaaab7b98 *)
adcs carry x14 x14 x21 carry;
(* mul	x3, x23, x26                                #! PC = 0xaaaaaaab7b9c *)
mull x19 x3 x23 x26;
(* mul	x21, x23, x27                               #! PC = 0xaaaaaaab7ba0 *)
mull Hx23x27 x21 x23 x27;
(* adcs	x7, x7, x22                                #! PC = 0xaaaaaaab7ba4 *)
adcs carry x7 x7 x22 carry;
(* umulh	x22, x23, x27                             #! PC = 0xaaaaaaab7ba8 *)
mov x22 Hx23x27;
(* adc	x4, x4, xzr                                 #! PC = 0xaaaaaaab7bac *)
adc x4 x4 0@uint64 carry;
(* mul	x20, x24, x26                               #! PC = 0xaaaaaaab7bb0 *)
mull Hx24x26 x20 x24 x26;
(* umulh	x8, x24, x26                              #! PC = 0xaaaaaaab7bb4 *)
mov x8 Hx24x26;
(* adds	x21, x21, x19                              #! PC = 0xaaaaaaab7bb8 *)
adds carry x21 x21 x19;
(* adc	x22, x22, xzr                               #! PC = 0xaaaaaaab7bbc *)
adc x22 x22 0@uint64 carry;
(* mul	x30, x24, x27                               #! PC = 0xaaaaaaab7bc0 *)
mull Hx24x27 x30 x24 x27;
(* umulh	x19, x24, x27                             #! PC = 0xaaaaaaab7bc4 *)
mov x19 Hx24x27;
(* adds	x21, x21, x20                              #! PC = 0xaaaaaaab7bc8 *)
adds carry x21 x21 x20;
(* adcs	x22, x22, x8                               #! PC = 0xaaaaaaab7bcc *)
adcs carry x22 x22 x8 carry;
(* adc	x19, x19, xzr                               #! PC = 0xaaaaaaab7bd0 *)
adc x19 x19 0@uint64 carry;
(* mul	x20, x23, x28                               #! PC = 0xaaaaaaab7bd4 *)
mull Hx23x28 x20 x23 x28;
(* umulh	x8, x23, x28                              #! PC = 0xaaaaaaab7bd8 *)
mov x8 Hx23x28;
(* adds	x22, x22, x30                              #! PC = 0xaaaaaaab7bdc *)
adds carry x22 x22 x30;
(* adcs	x19, x19, x8                               #! PC = 0xaaaaaaab7be0 *)
adcs carry x19 x19 x8 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab7be4 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x30, x25, x26                               #! PC = 0xaaaaaaab7be8 *)
mull Hx25x26 x30 x25 x26;
(* umulh	x8, x25, x26                              #! PC = 0xaaaaaaab7bec *)
mov x8 Hx25x26;
(* adds	x22, x22, x20                              #! PC = 0xaaaaaaab7bf0 *)
adds carry x22 x22 x20;
(* adcs	x19, x19, x8                               #! PC = 0xaaaaaaab7bf4 *)
adcs carry x19 x19 x8 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab7bf8 *)
adc x29 x29 0@uint64 carry;
(* mul	x20, x24, x28                               #! PC = 0xaaaaaaab7bfc *)
mull Hx24x28 x20 x24 x28;
(* umulh	x8, x24, x28                              #! PC = 0xaaaaaaab7c00 *)
mov x8 Hx24x28;
(* adds	x22, x22, x30                              #! PC = 0xaaaaaaab7c04 *)
adds carry x22 x22 x30;
(* adcs	x19, x19, x20                              #! PC = 0xaaaaaaab7c08 *)
adcs carry x19 x19 x20 carry;
(* adcs	x29, x29, x8                               #! PC = 0xaaaaaaab7c0c *)
adcs carry x29 x29 x8 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab7c10 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x20, x25, x27                               #! PC = 0xaaaaaaab7c14 *)
mull Hx25x27 x20 x25 x27;
(* umulh	x8, x25, x27                              #! PC = 0xaaaaaaab7c18 *)
mov x8 Hx25x27;
(* adds	x19, x19, x20                              #! PC = 0xaaaaaaab7c1c *)
adds carry x19 x19 x20;
(* adcs	x29, x29, x8                               #! PC = 0xaaaaaaab7c20 *)
adcs carry x29 x29 x8 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab7c24 *)
adc x30 x30 0@uint64 carry;
(* mul	x20, x25, x28                               #! PC = 0xaaaaaaab7c28 *)
mull Hx25x28 x20 x25 x28;
(* umulh	x8, x25, x28                              #! PC = 0xaaaaaaab7c2c *)
mov x8 Hx25x28;
(* adds	x20, x20, x29                              #! PC = 0xaaaaaaab7c30 *)
adds carry x20 x20 x29;
(* adc	x8, x8, x30                                 #! PC = 0xaaaaaaab7c34 *)
adc x8 x8 x30 carry;
(* adds	x5, x5, x19                                #! PC = 0xaaaaaaab7c38 *)
adds carry x5 x5 x19;
(* adcs	x14, x14, x20                              #! PC = 0xaaaaaaab7c3c *)
adcs carry x14 x14 x20 carry;
(* adcs	x7, x7, x8                                 #! PC = 0xaaaaaaab7c40 *)
adcs carry x7 x7 x8 carry;
(* adc	x4, x4, xzr                                 #! PC = 0xaaaaaaab7c44 *)
adc x4 x4 0@uint64 carry;
(* stp	x3, x4, [x2, #128]                          #! EA = L0xffffffffe528; PC = 0xaaaaaaab7c48 *)
mov L0xffffffffe528 x3;
mov L0xffffffffe530 x4;
(* ldp	x3, x4, [x2, #64]                           #! EA = L0xffffffffe4e8; Value = 0x12932f22f0633692; PC = 0xaaaaaaab7c4c *)
mov x3 L0xffffffffe4e8;
mov x4 L0xffffffffe4f0;
(* str	x5, [x2, #144]                              #! EA = L0xffffffffe538; PC = 0xaaaaaaab7c50 *)
mov L0xffffffffe538 x5;
(* ldr	x5, [x2, #80]                               #! EA = L0xffffffffe4f8; Value = 0x95ec109a90063fd5; PC = 0xaaaaaaab7c54 *)
mov x5 L0xffffffffe4f8;
(* mul	x16, x3, x10                                #! PC = 0xaaaaaaab7c58 *)
mull Hx3x10 x16 x3 x10;
(* mul	x17, x3, x11                                #! PC = 0xaaaaaaab7c5c *)
mull Hx3x11 x17 x3 x11;
(* umulh	x19, x3, x11                              #! PC = 0xaaaaaaab7c60 *)
mov x19 Hx3x11;
(* umulh	x20, x3, x10                              #! PC = 0xaaaaaaab7c64 *)
mov x20 Hx3x10;
(* mul	x8, x4, x10                                 #! PC = 0xaaaaaaab7c68 *)
mull Hx4x10 x8 x4 x10;
(* umulh	x15, x4, x10                              #! PC = 0xaaaaaaab7c6c *)
mov x15 Hx4x10;
(* adds	x17, x17, x20                              #! PC = 0xaaaaaaab7c70 *)
adds carry x17 x17 x20;
(* adc	x19, x19, xzr                               #! PC = 0xaaaaaaab7c74 *)
adc x19 x19 0@uint64 carry;
(* mul	x30, x4, x11                                #! PC = 0xaaaaaaab7c78 *)
mull Hx4x11 x30 x4 x11;
(* umulh	x20, x4, x11                              #! PC = 0xaaaaaaab7c7c *)
mov x20 Hx4x11;
(* adds	x17, x17, x8                               #! PC = 0xaaaaaaab7c80 *)
adds carry x17 x17 x8;
(* adcs	x19, x19, x15                              #! PC = 0xaaaaaaab7c84 *)
adcs carry x19 x19 x15 carry;
(* adc	x20, x20, xzr                               #! PC = 0xaaaaaaab7c88 *)
adc x20 x20 0@uint64 carry;
(* mul	x8, x3, x12                                 #! PC = 0xaaaaaaab7c8c *)
mull Hx3x12 x8 x3 x12;
(* umulh	x15, x3, x12                              #! PC = 0xaaaaaaab7c90 *)
mov x15 Hx3x12;
(* adds	x19, x19, x30                              #! PC = 0xaaaaaaab7c94 *)
adds carry x19 x19 x30;
(* adcs	x20, x20, x15                              #! PC = 0xaaaaaaab7c98 *)
adcs carry x20 x20 x15 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab7c9c *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x30, x5, x10                                #! PC = 0xaaaaaaab7ca0 *)
mull Hx5x10 x30 x5 x10;
(* umulh	x15, x5, x10                              #! PC = 0xaaaaaaab7ca4 *)
mov x15 Hx5x10;
(* adds	x19, x19, x8                               #! PC = 0xaaaaaaab7ca8 *)
adds carry x19 x19 x8;
(* adcs	x20, x20, x15                              #! PC = 0xaaaaaaab7cac *)
adcs carry x20 x20 x15 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab7cb0 *)
adc x29 x29 0@uint64 carry;
(* mul	x8, x4, x12                                 #! PC = 0xaaaaaaab7cb4 *)
mull Hx4x12 x8 x4 x12;
(* umulh	x15, x4, x12                              #! PC = 0xaaaaaaab7cb8 *)
mov x15 Hx4x12;
(* adds	x19, x19, x30                              #! PC = 0xaaaaaaab7cbc *)
adds carry x19 x19 x30;
(* adcs	x20, x20, x8                               #! PC = 0xaaaaaaab7cc0 *)
adcs carry x20 x20 x8 carry;
(* adcs	x29, x29, x15                              #! PC = 0xaaaaaaab7cc4 *)
adcs carry x29 x29 x15 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab7cc8 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x8, x5, x11                                 #! PC = 0xaaaaaaab7ccc *)
mull Hx5x11 x8 x5 x11;
(* umulh	x15, x5, x11                              #! PC = 0xaaaaaaab7cd0 *)
mov x15 Hx5x11;
(* adds	x20, x20, x8                               #! PC = 0xaaaaaaab7cd4 *)
adds carry x20 x20 x8;
(* adcs	x29, x29, x15                              #! PC = 0xaaaaaaab7cd8 *)
adcs carry x29 x29 x15 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab7cdc *)
adc x30 x30 0@uint64 carry;
(* mul	x8, x5, x12                                 #! PC = 0xaaaaaaab7ce0 *)
mull Hx5x12 x8 x5 x12;
(* umulh	x15, x5, x12                              #! PC = 0xaaaaaaab7ce4 *)
mov x15 Hx5x12;
(* adds	x8, x8, x29                                #! PC = 0xaaaaaaab7ce8 *)
adds carry x8 x8 x29;
(* adc	x15, x15, x30                               #! PC = 0xaaaaaaab7cec *)
adc x15 x15 x30 carry;
(* ldp	x3, x4, [x2, #128]                          #! EA = L0xffffffffe528; Value = 0x32e58448748180dc; PC = 0xaaaaaaab7cf0 *)
mov x3 L0xffffffffe528;
mov x4 L0xffffffffe530;
(* ldr	x5, [x2, #144]                              #! EA = L0xffffffffe538; Value = 0x7c84b7082aea3d39; PC = 0xaaaaaaab7cf4 *)
mov x5 L0xffffffffe538;
(* mul	x23, x6, x13                                #! PC = 0xaaaaaaab7cf8 *)
mull Hx6x13 x23 x6 x13;
(* umulh	x26, x6, x13                              #! PC = 0xaaaaaaab7cfc *)
mov x26 Hx6x13;
(* subs	x3, x3, x16                                #! PC = 0xaaaaaaab7d00 *)
subc carry x3 x3 x16;
(* sbcs	x21, x21, x17                              #! PC = 0xaaaaaaab7d04 *)
sbcs carry x21 x21 x17 carry;
(* sbcs	x22, x22, x19                              #! PC = 0xaaaaaaab7d08 *)
sbcs carry x22 x22 x19 carry;
(* sbcs	x5, x5, x20                                #! PC = 0xaaaaaaab7d0c *)
sbcs carry x5 x5 x20 carry;
(* sbcs	x14, x14, x8                               #! PC = 0xaaaaaaab7d10 *)
sbcs carry x14 x14 x8 carry;
(* sbcs	x7, x7, x15                                #! PC = 0xaaaaaaab7d14 *)
sbcs carry x7 x7 x15 carry;
(* sbc	x4, x4, xzr                                 #! PC = 0xaaaaaaab7d18 *)
sbcs docare x4 x4 0@uint64 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* stp	x14, x15, [x2, #144]                        #! EA = L0xffffffffe538; PC = 0xaaaaaaab7d1c *)
mov L0xffffffffe538 x14;
mov L0xffffffffe540 x15;
(* ldp	x14, x15, [x2, #112]                        #! EA = L0xffffffffe518; Value = 0xa613a84475c215ad; PC = 0xaaaaaaab7d20 *)
mov x14 L0xffffffffe518;
mov x15 L0xffffffffe520;
(* stp	x7, x8, [x2, #128]                          #! EA = L0xffffffffe528; PC = 0xaaaaaaab7d24 *)
mov L0xffffffffe528 x7;
mov L0xffffffffe530 x8;
(* ldp	x7, x8, [x2, #96]                           #! EA = L0xffffffffe508; Value = 0x378e1160b939d439; PC = 0xaaaaaaab7d28 *)
mov x7 L0xffffffffe508;
mov x8 L0xffffffffe510;
(* mul	x24, x6, x14                                #! PC = 0xaaaaaaab7d2c *)
mull Hx6x14 x24 x6 x14;
(* umulh	x25, x6, x14                              #! PC = 0xaaaaaaab7d30 *)
mov x25 Hx6x14;
(* mul	x27, x7, x13                                #! PC = 0xaaaaaaab7d34 *)
mull Hx7x13 x27 x7 x13;
(* umulh	x28, x7, x13                              #! PC = 0xaaaaaaab7d38 *)
mov x28 Hx7x13;
(* adds	x24, x24, x26                              #! PC = 0xaaaaaaab7d3c *)
adds carry x24 x24 x26;
(* adc	x25, x25, xzr                               #! PC = 0xaaaaaaab7d40 *)
adc x25 x25 0@uint64 carry;
(* mul	x30, x7, x14                                #! PC = 0xaaaaaaab7d44 *)
mull Hx7x14 x30 x7 x14;
(* umulh	x26, x7, x14                              #! PC = 0xaaaaaaab7d48 *)
mov x26 Hx7x14;
(* adds	x24, x24, x27                              #! PC = 0xaaaaaaab7d4c *)
adds carry x24 x24 x27;
(* adcs	x25, x25, x28                              #! PC = 0xaaaaaaab7d50 *)
adcs carry x25 x25 x28 carry;
(* adc	x26, x26, xzr                               #! PC = 0xaaaaaaab7d54 *)
adc x26 x26 0@uint64 carry;
(* mul	x27, x6, x15                                #! PC = 0xaaaaaaab7d58 *)
mull Hx6x15 x27 x6 x15;
(* umulh	x28, x6, x15                              #! PC = 0xaaaaaaab7d5c *)
mov x28 Hx6x15;
(* adds	x25, x25, x30                              #! PC = 0xaaaaaaab7d60 *)
adds carry x25 x25 x30;
(* adcs	x26, x26, x28                              #! PC = 0xaaaaaaab7d64 *)
adcs carry x26 x26 x28 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab7d68 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x30, x8, x13                                #! PC = 0xaaaaaaab7d6c *)
mull Hx8x13 x30 x8 x13;
(* umulh	x28, x8, x13                              #! PC = 0xaaaaaaab7d70 *)
mov x28 Hx8x13;
(* adds	x25, x25, x27                              #! PC = 0xaaaaaaab7d74 *)
adds carry x25 x25 x27;
(* adcs	x26, x26, x28                              #! PC = 0xaaaaaaab7d78 *)
adcs carry x26 x26 x28 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab7d7c *)
adc x29 x29 0@uint64 carry;
(* mul	x27, x7, x15                                #! PC = 0xaaaaaaab7d80 *)
mull Hx7x15 x27 x7 x15;
(* umulh	x28, x7, x15                              #! PC = 0xaaaaaaab7d84 *)
mov x28 Hx7x15;
(* adds	x25, x25, x30                              #! PC = 0xaaaaaaab7d88 *)
adds carry x25 x25 x30;
(* adcs	x26, x26, x27                              #! PC = 0xaaaaaaab7d8c *)
adcs carry x26 x26 x27 carry;
(* adcs	x29, x29, x28                              #! PC = 0xaaaaaaab7d90 *)
adcs carry x29 x29 x28 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab7d94 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x27, x8, x14                                #! PC = 0xaaaaaaab7d98 *)
mull Hx8x14 x27 x8 x14;
(* umulh	x28, x8, x14                              #! PC = 0xaaaaaaab7d9c *)
mov x28 Hx8x14;
(* adds	x26, x26, x27                              #! PC = 0xaaaaaaab7da0 *)
adds carry x26 x26 x27;
(* adcs	x29, x29, x28                              #! PC = 0xaaaaaaab7da4 *)
adcs carry x29 x29 x28 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab7da8 *)
adc x30 x30 0@uint64 carry;
(* mul	x27, x8, x15                                #! PC = 0xaaaaaaab7dac *)
mull Hx8x15 x27 x8 x15;
(* umulh	x28, x8, x15                              #! PC = 0xaaaaaaab7db0 *)
mov x28 Hx8x15;
(* adds	x27, x27, x29                              #! PC = 0xaaaaaaab7db4 *)
adds carry x27 x27 x29;
(* adc	x28, x28, x30                               #! PC = 0xaaaaaaab7db8 *)
adc x28 x28 x30 carry;
(* ldp	x7, x8, [x2, #128]                          #! EA = L0xffffffffe528; Value = 0x2fbd86f24b77806e; PC = 0xaaaaaaab7dbc *)
mov x7 L0xffffffffe528;
mov x8 L0xffffffffe530;
(* ldp	x14, x15, [x2, #144]                        #! EA = L0xffffffffe538; Value = 0x46202ec843eda5d1; PC = 0xaaaaaaab7dc0 *)
mov x14 L0xffffffffe538;
mov x15 L0xffffffffe540;
(* subs	x3, x3, x23                                #! PC = 0xaaaaaaab7dc4 *)
subc carry x3 x3 x23;
(* sbcs	x21, x21, x24                              #! PC = 0xaaaaaaab7dc8 *)
sbcs carry x21 x21 x24 carry;
(* sbcs	x22, x22, x25                              #! PC = 0xaaaaaaab7dcc *)
sbcs carry x22 x22 x25 carry;
(* sbcs	x5, x5, x26                                #! PC = 0xaaaaaaab7dd0 *)
sbcs carry x5 x5 x26 carry;
(* sbcs	x14, x14, x27                              #! PC = 0xaaaaaaab7dd4 *)
sbcs carry x14 x14 x27 carry;
(* sbcs	x7, x7, x28                                #! PC = 0xaaaaaaab7dd8 *)
sbcs carry x7 x7 x28 carry;
(* sbc	x4, x4, xzr                                 #! PC = 0xaaaaaaab7ddc *)
sbcs docare x4 x4 0@uint64 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* adds	x20, x3, x20                               #! PC = 0xaaaaaaab7de0 *)
adds carry x20 x3 x20;
(* adcs	x21, x21, x8                               #! PC = 0xaaaaaaab7de4 *)
adcs carry x21 x21 x8 carry;
(* adcs	x22, x22, x15                              #! PC = 0xaaaaaaab7de8 *)
adcs carry x22 x22 x15 carry;
(* adcs	x23, x23, x5                               #! PC = 0xaaaaaaab7dec *)
adcs carry x23 x23 x5 carry;
(* adcs	x24, x24, x14                              #! PC = 0xaaaaaaab7df0 *)
adcs carry x24 x24 x14 carry;
(* adcs	x25, x25, x7                               #! PC = 0xaaaaaaab7df4 *)
adcs carry x25 x25 x7 carry;
(* adcs	x26, x26, x4                               #! PC = 0xaaaaaaab7df8 *)
adcs carry x26 x26 x4 carry;
(* adcs	x27, x27, xzr                              #! PC = 0xaaaaaaab7dfc *)
adcs carry x27 x27 0@uint64 carry;
(* adc	x28, x28, xzr                               #! PC = 0xaaaaaaab7e00 *)
adcs docare x28 x28 0@uint64 carry;

(* TODO: cannot carry *)
(* assert true && docare = 0@1; *)
assume docare = 0 && true;

(* NOTE: MUL384_KARATSUBA_COMBA_B ends *)

(* ldp	x3, x4, [x2]                                #! EA = L0xffffffffe4a8; Value = 0x0000000000000000; PC = 0xaaaaaaab7e04 *)
mov x3 L0xffffffffe4a8;
mov x4 L0xffffffffe4b0;
(* ldp	x5, x6, [x2, #16]                           #! EA = L0xffffffffe4b8; Value = 0x0000000000000000; PC = 0xaaaaaaab7e08 *)
mov x5 L0xffffffffe4b8;
mov x6 L0xffffffffe4c0;
(* ldp	x7, x8, [x2, #32]                           #! EA = L0xffffffffe4c8; Value = 0x0000000000000000; PC = 0xaaaaaaab7e0c *)
mov x7 L0xffffffffe4c8;
mov x8 L0xffffffffe4d0;
(* adds	x23, x23, x3                               #! PC = 0xaaaaaaab7e10 *)
adds carry x23 x23 x3;
(* adcs	x24, x24, x4                               #! PC = 0xaaaaaaab7e14 *)
adcs carry x24 x24 x4 carry;
(* adcs	x25, x25, x5                               #! PC = 0xaaaaaaab7e18 *)
adcs carry x25 x25 x5 carry;
(* adcs	x26, x26, x6                               #! PC = 0xaaaaaaab7e1c *)
adcs carry x26 x26 x6 carry;
(* adcs	x27, x27, x7                               #! PC = 0xaaaaaaab7e20 *)
adcs carry x27 x27 x7 carry;
(* adcs	x28, x28, x8                               #! PC = 0xaaaaaaab7e24 *)
adcs carry x28 x28 x8 carry;
(* adc	x9, x9, xzr                                 #! PC = 0xaaaaaaab7e28 *)
adc x9 x9 0@uint64 carry;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe838; Value = 0xb3d32c00c7e5bb72; PC = 0xaaaaaaab7e2c *)
mov x3 L0xffffffffe838;
mov x4 L0xffffffffe840;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffe848; Value = 0x09864600de88a2da; PC = 0xaaaaaaab7e30 *)
mov x5 L0xffffffffe848;
mov x6 L0xffffffffe850;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe858; Value = 0x1f8f6d152878a4ee; PC = 0xaaaaaaab7e34 *)
mov x7 L0xffffffffe858;
mov x8 L0xffffffffe860;
(* ldp	x10, x11, [x1]                              #! EA = L0xffffffffe898; Value = 0xa54d8644b01b47ab; PC = 0xaaaaaaab7e38 *)
mov x10 L0xffffffffe898;
mov x11 L0xffffffffe8a0;
(* ldp	x12, x13, [x1, #16]                         #! EA = L0xffffffffe8a8; Value = 0x2f9712d9dacc749a; PC = 0xaaaaaaab7e3c *)
mov x12 L0xffffffffe8a8;
mov x13 L0xffffffffe8b0;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0xffffffffe8b8; Value = 0xed88dd8de615df5d; PC = 0xaaaaaaab7e40 *)
mov x14 L0xffffffffe8b8;
mov x15 L0xffffffffe8c0;
(* stp	x16, x17, [x2]                              #! EA = L0xffffffffe4a8; PC = 0xaaaaaaab7e44 *)
mov L0xffffffffe4a8 x16;
mov L0xffffffffe4b0 x17;
(* stp	x19, x20, [x2, #16]                         #! EA = L0xffffffffe4b8; PC = 0xaaaaaaab7e48 *)
mov L0xffffffffe4b8 x19;
mov L0xffffffffe4c0 x20;
(* stp	x21, x22, [x2, #32]                         #! EA = L0xffffffffe4c8; PC = 0xaaaaaaab7e4c *)
mov L0xffffffffe4c8 x21;
mov L0xffffffffe4d0 x22;
(* stp	x23, x24, [x2, #48]                         #! EA = L0xffffffffe4d8; PC = 0xaaaaaaab7e50 *)
mov L0xffffffffe4d8 x23;
mov L0xffffffffe4e0 x24;
(* stp	x25, x26, [x2, #64]                         #! EA = L0xffffffffe4e8; PC = 0xaaaaaaab7e54 *)
mov L0xffffffffe4e8 x25;
mov L0xffffffffe4f0 x26;
(* stp	x27, x28, [x2, #80]                         #! EA = L0xffffffffe4f8; PC = 0xaaaaaaab7e58 *)
mov L0xffffffffe4f8 x27;
mov L0xffffffffe500 x28;

(* NOTE: MUL384_KARATSUBA_COMBA starts *)

(* adds	x23, x3, x6                                #! PC = 0xaaaaaaab7e5c *)
adds carry x23 x3 x6;
(* adcs	x24, x4, x7                                #! PC = 0xaaaaaaab7e60 *)
adcs carry x24 x4 x7 carry;
(* adcs	x25, x5, x8                                #! PC = 0xaaaaaaab7e64 *)
adcs carry x25 x5 x8 carry;
(* adc	x4, xzr, xzr                                #! PC = 0xaaaaaaab7e68 *)
adc x4 0@uint64 0@uint64 carry;
(* adds	x26, x10, x13                              #! PC = 0xaaaaaaab7e6c *)
adds carry x26 x10 x13;
(* adcs	x27, x11, x14                              #! PC = 0xaaaaaaab7e70 *)
adcs carry x27 x11 x14 carry;
(* adcs	x28, x12, x15                              #! PC = 0xaaaaaaab7e74 *)
adcs carry x28 x12 x15 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab7e78 *)
adc x29 0@uint64 0@uint64 carry;

ghost x4m2@uint64, x29m2@uint64 :
      and [x4m2=x4, x29m2=x29] && and [x4m2=x4, x29m2=x29];

(* neg	x30, x4                                     #! PC = 0xaaaaaaab7e7c *)
subc dontcare x30 0@uint64 x4;
(* and	x5, x26, x30                                #! PC = 0xaaaaaaab7e80 *)
and x5@uint64 x26 x30;
(* and	x14, x27, x30                               #! PC = 0xaaaaaaab7e84 *)
and x14@uint64 x27 x30;
(* and	x7, x28, x30                                #! PC = 0xaaaaaaab7e88 *)
and x7@uint64 x28 x30;
(* neg	x30, x29                                    #! PC = 0xaaaaaaab7e8c *)
subc dontcare x30 0@uint64 x29;
(* and	x3, x23, x30                                #! PC = 0xaaaaaaab7e90 *)
and x3@uint64 x23 x30;
(* umulh	x19, x23, x26                             #! PC = 0xaaaaaaab7e94 *)
(* NOTE: merged with mul x3, x23, x26 *)
(* mov x19 Hx23x26; *)
(* and	x21, x24, x30                               #! PC = 0xaaaaaaab7e98 *)
and x21@uint64 x24 x30;
(* and	x22, x25, x30                               #! PC = 0xaaaaaaab7e9c *)
and x22@uint64 x25 x30;

(* NOTE: mask *)
assert true
    && and [x4m2*(1@64-x4m2)=0@64, x29m2*(1@64-x29m2)=0@64,
            limbs 64 [ x5, x14,  x7] =
            uext  x4m2 128 * limbs 64 [x26, x27, x28],
            limbs 64 [ x3, x21, x22] =
            uext x29m2 128 * limbs 64 [x23, x24, x25]];
assume and [x4m2*(1-x4m2)=0, x29m2*(1-x29m2)=0,
            limbs 64 [ x5, x14,  x7] =   x4m2 * limbs 64 [x26, x27, x28],
            limbs 64 [ x3, x21, x22] =  x29m2 * limbs 64 [x23, x24, x25]]
    && true;
            
(* and	x4, x4, x29                                 #! PC = 0xaaaaaaab7ea0 *)
and x4@uint64 x4 x29;

(* NOTE: combined carries *)
assert true && x4=x4m2*x29m2;
assume x4=x4m2*x29m2 && true;

(* adds	x5, x5, x3                                 #! PC = 0xaaaaaaab7ea4 *)
adds carry x5 x5 x3;
(* adcs	x14, x14, x21                              #! PC = 0xaaaaaaab7ea8 *)
adcs carry x14 x14 x21 carry;
(* mul	x3, x23, x26                                #! PC = 0xaaaaaaab7eac *)
mull x19 x3 x23 x26;
(* mul	x21, x23, x27                               #! PC = 0xaaaaaaab7eb0 *)
mull Hx23x27 x21 x23 x27;
(* adcs	x7, x7, x22                                #! PC = 0xaaaaaaab7eb4 *)
adcs carry x7 x7 x22 carry;
(* umulh	x22, x23, x27                             #! PC = 0xaaaaaaab7eb8 *)
mov x22 Hx23x27;
(* adc	x4, x4, xzr                                 #! PC = 0xaaaaaaab7ebc *)
adc x4 x4 0@uint64 carry;
(* mul	x20, x24, x26                               #! PC = 0xaaaaaaab7ec0 *)
mull Hx24x26 x20 x24 x26;
(* umulh	x8, x24, x26                              #! PC = 0xaaaaaaab7ec4 *)
mov x8 Hx24x26;
(* adds	x21, x21, x19                              #! PC = 0xaaaaaaab7ec8 *)
adds carry x21 x21 x19;
(* adc	x22, x22, xzr                               #! PC = 0xaaaaaaab7ecc *)
adc x22 x22 0@uint64 carry;
(* mul	x30, x24, x27                               #! PC = 0xaaaaaaab7ed0 *)
mull Hx24x27 x30 x24 x27;
(* umulh	x19, x24, x27                             #! PC = 0xaaaaaaab7ed4 *)
mov x19 Hx24x27;
(* adds	x21, x21, x20                              #! PC = 0xaaaaaaab7ed8 *)
adds carry x21 x21 x20;
(* adcs	x22, x22, x8                               #! PC = 0xaaaaaaab7edc *)
adcs carry x22 x22 x8 carry;
(* adc	x19, x19, xzr                               #! PC = 0xaaaaaaab7ee0 *)
adc x19 x19 0@uint64 carry;
(* mul	x20, x23, x28                               #! PC = 0xaaaaaaab7ee4 *)
mull Hx23x28 x20 x23 x28;
(* umulh	x8, x23, x28                              #! PC = 0xaaaaaaab7ee8 *)
mov x8 Hx23x28;
(* adds	x22, x22, x30                              #! PC = 0xaaaaaaab7eec *)
adds carry x22 x22 x30;
(* adcs	x19, x19, x8                               #! PC = 0xaaaaaaab7ef0 *)
adcs carry x19 x19 x8 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab7ef4 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x30, x25, x26                               #! PC = 0xaaaaaaab7ef8 *)
mull Hx25x26 x30 x25 x26;
(* umulh	x8, x25, x26                              #! PC = 0xaaaaaaab7efc *)
mov x8 Hx25x26;
(* adds	x22, x22, x20                              #! PC = 0xaaaaaaab7f00 *)
adds carry x22 x22 x20;
(* adcs	x19, x19, x8                               #! PC = 0xaaaaaaab7f04 *)
adcs carry x19 x19 x8 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab7f08 *)
adc x29 x29 0@uint64 carry;
(* mul	x20, x24, x28                               #! PC = 0xaaaaaaab7f0c *)
mull Hx24x28 x20 x24 x28;
(* umulh	x8, x24, x28                              #! PC = 0xaaaaaaab7f10 *)
mov x8 Hx24x28;
(* adds	x22, x22, x30                              #! PC = 0xaaaaaaab7f14 *)
adds carry x22 x22 x30;
(* adcs	x19, x19, x20                              #! PC = 0xaaaaaaab7f18 *)
adcs carry x19 x19 x20 carry;
(* adcs	x29, x29, x8                               #! PC = 0xaaaaaaab7f1c *)
adcs carry x29 x29 x8 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab7f20 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x20, x25, x27                               #! PC = 0xaaaaaaab7f24 *)
mull Hx25x27 x20 x25 x27;
(* umulh	x8, x25, x27                              #! PC = 0xaaaaaaab7f28 *)
mov x8 Hx25x27;
(* adds	x19, x19, x20                              #! PC = 0xaaaaaaab7f2c *)
adds carry x19 x19 x20;
(* adcs	x29, x29, x8                               #! PC = 0xaaaaaaab7f30 *)
adcs carry x29 x29 x8 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab7f34 *)
adc x30 x30 0@uint64 carry;
(* mul	x20, x25, x28                               #! PC = 0xaaaaaaab7f38 *)
mull Hx25x28 x20 x25 x28;
(* umulh	x8, x25, x28                              #! PC = 0xaaaaaaab7f3c *)
mov x8 Hx25x28;
(* adds	x20, x20, x29                              #! PC = 0xaaaaaaab7f40 *)
adds carry x20 x20 x29;
(* adc	x8, x8, x30                                 #! PC = 0xaaaaaaab7f44 *)
adc x8 x8 x30 carry;
(* adds	x5, x5, x19                                #! PC = 0xaaaaaaab7f48 *)
adds carry x5 x5 x19;
(* adcs	x14, x14, x20                              #! PC = 0xaaaaaaab7f4c *)
adcs carry x14 x14 x20 carry;
(* adcs	x7, x7, x8                                 #! PC = 0xaaaaaaab7f50 *)
adcs carry x7 x7 x8 carry;
(* adc	x4, x4, xzr                                 #! PC = 0xaaaaaaab7f54 *)
adc x4 x4 0@uint64 carry;
(* stp	x3, x4, [x2, #160]                          #! EA = L0xffffffffe548; PC = 0xaaaaaaab7f58 *)
mov L0xffffffffe548 x3;
mov L0xffffffffe550 x4;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe838; Value = 0xb3d32c00c7e5bb72; PC = 0xaaaaaaab7f5c *)
mov x3 L0xffffffffe838;
mov x4 L0xffffffffe840;
(* str	x5, [x2, #176]                              #! EA = L0xffffffffe558; PC = 0xaaaaaaab7f60 *)
mov L0xffffffffe558 x5;
(* ldr	x5, [x0, #16]                               #! EA = L0xffffffffe848; Value = 0x09864600de88a2da; PC = 0xaaaaaaab7f64 *)
mov x5 L0xffffffffe848;
(* mul	x16, x3, x10                                #! PC = 0xaaaaaaab7f68 *)
mull Hx3x10 x16 x3 x10;
(* mul	x17, x3, x11                                #! PC = 0xaaaaaaab7f6c *)
mull Hx3x11 x17 x3 x11;
(* umulh	x19, x3, x11                              #! PC = 0xaaaaaaab7f70 *)
mov x19 Hx3x11;
(* umulh	x20, x3, x10                              #! PC = 0xaaaaaaab7f74 *)
mov x20 Hx3x10;
(* mul	x8, x4, x10                                 #! PC = 0xaaaaaaab7f78 *)
mull Hx4x10 x8 x4 x10;
(* umulh	x15, x4, x10                              #! PC = 0xaaaaaaab7f7c *)
mov x15 Hx4x10;
(* adds	x17, x17, x20                              #! PC = 0xaaaaaaab7f80 *)
adds carry x17 x17 x20;
(* adc	x19, x19, xzr                               #! PC = 0xaaaaaaab7f84 *)
adc x19 x19 0@uint64 carry;
(* mul	x30, x4, x11                                #! PC = 0xaaaaaaab7f88 *)
mull Hx4x11 x30 x4 x11;
(* umulh	x20, x4, x11                              #! PC = 0xaaaaaaab7f8c *)
mov x20 Hx4x11;
(* adds	x17, x17, x8                               #! PC = 0xaaaaaaab7f90 *)
adds carry x17 x17 x8;
(* adcs	x19, x19, x15                              #! PC = 0xaaaaaaab7f94 *)
adcs carry x19 x19 x15 carry;
(* adc	x20, x20, xzr                               #! PC = 0xaaaaaaab7f98 *)
adc x20 x20 0@uint64 carry;
(* mul	x8, x3, x12                                 #! PC = 0xaaaaaaab7f9c *)
mull Hx3x12 x8 x3 x12;
(* umulh	x15, x3, x12                              #! PC = 0xaaaaaaab7fa0 *)
mov x15 Hx3x12;
(* adds	x19, x19, x30                              #! PC = 0xaaaaaaab7fa4 *)
adds carry x19 x19 x30;
(* adcs	x20, x20, x15                              #! PC = 0xaaaaaaab7fa8 *)
adcs carry x20 x20 x15 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab7fac *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x30, x5, x10                                #! PC = 0xaaaaaaab7fb0 *)
mull Hx5x10 x30 x5 x10;
(* umulh	x15, x5, x10                              #! PC = 0xaaaaaaab7fb4 *)
mov x15 Hx5x10;
(* adds	x19, x19, x8                               #! PC = 0xaaaaaaab7fb8 *)
adds carry x19 x19 x8;
(* adcs	x20, x20, x15                              #! PC = 0xaaaaaaab7fbc *)
adcs carry x20 x20 x15 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab7fc0 *)
adc x29 x29 0@uint64 carry;
(* mul	x8, x4, x12                                 #! PC = 0xaaaaaaab7fc4 *)
mull Hx4x12 x8 x4 x12;
(* umulh	x15, x4, x12                              #! PC = 0xaaaaaaab7fc8 *)
mov x15 Hx4x12;
(* adds	x19, x19, x30                              #! PC = 0xaaaaaaab7fcc *)
adds carry x19 x19 x30;
(* adcs	x20, x20, x8                               #! PC = 0xaaaaaaab7fd0 *)
adcs carry x20 x20 x8 carry;
(* adcs	x29, x29, x15                              #! PC = 0xaaaaaaab7fd4 *)
adcs carry x29 x29 x15 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab7fd8 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x8, x5, x11                                 #! PC = 0xaaaaaaab7fdc *)
mull Hx5x11 x8 x5 x11;
(* umulh	x15, x5, x11                              #! PC = 0xaaaaaaab7fe0 *)
mov x15 Hx5x11;
(* adds	x20, x20, x8                               #! PC = 0xaaaaaaab7fe4 *)
adds carry x20 x20 x8;
(* adcs	x29, x29, x15                              #! PC = 0xaaaaaaab7fe8 *)
adcs carry x29 x29 x15 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab7fec *)
adc x30 x30 0@uint64 carry;
(* mul	x8, x5, x12                                 #! PC = 0xaaaaaaab7ff0 *)
mull Hx5x12 x8 x5 x12;
(* umulh	x15, x5, x12                              #! PC = 0xaaaaaaab7ff4 *)
mov x15 Hx5x12;
(* adds	x8, x8, x29                                #! PC = 0xaaaaaaab7ff8 *)
adds carry x8 x8 x29;
(* adc	x15, x15, x30                               #! PC = 0xaaaaaaab7ffc *)
adc x15 x15 x30 carry;
(* ldp	x3, x4, [x2, #160]                          #! EA = L0xffffffffe548; Value = 0xdb4852824ab95de9; PC = 0xaaaaaaab8000 *)
mov x3 L0xffffffffe548;
mov x4 L0xffffffffe550;
(* ldr	x5, [x2, #176]                              #! EA = L0xffffffffe558; Value = 0x9a449ac36f125a15; PC = 0xaaaaaaab8004 *)
mov x5 L0xffffffffe558;
(* mul	x23, x6, x13                                #! PC = 0xaaaaaaab8008 *)
mull Hx6x13 x23 x6 x13;
(* umulh	x26, x6, x13                              #! PC = 0xaaaaaaab800c *)
mov x26 Hx6x13;
(* subs	x3, x3, x16                                #! PC = 0xaaaaaaab8010 *)
subc carry x3 x3 x16;
(* sbcs	x21, x21, x17                              #! PC = 0xaaaaaaab8014 *)
sbcs carry x21 x21 x17 carry;
(* sbcs	x22, x22, x19                              #! PC = 0xaaaaaaab8018 *)
sbcs carry x22 x22 x19 carry;
(* sbcs	x5, x5, x20                                #! PC = 0xaaaaaaab801c *)
sbcs carry x5 x5 x20 carry;
(* sbcs	x14, x14, x8                               #! PC = 0xaaaaaaab8020 *)
sbcs carry x14 x14 x8 carry;
(* sbcs	x7, x7, x15                                #! PC = 0xaaaaaaab8024 *)
sbcs carry x7 x7 x15 carry;
(* sbc	x4, x4, xzr                                 #! PC = 0xaaaaaaab8028 *)
sbcs docare x4 x4 0@uint64 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* stp	x14, x15, [x2, #176]                        #! EA = L0xffffffffe558; PC = 0xaaaaaaab802c *)
mov L0xffffffffe558 x14;
mov L0xffffffffe560 x15;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0xffffffffe8b8; Value = 0xed88dd8de615df5d; PC = 0xaaaaaaab8030 *)
mov x14 L0xffffffffe8b8;
mov x15 L0xffffffffe8c0;
(* stp	x7, x8, [x2, #160]                          #! EA = L0xffffffffe548; PC = 0xaaaaaaab8034 *)
mov L0xffffffffe548 x7;
mov L0xffffffffe550 x8;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe858; Value = 0x1f8f6d152878a4ee; PC = 0xaaaaaaab8038 *)
mov x7 L0xffffffffe858;
mov x8 L0xffffffffe860;
(* mul	x24, x6, x14                                #! PC = 0xaaaaaaab803c *)
mull Hx6x14 x24 x6 x14;
(* umulh	x25, x6, x14                              #! PC = 0xaaaaaaab8040 *)
mov x25 Hx6x14;
(* mul	x27, x7, x13                                #! PC = 0xaaaaaaab8044 *)
mull Hx7x13 x27 x7 x13;
(* umulh	x28, x7, x13                              #! PC = 0xaaaaaaab8048 *)
mov x28 Hx7x13;
(* adds	x24, x24, x26                              #! PC = 0xaaaaaaab804c *)
adds carry x24 x24 x26;
(* adc	x25, x25, xzr                               #! PC = 0xaaaaaaab8050 *)
adc x25 x25 0@uint64 carry;
(* mul	x30, x7, x14                                #! PC = 0xaaaaaaab8054 *)
mull Hx7x14 x30 x7 x14;
(* umulh	x26, x7, x14                              #! PC = 0xaaaaaaab8058 *)
mov x26 Hx7x14;
(* adds	x24, x24, x27                              #! PC = 0xaaaaaaab805c *)
adds carry x24 x24 x27;
(* adcs	x25, x25, x28                              #! PC = 0xaaaaaaab8060 *)
adcs carry x25 x25 x28 carry;
(* adc	x26, x26, xzr                               #! PC = 0xaaaaaaab8064 *)
adc x26 x26 0@uint64 carry;
(* mul	x27, x6, x15                                #! PC = 0xaaaaaaab8068 *)
mull Hx6x15 x27 x6 x15;
(* umulh	x28, x6, x15                              #! PC = 0xaaaaaaab806c *)
mov x28 Hx6x15;
(* adds	x25, x25, x30                              #! PC = 0xaaaaaaab8070 *)
adds carry x25 x25 x30;
(* adcs	x26, x26, x28                              #! PC = 0xaaaaaaab8074 *)
adcs carry x26 x26 x28 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab8078 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x30, x8, x13                                #! PC = 0xaaaaaaab807c *)
mull Hx8x13 x30 x8 x13;
(* umulh	x28, x8, x13                              #! PC = 0xaaaaaaab8080 *)
mov x28 Hx8x13;
(* adds	x25, x25, x27                              #! PC = 0xaaaaaaab8084 *)
adds carry x25 x25 x27;
(* adcs	x26, x26, x28                              #! PC = 0xaaaaaaab8088 *)
adcs carry x26 x26 x28 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab808c *)
adc x29 x29 0@uint64 carry;
(* mul	x27, x7, x15                                #! PC = 0xaaaaaaab8090 *)
mull Hx7x15 x27 x7 x15;
(* umulh	x28, x7, x15                              #! PC = 0xaaaaaaab8094 *)
mov x28 Hx7x15;
(* adds	x25, x25, x30                              #! PC = 0xaaaaaaab8098 *)
adds carry x25 x25 x30;
(* adcs	x26, x26, x27                              #! PC = 0xaaaaaaab809c *)
adcs carry x26 x26 x27 carry;
(* adcs	x29, x29, x28                              #! PC = 0xaaaaaaab80a0 *)
adcs carry x29 x29 x28 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab80a4 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x27, x8, x14                                #! PC = 0xaaaaaaab80a8 *)
mull Hx8x14 x27 x8 x14;
(* umulh	x28, x8, x14                              #! PC = 0xaaaaaaab80ac *)
mov x28 Hx8x14;
(* adds	x26, x26, x27                              #! PC = 0xaaaaaaab80b0 *)
adds carry x26 x26 x27;
(* adcs	x29, x29, x28                              #! PC = 0xaaaaaaab80b4 *)
adcs carry x29 x29 x28 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab80b8 *)
adc x30 x30 0@uint64 carry;
(* mul	x27, x8, x15                                #! PC = 0xaaaaaaab80bc *)
mull Hx8x15 x27 x8 x15;
(* umulh	x28, x8, x15                              #! PC = 0xaaaaaaab80c0 *)
mov x28 Hx8x15;
(* adds	x27, x27, x29                              #! PC = 0xaaaaaaab80c4 *)
adds carry x27 x27 x29;
(* adc	x28, x28, x30                               #! PC = 0xaaaaaaab80c8 *)
adc x28 x28 x30 carry;
(* ldp	x7, x8, [x2, #160]                          #! EA = L0xffffffffe548; Value = 0x098a844a30823949; PC = 0xaaaaaaab80cc *)
mov x7 L0xffffffffe548;
mov x8 L0xffffffffe550;
(* ldp	x14, x15, [x2, #176]                        #! EA = L0xffffffffe558; Value = 0xa86c69a06634cd41; PC = 0xaaaaaaab80d0 *)
mov x14 L0xffffffffe558;
mov x15 L0xffffffffe560;
(* subs	x3, x3, x23                                #! PC = 0xaaaaaaab80d4 *)
subc carry x3 x3 x23;
(* sbcs	x21, x21, x24                              #! PC = 0xaaaaaaab80d8 *)
sbcs carry x21 x21 x24 carry;
(* sbcs	x22, x22, x25                              #! PC = 0xaaaaaaab80dc *)
sbcs carry x22 x22 x25 carry;
(* sbcs	x5, x5, x26                                #! PC = 0xaaaaaaab80e0 *)
sbcs carry x5 x5 x26 carry;
(* sbcs	x14, x14, x27                              #! PC = 0xaaaaaaab80e4 *)
sbcs carry x14 x14 x27 carry;
(* sbcs	x7, x7, x28                                #! PC = 0xaaaaaaab80e8 *)
sbcs carry x7 x7 x28 carry;
(* sbc	x4, x4, xzr                                 #! PC = 0xaaaaaaab80ec *)
sbcs docare x4 x4 0@uint64 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* adds	x20, x3, x20                               #! PC = 0xaaaaaaab80f0 *)
adds carry x20 x3 x20;
(* adcs	x21, x21, x8                               #! PC = 0xaaaaaaab80f4 *)
adcs carry x21 x21 x8 carry;
(* adcs	x22, x22, x15                              #! PC = 0xaaaaaaab80f8 *)
adcs carry x22 x22 x15 carry;
(* adcs	x23, x23, x5                               #! PC = 0xaaaaaaab80fc *)
adcs carry x23 x23 x5 carry;
(* adcs	x24, x24, x14                              #! PC = 0xaaaaaaab8100 *)
adcs carry x24 x24 x14 carry;
(* adcs	x25, x25, x7                               #! PC = 0xaaaaaaab8104 *)
adcs carry x25 x25 x7 carry;
(* adcs	x26, x26, x4                               #! PC = 0xaaaaaaab8108 *)
adcs carry x26 x26 x4 carry;
(* adcs	x27, x27, xzr                              #! PC = 0xaaaaaaab810c *)
adcs carry x27 x27 0@uint64 carry;
(* adc	x28, x28, xzr                               #! PC = 0xaaaaaaab8110 *)
adcs docare x28 x28 0@uint64 carry;

(* TODO: cannot carry *)
(* assert true && docare = 0@1; *)
assume docare = 0 && true;

(* NOTE: MUL384_KARATSUBA_COMBA ends *)

(* ldp	x3, x4, [x2]                                #! EA = L0xffffffffe4a8; Value = 0xa04b797727b17820; PC = 0xaaaaaaab8114 *)
mov x3 L0xffffffffe4a8;
mov x4 L0xffffffffe4b0;
(* ldp	x5, x6, [x2, #16]                           #! EA = L0xffffffffe4b8; Value = 0x969fe3fbade02ba5; PC = 0xaaaaaaab8118 *)
mov x5 L0xffffffffe4b8;
mov x6 L0xffffffffe4c0;
(* ldp	x7, x8, [x2, #32]                           #! EA = L0xffffffffe4c8; Value = 0x3c7bf5b51c4068a2; PC = 0xaaaaaaab811c *)
mov x7 L0xffffffffe4c8;
mov x8 L0xffffffffe4d0;
(* ldp	x10, x11, [x2, #48]                         #! EA = L0xffffffffe4d8; Value = 0xd07fb3091b0e8541; PC = 0xaaaaaaab8120 *)
mov x10 L0xffffffffe4d8;
mov x11 L0xffffffffe4e0;
(* ldp	x12, x13, [x2, #64]                         #! EA = L0xffffffffe4e8; Value = 0x3b29a180aed1b404; PC = 0xaaaaaaab8124 *)
mov x12 L0xffffffffe4e8;
mov x13 L0xffffffffe4f0;
(* ldp	x14, x15, [x2, #80]                         #! EA = L0xffffffffe4f8; Value = 0x93ee92c3760cfb5f; PC = 0xaaaaaaab8128 *)
mov x14 L0xffffffffe4f8;
mov x15 L0xffffffffe500;
(* subs	x3, x3, x16                                #! PC = 0xaaaaaaab812c *)
subc carry x3 x3 x16;
(* sbcs	x4, x4, x17                                #! PC = 0xaaaaaaab8130 *)
sbcs carry x4 x4 x17 carry;
(* sbcs	x5, x5, x19                                #! PC = 0xaaaaaaab8134 *)
sbcs carry x5 x5 x19 carry;
(* sbcs	x6, x6, x20                                #! PC = 0xaaaaaaab8138 *)
sbcs carry x6 x6 x20 carry;
(* sbcs	x7, x7, x21                                #! PC = 0xaaaaaaab813c *)
sbcs carry x7 x7 x21 carry;
(* sbcs	x8, x8, x22                                #! PC = 0xaaaaaaab8140 *)
sbcs carry x8 x8 x22 carry;
(* sbcs	x10, x10, x23                              #! PC = 0xaaaaaaab8144 *)
sbcs carry x10 x10 x23 carry;
(* sbcs	x11, x11, x24                              #! PC = 0xaaaaaaab8148 *)
sbcs carry x11 x11 x24 carry;
(* sbcs	x12, x12, x25                              #! PC = 0xaaaaaaab814c *)
sbcs carry x12 x12 x25 carry;
(* sbcs	x13, x13, x26                              #! PC = 0xaaaaaaab8150 *)
sbcs carry x13 x13 x26 carry;
(* sbcs	x14, x14, x27                              #! PC = 0xaaaaaaab8154 *)
sbcs carry x14 x14 x27 carry;
(* sbcs	x15, x15, x28                              #! PC = 0xaaaaaaab8158 *)
sbcs carry x15 x15 x28 carry;
(* sbc	x9, x9, xzr                                 #! PC = 0xaaaaaaab815c *)
sbcs docare x9 x9 0@uint64 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* stp	x16, x17, [x2]                              #! EA = L0xffffffffe4a8; PC = 0xaaaaaaab8160 *)
mov L0xffffffffe4a8 x16;
mov L0xffffffffe4b0 x17;
(* stp	x19, x20, [x2, #16]                         #! EA = L0xffffffffe4b8; PC = 0xaaaaaaab8164 *)
mov L0xffffffffe4b8 x19;
mov L0xffffffffe4c0 x20;
(* stp	x21, x22, [x2, #32]                         #! EA = L0xffffffffe4c8; PC = 0xaaaaaaab8168 *)
mov L0xffffffffe4c8 x21;
mov L0xffffffffe4d0 x22;
(* adds	x3, x3, x23                                #! PC = 0xaaaaaaab816c *)
adds carry x3 x3 x23;
(* adcs	x4, x4, x24                                #! PC = 0xaaaaaaab8170 *)
adcs carry x4 x4 x24 carry;
(* adcs	x5, x5, x25                                #! PC = 0xaaaaaaab8174 *)
adcs carry x5 x5 x25 carry;
(* adcs	x6, x6, x26                                #! PC = 0xaaaaaaab8178 *)
adcs carry x6 x6 x26 carry;
(* adcs	x7, x7, x27                                #! PC = 0xaaaaaaab817c *)
adcs carry x7 x7 x27 carry;
(* adcs	x8, x8, x28                                #! PC = 0xaaaaaaab8180 *)
adcs carry x8 x8 x28 carry;
(* stp	x3, x4, [x2, #48]                           #! EA = L0xffffffffe4d8; PC = 0xaaaaaaab8184 *)
mov L0xffffffffe4d8 x3;
mov L0xffffffffe4e0 x4;
(* adc	x3, xzr, xzr                                #! PC = 0xaaaaaaab8188 *)
adc x3 0@uint64 0@uint64 carry;

(* NOTE: store carry *)
ghost storecarry@bit : storecarry=carry && storecarry=carry;

(* stp	x5, x6, [x2, #64]                           #! EA = L0xffffffffe4e8; PC = 0xaaaaaaab818c *)
mov L0xffffffffe4e8 x5;
mov L0xffffffffe4f0 x6;
(* stp	x7, x8, [x2, #80]                           #! EA = L0xffffffffe4f8; PC = 0xaaaaaaab8190 *)
mov L0xffffffffe4f8 x7;
mov L0xffffffffe500 x8;
(* stp	x10, x11, [x2, #96]                         #! EA = L0xffffffffe508; PC = 0xaaaaaaab8194 *)
mov L0xffffffffe508 x10;
mov L0xffffffffe510 x11;
(* stp	x12, x13, [x2, #112]                        #! EA = L0xffffffffe518; PC = 0xaaaaaaab8198 *)
mov L0xffffffffe518 x12;
mov L0xffffffffe520 x13;
(* stp	x14, x15, [x2, #128]                        #! EA = L0xffffffffe528; PC = 0xaaaaaaab819c *)
mov L0xffffffffe528 x14;
mov L0xffffffffe530 x15;
(* neg	x3, x3                                      #! PC = 0xaaaaaaab81a0 *)
subc dontcare x3 0@uint64 x3;
(* str	x3, [x2, #144]                              #! EA = L0xffffffffe538; PC = 0xaaaaaaab81a4 *)
mov L0xffffffffe538 x3;
(* ldp	x3, x4, [x0, #48]                           #! EA = L0xffffffffe868; Value = 0x5ec00322287d7b20; PC = 0xaaaaaaab81a8 *)
mov x3 L0xffffffffe868;
mov x4 L0xffffffffe870;
(* ldp	x5, x6, [x0, #64]                           #! EA = L0xffffffffe878; Value = 0x8c65ca99b17d9cfa; PC = 0xaaaaaaab81ac *)
mov x5 L0xffffffffe878;
mov x6 L0xffffffffe880;
(* ldp	x7, x8, [x0, #80]                           #! EA = L0xffffffffe888; Value = 0x17fea44b90c12f4b; PC = 0xaaaaaaab81b0 *)
mov x7 L0xffffffffe888;
mov x8 L0xffffffffe890;
(* ldp	x10, x11, [x1, #48]                         #! EA = L0xffffffffe8c8; Value = 0x87f7d31828c003e5; PC = 0xaaaaaaab81b4 *)
mov x10 L0xffffffffe8c8;
mov x11 L0xffffffffe8d0;
(* ldp	x12, x13, [x1, #64]                         #! EA = L0xffffffffe8d8; Value = 0x91a96ba63d77a125; PC = 0xaaaaaaab81b8 *)
mov x12 L0xffffffffe8d8;
mov x13 L0xffffffffe8e0;
(* ldp	x14, x15, [x1, #80]                         #! EA = L0xffffffffe8e8; Value = 0xb88acab68fac3650; PC = 0xaaaaaaab81bc *)
mov x14 L0xffffffffe8e8;
mov x15 L0xffffffffe8f0;
(* add	x0, x0, #0x30                               #! PC = 0xaaaaaaab81c0 *)
adds dontcare x0 x0 0x30@uint64;
(* add	x1, x1, #0x30                               #! PC = 0xaaaaaaab81c4 *)
adds dontcare x1 x1 0x30@uint64;

(* NOTE: MUL384_KARATSUBA_COMBA starts *)

(* adds	x23, x3, x6                                #! PC = 0xaaaaaaab81c8 *)
adds carry x23 x3 x6;
(* adcs	x24, x4, x7                                #! PC = 0xaaaaaaab81cc *)
adcs carry x24 x4 x7 carry;
(* adcs	x25, x5, x8                                #! PC = 0xaaaaaaab81d0 *)
adcs carry x25 x5 x8 carry;
(* adc	x4, xzr, xzr                                #! PC = 0xaaaaaaab81d4 *)
adc x4 0@uint64 0@uint64 carry;
(* adds	x26, x10, x13                              #! PC = 0xaaaaaaab81d8 *)
adds carry x26 x10 x13;
(* adcs	x27, x11, x14                              #! PC = 0xaaaaaaab81dc *)
adcs carry x27 x11 x14 carry;
(* adcs	x28, x12, x15                              #! PC = 0xaaaaaaab81e0 *)
adcs carry x28 x12 x15 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab81e4 *)
adc x29 0@uint64 0@uint64 carry;

ghost x4m3@uint64, x29m3@uint64 :
      and [x4m3=x4, x29m3=x29] && and [x4m3=x4, x29m3=x29];
      
(* neg	x30, x4                                     #! PC = 0xaaaaaaab81e8 *)
subc dontcare x30 0@uint64 x4;
(* and	x5, x26, x30                                #! PC = 0xaaaaaaab81ec *)
and x5@uint64 x26 x30;
(* and	x14, x27, x30                               #! PC = 0xaaaaaaab81f0 *)
and x14@uint64 x27 x30;
(* and	x7, x28, x30                                #! PC = 0xaaaaaaab81f4 *)
and x7@uint64 x28 x30;
(* neg	x30, x29                                    #! PC = 0xaaaaaaab81f8 *)
subc dontcare x30 0@uint64 x29;
(* and	x3, x23, x30                                #! PC = 0xaaaaaaab81fc *)
and x3@uint64 x23 x30;
(* umulh	x19, x23, x26                             #! PC = 0xaaaaaaab8200 *)
(* NOTE: merged with mul x3, x23, x26 *)
(* mov x19 Hx23x26; *)
(* and	x21, x24, x30                               #! PC = 0xaaaaaaab8204 *)
and x21@uint64 x24 x30;
(* and	x22, x25, x30                               #! PC = 0xaaaaaaab8208 *)
and x22@uint64 x25 x30;

(* NOTE: mask *)
assert true
    && and [x4m3*(1@64-x4m3)=0@64, x29m3*(1@64-x29m3)=0@64,
            limbs 64 [ x5, x14,  x7] =
            uext  x4m3 128 * limbs 64 [x26, x27, x28],
            limbs 64 [ x3, x21, x22] =
            uext x29m3 128 * limbs 64 [x23, x24, x25]];
assume and [x4m3*(1-x4m3)=0, x29m3*(1-x29m3)=0,
            limbs 64 [ x5, x14,  x7] =  x4m3 * limbs 64 [x26, x27, x28],
            limbs 64 [ x3, x21, x22] = x29m3 * limbs 64 [x23, x24, x25]]
    && true;

(* and	x4, x4, x29                                 #! PC = 0xaaaaaaab820c *)
and x4@uint64 x4 x29;

(* NOTE: combined carries *)
assert true && x4=x4m3*x29m3;
assume x4=x4m3*x29m3 && true;

(* adds	x5, x5, x3                                 #! PC = 0xaaaaaaab8210 *)
adds carry x5 x5 x3;
(* adcs	x14, x14, x21                              #! PC = 0xaaaaaaab8214 *)
adcs carry x14 x14 x21 carry;
(* mul	x3, x23, x26                                #! PC = 0xaaaaaaab8218 *)
mull x19 x3 x23 x26;
(* mul	x21, x23, x27                               #! PC = 0xaaaaaaab821c *)
mull Hx23x27 x21 x23 x27;
(* adcs	x7, x7, x22                                #! PC = 0xaaaaaaab8220 *)
adcs carry x7 x7 x22 carry;
(* umulh	x22, x23, x27                             #! PC = 0xaaaaaaab8224 *)
mov x22 Hx23x27;
(* adc	x4, x4, xzr                                 #! PC = 0xaaaaaaab8228 *)
adc x4 x4 0@uint64 carry;
(* mul	x20, x24, x26                               #! PC = 0xaaaaaaab822c *)
mull Hx24x26 x20 x24 x26;
(* umulh	x8, x24, x26                              #! PC = 0xaaaaaaab8230 *)
mov x8 Hx24x26;
(* adds	x21, x21, x19                              #! PC = 0xaaaaaaab8234 *)
adds carry x21 x21 x19;
(* adc	x22, x22, xzr                               #! PC = 0xaaaaaaab8238 *)
adc x22 x22 0@uint64 carry;
(* mul	x30, x24, x27                               #! PC = 0xaaaaaaab823c *)
mull Hx24x27 x30 x24 x27;
(* umulh	x19, x24, x27                             #! PC = 0xaaaaaaab8240 *)
mov x19 Hx24x27;
(* adds	x21, x21, x20                              #! PC = 0xaaaaaaab8244 *)
adds carry x21 x21 x20;
(* adcs	x22, x22, x8                               #! PC = 0xaaaaaaab8248 *)
adcs carry x22 x22 x8 carry;
(* adc	x19, x19, xzr                               #! PC = 0xaaaaaaab824c *)
adc x19 x19 0@uint64 carry;
(* mul	x20, x23, x28                               #! PC = 0xaaaaaaab8250 *)
mull Hx23x28 x20 x23 x28;
(* umulh	x8, x23, x28                              #! PC = 0xaaaaaaab8254 *)
mov x8 Hx23x28;
(* adds	x22, x22, x30                              #! PC = 0xaaaaaaab8258 *)
adds carry x22 x22 x30;
(* adcs	x19, x19, x8                               #! PC = 0xaaaaaaab825c *)
adcs carry x19 x19 x8 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab8260 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x30, x25, x26                               #! PC = 0xaaaaaaab8264 *)
mull Hx25x26 x30 x25 x26;
(* umulh	x8, x25, x26                              #! PC = 0xaaaaaaab8268 *)
mov x8 Hx25x26;
(* adds	x22, x22, x20                              #! PC = 0xaaaaaaab826c *)
adds carry x22 x22 x20;
(* adcs	x19, x19, x8                               #! PC = 0xaaaaaaab8270 *)
adcs carry x19 x19 x8 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8274 *)
adc x29 x29 0@uint64 carry;
(* mul	x20, x24, x28                               #! PC = 0xaaaaaaab8278 *)
mull Hx24x28 x20 x24 x28;
(* umulh	x8, x24, x28                              #! PC = 0xaaaaaaab827c *)
mov x8 Hx24x28;
(* adds	x22, x22, x30                              #! PC = 0xaaaaaaab8280 *)
adds carry x22 x22 x30;
(* adcs	x19, x19, x20                              #! PC = 0xaaaaaaab8284 *)
adcs carry x19 x19 x20 carry;
(* adcs	x29, x29, x8                               #! PC = 0xaaaaaaab8288 *)
adcs carry x29 x29 x8 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab828c *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x20, x25, x27                               #! PC = 0xaaaaaaab8290 *)
mull Hx25x27 x20 x25 x27;
(* umulh	x8, x25, x27                              #! PC = 0xaaaaaaab8294 *)
mov x8 Hx25x27;
(* adds	x19, x19, x20                              #! PC = 0xaaaaaaab8298 *)
adds carry x19 x19 x20;
(* adcs	x29, x29, x8                               #! PC = 0xaaaaaaab829c *)
adcs carry x29 x29 x8 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab82a0 *)
adc x30 x30 0@uint64 carry;
(* mul	x20, x25, x28                               #! PC = 0xaaaaaaab82a4 *)
mull Hx25x28 x20 x25 x28;
(* umulh	x8, x25, x28                              #! PC = 0xaaaaaaab82a8 *)
mov x8 Hx25x28;
(* adds	x20, x20, x29                              #! PC = 0xaaaaaaab82ac *)
adds carry x20 x20 x29;
(* adc	x8, x8, x30                                 #! PC = 0xaaaaaaab82b0 *)
adc x8 x8 x30 carry;
(* adds	x5, x5, x19                                #! PC = 0xaaaaaaab82b4 *)
adds carry x5 x5 x19;
(* adcs	x14, x14, x20                              #! PC = 0xaaaaaaab82b8 *)
adcs carry x14 x14 x20 carry;
(* adcs	x7, x7, x8                                 #! PC = 0xaaaaaaab82bc *)
adcs carry x7 x7 x8 carry;
(* adc	x4, x4, xzr                                 #! PC = 0xaaaaaaab82c0 *)
adc x4 x4 0@uint64 carry;
(* stp	x3, x4, [x2, #160]                          #! EA = L0xffffffffe548; PC = 0xaaaaaaab82c4 *)
mov L0xffffffffe548 x3;
mov L0xffffffffe550 x4;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe868; Value = 0x5ec00322287d7b20; PC = 0xaaaaaaab82c8 *)
mov x3 L0xffffffffe868;
mov x4 L0xffffffffe870;
(* str	x5, [x2, #176]                              #! EA = L0xffffffffe558; PC = 0xaaaaaaab82cc *)
mov L0xffffffffe558 x5;
(* ldr	x5, [x0, #16]                               #! EA = L0xffffffffe878; Value = 0x8c65ca99b17d9cfa; PC = 0xaaaaaaab82d0 *)
mov x5 L0xffffffffe878;
(* mul	x16, x3, x10                                #! PC = 0xaaaaaaab82d4 *)
mull Hx3x10 x16 x3 x10;
(* mul	x17, x3, x11                                #! PC = 0xaaaaaaab82d8 *)
mull Hx3x11 x17 x3 x11;
(* umulh	x19, x3, x11                              #! PC = 0xaaaaaaab82dc *)
mov x19 Hx3x11;
(* umulh	x20, x3, x10                              #! PC = 0xaaaaaaab82e0 *)
mov x20 Hx3x10;
(* mul	x8, x4, x10                                 #! PC = 0xaaaaaaab82e4 *)
mull Hx4x10 x8 x4 x10;
(* umulh	x15, x4, x10                              #! PC = 0xaaaaaaab82e8 *)
mov x15 Hx4x10;
(* adds	x17, x17, x20                              #! PC = 0xaaaaaaab82ec *)
adds carry x17 x17 x20;
(* adc	x19, x19, xzr                               #! PC = 0xaaaaaaab82f0 *)
adc x19 x19 0@uint64 carry;
(* mul	x30, x4, x11                                #! PC = 0xaaaaaaab82f4 *)
mull Hx4x11 x30 x4 x11;
(* umulh	x20, x4, x11                              #! PC = 0xaaaaaaab82f8 *)
mov x20 Hx4x11;
(* adds	x17, x17, x8                               #! PC = 0xaaaaaaab82fc *)
adds carry x17 x17 x8;
(* adcs	x19, x19, x15                              #! PC = 0xaaaaaaab8300 *)
adcs carry x19 x19 x15 carry;
(* adc	x20, x20, xzr                               #! PC = 0xaaaaaaab8304 *)
adc x20 x20 0@uint64 carry;
(* mul	x8, x3, x12                                 #! PC = 0xaaaaaaab8308 *)
mull Hx3x12 x8 x3 x12;
(* umulh	x15, x3, x12                              #! PC = 0xaaaaaaab830c *)
mov x15 Hx3x12;
(* adds	x19, x19, x30                              #! PC = 0xaaaaaaab8310 *)
adds carry x19 x19 x30;
(* adcs	x20, x20, x15                              #! PC = 0xaaaaaaab8314 *)
adcs carry x20 x20 x15 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab8318 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x30, x5, x10                                #! PC = 0xaaaaaaab831c *)
mull Hx5x10 x30 x5 x10;
(* umulh	x15, x5, x10                              #! PC = 0xaaaaaaab8320 *)
mov x15 Hx5x10;
(* adds	x19, x19, x8                               #! PC = 0xaaaaaaab8324 *)
adds carry x19 x19 x8;
(* adcs	x20, x20, x15                              #! PC = 0xaaaaaaab8328 *)
adcs carry x20 x20 x15 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab832c *)
adc x29 x29 0@uint64 carry;
(* mul	x8, x4, x12                                 #! PC = 0xaaaaaaab8330 *)
mull Hx4x12 x8 x4 x12;
(* umulh	x15, x4, x12                              #! PC = 0xaaaaaaab8334 *)
mov x15 Hx4x12;
(* adds	x19, x19, x30                              #! PC = 0xaaaaaaab8338 *)
adds carry x19 x19 x30;
(* adcs	x20, x20, x8                               #! PC = 0xaaaaaaab833c *)
adcs carry x20 x20 x8 carry;
(* adcs	x29, x29, x15                              #! PC = 0xaaaaaaab8340 *)
adcs carry x29 x29 x15 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab8344 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x8, x5, x11                                 #! PC = 0xaaaaaaab8348 *)
mull Hx5x11 x8 x5 x11;
(* umulh	x15, x5, x11                              #! PC = 0xaaaaaaab834c *)
mov x15 Hx5x11;
(* adds	x20, x20, x8                               #! PC = 0xaaaaaaab8350 *)
adds carry x20 x20 x8;
(* adcs	x29, x29, x15                              #! PC = 0xaaaaaaab8354 *)
adcs carry x29 x29 x15 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab8358 *)
adc x30 x30 0@uint64 carry;
(* mul	x8, x5, x12                                 #! PC = 0xaaaaaaab835c *)
mull Hx5x12 x8 x5 x12;
(* umulh	x15, x5, x12                              #! PC = 0xaaaaaaab8360 *)
mov x15 Hx5x12;
(* adds	x8, x8, x29                                #! PC = 0xaaaaaaab8364 *)
adds carry x8 x8 x29;
(* adc	x15, x15, x30                               #! PC = 0xaaaaaaab8368 *)
adc x15 x15 x30 carry;
(* ldp	x3, x4, [x2, #160]                          #! EA = L0xffffffffe548; Value = 0x575e11e7cd4e033c; PC = 0xaaaaaaab836c *)
mov x3 L0xffffffffe548;
mov x4 L0xffffffffe550;
(* ldr	x5, [x2, #176]                              #! EA = L0xffffffffe558; Value = 0xcf8ef6bc298a417a; PC = 0xaaaaaaab8370 *)
mov x5 L0xffffffffe558;
(* mul	x23, x6, x13                                #! PC = 0xaaaaaaab8374 *)
mull Hx6x13 x23 x6 x13;
(* umulh	x26, x6, x13                              #! PC = 0xaaaaaaab8378 *)
mov x26 Hx6x13;
(* subs	x3, x3, x16                                #! PC = 0xaaaaaaab837c *)
subc carry x3 x3 x16;
(* sbcs	x21, x21, x17                              #! PC = 0xaaaaaaab8380 *)
sbcs carry x21 x21 x17 carry;
(* sbcs	x22, x22, x19                              #! PC = 0xaaaaaaab8384 *)
sbcs carry x22 x22 x19 carry;
(* sbcs	x5, x5, x20                                #! PC = 0xaaaaaaab8388 *)
sbcs carry x5 x5 x20 carry;
(* sbcs	x14, x14, x8                               #! PC = 0xaaaaaaab838c *)
sbcs carry x14 x14 x8 carry;
(* sbcs	x7, x7, x15                                #! PC = 0xaaaaaaab8390 *)
sbcs carry x7 x7 x15 carry;
(* sbc	x4, x4, xzr                                 #! PC = 0xaaaaaaab8394 *)
sbcs docare x4 x4 0@uint64 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* stp	x14, x15, [x2, #176]                        #! EA = L0xffffffffe558; PC = 0xaaaaaaab8398 *)
mov L0xffffffffe558 x14;
mov L0xffffffffe560 x15;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0xffffffffe8e8; Value = 0xb88acab68fac3650; PC = 0xaaaaaaab839c *)
mov x14 L0xffffffffe8e8;
mov x15 L0xffffffffe8f0;
(* stp	x7, x8, [x2, #160]                          #! EA = L0xffffffffe548; PC = 0xaaaaaaab83a0 *)
mov L0xffffffffe548 x7;
mov L0xffffffffe550 x8;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe888; Value = 0x17fea44b90c12f4b; PC = 0xaaaaaaab83a4 *)
mov x7 L0xffffffffe888;
mov x8 L0xffffffffe890;
(* mul	x24, x6, x14                                #! PC = 0xaaaaaaab83a8 *)
mull Hx6x14 x24 x6 x14;
(* umulh	x25, x6, x14                              #! PC = 0xaaaaaaab83ac *)
mov x25 Hx6x14;
(* mul	x27, x7, x13                                #! PC = 0xaaaaaaab83b0 *)
mull Hx7x13 x27 x7 x13;
(* umulh	x28, x7, x13                              #! PC = 0xaaaaaaab83b4 *)
mov x28 Hx7x13;
(* adds	x24, x24, x26                              #! PC = 0xaaaaaaab83b8 *)
adds carry x24 x24 x26;
(* adc	x25, x25, xzr                               #! PC = 0xaaaaaaab83bc *)
adc x25 x25 0@uint64 carry;
(* mul	x30, x7, x14                                #! PC = 0xaaaaaaab83c0 *)
mull Hx7x14 x30 x7 x14;
(* umulh	x26, x7, x14                              #! PC = 0xaaaaaaab83c4 *)
mov x26 Hx7x14;
(* adds	x24, x24, x27                              #! PC = 0xaaaaaaab83c8 *)
adds carry x24 x24 x27;
(* adcs	x25, x25, x28                              #! PC = 0xaaaaaaab83cc *)
adcs carry x25 x25 x28 carry;
(* adc	x26, x26, xzr                               #! PC = 0xaaaaaaab83d0 *)
adc x26 x26 0@uint64 carry;
(* mul	x27, x6, x15                                #! PC = 0xaaaaaaab83d4 *)
mull Hx6x15 x27 x6 x15;
(* umulh	x28, x6, x15                              #! PC = 0xaaaaaaab83d8 *)
mov x28 Hx6x15;
(* adds	x25, x25, x30                              #! PC = 0xaaaaaaab83dc *)
adds carry x25 x25 x30;
(* adcs	x26, x26, x28                              #! PC = 0xaaaaaaab83e0 *)
adcs carry x26 x26 x28 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab83e4 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x30, x8, x13                                #! PC = 0xaaaaaaab83e8 *)
mull Hx8x13 x30 x8 x13;
(* umulh	x28, x8, x13                              #! PC = 0xaaaaaaab83ec *)
mov x28 Hx8x13;
(* adds	x25, x25, x27                              #! PC = 0xaaaaaaab83f0 *)
adds carry x25 x25 x27;
(* adcs	x26, x26, x28                              #! PC = 0xaaaaaaab83f4 *)
adcs carry x26 x26 x28 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab83f8 *)
adc x29 x29 0@uint64 carry;
(* mul	x27, x7, x15                                #! PC = 0xaaaaaaab83fc *)
mull Hx7x15 x27 x7 x15;
(* umulh	x28, x7, x15                              #! PC = 0xaaaaaaab8400 *)
mov x28 Hx7x15;
(* adds	x25, x25, x30                              #! PC = 0xaaaaaaab8404 *)
adds carry x25 x25 x30;
(* adcs	x26, x26, x27                              #! PC = 0xaaaaaaab8408 *)
adcs carry x26 x26 x27 carry;
(* adcs	x29, x29, x28                              #! PC = 0xaaaaaaab840c *)
adcs carry x29 x29 x28 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab8410 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x27, x8, x14                                #! PC = 0xaaaaaaab8414 *)
mull Hx8x14 x27 x8 x14;
(* umulh	x28, x8, x14                              #! PC = 0xaaaaaaab8418 *)
mov x28 Hx8x14;
(* adds	x26, x26, x27                              #! PC = 0xaaaaaaab841c *)
adds carry x26 x26 x27;
(* adcs	x29, x29, x28                              #! PC = 0xaaaaaaab8420 *)
adcs carry x29 x29 x28 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab8424 *)
adc x30 x30 0@uint64 carry;
(* mul	x27, x8, x15                                #! PC = 0xaaaaaaab8428 *)
mull Hx8x15 x27 x8 x15;
(* umulh	x28, x8, x15                              #! PC = 0xaaaaaaab842c *)
mov x28 Hx8x15;
(* adds	x27, x27, x29                              #! PC = 0xaaaaaaab8430 *)
adds carry x27 x27 x29;
(* adc	x28, x28, x30                               #! PC = 0xaaaaaaab8434 *)
adc x28 x28 x30 carry;
(* ldp	x7, x8, [x2, #160]                          #! EA = L0xffffffffe548; Value = 0x000049894a5dac08; PC = 0xaaaaaaab8438 *)
mov x7 L0xffffffffe548;
mov x8 L0xffffffffe550;
(* ldp	x14, x15, [x2, #176]                        #! EA = L0xffffffffe558; Value = 0x30d46965f0c0f86b; PC = 0xaaaaaaab843c *)
mov x14 L0xffffffffe558;
mov x15 L0xffffffffe560;
(* subs	x3, x3, x23                                #! PC = 0xaaaaaaab8440 *)
subc carry x3 x3 x23;
(* sbcs	x21, x21, x24                              #! PC = 0xaaaaaaab8444 *)
sbcs carry x21 x21 x24 carry;
(* sbcs	x22, x22, x25                              #! PC = 0xaaaaaaab8448 *)
sbcs carry x22 x22 x25 carry;
(* sbcs	x5, x5, x26                                #! PC = 0xaaaaaaab844c *)
sbcs carry x5 x5 x26 carry;
(* sbcs	x14, x14, x27                              #! PC = 0xaaaaaaab8450 *)
sbcs carry x14 x14 x27 carry;
(* sbcs	x7, x7, x28                                #! PC = 0xaaaaaaab8454 *)
sbcs carry x7 x7 x28 carry;
(* sbc	x4, x4, xzr                                 #! PC = 0xaaaaaaab8458 *)
sbcs docare x4 x4 0@uint64 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* adds	x20, x3, x20                               #! PC = 0xaaaaaaab845c *)
adds carry x20 x3 x20;
(* adcs	x21, x21, x8                               #! PC = 0xaaaaaaab8460 *)
adcs carry x21 x21 x8 carry;
(* adcs	x22, x22, x15                              #! PC = 0xaaaaaaab8464 *)
adcs carry x22 x22 x15 carry;
(* adcs	x23, x23, x5                               #! PC = 0xaaaaaaab8468 *)
adcs carry x23 x23 x5 carry;
(* adcs	x24, x24, x14                              #! PC = 0xaaaaaaab846c *)
adcs carry x24 x24 x14 carry;
(* adcs	x25, x25, x7                               #! PC = 0xaaaaaaab8470 *)
adcs carry x25 x25 x7 carry;
(* adcs	x26, x26, x4                               #! PC = 0xaaaaaaab8474 *)
adcs carry x26 x26 x4 carry;
(* adcs	x27, x27, xzr                              #! PC = 0xaaaaaaab8478 *)
adcs carry x27 x27 0@uint64 carry;
(* adc	x28, x28, xzr                               #! PC = 0xaaaaaaab847c *)
adc x28 x28 0@uint64 carry;

(* NOTE: MUL384_KARATSUBA_COMBA ends *)

(* ldp	x3, x4, [x2, #48]                           #! EA = L0xffffffffe4d8; Value = 0xc918bf20befe19ba; PC = 0xaaaaaaab8480 *)
mov x3 L0xffffffffe4d8;
mov x4 L0xffffffffe4e0;
(* ldp	x5, x6, [x2, #64]                           #! EA = L0xffffffffe4e8; Value = 0xcff8b687ebc7cedc; PC = 0xaaaaaaab8484 *)
mov x5 L0xffffffffe4e8;
mov x6 L0xffffffffe4f0;
(* ldp	x7, x8, [x2, #80]                           #! EA = L0xffffffffe4f8; Value = 0xe175b4d778fb1530; PC = 0xaaaaaaab8488 *)
mov x7 L0xffffffffe4f8;
mov x8 L0xffffffffe500;
(* ldp	x10, x11, [x2, #96]                         #! EA = L0xffffffffe508; Value = 0x967f5508214b1081; PC = 0xaaaaaaab848c *)
mov x10 L0xffffffffe508;
mov x11 L0xffffffffe510;
(* ldp	x12, x13, [x2, #112]                        #! EA = L0xffffffffe518; Value = 0x57022485e81ac854; PC = 0xaaaaaaab8490 *)
mov x12 L0xffffffffe518;
mov x13 L0xffffffffe520;
(* ldp	x14, x15, [x2, #128]                        #! EA = L0xffffffffe528; Value = 0xa83c2d544e3777de; PC = 0xaaaaaaab8494 *)
mov x14 L0xffffffffe528;
mov x15 L0xffffffffe530;
(* subs	x3, x3, x16                                #! PC = 0xaaaaaaab8498 *)
subc carry x3 x3 x16;
(* sbcs	x4, x4, x17                                #! PC = 0xaaaaaaab849c *)
sbcs carry x4 x4 x17 carry;
(* sbcs	x5, x5, x19                                #! PC = 0xaaaaaaab84a0 *)
sbcs carry x5 x5 x19 carry;
(* sbcs	x6, x6, x20                                #! PC = 0xaaaaaaab84a4 *)
sbcs carry x6 x6 x20 carry;
(* sbcs	x7, x7, x21                                #! PC = 0xaaaaaaab84a8 *)
sbcs carry x7 x7 x21 carry;
(* sbcs	x8, x8, x22                                #! PC = 0xaaaaaaab84ac *)
sbcs carry x8 x8 x22 carry;
(* sbcs	x10, x10, x23                              #! PC = 0xaaaaaaab84b0 *)
sbcs carry x10 x10 x23 carry;
(* sbcs	x11, x11, x24                              #! PC = 0xaaaaaaab84b4 *)
sbcs carry x11 x11 x24 carry;
(* sbcs	x12, x12, x25                              #! PC = 0xaaaaaaab84b8 *)
sbcs carry x12 x12 x25 carry;
(* sbcs	x13, x13, x26                              #! PC = 0xaaaaaaab84bc *)
sbcs carry x13 x13 x26 carry;
(* sbcs	x14, x14, x27                              #! PC = 0xaaaaaaab84c0 *)
sbcs carry x14 x14 x27 carry;
(* sbcs	x15, x15, x28                              #! PC = 0xaaaaaaab84c4 *)
sbcs carry x15 x15 x28 carry;
(* sbc	x9, x9, xzr                                 #! PC = 0xaaaaaaab84c8 *)
sbcs docare x9 x9 0@uint64 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* ldr	x1, [x2, #144]                              #! EA = L0xffffffffe538; Value = 0x0000000000000000; PC = 0xaaaaaaab84cc *)
mov x1 L0xffffffffe538;
(* stp	x3, x4, [x2, #48]                           #! EA = L0xffffffffe4d8; PC = 0xaaaaaaab84d0 *)
mov L0xffffffffe4d8 x3;
mov L0xffffffffe4e0 x4;
(* stp	x5, x6, [x2, #64]                           #! EA = L0xffffffffe4e8; PC = 0xaaaaaaab84d4 *)
mov L0xffffffffe4e8 x5;
mov L0xffffffffe4f0 x6;
(* adds	x1, x1, #0x1                               #! PC = 0xaaaaaaab84d8 *)
adds carry x1 x1 0x1@uint64;

(* NOTE: restore carry *)
assert true && carry=storecarry;
assume carry=storecarry && true;

(* stp	x7, x8, [x2, #80]                           #! EA = L0xffffffffe4f8; PC = 0xaaaaaaab84dc *)
mov L0xffffffffe4f8 x7;
mov L0xffffffffe500 x8;
(* adcs	x10, x10, x16                              #! PC = 0xaaaaaaab84e0 *)
adcs carry x10 x10 x16 carry;
(* adcs	x11, x11, x17                              #! PC = 0xaaaaaaab84e4 *)
adcs carry x11 x11 x17 carry;
(* adcs	x12, x12, x19                              #! PC = 0xaaaaaaab84e8 *)
adcs carry x12 x12 x19 carry;
(* adcs	x13, x13, x20                              #! PC = 0xaaaaaaab84ec *)
adcs carry x13 x13 x20 carry;
(* adcs	x14, x14, x21                              #! PC = 0xaaaaaaab84f0 *)
adcs carry x14 x14 x21 carry;
(* adcs	x15, x15, x22                              #! PC = 0xaaaaaaab84f4 *)
adcs carry x15 x15 x22 carry;
(* adcs	x23, x23, x9                               #! PC = 0xaaaaaaab84f8 *)
adcs carry x23 x23 x9 carry;
(* adcs	x24, x24, xzr                              #! PC = 0xaaaaaaab84fc *)
adcs carry x24 x24 0@uint64 carry;
(* adcs	x25, x25, xzr                              #! PC = 0xaaaaaaab8500 *)
adcs carry x25 x25 0@uint64 carry;
(* adcs	x26, x26, xzr                              #! PC = 0xaaaaaaab8504 *)
adcs carry x26 x26 0@uint64 carry;
(* adcs	x27, x27, xzr                              #! PC = 0xaaaaaaab8508 *)
adcs carry x27 x27 0@uint64 carry;
(* adc	x28, x28, xzr                               #! PC = 0xaaaaaaab850c *)
adc x28 x28 0@uint64 carry;
(* stp	x10, x11, [x2, #96]                         #! EA = L0xffffffffe508; PC = 0xaaaaaaab8510 *)
mov L0xffffffffe508 x10;
mov L0xffffffffe510 x11;
(* stp	x12, x13, [x2, #112]                        #! EA = L0xffffffffe518; PC = 0xaaaaaaab8514 *)
mov L0xffffffffe518 x12;
mov L0xffffffffe520 x13;
(* stp	x14, x15, [x2, #128]                        #! EA = L0xffffffffe528; PC = 0xaaaaaaab8518 *)
mov L0xffffffffe528 x14;
mov L0xffffffffe530 x15;
(* stp	x23, x24, [x2, #144]                        #! EA = L0xffffffffe538; PC = 0xaaaaaaab851c *)
mov L0xffffffffe538 x23;
mov L0xffffffffe540 x24;
(* stp	x25, x26, [x2, #160]                        #! EA = L0xffffffffe548; PC = 0xaaaaaaab8520 *)
mov L0xffffffffe548 x25;
mov L0xffffffffe550 x26;
(* stp	x27, x28, [x2, #176]                        #! EA = L0xffffffffe558; PC = 0xaaaaaaab8524 *)
mov L0xffffffffe558 x27;
mov L0xffffffffe560 x28;
(* ldp	x19, x20, [sp]                              #! EA = L0xffffffffe420; Value = 0x0000ffffffffe4a8; PC = 0xaaaaaaab8528 *)
mov x19 L0xffffffffe420;
mov x20 L0xffffffffe428;
(* ldp	x21, x22, [sp, #16]                         #! EA = L0xffffffffe430; Value = 0x0000ffffffffe5f8; PC = 0xaaaaaaab852c *)
mov x21 L0xffffffffe430;
mov x22 L0xffffffffe438;
(* ldp	x23, x24, [sp, #32]                         #! EA = L0xffffffffe440; Value = 0x0000ffffffffe7d8; PC = 0xaaaaaaab8530 *)
mov x23 L0xffffffffe440;
mov x24 L0xffffffffe448;
(* ldp	x25, x26, [sp, #48]                         #! EA = L0xffffffffe450; Value = 0x0000ffffffffe838; PC = 0xaaaaaaab8534 *)
mov x25 L0xffffffffe450;
mov x26 L0xffffffffe458;
(* ldp	x27, x28, [sp, #64]                         #! EA = L0xffffffffe460; Value = 0x0000ffffffffe898; PC = 0xaaaaaaab8538 *)
mov x27 L0xffffffffe460;
mov x28 L0xffffffffe468;
(* ldp	x29, x30, [sp, #80]                         #! EA = L0xffffffffe470; Value = 0x0000ffffffffe480; PC = 0xaaaaaaab853c *)
mov x29 L0xffffffffe470;
mov x30 L0xffffffffe478;
(* add	sp, sp, #0x60                               #! PC = 0xaaaaaaab8540 *)
adds dontcare sp sp 0x60@uint64;
(* #! <- SP = 0xffffffffe480 *)
#! 0xffffffffe480 = 0xffffffffe480;
(* #ret                                            #! PC = 0xaaaaaaab8544 *)
#ret                                            #! 0xaaaaaaab8544 = 0xaaaaaaab8544;

(* NOTE: summary *)
cut limbs 64 [L0xffffffffe4a8, L0xffffffffe4b0, L0xffffffffe4b8,
              L0xffffffffe4c0, L0xffffffffe4c8, L0xffffffffe4d0,
              L0xffffffffe4d8, L0xffffffffe4e0, L0xffffffffe4e8,
              L0xffffffffe4f0, L0xffffffffe4f8, L0xffffffffe500,
              L0xffffffffe508, L0xffffffffe510, L0xffffffffe518,
              L0xffffffffe520, L0xffffffffe528, L0xffffffffe530,
              L0xffffffffe538, L0xffffffffe540, L0xffffffffe548,
              L0xffffffffe550, L0xffffffffe558, L0xffffffffe560] =
    limbs 64 [a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, aa, ab] *
    limbs 64 [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, ba, bb]
 && limbs 64 [L0xffffffffe4a8, L0xffffffffe4b0, L0xffffffffe4b8,
              L0xffffffffe4c0, L0xffffffffe4c8, L0xffffffffe4d0,
              L0xffffffffe4d8, L0xffffffffe4e0, L0xffffffffe4e8,
              L0xffffffffe4f0, L0xffffffffe4f8, L0xffffffffe500,
              L0xffffffffe508, L0xffffffffe510, L0xffffffffe518,
              L0xffffffffe520, L0xffffffffe528, L0xffffffffe530,
              L0xffffffffe538, L0xffffffffe540, L0xffffffffe548,
              L0xffffffffe550, L0xffffffffe558, L0xffffffffe560] <u
    (2**1504)@1536;

(* mov	x1, x20                                     #! PC = 0xaaaaaaaadf74 *)
mov x1 x20;
(* mov	x0, x19                                     #! PC = 0xaaaaaaaadf78 *)
mov x0 x19;
(* #bl	0xaaaaaaab7544 <rdc_mont>                   #! PC = 0xaaaaaaaadf7c *)
#bl	0xaaaaaaab7544 <rdc_mont>                   #! 0xaaaaaaaadf7c = 0xaaaaaaaadf7c;
(* #! -> SP = 0xffffffffe480 *)
#! 0xffffffffe480 = 0xffffffffe480;
(* #b	0xaaaaaaab8548 <rdc751_asm>                  #! PC = 0xaaaaaaab7544 *)
#b	0xaaaaaaab8548 <rdc751_asm>                  #! 0xaaaaaaab7544 = 0xaaaaaaab7544;
(* sub	sp, sp, #0x60                               #! PC = 0xaaaaaaab8548 *)
subc dontcare sp sp 0x60@uint64;
(* stp	x19, x20, [sp]                              #! EA = L0xffffffffe420; PC = 0xaaaaaaab854c *)
mov L0xffffffffe420 x19;
mov L0xffffffffe428 x20;
(* stp	x21, x22, [sp, #16]                         #! EA = L0xffffffffe430; PC = 0xaaaaaaab8550 *)
mov L0xffffffffe430 x21;
mov L0xffffffffe438 x22;
(* stp	x23, x24, [sp, #32]                         #! EA = L0xffffffffe440; PC = 0xaaaaaaab8554 *)
mov L0xffffffffe440 x23;
mov L0xffffffffe448 x24;
(* stp	x25, x26, [sp, #48]                         #! EA = L0xffffffffe450; PC = 0xaaaaaaab8558 *)
mov L0xffffffffe450 x25;
mov L0xffffffffe458 x26;
(* stp	x27, x28, [sp, #64]                         #! EA = L0xffffffffe460; PC = 0xaaaaaaab855c *)
mov L0xffffffffe460 x27;
mov L0xffffffffe468 x28;
(* stp	x29, x30, [sp, #80]                         #! EA = L0xffffffffe470; PC = 0xaaaaaaab8560 *)
mov L0xffffffffe470 x29;
mov L0xffffffffe478 x30;
(* ldp	x2, x3, [x0]                                #! EA = L0xffffffffe4a8; Value = 0x113318576276d326; PC = 0xaaaaaaab8564 *)
mov x2 L0xffffffffe4a8;
mov x3 L0xffffffffe4b0;
(* ldp	x4, x5, [x0, #16]                           #! EA = L0xffffffffe4b8; Value = 0xaaceaa6e88cf4879; PC = 0xaaaaaaab8568 *)
mov x4 L0xffffffffe4b8;
mov x5 L0xffffffffe4c0;
(* ldr	x23, 0xaaaaaaab7618 <p751p1_nz_s32>         #! PC = 0xaaaaaaab856c *)
mov x23 L0xaaaaaaab7618;
(* ldr	x24, 0xaaaaaaab7620 <p751p1_nz_s32+8>       #! PC = 0xaaaaaaab8570 *)
mov x24 L0xaaaaaaab7620;
(* ldr	x25, 0xaaaaaaab7628 <p751p1_nz_s32+16>      #! PC = 0xaaaaaaab8574 *)
mov x25 L0xaaaaaaab7628;
(* ldr	x26, 0xaaaaaaab7630 <p751p1_nz_s32+24>      #! PC = 0xaaaaaaab8578 *)
mov x26 L0xaaaaaaab7630;
(* ldr	x27, 0xaaaaaaab7638 <p751p1_nz_s32+32>      #! PC = 0xaaaaaaab857c *)
mov x27 L0xaaaaaaab7638;
(* ldr	x28, 0xaaaaaaab7640 <p751p1_nz_s32+40>      #! PC = 0xaaaaaaab8580 *)
mov x28 L0xaaaaaaab7640;
(* mul	x6, x2, x23                                 #! PC = 0xaaaaaaab8584 *)
mull Hx2x23 x6 x2 x23;
(* umulh	x9, x2, x23                               #! PC = 0xaaaaaaab8588 *)
mov x9 Hx2x23;
(* mul	x7, x2, x24                                 #! PC = 0xaaaaaaab858c *)
mull Hx2x24 x7 x2 x24;
(* umulh	x8, x2, x24                               #! PC = 0xaaaaaaab8590 *)
mov x8 Hx2x24;
(* mul	x10, x3, x23                                #! PC = 0xaaaaaaab8594 *)
mull Hx3x23 x10 x3 x23;
(* umulh	x11, x3, x23                              #! PC = 0xaaaaaaab8598 *)
mov x11 Hx3x23;
(* adds	x7, x7, x9                                 #! PC = 0xaaaaaaab859c *)
adds carry x7 x7 x9;
(* adc	x8, x8, xzr                                 #! PC = 0xaaaaaaab85a0 *)
adc x8 x8 0@uint64 carry;
(* mul	x29, x3, x24                                #! PC = 0xaaaaaaab85a4 *)
mull Hx3x24 x29 x3 x24;
(* umulh	x9, x3, x24                               #! PC = 0xaaaaaaab85a8 *)
mov x9 Hx3x24;
(* adds	x7, x7, x10                                #! PC = 0xaaaaaaab85ac *)
adds carry x7 x7 x10;
(* adcs	x8, x8, x11                                #! PC = 0xaaaaaaab85b0 *)
adcs carry x8 x8 x11 carry;
(* adc	x9, x9, xzr                                 #! PC = 0xaaaaaaab85b4 *)
adc x9 x9 0@uint64 carry;
(* mul	x10, x2, x25                                #! PC = 0xaaaaaaab85b8 *)
mull Hx2x25 x10 x2 x25;
(* umulh	x11, x2, x25                              #! PC = 0xaaaaaaab85bc *)
mov x11 Hx2x25;
(* adds	x8, x8, x29                                #! PC = 0xaaaaaaab85c0 *)
adds carry x8 x8 x29;
(* adcs	x9, x9, x11                                #! PC = 0xaaaaaaab85c4 *)
adcs carry x9 x9 x11 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab85c8 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x29, x4, x23                                #! PC = 0xaaaaaaab85cc *)
mull Hx4x23 x29 x4 x23;
(* umulh	x11, x4, x23                              #! PC = 0xaaaaaaab85d0 *)
mov x11 Hx4x23;
(* adds	x8, x8, x10                                #! PC = 0xaaaaaaab85d4 *)
adds carry x8 x8 x10;
(* adcs	x9, x9, x11                                #! PC = 0xaaaaaaab85d8 *)
adcs carry x9 x9 x11 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab85dc *)
adc x30 x30 0@uint64 carry;
(* mul	x10, x3, x25                                #! PC = 0xaaaaaaab85e0 *)
mull Hx3x25 x10 x3 x25;
(* umulh	x11, x3, x25                              #! PC = 0xaaaaaaab85e4 *)
mov x11 Hx3x25;
(* adds	x8, x8, x29                                #! PC = 0xaaaaaaab85e8 *)
adds carry x8 x8 x29;
(* adcs	x9, x9, x10                                #! PC = 0xaaaaaaab85ec *)
adcs carry x9 x9 x10 carry;
(* adcs	x30, x30, x11                              #! PC = 0xaaaaaaab85f0 *)
adcs carry x30 x30 x11 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab85f4 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x10, x4, x24                                #! PC = 0xaaaaaaab85f8 *)
mull Hx4x24 x10 x4 x24;
(* umulh	x11, x4, x24                              #! PC = 0xaaaaaaab85fc *)
mov x11 Hx4x24;
(* adds	x9, x9, x10                                #! PC = 0xaaaaaaab8600 *)
adds carry x9 x9 x10;
(* adcs	x30, x30, x11                              #! PC = 0xaaaaaaab8604 *)
adcs carry x30 x30 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8608 *)
adc x29 x29 0@uint64 carry;
(* mul	x10, x5, x23                                #! PC = 0xaaaaaaab860c *)
mull Hx5x23 x10 x5 x23;
(* umulh	x11, x5, x23                              #! PC = 0xaaaaaaab8610 *)
mov x11 Hx5x23;
(* adds	x9, x9, x10                                #! PC = 0xaaaaaaab8614 *)
adds carry x9 x9 x10;
(* adcs	x30, x30, x11                              #! PC = 0xaaaaaaab8618 *)
adcs carry x30 x30 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab861c *)
adc x29 x29 0@uint64 carry;
(* mul	x10, x2, x26                                #! PC = 0xaaaaaaab8620 *)
mull Hx2x26 x10 x2 x26;
(* umulh	x11, x2, x26                              #! PC = 0xaaaaaaab8624 *)
mov x11 Hx2x26;
(* adds	x9, x9, x10                                #! PC = 0xaaaaaaab8628 *)
adds carry x9 x9 x10;
(* adcs	x30, x30, x11                              #! PC = 0xaaaaaaab862c *)
adcs carry x30 x30 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8630 *)
adc x29 x29 0@uint64 carry;
(* mul	x12, x4, x25                                #! PC = 0xaaaaaaab8634 *)
mull Hx4x25 x12 x4 x25;
(* umulh	x13, x4, x25                              #! PC = 0xaaaaaaab8638 *)
mov x13 Hx4x25;
(* adds	x10, x12, x30                              #! PC = 0xaaaaaaab863c *)
adds carry x10 x12 x30;
(* adcs	x11, x13, x29                              #! PC = 0xaaaaaaab8640 *)
adcs carry x11 x13 x29 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab8644 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x12, x2, x27                                #! PC = 0xaaaaaaab8648 *)
mull Hx2x27 x12 x2 x27;
(* umulh	x13, x2, x27                              #! PC = 0xaaaaaaab864c *)
mov x13 Hx2x27;
(* adds	x10, x12, x10                              #! PC = 0xaaaaaaab8650 *)
adds carry x10 x12 x10;
(* adcs	x11, x13, x11                              #! PC = 0xaaaaaaab8654 *)
adcs carry x11 x13 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8658 *)
adc x29 x29 0@uint64 carry;
(* mul	x12, x3, x26                                #! PC = 0xaaaaaaab865c *)
mull Hx3x26 x12 x3 x26;
(* umulh	x13, x3, x26                              #! PC = 0xaaaaaaab8660 *)
mov x13 Hx3x26;
(* adds	x10, x12, x10                              #! PC = 0xaaaaaaab8664 *)
adds carry x10 x12 x10;
(* adcs	x11, x13, x11                              #! PC = 0xaaaaaaab8668 *)
adcs carry x11 x13 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab866c *)
adc x29 x29 0@uint64 carry;
(* mul	x12, x5, x24                                #! PC = 0xaaaaaaab8670 *)
mull Hx5x24 x12 x5 x24;
(* umulh	x13, x5, x24                              #! PC = 0xaaaaaaab8674 *)
mov x13 Hx5x24;
(* adds	x10, x12, x10                              #! PC = 0xaaaaaaab8678 *)
adds carry x10 x12 x10;
(* adcs	x11, x13, x11                              #! PC = 0xaaaaaaab867c *)
adcs carry x11 x13 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8680 *)
adc x29 x29 0@uint64 carry;
(* mul	x12, x2, x28                                #! PC = 0xaaaaaaab8684 *)
mull Hx2x28 x12 x2 x28;
(* umulh	x13, x2, x28                              #! PC = 0xaaaaaaab8688 *)
mov x13 Hx2x28;
(* adds	x11, x12, x11                              #! PC = 0xaaaaaaab868c *)
adds carry x11 x12 x11;
(* adcs	x29, x13, x29                              #! PC = 0xaaaaaaab8690 *)
adcs carry x29 x13 x29 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab8694 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x12, x3, x27                                #! PC = 0xaaaaaaab8698 *)
mull Hx3x27 x12 x3 x27;
(* umulh	x13, x3, x27                              #! PC = 0xaaaaaaab869c *)
mov x13 Hx3x27;
(* adds	x11, x12, x11                              #! PC = 0xaaaaaaab86a0 *)
adds carry x11 x12 x11;
(* adcs	x29, x13, x29                              #! PC = 0xaaaaaaab86a4 *)
adcs carry x29 x13 x29 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab86a8 *)
adc x30 x30 0@uint64 carry;
(* mul	x12, x4, x26                                #! PC = 0xaaaaaaab86ac *)
mull Hx4x26 x12 x4 x26;
(* umulh	x13, x4, x26                              #! PC = 0xaaaaaaab86b0 *)
mov x13 Hx4x26;
(* adds	x11, x12, x11                              #! PC = 0xaaaaaaab86b4 *)
adds carry x11 x12 x11;
(* adcs	x29, x13, x29                              #! PC = 0xaaaaaaab86b8 *)
adcs carry x29 x13 x29 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab86bc *)
adc x30 x30 0@uint64 carry;
(* mul	x12, x5, x25                                #! PC = 0xaaaaaaab86c0 *)
mull Hx5x25 x12 x5 x25;
(* umulh	x13, x5, x25                              #! PC = 0xaaaaaaab86c4 *)
mov x13 Hx5x25;
(* adds	x11, x12, x11                              #! PC = 0xaaaaaaab86c8 *)
adds carry x11 x12 x11;
(* adcs	x29, x13, x29                              #! PC = 0xaaaaaaab86cc *)
adcs carry x29 x13 x29 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab86d0 *)
adc x30 x30 0@uint64 carry;
(* mul	x14, x3, x28                                #! PC = 0xaaaaaaab86d4 *)
mull Hx3x28 x14 x3 x28;
(* umulh	x15, x3, x28                              #! PC = 0xaaaaaaab86d8 *)
mov x15 Hx3x28;
(* adds	x12, x14, x29                              #! PC = 0xaaaaaaab86dc *)
adds carry x12 x14 x29;
(* adcs	x30, x15, x30                              #! PC = 0xaaaaaaab86e0 *)
adcs carry x30 x15 x30 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab86e4 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x14, x4, x27                                #! PC = 0xaaaaaaab86e8 *)
mull Hx4x27 x14 x4 x27;
(* umulh	x15, x4, x27                              #! PC = 0xaaaaaaab86ec *)
mov x15 Hx4x27;
(* adds	x12, x14, x12                              #! PC = 0xaaaaaaab86f0 *)
adds carry x12 x14 x12;
(* adcs	x30, x15, x30                              #! PC = 0xaaaaaaab86f4 *)
adcs carry x30 x15 x30 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab86f8 *)
adc x29 x29 0@uint64 carry;
(* mul	x14, x5, x26                                #! PC = 0xaaaaaaab86fc *)
mull Hx5x26 x14 x5 x26;
(* umulh	x15, x5, x26                              #! PC = 0xaaaaaaab8700 *)
mov x15 Hx5x26;
(* adds	x12, x14, x12                              #! PC = 0xaaaaaaab8704 *)
adds carry x12 x14 x12;
(* adcs	x30, x15, x30                              #! PC = 0xaaaaaaab8708 *)
adcs carry x30 x15 x30 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab870c *)
adc x29 x29 0@uint64 carry;
(* mul	x14, x4, x28                                #! PC = 0xaaaaaaab8710 *)
mull Hx4x28 x14 x4 x28;
(* umulh	x15, x4, x28                              #! PC = 0xaaaaaaab8714 *)
mov x15 Hx4x28;
(* adds	x13, x14, x30                              #! PC = 0xaaaaaaab8718 *)
adds carry x13 x14 x30;
(* adcs	x29, x15, x29                              #! PC = 0xaaaaaaab871c *)
adcs carry x29 x15 x29 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab8720 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x14, x5, x27                                #! PC = 0xaaaaaaab8724 *)
mull Hx5x27 x14 x5 x27;
(* umulh	x15, x5, x27                              #! PC = 0xaaaaaaab8728 *)
mov x15 Hx5x27;
(* adds	x13, x14, x13                              #! PC = 0xaaaaaaab872c *)
adds carry x13 x14 x13;
(* adcs	x29, x15, x29                              #! PC = 0xaaaaaaab8730 *)
adcs carry x29 x15 x29 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab8734 *)
adc x30 x30 0@uint64 carry;
(* mul	x14, x5, x28                                #! PC = 0xaaaaaaab8738 *)
mull Hx5x28 x14 x5 x28;
(* umulh	x15, x5, x28                              #! PC = 0xaaaaaaab873c *)
mov x15 Hx5x28;
(* adds	x14, x14, x29                              #! PC = 0xaaaaaaab8740 *)
adds carry x14 x14 x29;
(* adc	x15, x15, x30                               #! PC = 0xaaaaaaab8744 *)
adc x15 x15 x30 carry;
(* ldp	x2, x3, [x0, #32]                           #! EA = L0xffffffffe4c8; Value = 0x46b8a64ccb1ad6f3; PC = 0xaaaaaaab8748 *)
mov x2 L0xffffffffe4c8;
mov x3 L0xffffffffe4d0;
(* ldp	x4, x5, [x0, #48]                           #! EA = L0xffffffffe4d8; Value = 0x333ba6bfb64d961a; PC = 0xaaaaaaab874c *)
mov x4 L0xffffffffe4d8;
mov x5 L0xffffffffe4e0;
(* ldp	x16, x17, [x0, #64]                         #! EA = L0xffffffffe4e8; Value = 0x7a971ca2ca8c20b2; PC = 0xaaaaaaab8750 *)
mov x16 L0xffffffffe4e8;
mov x17 L0xffffffffe4f0;
(* orr	x30, xzr, x15, lsr #17                      #! PC = 0xaaaaaaab8754 *)
split x30 Lx15 x15 17;
(* lsl	x15, x15, #47                               #! PC = 0xaaaaaaab8758 *)
shl x15 Lx15 47;
(* orr	x15, x15, x14, lsr #17                      #! PC = 0xaaaaaaab875c *)
split Hx14 Lx14 x14 17;
add x15 x15 Hx14;
(* lsl	x14, x14, #47                               #! PC = 0xaaaaaaab8760 *)
shl x14 Lx14 47;
(* orr	x14, x14, x13, lsr #17                      #! PC = 0xaaaaaaab8764 *)
split Hx13 Lx13 x13 17;
add x14 x14 Hx13;
(* lsl	x13, x13, #47                               #! PC = 0xaaaaaaab8768 *)
shl x13 Lx13 47;
(* orr	x13, x13, x12, lsr #17                      #! PC = 0xaaaaaaab876c *)
split Hx12 Lx12 x12 17;
add x13 x13 Hx12;
(* lsl	x12, x12, #47                               #! PC = 0xaaaaaaab8770 *)
shl x12 Lx12 47;
(* orr	x12, x12, x11, lsr #17                      #! PC = 0xaaaaaaab8774 *)
split Hx11 Lx11 x11 17;
add x12 x12 Hx11;
(* lsl	x11, x11, #47                               #! PC = 0xaaaaaaab8778 *)
shl x11 Lx11 47;
(* orr	x11, x11, x10, lsr #17                      #! PC = 0xaaaaaaab877c *)
split Hx10 Lx10 x10 17;
add x11 x11 Hx10;
(* lsl	x10, x10, #47                               #! PC = 0xaaaaaaab8780 *)
shl x10 Lx10 47;
(* orr	x10, x10, x9, lsr #17                       #! PC = 0xaaaaaaab8784 *)
split Hx9 Lx9 x9 17;
add x10 x10 Hx9;
(* lsl	x9, x9, #47                                 #! PC = 0xaaaaaaab8788 *)
shl x9 Lx9 47;
(* orr	x9, x9, x8, lsr #17                         #! PC = 0xaaaaaaab878c *)
split Hx8 Lx8 x8 17;
add x9 x9 Hx8;
(* lsl	x8, x8, #47                                 #! PC = 0xaaaaaaab8790 *)
shl x8 Lx8 47;
(* orr	x8, x8, x7, lsr #17                         #! PC = 0xaaaaaaab8794 *)
split Hx7 Lx7 x7 17;
add x8 x8 Hx7;
(* lsl	x7, x7, #47                                 #! PC = 0xaaaaaaab8798 *)
shl x7 Lx7 47;
(* orr	x7, x7, x6, lsr #17                         #! PC = 0xaaaaaaab879c *)
split Hx6 Lx6 x6 17;
add x7 x7 Hx6;
(* lsl	x6, x6, #47                                 #! PC = 0xaaaaaaab87a0 *)
shl x6 Lx6 47;
(* adds	x3, x3, x6                                 #! PC = 0xaaaaaaab87a4 *)
adds carry x3 x3 x6;
(* adcs	x4, x4, x7                                 #! PC = 0xaaaaaaab87a8 *)
adcs carry x4 x4 x7 carry;
(* ldp	x6, x7, [x0, #80]                           #! EA = L0xffffffffe4f8; Value = 0xf83287d35d4cb70f; PC = 0xaaaaaaab87ac *)
mov x6 L0xffffffffe4f8;
mov x7 L0xffffffffe500;
(* adcs	x5, x5, x8                                 #! PC = 0xaaaaaaab87b0 *)
adcs carry x5 x5 x8 carry;
(* adcs	x16, x16, x9                               #! PC = 0xaaaaaaab87b4 *)
adcs carry x16 x16 x9 carry;
(* ldp	x8, x9, [x0, #96]                           #! EA = L0xffffffffe508; Value = 0x5c34d81adc0aa572; PC = 0xaaaaaaab87b8 *)
mov x8 L0xffffffffe508;
mov x9 L0xffffffffe510;
(* adcs	x17, x17, x10                              #! PC = 0xaaaaaaab87bc *)
adcs carry x17 x17 x10 carry;
(* adcs	x19, x6, x11                               #! PC = 0xaaaaaaab87c0 *)
adcs carry x19 x6 x11 carry;
(* adcs	x20, x7, x12                               #! PC = 0xaaaaaaab87c4 *)
adcs carry x20 x7 x12 carry;
(* ldp	x6, x7, [x0, #112]                          #! EA = L0xffffffffe518; Value = 0xb5060bd73604b3df; PC = 0xaaaaaaab87c8 *)
mov x6 L0xffffffffe518;
mov x7 L0xffffffffe520;
(* adcs	x21, x8, x13                               #! PC = 0xaaaaaaab87cc *)
adcs carry x21 x8 x13 carry;
(* umulh	x8, x2, x24                               #! PC = 0xaaaaaaab87d0 *)
(* NOTE: merged with mul x7, x2, x24 *)
(* mov x8 Hx2x24; *)
(* adcs	x22, x9, x14                               #! PC = 0xaaaaaaab87d4 *)
adcs carry x22 x9 x14 carry;
(* umulh	x9, x2, x23                               #! PC = 0xaaaaaaab87d8 *)
(* NOTE: merged with mul x6, x2, x23 *)
(* mov x9 Hx2x23; *)
(* adcs	x13, x6, x15                               #! PC = 0xaaaaaaab87dc *)
adcs carry x13 x6 x15 carry;
(* mul	x6, x2, x23                                 #! PC = 0xaaaaaaab87e0 *)
mull x9 x6 x2 x23;
(* adcs	x14, x7, x30                               #! PC = 0xaaaaaaab87e4 *)
adcs carry x14 x7 x30 carry;
(* mul	x7, x2, x24                                 #! PC = 0xaaaaaaab87e8 *)
mull x8 x7 x2 x24;
(* adc	x15, xzr, xzr                               #! PC = 0xaaaaaaab87ec *)
adc x15 0@uint64 0@uint64 carry;
(* stp	x13, x14, [x0]                              #! EA = L0xffffffffe4a8; PC = 0xaaaaaaab87f0 *)
mov L0xffffffffe4a8 x13;
mov L0xffffffffe4b0 x14;
(* str	x15, [x0, #16]                              #! EA = L0xffffffffe4b8; PC = 0xaaaaaaab87f4 *)
mov L0xffffffffe4b8 x15;
(* mul	x10, x3, x23                                #! PC = 0xaaaaaaab87f8 *)
mull Hx3x23 x10 x3 x23;
(* umulh	x11, x3, x23                              #! PC = 0xaaaaaaab87fc *)
mov x11 Hx3x23;
(* adds	x7, x7, x9                                 #! PC = 0xaaaaaaab8800 *)
adds carry x7 x7 x9;
(* adc	x8, x8, xzr                                 #! PC = 0xaaaaaaab8804 *)
adc x8 x8 0@uint64 carry;
(* mul	x29, x3, x24                                #! PC = 0xaaaaaaab8808 *)
mull Hx3x24 x29 x3 x24;
(* umulh	x9, x3, x24                               #! PC = 0xaaaaaaab880c *)
mov x9 Hx3x24;
(* adds	x7, x7, x10                                #! PC = 0xaaaaaaab8810 *)
adds carry x7 x7 x10;
(* adcs	x8, x8, x11                                #! PC = 0xaaaaaaab8814 *)
adcs carry x8 x8 x11 carry;
(* adc	x9, x9, xzr                                 #! PC = 0xaaaaaaab8818 *)
adc x9 x9 0@uint64 carry;
(* mul	x10, x2, x25                                #! PC = 0xaaaaaaab881c *)
mull Hx2x25 x10 x2 x25;
(* umulh	x11, x2, x25                              #! PC = 0xaaaaaaab8820 *)
mov x11 Hx2x25;
(* adds	x8, x8, x29                                #! PC = 0xaaaaaaab8824 *)
adds carry x8 x8 x29;
(* adcs	x9, x9, x11                                #! PC = 0xaaaaaaab8828 *)
adcs carry x9 x9 x11 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab882c *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x29, x4, x23                                #! PC = 0xaaaaaaab8830 *)
mull Hx4x23 x29 x4 x23;
(* umulh	x11, x4, x23                              #! PC = 0xaaaaaaab8834 *)
mov x11 Hx4x23;
(* adds	x8, x8, x10                                #! PC = 0xaaaaaaab8838 *)
adds carry x8 x8 x10;
(* adcs	x9, x9, x11                                #! PC = 0xaaaaaaab883c *)
adcs carry x9 x9 x11 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab8840 *)
adc x30 x30 0@uint64 carry;
(* mul	x10, x3, x25                                #! PC = 0xaaaaaaab8844 *)
mull Hx3x25 x10 x3 x25;
(* umulh	x11, x3, x25                              #! PC = 0xaaaaaaab8848 *)
mov x11 Hx3x25;
(* adds	x8, x8, x29                                #! PC = 0xaaaaaaab884c *)
adds carry x8 x8 x29;
(* adcs	x9, x9, x10                                #! PC = 0xaaaaaaab8850 *)
adcs carry x9 x9 x10 carry;
(* adcs	x30, x30, x11                              #! PC = 0xaaaaaaab8854 *)
adcs carry x30 x30 x11 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab8858 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x10, x4, x24                                #! PC = 0xaaaaaaab885c *)
mull Hx4x24 x10 x4 x24;
(* umulh	x11, x4, x24                              #! PC = 0xaaaaaaab8860 *)
mov x11 Hx4x24;
(* adds	x9, x9, x10                                #! PC = 0xaaaaaaab8864 *)
adds carry x9 x9 x10;
(* adcs	x30, x30, x11                              #! PC = 0xaaaaaaab8868 *)
adcs carry x30 x30 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab886c *)
adc x29 x29 0@uint64 carry;
(* mul	x10, x5, x23                                #! PC = 0xaaaaaaab8870 *)
mull Hx5x23 x10 x5 x23;
(* umulh	x11, x5, x23                              #! PC = 0xaaaaaaab8874 *)
mov x11 Hx5x23;
(* adds	x9, x9, x10                                #! PC = 0xaaaaaaab8878 *)
adds carry x9 x9 x10;
(* adcs	x30, x30, x11                              #! PC = 0xaaaaaaab887c *)
adcs carry x30 x30 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8880 *)
adc x29 x29 0@uint64 carry;
(* mul	x10, x2, x26                                #! PC = 0xaaaaaaab8884 *)
mull Hx2x26 x10 x2 x26;
(* umulh	x11, x2, x26                              #! PC = 0xaaaaaaab8888 *)
mov x11 Hx2x26;
(* adds	x9, x9, x10                                #! PC = 0xaaaaaaab888c *)
adds carry x9 x9 x10;
(* adcs	x30, x30, x11                              #! PC = 0xaaaaaaab8890 *)
adcs carry x30 x30 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8894 *)
adc x29 x29 0@uint64 carry;
(* mul	x12, x4, x25                                #! PC = 0xaaaaaaab8898 *)
mull Hx4x25 x12 x4 x25;
(* umulh	x13, x4, x25                              #! PC = 0xaaaaaaab889c *)
mov x13 Hx4x25;
(* adds	x10, x12, x30                              #! PC = 0xaaaaaaab88a0 *)
adds carry x10 x12 x30;
(* adcs	x11, x13, x29                              #! PC = 0xaaaaaaab88a4 *)
adcs carry x11 x13 x29 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab88a8 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x12, x2, x27                                #! PC = 0xaaaaaaab88ac *)
mull Hx2x27 x12 x2 x27;
(* umulh	x13, x2, x27                              #! PC = 0xaaaaaaab88b0 *)
mov x13 Hx2x27;
(* adds	x10, x12, x10                              #! PC = 0xaaaaaaab88b4 *)
adds carry x10 x12 x10;
(* adcs	x11, x13, x11                              #! PC = 0xaaaaaaab88b8 *)
adcs carry x11 x13 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab88bc *)
adc x29 x29 0@uint64 carry;
(* mul	x12, x3, x26                                #! PC = 0xaaaaaaab88c0 *)
mull Hx3x26 x12 x3 x26;
(* umulh	x13, x3, x26                              #! PC = 0xaaaaaaab88c4 *)
mov x13 Hx3x26;
(* adds	x10, x12, x10                              #! PC = 0xaaaaaaab88c8 *)
adds carry x10 x12 x10;
(* adcs	x11, x13, x11                              #! PC = 0xaaaaaaab88cc *)
adcs carry x11 x13 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab88d0 *)
adc x29 x29 0@uint64 carry;
(* mul	x12, x5, x24                                #! PC = 0xaaaaaaab88d4 *)
mull Hx5x24 x12 x5 x24;
(* umulh	x13, x5, x24                              #! PC = 0xaaaaaaab88d8 *)
mov x13 Hx5x24;
(* adds	x10, x12, x10                              #! PC = 0xaaaaaaab88dc *)
adds carry x10 x12 x10;
(* adcs	x11, x13, x11                              #! PC = 0xaaaaaaab88e0 *)
adcs carry x11 x13 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab88e4 *)
adc x29 x29 0@uint64 carry;
(* mul	x12, x2, x28                                #! PC = 0xaaaaaaab88e8 *)
mull Hx2x28 x12 x2 x28;
(* umulh	x13, x2, x28                              #! PC = 0xaaaaaaab88ec *)
mov x13 Hx2x28;
(* adds	x11, x12, x11                              #! PC = 0xaaaaaaab88f0 *)
adds carry x11 x12 x11;
(* adcs	x29, x13, x29                              #! PC = 0xaaaaaaab88f4 *)
adcs carry x29 x13 x29 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab88f8 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x12, x3, x27                                #! PC = 0xaaaaaaab88fc *)
mull Hx3x27 x12 x3 x27;
(* umulh	x13, x3, x27                              #! PC = 0xaaaaaaab8900 *)
mov x13 Hx3x27;
(* adds	x11, x12, x11                              #! PC = 0xaaaaaaab8904 *)
adds carry x11 x12 x11;
(* adcs	x29, x13, x29                              #! PC = 0xaaaaaaab8908 *)
adcs carry x29 x13 x29 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab890c *)
adc x30 x30 0@uint64 carry;
(* mul	x12, x4, x26                                #! PC = 0xaaaaaaab8910 *)
mull Hx4x26 x12 x4 x26;
(* umulh	x13, x4, x26                              #! PC = 0xaaaaaaab8914 *)
mov x13 Hx4x26;
(* adds	x11, x12, x11                              #! PC = 0xaaaaaaab8918 *)
adds carry x11 x12 x11;
(* adcs	x29, x13, x29                              #! PC = 0xaaaaaaab891c *)
adcs carry x29 x13 x29 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab8920 *)
adc x30 x30 0@uint64 carry;
(* mul	x12, x5, x25                                #! PC = 0xaaaaaaab8924 *)
mull Hx5x25 x12 x5 x25;
(* umulh	x13, x5, x25                              #! PC = 0xaaaaaaab8928 *)
mov x13 Hx5x25;
(* adds	x11, x12, x11                              #! PC = 0xaaaaaaab892c *)
adds carry x11 x12 x11;
(* adcs	x29, x13, x29                              #! PC = 0xaaaaaaab8930 *)
adcs carry x29 x13 x29 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab8934 *)
adc x30 x30 0@uint64 carry;
(* mul	x14, x3, x28                                #! PC = 0xaaaaaaab8938 *)
mull Hx3x28 x14 x3 x28;
(* umulh	x15, x3, x28                              #! PC = 0xaaaaaaab893c *)
mov x15 Hx3x28;
(* adds	x12, x14, x29                              #! PC = 0xaaaaaaab8940 *)
adds carry x12 x14 x29;
(* adcs	x30, x15, x30                              #! PC = 0xaaaaaaab8944 *)
adcs carry x30 x15 x30 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab8948 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x14, x4, x27                                #! PC = 0xaaaaaaab894c *)
mull Hx4x27 x14 x4 x27;
(* umulh	x15, x4, x27                              #! PC = 0xaaaaaaab8950 *)
mov x15 Hx4x27;
(* adds	x12, x14, x12                              #! PC = 0xaaaaaaab8954 *)
adds carry x12 x14 x12;
(* adcs	x30, x15, x30                              #! PC = 0xaaaaaaab8958 *)
adcs carry x30 x15 x30 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab895c *)
adc x29 x29 0@uint64 carry;
(* mul	x14, x5, x26                                #! PC = 0xaaaaaaab8960 *)
mull Hx5x26 x14 x5 x26;
(* umulh	x15, x5, x26                              #! PC = 0xaaaaaaab8964 *)
mov x15 Hx5x26;
(* adds	x12, x14, x12                              #! PC = 0xaaaaaaab8968 *)
adds carry x12 x14 x12;
(* adcs	x30, x15, x30                              #! PC = 0xaaaaaaab896c *)
adcs carry x30 x15 x30 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8970 *)
adc x29 x29 0@uint64 carry;
(* mul	x14, x4, x28                                #! PC = 0xaaaaaaab8974 *)
mull Hx4x28 x14 x4 x28;
(* umulh	x15, x4, x28                              #! PC = 0xaaaaaaab8978 *)
mov x15 Hx4x28;
(* adds	x13, x14, x30                              #! PC = 0xaaaaaaab897c *)
adds carry x13 x14 x30;
(* adcs	x29, x15, x29                              #! PC = 0xaaaaaaab8980 *)
adcs carry x29 x15 x29 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab8984 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x14, x5, x27                                #! PC = 0xaaaaaaab8988 *)
mull Hx5x27 x14 x5 x27;
(* umulh	x15, x5, x27                              #! PC = 0xaaaaaaab898c *)
mov x15 Hx5x27;
(* adds	x13, x14, x13                              #! PC = 0xaaaaaaab8990 *)
adds carry x13 x14 x13;
(* adcs	x29, x15, x29                              #! PC = 0xaaaaaaab8994 *)
adcs carry x29 x15 x29 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab8998 *)
adc x30 x30 0@uint64 carry;
(* mul	x14, x5, x28                                #! PC = 0xaaaaaaab899c *)
mull Hx5x28 x14 x5 x28;
(* umulh	x15, x5, x28                              #! PC = 0xaaaaaaab89a0 *)
mov x15 Hx5x28;
(* adds	x14, x14, x29                              #! PC = 0xaaaaaaab89a4 *)
adds carry x14 x14 x29;
(* adc	x15, x15, x30                               #! PC = 0xaaaaaaab89a8 *)
adc x15 x15 x30 carry;
(* orr	x30, xzr, x15, lsr #17                      #! PC = 0xaaaaaaab89ac *)
split x30 Lx15 x15 17;
(* lsl	x15, x15, #47                               #! PC = 0xaaaaaaab89b0 *)
shl x15 Lx15 47;
(* orr	x15, x15, x14, lsr #17                      #! PC = 0xaaaaaaab89b4 *)
split Hx14 Lx14 x14 17;
add x15 x15 Hx14;
(* lsl	x14, x14, #47                               #! PC = 0xaaaaaaab89b8 *)
shl x14 Lx14 47;
(* orr	x14, x14, x13, lsr #17                      #! PC = 0xaaaaaaab89bc *)
split Hx13 Lx13 x13 17;
add x14 x14 Hx13;
(* lsl	x13, x13, #47                               #! PC = 0xaaaaaaab89c0 *)
shl x13 Lx13 47;
(* orr	x13, x13, x12, lsr #17                      #! PC = 0xaaaaaaab89c4 *)
split Hx12 Lx12 x12 17;
add x13 x13 Hx12;
(* lsl	x12, x12, #47                               #! PC = 0xaaaaaaab89c8 *)
shl x12 Lx12 47;
(* orr	x12, x12, x11, lsr #17                      #! PC = 0xaaaaaaab89cc *)
split Hx11 Lx11 x11 17;
add x12 x12 Hx11;
(* lsl	x11, x11, #47                               #! PC = 0xaaaaaaab89d0 *)
shl x11 Lx11 47;
(* orr	x11, x11, x10, lsr #17                      #! PC = 0xaaaaaaab89d4 *)
split Hx10 Lx10 x10 17;
add x11 x11 Hx10;
(* lsl	x10, x10, #47                               #! PC = 0xaaaaaaab89d8 *)
shl x10 Lx10 47;
(* orr	x10, x10, x9, lsr #17                       #! PC = 0xaaaaaaab89dc *)
split Hx9 Lx9 x9 17;
add x10 x10 Hx9;
(* lsl	x9, x9, #47                                 #! PC = 0xaaaaaaab89e0 *)
shl x9 Lx9 47;
(* orr	x9, x9, x8, lsr #17                         #! PC = 0xaaaaaaab89e4 *)
split Hx8 Lx8 x8 17;
add x9 x9 Hx8;
(* lsl	x8, x8, #47                                 #! PC = 0xaaaaaaab89e8 *)
shl x8 Lx8 47;
(* orr	x8, x8, x7, lsr #17                         #! PC = 0xaaaaaaab89ec *)
split Hx7 Lx7 x7 17;
add x8 x8 Hx7;
(* lsl	x7, x7, #47                                 #! PC = 0xaaaaaaab89f0 *)
shl x7 Lx7 47;
(* orr	x7, x7, x6, lsr #17                         #! PC = 0xaaaaaaab89f4 *)
split Hx6 Lx6 x6 17;
add x7 x7 Hx6;
(* lsl	x6, x6, #47                                 #! PC = 0xaaaaaaab89f8 *)
shl x6 Lx6 47;
(* ldp	x2, x3, [x0]                                #! EA = L0xffffffffe4a8; Value = 0x0cfd773826a5d044; PC = 0xaaaaaaab89fc *)
mov x2 L0xffffffffe4a8;
mov x3 L0xffffffffe4b0;
(* ldp	x4, x5, [x0, #128]                          #! EA = L0xffffffffe528; Value = 0xbad69959f378e099; PC = 0xaaaaaaab8a00 *)
mov x4 L0xffffffffe528;
mov x5 L0xffffffffe530;
(* adds	x17, x17, x6                               #! PC = 0xaaaaaaab8a04 *)
adds carry x17 x17 x6;
(* adcs	x19, x19, x7                               #! PC = 0xaaaaaaab8a08 *)
adcs carry x19 x19 x7 carry;
(* adcs	x20, x20, x8                               #! PC = 0xaaaaaaab8a0c *)
adcs carry x20 x20 x8 carry;
(* adcs	x21, x21, x9                               #! PC = 0xaaaaaaab8a10 *)
adcs carry x21 x21 x9 carry;
(* ldp	x6, x7, [x0, #144]                          #! EA = L0xffffffffe538; Value = 0xd027954e4df0eeae; PC = 0xaaaaaaab8a14 *)
mov x6 L0xffffffffe538;
mov x7 L0xffffffffe540;
(* umulh	x8, x16, x24                              #! PC = 0xaaaaaaab8a18 *)
(* NOTE: merged with mul x7, x16, x24 *)
(* mov x8 Hx16x24; *)
(* adcs	x22, x22, x10                              #! PC = 0xaaaaaaab8a1c *)
adcs carry x22 x22 x10 carry;
(* adcs	x2, x2, x11                                #! PC = 0xaaaaaaab8a20 *)
adcs carry x2 x2 x11 carry;
(* adcs	x3, x3, x12                                #! PC = 0xaaaaaaab8a24 *)
adcs carry x3 x3 x12 carry;
(* umulh	x9, x16, x23                              #! PC = 0xaaaaaaab8a28 *)
(* NOTE: merged with mul x6, x16, x23 *)
(* mov x9 Hx16x23; *)
(* adcs	x13, x13, x4                               #! PC = 0xaaaaaaab8a2c *)
adcs carry x13 x13 x4 carry;
(* adcs	x14, x14, x5                               #! PC = 0xaaaaaaab8a30 *)
adcs carry x14 x14 x5 carry;
(* adcs	x4, x15, x6                                #! PC = 0xaaaaaaab8a34 *)
adcs carry x4 x15 x6 carry;
(* mul	x6, x16, x23                                #! PC = 0xaaaaaaab8a38 *)
mull x9 x6 x16 x23;
(* adcs	x5, x30, x7                                #! PC = 0xaaaaaaab8a3c *)
adcs carry x5 x30 x7 carry;
(* mul	x7, x16, x24                                #! PC = 0xaaaaaaab8a40 *)
mull x8 x7 x16 x24;
(* adc	x10, xzr, xzr                               #! PC = 0xaaaaaaab8a44 *)
adc x10 0@uint64 0@uint64 carry;
(* stp	x13, x14, [x0]                              #! EA = L0xffffffffe4a8; PC = 0xaaaaaaab8a48 *)
mov L0xffffffffe4a8 x13;
mov L0xffffffffe4b0 x14;
(* str	x10, [x0, #32]                              #! EA = L0xffffffffe4c8; PC = 0xaaaaaaab8a4c *)
mov L0xffffffffe4c8 x10;
(* mul	x10, x17, x23                               #! PC = 0xaaaaaaab8a50 *)
mull Hx17x23 x10 x17 x23;
(* umulh	x11, x17, x23                             #! PC = 0xaaaaaaab8a54 *)
mov x11 Hx17x23;
(* adds	x7, x7, x9                                 #! PC = 0xaaaaaaab8a58 *)
adds carry x7 x7 x9;
(* adc	x8, x8, xzr                                 #! PC = 0xaaaaaaab8a5c *)
adc x8 x8 0@uint64 carry;
(* mul	x29, x17, x24                               #! PC = 0xaaaaaaab8a60 *)
mull Hx17x24 x29 x17 x24;
(* umulh	x9, x17, x24                              #! PC = 0xaaaaaaab8a64 *)
mov x9 Hx17x24;
(* adds	x7, x7, x10                                #! PC = 0xaaaaaaab8a68 *)
adds carry x7 x7 x10;
(* adcs	x8, x8, x11                                #! PC = 0xaaaaaaab8a6c *)
adcs carry x8 x8 x11 carry;
(* adc	x9, x9, xzr                                 #! PC = 0xaaaaaaab8a70 *)
adc x9 x9 0@uint64 carry;
(* mul	x10, x16, x25                               #! PC = 0xaaaaaaab8a74 *)
mull Hx16x25 x10 x16 x25;
(* umulh	x11, x16, x25                             #! PC = 0xaaaaaaab8a78 *)
mov x11 Hx16x25;
(* adds	x8, x8, x29                                #! PC = 0xaaaaaaab8a7c *)
adds carry x8 x8 x29;
(* adcs	x9, x9, x11                                #! PC = 0xaaaaaaab8a80 *)
adcs carry x9 x9 x11 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab8a84 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x29, x19, x23                               #! PC = 0xaaaaaaab8a88 *)
mull Hx19x23 x29 x19 x23;
(* umulh	x11, x19, x23                             #! PC = 0xaaaaaaab8a8c *)
mov x11 Hx19x23;
(* adds	x8, x8, x10                                #! PC = 0xaaaaaaab8a90 *)
adds carry x8 x8 x10;
(* adcs	x9, x9, x11                                #! PC = 0xaaaaaaab8a94 *)
adcs carry x9 x9 x11 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab8a98 *)
adc x30 x30 0@uint64 carry;
(* mul	x10, x17, x25                               #! PC = 0xaaaaaaab8a9c *)
mull Hx17x25 x10 x17 x25;
(* umulh	x11, x17, x25                             #! PC = 0xaaaaaaab8aa0 *)
mov x11 Hx17x25;
(* adds	x8, x8, x29                                #! PC = 0xaaaaaaab8aa4 *)
adds carry x8 x8 x29;
(* adcs	x9, x9, x10                                #! PC = 0xaaaaaaab8aa8 *)
adcs carry x9 x9 x10 carry;
(* adcs	x30, x30, x11                              #! PC = 0xaaaaaaab8aac *)
adcs carry x30 x30 x11 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab8ab0 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x10, x19, x24                               #! PC = 0xaaaaaaab8ab4 *)
mull Hx19x24 x10 x19 x24;
(* umulh	x11, x19, x24                             #! PC = 0xaaaaaaab8ab8 *)
mov x11 Hx19x24;
(* adds	x9, x9, x10                                #! PC = 0xaaaaaaab8abc *)
adds carry x9 x9 x10;
(* adcs	x30, x30, x11                              #! PC = 0xaaaaaaab8ac0 *)
adcs carry x30 x30 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8ac4 *)
adc x29 x29 0@uint64 carry;
(* mul	x10, x20, x23                               #! PC = 0xaaaaaaab8ac8 *)
mull Hx20x23 x10 x20 x23;
(* umulh	x11, x20, x23                             #! PC = 0xaaaaaaab8acc *)
mov x11 Hx20x23;
(* adds	x9, x9, x10                                #! PC = 0xaaaaaaab8ad0 *)
adds carry x9 x9 x10;
(* adcs	x30, x30, x11                              #! PC = 0xaaaaaaab8ad4 *)
adcs carry x30 x30 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8ad8 *)
adc x29 x29 0@uint64 carry;
(* mul	x10, x16, x26                               #! PC = 0xaaaaaaab8adc *)
mull Hx16x26 x10 x16 x26;
(* umulh	x11, x16, x26                             #! PC = 0xaaaaaaab8ae0 *)
mov x11 Hx16x26;
(* adds	x9, x9, x10                                #! PC = 0xaaaaaaab8ae4 *)
adds carry x9 x9 x10;
(* adcs	x30, x30, x11                              #! PC = 0xaaaaaaab8ae8 *)
adcs carry x30 x30 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8aec *)
adc x29 x29 0@uint64 carry;
(* mul	x12, x19, x25                               #! PC = 0xaaaaaaab8af0 *)
mull Hx19x25 x12 x19 x25;
(* umulh	x13, x19, x25                             #! PC = 0xaaaaaaab8af4 *)
mov x13 Hx19x25;
(* adds	x10, x12, x30                              #! PC = 0xaaaaaaab8af8 *)
adds carry x10 x12 x30;
(* adcs	x11, x13, x29                              #! PC = 0xaaaaaaab8afc *)
adcs carry x11 x13 x29 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab8b00 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x12, x16, x27                               #! PC = 0xaaaaaaab8b04 *)
mull Hx16x27 x12 x16 x27;
(* umulh	x13, x16, x27                             #! PC = 0xaaaaaaab8b08 *)
mov x13 Hx16x27;
(* adds	x10, x12, x10                              #! PC = 0xaaaaaaab8b0c *)
adds carry x10 x12 x10;
(* adcs	x11, x13, x11                              #! PC = 0xaaaaaaab8b10 *)
adcs carry x11 x13 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8b14 *)
adc x29 x29 0@uint64 carry;
(* mul	x12, x17, x26                               #! PC = 0xaaaaaaab8b18 *)
mull Hx17x26 x12 x17 x26;
(* umulh	x13, x17, x26                             #! PC = 0xaaaaaaab8b1c *)
mov x13 Hx17x26;
(* adds	x10, x12, x10                              #! PC = 0xaaaaaaab8b20 *)
adds carry x10 x12 x10;
(* adcs	x11, x13, x11                              #! PC = 0xaaaaaaab8b24 *)
adcs carry x11 x13 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8b28 *)
adc x29 x29 0@uint64 carry;
(* mul	x12, x20, x24                               #! PC = 0xaaaaaaab8b2c *)
mull Hx20x24 x12 x20 x24;
(* umulh	x13, x20, x24                             #! PC = 0xaaaaaaab8b30 *)
mov x13 Hx20x24;
(* adds	x10, x12, x10                              #! PC = 0xaaaaaaab8b34 *)
adds carry x10 x12 x10;
(* adcs	x11, x13, x11                              #! PC = 0xaaaaaaab8b38 *)
adcs carry x11 x13 x11 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8b3c *)
adc x29 x29 0@uint64 carry;
(* mul	x12, x16, x28                               #! PC = 0xaaaaaaab8b40 *)
mull Hx16x28 x12 x16 x28;
(* umulh	x13, x16, x28                             #! PC = 0xaaaaaaab8b44 *)
mov x13 Hx16x28;
(* adds	x11, x12, x11                              #! PC = 0xaaaaaaab8b48 *)
adds carry x11 x12 x11;
(* adcs	x29, x13, x29                              #! PC = 0xaaaaaaab8b4c *)
adcs carry x29 x13 x29 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab8b50 *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x12, x17, x27                               #! PC = 0xaaaaaaab8b54 *)
mull Hx17x27 x12 x17 x27;
(* umulh	x13, x17, x27                             #! PC = 0xaaaaaaab8b58 *)
mov x13 Hx17x27;
(* adds	x11, x12, x11                              #! PC = 0xaaaaaaab8b5c *)
adds carry x11 x12 x11;
(* adcs	x29, x13, x29                              #! PC = 0xaaaaaaab8b60 *)
adcs carry x29 x13 x29 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab8b64 *)
adc x30 x30 0@uint64 carry;
(* mul	x12, x19, x26                               #! PC = 0xaaaaaaab8b68 *)
mull Hx19x26 x12 x19 x26;
(* umulh	x13, x19, x26                             #! PC = 0xaaaaaaab8b6c *)
mov x13 Hx19x26;
(* adds	x11, x12, x11                              #! PC = 0xaaaaaaab8b70 *)
adds carry x11 x12 x11;
(* adcs	x29, x13, x29                              #! PC = 0xaaaaaaab8b74 *)
adcs carry x29 x13 x29 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab8b78 *)
adc x30 x30 0@uint64 carry;
(* mul	x12, x20, x25                               #! PC = 0xaaaaaaab8b7c *)
mull Hx20x25 x12 x20 x25;
(* umulh	x13, x20, x25                             #! PC = 0xaaaaaaab8b80 *)
mov x13 Hx20x25;
(* adds	x11, x12, x11                              #! PC = 0xaaaaaaab8b84 *)
adds carry x11 x12 x11;
(* adcs	x29, x13, x29                              #! PC = 0xaaaaaaab8b88 *)
adcs carry x29 x13 x29 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab8b8c *)
adc x30 x30 0@uint64 carry;
(* mul	x14, x17, x28                               #! PC = 0xaaaaaaab8b90 *)
mull Hx17x28 x14 x17 x28;
(* umulh	x15, x17, x28                             #! PC = 0xaaaaaaab8b94 *)
mov x15 Hx17x28;
(* adds	x12, x14, x29                              #! PC = 0xaaaaaaab8b98 *)
adds carry x12 x14 x29;
(* adcs	x30, x15, x30                              #! PC = 0xaaaaaaab8b9c *)
adcs carry x30 x15 x30 carry;
(* adc	x29, xzr, xzr                               #! PC = 0xaaaaaaab8ba0 *)
adc x29 0@uint64 0@uint64 carry;
(* mul	x14, x19, x27                               #! PC = 0xaaaaaaab8ba4 *)
mull Hx19x27 x14 x19 x27;
(* umulh	x15, x19, x27                             #! PC = 0xaaaaaaab8ba8 *)
mov x15 Hx19x27;
(* adds	x12, x14, x12                              #! PC = 0xaaaaaaab8bac *)
adds carry x12 x14 x12;
(* adcs	x30, x15, x30                              #! PC = 0xaaaaaaab8bb0 *)
adcs carry x30 x15 x30 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8bb4 *)
adc x29 x29 0@uint64 carry;
(* mul	x14, x20, x26                               #! PC = 0xaaaaaaab8bb8 *)
mull Hx20x26 x14 x20 x26;
(* umulh	x15, x20, x26                             #! PC = 0xaaaaaaab8bbc *)
mov x15 Hx20x26;
(* adds	x12, x14, x12                              #! PC = 0xaaaaaaab8bc0 *)
adds carry x12 x14 x12;
(* adcs	x30, x15, x30                              #! PC = 0xaaaaaaab8bc4 *)
adcs carry x30 x15 x30 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab8bc8 *)
adc x29 x29 0@uint64 carry;
(* mul	x14, x19, x28                               #! PC = 0xaaaaaaab8bcc *)
mull Hx19x28 x14 x19 x28;
(* umulh	x15, x19, x28                             #! PC = 0xaaaaaaab8bd0 *)
mov x15 Hx19x28;
(* adds	x13, x14, x30                              #! PC = 0xaaaaaaab8bd4 *)
adds carry x13 x14 x30;
(* adcs	x29, x15, x29                              #! PC = 0xaaaaaaab8bd8 *)
adcs carry x29 x15 x29 carry;
(* adc	x30, xzr, xzr                               #! PC = 0xaaaaaaab8bdc *)
adc x30 0@uint64 0@uint64 carry;
(* mul	x14, x20, x27                               #! PC = 0xaaaaaaab8be0 *)
mull Hx20x27 x14 x20 x27;
(* umulh	x15, x20, x27                             #! PC = 0xaaaaaaab8be4 *)
mov x15 Hx20x27;
(* adds	x13, x14, x13                              #! PC = 0xaaaaaaab8be8 *)
adds carry x13 x14 x13;
(* adcs	x29, x15, x29                              #! PC = 0xaaaaaaab8bec *)
adcs carry x29 x15 x29 carry;
(* adc	x30, x30, xzr                               #! PC = 0xaaaaaaab8bf0 *)
adc x30 x30 0@uint64 carry;
(* mul	x14, x20, x28                               #! PC = 0xaaaaaaab8bf4 *)
mull Hx20x28 x14 x20 x28;
(* umulh	x15, x20, x28                             #! PC = 0xaaaaaaab8bf8 *)
mov x15 Hx20x28;
(* adds	x14, x14, x29                              #! PC = 0xaaaaaaab8bfc *)
adds carry x14 x14 x29;
(* adc	x15, x15, x30                               #! PC = 0xaaaaaaab8c00 *)
adc x15 x15 x30 carry;
(* orr	x30, xzr, x15, lsr #17                      #! PC = 0xaaaaaaab8c04 *)
split x30 Lx15 x15 17;
(* lsl	x15, x15, #47                               #! PC = 0xaaaaaaab8c08 *)
shl x15 Lx15 47;
(* orr	x15, x15, x14, lsr #17                      #! PC = 0xaaaaaaab8c0c *)
split Hx14 Lx14 x14 17;
add x15 x15 Hx14;
(* lsl	x14, x14, #47                               #! PC = 0xaaaaaaab8c10 *)
shl x14 Lx14 47;
(* orr	x14, x14, x13, lsr #17                      #! PC = 0xaaaaaaab8c14 *)
split Hx13 Lx13 x13 17;
add x14 x14 Hx13;
(* lsl	x13, x13, #47                               #! PC = 0xaaaaaaab8c18 *)
shl x13 Lx13 47;
(* orr	x13, x13, x12, lsr #17                      #! PC = 0xaaaaaaab8c1c *)
split Hx12 Lx12 x12 17;
add x13 x13 Hx12;
(* lsl	x12, x12, #47                               #! PC = 0xaaaaaaab8c20 *)
shl x12 Lx12 47;
(* orr	x12, x12, x11, lsr #17                      #! PC = 0xaaaaaaab8c24 *)
split Hx11 Lx11 x11 17;
add x12 x12 Hx11;
(* lsl	x11, x11, #47                               #! PC = 0xaaaaaaab8c28 *)
shl x11 Lx11 47;
(* orr	x11, x11, x10, lsr #17                      #! PC = 0xaaaaaaab8c2c *)
split Hx10 Lx10 x10 17;
add x11 x11 Hx10;
(* lsl	x10, x10, #47                               #! PC = 0xaaaaaaab8c30 *)
shl x10 Lx10 47;
(* orr	x10, x10, x9, lsr #17                       #! PC = 0xaaaaaaab8c34 *)
split Hx9 Lx9 x9 17;
add x10 x10 Hx9;
(* lsl	x9, x9, #47                                 #! PC = 0xaaaaaaab8c38 *)
shl x9 Lx9 47;
(* orr	x9, x9, x8, lsr #17                         #! PC = 0xaaaaaaab8c3c *)
split Hx8 Lx8 x8 17;
add x9 x9 Hx8;
(* lsl	x8, x8, #47                                 #! PC = 0xaaaaaaab8c40 *)
shl x8 Lx8 47;
(* orr	x8, x8, x7, lsr #17                         #! PC = 0xaaaaaaab8c44 *)
split Hx7 Lx7 x7 17;
add x8 x8 Hx7;
(* lsl	x7, x7, #47                                 #! PC = 0xaaaaaaab8c48 *)
shl x7 Lx7 47;
(* orr	x7, x7, x6, lsr #17                         #! PC = 0xaaaaaaab8c4c *)
split Hx6 Lx6 x6 17;
add x7 x7 Hx6;
(* lsl	x6, x6, #47                                 #! PC = 0xaaaaaaab8c50 *)
shl x6 Lx6 47;
(* ldp	x16, x17, [x0]                              #! EA = L0xffffffffe4a8; Value = 0x5e3fb76332f1a267; PC = 0xaaaaaaab8c54 *)
mov x16 L0xffffffffe4a8;
mov x17 L0xffffffffe4b0;
(* adds	x22, x22, x6                               #! PC = 0xaaaaaaab8c58 *)
adds carry x22 x22 x6;
(* adcs	x2, x2, x7                                 #! PC = 0xaaaaaaab8c5c *)
adcs carry x2 x2 x7 carry;
(* adcs	x3, x3, x8                                 #! PC = 0xaaaaaaab8c60 *)
adcs carry x3 x3 x8 carry;
(* adcs	x16, x16, x9                               #! PC = 0xaaaaaaab8c64 *)
adcs carry x16 x16 x9 carry;
(* ldp	x6, x7, [x0, #160]                          #! EA = L0xffffffffe548; Value = 0xf75db293d351c29e; PC = 0xaaaaaaab8c68 *)
mov x6 L0xffffffffe548;
mov x7 L0xffffffffe550;
(* ldp	x8, x9, [x0, #176]                          #! EA = L0xffffffffe558; Value = 0xd6a8c0fe766cf565; PC = 0xaaaaaaab8c6c *)
mov x8 L0xffffffffe558;
mov x9 L0xffffffffe560;
(* adcs	x17, x17, x10                              #! PC = 0xaaaaaaab8c70 *)
adcs carry x17 x17 x10 carry;
(* adcs	x4, x4, x11                                #! PC = 0xaaaaaaab8c74 *)
adcs carry x4 x4 x11 carry;
(* adcs	x5, x5, x12                                #! PC = 0xaaaaaaab8c78 *)
adcs carry x5 x5 x12 carry;
(* adcs	x6, x6, x13                                #! PC = 0xaaaaaaab8c7c *)
adcs carry x6 x6 x13 carry;
(* adcs	x7, x7, x14                                #! PC = 0xaaaaaaab8c80 *)
adcs carry x7 x7 x14 carry;
(* adcs	x8, x8, x15                                #! PC = 0xaaaaaaab8c84 *)
adcs carry x8 x8 x15 carry;
(* adc	x9, x9, x30                                 #! PC = 0xaaaaaaab8c88 *)
adc x9 x9 x30 carry;
(* ldr	x29, [x0, #16]                              #! EA = L0xffffffffe4b8; Value = 0x0000000000000000; PC = 0xaaaaaaab8c8c *)
mov x29 L0xffffffffe4b8;
(* ldr	x30, [x0, #32]                              #! EA = L0xffffffffe4c8; Value = 0x0000000000000000; PC = 0xaaaaaaab8c90 *)
mov x30 L0xffffffffe4c8;
(* stp	x21, x22, [x1]                              #! EA = L0xffffffffe958; PC = 0xaaaaaaab8c94 *)
mov L0xffffffffe958 x21;
mov L0xffffffffe960 x22;
(* adds	x16, x16, x29                              #! PC = 0xaaaaaaab8c98 *)
adds carry x16 x16 x29;
(* adcs	x17, x17, xzr                              #! PC = 0xaaaaaaab8c9c *)
adcs carry x17 x17 0@uint64 carry;
(* adcs	x4, x4, xzr                                #! PC = 0xaaaaaaab8ca0 *)
adcs carry x4 x4 0@uint64 carry;
(* adcs	x5, x5, xzr                                #! PC = 0xaaaaaaab8ca4 *)
adcs carry x5 x5 0@uint64 carry;
(* adcs	x6, x6, x30                                #! PC = 0xaaaaaaab8ca8 *)
adcs carry x6 x6 x30 carry;
(* adcs	x7, x7, xzr                                #! PC = 0xaaaaaaab8cac *)
adcs carry x7 x7 0@uint64 carry;
(* adcs	x8, x8, xzr                                #! PC = 0xaaaaaaab8cb0 *)
adcs carry x8 x8 0@uint64 carry;
(* adc	x9, x9, xzr                                 #! PC = 0xaaaaaaab8cb4 *)
adc x9 x9 0@uint64 carry;
(* stp	x2, x3, [x1, #16]                           #! EA = L0xffffffffe968; PC = 0xaaaaaaab8cb8 *)
mov L0xffffffffe968 x2;
mov L0xffffffffe970 x3;
(* stp	x16, x17, [x1, #32]                         #! EA = L0xffffffffe978; PC = 0xaaaaaaab8cbc *)
mov L0xffffffffe978 x16;
mov L0xffffffffe980 x17;
(* stp	x4, x5, [x1, #48]                           #! EA = L0xffffffffe988; PC = 0xaaaaaaab8cc0 *)
mov L0xffffffffe988 x4;
mov L0xffffffffe990 x5;
(* stp	x6, x7, [x1, #64]                           #! EA = L0xffffffffe998; PC = 0xaaaaaaab8cc4 *)
mov L0xffffffffe998 x6;
mov L0xffffffffe9a0 x7;
(* stp	x8, x9, [x1, #80]                           #! EA = L0xffffffffe9a8; PC = 0xaaaaaaab8cc8 *)
mov L0xffffffffe9a8 x8;
mov L0xffffffffe9b0 x9;
(* ldp	x19, x20, [sp]                              #! EA = L0xffffffffe420; Value = 0x0000ffffffffe4a8; PC = 0xaaaaaaab8ccc *)
mov x19 L0xffffffffe420;
mov x20 L0xffffffffe428;
(* ldp	x21, x22, [sp, #16]                         #! EA = L0xffffffffe430; Value = 0x0000ffffffffe5f8; PC = 0xaaaaaaab8cd0 *)
mov x21 L0xffffffffe430;
mov x22 L0xffffffffe438;
(* ldp	x23, x24, [sp, #32]                         #! EA = L0xffffffffe440; Value = 0x0000ffffffffe7d8; PC = 0xaaaaaaab8cd4 *)
mov x23 L0xffffffffe440;
mov x24 L0xffffffffe448;
(* ldp	x25, x26, [sp, #48]                         #! EA = L0xffffffffe450; Value = 0x0000ffffffffe838; PC = 0xaaaaaaab8cd8 *)
mov x25 L0xffffffffe450;
mov x26 L0xffffffffe458;
(* ldp	x27, x28, [sp, #64]                         #! EA = L0xffffffffe460; Value = 0x0000ffffffffe898; PC = 0xaaaaaaab8cdc *)
mov x27 L0xffffffffe460;
mov x28 L0xffffffffe468;
(* ldp	x29, x30, [sp, #80]                         #! EA = L0xffffffffe470; Value = 0x0000ffffffffe480; PC = 0xaaaaaaab8ce0 *)
mov x29 L0xffffffffe470;
mov x30 L0xffffffffe478;
(* add	sp, sp, #0x60                               #! PC = 0xaaaaaaab8ce4 *)
adds dontcare sp sp 0x60@uint64;
(* #! <- SP = 0xffffffffe480 *)
#! 0xffffffffe480 = 0xffffffffe480;
(* #ret                                            #! PC = 0xaaaaaaab8ce8 *)
#ret                                            #! 0xaaaaaaab8ce8 = 0xaaaaaaab8ce8;
(* ldr	x0, [x0, #4056]                             #! EA = L0xaaaaaaacdfd8; Value = 0x0000fffff7ffd6b0; PC = 0xaaaaaaaadf84 *)
mov x0 L0xaaaaaaacdfd8;
(* ldr	x1, [sp, #232]                              #! EA = L0xffffffffe568; Value = 0xce81c7af3cbcd000; PC = 0xaaaaaaaadf88 *)
mov x1 L0xffffffffe568;
(* ldr	x2, [x0]                                    #! EA = L0xfffff7ffd6b0; Value = 0xce81c7af3cbcd000; PC = 0xaaaaaaaadf8c *)
mov x2 L0xfffff7ffd6b0;
(* subs	x1, x1, x2                                 #! PC = 0xaaaaaaaadf90 *)
subc carry x1 x1 x2;
(* mov	x2, #0x0                   	// #0           #! PC = 0xaaaaaaaadf94 *)
mov x2 0x0@uint64;
(* #b.ne	0xaaaaaaaadfa8 <fpmul751_mont+152>  // b.any#! PC = 0xaaaaaaaadf98 *)
#b.ne	0xaaaaaaaadfa8 <fpmul751_mont+152>  // b.any#! 0xaaaaaaaadf98 = 0xaaaaaaaadf98;
(* ldp	x19, x20, [sp, #16]                         #! EA = L0xffffffffe490; Value = 0x0000ffffffffe718; PC = 0xaaaaaaaadf9c *)
mov x19 L0xffffffffe490;
mov x20 L0xffffffffe498;
(* ldp	x29, x30, [sp], #240                        #! EA = L0xffffffffe480; Value = 0x0000ffffffffe570; PC = 0xaaaaaaaadfa0 *)
mov x29 L0xffffffffe480;
mov x30 L0xffffffffe488;
(* #! <- SP = 0xffffffffe570 *)
#! 0xffffffffe570 = 0xffffffffe570;
(* #ret                                            #! PC = 0xaaaaaaaadfa4 *)
#ret                                            #! 0xaaaaaaaadfa4 = 0xaaaaaaaadfa4;

mov c0 L0xffffffffe958; mov c1 L0xffffffffe960; mov c2 L0xffffffffe968; 
mov c3 L0xffffffffe970; mov c4 L0xffffffffe978; mov c5 L0xffffffffe980; 
mov c6 L0xffffffffe988; mov c7 L0xffffffffe990; mov c8 L0xffffffffe998; 
mov c9 L0xffffffffe9a0; mov ca L0xffffffffe9a8; mov cb L0xffffffffe9b0; 

{
  eqmod limbs 64 [0, 0, 0, 0, 0, 0,  0, 0, 0, 0, 0, 0,
                  c0, c1, c2, c3, c4, c5, c6, c7, c8, c9, ca, cb]
        limbs 64 [a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, aa, ab] *
        limbs 64 [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, ba, bb]
        limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, ma, mb]
  prove with [ precondition ]
&&
  limbs 64 [c0, c1, c2, c3, c4, c5, c6, c7, c8, c9, ca, cb] <u
  2@768 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, ma, mb]
  prove with [ precondition ]
}

