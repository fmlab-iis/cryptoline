(* fail algebra *)
(* inputs + padbits: T0, T1, T2, T3, T4 *)
(* hash value: h0, h1, h2, h3, h4 *)
(* keys(r**4): r0, r1, r2, r3, r4 *)
(* temp keys(5*r**4): s1, s2, s3, s4 *)
(* new hash value: H0, H1, H2, H3, H4 *)
(* next inputs: inp0, inp1, inp2, inp3 *)

proc main (
 uint64 T0HH, uint64 T0HL, uint64 T0LH, uint64 T0LL,
 uint64 T1HH, uint64 T1HL, uint64 T1LH, uint64 T1LL,
 uint64 T2HH, uint64 T2HL, uint64 T2LH, uint64 T2LL,
 uint64 T3HH, uint64 T3HL, uint64 T3LH, uint64 T3LL,
 uint64 T4HH, uint64 T4HL, uint64 T4LH, uint64 T4LL,
 uint64 h0HH, uint64 h0HL, uint64 h0LH, uint64 h0LL,
 uint64 h1HH, uint64 h1HL, uint64 h1LH, uint64 h1LL,
 uint64 h2HH, uint64 h2HL, uint64 h2LH, uint64 h2LL,
 uint64 h3HH, uint64 h3HL, uint64 h3LH, uint64 h3LL,
 uint64 h4HH, uint64 h4HL, uint64 h4LH, uint64 h4LL,
 uint64 r0HH, uint64 r0HL, uint64 r0LH, uint64 r0LL,
 uint64 r1HH, uint64 r1HL, uint64 r1LH, uint64 r1LL,
 uint64 r2HH, uint64 r2HL, uint64 r2LH, uint64 r2LL,
 uint64 r3HH, uint64 r3HL, uint64 r3LH, uint64 r3LL,
 uint64 r4HH, uint64 r4HL, uint64 r4LH, uint64 r4LL,
 uint64 s1HH, uint64 s1HL, uint64 s1LH, uint64 s1LL,
 uint64 s2HH, uint64 s2HL, uint64 s2LH, uint64 s2LL,
 uint64 s3HH, uint64 s3HL, uint64 s3LH, uint64 s3LL,
 uint64 s4HH, uint64 s4HL, uint64 s4LH, uint64 s4LL
  ) =
{
  and
  [
    (* relationship between si's and ri's *)
    eq s1LL (5 * r1LL),
    eq s1LH (5 * r1LH),
    eq s1HL (5 * r1HL),
    eq s1HH (5 * r1HH),
    eq s2LL (5 * r2LL),
    eq s2LH (5 * r2LH),
    eq s2HL (5 * r2HL),
    eq s2HH (5 * r2HH),
    eq s3LL (5 * r3LL),
    eq s3LH (5 * r3LH),
    eq s3HL (5 * r3HL),
    eq s3HH (5 * r3HH),
    eq s4LL (5 * r4LL),
    eq s4LH (5 * r4LH),
    eq s4HL (5 * r4HL),
    eq s4HH (5 * r4HH)
  ]

  &&

  and
  [
    (* T0, T1, T2, T3, T4 are at most 26 bits *)
    T0LL < const 64 (2**26),
    T0LH < const 64 (2**26),
    T0HL < const 64 (2**26),
    T0HH < const 64 (2**26),
    T1LL < const 64 (2**26),
    T1LH < const 64 (2**26),
    T1HL < const 64 (2**26),
    T1HH < const 64 (2**26),
    T2LL < const 64 (2**26),
    T2LH < const 64 (2**26),
    T2HL < const 64 (2**26),
    T2HH < const 64 (2**26),
    T3LL < const 64 (2**26),
    T3LH < const 64 (2**26),
    T3HL < const 64 (2**26),
    T3HH < const 64 (2**26),
    T4LL < const 64 (2**26),
    T4LH < const 64 (2**26),
    T4HL < const 64 (2**26),
    T4HH < const 64 (2**26),
    (* h0, h1, h2, h3, h4 are at most 27 bits, since it may be partially reduced *)
    h0LL < const 64 (2**27),
    h0LH < const 64 (2**27),
    h0HL < const 64 (2**27),
    h0HH < const 64 (2**27),
    h1LL < const 64 (2**27),
    h1LH < const 64 (2**27),
    h1HL < const 64 (2**27),
    h1HH < const 64 (2**27),
    h2LL < const 64 (2**27),
    h2LH < const 64 (2**27),
    h2HL < const 64 (2**27),
    h2HH < const 64 (2**27),
    h3LL < const 64 (2**27),
    h3LH < const 64 (2**27),
    h3HL < const 64 (2**27),
    h3HH < const 64 (2**27),
    h4LL < const 64 (2**27),
    h4LH < const 64 (2**27),
    h4HL < const 64 (2**27),
    h4HH < const 64 (2**27),
    (* r0, r1, r2, r3, r4 are at most 26 bits *)
    r0LL < const 64 (2**26),
    r0LH < const 64 (2**26),
    r0HL < const 64 (2**26),
    r0HH < const 64 (2**26),
    r1LL < const 64 (2**26),
    r1LH < const 64 (2**26),
    r1HL < const 64 (2**26),
    r1HH < const 64 (2**26),
    r2LL < const 64 (2**26),
    r2LH < const 64 (2**26),
    r2HL < const 64 (2**26),
    r2HH < const 64 (2**26),
    r3LL < const 64 (2**26),
    r3LH < const 64 (2**26),
    r3HL < const 64 (2**26),
    r3HH < const 64 (2**26),
    r4LL < const 64 (2**26),
    r4LH < const 64 (2**26),
    r4HL < const 64 (2**26),
    r4HH < const 64 (2**26),
    (* relationship between si's and ri's *)
    eq s1LL (mul const 64 5 r1LL),
    eq s1LH (mul const 64 5 r1LH),
    eq s1HL (mul const 64 5 r1HL),
    eq s1HH (mul const 64 5 r1HH),
    eq s2LL (mul const 64 5 r2LL),
    eq s2LH (mul const 64 5 r2LH),
    eq s2HL (mul const 64 5 r2HL),
    eq s2HH (mul const 64 5 r2HH),
    eq s3LL (mul const 64 5 r3LL),
    eq s3LH (mul const 64 5 r3LH),
    eq s3HL (mul const 64 5 r3HL),
    eq s3HH (mul const 64 5 r3HH),
    eq s4LL (mul const 64 5 r4LL),
    eq s4LH (mul const 64 5 r4LH),
    eq s4HL (mul const 64 5 r4HL),
    eq s4HH (mul const 64 5 r4HH)
  ]
}

