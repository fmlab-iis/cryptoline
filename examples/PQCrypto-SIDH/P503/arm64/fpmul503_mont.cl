(* NOTE: incomplete, 9 carries cannot be verified *)
(*       possible error when storing x25 before adding carry. see FIX *)
(* quine: -v -isafety -jobs 24 -slicing -no_carry_constraint -o fpmul503_mont.log fpmul503_mont.cl
Parsing Cryptoline file:                [OK]            0.010690 seconds
Checking well-formedness:               [OK]            0.001825 seconds
Transforming to SSA form:               [OK]            0.001136 seconds
Normalizing specification:              [OK]            0.001277 seconds
Rewriting assignments:                  [OK]            0.000758 seconds
Verifying program safety:               [OK]            9.715642 seconds
Verifying range assertions:             [OK]            1.231857 seconds
Verifying range specification:          [OK]            4.571310 seconds
Rewriting value-preserved casting:      [OK]            0.000872 seconds
Verifying algebraic assertions:         [OK]            1.466427 seconds
Verifying algebraic specification:      [OK]            0.251448 seconds
Verification result:                    [OK]            17.254428 seconds
*)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
           uint64 a4, uint64 a5, uint64 a6, uint64 a7,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3,
           uint64 b4, uint64 b5, uint64 b6, uint64 b7,
           uint64 m0, uint64 m1, uint64 m2, uint64 m3,
           uint64 m4, uint64 m5, uint64 m6, uint64 m7) =
{
  and [
  m0=0xFFFFFFFFFFFFFFFF, m1=0xFFFFFFFFFFFFFFFF,
  m2=0xFFFFFFFFFFFFFFFF, m3=0xABFFFFFFFFFFFFFF,
  m4=0x13085BDA2211E7A0, m5=0x1B9BF6C87B7E7DAF,
  m6=0x6045C6BDDA77A4D0, m7=0x004066F541811E1E ]
&&
  and [
  limbs 64 [a0, a1, a2, a3, a4, a5, a6, a7] <u
  2@512 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7],
  limbs 64 [b0, b1, b2, b3, b4, b5, b6, b7] <u
  2@512 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7],
  m0=0xFFFFFFFFFFFFFFFF@64, m1=0xFFFFFFFFFFFFFFFF@64,
  m2=0xFFFFFFFFFFFFFFFF@64, m3=0xABFFFFFFFFFFFFFF@64,
  m4=0x13085BDA2211E7A0@64, m5=0x1B9BF6C87B7E7DAF@64,
  m6=0x6045C6BDDA77A4D0@64, m7=0x004066F541811E1E@64 ]
}

mov L0xffffffffe8f8 a0; mov L0xffffffffe900 a1;
mov L0xffffffffe908 a2; mov L0xffffffffe910 a3;
mov L0xffffffffe918 a4; mov L0xffffffffe920 a5;
mov L0xffffffffe928 a6; mov L0xffffffffe930 a7;

mov L0xffffffffe938 b0; mov L0xffffffffe940 b1;
mov L0xffffffffe948 b2; mov L0xffffffffe950 b3;
mov L0xffffffffe958 b4; mov L0xffffffffe960 b5;
mov L0xffffffffe968 b6; mov L0xffffffffe970 b7;

mov L0xaaaaaaab5c48 0x85BDA2211E7A0AC@uint64;
mov L0xaaaaaaab5c50 0x9BF6C87B7E7DAF13@uint64;
mov L0xaaaaaaab5c58 0x45C6BDDA77A4D01B@uint64;
mov L0xaaaaaaab5c60 0x4066F541811E1E60@uint64;

nondet  x0@uint64; nondet  x2@uint64;
nondet x19@uint64; nondet x20@uint64;
nondet x21@uint64; nondet x22@uint64;
nondet x23@uint64; nondet x24@uint64;
nondet x25@uint64; nondet x26@uint64;
nondet x27@uint64; nondet x28@uint64;
nondet x29@uint64; nondet x30@uint64;
nondet sp@uint64;

nondet L0xaaaaaaacafd8@uint64; nondet L0xfffff7ffd6b0@uint64;

