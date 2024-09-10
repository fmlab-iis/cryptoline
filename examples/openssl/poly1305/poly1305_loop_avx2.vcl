(* inputs + padbits: %T0, %T1, %T2, %T3, %T4 *)
(* hash value: %h0, %h1, %h2, %h3, %h4 *)
(* keys(r**4): %r0, %r1, %r2, %r3, %r4 *)
(* temp keys(5*r**4): %s1, %s2, %s3, %s4 *)
(* new hash value: %H0, %H1, %H2, %H3, %H4 *)
(* next inputs: %inp0, %inp1, %inp2, %inp3 *)


proc main (
uint64[4] %T0, uint64[4] %T1, uint64[4] %T2, uint64[4] %T3, uint64[4] %T4,
uint64[4] %h0, uint64[4] %h1, uint64[4] %h2, uint64[4] %h3, uint64[4] %h4,
uint64[4] %r0, uint64[4] %r1, uint64[4] %r2, uint64[4] %r3, uint64[4] %r4,
uint64[4] %s1, uint64[4] %s2, uint64[4] %s3, uint64[4] %s4
) =
{
  %s1 = [5, 5, 5, 5] * %r1 /\ %s2 = [5, 5, 5, 5] * %r2 /\
  %s3 = [5, 5, 5, 5] * %r3 /\ %s4 = [5, 5, 5, 5] * %r4
&&
  %T0 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %T1 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %T2 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %T3 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %T4 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %h0 <u [(2**27)@64,(2**27)@64,(2**27)@64,(2**27)@64] /\
  %h1 <u [(2**27)@64,(2**27)@64,(2**27)@64,(2**27)@64] /\
  %h2 <u [(2**27)@64,(2**27)@64,(2**27)@64,(2**27)@64] /\
  %h3 <u [(2**27)@64,(2**27)@64,(2**27)@64,(2**27)@64] /\
  %h4 <u [(2**27)@64,(2**27)@64,(2**27)@64,(2**27)@64] /\
  %r0 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %r1 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %r2 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %r3 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %r4 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %s1 = %r1 * [5@64, 5@64, 5@64, 5@64] /\
  %s2 = %r2 * [5@64, 5@64, 5@64, 5@64] /\
  %s3 = %r3 * [5@64, 5@64, 5@64, 5@64] /\
  %s4 = %r4 * [5@64, 5@64, 5@64, 5@64]
}

(* Added before the code *)
(* =========== BEGIN ============ *)

(* mov ymm0 h0 *)
mov %ymm0 %h0;
(* mov ymm1 h1 *)
mov %ymm1 %h1;
(* mov ymm2 h2 *)
mov %ymm2 %h2;
(* mov ymm3 h3 *)
mov %ymm3 %h3;
(* mov ymm4 h4 *)
mov %ymm4 %h4;
(* mov ymm7 T0 *)
mov %ymm7 %T0;
(* mov ymm8 T1 *)
mov %ymm8 %T1;
(* mov ymm9 T2 *)
mov %ymm9 %T2;
(* mov ymm10 T3 *)
mov %ymm10 %T3;
(* mov ymm6 T4 *)
mov %ymm6 %T4;
(* mov L0x7fffffffda00 r0 *)
mov [L0x7fffffffda00,L0x7fffffffda08,L0x7fffffffda10,L0x7fffffffda18] %r0;
(* mov L0x7fffffffda20 r1 *)
mov [L0x7fffffffda20,L0x7fffffffda28,L0x7fffffffda30,L0x7fffffffda38] %r1;
(* mov L0x7fffffffda60 r2 *)
mov [L0x7fffffffda60,L0x7fffffffda68,L0x7fffffffda70,L0x7fffffffda78] %r2;
(* mov L0x7fffffffdaa0 r3 *)
mov [L0x7fffffffdaa0,L0x7fffffffdaa8,L0x7fffffffdab0,L0x7fffffffdab8] %r3;
(* mov L0x7fffffffdae0 r4 *)
mov [L0x7fffffffdae0,L0x7fffffffdae8,L0x7fffffffdaf0,L0x7fffffffdaf8] %r4;
(* mov L0x7fffffffda40 s1 *)
mov [L0x7fffffffda40,L0x7fffffffda48,L0x7fffffffda50,L0x7fffffffda58] %s1;
(* mov L0x7fffffffda80 s2 *)
mov [L0x7fffffffda80,L0x7fffffffda88,L0x7fffffffda90,L0x7fffffffda98] %s2;
(* mov L0x7fffffffdac0 s3 *)
mov [L0x7fffffffdac0,L0x7fffffffdac8,L0x7fffffffdad0,L0x7fffffffdad8] %s3;
(* mov L0x7fffffffdb00 s4 *)
mov [L0x7fffffffdb00,L0x7fffffffdb08,L0x7fffffffdb10,L0x7fffffffdb18] %s4;

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
broadcast [L0x404580,L0x404588,L0x404590,L0x404598] 4 [0x3ffffff@uint64];