(* Added before the code *)
(* =========== BEGIN ============ *)

(* mov ymm0 h0 *)
mov ymm0HH h0HH;
mov ymm0HL h0HL;
mov ymm0LH h0LH;
mov ymm0LL h0LL;
(* mov ymm1 h1 *)
mov ymm1HH h1HH;
mov ymm1HL h1HL;
mov ymm1LH h1LH;
mov ymm1LL h1LL;
(* mov ymm2 h2 *)
mov ymm2HH h2HH;
mov ymm2HL h2HL;
mov ymm2LH h2LH;
mov ymm2LL h2LL;
(* mov ymm3 h3 *)
mov ymm3HH h3HH;
mov ymm3HL h3HL;
mov ymm3LH h3LH;
mov ymm3LL h3LL;
(* mov ymm4 h4 *)
mov ymm4HH h4HH;
mov ymm4HL h4HL;
mov ymm4LH h4LH;
mov ymm4LL h4LL;
(* mov ymm7 T0 *)
mov ymm7HH T0HH;
mov ymm7HL T0HL;
mov ymm7LH T0LH;
mov ymm7LL T0LL;
(* mov ymm8 T1 *)
mov ymm8HH T1HH;
mov ymm8HL T1HL;
mov ymm8LH T1LH;
mov ymm8LL T1LL;
(* mov ymm9 T2 *)
mov ymm9HH T2HH;
mov ymm9HL T2HL;
mov ymm9LH T2LH;
mov ymm9LL T2LL;
(* mov ymm10 T3 *)
mov ymm10HH T3HH;
mov ymm10HL T3HL;
mov ymm10LH T3LH;
mov ymm10LL T3LL;
(* mov ymm6 T4 *)
mov ymm6HH T4HH;
mov ymm6HL T4HL;
mov ymm6LH T4LH;
mov ymm6LL T4LL;
(* mov L0x7fffffffda00 r0 *)
mov L0x7fffffffda00 r0LL;
mov L0x7fffffffda08 r0LH;
mov L0x7fffffffda10 r0HL;
mov L0x7fffffffda18 r0HH;
(* mov L0x7fffffffda20 r1 *)
mov L0x7fffffffda20 r1LL;
mov L0x7fffffffda28 r1LH;
mov L0x7fffffffda30 r1HL;
mov L0x7fffffffda38 r1HH;
(* mov L0x7fffffffda60 r2 *)
mov L0x7fffffffda60 r2LL;
mov L0x7fffffffda68 r2LH;
mov L0x7fffffffda70 r2HL;
mov L0x7fffffffda78 r2HH;
(* mov L0x7fffffffdaa0 r3 *)
mov L0x7fffffffdaa0 r3LL;
mov L0x7fffffffdaa8 r3LH;
mov L0x7fffffffdab0 r3HL;
mov L0x7fffffffdab8 r3HH;
(* mov L0x7fffffffdae0 r4 *)
mov L0x7fffffffdae0 r4LL;
mov L0x7fffffffdae8 r4LH;
mov L0x7fffffffdaf0 r4HL;
mov L0x7fffffffdaf8 r4HH;
(* mov L0x7fffffffda40 s1 *)
mov L0x7fffffffda40 s1LL;
mov L0x7fffffffda48 s1LH;
mov L0x7fffffffda50 s1HL;
mov L0x7fffffffda58 s1HH;
(* mov L0x7fffffffda80 s2 *)
mov L0x7fffffffda80 s2LL;
mov L0x7fffffffda88 s2LH;
mov L0x7fffffffda90 s2HL;
mov L0x7fffffffda98 s2HH;
(* mov L0x7fffffffdac0 s3 *)
mov L0x7fffffffdac0 s3LL;
mov L0x7fffffffdac8 s3LH;
mov L0x7fffffffdad0 s3HL;
mov L0x7fffffffdad8 s3HH;
(* mov L0x7fffffffdb00 s4 *)
mov L0x7fffffffdb00 s4LL;
mov L0x7fffffffdb08 s4LH;
mov L0x7fffffffdb10 s4HL;
mov L0x7fffffffdb18 s4HH;

