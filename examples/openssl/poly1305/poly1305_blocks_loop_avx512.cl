(* padbit is still unspecified *)

proc main (uint64 inp_0000, uint64 inp_0001, uint64 inp_0010, uint64 inp_0011,
           uint64 inp_0100, uint64 inp_0101, uint64 inp_0110, uint64 inp_0111,
           uint64 inp_1000, uint64 inp_1001, uint64 inp_1010, uint64 inp_1011,
           uint64 inp_1100, uint64 inp_1101, uint64 inp_1110, uint64 inp_1111,
           uint64 INP_0000, uint64 INP_0001, uint64 INP_0010, uint64 INP_0011,
           uint64 INP_0100, uint64 INP_0101, uint64 INP_0110, uint64 INP_0111,
           uint64 INP_1000, uint64 INP_1001, uint64 INP_1010, uint64 INP_1011,
           uint64 INP_1100, uint64 INP_1101, uint64 INP_1110, uint64 INP_1111,
           uint64 padbit,

           uint64 h0_000, uint64 h0_001, uint64 h0_010, uint64 h0_011,
           uint64 h0_100, uint64 h0_101, uint64 h0_110, uint64 h0_111,
           uint64 h1_000, uint64 h1_001, uint64 h1_010, uint64 h1_011,
           uint64 h1_100, uint64 h1_101, uint64 h1_110, uint64 h1_111,
           uint64 h2_000, uint64 h2_001, uint64 h2_010, uint64 h2_011,
           uint64 h2_100, uint64 h2_101, uint64 h2_110, uint64 h2_111,
           uint64 h3_000, uint64 h3_001, uint64 h3_010, uint64 h3_011,
           uint64 h3_100, uint64 h3_101, uint64 h3_110, uint64 h3_111,
           uint64 h4_000, uint64 h4_001, uint64 h4_010, uint64 h4_011,
           uint64 h4_100, uint64 h4_101, uint64 h4_110, uint64 h4_111,
           uint64 h5_000, uint64 h5_001, uint64 h5_010, uint64 h5_011,
           uint64 h5_100, uint64 h5_101, uint64 h5_110, uint64 h5_111,

           uint64 t0_000, uint64 t0_001, uint64 t0_010, uint64 t0_011,
           uint64 t0_100, uint64 t0_101, uint64 t0_110, uint64 t0_111,
           uint64 t1_000, uint64 t1_001, uint64 t1_010, uint64 t1_011,
           uint64 t1_100, uint64 t1_101, uint64 t1_110, uint64 t1_111,
           uint64 t2_000, uint64 t2_001, uint64 t2_010, uint64 t2_011,
           uint64 t2_100, uint64 t2_101, uint64 t2_110, uint64 t2_111,
           uint64 t3_000, uint64 t3_001, uint64 t3_010, uint64 t3_011,
           uint64 t3_100, uint64 t3_101, uint64 t3_110, uint64 t3_111,
           uint64 t4_000, uint64 t4_001, uint64 t4_010, uint64 t4_011,
           uint64 t4_100, uint64 t4_101, uint64 t4_110, uint64 t4_111,
           uint64 t5_000, uint64 t5_001, uint64 t5_010, uint64 t5_011,
           uint64 t5_100, uint64 t5_101, uint64 t5_110, uint64 t5_111,

  (* H0 *) uint64 zmm0_000, uint64 zmm0_001, uint64 zmm0_010, uint64 zmm0_011,
           uint64 zmm0_100, uint64 zmm0_101, uint64 zmm0_110, uint64 zmm0_111,
  (* H1 *) uint64 zmm1_000, uint64 zmm1_001, uint64 zmm1_010, uint64 zmm1_011,
           uint64 zmm1_100, uint64 zmm1_101, uint64 zmm1_110, uint64 zmm1_111,
  (* H2 *) uint64 zmm2_000, uint64 zmm2_001, uint64 zmm2_010, uint64 zmm2_011,
           uint64 zmm2_100, uint64 zmm2_101, uint64 zmm2_110, uint64 zmm2_111,
  (* H3 *) uint64 zmm3_000, uint64 zmm3_001, uint64 zmm3_010, uint64 zmm3_011,
           uint64 zmm3_100, uint64 zmm3_101, uint64 zmm3_110, uint64 zmm3_111,
  (* H4 *) uint64 zmm4_000, uint64 zmm4_001, uint64 zmm4_010, uint64 zmm4_011,
           uint64 zmm4_100, uint64 zmm4_101, uint64 zmm4_110, uint64 zmm4_111,

  (* T0 *) uint64 zmm7_000, uint64 zmm7_001, uint64 zmm7_010, uint64 zmm7_011,
           uint64 zmm7_100, uint64 zmm7_101, uint64 zmm7_110, uint64 zmm7_111,
  (* T1 *) uint64 zmm8_000, uint64 zmm8_001, uint64 zmm8_010, uint64 zmm8_011,
           uint64 zmm8_100, uint64 zmm8_101, uint64 zmm8_110, uint64 zmm8_111,
  (* T3 *) uint64 zmm10_000, uint64 zmm10_001, uint64 zmm10_010, uint64 zmm10_011,
           uint64 zmm10_100, uint64 zmm10_101, uint64 zmm10_110, uint64 zmm10_111,
  (* T4 *) uint64 zmm6_000, uint64 zmm6_001, uint64 zmm6_010, uint64 zmm6_011,
           uint64 zmm6_100, uint64 zmm6_101, uint64 zmm6_110, uint64 zmm6_111,

  (* R0 *) uint64 zmm16_000, uint64 zmm16_001, uint64 zmm16_010, uint64 zmm16_011,
           uint64 zmm16_100, uint64 zmm16_101, uint64 zmm16_110, uint64 zmm16_111,
  (* R1 *) uint64 zmm17_000, uint64 zmm17_001, uint64 zmm17_010, uint64 zmm17_011,
           uint64 zmm17_100, uint64 zmm17_101, uint64 zmm17_110, uint64 zmm17_111,
  (* R2 *) uint64 zmm18_000, uint64 zmm18_001, uint64 zmm18_010, uint64 zmm18_011,
           uint64 zmm18_100, uint64 zmm18_101, uint64 zmm18_110, uint64 zmm18_111,
  (* R3 *) uint64 zmm19_000, uint64 zmm19_001, uint64 zmm19_010, uint64 zmm19_011,
           uint64 zmm19_100, uint64 zmm19_101, uint64 zmm19_110, uint64 zmm19_111,
  (* R4 *) uint64 zmm20_000, uint64 zmm20_001, uint64 zmm20_010, uint64 zmm20_011,
           uint64 zmm20_100, uint64 zmm20_101, uint64 zmm20_110, uint64 zmm20_111,
           
  (* S1 *) uint64 zmm21_000, uint64 zmm21_001, uint64 zmm21_010, uint64 zmm21_011,
           uint64 zmm21_100, uint64 zmm21_101, uint64 zmm21_110, uint64 zmm21_111,
  (* S2 *) uint64 zmm22_000, uint64 zmm22_001, uint64 zmm22_010, uint64 zmm22_011,
           uint64 zmm22_100, uint64 zmm22_101, uint64 zmm22_110, uint64 zmm22_111,
  (* S3 *) uint64 zmm23_000, uint64 zmm23_001, uint64 zmm23_010, uint64 zmm23_011,
           uint64 zmm23_100, uint64 zmm23_101, uint64 zmm23_110, uint64 zmm23_111,
  (* S4 *) uint64 zmm24_000, uint64 zmm24_001, uint64 zmm24_010, uint64 zmm24_011,
           uint64 zmm24_100, uint64 zmm24_101, uint64 zmm24_110, uint64 zmm24_111,

(* MASK *) uint64 zmm5_000, uint64 zmm5_001, uint64 zmm5_010, uint64 zmm5_011,
           uint64 zmm5_100, uint64 zmm5_101, uint64 zmm5_110, uint64 zmm5_111,

 (* PAD *) uint64 zmm30_000, uint64 zmm30_001, uint64 zmm30_010, uint64 zmm30_011,
           uint64 zmm30_100, uint64 zmm30_101, uint64 zmm30_110, uint64 zmm30_111,

           uint64 r0_000, uint64 r0_001, uint64 r0_010, uint64 r0_011,
           uint64 r0_100, uint64 r0_101, uint64 r0_110, uint64 r0_111,
           uint64 r1_000, uint64 r1_001, uint64 r1_010, uint64 r1_011,
           uint64 r1_100, uint64 r1_101, uint64 r1_110, uint64 r1_111,
           uint64 r2_000, uint64 r2_001, uint64 r2_010, uint64 r2_011,
           uint64 r2_100, uint64 r2_101, uint64 r2_110, uint64 r2_111,
           uint64 r3_000, uint64 r3_001, uint64 r3_010, uint64 r3_011,
           uint64 r3_100, uint64 r3_101, uint64 r3_110, uint64 r3_111,
           uint64 r4_000, uint64 r4_001, uint64 r4_010, uint64 r4_011,
           uint64 r4_100, uint64 r4_101, uint64 r4_110, uint64 r4_111,
           uint64 r5_000, uint64 r5_001, uint64 r5_010, uint64 r5_011,
           uint64 r5_100, uint64 r5_101, uint64 r5_110, uint64 r5_111,

           uint64 s0_000, uint64 s0_001, uint64 s0_010, uint64 s0_011,
           uint64 s0_100, uint64 s0_101, uint64 s0_110, uint64 s0_111,
           uint64 s1_000, uint64 s1_001, uint64 s1_010, uint64 s1_011,
           uint64 s1_100, uint64 s1_101, uint64 s1_110, uint64 s1_111,
           uint64 s2_000, uint64 s2_001, uint64 s2_010, uint64 s2_011,
           uint64 s2_100, uint64 s2_101, uint64 s2_110, uint64 s2_111,
           uint64 s3_000, uint64 s3_001, uint64 s3_010, uint64 s3_011,
           uint64 s3_100, uint64 s3_101, uint64 s3_110, uint64 s3_111,
           uint64 s4_000, uint64 s4_001, uint64 s4_010, uint64 s4_011,
           uint64 s4_100, uint64 s4_101, uint64 s4_110, uint64 s4_111,
           uint64 s5_000, uint64 s5_001, uint64 s5_010, uint64 s5_011,
           uint64 s5_100, uint64 s5_101, uint64 s5_110, uint64 s5_111) =
{
  and [
    limbs 64 [inp_0000, inp_0001] =
    limbs 26 [t0_000, t1_000, t2_000, t3_000, t4_000],
    limbs 64 [inp_1000, inp_1001] =
    limbs 26 [t0_001, t1_001, t2_001, t3_001, t4_001],
    limbs 64 [inp_0010, inp_0011] =
    limbs 26 [t0_010, t1_010, t2_010, t3_010, t4_010],
    limbs 64 [inp_1010, inp_1011] =
    limbs 26 [t0_011, t1_011, t2_011, t3_011, t4_011],
    limbs 64 [inp_0100, inp_0101] =
    limbs 26 [t0_100, t1_100, t2_100, t3_100, t4_100],
    limbs 64 [inp_1100, inp_1101] =
    limbs 26 [t0_101, t1_101, t2_101, t3_101, t4_101],
    limbs 64 [inp_0110, inp_0111] =
    limbs 26 [t0_110, t1_110, t2_110, t3_110, t4_110],
    limbs 64 [inp_1110, inp_1111] =
    limbs 26 [t0_111, t1_111, t2_111, t3_111, t4_111],

    (* H0 *)
    zmm0_000 = h0_000, zmm0_001 = h0_001, zmm0_010 = h0_010, zmm0_011 = h0_011, 
    zmm0_100 = h0_100, zmm0_101 = h0_101, zmm0_110 = h0_110, zmm0_111 = h0_111, 
    (* H1 *)
    zmm1_000 = h1_000, zmm1_001 = h1_001, zmm1_010 = h1_010, zmm1_011 = h1_011, 
    zmm1_100 = h1_100, zmm1_101 = h1_101, zmm1_110 = h1_110, zmm1_111 = h1_111, 
    (* H2 *)
    zmm2_000 = h2_000 + t2_000, zmm2_001 = h2_001 + t2_001,
    zmm2_010 = h2_010 + t2_010, zmm2_011 = h2_011 + t2_011, 
    zmm2_100 = h2_100 + t2_100, zmm2_101 = h2_101 + t2_101, 
    zmm2_110 = h2_110 + t2_110, zmm2_111 = h2_111 + t2_111,
    (* H3 *)
    zmm3_000 = h3_000, zmm3_001 = h3_001, zmm3_010 = h3_010, zmm3_011 = h3_011, 
    zmm3_100 = h3_100, zmm3_101 = h3_101, zmm3_110 = h3_110, zmm3_111 = h3_111, 
    (* H4 *)
    zmm4_000 = h4_000, zmm4_001 = h4_001, zmm4_010 = h4_010, zmm4_011 = h4_011, 
    zmm4_100 = h4_100, zmm4_101 = h4_101, zmm4_110 = h4_110, zmm4_111 = h4_111, 

    (* T0 *)
    zmm7_000 = t0_000, zmm7_001 = t0_001, zmm7_010 = t0_010, zmm7_011 = t0_011, 
    zmm7_100 = t0_100, zmm7_101 = t0_101, zmm7_110 = t0_110, zmm7_111 = t0_111, 
    (* T1 *)
    zmm8_000 = t1_000, zmm8_001 = t1_001, zmm8_010 = t1_010, zmm8_011 = t1_011, 
    zmm8_100 = t1_100, zmm8_101 = t1_101, zmm8_110 = t1_110, zmm8_111 = t1_111, 
    (* T3 *)
    zmm10_000 = t3_000, zmm10_001 = t3_001, zmm10_010 = t3_010, zmm10_011 = t3_011, 
    zmm10_100 = t3_100, zmm10_101 = t3_101, zmm10_110 = t3_110, zmm10_111 = t3_111, 
    (* T4 *)
    zmm6_000 = t4_000, zmm6_001 = t4_001, zmm6_010 = t4_010, zmm6_011 = t4_011, 
    zmm6_100 = t4_100, zmm6_101 = t4_101, zmm6_110 = t4_110, zmm6_111 = t4_111, 

    (* R0 *)
    zmm16_000 = r0_000, zmm16_001 = r0_001, zmm16_010 = r0_010, zmm16_011 = r0_011,
    zmm16_100 = r0_100, zmm16_101 = r0_101, zmm16_110 = r0_110, zmm16_111 = r0_111,
    (* R1 *)
    zmm17_000 = r1_000, zmm17_001 = r1_001, zmm17_010 = r1_010, zmm17_011 = r1_011,
    zmm17_100 = r1_100, zmm17_101 = r1_101, zmm17_110 = r1_110, zmm17_111 = r1_111,
    (* R2 *)
    zmm18_000 = r2_000, zmm18_001 = r2_001, zmm18_010 = r2_010, zmm18_011 = r2_011,
    zmm18_100 = r2_100, zmm18_101 = r2_101, zmm18_110 = r2_110, zmm18_111 = r2_111,
    (* R3 *)
    zmm19_000 = r3_000, zmm19_001 = r3_001, zmm19_010 = r3_010, zmm19_011 = r3_011,
    zmm19_100 = r3_100, zmm19_101 = r3_101, zmm19_110 = r3_110, zmm19_111 = r3_111,
    (* R4 *)
    zmm20_000 = r4_000, zmm20_001 = r4_001, zmm20_010 = r4_010, zmm20_011 = r4_011,
    zmm20_100 = r4_100, zmm20_101 = r4_101, zmm20_110 = r4_110, zmm20_111 = r4_111,

    (* S1 *)
    zmm21_000 = s1_000, zmm21_001 = s1_001, zmm21_010 = s1_010, zmm21_011 = s1_011,
    zmm21_100 = s1_100, zmm21_101 = s1_101, zmm21_110 = s1_110, zmm21_111 = s1_111,
    (* S2 *)
    zmm22_000 = s2_000, zmm22_001 = s2_001, zmm22_010 = s2_010, zmm22_011 = s2_011,
    zmm22_100 = s2_100, zmm22_101 = s2_101, zmm22_110 = s2_110, zmm22_111 = s2_111,
    (* S3 *)
    zmm23_000 = s3_000, zmm23_001 = s3_001, zmm23_010 = s3_010, zmm23_011 = s3_011,
    zmm23_100 = s3_100, zmm23_101 = s3_101, zmm23_110 = s3_110, zmm23_111 = s3_111,
    (* S4 *)
    zmm24_000 = s4_000, zmm24_001 = s4_001, zmm24_010 = s4_010, zmm24_011 = s4_011,
    zmm24_100 = s4_100, zmm24_101 = s4_101, zmm24_110 = s4_110, zmm24_111 = s4_111,

    (* padbits *)
    padbit = 0,
    zmm30_000 = padbit, zmm30_001 = padbit, zmm30_010 = padbit, zmm30_011 = padbit,
    zmm30_100 = padbit, zmm30_101 = padbit, zmm30_110 = padbit, zmm30_111 = padbit,
    
    s1_000 = r1_000*5, s1_001 = r1_001*5, s1_010 = r1_010*5, s1_011 = r1_011*5,
    s1_100 = r1_100*5, s1_101 = r1_101*5, s1_110 = r1_110*5, s1_111 = r1_111*5,
    s2_000 = r2_000*5, s2_001 = r2_001*5, s2_010 = r2_010*5, s2_011 = r2_011*5,
    s2_100 = r2_100*5, s2_101 = r2_101*5, s2_110 = r2_110*5, s2_111 = r2_111*5,
    s3_000 = r3_000*5, s3_001 = r3_001*5, s3_010 = r3_010*5, s3_011 = r3_011*5,
    s3_100 = r3_100*5, s3_101 = r3_101*5, s3_110 = r3_110*5, s3_111 = r3_111*5,
    s4_000 = r4_000*5, s4_001 = r4_001*5, s4_010 = r4_010*5, s4_011 = r4_011*5,
    s4_100 = r4_100*5, s4_101 = r4_101*5, s4_110 = r4_110*5, s4_111 = r4_111*5
  ]
&&
  and [
    (* H0 *)
    zmm0_000 = h0_000, zmm0_001 = h0_001, zmm0_010 = h0_010, zmm0_011 = h0_011, 
    zmm0_100 = h0_100, zmm0_101 = h0_101, zmm0_110 = h0_110, zmm0_111 = h0_111, 
    (* H1 *)
    zmm1_000 = h1_000, zmm1_001 = h1_001, zmm1_010 = h1_010, zmm1_011 = h1_011, 
    zmm1_100 = h1_100, zmm1_101 = h1_101, zmm1_110 = h1_110, zmm1_111 = h1_111, 
    (* H2 *)
    zmm2_000 = h2_000 + t2_000, zmm2_001 = h2_001 + t2_001,
    zmm2_010 = h2_010 + t2_010, zmm2_011 = h2_011 + t2_011, 
    zmm2_100 = h2_100 + t2_100, zmm2_101 = h2_101 + t2_101, 
    zmm2_110 = h2_110 + t2_110, zmm2_111 = h2_111 + t2_111,
    (* H3 *)
    zmm3_000 = h3_000, zmm3_001 = h3_001, zmm3_010 = h3_010, zmm3_011 = h3_011, 
    zmm3_100 = h3_100, zmm3_101 = h3_101, zmm3_110 = h3_110, zmm3_111 = h3_111, 
    (* H4 *)
    zmm4_000 = h4_000, zmm4_001 = h4_001, zmm4_010 = h4_010, zmm4_011 = h4_011, 
    zmm4_100 = h4_100, zmm4_101 = h4_101, zmm4_110 = h4_110, zmm4_111 = h4_111, 

    (* T0 *)
    zmm7_000 = t0_000, zmm7_001 = t0_001, zmm7_010 = t0_010, zmm7_011 = t0_011, 
    zmm7_100 = t0_100, zmm7_101 = t0_101, zmm7_110 = t0_110, zmm7_111 = t0_111, 
    (* T1 *)
    zmm8_000 = t1_000, zmm8_001 = t1_001, zmm8_010 = t1_010, zmm8_011 = t1_011, 
    zmm8_100 = t1_100, zmm8_101 = t1_101, zmm8_110 = t1_110, zmm8_111 = t1_111, 
    (* T3 *)
    zmm10_000 = t3_000, zmm10_001 = t3_001, zmm10_010 = t3_010, zmm10_011 = t3_011, 
    zmm10_100 = t3_100, zmm10_101 = t3_101, zmm10_110 = t3_110, zmm10_111 = t3_111, 
    (* T4 *)
    zmm6_000 = t4_000, zmm6_001 = t4_001, zmm6_010 = t4_010, zmm6_011 = t4_011, 
    zmm6_100 = t4_100, zmm6_101 = t4_101, zmm6_110 = t4_110, zmm6_111 = t4_111, 

    (* R0 *)
    zmm16_000 = r0_000, zmm16_001 = r0_001, zmm16_010 = r0_010, zmm16_011 = r0_011,
    zmm16_100 = r0_100, zmm16_101 = r0_101, zmm16_110 = r0_110, zmm16_111 = r0_111,
    (* R1 *)
    zmm17_000 = r1_000, zmm17_001 = r1_001, zmm17_010 = r1_010, zmm17_011 = r1_011,
    zmm17_100 = r1_100, zmm17_101 = r1_101, zmm17_110 = r1_110, zmm17_111 = r1_111,
    (* R2 *)
    zmm18_000 = r2_000, zmm18_001 = r2_001, zmm18_010 = r2_010, zmm18_011 = r2_011,
    zmm18_100 = r2_100, zmm18_101 = r2_101, zmm18_110 = r2_110, zmm18_111 = r2_111,
    (* R3 *)
    zmm19_000 = r3_000, zmm19_001 = r3_001, zmm19_010 = r3_010, zmm19_011 = r3_011,
    zmm19_100 = r3_100, zmm19_101 = r3_101, zmm19_110 = r3_110, zmm19_111 = r3_111,
    (* R4 *)
    zmm20_000 = r4_000, zmm20_001 = r4_001, zmm20_010 = r4_010, zmm20_011 = r4_011,
    zmm20_100 = r4_100, zmm20_101 = r4_101, zmm20_110 = r4_110, zmm20_111 = r4_111,

    (* S1 *)
    zmm21_000 = s1_000, zmm21_001 = s1_001, zmm21_010 = s1_010, zmm21_011 = s1_011,
    zmm21_100 = s1_100, zmm21_101 = s1_101, zmm21_110 = s1_110, zmm21_111 = s1_111,
    (* S2 *)
    zmm22_000 = s2_000, zmm22_001 = s2_001, zmm22_010 = s2_010, zmm22_011 = s2_011,
    zmm22_100 = s2_100, zmm22_101 = s2_101, zmm22_110 = s2_110, zmm22_111 = s2_111,
    (* S3 *)
    zmm23_000 = s3_000, zmm23_001 = s3_001, zmm23_010 = s3_010, zmm23_011 = s3_011,
    zmm23_100 = s3_100, zmm23_101 = s3_101, zmm23_110 = s3_110, zmm23_111 = s3_111,
    (* S4 *)
    zmm24_000 = s4_000, zmm24_001 = s4_001, zmm24_010 = s4_010, zmm24_011 = s4_011,
    zmm24_100 = s4_100, zmm24_101 = s4_101, zmm24_110 = s4_110, zmm24_111 = s4_111,

    (* padbits *)
    padbit = 0@64,
    zmm30_000 = padbit, zmm30_001 = padbit, zmm30_010 = padbit, zmm30_011 = padbit,
    zmm30_100 = padbit, zmm30_101 = padbit, zmm30_110 = padbit, zmm30_111 = padbit,
    
    (* MASK *)
    zmm5_000 = 0x3ffffff@64, zmm5_001 = 0x3ffffff@64,
    zmm5_010 = 0x3ffffff@64, zmm5_011 = 0x3ffffff@64,
    zmm5_100 = 0x3ffffff@64, zmm5_101 = 0x3ffffff@64,
    zmm5_110 = 0x3ffffff@64, zmm5_111 = 0x3ffffff@64,
    
    s1_000 = r1_000*5@64, s1_001 = r1_001*5@64, s1_010 = r1_010*5@64, s1_011 = r1_011*5@64,
    s1_100 = r1_100*5@64, s1_101 = r1_101*5@64, s1_110 = r1_110*5@64, s1_111 = r1_111*5@64,
    s2_000 = r2_000*5@64, s2_001 = r2_001*5@64, s2_010 = r2_010*5@64, s2_011 = r2_011*5@64,
    s2_100 = r2_100*5@64, s2_101 = r2_101*5@64, s2_110 = r2_110*5@64, s2_111 = r2_111*5@64,
    s3_000 = r3_000*5@64, s3_001 = r3_001*5@64, s3_010 = r3_010*5@64, s3_011 = r3_011*5@64,
    s3_100 = r3_100*5@64, s3_101 = r3_101*5@64, s3_110 = r3_110*5@64, s3_111 = r3_111*5@64,
    s4_000 = r4_000*5@64, s4_001 = r4_001*5@64, s4_010 = r4_010*5@64, s4_011 = r4_011*5@64,
    s4_100 = r4_100*5@64, s4_101 = r4_101*5@64, s4_110 = r4_110*5@64, s4_111 = r4_111*5@64,

    h0_000 < (2**26)@64, h0_001 < (2**26)@64, h0_010 < (2**26)@64, h0_011 < (2**26)@64, 
    h0_100 < (2**26)@64, h0_101 < (2**26)@64, h0_110 < (2**26)@64, h0_111 < (2**26)@64, 
    h1_000 < (2**26)@64, h1_001 < (2**26)@64, h1_010 < (2**26)@64, h1_011 < (2**26)@64, 
    h1_100 < (2**26)@64, h1_101 < (2**26)@64, h1_110 < (2**26)@64, h1_111 < (2**26)@64, 
    h2_000 < (2**26)@64, h2_001 < (2**26)@64, h2_010 < (2**26)@64, h2_011 < (2**26)@64, 
    h2_100 < (2**26)@64, h2_101 < (2**26)@64, h2_110 < (2**26)@64, h2_111 < (2**26)@64, 
    h3_000 < (2**26)@64, h3_001 < (2**26)@64, h3_010 < (2**26)@64, h3_011 < (2**26)@64, 
    h3_100 < (2**26)@64, h3_101 < (2**26)@64, h3_110 < (2**26)@64, h3_111 < (2**26)@64, 
    h4_000 < (2**26)@64, h4_001 < (2**26)@64, h4_010 < (2**26)@64, h4_011 < (2**26)@64, 
    h4_100 < (2**26)@64, h4_101 < (2**26)@64, h4_110 < (2**26)@64, h4_111 < (2**26)@64, 

    t0_000 < (2**26)@64, t0_001 < (2**26)@64, t0_010 < (2**26)@64, t0_011 < (2**26)@64, 
    t0_100 < (2**26)@64, t0_101 < (2**26)@64, t0_110 < (2**26)@64, t0_111 < (2**26)@64, 
    t1_000 < (2**26)@64, t1_001 < (2**26)@64, t1_010 < (2**26)@64, t1_011 < (2**26)@64, 
    t1_100 < (2**26)@64, t1_101 < (2**26)@64, t1_110 < (2**26)@64, t1_111 < (2**26)@64, 
    t2_000 < (2**26)@64, t2_001 < (2**26)@64, t2_010 < (2**26)@64, t2_011 < (2**26)@64, 
    t2_100 < (2**26)@64, t2_101 < (2**26)@64, t2_110 < (2**26)@64, t2_111 < (2**26)@64, 
    t3_000 < (2**26)@64, t3_001 < (2**26)@64, t3_010 < (2**26)@64, t3_011 < (2**26)@64, 
    t3_100 < (2**26)@64, t3_101 < (2**26)@64, t3_110 < (2**26)@64, t3_111 < (2**26)@64, 
    t4_000 < (2**26)@64, t4_001 < (2**26)@64, t4_010 < (2**26)@64, t4_011 < (2**26)@64, 
    t4_100 < (2**26)@64, t4_101 < (2**26)@64, t4_110 < (2**26)@64, t4_111 < (2**26)@64, 

    r0_000 < (2**26)@64, r0_001 < (2**26)@64, r0_010 < (2**26)@64, r0_011 < (2**26)@64, 
    r0_100 < (2**26)@64, r0_101 < (2**26)@64, r0_110 < (2**26)@64, r0_111 < (2**26)@64, 
    r1_000 < (2**26)@64, r1_001 < (2**26)@64, r1_010 < (2**26)@64, r1_011 < (2**26)@64, 
    r1_100 < (2**26)@64, r1_101 < (2**26)@64, r1_110 < (2**26)@64, r1_111 < (2**26)@64, 
    r2_000 < (2**26)@64, r2_001 < (2**26)@64, r2_010 < (2**26)@64, r2_011 < (2**26)@64, 
    r2_100 < (2**26)@64, r2_101 < (2**26)@64, r2_110 < (2**26)@64, r2_111 < (2**26)@64, 
    r3_000 < (2**26)@64, r3_001 < (2**26)@64, r3_010 < (2**26)@64, r3_011 < (2**26)@64, 
    r3_100 < (2**26)@64, r3_101 < (2**26)@64, r3_110 < (2**26)@64, r3_111 < (2**26)@64, 
    r4_000 < (2**20)@64, r4_001 < (2**20)@64, r4_010 < (2**20)@64, r4_011 < (2**20)@64, 
    r4_100 < (2**20)@64, r4_101 < (2**20)@64, r4_110 < (2**20)@64, r4_111 < (2**20)@64
  ]
}

