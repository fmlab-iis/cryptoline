(* popper: cv.exe -jobs 64 -v -isafety -slicing vector_mul_30.cl
Parsing CryptoLine file:                [OK]            0.0161 seconds
Checking well-formedness:               [OK]            0.0042 seconds

Procedure main
==============
Transforming to SSA form:               [OK]            0.0021 seconds
Normalizing specification:              [OK]            0.0024 seconds
Rewriting assignments:                  [OK]            0.0026 seconds
Verifying program safety:               [OK]            197.9124 seconds
Verifying range assertions:             [OK]            170.1618 seconds
Verifying range specification:          [OK]            655.8167 seconds
Rewriting value-preserved casting:      [OK]            0.0016 seconds
Verifying algebraic assertions:         [OK]            1.2972 seconds
Verifying algebraic specification:      [OK]            32.9921 seconds

Procedure Summary
-----------------
Procedure verification:                 [OK]            1058.1910 seconds

Summary
=======
Verification result:                    [OK]            1058.2114 seconds
*)

(* quine: -v -isafety -jobs 40 -isafety_timeout 6000 -slicing vector_mul_30.cl
Parsing Cryptoline file:                [OK]            0.020356 seconds
Checking well-formedness:               [OK]            0.005812 seconds
Transforming to SSA form:               [OK]            0.002354 seconds
Normalizing specification:              [OK]            0.003078 seconds
Rewriting assignments:                  [OK]            0.003171 seconds
Verifying program safety:
-----------------------------------------------------------------------
         Overall                        [OK]            1050.675096 seconds
Verifying range assertions:             [OK]            578.352596 seconds
Verifying range specification:          [OK]            146.202344 seconds
Rewriting value-preserved casting:      [OK]            0.001896 seconds
Verifying algebraic assertions:         [OK]            184.060446 seconds
Verifying algebraic specification:      [OK]            382.779628 seconds
Verification result:                    [OK]            2342.110789 seconds
*)
proc main (sint64 u , sint64 v , sint64 r , sint64 s ,
           sint64 F0, sint64 V0, sint64 G0, sint64 S0,
           uint64 F1, uint64 V1, uint64 G1, uint64 S1,
           uint64 F2, uint64 V2, uint64 G2, uint64 S2,
           uint64 F3, uint64 V3, uint64 G3, uint64 S3,
           uint64 F4, uint64 V4, uint64 G4, uint64 S4,
           uint64 F5, uint64 V5, uint64 G5, uint64 S5,
           uint64 F6, uint64 V6, uint64 G6, uint64 S6,
           uint64 F7, uint64 V7, uint64 G7, uint64 S7,
           sint64 F8, sint64 V8, sint64 G8, sint64 S8
           ) =
{
  and[
  eqmod (u *
       ((F0 * (2**(30*0))) +
        (F1 * (2**(30*1))) +
        (F2 * (2**(30*2))) +
        (F3 * (2**(30*3))) +
        (F4 * (2**(30*4))) +
        (F5 * (2**(30*5))) +
        (F6 * (2**(30*6))) +
        (F7 * (2**(30*7))) +
        (F8 * (2**(30*8)))) +
        v *
       ((G0 * (2**(30*0))) +
        (G1 * (2**(30*1))) +
        (G2 * (2**(30*2))) +
        (G3 * (2**(30*3))) +
        (G4 * (2**(30*4))) +
        (G5 * (2**(30*5))) +
        (G6 * (2**(30*6))) +
        (G7 * (2**(30*7))) +
        (G8 * (2**(30*8)))))
       0
       (2**60),
  eqmod (r *
       ((F0 * (2**(30*0))) +
        (F1 * (2**(30*1))) +
        (F2 * (2**(30*2))) +
        (F3 * (2**(30*3))) +
        (F4 * (2**(30*4))) +
        (F5 * (2**(30*5))) +
        (F6 * (2**(30*6))) +
        (F7 * (2**(30*7))) +
        (F8 * (2**(30*8)))) +
        s *
       ((G0 * (2**(30*0))) +
        (G1 * (2**(30*1))) +
        (G2 * (2**(30*2))) +
        (G3 * (2**(30*3))) +
        (G4 * (2**(30*4))) +
        (G5 * (2**(30*5))) +
        (G6 * (2**(30*6))) +
        (G7 * (2**(30*7))) +
        (G8 * (2**(30*8)))))
       0
       (2**(60))
       ]
  &&
  and[
      (-(2**(60)))@64 <=s u , u  <=s (2**(59))@64,
      (-(2**(60)))@64 <=s v , v  <=s (2**(59))@64,
      (-(2**(59)))@64 <=s r , r  <=s (2**(59))@64,
      (-(2**(59)))@64 <=s s , s  <=s (2**(59))@64,

      (-(2**(60)))@64 <=s u + v, u + v <=s (2**(60))@64,
      (-(2**(60)))@64 <=s u - v, u - v <=s (2**(60))@64,
      (-(2**(60)))@64 <=s r + s, r + s <=s (2**(60))@64,
      (-(2**(60)))@64 <=s r - s, r - s <=s (2**(60))@64,

      (sext F0 301) * (2**(30*0))@365 +
      (sext F1 301) * (2**(30*1))@365 +
      (sext F2 301) * (2**(30*2))@365 +
      (sext F3 301) * (2**(30*3))@365 +
      (sext F4 301) * (2**(30*4))@365 +
      (sext F5 301) * (2**(30*5))@365 +
      (sext F6 301) * (2**(30*6))@365 +
      (sext F7 301) * (2**(30*7))@365 +
      (sext F8 301) * (2**(30*8))@365 >s (-(2**(255)))@365,
      (sext F0 301) * (2**(30*0))@365 +
      (sext F1 301) * (2**(30*1))@365 +
      (sext F2 301) * (2**(30*2))@365 +
      (sext F3 301) * (2**(30*3))@365 +
      (sext F4 301) * (2**(30*4))@365 +
      (sext F5 301) * (2**(30*5))@365 +
      (sext F6 301) * (2**(30*6))@365 +
      (sext F7 301) * (2**(30*7))@365 +
      (sext F8 301) * (2**(30*8))@365 <s (2**(255))@365,

      (sext V0 301) * (2**(30*0))@365 +
      (sext V1 301) * (2**(30*1))@365 +
      (sext V2 301) * (2**(30*2))@365 +
      (sext V3 301) * (2**(30*3))@365 +
      (sext V4 301) * (2**(30*4))@365 +
      (sext V5 301) * (2**(30*5))@365 +
      (sext V6 301) * (2**(30*6))@365 +
      (sext V7 301) * (2**(30*7))@365 +
      (sext V8 301) * (2**(30*8))@365 >s (-(2**(29)))@365,
      (sext V0 301) * (2**(30*0))@365 +
      (sext V1 301) * (2**(30*1))@365 +
      (sext V2 301) * (2**(30*2))@365 +
      (sext V3 301) * (2**(30*3))@365 +
      (sext V4 301) * (2**(30*4))@365 +
      (sext V5 301) * (2**(30*5))@365 +
      (sext V6 301) * (2**(30*6))@365 +
      (sext V7 301) * (2**(30*7))@365 +
      (sext V8 301) * (2**(30*8))@365 <s ((2**(255))+(2**(29)))@365,

      (sext G0 301) * (2**(30*0))@365 +
      (sext G1 301) * (2**(30*1))@365 +
      (sext G2 301) * (2**(30*2))@365 +
      (sext G3 301) * (2**(30*3))@365 +
      (sext G4 301) * (2**(30*4))@365 +
      (sext G5 301) * (2**(30*5))@365 +
      (sext G6 301) * (2**(30*6))@365 +
      (sext G7 301) * (2**(30*7))@365 +
      (sext G8 301) * (2**(30*8))@365 >s (-(2**(255)))@365,
      (sext G0 301) * (2**(30*0))@365 +
      (sext G1 301) * (2**(30*1))@365 +
      (sext G2 301) * (2**(30*2))@365 +
      (sext G3 301) * (2**(30*3))@365 +
      (sext G4 301) * (2**(30*4))@365 +
      (sext G5 301) * (2**(30*5))@365 +
      (sext G6 301) * (2**(30*6))@365 +
      (sext G7 301) * (2**(30*7))@365 +
      (sext G8 301) * (2**(30*8))@365 <s (2**(255))@365,

      (sext S0 301) * (2**(30*0))@365 +
      (sext S1 301) * (2**(30*1))@365 +
      (sext S2 301) * (2**(30*2))@365 +
      (sext S3 301) * (2**(30*3))@365 +
      (sext S4 301) * (2**(30*4))@365 +
      (sext S5 301) * (2**(30*5))@365 +
      (sext S6 301) * (2**(30*6))@365 +
      (sext S7 301) * (2**(30*7))@365 +
      (sext S8 301) * (2**(30*8))@365 >s (-(2**(29)))@365,
      (sext S0 301) * (2**(30*0))@365 +
      (sext S1 301) * (2**(30*1))@365 +
      (sext S2 301) * (2**(30*2))@365 +
      (sext S3 301) * (2**(30*3))@365 +
      (sext S4 301) * (2**(30*4))@365 +
      (sext S5 301) * (2**(30*5))@365 +
      (sext S6 301) * (2**(30*6))@365 +
      (sext S7 301) * (2**(30*7))@365 +
      (sext S8 301) * (2**(30*8))@365 <s ((2**(255)) + (2**(29)))@365,

      0@64 <=u F0, F0 <u (2**(30))@64,
      0@64 <=u F1, F1 <u (2**(30))@64,
      0@64 <=u F2, F2 <u (2**(30))@64,
      0@64 <=u F3, F3 <u (2**(30))@64,
      0@64 <=u F4, F4 <u (2**(30))@64,
      0@64 <=u F5, F5 <u (2**(30))@64,
      0@64 <=u F6, F6 <u (2**(30))@64,
      0@64 <=u F7, F7 <u (2**(30))@64,
      (-(2**(16)))@64 <s F8, F8 <s (2**(15))@64,
      (-(2**(29)))@64 <s V0, V0 <s (2**(30) + 2**(29))@64,
      0@64 <=u V1, V1 <u (2**(30))@64,
      0@64 <=u V2, V2 <u (2**(30))@64,
      0@64 <=u V3, V3 <u (2**(30))@64,
      0@64 <=u V4, V4 <u (2**(30))@64,
      0@64 <=u V5, V5 <u (2**(30))@64,
      0@64 <=u V6, V6 <u (2**(30))@64,
      0@64 <=u V7, V7 <u (2**(30))@64,
      0@64 <=u V8, V8 <u (2**(15))@64,
      0@64 <=u G0, G0 <u (2**(30))@64,
      0@64 <=u G1, G1 <u (2**(30))@64,
      0@64 <=u G2, G2 <u (2**(30))@64,
      0@64 <=u G3, G3 <u (2**(30))@64,
      0@64 <=u G4, G4 <u (2**(30))@64,
      0@64 <=u G5, G5 <u (2**(30))@64,
      0@64 <=u G6, G6 <u (2**(30))@64,
      0@64 <=u G7, G7 <u (2**(30))@64,
      (-(2**(16)))@64 <s G8, G8 <s (2**(15))@64,
      (-(2**(29)))@64 <s S0, S0 <s (2**(30) + 2**(29))@64,
      0@64 <=u S1, S1 <u (2**(30))@64,
      0@64 <=u S2, S2 <u (2**(30))@64,
      0@64 <=u S3, S3 <u (2**(30))@64,
      0@64 <=u S4, S4 <u (2**(30))@64,
      0@64 <=u S5, S5 <u (2**(30))@64,
      0@64 <=u S6, S6 <u (2**(30))@64,
      0@64 <=u S7, S7 <u (2**(30))@64,
      0@64 <=u S8, S8 <u (2**(15))@64

                      ]
}

nondet ymm1_1@uint64;
nondet ymm3_0@uint64;
nondet ymm3_1@uint64;

(* stack_2p30m1x4 *)
mov rsp_416_0 (2**(30)-1)@uint64;
mov rsp_416_1 (2**(30)-1)@uint64;
mov rsp_416_2 (2**(30)-1)@uint64;
mov rsp_416_3 (2**(30)-1)@uint64;

(* stack_inv19_2p30x4 *)
mov rsp_384_0 678152731@uint64;
mov rsp_384_1 678152731@uint64;
mov rsp_384_2 678152731@uint64;
mov rsp_384_3 678152731@uint64;

(* stack_19x4 *)
mov rsp_0_0 19@uint64;
mov rsp_0_1 19@uint64;
mov rsp_0_2 19@uint64;
mov rsp_0_3 19@uint64;

(* stack_2p63x4 *)
mov rsp_512_0 0x8000000000000000@uint64;
mov rsp_512_1 0x8000000000000000@uint64;
mov rsp_512_2 0x8000000000000000@uint64;
mov rsp_512_3 0x8000000000000000@uint64;

(* stack_32767x4 *)
mov rsp_352_0 (2**(64)-1)@uint64;
mov rsp_352_1 32767@uint64;
mov rsp_352_2 (2**(64)-1)@uint64;
mov rsp_352_3 32767@uint64;

(* stack_2p48x4 *)
mov rsp_480_0 0x1000000000000@sint64;
mov rsp_480_1 0x1000000000000@sint64;
mov rsp_480_2 0x1000000000000@sint64;
mov rsp_480_3 0x1000000000000@sint64;

(* stack_2p33x4 *)
mov rsp_448_0 0x200000000@uint64;
mov rsp_448_1 0x200000000@uint64;
mov rsp_448_2 0x200000000@uint64;
mov rsp_448_3 0x200000000@uint64;

(* stack_0_19x4 *)
mov rsp_320_0 0@uint64;
mov rsp_320_1 19@uint64;
mov rsp_320_2 0@uint64;
mov rsp_320_3 19@uint64;

(* _2p63m2p33x4 *)
mov ymm0_0 0x7FFFFFFE00000000@uint64;
mov ymm0_1 0x7FFFFFFE00000000@uint64;
mov ymm0_2 0x7FFFFFFE00000000@uint64;
mov ymm0_3 0x7FFFFFFE00000000@uint64;

mov r10 v;
mov r12 r;
mov r8  u;
mov r11 s;

mov rsp_32_0  F0;
mov rsp_32_1  V0;
mov rsp_32_2  G0;
mov rsp_32_3  S0;
mov rsp_64_0  F1;
mov rsp_64_1  V1;
mov rsp_64_2  G1;
mov rsp_64_3  S1;
mov rsp_96_0  F2;
mov rsp_96_1  V2;
mov rsp_96_2  G2;
mov rsp_96_3  S2;
mov rsp_128_0 F3;
mov rsp_128_1 V3;
mov rsp_128_2 G3;
mov rsp_128_3 S3;
mov rsp_160_0 F4;
mov rsp_160_1 V4;
mov rsp_160_2 G4;
mov rsp_160_3 S4;
mov rsp_192_0 F5;
mov rsp_192_1 V5;
mov rsp_192_2 G5;
mov rsp_192_3 S5;
mov rsp_224_0 F6;
mov rsp_224_1 V6;
mov rsp_224_2 G6;
mov rsp_224_3 S6;
mov rsp_256_0 F7;
mov rsp_256_1 V7;
mov rsp_256_2 G7;
mov rsp_256_3 S7;
mov rsp_288_0 F8;
mov rsp_288_1 V8;
mov rsp_288_2 G8;
mov rsp_288_3 S8;


(* vpinsrq $0x0,%r10,%xmm1,%xmm1 *)
mov ymm1_0 r10;
mov ymm1_1 ymm1_1;
(* vpinsrq $0x1,%r12,%xmm1,%xmm1 *)
mov ymm1_0 ymm1_0;
mov ymm1_1 r12;
(* vmovapd 32(%rsp),%ymm2 *)
mov ymm2_0 rsp_32_0;
mov ymm2_1 rsp_32_1;
mov ymm2_2 rsp_32_2;
mov ymm2_3 rsp_32_3;
(* vpinsrq $0x0,%r8,%xmm3,%xmm3 *)
mov ymm3_0 r8;
mov ymm3_1 ymm3_1;
(* vpinsrq $0x1,%r11,%xmm3,%xmm3 *)
mov ymm3_0 ymm3_0;
mov ymm3_1 r11;
(* vpermq $0x4e,%ymm2,%ymm4 *)
mov tmp_0 ymm2_0;
mov tmp_1 ymm2_1;
mov tmp_2 ymm2_2;
mov tmp_3 ymm2_3;
mov ymm4_0 tmp_2;
mov ymm4_1 tmp_3;
mov ymm4_2 tmp_0;
mov ymm4_3 tmp_1;

(* lower 32 bits of FVGS0 *)
vpc lFVGS0_0@sint32 ymm2_0;
vpc lFVGS0_1@sint32 ymm2_1;
vpc lFVGS0_2@sint32 ymm2_2;
vpc lFVGS0_3@sint32 ymm2_3;
assert true && (sext lFVGS0_0 32) = ymm2_0;
assert true && (sext lFVGS0_1 32) = ymm2_1;
assert true && (sext lFVGS0_2 32) = ymm2_2;
assert true && (sext lFVGS0_3 32) = ymm2_3;
assume lFVGS0_0 = ymm2_0 && true;
assume lFVGS0_1 = ymm2_1 && true;
assume lFVGS0_2 = ymm2_2 && true;
assume lFVGS0_3 = ymm2_3 && true;
(* lower 32 bits of GSFV0 *)
vpc lGSFV0_0@sint32 ymm4_0;
vpc lGSFV0_1@sint32 ymm4_1;
vpc lGSFV0_2@sint32 ymm4_2;
vpc lGSFV0_3@sint32 ymm4_3;
assert true && (sext lGSFV0_0 32) = ymm4_0;
assert true && (sext lGSFV0_1 32) = ymm4_1;
assert true && (sext lGSFV0_2 32) = ymm4_2;
assert true && (sext lGSFV0_3 32) = ymm4_3;
assume lGSFV0_0 = ymm4_0 && true;
assume lGSFV0_1 = ymm4_1 && true;
assume lGSFV0_2 = ymm4_2 && true;
assume lGSFV0_3 = ymm4_3 && true;

(* vpermq $0x50,%ymm3,%ymm3 *)
mov tmp_0 ymm3_0;
mov tmp_1 ymm3_1;
mov ymm3_0 tmp_0;
mov ymm3_1 tmp_0;
mov ymm3_2 tmp_1;
mov ymm3_3 tmp_1;
(* vpermq $0x50,%ymm1,%ymm1 *)
mov tmp_0 ymm1_0;
mov tmp_1 ymm1_1;
mov ymm1_0 tmp_0;
mov ymm1_1 tmp_0;
mov ymm1_2 tmp_1;
mov ymm1_3 tmp_1;
(* vmovapd 416(%rsp),%ymm5 *)
mov ymm5_0 rsp_416_0;
mov ymm5_1 rsp_416_1;
mov ymm5_2 rsp_416_2;
mov ymm5_3 rsp_416_3;
(* vpand %ymm3,%ymm5,%ymm6 *)

(* uuss *)
mov uuss_0 ymm3_0;
mov uuss_1 ymm3_1;
mov uuss_2 ymm3_2;
mov uuss_3 ymm3_3;

and ymm6_0@uint64 ymm3_0 ymm5_0;
and ymm6_1@uint64 ymm3_1 ymm5_1;
and ymm6_2@uint64 ymm3_2 ymm5_2;
and ymm6_3@uint64 ymm3_3 ymm5_3;

vpc tmp0@uint64 ymm6_0;
vpc tmp1@uint64 ymm6_1;
vpc tmp2@uint64 ymm6_2;
vpc tmp3@uint64 ymm6_3;
usplit dc0 bot0 tmp0 30;
usplit dc1 bot1 tmp1 30;
usplit dc2 bot2 tmp2 30;
usplit dc3 bot3 tmp3 30;
assert true && and[dc0 = 0@64, bot0 = ymm6_0];
assert true && and[dc1 = 0@64, bot1 = ymm6_1];
assert true && and[dc2 = 0@64, bot2 = ymm6_2];
assert true && and[dc3 = 0@64, bot3 = ymm6_3];
assume dc0 = 0 && true;
assume dc1 = 0 && true;
assume dc2 = 0 && true;
assume dc3 = 0 && true;
assume bot0 = ymm6_0 && true;
assume bot1 = ymm6_1 && true;
assume bot2 = ymm6_2 && true;
assume bot3 = ymm6_3 && true;

(* uuss0 *)
mov uuss0_0 ymm6_0;
mov uuss0_1 ymm6_1;
mov uuss0_2 ymm6_2;
mov uuss0_3 ymm6_3;

assert true && eqmod uuss_0 uuss0_0 (2**(30))@64;
assert true && eqmod uuss_1 uuss0_1 (2**(30))@64;
assert true && eqmod uuss_2 uuss0_2 (2**(30))@64;
assert true && eqmod uuss_3 uuss0_3 (2**(30))@64;
assume eqmod uuss_0 uuss0_0 (2**(30)) && true;
assume eqmod uuss_1 uuss0_1 (2**(30)) && true;
assume eqmod uuss_2 uuss0_2 (2**(30)) && true;
assume eqmod uuss_3 uuss0_3 (2**(30)) && true;

(* lower 32 bits of uuss0 *)
vpc luuss0_0@sint32 ymm6_0;
vpc luuss0_1@sint32 ymm6_1;
vpc luuss0_2@sint32 ymm6_2;
vpc luuss0_3@sint32 ymm6_3;
assert true && (sext luuss0_0 32) = ymm6_0;
assert true && (sext luuss0_1 32) = ymm6_1;
assert true && (sext luuss0_2 32) = ymm6_2;
assert true && (sext luuss0_3 32) = ymm6_3;
assume luuss0_0 = ymm6_0 && true;
assume luuss0_1 = ymm6_1 && true;
assume luuss0_2 = ymm6_2 && true;
assume luuss0_3 = ymm6_3 && true;

(* vpand %ymm1,%ymm5,%ymm7 *)

(* vvrr *)
mov vvrr_0 ymm1_0;
mov vvrr_1 ymm1_1;
mov vvrr_2 ymm1_2;
mov vvrr_3 ymm1_3;

and ymm7_0@uint64 ymm1_0 ymm5_0;
and ymm7_1@uint64 ymm1_1 ymm5_1;
and ymm7_2@uint64 ymm1_2 ymm5_2;
and ymm7_3@uint64 ymm1_3 ymm5_3;

vpc tmp0@uint64 ymm7_0;
vpc tmp1@uint64 ymm7_1;
vpc tmp2@uint64 ymm7_2;
vpc tmp3@uint64 ymm7_3;
usplit dc0 bot0 tmp0 30;
usplit dc1 bot1 tmp1 30;
usplit dc2 bot2 tmp2 30;
usplit dc3 bot3 tmp3 30;
assert true && and[dc0 = 0@64, bot0 = ymm7_0];
assert true && and[dc1 = 0@64, bot1 = ymm7_1];
assert true && and[dc2 = 0@64, bot2 = ymm7_2];
assert true && and[dc3 = 0@64, bot3 = ymm7_3];
assume dc0 = 0 && true;
assume dc1 = 0 && true;
assume dc2 = 0 && true;
assume dc3 = 0 && true;
assume bot0 = ymm7_0 && true;
assume bot1 = ymm7_1 && true;
assume bot2 = ymm7_2 && true;
assume bot3 = ymm7_3 && true;

(* vvrr0 *)
mov vvrr0_0 ymm7_0;
mov vvrr0_1 ymm7_1;
mov vvrr0_2 ymm7_2;
mov vvrr0_3 ymm7_3;

assert true && eqmod vvrr_0 vvrr0_0 (2**(30))@64;
assert true && eqmod vvrr_1 vvrr0_1 (2**(30))@64;
assert true && eqmod vvrr_2 vvrr0_2 (2**(30))@64;
assert true && eqmod vvrr_3 vvrr0_3 (2**(30))@64;
assume eqmod vvrr_0 vvrr0_0 (2**(30)) && true;
assume eqmod vvrr_1 vvrr0_1 (2**(30)) && true;
assume eqmod vvrr_2 vvrr0_2 (2**(30)) && true;
assume eqmod vvrr_3 vvrr0_3 (2**(30)) && true;

(* lower 32 bits of vvrr0 *)
vpc lvvrr0_0@sint32 ymm7_0;
vpc lvvrr0_1@sint32 ymm7_1;
vpc lvvrr0_2@sint32 ymm7_2;
vpc lvvrr0_3@sint32 ymm7_3;
assert true && (sext lvvrr0_0 32) = ymm7_0;
assert true && (sext lvvrr0_1 32) = ymm7_1;
assert true && (sext lvvrr0_2 32) = ymm7_2;
assert true && (sext lvvrr0_3 32) = ymm7_3;
assume lvvrr0_0 = ymm7_0 && true;
assume lvvrr0_1 = ymm7_1 && true;
assume lvvrr0_2 = ymm7_2 && true;
assume lvvrr0_3 = ymm7_3 && true;

(* vpmuldq %ymm6,%ymm2,%ymm8 *)

mov a_0 luuss0_0;
mov a_1 luuss0_1;
mov a_2 luuss0_2;
mov a_3 luuss0_3;
mov b_0 lFVGS0_0;
mov b_1 lFVGS0_1;
mov b_2 lFVGS0_2;
mov b_3 lFVGS0_3;

smull h_0 l_0 a_0 b_0;
smull h_1 l_1 a_1 b_1;
smull h_2 l_2 a_2 b_2;
smull h_3 l_3 a_3 b_3;
join ymm8_0 h_0 l_0;
join ymm8_1 h_1 l_1;
join ymm8_2 h_2 l_2;
join ymm8_3 h_3 l_3;
(* vpmuldq %ymm7,%ymm4,%ymm9 *)