(* mov L0x6050e0 inp0 *)
(* mov L0x6050e0 inp0L; *)
(* mov L0x6050e8 inp0H; *)
(* mov L0x6050f0 inp1 *)
(* mov L0x6050f0 inp1L; *)
(* mov L0x6050f8 inp1H; *)
(* mov L0x605100 inp2 *)
(* mov L0x605100 inp2L; *)
(* mov L0x605108 inp2H; *)
(* mov L0x605110 inp3 *)
(* mov L0x605110 inp3L; *)
(* mov L0x605118 inp3H; *)

(* 64(%rcx) is equal to .Lmask26: 0x3ffffff,0,0x3ffffff,0,0x3ffffff,0,0x3ffffff,0 *)
mov L0x404580 0x3ffffff@uint64;
mov L0x404588 0x3ffffff@uint64;
mov L0x404590 0x3ffffff@uint64;
mov L0x404598 0x3ffffff@uint64;

(* ===========  END  ============ *)



(* Added after the code *)
(* =========== BEGIN ============ *)

(* mov H0 ymm0 *)
mov H0HH ymm0HH;
mov H0HL ymm0HL;
mov H0LH ymm0LH;
mov H0LL ymm0LL;
(* mov H1 ymm1 *)
mov H1HH ymm1HH;
mov H1HL ymm1HL;
mov H1LH ymm1LH;
mov H1LL ymm1LL;
(* mov H2 ymm2 *)
mov H2HH ymm2HH;
mov H2HL ymm2HL;
mov H2LH ymm2LH;
mov H2LL ymm2LL;
(* mov H3 ymm3 *)
mov H3HH ymm3HH;
mov H3HL ymm3HL;
mov H3LH ymm3LH;
mov H3LL ymm3LL;
(* mov H4 ymm4 *)
mov H4HH ymm4HH;
mov H4HL ymm4HL;
mov H4LH ymm4LH;
mov H4LL ymm4LL;