(* #! -> SP = 0xffffffffe6f0 *)
#! 0xffffffffe6f0 = 0xffffffffe6f0;
(* stp	x29, x30, [sp, #-176]!                      #! EA = L0xffffffffe640; PC = 0xaaaaaaaade90 *)
mov L0xffffffffe640 x29;
mov L0xffffffffe648 x30;
(* #mov	w3, #0x8                   	// #8           #! PC = 0xaaaaaaaade98 *)
#mov	w3, #0x8                   	// #8           #! 0xaaaaaaaade98 = 0xaaaaaaaade98;
(* mov	x29, sp                                     #! PC = 0xaaaaaaaade9c *)
mov x29 sp;
(* ldr	x4, [x4, #4056]                             #! EA = L0xaaaaaaacafd8; Value = 0x0000fffff7ffd6b0; PC = 0xaaaaaaaadea0 *)
mov x4 L0xaaaaaaacafd8;
(* stp	x19, x20, [sp, #16]                         #! EA = L0xffffffffe650; PC = 0xaaaaaaaadea4 *)
mov L0xffffffffe650 x19;
mov L0xffffffffe658 x20;
(* add	x19, sp, #0x28                              #! PC = 0xaaaaaaaadea8 *)
adds dontcare x19 sp 0x28@uint64;
(* ldr	x5, [x4]                                    #! EA = L0xfffff7ffd6b0; Value = 0xd0a76d13996c1300; PC = 0xaaaaaaaadeac *)
mov x5 L0xfffff7ffd6b0;
(* str	x5, [sp, #168]                              #! EA = L0xffffffffe6e8; PC = 0xaaaaaaaadeb0 *)
mov L0xffffffffe6e8 x5;
(* mov	x5, #0x0                   	// #0           #! PC = 0xaaaaaaaadeb4 *)
mov x5 0x0@uint64;
(* mov	x20, x2                                     #! PC = 0xaaaaaaaadeb8 *)
mov x20 x2;
(* mov	x2, x19                                     #! PC = 0xaaaaaaaadebc *)
mov x2 x19;
(* stp	xzr, xzr, [sp, #40]                         #! EA = L0xffffffffe668; PC = 0xaaaaaaaadec0 *)
mov L0xffffffffe668 0@uint64;
mov L0xffffffffe670 0@uint64;
(* stp	xzr, xzr, [sp, #56]                         #! EA = L0xffffffffe678; PC = 0xaaaaaaaadec4 *)
mov L0xffffffffe678 0@uint64;
mov L0xffffffffe680 0@uint64;
(* stp	xzr, xzr, [sp, #72]                         #! EA = L0xffffffffe688; PC = 0xaaaaaaaadec8 *)
mov L0xffffffffe688 0@uint64;
mov L0xffffffffe690 0@uint64;
(* stp	xzr, xzr, [sp, #88]                         #! EA = L0xffffffffe698; PC = 0xaaaaaaaadecc *)
mov L0xffffffffe698 0@uint64;
mov L0xffffffffe6a0 0@uint64;
(* stp	xzr, xzr, [sp, #104]                        #! EA = L0xffffffffe6a8; PC = 0xaaaaaaaaded0 *)
mov L0xffffffffe6a8 0@uint64;
mov L0xffffffffe6b0 0@uint64;
(* stp	xzr, xzr, [sp, #120]                        #! EA = L0xffffffffe6b8; PC = 0xaaaaaaaaded4 *)
mov L0xffffffffe6b8 0@uint64;
mov L0xffffffffe6c0 0@uint64;
(* stp	xzr, xzr, [sp, #136]                        #! EA = L0xffffffffe6c8; PC = 0xaaaaaaaaded8 *)
mov L0xffffffffe6c8 0@uint64;
mov L0xffffffffe6d0 0@uint64;
(* stp	xzr, xzr, [sp, #152]                        #! EA = L0xffffffffe6d8; PC = 0xaaaaaaaadedc *)
mov L0xffffffffe6d8 0@uint64;
mov L0xffffffffe6e0 0@uint64;
(* #bl	0xaaaaaaab5ba0 <mp_mul>                     #! PC = 0xaaaaaaaadee0 *)
#bl	0xaaaaaaab5ba0 <mp_mul>                     #! 0xaaaaaaaadee0 = 0xaaaaaaaadee0;
(* #! -> SP = 0xffffffffe640 *)
#! 0xffffffffe640 = 0xffffffffe640;
(* #b	0xaaaaaaab5f08 <mul503_asm>                  #! PC = 0xaaaaaaab5ba0 *)
#b	0xaaaaaaab5f08 <mul503_asm>                  #! 0xaaaaaaab5ba0 = 0xaaaaaaab5ba0;
(* sub	sp, sp, #0x60                               #! PC = 0xaaaaaaab5f08 *)
subc dontcare sp sp 0x60@uint64;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe8f8; Value = 0x3171ab91449d48d0; PC = 0xaaaaaaab5f0c *)
mov x3 L0xffffffffe8f8;
mov x4 L0xffffffffe900;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffe908; Value = 0x4d95201dd9590806; PC = 0xaaaaaaab5f10 *)
mov x5 L0xffffffffe908;
mov x6 L0xffffffffe910;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe918; Value = 0x38ea5a3e499db4dc; PC = 0xaaaaaaab5f14 *)
mov x7 L0xffffffffe918;
mov x8 L0xffffffffe920;
(* ldp	x9, x10, [x0, #48]                          #! EA = L0xffffffffe928; Value = 0xa83773f311a7d1d9; PC = 0xaaaaaaab5f18 *)
mov x9 L0xffffffffe928;
mov x10 L0xffffffffe930;
(* stp	x25, x26, [sp, #48]                         #! EA = L0xffffffffe610; PC = 0xaaaaaaab5f1c *)
mov L0xffffffffe610 x25;
mov L0xffffffffe618 x26;
(* stp	x27, x28, [sp, #64]                         #! EA = L0xffffffffe620; PC = 0xaaaaaaab5f20 *)
mov L0xffffffffe620 x27;
mov L0xffffffffe628 x28;
(* str	x29, [sp, #80]                              #! EA = L0xffffffffe630; PC = 0xaaaaaaab5f24 *)
mov L0xffffffffe630 x29;
(* adds	x26, x3, x7                                #! PC = 0xaaaaaaab5f28 *)
adds carry x26 x3 x7;
(* ldp	x11, x12, [x1]                              #! EA = L0xffffffffe938; Value = 0xe8764326b5539b16; PC = 0xaaaaaaab5f2c *)
mov x11 L0xffffffffe938;
mov x12 L0xffffffffe940;
(* adcs	x27, x4, x8                                #! PC = 0xaaaaaaab5f30 *)
adcs carry x27 x4 x8 carry;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0xffffffffe948; Value = 0xce6ee8344c88f93e; PC = 0xaaaaaaab5f34 *)
mov x13 L0xffffffffe948;
mov x14 L0xffffffffe950;
(* adcs	x28, x5, x9                                #! PC = 0xaaaaaaab5f38 *)
adcs carry x28 x5 x9 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0xffffffffe958; Value = 0x97cd458d20611d9c; PC = 0xaaaaaaab5f3c *)
mov x15 L0xffffffffe958;
mov x16 L0xffffffffe960;
(* adcs	x29, x6, x10                               #! PC = 0xaaaaaaab5f40 *)
adcs carry x29 x6 x10 carry;
(* ldp	x17, x18, [x1, #48]                         #! EA = L0xffffffffe968; Value = 0xf0fcd7e118c4a63a; PC = 0xaaaaaaab5f44 *)
mov x17 L0xffffffffe968;
mov x18 L0xffffffffe970;
(* adc	x7, xzr, xzr                                #! PC = 0xaaaaaaab5f48 *)
adc x7 0@uint64 0@uint64 carry;

(* NOTE: summary *)
ghost carryAL@uint64: carryAL = x7 && carryAL = x7;
assert limbs 64 [x26, x27, x28, x29, carryAL] =
       limbs 64 [a0, a1, a2, a3] + limbs 64 [a4, a5, a6, a7] && true;

(* stp	x19, x20, [sp]                              #! EA = L0xffffffffe5e0; PC = 0xaaaaaaab5f4c *)
mov L0xffffffffe5e0 x19;
mov L0xffffffffe5e8 x20;
(* adds	x11, x11, x15                              #! PC = 0xaaaaaaab5f50 *)
adds carry x11 x11 x15;
(* stp	x21, x22, [sp, #16]                         #! EA = L0xffffffffe5f0; PC = 0xaaaaaaab5f54 *)
mov L0xffffffffe5f0 x21;
mov L0xffffffffe5f8 x22;
(* adcs	x12, x12, x16                              #! PC = 0xaaaaaaab5f58 *)
adcs carry x12 x12 x16 carry;
(* stp	x23, x24, [sp, #32]                         #! EA = L0xffffffffe600; PC = 0xaaaaaaab5f5c *)
mov L0xffffffffe600 x23;
mov L0xffffffffe608 x24;
(* adcs	x13, x13, x17                              #! PC = 0xaaaaaaab5f60 *)
adcs carry x13 x13 x17 carry;
(* adcs	x14, x14, x18                              #! PC = 0xaaaaaaab5f64 *)
adcs carry x14 x14 x18 carry;
(* adc	x8, xzr, xzr                                #! PC = 0xaaaaaaab5f68 *)
adc x8 0@uint64 0@uint64 carry;

(* NOTE: summary *)
ghost carryBL@uint64 : carryBL = x8 && carryBL = x8;
assert limbs 64 [x11, x12, x13, x14, carryBL] =
       limbs 64 [b0, b1, b2, b3] + limbs 64 [b4, b5, b6, b7] && true;

(* neg	x9, x7                                      #! PC = 0xaaaaaaab5f6c *)
subc dontcare x9 0@uint64 x7;
(* neg	x10, x8                                     #! PC = 0xaaaaaaab5f70 *)
subc dontcare x10 0@uint64 x8;
(* and	x15, x11, x9                                #! PC = 0xaaaaaaab5f74 *)
and x15@uint64 x11 x9;
(* and	x16, x12, x9                                #! PC = 0xaaaaaaab5f78 *)
and x16@uint64 x12 x9;
(* and	x17, x13, x9                                #! PC = 0xaaaaaaab5f7c *)
and x17@uint64 x13 x9;
(* and	x18, x14, x9                                #! PC = 0xaaaaaaab5f80 *)
and x18@uint64 x14 x9;

(* NOTE: summary *)
assert true &&
       and [ carryAL*(carryAL-1@64) = 0@64,
             limbs 64 [x15, x16, x17, x18] =
             uext carryAL 192 * limbs 64 [x11, x12, x13, x14] ];
assume and [ carryAL*(carryAL-1) = 0,
             limbs 64 [x15, x16, x17, x18] =
             carryAL * limbs 64 [x11, x12, x13, x14] ] && true;

(* and	x19, x26, x10                               #! PC = 0xaaaaaaab5f84 *)
and x19@uint64 x26 x10;
(* and	x20, x27, x10                               #! PC = 0xaaaaaaab5f88 *)
and x20@uint64 x27 x10;
(* and	x21, x28, x10                               #! PC = 0xaaaaaaab5f8c *)
and x21@uint64 x28 x10;
(* and	x22, x29, x10                               #! PC = 0xaaaaaaab5f90 *)
and x22@uint64 x29 x10;

(* NOTE: summary *)
assert true &&
       and [ carryBL*(carryBL-1@64) = 0@64,
             limbs 64 [x19, x20, x21, x22] =
             uext carryBL 192 * limbs 64 [x26, x27, x28, x29] ];
assume and [ carryBL*(carryBL-1) = 0,
             limbs 64 [x19, x20, x21, x22] =
             carryBL * limbs 64 [x26, x27, x28, x29] ] && true;

(* adds	x15, x15, x19                              #! PC = 0xaaaaaaab5f94 *)
adds carry x15 x15 x19;
(* adcs	x16, x16, x20                              #! PC = 0xaaaaaaab5f98 *)
adcs carry x16 x16 x20 carry;
(* adcs	x17, x17, x21                              #! PC = 0xaaaaaaab5f9c *)
adcs carry x17 x17 x21 carry;
(* stp	x26, x27, [x2]                              #! EA = L0xffffffffe668; PC = 0xaaaaaaab5fa0 *)
mov L0xffffffffe668 x26;
mov L0xffffffffe670 x27;
(* adc	x18, x18, x22                               #! PC = 0xaaaaaaab5fa4 *)
adc x18 x18 x22 carry;

ghost x26o@uint64, x27o@uint64, x28o@uint64, x29o@uint64,
      x11o@uint64, x12o@uint64, x13o@uint64, x14o@uint64 :
      and [x26o=x26, x27o=x27, x28o=x28, x29o=x29,
           x11o=x11, x12o=x12, x13o=x13, x14o=x14]
   && and [x26o=x26, x27o=x27, x28o=x28, x29o=x29,
           x11o=x11, x12o=x12, x13o=x13, x14o=x14];
      
(* NOTE: MUL256_KARATSUBA_COMBA START *)

(* adds	x26, x26, x28                              #! PC = 0xaaaaaaab5fa8 *)
adds carry x26 x26 x28;
(* adcs	x27, x27, x29                              #! PC = 0xaaaaaaab5fac *)
adcs carry x27 x27 x29 carry;
(* adc	x24, xzr, xzr                               #! PC = 0xaaaaaaab5fb0 *)
adc x24 0@uint64 0@uint64 carry;

assert limbs 64 [x26, x27, x24] =
       limbs 64 [x26o, x27o] + limbs 64 [x28o, x29o] && true;

(* adds	x22, x11, x13                              #! PC = 0xaaaaaaab5fb4 *)
adds carry x22 x11 x13;
(* adcs	x25, x12, x14                              #! PC = 0xaaaaaaab5fb8 *)
adcs carry x25 x12 x14 carry;
(* adc	x23, xzr, xzr                               #! PC = 0xaaaaaaab5fbc *)
adc x23 0@uint64 0@uint64 carry;

assert limbs 64 [x22, x25, x23] =
       limbs 64 [x11o, x12o] + limbs 64 [x13o, x14o] && true;

(* neg	x10, x24                                    #! PC = 0xaaaaaaab5fc0 *)
subc dontcare x10 0@uint64 x24;
(* neg	x19, x23                                    #! PC = 0xaaaaaaab5fc4 *)
subc dontcare x19 0@uint64 x23;
(* and	x8, x22, x10                                #! PC = 0xaaaaaaab5fc8 *)
and x8@uint64 x22 x10;
(* and	x9, x25, x10                                #! PC = 0xaaaaaaab5fcc *)
and x9@uint64 x25 x10;
(* and	x20, x26, x19                               #! PC = 0xaaaaaaab5fd0 *)
and x20@uint64 x26 x19;
(* and	x21, x27, x19                               #! PC = 0xaaaaaaab5fd4 *)
and x21@uint64 x27 x19;

(* NOTE: mask *)
assert true
    && and [x24*(1@64-x24) = 0@64, x23*(1@64-x23) = 0@64,
            limbs 64 [ x8,  x9] = uext x24 64 * limbs 64 [x22, x25],
            limbs 64 [x20, x21] = uext x23 64 * limbs 64 [x26, x27]];
assume and [x24*(1-x24) = 0, x23*(1-x23) = 0,
            limbs 64 [ x8,  x9] = x24 * limbs 64 [x22, x25],
            limbs 64 [x20, x21] = x23 * limbs 64 [x26, x27]] && true;
            
(* mul	x10, x26, x22                               #! PC = 0xaaaaaaab5fd8 *)
mull Hx26x22 x10 x26 x22;
(* mul	x19, x26, x25                               #! PC = 0xaaaaaaab5fdc *)
mull Hx26x25 x19 x26 x25;

ghost x24c@uint64 : x24c = x24 && x24c = x24;

(* and	x24, x24, x23                               #! PC = 0xaaaaaaab5fe0 *)
and x24@uint64 x24 x23;

(* NOTE: combined carries *)
assert true && x24 = x24c*x23;
assume x24 = x24c*x23 && true;

(* adds	x8, x20, x8                                #! PC = 0xaaaaaaab5fe4 *)
adds carry x8 x20 x8;
(* umulh	x20, x26, x25                             #! PC = 0xaaaaaaab5fe8 *)
mov x20 Hx26x25;
(* adcs	x9, x21, x9                                #! PC = 0xaaaaaaab5fec *)
adcs carry x9 x21 x9 carry;
(* umulh	x21, x26, x22                             #! PC = 0xaaaaaaab5ff0 *)
mov x21 Hx26x22;
(* adc	x24, x24, xzr                               #! PC = 0xaaaaaaab5ff4 *)
adc x24 x24 0@uint64 carry;

(* NOTE: MUL128_COMBA_CUT START *)

(* mul	x26, x27, x22                               #! PC = 0xaaaaaaab5ff8 *)
mull Hx27x22 x26 x27 x22;
(* umulh	x22, x27, x22                             #! PC = 0xaaaaaaab5ffc *)
mov x22 Hx27x22;
(* adds	x19, x19, x21                              #! PC = 0xaaaaaaab6000 *)
adds carry x19 x19 x21;
(* adc	x20, x20, xzr                               #! PC = 0xaaaaaaab6004 *)
adc x20 x20 0@uint64 carry;

(* mul	x23, x27, x25                               #! PC = 0xaaaaaaab6008 *)
mull Hx27x25 x23 x27 x25;
(* umulh	x25, x27, x25                             #! PC = 0xaaaaaaab600c *)
mov x25 Hx27x25;
(* adds	x19, x19, x26                              #! PC = 0xaaaaaaab6010 *)
adds carry x19 x19 x26;
(* adcs	x20, x20, x22                              #! PC = 0xaaaaaaab6014 *)
adcs carry x20 x20 x22 carry;
(* adc	x21, xzr, xzr                               #! PC = 0xaaaaaaab6018 *)
adc x21 0@uint64 0@uint64 carry;
(* adds	x20, x20, x23                              #! PC = 0xaaaaaaab601c *)
adds carry x20 x20 x23;
(* adc	x21, x21, x25                               #! PC = 0xaaaaaaab6020 *)
adc x21 x21 x25 carry;

(* NOTE: MUL128_COMBA_CUT END *)

(* ldp	x26, x27, [x2]                              #! EA = L0xffffffffe668; Value = 0x6a5c05cf8e3afdac; PC = 0xaaaaaaab6024 *)
mov x26 L0xffffffffe668;
mov x27 L0xffffffffe670;
(* adds	x20, x8, x20                               #! PC = 0xaaaaaaab6028 *)
adds carry x20 x8 x20;
(* umulh	x23, x26, x11                             #! PC = 0xaaaaaaab602c *)
(* NOTE: merged with mul x8, x26, x11 *)
(* mov x23 Hx26x11; *)
(* umulh	x25, x26, x12                             #! PC = 0xaaaaaaab6030 *)
(* NOTE: merged with mul x9, x26, x12 *)
(* mov x25 Hx26x12; *)
(* adcs	x21, x9, x21                               #! PC = 0xaaaaaaab6034 *)
adcs carry x21 x9 x21 carry;
(* mul	x8, x26, x11                                #! PC = 0xaaaaaaab6038 *)
(* mull Hx26x11 x8 x26 x11; *)
mull x23 x8 x26 x11;
(* mul	x9, x26, x12                                #! PC = 0xaaaaaaab603c *)
(* mull Hx26x12 x9 x26 x12; *)
mull x25 x9 x26 x12;
(* adc	x24, x24, xzr                               #! PC = 0xaaaaaaab6040 *)
adc x24 x24 0@uint64 carry;

(* NOTE: (AH+AL)*(BH+BL) *)
assert limbs 64 [x10, x19, x20, x21, x24] =
       (limbs 64 [x26o, x27o] + limbs 64 [x28o, x29o]) *
       (limbs 64 [x11o, x12o] + limbs 64 [x13o, x14o]) && true;

(* NOTE: MUL128_COMBA_CUT START *)

(* mul	x26, x27, x11                               #! PC = 0xaaaaaaab6044 *)
mull Hx27x11 x26 x27 x11;
(* umulh	x11, x27, x11                             #! PC = 0xaaaaaaab6048 *)
mov x11 Hx27x11;
(* adds	x9, x9, x23                                #! PC = 0xaaaaaaab604c *)
adds carry x9 x9 x23;
(* adc	x25, x25, xzr                               #! PC = 0xaaaaaaab6050 *)
adc x25 x25 0@uint64 carry;
(* mul	x22, x27, x12                               #! PC = 0xaaaaaaab6054 *)
mull Hx27x12 x22 x27 x12;
(* umulh	x12, x27, x12                             #! PC = 0xaaaaaaab6058 *)
mov x12 Hx27x12;
(* adds	x9, x9, x26                                #! PC = 0xaaaaaaab605c *)
adds carry x9 x9 x26;
(* adcs	x25, x25, x11                              #! PC = 0xaaaaaaab6060 *)
adcs carry x25 x25 x11 carry;
(* adc	x23, xzr, xzr                               #! PC = 0xaaaaaaab6064 *)
adc x23 0@uint64 0@uint64 carry;

(* adds	x25, x25, x22                              #! PC = 0xaaaaaaab6068 *)
adds carry x25 x25 x22;
(* adc	x23, x23, x12                               #! PC = 0xaaaaaaab606c *)
adc x23 x23 x12 carry;

(* NOTE: MUL128_COMBA_CUT END *)

(* NOTE: AL*BL *)
assert limbs 64 [x8, x9, x25, x23] =
       limbs 64 [x26o, x27o] * limbs 64 [x11o, x12o] && true;

(* mul	x26, x28, x13                               #! PC = 0xaaaaaaab6070 *)
mull Hx28x13 x26 x28 x13;
(* umulh	x11, x28, x13                             #! PC = 0xaaaaaaab6074 *)
mov x11 Hx28x13;
(* subs	x10, x10, x8                               #! PC = 0xaaaaaaab6078 *)
subc carry x10 x10 x8;
(* sbcs	x19, x19, x9                               #! PC = 0xaaaaaaab607c *)
sbcs carry x19 x19 x9 carry;
(* sbcs	x20, x20, x25                              #! PC = 0xaaaaaaab6080 *)
sbcs carry x20 x20 x25 carry;
(* mul	x27, x28, x14                               #! PC = 0xaaaaaaab6084 *)
mull Hx28x14 x27 x28 x14;
(* umulh	x22, x28, x14                             #! PC = 0xaaaaaaab6088 *)
mov x22 Hx28x14;
(* sbcs	x21, x21, x23                              #! PC = 0xaaaaaaab608c *)
sbcs carry x21 x21 x23 carry;
(* sbc	x24, x24, xzr                               #! PC = 0xaaaaaaab6090 *)
sbcs docare x24 x24 0@uint64 carry;

(* NOTE: must carry *)
(* TODO: assert true && docare = 1@1; *)
assume docare = 1 && true;

(* NOTE: (AH+AL)*(BH+BL) - AL*BL *)
assert limbs 64 [x10, x19, x20, x21, x24] =
       (limbs 64 [x26o, x27o] + limbs 64 [x28o, x29o]) *
       (limbs 64 [x11o, x12o] + limbs 64 [x13o, x14o]) -
       limbs 64 [x26o, x27o] * limbs 64 [x11o, x12o] && true;

(* NOTE: MUL128_COMBA_CUT START *)

(* mul	x28, x29, x13                               #! PC = 0xaaaaaaab6094 *)
mull Hx29x13 x28 x29 x13;
(* umulh	x13, x29, x13                             #! PC = 0xaaaaaaab6098 *)
mov x13 Hx29x13;
(* adds	x27, x27, x11                              #! PC = 0xaaaaaaab609c *)
adds carry x27 x27 x11;
(* adc	x22, x22, xzr                               #! PC = 0xaaaaaaab60a0 *)
adc x22 x22 0@uint64 carry;
(* mul	x12, x29, x14                               #! PC = 0xaaaaaaab60a4 *)
mull Hx29x14 x12 x29 x14;
(* umulh	x14, x29, x14                             #! PC = 0xaaaaaaab60a8 *)
mov x14 Hx29x14;
(* adds	x27, x27, x28                              #! PC = 0xaaaaaaab60ac *)
adds carry x27 x27 x28;
(* adcs	x22, x22, x13                              #! PC = 0xaaaaaaab60b0 *)
adcs carry x22 x22 x13 carry;
(* adc	x11, xzr, xzr                               #! PC = 0xaaaaaaab60b4 *)
adc x11 0@uint64 0@uint64 carry;
(* adds	x22, x22, x12                              #! PC = 0xaaaaaaab60b8 *)
adds carry x22 x22 x12;
(* adc	x11, x11, x14                               #! PC = 0xaaaaaaab60bc *)
adc x11 x11 x14 carry;

(* NOTE: MUL128_COMBA_CUT END *)

(* NOTE: summary *)
assert limbs 64 [x26, x27, x22, x11] =
       limbs 64 [x28o, x29o] * limbs 64 [x13o, x14o] && true;

(* subs	x10, x10, x26                              #! PC = 0xaaaaaaab60c0 *)
subc carry x10 x10 x26;
(* sbcs	x19, x19, x27                              #! PC = 0xaaaaaaab60c4 *)
sbcs carry x19 x19 x27 carry;
(* sbcs	x20, x20, x22                              #! PC = 0xaaaaaaab60c8 *)
sbcs carry x20 x20 x22 carry;
(* sbcs	x21, x21, x11                              #! PC = 0xaaaaaaab60cc *)
sbcs carry x21 x21 x11 carry;
(* sbc	x24, x24, xzr                               #! PC = 0xaaaaaaab60d0 *)
sbcs docare x24 x24 0@uint64 carry;

(* NOTE: must carry *)
(* TODO: assert true && docare = 1@1; *)
assume docare = 1 && true;

(* NOTE: AH*BL + AL*BH *)
assert limbs 64 [x10, x19, x20, x21, x24] =
       limbs 64 [x28o, x29o] * limbs 64 [x11o, x12o] +
       limbs 64 [x26o, x27o] * limbs 64 [x13o, x14o] && true;

(* adds	x10, x10, x25                              #! PC = 0xaaaaaaab60d4 *)
adds carry x10 x10 x25;
(* adcs	x19, x19, x23                              #! PC = 0xaaaaaaab60d8 *)
adcs carry x19 x19 x23 carry;
(* adcs	x20, x20, x26                              #! PC = 0xaaaaaaab60dc *)
adcs carry x20 x20 x26 carry;
(* adcs	x21, x21, x27                              #! PC = 0xaaaaaaab60e0 *)
adcs carry x21 x21 x27 carry;
(* adcs	x22, x24, x22                              #! PC = 0xaaaaaaab60e4 *)
adcs carry x22 x24 x22 carry;
(* adc	x23, x11, xzr                               #! PC = 0xaaaaaaab60e8 *)
adcs docare x23 x11 0@uint64 carry;

(* NOTE: cannot carry *)
(* TODO: assert true && docare = 0@1; *)
assume docare = 0 && true;

(* NOTE: MUL256_KARATSUBA_COMBA END *)

(* NOTE: summary *)
assert limbs 64 [x8, x9, x10, x19, x20, x21, x22, x23] =
       limbs 64 [x26o, x27o, x28o, x29o] *
       limbs 64 [x11o, x12o, x13o, x14o] && true;

(* adds	x15, x15, x20                              #! PC = 0xaaaaaaab60ec *)
adds carry x15 x15 x20;
(* ldp	x11, x12, [x1]                              #! EA = L0xffffffffe938; Value = 0xe8764326b5539b16; PC = 0xaaaaaaab60f0 *)
mov x11 L0xffffffffe938;
mov x12 L0xffffffffe940;
(* adcs	x16, x16, x21                              #! PC = 0xaaaaaaab60f4 *)
adcs carry x16 x16 x21 carry;
(* adcs	x17, x17, x22                              #! PC = 0xaaaaaaab60f8 *)
adcs carry x17 x17 x22 carry;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0xffffffffe948; Value = 0xce6ee8344c88f93e; PC = 0xaaaaaaab60fc *)
mov x13 L0xffffffffe948;
mov x14 L0xffffffffe950;
(* adc	x18, x18, x23                               #! PC = 0xaaaaaaab6100 *)
adcs dontcare x18 x18 x23 carry;

(* NOTE: summary *)
assert eqmod limbs 64 [x8, x9, x10, x19, x15, x16, x17, x18]
             (limbs 64 [a0, a1, a2, a3] + limbs 64 [a4, a5, a6, a7])*
             (limbs 64 [b0, b1, b2, b3] + limbs 64 [b4, b5, b6, b7])
             2**512 && true;

(* NOTE: MUL256_KARATSUBA_COMBA START *)

(* adds	x3, x3, x5                                 #! PC = 0xaaaaaaab6104 *)
adds carry x3 x3 x5;
(* adcs	x4, x4, x6                                 #! PC = 0xaaaaaaab6108 *)
adcs carry x4 x4 x6 carry;
(* adc	x28, xzr, xzr                               #! PC = 0xaaaaaaab610c *)
adc x28 0@uint64 0@uint64 carry;
(* adds	x26, x11, x13                              #! PC = 0xaaaaaaab6110 *)
adds carry x26 x11 x13;
(* adcs	x29, x12, x14                              #! PC = 0xaaaaaaab6114 *)
adcs carry x29 x12 x14 carry;
(* adc	x27, xzr, xzr                               #! PC = 0xaaaaaaab6118 *)
adc x27 0@uint64 0@uint64 carry;
(* neg	x22, x28                                    #! PC = 0xaaaaaaab611c *)
subc dontcare x22 0@uint64 x28;
(* neg	x23, x27                                    #! PC = 0xaaaaaaab6120 *)
subc dontcare x23 0@uint64 x27;
(* and	x20, x26, x22                               #! PC = 0xaaaaaaab6124 *)
and x20@uint64 x26 x22;
(* and	x21, x29, x22                               #! PC = 0xaaaaaaab6128 *)
and x21@uint64 x29 x22;
(* and	x24, x3, x23                                #! PC = 0xaaaaaaab612c *)
and x24@uint64 x3 x23;
(* and	x25, x4, x23                                #! PC = 0xaaaaaaab6130 *)
and x25@uint64 x4 x23;

(* NOTE: summary *)
assert true
    && and [ x28*(x28-1@64) = 0@64, x27*(x27-1@64) = 0@64,
             limbs 64 [x20, x21] = uext x28 64 * limbs 64 [x26, x29],
             limbs 64 [x24, x25] = uext x27 64 * limbs 64 [ x3,  x4] ];
assume and [ x28*(x28-1) = 0, x27*(x27-1) = 0,
             limbs 64 [x20, x21] = x28 * limbs 64 [x26, x29],
             limbs 64 [x24, x25] = x27 * limbs 64 [ x3,  x4] ]
    && true;

(* mul	x22, x3, x26                                #! PC = 0xaaaaaaab6134 *)
mull Hx3x26 x22 x3 x26;
(* mul	x23, x3, x29                                #! PC = 0xaaaaaaab6138 *)
mull Hx3x29 x23 x3 x29;
(* and	x28, x28, x27                               #! PC = 0xaaaaaaab613c *)

ghost x28cc@uint64 : x28cc = x28 && x28cc = x28;

and x28@uint64 x28 x27;

(* NOTE: combined carries *)
assert true && x28 = x28cc*x27;
assume x28 = x28cc*x27 && true;

(* adds	x20, x24, x20                              #! PC = 0xaaaaaaab6140 *)
adds carry x20 x24 x20;
(* umulh	x24, x3, x29                              #! PC = 0xaaaaaaab6144 *)
mov x24 Hx3x29;
(* adcs	x21, x25, x21                              #! PC = 0xaaaaaaab6148 *)
adcs carry x21 x25 x21 carry;
(* umulh	x25, x3, x26                              #! PC = 0xaaaaaaab614c *)
mov x25 Hx3x26;
(* adc	x28, x28, xzr                               #! PC = 0xaaaaaaab6150 *)
adc x28 x28 0@uint64 carry;
(* mul	x3, x4, x26                                 #! PC = 0xaaaaaaab6154 *)
mull Hx4x26 x3 x4 x26;
(* umulh	x26, x4, x26                              #! PC = 0xaaaaaaab6158 *)
mov x26 Hx4x26;
(* adds	x23, x23, x25                              #! PC = 0xaaaaaaab615c *)
adds carry x23 x23 x25;
(* adc	x24, x24, xzr                               #! PC = 0xaaaaaaab6160 *)
adc x24 x24 0@uint64 carry;
(* mul	x27, x4, x29                                #! PC = 0xaaaaaaab6164 *)
mull Hx4x29 x27 x4 x29;
(* umulh	x29, x4, x29                              #! PC = 0xaaaaaaab6168 *)
mov x29 Hx4x29;
(* adds	x23, x23, x3                               #! PC = 0xaaaaaaab616c *)
adds carry x23 x23 x3;
(* adcs	x24, x24, x26                              #! PC = 0xaaaaaaab6170 *)
adcs carry x24 x24 x26 carry;
(* adc	x25, xzr, xzr                               #! PC = 0xaaaaaaab6174 *)
adc x25 0@uint64 0@uint64 carry;
(* adds	x24, x24, x27                              #! PC = 0xaaaaaaab6178 *)
adds carry x24 x24 x27;
(* adc	x25, x25, x29                               #! PC = 0xaaaaaaab617c *)
adc x25 x25 x29 carry;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe8f8; Value = 0x3171ab91449d48d0; PC = 0xaaaaaaab6180 *)
mov x3 L0xffffffffe8f8;
mov x4 L0xffffffffe900;
(* adds	x24, x20, x24                              #! PC = 0xaaaaaaab6184 *)
adds carry x24 x20 x24;
(* umulh	x27, x3, x11                              #! PC = 0xaaaaaaab6188 *)
(* NOTE: merged with mul x20, x3, x11 *)
(* mov x27 Hx3x11; *)
(* umulh	x29, x3, x12                              #! PC = 0xaaaaaaab618c *)
(* NOTE: merged with mul x21, x3, x12 *)
(* mov x29 Hx3x12; *)
(* adcs	x25, x21, x25                              #! PC = 0xaaaaaaab6190 *)
adcs carry x25 x21 x25 carry;
(* mul	x20, x3, x11                                #! PC = 0xaaaaaaab6194 *)
(* mull Hx3x11 x20 x3 x11; *)
mull x27 x20 x3 x11;
(* mul	x21, x3, x12                                #! PC = 0xaaaaaaab6198 *)
(* mull Hx3x12 x21 x3 x12; *)
mull x29 x21 x3 x12;
(* adc	x28, x28, xzr                               #! PC = 0xaaaaaaab619c *)
adc x28 x28 0@uint64 carry;
(* mul	x3, x4, x11                                 #! PC = 0xaaaaaaab61a0 *)
mull Hx4x11 x3 x4 x11;
(* umulh	x11, x4, x11                              #! PC = 0xaaaaaaab61a4 *)
mov x11 Hx4x11;
(* adds	x21, x21, x27                              #! PC = 0xaaaaaaab61a8 *)
adds carry x21 x21 x27;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab61ac *)
adc x29 x29 0@uint64 carry;
(* mul	x26, x4, x12                                #! PC = 0xaaaaaaab61b0 *)
mull Hx4x12 x26 x4 x12;
(* umulh	x12, x4, x12                              #! PC = 0xaaaaaaab61b4 *)
mov x12 Hx4x12;
(* adds	x21, x21, x3                               #! PC = 0xaaaaaaab61b8 *)
adds carry x21 x21 x3;
(* adcs	x29, x29, x11                              #! PC = 0xaaaaaaab61bc *)
adcs carry x29 x29 x11 carry;
(* adc	x27, xzr, xzr                               #! PC = 0xaaaaaaab61c0 *)
adc x27 0@uint64 0@uint64 carry;
(* adds	x29, x29, x26                              #! PC = 0xaaaaaaab61c4 *)
adds carry x29 x29 x26;
(* adc	x27, x27, x12                               #! PC = 0xaaaaaaab61c8 *)
adc x27 x27 x12 carry;
(* mul	x3, x5, x13                                 #! PC = 0xaaaaaaab61cc *)
mull Hx5x13 x3 x5 x13;
(* umulh	x11, x5, x13                              #! PC = 0xaaaaaaab61d0 *)
mov x11 Hx5x13;
(* subs	x22, x22, x20                              #! PC = 0xaaaaaaab61d4 *)
subc carry x22 x22 x20;
(* sbcs	x23, x23, x21                              #! PC = 0xaaaaaaab61d8 *)
sbcs carry x23 x23 x21 carry;
(* sbcs	x24, x24, x29                              #! PC = 0xaaaaaaab61dc *)
sbcs carry x24 x24 x29 carry;
(* mul	x4, x5, x14                                 #! PC = 0xaaaaaaab61e0 *)
mull Hx5x14 x4 x5 x14;
(* umulh	x26, x5, x14                              #! PC = 0xaaaaaaab61e4 *)
mov x26 Hx5x14;
(* sbcs	x25, x25, x27                              #! PC = 0xaaaaaaab61e8 *)
sbcs carry x25 x25 x27 carry;
(* sbc	x28, x28, xzr                               #! PC = 0xaaaaaaab61ec *)
sbcs docare x28 x28 0@uint64 carry;

(* NOTE: must carry *)
(* TODO: assert true && docare = 1@1; *)
assume docare = 1 && true;

(* mul	x5, x6, x13                                 #! PC = 0xaaaaaaab61f0 *)
mull Hx6x13 x5 x6 x13;
(* umulh	x13, x6, x13                              #! PC = 0xaaaaaaab61f4 *)
mov x13 Hx6x13;
(* adds	x4, x4, x11                                #! PC = 0xaaaaaaab61f8 *)
adds carry x4 x4 x11;
(* adc	x26, x26, xzr                               #! PC = 0xaaaaaaab61fc *)
adc x26 x26 0@uint64 carry;
(* mul	x12, x6, x14                                #! PC = 0xaaaaaaab6200 *)
mull Hx6x14 x12 x6 x14;
(* umulh	x14, x6, x14                              #! PC = 0xaaaaaaab6204 *)
mov x14 Hx6x14;
(* adds	x4, x4, x5                                 #! PC = 0xaaaaaaab6208 *)
adds carry x4 x4 x5;
(* adcs	x26, x26, x13                              #! PC = 0xaaaaaaab620c *)
adcs carry x26 x26 x13 carry;
(* adc	x11, xzr, xzr                               #! PC = 0xaaaaaaab6210 *)
adc x11 0@uint64 0@uint64 carry;
(* adds	x26, x26, x12                              #! PC = 0xaaaaaaab6214 *)
adds carry x26 x26 x12;
(* adc	x11, x11, x14                               #! PC = 0xaaaaaaab6218 *)
adc x11 x11 x14 carry;
(* subs	x22, x22, x3                               #! PC = 0xaaaaaaab621c *)
subc carry x22 x22 x3;
(* sbcs	x23, x23, x4                               #! PC = 0xaaaaaaab6220 *)
sbcs carry x23 x23 x4 carry;
(* sbcs	x24, x24, x26                              #! PC = 0xaaaaaaab6224 *)
sbcs carry x24 x24 x26 carry;
(* sbcs	x25, x25, x11                              #! PC = 0xaaaaaaab6228 *)
sbcs carry x25 x25 x11 carry;
(* sbc	x28, x28, xzr                               #! PC = 0xaaaaaaab622c *)
sbcs docare x28 x28 0@uint64 carry;

(* NOTE: must carry *)
(* TODO: assert true && docare = 1@1; *)
assume docare = 1 && true;

(* adds	x22, x22, x29                              #! PC = 0xaaaaaaab6230 *)
adds carry x22 x22 x29;
(* adcs	x23, x23, x27                              #! PC = 0xaaaaaaab6234 *)
adcs carry x23 x23 x27 carry;
(* adcs	x24, x24, x3                               #! PC = 0xaaaaaaab6238 *)
adcs carry x24 x24 x3 carry;
(* adcs	x25, x25, x4                               #! PC = 0xaaaaaaab623c *)
adcs carry x25 x25 x4 carry;
(* adcs	x26, x28, x26                              #! PC = 0xaaaaaaab6240 *)
adcs carry x26 x28 x26 carry;
(* adc	x27, x11, xzr                               #! PC = 0xaaaaaaab6244 *)
adcs docare x27 x11 0@uint64 carry;

(* NOTE: cannot carry *)
(* TODO: assert true && docare = 0@1; *)
assume docare = 0 && true;

(* NOTE: MUL256_KARATSUBA_COMBA END *)

(* NOTE: summary *)
assert limbs 64 [x20, x21, x22, x23, x24, x25, x26, x27] =
       limbs 64 [a0, a1, a2, a3] * limbs 64 [b0, b1, b2, b3] && true;

(* subs	x8, x8, x20                                #! PC = 0xaaaaaaab6248 *)
subc carry x8 x8 x20;
(* ldp	x3, x4, [x0, #32]                           #! EA = L0xffffffffe918; Value = 0x38ea5a3e499db4dc; PC = 0xaaaaaaab624c *)
mov x3 L0xffffffffe918;
mov x4 L0xffffffffe920;
(* sbcs	x9, x9, x21                                #! PC = 0xaaaaaaab6250 *)
sbcs carry x9 x9 x21 carry;
(* ldp	x5, x6, [x0, #48]                           #! EA = L0xffffffffe928; Value = 0xa83773f311a7d1d9; PC = 0xaaaaaaab6254 *)
mov x5 L0xffffffffe928;
mov x6 L0xffffffffe930;
(* sbcs	x10, x10, x22                              #! PC = 0xaaaaaaab6258 *)
sbcs carry x10 x10 x22 carry;
(* ldp	x11, x12, [x1, #32]                         #! EA = L0xffffffffe958; Value = 0x97cd458d20611d9c; PC = 0xaaaaaaab625c *)
mov x11 L0xffffffffe958;
mov x12 L0xffffffffe960;
(* sbcs	x19, x19, x23                              #! PC = 0xaaaaaaab6260 *)
sbcs carry x19 x19 x23 carry;
(* ldp	x13, x14, [x1, #48]                         #! EA = L0xffffffffe968; Value = 0xf0fcd7e118c4a63a; PC = 0xaaaaaaab6264 *)
mov x13 L0xffffffffe968;
mov x14 L0xffffffffe970;
(* sbcs	x15, x15, x24                              #! PC = 0xaaaaaaab6268 *)
sbcs carry x15 x15 x24 carry;
(* stp	x20, x21, [x2]                              #! EA = L0xffffffffe668; PC = 0xaaaaaaab626c *)
mov L0xffffffffe668 x20;
mov L0xffffffffe670 x21;
(* sbcs	x16, x16, x25                              #! PC = 0xaaaaaaab6270 *)
sbcs carry x16 x16 x25 carry;
(* stp	x22, x23, [x2, #16]                         #! EA = L0xffffffffe678; PC = 0xaaaaaaab6274 *)
mov L0xffffffffe678 x22;
mov L0xffffffffe680 x23;
(* sbcs	x17, x17, x26                              #! PC = 0xaaaaaaab6278 *)
sbcs carry x17 x17 x26 carry;
(* stp	x24, x25, [x2, #32]                         #! EA = L0xffffffffe688; PC = 0xaaaaaaab627c *)
mov L0xffffffffe688 x24;
mov L0xffffffffe690 x25;
(* sbc	x18, x18, x27                               #! PC = 0xaaaaaaab6280 *)
sbcs dontcare x18 x18 x27 carry;

(* NOTE: summary *)
assert eqmod limbs 64 [x8, x9, x10, x19, x15, x16, x17, x18]
             (limbs 64 [a0, a1, a2, a3] + limbs 64 [a4, a5, a6, a7]) *
             (limbs 64 [b0, b1, b2, b3] + limbs 64 [b4, b5, b6, b7]) -
             limbs 64 [a0, a1, a2, a3] * limbs 64 [b0, b1, b2, b3]
             2**512 && true;
assume limbs 64 [x8, x9, x10, x19, x15, x16, x17, x18] =
       (limbs 64 [a0, a1, a2, a3] + limbs 64 [a4, a5, a6, a7]) *
       (limbs 64 [b0, b1, b2, b3] + limbs 64 [b4, b5, b6, b7]) -
       limbs 64 [a0, a1, a2, a3] * limbs 64 [b0, b1, b2, b3] && true;

(* add	x0, x0, #0x20                               #! PC = 0xaaaaaaab6284 *)
adds dontcare x0 x0 0x20@uint64;

(* NOTE: MUL256_KARATSUBA_COMBA START *)

(* adds	x3, x3, x5                                 #! PC = 0xaaaaaaab6288 *)
adds carry x3 x3 x5;
(* adcs	x4, x4, x6                                 #! PC = 0xaaaaaaab628c *)
adcs carry x4 x4 x6 carry;
(* adc	x28, xzr, xzr                               #! PC = 0xaaaaaaab6290 *)
adc x28 0@uint64 0@uint64 carry;
(* adds	x1, x11, x13                               #! PC = 0xaaaaaaab6294 *)
adds carry x1 x11 x13;
(* adcs	x29, x12, x14                              #! PC = 0xaaaaaaab6298 *)
adcs carry x29 x12 x14 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xaaaaaaab629c *)
adc x7 0@uint64 0@uint64 carry;
(* neg	x22, x28                                    #! PC = 0xaaaaaaab62a0 *)
subc dontcare x22 0@uint64 x28;
(* neg	x23, x7                                     #! PC = 0xaaaaaaab62a4 *)
subc dontcare x23 0@uint64 x7;
(* and	x20, x1, x22                                #! PC = 0xaaaaaaab62a8 *)
and x20@uint64 x1 x22;
(* and	x21, x29, x22                               #! PC = 0xaaaaaaab62ac *)
and x21@uint64 x29 x22;
(* and	x24, x3, x23                                #! PC = 0xaaaaaaab62b0 *)
and x24@uint64 x3 x23;
(* and	x25, x4, x23                                #! PC = 0xaaaaaaab62b4 *)
and x25@uint64 x4 x23;

(* NOTE: summary *)
assert true
    && and [ x28*(x28-1@64) = 0@64, x7*(x7-1@64) = 0@64,
             limbs 64 [x20, x21] = uext x28 64 * limbs 64 [x1, x29],
             limbs 64 [x24, x25] = uext  x7 64 * limbs 64 [ x3,  x4] ];
assume and [ x28*(x28-1) = 0, x7*(x7-1) = 0,
             limbs 64 [x20, x21] = x28 * limbs 64 [ x1, x29],
             limbs 64 [x24, x25] =  x7 * limbs 64 [ x3,  x4] ]
    && true;

(* mul	x22, x3, x1                                 #! PC = 0xaaaaaaab62b8 *)
mull Hx3x1 x22 x3 x1;
(* mul	x23, x3, x29                                #! PC = 0xaaaaaaab62bc *)
mull Hx3x29 x23 x3 x29;
(* and	x28, x28, x7                                #! PC = 0xaaaaaaab62c0 *)

ghost x28ccc@uint64 : x28ccc = x28 && x28ccc = x28;

and x28@uint64 x28 x7;

(* NOTE: summary *)
assert true && x28 = x28ccc*x7;
assume x28 = x28ccc*x7 && true;

(* adds	x20, x24, x20                              #! PC = 0xaaaaaaab62c4 *)
adds carry x20 x24 x20;
(* umulh	x24, x3, x29                              #! PC = 0xaaaaaaab62c8 *)
mov x24 Hx3x29;
(* adcs	x21, x25, x21                              #! PC = 0xaaaaaaab62cc *)
adcs carry x21 x25 x21 carry;
(* umulh	x25, x3, x1                               #! PC = 0xaaaaaaab62d0 *)
mov x25 Hx3x1;
(* adc	x28, x28, xzr                               #! PC = 0xaaaaaaab62d4 *)
adc x28 x28 0@uint64 carry;
(* mul	x3, x4, x1                                  #! PC = 0xaaaaaaab62d8 *)
mull Hx4x1 x3 x4 x1;
(* umulh	x1, x4, x1                                #! PC = 0xaaaaaaab62dc *)
mov x1 Hx4x1;
(* adds	x23, x23, x25                              #! PC = 0xaaaaaaab62e0 *)
adds carry x23 x23 x25;
(* adc	x24, x24, xzr                               #! PC = 0xaaaaaaab62e4 *)
adc x24 x24 0@uint64 carry;
(* mul	x7, x4, x29                                 #! PC = 0xaaaaaaab62e8 *)
mull Hx4x29 x7 x4 x29;
(* umulh	x29, x4, x29                              #! PC = 0xaaaaaaab62ec *)
mov x29 Hx4x29;
(* adds	x23, x23, x3                               #! PC = 0xaaaaaaab62f0 *)
adds carry x23 x23 x3;
(* adcs	x24, x24, x1                               #! PC = 0xaaaaaaab62f4 *)
adcs carry x24 x24 x1 carry;
(* adc	x25, xzr, xzr                               #! PC = 0xaaaaaaab62f8 *)
adc x25 0@uint64 0@uint64 carry;
(* adds	x24, x24, x7                               #! PC = 0xaaaaaaab62fc *)
adds carry x24 x24 x7;
(* adc	x25, x25, x29                               #! PC = 0xaaaaaaab6300 *)
adc x25 x25 x29 carry;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe918; Value = 0x38ea5a3e499db4dc; PC = 0xaaaaaaab6304 *)
mov x3 L0xffffffffe918;
mov x4 L0xffffffffe920;
(* adds	x24, x20, x24                              #! PC = 0xaaaaaaab6308 *)
adds carry x24 x20 x24;
(* umulh	x7, x3, x11                               #! PC = 0xaaaaaaab630c *)
(* NOTE: merge with mul x20, x3, x11 *)
(* mov x7 Hx3x11; *)
(* umulh	x29, x3, x12                              #! PC = 0xaaaaaaab6310 *)
(* NOTE: merge with mul x21, x3, x12 *)
(* mov x29 Hx3x12; *)
(* adcs	x25, x21, x25                              #! PC = 0xaaaaaaab6314 *)
adcs carry x25 x21 x25 carry;
(* mul	x20, x3, x11                                #! PC = 0xaaaaaaab6318 *)
(* mull Hx3x11 x20 x3 x11; *)
mull x7 x20 x3 x11;
(* mul	x21, x3, x12                                #! PC = 0xaaaaaaab631c *)
(* mull Hx3x12 x21 x3 x12; *)
mull x29 x21 x3 x12;
(* adc	x28, x28, xzr                               #! PC = 0xaaaaaaab6320 *)
adc x28 x28 0@uint64 carry;
(* mul	x3, x4, x11                                 #! PC = 0xaaaaaaab6324 *)
mull Hx4x11 x3 x4 x11;
(* umulh	x11, x4, x11                              #! PC = 0xaaaaaaab6328 *)
mov x11 Hx4x11;
(* adds	x21, x21, x7                               #! PC = 0xaaaaaaab632c *)
adds carry x21 x21 x7;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab6330 *)
adc x29 x29 0@uint64 carry;
(* mul	x1, x4, x12                                 #! PC = 0xaaaaaaab6334 *)
mull Hx4x12 x1 x4 x12;
(* umulh	x12, x4, x12                              #! PC = 0xaaaaaaab6338 *)
mov x12 Hx4x12;
(* adds	x21, x21, x3                               #! PC = 0xaaaaaaab633c *)
adds carry x21 x21 x3;
(* adcs	x29, x29, x11                              #! PC = 0xaaaaaaab6340 *)
adcs carry x29 x29 x11 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xaaaaaaab6344 *)
adc x7 0@uint64 0@uint64 carry;
(* adds	x29, x29, x1                               #! PC = 0xaaaaaaab6348 *)
adds carry x29 x29 x1;
(* adc	x7, x7, x12                                 #! PC = 0xaaaaaaab634c *)
adc x7 x7 x12 carry;
(* mul	x3, x5, x13                                 #! PC = 0xaaaaaaab6350 *)
mull Hx5x13 x3 x5 x13;
(* umulh	x11, x5, x13                              #! PC = 0xaaaaaaab6354 *)
mov x11 Hx5x13;
(* subs	x22, x22, x20                              #! PC = 0xaaaaaaab6358 *)
subc carry x22 x22 x20;
(* sbcs	x23, x23, x21                              #! PC = 0xaaaaaaab635c *)
sbcs carry x23 x23 x21 carry;
(* sbcs	x24, x24, x29                              #! PC = 0xaaaaaaab6360 *)
sbcs carry x24 x24 x29 carry;
(* mul	x4, x5, x14                                 #! PC = 0xaaaaaaab6364 *)
mull Hx5x14 x4 x5 x14;
(* umulh	x1, x5, x14                               #! PC = 0xaaaaaaab6368 *)
mov x1 Hx5x14;
(* sbcs	x25, x25, x7                               #! PC = 0xaaaaaaab636c *)
sbcs carry x25 x25 x7 carry;
(* sbc	x28, x28, xzr                               #! PC = 0xaaaaaaab6370 *)
sbcs docare x28 x28 0@uint64 carry;

(* NOTE: must carry *)
(* TODO: assert true && docare = 1@1; *)
assume docare = 1 && true;

(* mul	x5, x6, x13                                 #! PC = 0xaaaaaaab6374 *)
mull Hx6x13 x5 x6 x13;
(* umulh	x13, x6, x13                              #! PC = 0xaaaaaaab6378 *)
mov x13 Hx6x13;
(* adds	x4, x4, x11                                #! PC = 0xaaaaaaab637c *)
adds carry x4 x4 x11;
(* adc	x1, x1, xzr                                 #! PC = 0xaaaaaaab6380 *)
adc x1 x1 0@uint64 carry;
(* mul	x12, x6, x14                                #! PC = 0xaaaaaaab6384 *)
mull Hx6x14 x12 x6 x14;
(* umulh	x14, x6, x14                              #! PC = 0xaaaaaaab6388 *)
mov x14 Hx6x14;
(* adds	x4, x4, x5                                 #! PC = 0xaaaaaaab638c *)
adds carry x4 x4 x5;
(* adcs	x1, x1, x13                                #! PC = 0xaaaaaaab6390 *)
adcs carry x1 x1 x13 carry;
(* adc	x11, xzr, xzr                               #! PC = 0xaaaaaaab6394 *)
adc x11 0@uint64 0@uint64 carry;
(* adds	x1, x1, x12                                #! PC = 0xaaaaaaab6398 *)
adds carry x1 x1 x12;
(* adc	x11, x11, x14                               #! PC = 0xaaaaaaab639c *)
adc x11 x11 x14 carry;
(* subs	x22, x22, x3                               #! PC = 0xaaaaaaab63a0 *)
subc carry x22 x22 x3;
(* sbcs	x23, x23, x4                               #! PC = 0xaaaaaaab63a4 *)
sbcs carry x23 x23 x4 carry;
(* sbcs	x24, x24, x1                               #! PC = 0xaaaaaaab63a8 *)
sbcs carry x24 x24 x1 carry;
(* sbcs	x25, x25, x11                              #! PC = 0xaaaaaaab63ac *)
sbcs carry x25 x25 x11 carry;
(* sbc	x28, x28, xzr                               #! PC = 0xaaaaaaab63b0 *)
sbcs docare x28 x28 0@uint64 carry;

(* NOTE: must carry *)
(* TODO: assert true && docare = 1@1; *)
assume docare = 1 && true;

(* adds	x22, x22, x29                              #! PC = 0xaaaaaaab63b4 *)
adds carry x22 x22 x29;
(* adcs	x23, x23, x7                               #! PC = 0xaaaaaaab63b8 *)
adcs carry x23 x23 x7 carry;
(* adcs	x24, x24, x3                               #! PC = 0xaaaaaaab63bc *)
adcs carry x24 x24 x3 carry;
(* adcs	x25, x25, x4                               #! PC = 0xaaaaaaab63c0 *)
adcs carry x25 x25 x4 carry;
(* adcs	x1, x28, x1                                #! PC = 0xaaaaaaab63c4 *)
adcs carry x1 x28 x1 carry;
(* adc	x7, x11, xzr                                #! PC = 0xaaaaaaab63c8 *)
adc x7 x11 0@uint64 carry;

(* NOTE: MUL256_KARATSUBA_COMBA END *)

(* NOTE: summary *)
assert limbs 64 [x20, x21, x22, x23, x24, x25, x1, x7] =
       limbs 64 [a4, a5, a6, a7] * limbs 64 [b4, b5, b6, b7] && true;

(* subs	x8, x8, x20                                #! PC = 0xaaaaaaab63cc *)
subc carry x8 x8 x20;
(* sbcs	x9, x9, x21                                #! PC = 0xaaaaaaab63d0 *)
sbcs carry x9 x9 x21 carry;
(* ldp	x3, x4, [x2, #32]                           #! EA = L0xffffffffe688; Value = 0xec03218ef990e29b; PC = 0xaaaaaaab63d4 *)
mov x3 L0xffffffffe688;
mov x4 L0xffffffffe690;
(* sbcs	x10, x10, x22                              #! PC = 0xaaaaaaab63d8 *)
sbcs carry x10 x10 x22 carry;
(* sbcs	x19, x19, x23                              #! PC = 0xaaaaaaab63dc *)
sbcs carry x19 x19 x23 carry;
(* ldr	x29, [sp, #80]                              #! EA = L0xffffffffe630; Value = 0x0000ffffffffe640; PC = 0xaaaaaaab63e0 *)
mov x29 L0xffffffffe630;
(* sbcs	x15, x15, x24                              #! PC = 0xaaaaaaab63e4 *)
sbcs carry x15 x15 x24 carry;
(* sbcs	x16, x16, x25                              #! PC = 0xaaaaaaab63e8 *)
sbcs carry x16 x16 x25 carry;
(* sbcs	x17, x17, x1                               #! PC = 0xaaaaaaab63ec *)
sbcs carry x17 x17 x1 carry;
(* sbc	x18, x18, x7                                #! PC = 0xaaaaaaab63f0 *)
sbcs docare x18 x18 x7 carry;

(* NOTE: must carry *)
(* TODO: assert true && docare = 1@1; *)
assume docare = 1 && true;

(* adds	x8, x8, x3                                 #! PC = 0xaaaaaaab63f4 *)
adds carry x8 x8 x3;
(* adcs	x9, x9, x4                                 #! PC = 0xaaaaaaab63f8 *)
adcs carry x9 x9 x4 carry;
(* stp	x8, x9, [x2, #32]                           #! EA = L0xffffffffe688; PC = 0xaaaaaaab63fc *)
mov L0xffffffffe688 x8;
mov L0xffffffffe690 x9;
(* adcs	x10, x10, x26                              #! PC = 0xaaaaaaab6400 *)
adcs carry x10 x10 x26 carry;
(* adcs	x19, x19, x27                              #! PC = 0xaaaaaaab6404 *)
adcs carry x19 x19 x27 carry;
(* stp	x10, x19, [x2, #48]                         #! EA = L0xffffffffe698; PC = 0xaaaaaaab6408 *)
mov L0xffffffffe698 x10;
mov L0xffffffffe6a0 x19;
(* adcs	x15, x15, x20                              #! PC = 0xaaaaaaab640c *)
adcs carry x15 x15 x20 carry;
(* ldp	x19, x20, [sp]                              #! EA = L0xffffffffe5e0; Value = 0x0000ffffffffe668; PC = 0xaaaaaaab6410 *)
mov x19 L0xffffffffe5e0;
mov x20 L0xffffffffe5e8;
(* ldp	x27, x28, [sp, #64]                         #! EA = L0xffffffffe620; Value = 0x0000ffffffffe938; PC = 0xaaaaaaab6414 *)
mov x27 L0xffffffffe620;
mov x28 L0xffffffffe628;
(* adcs	x16, x16, x21                              #! PC = 0xaaaaaaab6418 *)
adcs carry x16 x16 x21 carry;
(* stp	x15, x16, [x2, #64]                         #! EA = L0xffffffffe6a8; PC = 0xaaaaaaab641c *)
mov L0xffffffffe6a8 x15;
mov L0xffffffffe6b0 x16;
(* adcs	x17, x17, x22                              #! PC = 0xaaaaaaab6420 *)
adcs carry x17 x17 x22 carry;
(* ldp	x21, x22, [sp, #16]                         #! EA = L0xffffffffe5f0; Value = 0x0000ffffffffe778; PC = 0xaaaaaaab6424 *)
mov x21 L0xffffffffe5f0;
mov x22 L0xffffffffe5f8;
(* adcs	x18, x18, x23                              #! PC = 0xaaaaaaab6428 *)
adcs carry x18 x18 x23 carry;
(* stp	x17, x18, [x2, #80]                         #! EA = L0xffffffffe6b8; PC = 0xaaaaaaab642c *)
mov L0xffffffffe6b8 x17;
mov L0xffffffffe6c0 x18;
(* adcs	x24, x24, xzr                              #! PC = 0xaaaaaaab6430 *)
adcs carry x24 x24 0@uint64 carry;

(* NOTE: store x25 before adding carry? *)
(* FIX *)
(* adcs	x25, x25, xzr                              #! PC = 0xaaaaaaab6438 *)
adcs carry x25 x25 0@uint64 carry;

(* stp	x24, x25, [x2, #96]                         #! EA = L0xffffffffe6c8; PC = 0xaaaaaaab6434 *)
mov L0xffffffffe6c8 x24;
mov L0xffffffffe6d0 x25;
(* ORIGINAL *)
(* adcs	x25, x25, xzr                              #! PC = 0xaaaaaaab6438 *)
(* adcs carry x25 x25 0@uint64 carry; *)

(* ldp	x23, x24, [sp, #32]                         #! EA = L0xffffffffe600; Value = 0x0000ffffffffe8b8; PC = 0xaaaaaaab643c *)
mov x23 L0xffffffffe600;
mov x24 L0xffffffffe608;
(* adcs	x1, x1, xzr                                #! PC = 0xaaaaaaab6440 *)
adcs carry x1 x1 0@uint64 carry;
(* ldp	x25, x26, [sp, #48]                         #! EA = L0xffffffffe610; Value = 0x0000ffffffffe8f8; PC = 0xaaaaaaab6444 *)
mov x25 L0xffffffffe610;
mov x26 L0xffffffffe618;
(* adc	x7, x7, xzr                                 #! PC = 0xaaaaaaab6448 *)
adc x7 x7 0@uint64 carry;
(* stp	x1, x7, [x2, #112]                          #! EA = L0xffffffffe6d8; PC = 0xaaaaaaab644c *)
mov L0xffffffffe6d8 x1;
mov L0xffffffffe6e0 x7;
(* add	sp, sp, #0x60                               #! PC = 0xaaaaaaab6450 *)
adds dontcare sp sp 0x60@uint64;
(* #! <- SP = 0xffffffffe640 *)
#! 0xffffffffe640 = 0xffffffffe640;
(* #ret                                            #! PC = 0xaaaaaaab6454 *)
#ret                                            #! 0xaaaaaaab6454 = 0xaaaaaaab6454;

(* NOTE: summary of full multiplication *)
cut and [m0=0xFFFFFFFFFFFFFFFF, m1=0xFFFFFFFFFFFFFFFF,
         m2=0xFFFFFFFFFFFFFFFF, m3=0xABFFFFFFFFFFFFFF,
         m4=0x13085BDA2211E7A0, m5=0x1B9BF6C87B7E7DAF,
         m6=0x6045C6BDDA77A4D0, m7=0x004066F541811E1E,
         limbs 64 [L0xffffffffe668, L0xffffffffe670, L0xffffffffe678,
                   L0xffffffffe680, L0xffffffffe688, L0xffffffffe690,
                   L0xffffffffe698, L0xffffffffe6a0, L0xffffffffe6a8,
                   L0xffffffffe6b0, L0xffffffffe6b8, L0xffffffffe6c0,
                   L0xffffffffe6c8, L0xffffffffe6d0, L0xffffffffe6d8,
                   L0xffffffffe6e0] =
         limbs 64 [a0, a1, a2, a3, a4, a5, a6, a7] *
         limbs 64 [b0, b1, b2, b3, b4, b5, b6, b7]]
 && and [m0=0xFFFFFFFFFFFFFFFF@64, m1=0xFFFFFFFFFFFFFFFF@64,
         m2=0xFFFFFFFFFFFFFFFF@64, m3=0xABFFFFFFFFFFFFFF@64,
         m4=0x13085BDA2211E7A0@64, m5=0x1B9BF6C87B7E7DAF@64,
         m6=0x6045C6BDDA77A4D0@64, m7=0x004066F541811E1E@64,
         limbs 64 [L0xffffffffe668, L0xffffffffe670, L0xffffffffe678,
                   L0xffffffffe680, L0xffffffffe688, L0xffffffffe690,
                   L0xffffffffe698, L0xffffffffe6a0, L0xffffffffe6a8,
                   L0xffffffffe6b0, L0xffffffffe6b8, L0xffffffffe6c0,
                   L0xffffffffe6c8, L0xffffffffe6d0, L0xffffffffe6d8,
                   L0xffffffffe6e0] <u (2**1008)@1024];

(* mov	x1, x20                                     #! PC = 0xaaaaaaaadee4 *)
mov x1 x20;
(* mov	x0, x19                                     #! PC = 0xaaaaaaaadee8 *)
mov x0 x19;
(* #bl	0xaaaaaaab5ba4 <rdc_mont>                   #! PC = 0xaaaaaaaadeec *)
#bl	0xaaaaaaab5ba4 <rdc_mont>                   #! 0xaaaaaaaadeec = 0xaaaaaaaadeec;
(* #! -> SP = 0xffffffffe640 *)
#! 0xffffffffe640 = 0xffffffffe640;
(* #b	0xaaaaaaab6458 <rdc503_asm>                  #! PC = 0xaaaaaaab5ba4 *)
#b	0xaaaaaaab6458 <rdc503_asm>                  #! 0xaaaaaaab5ba4 = 0xaaaaaaab5ba4;
(* sub	sp, sp, #0x60                               #! PC = 0xaaaaaaab6458 *)
subc dontcare sp sp 0x60@uint64;
(* stp	x23, x24, [sp, #32]                         #! EA = L0xffffffffe600; PC = 0xaaaaaaab645c *)
mov L0xffffffffe600 x23;
mov L0xffffffffe608 x24;
(* stp	x25, x26, [sp, #48]                         #! EA = L0xffffffffe610; PC = 0xaaaaaaab6460 *)
mov L0xffffffffe610 x25;
mov L0xffffffffe618 x26;
(* ldp	x2, x3, [x0]                                #! EA = L0xffffffffe668; Value = 0xd1896560cc0a31e0; PC = 0xaaaaaaab6464 *)
mov x2 L0xffffffffe668;
mov x3 L0xffffffffe670;
(* ldr	x24, 0xaaaaaaab5c48 <p503p1_nz_s8>          #! PC = 0xaaaaaaab6468 *)
mov x24 L0xaaaaaaab5c48;
(* ldr	x25, 0xaaaaaaab5c50 <p503p1_nz_s8+8>        #! PC = 0xaaaaaaab646c *)
mov x25 L0xaaaaaaab5c50;
(* stp	x19, x20, [sp]                              #! EA = L0xffffffffe5e0; PC = 0xaaaaaaab6470 *)
mov L0xffffffffe5e0 x19;
mov L0xffffffffe5e8 x20;
(* stp	x21, x22, [sp, #16]                         #! EA = L0xffffffffe5f0; PC = 0xaaaaaaab6474 *)
mov L0xffffffffe5f0 x21;
mov L0xffffffffe5f8 x22;
(* mul	x4, x2, x24                                 #! PC = 0xaaaaaaab6478 *)
mull Hx2x24 x4 x2 x24;
(* umulh	x7, x2, x24                               #! PC = 0xaaaaaaab647c *)
mov x7 Hx2x24;
(* stp	x27, x28, [sp, #64]                         #! EA = L0xffffffffe620; PC = 0xaaaaaaab6480 *)
mov L0xffffffffe620 x27;
mov L0xffffffffe628 x28;
(* stp	x29, x30, [sp, #80]                         #! EA = L0xffffffffe630; PC = 0xaaaaaaab6484 *)
mov L0xffffffffe630 x29;
mov L0xffffffffe638 x30;
(* ldr	x26, 0xaaaaaaab5c58 <p503p1_nz_s8+16>       #! PC = 0xaaaaaaab6488 *)
mov x26 L0xaaaaaaab5c58;
(* ldr	x27, 0xaaaaaaab5c60 <p503p1_nz_s8+24>       #! PC = 0xaaaaaaab648c *)
mov x27 L0xaaaaaaab5c60;
(* mul	x5, x2, x25                                 #! PC = 0xaaaaaaab6490 *)
mull Hx2x25 x5 x2 x25;
(* umulh	x6, x2, x25                               #! PC = 0xaaaaaaab6494 *)
mov x6 Hx2x25;
(* mul	x28, x3, x24                                #! PC = 0xaaaaaaab6498 *)
mull Hx3x24 x28 x3 x24;
(* umulh	x29, x3, x24                              #! PC = 0xaaaaaaab649c *)
mov x29 Hx3x24;
(* adds	x5, x5, x7                                 #! PC = 0xaaaaaaab64a0 *)
adds carry x5 x5 x7;
(* adc	x6, x6, xzr                                 #! PC = 0xaaaaaaab64a4 *)
adc x6 x6 0@uint64 carry;
(* mul	x30, x2, x26                                #! PC = 0xaaaaaaab64a8 *)
mull Hx2x26 x30 x2 x26;
(* umulh	x10, x2, x26                              #! PC = 0xaaaaaaab64ac *)
mov x10 Hx2x26;
(* adds	x5, x5, x28                                #! PC = 0xaaaaaaab64b0 *)
adds carry x5 x5 x28;
(* adcs	x6, x6, x29                                #! PC = 0xaaaaaaab64b4 *)
adcs carry x6 x6 x29 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xaaaaaaab64b8 *)
adc x7 0@uint64 0@uint64 carry;
(* mul	x28, x3, x25                                #! PC = 0xaaaaaaab64bc *)
mull Hx3x25 x28 x3 x25;
(* umulh	x29, x3, x25                              #! PC = 0xaaaaaaab64c0 *)
mov x29 Hx3x25;
(* adds	x6, x6, x30                                #! PC = 0xaaaaaaab64c4 *)
adds carry x6 x6 x30;
(* adcs	x7, x7, x10                                #! PC = 0xaaaaaaab64c8 *)
adcs carry x7 x7 x10 carry;
(* adc	x8, xzr, xzr                                #! PC = 0xaaaaaaab64cc *)
adc x8 0@uint64 0@uint64 carry;
(* mul	x30, x2, x27                                #! PC = 0xaaaaaaab64d0 *)
mull Hx2x27 x30 x2 x27;
(* umulh	x10, x2, x27                              #! PC = 0xaaaaaaab64d4 *)
mov x10 Hx2x27;
(* adds	x6, x6, x28                                #! PC = 0xaaaaaaab64d8 *)
adds carry x6 x6 x28;
(* adcs	x7, x7, x29                                #! PC = 0xaaaaaaab64dc *)
adcs carry x7 x7 x29 carry;
(* adc	x8, x8, xzr                                 #! PC = 0xaaaaaaab64e0 *)
adc x8 x8 0@uint64 carry;
(* mul	x28, x3, x26                                #! PC = 0xaaaaaaab64e4 *)
mull Hx3x26 x28 x3 x26;
(* umulh	x29, x3, x26                              #! PC = 0xaaaaaaab64e8 *)
mov x29 Hx3x26;
(* adds	x7, x7, x30                                #! PC = 0xaaaaaaab64ec *)
adds carry x7 x7 x30;
(* adcs	x8, x8, x10                                #! PC = 0xaaaaaaab64f0 *)
adcs carry x8 x8 x10 carry;
(* adc	x9, xzr, xzr                                #! PC = 0xaaaaaaab64f4 *)
adc x9 0@uint64 0@uint64 carry;
(* mul	x30, x3, x27                                #! PC = 0xaaaaaaab64f8 *)
mull Hx3x27 x30 x3 x27;
(* umulh	x10, x3, x27                              #! PC = 0xaaaaaaab64fc *)
mov x10 Hx3x27;
(* adds	x7, x7, x28                                #! PC = 0xaaaaaaab6500 *)
adds carry x7 x7 x28;
(* adcs	x8, x8, x29                                #! PC = 0xaaaaaaab6504 *)
adcs carry x8 x8 x29 carry;
(* adc	x9, x9, xzr                                 #! PC = 0xaaaaaaab6508 *)
adc x9 x9 0@uint64 carry;
(* adds	x8, x8, x30                                #! PC = 0xaaaaaaab650c *)
adds carry x8 x8 x30;
(* adc	x9, x9, x10                                 #! PC = 0xaaaaaaab6510 *)
adc x9 x9 x10 carry;

(* NOTE: (a1:a0)*(p503p1_nz_s8) *)
assert limbs 64 [x4, x5, x6, x7, x8, x9] =
       limbs 64 [L0xffffffffe668, L0xffffffffe670] *
       limbs 64 [ 0x85BDA2211E7A0AC, 0x9BF6C87B7E7DAF13,
                 0x45C6BDDA77A4D01B, 0x4066F541811E1E60] && true;

(* orr	x10, xzr, x9, lsr #8                        #! PC = 0xaaaaaaab6514 *)
split x10 Lx9 x9 8;
(* lsl	x9, x9, #56                                 #! PC = 0xaaaaaaab6518 *)
shl x9 Lx9 56@uint64;
(* orr	x9, x9, x8, lsr #8                          #! PC = 0xaaaaaaab651c *)
split Hx8 Lx8 x8 8;
add x9 x9 Hx8;
(* lsl	x8, x8, #56                                 #! PC = 0xaaaaaaab6520 *)
shl x8 Lx8 56@uint64;
(* orr	x8, x8, x7, lsr #8                          #! PC = 0xaaaaaaab6524 *)
split Hx7 Lx7 x7 8;
add x8 x8 Hx7;
(* lsl	x7, x7, #56                                 #! PC = 0xaaaaaaab6528 *)
shl x7 Lx7 56@uint64;
(* orr	x7, x7, x6, lsr #8                          #! PC = 0xaaaaaaab652c *)
split Hx6 Lx6 x6 8;
add x7 x7 Hx6;
(* lsl	x6, x6, #56                                 #! PC = 0xaaaaaaab6530 *)
shl x6 Lx6 56@uint64;
(* ldp	x3, x11, [x0, #16]                          #! EA = L0xffffffffe678; Value = 0x1725d4fc624583d6; PC = 0xaaaaaaab6534 *)
mov x3 L0xffffffffe678;
mov x11 L0xffffffffe680;
(* orr	x6, x6, x5, lsr #8                          #! PC = 0xaaaaaaab6538 *)
split Hx5 Lx5 x5 8;
add x6 x6 Hx5;
(* lsl	x5, x5, #56                                 #! PC = 0xaaaaaaab653c *)
shl x5 Lx5 56@uint64;
(* ldp	x12, x13, [x0, #32]                         #! EA = L0xffffffffe688; Value = 0x4c5339b330db9043; PC = 0xaaaaaaab6540 *)
mov x12 L0xffffffffe688;
mov x13 L0xffffffffe690;
(* orr	x5, x5, x4, lsr #8                          #! PC = 0xaaaaaaab6544 *)
split Hx4 Lx4 x4 8;
add x5 x5 Hx4;
(* lsl	x4, x4, #56                                 #! PC = 0xaaaaaaab6548 *)
shl x4 Lx4 56@uint64;

(* NOTE: shifted *)
assert limbs 64 [0, 0, 0, x4, x5, x6, x7, x8, x9, x10] =
       limbs 64 [L0xffffffffe668, L0xffffffffe670] *
       (1 + limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7]) && true;

(* ldp	x14, x15, [x0, #48]                         #! EA = L0xffffffffe698; Value = 0x8b8680cfe94a754c; PC = 0xaaaaaaab654c *)
mov x14 L0xffffffffe698;
mov x15 L0xffffffffe6a0;
(* adds	x11, x4, x11                               #! PC = 0xaaaaaaab6550 *)
adds carry x11 x4 x11;
(* adcs	x12, x5, x12                               #! PC = 0xaaaaaaab6554 *)
adcs carry x12 x5 x12 carry;
(* ldp	x16, x17, [x0, #64]                         #! EA = L0xffffffffe6a8; Value = 0xb61569c8c0cd5434; PC = 0xaaaaaaab6558 *)
mov x16 L0xffffffffe6a8;
mov x17 L0xffffffffe6b0;
(* adcs	x13, x6, x13                               #! PC = 0xaaaaaaab655c *)
adcs carry x13 x6 x13 carry;
(* adcs	x14, x7, x14                               #! PC = 0xaaaaaaab6560 *)
adcs carry x14 x7 x14 carry;
(* ldp	x18, x19, [x0, #80]                         #! EA = L0xffffffffe6b8; Value = 0xaf03e9e35e575107; PC = 0xaaaaaaab6564 *)
mov x18 L0xffffffffe6b8;
mov x19 L0xffffffffe6c0;
(* adcs	x15, x8, x15                               #! PC = 0xaaaaaaab6568 *)
adcs carry x15 x8 x15 carry;
(* mul	x4, x3, x24                                 #! PC = 0xaaaaaaab656c *)
mull Hx3x24 x4 x3 x24;
(* umulh	x7, x3, x24                               #! PC = 0xaaaaaaab6570 *)
mov x7 Hx3x24;
(* adcs	x16, x9, x16                               #! PC = 0xaaaaaaab6574 *)
adcs carry x16 x9 x16 carry;
(* adcs	x17, x10, x17                              #! PC = 0xaaaaaaab6578 *)
adcs carry x17 x10 x17 carry;
(* ldp	x20, x21, [x0, #96]                         #! EA = L0xffffffffe6c8; Value = 0x243aba83a2e87f54; PC = 0xaaaaaaab657c *)
mov x20 L0xffffffffe6c8;
mov x21 L0xffffffffe6d0;
(* adcs	x18, xzr, x18                              #! PC = 0xaaaaaaab6580 *)
adcs carry x18 0@uint64 x18 carry;
(* adcs	x19, xzr, x19                              #! PC = 0xaaaaaaab6584 *)
adcs carry x19 0@uint64 x19 carry;
(* ldp	x22, x23, [x0, #112]                        #! EA = L0xffffffffe6d8; Value = 0xdde3441382b1229f; PC = 0xaaaaaaab6588 *)
mov x22 L0xffffffffe6d8;
mov x23 L0xffffffffe6e0;
(* mul	x5, x3, x25                                 #! PC = 0xaaaaaaab658c *)
mull Hx3x25 x5 x3 x25;
(* umulh	x6, x3, x25                               #! PC = 0xaaaaaaab6590 *)
mov x6 Hx3x25;
(* adcs	x20, xzr, x20                              #! PC = 0xaaaaaaab6594 *)
adcs carry x20 0@uint64 x20 carry;
(* adcs	x21, xzr, x21                              #! PC = 0xaaaaaaab6598 *)
adcs carry x21 0@uint64 x21 carry;
(* adcs	x22, xzr, x22                              #! PC = 0xaaaaaaab659c *)
adcs carry x22 0@uint64 x22 carry;
(* adc	x23, xzr, x23                               #! PC = 0xaaaaaaab65a0 *)
adc x23 0@uint64 x23 carry;

(* NOTE: montgomery reduction *)
assert eqmod limbs 64 [  0,   0,  x3, x11, x12, x13, x14, x15,
                       x16, x17, x18, x19, x20, x21, x22, x23]
             limbs 64 [L0xffffffffe668, L0xffffffffe670, L0xffffffffe678,
                       L0xffffffffe680, L0xffffffffe688, L0xffffffffe690,
                       L0xffffffffe698, L0xffffffffe6a0, L0xffffffffe6a8,
                       L0xffffffffe6b0, L0xffffffffe6b8, L0xffffffffe6c0,
                       L0xffffffffe6c8, L0xffffffffe6d0, L0xffffffffe6d8,
                       L0xffffffffe6e0]
             limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7] && true;

(* mul	x28, x11, x24                               #! PC = 0xaaaaaaab65a4 *)
mull Hx11x24 x28 x11 x24;
(* umulh	x29, x11, x24                             #! PC = 0xaaaaaaab65a8 *)
mov x29 Hx11x24;
(* adds	x5, x5, x7                                 #! PC = 0xaaaaaaab65ac *)
adds carry x5 x5 x7;
(* adc	x6, x6, xzr                                 #! PC = 0xaaaaaaab65b0 *)
adc x6 x6 0@uint64 carry;
(* mul	x30, x3, x26                                #! PC = 0xaaaaaaab65b4 *)
mull Hx3x26 x30 x3 x26;
(* umulh	x10, x3, x26                              #! PC = 0xaaaaaaab65b8 *)
mov x10 Hx3x26;
(* adds	x5, x5, x28                                #! PC = 0xaaaaaaab65bc *)
adds carry x5 x5 x28;
(* adcs	x6, x6, x29                                #! PC = 0xaaaaaaab65c0 *)
adcs carry x6 x6 x29 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xaaaaaaab65c4 *)
adc x7 0@uint64 0@uint64 carry;
(* mul	x28, x11, x25                               #! PC = 0xaaaaaaab65c8 *)
mull Hx11x25 x28 x11 x25;
(* umulh	x29, x11, x25                             #! PC = 0xaaaaaaab65cc *)
mov x29 Hx11x25;
(* adds	x6, x6, x30                                #! PC = 0xaaaaaaab65d0 *)
adds carry x6 x6 x30;
(* adcs	x7, x7, x10                                #! PC = 0xaaaaaaab65d4 *)
adcs carry x7 x7 x10 carry;
(* adc	x8, xzr, xzr                                #! PC = 0xaaaaaaab65d8 *)
adc x8 0@uint64 0@uint64 carry;
(* mul	x30, x3, x27                                #! PC = 0xaaaaaaab65dc *)
mull Hx3x27 x30 x3 x27;
(* umulh	x10, x3, x27                              #! PC = 0xaaaaaaab65e0 *)
mov x10 Hx3x27;
(* adds	x6, x6, x28                                #! PC = 0xaaaaaaab65e4 *)
adds carry x6 x6 x28;
(* adcs	x7, x7, x29                                #! PC = 0xaaaaaaab65e8 *)
adcs carry x7 x7 x29 carry;
(* adc	x8, x8, xzr                                 #! PC = 0xaaaaaaab65ec *)
adc x8 x8 0@uint64 carry;
(* mul	x28, x11, x26                               #! PC = 0xaaaaaaab65f0 *)
mull Hx11x26 x28 x11 x26;
(* umulh	x29, x11, x26                             #! PC = 0xaaaaaaab65f4 *)
mov x29 Hx11x26;
(* adds	x7, x7, x30                                #! PC = 0xaaaaaaab65f8 *)
adds carry x7 x7 x30;
(* adcs	x8, x8, x10                                #! PC = 0xaaaaaaab65fc *)
adcs carry x8 x8 x10 carry;
(* adc	x9, xzr, xzr                                #! PC = 0xaaaaaaab6600 *)
adc x9 0@uint64 0@uint64 carry;
(* mul	x30, x11, x27                               #! PC = 0xaaaaaaab6604 *)
mull Hx11x27 x30 x11 x27;
(* umulh	x10, x11, x27                             #! PC = 0xaaaaaaab6608 *)
mov x10 Hx11x27;
(* adds	x7, x7, x28                                #! PC = 0xaaaaaaab660c *)
adds carry x7 x7 x28;
(* adcs	x8, x8, x29                                #! PC = 0xaaaaaaab6610 *)
adcs carry x8 x8 x29 carry;
(* adc	x9, x9, xzr                                 #! PC = 0xaaaaaaab6614 *)
adc x9 x9 0@uint64 carry;
(* adds	x8, x8, x30                                #! PC = 0xaaaaaaab6618 *)
adds carry x8 x8 x30;
(* adc	x9, x9, x10                                 #! PC = 0xaaaaaaab661c *)
adc x9 x9 x10 carry;
(* orr	x10, xzr, x9, lsr #8                        #! PC = 0xaaaaaaab6620 *)
split x10 Lx9 x9 8;
(* lsl	x9, x9, #56                                 #! PC = 0xaaaaaaab6624 *)
shl x9 Lx9 56@uint64;
(* orr	x9, x9, x8, lsr #8                          #! PC = 0xaaaaaaab6628 *)
split Hx8 Lx8 x8 8;
add x9 x9 Hx8;
(* lsl	x8, x8, #56                                 #! PC = 0xaaaaaaab662c *)
shl x8 Lx8 56@uint64;
(* orr	x8, x8, x7, lsr #8                          #! PC = 0xaaaaaaab6630 *)
split Hx7 Lx7 x7 8;
add x8 x8 Hx7;
(* lsl	x7, x7, #56                                 #! PC = 0xaaaaaaab6634 *)
shl x7 Lx7 56@uint64;
(* orr	x7, x7, x6, lsr #8                          #! PC = 0xaaaaaaab6638 *)
split Hx6 Lx6 x6 8;
add x7 x7 Hx6;
(* lsl	x6, x6, #56                                 #! PC = 0xaaaaaaab663c *)
shl x6 Lx6 56@uint64;
(* orr	x6, x6, x5, lsr #8                          #! PC = 0xaaaaaaab6640 *)
split Hx5 Lx5 x5 8;
add x6 x6 Hx5;
(* lsl	x5, x5, #56                                 #! PC = 0xaaaaaaab6644 *)
shl x5 Lx5 56@uint64;
(* orr	x5, x5, x4, lsr #8                          #! PC = 0xaaaaaaab6648 *)
split Hx4 Lx4 x4 8;
add x5 x5 Hx4;
(* lsl	x4, x4, #56                                 #! PC = 0xaaaaaaab664c *)
shl x4 Lx4 56@uint64;

(* NOTE: shifted *)
assert limbs 64 [0, 0, 0, x4, x5, x6, x7, x8, x9, x10] =
       limbs 64 [x3, x11] *
       (1 + limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7]) && true;

(* adds	x13, x4, x13                               #! PC = 0xaaaaaaab6650 *)
adds carry x13 x4 x13;
(* adcs	x14, x5, x14                               #! PC = 0xaaaaaaab6654 *)
adcs carry x14 x5 x14 carry;
(* adcs	x15, x6, x15                               #! PC = 0xaaaaaaab6658 *)
adcs carry x15 x6 x15 carry;
(* adcs	x16, x7, x16                               #! PC = 0xaaaaaaab665c *)
adcs carry x16 x7 x16 carry;
(* mul	x4, x12, x24                                #! PC = 0xaaaaaaab6660 *)
mull Hx12x24 x4 x12 x24;
(* umulh	x7, x12, x24                              #! PC = 0xaaaaaaab6664 *)
mov x7 Hx12x24;
(* adcs	x17, x8, x17                               #! PC = 0xaaaaaaab6668 *)
adcs carry x17 x8 x17 carry;
(* adcs	x18, x9, x18                               #! PC = 0xaaaaaaab666c *)
adcs carry x18 x9 x18 carry;
(* adcs	x19, x10, x19                              #! PC = 0xaaaaaaab6670 *)
adcs carry x19 x10 x19 carry;
(* adcs	x20, xzr, x20                              #! PC = 0xaaaaaaab6674 *)
adcs carry x20 0@uint64 x20 carry;
(* mul	x5, x12, x25                                #! PC = 0xaaaaaaab6678 *)
mull Hx12x25 x5 x12 x25;
(* umulh	x6, x12, x25                              #! PC = 0xaaaaaaab667c *)
mov x6 Hx12x25;
(* adcs	x21, xzr, x21                              #! PC = 0xaaaaaaab6680 *)
adcs carry x21 0@uint64 x21 carry;
(* adcs	x22, xzr, x22                              #! PC = 0xaaaaaaab6684 *)
adcs carry x22 0@uint64 x22 carry;
(* adc	x23, xzr, x23                               #! PC = 0xaaaaaaab6688 *)
adc x23 0@uint64 x23 carry;

(* NOTE: montgomery reduction *)
assert eqmod limbs 64 [  0,   0,   0,   0, x12, x13, x14, x15,
                       x16, x17, x18, x19, x20, x21, x22, x23]
             limbs 64 [L0xffffffffe668, L0xffffffffe670, L0xffffffffe678,
                       L0xffffffffe680, L0xffffffffe688, L0xffffffffe690,
                       L0xffffffffe698, L0xffffffffe6a0, L0xffffffffe6a8,
                       L0xffffffffe6b0, L0xffffffffe6b8, L0xffffffffe6c0,
                       L0xffffffffe6c8, L0xffffffffe6d0, L0xffffffffe6d8,
                       L0xffffffffe6e0]
             limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7] && true;

(* mul	x28, x13, x24                               #! PC = 0xaaaaaaab668c *)
mull Hx13x24 x28 x13 x24;
(* umulh	x29, x13, x24                             #! PC = 0xaaaaaaab6690 *)
mov x29 Hx13x24;
(* adds	x5, x5, x7                                 #! PC = 0xaaaaaaab6694 *)
adds carry x5 x5 x7;
(* adc	x6, x6, xzr                                 #! PC = 0xaaaaaaab6698 *)
adc x6 x6 0@uint64 carry;
(* mul	x30, x12, x26                               #! PC = 0xaaaaaaab669c *)
mull Hx12x26 x30 x12 x26;
(* umulh	x10, x12, x26                             #! PC = 0xaaaaaaab66a0 *)
mov x10 Hx12x26;
(* adds	x5, x5, x28                                #! PC = 0xaaaaaaab66a4 *)
adds carry x5 x5 x28;
(* adcs	x6, x6, x29                                #! PC = 0xaaaaaaab66a8 *)
adcs carry x6 x6 x29 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xaaaaaaab66ac *)
adc x7 0@uint64 0@uint64 carry;
(* mul	x28, x13, x25                               #! PC = 0xaaaaaaab66b0 *)
mull Hx13x25 x28 x13 x25;
(* umulh	x29, x13, x25                             #! PC = 0xaaaaaaab66b4 *)
mov x29 Hx13x25;
(* adds	x6, x6, x30                                #! PC = 0xaaaaaaab66b8 *)
adds carry x6 x6 x30;
(* adcs	x7, x7, x10                                #! PC = 0xaaaaaaab66bc *)
adcs carry x7 x7 x10 carry;
(* adc	x8, xzr, xzr                                #! PC = 0xaaaaaaab66c0 *)
adc x8 0@uint64 0@uint64 carry;
(* mul	x30, x12, x27                               #! PC = 0xaaaaaaab66c4 *)
mull Hx12x27 x30 x12 x27;
(* umulh	x10, x12, x27                             #! PC = 0xaaaaaaab66c8 *)
mov x10 Hx12x27;
(* adds	x6, x6, x28                                #! PC = 0xaaaaaaab66cc *)
adds carry x6 x6 x28;
(* adcs	x7, x7, x29                                #! PC = 0xaaaaaaab66d0 *)
adcs carry x7 x7 x29 carry;
(* adc	x8, x8, xzr                                 #! PC = 0xaaaaaaab66d4 *)
adc x8 x8 0@uint64 carry;
(* mul	x28, x13, x26                               #! PC = 0xaaaaaaab66d8 *)
mull Hx13x26 x28 x13 x26;
(* umulh	x29, x13, x26                             #! PC = 0xaaaaaaab66dc *)
mov x29 Hx13x26;
(* adds	x7, x7, x30                                #! PC = 0xaaaaaaab66e0 *)
adds carry x7 x7 x30;
(* adcs	x8, x8, x10                                #! PC = 0xaaaaaaab66e4 *)
adcs carry x8 x8 x10 carry;
(* adc	x9, xzr, xzr                                #! PC = 0xaaaaaaab66e8 *)
adc x9 0@uint64 0@uint64 carry;
(* mul	x30, x13, x27                               #! PC = 0xaaaaaaab66ec *)
mull Hx13x27 x30 x13 x27;
(* umulh	x10, x13, x27                             #! PC = 0xaaaaaaab66f0 *)
mov x10 Hx13x27;
(* adds	x7, x7, x28                                #! PC = 0xaaaaaaab66f4 *)
adds carry x7 x7 x28;
(* adcs	x8, x8, x29                                #! PC = 0xaaaaaaab66f8 *)
adcs carry x8 x8 x29 carry;
(* adc	x9, x9, xzr                                 #! PC = 0xaaaaaaab66fc *)
adc x9 x9 0@uint64 carry;
(* adds	x8, x8, x30                                #! PC = 0xaaaaaaab6700 *)
adds carry x8 x8 x30;
(* adc	x9, x9, x10                                 #! PC = 0xaaaaaaab6704 *)
adc x9 x9 x10 carry;
(* orr	x10, xzr, x9, lsr #8                        #! PC = 0xaaaaaaab6708 *)
split x10 Lx9 x9 8;
(* lsl	x9, x9, #56                                 #! PC = 0xaaaaaaab670c *)
shl x9 Lx9 56@uint64;
(* orr	x9, x9, x8, lsr #8                          #! PC = 0xaaaaaaab6710 *)
split Hx8 Lx8 x8 8;
add x9 x9 Hx8;
(* lsl	x8, x8, #56                                 #! PC = 0xaaaaaaab6714 *)
shl x8 Lx8 56@uint64;
(* orr	x8, x8, x7, lsr #8                          #! PC = 0xaaaaaaab6718 *)
split Hx7 Lx7 x7 8;
add x8 x8 Hx7;
(* lsl	x7, x7, #56                                 #! PC = 0xaaaaaaab671c *)
shl x7 Lx7 56@uint64;
(* orr	x7, x7, x6, lsr #8                          #! PC = 0xaaaaaaab6720 *)
split Hx6 Lx6 x6 8;
add x7 x7 Hx6;
(* lsl	x6, x6, #56                                 #! PC = 0xaaaaaaab6724 *)
shl x6 Lx6 56@uint64;
(* orr	x6, x6, x5, lsr #8                          #! PC = 0xaaaaaaab6728 *)
split Hx5 Lx5 x5 8;
add x6 x6 Hx5;
(* lsl	x5, x5, #56                                 #! PC = 0xaaaaaaab672c *)
shl x5 Lx5 56@uint64;
(* orr	x5, x5, x4, lsr #8                          #! PC = 0xaaaaaaab6730 *)
split Hx4 Lx4 x4 8;
add x5 x5 Hx4;
(* lsl	x4, x4, #56                                 #! PC = 0xaaaaaaab6734 *)
shl x4 Lx4 56@uint64;

(* NOTE: shifted *)
assert limbs 64 [0, 0, 0, x4, x5, x6, x7, x8, x9, x10] =
       limbs 64 [x12, x13] *
       (1 + limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7]) && true;

(* adds	x15, x4, x15                               #! PC = 0xaaaaaaab6738 *)
adds carry x15 x4 x15;
(* adcs	x16, x5, x16                               #! PC = 0xaaaaaaab673c *)
adcs carry x16 x5 x16 carry;
(* adcs	x17, x6, x17                               #! PC = 0xaaaaaaab6740 *)
adcs carry x17 x6 x17 carry;
(* adcs	x18, x7, x18                               #! PC = 0xaaaaaaab6744 *)
adcs carry x18 x7 x18 carry;
(* mul	x4, x14, x24                                #! PC = 0xaaaaaaab6748 *)
mull Hx14x24 x4 x14 x24;
(* umulh	x7, x14, x24                              #! PC = 0xaaaaaaab674c *)
mov x7 Hx14x24;
(* adcs	x19, x8, x19                               #! PC = 0xaaaaaaab6750 *)
adcs carry x19 x8 x19 carry;
(* adcs	x20, x9, x20                               #! PC = 0xaaaaaaab6754 *)
adcs carry x20 x9 x20 carry;
(* adcs	x21, x10, x21                              #! PC = 0xaaaaaaab6758 *)
adcs carry x21 x10 x21 carry;
(* mul	x5, x14, x25                                #! PC = 0xaaaaaaab675c *)
mull Hx14x25 x5 x14 x25;
(* umulh	x6, x14, x25                              #! PC = 0xaaaaaaab6760 *)
mov x6 Hx14x25;
(* adcs	x22, xzr, x22                              #! PC = 0xaaaaaaab6764 *)
adcs carry x22 0@uint64 x22 carry;
(* adc	x23, xzr, x23                               #! PC = 0xaaaaaaab6768 *)
adc x23 0@uint64 x23 carry;

(* NOTE: montgomery reduction *)
assert eqmod limbs 64 [  0,   0,   0,   0,   0,   0, x14, x15,
                       x16, x17, x18, x19, x20, x21, x22, x23]
             limbs 64 [L0xffffffffe668, L0xffffffffe670, L0xffffffffe678,
                       L0xffffffffe680, L0xffffffffe688, L0xffffffffe690,
                       L0xffffffffe698, L0xffffffffe6a0, L0xffffffffe6a8,
                       L0xffffffffe6b0, L0xffffffffe6b8, L0xffffffffe6c0,
                       L0xffffffffe6c8, L0xffffffffe6d0, L0xffffffffe6d8,
                       L0xffffffffe6e0]
             limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7] && true;

(* mul	x28, x15, x24                               #! PC = 0xaaaaaaab676c *)
mull Hx15x24 x28 x15 x24;
(* umulh	x29, x15, x24                             #! PC = 0xaaaaaaab6770 *)
mov x29 Hx15x24;
(* adds	x5, x5, x7                                 #! PC = 0xaaaaaaab6774 *)
adds carry x5 x5 x7;
(* adc	x6, x6, xzr                                 #! PC = 0xaaaaaaab6778 *)
adc x6 x6 0@uint64 carry;
(* mul	x30, x14, x26                               #! PC = 0xaaaaaaab677c *)
mull Hx14x26 x30 x14 x26;
(* umulh	x10, x14, x26                             #! PC = 0xaaaaaaab6780 *)
mov x10 Hx14x26;
(* adds	x5, x5, x28                                #! PC = 0xaaaaaaab6784 *)
adds carry x5 x5 x28;
(* adcs	x6, x6, x29                                #! PC = 0xaaaaaaab6788 *)
adcs carry x6 x6 x29 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xaaaaaaab678c *)
adc x7 0@uint64 0@uint64 carry;
(* mul	x28, x15, x25                               #! PC = 0xaaaaaaab6790 *)
mull Hx15x25 x28 x15 x25;
(* umulh	x29, x15, x25                             #! PC = 0xaaaaaaab6794 *)
mov x29 Hx15x25;
(* adds	x6, x6, x30                                #! PC = 0xaaaaaaab6798 *)
adds carry x6 x6 x30;
(* adcs	x7, x7, x10                                #! PC = 0xaaaaaaab679c *)
adcs carry x7 x7 x10 carry;
(* adc	x8, xzr, xzr                                #! PC = 0xaaaaaaab67a0 *)
adc x8 0@uint64 0@uint64 carry;
(* mul	x30, x14, x27                               #! PC = 0xaaaaaaab67a4 *)
mull Hx14x27 x30 x14 x27;
(* umulh	x10, x14, x27                             #! PC = 0xaaaaaaab67a8 *)
mov x10 Hx14x27;
(* adds	x6, x6, x28                                #! PC = 0xaaaaaaab67ac *)
adds carry x6 x6 x28;
(* adcs	x7, x7, x29                                #! PC = 0xaaaaaaab67b0 *)
adcs carry x7 x7 x29 carry;
(* adc	x8, x8, xzr                                 #! PC = 0xaaaaaaab67b4 *)
adc x8 x8 0@uint64 carry;
(* mul	x28, x15, x26                               #! PC = 0xaaaaaaab67b8 *)
mull Hx15x26 x28 x15 x26;
(* umulh	x29, x15, x26                             #! PC = 0xaaaaaaab67bc *)
mov x29 Hx15x26;
(* adds	x7, x7, x30                                #! PC = 0xaaaaaaab67c0 *)
adds carry x7 x7 x30;
(* adcs	x8, x8, x10                                #! PC = 0xaaaaaaab67c4 *)
adcs carry x8 x8 x10 carry;
(* adc	x9, xzr, xzr                                #! PC = 0xaaaaaaab67c8 *)
adc x9 0@uint64 0@uint64 carry;
(* mul	x30, x15, x27                               #! PC = 0xaaaaaaab67cc *)
mull Hx15x27 x30 x15 x27;
(* umulh	x10, x15, x27                             #! PC = 0xaaaaaaab67d0 *)
mov x10 Hx15x27;
(* adds	x7, x7, x28                                #! PC = 0xaaaaaaab67d4 *)
adds carry x7 x7 x28;
(* adcs	x8, x8, x29                                #! PC = 0xaaaaaaab67d8 *)
adcs carry x8 x8 x29 carry;
(* adc	x9, x9, xzr                                 #! PC = 0xaaaaaaab67dc *)
adc x9 x9 0@uint64 carry;
(* adds	x8, x8, x30                                #! PC = 0xaaaaaaab67e0 *)
adds carry x8 x8 x30;
(* adc	x9, x9, x10                                 #! PC = 0xaaaaaaab67e4 *)
adc x9 x9 x10 carry;
(* orr	x10, xzr, x9, lsr #8                        #! PC = 0xaaaaaaab67e8 *)
split x10 Lx9 x9 8;
(* lsl	x9, x9, #56                                 #! PC = 0xaaaaaaab67ec *)
shl x9 Lx9 56@uint64;
(* orr	x9, x9, x8, lsr #8                          #! PC = 0xaaaaaaab67f0 *)
split Hx8 Lx8 x8 8;
add x9 x9 Hx8;
(* lsl	x8, x8, #56                                 #! PC = 0xaaaaaaab67f4 *)
shl x8 Lx8 56@uint64;
(* orr	x8, x8, x7, lsr #8                          #! PC = 0xaaaaaaab67f8 *)
split Hx7 Lx7 x7 8;
add x8 x8 Hx7;
(* lsl	x7, x7, #56                                 #! PC = 0xaaaaaaab67fc *)
shl x7 Lx7 56@uint64;
(* orr	x7, x7, x6, lsr #8                          #! PC = 0xaaaaaaab6800 *)
split Hx6 Lx6 x6 8;
add x7 x7 Hx6;
(* lsl	x6, x6, #56                                 #! PC = 0xaaaaaaab6804 *)
shl x6 Lx6 56@uint64;
(* ldp	x25, x26, [sp, #48]                         #! EA = L0xffffffffe610; Value = 0x0000ffffffffe8f8; PC = 0xaaaaaaab6808 *)
mov x25 L0xffffffffe610;
mov x26 L0xffffffffe618;
(* orr	x6, x6, x5, lsr #8                          #! PC = 0xaaaaaaab680c *)
split Hx5 Lx5 x5 8;
add x6 x6 Hx5;
(* lsl	x5, x5, #56                                 #! PC = 0xaaaaaaab6810 *)
shl x5 Lx5 56@uint64;
(* ldp	x27, x28, [sp, #64]                         #! EA = L0xffffffffe620; Value = 0x0000ffffffffe938; PC = 0xaaaaaaab6814 *)
mov x27 L0xffffffffe620;
mov x28 L0xffffffffe628;
(* orr	x5, x5, x4, lsr #8                          #! PC = 0xaaaaaaab6818 *)
split Hx4 Lx4 x4 8;
add x5 x5 Hx4;
(* lsl	x4, x4, #56                                 #! PC = 0xaaaaaaab681c *)
shl x4 Lx4 56@uint64;

(* NOTE: shifted *)
assert limbs 64 [0, 0, 0, x4, x5, x6, x7, x8, x9, x10] =
       limbs 64 [x14, x15] *
       (1 + limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7]) && true;

(* ldp	x29, x30, [sp, #80]                         #! EA = L0xffffffffe630; Value = 0x0000ffffffffe640; PC = 0xaaaaaaab6820 *)
mov x29 L0xffffffffe630;
mov x30 L0xffffffffe638;
(* adds	x17, x4, x17                               #! PC = 0xaaaaaaab6824 *)
adds carry x17 x4 x17;
(* stp	x16, x17, [x1]                              #! EA = L0xffffffffe9b8; PC = 0xaaaaaaab6828 *)
mov L0xffffffffe9b8 x16;
mov L0xffffffffe9c0 x17;
(* adcs	x18, x5, x18                               #! PC = 0xaaaaaaab682c *)
adcs carry x18 x5 x18 carry;
(* adcs	x19, x6, x19                               #! PC = 0xaaaaaaab6830 *)
adcs carry x19 x6 x19 carry;
(* stp	x18, x19, [x1, #16]                         #! EA = L0xffffffffe9c8; PC = 0xaaaaaaab6834 *)
mov L0xffffffffe9c8 x18;
mov L0xffffffffe9d0 x19;
(* adcs	x20, x7, x20                               #! PC = 0xaaaaaaab6838 *)
adcs carry x20 x7 x20 carry;
(* adcs	x21, x8, x21                               #! PC = 0xaaaaaaab683c *)
adcs carry x21 x8 x21 carry;
(* stp	x20, x21, [x1, #32]                         #! EA = L0xffffffffe9d8; PC = 0xaaaaaaab6840 *)
mov L0xffffffffe9d8 x20;
mov L0xffffffffe9e0 x21;
(* ldp	x19, x20, [sp]                              #! EA = L0xffffffffe5e0; Value = 0x0000ffffffffe668; PC = 0xaaaaaaab6844 *)
mov x19 L0xffffffffe5e0;
mov x20 L0xffffffffe5e8;
(* adcs	x22, x9, x22                               #! PC = 0xaaaaaaab6848 *)
adcs carry x22 x9 x22 carry;
(* adc	x23, x10, x23                               #! PC = 0xaaaaaaab684c *)
adc x23 x10 x23 carry;
(* stp	x22, x23, [x1, #48]                         #! EA = L0xffffffffe9e8; PC = 0xaaaaaaab6850 *)
mov L0xffffffffe9e8 x22;
mov L0xffffffffe9f0 x23;
(* ldp	x21, x22, [sp, #16]                         #! EA = L0xffffffffe5f0; Value = 0x0000ffffffffe778; PC = 0xaaaaaaab6854 *)
mov x21 L0xffffffffe5f0;
mov x22 L0xffffffffe5f8;
(* ldp	x23, x24, [sp, #32]                         #! EA = L0xffffffffe600; Value = 0x0000ffffffffe8b8; PC = 0xaaaaaaab6858 *)
mov x23 L0xffffffffe600;
mov x24 L0xffffffffe608;
(* add	sp, sp, #0x60                               #! PC = 0xaaaaaaab685c *)
adds dontcare sp sp 0x60@uint64;
(* #! <- SP = 0xffffffffe640 *)
#! 0xffffffffe640 = 0xffffffffe640;
(* #ret                                            #! PC = 0xaaaaaaab6860 *)
#ret                                            #! 0xaaaaaaab6860 = 0xaaaaaaab6860;
(* ldr	x0, [x0, #4056]                             #! EA = L0xaaaaaaacafd8; Value = 0x0000fffff7ffd6b0; PC = 0xaaaaaaaadef4 *)
mov x0 L0xaaaaaaacafd8;
(* ldr	x1, [sp, #168]                              #! EA = L0xffffffffe6e8; Value = 0xd0a76d13996c1300; PC = 0xaaaaaaaadef8 *)
mov x1 L0xffffffffe6e8;
(* ldr	x2, [x0]                                    #! EA = L0xfffff7ffd6b0; Value = 0xd0a76d13996c1300; PC = 0xaaaaaaaadefc *)
mov x2 L0xfffff7ffd6b0;
(* subs	x1, x1, x2                                 #! PC = 0xaaaaaaaadf00 *)
subc carry x1 x1 x2;
(* mov	x2, #0x0                   	// #0           #! PC = 0xaaaaaaaadf04 *)
mov x2 0x0@uint64;
(* #b.ne	0xaaaaaaaadf18 <fpmul503_mont+136>  // b.any#! PC = 0xaaaaaaaadf08 *)
#b.ne	0xaaaaaaaadf18 <fpmul503_mont+136>  // b.any#! 0xaaaaaaaadf08 = 0xaaaaaaaadf08;
(* ldp	x19, x20, [sp, #16]                         #! EA = L0xffffffffe650; Value = 0x0000ffffffffe838; PC = 0xaaaaaaaadf0c *)
mov x19 L0xffffffffe650;
mov x20 L0xffffffffe658;
(* ldp	x29, x30, [sp], #176                        #! EA = L0xffffffffe640; Value = 0x0000ffffffffe6f0; PC = 0xaaaaaaaadf10 *)
mov x29 L0xffffffffe640;
mov x30 L0xffffffffe648;
(* #! <- SP = 0xffffffffe6f0 *)
#! 0xffffffffe6f0 = 0xffffffffe6f0;
(* #ret                                            #! PC = 0xaaaaaaaadf14 *)
#ret                                            #! 0xaaaaaaaadf14 = 0xaaaaaaaadf14;

mov c0 L0xffffffffe9b8;
mov c1 L0xffffffffe9c0;
mov c2 L0xffffffffe9c8;
mov c3 L0xffffffffe9d0;
mov c4 L0xffffffffe9d8;
mov c5 L0xffffffffe9e0;
mov c6 L0xffffffffe9e8;
mov c7 L0xffffffffe9f0;

{
  eqmod limbs 64 [ 0,  0,  0,  0,  0,  0,  0,  0,
                  c0, c1, c2, c3, c4, c5, c6, c7]
        limbs 64 [a0, a1, a2, a3, a4, a5, a6, a7] *
        limbs 64 [b0, b1, b2, b3, b4, b5, b6, b7]
        limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7]
&&
  limbs 64 [c0, c1, c2, c3, c4, c5, c6, c7] <u
  2@512 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7]
}