mov a_0 lvvrr0_0;
mov a_1 lvvrr0_1;
mov a_2 lvvrr0_2;
mov a_3 lvvrr0_3;
mov b_0 lGSFV0_0;
mov b_1 lGSFV0_1;
mov b_2 lGSFV0_2;
mov b_3 lGSFV0_3;

smull h_0 l_0 a_0 b_0;
smull h_1 l_1 a_1 b_1;
smull h_2 l_2 a_2 b_2;
smull h_3 l_3 a_3 b_3;
join ymm9_0 h_0 l_0;
join ymm9_1 h_1 l_1;
join ymm9_2 h_2 l_2;
join ymm9_3 h_3 l_3;
(* vpaddq %ymm9,%ymm8,%ymm8 *)
add ymm8_0 ymm9_0 ymm8_0;
add ymm8_1 ymm9_1 ymm8_1;
add ymm8_2 ymm9_2 ymm8_2;
add ymm8_3 ymm9_3 ymm8_3;

(* oout0 *)
mov oout0_0 ymm8_0;
mov oout0_1 ymm8_1;
mov oout0_2 ymm8_2;
mov oout0_3 ymm8_3;

(* vmovapd 384(%rsp),%ymm9 *)
mov ymm9_0 rsp_384_0;
mov ymm9_1 rsp_384_1;
mov ymm9_2 rsp_384_2;
mov ymm9_3 rsp_384_3;
(* vmovapd 0(%rsp),%ymm10 *)
mov ymm10_0 rsp_0_0;
mov ymm10_1 rsp_0_1;
mov ymm10_2 rsp_0_2;
mov ymm10_3 rsp_0_3;
(* vpmuldq %ymm8,%ymm9,%ymm11 *)

assert eqmod oout0_0 0 (2**(30)) && true;
assert eqmod oout0_2 0 (2**(30)) && true;
assume true && eqmod oout0_0 0@64 (2**(30))@64;
assume true && eqmod oout0_2 0@64 (2**(30))@64;
cast a_0@sint32 ymm8_0;
cast a_1@sint32 ymm8_1;
cast a_2@sint32 ymm8_2;
cast a_3@sint32 ymm8_3;
cast b_0@sint32 ymm9_0;
cast b_1@sint32 ymm9_1;
cast b_2@sint32 ymm9_2;
cast b_3@sint32 ymm9_3;
assert true && b_0 = 678152731@32;
assert true && b_1 = 678152731@32;
assert true && b_2 = 678152731@32;
assert true && b_3 = 678152731@32;
assume b_0 = 678152731 && true;
assume b_1 = 678152731 && true;
assume b_2 = 678152731 && true;
assume b_3 = 678152731 && true;

smull h_0 l_0 a_0 b_0;
smull h_1 l_1 a_1 b_1;
smull h_2 l_2 a_2 b_2;
smull h_3 l_3 a_3 b_3;
join ymm11_0 h_0 l_0;
join ymm11_1 h_1 l_1;
join ymm11_2 h_2 l_2;
join ymm11_3 h_3 l_3;

assert true && eqmod ymm11_0 0@64 (2**(30))@64;
assert true && eqmod ymm11_2 0@64 (2**(30))@64;
assume eqmod ymm11_0 0 (2**(30)) && true;
assume eqmod ymm11_2 0 (2**(30)) && true;

(* vpand %ymm11,%ymm5,%ymm11 *)

mov ymm11o_0 ymm11_0;
mov ymm11o_1 ymm11_1;
mov ymm11o_2 ymm11_2;
mov ymm11o_3 ymm11_3;

and ymm11_0@uint64 ymm11_0 ymm5_0;
and ymm11_1@uint64 ymm11_1 ymm5_1;
and ymm11_2@uint64 ymm11_2 ymm5_2;
and ymm11_3@uint64 ymm11_3 ymm5_3;

vpc tmp0@uint64 ymm11_0;
vpc tmp1@uint64 ymm11_1;
vpc tmp2@uint64 ymm11_2;
vpc tmp3@uint64 ymm11_3;
usplit dc0 bot0 tmp0 30;
usplit dc1 bot1 tmp1 30;
usplit dc2 bot2 tmp2 30;
usplit dc3 bot3 tmp3 30;
assert true && and[dc0 = 0@64, bot0 = ymm11_0];
assert true && and[dc1 = 0@64, bot1 = ymm11_1];
assert true && and[dc2 = 0@64, bot2 = ymm11_2];
assert true && and[dc3 = 0@64, bot3 = ymm11_3];
assume dc0 = 0 && true;
assume dc1 = 0 && true;
assume dc2 = 0 && true;
assume dc3 = 0 && true;
assume bot0 = ymm11_0 && true;
assume bot1 = ymm11_1 && true;
assume bot2 = ymm11_2 && true;
assume bot3 = ymm11_3 && true;

assert true && ymm11_0 = 0@64;
assert true && ymm11_2 = 0@64;
assume ymm11_0 = 0 && true;
assume ymm11_2 = 0 && true;

(* d0 *)
mov d0_0 ymm11_0;
mov d0_1 ymm11_1;
mov d0_2 ymm11_2;
mov d0_3 ymm11_3;

assert d0_0 = 0 && true;
assert d0_2 = 0 && true;
assume true && d0_0 = 0@64;
assume true && d0_2 = 0@64;

assert true && eqmod d0_0 ymm11o_0 (2**(30))@64;
assert true && eqmod d0_1 ymm11o_1 (2**(30))@64;
assert true && eqmod d0_2 ymm11o_2 (2**(30))@64;
assert true && eqmod d0_3 ymm11o_3 (2**(30))@64;
assume eqmod d0_0 ymm11o_0 (2**(30)) && true;
assume eqmod d0_1 ymm11o_1 (2**(30)) && true;
assume eqmod d0_2 ymm11o_2 (2**(30)) && true;
assume eqmod d0_3 ymm11o_3 (2**(30)) && true;

(* vpmuldq %ymm11,%ymm10,%ymm12 *)
vpc a_0@sint32 ymm11_0;
vpc a_1@sint32 ymm11_1;
vpc a_2@sint32 ymm11_2;
vpc a_3@sint32 ymm11_3;
vpc b_0@sint32 ymm10_0;
vpc b_1@sint32 ymm10_1;
vpc b_2@sint32 ymm10_2;
vpc b_3@sint32 ymm10_3;
smull h_0 l_0 a_0 b_0;
smull h_1 l_1 a_1 b_1;
smull h_2 l_2 a_2 b_2;
smull h_3 l_3 a_3 b_3;
join ymm12_0 h_0 l_0;
join ymm12_1 h_1 l_1;
join ymm12_2 h_2 l_2;
join ymm12_3 h_3 l_3;

assert ymm12_0 = 0 && true;

(* vpsubq %ymm12,%ymm8,%ymm8 *)

assert true && and[(-(2**(63)))@65 <=s (sext ymm8_0 1) - (sext ymm12_0 1), (sext ymm8_0 1) - (sext ymm12_0 1) <s (2**(63)-1)@65];
assert true && and[(-(2**(63)))@65 <=s (sext ymm8_0 1) - (sext ymm12_0 1), (sext ymm8_0 1) - (sext ymm12_0 1) <s (2**(63)-1)@65];
assert true && and[(-(2**(63)))@65 <=s (sext ymm8_0 1) - (sext ymm12_0 1), (sext ymm8_0 1) - (sext ymm12_0 1) <s (2**(63)-1)@65];
assert true && and[(-(2**(63)))@65 <=s (sext ymm8_0 1) - (sext ymm12_0 1), (sext ymm8_0 1) - (sext ymm12_0 1) <s (2**(63)-1)@65];

mov a_0 ymm8_0; 
mov a_1 ymm8_1; 
mov a_2 ymm8_2; 
mov a_3 ymm8_3; 
mov b_0 ymm12_0; 
mov b_1 ymm12_1; 
mov b_2 ymm12_2; 
mov b_3 ymm12_3; 

sub ymm8_0 ymm8_0 ymm12_0;
sub ymm8_1 ymm8_1 ymm12_1;
sub ymm8_2 ymm8_2 ymm12_2;
sub ymm8_3 ymm8_3 ymm12_3;

assume ymm8_0 = a_0 - b_0 && true;
assume ymm8_1 = a_1 - b_1 && true;
assume ymm8_2 = a_2 - b_2 && true;
assume ymm8_3 = a_3 - b_3 && true;

mov out0_0 ymm8_0;
mov out0_1 ymm8_1;
mov out0_2 ymm8_2;
mov out0_3 ymm8_3;

(* vpaddq 512(%rsp),%ymm8,%ymm8 *)

cast ymm8_0@uint64 ymm8_0;
cast ymm8_1@uint64 ymm8_1;
cast ymm8_2@uint64 ymm8_2;
cast ymm8_3@uint64 ymm8_3;

adds dontcare_0 ymm8_0 rsp_512_0 ymm8_0;
adds dontcare_1 ymm8_1 rsp_512_1 ymm8_1;
adds dontcare_2 ymm8_2 rsp_512_2 ymm8_2;
adds dontcare_3 ymm8_3 rsp_512_3 ymm8_3;

(* vpsrlq $30,%ymm8,%ymm8 *)
mov tmp_0@uint64 ymm8_0;
mov tmp_1@uint64 ymm8_1;
mov tmp_2@uint64 ymm8_2;
mov tmp_3@uint64 ymm8_3;
usplit ymm8_0 dontcare_0 tmp_0 30;
usplit ymm8_1 dontcare_1 tmp_1 30;
usplit ymm8_2 dontcare_2 tmp_2 30;
usplit ymm8_3 dontcare_3 tmp_3 30;

assert true && dontcare_0 = 0@64;
assert true && dontcare_1 = 0@64;
assert true && dontcare_2 = 0@64;
assert true && dontcare_3 = 0@64;
assume dontcare_0 = 0 && true;
assume dontcare_1 = 0 && true;
assume dontcare_2 = 0 && true;
assume dontcare_3 = 0 && true;

mov carryy_0 ymm8_0;
mov carryy_1 ymm8_1;
mov carryy_2 ymm8_2;
mov carryy_3 ymm8_3;

assert true && (sext (carryy_0 - (2**(33))@64) 29) * (2**(30))@93 = (sext out0_0 29);
assert true && (sext (carryy_1 - (2**(33))@64) 29) * (2**(30))@93 = (sext out0_1 29);
assert true && (sext (carryy_2 - (2**(33))@64) 29) * (2**(30))@93 = (sext out0_2 29);
assert true && (sext (carryy_3 - (2**(33))@64) 29) * (2**(30))@93 = (sext out0_3 29);
assume (carryy_0 - (2**(33))) * (2**(30)) = out0_0 && true;
assume (carryy_1 - (2**(33))) * (2**(30)) = out0_1 && true;
assume (carryy_2 - (2**(33))) * (2**(30)) = out0_2 && true;
assume (carryy_3 - (2**(33))) * (2**(30)) = out0_3 && true;