(* ===========  END  ============ *)


{
  (* ((h4:h0) + (T4:T0)) * (r4:r0) = (H4:H0) *)
  and
  [
    eqmod
      (limbs 26 [H0LL, H1LL, H2LL, H3LL, H4LL])
      (
        (
          (limbs 26 [h0LL, h1LL, h2LL, h3LL, h4LL])
          +
          (limbs 26 [T0LL, T1LL, T2LL, T3LL, T4LL])
        )
        *
        (limbs 26 [r0LL, r1LL, r2LL, r3LL, r4LL])
      )
      (
        (limbs 130 [0, 1])
        -
        5
      ) ,
    eqmod
      (limbs 26 [H0LH, H1LH, H2LH, H3LH, H4LH])
      (
        (
          (limbs 26 [h0LH, h1LH, h2LH, h3LH, h4LH])
          +
          (limbs 26 [T0LH, T1LH, T2LH, T3LH, T4LH])
        )
        *
        (limbs 26 [r0LH, r1LH, r2LH, r3LH, r4LH])
      )
      (
        (limbs 130 [0, 1])
        -
        5
      ) ,
    eqmod
      (limbs 26 [H0HL, H1HL, H2HL, H3HL, H4HL])
      (
        (
          (limbs 26 [h0HL, h1HL, h2HL, h3HL, h4HL])
          +
          (limbs 26 [T0HL, T1HL, T2HL, T3HL, T4HL])
        )
        *
        (limbs 26 [r0HL, r1HL, r2HL, r3HL, r4HL])
      )
      (
        (limbs 130 [0, 1])
        -
        5
      ) ,
    eqmod
      (limbs 26 [H0HH, H1HH, H2HH, H3HH, H4HH])
      (
        (
          (limbs 26 [h0HH, h1HH, h2HH, h3HH, h4HH])
          +
          (limbs 26 [T0HH, T1HH, T2HH, T3HH, T4HH])
        )
        *
        (limbs 26 [r0HH, r1HH, r2HH, r3HH, r4HH])
      )
      (
        (limbs 130 [0, 1])
        -
        5
      )
  ]

  &&

  (* H0, H1, H2, H3, H4 are at most 27 bits, since it may be partially reduced *)
  and
  [
    H0LL < const 64 (2**27),
    H0LH < const 64 (2**27),
    H0HL < const 64 (2**27),
    H0HH < const 64 (2**27),
    H1LL < const 64 (2**27),
    H1LH < const 64 (2**27),
    H1HL < const 64 (2**27),
    H1HH < const 64 (2**27),
    H2LL < const 64 (2**27),
    H2LH < const 64 (2**27),
    H2HL < const 64 (2**27),
    H2HH < const 64 (2**27),
    H3LL < const 64 (2**27),
    H3LH < const 64 (2**27),
    H3HL < const 64 (2**27),
    H3HH < const 64 (2**27),
    H4LL < const 64 (2**27),
    H4LH < const 64 (2**27),
    H4HL < const 64 (2**27),
    H4HH < const 64 (2**27)
  ]
}
