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

(* loop begins *)

(* vpaddq %ymm2,%ymm9,%ymm2 *)
add ymm2HH ymm2HH ymm9HH;
add ymm2HL ymm2HL ymm9HL;
add ymm2LH ymm2LH ymm9LH;
add ymm2LL ymm2LL ymm9LL;
(* vpaddq %ymm0,%ymm7,%ymm0 *)
add ymm0HH ymm0HH ymm7HH;
add ymm0HL ymm0HL ymm7HL;
add ymm0LH ymm0LH ymm7LH;
add ymm0LL ymm0LL ymm7LL;
(* y7d2vmovdqa (%rsp),%ymm7                            #! EA = L0x7fffffffda00 *)
mov ymm7LL L0x7fffffffda00;
mov ymm7LH L0x7fffffffda08;
mov ymm7HL L0x7fffffffda10;
mov ymm7HH L0x7fffffffda18;
(* vpaddq %ymm1,%ymm8,%ymm1 *)
add ymm1HH ymm1HH ymm8HH;
add ymm1HL ymm1HL ymm8HL;
add ymm1LH ymm1LH ymm8LH;
add ymm1LL ymm1LL ymm8LL;
(* y8dvmovdqa 0x20(%rsp),%ymm8                        #! EA = L0x7fffffffda20 *)
mov ymm8LL L0x7fffffffda20;
mov ymm8LH L0x7fffffffda28;
mov ymm8HL L0x7fffffffda30;
mov ymm8HH L0x7fffffffda38;
(* vpaddq %ymm3,%ymm10,%ymm3 *)
add ymm3HH ymm3HH ymm10HH;
add ymm3HL ymm3HL ymm10HL;
add ymm3LH ymm3LH ymm10LH;
add ymm3LL ymm3LL ymm10LL;
(* y9dvmovdqa 0x60(%rsp),%ymm9                        #! EA = L0x7fffffffda60 *)
mov ymm9LL L0x7fffffffda60;
mov ymm9LH L0x7fffffffda68;
mov ymm9HL L0x7fffffffda70;
mov ymm9HH L0x7fffffffda78;
(* vpaddq %ymm4,%ymm6,%ymm4 *)
add ymm4HH ymm4HH ymm6HH;
add ymm4HL ymm4HL ymm6HL;
add ymm4LH ymm4LH ymm6LH;
add ymm4LL ymm4LL ymm6LL;
(* y10dvmovdqa 0x30(%rax),%ymm10                       #! EA = L0x7fffffffdac0 *)
mov ymm10LL L0x7fffffffdac0;
mov ymm10LH L0x7fffffffdac8;
mov ymm10HL L0x7fffffffdad0;
mov ymm10HH L0x7fffffffdad8;
(* y5d2vmovdqa 0x70(%rax),%ymm5                        #! EA = L0x7fffffffdb00 *)
mov ymm5LL L0x7fffffffdb00;
mov ymm5LH L0x7fffffffdb08;
mov ymm5HL L0x7fffffffdb10;
mov ymm5HH L0x7fffffffdb18;
(* vpmuludq %ymm2,%ymm7,%ymm13 *)
split ymm7LLH ymm7LLL ymm7LL 32;
assert true && eq ymm7LLH const 64 0;
assert true && ymm7LLL < const 64 (2**32);
assume eq ymm7LLH 0 && true;
split ymm2LLH ymm2LLL ymm2LL 32;
assert true && eq ymm2LLH const 64 0;
assert true && ymm2LLL < const 64 (2**32);
assume eq ymm2LLH 0 && true;
mul ymm13LL ymm7LLL ymm2LLL;
split ymm7LHH ymm7LHL ymm7LH 32;
assert true && eq ymm7LHH const 64 0;
assert true && ymm7LHL < const 64 (2**32);
assume eq ymm7LHH 0 && true;
split ymm2LHH ymm2LHL ymm2LH 32;
assert true && eq ymm2LHH const 64 0;
assert true && ymm2LHL < const 64 (2**32);
assume eq ymm2LHH 0 && true;
mul ymm13LH ymm7LHL ymm2LHL;
split ymm7HLH ymm7HLL ymm7HL 32;
assert true && eq ymm7HLH const 64 0;
assert true && ymm7HLL < const 64 (2**32);
assume eq ymm7HLH 0 && true;
split ymm2HLH ymm2HLL ymm2HL 32;
assert true && eq ymm2HLH const 64 0;
assert true && ymm2HLL < const 64 (2**32);
assume eq ymm2HLH 0 && true;
mul ymm13HL ymm7HLL ymm2HLL;
split ymm7HHH ymm7HHL ymm7HH 32;
assert true && eq ymm7HHH const 64 0;
assert true && ymm7HHL < const 64 (2**32);
assume eq ymm7HHH 0 && true;
split ymm2HHH ymm2HHL ymm2HH 32;
assert true && eq ymm2HHH const 64 0;
assert true && ymm2HHL < const 64 (2**32);
assume eq ymm2HHH 0 && true;
mul ymm13HH ymm7HHL ymm2HHL;
(* vpmuludq %ymm2,%ymm8,%ymm14 *)
split ymm8LLH ymm8LLL ymm8LL 32;
assert true && eq ymm8LLH const 64 0;
assert true && ymm8LLL < const 64 (2**32);
assume eq ymm8LLH 0 && true;
split ymm2LLH ymm2LLL ymm2LL 32;
assert true && eq ymm2LLH const 64 0;
assert true && ymm2LLL < const 64 (2**32);
assume eq ymm2LLH 0 && true;
mul ymm14LL ymm8LLL ymm2LLL;
split ymm8LHH ymm8LHL ymm8LH 32;
assert true && eq ymm8LHH const 64 0;
assert true && ymm8LHL < const 64 (2**32);
assume eq ymm8LHH 0 && true;
split ymm2LHH ymm2LHL ymm2LH 32;
assert true && eq ymm2LHH const 64 0;
assert true && ymm2LHL < const 64 (2**32);
assume eq ymm2LHH 0 && true;
mul ymm14LH ymm8LHL ymm2LHL;
split ymm8HLH ymm8HLL ymm8HL 32;
assert true && eq ymm8HLH const 64 0;
assert true && ymm8HLL < const 64 (2**32);
assume eq ymm8HLH 0 && true;
split ymm2HLH ymm2HLL ymm2HL 32;
assert true && eq ymm2HLH const 64 0;
assert true && ymm2HLL < const 64 (2**32);
assume eq ymm2HLH 0 && true;
mul ymm14HL ymm8HLL ymm2HLL;
split ymm8HHH ymm8HHL ymm8HH 32;
assert true && eq ymm8HHH const 64 0;
assert true && ymm8HHL < const 64 (2**32);
assume eq ymm8HHH 0 && true;
split ymm2HHH ymm2HHL ymm2HH 32;
assert true && eq ymm2HHH const 64 0;
assert true && ymm2HHL < const 64 (2**32);
assume eq ymm2HHH 0 && true;
mul ymm14HH ymm8HHL ymm2HHL;
(* vpmuludq %ymm2,%ymm9,%ymm15 *)
split ymm9LLH ymm9LLL ymm9LL 32;
assert true && eq ymm9LLH const 64 0;
assert true && ymm9LLL < const 64 (2**32);
assume eq ymm9LLH 0 && true;
split ymm2LLH ymm2LLL ymm2LL 32;
assert true && eq ymm2LLH const 64 0;
assert true && ymm2LLL < const 64 (2**32);
assume eq ymm2LLH 0 && true;
mul ymm15LL ymm9LLL ymm2LLL;
split ymm9LHH ymm9LHL ymm9LH 32;
assert true && eq ymm9LHH const 64 0;
assert true && ymm9LHL < const 64 (2**32);
assume eq ymm9LHH 0 && true;
split ymm2LHH ymm2LHL ymm2LH 32;
assert true && eq ymm2LHH const 64 0;
assert true && ymm2LHL < const 64 (2**32);
assume eq ymm2LHH 0 && true;
mul ymm15LH ymm9LHL ymm2LHL;
split ymm9HLH ymm9HLL ymm9HL 32;
assert true && eq ymm9HLH const 64 0;
assert true && ymm9HLL < const 64 (2**32);
assume eq ymm9HLH 0 && true;
split ymm2HLH ymm2HLL ymm2HL 32;
assert true && eq ymm2HLH const 64 0;
assert true && ymm2HLL < const 64 (2**32);
assume eq ymm2HLH 0 && true;
mul ymm15HL ymm9HLL ymm2HLL;
split ymm9HHH ymm9HHL ymm9HH 32;
assert true && eq ymm9HHH const 64 0;
assert true && ymm9HHL < const 64 (2**32);
assume eq ymm9HHH 0 && true;
split ymm2HHH ymm2HHL ymm2HH 32;
assert true && eq ymm2HHH const 64 0;
assert true && ymm2HHL < const 64 (2**32);
assume eq ymm2HHH 0 && true;
mul ymm15HH ymm9HHL ymm2HHL;
(* vpmuludq %ymm2,%ymm10,%ymm11 *)
split ymm10LLH ymm10LLL ymm10LL 32;
assert true && eq ymm10LLH const 64 0;
assert true && ymm10LLL < const 64 (2**32);
assume eq ymm10LLH 0 && true;
split ymm2LLH ymm2LLL ymm2LL 32;
assert true && eq ymm2LLH const 64 0;
assert true && ymm2LLL < const 64 (2**32);
assume eq ymm2LLH 0 && true;
mul ymm11LL ymm10LLL ymm2LLL;
split ymm10LHH ymm10LHL ymm10LH 32;
assert true && eq ymm10LHH const 64 0;
assert true && ymm10LHL < const 64 (2**32);
assume eq ymm10LHH 0 && true;
split ymm2LHH ymm2LHL ymm2LH 32;
assert true && eq ymm2LHH const 64 0;
assert true && ymm2LHL < const 64 (2**32);
assume eq ymm2LHH 0 && true;
mul ymm11LH ymm10LHL ymm2LHL;
split ymm10HLH ymm10HLL ymm10HL 32;
assert true && eq ymm10HLH const 64 0;
assert true && ymm10HLL < const 64 (2**32);
assume eq ymm10HLH 0 && true;
split ymm2HLH ymm2HLL ymm2HL 32;
assert true && eq ymm2HLH const 64 0;
assert true && ymm2HLL < const 64 (2**32);
assume eq ymm2HLH 0 && true;
mul ymm11HL ymm10HLL ymm2HLL;
split ymm10HHH ymm10HHL ymm10HH 32;
assert true && eq ymm10HHH const 64 0;
assert true && ymm10HHL < const 64 (2**32);
assume eq ymm10HHH 0 && true;
split ymm2HHH ymm2HHL ymm2HH 32;
assert true && eq ymm2HHH const 64 0;
assert true && ymm2HHL < const 64 (2**32);
assume eq ymm2HHH 0 && true;
mul ymm11HH ymm10HHL ymm2HHL;
(* vpmuludq %ymm2,%ymm5,%ymm12 *)
split ymm5LLH ymm5LLL ymm5LL 32;
assert true && eq ymm5LLH const 64 0;
assert true && ymm5LLL < const 64 (2**32);
assume eq ymm5LLH 0 && true;
split ymm2LLH ymm2LLL ymm2LL 32;
assert true && eq ymm2LLH const 64 0;
assert true && ymm2LLL < const 64 (2**32);
assume eq ymm2LLH 0 && true;
mul ymm12LL ymm5LLL ymm2LLL;
split ymm5LHH ymm5LHL ymm5LH 32;
assert true && eq ymm5LHH const 64 0;
assert true && ymm5LHL < const 64 (2**32);
assume eq ymm5LHH 0 && true;
split ymm2LHH ymm2LHL ymm2LH 32;
assert true && eq ymm2LHH const 64 0;
assert true && ymm2LHL < const 64 (2**32);
assume eq ymm2LHH 0 && true;
mul ymm12LH ymm5LHL ymm2LHL;
split ymm5HLH ymm5HLL ymm5HL 32;
assert true && eq ymm5HLH const 64 0;
assert true && ymm5HLL < const 64 (2**32);
assume eq ymm5HLH 0 && true;
split ymm2HLH ymm2HLL ymm2HL 32;
assert true && eq ymm2HLH const 64 0;
assert true && ymm2HLL < const 64 (2**32);
assume eq ymm2HLH 0 && true;
mul ymm12HL ymm5HLL ymm2HLL;
split ymm5HHH ymm5HHL ymm5HH 32;
assert true && eq ymm5HHH const 64 0;
assert true && ymm5HHL < const 64 (2**32);
assume eq ymm5HHH 0 && true;
split ymm2HHH ymm2HHL ymm2HH 32;
assert true && eq ymm2HHH const 64 0;
assert true && ymm2HHL < const 64 (2**32);
assume eq ymm2HHH 0 && true;
mul ymm12HH ymm5HHL ymm2HHL;
(* vpmuludq %ymm0,%ymm8,%ymm6 *)
split ymm8LLH ymm8LLL ymm8LL 32;
assert true && eq ymm8LLH const 64 0;
assert true && ymm8LLL < const 64 (2**32);
assume eq ymm8LLH 0 && true;
split ymm0LLH ymm0LLL ymm0LL 32;
assert true && eq ymm0LLH const 64 0;
assert true && ymm0LLL < const 64 (2**32);
assume eq ymm0LLH 0 && true;
mul ymm6LL ymm8LLL ymm0LLL;
split ymm8LHH ymm8LHL ymm8LH 32;
assert true && eq ymm8LHH const 64 0;
assert true && ymm8LHL < const 64 (2**32);
assume eq ymm8LHH 0 && true;
split ymm0LHH ymm0LHL ymm0LH 32;
assert true && eq ymm0LHH const 64 0;
assert true && ymm0LHL < const 64 (2**32);
assume eq ymm0LHH 0 && true;
mul ymm6LH ymm8LHL ymm0LHL;
split ymm8HLH ymm8HLL ymm8HL 32;
assert true && eq ymm8HLH const 64 0;
assert true && ymm8HLL < const 64 (2**32);
assume eq ymm8HLH 0 && true;
split ymm0HLH ymm0HLL ymm0HL 32;
assert true && eq ymm0HLH const 64 0;
assert true && ymm0HLL < const 64 (2**32);
assume eq ymm0HLH 0 && true;
mul ymm6HL ymm8HLL ymm0HLL;
split ymm8HHH ymm8HHL ymm8HH 32;
assert true && eq ymm8HHH const 64 0;
assert true && ymm8HHL < const 64 (2**32);
assume eq ymm8HHH 0 && true;
split ymm0HHH ymm0HHL ymm0HH 32;
assert true && eq ymm0HHH const 64 0;
assert true && ymm0HHL < const 64 (2**32);
assume eq ymm0HHH 0 && true;
mul ymm6HH ymm8HHL ymm0HHL;
(* vpmuludq %ymm1,%ymm8,%ymm2 *)
split ymm8LLH ymm8LLL ymm8LL 32;
assert true && eq ymm8LLH const 64 0;
assert true && ymm8LLL < const 64 (2**32);
assume eq ymm8LLH 0 && true;
split ymm1LLH ymm1LLL ymm1LL 32;
assert true && eq ymm1LLH const 64 0;
assert true && ymm1LLL < const 64 (2**32);
assume eq ymm1LLH 0 && true;
mul ymm2LL ymm8LLL ymm1LLL;
split ymm8LHH ymm8LHL ymm8LH 32;
assert true && eq ymm8LHH const 64 0;
assert true && ymm8LHL < const 64 (2**32);
assume eq ymm8LHH 0 && true;
split ymm1LHH ymm1LHL ymm1LH 32;
assert true && eq ymm1LHH const 64 0;
assert true && ymm1LHL < const 64 (2**32);
assume eq ymm1LHH 0 && true;
mul ymm2LH ymm8LHL ymm1LHL;
split ymm8HLH ymm8HLL ymm8HL 32;
assert true && eq ymm8HLH const 64 0;
assert true && ymm8HLL < const 64 (2**32);
assume eq ymm8HLH 0 && true;
split ymm1HLH ymm1HLL ymm1HL 32;
assert true && eq ymm1HLH const 64 0;
assert true && ymm1HLL < const 64 (2**32);
assume eq ymm1HLH 0 && true;
mul ymm2HL ymm8HLL ymm1HLL;
split ymm8HHH ymm8HHL ymm8HH 32;
assert true && eq ymm8HHH const 64 0;
assert true && ymm8HHL < const 64 (2**32);
assume eq ymm8HHH 0 && true;
split ymm1HHH ymm1HHL ymm1HH 32;
assert true && eq ymm1HHH const 64 0;
assert true && ymm1HHL < const 64 (2**32);
assume eq ymm1HHH 0 && true;
mul ymm2HH ymm8HHL ymm1HHL;
(* vpaddq %ymm6,%ymm12,%ymm12 *)
add ymm12HH ymm6HH ymm12HH;
add ymm12HL ymm6HL ymm12HL;
add ymm12LH ymm6LH ymm12LH;
add ymm12LL ymm6LL ymm12LL;
(* vpaddq %ymm2,%ymm13,%ymm13 *)
add ymm13HH ymm2HH ymm13HH;
add ymm13HL ymm2HL ymm13HL;
add ymm13LH ymm2LH ymm13LH;
add ymm13LL ymm2LL ymm13LL;
(* vpmuludq %ymm3,%ymm8,%ymm6 *)
split ymm8LLH ymm8LLL ymm8LL 32;
assert true && eq ymm8LLH const 64 0;
assert true && ymm8LLL < const 64 (2**32);
assume eq ymm8LLH 0 && true;
split ymm3LLH ymm3LLL ymm3LL 32;
assert true && eq ymm3LLH const 64 0;
assert true && ymm3LLL < const 64 (2**32);
assume eq ymm3LLH 0 && true;
mul ymm6LL ymm8LLL ymm3LLL;
split ymm8LHH ymm8LHL ymm8LH 32;
assert true && eq ymm8LHH const 64 0;
assert true && ymm8LHL < const 64 (2**32);
assume eq ymm8LHH 0 && true;
split ymm3LHH ymm3LHL ymm3LH 32;
assert true && eq ymm3LHH const 64 0;
assert true && ymm3LHL < const 64 (2**32);
assume eq ymm3LHH 0 && true;
mul ymm6LH ymm8LHL ymm3LHL;
split ymm8HLH ymm8HLL ymm8HL 32;
assert true && eq ymm8HLH const 64 0;
assert true && ymm8HLL < const 64 (2**32);
assume eq ymm8HLH 0 && true;
split ymm3HLH ymm3HLL ymm3HL 32;
assert true && eq ymm3HLH const 64 0;
assert true && ymm3HLL < const 64 (2**32);
assume eq ymm3HLH 0 && true;
mul ymm6HL ymm8HLL ymm3HLL;
split ymm8HHH ymm8HHL ymm8HH 32;
assert true && eq ymm8HHH const 64 0;
assert true && ymm8HHL < const 64 (2**32);
assume eq ymm8HHH 0 && true;
split ymm3HHH ymm3HHL ymm3HH 32;
assert true && eq ymm3HHH const 64 0;
assert true && ymm3HHL < const 64 (2**32);
assume eq ymm3HHH 0 && true;
mul ymm6HH ymm8HHL ymm3HHL;
(* vpmuludq1 0x40(%rsp),%ymm4,%ymm2                 #! EA = L0x7fffffffda40 *)
split ymm4LLH ymm4LLL ymm4LL 32;
assert true && eq ymm4LLH const 64 0;
assert true && ymm4LLL < const 64 (2**32);
assume eq ymm4LLH 0 && true;
split mllh mlll L0x7fffffffda40 32;
assert true && eq mllh const 64 0;
assert true && mlll < const 64 (2**32);
assume eq mllh 0 && true;
mul ymm2LL ymm4LLL mlll;
split ymm4LHH ymm4LHL ymm4LH 32;
assert true && eq ymm4LHH const 64 0;
assert true && ymm4LHL < const 64 (2**32);
assume eq ymm4LHH 0 && true;
split mlhh mlhl L0x7fffffffda48 32;
assert true && eq mlhh const 64 0;
assert true && mlhl < const 64 (2**32);
assume eq mlhh 0 && true;
mul ymm2LH ymm4LHL mlhl;
split ymm4HLH ymm4HLL ymm4HL 32;
assert true && eq ymm4HLH const 64 0;
assert true && ymm4HLL < const 64 (2**32);
assume eq ymm4HLH 0 && true;
split mhlh mhll L0x7fffffffda50 32;
assert true && eq mhlh const 64 0;
assert true && mhll < const 64 (2**32);
assume eq mhlh 0 && true;
mul ymm2HL ymm4HLL mhll;
split ymm4HHH ymm4HHL ymm4HH 32;
assert true && eq ymm4HHH const 64 0;
assert true && ymm4HHL < const 64 (2**32);
assume eq ymm4HHH 0 && true;
split mhhh mhhl L0x7fffffffda58 32;
assert true && eq mhhh const 64 0;
assert true && mhhl < const 64 (2**32);
assume eq mhhh 0 && true;
mul ymm2HH ymm4HHL mhhl;
(* vpaddq %ymm6,%ymm15,%ymm15 *)
add ymm15HH ymm6HH ymm15HH;
add ymm15HL ymm6HL ymm15HL;
add ymm15LH ymm6LH ymm15LH;
add ymm15LL ymm6LL ymm15LL;
(* vpaddq %ymm2,%ymm11,%ymm11 *)
add ymm11HH ymm2HH ymm11HH;
add ymm11HL ymm2HL ymm11HL;
add ymm11LH ymm2LH ymm11LH;
add ymm11LL ymm2LL ymm11LL;
(* y8d2vmovdqa -0x10(%rax),%ymm8                       #! EA = L0x7fffffffda80 *)
mov ymm8LL L0x7fffffffda80;
mov ymm8LH L0x7fffffffda88;
mov ymm8HL L0x7fffffffda90;
mov ymm8HH L0x7fffffffda98;
(* vpmuludq %ymm0,%ymm7,%ymm6 *)
split ymm7LLH ymm7LLL ymm7LL 32;
assert true && eq ymm7LLH const 64 0;
assert true && ymm7LLL < const 64 (2**32);
assume eq ymm7LLH 0 && true;
split ymm0LLH ymm0LLL ymm0LL 32;
assert true && eq ymm0LLH const 64 0;
assert true && ymm0LLL < const 64 (2**32);
assume eq ymm0LLH 0 && true;
mul ymm6LL ymm7LLL ymm0LLL;
split ymm7LHH ymm7LHL ymm7LH 32;
assert true && eq ymm7LHH const 64 0;
assert true && ymm7LHL < const 64 (2**32);
assume eq ymm7LHH 0 && true;
split ymm0LHH ymm0LHL ymm0LH 32;
assert true && eq ymm0LHH const 64 0;
assert true && ymm0LHL < const 64 (2**32);
assume eq ymm0LHH 0 && true;
mul ymm6LH ymm7LHL ymm0LHL;
split ymm7HLH ymm7HLL ymm7HL 32;
assert true && eq ymm7HLH const 64 0;
assert true && ymm7HLL < const 64 (2**32);
assume eq ymm7HLH 0 && true;
split ymm0HLH ymm0HLL ymm0HL 32;
assert true && eq ymm0HLH const 64 0;
assert true && ymm0HLL < const 64 (2**32);
assume eq ymm0HLH 0 && true;
mul ymm6HL ymm7HLL ymm0HLL;
split ymm7HHH ymm7HHL ymm7HH 32;
assert true && eq ymm7HHH const 64 0;
assert true && ymm7HHL < const 64 (2**32);
assume eq ymm7HHH 0 && true;
split ymm0HHH ymm0HHL ymm0HH 32;
assert true && eq ymm0HHH const 64 0;
assert true && ymm0HHL < const 64 (2**32);
assume eq ymm0HHH 0 && true;
mul ymm6HH ymm7HHL ymm0HHL;
(* vpmuludq %ymm1,%ymm7,%ymm2 *)
split ymm7LLH ymm7LLL ymm7LL 32;
assert true && eq ymm7LLH const 64 0;
assert true && ymm7LLL < const 64 (2**32);
assume eq ymm7LLH 0 && true;
split ymm1LLH ymm1LLL ymm1LL 32;
assert true && eq ymm1LLH const 64 0;
assert true && ymm1LLL < const 64 (2**32);
assume eq ymm1LLH 0 && true;
mul ymm2LL ymm7LLL ymm1LLL;
split ymm7LHH ymm7LHL ymm7LH 32;
assert true && eq ymm7LHH const 64 0;
assert true && ymm7LHL < const 64 (2**32);
assume eq ymm7LHH 0 && true;
split ymm1LHH ymm1LHL ymm1LH 32;
assert true && eq ymm1LHH const 64 0;
assert true && ymm1LHL < const 64 (2**32);
assume eq ymm1LHH 0 && true;
mul ymm2LH ymm7LHL ymm1LHL;
split ymm7HLH ymm7HLL ymm7HL 32;
assert true && eq ymm7HLH const 64 0;
assert true && ymm7HLL < const 64 (2**32);
assume eq ymm7HLH 0 && true;
split ymm1HLH ymm1HLL ymm1HL 32;
assert true && eq ymm1HLH const 64 0;
assert true && ymm1HLL < const 64 (2**32);
assume eq ymm1HLH 0 && true;
mul ymm2HL ymm7HLL ymm1HLL;
split ymm7HHH ymm7HHL ymm7HH 32;
assert true && eq ymm7HHH const 64 0;
assert true && ymm7HHL < const 64 (2**32);
assume eq ymm7HHH 0 && true;
split ymm1HHH ymm1HHL ymm1HH 32;
assert true && eq ymm1HHH const 64 0;
assert true && ymm1HHL < const 64 (2**32);
assume eq ymm1HHH 0 && true;
mul ymm2HH ymm7HHL ymm1HHL;
(* vpaddq %ymm6,%ymm11,%ymm11 *)
add ymm11HH ymm6HH ymm11HH;
add ymm11HL ymm6HL ymm11HL;
add ymm11LH ymm6LH ymm11LH;
add ymm11LL ymm6LL ymm11LL;
(* vpaddq %ymm2,%ymm12,%ymm12 *)
add ymm12HH ymm2HH ymm12HH;
add ymm12HL ymm2HL ymm12HL;
add ymm12LH ymm2LH ymm12LH;
add ymm12LL ymm2LL ymm12LL;
(* vpmuludq %ymm3,%ymm7,%ymm6 *)
split ymm7LLH ymm7LLL ymm7LL 32;
assert true && eq ymm7LLH const 64 0;
assert true && ymm7LLL < const 64 (2**32);
assume eq ymm7LLH 0 && true;
split ymm3LLH ymm3LLL ymm3LL 32;
assert true && eq ymm3LLH const 64 0;
assert true && ymm3LLL < const 64 (2**32);
assume eq ymm3LLH 0 && true;
mul ymm6LL ymm7LLL ymm3LLL;
split ymm7LHH ymm7LHL ymm7LH 32;
assert true && eq ymm7LHH const 64 0;
assert true && ymm7LHL < const 64 (2**32);
assume eq ymm7LHH 0 && true;
split ymm3LHH ymm3LHL ymm3LH 32;
assert true && eq ymm3LHH const 64 0;
assert true && ymm3LHL < const 64 (2**32);
assume eq ymm3LHH 0 && true;
mul ymm6LH ymm7LHL ymm3LHL;
split ymm7HLH ymm7HLL ymm7HL 32;
assert true && eq ymm7HLH const 64 0;
assert true && ymm7HLL < const 64 (2**32);
assume eq ymm7HLH 0 && true;
split ymm3HLH ymm3HLL ymm3HL 32;
assert true && eq ymm3HLH const 64 0;
assert true && ymm3HLL < const 64 (2**32);
assume eq ymm3HLH 0 && true;
mul ymm6HL ymm7HLL ymm3HLL;
split ymm7HHH ymm7HHL ymm7HH 32;
assert true && eq ymm7HHH const 64 0;
assert true && ymm7HHL < const 64 (2**32);
assume eq ymm7HHH 0 && true;
split ymm3HHH ymm3HHL ymm3HH 32;
assert true && eq ymm3HHH const 64 0;
assert true && ymm3HHL < const 64 (2**32);
assume eq ymm3HHH 0 && true;
mul ymm6HH ymm7HHL ymm3HHL;
(* vpmuludq %ymm4,%ymm7,%ymm2 *)
split ymm7LLH ymm7LLL ymm7LL 32;
assert true && eq ymm7LLH const 64 0;
assert true && ymm7LLL < const 64 (2**32);
assume eq ymm7LLH 0 && true;
split ymm4LLH ymm4LLL ymm4LL 32;
assert true && eq ymm4LLH const 64 0;
assert true && ymm4LLL < const 64 (2**32);
assume eq ymm4LLH 0 && true;
mul ymm2LL ymm7LLL ymm4LLL;
split ymm7LHH ymm7LHL ymm7LH 32;
assert true && eq ymm7LHH const 64 0;
assert true && ymm7LHL < const 64 (2**32);
assume eq ymm7LHH 0 && true;
split ymm4LHH ymm4LHL ymm4LH 32;
assert true && eq ymm4LHH const 64 0;
assert true && ymm4LHL < const 64 (2**32);
assume eq ymm4LHH 0 && true;
mul ymm2LH ymm7LHL ymm4LHL;
split ymm7HLH ymm7HLL ymm7HL 32;
assert true && eq ymm7HLH const 64 0;
assert true && ymm7HLL < const 64 (2**32);
assume eq ymm7HLH 0 && true;
split ymm4HLH ymm4HLL ymm4HL 32;
assert true && eq ymm4HLH const 64 0;
assert true && ymm4HLL < const 64 (2**32);
assume eq ymm4HLH 0 && true;
mul ymm2HL ymm7HLL ymm4HLL;
split ymm7HHH ymm7HHL ymm7HH 32;
assert true && eq ymm7HHH const 64 0;
assert true && ymm7HHL < const 64 (2**32);
assume eq ymm7HHH 0 && true;
split ymm4HHH ymm4HHL ymm4HH 32;
assert true && eq ymm4HHH const 64 0;
assert true && ymm4HHL < const 64 (2**32);
assume eq ymm4HHH 0 && true;
mul ymm2HH ymm7HHL ymm4HHL;
(* vpaddq %ymm6,%ymm14,%ymm14 *)
add ymm14HH ymm6HH ymm14HH;
add ymm14HL ymm6HL ymm14HL;
add ymm14LH ymm6LH ymm14LH;
add ymm14LL ymm6LL ymm14LL;
(* vpaddq %ymm2,%ymm15,%ymm15 *)
add ymm15HH ymm2HH ymm15HH;
add ymm15HL ymm2HL ymm15HL;
add ymm15LH ymm2LH ymm15LH;
add ymm15LL ymm2LL ymm15LL;
(* vpmuludq %ymm3,%ymm8,%ymm6 *)
split ymm8LLH ymm8LLL ymm8LL 32;
assert true && eq ymm8LLH const 64 0;
assert true && ymm8LLL < const 64 (2**32);
assume eq ymm8LLH 0 && true;
split ymm3LLH ymm3LLL ymm3LL 32;
assert true && eq ymm3LLH const 64 0;
assert true && ymm3LLL < const 64 (2**32);
assume eq ymm3LLH 0 && true;
mul ymm6LL ymm8LLL ymm3LLL;
split ymm8LHH ymm8LHL ymm8LH 32;
assert true && eq ymm8LHH const 64 0;
assert true && ymm8LHL < const 64 (2**32);
assume eq ymm8LHH 0 && true;
split ymm3LHH ymm3LHL ymm3LH 32;
assert true && eq ymm3LHH const 64 0;
assert true && ymm3LHL < const 64 (2**32);
assume eq ymm3LHH 0 && true;
mul ymm6LH ymm8LHL ymm3LHL;
split ymm8HLH ymm8HLL ymm8HL 32;
assert true && eq ymm8HLH const 64 0;
assert true && ymm8HLL < const 64 (2**32);
assume eq ymm8HLH 0 && true;
split ymm3HLH ymm3HLL ymm3HL 32;
assert true && eq ymm3HLH const 64 0;
assert true && ymm3HLL < const 64 (2**32);
assume eq ymm3HLH 0 && true;
mul ymm6HL ymm8HLL ymm3HLL;
split ymm8HHH ymm8HHL ymm8HH 32;
assert true && eq ymm8HHH const 64 0;
assert true && ymm8HHL < const 64 (2**32);
assume eq ymm8HHH 0 && true;
split ymm3HHH ymm3HHL ymm3HH 32;
assert true && eq ymm3HHH const 64 0;
assert true && ymm3HHL < const 64 (2**32);
assume eq ymm3HHH 0 && true;
mul ymm6HH ymm8HHL ymm3HHL;
(* vpmuludq %ymm4,%ymm8,%ymm2 *)
split ymm8LLH ymm8LLL ymm8LL 32;
assert true && eq ymm8LLH const 64 0;
assert true && ymm8LLL < const 64 (2**32);
assume eq ymm8LLH 0 && true;
split ymm4LLH ymm4LLL ymm4LL 32;
assert true && eq ymm4LLH const 64 0;
assert true && ymm4LLL < const 64 (2**32);
assume eq ymm4LLH 0 && true;
mul ymm2LL ymm8LLL ymm4LLL;
split ymm8LHH ymm8LHL ymm8LH 32;
assert true && eq ymm8LHH const 64 0;
assert true && ymm8LHL < const 64 (2**32);
assume eq ymm8LHH 0 && true;
split ymm4LHH ymm4LHL ymm4LH 32;
assert true && eq ymm4LHH const 64 0;
assert true && ymm4LHL < const 64 (2**32);
assume eq ymm4LHH 0 && true;
mul ymm2LH ymm8LHL ymm4LHL;
split ymm8HLH ymm8HLL ymm8HL 32;
assert true && eq ymm8HLH const 64 0;
assert true && ymm8HLL < const 64 (2**32);
assume eq ymm8HLH 0 && true;
split ymm4HLH ymm4HLL ymm4HL 32;
assert true && eq ymm4HLH const 64 0;
assert true && ymm4HLL < const 64 (2**32);
assume eq ymm4HLH 0 && true;
mul ymm2HL ymm8HLL ymm4HLL;
split ymm8HHH ymm8HHL ymm8HH 32;
assert true && eq ymm8HHH const 64 0;
assert true && ymm8HHL < const 64 (2**32);
assume eq ymm8HHH 0 && true;
split ymm4HHH ymm4HHL ymm4HH 32;
assert true && eq ymm4HHH const 64 0;
assert true && ymm4HHL < const 64 (2**32);
assume eq ymm4HHH 0 && true;
mul ymm2HH ymm8HHL ymm4HHL;
(* vpaddq %ymm6,%ymm11,%ymm11 *)
add ymm11HH ymm6HH ymm11HH;
add ymm11HL ymm6HL ymm11HL;
add ymm11LH ymm6LH ymm11LH;
add ymm11LL ymm6LL ymm11LL;
(* vpaddq %ymm2,%ymm12,%ymm12 *)
add ymm12HH ymm2HH ymm12HH;
add ymm12HL ymm2HL ymm12HL;
add ymm12LH ymm2LH ymm12LH;
add ymm12LL ymm2LL ymm12LL;
(* y2dvmovdqa 0x10(%rax),%ymm2                        #! EA = L0x7fffffffdaa0 *)
mov ymm2LL L0x7fffffffdaa0;
mov ymm2LH L0x7fffffffdaa8;
mov ymm2HL L0x7fffffffdab0;
mov ymm2HH L0x7fffffffdab8;
(* vpmuludq %ymm1,%ymm9,%ymm6 *)
split ymm9LLH ymm9LLL ymm9LL 32;
assert true && eq ymm9LLH const 64 0;
assert true && ymm9LLL < const 64 (2**32);
assume eq ymm9LLH 0 && true;
split ymm1LLH ymm1LLL ymm1LL 32;
assert true && eq ymm1LLH const 64 0;
assert true && ymm1LLL < const 64 (2**32);
assume eq ymm1LLH 0 && true;
mul ymm6LL ymm9LLL ymm1LLL;
split ymm9LHH ymm9LHL ymm9LH 32;
assert true && eq ymm9LHH const 64 0;
assert true && ymm9LHL < const 64 (2**32);
assume eq ymm9LHH 0 && true;
split ymm1LHH ymm1LHL ymm1LH 32;
assert true && eq ymm1LHH const 64 0;
assert true && ymm1LHL < const 64 (2**32);
assume eq ymm1LHH 0 && true;
mul ymm6LH ymm9LHL ymm1LHL;
split ymm9HLH ymm9HLL ymm9HL 32;
assert true && eq ymm9HLH const 64 0;
assert true && ymm9HLL < const 64 (2**32);
assume eq ymm9HLH 0 && true;
split ymm1HLH ymm1HLL ymm1HL 32;
assert true && eq ymm1HLH const 64 0;
assert true && ymm1HLL < const 64 (2**32);
assume eq ymm1HLH 0 && true;
mul ymm6HL ymm9HLL ymm1HLL;
split ymm9HHH ymm9HHL ymm9HH 32;
assert true && eq ymm9HHH const 64 0;
assert true && ymm9HHL < const 64 (2**32);
assume eq ymm9HHH 0 && true;
split ymm1HHH ymm1HHL ymm1HH 32;
assert true && eq ymm1HHH const 64 0;
assert true && ymm1HHL < const 64 (2**32);
assume eq ymm1HHH 0 && true;
mul ymm6HH ymm9HHL ymm1HHL;
(* vpmuludq %ymm0,%ymm9,%ymm9 *)
split ymm9LLH ymm9LLL ymm9LL 32;
assert true && eq ymm9LLH const 64 0;
assert true && ymm9LLL < const 64 (2**32);
assume eq ymm9LLH 0 && true;
split ymm0LLH ymm0LLL ymm0LL 32;
assert true && eq ymm0LLH const 64 0;
assert true && ymm0LLL < const 64 (2**32);
assume eq ymm0LLH 0 && true;
mul ymm9LL ymm9LLL ymm0LLL;
split ymm9LHH ymm9LHL ymm9LH 32;
assert true && eq ymm9LHH const 64 0;
assert true && ymm9LHL < const 64 (2**32);
assume eq ymm9LHH 0 && true;
split ymm0LHH ymm0LHL ymm0LH 32;
assert true && eq ymm0LHH const 64 0;
assert true && ymm0LHL < const 64 (2**32);
assume eq ymm0LHH 0 && true;
mul ymm9LH ymm9LHL ymm0LHL;
split ymm9HLH ymm9HLL ymm9HL 32;
assert true && eq ymm9HLH const 64 0;
assert true && ymm9HLL < const 64 (2**32);
assume eq ymm9HLH 0 && true;
split ymm0HLH ymm0HLL ymm0HL 32;
assert true && eq ymm0HLH const 64 0;
assert true && ymm0HLL < const 64 (2**32);
assume eq ymm0HLH 0 && true;
mul ymm9HL ymm9HLL ymm0HLL;
split ymm9HHH ymm9HHL ymm9HH 32;
assert true && eq ymm9HHH const 64 0;
assert true && ymm9HHL < const 64 (2**32);
assume eq ymm9HHH 0 && true;
split ymm0HHH ymm0HHL ymm0HH 32;
assert true && eq ymm0HHH const 64 0;
assert true && ymm0HHL < const 64 (2**32);
assume eq ymm0HHH 0 && true;
mul ymm9HH ymm9HHL ymm0HHL;
(* vpaddq %ymm6,%ymm14,%ymm14 *)
add ymm14HH ymm6HH ymm14HH;
add ymm14HL ymm6HL ymm14HL;
add ymm14LH ymm6LH ymm14LH;
add ymm14LL ymm6LL ymm14LL;
(* vpaddq %ymm9,%ymm13,%ymm13 *)
add ymm13HH ymm9HH ymm13HH;
add ymm13HL ymm9HL ymm13HL;
add ymm13LH ymm9LH ymm13LH;
add ymm13LL ymm9LL ymm13LL;
(* vpmuludq %ymm1,%ymm2,%ymm6 *)
split ymm2LLH ymm2LLL ymm2LL 32;
assert true && eq ymm2LLH const 64 0;
assert true && ymm2LLL < const 64 (2**32);
assume eq ymm2LLH 0 && true;
split ymm1LLH ymm1LLL ymm1LL 32;
assert true && eq ymm1LLH const 64 0;
assert true && ymm1LLL < const 64 (2**32);
assume eq ymm1LLH 0 && true;
mul ymm6LL ymm2LLL ymm1LLL;
split ymm2LHH ymm2LHL ymm2LH 32;
assert true && eq ymm2LHH const 64 0;
assert true && ymm2LHL < const 64 (2**32);
assume eq ymm2LHH 0 && true;
split ymm1LHH ymm1LHL ymm1LH 32;
assert true && eq ymm1LHH const 64 0;
assert true && ymm1LHL < const 64 (2**32);
assume eq ymm1LHH 0 && true;
mul ymm6LH ymm2LHL ymm1LHL;
split ymm2HLH ymm2HLL ymm2HL 32;
assert true && eq ymm2HLH const 64 0;
assert true && ymm2HLL < const 64 (2**32);
assume eq ymm2HLH 0 && true;
split ymm1HLH ymm1HLL ymm1HL 32;
assert true && eq ymm1HLH const 64 0;
assert true && ymm1HLL < const 64 (2**32);
assume eq ymm1HLH 0 && true;
mul ymm6HL ymm2HLL ymm1HLL;
split ymm2HHH ymm2HHL ymm2HH 32;
assert true && eq ymm2HHH const 64 0;
assert true && ymm2HHL < const 64 (2**32);
assume eq ymm2HHH 0 && true;
split ymm1HHH ymm1HHL ymm1HH 32;
assert true && eq ymm1HHH const 64 0;
assert true && ymm1HHL < const 64 (2**32);
assume eq ymm1HHH 0 && true;
mul ymm6HH ymm2HHL ymm1HHL;
(* vpmuludq %ymm0,%ymm2,%ymm2 *)
split ymm2LLH ymm2LLL ymm2LL 32;
assert true && eq ymm2LLH const 64 0;
assert true && ymm2LLL < const 64 (2**32);
assume eq ymm2LLH 0 && true;
split ymm0LLH ymm0LLL ymm0LL 32;
assert true && eq ymm0LLH const 64 0;
assert true && ymm0LLL < const 64 (2**32);
assume eq ymm0LLH 0 && true;
mul ymm2LL ymm2LLL ymm0LLL;
split ymm2LHH ymm2LHL ymm2LH 32;
assert true && eq ymm2LHH const 64 0;
assert true && ymm2LHL < const 64 (2**32);
assume eq ymm2LHH 0 && true;
split ymm0LHH ymm0LHL ymm0LH 32;
assert true && eq ymm0LHH const 64 0;
assert true && ymm0LHL < const 64 (2**32);
assume eq ymm0LHH 0 && true;
mul ymm2LH ymm2LHL ymm0LHL;
split ymm2HLH ymm2HLL ymm2HL 32;
assert true && eq ymm2HLH const 64 0;
assert true && ymm2HLL < const 64 (2**32);
assume eq ymm2HLH 0 && true;
split ymm0HLH ymm0HLL ymm0HL 32;
assert true && eq ymm0HLH const 64 0;
assert true && ymm0HLL < const 64 (2**32);
assume eq ymm0HLH 0 && true;
mul ymm2HL ymm2HLL ymm0HLL;
split ymm2HHH ymm2HHL ymm2HH 32;
assert true && eq ymm2HHH const 64 0;
assert true && ymm2HHL < const 64 (2**32);
assume eq ymm2HHH 0 && true;
split ymm0HHH ymm0HHL ymm0HH 32;
assert true && eq ymm0HHH const 64 0;
assert true && ymm0HHL < const 64 (2**32);
assume eq ymm0HHH 0 && true;
mul ymm2HH ymm2HHL ymm0HHL;
(* vpaddq %ymm6,%ymm15,%ymm15 *)
add ymm15HH ymm6HH ymm15HH;
add ymm15HL ymm6HL ymm15HL;
add ymm15LH ymm6LH ymm15LH;
add ymm15LL ymm6LL ymm15LL;
(* vpaddq %ymm2,%ymm14,%ymm14 *)
add ymm14HH ymm2HH ymm14HH;
add ymm14HL ymm2HL ymm14HL;
add ymm14LH ymm2LH ymm14LH;
add ymm14LL ymm2LL ymm14LL;
(* vpmuludq %ymm3,%ymm10,%ymm6 *)
split ymm10LLH ymm10LLL ymm10LL 32;
assert true && eq ymm10LLH const 64 0;
assert true && ymm10LLL < const 64 (2**32);
assume eq ymm10LLH 0 && true;
split ymm3LLH ymm3LLL ymm3LL 32;
assert true && eq ymm3LLH const 64 0;
assert true && ymm3LLL < const 64 (2**32);
assume eq ymm3LLH 0 && true;
mul ymm6LL ymm10LLL ymm3LLL;
split ymm10LHH ymm10LHL ymm10LH 32;
assert true && eq ymm10LHH const 64 0;
assert true && ymm10LHL < const 64 (2**32);
assume eq ymm10LHH 0 && true;
split ymm3LHH ymm3LHL ymm3LH 32;
assert true && eq ymm3LHH const 64 0;
assert true && ymm3LHL < const 64 (2**32);
assume eq ymm3LHH 0 && true;
mul ymm6LH ymm10LHL ymm3LHL;
split ymm10HLH ymm10HLL ymm10HL 32;
assert true && eq ymm10HLH const 64 0;
assert true && ymm10HLL < const 64 (2**32);
assume eq ymm10HLH 0 && true;
split ymm3HLH ymm3HLL ymm3HL 32;
assert true && eq ymm3HLH const 64 0;
assert true && ymm3HLL < const 64 (2**32);
assume eq ymm3HLH 0 && true;
mul ymm6HL ymm10HLL ymm3HLL;
split ymm10HHH ymm10HHL ymm10HH 32;
assert true && eq ymm10HHH const 64 0;
assert true && ymm10HHL < const 64 (2**32);
assume eq ymm10HHH 0 && true;
split ymm3HHH ymm3HHL ymm3HH 32;
assert true && eq ymm3HHH const 64 0;
assert true && ymm3HHL < const 64 (2**32);
assume eq ymm3HHH 0 && true;
mul ymm6HH ymm10HHL ymm3HHL;
(* vpmuludq %ymm4,%ymm10,%ymm2 *)
split ymm10LLH ymm10LLL ymm10LL 32;
assert true && eq ymm10LLH const 64 0;
assert true && ymm10LLL < const 64 (2**32);
assume eq ymm10LLH 0 && true;
split ymm4LLH ymm4LLL ymm4LL 32;
assert true && eq ymm4LLH const 64 0;
assert true && ymm4LLL < const 64 (2**32);
assume eq ymm4LLH 0 && true;
mul ymm2LL ymm10LLL ymm4LLL;
split ymm10LHH ymm10LHL ymm10LH 32;
assert true && eq ymm10LHH const 64 0;
assert true && ymm10LHL < const 64 (2**32);
assume eq ymm10LHH 0 && true;
split ymm4LHH ymm4LHL ymm4LH 32;
assert true && eq ymm4LHH const 64 0;
assert true && ymm4LHL < const 64 (2**32);
assume eq ymm4LHH 0 && true;
mul ymm2LH ymm10LHL ymm4LHL;
split ymm10HLH ymm10HLL ymm10HL 32;
assert true && eq ymm10HLH const 64 0;
assert true && ymm10HLL < const 64 (2**32);
assume eq ymm10HLH 0 && true;
split ymm4HLH ymm4HLL ymm4HL 32;
assert true && eq ymm4HLH const 64 0;
assert true && ymm4HLL < const 64 (2**32);
assume eq ymm4HLH 0 && true;
mul ymm2HL ymm10HLL ymm4HLL;
split ymm10HHH ymm10HHL ymm10HH 32;
assert true && eq ymm10HHH const 64 0;
assert true && ymm10HHL < const 64 (2**32);
assume eq ymm10HHH 0 && true;
split ymm4HHH ymm4HHL ymm4HH 32;
assert true && eq ymm4HHH const 64 0;
assert true && ymm4HHL < const 64 (2**32);
assume eq ymm4HHH 0 && true;
mul ymm2HH ymm10HHL ymm4HHL;
(* vpaddq %ymm6,%ymm12,%ymm12 *)
add ymm12HH ymm6HH ymm12HH;
add ymm12HL ymm6HL ymm12HL;
add ymm12LH ymm6LH ymm12LH;
add ymm12LL ymm6LL ymm12LL;
(* vpaddq %ymm2,%ymm13,%ymm13 *)
add ymm13HH ymm2HH ymm13HH;
add ymm13HL ymm2HL ymm13HL;
add ymm13LH ymm2LH ymm13LH;
add ymm13LL ymm2LL ymm13LL;
(* vpmuludq %ymm3,%ymm5,%ymm3 *)
split ymm5LLH ymm5LLL ymm5LL 32;
assert true && eq ymm5LLH const 64 0;
assert true && ymm5LLL < const 64 (2**32);
assume eq ymm5LLH 0 && true;
split ymm3LLH ymm3LLL ymm3LL 32;
assert true && eq ymm3LLH const 64 0;
assert true && ymm3LLL < const 64 (2**32);
assume eq ymm3LLH 0 && true;
mul ymm3LL ymm5LLL ymm3LLL;
split ymm5LHH ymm5LHL ymm5LH 32;
assert true && eq ymm5LHH const 64 0;
assert true && ymm5LHL < const 64 (2**32);
assume eq ymm5LHH 0 && true;
split ymm3LHH ymm3LHL ymm3LH 32;
assert true && eq ymm3LHH const 64 0;
assert true && ymm3LHL < const 64 (2**32);
assume eq ymm3LHH 0 && true;
mul ymm3LH ymm5LHL ymm3LHL;
split ymm5HLH ymm5HLL ymm5HL 32;
assert true && eq ymm5HLH const 64 0;
assert true && ymm5HLL < const 64 (2**32);
assume eq ymm5HLH 0 && true;
split ymm3HLH ymm3HLL ymm3HL 32;
assert true && eq ymm3HLH const 64 0;
assert true && ymm3HLL < const 64 (2**32);
assume eq ymm3HLH 0 && true;
mul ymm3HL ymm5HLL ymm3HLL;
split ymm5HHH ymm5HHL ymm5HH 32;
assert true && eq ymm5HHH const 64 0;
assert true && ymm5HHL < const 64 (2**32);
assume eq ymm5HHH 0 && true;
split ymm3HHH ymm3HHL ymm3HH 32;
assert true && eq ymm3HHH const 64 0;
assert true && ymm3HHL < const 64 (2**32);
assume eq ymm3HHH 0 && true;
mul ymm3HH ymm5HHL ymm3HHL;
(* vpmuludq %ymm4,%ymm5,%ymm4 *)
split ymm5LLH ymm5LLL ymm5LL 32;
assert true && eq ymm5LLH const 64 0;
assert true && ymm5LLL < const 64 (2**32);
assume eq ymm5LLH 0 && true;
split ymm4LLH ymm4LLL ymm4LL 32;
assert true && eq ymm4LLH const 64 0;
assert true && ymm4LLL < const 64 (2**32);
assume eq ymm4LLH 0 && true;
mul ymm4LL ymm5LLL ymm4LLL;
split ymm5LHH ymm5LHL ymm5LH 32;
assert true && eq ymm5LHH const 64 0;
assert true && ymm5LHL < const 64 (2**32);
assume eq ymm5LHH 0 && true;
split ymm4LHH ymm4LHL ymm4LH 32;
assert true && eq ymm4LHH const 64 0;
assert true && ymm4LHL < const 64 (2**32);
assume eq ymm4LHH 0 && true;
mul ymm4LH ymm5LHL ymm4LHL;
split ymm5HLH ymm5HLL ymm5HL 32;
assert true && eq ymm5HLH const 64 0;
assert true && ymm5HLL < const 64 (2**32);
assume eq ymm5HLH 0 && true;
split ymm4HLH ymm4HLL ymm4HL 32;
assert true && eq ymm4HLH const 64 0;
assert true && ymm4HLL < const 64 (2**32);
assume eq ymm4HLH 0 && true;
mul ymm4HL ymm5HLL ymm4HLL;
split ymm5HHH ymm5HHL ymm5HH 32;
assert true && eq ymm5HHH const 64 0;
assert true && ymm5HHL < const 64 (2**32);
assume eq ymm5HHH 0 && true;
split ymm4HHH ymm4HHL ymm4HH 32;
assert true && eq ymm4HHH const 64 0;
assert true && ymm4HHL < const 64 (2**32);
assume eq ymm4HHH 0 && true;
mul ymm4HH ymm5HHL ymm4HHL;
(* vpaddq %ymm3,%ymm13,%ymm2 *)
add ymm2HH ymm3HH ymm13HH;
add ymm2HL ymm3HL ymm13HL;
add ymm2LH ymm3LH ymm13LH;
add ymm2LL ymm3LL ymm13LL;
(* vpaddq %ymm4,%ymm14,%ymm3 *)
add ymm3HH ymm4HH ymm14HH;
add ymm3HL ymm4HL ymm14HL;
add ymm3LH ymm4LH ymm14LH;
add ymm3LL ymm4LL ymm14LL;
(* vpmuludq2 0x50(%rax),%ymm0,%ymm4                 #! EA = L0x7fffffffdae0 *)
split ymm0LLH ymm0LLL ymm0LL 32;
assert true && eq ymm0LLH const 64 0;
assert true && ymm0LLL < const 64 (2**32);
assume eq ymm0LLH 0 && true;
split mllh mlll L0x7fffffffdae0 32;
assert true && eq mllh const 64 0;
assert true && mlll < const 64 (2**32);
assume eq mllh 0 && true;
mul ymm4LL ymm0LLL mlll;
split ymm0LHH ymm0LHL ymm0LH 32;
assert true && eq ymm0LHH const 64 0;
assert true && ymm0LHL < const 64 (2**32);
assume eq ymm0LHH 0 && true;
split mlhh mlhl L0x7fffffffdae8 32;
assert true && eq mlhh const 64 0;
assert true && mlhl < const 64 (2**32);
assume eq mlhh 0 && true;
mul ymm4LH ymm0LHL mlhl;
split ymm0HLH ymm0HLL ymm0HL 32;
assert true && eq ymm0HLH const 64 0;
assert true && ymm0HLL < const 64 (2**32);
assume eq ymm0HLH 0 && true;
split mhlh mhll L0x7fffffffdaf0 32;
assert true && eq mhlh const 64 0;
assert true && mhll < const 64 (2**32);
assume eq mhlh 0 && true;
mul ymm4HL ymm0HLL mhll;
split ymm0HHH ymm0HHL ymm0HH 32;
assert true && eq ymm0HHH const 64 0;
assert true && ymm0HHL < const 64 (2**32);
assume eq ymm0HHH 0 && true;
split mhhh mhhl L0x7fffffffdaf8 32;
assert true && eq mhhh const 64 0;
assert true && mhhl < const 64 (2**32);
assume eq mhhh 0 && true;
mul ymm4HH ymm0HHL mhhl;
(* vpmuludq %ymm1,%ymm5,%ymm0 *)
split ymm5LLH ymm5LLL ymm5LL 32;
assert true && eq ymm5LLH const 64 0;
assert true && ymm5LLL < const 64 (2**32);
assume eq ymm5LLH 0 && true;
split ymm1LLH ymm1LLL ymm1LL 32;
assert true && eq ymm1LLH const 64 0;
assert true && ymm1LLL < const 64 (2**32);
assume eq ymm1LLH 0 && true;
mul ymm0LL ymm5LLL ymm1LLL;
split ymm5LHH ymm5LHL ymm5LH 32;
assert true && eq ymm5LHH const 64 0;
assert true && ymm5LHL < const 64 (2**32);
assume eq ymm5LHH 0 && true;
split ymm1LHH ymm1LHL ymm1LH 32;
assert true && eq ymm1LHH const 64 0;
assert true && ymm1LHL < const 64 (2**32);
assume eq ymm1LHH 0 && true;
mul ymm0LH ymm5LHL ymm1LHL;
split ymm5HLH ymm5HLL ymm5HL 32;
assert true && eq ymm5HLH const 64 0;
assert true && ymm5HLL < const 64 (2**32);
assume eq ymm5HLH 0 && true;
split ymm1HLH ymm1HLL ymm1HL 32;
assert true && eq ymm1HLH const 64 0;
assert true && ymm1HLL < const 64 (2**32);
assume eq ymm1HLH 0 && true;
mul ymm0HL ymm5HLL ymm1HLL;
split ymm5HHH ymm5HHL ymm5HH 32;
assert true && eq ymm5HHH const 64 0;
assert true && ymm5HHL < const 64 (2**32);
assume eq ymm5HHH 0 && true;
split ymm1HHH ymm1HHL ymm1HH 32;
assert true && eq ymm1HHH const 64 0;
assert true && ymm1HHL < const 64 (2**32);
assume eq ymm1HHH 0 && true;
mul ymm0HH ymm5HHL ymm1HHL;
(* y5dvmovdqa 0x40(%rcx),%ymm5                        #! EA = L0x404580 *)
mov ymm5LL L0x404580;
mov ymm5LH L0x404588;
mov ymm5HL L0x404590;
mov ymm5HH L0x404598;
(* vpaddq %ymm4,%ymm15,%ymm4 *)
add ymm4HH ymm4HH ymm15HH;
add ymm4HL ymm4HL ymm15HL;
add ymm4LH ymm4LH ymm15LH;
add ymm4LL ymm4LL ymm15LL;
(* vpaddq %ymm0,%ymm11,%ymm0 *)
add ymm0HH ymm0HH ymm11HH;
add ymm0HL ymm0HL ymm11HL;
add ymm0LH ymm0LH ymm11LH;
add ymm0LL ymm0LL ymm11LL;

(* lazy reduction *)

(* vpsrlq $0x1a,%ymm3,%ymm14 *)
(* vpand  %ymm5,%ymm3,%ymm3 *)
split ymm14LL ymm3LL ymm3LL 26;
split ymm14LH ymm3LH ymm3LH 26;
split ymm14HL ymm3HL ymm3HL 26;
split ymm14HH ymm3HH ymm3HH 26;
(* vpaddq %ymm14,%ymm4,%ymm4 *)
add ymm4HH ymm14HH ymm4HH;
add ymm4HL ymm14HL ymm4HL;
add ymm4LH ymm14LH ymm4LH;
add ymm4LL ymm14LL ymm4LL;
(* vpsrlq $0x1a,%ymm0,%ymm11 *)
(* vpand  %ymm5,%ymm0,%ymm0 *)
split ymm11LL ymm0LL ymm0LL 26;
split ymm11LH ymm0LH ymm0LH 26;
split ymm11HL ymm0HL ymm0HL 26;
split ymm11HH ymm0HH ymm0HH 26;
(* vpaddq %ymm11,%ymm12,%ymm1 *)
add ymm1HH ymm11HH ymm12HH;
add ymm1HL ymm11HL ymm12HL;
add ymm1LH ymm11LH ymm12LH;
add ymm1LL ymm11LL ymm12LL;
(* vpsrlq $0x1a,%ymm4,%ymm15 *)
(* vpand  %ymm5,%ymm4,%ymm4 *)
split ymm15LL ymm4LL ymm4LL 26;
split ymm15LH ymm4LH ymm4LH 26;
split ymm15HL ymm4HL ymm4HL 26;
split ymm15HH ymm4HH ymm4HH 26;
(* vpsrlq $0x1a,%ymm1,%ymm12 *)
(* vpand  %ymm5,%ymm1,%ymm1 *)
split ymm12LL ymm1LL ymm1LL 26;
split ymm12LH ymm1LH ymm1LH 26;
split ymm12HL ymm1HL ymm1HL 26;
split ymm12HH ymm1HH ymm1HH 26;
(* vpaddq %ymm12,%ymm2,%ymm2 *)
add ymm2HH ymm12HH ymm2HH;
add ymm2HL ymm12HL ymm2HL;
add ymm2LH ymm12LH ymm2LH;
add ymm2LL ymm12LL ymm2LL;
(* vpaddq %ymm15,%ymm0,%ymm0 *)
add ymm0HH ymm15HH ymm0HH;
add ymm0HL ymm15HL ymm0HL;
add ymm0LH ymm15LH ymm0LH;
add ymm0LL ymm15LL ymm0LL;
(* vpsllq $0x2,%ymm15,%ymm15 *)
shl ymm15LL ymm15LL 2;
shl ymm15LH ymm15LH 2;
shl ymm15HL ymm15HL 2;
shl ymm15HH ymm15HH 2;
(* vpaddq %ymm15,%ymm0,%ymm0 *)
add ymm0HH ymm15HH ymm0HH;
add ymm0HL ymm15HL ymm0HL;
add ymm0LH ymm15LH ymm0LH;
add ymm0LL ymm15LL ymm0LL;
(* vpsrlq $0x1a,%ymm2,%ymm13 *)
(* vpand  %ymm5,%ymm2,%ymm2 *)
split ymm13LL ymm2LL ymm2LL 26;
split ymm13LH ymm2LH ymm2LH 26;
split ymm13HL ymm2HL ymm2HL 26;
split ymm13HH ymm2HH ymm2HH 26;
(* vpaddq %ymm13,%ymm3,%ymm3 *)
add ymm3HH ymm13HH ymm3HH;
add ymm3HL ymm13HL ymm3HL;
add ymm3LH ymm13LH ymm3LH;
add ymm3LL ymm13LL ymm3LL;
(* vpsrlq $0x1a,%ymm0,%ymm11 *)
(* vpand  %ymm5,%ymm0,%ymm0 *)
split ymm11LL ymm0LL ymm0LL 26;
split ymm11LH ymm0LH ymm0LH 26;
split ymm11HL ymm0HL ymm0HL 26;
split ymm11HH ymm0HH ymm0HH 26;
(* vpaddq %ymm11,%ymm1,%ymm1 *)
add ymm1HH ymm11HH ymm1HH;
add ymm1HL ymm11HL ymm1HL;
add ymm1LH ymm11LH ymm1LH;
add ymm1LL ymm11LL ymm1LL;
(* vpsrlq $0x1a,%ymm3,%ymm14 *)
(* vpand  %ymm5,%ymm3,%ymm3 *)
split ymm14LL ymm3LL ymm3LL 26;
split ymm14LH ymm3LH ymm3LH 26;
split ymm14HL ymm3HL ymm3HL 26;
split ymm14HH ymm3HH ymm3HH 26;
(* vpaddq %ymm14,%ymm4,%ymm4 *)
add ymm4HH ymm14HH ymm4HH;
add ymm4HL ymm14HL ymm4HL;
add ymm4LH ymm14LH ymm4LH;
add ymm4LL ymm14LL ymm4LL;

(* loop ends *)

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
