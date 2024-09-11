(* padbit is still unspecified *)

proc main (
uint64[16] %inp, uint64[16] %INP, uint64[8] %padbit,
uint64[8] %h0, uint64[8] %h1, uint64[8] %h2, uint64[8] %h3, uint64[8] %h4,
uint64[8] %t0, uint64[8] %t1, uint64[8] %t2, uint64[8] %t3, uint64[8] %t4,
uint64[8] %r0, uint64[8] %r1, uint64[8] %r2, uint64[8] %r3, uint64[8] %r4,
uint64[8] %s0, uint64[8] %s1, uint64[8] %s2, uint64[8] %s3, uint64[8] %s4,
uint64[8] %H0, uint64[8] %H1, uint64[8] %H2, uint64[8] %H3, uint64[8] %H4,
uint64[8] %T0, uint64[8] %T1, uint64[8] %T2, uint64[8] %T3, uint64[8] %T4,
uint64[8] %R0, uint64[8] %R1, uint64[8] %R2, uint64[8] %R3, uint64[8] %R4,
uint64[8] %S0, uint64[8] %S1, uint64[8] %S2, uint64[8] %S3, uint64[8] %S4
) =
{
  limbs 64 [ %inp[0], %inp[1]]=limbs 26 [%t0[0],%t1[0],%t2[0],%t3[0],%t4[0]] /\
  limbs 64 [ %inp[8], %inp[9]]=limbs 26 [%t0[1],%t1[1],%t2[1],%t3[1],%t4[1]] /\
  limbs 64 [ %inp[2], %inp[3]]=limbs 26 [%t0[2],%t1[2],%t2[2],%t3[2],%t4[2]] /\
  limbs 64 [%inp[10],%inp[11]]=limbs 26 [%t0[3],%t1[3],%t2[3],%t3[3],%t4[3]] /\
  limbs 64 [ %inp[4], %inp[5]]=limbs 26 [%t0[4],%t1[4],%t2[4],%t3[4],%t4[4]] /\
  limbs 64 [%inp[12],%inp[13]]=limbs 26 [%t0[5],%t1[5],%t2[5],%t3[5],%t4[5]] /\
  limbs 64 [ %inp[6], %inp[7]]=limbs 26 [%t0[6],%t1[6],%t2[6],%t3[6],%t4[6]] /\
  limbs 64 [%inp[14],%inp[15]]=limbs 26 [%t0[7],%t1[7],%t2[7],%t3[7],%t4[7]] /\
  %s1 = %r1 * [5,5,5,5,5,5,5,5] /\ %s2 = %r2 * [5,5,5,5,5,5,5,5] /\
  %s3 = %r3 * [5,5,5,5,5,5,5,5] /\ %s4 = %r4 * [5,5,5,5,5,5,5,5] /\
  %padbit = [0, 0, 0, 0, 0, 0, 0, 0]
&&
  %s1 = %r1 * [5@64, 5@64, 5@64, 5@64, 5@64, 5@64, 5@64, 5@64] /\
  %s2 = %r2 * [5@64, 5@64, 5@64, 5@64, 5@64, 5@64, 5@64, 5@64] /\
  %s3 = %r3 * [5@64, 5@64, 5@64, 5@64, 5@64, 5@64, 5@64, 5@64] /\
  %s4 = %r4 * [5@64, 5@64, 5@64, 5@64, 5@64, 5@64, 5@64, 5@64] /\
  %h0 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64,
          (2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %h1 <u [(2**27)@64,(2**27)@64,(2**27)@64,(2**27)@64,
          (2**27)@64,(2**27)@64,(2**27)@64,(2**27)@64] /\
  %h2 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64,
          (2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %h3 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64,
          (2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %h4 <u [(2**27)@64,(2**27)@64,(2**27)@64,(2**27)@64,
          (2**27)@64,(2**27)@64,(2**27)@64,(2**27)@64] /\
  %t0 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64,
          (2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %t1 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64,
          (2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %t2 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64,
          (2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %t3 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64,
          (2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %t4 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64,
          (2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %r0 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64,
          (2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %r1 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64,
          (2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %r2 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64,
          (2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %r3 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64,
          (2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %r4 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64,
          (2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
#  %padbit <u [2@64,2@64,2@64,2@64,2@64,2@64,2@64,2@64]
  %padbit = [0@64,0@64,0@64,0@64,0@64,0@64,0@64,0@64]
}

(* before loop *)

(* H *)
mov %zmm0 %h0; mov %zmm1 %h1;
add %zmm2 %h2 %t2;
mov %zmm3 %h3; mov %zmm4 %h4;

(* T *)
mov %zmm7 %t0; mov %zmm8 %t1; mov %zmm10 %t3; mov %zmm6 %t4;

(* R *)
mov %zmm16 %r0; mov %zmm17 %r1; mov %zmm18 %r2; mov %zmm19 %r3; mov %zmm20 %r4;

(* S *)
mov %zmm21 %s1; mov %zmm22 %s2; mov %zmm23 %s3; mov %zmm24 %s4;

(* padbits *)
mov %zmm30 %padbit;

(* masks *)
broadcast %zmm5 8 [0x3ffffff@uint64];

mov [L0x7fffffffc780,L0x7fffffffc788,L0x7fffffffc790,L0x7fffffffc798,
     L0x7fffffffc7a0,L0x7fffffffc7a8,L0x7fffffffc7b0,L0x7fffffffc7b8,
     L0x7fffffffc7c0,L0x7fffffffc7c8,L0x7fffffffc7d0,L0x7fffffffc7d8,
     L0x7fffffffc7e0,L0x7fffffffc7e8,L0x7fffffffc7f0,L0x7fffffffc7f8]
    %INP;

(* start loop *)

(* 0x0000555555557560 in poly1305_blocks_avx512 () *)
#0x0000555555557560 in poly1305_blocks_avx512 ();
(* #jmp    0x555555557560 <poly1305_blocks_avx512+2880>#! PC = 0x93824992245067 *)
#jmp    0x555555557560 <poly1305_blocks_avx512+2880>#! 0x93824992245067 = 0x93824992245067;
(* vpmuludq %zmm2,%zmm17,%zmm14                    #! PC = 0x93824992245088 *)
mul %zmm14 %zmm17 %zmm2;
(* vpaddq %zmm0,%zmm7,%zmm0                        #! PC = 0x93824992245094 *)
add %zmm0 %zmm7 %zmm0;
(* vpmuludq %zmm2,%zmm18,%zmm15                    #! PC = 0x93824992245100 *)
mul %zmm15 %zmm18 %zmm2;
(* vpandq %zmm5,%zmm8,%zmm8                        #! PC = 0x93824992245106 *)
(* NOTE: assume zmm8 (T1) has been masked *)
(* and %zmm8@uint64[8] %zmm8 %zmm5; *)
(* vpmuludq %zmm2,%zmm23,%zmm11                    #! PC = 0x93824992245112 *)
mul %zmm11 %zmm23 %zmm2;
(* vpandq %zmm5,%zmm10,%zmm10                      #! PC = 0x93824992245118 *)
(* NOTE: assume zmm10 (T3) has been masked  *)
(* and %zmm10@uint64[8] %zmm10 %zmm5; *)
(* vpmuludq %zmm2,%zmm24,%zmm12                    #! PC = 0x93824992245124 *)
mul %zmm12 %zmm24 %zmm2;

ghost %zmm6o@uint64[8]: %zmm6o = %zmm6 && %zmm6o = %zmm6;
(* NOTE:  zmm30 contains padbit = 0 *)
(* vporq  %zmm30,%zmm6,%zmm6                       #! PC = 0x93824992245130 *)
or %zmm6@uint64[8] %zmm6 %zmm30;
assert true && %zmm6 = %zmm6o;
assume %zmm6 = %zmm6o && true;

(* vpmuludq %zmm2,%zmm16,%zmm13                    #! PC = 0x93824992245136 *)
mul %zmm13 %zmm16 %zmm2;
(* vpaddq %zmm1,%zmm8,%zmm1                        #! PC = 0x93824992245142 *)
add %zmm1 %zmm8 %zmm1;
(* vpaddq %zmm3,%zmm10,%zmm3                       #! PC = 0x93824992245148 *)
add %zmm3 %zmm10 %zmm3;
(* vpaddq %zmm4,%zmm6,%zmm4                        #! PC = 0x93824992245154 *)
add %zmm4 %zmm6 %zmm4;
(* vmovdqu64 (%rsi),%zmm10                         #! EA = L0x7fffffffc780; Value = 0x0000000000000000; PC = 0x93824992245160 *)
mov %zmm10 [L0x7fffffffc780,L0x7fffffffc788,L0x7fffffffc790,L0x7fffffffc798,L0x7fffffffc7a0,L0x7fffffffc7a8,L0x7fffffffc7b0,L0x7fffffffc7b8];
(* vmovdqu64 0x40(%rsi),%zmm6                      #! EA = L0x7fffffffc7c0; Value = 0x0000000000000000; PC = 0x93824992245166 *)
mov %zmm6 [L0x7fffffffc7c0,L0x7fffffffc7c8,L0x7fffffffc7d0,L0x7fffffffc7d8,L0x7fffffffc7e0,L0x7fffffffc7e8,L0x7fffffffc7f0,L0x7fffffffc7f8];
(* #lea    0x80(%rsi),%rsi                          #! PC = 0x93824992245173 *)
#lea    0x80%%EA,%rsi                          #! 0x93824992245173 = 0x93824992245173;
(* vpmuludq %zmm0,%zmm19,%zmm28                    #! PC = 0x93824992245180 *)
mul %zmm28 %zmm19 %zmm0;
(* vpmuludq %zmm0,%zmm20,%zmm29                    #! PC = 0x93824992245186 *)
mul %zmm29 %zmm20 %zmm0;
(* vpmuludq %zmm0,%zmm16,%zmm25                    #! PC = 0x93824992245192 *)
mul %zmm25 %zmm16 %zmm0;
(* vpmuludq %zmm0,%zmm17,%zmm26                    #! PC = 0x93824992245198 *)
mul %zmm26 %zmm17 %zmm0;
(* vpaddq %zmm28,%zmm14,%zmm14                     #! PC = 0x93824992245204 *)
add %zmm14 %zmm14 %zmm28;
(* vpaddq %zmm29,%zmm15,%zmm15                     #! PC = 0x93824992245210 *)
add %zmm15 %zmm15 %zmm29;
(* vpaddq %zmm25,%zmm11,%zmm11                     #! PC = 0x93824992245216 *)
add %zmm11 %zmm11 %zmm25;
(* vpaddq %zmm26,%zmm12,%zmm12                     #! PC = 0x93824992245222 *)
add %zmm12 %zmm12 %zmm26;
(* vpmuludq %zmm1,%zmm18,%zmm28                    #! PC = 0x93824992245228 *)
mul %zmm28 %zmm18 %zmm1;
(* vpmuludq %zmm1,%zmm19,%zmm29                    #! PC = 0x93824992245234 *)
mul %zmm29 %zmm19 %zmm1;
(* vpmuludq %zmm1,%zmm24,%zmm25                    #! PC = 0x93824992245240 *)
mul %zmm25 %zmm24 %zmm1;
(* vpmuludq %zmm0,%zmm18,%zmm27                    #! PC = 0x93824992245246 *)
mul %zmm27 %zmm18 %zmm0;
(* vpaddq %zmm28,%zmm14,%zmm14                     #! PC = 0x93824992245252 *)
add %zmm14 %zmm14 %zmm28;
(* vpaddq %zmm29,%zmm15,%zmm15                     #! PC = 0x93824992245258 *)
add %zmm15 %zmm15 %zmm29;
(* vpaddq %zmm25,%zmm11,%zmm11                     #! PC = 0x93824992245264 *)
add %zmm11 %zmm11 %zmm25;
(* vpaddq %zmm27,%zmm13,%zmm13                     #! PC = 0x93824992245270 *)
add %zmm13 %zmm13 %zmm27;
(* vpunpcklqdq %zmm6,%zmm10,%zmm7                  #! PC = 0x93824992245276 *)
mov %zmm7 [%zmm10[0],%zmm6[0],%zmm10[2],%zmm6[2],%zmm10[4],%zmm6[4],%zmm10[6],%zmm6[6]];
(* vpunpckhqdq %zmm6,%zmm10,%zmm6                  #! PC = 0x93824992245282 *)
mov %zmm6 [%zmm10[1],%zmm6[1],%zmm10[3],%zmm6[3],%zmm10[5],%zmm6[5],%zmm10[7],%zmm6[7]];
(* vpmuludq %zmm3,%zmm16,%zmm28                    #! PC = 0x93824992245288 *)
mul %zmm28 %zmm16 %zmm3;
(* vpmuludq %zmm3,%zmm17,%zmm29                    #! PC = 0x93824992245294 *)
mul %zmm29 %zmm17 %zmm3;
(* vpmuludq %zmm1,%zmm16,%zmm26                    #! PC = 0x93824992245300 *)
mul %zmm26 %zmm16 %zmm1;
(* vpmuludq %zmm1,%zmm17,%zmm27                    #! PC = 0x93824992245306 *)
mul %zmm27 %zmm17 %zmm1;
(* vpaddq %zmm28,%zmm14,%zmm14                     #! PC = 0x93824992245312 *)
add %zmm14 %zmm14 %zmm28;
(* vpaddq %zmm29,%zmm15,%zmm15                     #! PC = 0x93824992245318 *)
add %zmm15 %zmm15 %zmm29;
(* vpaddq %zmm26,%zmm12,%zmm12                     #! PC = 0x93824992245324 *)
add %zmm12 %zmm12 %zmm26;
(* vpaddq %zmm27,%zmm13,%zmm13                     #! PC = 0x93824992245330 *)
add %zmm13 %zmm13 %zmm27;
(* vpmuludq %zmm4,%zmm24,%zmm28                    #! PC = 0x93824992245336 *)
mul %zmm28 %zmm24 %zmm4;
(* vpmuludq %zmm4,%zmm16,%zmm29                    #! PC = 0x93824992245342 *)
mul %zmm29 %zmm16 %zmm4;
(* vpmuludq %zmm3,%zmm22,%zmm25                    #! PC = 0x93824992245348 *)
mul %zmm25 %zmm22 %zmm3;
(* vpmuludq %zmm3,%zmm23,%zmm26                    #! PC = 0x93824992245354 *)
mul %zmm26 %zmm23 %zmm3;
(* vpaddq %zmm28,%zmm14,%zmm14                     #! PC = 0x93824992245360 *)
add %zmm14 %zmm14 %zmm28;
(* vpmuludq %zmm3,%zmm24,%zmm27                    #! PC = 0x93824992245366 *)
mul %zmm27 %zmm24 %zmm3;
(* vpaddq %zmm29,%zmm15,%zmm15                     #! PC = 0x93824992245372 *)
add %zmm15 %zmm15 %zmm29;
(* vpaddq %zmm25,%zmm11,%zmm11                     #! PC = 0x93824992245378 *)
add %zmm11 %zmm11 %zmm25;
(* vpaddq %zmm26,%zmm12,%zmm12                     #! PC = 0x93824992245384 *)
add %zmm12 %zmm12 %zmm26;
(* vpaddq %zmm27,%zmm13,%zmm13                     #! PC = 0x93824992245390 *)
add %zmm13 %zmm13 %zmm27;
(* vpmuludq %zmm4,%zmm21,%zmm25                    #! PC = 0x93824992245396 *)
mul %zmm25 %zmm21 %zmm4;
(* vpmuludq %zmm4,%zmm22,%zmm26                    #! PC = 0x93824992245402 *)
mul %zmm26 %zmm22 %zmm4;
(* vpmuludq %zmm4,%zmm23,%zmm27                    #! PC = 0x93824992245408 *)
mul %zmm27 %zmm23 %zmm4;
(* vpaddq %zmm25,%zmm11,%zmm0                      #! PC = 0x93824992245414 *)
add %zmm0 %zmm11 %zmm25;
(* vpaddq %zmm26,%zmm12,%zmm1                      #! PC = 0x93824992245420 *)
add %zmm1 %zmm12 %zmm26;
(* vpaddq %zmm27,%zmm13,%zmm2                      #! PC = 0x93824992245426 *)
add %zmm2 %zmm13 %zmm27;

(* NOTE: summary of accumulation *)
(* H0 = zmm0, H1 = zmm1, H2 = zmm2, D3 = zmm14, D4 = zmm15 *)
assert eqmod (limbs 26 [%zmm0[0], %zmm1[0], %zmm2[0], %zmm14[0], %zmm15[0]])
             ((limbs 64 [%inp[0], %inp[1]] +
               limbs 26 [%h0[0], %h1[0], %h2[0], %h3[0], %h4[0]])
              * 
              limbs 26 [%r0[0], %r1[0], %r2[0], %r3[0], %r4[0]])
             (2**130 - 5) /\
       eqmod (limbs 26 [%zmm0[1], %zmm1[1], %zmm2[1], %zmm14[1], %zmm15[1]])
             ((limbs 64 [%inp[8], %inp[9]] +
               limbs 26 [%h0[1], %h1[1], %h2[1], %h3[1], %h4[1]])
              * 
              limbs 26 [%r0[1], %r1[1], %r2[1], %r3[1], %r4[1]])
             (2**130 - 5) /\
       eqmod (limbs 26 [%zmm0[2], %zmm1[2], %zmm2[2], %zmm14[2], %zmm15[2]])
             ((limbs 64 [%inp[2], %inp[3]] +
               limbs 26 [%h0[2], %h1[2], %h2[2], %h3[2], %h4[2]])
              * 
              limbs 26 [%r0[2], %r1[2], %r2[2], %r3[2], %r4[2]])
             (2**130 - 5) /\
       eqmod (limbs 26 [%zmm0[3], %zmm1[3], %zmm2[3], %zmm14[3], %zmm15[3]])
             ((limbs 64 [%inp[10], %inp[11]] +
               limbs 26 [%h0[3], %h1[3], %h2[3], %h3[3], %h4[3]])
              * 
              limbs 26 [%r0[3], %r1[3], %r2[3], %r3[3], %r4[3]])
             (2**130 - 5) /\
       eqmod (limbs 26 [%zmm0[4], %zmm1[4], %zmm2[4], %zmm14[4], %zmm15[4]])
             ((limbs 64 [%inp[4], %inp[5]] +
               limbs 26 [%h0[4], %h1[4], %h2[4], %h3[4], %h4[4]])
              * 
              limbs 26 [%r0[4], %r1[4], %r2[4], %r3[4], %r4[4]])
             (2**130 - 5) /\
       eqmod (limbs 26 [%zmm0[5], %zmm1[5], %zmm2[5], %zmm14[5], %zmm15[5]])
             ((limbs 64 [%inp[12], %inp[13]] +
               limbs 26 [%h0[5], %h1[5], %h2[5], %h3[5], %h4[5]])
              * 
              limbs 26 [%r0[5], %r1[5], %r2[5], %r3[5], %r4[5]])
             (2**130 - 5) /\
       eqmod (limbs 26 [%zmm0[6], %zmm1[6], %zmm2[6], %zmm14[6], %zmm15[6]])
             ((limbs 64 [%inp[6], %inp[7]] +
               limbs 26 [%h0[6], %h1[6], %h2[6], %h3[6], %h4[6]])
              * 
              limbs 26 [%r0[6], %r1[6], %r2[6], %r3[6], %r4[6]])
             (2**130 - 5) /\
       eqmod (limbs 26 [%zmm0[7], %zmm1[7], %zmm2[7], %zmm14[7], %zmm15[7]])
             ((limbs 64 [%inp[14], %inp[15]] +
               limbs 26 [%h0[7], %h1[7], %h2[7], %h3[7], %h4[7]])
              * 
              limbs 26 [%r0[7], %r1[7], %r2[7], %r3[7], %r4[7]])
             (2**130 - 5)
    && true;

(* NOTE: keep old hashes *)
(*
ghost  %zmm0o@uint64[8],  %zmm1o@uint64[8],  %zmm2o@uint64[8],
      %zmm14o@uint64[8], %zmm15o@uint64[8]:
       %zmm0o =  %zmm0 /\  %zmm1o =  %zmm1 /\  %zmm2o =  %zmm2 /\
      %zmm14o = %zmm14 /\ %zmm15o = %zmm15 &&
       %zmm0o =  %zmm0 /\  %zmm1o =  %zmm1 /\  %zmm2o =  %zmm2 /\
      %zmm14o = %zmm14 /\ %zmm15o = %zmm15;
*)

(* vpsrlq $0x34,%zmm7,%zmm9                        #! PC = 0x93824992245432 *)
split %zmm9 %srl %zmm7 0x34;
(* vpsllq $0xc,%zmm6,%zmm10                        #! PC = 0x93824992245439 *)
split %shl %zmm10 %zmm6 52;
shl %zmm10 %zmm10 [0xc@uint64,0xc@uint64,0xc@uint64,0xc@uint64,0xc@uint64,0xc@uint64,0xc@uint64,0xc@uint64];
(* vpsrlq $0x1a,%zmm14,%zmm3                       #! PC = 0x93824992245446 *)
split %zmm3 %srl %zmm14 0x1a;
(* vpandq %zmm5,%zmm14,%zmm14                      #! PC = 0x93824992245453 *)
and %zmm14@uint64[8] %zmm14 %zmm5;
(* NOTE: add relation for %zmm14 *)
assert true && %zmm14 = %srl;
assume %zmm14 = %srl && true;
(* vpaddq %zmm3,%zmm15,%zmm4                       #! PC = 0x93824992245459 *)
add %zmm4 %zmm15 %zmm3;
(* vporq  %zmm10,%zmm9,%zmm9                       #! PC = 0x93824992245465 *)
or %zmm9@uint64[8] %zmm9 %zmm10;
(* vpsrlq $0x1a,%zmm0,%zmm11                       #! PC = 0x93824992245471 *)
split %zmm11 %srl %zmm0 0x1a;
(* vpandq %zmm5,%zmm0,%zmm0                        #! PC = 0x93824992245478 *)
and %zmm0@uint64[8] %zmm0 %zmm5;
(* NOTE: add relation for %zmm0 *)
assert true && %zmm0 = %srl;
assume %zmm0 = %srl && true;
(* vpaddq %zmm11,%zmm1,%zmm1                       #! PC = 0x93824992245484 *)
add %zmm1 %zmm1 %zmm11;
(* vpandq %zmm5,%zmm9,%zmm9                        #! PC = 0x93824992245490 *)
and %zmm9@uint64[8] %zmm9 %zmm5;
(* vpsrlq $0x1a,%zmm4,%zmm15                       #! PC = 0x93824992245496 *)
split %zmm15 %srl %zmm4 0x1a;
(* vpandq %zmm5,%zmm4,%zmm4                        #! PC = 0x93824992245503 *)
and %zmm4@uint64[8] %zmm4 %zmm5;
(* NOTE: add relation for %zmm4 *)
assert true && %zmm4 = %srl;
assume %zmm4 = %srl && true;
(* vpsrlq $0x1a,%zmm1,%zmm12                       #! PC = 0x93824992245509 *)
split %zmm12 %srl %zmm1 0x1a;
(* vpandq %zmm5,%zmm1,%zmm1                        #! PC = 0x93824992245516 *)
and %zmm1@uint64[8] %zmm1 %zmm5;
(* NOTE: add relation for %zmm1 *)
assert true && %zmm1 = %srl;
assume %zmm1 = %srl && true;
(* vpaddq %zmm12,%zmm2,%zmm2                       #! PC = 0x93824992245522 *)
add %zmm2 %zmm2 %zmm12;
(* vpaddq %zmm15,%zmm0,%zmm0                       #! PC = 0x93824992245528 *)
add %zmm0 %zmm0 %zmm15;
(* vpsllq $0x2,%zmm15,%zmm15                       #! PC = 0x93824992245534 *)
(* split %shl %zmm15 %zmm15 62; *)
shl %zmm15 %zmm15 [0x2@uint64,0x2@uint64,0x2@uint64,0x2@uint64,0x2@uint64,0x2@uint64,0x2@uint64,0x2@uint64];
(* vpaddq %zmm15,%zmm0,%zmm0                       #! PC = 0x93824992245541 *)
add %zmm0 %zmm0 %zmm15;

(* NOTE: scheduled modulo  *)

(* vpaddq %zmm9,%zmm2,%zmm2                        #! PC = 0x93824992245547 *)
add %zmm2 %zmm2 %zmm9;
(* vpsrlq $0x1a,%zmm7,%zmm8                        #! PC = 0x93824992245553 *)
split %zmm8 %srl %zmm7 0x1a;
(* vpsrlq $0x1a,%zmm2,%zmm13                       #! PC = 0x93824992245560 *)
split %zmm13 %srl %zmm2 0x1a;
(* vpandq %zmm5,%zmm2,%zmm2                        #! PC = 0x93824992245567 *)
and %zmm2@uint64[8] %zmm2 %zmm5;
(* NOTE: add relation for %zmm2 *)
assert true && %zmm2 = %srl;
assume %zmm2 = %srl && true;
(* vpaddq %zmm13,%zmm14,%zmm3                      #! PC = 0x93824992245573 *)
add %zmm3 %zmm14 %zmm13;
(* vpsrlq $0xe,%zmm6,%zmm10                        #! PC = 0x93824992245579 *)
split %zmm10 %srl %zmm6 0xe;
(* vpsrlq $0x1a,%zmm0,%zmm11                       #! PC = 0x93824992245586 *)
split %zmm11 %srl %zmm0 0x1a;
(* vpandq %zmm5,%zmm0,%zmm0                        #! PC = 0x93824992245593 *)
and %zmm0@uint64[8] %zmm0 %zmm5;
(* NOTE: add relation for %zmm0 *)
assert true && %zmm0 = %srl;
assume %zmm0 = %srl && true;
(* vpaddq %zmm11,%zmm1,%zmm1                       #! PC = 0x93824992245599 *)
add %zmm1 %zmm1 %zmm11;
(* vpsrlq $0x28,%zmm6,%zmm6                        #! PC = 0x93824992245605 *)
split %zmm6 %srl %zmm6 0x28;
(* vpsrlq $0x1a,%zmm3,%zmm14                       #! PC = 0x93824992245612 *)
split %zmm14 %srl %zmm3 0x1a;
(* vpandq %zmm5,%zmm3,%zmm3                        #! PC = 0x93824992245619 *)
and %zmm3@uint64[8] %zmm3 %zmm5;
(* NOTE: add relation for %zmm3 *)
assert true && %zmm3 = %srl;
assume %zmm3 = %srl && true;
(* vpaddq %zmm14,%zmm4,%zmm4                       #! PC = 0x93824992245625 *)
add %zmm4 %zmm4 %zmm14;
(* vpandq %zmm5,%zmm7,%zmm7                        #! PC = 0x93824992245631 *)
and %zmm7@uint64[8] %zmm7 %zmm5;
(* #sub    $0x80,%rdx                               #! PC = 0x93824992245637 *)
#sub    $0x80,%rdx                               #! 0x93824992245637 = 0x93824992245637;
(* #ja     0x555555557560 <poly1305_blocks_avx512+2880>#! PC = 0x93824992245644 *)
#ja     0x555555557560 <poly1305_blocks_avx512+2880>#! 0x93824992245644 = 0x93824992245644;

(* vpandq %zmm5,%zmm8,%zmm8                        #! PC = 0x93824992245106 *)
(* NOTE: mask zmm8 (T1) *)
and %zmm8@uint64[8] %zmm8 %zmm5;
(* vpandq %zmm5,%zmm10,%zmm10                      #! PC = 0x93824992245118 *)
(* NOTE: mask zmm10 (T3) *)
and %zmm10@uint64[8] %zmm10 %zmm5;

mov %H0 %zmm0; mov %H1 %zmm1; mov %H2 %zmm2; mov %H3  %zmm3; mov %H4 %zmm4;
mov %T0 %zmm7; mov %T1 %zmm8; mov %T2 %zmm9; mov %T3 %zmm10; mov %T4 %zmm6;


{
  eqmod (limbs 26 [%H0[0], %H1[0], %H2[0], %H3[0], %H4[0]])
        (( (  limbs 64 [%inp[0], %inp[1]] +
              limbs 26 [%h0[0], %h1[0], %h2[0], %h3[0], %h4[0]]  )
           * 
           limbs 26 [%r0[0], %r1[0], %r2[0], %r3[0], %r4[0]]  )
        +
        (limbs 26 [0, 0, %T2[0], 0, 0]))
        (2**130 - 5) /\
  eqmod (limbs 26 [%H0[1], %H1[1], %H2[1], %H3[1], %H4[1]])
        (( (  limbs 64 [%inp[8], %inp[9]] +
              limbs 26 [%h0[1], %h1[1], %h2[1], %h3[1], %h4[1]]  )
           * 
           limbs 26 [%r0[1], %r1[1], %r2[1], %r3[1], %r4[1]]  )
        +
        (limbs 26 [0, 0, %T2[1], 0, 0]))
        (2**130 - 5) /\
  eqmod (limbs 26 [%H0[2], %H1[2], %H2[2], %H3[2], %H4[2]])
        (( (  limbs 64 [%inp[2], %inp[3]] +
              limbs 26 [%h0[2], %h1[2], %h2[2], %h3[2], %h4[2]]  )
           * 
           limbs 26 [%r0[2], %r1[2], %r2[2], %r3[2], %r4[2]]  )
        +
        (limbs 26 [0, 0, %T2[2], 0, 0]))
        (2**130 - 5) /\
  eqmod (limbs 26 [%H0[3], %H1[3], %H2[3], %H3[3], %H4[3]])
        (( (  limbs 64 [%inp[10], %inp[11]] +
              limbs 26 [%h0[3], %h1[3], %h2[3], %h3[3], %h4[3]]  )
           * 
           limbs 26 [%r0[3], %r1[3], %r2[3], %r3[3], %r4[3]]  )
        +
        (limbs 26 [0, 0, %T2[3], 0, 0]))
        (2**130 - 5) /\
  eqmod (limbs 26 [%H0[4], %H1[4], %H2[4], %H3[4], %H4[4]])
        (( (  limbs 64 [%inp[4], %inp[5]] +
              limbs 26 [%h0[4], %h1[4], %h2[4], %h3[4], %h4[4]]  )
           * 
           limbs 26 [%r0[4], %r1[4], %r2[4], %r3[4], %r4[4]]  )
        +
        (limbs 26 [0, 0, %T2[4], 0, 0]))
        (2**130 - 5) /\
  eqmod (limbs 26 [%H0[5], %H1[5], %H2[5], %H3[5], %H4[5]])
        (( (  limbs 64 [%inp[12], %inp[13]] +
              limbs 26 [%h0[5], %h1[5], %h2[5], %h3[5], %h4[5]]  )
           * 
           limbs 26 [%r0[5], %r1[5], %r2[5], %r3[5], %r4[5]]  )
        +
        (limbs 26 [0, 0, %T2[5], 0, 0]))
        (2**130 - 5) /\
  eqmod (limbs 26 [%H0[6], %H1[6], %H2[6], %H3[6], %H4[6]])
        (( (  limbs 64 [%inp[6], %inp[7]] +
              limbs 26 [%h0[6], %h1[6], %h2[6], %h3[6], %h4[6]]  )
           * 
           limbs 26 [%r0[6], %r1[6], %r2[6], %r3[6], %r4[6]]  )
        +
        (limbs 26 [0, 0, %T2[6], 0, 0]))
        (2**130 - 5) /\
  eqmod (limbs 26 [%H0[7], %H1[7], %H2[7], %H3[7], %H4[7]])
        (( (  limbs 64 [%inp[14], %inp[15]] +
              limbs 26 [%h0[7], %h1[7], %h2[7], %h3[7], %h4[7]]  )
           * 
           limbs 26 [%r0[7], %r1[7], %r2[7], %r3[7], %r4[7]]  )
        +
        (limbs 26 [0, 0, %T2[7], 0, 0]))
        (2**130 - 5)
&&
  uext (limbs 64 [%INP[0], %INP[1]]) 40 =
  limbs 26 [%T0[0], %T1[0], %T2[0], %T3[0], %T4[0]] /\
  uext (limbs 64 [%INP[8], %INP[9]]) 40 =
  limbs 26 [%T0[1], %T1[1], %T2[1], %T3[1], %T4[1]] /\
  uext (limbs 64 [%INP[2], %INP[3]]) 40 =
  limbs 26 [%T0[2], %T1[2], %T2[2], %T3[2], %T4[2]] /\
  uext (limbs 64 [%INP[10], %INP[11]]) 40 =
  limbs 26 [%T0[3], %T1[3], %T2[3], %T3[3], %T4[3]] /\
  uext (limbs 64 [%INP[4], %INP[5]]) 40 =
  limbs 26 [%T0[4], %T1[4], %T2[4], %T3[4], %T4[4]] /\
  uext (limbs 64 [%INP[12], %INP[13]]) 40 =
  limbs 26 [%T0[5], %T1[5], %T2[5], %T3[5], %T4[5]] /\
  uext (limbs 64 [%INP[6], %INP[7]]) 40 =
  limbs 26 [%T0[6], %T1[6], %T2[6], %T3[6], %T4[6]] /\
  uext (limbs 64 [%INP[14], %INP[15]]) 40 =
  limbs 26 [%T0[7], %T1[7], %T2[7], %T3[7], %T4[7]] /\

  %H0 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64,
          (2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %H1 <u [(2**27)@64,(2**27)@64,(2**27)@64,(2**27)@64,
          (2**27)@64,(2**27)@64,(2**27)@64,(2**27)@64] /\
  %H2 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64,
          (2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %H3 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64,
          (2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %H4 <u [(2**27)@64,(2**27)@64,(2**27)@64,(2**27)@64,
          (2**27)@64,(2**27)@64,(2**27)@64,(2**27)@64] /\
  %T0 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64,
          (2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %T1 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64,
          (2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %T2 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64,
          (2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %T3 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64, 
          (2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %T4 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64,
          (2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64]
}