(* ===========  END  ============ *)

(* loop begins *)

(* vpaddq %ymm2,%ymm9,%ymm2 *)
add %ymm2 %ymm9 %ymm2;
(* vpaddq %ymm0,%ymm7,%ymm0 *)
add %ymm0 %ymm7 %ymm0;
(* vmovdqa (%rsp),%ymm7                            #! EA = L0x7fffffffda00 *)
mov %ymm7 [L0x7fffffffda00,L0x7fffffffda08,L0x7fffffffda10,L0x7fffffffda18];
(* vpaddq %ymm1,%ymm8,%ymm1 *)
add %ymm1 %ymm8 %ymm1;
(* vmovdqa 0x20(%rsp),%ymm8                        #! EA = L0x7fffffffda20 *)
mov %ymm8 [L0x7fffffffda20,L0x7fffffffda28,L0x7fffffffda30,L0x7fffffffda38];
(* vpaddq %ymm3,%ymm10,%ymm3 *)
add %ymm3 %ymm10 %ymm3;
(* vmovdqa 0x60(%rsp),%ymm9                        #! EA = L0x7fffffffda60 *)
mov %ymm9 [L0x7fffffffda60,L0x7fffffffda68,L0x7fffffffda70,L0x7fffffffda78];
(* vpaddq %ymm4,%ymm6,%ymm4 *)
add %ymm4 %ymm6 %ymm4;
(* vmovdqa 0x30(%rax),%ymm10                       #! EA = L0x7fffffffdac0 *)
mov %ymm10 [L0x7fffffffdac0,L0x7fffffffdac8,L0x7fffffffdad0,L0x7fffffffdad8];
(* vmovdqa 0x70(%rax),%ymm5                        #! EA = L0x7fffffffdb00 *)
mov %ymm5 [L0x7fffffffdb00,L0x7fffffffdb08,L0x7fffffffdb10,L0x7fffffffdb18];
(* vpmuludq %ymm2,%ymm7,%ymm13 *)
mul %ymm13 %ymm7 %ymm2;
(* vpmuludq %ymm2,%ymm8,%ymm14 *)
mul %ymm14 %ymm8 %ymm2;
(* vpmuludq %ymm2,%ymm9,%ymm15 *)
mul %ymm15 %ymm9 %ymm2;
(* vpmuludq %ymm2,%ymm10,%ymm11 *)
mul %ymm11 %ymm10 %ymm2;
(* vpmuludq %ymm2,%ymm5,%ymm12 *)
mul %ymm12 %ymm5 %ymm2;
(* vpmuludq %ymm0,%ymm8,%ymm6 *)
mul %ymm6 %ymm8 %ymm0;
(* vpmuludq %ymm1,%ymm8,%ymm2 *)
mul %ymm2 %ymm8 %ymm1;
(* vpaddq %ymm6,%ymm12,%ymm12 *)
add %ymm12 %ymm12 %ymm6;
(* vpaddq %ymm2,%ymm13,%ymm13 *)
add %ymm13 %ymm13 %ymm2;
(* vpmuludq %ymm3,%ymm8,%ymm6 *)
mul %ymm6 %ymm8 %ymm3;
(* vpmuludq 0x40(%rsp),%ymm4,%ymm2                 #! EA = L0x7fffffffda40 *)
mov %mul [L0x7fffffffda40,L0x7fffffffda48,L0x7fffffffda50,L0x7fffffffda58];
mul %ymm2 %ymm4 %mul;
(* vpaddq %ymm6,%ymm15,%ymm15 *)
add %ymm15 %ymm15 %ymm6;
(* vpaddq %ymm2,%ymm11,%ymm11 *)
add %ymm11 %ymm11 %ymm2;
(* vmovdqa -0x10(%rax),%ymm8                       #! EA = L0x7fffffffda80 *)
mov %ymm8 [L0x7fffffffda80,L0x7fffffffda88,L0x7fffffffda90,L0x7fffffffda98];
(* vpmuludq %ymm0,%ymm7,%ymm6 *)
mul %ymm6 %ymm7 %ymm0;
(* vpmuludq %ymm1,%ymm7,%ymm2 *)
mul %ymm2 %ymm7 %ymm1;
(* vpaddq %ymm6,%ymm11,%ymm11 *)
add %ymm11 %ymm11 %ymm6;
(* vpaddq %ymm2,%ymm12,%ymm12 *)
add %ymm12 %ymm12 %ymm2;
(* vpmuludq %ymm3,%ymm7,%ymm6 *)
mul %ymm6 %ymm7 %ymm3;
(* vpmuludq %ymm4,%ymm7,%ymm2 *)
mul %ymm2 %ymm7 %ymm4;
(* vpaddq %ymm6,%ymm14,%ymm14 *)
add %ymm14 %ymm14 %ymm6;
(* vpaddq %ymm2,%ymm15,%ymm15 *)
add %ymm15 %ymm15 %ymm2;
(* vpmuludq %ymm3,%ymm8,%ymm6 *)
mul %ymm6 %ymm8 %ymm3;
(* vpmuludq %ymm4,%ymm8,%ymm2 *)
mul %ymm2 %ymm8 %ymm4;
(* vpaddq %ymm6,%ymm11,%ymm11 *)
add %ymm11 %ymm11 %ymm6;
(* vpaddq %ymm2,%ymm12,%ymm12 *)
add %ymm12 %ymm12 %ymm2;
(* vmovdqa 0x10(%rax),%ymm2                        #! EA = L0x7fffffffdaa0 *)
mov %ymm2 [L0x7fffffffdaa0,L0x7fffffffdaa8,L0x7fffffffdab0,L0x7fffffffdab8];
(* vpmuludq %ymm1,%ymm9,%ymm6 *)
mul %ymm6 %ymm9 %ymm1;
(* vpmuludq %ymm0,%ymm9,%ymm9 *)
mul %ymm9 %ymm9 %ymm0;
(* vpaddq %ymm6,%ymm14,%ymm14 *)
add %ymm14 %ymm14 %ymm6;
(* vpaddq %ymm9,%ymm13,%ymm13 *)
add %ymm13 %ymm13 %ymm9;
(* vpmuludq %ymm1,%ymm2,%ymm6 *)
mul %ymm6 %ymm2 %ymm1;
(* vpmuludq %ymm0,%ymm2,%ymm2 *)
mul %ymm2 %ymm2 %ymm0;
(* vpaddq %ymm6,%ymm15,%ymm15 *)
add %ymm15 %ymm15 %ymm6;
(* vpaddq %ymm2,%ymm14,%ymm14 *)
add %ymm14 %ymm14 %ymm2;
(* vpmuludq %ymm3,%ymm10,%ymm6 *)
mul %ymm6 %ymm10 %ymm3;
(* vpmuludq %ymm4,%ymm10,%ymm2 *)
mul %ymm2 %ymm10 %ymm4;
(* vpaddq %ymm6,%ymm12,%ymm12 *)
add %ymm12 %ymm12 %ymm6;
(* vpaddq %ymm2,%ymm13,%ymm13 *)
add %ymm13 %ymm13 %ymm2;
(* vpmuludq %ymm3,%ymm5,%ymm3 *)
mul %ymm3 %ymm5 %ymm3;
(* vpmuludq %ymm4,%ymm5,%ymm4 *)
mul %ymm4 %ymm5 %ymm4;
(* vpaddq %ymm3,%ymm13,%ymm2 *)
add %ymm2 %ymm13 %ymm3;
(* vpaddq %ymm4,%ymm14,%ymm3 *)
add %ymm3 %ymm14 %ymm4;
(* vpmuludq 0x50(%rax),%ymm0,%ymm4                 #! EA = L0x7fffffffdae0 *)
mov %mul [L0x7fffffffdae0,L0x7fffffffdae8,L0x7fffffffdaf0,L0x7fffffffdaf8];
mul %ymm4 %ymm0 %mul;
(* vpmuludq %ymm1,%ymm5,%ymm0 *)
mul %ymm0 %ymm5 %ymm1;
(* vmovdqa 0x40(%rcx),%ymm5                        #! EA = L0x404580 *)
mov %ymm5 [L0x404580,L0x404588,L0x404590,L0x404598];
(* vpaddq %ymm4,%ymm15,%ymm4 *)
add %ymm4 %ymm15 %ymm4;
(* vpaddq %ymm0,%ymm11,%ymm0 *)
add %ymm0 %ymm11 %ymm0;

(* lazy reduction *)

(* vpsrlq $0x1a,%ymm3,%ymm14 *)
(* vpand  %ymm5,%ymm3,%ymm3 *)
split %ymm14 %ymm3 %ymm3 0x1a;
(* vpaddq %ymm14,%ymm4,%ymm4 *)
add %ymm4 %ymm4 %ymm14;
(* vpsrlq $0x1a,%ymm0,%ymm11 *)
(* vpand  %ymm5,%ymm0,%ymm0 *)
split %ymm11 %ymm0 %ymm0 0x1a;
(* vpaddq %ymm11,%ymm12,%ymm1 *)
add %ymm1 %ymm12 %ymm11;
(* vpsrlq $0x1a,%ymm4,%ymm15 *)
(* vpand  %ymm5,%ymm4,%ymm4 *)
split %ymm15 %ymm4 %ymm4 0x1a;
(* vpsrlq $0x1a,%ymm1,%ymm12 *)
(* vpand  %ymm5,%ymm1,%ymm1 *)
split %ymm12 %ymm1 %ymm1 0x1a;
(* vpaddq %ymm12,%ymm2,%ymm2 *)
add %ymm2 %ymm2 %ymm12;
(* vpaddq %ymm15,%ymm0,%ymm0 *)
add %ymm0 %ymm0 %ymm15;
(* vpsllq $0x2,%ymm15,%ymm15 *)
shl %ymm15 %ymm15 [0x2@uint64,0x2@uint64,0x2@uint64,0x2@uint64];
(* vpaddq %ymm15,%ymm0,%ymm0 *)
add %ymm0 %ymm0 %ymm15;
(* vpsrlq $0x1a,%ymm2,%ymm13 *)
(* vpand  %ymm5,%ymm2,%ymm2 *)
split %ymm13 %ymm2 %ymm2 0x1a;
(* vpaddq %ymm13,%ymm3,%ymm3 *)
add %ymm3 %ymm3 %ymm13;
(* vpsrlq $0x1a,%ymm0,%ymm11 *)
(* vpand  %ymm5,%ymm0,%ymm0 *)
split %ymm11 %ymm0 %ymm0 0x1a;
(* vpaddq %ymm11,%ymm1,%ymm1 *)
add %ymm1 %ymm1 %ymm11;
(* vpsrlq $0x1a,%ymm3,%ymm14 *)
(* vpand  %ymm5,%ymm3,%ymm3 *)
split %ymm14 %ymm3 %ymm3 0x1a;
(* vpaddq %ymm14,%ymm4,%ymm4 *)
add %ymm4 %ymm4 %ymm14;

(* loop ends *)

(* Added after the code *)
(* =========== BEGIN ============ *)

(* mov H0 ymm0 *)
mov %H0 %ymm0;
(* mov H1 ymm1 *)
mov %H1 %ymm1;
(* mov H2 ymm2 *)
mov %H2 %ymm2;
(* mov H3 ymm3 *)
mov %H3 %ymm3;
(* mov H4 ymm4 *)
mov %H4 %ymm4;

(* ===========  END  ============ *)

{
  (* ((h4:h0) + (T4:T0)) * (r4:r0) = (H4:H0) *)
  eqmod (limbs 26 [%H0[0],%H1[0],%H2[0],%H3[0],%H4[0]])
        (
          (
            (limbs 26 [%h0[0],%h1[0],%h2[0],%h3[0],%h4[0]] +
             limbs 26 [%T0[0],%T1[0],%T2[0],%T3[0],%T4[0]])
          )
          *
          (limbs 26 [%r0[0],%r1[0],%r2[0],%r3[0],%r4[0]])
        )
        [2**130 - 5] /\
  eqmod (limbs 26 [%H0[1],%H1[1],%H2[1],%H3[1],%H4[1]])
        (
          (
            (limbs 26 [%h0[1],%h1[1],%h2[1],%h3[1],%h4[1]] +
             limbs 26 [%T0[1],%T1[1],%T2[1],%T3[1],%T4[1]])
          )
          *
          (limbs 26 [%r0[1],%r1[1],%r2[1],%r3[1],%r4[1]])
        )
        [2**130 - 5] /\
  eqmod (limbs 26 [%H0[2],%H1[2],%H2[2],%H3[2],%H4[2]])
        (
          (
            (limbs 26 [%h0[2],%h1[2],%h2[2],%h3[2],%h4[2]] +
             limbs 26 [%T0[2],%T1[2],%T2[2],%T3[2],%T4[2]])
          )
          *
          (limbs 26 [%r0[2],%r1[2],%r2[2],%r3[2],%r4[2]])
        )
        [2**130 - 5] /\
  eqmod (limbs 26 [%H0[3],%H1[3],%H2[3],%H3[3],%H4[3]])
        (
          (
            (limbs 26 [%h0[3],%h1[3],%h2[3],%h3[3],%h4[3]] +
             limbs 26 [%T0[3],%T1[3],%T2[3],%T3[3],%T4[3]])
          )
          *
          (limbs 26 [%r0[3],%r1[3],%r2[3],%r3[3],%r4[3]])
        )
        [2**130 - 5]
  &&
  %H0 <u [(2**27)@64, (2**27)@64, (2**27)@64, (2**27)@64] /\
  %H1 <u [(2**27)@64, (2**27)@64, (2**27)@64, (2**27)@64] /\
  %H2 <u [(2**27)@64, (2**27)@64, (2**27)@64, (2**27)@64] /\
  %H3 <u [(2**27)@64, (2**27)@64, (2**27)@64, (2**27)@64] /\
  %H4 <u [(2**27)@64, (2**27)@64, (2**27)@64, (2**27)@64]
}