(* the value that carryy holds is less than 2^34, we dont care about it's sint or uint *)
mov tmp0 ymm8_0;
mov tmp1 ymm8_1;
mov tmp2 ymm8_2;
mov tmp3 ymm8_3;
vpc ymm8_0@sint64 tmp0;
vpc ymm8_1@sint64 tmp1;
vpc ymm8_2@sint64 tmp2;
vpc ymm8_3@sint64 tmp3;
assume tmp0 = ymm8_0 && true;
assume tmp1 = ymm8_1 && true;
assume tmp2 = ymm8_2 && true;
assume tmp3 = ymm8_3 && true;

(* vpsllq $15,%ymm11,%ymm11 *)

assert true && and[(-(2**(30)))@64 <=s ymm11_0, ymm11_0 <=s (2**(30))@64];
assert true && and[(-(2**(30)))@64 <=s ymm11_1, ymm11_1 <=s (2**(30))@64];
assert true && and[(-(2**(30)))@64 <=s ymm11_2, ymm11_2 <=s (2**(30))@64];
assert true && and[(-(2**(30)))@64 <=s ymm11_3, ymm11_3 <=s (2**(30))@64];

mov tmp0 ymm11_0;
mov tmp1 ymm11_1;
mov tmp2 ymm11_2;
mov tmp3 ymm11_3;

shl ymm11_0 ymm11_0 15;
shl ymm11_1 ymm11_1 15;
shl ymm11_2 ymm11_2 15;
shl ymm11_3 ymm11_3 15;

vpc ymm11_0@sint64 ymm11_0;
vpc ymm11_1@sint64 ymm11_1;
vpc ymm11_2@sint64 ymm11_2;
vpc ymm11_3@sint64 ymm11_3;

assume ymm11_0 = tmp0 * (2**(15)) && true;
assume ymm11_1 = tmp1 * (2**(15)) && true;
assume ymm11_2 = tmp2 * (2**(15)) && true;
assume ymm11_3 = tmp3 * (2**(15)) && true;

(* vmovapd 64(%rsp),%ymm12 *)
mov ymm12_0 rsp_64_0;
mov ymm12_1 rsp_64_1;
mov ymm12_2 rsp_64_2;
mov ymm12_3 rsp_64_3;
(* vpermq $0x4e,%ymm12,%ymm13 *)
mov tmp_0 ymm12_0;
mov tmp_1 ymm12_1;
mov tmp_2 ymm12_2;
mov tmp_3 ymm12_3;
mov ymm13_0 tmp_2;
mov ymm13_1 tmp_3;
mov ymm13_2 tmp_0;
mov ymm13_3 tmp_1;

(* lower 32 bits of FVGS1 *)
vpc lFVGS1_0@sint32 ymm12_0;
vpc lFVGS1_1@sint32 ymm12_1;
vpc lFVGS1_2@sint32 ymm12_2;
vpc lFVGS1_3@sint32 ymm12_3;
assert true && (sext lFVGS1_0 32) = ymm12_0;
assert true && (sext lFVGS1_1 32) = ymm12_1;
assert true && (sext lFVGS1_2 32) = ymm12_2;
assert true && (sext lFVGS1_3 32) = ymm12_3;
assume lFVGS1_0 = ymm12_0 && true;
assume lFVGS1_1 = ymm12_1 && true;
assume lFVGS1_2 = ymm12_2 && true;
assume lFVGS1_3 = ymm12_3 && true;
(* lower 32 bits of GSFV1 *)
vpc lGSFV1_0@sint32 ymm13_0;
vpc lGSFV1_1@sint32 ymm13_1;
vpc lGSFV1_2@sint32 ymm13_2;
vpc lGSFV1_3@sint32 ymm13_3;
assert true && (sext lGSFV1_0 32) = ymm13_0;
assert true && (sext lGSFV1_1 32) = ymm13_1;
assert true && (sext lGSFV1_2 32) = ymm13_2;
assert true && (sext lGSFV1_3 32) = ymm13_3;
assume lGSFV1_0 = ymm13_0 && true;
assume lGSFV1_1 = ymm13_1 && true;
assume lGSFV1_2 = ymm13_2 && true;
assume lGSFV1_3 = ymm13_3 && true;

(* vpmuldq %ymm6,%ymm12,%ymm14 *)

mov a_0 luuss0_0;
mov a_1 luuss0_1;
mov a_2 luuss0_2;
mov a_3 luuss0_3;
mov b_0 lFVGS1_0;
mov b_1 lFVGS1_1;
mov b_2 lFVGS1_2;
mov b_3 lFVGS1_3;

smull h_0 l_0 a_0 b_0;
smull h_1 l_1 a_1 b_1;
smull h_2 l_2 a_2 b_2;
smull h_3 l_3 a_3 b_3;
join ymm14_0 h_0 l_0;
join ymm14_1 h_1 l_1;
join ymm14_2 h_2 l_2;
join ymm14_3 h_3 l_3;
(* vpmuldq %ymm7,%ymm13,%ymm15 *)

mov a_0 lvvrr0_0;
mov a_1 lvvrr0_1;
mov a_2 lvvrr0_2;
mov a_3 lvvrr0_3;
mov b_0 lGSFV1_0;
mov b_1 lGSFV1_1;
mov b_2 lGSFV1_2;
mov b_3 lGSFV1_3;

smull h_0 l_0 a_0 b_0;
smull h_1 l_1 a_1 b_1;
smull h_2 l_2 a_2 b_2;
smull h_3 l_3 a_3 b_3;
join ymm15_0 h_0 l_0;
join ymm15_1 h_1 l_1;
join ymm15_2 h_2 l_2;
join ymm15_3 h_3 l_3;
(* vpaddq %ymm15,%ymm14,%ymm14 *)
add ymm14_0 ymm15_0 ymm14_0;
add ymm14_1 ymm15_1 ymm14_1;
add ymm14_2 ymm15_2 ymm14_2;
add ymm14_3 ymm15_3 ymm14_3;
(* vpsrlq $30,%ymm3,%ymm3 *)
cast tmp_0@uint64 ymm3_0;
cast tmp_1@uint64 ymm3_1;
cast tmp_2@uint64 ymm3_2;
cast tmp_3@uint64 ymm3_3;
usplit ymm3_0 dontcare_0 tmp_0 30;
usplit ymm3_1 dontcare_1 tmp_1 30;
usplit ymm3_2 dontcare_2 tmp_2 30;
usplit ymm3_3 dontcare_3 tmp_3 30;
vpc ymm3_0@uint64 ymm3_0;
vpc ymm3_1@uint64 ymm3_1;
vpc ymm3_2@uint64 ymm3_2;
vpc ymm3_3@uint64 ymm3_3;

(* uuss1 *)
mov uuss1_0 ymm3_0;
mov uuss1_1 ymm3_1;
mov uuss1_2 ymm3_2;
mov uuss1_3 ymm3_3;
(* lower 32 bits of uuss1 *)
cast luuss1_0@sint32 ymm3_0;
cast luuss1_1@sint32 ymm3_1;
cast luuss1_2@sint32 ymm3_2;
cast luuss1_3@sint32 ymm3_3;
(* only the lower 32 bits of uuss1 is used *)
assume luuss1_0 = ymm3_0 && true;
assume luuss1_1 = ymm3_1 && true;
assume luuss1_2 = ymm3_2 && true;
assume luuss1_3 = ymm3_3 && true;


assert true && uuss_0 = (sext luuss0_0 32) + (sext luuss1_0 32) * (2**(30))@64;
assert true && uuss_1 = (sext luuss0_1 32) + (sext luuss1_1 32) * (2**(30))@64;
assert true && uuss_2 = (sext luuss0_2 32) + (sext luuss1_2 32) * (2**(30))@64;
assert true && uuss_3 = (sext luuss0_3 32) + (sext luuss1_3 32) * (2**(30))@64;
assume uuss_0 = luuss0_0 + luuss1_0 * (2**(30)) && true;
assume uuss_1 = luuss0_1 + luuss1_1 * (2**(30)) && true;
assume uuss_2 = luuss0_2 + luuss1_2 * (2**(30)) && true;
assume uuss_3 = luuss0_3 + luuss1_3 * (2**(30)) && true;

assert true && eqmod (uuss_0 - (sext luuss0_0 32)) 0@64 (2**(30))@64;
assert true && eqmod (uuss_1 - (sext luuss0_1 32)) 0@64 (2**(30))@64;
assert true && eqmod (uuss_2 - (sext luuss0_2 32)) 0@64 (2**(30))@64;
assert true && eqmod (uuss_3 - (sext luuss0_3 32)) 0@64 (2**(30))@64;
assume eqmod (uuss_0 - luuss0_0) 0 (2**(30)) && true;
assume eqmod (uuss_1 - luuss0_1) 0 (2**(30)) && true;
assume eqmod (uuss_2 - luuss0_2) 0 (2**(30)) && true;
assume eqmod (uuss_3 - luuss0_3) 0 (2**(30)) && true;

(* vpsrlq $30,%ymm1,%ymm1 *)
cast tmp_0@uint64 ymm1_0;
cast tmp_1@uint64 ymm1_1;
cast tmp_2@uint64 ymm1_2;
cast tmp_3@uint64 ymm1_3;
usplit ymm1_0 dontcare_0 tmp_0 30;
usplit ymm1_1 dontcare_1 tmp_1 30;
usplit ymm1_2 dontcare_2 tmp_2 30;
usplit ymm1_3 dontcare_3 tmp_3 30;
vpc ymm1_0@uint64 ymm1_0;
vpc ymm1_1@uint64 ymm1_1;
vpc ymm1_2@uint64 ymm1_2;
vpc ymm1_3@uint64 ymm1_3;

(* vvrr1 *)
mov vvrr1_0 ymm1_0;
mov vvrr1_1 ymm1_1;
mov vvrr1_2 ymm1_2;
mov vvrr1_3 ymm1_3;
(* lower 32 bits of vvrr1 *)
cast lvvrr1_0@sint32 ymm1_0;
cast lvvrr1_1@sint32 ymm1_1;
cast lvvrr1_2@sint32 ymm1_2;
cast lvvrr1_3@sint32 ymm1_3;
(* only the lower 32 bits of uuss1 is used *)
assume lvvrr1_0 = ymm1_0 && true;
assume lvvrr1_1 = ymm1_1 && true;
assume lvvrr1_2 = ymm1_2 && true;
assume lvvrr1_3 = ymm1_3 && true;

assert true && vvrr_0 = (sext lvvrr0_0 32) + (sext lvvrr1_0 32) * (2**(30))@64;
assert true && vvrr_1 = (sext lvvrr0_1 32) + (sext lvvrr1_1 32) * (2**(30))@64;
assert true && vvrr_2 = (sext lvvrr0_2 32) + (sext lvvrr1_2 32) * (2**(30))@64;
assert true && vvrr_3 = (sext lvvrr0_3 32) + (sext lvvrr1_3 32) * (2**(30))@64;
assume vvrr_0 = lvvrr0_0 + lvvrr1_0 * (2**(30)) && true;
assume vvrr_1 = lvvrr0_1 + lvvrr1_1 * (2**(30)) && true;
assume vvrr_2 = lvvrr0_2 + lvvrr1_2 * (2**(30)) && true;
assume vvrr_3 = lvvrr0_3 + lvvrr1_3 * (2**(30)) && true;

assert true && eqmod (vvrr_0 - (sext lvvrr0_0 32)) 0@64 (2**(30))@64;
assert true && eqmod (vvrr_1 - (sext lvvrr0_1 32)) 0@64 (2**(30))@64;
assert true && eqmod (vvrr_2 - (sext lvvrr0_2 32)) 0@64 (2**(30))@64;
assert true && eqmod (vvrr_3 - (sext lvvrr0_3 32)) 0@64 (2**(30))@64;
assume eqmod (vvrr_0 - lvvrr0_0) 0 (2**(30)) && true;
assume eqmod (vvrr_1 - lvvrr0_1) 0 (2**(30)) && true;
assume eqmod (vvrr_2 - lvvrr0_2) 0 (2**(30)) && true;
assume eqmod (vvrr_3 - lvvrr0_3) 0 (2**(30)) && true;

(* vpmuldq %ymm3,%ymm2,%ymm2 *)

mov a_0 luuss1_0;
mov a_1 luuss1_1;
mov a_2 luuss1_2;
mov a_3 luuss1_3;
mov b_0 lFVGS0_0;
mov b_1 lFVGS0_1;
mov b_2 lFVGS0_2;
mov b_3 lFVGS0_3;

smull h_0 l_0 a_0 b_0;
smull h_1 l_1 a_1 b_1;
smull h_2 l_2 a_2 b_2;
smull h_3 l_3 a_3 b_3;
join ymm2_0 h_0 l_0;
join ymm2_1 h_1 l_1;
join ymm2_2 h_2 l_2;
join ymm2_3 h_3 l_3;
(* vpmuldq %ymm1,%ymm4,%ymm4 *)

mov a_0 lvvrr1_0;
mov a_1 lvvrr1_1;
mov a_2 lvvrr1_2;
mov a_3 lvvrr1_3;
mov b_0 lGSFV0_0;
mov b_1 lGSFV0_1;
mov b_2 lGSFV0_2;
mov b_3 lGSFV0_3;

smull h_0 l_0 a_0 b_0;
smull h_1 l_1 a_1 b_1;
smull h_2 l_2 a_2 b_2;
smull h_3 l_3 a_3 b_3;
join ymm4_0 h_0 l_0;
join ymm4_1 h_1 l_1;
join ymm4_2 h_2 l_2;
join ymm4_3 h_3 l_3;
(* vpaddq %ymm4,%ymm2,%ymm2 *)
add ymm2_0 ymm4_0 ymm2_0;
add ymm2_1 ymm4_1 ymm2_1;
add ymm2_2 ymm4_2 ymm2_2;
add ymm2_3 ymm4_3 ymm2_3;
(* vpaddq %ymm2,%ymm14,%ymm2 *)
add ymm2_0 ymm2_0 ymm14_0;
add ymm2_1 ymm2_1 ymm14_1;
add ymm2_2 ymm2_2 ymm14_2;
add ymm2_3 ymm2_3 ymm14_3;

(* oout1 *)
mov oout1_0 ymm2_0;
mov oout1_1 ymm2_1;
mov oout1_2 ymm2_2;
mov oout1_3 ymm2_3;

(* vpaddq %ymm2,%ymm8,%ymm2 *)
add ymm2_0 ymm2_0 ymm8_0;
add ymm2_1 ymm2_1 ymm8_1;
add ymm2_2 ymm2_2 ymm8_2;
add ymm2_3 ymm2_3 ymm8_3;

assert eqmod (oout0_0 + oout1_0*(2**30)) 0 (2**60) && true;

assert true && ymm2_0 = oout1_0 + carryy_0;
#assert true && (oout1_0 + carryy_0) * (2**(30)) = ;

#ssert eqmod ymm2_0 0 (2**(30)) && true;
#ssert eqmod ymm2_2 0 (2**(30)) && true;
assume true && eqmod ymm2_0 0@64 (2**(30))@64;
assume true && eqmod ymm2_2 0@64 (2**(30))@64;


(* vpmuldq %ymm2,%ymm9,%ymm4 *)
cast a_0@sint32 ymm2_0;
cast a_1@sint32 ymm2_1;
cast a_2@sint32 ymm2_2;
cast a_3@sint32 ymm2_3;
cast b_0@sint32 ymm9_0;
cast b_1@sint32 ymm9_1;
cast b_2@sint32 ymm9_2;
cast b_3@sint32 ymm9_3;
smull h_0 l_0 a_0 b_0;
smull h_1 l_1 a_1 b_1;
smull h_2 l_2 a_2 b_2;
smull h_3 l_3 a_3 b_3;
join ymm4_0 h_0 l_0;
join ymm4_1 h_1 l_1;
join ymm4_2 h_2 l_2;
join ymm4_3 h_3 l_3;

assert true && eqmod ymm4_0 0@64 (2**(30))@64;
assert true && eqmod ymm4_2 0@64 (2**(30))@64;
assume eqmod ymm4_0 0 (2**(30)) && true;
assume eqmod ymm4_2 0 (2**(30)) && true;

(* vpand %ymm4,%ymm5,%ymm4 *)

mov ymm4o_0 ymm4_0;
mov ymm4o_1 ymm4_1;
mov ymm4o_2 ymm4_2;
mov ymm4o_3 ymm4_3;

and ymm4_0@uint64 ymm4_0 ymm5_0;
and ymm4_1@uint64 ymm4_1 ymm5_1;
and ymm4_2@uint64 ymm4_2 ymm5_2;
and ymm4_3@uint64 ymm4_3 ymm5_3;

vpc tmp0@uint64 ymm4_0;
vpc tmp1@uint64 ymm4_1;
vpc tmp2@uint64 ymm4_2;
vpc tmp3@uint64 ymm4_3;
usplit dc0 bot0 tmp0 30;
usplit dc1 bot1 tmp1 30;
usplit dc2 bot2 tmp2 30;
usplit dc3 bot3 tmp3 30;
assert true && and[dc0 = 0@64, bot0 = ymm4_0];
assert true && and[dc1 = 0@64, bot1 = ymm4_1];
assert true && and[dc2 = 0@64, bot2 = ymm4_2];
assert true && and[dc3 = 0@64, bot3 = ymm4_3];
assume dc0 = 0 && true;
assume dc1 = 0 && true;
assume dc2 = 0 && true;
assume dc3 = 0 && true;
assume bot0 = ymm4_0 && true;
assume bot1 = ymm4_1 && true;
assume bot2 = ymm4_2 && true;
assume bot3 = ymm4_3 && true;

(* d1 *)
mov d1_0 ymm4_0;
mov d1_1 ymm4_1;
mov d1_2 ymm4_2;
mov d1_3 ymm4_3;

assert true && d1_0 = 0@64;
assert true && d1_2 = 0@64;
assume d1_0 = 0 && true;
assume d1_2 = 0 && true;

assert true && eqmod d1_0 ymm4o_0 (2**(30))@64;
assert true && eqmod d1_1 ymm4o_1 (2**(30))@64;
assert true && eqmod d1_2 ymm4o_2 (2**(30))@64;
assert true && eqmod d1_3 ymm4o_3 (2**(30))@64;
assume eqmod d1_0 ymm4o_0 (2**(30)) && true;
assume eqmod d1_1 ymm4o_1 (2**(30)) && true;
assume eqmod d1_2 ymm4o_2 (2**(30)) && true;
assume eqmod d1_3 ymm4o_3 (2**(30)) && true;



(* vpmuldq %ymm4,%ymm10,%ymm8 *)
vpc a_0@sint32 ymm4_0;
vpc a_1@sint32 ymm4_1;
vpc a_2@sint32 ymm4_2;
vpc a_3@sint32 ymm4_3;
vpc b_0@sint32 ymm10_0;
vpc b_1@sint32 ymm10_1;
vpc b_2@sint32 ymm10_2;
vpc b_3@sint32 ymm10_3;
smull h_0 l_0 a_0 b_0;
smull h_1 l_1 a_1 b_1;
smull h_2 l_2 a_2 b_2;
smull h_3 l_3 a_3 b_3;
join ymm8_0 h_0 l_0;
join ymm8_1 h_1 l_1;
join ymm8_2 h_2 l_2;
join ymm8_3 h_3 l_3;
(* vpsubq %ymm8,%ymm2,%ymm2 *)

assert true && and[(-(2**(63)))@65 <=s (sext ymm2_0 1) - (sext ymm8_0 1), (sext ymm2_0 1) - (sext ymm8_0 1) <s (2**(63)-1)@65];
assert true && and[(-(2**(63)))@65 <=s (sext ymm2_1 1) - (sext ymm8_1 1), (sext ymm2_1 1) - (sext ymm8_1 1) <s (2**(63)-1)@65];
assert true && and[(-(2**(63)))@65 <=s (sext ymm2_2 1) - (sext ymm8_2 1), (sext ymm2_2 1) - (sext ymm8_2 1) <s (2**(63)-1)@65];
assert true && and[(-(2**(63)))@65 <=s (sext ymm2_3 1) - (sext ymm8_3 1), (sext ymm2_3 1) - (sext ymm8_3 1) <s (2**(63)-1)@65];


mov a_0 ymm2_0; 
mov a_1 ymm2_1; 
mov a_2 ymm2_2; 
mov a_3 ymm2_3; 
mov b_0 ymm8_0; 
mov b_1 ymm8_1; 
mov b_2 ymm8_2; 
mov b_3 ymm8_3; 

sub ymm2_0 ymm2_0 ymm8_0;
sub ymm2_1 ymm2_1 ymm8_1;
sub ymm2_2 ymm2_2 ymm8_2;
sub ymm2_3 ymm2_3 ymm8_3;

assume ymm2_0 = a_0 - b_0 && true;
assume ymm2_1 = a_1 - b_1 && true;
assume ymm2_2 = a_2 - b_2 && true;
assume ymm2_3 = a_3 - b_3 && true;

(* out1 *)
mov out1_0 ymm2_0;
mov out1_1 ymm2_1;
mov out1_2 ymm2_2;
mov out1_3 ymm2_3;

(* vpaddq %ymm0,%ymm2,%ymm2 *)
cast ymm2_0@uint64 ymm2_0;
cast ymm2_1@uint64 ymm2_1;
cast ymm2_2@uint64 ymm2_2;
cast ymm2_3@uint64 ymm2_3;
adds dontcare_0 ymm2_0 ymm0_0 ymm2_0;
adds dontcare_1 ymm2_1 ymm0_1 ymm2_1;
adds dontcare_2 ymm2_2 ymm0_2 ymm2_2;
adds dontcare_3 ymm2_3 ymm0_3 ymm2_3;

(* vpsrlq $30,%ymm2,%ymm2 *)
mov tmp_0@uint64 ymm2_0;
mov tmp_1@uint64 ymm2_1;
mov tmp_2@uint64 ymm2_2;
mov tmp_3@uint64 ymm2_3;
usplit ymm2_0 dontcare_0 tmp_0 30;
usplit ymm2_1 dontcare_1 tmp_1 30;
usplit ymm2_2 dontcare_2 tmp_2 30;
usplit ymm2_3 dontcare_3 tmp_3 30;

assert true && dontcare_0 = 0@64;
assert true && dontcare_1 = 0@64;
assert true && dontcare_2 = 0@64;
assert true && dontcare_3 = 0@64;
assume dontcare_0 = 0 && true;
assume dontcare_1 = 0 && true;
assume dontcare_2 = 0 && true;
assume dontcare_3 = 0 && true;

mov carryy_0 ymm2_0;
mov carryy_1 ymm2_1;
mov carryy_2 ymm2_2;
mov carryy_3 ymm2_3;

assert true && (sext (carryy_0 - (2**(33))@64) 29) * (2**(30))@93 = (sext out1_0 29) - (2**(33))@93;
assert true && (sext (carryy_1 - (2**(33))@64) 29) * (2**(30))@93 = (sext out1_1 29) - (2**(33))@93;
assert true && (sext (carryy_2 - (2**(33))@64) 29) * (2**(30))@93 = (sext out1_2 29) - (2**(33))@93;
assert true && (sext (carryy_3 - (2**(33))@64) 29) * (2**(30))@93 = (sext out1_3 29) - (2**(33))@93;
assume (carryy_0 - (2**(33))) * (2**(30)) = out1_0 - (2**(33)) && true;
assume (carryy_1 - (2**(33))) * (2**(30)) = out1_1 - (2**(33)) && true;
assume (carryy_2 - (2**(33))) * (2**(30)) = out1_2 - (2**(33)) && true;
assume (carryy_3 - (2**(33))) * (2**(30)) = out1_3 - (2**(33)) && true;

(* the value that carryy holds is less than 2^34, we dont care about it's sint or uint *)
mov tmp0 ymm2_0;
mov tmp1 ymm2_1;
mov tmp2 ymm2_2;
mov tmp3 ymm2_3;
vpc ymm2_0@sint64 tmp0;
vpc ymm2_1@sint64 tmp1;
vpc ymm2_2@sint64 tmp2;
vpc ymm2_3@sint64 tmp3;
assume tmp0 = ymm2_0 && true;
assume tmp1 = ymm2_1 && true;
assume tmp2 = ymm2_2 && true;
assume tmp3 = ymm2_3 && true;


(* vpsllq $15,%ymm4,%ymm4 *)

assert true && and[(-(2**(30)))@64 <=s ymm4_0, ymm4_0 <=s (2**(30))@64];
assert true && and[(-(2**(30)))@64 <=s ymm4_1, ymm4_1 <=s (2**(30))@64];
assert true && and[(-(2**(30)))@64 <=s ymm4_2, ymm4_2 <=s (2**(30))@64];
assert true && and[(-(2**(30)))@64 <=s ymm4_3, ymm4_3 <=s (2**(30))@64];

mov tmp0 ymm4_0;
mov tmp1 ymm4_1;
mov tmp2 ymm4_2;
mov tmp3 ymm4_3;

shl ymm4_0 ymm4_0 15;
shl ymm4_1 ymm4_1 15;
shl ymm4_2 ymm4_2 15;
shl ymm4_3 ymm4_3 15;

vpc ymm4_0@sint64 ymm4_0;
vpc ymm4_1@sint64 ymm4_1;
vpc ymm4_2@sint64 ymm4_2;
vpc ymm4_3@sint64 ymm4_3;

assume ymm4_0 = tmp0 * (2**(15)) && true;
assume ymm4_1 = tmp1 * (2**(15)) && true;
assume ymm4_2 = tmp2 * (2**(15)) && true;
assume ymm4_3 = tmp3 * (2**(15)) && true;

(* vmovapd 96(%rsp),%ymm8 *)
mov ymm8_0 rsp_96_0;
mov ymm8_1 rsp_96_1;
mov ymm8_2 rsp_96_2;
mov ymm8_3 rsp_96_3;
(* vpermq $0x4e,%ymm8,%ymm9 *)
mov tmp_0 ymm8_0;
mov tmp_1 ymm8_1;
mov tmp_2 ymm8_2;
mov tmp_3 ymm8_3;
mov ymm9_0 tmp_2;
mov ymm9_1 tmp_3;
mov ymm9_2 tmp_0;
mov ymm9_3 tmp_1;

(* lower 32 bits of FVGS2 *)
vpc lFVGS2_0@sint32 ymm8_0;
vpc lFVGS2_1@sint32 ymm8_1;
vpc lFVGS2_2@sint32 ymm8_2;
vpc lFVGS2_3@sint32 ymm8_3;
assert true && (sext lFVGS2_0 32) = ymm8_0;
assert true && (sext lFVGS2_1 32) = ymm8_1;
assert true && (sext lFVGS2_2 32) = ymm8_2;
assert true && (sext lFVGS2_3 32) = ymm8_3;
assume lFVGS2_0 = ymm8_0 && true;
assume lFVGS2_1 = ymm8_1 && true;
assume lFVGS2_2 = ymm8_2 && true;
assume lFVGS2_3 = ymm8_3 && true;
(* lower 32 bits of GSFV2 *)
vpc lGSFV2_0@sint32 ymm9_0;
vpc lGSFV2_1@sint32 ymm9_1;
vpc lGSFV2_2@sint32 ymm9_2;
vpc lGSFV2_3@sint32 ymm9_3;
assert true && (sext lGSFV2_0 32) = ymm9_0;
assert true && (sext lGSFV2_1 32) = ymm9_1;
assert true && (sext lGSFV2_2 32) = ymm9_2;
assert true && (sext lGSFV2_3 32) = ymm9_3;
assume lGSFV2_0 = ymm9_0 && true;
assume lGSFV2_1 = ymm9_1 && true;
assume lGSFV2_2 = ymm9_2 && true;
assume lGSFV2_3 = ymm9_3 && true;

(* vpmuldq %ymm3,%ymm12,%ymm10 *)

mov a_0 luuss1_0;
mov a_1 luuss1_1;
mov a_2 luuss1_2;
mov a_3 luuss1_3;
mov b_0 lFVGS1_0;
mov b_1 lFVGS1_1;
mov b_2 lFVGS1_2;
mov b_3 lFVGS1_3;

smull h_0 l_0 a_0 b_0;
smull h_1 l_1 a_1 b_1;
smull h_2 l_2 a_2 b_2;
smull h_3 l_3 a_3 b_3;
join ymm10_0 h_0 l_0;
join ymm10_1 h_1 l_1;
join ymm10_2 h_2 l_2;
join ymm10_3 h_3 l_3;
(* vpmuldq %ymm1,%ymm13,%ymm12 *)

mov a_0 lvvrr1_0;
mov a_1 lvvrr1_1;
mov a_2 lvvrr1_2;
mov a_3 lvvrr1_3;
mov b_0 lGSFV1_0;
mov b_1 lGSFV1_1;
mov b_2 lGSFV1_2;
mov b_3 lGSFV1_3;

smull h_0 l_0 a_0 b_0;
smull h_1 l_1 a_1 b_1;
smull h_2 l_2 a_2 b_2;
smull h_3 l_3 a_3 b_3;
join ymm12_0 h_0 l_0;
join ymm12_1 h_1 l_1;
join ymm12_2 h_2 l_2;
join ymm12_3 h_3 l_3;
(* vpaddq %ymm12,%ymm10,%ymm10 *)
add ymm10_0 ymm12_0 ymm10_0;
add ymm10_1 ymm12_1 ymm10_1;
add ymm10_2 ymm12_2 ymm10_2;
add ymm10_3 ymm12_3 ymm10_3;
(* vpmuldq %ymm6,%ymm8,%ymm12 *)

mov a_0 luuss0_0;
mov a_1 luuss0_1;
mov a_2 luuss0_2;
mov a_3 luuss0_3;
mov b_0 lFVGS2_0;
mov b_1 lFVGS2_1;
mov b_2 lFVGS2_2;
mov b_3 lFVGS2_3;

smull h_0 l_0 a_0 b_0;
smull h_1 l_1 a_1 b_1;
smull h_2 l_2 a_2 b_2;
smull h_3 l_3 a_3 b_3;
join ymm12_0 h_0 l_0;
join ymm12_1 h_1 l_1;
join ymm12_2 h_2 l_2;
join ymm12_3 h_3 l_3;
(* vpmuldq %ymm7,%ymm9,%ymm13 *)

mov a_0 lvvrr0_0;
mov a_1 lvvrr0_1;
mov a_2 lvvrr0_2;
mov a_3 lvvrr0_3;
mov b_0 lGSFV2_0;
mov b_1 lGSFV2_1;
mov b_2 lGSFV2_2;
mov b_3 lGSFV2_3;

smull h_0 l_0 a_0 b_0;
smull h_1 l_1 a_1 b_1;
smull h_2 l_2 a_2 b_2;
smull h_3 l_3 a_3 b_3;
join ymm13_0 h_0 l_0;
join ymm13_1 h_1 l_1;
join ymm13_2 h_2 l_2;
join ymm13_3 h_3 l_3;
(* vpaddq %ymm13,%ymm12,%ymm12 *)
add ymm12_0 ymm13_0 ymm12_0;
add ymm12_1 ymm13_1 ymm12_1;
add ymm12_2 ymm13_2 ymm12_2;
add ymm12_3 ymm13_3 ymm12_3;
(* vpaddq %ymm12,%ymm10,%ymm12 *)
add ymm12_0 ymm12_0 ymm10_0;
add ymm12_1 ymm12_1 ymm10_1;
add ymm12_2 ymm12_2 ymm10_2;
add ymm12_3 ymm12_3 ymm10_3;

(* oout2 *)
mov oout2_0 ymm12_0;
mov oout2_1 ymm12_1;
mov oout2_2 ymm12_2;
mov oout2_3 ymm12_3;

(* vpaddq %ymm12,%ymm2,%ymm12 *)
add ymm12_0 ymm12_0 ymm2_0;
add ymm12_1 ymm12_1 ymm2_1;
add ymm12_2 ymm12_2 ymm2_2;
add ymm12_3 ymm12_3 ymm2_3;

(* out2 *)
mov out2_0 ymm12_0;
mov out2_1 ymm12_1;
mov out2_2 ymm12_2;
mov out2_3 ymm12_3;

(* vpaddq %ymm0,%ymm12,%ymm2 *)
cast ymm12_0@uint64 ymm12_0;
cast ymm12_1@uint64 ymm12_1;
cast ymm12_2@uint64 ymm12_2;
cast ymm12_3@uint64 ymm12_3;
adds dontcare_0 ymm2_0 ymm0_0 ymm12_0;
adds dontcare_1 ymm2_1 ymm0_1 ymm12_1;
adds dontcare_2 ymm2_2 ymm0_2 ymm12_2;
adds dontcare_3 ymm2_3 ymm0_3 ymm12_3;
(* vpsrlq $30,%ymm2,%ymm2 *)
vpc tmp_0@uint64 ymm2_0;
vpc tmp_1@uint64 ymm2_1;
vpc tmp_2@uint64 ymm2_2;
vpc tmp_3@uint64 ymm2_3;
usplit ymm2_0 dontcare2_0 tmp_0 30;
usplit ymm2_1 dontcare2_1 tmp_1 30;
usplit ymm2_2 dontcare2_2 tmp_2 30;
usplit ymm2_3 dontcare2_3 tmp_3 30;

mov carryy2_0 ymm2_0;
mov carryy2_1 ymm2_1;
mov carryy2_2 ymm2_2;
mov carryy2_3 ymm2_3;

assert true && (uext dontcare2_0 29) + (sext carryy2_0 29) * (2**(30))@93 = (sext out2_0 29) - (2**(33))@93 + (2**(63))@93;
assert true && (uext dontcare2_1 29) + (sext carryy2_1 29) * (2**(30))@93 = (sext out2_1 29) - (2**(33))@93 + (2**(63))@93;
assert true && (uext dontcare2_2 29) + (sext carryy2_2 29) * (2**(30))@93 = (sext out2_2 29) - (2**(33))@93 + (2**(63))@93;
assert true && (uext dontcare2_3 29) + (sext carryy2_3 29) * (2**(30))@93 = (sext out2_3 29) - (2**(33))@93 + (2**(63))@93;
assume dontcare2_0 + carryy2_0 * (2**(30)) = out2_0 - (2**(33)) + (2**(63)) && true;
assume dontcare2_1 + carryy2_1 * (2**(30)) = out2_1 - (2**(33)) + (2**(63)) && true;
assume dontcare2_2 + carryy2_2 * (2**(30)) = out2_2 - (2**(33)) + (2**(63)) && true;
assume dontcare2_3 + carryy2_3 * (2**(30)) = out2_3 - (2**(33)) + (2**(63)) && true;

(* the value that carryy2 holds is less than 2^34, we dont care about it's sint or uint *)
mov tmp0 ymm2_0;
mov tmp1 ymm2_1;
mov tmp2 ymm2_2;
mov tmp3 ymm2_3;
vpc ymm2_0@sint64 tmp0;
vpc ymm2_1@sint64 tmp1;
vpc ymm2_2@sint64 tmp2;
vpc ymm2_3@sint64 tmp3;
assume tmp0 = ymm2_0 && true;
assume tmp1 = ymm2_1 && true;
assume tmp2 = ymm2_2 && true;
assume tmp3 = ymm2_3 && true;

(* vmovapd 128(%rsp),%ymm10 *)
mov ymm10_0 rsp_128_0;
mov ymm10_1 rsp_128_1;
mov ymm10_2 rsp_128_2;
mov ymm10_3 rsp_128_3;
(* vpermq $0x4e,%ymm10,%ymm13 *)
mov tmp_0 ymm10_0;
mov tmp_1 ymm10_1;
mov tmp_2 ymm10_2;
mov tmp_3 ymm10_3;
mov ymm13_0 tmp_2;
mov ymm13_1 tmp_3;
mov ymm13_2 tmp_0;
mov ymm13_3 tmp_1;

(* lower 32 bits of FVGS3 *)
vpc lFVGS3_0@sint32 ymm10_0;
vpc lFVGS3_1@sint32 ymm10_1;
vpc lFVGS3_2@sint32 ymm10_2;
vpc lFVGS3_3@sint32 ymm10_3;
assert true && (sext lFVGS3_0 32) = ymm10_0;
assert true && (sext lFVGS3_1 32) = ymm10_1;
assert true && (sext lFVGS3_2 32) = ymm10_2;
assert true && (sext lFVGS3_3 32) = ymm10_3;
assume lFVGS3_0 = ymm10_0 && true;
assume lFVGS3_1 = ymm10_1 && true;
assume lFVGS3_2 = ymm10_2 && true;
assume lFVGS3_3 = ymm10_3 && true;
(* lower 32 bits of GSFV3 *)
vpc lGSFV3_0@sint32 ymm13_0;
vpc lGSFV3_1@sint32 ymm13_1;
vpc lGSFV3_2@sint32 ymm13_2;
vpc lGSFV3_3@sint32 ymm13_3;
assert true && (sext lGSFV3_0 32) = ymm13_0;
assert true && (sext lGSFV3_1 32) = ymm13_1;
assert true && (sext lGSFV3_2 32) = ymm13_2;
assert true && (sext lGSFV3_3 32) = ymm13_3;
assume lGSFV3_0 = ymm13_0 && true;
assume lGSFV3_1 = ymm13_1 && true;
assume lGSFV3_2 = ymm13_2 && true;
assume lGSFV3_3 = ymm13_3 && true;

(* vpmuldq %ymm3,%ymm8,%ymm8 *)

mov a_0 luuss1_0;
mov a_1 luuss1_1;
mov a_2 luuss1_2;
mov a_3 luuss1_3;
mov b_0 lFVGS2_0;
mov b_1 lFVGS2_1;
mov b_2 lFVGS2_2;
mov b_3 lFVGS2_3;

smull h_0 l_0 a_0 b_0;
smull h_1 l_1 a_1 b_1;
smull h_2 l_2 a_2 b_2;
smull h_3 l_3 a_3 b_3;
join ymm8_0 h_0 l_0;
join ymm8_1 h_1 l_1;
join ymm8_2 h_2 l_2;
join ymm8_3 h_3 l_3;
(* vpmuldq %ymm1,%ymm9,%ymm9 *)

mov a_0 lvvrr1_0;
mov a_1 lvvrr1_1;
mov a_2 lvvrr1_2;
mov a_3 lvvrr1_3;
mov b_0 lGSFV2_0;
mov b_1 lGSFV2_1;
mov b_2 lGSFV2_2;
mov b_3 lGSFV2_3;

smull h_0 l_0 a_0 b_0;
smull h_1 l_1 a_1 b_1;
smull h_2 l_2 a_2 b_2;
smull h_3 l_3 a_3 b_3;
join ymm9_0 h_0 l_0;
join ymm9_1 h_1 l_1;
join ymm9_2 h_2 l_2;
join ymm9_3 h_3 l_3;
(* vpaddq %ymm9,%ymm8,%ymm8 *)
add ymm8_0 ymm9_0 ymm8_0;
add ymm8_1 ymm9_1 ymm8_1;
add ymm8_2 ymm9_2 ymm8_2;
add ymm8_3 ymm9_3 ymm8_3;
(* vpmuldq %ymm6,%ymm10,%ymm9 *)

mov a_0 luuss0_0;
mov a_1 luuss0_1;
mov a_2 luuss0_2;
mov a_3 luuss0_3;
mov b_0 lFVGS3_0;
mov b_1 lFVGS3_1;
mov b_2 lFVGS3_2;
mov b_3 lFVGS3_3;

smull h_0 l_0 a_0 b_0;
smull h_1 l_1 a_1 b_1;
smull h_2 l_2 a_2 b_2;
smull h_3 l_3 a_3 b_3;
join ymm9_0 h_0 l_0;
join ymm9_1 h_1 l_1;
join ymm9_2 h_2 l_2;
join ymm9_3 h_3 l_3;
(* vpmuldq %ymm7,%ymm13,%ymm14 *)

mov a_0 lvvrr0_0;
mov a_1 lvvrr0_1;
mov a_2 lvvrr0_2;
mov a_3 lvvrr0_3;
mov b_0 lGSFV3_0;
mov b_1 lGSFV3_1;
mov b_2 lGSFV3_2;
mov b_3 lGSFV3_3;

smull h_0 l_0 a_0 b_0;
smull h_1 l_1 a_1 b_1;
smull h_2 l_2 a_2 b_2;
smull h_3 l_3 a_3 b_3;
join ymm14_0 h_0 l_0;
join ymm14_1 h_1 l_1;
join ymm14_2 h_2 l_2;
join ymm14_3 h_3 l_3;
(* vpaddq %ymm14,%ymm9,%ymm9 *)
add ymm9_0 ymm14_0 ymm9_0;
add ymm9_1 ymm14_1 ymm9_1;
add ymm9_2 ymm14_2 ymm9_2;
add ymm9_3 ymm14_3 ymm9_3;
(* vpaddq %ymm9,%ymm8,%ymm9 *)
add ymm9_0 ymm9_0 ymm8_0;
add ymm9_1 ymm9_1 ymm8_1;
add ymm9_2 ymm9_2 ymm8_2;
add ymm9_3 ymm9_3 ymm8_3;

(* oout3 *)
mov oout3_0 ymm9_0;
mov oout3_1 ymm9_1;
mov oout3_2 ymm9_2;
mov oout3_3 ymm9_3;

(* vpaddq %ymm9,%ymm2,%ymm9 *)
add ymm9_0 ymm9_0 ymm2_0;
add ymm9_1 ymm9_1 ymm2_1;
add ymm9_2 ymm9_2 ymm2_2;
add ymm9_3 ymm9_3 ymm2_3;

(* out3 *)
mov out3_0 ymm9_0;
mov out3_1 ymm9_1;
mov out3_2 ymm9_2;
mov out3_3 ymm9_3;

(* vpand %ymm12,%ymm5,%ymm12 *)

mov tmp0 ymm12_0;
mov tmp1 ymm12_1;
mov tmp2 ymm12_2;
mov tmp3 ymm12_3;

and ymm12_0@uint64 ymm12_0 ymm5_0;
and ymm12_1@uint64 ymm12_1 ymm5_1;
and ymm12_2@uint64 ymm12_2 ymm5_2;
and ymm12_3@uint64 ymm12_3 ymm5_3;

vpc tmp0@uint64 ymm12_0;
vpc tmp1@uint64 ymm12_1;
vpc tmp2@uint64 ymm12_2;
vpc tmp3@uint64 ymm12_3;
usplit dc0 bot0 tmp0 30;
usplit dc1 bot1 tmp1 30;
usplit dc2 bot2 tmp2 30;
usplit dc3 bot3 tmp3 30;
assert true && and[dc0 = 0@64, bot0 = ymm12_0];
assert true && and[dc1 = 0@64, bot1 = ymm12_1];
assert true && and[dc2 = 0@64, bot2 = ymm12_2];
assert true && and[dc3 = 0@64, bot3 = ymm12_3];
assume dc0 = 0 && true;
assume dc1 = 0 && true;
assume dc2 = 0 && true;
assume dc3 = 0 && true;
assume bot0 = ymm12_0 && true;
assume bot1 = ymm12_1 && true;
assume bot2 = ymm12_2 && true;
assume bot3 = ymm12_3 && true;

assert true && eqmod ymm12_0 tmp0 (2**30)@64;
assert true && eqmod ymm12_1 tmp1 (2**30)@64;
assert true && eqmod ymm12_2 tmp2 (2**30)@64;
assert true && eqmod ymm12_3 tmp3 (2**30)@64;
assume eqmod ymm12_0 tmp0 (2**30) && true;
assume eqmod ymm12_1 tmp1 (2**30) && true;
assume eqmod ymm12_2 tmp2 (2**30) && true;
assume eqmod ymm12_3 tmp3 (2**30) && true;

mov fout2_0 ymm12_0;
mov fout2_1 ymm12_1;
mov fout2_2 ymm12_2;
mov fout2_3 ymm12_3;

assert true && fout2_0 = dontcare2_0;
assert true && fout2_1 = dontcare2_1;
assert true && fout2_2 = dontcare2_2;
assert true && fout2_3 = dontcare2_3;
assume fout2_0 = dontcare2_0 && true;
assume fout2_1 = dontcare2_1 && true;
assume fout2_2 = dontcare2_2 && true;
assume fout2_3 = dontcare2_3 && true;

(* vpaddq %ymm0,%ymm9,%ymm2 *)
cast ymm9_0@uint64 ymm9_0;
cast ymm9_1@uint64 ymm9_1;
cast ymm9_2@uint64 ymm9_2;
cast ymm9_3@uint64 ymm9_3;
adds dontcare_0 ymm2_0 ymm0_0 ymm9_0;
adds dontcare_1 ymm2_1 ymm0_1 ymm9_1;
adds dontcare_2 ymm2_2 ymm0_2 ymm9_2;
adds dontcare_3 ymm2_3 ymm0_3 ymm9_3;
(* vpsrlq $30,%ymm2,%ymm2 *)
vpc tmp_0@uint64 ymm2_0;
vpc tmp_1@uint64 ymm2_1;
vpc tmp_2@uint64 ymm2_2;
vpc tmp_3@uint64 ymm2_3;
usplit ymm2_0 dontcare3_0 tmp_0 30;
usplit ymm2_1 dontcare3_1 tmp_1 30;
usplit ymm2_2 dontcare3_2 tmp_2 30;
usplit ymm2_3 dontcare3_3 tmp_3 30;

mov carryy3_0 ymm2_0;
mov carryy3_1 ymm2_1;
mov carryy3_2 ymm2_2;
mov carryy3_3 ymm2_3;

assert true && (uext dontcare3_0 29) + (sext carryy3_0 29) * (2**(30))@93 = (sext out3_0 29) - (2**(33))@93 + (2**(63))@93;
assert true && (uext dontcare3_1 29) + (sext carryy3_1 29) * (2**(30))@93 = (sext out3_1 29) - (2**(33))@93 + (2**(63))@93;
assert true && (uext dontcare3_2 29) + (sext carryy3_2 29) * (2**(30))@93 = (sext out3_2 29) - (2**(33))@93 + (2**(63))@93;
assert true && (uext dontcare3_3 29) + (sext carryy3_3 29) * (2**(30))@93 = (sext out3_3 29) - (2**(33))@93 + (2**(63))@93;
assume dontcare3_0 + carryy3_0 * (2**(30)) = out3_0 - (2**(33)) + (2**(63)) && true;
assume dontcare3_1 + carryy3_1 * (2**(30)) = out3_1 - (2**(33)) + (2**(63)) && true;
assume dontcare3_2 + carryy3_2 * (2**(30)) = out3_2 - (2**(33)) + (2**(63)) && true;
assume dontcare3_3 + carryy3_3 * (2**(30)) = out3_3 - (2**(33)) + (2**(63)) && true;

(* the value that carryy3 holds is less than 2^34, we dont care about it's sint or uint *)
mov tmp0 ymm2_0;
mov tmp1 ymm2_1;
mov tmp2 ymm2_2;
mov tmp3 ymm2_3;
vpc ymm2_0@sint64 tmp0;
vpc ymm2_1@sint64 tmp1;
vpc ymm2_2@sint64 tmp2;
vpc ymm2_3@sint64 tmp3;
assume tmp0 = ymm2_0 && true;
assume tmp1 = ymm2_1 && true;
assume tmp2 = ymm2_2 && true;
assume tmp3 = ymm2_3 && true;

(* vpand %ymm9,%ymm5,%ymm9 *)

mov tmp0 ymm9_0;
mov tmp1 ymm9_1;
mov tmp2 ymm9_2;
mov tmp3 ymm9_3;

and ymm9_0@uint64 ymm9_0 ymm5_0;
and ymm9_1@uint64 ymm9_1 ymm5_1;
and ymm9_2@uint64 ymm9_2 ymm5_2;
and ymm9_3@uint64 ymm9_3 ymm5_3;

vpc tmp0@uint64 ymm9_0;
vpc tmp1@uint64 ymm9_1;
vpc tmp2@uint64 ymm9_2;
vpc tmp3@uint64 ymm9_3;
usplit dc0 bot0 tmp0 30;
usplit dc1 bot1 tmp1 30;
usplit dc2 bot2 tmp2 30;
usplit dc3 bot3 tmp3 30;
assert true && and[dc0 = 0@64, bot0 = ymm9_0];
assert true && and[dc1 = 0@64, bot1 = ymm9_1];
assert true && and[dc2 = 0@64, bot2 = ymm9_2];
assert true && and[dc3 = 0@64, bot3 = ymm9_3];
assume dc0 = 0 && true;
assume dc1 = 0 && true;
assume dc2 = 0 && true;
assume dc3 = 0 && true;
assume bot0 = ymm9_0 && true;
assume bot1 = ymm9_1 && true;
assume bot2 = ymm9_2 && true;
assume bot3 = ymm9_3 && true;

assert true && eqmod ymm9_0 tmp0 (2**30)@64;
assert true && eqmod ymm9_1 tmp1 (2**30)@64;
assert true && eqmod ymm9_2 tmp2 (2**30)@64;
assert true && eqmod ymm9_3 tmp3 (2**30)@64;
assume eqmod ymm9_0 tmp0 (2**30) && true;
assume eqmod ymm9_1 tmp1 (2**30) && true;
assume eqmod ymm9_2 tmp2 (2**30) && true;
assume eqmod ymm9_3 tmp3 (2**30) && true;

mov fout3_0 ymm9_0;
mov fout3_1 ymm9_1;
mov fout3_2 ymm9_2;
mov fout3_3 ymm9_3;

assert true && fout3_0 = dontcare3_0;
assert true && fout3_1 = dontcare3_1;
assert true && fout3_2 = dontcare3_2;
assert true && fout3_3 = dontcare3_3;
assume fout3_0 = dontcare3_0 && true;
assume fout3_1 = dontcare3_1 && true;
assume fout3_2 = dontcare3_2 && true;
assume fout3_3 = dontcare3_3 && true;

(* vmovapd %ymm9,64(%rsp) *)
mov rsp_64_0 ymm9_0;
mov rsp_64_1 ymm9_1;
mov rsp_64_2 ymm9_2;
mov rsp_64_3 ymm9_3;
(* vpsllq $30,%ymm9,%ymm8 *)
shl ymm8_0 ymm9_0 30;
shl ymm8_1 ymm9_1 30;
shl ymm8_2 ymm9_2 30;
shl ymm8_3 ymm9_3 30;
(* vpaddq %ymm8,%ymm12,%ymm8 *)
add ymm8_0 ymm8_0 ymm12_0;
add ymm8_1 ymm8_1 ymm12_1;
add ymm8_2 ymm8_2 ymm12_2;
add ymm8_3 ymm8_3 ymm12_3;
(* vmovapd %ymm8,608(%rsp) *)
mov rsp_608_0 ymm8_0;
mov rsp_608_1 ymm8_1;
mov rsp_608_2 ymm8_2;
mov rsp_608_3 ymm8_3;

mov fxgx_0 rsp_608_0;
mov fxgx_2 rsp_608_2;

(* vmovapd 160(%rsp),%ymm8 *)
mov ymm8_0 rsp_160_0;
mov ymm8_1 rsp_160_1;
mov ymm8_2 rsp_160_2;
mov ymm8_3 rsp_160_3;
(* vpermq $0x4e,%ymm8,%ymm9 *)
mov tmp_0 ymm8_0;
mov tmp_1 ymm8_1;
mov tmp_2 ymm8_2;
mov tmp_3 ymm8_3;
mov ymm9_0 tmp_2;
mov ymm9_1 tmp_3;
mov ymm9_2 tmp_0;
mov ymm9_3 tmp_1;

(* lower 32 bits of FVGS4 *)
vpc lFVGS4_0@sint32 ymm8_0;
vpc lFVGS4_1@sint32 ymm8_1;
vpc lFVGS4_2@sint32 ymm8_2;
vpc lFVGS4_3@sint32 ymm8_3;
assert true && (sext lFVGS4_0 32) = ymm8_0;
assert true && (sext lFVGS4_1 32) = ymm8_1;
assert true && (sext lFVGS4_2 32) = ymm8_2;
assert true && (sext lFVGS4_3 32) = ymm8_3;
assume lFVGS4_0 = ymm8_0 && true;
assume lFVGS4_1 = ymm8_1 && true;
assume lFVGS4_2 = ymm8_2 && true;
assume lFVGS4_3 = ymm8_3 && true;
(* lower 32 bits of GSFV4 *)
vpc lGSFV4_0@sint32 ymm9_0;
vpc lGSFV4_1@sint32 ymm9_1;
vpc lGSFV4_2@sint32 ymm9_2;
vpc lGSFV4_3@sint32 ymm9_3;
assert true && (sext lGSFV4_0 32) = ymm9_0;
assert true && (sext lGSFV4_1 32) = ymm9_1;
assert true && (sext lGSFV4_2 32) = ymm9_2;
assert true && (sext lGSFV4_3 32) = ymm9_3;
assume lGSFV4_0 = ymm9_0 && true;
assume lGSFV4_1 = ymm9_1 && true;
assume lGSFV4_2 = ymm9_2 && true;
assume lGSFV4_3 = ymm9_3 && true;

(* vpmuldq %ymm3,%ymm10,%ymm10 *)

mov a_0 luuss1_0;
mov a_1 luuss1_1;
mov a_2 luuss1_2;
mov a_3 luuss1_3;
mov b_0 lFVGS3_0;
mov b_1 lFVGS3_1;
mov b_2 lFVGS3_2;
mov b_3 lFVGS3_3;

smull h_0 l_0 a_0 b_0;
smull h_1 l_1 a_1 b_1;
smull h_2 l_2 a_2 b_2;
smull h_3 l_3 a_3 b_3;
join ymm10_0 h_0 l_0;
join ymm10_1 h_1 l_1;
join ymm10_2 h_2 l_2;
join ymm10_3 h_3 l_3;
(* vpmuldq %ymm1,%ymm13,%ymm13 *)

mov a_0 lvvrr1_0;
mov a_1 lvvrr1_1;
mov a_2 lvvrr1_2;
mov a_3 lvvrr1_3;
mov b_0 lGSFV3_0;
mov b_1 lGSFV3_1;
mov b_2 lGSFV3_2;
mov b_3 lGSFV3_3;

smull h_0 l_0 a_0 b_0;
smull h_1 l_1 a_1 b_1;
smull h_2 l_2 a_2 b_2;
smull h_3 l_3 a_3 b_3;
join ymm13_0 h_0 l_0;
join ymm13_1 h_1 l_1;
join ymm13_2 h_2 l_2;
join ymm13_3 h_3 l_3;
(* vpaddq %ymm13,%ymm10,%ymm10 *)
add ymm10_0 ymm13_0 ymm10_0;
add ymm10_1 ymm13_1 ymm10_1;
add ymm10_2 ymm13_2 ymm10_2;
add ymm10_3 ymm13_3 ymm10_3;
(* vpmuldq %ymm6,%ymm8,%ymm13 *)

mov a_0 luuss0_0;
mov a_1 luuss0_1;
mov a_2 luuss0_2;
mov a_3 luuss0_3;
mov b_0 lFVGS4_0;
mov b_1 lFVGS4_1;
mov b_2 lFVGS4_2;
mov b_3 lFVGS4_3;

smull h_0 l_0 a_0 b_0;
smull h_1 l_1 a_1 b_1;
smull h_2 l_2 a_2 b_2;
smull h_3 l_3 a_3 b_3;
join ymm13_0 h_0 l_0;
join ymm13_1 h_1 l_1;
join ymm13_2 h_2 l_2;
join ymm13_3 h_3 l_3;
(* vpmuldq %ymm7,%ymm9,%ymm14 *)

mov a_0 lvvrr0_0;
mov a_1 lvvrr0_1;
mov a_2 lvvrr0_2;
mov a_3 lvvrr0_3;
mov b_0 lGSFV4_0;
mov b_1 lGSFV4_1;
mov b_2 lGSFV4_2;
mov b_3 lGSFV4_3;

smull h_0 l_0 a_0 b_0;
smull h_1 l_1 a_1 b_1;
smull h_2 l_2 a_2 b_2;
smull h_3 l_3 a_3 b_3;
join ymm14_0 h_0 l_0;
join ymm14_1 h_1 l_1;
join ymm14_2 h_2 l_2;
join ymm14_3 h_3 l_3;
(* vpaddq %ymm14,%ymm13,%ymm13 *)
add ymm13_0 ymm14_0 ymm13_0;
add ymm13_1 ymm14_1 ymm13_1;
add ymm13_2 ymm14_2 ymm13_2;
add ymm13_3 ymm14_3 ymm13_3;
(* vpaddq %ymm13,%ymm10,%ymm13 *)
add ymm13_0 ymm13_0 ymm10_0;
add ymm13_1 ymm13_1 ymm10_1;
add ymm13_2 ymm13_2 ymm10_2;
add ymm13_3 ymm13_3 ymm10_3;

(* oout4 *)
mov oout4_0 ymm13_0;
mov oout4_1 ymm13_1;
mov oout4_2 ymm13_2;
mov oout4_3 ymm13_3;

(* vpaddq %ymm13,%ymm2,%ymm13 *)
add ymm13_0 ymm13_0 ymm2_0;
add ymm13_1 ymm13_1 ymm2_1;
add ymm13_2 ymm13_2 ymm2_2;
add ymm13_3 ymm13_3 ymm2_3;

(* out4 *)
mov out4_0 ymm13_0;
mov out4_1 ymm13_1;
mov out4_2 ymm13_2;
mov out4_3 ymm13_3;

(* vpaddq %ymm0,%ymm13,%ymm2 *)
cast ymm13_0@uint64 ymm13_0;
cast ymm13_1@uint64 ymm13_1;
cast ymm13_2@uint64 ymm13_2;
cast ymm13_3@uint64 ymm13_3;
adds dontcare_0 ymm2_0 ymm0_0 ymm13_0;
adds dontcare_1 ymm2_1 ymm0_1 ymm13_1;
adds dontcare_2 ymm2_2 ymm0_2 ymm13_2;
adds dontcare_3 ymm2_3 ymm0_3 ymm13_3;
(* vpsrlq $30,%ymm2,%ymm2 *)
vpc tmp_0@uint64 ymm2_0;
vpc tmp_1@uint64 ymm2_1;
vpc tmp_2@uint64 ymm2_2;
vpc tmp_3@uint64 ymm2_3;
usplit ymm2_0 dontcare4_0 tmp_0 30;
usplit ymm2_1 dontcare4_1 tmp_1 30;
usplit ymm2_2 dontcare4_2 tmp_2 30;
usplit ymm2_3 dontcare4_3 tmp_3 30;

mov carryy4_0 ymm2_0;
mov carryy4_1 ymm2_1;
mov carryy4_2 ymm2_2;
mov carryy4_3 ymm2_3;

assert true && (uext dontcare4_0 29) + (sext carryy4_0 29) * (2**(30))@93 = (sext out4_0 29) - (2**(33))@93 + (2**(63))@93;
assert true && (uext dontcare4_1 29) + (sext carryy4_1 29) * (2**(30))@93 = (sext out4_1 29) - (2**(33))@93 + (2**(63))@93;
assert true && (uext dontcare4_2 29) + (sext carryy4_2 29) * (2**(30))@93 = (sext out4_2 29) - (2**(33))@93 + (2**(63))@93;
assert true && (uext dontcare4_3 29) + (sext carryy4_3 29) * (2**(30))@93 = (sext out4_3 29) - (2**(33))@93 + (2**(63))@93;
assume dontcare4_0 + carryy4_0 * (2**(30)) = out4_0 - (2**(33)) + (2**(63)) && true;
assume dontcare4_1 + carryy4_1 * (2**(30)) = out4_1 - (2**(33)) + (2**(63)) && true;
assume dontcare4_2 + carryy4_2 * (2**(30)) = out4_2 - (2**(33)) + (2**(63)) && true;
assume dontcare4_3 + carryy4_3 * (2**(30)) = out4_3 - (2**(33)) + (2**(63)) && true;

(* the value that carryy4 holds is less than 2^34, we dont care about it's sint or uint *)
mov tmp0 ymm2_0;
mov tmp1 ymm2_1;
mov tmp2 ymm2_2;
mov tmp3 ymm2_3;
vpc ymm2_0@sint64 tmp0;
vpc ymm2_1@sint64 tmp1;
vpc ymm2_2@sint64 tmp2;
vpc ymm2_3@sint64 tmp3;
assume tmp0 = ymm2_0 && true;
assume tmp1 = ymm2_1 && true;
assume tmp2 = ymm2_2 && true;
assume tmp3 = ymm2_3 && true;

(* vmovapd 192(%rsp),%ymm10 *)
mov ymm10_0 rsp_192_0;
mov ymm10_1 rsp_192_1;
mov ymm10_2 rsp_192_2;
mov ymm10_3 rsp_192_3;
(* vpermq $0x4e,%ymm10,%ymm14 *)
mov tmp_0 ymm10_0;
mov tmp_1 ymm10_1;
mov tmp_2 ymm10_2;
mov tmp_3 ymm10_3;
mov ymm14_0 tmp_2;
mov ymm14_1 tmp_3;
mov ymm14_2 tmp_0;
mov ymm14_3 tmp_1;

(* lower 32 bits of FVGS5 *)
vpc lFVGS5_0@sint32 ymm10_0;
vpc lFVGS5_1@sint32 ymm10_1;
vpc lFVGS5_2@sint32 ymm10_2;
vpc lFVGS5_3@sint32 ymm10_3;
assert true && (sext lFVGS5_0 32) = ymm10_0;
assert true && (sext lFVGS5_1 32) = ymm10_1;
assert true && (sext lFVGS5_2 32) = ymm10_2;
assert true && (sext lFVGS5_3 32) = ymm10_3;
assume lFVGS5_0 = ymm10_0 && true;
assume lFVGS5_1 = ymm10_1 && true;
assume lFVGS5_2 = ymm10_2 && true;
assume lFVGS5_3 = ymm10_3 && true;
(* lower 32 bits of GSFV5 *)
vpc lGSFV5_0@sint32 ymm14_0;
vpc lGSFV5_1@sint32 ymm14_1;
vpc lGSFV5_2@sint32 ymm14_2;
vpc lGSFV5_3@sint32 ymm14_3;
assert true && (sext lGSFV5_0 32) = ymm14_0;
assert true && (sext lGSFV5_1 32) = ymm14_1;
assert true && (sext lGSFV5_2 32) = ymm14_2;
assert true && (sext lGSFV5_3 32) = ymm14_3;
assume lGSFV5_0 = ymm14_0 && true;
assume lGSFV5_1 = ymm14_1 && true;
assume lGSFV5_2 = ymm14_2 && true;
assume lGSFV5_3 = ymm14_3 && true;

(* vpmuldq %ymm3,%ymm8,%ymm8 *)

mov a_0 luuss1_0;
mov a_1 luuss1_1;
mov a_2 luuss1_2;
mov a_3 luuss1_3;
mov b_0 lFVGS4_0;
mov b_1 lFVGS4_1;
mov b_2 lFVGS4_2;
mov b_3 lFVGS4_3;

smull h_0 l_0 a_0 b_0;
smull h_1 l_1 a_1 b_1;
smull h_2 l_2 a_2 b_2;
smull h_3 l_3 a_3 b_3;
join ymm8_0 h_0 l_0;
join ymm8_1 h_1 l_1;
join ymm8_2 h_2 l_2;
join ymm8_3 h_3 l_3;
(* vpmuldq %ymm1,%ymm9,%ymm9 *)

mov a_0 lvvrr1_0;
mov a_1 lvvrr1_1;
mov a_2 lvvrr1_2;
mov a_3 lvvrr1_3;
mov b_0 lGSFV4_0;
mov b_1 lGSFV4_1;
mov b_2 lGSFV4_2;
mov b_3 lGSFV4_3;

smull h_0 l_0 a_0 b_0;
smull h_1 l_1 a_1 b_1;
smull h_2 l_2 a_2 b_2;
smull h_3 l_3 a_3 b_3;
join ymm9_0 h_0 l_0;
join ymm9_1 h_1 l_1;
join ymm9_2 h_2 l_2;
join ymm9_3 h_3 l_3;
(* vpaddq %ymm9,%ymm8,%ymm8 *)
add ymm8_0 ymm9_0 ymm8_0;
add ymm8_1 ymm9_1 ymm8_1;
add ymm8_2 ymm9_2 ymm8_2;
add ymm8_3 ymm9_3 ymm8_3;
(* vpmuldq %ymm6,%ymm10,%ymm9 *)

mov a_0 luuss0_0;
mov a_1 luuss0_1;
mov a_2 luuss0_2;
mov a_3 luuss0_3;
mov b_0 lFVGS5_0;
mov b_1 lFVGS5_1;
mov b_2 lFVGS5_2;
mov b_3 lFVGS5_3;

smull h_0 l_0 a_0 b_0;
smull h_1 l_1 a_1 b_1;
smull h_2 l_2 a_2 b_2;
smull h_3 l_3 a_3 b_3;
join ymm9_0 h_0 l_0;
join ymm9_1 h_1 l_1;
join ymm9_2 h_2 l_2;
join ymm9_3 h_3 l_3;
(* vpmuldq %ymm7,%ymm14,%ymm15 *)

mov a_0 lvvrr0_0;
mov a_1 lvvrr0_1;
mov a_2 lvvrr0_2;
mov a_3 lvvrr0_3;
mov b_0 lGSFV5_0;
mov b_1 lGSFV5_1;
mov b_2 lGSFV5_2;
mov b_3 lGSFV5_3;

smull h_0 l_0 a_0 b_0;
smull h_1 l_1 a_1 b_1;
smull h_2 l_2 a_2 b_2;
smull h_3 l_3 a_3 b_3;
join ymm15_0 h_0 l_0;
join ymm15_1 h_1 l_1;
join ymm15_2 h_2 l_2;
join ymm15_3 h_3 l_3;
(* vpaddq %ymm15,%ymm9,%ymm9 *)
add ymm9_0 ymm15_0 ymm9_0;
add ymm9_1 ymm15_1 ymm9_1;
add ymm9_2 ymm15_2 ymm9_2;
add ymm9_3 ymm15_3 ymm9_3;
(* vpaddq %ymm9,%ymm8,%ymm9 *)
add ymm9_0 ymm9_0 ymm8_0;
add ymm9_1 ymm9_1 ymm8_1;
add ymm9_2 ymm9_2 ymm8_2;
add ymm9_3 ymm9_3 ymm8_3;

(* oout5 *)
mov oout5_0 ymm9_0;
mov oout5_1 ymm9_1;
mov oout5_2 ymm9_2;
mov oout5_3 ymm9_3;

(* vpaddq %ymm9,%ymm2,%ymm9 *)
add ymm9_0 ymm9_0 ymm2_0;
add ymm9_1 ymm9_1 ymm2_1;
add ymm9_2 ymm9_2 ymm2_2;
add ymm9_3 ymm9_3 ymm2_3;
(* out5 *)
mov out5_0 ymm9_0;
mov out5_1 ymm9_1;
mov out5_2 ymm9_2;
mov out5_3 ymm9_3;

(* vpaddq %ymm0,%ymm9,%ymm2 *)
cast ymm9_0@uint64 ymm9_0;
cast ymm9_1@uint64 ymm9_1;
cast ymm9_2@uint64 ymm9_2;
cast ymm9_3@uint64 ymm9_3;
adds dontcare_0 ymm2_0 ymm0_0 ymm9_0;
adds dontcare_1 ymm2_1 ymm0_1 ymm9_1;
adds dontcare_2 ymm2_2 ymm0_2 ymm9_2;
adds dontcare_3 ymm2_3 ymm0_3 ymm9_3;
(* vpsrlq $30,%ymm2,%ymm2 *)
vpc tmp_0@uint64 ymm2_0;
vpc tmp_1@uint64 ymm2_1;
vpc tmp_2@uint64 ymm2_2;
vpc tmp_3@uint64 ymm2_3;
usplit ymm2_0 dontcare5_0 tmp_0 30;
usplit ymm2_1 dontcare5_1 tmp_1 30;
usplit ymm2_2 dontcare5_2 tmp_2 30;
usplit ymm2_3 dontcare5_3 tmp_3 30;

mov carryy5_0 ymm2_0;
mov carryy5_1 ymm2_1;
mov carryy5_2 ymm2_2;
mov carryy5_3 ymm2_3;

assert true && (uext dontcare5_0 29) + (sext carryy5_0 29) * (2**(30))@93 = (sext out5_0 29) - (2**(33))@93 + (2**(63))@93;
assert true && (uext dontcare5_1 29) + (sext carryy5_1 29) * (2**(30))@93 = (sext out5_1 29) - (2**(33))@93 + (2**(63))@93;
assert true && (uext dontcare5_2 29) + (sext carryy5_2 29) * (2**(30))@93 = (sext out5_2 29) - (2**(33))@93 + (2**(63))@93;
assert true && (uext dontcare5_3 29) + (sext carryy5_3 29) * (2**(30))@93 = (sext out5_3 29) - (2**(33))@93 + (2**(63))@93;
assume dontcare5_0 + carryy5_0 * (2**(30)) = out5_0 - (2**(33)) + (2**(63)) && true;
assume dontcare5_1 + carryy5_1 * (2**(30)) = out5_1 - (2**(33)) + (2**(63)) && true;
assume dontcare5_2 + carryy5_2 * (2**(30)) = out5_2 - (2**(33)) + (2**(63)) && true;
assume dontcare5_3 + carryy5_3 * (2**(30)) = out5_3 - (2**(33)) + (2**(63)) && true;

(* the value that carryy5 holds is less than 2^34, we dont care about it's sint or uint *)
mov tmp0 ymm2_0;
mov tmp1 ymm2_1;
mov tmp2 ymm2_2;
mov tmp3 ymm2_3;
vpc ymm2_0@sint64 tmp0;
vpc ymm2_1@sint64 tmp1;
vpc ymm2_2@sint64 tmp2;
vpc ymm2_3@sint64 tmp3;
assume tmp0 = ymm2_0 && true;
assume tmp1 = ymm2_1 && true;
assume tmp2 = ymm2_2 && true;
assume tmp3 = ymm2_3 && true;

(* vpand %ymm9,%ymm5,%ymm9 *)

mov tmp0 ymm9_0;
mov tmp1 ymm9_1;
mov tmp2 ymm9_2;
mov tmp3 ymm9_3;

and ymm9_0@uint64 ymm9_0 ymm5_0;
and ymm9_1@uint64 ymm9_1 ymm5_1;
and ymm9_2@uint64 ymm9_2 ymm5_2;
and ymm9_3@uint64 ymm9_3 ymm5_3;

vpc tmp0@uint64 ymm9_0;
vpc tmp1@uint64 ymm9_1;
vpc tmp2@uint64 ymm9_2;
vpc tmp3@uint64 ymm9_3;
usplit dc0 bot0 tmp0 30;
usplit dc1 bot1 tmp1 30;
usplit dc2 bot2 tmp2 30;
usplit dc3 bot3 tmp3 30;
assert true && and[dc0 = 0@64, bot0 = ymm9_0];
assert true && and[dc1 = 0@64, bot1 = ymm9_1];
assert true && and[dc2 = 0@64, bot2 = ymm9_2];
assert true && and[dc3 = 0@64, bot3 = ymm9_3];
assume dc0 = 0 && true;
assume dc1 = 0 && true;
assume dc2 = 0 && true;
assume dc3 = 0 && true;
assume bot0 = ymm9_0 && true;
assume bot1 = ymm9_1 && true;
assume bot2 = ymm9_2 && true;
assume bot3 = ymm9_3 && true;

assert true && eqmod ymm9_0 tmp0 (2**30)@64;
assert true && eqmod ymm9_1 tmp1 (2**30)@64;
assert true && eqmod ymm9_2 tmp2 (2**30)@64;
assert true && eqmod ymm9_3 tmp3 (2**30)@64;
assume eqmod ymm9_0 tmp0 (2**30) && true;
assume eqmod ymm9_1 tmp1 (2**30) && true;
assume eqmod ymm9_2 tmp2 (2**30) && true;
assume eqmod ymm9_3 tmp3 (2**30) && true;

mov fout5_0 ymm9_0;
mov fout5_1 ymm9_1;
mov fout5_2 ymm9_2;
mov fout5_3 ymm9_3;

assert true && fout5_0 = dontcare5_0;
assert true && fout5_1 = dontcare5_1;
assert true && fout5_2 = dontcare5_2;
assert true && fout5_3 = dontcare5_3;
assume fout5_0 = dontcare5_0 && true;
assume fout5_1 = dontcare5_1 && true;
assume fout5_2 = dontcare5_2 && true;
assume fout5_3 = dontcare5_3 && true;

(* vpand %ymm13,%ymm5,%ymm13 *)

mov tmp0 ymm13_0;
mov tmp1 ymm13_1;
mov tmp2 ymm13_2;
mov tmp3 ymm13_3;

and ymm13_0@uint64 ymm13_0 ymm5_0;
and ymm13_1@uint64 ymm13_1 ymm5_1;
and ymm13_2@uint64 ymm13_2 ymm5_2;
and ymm13_3@uint64 ymm13_3 ymm5_3;

vpc tmp0@uint64 ymm13_0;
vpc tmp1@uint64 ymm13_1;
vpc tmp2@uint64 ymm13_2;
vpc tmp3@uint64 ymm13_3;
usplit dc0 bot0 tmp0 30;
usplit dc1 bot1 tmp1 30;
usplit dc2 bot2 tmp2 30;
usplit dc3 bot3 tmp3 30;
assert true && and[dc0 = 0@64, bot0 = ymm13_0];
assert true && and[dc1 = 0@64, bot1 = ymm13_1];
assert true && and[dc2 = 0@64, bot2 = ymm13_2];
assert true && and[dc3 = 0@64, bot3 = ymm13_3];
assume dc0 = 0 && true;
assume dc1 = 0 && true;
assume dc2 = 0 && true;
assume dc3 = 0 && true;
assume bot0 = ymm13_0 && true;
assume bot1 = ymm13_1 && true;
assume bot2 = ymm13_2 && true;
assume bot3 = ymm13_3 && true;

assert true && eqmod ymm13_0 tmp0 (2**30)@64;
assert true && eqmod ymm13_1 tmp1 (2**30)@64;
assert true && eqmod ymm13_2 tmp2 (2**30)@64;
assert true && eqmod ymm13_3 tmp3 (2**30)@64;
assume eqmod ymm13_0 tmp0 (2**30) && true;
assume eqmod ymm13_1 tmp1 (2**30) && true;
assume eqmod ymm13_2 tmp2 (2**30) && true;
assume eqmod ymm13_3 tmp3 (2**30) && true;

mov fout4_0 ymm13_0;
mov fout4_1 ymm13_1;
mov fout4_2 ymm13_2;
mov fout4_3 ymm13_3;

assert true && fout4_0 = dontcare4_0;
assert true && fout4_1 = dontcare4_1;
assert true && fout4_2 = dontcare4_2;
assert true && fout4_3 = dontcare4_3;
assume fout4_0 = dontcare4_0 && true;
assume fout4_1 = dontcare4_1 && true;
assume fout4_2 = dontcare4_2 && true;
assume fout4_3 = dontcare4_3 && true;

(* vmovapd %ymm13,96(%rsp) *)
mov rsp_96_0 ymm13_0;
mov rsp_96_1 ymm13_1;
mov rsp_96_2 ymm13_2;
mov rsp_96_3 ymm13_3;
(* vpsllq $30,%ymm9,%ymm8 *)
shl ymm8_0 ymm9_0 30;
shl ymm8_1 ymm9_1 30;
shl ymm8_2 ymm9_2 30;
shl ymm8_3 ymm9_3 30;
(* vpaddq %ymm8,%ymm13,%ymm8 *)
add ymm8_0 ymm8_0 ymm13_0;
add ymm8_1 ymm8_1 ymm13_1;
add ymm8_2 ymm8_2 ymm13_2;
add ymm8_3 ymm8_3 ymm13_3;
(* vmovapd %ymm8,640(%rsp) *)
mov rsp_640_0 ymm8_0;
mov rsp_640_1 ymm8_1;
mov rsp_640_2 ymm8_2;
mov rsp_640_3 ymm8_3;

mov fygy_0 rsp_640_0;
mov fygy_2 rsp_640_2;

(* vmovapd 224(%rsp),%ymm8 *)
mov ymm8_0 rsp_224_0;
mov ymm8_1 rsp_224_1;
mov ymm8_2 rsp_224_2;
mov ymm8_3 rsp_224_3;
(* vpermq $0x4e,%ymm8,%ymm13 *)
mov tmp_0 ymm8_0;
mov tmp_1 ymm8_1;
mov tmp_2 ymm8_2;
mov tmp_3 ymm8_3;
mov ymm13_0 tmp_2;
mov ymm13_1 tmp_3;
mov ymm13_2 tmp_0;
mov ymm13_3 tmp_1;

(* lower 32 bits of FVGS6 *)
vpc lFVGS6_0@sint32 ymm8_0;
vpc lFVGS6_1@sint32 ymm8_1;
vpc lFVGS6_2@sint32 ymm8_2;
vpc lFVGS6_3@sint32 ymm8_3;
assert true && (sext lFVGS6_0 32) = ymm8_0;
assert true && (sext lFVGS6_1 32) = ymm8_1;
assert true && (sext lFVGS6_2 32) = ymm8_2;
assert true && (sext lFVGS6_3 32) = ymm8_3;
assume lFVGS6_0 = ymm8_0 && true;
assume lFVGS6_1 = ymm8_1 && true;
assume lFVGS6_2 = ymm8_2 && true;
assume lFVGS6_3 = ymm8_3 && true;
(* lower 32 bits of GSFV6 *)
vpc lGSFV6_0@sint32 ymm13_0;
vpc lGSFV6_1@sint32 ymm13_1;
vpc lGSFV6_2@sint32 ymm13_2;
vpc lGSFV6_3@sint32 ymm13_3;
assert true && (sext lGSFV6_0 32) = ymm13_0;
assert true && (sext lGSFV6_1 32) = ymm13_1;
assert true && (sext lGSFV6_2 32) = ymm13_2;
assert true && (sext lGSFV6_3 32) = ymm13_3;
assume lGSFV6_0 = ymm13_0 && true;
assume lGSFV6_1 = ymm13_1 && true;
assume lGSFV6_2 = ymm13_2 && true;
assume lGSFV6_3 = ymm13_3 && true;

(* vpmuldq %ymm3,%ymm10,%ymm10 *)

mov a_0 luuss1_0;
mov a_1 luuss1_1;
mov a_2 luuss1_2;
mov a_3 luuss1_3;
mov b_0 lFVGS5_0;
mov b_1 lFVGS5_1;
mov b_2 lFVGS5_2;
mov b_3 lFVGS5_3;

smull h_0 l_0 a_0 b_0;
smull h_1 l_1 a_1 b_1;
smull h_2 l_2 a_2 b_2;
smull h_3 l_3 a_3 b_3;
join ymm10_0 h_0 l_0;
join ymm10_1 h_1 l_1;
join ymm10_2 h_2 l_2;
join ymm10_3 h_3 l_3;
(* vpmuldq %ymm1,%ymm14,%ymm14 *)

mov a_0 lvvrr1_0;
mov a_1 lvvrr1_1;
mov a_2 lvvrr1_2;
mov a_3 lvvrr1_3;
mov b_0 lGSFV5_0;
mov b_1 lGSFV5_1;
mov b_2 lGSFV5_2;
mov b_3 lGSFV5_3;

smull h_0 l_0 a_0 b_0;
smull h_1 l_1 a_1 b_1;
smull h_2 l_2 a_2 b_2;
smull h_3 l_3 a_3 b_3;
join ymm14_0 h_0 l_0;
join ymm14_1 h_1 l_1;
join ymm14_2 h_2 l_2;
join ymm14_3 h_3 l_3;
(* vpaddq %ymm14,%ymm10,%ymm10 *)
add ymm10_0 ymm14_0 ymm10_0;
add ymm10_1 ymm14_1 ymm10_1;
add ymm10_2 ymm14_2 ymm10_2;
add ymm10_3 ymm14_3 ymm10_3;
(* vpmuldq %ymm6,%ymm8,%ymm14 *)

mov a_0 luuss0_0;
mov a_1 luuss0_1;
mov a_2 luuss0_2;
mov a_3 luuss0_3;
mov b_0 lFVGS6_0;
mov b_1 lFVGS6_1;
mov b_2 lFVGS6_2;
mov b_3 lFVGS6_3;

smull h_0 l_0 a_0 b_0;
smull h_1 l_1 a_1 b_1;
smull h_2 l_2 a_2 b_2;
smull h_3 l_3 a_3 b_3;
join ymm14_0 h_0 l_0;
join ymm14_1 h_1 l_1;
join ymm14_2 h_2 l_2;
join ymm14_3 h_3 l_3;
(* vpmuldq %ymm7,%ymm13,%ymm15 *)

mov a_0 lvvrr0_0;
mov a_1 lvvrr0_1;
mov a_2 lvvrr0_2;
mov a_3 lvvrr0_3;
mov b_0 lGSFV6_0;
mov b_1 lGSFV6_1;
mov b_2 lGSFV6_2;
mov b_3 lGSFV6_3;

smull h_0 l_0 a_0 b_0;
smull h_1 l_1 a_1 b_1;
smull h_2 l_2 a_2 b_2;
smull h_3 l_3 a_3 b_3;
join ymm15_0 h_0 l_0;
join ymm15_1 h_1 l_1;
join ymm15_2 h_2 l_2;
join ymm15_3 h_3 l_3;
(* vpaddq %ymm15,%ymm14,%ymm14 *)
add ymm14_0 ymm15_0 ymm14_0;
add ymm14_1 ymm15_1 ymm14_1;
add ymm14_2 ymm15_2 ymm14_2;
add ymm14_3 ymm15_3 ymm14_3;
(* vpaddq %ymm14,%ymm10,%ymm14 *)
add ymm14_0 ymm14_0 ymm10_0;
add ymm14_1 ymm14_1 ymm10_1;
add ymm14_2 ymm14_2 ymm10_2;
add ymm14_3 ymm14_3 ymm10_3;

(* oout6 *)
mov oout6_0 ymm14_0;
mov oout6_1 ymm14_1;
mov oout6_2 ymm14_2;
mov oout6_3 ymm14_3;

(* vpaddq %ymm14,%ymm2,%ymm14 *)
add ymm14_0 ymm14_0 ymm2_0;
add ymm14_1 ymm14_1 ymm2_1;
add ymm14_2 ymm14_2 ymm2_2;
add ymm14_3 ymm14_3 ymm2_3;

(* out6 *)
mov out6_0 ymm14_0;
mov out6_1 ymm14_1;
mov out6_2 ymm14_2;
mov out6_3 ymm14_3;

(* vpaddq %ymm0,%ymm14,%ymm2 *)
cast ymm14_0@uint64 ymm14_0;
cast ymm14_1@uint64 ymm14_1;
cast ymm14_2@uint64 ymm14_2;
cast ymm14_3@uint64 ymm14_3;
adds dontcare_0 ymm2_0 ymm0_0 ymm14_0;
adds dontcare_1 ymm2_1 ymm0_1 ymm14_1;
adds dontcare_2 ymm2_2 ymm0_2 ymm14_2;
adds dontcare_3 ymm2_3 ymm0_3 ymm14_3;
(* vpsrlq $30,%ymm2,%ymm2 *)
vpc tmp_0@uint64 ymm2_0;
vpc tmp_1@uint64 ymm2_1;
vpc tmp_2@uint64 ymm2_2;
vpc tmp_3@uint64 ymm2_3;
usplit ymm2_0 dontcare6_0 tmp_0 30;
usplit ymm2_1 dontcare6_1 tmp_1 30;
usplit ymm2_2 dontcare6_2 tmp_2 30;
usplit ymm2_3 dontcare6_3 tmp_3 30;

mov carryy6_0 ymm2_0;
mov carryy6_1 ymm2_1;
mov carryy6_2 ymm2_2;
mov carryy6_3 ymm2_3;

assert true && (uext dontcare6_0 29) + (sext carryy6_0 29) * (2**(30))@93 = (sext out6_0 29) - (2**(33))@93 + (2**(63))@93;
assert true && (uext dontcare6_1 29) + (sext carryy6_1 29) * (2**(30))@93 = (sext out6_1 29) - (2**(33))@93 + (2**(63))@93;
assert true && (uext dontcare6_2 29) + (sext carryy6_2 29) * (2**(30))@93 = (sext out6_2 29) - (2**(33))@93 + (2**(63))@93;
assert true && (uext dontcare6_3 29) + (sext carryy6_3 29) * (2**(30))@93 = (sext out6_3 29) - (2**(33))@93 + (2**(63))@93;
assume dontcare6_0 + carryy6_0 * (2**(30)) = out6_0 - (2**(33)) + (2**(63)) && true;
assume dontcare6_1 + carryy6_1 * (2**(30)) = out6_1 - (2**(33)) + (2**(63)) && true;
assume dontcare6_2 + carryy6_2 * (2**(30)) = out6_2 - (2**(33)) + (2**(63)) && true;
assume dontcare6_3 + carryy6_3 * (2**(30)) = out6_3 - (2**(33)) + (2**(63)) && true;

(* the value that carryy6 holds is less than 2^34, we dont care about it's sint or uint *)
mov tmp0 ymm2_0;
mov tmp1 ymm2_1;
mov tmp2 ymm2_2;
mov tmp3 ymm2_3;
vpc ymm2_0@sint64 tmp0;
vpc ymm2_1@sint64 tmp1;
vpc ymm2_2@sint64 tmp2;
vpc ymm2_3@sint64 tmp3;
assume tmp0 = ymm2_0 && true;
assume tmp1 = ymm2_1 && true;
assume tmp2 = ymm2_2 && true;
assume tmp3 = ymm2_3 && true;

(* vmovapd %ymm9,128(%rsp) *)
mov rsp_128_0 ymm9_0;
mov rsp_128_1 ymm9_1;
mov rsp_128_2 ymm9_2;
mov rsp_128_3 ymm9_3;
(* vmovapd 256(%rsp),%ymm9 *)
mov ymm9_0 rsp_256_0;
mov ymm9_1 rsp_256_1;
mov ymm9_2 rsp_256_2;
mov ymm9_3 rsp_256_3;
(* vpermq $0x4e,%ymm9,%ymm10 *)
mov tmp_0 ymm9_0;
mov tmp_1 ymm9_1;
mov tmp_2 ymm9_2;
mov tmp_3 ymm9_3;
mov ymm10_0 tmp_2;
mov ymm10_1 tmp_3;
mov ymm10_2 tmp_0;
mov ymm10_3 tmp_1;

(* lower 32 bits of FVGS7 *)
vpc lFVGS7_0@sint32 ymm9_0;
vpc lFVGS7_1@sint32 ymm9_1;
vpc lFVGS7_2@sint32 ymm9_2;
vpc lFVGS7_3@sint32 ymm9_3;
assert true && (sext lFVGS7_0 32) = ymm9_0;
assert true && (sext lFVGS7_1 32) = ymm9_1;
assert true && (sext lFVGS7_2 32) = ymm9_2;
assert true && (sext lFVGS7_3 32) = ymm9_3;
assume lFVGS7_0 = ymm9_0 && true;
assume lFVGS7_1 = ymm9_1 && true;
assume lFVGS7_2 = ymm9_2 && true;
assume lFVGS7_3 = ymm9_3 && true;
(* lower 32 bits of GSFV7 *)
vpc lGSFV7_0@sint32 ymm10_0;
vpc lGSFV7_1@sint32 ymm10_1;
vpc lGSFV7_2@sint32 ymm10_2;
vpc lGSFV7_3@sint32 ymm10_3;
assert true && (sext lGSFV7_0 32) = ymm10_0;
assert true && (sext lGSFV7_1 32) = ymm10_1;
assert true && (sext lGSFV7_2 32) = ymm10_2;
assert true && (sext lGSFV7_3 32) = ymm10_3;
assume lGSFV7_0 = ymm10_0 && true;
assume lGSFV7_1 = ymm10_1 && true;
assume lGSFV7_2 = ymm10_2 && true;
assume lGSFV7_3 = ymm10_3 && true;

(* vpmuldq %ymm3,%ymm8,%ymm8 *)

mov a_0 luuss1_0;
mov a_1 luuss1_1;
mov a_2 luuss1_2;
mov a_3 luuss1_3;
mov b_0 lFVGS6_0;
mov b_1 lFVGS6_1;
mov b_2 lFVGS6_2;
mov b_3 lFVGS6_3;

smull h_0 l_0 a_0 b_0;
smull h_1 l_1 a_1 b_1;
smull h_2 l_2 a_2 b_2;
smull h_3 l_3 a_3 b_3;
join ymm8_0 h_0 l_0;
join ymm8_1 h_1 l_1;
join ymm8_2 h_2 l_2;
join ymm8_3 h_3 l_3;
(* vpmuldq %ymm1,%ymm13,%ymm13 *)

mov a_0 lvvrr1_0;
mov a_1 lvvrr1_1;
mov a_2 lvvrr1_2;
mov a_3 lvvrr1_3;
mov b_0 lGSFV6_0;
mov b_1 lGSFV6_1;
mov b_2 lGSFV6_2;
mov b_3 lGSFV6_3;

smull h_0 l_0 a_0 b_0;
smull h_1 l_1 a_1 b_1;
smull h_2 l_2 a_2 b_2;
smull h_3 l_3 a_3 b_3;
join ymm13_0 h_0 l_0;
join ymm13_1 h_1 l_1;
join ymm13_2 h_2 l_2;
join ymm13_3 h_3 l_3;
(* vpaddq %ymm13,%ymm8,%ymm8 *)
add ymm8_0 ymm13_0 ymm8_0;
add ymm8_1 ymm13_1 ymm8_1;
add ymm8_2 ymm13_2 ymm8_2;
add ymm8_3 ymm13_3 ymm8_3;
(* vpmuldq %ymm6,%ymm9,%ymm13 *)

mov a_0 luuss0_0;
mov a_1 luuss0_1;
mov a_2 luuss0_2;
mov a_3 luuss0_3;
mov b_0 lFVGS7_0;
mov b_1 lFVGS7_1;
mov b_2 lFVGS7_2;
mov b_3 lFVGS7_3;

smull h_0 l_0 a_0 b_0;
smull h_1 l_1 a_1 b_1;
smull h_2 l_2 a_2 b_2;
smull h_3 l_3 a_3 b_3;
join ymm13_0 h_0 l_0;
join ymm13_1 h_1 l_1;
join ymm13_2 h_2 l_2;
join ymm13_3 h_3 l_3;
(* vpmuldq %ymm7,%ymm10,%ymm15 *)

mov a_0 lvvrr0_0;
mov a_1 lvvrr0_1;
mov a_2 lvvrr0_2;
mov a_3 lvvrr0_3;
mov b_0 lGSFV7_0;
mov b_1 lGSFV7_1;
mov b_2 lGSFV7_2;
mov b_3 lGSFV7_3;

smull h_0 l_0 a_0 b_0;
smull h_1 l_1 a_1 b_1;
smull h_2 l_2 a_2 b_2;
smull h_3 l_3 a_3 b_3;
join ymm15_0 h_0 l_0;
join ymm15_1 h_1 l_1;
join ymm15_2 h_2 l_2;
join ymm15_3 h_3 l_3;
(* vpaddq %ymm15,%ymm13,%ymm13 *)
add ymm13_0 ymm15_0 ymm13_0;
add ymm13_1 ymm15_1 ymm13_1;
add ymm13_2 ymm15_2 ymm13_2;
add ymm13_3 ymm15_3 ymm13_3;
(* vpaddq %ymm13,%ymm8,%ymm13 *)
add ymm13_0 ymm13_0 ymm8_0;
add ymm13_1 ymm13_1 ymm8_1;
add ymm13_2 ymm13_2 ymm8_2;
add ymm13_3 ymm13_3 ymm8_3;

(* oout7 *)
mov oout7_0 ymm13_0;
mov oout7_1 ymm13_1;
mov oout7_2 ymm13_2;
mov oout7_3 ymm13_3;

(* vpaddq %ymm13,%ymm2,%ymm13 *)
add ymm13_0 ymm13_0 ymm2_0;
add ymm13_1 ymm13_1 ymm2_1;
add ymm13_2 ymm13_2 ymm2_2;
add ymm13_3 ymm13_3 ymm2_3;

(* out7 *)
mov out7_0 ymm13_0;
mov out7_1 ymm13_1;
mov out7_2 ymm13_2;
mov out7_3 ymm13_3;

(* vpaddq %ymm0,%ymm13,%ymm2 *)
cast ymm13_0@uint64 ymm13_0;
cast ymm13_1@uint64 ymm13_1;
cast ymm13_2@uint64 ymm13_2;
cast ymm13_3@uint64 ymm13_3;
adds dontcare_0 ymm2_0 ymm0_0 ymm13_0;
adds dontcare_1 ymm2_1 ymm0_1 ymm13_1;
adds dontcare_2 ymm2_2 ymm0_2 ymm13_2;
adds dontcare_3 ymm2_3 ymm0_3 ymm13_3;
(* vpsrlq $30,%ymm2,%ymm2 *)
vpc tmp_0@uint64 ymm2_0;
vpc tmp_1@uint64 ymm2_1;
vpc tmp_2@uint64 ymm2_2;
vpc tmp_3@uint64 ymm2_3;
usplit ymm2_0 dontcare7_0 tmp_0 30;
usplit ymm2_1 dontcare7_1 tmp_1 30;
usplit ymm2_2 dontcare7_2 tmp_2 30;
usplit ymm2_3 dontcare7_3 tmp_3 30;

mov carryy7_0 ymm2_0;
mov carryy7_1 ymm2_1;
mov carryy7_2 ymm2_2;
mov carryy7_3 ymm2_3;

assert true && (uext dontcare7_0 29) + (sext carryy7_0 29) * (2**(30))@93 = (sext out7_0 29) - (2**(33))@93 + (2**(63))@93;
assert true && (uext dontcare7_1 29) + (sext carryy7_1 29) * (2**(30))@93 = (sext out7_1 29) - (2**(33))@93 + (2**(63))@93;
assert true && (uext dontcare7_2 29) + (sext carryy7_2 29) * (2**(30))@93 = (sext out7_2 29) - (2**(33))@93 + (2**(63))@93;
assert true && (uext dontcare7_3 29) + (sext carryy7_3 29) * (2**(30))@93 = (sext out7_3 29) - (2**(33))@93 + (2**(63))@93;
assume dontcare7_0 + carryy7_0 * (2**(30)) = out7_0 - (2**(33)) + (2**(63)) && true;
assume dontcare7_1 + carryy7_1 * (2**(30)) = out7_1 - (2**(33)) + (2**(63)) && true;
assume dontcare7_2 + carryy7_2 * (2**(30)) = out7_2 - (2**(33)) + (2**(63)) && true;
assume dontcare7_3 + carryy7_3 * (2**(30)) = out7_3 - (2**(33)) + (2**(63)) && true;

(* the value that carryy7 holds is less than 2^34, we dont care about it's sint or uint *)
mov tmp0 ymm2_0;
mov tmp1 ymm2_1;
mov tmp2 ymm2_2;
mov tmp3 ymm2_3;
vpc ymm2_0@sint64 tmp0;
vpc ymm2_1@sint64 tmp1;
vpc ymm2_2@sint64 tmp2;
vpc ymm2_3@sint64 tmp3;
assume tmp0 = ymm2_0 && true;
assume tmp1 = ymm2_1 && true;
assume tmp2 = ymm2_2 && true;
assume tmp3 = ymm2_3 && true;

(* vpand %ymm14,%ymm5,%ymm14 *)

mov tmp0 ymm14_0;
mov tmp1 ymm14_1;
mov tmp2 ymm14_2;
mov tmp3 ymm14_3;

and ymm14_0@uint64 ymm14_0 ymm5_0;
and ymm14_1@uint64 ymm14_1 ymm5_1;
and ymm14_2@uint64 ymm14_2 ymm5_2;
and ymm14_3@uint64 ymm14_3 ymm5_3;

vpc tmp0@uint64 ymm14_0;
vpc tmp1@uint64 ymm14_1;
vpc tmp2@uint64 ymm14_2;
vpc tmp3@uint64 ymm14_3;
usplit dc0 bot0 tmp0 30;
usplit dc1 bot1 tmp1 30;
usplit dc2 bot2 tmp2 30;
usplit dc3 bot3 tmp3 30;
assert true && and[dc0 = 0@64, bot0 = ymm14_0];
assert true && and[dc1 = 0@64, bot1 = ymm14_1];
assert true && and[dc2 = 0@64, bot2 = ymm14_2];
assert true && and[dc3 = 0@64, bot3 = ymm14_3];
assume dc0 = 0 && true;
assume dc1 = 0 && true;
assume dc2 = 0 && true;
assume dc3 = 0 && true;
assume bot0 = ymm14_0 && true;
assume bot1 = ymm14_1 && true;
assume bot2 = ymm14_2 && true;
assume bot3 = ymm14_3 && true;

assert true && eqmod ymm14_0 tmp0 (2**30)@64;
assert true && eqmod ymm14_1 tmp1 (2**30)@64;
assert true && eqmod ymm14_2 tmp2 (2**30)@64;
assert true && eqmod ymm14_3 tmp3 (2**30)@64;
assume eqmod ymm14_0 tmp0 (2**30) && true;
assume eqmod ymm14_1 tmp1 (2**30) && true;
assume eqmod ymm14_2 tmp2 (2**30) && true;
assume eqmod ymm14_3 tmp3 (2**30) && true;

mov fout6_0 ymm14_0;
mov fout6_1 ymm14_1;
mov fout6_2 ymm14_2;
mov fout6_3 ymm14_3;

assert true && fout6_0 = dontcare6_0;
assert true && fout6_1 = dontcare6_1;
assert true && fout6_2 = dontcare6_2;
assert true && fout6_3 = dontcare6_3;
assume fout6_0 = dontcare6_0 && true;
assume fout6_1 = dontcare6_1 && true;
assume fout6_2 = dontcare6_2 && true;
assume fout6_3 = dontcare6_3 && true;

(* vmovapd %ymm14,160(%rsp) *)
mov rsp_160_0 ymm14_0;
mov rsp_160_1 ymm14_1;
mov rsp_160_2 ymm14_2;
mov rsp_160_3 ymm14_3;
(* vmovapd 288(%rsp),%ymm8 *)
mov ymm8_0 rsp_288_0;
mov ymm8_1 rsp_288_1;
mov ymm8_2 rsp_288_2;
mov ymm8_3 rsp_288_3;
(* vpermq $0x4e,%ymm8,%ymm14 *)
mov tmp_0 ymm8_0;
mov tmp_1 ymm8_1;
mov tmp_2 ymm8_2;
mov tmp_3 ymm8_3;
mov ymm14_0 tmp_2;
mov ymm14_1 tmp_3;
mov ymm14_2 tmp_0;
mov ymm14_3 tmp_1;

(* lower 32 bits of FVGS8 *)
vpc lFVGS8_0@sint32 ymm8_0;
vpc lFVGS8_1@sint32 ymm8_1;
vpc lFVGS8_2@sint32 ymm8_2;
vpc lFVGS8_3@sint32 ymm8_3;
assert true && (sext lFVGS8_0 32) = ymm8_0;
assert true && (sext lFVGS8_1 32) = ymm8_1;
assert true && (sext lFVGS8_2 32) = ymm8_2;
assert true && (sext lFVGS8_3 32) = ymm8_3;
assume lFVGS8_0 = ymm8_0 && true;
assume lFVGS8_1 = ymm8_1 && true;
assume lFVGS8_2 = ymm8_2 && true;
assume lFVGS8_3 = ymm8_3 && true;
(* lower 32 bits of GSFV8 *)
vpc lGSFV8_0@sint32 ymm14_0;
vpc lGSFV8_1@sint32 ymm14_1;
vpc lGSFV8_2@sint32 ymm14_2;
vpc lGSFV8_3@sint32 ymm14_3;
assert true && (sext lGSFV8_0 32) = ymm14_0;
assert true && (sext lGSFV8_1 32) = ymm14_1;
assert true && (sext lGSFV8_2 32) = ymm14_2;
assert true && (sext lGSFV8_3 32) = ymm14_3;
assume lGSFV8_0 = ymm14_0 && true;
assume lGSFV8_1 = ymm14_1 && true;
assume lGSFV8_2 = ymm14_2 && true;
assume lGSFV8_3 = ymm14_3 && true;

(* vpmuldq %ymm3,%ymm9,%ymm9 *)

mov a_0 luuss1_0;
mov a_1 luuss1_1;
mov a_2 luuss1_2;
mov a_3 luuss1_3;
mov b_0 lFVGS7_0;
mov b_1 lFVGS7_1;
mov b_2 lFVGS7_2;
mov b_3 lFVGS7_3;

smull h_0 l_0 a_0 b_0;
smull h_1 l_1 a_1 b_1;
smull h_2 l_2 a_2 b_2;
smull h_3 l_3 a_3 b_3;
join ymm9_0 h_0 l_0;
join ymm9_1 h_1 l_1;
join ymm9_2 h_2 l_2;
join ymm9_3 h_3 l_3;
(* vpmuldq %ymm1,%ymm10,%ymm10 *)

mov a_0 lvvrr1_0;
mov a_1 lvvrr1_1;
mov a_2 lvvrr1_2;
mov a_3 lvvrr1_3;
mov b_0 lGSFV7_0;
mov b_1 lGSFV7_1;
mov b_2 lGSFV7_2;
mov b_3 lGSFV7_3;

smull h_0 l_0 a_0 b_0;
smull h_1 l_1 a_1 b_1;
smull h_2 l_2 a_2 b_2;
smull h_3 l_3 a_3 b_3;
join ymm10_0 h_0 l_0;
join ymm10_1 h_1 l_1;
join ymm10_2 h_2 l_2;
join ymm10_3 h_3 l_3;
(* vpaddq %ymm10,%ymm9,%ymm9 *)
add ymm9_0 ymm10_0 ymm9_0;
add ymm9_1 ymm10_1 ymm9_1;
add ymm9_2 ymm10_2 ymm9_2;
add ymm9_3 ymm10_3 ymm9_3;
(* vpmuldq %ymm6,%ymm8,%ymm6 *)

mov a_0 luuss0_0;
mov a_1 luuss0_1;
mov a_2 luuss0_2;
mov a_3 luuss0_3;
mov b_0 lFVGS8_0;
mov b_1 lFVGS8_1;
mov b_2 lFVGS8_2;
mov b_3 lFVGS8_3;

smull h_0 l_0 a_0 b_0;
smull h_1 l_1 a_1 b_1;
smull h_2 l_2 a_2 b_2;
smull h_3 l_3 a_3 b_3;
join ymm6_0 h_0 l_0;
join ymm6_1 h_1 l_1;
join ymm6_2 h_2 l_2;
join ymm6_3 h_3 l_3;
(* vpmuldq %ymm7,%ymm14,%ymm7 *)

mov a_0 lvvrr0_0;
mov a_1 lvvrr0_1;
mov a_2 lvvrr0_2;
mov a_3 lvvrr0_3;
mov b_0 lGSFV8_0;
mov b_1 lGSFV8_1;
mov b_2 lGSFV8_2;
mov b_3 lGSFV8_3;

smull h_0 l_0 a_0 b_0;
smull h_1 l_1 a_1 b_1;
smull h_2 l_2 a_2 b_2;
smull h_3 l_3 a_3 b_3;
join ymm7_0 h_0 l_0;
join ymm7_1 h_1 l_1;
join ymm7_2 h_2 l_2;
join ymm7_3 h_3 l_3;
(* vpaddq %ymm7,%ymm6,%ymm6 *)
add ymm6_0 ymm7_0 ymm6_0;
add ymm6_1 ymm7_1 ymm6_1;
add ymm6_2 ymm7_2 ymm6_2;
add ymm6_3 ymm7_3 ymm6_3;
(* vpaddq %ymm6,%ymm9,%ymm6 *)
add ymm6_0 ymm6_0 ymm9_0;
add ymm6_1 ymm6_1 ymm9_1;
add ymm6_2 ymm6_2 ymm9_2;
add ymm6_3 ymm6_3 ymm9_3;

(* oout8 *)
mov oout8_0 ymm6_0;
mov oout8_1 ymm6_1;
mov oout8_2 ymm6_2;
mov oout8_3 ymm6_3;

(* vpaddq %ymm6,%ymm2,%ymm6 *)
add ymm6_0 ymm6_0 ymm2_0;
add ymm6_1 ymm6_1 ymm2_1;
add ymm6_2 ymm6_2 ymm2_2;
add ymm6_3 ymm6_3 ymm2_3;
(* vpaddq %ymm6,%ymm11,%ymm6 *)
add ymm6_0 ymm6_0 ymm11_0;
add ymm6_1 ymm6_1 ymm11_1;
add ymm6_2 ymm6_2 ymm11_2;
add ymm6_3 ymm6_3 ymm11_3;

(* out8 *)
mov out8_0 ymm6_0;
mov out8_1 ymm6_1;
mov out8_2 ymm6_2;
mov out8_3 ymm6_3;

(* vpaddq %ymm0,%ymm6,%ymm2 *)
cast ymm6_0@uint64 ymm6_0;
cast ymm6_1@uint64 ymm6_1;
cast ymm6_2@uint64 ymm6_2;
cast ymm6_3@uint64 ymm6_3;
adds dontcare_0 ymm2_0 ymm0_0 ymm6_0;
adds dontcare_1 ymm2_1 ymm0_1 ymm6_1;
adds dontcare_2 ymm2_2 ymm0_2 ymm6_2;
adds dontcare_3 ymm2_3 ymm0_3 ymm6_3;
(* vpsrlq $30,%ymm2,%ymm2 *)
vpc tmp_0@uint64 ymm2_0;
vpc tmp_1@uint64 ymm2_1;
vpc tmp_2@uint64 ymm2_2;
vpc tmp_3@uint64 ymm2_3;
usplit ymm2_0 dontcare8_0 tmp_0 30;
usplit ymm2_1 dontcare8_1 tmp_1 30;
usplit ymm2_2 dontcare8_2 tmp_2 30;
usplit ymm2_3 dontcare8_3 tmp_3 30;

mov carryy8_0 ymm2_0;
mov carryy8_1 ymm2_1;
mov carryy8_2 ymm2_2;
mov carryy8_3 ymm2_3;

assert true && (uext dontcare8_0 29) + (sext carryy8_0 29) * (2**(30))@93 = (sext out8_0 29) - (2**(33))@93 + (2**(63))@93;
assert true && (uext dontcare8_1 29) + (sext carryy8_1 29) * (2**(30))@93 = (sext out8_1 29) - (2**(33))@93 + (2**(63))@93;
assert true && (uext dontcare8_2 29) + (sext carryy8_2 29) * (2**(30))@93 = (sext out8_2 29) - (2**(33))@93 + (2**(63))@93;
assert true && (uext dontcare8_3 29) + (sext carryy8_3 29) * (2**(30))@93 = (sext out8_3 29) - (2**(33))@93 + (2**(63))@93;
assume dontcare8_0 + carryy8_0 * (2**(30)) = out8_0 - (2**(33)) + (2**(63)) && true;
assume dontcare8_1 + carryy8_1 * (2**(30)) = out8_1 - (2**(33)) + (2**(63)) && true;
assume dontcare8_2 + carryy8_2 * (2**(30)) = out8_2 - (2**(33)) + (2**(63)) && true;
assume dontcare8_3 + carryy8_3 * (2**(30)) = out8_3 - (2**(33)) + (2**(63)) && true;

(* the value that carryy8 holds is less than 2^34, we dont care about it's sint or uint *)
mov tmp0 ymm2_0;
mov tmp1 ymm2_1;
mov tmp2 ymm2_2;
mov tmp3 ymm2_3;
vpc ymm2_0@sint64 tmp0;
vpc ymm2_1@sint64 tmp1;
vpc ymm2_2@sint64 tmp2;
vpc ymm2_3@sint64 tmp3;
assume tmp0 = ymm2_0 && true;
assume tmp1 = ymm2_1 && true;
assume tmp2 = ymm2_2 && true;
assume tmp3 = ymm2_3 && true;

(* vpand %ymm13,%ymm5,%ymm13 *)

mov tmp0 ymm13_0;
mov tmp1 ymm13_1;
mov tmp2 ymm13_2;
mov tmp3 ymm13_3;

and ymm13_0@uint64 ymm13_0 ymm5_0;
and ymm13_1@uint64 ymm13_1 ymm5_1;
and ymm13_2@uint64 ymm13_2 ymm5_2;
and ymm13_3@uint64 ymm13_3 ymm5_3;

vpc tmp0@uint64 ymm13_0;
vpc tmp1@uint64 ymm13_1;
vpc tmp2@uint64 ymm13_2;
vpc tmp3@uint64 ymm13_3;
usplit dc0 bot0 tmp0 30;
usplit dc1 bot1 tmp1 30;
usplit dc2 bot2 tmp2 30;
usplit dc3 bot3 tmp3 30;
assert true && and[dc0 = 0@64, bot0 = ymm13_0];
assert true && and[dc1 = 0@64, bot1 = ymm13_1];
assert true && and[dc2 = 0@64, bot2 = ymm13_2];
assert true && and[dc3 = 0@64, bot3 = ymm13_3];
assume dc0 = 0 && true;
assume dc1 = 0 && true;
assume dc2 = 0 && true;
assume dc3 = 0 && true;
assume bot0 = ymm13_0 && true;
assume bot1 = ymm13_1 && true;
assume bot2 = ymm13_2 && true;
assume bot3 = ymm13_3 && true;

assert true && eqmod ymm13_0 tmp0 (2**30)@64;
assert true && eqmod ymm13_1 tmp1 (2**30)@64;
assert true && eqmod ymm13_2 tmp2 (2**30)@64;
assert true && eqmod ymm13_3 tmp3 (2**30)@64;
assume eqmod ymm13_0 tmp0 (2**30) && true;
assume eqmod ymm13_1 tmp1 (2**30) && true;
assume eqmod ymm13_2 tmp2 (2**30) && true;
assume eqmod ymm13_3 tmp3 (2**30) && true;

mov fout7_0 ymm13_0;
mov fout7_1 ymm13_1;
mov fout7_2 ymm13_2;
mov fout7_3 ymm13_3;

assert true && fout7_0 = dontcare7_0;
assert true && fout7_1 = dontcare7_1;
assert true && fout7_2 = dontcare7_2;
assert true && fout7_3 = dontcare7_3;
assume fout7_0 = dontcare7_0 && true;
assume fout7_1 = dontcare7_1 && true;
assume fout7_2 = dontcare7_2 && true;
assume fout7_3 = dontcare7_3 && true;

(* vmovapd %ymm13,192(%rsp) *)
mov rsp_192_0 ymm13_0;
mov rsp_192_1 ymm13_1;
mov rsp_192_2 ymm13_2;
mov rsp_192_3 ymm13_3;
(* vpmuldq %ymm3,%ymm8,%ymm3 *)

mov a_0 luuss1_0;
mov a_1 luuss1_1;
mov a_2 luuss1_2;
mov a_3 luuss1_3;
mov b_0 lFVGS8_0;
mov b_1 lFVGS8_1;
mov b_2 lFVGS8_2;
mov b_3 lFVGS8_3;

smull h_0 l_0 a_0 b_0;
smull h_1 l_1 a_1 b_1;
smull h_2 l_2 a_2 b_2;
smull h_3 l_3 a_3 b_3;
join ymm3_0 h_0 l_0;
join ymm3_1 h_1 l_1;
join ymm3_2 h_2 l_2;
join ymm3_3 h_3 l_3;
(* vpmuldq %ymm1,%ymm14,%ymm1 *)

mov a_0 lvvrr1_0;
mov a_1 lvvrr1_1;
mov a_2 lvvrr1_2;
mov a_3 lvvrr1_3;
mov b_0 lGSFV8_0;
mov b_1 lGSFV8_1;
mov b_2 lGSFV8_2;
mov b_3 lGSFV8_3;

smull h_0 l_0 a_0 b_0;
smull h_1 l_1 a_1 b_1;
smull h_2 l_2 a_2 b_2;
smull h_3 l_3 a_3 b_3;
join ymm1_0 h_0 l_0;
join ymm1_1 h_1 l_1;
join ymm1_2 h_2 l_2;
join ymm1_3 h_3 l_3;
(* vpaddq %ymm1,%ymm3,%ymm1 *)
add ymm1_0 ymm1_0 ymm3_0;
add ymm1_1 ymm1_1 ymm3_1;
add ymm1_2 ymm1_2 ymm3_2;
add ymm1_3 ymm1_3 ymm3_3;

(* oout9 *)
mov oout9_0 ymm1_0;
mov oout9_1 ymm1_1;
mov oout9_2 ymm1_2;
mov oout9_3 ymm1_3;

(* vpaddq %ymm4,%ymm1,%ymm4 *)
add ymm4_0 ymm4_0 ymm1_0;
add ymm4_1 ymm4_1 ymm1_1;
add ymm4_2 ymm4_2 ymm1_2;
add ymm4_3 ymm4_3 ymm1_3;
(* vpaddq %ymm4,%ymm2,%ymm4 *)
add ymm4_0 ymm4_0 ymm2_0;
add ymm4_1 ymm4_1 ymm2_1;
add ymm4_2 ymm4_2 ymm2_2;
add ymm4_3 ymm4_3 ymm2_3;

(* out9 *)
mov out9_0 ymm4_0;
mov out9_1 ymm4_1;
mov out9_2 ymm4_2;
mov out9_3 ymm4_3;

(* vpaddq %ymm0,%ymm4,%ymm1 *)
cast ymm4_0@uint64 ymm4_0;
cast ymm4_1@uint64 ymm4_1;
cast ymm4_2@uint64 ymm4_2;
cast ymm4_3@uint64 ymm4_3;
adds dontcare_0 ymm1_0 ymm0_0 ymm4_0;
adds dontcare_1 ymm1_1 ymm0_1 ymm4_1;
adds dontcare_2 ymm1_2 ymm0_2 ymm4_2;
adds dontcare_3 ymm1_3 ymm0_3 ymm4_3;
(* vpsrlq $30,%ymm1,%ymm1 *)
vpc tmp_0@uint64 ymm1_0;
vpc tmp_1@uint64 ymm1_1;
vpc tmp_2@uint64 ymm1_2;
vpc tmp_3@uint64 ymm1_3;
usplit ymm1_0 dontcare9_0 tmp_0 30;
usplit ymm1_1 dontcare9_1 tmp_1 30;
usplit ymm1_2 dontcare9_2 tmp_2 30;
usplit ymm1_3 dontcare9_3 tmp_3 30;

mov carryy9_0 ymm1_0;
mov carryy9_1 ymm1_1;
mov carryy9_2 ymm1_2;
mov carryy9_3 ymm1_3;

assert true && (uext dontcare9_0 29) + (sext carryy9_0 29) * (2**(30))@93 = (sext out9_0 29) - (2**(33))@93 + (2**(63))@93;
assert true && (uext dontcare9_1 29) + (sext carryy9_1 29) * (2**(30))@93 = (sext out9_1 29) - (2**(33))@93 + (2**(63))@93;
assert true && (uext dontcare9_2 29) + (sext carryy9_2 29) * (2**(30))@93 = (sext out9_2 29) - (2**(33))@93 + (2**(63))@93;
assert true && (uext dontcare9_3 29) + (sext carryy9_3 29) * (2**(30))@93 = (sext out9_3 29) - (2**(33))@93 + (2**(63))@93;
assume dontcare9_0 + carryy9_0 * (2**(30)) = out9_0 - (2**(33)) + (2**(63)) && true;
assume dontcare9_1 + carryy9_1 * (2**(30)) = out9_1 - (2**(33)) + (2**(63)) && true;
assume dontcare9_2 + carryy9_2 * (2**(30)) = out9_2 - (2**(33)) + (2**(63)) && true;
assume dontcare9_3 + carryy9_3 * (2**(30)) = out9_3 - (2**(33)) + (2**(63)) && true;

(* the value that carryy9 holds is less than 2^34, we dont care about it's sint or uint *)
mov tmp0 ymm1_0;
mov tmp1 ymm1_1;
mov tmp2 ymm1_2;
mov tmp3 ymm1_3;
vpc ymm1_0@sint64 tmp0;
vpc ymm1_1@sint64 tmp1;
vpc ymm1_2@sint64 tmp2;
vpc ymm1_3@sint64 tmp3;
assume tmp0 = ymm1_0 && true;
assume tmp1 = ymm1_1 && true;
assume tmp2 = ymm1_2 && true;
assume tmp3 = ymm1_3 && true;


(* out10 *)
mov out10_0 ymm1_0;
mov out10_1 ymm1_1;
mov out10_2 ymm1_2;
mov out10_3 ymm1_3;

(* vpand %ymm6,%ymm5,%ymm6 *)

mov tmp0 ymm6_0;
mov tmp1 ymm6_1;
mov tmp2 ymm6_2;
mov tmp3 ymm6_3;

and ymm6_0@uint64 ymm6_0 ymm5_0;
and ymm6_1@uint64 ymm6_1 ymm5_1;
and ymm6_2@uint64 ymm6_2 ymm5_2;
and ymm6_3@uint64 ymm6_3 ymm5_3;

vpc tmp0@uint64 ymm6_0;
vpc tmp1@uint64 ymm6_1;
vpc tmp2@uint64 ymm6_2;
vpc tmp3@uint64 ymm6_3;
usplit dc0 bot0 tmp0 30;
usplit dc1 bot1 tmp1 30;
usplit dc2 bot2 tmp2 30;
usplit dc3 bot3 tmp3 30;
assert true && and[dc0 = 0@64, bot0 = ymm6_0];
assert true && and[dc1 = 0@64, bot1 = ymm6_1];
assert true && and[dc2 = 0@64, bot2 = ymm6_2];
assert true && and[dc3 = 0@64, bot3 = ymm6_3];
assume dc0 = 0 && true;
assume dc1 = 0 && true;
assume dc2 = 0 && true;
assume dc3 = 0 && true;
assume bot0 = ymm6_0 && true;
assume bot1 = ymm6_1 && true;
assume bot2 = ymm6_2 && true;
assume bot3 = ymm6_3 && true;

assert true && eqmod ymm6_0 tmp0 (2**30)@64;
assert true && eqmod ymm6_1 tmp1 (2**30)@64;
assert true && eqmod ymm6_2 tmp2 (2**30)@64;
assert true && eqmod ymm6_3 tmp3 (2**30)@64;
assume eqmod ymm6_0 tmp0 (2**30) && true;
assume eqmod ymm6_1 tmp1 (2**30) && true;
assume eqmod ymm6_2 tmp2 (2**30) && true;
assume eqmod ymm6_3 tmp3 (2**30) && true;

mov fout8_0 ymm6_0;
mov fout8_1 ymm6_1;
mov fout8_2 ymm6_2;
mov fout8_3 ymm6_3;

assert true && fout8_0 = dontcare8_0;
assert true && fout8_1 = dontcare8_1;
assert true && fout8_2 = dontcare8_2;
assert true && fout8_3 = dontcare8_3;
assume fout8_0 = dontcare8_0 && true;
assume fout8_1 = dontcare8_1 && true;
assume fout8_2 = dontcare8_2 && true;
assume fout8_3 = dontcare8_3 && true;

(* vmovapd %ymm6,224(%rsp) *)
mov rsp_224_0 ymm6_0;
mov rsp_224_1 ymm6_1;
mov rsp_224_2 ymm6_2;
mov rsp_224_3 ymm6_3;
(* vmovapd 352(%rsp),%ymm2 *)
mov ymm2_0 rsp_352_0;
mov ymm2_1 rsp_352_1;
mov ymm2_2 rsp_352_2;
mov ymm2_3 rsp_352_3;
(* vmovapd 480(%rsp),%ymm3 *)
mov ymm3_0 rsp_480_0;
mov ymm3_1 rsp_480_1;
mov ymm3_2 rsp_480_2;
mov ymm3_3 rsp_480_3;
(* vpaddq %ymm0,%ymm1,%ymm6 *)
cast ymm1_0@uint64 ymm1_0;
cast ymm1_1@uint64 ymm1_1;
cast ymm1_2@uint64 ymm1_2;
cast ymm1_3@uint64 ymm1_3;
adds dontcarea_0 ymm6_0 ymm0_0 ymm1_0;
adds dontcarea_1 ymm6_1 ymm0_1 ymm1_1;
adds dontcarea_2 ymm6_2 ymm0_2 ymm1_2;
adds dontcarea_3 ymm6_3 ymm0_3 ymm1_3;
(* vpsrlq $15,%ymm6,%ymm6 *)
vpc tmp_0@uint64 ymm6_0;
vpc tmp_1@uint64 ymm6_1;
vpc tmp_2@uint64 ymm6_2;
vpc tmp_3@uint64 ymm6_3;
usplit ymm6_0 dontcare10_0 tmp_0 15;
usplit ymm6_1 dontcare10_1 tmp_1 15;
usplit ymm6_2 dontcare10_2 tmp_2 15;
usplit ymm6_3 dontcare10_3 tmp_3 15;

mov carryy10_0 ymm6_0;
mov carryy10_1 ymm6_1;
mov carryy10_2 ymm6_2;
mov carryy10_3 ymm6_3;

assert true && (uext dontcare10_0 29) + (sext carryy10_0 29) * (2**(15))@93 = (sext out10_0 29) - (2**(33))@93 + (2**(63))@93;
assert true && (uext dontcare10_1 29) + (sext carryy10_1 29) * (2**(15))@93 = (sext out10_1 29) - (2**(33))@93 + (2**(63))@93;
assert true && (uext dontcare10_2 29) + (sext carryy10_2 29) * (2**(15))@93 = (sext out10_2 29) - (2**(33))@93 + (2**(63))@93;
assert true && (uext dontcare10_3 29) + (sext carryy10_3 29) * (2**(15))@93 = (sext out10_3 29) - (2**(33))@93 + (2**(63))@93;
assume dontcare10_0 + carryy10_0 * (2**(15)) = out10_0 - (2**(33)) + (2**(63)) && true;
assume dontcare10_1 + carryy10_1 * (2**(15)) = out10_1 - (2**(33)) + (2**(63)) && true;
assume dontcare10_2 + carryy10_2 * (2**(15)) = out10_2 - (2**(33)) + (2**(63)) && true;
assume dontcare10_3 + carryy10_3 * (2**(15)) = out10_3 - (2**(33)) + (2**(63)) && true;

(* the value that carryy10 holds is less than 2^34, we dont care about it's sint or uint *)
mov tmp0 ymm6_0;
mov tmp1 ymm6_1;
mov tmp2 ymm6_2;
mov tmp3 ymm6_3;
vpc ymm6_0@sint64 tmp0;
vpc ymm6_1@sint64 tmp1;
vpc ymm6_2@sint64 tmp2;
vpc ymm6_3@sint64 tmp3;
assume tmp0 = ymm6_0 && true;
assume tmp1 = ymm6_1 && true;
assume tmp2 = ymm6_2 && true;
assume tmp3 = ymm6_3 && true;

(* vpsubq %ymm3,%ymm6,%ymm6 *)

mov a_0 ymm6_0; 
mov a_1 ymm6_1; 
mov a_2 ymm6_2; 
mov a_3 ymm6_3; 
mov b_0 ymm3_0; 
mov b_1 ymm3_1; 
mov b_2 ymm3_2; 
mov b_3 ymm3_3; 

subb dontcare_0 ymm6_0 ymm6_0 ymm3_0;
subb dontcare_1 ymm6_1 ymm6_1 ymm3_1;
subb dontcare_2 ymm6_2 ymm6_2 ymm3_2;
subb dontcare_3 ymm6_3 ymm6_3 ymm3_3;

assert true && (sext ymm6_0 29) * (2**(15))@93 + (uext dontcare10_0 29) = (sext out10_0 29) - (2**(33))@93;
assert true && (sext ymm6_1 29) * (2**(15))@93 + (uext dontcare10_1 29) = (sext out10_1 29) - (2**(33))@93;
assert true && (sext ymm6_2 29) * (2**(15))@93 + (uext dontcare10_2 29) = (sext out10_2 29) - (2**(33))@93;
assert true && (sext ymm6_3 29) * (2**(15))@93 + (uext dontcare10_3 29) = (sext out10_3 29) - (2**(33))@93;
assume ymm6_0 * (2**(15)) + dontcare10_0 = out10_0 - (2**(33)) && true;
assume ymm6_1 * (2**(15)) + dontcare10_1 = out10_1 - (2**(33)) && true;
assume ymm6_2 * (2**(15)) + dontcare10_2 = out10_2 - (2**(33)) && true;
assume ymm6_3 * (2**(15)) + dontcare10_3 = out10_3 - (2**(33)) && true;

mov tcarryy10_0 ymm6_0;
mov tcarryy10_1 ymm6_1;
mov tcarryy10_2 ymm6_2;
mov tcarryy10_3 ymm6_3;

(* vpsubq 448(%rsp),%ymm1,%ymm1 *)
subb dontcareb_0 ymm1_0 ymm1_0 rsp_448_0;
subb dontcareb_1 ymm1_1 ymm1_1 rsp_448_1;
subb dontcareb_2 ymm1_2 ymm1_2 rsp_448_2;
subb dontcareb_3 ymm1_3 ymm1_3 rsp_448_3;

assert true && (sext ymm1_0 29) * (2**(30))@93 + (uext dontcare9_0 29) = (sext out9_0 29) - (2**(33))@93;
assert true && (sext ymm1_1 29) * (2**(30))@93 + (uext dontcare9_1 29) = (sext out9_1 29) - (2**(33))@93;
assert true && (sext ymm1_2 29) * (2**(30))@93 + (uext dontcare9_2 29) = (sext out9_2 29) - (2**(33))@93;
assert true && (sext ymm1_3 29) * (2**(30))@93 + (uext dontcare9_3 29) = (sext out9_3 29) - (2**(33))@93;
assume ymm1_0 * (2**(30)) + dontcare9_0 = out9_0 - (2**(33)) && true;
assume ymm1_1 * (2**(30)) + dontcare9_1 = out9_1 - (2**(33)) && true;
assume ymm1_2 * (2**(30)) + dontcare9_2 = out9_2 - (2**(33)) && true;
assume ymm1_3 * (2**(30)) + dontcare9_3 = out9_3 - (2**(33)) && true;

mov tout10_0 ymm1_0;
mov tout10_1 ymm1_1;
mov tout10_2 ymm1_2;
mov tout10_3 ymm1_3;

(* vpand %ymm4,%ymm5,%ymm4 *)

mov tmp0 ymm4_0;
mov tmp1 ymm4_1;
mov tmp2 ymm4_2;
mov tmp3 ymm4_3;

and ymm4_0@uint64 ymm4_0 ymm5_0;
and ymm4_1@uint64 ymm4_1 ymm5_1;
and ymm4_2@uint64 ymm4_2 ymm5_2;
and ymm4_3@uint64 ymm4_3 ymm5_3;

vpc tmp0@uint64 ymm4_0;
vpc tmp1@uint64 ymm4_1;
vpc tmp2@uint64 ymm4_2;
vpc tmp3@uint64 ymm4_3;
usplit dc0 bot0 tmp0 30;
usplit dc1 bot1 tmp1 30;
usplit dc2 bot2 tmp2 30;
usplit dc3 bot3 tmp3 30;
assert true && and[dc0 = 0@64, bot0 = ymm4_0];
assert true && and[dc1 = 0@64, bot1 = ymm4_1];
assert true && and[dc2 = 0@64, bot2 = ymm4_2];
assert true && and[dc3 = 0@64, bot3 = ymm4_3];
assume dc0 = 0 && true;
assume dc1 = 0 && true;
assume dc2 = 0 && true;
assume dc3 = 0 && true;
assume bot0 = ymm4_0 && true;
assume bot1 = ymm4_1 && true;
assume bot2 = ymm4_2 && true;
assume bot3 = ymm4_3 && true;

assert true && eqmod ymm4_0 tmp0 (2**30)@64;
assert true && eqmod ymm4_1 tmp1 (2**30)@64;
assert true && eqmod ymm4_2 tmp2 (2**30)@64;
assert true && eqmod ymm4_3 tmp3 (2**30)@64;
assume eqmod ymm4_0 tmp0 (2**30) && true;
assume eqmod ymm4_1 tmp1 (2**30) && true;
assume eqmod ymm4_2 tmp2 (2**30) && true;
assume eqmod ymm4_3 tmp3 (2**30) && true;

mov fout9_0 ymm4_0;
mov fout9_1 ymm4_1;
mov fout9_2 ymm4_2;
mov fout9_3 ymm4_3;

assert true && fout9_0 = dontcare9_0;
assert true && fout9_1 = dontcare9_1;
assert true && fout9_2 = dontcare9_2;
assert true && fout9_3 = dontcare9_3;
assume fout9_0 = dontcare9_0 && true;
assume fout9_1 = dontcare9_1 && true;
assume fout9_2 = dontcare9_2 && true;
assume fout9_3 = dontcare9_3 && true;

(* vpand %ymm1,%ymm2,%ymm1 *)

mov tmp0 ymm1_0;
mov tmp1 ymm1_1;
mov tmp2 ymm1_2;
mov tmp3 ymm1_3;

and ymm1_0@uint64 ymm1_0 ymm2_0;
and ymm1_1@uint64 ymm1_1 ymm2_1;
and ymm1_2@uint64 ymm1_2 ymm2_2;
and ymm1_3@uint64 ymm1_3 ymm2_3;

vpc tmp1@uint64 ymm1_1;
vpc tmp3@uint64 ymm1_3;
usplit dc1 bot1 tmp1 15;
usplit dc3 bot3 tmp3 15;
assert true && and[dc1 = 0@64, bot1 = ymm1_1];
assert true && and[dc3 = 0@64, bot3 = ymm1_3];
assume dc1 = 0 && true;
assume dc3 = 0 && true;
assume bot1 = ymm1_1 && true;
assume bot3 = ymm1_3 && true;

assert true && ymm1_0 = tmp0;
assert true && eqmod ymm1_1 tmp1 (2**15)@64;
assert true && ymm1_2 = tmp2;
assert true && eqmod ymm1_3 tmp3 (2**15)@64;
assume ymm1_0 = tmp0 && true;
assume eqmod ymm1_1 tmp1 (2**15) && true;
assume ymm1_2 = tmp2 && true;
assume eqmod ymm1_3 tmp3 (2**15) && true;

mov fout10_0 ymm1_0;
mov fout10_1 ymm1_1;
mov fout10_2 ymm1_2;
mov fout10_3 ymm1_3;

assert true && fout10_1 = dontcare10_1;
assert true && fout10_3 = dontcare10_3;
assume fout10_1 = dontcare10_1 && true;
assume fout10_3 = dontcare10_3 && true;

assert true && (uext fout10_1 1) + (sext tcarryy10_1 1) * (2**15)@65 = (sext tout10_1 1);
assert true && (uext fout10_3 1) + (sext tcarryy10_3 1) * (2**15)@65 = (sext tout10_3 1);
assume fout10_1 + tcarryy10_1 * (2**15) = tout10_1 && true;
assume fout10_3 + tcarryy10_3 * (2**15) = tout10_3 && true;

(* vpmuldq 320(%rsp),%ymm6,%ymm2 *)
vpc a_0@sint32 rsp_320_0;
vpc a_1@sint32 rsp_320_1;
vpc a_2@sint32 rsp_320_2;
vpc a_3@sint32 rsp_320_3;
vpc b_0@sint32 ymm6_0;
vpc b_1@sint32 ymm6_1;
vpc b_2@sint32 ymm6_2;
vpc b_3@sint32 ymm6_3;
smull h_0 l_0 a_0 b_0;
smull h_1 l_1 a_1 b_1;
smull h_2 l_2 a_2 b_2;
smull h_3 l_3 a_3 b_3;
join ymm2_0 h_0 l_0;
join ymm2_1 h_1 l_1;
join ymm2_2 h_2 l_2;
join ymm2_3 h_3 l_3;

assert true && ymm2_0 = 0@64;
assert true && ymm2_2 = 0@64;
assume ymm2_0 = 0 && true;
assume ymm2_2 = 0 && true;

assert true && and[(-(2**(19)))@32 <s b_1, b_1 <s (2**(19))@32];
assert true && and[(-(2**(19)))@32 <s b_3, b_3 <s (2**(19))@32];
assert true && and[a_1 = 19@32, a_3 = 19@32];
assert ymm2_1 = 19 * b_1 && true;
assert ymm2_3 = 19 * b_3 && true;
assume true && ymm2_1 = 19@64 * (sext b_1 32);
assume true && ymm2_3 = 19@64 * (sext b_3 32);

assert true && and[(-(2**(29)))@64 <s ymm2_1, ymm2_1 <s (2**(29))@64];
assert true && and[(-(2**(29)))@64 <s ymm2_3, ymm2_3 <s (2**(29))@64];
assume true && and[(-(2**(29)))@64 <s ymm2_1, ymm2_1 <s (2**(29))@64];
assume true && and[(-(2**(29)))@64 <s ymm2_3, ymm2_3 <s (2**(29))@64];

(* vpaddq %ymm12,%ymm2,%ymm12 *)

mov ymm12o_0 ymm12_0;
mov ymm12o_1 ymm12_1;
mov ymm12o_2 ymm12_2;
mov ymm12o_3 ymm12_3;

vpc a0@sint64 ymm12_0;
vpc a1@sint64 ymm12_1;
vpc a2@sint64 ymm12_2;
vpc a3@sint64 ymm12_3;
mov b0 ymm2_0;
mov b1 ymm2_1;
mov b2 ymm2_2;
mov b3 ymm2_3;
add ymm12_0 a0 ymm2_0;
add ymm12_1 a1 ymm2_1;
add ymm12_2 a2 ymm2_2;
add ymm12_3 a3 ymm2_3;

assert true && (sext ymm12o_0 1) + (sext b0 1) = (sext ymm12_0 1);
assert true && (sext ymm12o_1 1) + (sext b1 1) = (sext ymm12_1 1);
assert true && (sext ymm12o_2 1) + (sext b2 1) = (sext ymm12_2 1);
assert true && (sext ymm12o_3 1) + (sext b3 1) = (sext ymm12_3 1);
assume ymm12o_0 + b0 = ymm12_0 && true;
assume ymm12o_1 + b1 = ymm12_1 && true;
assume ymm12o_2 + b2 = ymm12_2 && true;
assume ymm12o_3 + b3 = ymm12_3 && true;

(* vmovapd %ymm4,256(%rsp) *)
mov rsp_256_0 ymm4_0;
mov rsp_256_1 ymm4_1;
mov rsp_256_2 ymm4_2;
mov rsp_256_3 ymm4_3;
(* vmovapd %ymm1,288(%rsp) *)
mov rsp_288_0 ymm1_0;
mov rsp_288_1 ymm1_1;
mov rsp_288_2 ymm1_2;
mov rsp_288_3 ymm1_3;
(* vmovapd %ymm12,32(%rsp) *)
mov rsp_32_0 ymm12_0;
mov rsp_32_1 ymm12_1;
mov rsp_32_2 ymm12_2;
mov rsp_32_3 ymm12_3;

mov f0 rsp_32_0 ;
mov v0 rsp_32_1 ;
mov g0 rsp_32_2 ;
mov s0 rsp_32_3 ;
mov f1 rsp_64_0 ;
mov v1 rsp_64_1 ;
mov g1 rsp_64_2 ;
mov s1 rsp_64_3 ;
mov f2 rsp_96_0 ;
mov v2 rsp_96_1 ;
mov g2 rsp_96_2 ;
mov s2 rsp_96_3 ;
mov f3 rsp_128_0;
mov v3 rsp_128_1;
mov g3 rsp_128_2;
mov s3 rsp_128_3;
mov f4 rsp_160_0;
mov v4 rsp_160_1;
mov g4 rsp_160_2;
mov s4 rsp_160_3;
mov f5 rsp_192_0;
mov v5 rsp_192_1;
mov g5 rsp_192_2;
mov s5 rsp_192_3;
mov f6 rsp_224_0;
mov v6 rsp_224_1;
mov g6 rsp_224_2;
mov s6 rsp_224_3;
mov f7 rsp_256_0;
mov v7 rsp_256_1;
mov g7 rsp_256_2;
mov s7 rsp_256_3;
mov f8 rsp_288_0;
mov v8 rsp_288_1;
mov g8 rsp_288_2;
mov s8 rsp_288_3;

assert fout2_0 + carryy2_0 * (2**30) = out2_0 - 2**(33) + 2**(63) && true;
assert fout3_0 + carryy3_0 * (2**30) = out3_0 - 2**(33) + 2**(63) && true;
assert fout4_0 + carryy4_0 * (2**30) = out4_0 - 2**(33) + 2**(63) && true;
assert fout5_0 + carryy5_0 * (2**30) = out5_0 - 2**(33) + 2**(63) && true;
assert fout6_0 + carryy6_0 * (2**30) = out6_0 - 2**(33) + 2**(63) && true;
assert fout7_0 + carryy7_0 * (2**30) = out7_0 - 2**(33) + 2**(63) && true;
assert fout8_0 + carryy8_0 * (2**30) = out8_0 - 2**(33) + 2**(63) && true;
assert fout9_0 + carryy9_0 * (2**30) = out9_0 - 2**(33) + 2**(63) && true;
assert fout10_0 = tout10_0 && true;
assert fout10_1 + tcarryy10_1 * (2**15) = tout10_1 && true;

assert d0_0 = 0 && true;
assert d0_2 = 0 && true;
assert d1_0 = 0 && true;
assert d1_2 = 0 && true;

assert (f0
      + f1*(2**(30*1))
      + f2*(2**(30*2))
      + f3*(2**(30*3))
      + f4*(2**(30*4))
      + f5*(2**(30*5))
      + f6*(2**(30*6))
      + f7*(2**(30*7))
      + f8*(2**(30*8)))
       * (2**(60)) =
        u *
        (F0
       + F1*(2**(30*1))
       + F2*(2**(30*2))
       + F3*(2**(30*3))
       + F4*(2**(30*4))
       + F5*(2**(30*5))
       + F6*(2**(30*6))
       + F7*(2**(30*7))
       + F8*(2**(30*8))
        )
      + v *
        (G0
       + G1*(2**(30*1))
       + G2*(2**(30*2))
       + G3*(2**(30*3))
       + G4*(2**(30*4))
       + G5*(2**(30*5))
       + G6*(2**(30*6))
       + G7*(2**(30*7))
       + G8*(2**(30*8))
        )
      && true;

assert u *
        (V0
       + V1*(2**(30*1))
       + V2*(2**(30*2))
       + V3*(2**(30*3))
       + V4*(2**(30*4))
       + V5*(2**(30*5))
       + V6*(2**(30*6))
       + V7*(2**(30*7))
       + V8*(2**(30*8))
        )
      + v *
        (S0
       + S1*(2**(30*1))
       + S2*(2**(30*2))
       + S3*(2**(30*3))
       + S4*(2**(30*4))
       + S5*(2**(30*5))
       + S6*(2**(30*6))
       + S7*(2**(30*7))
       + S8*(2**(30*8))
        )
      + (d0_1 + d1_1 * (2**(30))) * ((2**255)-19)
      - ymm6_1 * (2**(315)) + ymm6_1 * 19 * (2**60)

     = (v0
      + v1*(2**(30*1))
      + v2*(2**(30*2))
      + v3*(2**(30*3))
      + v4*(2**(30*4))
      + v5*(2**(30*5))
      + v6*(2**(30*6))
      + v7*(2**(30*7))
      + v8*(2**(30*8)))
       * (2**(60)) && true;

assert (g0
      + g1*(2**(30*1))
      + g2*(2**(30*2))
      + g3*(2**(30*3))
      + g4*(2**(30*4))
      + g5*(2**(30*5))
      + g6*(2**(30*6))
      + g7*(2**(30*7))
      + g8*(2**(30*8)))
       * (2**(60)) =
        r *
        (F0
       + F1*(2**(30*1))
       + F2*(2**(30*2))
       + F3*(2**(30*3))
       + F4*(2**(30*4))
       + F5*(2**(30*5))
       + F6*(2**(30*6))
       + F7*(2**(30*7))
       + F8*(2**(30*8))
        )
      + s *
        (G0
       + G1*(2**(30*1))
       + G2*(2**(30*2))
       + G3*(2**(30*3))
       + G4*(2**(30*4))
       + G5*(2**(30*5))
       + G6*(2**(30*6))
       + G7*(2**(30*7))
       + G8*(2**(30*8))
        )
      && true;

assert r *
        (V0
       + V1*(2**(30*1))
       + V2*(2**(30*2))
       + V3*(2**(30*3))
       + V4*(2**(30*4))
       + V5*(2**(30*5))
       + V6*(2**(30*6))
       + V7*(2**(30*7))
       + V8*(2**(30*8))
        )
      + s *
        (S0
       + S1*(2**(30*1))
       + S2*(2**(30*2))
       + S3*(2**(30*3))
       + S4*(2**(30*4))
       + S5*(2**(30*5))
       + S6*(2**(30*6))
       + S7*(2**(30*7))
       + S8*(2**(30*8))
        )
      + (d0_3 + d1_3 * (2**(30))) * ((2**255)-19)
      - ymm6_3 * (2**(315)) + ymm6_3 * 19 * (2**60)

     = (s0
      + s1*(2**(30*1))
      + s2*(2**(30*2))
      + s3*(2**(30*3))
      + s4*(2**(30*4))
      + s5*(2**(30*5))
      + s6*(2**(30*6))
      + s7*(2**(30*7))
      + s8*(2**(30*8)))
       * (2**(60)) && true;


(* Form Singular*)
assume true &&
     ((sext f0 301) * (2**(30*0))@365 +
      (sext f1 301) * (2**(30*1))@365 +
      (sext f2 301) * (2**(30*2))@365 +
      (sext f3 301) * (2**(30*3))@365 +
      (sext f4 301) * (2**(30*4))@365 +
      (sext f5 301) * (2**(30*5))@365 +
      (sext f6 301) * (2**(30*6))@365 +
      (sext f7 301) * (2**(30*7))@365 +
      (sext f8 301) * (2**(30*8))@365)
       * (2**(60))@365
    = (sext u 301) *
     ((sext F0 301) * (2**(30*0))@365 +
      (sext F1 301) * (2**(30*1))@365 +
      (sext F2 301) * (2**(30*2))@365 +
      (sext F3 301) * (2**(30*3))@365 +
      (sext F4 301) * (2**(30*4))@365 +
      (sext F5 301) * (2**(30*5))@365 +
      (sext F6 301) * (2**(30*6))@365 +
      (sext F7 301) * (2**(30*7))@365 +
      (sext F8 301) * (2**(30*8))@365)
    + (sext v 301) *
     ((sext G0 301) * (2**(30*0))@365 +
      (sext G1 301) * (2**(30*1))@365 +
      (sext G2 301) * (2**(30*2))@365 +
      (sext G3 301) * (2**(30*3))@365 +
      (sext G4 301) * (2**(30*4))@365 +
      (sext G5 301) * (2**(30*5))@365 +
      (sext G6 301) * (2**(30*6))@365 +
      (sext G7 301) * (2**(30*7))@365 +
      (sext G8 301) * (2**(30*8))@365);

assume true &&
     ((sext g0 301) * (2**(30*0))@365 +
      (sext g1 301) * (2**(30*1))@365 +
      (sext g2 301) * (2**(30*2))@365 +
      (sext g3 301) * (2**(30*3))@365 +
      (sext g4 301) * (2**(30*4))@365 +
      (sext g5 301) * (2**(30*5))@365 +
      (sext g6 301) * (2**(30*6))@365 +
      (sext g7 301) * (2**(30*7))@365 +
      (sext g8 301) * (2**(30*8))@365)
       * (2**(60))@365
    = (sext r 301) *
     ((sext F0 301) * (2**(30*0))@365 +
      (sext F1 301) * (2**(30*1))@365 +
      (sext F2 301) * (2**(30*2))@365 +
      (sext F3 301) * (2**(30*3))@365 +
      (sext F4 301) * (2**(30*4))@365 +
      (sext F5 301) * (2**(30*5))@365 +
      (sext F6 301) * (2**(30*6))@365 +
      (sext F7 301) * (2**(30*7))@365 +
      (sext F8 301) * (2**(30*8))@365)
    + (sext s 301) *
     ((sext G0 301) * (2**(30*0))@365 +
      (sext G1 301) * (2**(30*1))@365 +
      (sext G2 301) * (2**(30*2))@365 +
      (sext G3 301) * (2**(30*3))@365 +
      (sext G4 301) * (2**(30*4))@365 +
      (sext G5 301) * (2**(30*5))@365 +
      (sext G6 301) * (2**(30*6))@365 +
      (sext G7 301) * (2**(30*7))@365 +
      (sext G8 301) * (2**(30*8))@365);
assume true &&
     ((sext v0 301) * (2**(30*0))@365 +
      (sext v1 301) * (2**(30*1))@365 +
      (sext v2 301) * (2**(30*2))@365 +
      (sext v3 301) * (2**(30*3))@365 +
      (sext v4 301) * (2**(30*4))@365 +
      (sext v5 301) * (2**(30*5))@365 +
      (sext v6 301) * (2**(30*6))@365 +
      (sext v7 301) * (2**(30*7))@365 +
      (sext v8 301) * (2**(30*8))@365)
       * (2**(60))@365
    = (sext u 301) *
     ((sext V0 301) * (2**(30*0))@365 +
      (sext V1 301) * (2**(30*1))@365 +
      (sext V2 301) * (2**(30*2))@365 +
      (sext V3 301) * (2**(30*3))@365 +
      (sext V4 301) * (2**(30*4))@365 +
      (sext V5 301) * (2**(30*5))@365 +
      (sext V6 301) * (2**(30*6))@365 +
      (sext V7 301) * (2**(30*7))@365 +
      (sext V8 301) * (2**(30*8))@365)
    + (sext v 301) *
     ((sext S0 301) * (2**(30*0))@365 +
      (sext S1 301) * (2**(30*1))@365 +
      (sext S2 301) * (2**(30*2))@365 +
      (sext S3 301) * (2**(30*3))@365 +
      (sext S4 301) * (2**(30*4))@365 +
      (sext S5 301) * (2**(30*5))@365 +
      (sext S6 301) * (2**(30*6))@365 +
      (sext S7 301) * (2**(30*7))@365 +
      (sext S8 301) * (2**(30*8))@365)
    + ((sext d0_1 301) + (sext d1_1 301) * (2**(30))@365) * ((2**255)-19)@365
    - (sext ymm6_1 301) * (2**(315))@365 + (sext ymm6_1 301) * 19@365 * (2**60)@365;
assume true &&
     ((sext s0 301) * (2**(30*0))@365 +
      (sext s1 301) * (2**(30*1))@365 +
      (sext s2 301) * (2**(30*2))@365 +
      (sext s3 301) * (2**(30*3))@365 +
      (sext s4 301) * (2**(30*4))@365 +
      (sext s5 301) * (2**(30*5))@365 +
      (sext s6 301) * (2**(30*6))@365 +
      (sext s7 301) * (2**(30*7))@365 +
      (sext s8 301) * (2**(30*8))@365)
       * (2**(60))@365
    = (sext r 301) *
     ((sext V0 301) * (2**(30*0))@365 +
      (sext V1 301) * (2**(30*1))@365 +
      (sext V2 301) * (2**(30*2))@365 +
      (sext V3 301) * (2**(30*3))@365 +
      (sext V4 301) * (2**(30*4))@365 +
      (sext V5 301) * (2**(30*5))@365 +
      (sext V6 301) * (2**(30*6))@365 +
      (sext V7 301) * (2**(30*7))@365 +
      (sext V8 301) * (2**(30*8))@365)
    + (sext s 301) *
     ((sext S0 301) * (2**(30*0))@365 +
      (sext S1 301) * (2**(30*1))@365 +
      (sext S2 301) * (2**(30*2))@365 +
      (sext S3 301) * (2**(30*3))@365 +
      (sext S4 301) * (2**(30*4))@365 +
      (sext S5 301) * (2**(30*5))@365 +
      (sext S6 301) * (2**(30*6))@365 +
      (sext S7 301) * (2**(30*7))@365 +
      (sext S8 301) * (2**(30*8))@365)
    + ((sext d0_3 301) + (sext d1_3 301) * (2**(30))@365) * ((2**255)-19)@365
    - (sext ymm6_3 301) * (2**(315))@365 + (sext ymm6_3 301) * 19@365 * (2**60)@365;

(* From Coq:
   |u| + |v| <= 2**60,
   |r| + |s| <= 2**60 *)
assume true && 
and[
      (sext u 301) *
     ((sext F0 301) * (2**(30*0))@365 +
      (sext F1 301) * (2**(30*1))@365 +
      (sext F2 301) * (2**(30*2))@365 +
      (sext F3 301) * (2**(30*3))@365 +
      (sext F4 301) * (2**(30*4))@365 +
      (sext F5 301) * (2**(30*5))@365 +
      (sext F6 301) * (2**(30*6))@365 +
      (sext F7 301) * (2**(30*7))@365 +
      (sext F8 301) * (2**(30*8))@365)
    + (sext v 301) *
     ((sext G0 301) * (2**(30*0))@365 +
      (sext G1 301) * (2**(30*1))@365 +
      (sext G2 301) * (2**(30*2))@365 +
      (sext G3 301) * (2**(30*3))@365 +
      (sext G4 301) * (2**(30*4))@365 +
      (sext G5 301) * (2**(30*5))@365 +
      (sext G6 301) * (2**(30*6))@365 +
      (sext G7 301) * (2**(30*7))@365 +
      (sext G8 301) * (2**(30*8))@365) <s (2**(315))@365,
      (sext u 301) *
     ((sext F0 301) * (2**(30*0))@365 +
      (sext F1 301) * (2**(30*1))@365 +
      (sext F2 301) * (2**(30*2))@365 +
      (sext F3 301) * (2**(30*3))@365 +
      (sext F4 301) * (2**(30*4))@365 +
      (sext F5 301) * (2**(30*5))@365 +
      (sext F6 301) * (2**(30*6))@365 +
      (sext F7 301) * (2**(30*7))@365 +
      (sext F8 301) * (2**(30*8))@365)
    + (sext v 301) *
     ((sext G0 301) * (2**(30*0))@365 +
      (sext G1 301) * (2**(30*1))@365 +
      (sext G2 301) * (2**(30*2))@365 +
      (sext G3 301) * (2**(30*3))@365 +
      (sext G4 301) * (2**(30*4))@365 +
      (sext G5 301) * (2**(30*5))@365 +
      (sext G6 301) * (2**(30*6))@365 +
      (sext G7 301) * (2**(30*7))@365 +
      (sext G8 301) * (2**(30*8))@365) >s (-(2**(315)))@365,

      (sext r 301) *
     ((sext F0 301) * (2**(30*0))@365 +
      (sext F1 301) * (2**(30*1))@365 +
      (sext F2 301) * (2**(30*2))@365 +
      (sext F3 301) * (2**(30*3))@365 +
      (sext F4 301) * (2**(30*4))@365 +
      (sext F5 301) * (2**(30*5))@365 +
      (sext F6 301) * (2**(30*6))@365 +
      (sext F7 301) * (2**(30*7))@365 +
      (sext F8 301) * (2**(30*8))@365)
    + (sext s 301) *
     ((sext G0 301) * (2**(30*0))@365 +
      (sext G1 301) * (2**(30*1))@365 +
      (sext G2 301) * (2**(30*2))@365 +
      (sext G3 301) * (2**(30*3))@365 +
      (sext G4 301) * (2**(30*4))@365 +
      (sext G5 301) * (2**(30*5))@365 +
      (sext G6 301) * (2**(30*6))@365 +
      (sext G7 301) * (2**(30*7))@365 +
      (sext G8 301) * (2**(30*8))@365) <s (2**(315))@365,
      (sext r 301) *
     ((sext F0 301) * (2**(30*0))@365 +
      (sext F1 301) * (2**(30*1))@365 +
      (sext F2 301) * (2**(30*2))@365 +
      (sext F3 301) * (2**(30*3))@365 +
      (sext F4 301) * (2**(30*4))@365 +
      (sext F5 301) * (2**(30*5))@365 +
      (sext F6 301) * (2**(30*6))@365 +
      (sext F7 301) * (2**(30*7))@365 +
      (sext F8 301) * (2**(30*8))@365)
    + (sext s 301) *
     ((sext G0 301) * (2**(30*0))@365 +
      (sext G1 301) * (2**(30*1))@365 +
      (sext G2 301) * (2**(30*2))@365 +
      (sext G3 301) * (2**(30*3))@365 +
      (sext G4 301) * (2**(30*4))@365 +
      (sext G5 301) * (2**(30*5))@365 +
      (sext G6 301) * (2**(30*6))@365 +
      (sext G7 301) * (2**(30*7))@365 +
      (sext G8 301) * (2**(30*8))@365) >s (-(2**(315)))@365,

      (sext u 301) *
     ((sext V0 301) * (2**(30*0))@365 +
      (sext V1 301) * (2**(30*1))@365 +
      (sext V2 301) * (2**(30*2))@365 +
      (sext V3 301) * (2**(30*3))@365 +
      (sext V4 301) * (2**(30*4))@365 +
      (sext V5 301) * (2**(30*5))@365 +
      (sext V6 301) * (2**(30*6))@365 +
      (sext V7 301) * (2**(30*7))@365 +
      (sext V8 301) * (2**(30*8))@365)
    + (sext v 301) *
     ((sext S0 301) * (2**(30*0))@365 +
      (sext S1 301) * (2**(30*1))@365 +
      (sext S2 301) * (2**(30*2))@365 +
      (sext S3 301) * (2**(30*3))@365 +
      (sext S4 301) * (2**(30*4))@365 +
      (sext S5 301) * (2**(30*5))@365 +
      (sext S6 301) * (2**(30*6))@365 +
      (sext S7 301) * (2**(30*7))@365 +
      (sext S8 301) * (2**(30*8))@365) + ((sext d0_1 301) + (sext d1_1 301) * (2**(30))@365) * ((2**255)-19)@365 <s (2**(316))@365,
      (sext u 301) *
     ((sext V0 301) * (2**(30*0))@365 +
      (sext V1 301) * (2**(30*1))@365 +
      (sext V2 301) * (2**(30*2))@365 +
      (sext V3 301) * (2**(30*3))@365 +
      (sext V4 301) * (2**(30*4))@365 +
      (sext V5 301) * (2**(30*5))@365 +
      (sext V6 301) * (2**(30*6))@365 +
      (sext V7 301) * (2**(30*7))@365 +
      (sext V8 301) * (2**(30*8))@365)
    + (sext v 301) *
     ((sext S0 301) * (2**(30*0))@365 +
      (sext S1 301) * (2**(30*1))@365 +
      (sext S2 301) * (2**(30*2))@365 +
      (sext S3 301) * (2**(30*3))@365 +
      (sext S4 301) * (2**(30*4))@365 +
      (sext S5 301) * (2**(30*5))@365 +
      (sext S6 301) * (2**(30*6))@365 +
      (sext S7 301) * (2**(30*7))@365 +
      (sext S8 301) * (2**(30*8))@365) + ((sext d0_1 301) + (sext d1_1 301) * (2**(30))@365) * ((2**255)-19)@365 >s (-(2**(316)))@365,

      (sext r 301) *
     ((sext V0 301) * (2**(30*0))@365 +
      (sext V1 301) * (2**(30*1))@365 +
      (sext V2 301) * (2**(30*2))@365 +
      (sext V3 301) * (2**(30*3))@365 +
      (sext V4 301) * (2**(30*4))@365 +
      (sext V5 301) * (2**(30*5))@365 +
      (sext V6 301) * (2**(30*6))@365 +
      (sext V7 301) * (2**(30*7))@365 +
      (sext V8 301) * (2**(30*8))@365)
    + (sext s 301) *
     ((sext S0 301) * (2**(30*0))@365 +
      (sext S1 301) * (2**(30*1))@365 +
      (sext S2 301) * (2**(30*2))@365 +
      (sext S3 301) * (2**(30*3))@365 +
      (sext S4 301) * (2**(30*4))@365 +
      (sext S5 301) * (2**(30*5))@365 +
      (sext S6 301) * (2**(30*6))@365 +
      (sext S7 301) * (2**(30*7))@365 +
      (sext S8 301) * (2**(30*8))@365) + ((sext d0_3 301) + (sext d1_3 301) * (2**(30))@365) * ((2**255)-19)@365 <s (2**(316))@365,
      (sext r 301) *
     ((sext V0 301) * (2**(30*0))@365 +
      (sext V1 301) * (2**(30*1))@365 +
      (sext V2 301) * (2**(30*2))@365 +
      (sext V3 301) * (2**(30*3))@365 +
      (sext V4 301) * (2**(30*4))@365 +
      (sext V5 301) * (2**(30*5))@365 +
      (sext V6 301) * (2**(30*6))@365 +
      (sext V7 301) * (2**(30*7))@365 +
      (sext V8 301) * (2**(30*8))@365)
    + (sext s 301) *
     ((sext S0 301) * (2**(30*0))@365 +
      (sext S1 301) * (2**(30*1))@365 +
      (sext S2 301) * (2**(30*2))@365 +
      (sext S3 301) * (2**(30*3))@365 +
      (sext S4 301) * (2**(30*4))@365 +
      (sext S5 301) * (2**(30*5))@365 +
      (sext S6 301) * (2**(30*6))@365 +
      (sext S7 301) * (2**(30*7))@365 +
      (sext S8 301) * (2**(30*8))@365) + ((sext d0_3 301) + (sext d1_3 301) * (2**(30))@365) * ((2**255)-19)@365 >s (-(2**(316)))@365

    ];

{
and[

  eq
       (u *
        (F0
       + F1*(2**(30*1))
       + F2*(2**(30*2))
       + F3*(2**(30*3))
       + F4*(2**(30*4))
       + F5*(2**(30*5))
       + F6*(2**(30*6))
       + F7*(2**(30*7))
       + F8*(2**(30*8))
        )
      + v *
        (G0
       + G1*(2**(30*1))
       + G2*(2**(30*2))
       + G3*(2**(30*3))
       + G4*(2**(30*4))
       + G5*(2**(30*5))
       + G6*(2**(30*6))
       + G7*(2**(30*7))
       + G8*(2**(30*8))
        ))

      ((f0
      + f1*(2**(30*1))
      + f2*(2**(30*2))
      + f3*(2**(30*3))
      + f4*(2**(30*4))
      + f5*(2**(30*5))
      + f6*(2**(30*6))
      + f7*(2**(30*7))
      + f8*(2**(30*8)))
       * (2**60)),

  eq
       (r *
        (F0
       + F1*(2**(30*1))
       + F2*(2**(30*2))
       + F3*(2**(30*3))
       + F4*(2**(30*4))
       + F5*(2**(30*5))
       + F6*(2**(30*6))
       + F7*(2**(30*7))
       + F8*(2**(30*8))
        )
      + s *
        (G0
       + G1*(2**(30*1))
       + G2*(2**(30*2))
       + G3*(2**(30*3))
       + G4*(2**(30*4))
       + G5*(2**(30*5))
       + G6*(2**(30*6))
       + G7*(2**(30*7))
       + G8*(2**(30*8))
        ))

      ((g0
      + g1*(2**(30*1))
      + g2*(2**(30*2))
      + g3*(2**(30*3))
      + g4*(2**(30*4))
      + g5*(2**(30*5))
      + g6*(2**(30*6))
      + g7*(2**(30*7))
      + g8*(2**(30*8)))
       * (2**(60))),

  eqmod
       (u *
        (V0
       + V1*(2**(30*1))
       + V2*(2**(30*2))
       + V3*(2**(30*3))
       + V4*(2**(30*4))
       + V5*(2**(30*5))
       + V6*(2**(30*6))
       + V7*(2**(30*7))
       + V8*(2**(30*8))
        )
      + v *
        (S0
       + S1*(2**(30*1))
       + S2*(2**(30*2))
       + S3*(2**(30*3))
       + S4*(2**(30*4))
       + S5*(2**(30*5))
       + S6*(2**(30*6))
       + S7*(2**(30*7))
       + S8*(2**(30*8))
        ))

      ((v0
      + v1*(2**(30*1))
      + v2*(2**(30*2))
      + v3*(2**(30*3))
      + v4*(2**(30*4))
      + v5*(2**(30*5))
      + v6*(2**(30*6))
      + v7*(2**(30*7))
      + v8*(2**(30*8)))
       * (2**60))

       (2**(255)-19),
  eqmod
        (r *
        (V0
       + V1*(2**(30*1))
       + V2*(2**(30*2))
       + V3*(2**(30*3))
       + V4*(2**(30*4))
       + V5*(2**(30*5))
       + V6*(2**(30*6))
       + V7*(2**(30*7))
       + V8*(2**(30*8))
        )
      + s *
        (S0
       + S1*(2**(30*1))
       + S2*(2**(30*2))
       + S3*(2**(30*3))
       + S4*(2**(30*4))
       + S5*(2**(30*5))
       + S6*(2**(30*6))
       + S7*(2**(30*7))
       + S8*(2**(30*8))
        ))

       ((s0
      + s1*(2**(30*1))
      + s2*(2**(30*2))
      + s3*(2**(30*3))
      + s4*(2**(30*4))
      + s5*(2**(30*5))
      + s6*(2**(30*6))
      + s7*(2**(30*7))
      + s8*(2**(30*8)))
       * (2**60))

       (2**(255)-19)
        
        ]
&&
  and[
      (sext f0 301) * (2**(30*0))@365 +
      (sext f1 301) * (2**(30*1))@365 +
      (sext f2 301) * (2**(30*2))@365 +
      (sext f3 301) * (2**(30*3))@365 +
      (sext f4 301) * (2**(30*4))@365 +
      (sext f5 301) * (2**(30*5))@365 +
      (sext f6 301) * (2**(30*6))@365 +
      (sext f7 301) * (2**(30*7))@365 +
      (sext f8 301) * (2**(30*8))@365 >s (-(2**(255)))@365,
      (sext f0 301) * (2**(30*0))@365 +
      (sext f1 301) * (2**(30*1))@365 +
      (sext f2 301) * (2**(30*2))@365 +
      (sext f3 301) * (2**(30*3))@365 +
      (sext f4 301) * (2**(30*4))@365 +
      (sext f5 301) * (2**(30*5))@365 +
      (sext f6 301) * (2**(30*6))@365 +
      (sext f7 301) * (2**(30*7))@365 +
      (sext f8 301) * (2**(30*8))@365 <s (2**(255))@365,

      (sext v0 301) * (2**(30*0))@365 +
      (sext v1 301) * (2**(30*1))@365 +
      (sext v2 301) * (2**(30*2))@365 +
      (sext v3 301) * (2**(30*3))@365 +
      (sext v4 301) * (2**(30*4))@365 +
      (sext v5 301) * (2**(30*5))@365 +
      (sext v6 301) * (2**(30*6))@365 +
      (sext v7 301) * (2**(30*7))@365 +
      (sext v8 301) * (2**(30*8))@365 >s (-(2**(29)))@365,
      (sext v0 301) * (2**(30*0))@365 +
      (sext v1 301) * (2**(30*1))@365 +
      (sext v2 301) * (2**(30*2))@365 +
      (sext v3 301) * (2**(30*3))@365 +
      (sext v4 301) * (2**(30*4))@365 +
      (sext v5 301) * (2**(30*5))@365 +
      (sext v6 301) * (2**(30*6))@365 +
      (sext v7 301) * (2**(30*7))@365 +
      (sext v8 301) * (2**(30*8))@365 <s (2**(255) + 2**(29))@365,

      (sext g0 301) * (2**(30*0))@365 +
      (sext g1 301) * (2**(30*1))@365 +
      (sext g2 301) * (2**(30*2))@365 +
      (sext g3 301) * (2**(30*3))@365 +
      (sext g4 301) * (2**(30*4))@365 +
      (sext g5 301) * (2**(30*5))@365 +
      (sext g6 301) * (2**(30*6))@365 +
      (sext g7 301) * (2**(30*7))@365 +
      (sext g8 301) * (2**(30*8))@365 >s (-(2**(255)))@365,
      (sext g0 301) * (2**(30*0))@365 +
      (sext g1 301) * (2**(30*1))@365 +
      (sext g2 301) * (2**(30*2))@365 +
      (sext g3 301) * (2**(30*3))@365 +
      (sext g4 301) * (2**(30*4))@365 +
      (sext g5 301) * (2**(30*5))@365 +
      (sext g6 301) * (2**(30*6))@365 +
      (sext g7 301) * (2**(30*7))@365 +
      (sext g8 301) * (2**(30*8))@365 <s (2**(255))@365,

      (sext s0 301) * (2**(30*0))@365 +
      (sext s1 301) * (2**(30*1))@365 +
      (sext s2 301) * (2**(30*2))@365 +
      (sext s3 301) * (2**(30*3))@365 +
      (sext s4 301) * (2**(30*4))@365 +
      (sext s5 301) * (2**(30*5))@365 +
      (sext s6 301) * (2**(30*6))@365 +
      (sext s7 301) * (2**(30*7))@365 +
      (sext s8 301) * (2**(30*8))@365 >s (-(2**(29)))@365,
      (sext s0 301) * (2**(30*0))@365 +
      (sext s1 301) * (2**(30*1))@365 +
      (sext s2 301) * (2**(30*2))@365 +
      (sext s3 301) * (2**(30*3))@365 +
      (sext s4 301) * (2**(30*4))@365 +
      (sext s5 301) * (2**(30*5))@365 +
      (sext s6 301) * (2**(30*6))@365 +
      (sext s7 301) * (2**(30*7))@365 +
      (sext s8 301) * (2**(30*8))@365 <s (2**(255) + 2**(29))@365,

      0@64 <=u f0, f0 <u (2**(30))@64,
      0@64 <=u f1, f1 <u (2**(30))@64,
      0@64 <=u f2, f2 <u (2**(30))@64,
      0@64 <=u f3, f3 <u (2**(30))@64,
      0@64 <=u f4, f4 <u (2**(30))@64,
      0@64 <=u f5, f5 <u (2**(30))@64,
      0@64 <=u f6, f6 <u (2**(30))@64,
      0@64 <=u f7, f7 <u (2**(30))@64,
      (-(2**(16)))@64 <s f8, f8 <s (2**(15))@64,
      (-(2**(29)))@64 <s v0, v0 <s (2**(30) + 2**(29))@64,
      0@64 <=u v1, v1 <u (2**(30))@64,
      0@64 <=u v2, v2 <u (2**(30))@64,
      0@64 <=u v3, v3 <u (2**(30))@64,
      0@64 <=u v4, v4 <u (2**(30))@64,
      0@64 <=u v5, v5 <u (2**(30))@64,
      0@64 <=u v6, v6 <u (2**(30))@64,
      0@64 <=u v7, v7 <u (2**(30))@64,
      0@64 <=u v8, v8 <u (2**(15))@64,
      0@64 <=u g0, g0 <u (2**(30))@64,
      0@64 <=u g1, g1 <u (2**(30))@64,
      0@64 <=u g2, g2 <u (2**(30))@64,
      0@64 <=u g3, g3 <u (2**(30))@64,
      0@64 <=u g4, g4 <u (2**(30))@64,
      0@64 <=u g5, g5 <u (2**(30))@64,
      0@64 <=u g6, g6 <u (2**(30))@64,
      0@64 <=u g7, g7 <u (2**(30))@64,
      (-(2**(16)))@64 <s g8, g8 <s (2**(15))@64,
      (-(2**(29)))@64 <s s0, s0 <s (2**(30) + 2**(29))@64,
      0@64 <=u s1, s1 <u (2**(30))@64,
      0@64 <=u s2, s2 <u (2**(30))@64,
      0@64 <=u s3, s3 <u (2**(30))@64,
      0@64 <=u s4, s4 <u (2**(30))@64,
      0@64 <=u s5, s5 <u (2**(30))@64,
      0@64 <=u s6, s6 <u (2**(30))@64,
      0@64 <=u s7, s7 <u (2**(30))@64,
      0@64 <=u s8, s8 <u (2**(15))@64,

      fxgx_0 = f0 + (2**30)@64 * f1,
      fxgx_2 = g0 + (2**30)@64 * g1,
      fygy_0 = f2 + (2**30)@64 * f3,
      fygy_2 = g2 + (2**30)@64 * g3

      ]
}

