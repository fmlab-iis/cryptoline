(* quine:  -v -btor -isafety -qfbv_args '-SE minisat' -jobs 8 x25519_fe64_mul.cl
Parsing Cryptoline file:                [OK]            0.002234 seconds
Checking well-formedness:               [OK]            0.000564 seconds
Transforming to SSA form:               [OK]            0.000257 seconds
Rewriting assignments:                  [OK]            0.000419 seconds
Verifying program safety:               [OK]            2.101048 seconds
Verifying range assertions:             [OK]            1.046481 seconds
Verifying range specification:          [OK]            0.026782 seconds
Rewriting value-preserved casting:      [OK]            0.000010 seconds
Verifying algebraic assertions:         [OK]            0.001208 seconds
Verifying algebraic specification:      [OK]            0.050672 seconds
Verification result:                    [OK]            3.230269 seconds
*)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3) =
{
  true
&&
  true
}

mov L0x420020 a0;
mov L0x420028 a1;
mov L0x420030 a2;
mov L0x420038 a3;

mov L0x420048 b0;
mov L0x420050 b1;
mov L0x420058 b2;
mov L0x420060 b3;

(* ldr	x3, [x2], #8                                #! EA = L0x420048; Value = 0x0ab903c829a82374; PC = 0x4195824 *)
mov x3 L0x420048;
(* ldp	x4, x5, [x1]                                #! EA = L0x420020; Value = 0x082374abe23ab903; PC = 0x4195828 *)
mov x4 L0x420020;
mov x5 L0x420028;
(* ldp	x6, x7, [x1, #16]                           #! EA = L0x420030; Value = 0x0be23ab903c829a8; PC = 0x4195832 *)
mov x6 L0x420030;
mov x7 L0x420038;
(* mul	x12, x4, x3                                 #! PC = 0x4195836 *)
(* NOTE: merge with umulh x8, x4, x3 *)
umull x8 x12 x4 x3;
(* umulh	x8, x4, x3                                #! PC = 0x4195840 *)
(* umull x8 x8_L x4 x3; *)
(* mul	x13, x5, x3                                 #! PC = 0x4195844 *)
(* NOTE: merge with umulh x9, x5, x3 *)
umull x9 x13 x5 x3;
(* umulh	x9, x5, x3                                #! PC = 0x4195848 *)
(* umull x9 x9_L x5 x3; *)
(* mul	x14, x6, x3                                 #! PC = 0x4195852 *)
(* NOTE: merge with umulh x10, x6, x3 *)
umull x10 x14 x6 x3;
(* umulh	x10, x6, x3                               #! PC = 0x4195856 *)
(* umull x10 x10_L x6 x3; *)
(* mul	x15, x7, x3                                 #! PC = 0x4195860 *)
(* NOTE: merge with umulh x11, x7, x3 *)
umull x11 x15 x7 x3;
(* umulh	x11, x7, x3                               #! PC = 0x4195864 *)
(* umull x11 x11_L x7 x3; *)
(* ldr	x3, [x2], #8                                #! EA = L0x420050; Value = 0x082373c829a4abe2; PC = 0x4195868 *)
mov x3 L0x420050;
(* adds	x13, x13, x8                               #! PC = 0x4195872 *)
uadds carry x13 x13 x8;
(* mul	x8, x4, x3                                  #! PC = 0x4195876 *)
umull x8_H x8 x4 x3;
(* adcs	x14, x14, x9                               #! PC = 0x4195880 *)
uadcs carry x14 x14 x9 carry;
(* mul	x9, x5, x3                                  #! PC = 0x4195884 *)
umull x9_H x9 x5 x3;
(* adcs	x15, x15, x10                              #! PC = 0x4195888 *)
uadcs carry x15 x15 x10 carry;
(* mul	x10, x6, x3                                 #! PC = 0x4195892 *)
umull x10_H x10 x6 x3;
(* adc	x16, xzr, x11                               #! PC = 0x4195896 *)
uadc x16 0@uint64 x11 carry;
(* mul	x11, x7, x3                                 #! PC = 0x4195900 *)
umull x11_H x11 x7 x3;
(* adds	x13, x13, x8                               #! PC = 0x4195904 *)
uadds carry x13 x13 x8;
(* umulh	x8, x4, x3                                #! PC = 0x4195908 *)
(* umull x8 x8_L x4 x3; *)
(* NOTE: merge with mul	x8, x4, x3 *)
mov x8 x8_H;
(* adcs	x14, x14, x9                               #! PC = 0x4195912 *)
uadcs carry x14 x14 x9 carry;
(* umulh	x9, x5, x3                                #! PC = 0x4195916 *)
(* umull x9 x9_L x5 x3; *)
(* NOTE: merge with mul	x9, x5, x3 *)
mov x9 x9_H;
(* adcs	x15, x15, x10                              #! PC = 0x4195920 *)
uadcs carry x15 x15 x10 carry;
(* umulh	x10, x6, x3                               #! PC = 0x4195924 *)
(* umull x10 x10_L x6 x3; *)
(* NOTE: merge with mul	x10, x6, x3 *)
mov x10 x10_H;
(* adcs	x16, x16, x11                              #! PC = 0x4195928 *)
uadcs carry x16 x16 x11 carry;
(* umulh	x11, x7, x3                               #! PC = 0x4195932 *)
(* umull x11 x11_L x7 x3; *)
(* NOTE: merge with mul	x11, x7, x3 *)
mov x11 x11_H;
(* adc	x17, xzr, xzr                               #! PC = 0x4195936 *)
uadc x17 0@uint64 0@uint64 carry;
(* ldr	x3, [x2], #8                                #! EA = L0x420058; Value = 0x0c829a82374abe23; PC = 0x4195940 *)
mov x3 L0x420058;
(* adds	x14, x14, x8                               #! PC = 0x4195944 *)
uadds carry x14 x14 x8;
(* mul	x8, x4, x3                                  #! PC = 0x4195948 *)
umull x8_H x8 x4 x3;
(* adcs	x15, x15, x9                               #! PC = 0x4195952 *)
uadcs carry x15 x15 x9 carry;
(* mul	x9, x5, x3                                  #! PC = 0x4195956 *)
umull x9_H x9 x5 x3;
(* adcs	x16, x16, x10                              #! PC = 0x4195960 *)
uadcs carry x16 x16 x10 carry;
(* mul	x10, x6, x3                                 #! PC = 0x4195964 *)
umull x10_H x10 x6 x3;
(* adc	x17, x17, x11                               #! PC = 0x4195968 *)
uadc x17 x17 x11 carry;
(* mul	x11, x7, x3                                 #! PC = 0x4195972 *)
umull x11_H x11 x7 x3;
(* adds	x14, x14, x8                               #! PC = 0x4195976 *)
uadds carry x14 x14 x8;
(* umulh	x8, x4, x3                                #! PC = 0x4195980 *)
(* umull x8 x8_L x4 x3; *)
(* NOTE: merge with mul	x8, x4, x3 *)
mov x8 x8_H;
(* adcs	x15, x15, x9                               #! PC = 0x4195984 *)
uadcs carry x15 x15 x9 carry;
(* umulh	x9, x5, x3                                #! PC = 0x4195988 *)
(* umull x9 x9_L x5 x3; *)
(* NOTE: merge with mul	x9, x5, x3 *)
mov x9 x9_H;
(* adcs	x16, x16, x10                              #! PC = 0x4195992 *)
uadcs carry x16 x16 x10 carry;
(* umulh	x10, x6, x3                               #! PC = 0x4195996 *)
(* umull x10 x10_L x6 x3; *)
(* NOTE: merge with mul	x10, x6, x3 *)
mov x10 x10_H;
(* adcs	x17, x17, x11                              #! PC = 0x4196000 *)
uadcs carry x17 x17 x11 carry;
(* umulh	x11, x7, x3                               #! PC = 0x4196004 *)
(* umull x11 x11_L x7 x3; *)
(* NOTE: merge with mul	x11, x7, x3 *)
mov x11 x11_H;
(* adc	x1, xzr, xzr                                #! PC = 0x4196008 *)
uadc x1 0@uint64 0@uint64 carry;
(* ldr	x3, [x2], #8                                #! EA = L0x420060; Value = 0x829823aba9374abe; PC = 0x4196012 *)
mov x3 L0x420060;
(* adds	x15, x15, x8                               #! PC = 0x4196016 *)
uadds carry x15 x15 x8;
(* mul	x8, x4, x3                                  #! PC = 0x4196020 *)
umull x8_H x8 x4 x3;
(* adcs	x16, x16, x9                               #! PC = 0x4196024 *)
uadcs carry x16 x16 x9 carry;
(* mul	x9, x5, x3                                  #! PC = 0x4196028 *)
umull x9_H x9 x5 x3;
(* adcs	x17, x17, x10                              #! PC = 0x4196032 *)
uadcs carry x17 x17 x10 carry;
(* mul	x10, x6, x3                                 #! PC = 0x4196036 *)
umull x10_H x10 x6 x3;
(* adc	x1, x1, x11                                 #! PC = 0x4196040 *)
uadc x1 x1 x11 carry;
(* mul	x11, x7, x3                                 #! PC = 0x4196044 *)
umull x11_H x11 x7 x3;
(* adds	x15, x15, x8                               #! PC = 0x4196048 *)
uadds carry x15 x15 x8;
(* umulh	x8, x4, x3                                #! PC = 0x4196052 *)
(* umull x8 x8_L x4 x3; *)
(* NOTE: merge with mul	x8, x4, x3 *)
mov x8 x8_H;
(* adcs	x16, x16, x9                               #! PC = 0x4196056 *)
uadcs carry x16 x16 x9 carry;
(* umulh	x9, x5, x3                                #! PC = 0x4196060 *)
(* umull x9 x9_L x5 x3; *)
(* NOTE: merge with mul	x9, x5, x3 *)
mov x9 x9_H;
(* adcs	x17, x17, x10                              #! PC = 0x4196064 *)
uadcs carry x17 x17 x10 carry;
(* umulh	x10, x6, x3                               #! PC = 0x4196068 *)
(* umull x10 x10_L x6 x3; *)
(* NOTE: merge with mul	x10, x6, x3 *)
mov x10 x10_H;
(* adcs	x1, x1, x11                                #! PC = 0x4196072 *)
uadcs carry x1 x1 x11 carry;
(* umulh	x11, x7, x3                               #! PC = 0x4196076 *)
(* umull x11 x11_L x7 x3; *)
(* NOTE: merge with mul	x11, x7, x3 *)
mov x11 x11_H;
(* adc	x2, xzr, xzr                                #! PC = 0x4196080 *)
uadc x2 0@uint64 0@uint64 carry;
(* mov	x3, #0x26                  	// #38          #! PC = 0x4196084 *)
mov x3 38@uint64;
(* adds	x16, x16, x8                               #! PC = 0x4196088 *)
uadds carry x16 x16 x8;
(* mul	x8, x16, x3                                 #! PC = 0x4196092 *)
umull x8_H x8 x16 x3;
(* adcs	x17, x17, x9                               #! PC = 0x4196096 *)
uadcs carry x17 x17 x9 carry;
(* mul	x9, x17, x3                                 #! PC = 0x4196100 *)
umull x9_H x9 x17 x3;
(* adcs	x1, x1, x10                                #! PC = 0x4196104 *)
uadcs carry x1 x1 x10 carry;
(* mul	x10, x1, x3                                 #! PC = 0x4196108 *)
umull x10_H x10 x1 x3;
(* adc	x2, x2, x11                                 #! PC = 0x4196112 *)
uadc x2 x2 x11 carry;
(* mul	x11, x2, x3                                 #! PC = 0x4196116 *)
umull x11_H x11 x2 x3;
(* adds	x12, x12, x8                               #! PC = 0x4196120 *)
uadds carry x12 x12 x8;
(* umulh	x8, x16, x3                               #! PC = 0x4196124 *)
(* umull x8 x8_L x16 x3; *)
(* NOTE: merge with mul	x8, x16, x3 *)
mov x8 x8_H;
(* adcs	x13, x13, x9                               #! PC = 0x4196128 *)
uadcs carry x13 x13 x9 carry;
(* umulh	x9, x17, x3                               #! PC = 0x4196132 *)
(* umull x9 x9_L x17 x3; *)
(* NOTE: merge with mul	x9, x17, x3 *)
mov x9 x9_H;
(* adcs	x14, x14, x10                              #! PC = 0x4196136 *)
uadcs carry x14 x14 x10 carry;
(* umulh	x10, x1, x3                               #! PC = 0x4196140 *)
(* umull x10 x10_L x1 x3; *)
(* NOTE: merge with mul	x10, x1, x3 *)
mov x10 x10_H;
(* adcs	x15, x15, x11                              #! PC = 0x4196144 *)
uadcs carry x15 x15 x11 carry;
(* umulh	x11, x2, x3                               #! PC = 0x4196148 *)
(* umull x11 x11_L x2 x3; *)
(* NOTE: merge with mul	x11, x2, x3 *)
mov x11 x11_H;
(* adc	x16, xzr, xzr                               #! PC = 0x4196152 *)
uadc x16 0@uint64 0@uint64 carry;
(* adds	x13, x13, x8                               #! PC = 0x4196156 *)
uadds carry x13 x13 x8;
(* adcs	x14, x14, x9                               #! PC = 0x4196160 *)
uadcs carry x14 x14 x9 carry;
(* adcs	x15, x15, x10                              #! PC = 0x4196164 *)
uadcs carry x15 x15 x10 carry;
(* adc	x16, x16, x11                               #! PC = 0x4196168 *)
uadc x16 x16 x11 carry;
(* add	x8, x16, x16, lsl #3                        #! PC = 0x4196172 *)
shl x16_x8 x16 3@uint64;
uadd x8 x16 x16_x8;
(* add	x8, x16, x8, lsl #1                         #! PC = 0x4196176 *)
shl x8_x2 x8 1@uint64;
uadd x8 x16 x8_x2;
(* adds	x12, x12, x8, lsl #1                       #! PC = 0x4196180 *)
shl x8_x2 x8 1@uint64;
uadds carry x12 x12 x8_x2;
(* adcs	x13, x13, xzr                              #! PC = 0x4196184 *)
uadcs carry x13 x13 0@uint64 carry;
(* adcs	x14, x14, xzr                              #! PC = 0x4196188 *)
uadcs carry x14 x14 0@uint64 carry;
(* adcs	x15, x15, xzr                              #! PC = 0x4196192 *)
uadcs carry x15 x15 0@uint64 carry;
(* ngc	x16, xzr                                    #! PC = 0x4196196 *)
usbcs dontcare x16@uint64 0@uint64 0@uint64 carry;
(* bic	x16, x3, x16                                #! PC = 0x4196200 *)
not x16_not@uint64 x16;
and x16@uint64 x3 x16_not;
assert true && or [ and [carry = 1@1, x16 = 38@64],
                    and [carry = 0@1, x16 =  0@64] ];
assume (carry - 1)*(x16 -  0) = 0 && true;
assume (carry - 0)*(x16 - 38) = 0 && true;
(* add	x12, x12, x16                               #! PC = 0x4196204 *)
uadd x12 x12 x16;
(* stp	x14, x15, [x0, #16]                         #! EA = L0xffffffffe178; Value = 0xff5fa036cc7d6b84; PC = 0x4196208 *)
mov L0xffffffffe178 x14;
mov L0xffffffffe180 x15;
(* stp	x12, x13, [x0]                              #! EA = L0xffffffffe168; Value = 0xfd6a70e3b8929569; PC = 0x4196212 *)
mov L0xffffffffe168 x12;
mov L0xffffffffe170 x13;
(* 0x00000000004005b0 in main () *)
(* #ret                                            #! PC = 0x4196216 *)
#ret                                            #! 0x4196216 = 0x4196216;

mov r0 L0xffffffffe168;
mov r1 L0xffffffffe170;
mov r2 L0xffffffffe178;
mov r3 L0xffffffffe180;

{
  eqmod (limbs 64 [r0, r1, r2, r3])
        ((limbs 64 [a0, a1, a2, a3]) * (limbs 64 [b0, b1, b2, b3]))
        (2**256 - 38)
&&
  true
}

