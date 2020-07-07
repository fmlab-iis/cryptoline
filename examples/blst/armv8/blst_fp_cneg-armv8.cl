(* quine: -v -isafety -jobs 10 -btor -no_carry_constraint -slicing blst_fp_cneg-armv8.cl
Parsing Cryptoline file:                [OK]            0.001557 seconds
Checking well-formedness:               [OK]            0.000442 seconds
Transforming to SSA form:               [OK]            0.000209 seconds
Rewriting assignments:                  [OK]            0.000768 seconds
Verifying program safety:               [OK]            0.075611 seconds
Verifying range specification:          [OK]            1.133768 seconds
Rewriting value-preserved casting:      [OK]            0.000018 seconds
Verifying algebraic specification:      [OK]            0.000222 seconds
Verification result:                    [OK]            1.213163 seconds
*)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 a5,
           uint64 flag,
           uint64 m0, uint64 m1, uint64 m2, uint64 m3, uint64 m4, uint64 m5) =
{
  true
&&
  and [
    m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
    m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
    m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64,
    limbs 64 [a0, a1, a2, a3, a4, a5] <u limbs 64 [m0, m1, m2, m3, m4, m5]
  ]
}

(* inputs *)

mov L0x400082ac28 a0;
mov L0x400082ac30 a1;
mov L0x400082ac38 a2;
mov L0x400082ac40 a3;
mov L0x400082ac48 a4;
mov L0x400082ac50 a5;

mov x2 flag;

mov L0x4000016868 m0;
mov L0x4000016870 m1;
mov L0x4000016878 m2;
mov L0x4000016880 m3;
mov L0x4000016888 m4;
mov L0x4000016890 m5;

(* #bl	0x4000012040 <cneg_mod_384>                 #! PC = 0x274877971412 *)
#bl	0x4000012040 <cneg_mod_384>                 #! 0x274877971412 = 0x274877971412;
(* ldp	x10, x11, [x1]                              #! EA = L0x400082ac28; Value = 0x0000000000000000; PC = 0x274877980756 *)
mov x10 L0x400082ac28;
mov x11 L0x400082ac30;
(* ldp	x4, x5, [x3]                                #! EA = L0x4000016868; Value = 0xb9feffffffffaaab; PC = 0x274877980760 *)
mov x4 L0x4000016868;
mov x5 L0x4000016870;
(* ldp	x12, x13, [x1, #16]                         #! EA = L0x400082ac38; Value = 0x0000000000000000; PC = 0x274877980764 *)
mov x12 L0x400082ac38;
mov x13 L0x400082ac40;
(* ldp	x6, x7, [x3, #16]                           #! EA = L0x4000016878; Value = 0x6730d2a0f6b0f624; PC = 0x274877980768 *)
mov x6 L0x4000016878;
mov x7 L0x4000016880;
(* subs	x16, x4, x10                               #! PC = 0x274877980772 *)
subc carry x16 x4 x10;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0x400082ac48; Value = 0x0000000000000000; PC = 0x274877980776 *)
mov x14 L0x400082ac48;
mov x15 L0x400082ac50;
(* ldp	x8, x9, [x3, #32]                           #! EA = L0x4000016888; Value = 0x4b1ba7b6434bacd7; PC = 0x274877980780 *)
mov x8 L0x4000016888;
mov x9 L0x4000016890;
(* orr	x3, x10, x11                                #! PC = 0x274877980784 *)
or x3@uint64 x10 x11;
(* sbcs	x17, x5, x11                               #! PC = 0x274877980788 *)
sbcs carry x17 x5 x11 carry;
(* orr	x3, x3, x12                                 #! PC = 0x274877980792 *)
or x3@uint64 x3 x12;
(* sbcs	x19, x6, x12                               #! PC = 0x274877980796 *)
sbcs carry x19 x6 x12 carry;
(* orr	x3, x3, x13                                 #! PC = 0x274877980800 *)
or x3@uint64 x3 x13;
(* sbcs	x20, x7, x13                               #! PC = 0x274877980804 *)
sbcs carry x20 x7 x13 carry;
(* orr	x3, x3, x14                                 #! PC = 0x274877980808 *)
or x3@uint64 x3 x14;
(* sbcs	x21, x8, x14                               #! PC = 0x274877980812 *)
sbcs carry x21 x8 x14 carry;
(* orr	x3, x3, x15                                 #! PC = 0x274877980816 *)
or x3@uint64 x3 x15;
(* sbc	x22, x9, x15                                #! PC = 0x274877980820 *)
sbc x22 x9 x15 carry;
(* cmp	x3, #0x0                                    #! PC = 0x274877980824 *)
subc neqz dontcare x3 1@uint64;
(* csetm	x3, ne  // ne = any                       #! PC = 0x274877980828 *)
cmov x3 neqz 0xffffffffffffffff@uint64 0@uint64;
(* ands	x2, x2, x3                                 #! PC = 0x274877980832 *)
and x2@uint64 x2 x3;
subb eqz dontcare x2 1@uint64;
(* csel	x10, x10, x16, eq  // eq = none            #! PC = 0x274877980836 *)
cmov x10 eqz x10 x16;
(* csel	x11, x11, x17, eq  // eq = none            #! PC = 0x274877980840 *)
cmov x11 eqz x11 x17;
(* csel	x12, x12, x19, eq  // eq = none            #! PC = 0x274877980844 *)
cmov x12 eqz x12 x19;
(* csel	x13, x13, x20, eq  // eq = none            #! PC = 0x274877980848 *)
cmov x13 eqz x13 x20;
(* stp	x10, x11, [x0]                              #! EA = L0x400082ac88; PC = 0x274877980852 *)
mov L0x400082ac88 x10;
mov L0x400082ac90 x11;
(* csel	x14, x14, x21, eq  // eq = none            #! PC = 0x274877980856 *)
cmov x14 eqz x14 x21;
(* stp	x12, x13, [x0, #16]                         #! EA = L0x400082ac98; PC = 0x274877980860 *)
mov L0x400082ac98 x12;
mov L0x400082aca0 x13;
(* csel	x15, x15, x22, eq  // eq = none            #! PC = 0x274877980864 *)
cmov x15 eqz x15 x22;
(* stp	x14, x15, [x0, #32]                         #! EA = L0x400082aca8; PC = 0x274877980868 *)
mov L0x400082aca8 x14;
mov L0x400082acb0 x15;
(* #ret                                            #! PC = 0x274877980888 *)
#ret                                            #! 0x274877980888 = 0x274877980888;
(* #ret                                            #! PC = 0x274877971420 *)
#ret                                            #! 0x274877971420 = 0x274877971420;

mov c0 x10;
mov c1 x11;
mov c2 x12;
mov c3 x13;
mov c4 x14;
mov c5 x15;

{
  true
&&
  or [
    and [flag = 0@64,
         eqmod (limbs 64 [c0, c1, c2, c3, c4, c5])
               (limbs 64 [a0, a1, a2, a3, a4, a5])
               (limbs 64 [m0, m1, m2, m3, m4, m5])],
    and [flag > 0@64,
         eqmod ((limbs 64 [c0, c1, c2, c3, c4, c5]) +
                (limbs 64 [a0, a1, a2, a3, a4, a5]))
               0@384
               (limbs 64 [m0, m1, m2, m3, m4, m5])]
  ]      
}
