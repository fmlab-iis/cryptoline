const P256_0 = 0xffffffffffffffff
const P256_1 = 0x00000000ffffffff
const P256_2 = 0x0000000000000000
const P256_3 = 0xffffffff00000001

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3) =
{
  true
&& and [limbs 64 [a0, a1, a2, a3] <u
        limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64],
        limbs 64 [b0, b1, b2, b3] <u
        limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]]
}

mov x23 a0; mov x24 a1; mov x25 a2; mov x26 a3;
mov x19 b0; mov x20 b1; mov x21 b2; mov x22 b3;

mov x15 $P256_1@uint64; mov x16 $P256_3@uint64;

(* p256SubInternal: *)
#p256SubInternal:;
(* #! -> SP = 0x400008fb10 *)
#! 0x400008fb10 = 0x400008fb10;
(* subs	x3, x23, x19                               #! PC = 0xc3940 *)
subc carry x3 x23 x19;
(* sbcs	x4, x24, x20                               #! PC = 0xc3944 *)
sbcs carry x4 x24 x20 carry;
(* sbcs	x5, x25, x21                               #! PC = 0xc3948 *)
sbcs carry x5 x25 x21 carry;
(* sbcs	x6, x26, x22                               #! PC = 0xc394c *)
sbcs carry0 x6 x26 x22 carry;
(* ngc	x11, xzr                                    #! PC = 0xc3950 *)
sbcs dc x11 0@uint64 0@uint64 carry0;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3954 *)
mov x27 0xffffffffffffffff@uint64;
(* adds	x7, x3, x27                                #! PC = 0xc3958 *)
adds carry x7 x3 x27;
(* adcs	x8, x4, x15                                #! PC = 0xc395c *)
adcs carry x8 x4 x15 carry;
(* adcs	x9, x5, xzr                                #! PC = 0xc3960 *)
adcs carry x9 x5 0@uint64 carry;
(* adc	x10, x6, x16                                #! PC = 0xc3964 *)
adcs dc0 x10 x6 x16 carry;
(* ands	x11, x11, #0x1                             #! PC = 0xc3968 *)
and x11@uint64 x11 0x1@uint64; subc zero dc 0@uint64 x11;

(* NOTE: more identities *)
assert true && zero = carry0;
assume zero = carry0 && true;
(* assert true && or [dc0 = 1@1, carry0 = 1@1]; *)
assert true && (dc0 - 1@1)*(carry0 - 1@1) = 0@1;
assume (dc0- 1)*(carry0- 1)= 0 && true;
               
(* csel	x19, x3, x7, eq  // eq = none              #! PC = 0xc396c *)
cmov x19 zero x3 x7;
(* csel	x20, x4, x8, eq  // eq = none              #! PC = 0xc3970 *)
cmov x20 zero x4 x8;
(* csel	x21, x5, x9, eq  // eq = none              #! PC = 0xc3974 *)
cmov x21 zero x5 x9;
(* csel	x22, x6, x10, eq  // eq = none             #! PC = 0xc3978 *)
cmov x22 zero x6 x10;
(* #! <- SP = 0x400008fb10 *)
#! 0x400008fb10 = 0x400008fb10;
(* #ret                                            #! PC = 0xc397c *)
#ret                                            #! 0xc397c = 0xc397c;

mov r0 x19; mov r1 x20; mov r2 x21; mov r3 x22;

{
   eqmod (limbs 64 [r0, r1, r2, r3])
         (limbs 64 [a0, a1, a2, a3] - limbs 64 [b0, b1, b2, b3])
         (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
&&
   limbs 64 [r0, r1, r2, r3] <u
   limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
(*
  true
&& and [limbs 64 [r0, r1, r2, r3] <u
        limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64],
        eqsmod limbs 64 [r0, r1, r2, r3, 0@64]
               limbs 64 [a0, a1, a2, a3, 0@64] - limbs 64 [b0, b1, b2, b3, 0@64]
               limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64, 0@64]]
*)
}