mov L0x7fffffffc780 INP_0000; mov L0x7fffffffc788 INP_0001;
mov L0x7fffffffc790 INP_0010; mov L0x7fffffffc798 INP_0011;
mov L0x7fffffffc7a0 INP_0100; mov L0x7fffffffc7a8 INP_0101;
mov L0x7fffffffc7b0 INP_0110; mov L0x7fffffffc7b8 INP_0111;
mov L0x7fffffffc7c0 INP_1000; mov L0x7fffffffc7c8 INP_1001;
mov L0x7fffffffc7d0 INP_1010; mov L0x7fffffffc7d8 INP_1011;
mov L0x7fffffffc7e0 INP_1100; mov L0x7fffffffc7e8 INP_1101;
mov L0x7fffffffc7f0 INP_1110; mov L0x7fffffffc7f8 INP_1111;

(* 0x0000555555557560 in poly1305_blocks_avx512 () *)
#0x0000555555557560 in poly1305_blocks_avx512 ();
(* #jmp    0x555555557560 <poly1305_blocks_avx512+2880>#! PC = 0x93824992245067 *)
#jmp    0x555555557560 <poly1305_blocks_avx512+2880>#! 0x93824992245067 = 0x93824992245067;
(* vpmuludq %zmm2,%zmm17,%zmm14                    #! PC = 0x93824992245088 *)
mul zmm14_000 zmm17_000 zmm2_000;
mul zmm14_001 zmm17_001 zmm2_001;
mul zmm14_010 zmm17_010 zmm2_010;
mul zmm14_011 zmm17_011 zmm2_011;
mul zmm14_100 zmm17_100 zmm2_100;
mul zmm14_101 zmm17_101 zmm2_101;
mul zmm14_110 zmm17_110 zmm2_110;
mul zmm14_111 zmm17_111 zmm2_111;
(* vpaddq %zmm0,%zmm7,%zmm0                        #! PC = 0x93824992245094 *)
add zmm0_000 zmm7_000 zmm0_000;
add zmm0_001 zmm7_001 zmm0_001;
add zmm0_010 zmm7_010 zmm0_010;
add zmm0_011 zmm7_011 zmm0_011;
add zmm0_100 zmm7_100 zmm0_100;
add zmm0_101 zmm7_101 zmm0_101;
add zmm0_110 zmm7_110 zmm0_110;
add zmm0_111 zmm7_111 zmm0_111;
(* vpmuludq %zmm2,%zmm18,%zmm15                    #! PC = 0x93824992245100 *)
mul zmm15_000 zmm18_000 zmm2_000;
mul zmm15_001 zmm18_001 zmm2_001;
mul zmm15_010 zmm18_010 zmm2_010;
mul zmm15_011 zmm18_011 zmm2_011;
mul zmm15_100 zmm18_100 zmm2_100;
mul zmm15_101 zmm18_101 zmm2_101;
mul zmm15_110 zmm18_110 zmm2_110;
mul zmm15_111 zmm18_111 zmm2_111;
(* vpandq %zmm5,%zmm8,%zmm8                        #! PC = 0x93824992245106 *)
(* NOTE: assume zmm8 (T1) has been masked
and zmm8_000@uint64 zmm8_000 zmm5_000;
and zmm8_001@uint64 zmm8_001 zmm5_001;
and zmm8_010@uint64 zmm8_010 zmm5_010;
and zmm8_011@uint64 zmm8_011 zmm5_011;
and zmm8_100@uint64 zmm8_100 zmm5_100;
and zmm8_101@uint64 zmm8_101 zmm5_101;
and zmm8_110@uint64 zmm8_110 zmm5_110;
and zmm8_111@uint64 zmm8_111 zmm5_111;
*)
(* vpmuludq %zmm2,%zmm23,%zmm11                    #! PC = 0x93824992245112 *)
mul zmm11_000 zmm23_000 zmm2_000;
mul zmm11_001 zmm23_001 zmm2_001;
mul zmm11_010 zmm23_010 zmm2_010;
mul zmm11_011 zmm23_011 zmm2_011;
mul zmm11_100 zmm23_100 zmm2_100;
mul zmm11_101 zmm23_101 zmm2_101;
mul zmm11_110 zmm23_110 zmm2_110;
mul zmm11_111 zmm23_111 zmm2_111;
(* vpandq %zmm5,%zmm10,%zmm10                      #! PC = 0x93824992245118 *)
(* NOTE: assume zmm10 (T3) has been masked 
and zmm10_000@uint64 zmm10_000 zmm5_000;
and zmm10_001@uint64 zmm10_001 zmm5_001;
and zmm10_010@uint64 zmm10_010 zmm5_010;
and zmm10_011@uint64 zmm10_011 zmm5_011;
and zmm10_100@uint64 zmm10_100 zmm5_100;
and zmm10_101@uint64 zmm10_101 zmm5_101;
and zmm10_110@uint64 zmm10_110 zmm5_110;
and zmm10_111@uint64 zmm10_111 zmm5_111;
*)
(* vpmuludq %zmm2,%zmm24,%zmm12                    #! PC = 0x93824992245124 *)
mul zmm12_000 zmm24_000 zmm2_000;
mul zmm12_001 zmm24_001 zmm2_001;
mul zmm12_010 zmm24_010 zmm2_010;
mul zmm12_011 zmm24_011 zmm2_011;
mul zmm12_100 zmm24_100 zmm2_100;
mul zmm12_101 zmm24_101 zmm2_101;
mul zmm12_110 zmm24_110 zmm2_110;
mul zmm12_111 zmm24_111 zmm2_111;

(* NOTE: keep zmm6's values *)
ghost zmm6o_000@uint64, zmm6o_001@uint64,
      zmm6o_010@uint64, zmm6o_011@uint64,
      zmm6o_100@uint64, zmm6o_101@uint64,
      zmm6o_110@uint64, zmm6o_111@uint64 :
      and [zmm6o_000 = zmm6_000, zmm6o_001 = zmm6_001,
           zmm6o_010 = zmm6_010, zmm6o_011 = zmm6_011,
           zmm6o_100 = zmm6_100, zmm6o_101 = zmm6_101,
           zmm6o_110 = zmm6_110, zmm6o_111 = zmm6_111]
   && true;
(* vporq  %zmm30,%zmm6,%zmm6                       #! PC = 0x93824992245130 *)
or zmm6_000@uint64 zmm6_000 zmm30_000;
or zmm6_001@uint64 zmm6_001 zmm30_001;
or zmm6_010@uint64 zmm6_010 zmm30_010;
or zmm6_011@uint64 zmm6_011 zmm30_011;
or zmm6_100@uint64 zmm6_100 zmm30_100;
or zmm6_101@uint64 zmm6_101 zmm30_101;
or zmm6_110@uint64 zmm6_110 zmm30_110;
or zmm6_111@uint64 zmm6_111 zmm30_111;

(* NOTE: assume zmm6 (T4) unchanged by padbit *)
assume and [zmm6o_000 = zmm6_000, zmm6o_001 = zmm6_001,
            zmm6o_010 = zmm6_010, zmm6o_011 = zmm6_011,
            zmm6o_100 = zmm6_100, zmm6o_101 = zmm6_101,
            zmm6o_110 = zmm6_110, zmm6o_111 = zmm6_111]
    && true;

(* vpmuludq %zmm2,%zmm16,%zmm13                    #! PC = 0x93824992245136 *)
mul zmm13_000 zmm16_000 zmm2_000;
mul zmm13_001 zmm16_001 zmm2_001;
mul zmm13_010 zmm16_010 zmm2_010;
mul zmm13_011 zmm16_011 zmm2_011;
mul zmm13_100 zmm16_100 zmm2_100;
mul zmm13_101 zmm16_101 zmm2_101;
mul zmm13_110 zmm16_110 zmm2_110;
mul zmm13_111 zmm16_111 zmm2_111;
(* vpaddq %zmm1,%zmm8,%zmm1                        #! PC = 0x93824992245142 *)
add zmm1_000 zmm8_000 zmm1_000;
add zmm1_001 zmm8_001 zmm1_001;
add zmm1_010 zmm8_010 zmm1_010;
add zmm1_011 zmm8_011 zmm1_011;
add zmm1_100 zmm8_100 zmm1_100;
add zmm1_101 zmm8_101 zmm1_101;
add zmm1_110 zmm8_110 zmm1_110;
add zmm1_111 zmm8_111 zmm1_111;
(* vpaddq %zmm3,%zmm10,%zmm3                       #! PC = 0x93824992245148 *)
add zmm3_000 zmm10_000 zmm3_000;
add zmm3_001 zmm10_001 zmm3_001;
add zmm3_010 zmm10_010 zmm3_010;
add zmm3_011 zmm10_011 zmm3_011;
add zmm3_100 zmm10_100 zmm3_100;
add zmm3_101 zmm10_101 zmm3_101;
add zmm3_110 zmm10_110 zmm3_110;
add zmm3_111 zmm10_111 zmm3_111;
(* vpaddq %zmm4,%zmm6,%zmm4                        #! PC = 0x93824992245154 *)
add zmm4_000 zmm6_000 zmm4_000;
add zmm4_001 zmm6_001 zmm4_001;
add zmm4_010 zmm6_010 zmm4_010;
add zmm4_011 zmm6_011 zmm4_011;
add zmm4_100 zmm6_100 zmm4_100;
add zmm4_101 zmm6_101 zmm4_101;
add zmm4_110 zmm6_110 zmm4_110;
add zmm4_111 zmm6_111 zmm4_111;
(* vmovdqu64 (%rsi),%zmm10                         #! EA = L0x7fffffffc780; Value = 0x0000000000000000; PC = 0x93824992245160 *)
mov zmm10_000 L0x7fffffffc780;
mov zmm10_001 L0x7fffffffc788;
mov zmm10_010 L0x7fffffffc790;
mov zmm10_011 L0x7fffffffc798;
mov zmm10_100 L0x7fffffffc7a0;
mov zmm10_101 L0x7fffffffc7a8;
mov zmm10_110 L0x7fffffffc7b0;
mov zmm10_111 L0x7fffffffc7b8;
(* vmovdqu64 0x40(%rsi),%zmm6                      #! EA = L0x7fffffffc7c0; Value = 0x0000000000000000; PC = 0x93824992245166 *)
mov zmm6_000 L0x7fffffffc7c0;
mov zmm6_001 L0x7fffffffc7c8;
mov zmm6_010 L0x7fffffffc7d0;
mov zmm6_011 L0x7fffffffc7d8;
mov zmm6_100 L0x7fffffffc7e0;
mov zmm6_101 L0x7fffffffc7e8;
mov zmm6_110 L0x7fffffffc7f0;
mov zmm6_111 L0x7fffffffc7f8;
(* #lea    0x80(%rsi),%rsi                          #! PC = 0x93824992245173 *)
#lea    0x80%%EA,%rsi                          #! 0x93824992245173 = 0x93824992245173;
(* vpmuludq %zmm0,%zmm19,%zmm28                    #! PC = 0x93824992245180 *)
mul zmm28_000 zmm19_000 zmm0_000;
mul zmm28_001 zmm19_001 zmm0_001;
mul zmm28_010 zmm19_010 zmm0_010;
mul zmm28_011 zmm19_011 zmm0_011;
mul zmm28_100 zmm19_100 zmm0_100;
mul zmm28_101 zmm19_101 zmm0_101;
mul zmm28_110 zmm19_110 zmm0_110;
mul zmm28_111 zmm19_111 zmm0_111;
(* vpmuludq %zmm0,%zmm20,%zmm29                    #! PC = 0x93824992245186 *)
mul zmm29_000 zmm20_000 zmm0_000;
mul zmm29_001 zmm20_001 zmm0_001;
mul zmm29_010 zmm20_010 zmm0_010;
mul zmm29_011 zmm20_011 zmm0_011;
mul zmm29_100 zmm20_100 zmm0_100;
mul zmm29_101 zmm20_101 zmm0_101;
mul zmm29_110 zmm20_110 zmm0_110;
mul zmm29_111 zmm20_111 zmm0_111;
(* vpmuludq %zmm0,%zmm16,%zmm25                    #! PC = 0x93824992245192 *)
mul zmm25_000 zmm16_000 zmm0_000;
mul zmm25_001 zmm16_001 zmm0_001;
mul zmm25_010 zmm16_010 zmm0_010;
mul zmm25_011 zmm16_011 zmm0_011;
mul zmm25_100 zmm16_100 zmm0_100;
mul zmm25_101 zmm16_101 zmm0_101;
mul zmm25_110 zmm16_110 zmm0_110;
mul zmm25_111 zmm16_111 zmm0_111;
(* vpmuludq %zmm0,%zmm17,%zmm26                    #! PC = 0x93824992245198 *)
mul zmm26_000 zmm17_000 zmm0_000;
mul zmm26_001 zmm17_001 zmm0_001;
mul zmm26_010 zmm17_010 zmm0_010;
mul zmm26_011 zmm17_011 zmm0_011;
mul zmm26_100 zmm17_100 zmm0_100;
mul zmm26_101 zmm17_101 zmm0_101;
mul zmm26_110 zmm17_110 zmm0_110;
mul zmm26_111 zmm17_111 zmm0_111;
(* vpaddq %zmm28,%zmm14,%zmm14                     #! PC = 0x93824992245204 *)
add zmm14_000 zmm14_000 zmm28_000;
add zmm14_001 zmm14_001 zmm28_001;
add zmm14_010 zmm14_010 zmm28_010;
add zmm14_011 zmm14_011 zmm28_011;
add zmm14_100 zmm14_100 zmm28_100;
add zmm14_101 zmm14_101 zmm28_101;
add zmm14_110 zmm14_110 zmm28_110;
add zmm14_111 zmm14_111 zmm28_111;
(* vpaddq %zmm29,%zmm15,%zmm15                     #! PC = 0x93824992245210 *)
add zmm15_000 zmm15_000 zmm29_000;
add zmm15_001 zmm15_001 zmm29_001;
add zmm15_010 zmm15_010 zmm29_010;
add zmm15_011 zmm15_011 zmm29_011;
add zmm15_100 zmm15_100 zmm29_100;
add zmm15_101 zmm15_101 zmm29_101;
add zmm15_110 zmm15_110 zmm29_110;
add zmm15_111 zmm15_111 zmm29_111;
(* vpaddq %zmm25,%zmm11,%zmm11                     #! PC = 0x93824992245216 *)
add zmm11_000 zmm11_000 zmm25_000;
add zmm11_001 zmm11_001 zmm25_001;
add zmm11_010 zmm11_010 zmm25_010;
add zmm11_011 zmm11_011 zmm25_011;
add zmm11_100 zmm11_100 zmm25_100;
add zmm11_101 zmm11_101 zmm25_101;
add zmm11_110 zmm11_110 zmm25_110;
add zmm11_111 zmm11_111 zmm25_111;
(* vpaddq %zmm26,%zmm12,%zmm12                     #! PC = 0x93824992245222 *)
add zmm12_000 zmm12_000 zmm26_000;
add zmm12_001 zmm12_001 zmm26_001;
add zmm12_010 zmm12_010 zmm26_010;
add zmm12_011 zmm12_011 zmm26_011;
add zmm12_100 zmm12_100 zmm26_100;
add zmm12_101 zmm12_101 zmm26_101;
add zmm12_110 zmm12_110 zmm26_110;
add zmm12_111 zmm12_111 zmm26_111;
(* vpmuludq %zmm1,%zmm18,%zmm28                    #! PC = 0x93824992245228 *)
mul zmm28_000 zmm18_000 zmm1_000;
mul zmm28_001 zmm18_001 zmm1_001;
mul zmm28_010 zmm18_010 zmm1_010;
mul zmm28_011 zmm18_011 zmm1_011;
mul zmm28_100 zmm18_100 zmm1_100;
mul zmm28_101 zmm18_101 zmm1_101;
mul zmm28_110 zmm18_110 zmm1_110;
mul zmm28_111 zmm18_111 zmm1_111;
(* vpmuludq %zmm1,%zmm19,%zmm29                    #! PC = 0x93824992245234 *)
mul zmm29_000 zmm19_000 zmm1_000;
mul zmm29_001 zmm19_001 zmm1_001;
mul zmm29_010 zmm19_010 zmm1_010;
mul zmm29_011 zmm19_011 zmm1_011;
mul zmm29_100 zmm19_100 zmm1_100;
mul zmm29_101 zmm19_101 zmm1_101;
mul zmm29_110 zmm19_110 zmm1_110;
mul zmm29_111 zmm19_111 zmm1_111;
(* vpmuludq %zmm1,%zmm24,%zmm25                    #! PC = 0x93824992245240 *)
mul zmm25_000 zmm24_000 zmm1_000;
mul zmm25_001 zmm24_001 zmm1_001;
mul zmm25_010 zmm24_010 zmm1_010;
mul zmm25_011 zmm24_011 zmm1_011;
mul zmm25_100 zmm24_100 zmm1_100;
mul zmm25_101 zmm24_101 zmm1_101;
mul zmm25_110 zmm24_110 zmm1_110;
mul zmm25_111 zmm24_111 zmm1_111;
(* vpmuludq %zmm0,%zmm18,%zmm27                    #! PC = 0x93824992245246 *)
mul zmm27_000 zmm18_000 zmm0_000;
mul zmm27_001 zmm18_001 zmm0_001;
mul zmm27_010 zmm18_010 zmm0_010;
mul zmm27_011 zmm18_011 zmm0_011;
mul zmm27_100 zmm18_100 zmm0_100;
mul zmm27_101 zmm18_101 zmm0_101;
mul zmm27_110 zmm18_110 zmm0_110;
mul zmm27_111 zmm18_111 zmm0_111;
(* vpaddq %zmm28,%zmm14,%zmm14                     #! PC = 0x93824992245252 *)
add zmm14_000 zmm14_000 zmm28_000;
add zmm14_001 zmm14_001 zmm28_001;
add zmm14_010 zmm14_010 zmm28_010;
add zmm14_011 zmm14_011 zmm28_011;
add zmm14_100 zmm14_100 zmm28_100;
add zmm14_101 zmm14_101 zmm28_101;
add zmm14_110 zmm14_110 zmm28_110;
add zmm14_111 zmm14_111 zmm28_111;
(* vpaddq %zmm29,%zmm15,%zmm15                     #! PC = 0x93824992245258 *)
add zmm15_000 zmm15_000 zmm29_000;
add zmm15_001 zmm15_001 zmm29_001;
add zmm15_010 zmm15_010 zmm29_010;
add zmm15_011 zmm15_011 zmm29_011;
add zmm15_100 zmm15_100 zmm29_100;
add zmm15_101 zmm15_101 zmm29_101;
add zmm15_110 zmm15_110 zmm29_110;
add zmm15_111 zmm15_111 zmm29_111;
(* vpaddq %zmm25,%zmm11,%zmm11                     #! PC = 0x93824992245264 *)
add zmm11_000 zmm11_000 zmm25_000;
add zmm11_001 zmm11_001 zmm25_001;
add zmm11_010 zmm11_010 zmm25_010;
add zmm11_011 zmm11_011 zmm25_011;
add zmm11_100 zmm11_100 zmm25_100;
add zmm11_101 zmm11_101 zmm25_101;
add zmm11_110 zmm11_110 zmm25_110;
add zmm11_111 zmm11_111 zmm25_111;
(* vpaddq %zmm27,%zmm13,%zmm13                     #! PC = 0x93824992245270 *)
add zmm13_000 zmm13_000 zmm27_000;
add zmm13_001 zmm13_001 zmm27_001;
add zmm13_010 zmm13_010 zmm27_010;
add zmm13_011 zmm13_011 zmm27_011;
add zmm13_100 zmm13_100 zmm27_100;
add zmm13_101 zmm13_101 zmm27_101;
add zmm13_110 zmm13_110 zmm27_110;
add zmm13_111 zmm13_111 zmm27_111;
(* vpunpcklqdq %zmm6,%zmm10,%zmm7                  #! PC = 0x93824992245276 *)
mov zmm7_000 zmm10_000;
mov zmm7_001 zmm6_000;
mov zmm7_010 zmm10_010;
mov zmm7_011 zmm6_010;
mov zmm7_100 zmm10_100;
mov zmm7_101 zmm6_100;
mov zmm7_110 zmm10_110;
mov zmm7_111 zmm6_110;
(* vpunpckhqdq %zmm6,%zmm10,%zmm6                  #! PC = 0x93824992245282 *)
mov zmm6_000 zmm10_001;
mov zmm6_001 zmm6_001;
mov zmm6_010 zmm10_011;
mov zmm6_011 zmm6_011;
mov zmm6_100 zmm10_101;
mov zmm6_101 zmm6_101;
mov zmm6_110 zmm10_111;
mov zmm6_111 zmm6_111;
(* vpmuludq %zmm3,%zmm16,%zmm28                    #! PC = 0x93824992245288 *)
mul zmm28_000 zmm16_000 zmm3_000;
mul zmm28_001 zmm16_001 zmm3_001;
mul zmm28_010 zmm16_010 zmm3_010;
mul zmm28_011 zmm16_011 zmm3_011;
mul zmm28_100 zmm16_100 zmm3_100;
mul zmm28_101 zmm16_101 zmm3_101;
mul zmm28_110 zmm16_110 zmm3_110;
mul zmm28_111 zmm16_111 zmm3_111;
(* vpmuludq %zmm3,%zmm17,%zmm29                    #! PC = 0x93824992245294 *)
mul zmm29_000 zmm17_000 zmm3_000;
mul zmm29_001 zmm17_001 zmm3_001;
mul zmm29_010 zmm17_010 zmm3_010;
mul zmm29_011 zmm17_011 zmm3_011;
mul zmm29_100 zmm17_100 zmm3_100;
mul zmm29_101 zmm17_101 zmm3_101;
mul zmm29_110 zmm17_110 zmm3_110;
mul zmm29_111 zmm17_111 zmm3_111;
(* vpmuludq %zmm1,%zmm16,%zmm26                    #! PC = 0x93824992245300 *)
mul zmm26_000 zmm16_000 zmm1_000;
mul zmm26_001 zmm16_001 zmm1_001;
mul zmm26_010 zmm16_010 zmm1_010;
mul zmm26_011 zmm16_011 zmm1_011;
mul zmm26_100 zmm16_100 zmm1_100;
mul zmm26_101 zmm16_101 zmm1_101;
mul zmm26_110 zmm16_110 zmm1_110;
mul zmm26_111 zmm16_111 zmm1_111;
(* vpmuludq %zmm1,%zmm17,%zmm27                    #! PC = 0x93824992245306 *)
mul zmm27_000 zmm17_000 zmm1_000;
mul zmm27_001 zmm17_001 zmm1_001;
mul zmm27_010 zmm17_010 zmm1_010;
mul zmm27_011 zmm17_011 zmm1_011;
mul zmm27_100 zmm17_100 zmm1_100;
mul zmm27_101 zmm17_101 zmm1_101;
mul zmm27_110 zmm17_110 zmm1_110;
mul zmm27_111 zmm17_111 zmm1_111;
(* vpaddq %zmm28,%zmm14,%zmm14                     #! PC = 0x93824992245312 *)
add zmm14_000 zmm14_000 zmm28_000;
add zmm14_001 zmm14_001 zmm28_001;
add zmm14_010 zmm14_010 zmm28_010;
add zmm14_011 zmm14_011 zmm28_011;
add zmm14_100 zmm14_100 zmm28_100;
add zmm14_101 zmm14_101 zmm28_101;
add zmm14_110 zmm14_110 zmm28_110;
add zmm14_111 zmm14_111 zmm28_111;
(* vpaddq %zmm29,%zmm15,%zmm15                     #! PC = 0x93824992245318 *)
add zmm15_000 zmm15_000 zmm29_000;
add zmm15_001 zmm15_001 zmm29_001;
add zmm15_010 zmm15_010 zmm29_010;
add zmm15_011 zmm15_011 zmm29_011;
add zmm15_100 zmm15_100 zmm29_100;
add zmm15_101 zmm15_101 zmm29_101;
add zmm15_110 zmm15_110 zmm29_110;
add zmm15_111 zmm15_111 zmm29_111;
(* vpaddq %zmm26,%zmm12,%zmm12                     #! PC = 0x93824992245324 *)
add zmm12_000 zmm12_000 zmm26_000;
add zmm12_001 zmm12_001 zmm26_001;
add zmm12_010 zmm12_010 zmm26_010;
add zmm12_011 zmm12_011 zmm26_011;
add zmm12_100 zmm12_100 zmm26_100;
add zmm12_101 zmm12_101 zmm26_101;
add zmm12_110 zmm12_110 zmm26_110;
add zmm12_111 zmm12_111 zmm26_111;
(* vpaddq %zmm27,%zmm13,%zmm13                     #! PC = 0x93824992245330 *)
add zmm13_000 zmm13_000 zmm27_000;
add zmm13_001 zmm13_001 zmm27_001;
add zmm13_010 zmm13_010 zmm27_010;
add zmm13_011 zmm13_011 zmm27_011;
add zmm13_100 zmm13_100 zmm27_100;
add zmm13_101 zmm13_101 zmm27_101;
add zmm13_110 zmm13_110 zmm27_110;
add zmm13_111 zmm13_111 zmm27_111;
(* vpmuludq %zmm4,%zmm24,%zmm28                    #! PC = 0x93824992245336 *)
mul zmm28_000 zmm24_000 zmm4_000;
mul zmm28_001 zmm24_001 zmm4_001;
mul zmm28_010 zmm24_010 zmm4_010;
mul zmm28_011 zmm24_011 zmm4_011;
mul zmm28_100 zmm24_100 zmm4_100;
mul zmm28_101 zmm24_101 zmm4_101;
mul zmm28_110 zmm24_110 zmm4_110;
mul zmm28_111 zmm24_111 zmm4_111;
(* vpmuludq %zmm4,%zmm16,%zmm29                    #! PC = 0x93824992245342 *)
mul zmm29_000 zmm16_000 zmm4_000;
mul zmm29_001 zmm16_001 zmm4_001;
mul zmm29_010 zmm16_010 zmm4_010;
mul zmm29_011 zmm16_011 zmm4_011;
mul zmm29_100 zmm16_100 zmm4_100;
mul zmm29_101 zmm16_101 zmm4_101;
mul zmm29_110 zmm16_110 zmm4_110;
mul zmm29_111 zmm16_111 zmm4_111;
(* vpmuludq %zmm3,%zmm22,%zmm25                    #! PC = 0x93824992245348 *)
mul zmm25_000 zmm22_000 zmm3_000;
mul zmm25_001 zmm22_001 zmm3_001;
mul zmm25_010 zmm22_010 zmm3_010;
mul zmm25_011 zmm22_011 zmm3_011;
mul zmm25_100 zmm22_100 zmm3_100;
mul zmm25_101 zmm22_101 zmm3_101;
mul zmm25_110 zmm22_110 zmm3_110;
mul zmm25_111 zmm22_111 zmm3_111;
(* vpmuludq %zmm3,%zmm23,%zmm26                    #! PC = 0x93824992245354 *)
mul zmm26_000 zmm23_000 zmm3_000;
mul zmm26_001 zmm23_001 zmm3_001;
mul zmm26_010 zmm23_010 zmm3_010;
mul zmm26_011 zmm23_011 zmm3_011;
mul zmm26_100 zmm23_100 zmm3_100;
mul zmm26_101 zmm23_101 zmm3_101;
mul zmm26_110 zmm23_110 zmm3_110;
mul zmm26_111 zmm23_111 zmm3_111;
(* vpaddq %zmm28,%zmm14,%zmm14                     #! PC = 0x93824992245360 *)
add zmm14_000 zmm14_000 zmm28_000;
add zmm14_001 zmm14_001 zmm28_001;
add zmm14_010 zmm14_010 zmm28_010;
add zmm14_011 zmm14_011 zmm28_011;
add zmm14_100 zmm14_100 zmm28_100;
add zmm14_101 zmm14_101 zmm28_101;
add zmm14_110 zmm14_110 zmm28_110;
add zmm14_111 zmm14_111 zmm28_111;
(* vpmuludq %zmm3,%zmm24,%zmm27                    #! PC = 0x93824992245366 *)
mul zmm27_000 zmm24_000 zmm3_000;
mul zmm27_001 zmm24_001 zmm3_001;
mul zmm27_010 zmm24_010 zmm3_010;
mul zmm27_011 zmm24_011 zmm3_011;
mul zmm27_100 zmm24_100 zmm3_100;
mul zmm27_101 zmm24_101 zmm3_101;
mul zmm27_110 zmm24_110 zmm3_110;
mul zmm27_111 zmm24_111 zmm3_111;
(* vpaddq %zmm29,%zmm15,%zmm15                     #! PC = 0x93824992245372 *)
add zmm15_000 zmm15_000 zmm29_000;
add zmm15_001 zmm15_001 zmm29_001;
add zmm15_010 zmm15_010 zmm29_010;
add zmm15_011 zmm15_011 zmm29_011;
add zmm15_100 zmm15_100 zmm29_100;
add zmm15_101 zmm15_101 zmm29_101;
add zmm15_110 zmm15_110 zmm29_110;
add zmm15_111 zmm15_111 zmm29_111;
(* vpaddq %zmm25,%zmm11,%zmm11                     #! PC = 0x93824992245378 *)
add zmm11_000 zmm11_000 zmm25_000;
add zmm11_001 zmm11_001 zmm25_001;
add zmm11_010 zmm11_010 zmm25_010;
add zmm11_011 zmm11_011 zmm25_011;
add zmm11_100 zmm11_100 zmm25_100;
add zmm11_101 zmm11_101 zmm25_101;
add zmm11_110 zmm11_110 zmm25_110;
add zmm11_111 zmm11_111 zmm25_111;
(* vpaddq %zmm26,%zmm12,%zmm12                     #! PC = 0x93824992245384 *)
add zmm12_000 zmm12_000 zmm26_000;
add zmm12_001 zmm12_001 zmm26_001;
add zmm12_010 zmm12_010 zmm26_010;
add zmm12_011 zmm12_011 zmm26_011;
add zmm12_100 zmm12_100 zmm26_100;
add zmm12_101 zmm12_101 zmm26_101;
add zmm12_110 zmm12_110 zmm26_110;
add zmm12_111 zmm12_111 zmm26_111;
(* vpaddq %zmm27,%zmm13,%zmm13                     #! PC = 0x93824992245390 *)
add zmm13_000 zmm13_000 zmm27_000;
add zmm13_001 zmm13_001 zmm27_001;
add zmm13_010 zmm13_010 zmm27_010;
add zmm13_011 zmm13_011 zmm27_011;
add zmm13_100 zmm13_100 zmm27_100;
add zmm13_101 zmm13_101 zmm27_101;
add zmm13_110 zmm13_110 zmm27_110;
add zmm13_111 zmm13_111 zmm27_111;
(* vpmuludq %zmm4,%zmm21,%zmm25                    #! PC = 0x93824992245396 *)
mul zmm25_000 zmm21_000 zmm4_000;
mul zmm25_001 zmm21_001 zmm4_001;
mul zmm25_010 zmm21_010 zmm4_010;
mul zmm25_011 zmm21_011 zmm4_011;
mul zmm25_100 zmm21_100 zmm4_100;
mul zmm25_101 zmm21_101 zmm4_101;
mul zmm25_110 zmm21_110 zmm4_110;
mul zmm25_111 zmm21_111 zmm4_111;
(* vpmuludq %zmm4,%zmm22,%zmm26                    #! PC = 0x93824992245402 *)
mul zmm26_000 zmm22_000 zmm4_000;
mul zmm26_001 zmm22_001 zmm4_001;
mul zmm26_010 zmm22_010 zmm4_010;
mul zmm26_011 zmm22_011 zmm4_011;
mul zmm26_100 zmm22_100 zmm4_100;
mul zmm26_101 zmm22_101 zmm4_101;
mul zmm26_110 zmm22_110 zmm4_110;
mul zmm26_111 zmm22_111 zmm4_111;
(* vpmuludq %zmm4,%zmm23,%zmm27                    #! PC = 0x93824992245408 *)
mul zmm27_000 zmm23_000 zmm4_000;
mul zmm27_001 zmm23_001 zmm4_001;
mul zmm27_010 zmm23_010 zmm4_010;
mul zmm27_011 zmm23_011 zmm4_011;
mul zmm27_100 zmm23_100 zmm4_100;
mul zmm27_101 zmm23_101 zmm4_101;
mul zmm27_110 zmm23_110 zmm4_110;
mul zmm27_111 zmm23_111 zmm4_111;
(* vpaddq %zmm25,%zmm11,%zmm0                      #! PC = 0x93824992245414 *)
add zmm0_000 zmm11_000 zmm25_000;
add zmm0_001 zmm11_001 zmm25_001;
add zmm0_010 zmm11_010 zmm25_010;
add zmm0_011 zmm11_011 zmm25_011;
add zmm0_100 zmm11_100 zmm25_100;
add zmm0_101 zmm11_101 zmm25_101;
add zmm0_110 zmm11_110 zmm25_110;
add zmm0_111 zmm11_111 zmm25_111;
(* vpaddq %zmm26,%zmm12,%zmm1                      #! PC = 0x93824992245420 *)
add zmm1_000 zmm12_000 zmm26_000;
add zmm1_001 zmm12_001 zmm26_001;
add zmm1_010 zmm12_010 zmm26_010;
add zmm1_011 zmm12_011 zmm26_011;
add zmm1_100 zmm12_100 zmm26_100;
add zmm1_101 zmm12_101 zmm26_101;
add zmm1_110 zmm12_110 zmm26_110;
add zmm1_111 zmm12_111 zmm26_111;
(* vpaddq %zmm27,%zmm13,%zmm2                      #! PC = 0x93824992245426 *)
add zmm2_000 zmm13_000 zmm27_000;
add zmm2_001 zmm13_001 zmm27_001;
add zmm2_010 zmm13_010 zmm27_010;
add zmm2_011 zmm13_011 zmm27_011;
add zmm2_100 zmm13_100 zmm27_100;
add zmm2_101 zmm13_101 zmm27_101;
add zmm2_110 zmm13_110 zmm27_110;
add zmm2_111 zmm13_111 zmm27_111;

(* NOTE: summary of accumulation *)
(* H0 = zmm0, H1 = zmm1, H2 = zmm2, D3 = zmm14, D4 = zmm15 *)

assert eqmod (limbs 26 [zmm0_000, zmm1_000, zmm2_000, zmm14_000, zmm15_000])
             ((limbs 64 [inp_0000, inp_0001] +
               limbs 26 [h0_000, h1_000, h2_000, h3_000, h4_000])
              * 
              limbs 26 [r0_000, r1_000, r2_000, r3_000, r4_000])
             (2**130 - 5)
    && true;
assert eqmod (limbs 26 [zmm0_001, zmm1_001, zmm2_001, zmm14_001, zmm15_001])
             ((limbs 64 [inp_1000, inp_1001] +
               limbs 26 [h0_001, h1_001, h2_001, h3_001, h4_001])
              * 
              limbs 26 [r0_001, r1_001, r2_001, r3_001, r4_001])
             (2**130 - 5)
    && true;
assert eqmod (limbs 26 [zmm0_010, zmm1_010, zmm2_010, zmm14_010, zmm15_010])
             ((limbs 64 [inp_0010, inp_0011] +
               limbs 26 [h0_010, h1_010, h2_010, h3_010, h4_010])
              * 
              limbs 26 [r0_010, r1_010, r2_010, r3_010, r4_010])
             (2**130 - 5)
    && true;
assert eqmod (limbs 26 [zmm0_011, zmm1_011, zmm2_011, zmm14_011, zmm15_011])
             ((limbs 64 [inp_1010, inp_1011] +
               limbs 26 [h0_011, h1_011, h2_011, h3_011, h4_011])
              * 
              limbs 26 [r0_011, r1_011, r2_011, r3_011, r4_011])
             (2**130 - 5)
    && true;
assert eqmod (limbs 26 [zmm0_100, zmm1_100, zmm2_100, zmm14_100, zmm15_100])
             ((limbs 64 [inp_0100, inp_0101] +
               limbs 26 [h0_100, h1_100, h2_100, h3_100, h4_100])
              * 
              limbs 26 [r0_100, r1_100, r2_100, r3_100, r4_100])
             (2**130 - 5)
    && true;
assert eqmod (limbs 26 [zmm0_101, zmm1_101, zmm2_101, zmm14_101, zmm15_101])
             ((limbs 64 [inp_1100, inp_1101] +
               limbs 26 [h0_101, h1_101, h2_101, h3_101, h4_101])
              * 
              limbs 26 [r0_101, r1_101, r2_101, r3_101, r4_101])
             (2**130 - 5)
    && true;
assert eqmod (limbs 26 [zmm0_110, zmm1_110, zmm2_110, zmm14_110, zmm15_110])
             ((limbs 64 [inp_0110, inp_0111] +
               limbs 26 [h0_110, h1_110, h2_110, h3_110, h4_110])
              * 
              limbs 26 [r0_110, r1_110, r2_110, r3_110, r4_110])
             (2**130 - 5)
    && true;
assert eqmod (limbs 26 [zmm0_111, zmm1_111, zmm2_111, zmm14_111, zmm15_111])
             ((limbs 64 [inp_1110, inp_1111] +
               limbs 26 [h0_111, h1_111, h2_111, h3_111, h4_111])
              * 
              limbs 26 [r0_111, r1_111, r2_111, r3_111, r4_111])
             (2**130 - 5)
    && true;

(* NOTE: keep old hashes *)
ghost zmm0p_000@uint64, zmm0p_001@uint64,
      zmm0p_010@uint64, zmm0p_011@uint64,
      zmm0p_100@uint64, zmm0p_101@uint64,
      zmm0p_110@uint64, zmm0p_111@uint64 :
      true
   && and [zmm0p_000 = zmm0_000, zmm0p_001 = zmm0_001,
           zmm0p_010 = zmm0_010, zmm0p_011 = zmm0_011,
           zmm0p_100 = zmm0_100, zmm0p_101 = zmm0_101,
           zmm0p_110 = zmm0_110, zmm0p_111 = zmm0_111];
ghost zmm1p_000@uint64, zmm1p_001@uint64,
      zmm1p_010@uint64, zmm1p_011@uint64,
      zmm1p_100@uint64, zmm1p_101@uint64,
      zmm1p_110@uint64, zmm1p_111@uint64 :
      true
   && and [zmm1p_000 = zmm1_000, zmm1p_001 = zmm1_001,
           zmm1p_010 = zmm1_010, zmm1p_011 = zmm1_011,
           zmm1p_100 = zmm1_100, zmm1p_101 = zmm1_101,
           zmm1p_110 = zmm1_110, zmm1p_111 = zmm1_111];
ghost zmm2p_000@uint64, zmm2p_001@uint64,
      zmm2p_010@uint64, zmm2p_011@uint64,
      zmm2p_100@uint64, zmm2p_101@uint64,
      zmm2p_110@uint64, zmm2p_111@uint64 :
      true
   && and [zmm2p_000 = zmm2_000, zmm2p_001 = zmm2_001,
           zmm2p_010 = zmm2_010, zmm2p_011 = zmm2_011,
           zmm2p_100 = zmm2_100, zmm2p_101 = zmm2_101,
           zmm2p_110 = zmm2_110, zmm2p_111 = zmm2_111];
ghost zmm14p_000@uint64, zmm14p_001@uint64,
      zmm14p_010@uint64, zmm14p_011@uint64,
      zmm14p_100@uint64, zmm14p_101@uint64,
      zmm14p_110@uint64, zmm14p_111@uint64 :
      true
   && and [zmm14p_000 = zmm14_000, zmm14p_001 = zmm14_001,
           zmm14p_010 = zmm14_010, zmm14p_011 = zmm14_011,
           zmm14p_100 = zmm14_100, zmm14p_101 = zmm14_101,
           zmm14p_110 = zmm14_110, zmm14p_111 = zmm14_111];
ghost zmm15p_000@uint64, zmm15p_001@uint64,
      zmm15p_010@uint64, zmm15p_011@uint64,
      zmm15p_100@uint64, zmm15p_101@uint64,
      zmm15p_110@uint64, zmm15p_111@uint64 :
      true
   && and [zmm15p_000 = zmm15_000, zmm15p_001 = zmm15_001,
           zmm15p_010 = zmm15_010, zmm15p_011 = zmm15_011,
           zmm15p_100 = zmm15_100, zmm15p_101 = zmm15_101,
           zmm15p_110 = zmm15_110, zmm15p_111 = zmm15_111];

(* vpsrlq $0x34,%zmm7,%zmm9                        #! PC = 0x93824992245432 *)
split zmm9_000 dontcare zmm7_000 52;
split zmm9_001 dontcare zmm7_001 52;
split zmm9_010 dontcare zmm7_010 52;
split zmm9_011 dontcare zmm7_011 52;
split zmm9_100 dontcare zmm7_100 52;
split zmm9_101 dontcare zmm7_101 52;
split zmm9_110 dontcare zmm7_110 52;
split zmm9_111 dontcare zmm7_111 52;
(* vpsllq $0xc,%zmm6,%zmm10                        #! PC = 0x93824992245439 *)
(* NOTE: MSBs are non-zero *)
split dontcare zmm10_000 zmm6_000 52;
shl zmm10_000 zmm10_000 12;
split dontcare zmm10_001 zmm6_001 52;
shl zmm10_001 zmm10_001 12;
split dontcare zmm10_010 zmm6_010 52;
shl zmm10_010 zmm10_010 12;
split dontcare zmm10_011 zmm6_011 52;
shl zmm10_011 zmm10_011 12;
split dontcare zmm10_100 zmm6_100 52;
shl zmm10_100 zmm10_100 12;
split dontcare zmm10_101 zmm6_101 52;
shl zmm10_101 zmm10_101 12;
split dontcare zmm10_110 zmm6_110 52;
shl zmm10_110 zmm10_110 12;
split dontcare zmm10_111 zmm6_111 52;
shl zmm10_111 zmm10_111 12;
(* vpsrlq $0x1a,%zmm14,%zmm3                       #! PC = 0x93824992245446 *)
split zmm3_000 dontcare_000 zmm14_000 26;
split zmm3_001 dontcare_001 zmm14_001 26;
split zmm3_010 dontcare_010 zmm14_010 26;
split zmm3_011 dontcare_011 zmm14_011 26;
split zmm3_100 dontcare_100 zmm14_100 26;
split zmm3_101 dontcare_101 zmm14_101 26;
split zmm3_110 dontcare_110 zmm14_110 26;
split zmm3_111 dontcare_111 zmm14_111 26;
(* vpandq %zmm5,%zmm14,%zmm14                      #! PC = 0x93824992245453 *)
and zmm14_000@uint64 zmm14_000 zmm5_000;
(* NOTE: add relation for zmm14 *)
assert true && zmm14_000 = dontcare_000;
assume zmm14_000 = dontcare_000 && true;
and zmm14_001@uint64 zmm14_001 zmm5_001;
(* NOTE: add relation for zmm14 *)
assert true && zmm14_001 = dontcare_001;
assume zmm14_001 = dontcare_001 && true;
and zmm14_010@uint64 zmm14_010 zmm5_010;
(* NOTE: add relation for zmm14 *)
assert true && zmm14_010 = dontcare_010;
assume zmm14_010 = dontcare_010 && true;
and zmm14_011@uint64 zmm14_011 zmm5_011;
(* NOTE: add relation for zmm14 *)
assert true && zmm14_011 = dontcare_011;
assume zmm14_011 = dontcare_011 && true;
and zmm14_100@uint64 zmm14_100 zmm5_100;
(* NOTE: add relation for zmm14 *)
assert true && zmm14_100 = dontcare_100;
assume zmm14_100 = dontcare_100 && true;
and zmm14_101@uint64 zmm14_101 zmm5_101;
(* NOTE: add relation for zmm14 *)
assert true && zmm14_101 = dontcare_101;
assume zmm14_101 = dontcare_101 && true;
and zmm14_110@uint64 zmm14_110 zmm5_110;
(* NOTE: add relation for zmm14 *)
assert true && zmm14_110 = dontcare_110;
assume zmm14_110 = dontcare_110 && true;
and zmm14_111@uint64 zmm14_111 zmm5_111;
(* NOTE: add relation for zmm14 *)
assert true && zmm14_111 = dontcare_111;
assume zmm14_111 = dontcare_111 && true;
(* vpaddq %zmm3,%zmm15,%zmm4                       #! PC = 0x93824992245459 *)
add zmm4_000 zmm15_000 zmm3_000;
add zmm4_001 zmm15_001 zmm3_001;
add zmm4_010 zmm15_010 zmm3_010;
add zmm4_011 zmm15_011 zmm3_011;
add zmm4_100 zmm15_100 zmm3_100;
add zmm4_101 zmm15_101 zmm3_101;
add zmm4_110 zmm15_110 zmm3_110;
add zmm4_111 zmm15_111 zmm3_111;
(* vporq  %zmm10,%zmm9,%zmm9                       #! PC = 0x93824992245465 *)
or zmm9_000@uint64 zmm9_000 zmm10_000;
or zmm9_001@uint64 zmm9_001 zmm10_001;
or zmm9_010@uint64 zmm9_010 zmm10_010;
or zmm9_011@uint64 zmm9_011 zmm10_011;
or zmm9_100@uint64 zmm9_100 zmm10_100;
or zmm9_101@uint64 zmm9_101 zmm10_101;
or zmm9_110@uint64 zmm9_110 zmm10_110;
or zmm9_111@uint64 zmm9_111 zmm10_111;
(* vpsrlq $0x1a,%zmm0,%zmm11                       #! PC = 0x93824992245471 *)
split zmm11_000 dontcare_000 zmm0_000 26;
split zmm11_001 dontcare_001 zmm0_001 26;
split zmm11_010 dontcare_010 zmm0_010 26;
split zmm11_011 dontcare_011 zmm0_011 26;
split zmm11_100 dontcare_100 zmm0_100 26;
split zmm11_101 dontcare_101 zmm0_101 26;
split zmm11_110 dontcare_110 zmm0_110 26;
split zmm11_111 dontcare_111 zmm0_111 26;
(* vpandq %zmm5,%zmm0,%zmm0                        #! PC = 0x93824992245478 *)
and zmm0_000@uint64 zmm0_000 zmm5_000;
(* NOTE: add relation for zmm0 *)
assert true && zmm0_000 = dontcare_000;
assume zmm0_000 = dontcare_000 && true;
and zmm0_001@uint64 zmm0_001 zmm5_001;
(* NOTE: add relation for zmm0 *)
assert true && zmm0_001 = dontcare_001;
assume zmm0_001 = dontcare_001 && true;
and zmm0_010@uint64 zmm0_010 zmm5_010;
(* NOTE: add relation for zmm0 *)
assert true && zmm0_010 = dontcare_010;
assume zmm0_010 = dontcare_010 && true;
and zmm0_011@uint64 zmm0_011 zmm5_011;
(* NOTE: add relation for zmm0 *)
assert true && zmm0_011 = dontcare_011;
assume zmm0_011 = dontcare_011 && true;
and zmm0_100@uint64 zmm0_100 zmm5_100;
(* NOTE: add relation for zmm0 *)
assert true && zmm0_100 = dontcare_100;
assume zmm0_100 = dontcare_100 && true;
and zmm0_101@uint64 zmm0_101 zmm5_101;
(* NOTE: add relation for zmm0 *)
assert true && zmm0_101 = dontcare_101;
assume zmm0_101 = dontcare_101 && true;
and zmm0_110@uint64 zmm0_110 zmm5_110;
(* NOTE: add relation for zmm0 *)
assert true && zmm0_110 = dontcare_110;
assume zmm0_110 = dontcare_110 && true;
and zmm0_111@uint64 zmm0_111 zmm5_111;
(* NOTE: add relation for zmm0 *)
assert true && zmm0_111 = dontcare_111;
assume zmm0_111 = dontcare_111 && true;
(* vpaddq %zmm11,%zmm1,%zmm1                       #! PC = 0x93824992245484 *)
add zmm1_000 zmm1_000 zmm11_000;
add zmm1_001 zmm1_001 zmm11_001;
add zmm1_010 zmm1_010 zmm11_010;
add zmm1_011 zmm1_011 zmm11_011;
add zmm1_100 zmm1_100 zmm11_100;
add zmm1_101 zmm1_101 zmm11_101;
add zmm1_110 zmm1_110 zmm11_110;
add zmm1_111 zmm1_111 zmm11_111;
(* vpandq %zmm5,%zmm9,%zmm9                        #! PC = 0x93824992245490 *)
and zmm9_000@uint64 zmm9_000 zmm5_000;
and zmm9_001@uint64 zmm9_001 zmm5_001;
and zmm9_010@uint64 zmm9_010 zmm5_010;
and zmm9_011@uint64 zmm9_011 zmm5_011;
and zmm9_100@uint64 zmm9_100 zmm5_100;
and zmm9_101@uint64 zmm9_101 zmm5_101;
and zmm9_110@uint64 zmm9_110 zmm5_110;
and zmm9_111@uint64 zmm9_111 zmm5_111;
(* vpsrlq $0x1a,%zmm4,%zmm15                       #! PC = 0x93824992245496 *)
split zmm15_000 dontcare_000 zmm4_000 26;
split zmm15_001 dontcare_001 zmm4_001 26;
split zmm15_010 dontcare_010 zmm4_010 26;
split zmm15_011 dontcare_011 zmm4_011 26;
split zmm15_100 dontcare_100 zmm4_100 26;
split zmm15_101 dontcare_101 zmm4_101 26;
split zmm15_110 dontcare_110 zmm4_110 26;
split zmm15_111 dontcare_111 zmm4_111 26;
(* vpandq %zmm5,%zmm4,%zmm4                        #! PC = 0x93824992245503 *)
and zmm4_000@uint64 zmm4_000 zmm5_000;
(* NOTE: add relation for zmm4 *)
assert true && zmm4_000 = dontcare_000;
assume zmm4_000 = dontcare_000 && true;
and zmm4_001@uint64 zmm4_001 zmm5_001;
(* NOTE: add relation for zmm4 *)
assert true && zmm4_001 = dontcare_001;
assume zmm4_001 = dontcare_001 && true;
and zmm4_010@uint64 zmm4_010 zmm5_010;
(* NOTE: add relation for zmm4 *)
assert true && zmm4_010 = dontcare_010;
assume zmm4_010 = dontcare_010 && true;
and zmm4_011@uint64 zmm4_011 zmm5_011;
(* NOTE: add relation for zmm4 *)
assert true && zmm4_011 = dontcare_011;
assume zmm4_011 = dontcare_011 && true;
and zmm4_100@uint64 zmm4_100 zmm5_100;
(* NOTE: add relation for zmm4 *)
assert true && zmm4_100 = dontcare_100;
assume zmm4_100 = dontcare_100 && true;
and zmm4_101@uint64 zmm4_101 zmm5_101;
(* NOTE: add relation for zmm4 *)
assert true && zmm4_101 = dontcare_101;
assume zmm4_101 = dontcare_101 && true;
and zmm4_110@uint64 zmm4_110 zmm5_110;
(* NOTE: add relation for zmm4 *)
assert true && zmm4_110 = dontcare_110;
assume zmm4_110 = dontcare_110 && true;
and zmm4_111@uint64 zmm4_111 zmm5_111;
(* NOTE: add relation for zmm4 *)
assert true && zmm4_111 = dontcare_111;
assume zmm4_111 = dontcare_111 && true;
(* vpsrlq $0x1a,%zmm1,%zmm12                       #! PC = 0x93824992245509 *)
split zmm12_000 dontcare_000 zmm1_000 26;
split zmm12_001 dontcare_001 zmm1_001 26;
split zmm12_010 dontcare_010 zmm1_010 26;
split zmm12_011 dontcare_011 zmm1_011 26;
split zmm12_100 dontcare_100 zmm1_100 26;
split zmm12_101 dontcare_101 zmm1_101 26;
split zmm12_110 dontcare_110 zmm1_110 26;
split zmm12_111 dontcare_111 zmm1_111 26;
(* vpandq %zmm5,%zmm1,%zmm1                        #! PC = 0x93824992245516 *)
and zmm1_000@uint64 zmm1_000 zmm5_000;
(* NOTE: add relation for zmm1 *)
assert true && zmm1_000 = dontcare_000;
assume zmm1_000 = dontcare_000 && true;
and zmm1_001@uint64 zmm1_001 zmm5_001;
(* NOTE: add relation for zmm1 *)
assert true && zmm1_001 = dontcare_001;
assume zmm1_001 = dontcare_001 && true;
and zmm1_010@uint64 zmm1_010 zmm5_010;
(* NOTE: add relation for zmm1 *)
assert true && zmm1_010 = dontcare_010;
assume zmm1_010 = dontcare_010 && true;
and zmm1_011@uint64 zmm1_011 zmm5_011;
(* NOTE: add relation for zmm1 *)
assert true && zmm1_011 = dontcare_011;
assume zmm1_011 = dontcare_011 && true;
and zmm1_100@uint64 zmm1_100 zmm5_100;
(* NOTE: add relation for zmm1 *)
assert true && zmm1_100 = dontcare_100;
assume zmm1_100 = dontcare_100 && true;
and zmm1_101@uint64 zmm1_101 zmm5_101;
(* NOTE: add relation for zmm1 *)
assert true && zmm1_101 = dontcare_101;
assume zmm1_101 = dontcare_101 && true;
and zmm1_110@uint64 zmm1_110 zmm5_110;
(* NOTE: add relation for zmm1 *)
assert true && zmm1_110 = dontcare_110;
assume zmm1_110 = dontcare_110 && true;
and zmm1_111@uint64 zmm1_111 zmm5_111;
(* NOTE: add relation for zmm1 *)
assert true && zmm1_111 = dontcare_111;
assume zmm1_111 = dontcare_111 && true;
(* vpaddq %zmm12,%zmm2,%zmm2                       #! PC = 0x93824992245522 *)
add zmm2_000 zmm2_000 zmm12_000;
add zmm2_001 zmm2_001 zmm12_001;
add zmm2_010 zmm2_010 zmm12_010;
add zmm2_011 zmm2_011 zmm12_011;
add zmm2_100 zmm2_100 zmm12_100;
add zmm2_101 zmm2_101 zmm12_101;
add zmm2_110 zmm2_110 zmm12_110;
add zmm2_111 zmm2_111 zmm12_111;
(* vpaddq %zmm15,%zmm0,%zmm0                       #! PC = 0x93824992245528 *)
add zmm0_000 zmm0_000 zmm15_000;
add zmm0_001 zmm0_001 zmm15_001;
add zmm0_010 zmm0_010 zmm15_010;
add zmm0_011 zmm0_011 zmm15_011;
add zmm0_100 zmm0_100 zmm15_100;
add zmm0_101 zmm0_101 zmm15_101;
add zmm0_110 zmm0_110 zmm15_110;
add zmm0_111 zmm0_111 zmm15_111;
(* vpsllq $0x2,%zmm15,%zmm15                       #! PC = 0x93824992245534 *)
shl zmm15_000 zmm15_000 2;
shl zmm15_001 zmm15_001 2;
shl zmm15_010 zmm15_010 2;
shl zmm15_011 zmm15_011 2;
shl zmm15_100 zmm15_100 2;
shl zmm15_101 zmm15_101 2;
shl zmm15_110 zmm15_110 2;
shl zmm15_111 zmm15_111 2;
(* vpaddq %zmm15,%zmm0,%zmm0                       #! PC = 0x93824992245541 *)
add zmm0_000 zmm0_000 zmm15_000;
add zmm0_001 zmm0_001 zmm15_001;
add zmm0_010 zmm0_010 zmm15_010;
add zmm0_011 zmm0_011 zmm15_011;
add zmm0_100 zmm0_100 zmm15_100;
add zmm0_101 zmm0_101 zmm15_101;
add zmm0_110 zmm0_110 zmm15_110;
add zmm0_111 zmm0_111 zmm15_111;

(* NOTE: scheduled modulo  *)

(* vpaddq %zmm9,%zmm2,%zmm2                        #! PC = 0x93824992245547 *)
add zmm2_000 zmm2_000 zmm9_000;
add zmm2_001 zmm2_001 zmm9_001;
add zmm2_010 zmm2_010 zmm9_010;
add zmm2_011 zmm2_011 zmm9_011;
add zmm2_100 zmm2_100 zmm9_100;
add zmm2_101 zmm2_101 zmm9_101;
add zmm2_110 zmm2_110 zmm9_110;
add zmm2_111 zmm2_111 zmm9_111;
(* vpsrlq $0x1a,%zmm7,%zmm8                        #! PC = 0x93824992245553 *)
split zmm8_000 dontcare zmm7_000 26;
split zmm8_001 dontcare zmm7_001 26;
split zmm8_010 dontcare zmm7_010 26;
split zmm8_011 dontcare zmm7_011 26;
split zmm8_100 dontcare zmm7_100 26;
split zmm8_101 dontcare zmm7_101 26;
split zmm8_110 dontcare zmm7_110 26;
split zmm8_111 dontcare zmm7_111 26;
(* vpsrlq $0x1a,%zmm2,%zmm13                       #! PC = 0x93824992245560 *)
split zmm13_000 dontcare_000 zmm2_000 26;
split zmm13_001 dontcare_001 zmm2_001 26;
split zmm13_010 dontcare_010 zmm2_010 26;
split zmm13_011 dontcare_011 zmm2_011 26;
split zmm13_100 dontcare_100 zmm2_100 26;
split zmm13_101 dontcare_101 zmm2_101 26;
split zmm13_110 dontcare_110 zmm2_110 26;
split zmm13_111 dontcare_111 zmm2_111 26;
(* vpandq %zmm5,%zmm2,%zmm2                        #! PC = 0x93824992245567 *)
and zmm2_000@uint64 zmm2_000 zmm5_000;
(* NOTE: add relation for zmm2 *)
assert true && zmm2_000 = dontcare_000;
assume zmm2_000 = dontcare_000 && true;
and zmm2_001@uint64 zmm2_001 zmm5_001;
(* NOTE: add relation for zmm2 *)
assert true && zmm2_001 = dontcare_001;
assume zmm2_001 = dontcare_001 && true;
and zmm2_010@uint64 zmm2_010 zmm5_010;
(* NOTE: add relation for zmm2 *)
assert true && zmm2_010 = dontcare_010;
assume zmm2_010 = dontcare_010 && true;
and zmm2_011@uint64 zmm2_011 zmm5_011;
(* NOTE: add relation for zmm2 *)
assert true && zmm2_011 = dontcare_011;
assume zmm2_011 = dontcare_011 && true;
and zmm2_100@uint64 zmm2_100 zmm5_100;
(* NOTE: add relation for zmm2 *)
assert true && zmm2_100 = dontcare_100;
assume zmm2_100 = dontcare_100 && true;
and zmm2_101@uint64 zmm2_101 zmm5_101;
(* NOTE: add relation for zmm2 *)
assert true && zmm2_101 = dontcare_101;
assume zmm2_101 = dontcare_101 && true;
and zmm2_110@uint64 zmm2_110 zmm5_110;
(* NOTE: add relation for zmm2 *)
assert true && zmm2_110 = dontcare_110;
assume zmm2_110 = dontcare_110 && true;
and zmm2_111@uint64 zmm2_111 zmm5_111;
(* NOTE: add relation for zmm2 *)
assert true && zmm2_111 = dontcare_111;
assume zmm2_111 = dontcare_111 && true;
(* vpaddq %zmm13,%zmm14,%zmm3                      #! PC = 0x93824992245573 *)
add zmm3_000 zmm14_000 zmm13_000;
add zmm3_001 zmm14_001 zmm13_001;
add zmm3_010 zmm14_010 zmm13_010;
add zmm3_011 zmm14_011 zmm13_011;
add zmm3_100 zmm14_100 zmm13_100;
add zmm3_101 zmm14_101 zmm13_101;
add zmm3_110 zmm14_110 zmm13_110;
add zmm3_111 zmm14_111 zmm13_111;
(* vpsrlq $0xe,%zmm6,%zmm10                        #! PC = 0x93824992245579 *)
split zmm10_000 dontcare zmm6_000 14;
split zmm10_001 dontcare zmm6_001 14;
split zmm10_010 dontcare zmm6_010 14;
split zmm10_011 dontcare zmm6_011 14;
split zmm10_100 dontcare zmm6_100 14;
split zmm10_101 dontcare zmm6_101 14;
split zmm10_110 dontcare zmm6_110 14;
split zmm10_111 dontcare zmm6_111 14;
(* vpsrlq $0x1a,%zmm0,%zmm11                       #! PC = 0x93824992245586 *)
split zmm11_000 dontcare_000 zmm0_000 26;
split zmm11_001 dontcare_001 zmm0_001 26;
split zmm11_010 dontcare_010 zmm0_010 26;
split zmm11_011 dontcare_011 zmm0_011 26;
split zmm11_100 dontcare_100 zmm0_100 26;
split zmm11_101 dontcare_101 zmm0_101 26;
split zmm11_110 dontcare_110 zmm0_110 26;
split zmm11_111 dontcare_111 zmm0_111 26;
(* vpandq %zmm5,%zmm0,%zmm0                        #! PC = 0x93824992245593 *)
and zmm0_000@uint64 zmm0_000 zmm5_000;
(* NOTE: add relation for zmm0 *)
assert true && zmm0_000 = dontcare_000;
assume zmm0_000 = dontcare_000 && true;
and zmm0_001@uint64 zmm0_001 zmm5_001;
(* NOTE: add relation for zmm0 *)
assert true && zmm0_001 = dontcare_001;
assume zmm0_001 = dontcare_001 && true;
and zmm0_010@uint64 zmm0_010 zmm5_010;
(* NOTE: add relation for zmm0 *)
assert true && zmm0_010 = dontcare_010;
assume zmm0_010 = dontcare_010 && true;
and zmm0_011@uint64 zmm0_011 zmm5_011;
(* NOTE: add relation for zmm0 *)
assert true && zmm0_011 = dontcare_011;
assume zmm0_011 = dontcare_011 && true;
and zmm0_100@uint64 zmm0_100 zmm5_100;
(* NOTE: add relation for zmm0 *)
assert true && zmm0_100 = dontcare_100;
assume zmm0_100 = dontcare_100 && true;
and zmm0_101@uint64 zmm0_101 zmm5_101;
(* NOTE: add relation for zmm0 *)
assert true && zmm0_101 = dontcare_101;
assume zmm0_101 = dontcare_101 && true;
and zmm0_110@uint64 zmm0_110 zmm5_110;
(* NOTE: add relation for zmm0 *)
assert true && zmm0_110 = dontcare_110;
assume zmm0_110 = dontcare_110 && true;
and zmm0_111@uint64 zmm0_111 zmm5_111;
(* NOTE: add relation for zmm0 *)
assert true && zmm0_111 = dontcare_111;
assume zmm0_111 = dontcare_111 && true;
(* vpaddq %zmm11,%zmm1,%zmm1                       #! PC = 0x93824992245599 *)
add zmm1_000 zmm1_000 zmm11_000;
add zmm1_001 zmm1_001 zmm11_001;
add zmm1_010 zmm1_010 zmm11_010;
add zmm1_011 zmm1_011 zmm11_011;
add zmm1_100 zmm1_100 zmm11_100;
add zmm1_101 zmm1_101 zmm11_101;
add zmm1_110 zmm1_110 zmm11_110;
add zmm1_111 zmm1_111 zmm11_111;
(* vpsrlq $0x28,%zmm6,%zmm6                        #! PC = 0x93824992245605 *)
split zmm6_000 dontcare zmm6_000 40;
split zmm6_001 dontcare zmm6_001 40;
split zmm6_010 dontcare zmm6_010 40;
split zmm6_011 dontcare zmm6_011 40;
split zmm6_100 dontcare zmm6_100 40;
split zmm6_101 dontcare zmm6_101 40;
split zmm6_110 dontcare zmm6_110 40;
split zmm6_111 dontcare zmm6_111 40;
(* vpsrlq $0x1a,%zmm3,%zmm14                       #! PC = 0x93824992245612 *)
split zmm14_000 dontcare_000 zmm3_000 26;
split zmm14_001 dontcare_001 zmm3_001 26;
split zmm14_010 dontcare_010 zmm3_010 26;
split zmm14_011 dontcare_011 zmm3_011 26;
split zmm14_100 dontcare_100 zmm3_100 26;
split zmm14_101 dontcare_101 zmm3_101 26;
split zmm14_110 dontcare_110 zmm3_110 26;
split zmm14_111 dontcare_111 zmm3_111 26;
(* vpandq %zmm5,%zmm3,%zmm3                        #! PC = 0x93824992245619 *)
and zmm3_000@uint64 zmm3_000 zmm5_000;
(* NOTE: add relation for zmm3 *)
assert true && zmm3_000 = dontcare_000;
assume zmm3_000 = dontcare_000 && true;
and zmm3_001@uint64 zmm3_001 zmm5_001;
(* NOTE: add relation for zmm3 *)
assert true && zmm3_001 = dontcare_001;
assume zmm3_001 = dontcare_001 && true;
and zmm3_010@uint64 zmm3_010 zmm5_010;
(* NOTE: add relation for zmm3 *)
assert true && zmm3_010 = dontcare_010;
assume zmm3_010 = dontcare_010 && true;
and zmm3_011@uint64 zmm3_011 zmm5_011;
(* NOTE: add relation for zmm3 *)
assert true && zmm3_011 = dontcare_011;
assume zmm3_011 = dontcare_011 && true;
and zmm3_100@uint64 zmm3_100 zmm5_100;
(* NOTE: add relation for zmm3 *)
assert true && zmm3_100 = dontcare_100;
assume zmm3_100 = dontcare_100 && true;
and zmm3_101@uint64 zmm3_101 zmm5_101;
(* NOTE: add relation for zmm3 *)
assert true && zmm3_101 = dontcare_101;
assume zmm3_101 = dontcare_101 && true;
and zmm3_110@uint64 zmm3_110 zmm5_110;
(* NOTE: add relation for zmm3 *)
assert true && zmm3_110 = dontcare_110;
assume zmm3_110 = dontcare_110 && true;
and zmm3_111@uint64 zmm3_111 zmm5_111;
(* NOTE: add relation for zmm3 *)
assert true && zmm3_111 = dontcare_111;
assume zmm3_111 = dontcare_111 && true;
(* vpaddq %zmm14,%zmm4,%zmm4                       #! PC = 0x93824992245625 *)
add zmm4_000 zmm4_000 zmm14_000;
add zmm4_001 zmm4_001 zmm14_001;
add zmm4_010 zmm4_010 zmm14_010;
add zmm4_011 zmm4_011 zmm14_011;
add zmm4_100 zmm4_100 zmm14_100;
add zmm4_101 zmm4_101 zmm14_101;
add zmm4_110 zmm4_110 zmm14_110;
add zmm4_111 zmm4_111 zmm14_111;
(* vpandq %zmm5,%zmm7,%zmm7                        #! PC = 0x93824992245631 *)
and zmm7_000@uint64 zmm7_000 zmm5_000;
and zmm7_001@uint64 zmm7_001 zmm5_001;
and zmm7_010@uint64 zmm7_010 zmm5_010;
and zmm7_011@uint64 zmm7_011 zmm5_011;
and zmm7_100@uint64 zmm7_100 zmm5_100;
and zmm7_101@uint64 zmm7_101 zmm5_101;
and zmm7_110@uint64 zmm7_110 zmm5_110;
and zmm7_111@uint64 zmm7_111 zmm5_111;
(* #sub    $0x80,%rdx                               #! PC = 0x93824992245637 *)
#sub    $0x80,%rdx                               #! 0x93824992245637 = 0x93824992245637;
(* #ja     0x555555557560 <poly1305_blocks_avx512+2880>#! PC = 0x93824992245644 *)
#ja     0x555555557560 <poly1305_blocks_avx512+2880>#! 0x93824992245644 = 0x93824992245644;

(* vpandq %zmm5,%zmm8,%zmm8                        #! PC = 0x93824992245106 *)
(* NOTE: mask zmm8 (T1) *)
and zmm8_000@uint64 zmm8_000 zmm5_000;
and zmm8_001@uint64 zmm8_001 zmm5_001;
and zmm8_010@uint64 zmm8_010 zmm5_010;
and zmm8_011@uint64 zmm8_011 zmm5_011;
and zmm8_100@uint64 zmm8_100 zmm5_100;
and zmm8_101@uint64 zmm8_101 zmm5_101;
and zmm8_110@uint64 zmm8_110 zmm5_110;
and zmm8_111@uint64 zmm8_111 zmm5_111;
(* vpandq %zmm5,%zmm10,%zmm10                      #! PC = 0x93824992245118 *)
(* NOTE: mask zmm10 (T3) *)
and zmm10_000@uint64 zmm10_000 zmm5_000;
and zmm10_001@uint64 zmm10_001 zmm5_001;
and zmm10_010@uint64 zmm10_010 zmm5_010;
and zmm10_011@uint64 zmm10_011 zmm5_011;
and zmm10_100@uint64 zmm10_100 zmm5_100;
and zmm10_101@uint64 zmm10_101 zmm5_101;
and zmm10_110@uint64 zmm10_110 zmm5_110;
and zmm10_111@uint64 zmm10_111 zmm5_111;


mov H0_000 zmm0_000; mov H0_001 zmm0_001;
mov H0_010 zmm0_010; mov H0_011 zmm0_011; 
mov H0_100 zmm0_100; mov H0_101 zmm0_101;
mov H0_110 zmm0_110; mov H0_111 zmm0_111; 
mov H1_000 zmm1_000; mov H1_001 zmm1_001;
mov H1_010 zmm1_010; mov H1_011 zmm1_011; 
mov H1_100 zmm1_100; mov H1_101 zmm1_101;
mov H1_110 zmm1_110; mov H1_111 zmm1_111; 
mov H2_000 zmm2_000; mov H2_001 zmm2_001;
mov H2_010 zmm2_010; mov H2_011 zmm2_011; 
mov H2_100 zmm2_100; mov H2_101 zmm2_101;
mov H2_110 zmm2_110; mov H2_111 zmm2_111; 
mov H3_000 zmm3_000; mov H3_001 zmm3_001;
mov H3_010 zmm3_010; mov H3_011 zmm3_011; 
mov H3_100 zmm3_100; mov H3_101 zmm3_101;
mov H3_110 zmm3_110; mov H3_111 zmm3_111; 
mov H4_000 zmm4_000; mov H4_001 zmm4_001;
mov H4_010 zmm4_010; mov H4_011 zmm4_011; 
mov H4_100 zmm4_100; mov H4_101 zmm4_101;
mov H4_110 zmm4_110; mov H4_111 zmm4_111;

mov T0_000 zmm7_000; mov T0_001 zmm7_001;
mov T0_010 zmm7_010; mov T0_011 zmm7_011; 
mov T0_100 zmm7_100; mov T0_101 zmm7_101;
mov T0_110 zmm7_110; mov T0_111 zmm7_111; 
mov T1_000 zmm8_000; mov T1_001 zmm8_001;
mov T1_010 zmm8_010; mov T1_011 zmm8_011; 
mov T1_100 zmm8_100; mov T1_101 zmm8_101;
mov T1_110 zmm8_110; mov T1_111 zmm8_111; 
mov T2_000 zmm9_000; mov T2_001 zmm9_001;
mov T2_010 zmm9_010; mov T2_011 zmm9_011; 
mov T2_100 zmm9_100; mov T2_101 zmm9_101;
mov T2_110 zmm9_110; mov T2_111 zmm9_111; 
mov T3_000 zmm10_000; mov T3_001 zmm10_001;
mov T3_010 zmm10_010; mov T3_011 zmm10_011; 
mov T3_100 zmm10_100; mov T3_101 zmm10_101;
mov T3_110 zmm10_110; mov T3_111 zmm10_111; 
mov T4_000 zmm6_000; mov T4_001 zmm6_001;
mov T4_010 zmm6_010; mov T4_011 zmm6_011; 
mov T4_100 zmm6_100; mov T4_101 zmm6_101;
mov T4_110 zmm6_110; mov T4_111 zmm6_111; 

{
  and [
    eqmod (limbs 26 [H0_000, H1_000, H2_000, H3_000, H4_000])
          (( (  limbs 64 [inp_0000, inp_0001] +
                limbs 26 [h0_000, h1_000, h2_000, h3_000, h4_000]  )
             * 
             limbs 26 [r0_000, r1_000, r2_000, r3_000, r4_000]  )
          +
          (limbs 26 [0, 0, T2_000, 0, 0]))
          (2**130 - 5),
    eqmod (limbs 26 [H0_001, H1_001, H2_001, H3_001, H4_001])
          (( (  limbs 64 [inp_1000, inp_1001] +
                limbs 26 [h0_001, h1_001, h2_001, h3_001, h4_001]  )
             * 
             limbs 26 [r0_001, r1_001, r2_001, r3_001, r4_001]  )
          +
          (limbs 26 [0, 0, T2_001, 0, 0]))
          (2**130 - 5),
    eqmod (limbs 26 [H0_010, H1_010, H2_010, H3_010, H4_010])
          (( (  limbs 64 [inp_0010, inp_0011] +
                limbs 26 [h0_010, h1_010, h2_010, h3_010, h4_010]  )
             * 
             limbs 26 [r0_010, r1_010, r2_010, r3_010, r4_010]  )
          +
          (limbs 26 [0, 0, T2_010, 0, 0]))
          (2**130 - 5),
    eqmod (limbs 26 [H0_011, H1_011, H2_011, H3_011, H4_011])
          (( (  limbs 64 [inp_1010, inp_1011] +
                limbs 26 [h0_011, h1_011, h2_011, h3_011, h4_011]  )
             * 
             limbs 26 [r0_011, r1_011, r2_011, r3_011, r4_011]  )
          +
          (limbs 26 [0, 0, T2_011, 0, 0]))
          (2**130 - 5),
    eqmod (limbs 26 [H0_100, H1_100, H2_100, H3_100, H4_100])
          (( (  limbs 64 [inp_0100, inp_0101] +
                limbs 26 [h0_100, h1_100, h2_100, h3_100, h4_100]  )
             * 
             limbs 26 [r0_100, r1_100, r2_100, r3_100, r4_100]  )
          +
          (limbs 26 [0, 0, T2_100, 0, 0]))
          (2**130 - 5),
    eqmod (limbs 26 [H0_101, H1_101, H2_101, H3_101, H4_101])
          (( (  limbs 64 [inp_1100, inp_1101] +
                limbs 26 [h0_101, h1_101, h2_101, h3_101, h4_101]  )
             * 
             limbs 26 [r0_101, r1_101, r2_101, r3_101, r4_101]  )
          +
          (limbs 26 [0, 0, T2_101, 0, 0]))
          (2**130 - 5),
    eqmod (limbs 26 [H0_110, H1_110, H2_110, H3_110, H4_110])
          (( (  limbs 64 [inp_0110, inp_0111] +
                limbs 26 [h0_110, h1_110, h2_110, h3_110, h4_110]  )
             * 
             limbs 26 [r0_110, r1_110, r2_110, r3_110, r4_110]  )
          +
          (limbs 26 [0, 0, T2_110, 0, 0]))
          (2**130 - 5),
    eqmod (limbs 26 [H0_111, H1_111, H2_111, H3_111, H4_111])
          (( (  limbs 64 [inp_1110, inp_1111] +
                limbs 26 [h0_111, h1_111, h2_111, h3_111, h4_111]  )
             * 
             limbs 26 [r0_111, r1_111, r2_111, r3_111, r4_111]  )
          +
          (limbs 26 [0, 0, T2_111, 0, 0]))
          (2**130 - 5)
  ]
&&
  and [
    uext (limbs 64 [INP_0000, INP_0001]) 40 =
    limbs 26 [T0_000, T1_000, T2_000, T3_000, T4_000],
    uext (limbs 64 [INP_1000, INP_1001]) 40 =
    limbs 26 [T0_001, T1_001, T2_001, T3_001, T4_001],
    uext (limbs 64 [INP_0010, INP_0011]) 40 =
    limbs 26 [T0_010, T1_010, T2_010, T3_010, T4_010],
    uext (limbs 64 [INP_1010, INP_1011]) 40 =
    limbs 26 [T0_011, T1_011, T2_011, T3_011, T4_011],
    uext (limbs 64 [INP_0100, INP_0101]) 40 =
    limbs 26 [T0_100, T1_100, T2_100, T3_100, T4_100],
    uext (limbs 64 [INP_1100, INP_1101]) 40 =
    limbs 26 [T0_101, T1_101, T2_101, T3_101, T4_101],
    uext (limbs 64 [INP_0110, INP_0111]) 40 =
    limbs 26 [T0_110, T1_110, T2_110, T3_110, T4_110],
    uext (limbs 64 [INP_1110, INP_1111]) 40 =
    limbs 26 [T0_111, T1_111, T2_111, T3_111, T4_111],

    H0_000 < (2**26)@64, H0_001 < (2**26)@64, H0_010 < (2**26)@64, H0_011 < (2**26)@64, 
    H0_100 < (2**26)@64, H0_101 < (2**26)@64, H0_110 < (2**26)@64, H0_111 < (2**26)@64,
(*
    H1_000 < (2**26)@64, H1_001 < (2**26)@64, H1_010 < (2**26)@64, H1_011 < (2**26)@64, 
    H1_100 < (2**26)@64, H1_101 < (2**26)@64, H1_110 < (2**26)@64, H1_111 < (2**26)@64, 
*)
    H2_000 < (2**26)@64, H2_001 < (2**26)@64, H2_010 < (2**26)@64, H2_011 < (2**26)@64, 
    H2_100 < (2**26)@64, H2_101 < (2**26)@64, H2_110 < (2**26)@64, H2_111 < (2**26)@64, 
    H3_000 < (2**26)@64, H3_001 < (2**26)@64, H3_010 < (2**26)@64, H3_011 < (2**26)@64, 
    H3_100 < (2**26)@64, H3_101 < (2**26)@64, H3_110 < (2**26)@64, H3_111 < (2**26)@64,
(*
    H4_000 < (2**26)@64, H4_001 < (2**26)@64, H4_010 < (2**26)@64, H4_011 < (2**26)@64, 
    H4_100 < (2**26)@64, H4_101 < (2**26)@64, H4_110 < (2**26)@64, H4_111 < (2**26)@64,
*)
    
    T0_000 < (2**26)@64, T0_001 < (2**26)@64, T0_010 < (2**26)@64, T0_011 < (2**26)@64, 
    T0_100 < (2**26)@64, T0_101 < (2**26)@64, T0_110 < (2**26)@64, T0_111 < (2**26)@64, 
    T1_000 < (2**26)@64, T1_001 < (2**26)@64, T1_010 < (2**26)@64, T1_011 < (2**26)@64, 
    T1_100 < (2**26)@64, T1_101 < (2**26)@64, T1_110 < (2**26)@64, T1_111 < (2**26)@64, 
    T2_000 < (2**26)@64, T2_001 < (2**26)@64, T2_010 < (2**26)@64, T2_011 < (2**26)@64, 
    T2_100 < (2**26)@64, T2_101 < (2**26)@64, T2_110 < (2**26)@64, T2_111 < (2**26)@64, 
    T3_000 < (2**26)@64, T3_001 < (2**26)@64, T3_010 < (2**26)@64, T3_011 < (2**26)@64, 
    T3_100 < (2**26)@64, T3_101 < (2**26)@64, T3_110 < (2**26)@64, T3_111 < (2**26)@64, 
    T4_000 < (2**26)@64, T4_001 < (2**26)@64, T4_010 < (2**26)@64, T4_011 < (2**26)@64, 
    T4_100 < (2**26)@64, T4_101 < (2**26)@64, T4_110 < (2**26)@64, T4_111 < (2**26)@64
  ]
}

