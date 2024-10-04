proc main (uint64[2] %xmm0, uint64[2] %xmm1, uint64[2] %xmm2,
           uint64[2] %xmm3, uint64[2] %xmm4, uint64[2] %xmm5,
           uint64[2] %xmm6, uint64[2] %xmm7, uint64[2] %xmm8,
           uint64[2] %xmm9,
           uint64[2] %xmm14,
           uint64[2] %H0,uint64[2] %H1,uint64[2] %H2,uint64[2] %H3,uint64[2] %H4,
           uint64[2] %T0,uint64[2] %T1,uint64[2] %T2,uint64[2] %T3,uint64[2] %T4,
           uint64[5] %R, uint64[5] %R2, uint64[5] %R4,
           uint64[5] %S, uint64[5] %S2, uint64[5] %S4,
           uint64[16] %INP,
           uint64[2] %padbit) =
{
  limbs 64 [%INP[4],%INP[5], %padbit[0]] =
  limbs 26 [%T0[0], %T1[0], %T2[0], %T3[0], %T4[0]] /\
  limbs 64 [%INP[6],%INP[7], %padbit[1]] =
  limbs 26 [%T0[1], %T1[1], %T2[1], %T3[1], %T4[1]] /\
  %xmm0 = %H0 /\ %xmm1 = %H1 /\ %xmm2 = %H2 /\ %xmm3 = %H3 /\ %xmm4 = %H4 /\
  %xmm5 = %T0 /\ %xmm6 = %T1 /\ %xmm7 = %T2 /\ %xmm8 = %T3 /\ %xmm9 = %T4 /\
  %xmm14 = [%R2[0], %R2[0]] /\
  eqmod (limbs 26 [%R2[0],%R2[1],%R2[2],%R2[3],%R2[4]])
        (limbs 26 [%R[0],%R[1],%R[2],%R[3],%R[4]]**2) (2**130 - 5) /\
  eqmod (limbs 26 [%R4[0],%R4[1],%R4[2],%R4[3],%R4[4]])
        (limbs 26 [%R[0],%R[1],%R[2],%R[3],%R[4]]**4) (2**130 - 5) /\
  %S = [5, 5, 5, 5, 5] * %R /\ %S2 = [5, 5, 5, 5, 5] * %R2 /\
  %S4 = [5, 5, 5, 5, 5] * %R4
&&
  %padbit <u [2@64, 2@64] /\
(*  limbs 26 [%R[0],%R[1],%R[2],%R[3],%R[4]] &
  0xf0000003f0000003f0000003f0000000@168 = 0@168 /\ *)
  %xmm0 = %H0 /\ %xmm1 = %H1 /\ %xmm2 = %H2 /\ %xmm3 = %H3 /\ %xmm4 = %H4 /\
  %xmm5 = %T0 /\ %xmm6 = %T1 /\ %xmm7 = %T2 /\ %xmm8 = %T3 /\ %xmm9 = %T4 /\
  %xmm14 = [%R2[0], %R2[0]] /\ 
  %H0 <u [(2**26)@64,(2**26)@64] /\ %H1 <u [(2**27)@64,(2**27)@64] /\
  %H2 <u [(2**26)@64,(2**26)@64] /\ %H3 <u [(2**26)@64,(2**26)@64] /\
  %H4 <u [(2**27)@64,(2**27)@64] /\
  %T0 <u [(2**26)@64,(2**26)@64] /\ %T1 <u [(2**26)@64,(2**26)@64] /\
  %T2 <u [(2**26)@64,(2**26)@64] /\ %T3 <u [(2**26)@64,(2**26)@64] /\
  %T4 <u [(2**27)@64,(2**27)@64] /\
  %R  <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %R2 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %R4 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %S  <u [(2**29)@64,(2**29)@64,(2**29)@64,(2**29)@64,(2**29)@64] /\
  %S2 <u [(2**29)@64,(2**29)@64,(2**29)@64,(2**29)@64,(2**29)@64] /\
  %S4 <u [(2**29)@64,(2**29)@64,(2**29)@64,(2**29)@64,(2**29)@64]
}

mov [L0x55555555c0e0, L0x55555555c0e8] [ %INP[0],  %INP[1]];
mov [L0x55555555c0f0, L0x55555555c0f8] [ %INP[2],  %INP[3]];
mov [L0x55555555c100, L0x55555555c108] [ %INP[4],  %INP[5]];
mov [L0x55555555c110, L0x55555555c118] [ %INP[6],  %INP[7]];
mov [L0x55555555c120, L0x55555555c128] [ %INP[8],  %INP[9]];
mov [L0x55555555c130, L0x55555555c138] [%INP[10], %INP[11]];
mov [L0x55555555c140, L0x55555555c148] [%INP[12], %INP[13]];
mov [L0x55555555c150, L0x55555555c158] [%INP[14], %INP[15]];

mov [L0x7fffffffdd30, L0x7fffffffdd38] [%R2[0], %R2[0]];
mov [L0x7fffffffdd40, L0x7fffffffdd48] [%R2[1], %R2[1]];
mov [L0x7fffffffdd50, L0x7fffffffdd58] [%S2[1], %S2[1]];
mov [L0x7fffffffdd60, L0x7fffffffdd68] [%R2[2], %R2[2]];
mov [L0x7fffffffdd70, L0x7fffffffdd78] [%S2[2], %S2[2]];
mov [L0x7fffffffdd80, L0x7fffffffdd88] [%R2[3], %R2[3]];
mov [L0x7fffffffdd90, L0x7fffffffdd98] [%S2[3], %S2[3]];
mov [L0x7fffffffdda0, L0x7fffffffdda8] [%R2[4], %R2[4]];
mov [L0x7fffffffddb0, L0x7fffffffddb8] [%S2[4], %S2[4]];
mov [L0x7fffffffddc0, L0x7fffffffddc8] [%R4[0], %R4[0]];
mov [L0x7fffffffddd0, L0x7fffffffddd8] [%R4[1], %R4[1]];
mov [L0x7fffffffdde0, L0x7fffffffdde8] [%S4[1], %S4[1]];
mov [L0x7fffffffddf0, L0x7fffffffddf8] [%R4[2], %R4[2]];
mov [L0x7fffffffde00, L0x7fffffffde08] [%S4[2], %S4[2]];
mov [L0x7fffffffde10, L0x7fffffffde18] [%R4[3], %R4[3]];
mov [L0x7fffffffde20, L0x7fffffffde28] [%S4[3], %S4[3]];
mov [L0x7fffffffde30, L0x7fffffffde38] [%R4[4], %R4[4]];
mov [L0x7fffffffde40, L0x7fffffffde48] [%S4[4], %S4[4]];

(* masks *)
mov %xmm15 [0x3ffffff@uint64, 0x3ffffff@uint64];
mov [L0x55555555a040, L0x55555555a048] [0xffffff@uint64, 0xffffff@uint64];

(* padbits *)
mul [L0x55555555a060, L0x55555555a068]
    %padbit [0x1000000@uint64, 0x1000000@uint64];

(* ################################################################ *)
(* # ((inp[0]*r^4+inp[2]*r^2+inp[4])*r^4+inp[6]*r^2 *)
(* # ((inp[1]*r^4+inp[3]*r^2+inp[5])*r^3+inp[7]*r *)
(* #   \___________________/ *)
(* # ((inp[0]*r^4+inp[2]*r^2+inp[4])*r^4+inp[6]*r^2+inp[8])*r^2 *)
(* # ((inp[1]*r^4+inp[3]*r^2+inp[5])*r^4+inp[7]*r^2+inp[9])*r *)
(* #   \___________________/ \____________________/ *)
(* # *)
(* # Note that we start with inp[2:3]*r^2. This is because it *)
(* # doesn't depend on reduction in previous iteration. *)
(* ################################################################ *)
(* # d4 = h4*r0 + h3*r1   + h2*r2   + h1*r3   + h0*r4 *)
(* # d3 = h3*r0 + h2*r1   + h1*r2   + h0*r3   + h4*5*r4 *)
(* # d2 = h2*r0 + h1*r1   + h0*r2   + h4*5*r3 + h3*5*r4 *)
(* # d1 = h1*r0 + h0*r1   + h4*5*r2 + h3*5*r3 + h2*5*r4 *)
(* # d0 = h0*r0 + h4*5*r1 + h3*5*r2 + h2*5*r3 + h1*5*r4 *)
(* # *)
(* # though note that $Tx and $Hx are "reversed" in this section, *)
(* # and $D4 is preloaded with r0^2... *)

(* vpmuludq %xmm5,%xmm14,%xmm10                    #! PC = 0x555555556300 *)
mul %xmm10 %xmm14 %xmm5;
(* vpmuludq %xmm6,%xmm14,%xmm11                    #! PC = 0x555555556304 *)
mul %xmm11 %xmm14 %xmm6;
(* vmovdqa %xmm2,0x20(%r11)                        #! EA = L0x7fffffffde70; PC = 0x555555556308 *)
mov [L0x7fffffffde70,L0x7fffffffde78] %xmm2;
(* vpmuludq %xmm7,%xmm14,%xmm12                    #! PC = 0x55555555630e *)
mul %xmm12 %xmm14 %xmm7;
(* vmovdqa 0x10(%rsp),%xmm2                        #! EA = L0x7fffffffdd40; Value = 0x0266aa03032b30fe; PC = 0x555555556312 *)
mov %xmm2 [L0x7fffffffdd40,L0x7fffffffdd48];
(* vpmuludq %xmm8,%xmm14,%xmm13                    #! PC = 0x555555556318 *)
mul %xmm13 %xmm14 %xmm8;
(* vpmuludq %xmm9,%xmm14,%xmm14                    #! PC = 0x55555555631d *)
mul %xmm14 %xmm14 %xmm9;
(* vmovdqa %xmm0,(%r11)                            #! EA = L0x7fffffffde50; PC = 0x555555556322 *)
mov [L0x7fffffffde50,L0x7fffffffde58] %xmm0;
(* vpmuludq 0x20(%rsp),%xmm9,%xmm0                 #! EA = L0x7fffffffdd50; Value = 0x0c01520f0fd7f4f6; PC = 0x555555556327 *)
mul %xmm0 %xmm9 [L0x7fffffffdd50,L0x7fffffffdd58];
(* vmovdqa %xmm1,0x10(%r11)                        #! EA = L0x7fffffffde60; PC = 0x55555555632d *)
mov [L0x7fffffffde60,L0x7fffffffde68] %xmm1;
(* vpmuludq %xmm8,%xmm2,%xmm1                      #! PC = 0x555555556333 *)
mul %xmm1 %xmm2 %xmm8;
(* vpaddq %xmm0,%xmm10,%xmm10                      #! PC = 0x555555556338 *)
add %xmm10 %xmm10 %xmm0;
(* vpaddq %xmm1,%xmm14,%xmm14                      #! PC = 0x55555555633c *)
add %xmm14 %xmm14 %xmm1;
(* vmovdqa %xmm3,0x30(%r11)                        #! EA = L0x7fffffffde80; PC = 0x555555556340 *)
mov [L0x7fffffffde80,L0x7fffffffde88] %xmm3;
(* vpmuludq %xmm7,%xmm2,%xmm0                      #! PC = 0x555555556346 *)
mul %xmm0 %xmm2 %xmm7;
(* vpmuludq %xmm6,%xmm2,%xmm1                      #! PC = 0x55555555634a *)
mul %xmm1 %xmm2 %xmm6;
(* vpaddq %xmm0,%xmm13,%xmm13                      #! PC = 0x55555555634e *)
add %xmm13 %xmm13 %xmm0;
(* vmovdqa 0x30(%rsp),%xmm3                        #! EA = L0x7fffffffdd60; Value = 0x0322008801802b93; PC = 0x555555556352 *)
mov %xmm3 [L0x7fffffffdd60,L0x7fffffffdd68];
(* vpaddq %xmm1,%xmm12,%xmm12                      #! PC = 0x555555556358 *)
add %xmm12 %xmm12 %xmm1;
(* vmovdqa %xmm4,0x40(%r11)                        #! EA = L0x7fffffffde90; PC = 0x55555555635c *)
mov [L0x7fffffffde90,L0x7fffffffde98] %xmm4;
(* vpmuludq %xmm5,%xmm2,%xmm2                      #! PC = 0x555555556362 *)
mul %xmm2 %xmm2 %xmm5;
(* vpmuludq %xmm7,%xmm3,%xmm0                      #! PC = 0x555555556366 *)
mul %xmm0 %xmm3 %xmm7;
(* vpaddq %xmm2,%xmm11,%xmm11                      #! PC = 0x55555555636a *)
add %xmm11 %xmm11 %xmm2;
(* vmovdqa 0x40(%rsp),%xmm4                        #! EA = L0x7fffffffdd70; Value = 0x0faa02a80780d9df; PC = 0x55555555636e *)
mov %xmm4 [L0x7fffffffdd70,L0x7fffffffdd78];
(* vpaddq %xmm0,%xmm14,%xmm14                      #! PC = 0x555555556374 *)
add %xmm14 %xmm14 %xmm0;
(* vpmuludq %xmm6,%xmm3,%xmm1                      #! PC = 0x555555556378 *)
mul %xmm1 %xmm3 %xmm6;
(* vpmuludq %xmm5,%xmm3,%xmm3                      #! PC = 0x55555555637c *)
mul %xmm3 %xmm3 %xmm5;
(* vpaddq %xmm1,%xmm13,%xmm13                      #! PC = 0x555555556380 *)
add %xmm13 %xmm13 %xmm1;
(* vmovdqa 0x50(%rsp),%xmm2                        #! EA = L0x7fffffffdd80; Value = 0x0190110c03c25d86; PC = 0x555555556384 *)
mov %xmm2 [L0x7fffffffdd80,L0x7fffffffdd88];
(* vpaddq %xmm3,%xmm12,%xmm12                      #! PC = 0x55555555638a *)
add %xmm12 %xmm12 %xmm3;
(* vpmuludq %xmm9,%xmm4,%xmm0                      #! PC = 0x55555555638e *)
mul %xmm0 %xmm4 %xmm9;
(* vpmuludq %xmm8,%xmm4,%xmm4                      #! PC = 0x555555556393 *)
mul %xmm4 %xmm4 %xmm8;
(* vpaddq %xmm0,%xmm11,%xmm11                      #! PC = 0x555555556398 *)
add %xmm11 %xmm11 %xmm0;
(* vmovdqa 0x60(%rsp),%xmm3                        #! EA = L0x7fffffffdd90; Value = 0x07d0553c12cbd39e; PC = 0x55555555639c *)
mov %xmm3 [L0x7fffffffdd90,L0x7fffffffdd98];
(* vpaddq %xmm4,%xmm10,%xmm10                      #! PC = 0x5555555563a2 *)
add %xmm10 %xmm10 %xmm4;
(* vmovdqa 0x80(%rsp),%xmm4                        #! EA = L0x7fffffffddb0; Value = 0x002aa54e13bb34ca; PC = 0x5555555563a6 *)
mov %xmm4 [L0x7fffffffddb0,L0x7fffffffddb8];
(* vpmuludq %xmm6,%xmm2,%xmm1                      #! PC = 0x5555555563af *)
mul %xmm1 %xmm2 %xmm6;
(* vpmuludq %xmm5,%xmm2,%xmm2                      #! PC = 0x5555555563b3 *)
mul %xmm2 %xmm2 %xmm5;
(* vpaddq %xmm1,%xmm14,%xmm14                      #! PC = 0x5555555563b7 *)
add %xmm14 %xmm14 %xmm1;
(* vpaddq %xmm2,%xmm13,%xmm13                      #! PC = 0x5555555563bb *)
add %xmm13 %xmm13 %xmm2;
(* vpmuludq %xmm9,%xmm3,%xmm0                      #! PC = 0x5555555563bf *)
mul %xmm0 %xmm3 %xmm9;
(* vpmuludq %xmm8,%xmm3,%xmm1                      #! PC = 0x5555555563c4 *)
mul %xmm1 %xmm3 %xmm8;
(* vpaddq %xmm0,%xmm12,%xmm12                      #! PC = 0x5555555563c9 *)
add %xmm12 %xmm12 %xmm0;
(* vmovdqu (%rsi),%xmm0                            #! EA = L0x55555555c0e0; Value = 0x0000000000000000; PC = 0x5555555563cd *)
mov %xmm0 [L0x55555555c0e0,L0x55555555c0e8];
(* vpaddq %xmm1,%xmm11,%xmm11                      #! PC = 0x5555555563d1 *)
add %xmm11 %xmm11 %xmm1;
(* vpmuludq %xmm7,%xmm3,%xmm3                      #! PC = 0x5555555563d5 *)
mul %xmm3 %xmm3 %xmm7;
(* vpmuludq %xmm7,%xmm4,%xmm7                      #! PC = 0x5555555563d9 *)
mul %xmm7 %xmm4 %xmm7;
(* vpaddq %xmm3,%xmm10,%xmm10                      #! PC = 0x5555555563dd *)
add %xmm10 %xmm10 %xmm3;
(* vmovdqu 0x10(%rsi),%xmm1                        #! EA = L0x55555555c0f0; Value = 0x0000000000000000; PC = 0x5555555563e1 *)
mov %xmm1 [L0x55555555c0f0,L0x55555555c0f8];
(* vpaddq %xmm7,%xmm11,%xmm11                      #! PC = 0x5555555563e6 *)
add %xmm11 %xmm11 %xmm7;
(* vpmuludq %xmm8,%xmm4,%xmm8                      #! PC = 0x5555555563ea *)
mul %xmm8 %xmm4 %xmm8;
(* vpmuludq %xmm9,%xmm4,%xmm9                      #! PC = 0x5555555563ef *)
mul %xmm9 %xmm4 %xmm9;
(* vpsrldq $0x6,%xmm0,%xmm2                        #! PC = 0x5555555563f4 *)
split %xmm2 %srldq %xmm0 48; shl %srldq %srldq [16@uint64,16@uint64];
add %xmm2 %xmm2 [%srldq[1],0@uint64];
(* vpaddq %xmm8,%xmm12,%xmm12                      #! PC = 0x5555555563f9 *)
add %xmm12 %xmm12 %xmm8;
(* vpaddq %xmm9,%xmm13,%xmm13                      #! PC = 0x5555555563fe *)
add %xmm13 %xmm13 %xmm9;
(* vpsrldq $0x6,%xmm1,%xmm3                        #! PC = 0x555555556403 *)
split %xmm3 %srldq %xmm1 48; shl %srldq %srldq [16@uint64,16@uint64];
add %xmm3 %xmm3 [%srldq[1],0@uint64];
(* vpmuludq 0x70(%rsp),%xmm5,%xmm9                 #! EA = L0x7fffffffdda0; Value = 0x0008877603f23dc2; PC = 0x555555556408 *)
mul %xmm9 %xmm5 [L0x7fffffffdda0,L0x7fffffffdda8];
(* vpmuludq %xmm6,%xmm4,%xmm5                      #! PC = 0x55555555640e *)
mul %xmm5 %xmm4 %xmm6;
(* vpunpckhqdq %xmm1,%xmm0,%xmm4                   #! PC = 0x555555556412 *)
mov %xmm4 [%xmm0[1],%xmm1[1]];
(* vpaddq %xmm9,%xmm14,%xmm14                      #! PC = 0x555555556416 *)
add %xmm14 %xmm14 %xmm9;
(* vmovdqa -0x90(%r11),%xmm9                       #! EA = L0x7fffffffddc0; Value = 0x01a6947403990cf4; PC = 0x55555555641b *)
mov %xmm9 [L0x7fffffffddc0,L0x7fffffffddc8];
(* vpaddq %xmm5,%xmm10,%xmm10                      #! PC = 0x555555556424 *)
add %xmm10 %xmm10 %xmm5;

assert eqmod (limbs 26 [%xmm10[0],%xmm11[0],%xmm12[0],%xmm13[0],%xmm14[0]])
             (limbs 64 [%INP[4],%INP[5],%padbit[0]] *
              limbs 26 [%R[0],%R[1],%R[2],%R[3],%R[4]]**2)
             (2**130 - 5) /\
       eqmod (limbs 26 [%xmm10[1],%xmm11[1],%xmm12[1],%xmm13[1],%xmm14[1]])
             (limbs 64 [%INP[6],%INP[7],%padbit[1]] *
              limbs 26 [%R[0],%R[1],%R[2],%R[3],%R[4]]**2)
             (2**130 - 5)
    && true;

(* vpunpcklqdq %xmm1,%xmm0,%xmm0                   #! PC = 0x555555556428 *)
mov %xmm0 [%xmm0[0],%xmm1[0]];
(* vpunpcklqdq %xmm3,%xmm2,%xmm3                   #! PC = 0x55555555642c *)
mov %xmm3 [%xmm2[0],%xmm3[0]];
(* vpsrldq $0x5,%xmm4,%xmm4                        #! PC = 0x555555556430 *)
split %xmm4 %srldq %xmm4 40; shl %srldq %srldq [24@uint64,24@uint64];
add %xmm4 %xmm4 [%srldq[1],0@uint64];
(* vpsrlq $0x1a,%xmm0,%xmm1                        #! PC = 0x555555556435 *)
split %xmm1 %srlq %xmm0 0x1a;
(* vpand  %xmm15,%xmm0,%xmm0                       #! PC = 0x55555555643a *)
and %xmm0@uint64[2] %xmm0 %xmm15;
(* vpsrlq $0x4,%xmm3,%xmm2                         #! PC = 0x55555555643f *)
split %xmm2 %srlq %xmm3 0x4;
(* vpand  %xmm15,%xmm1,%xmm1                       #! PC = 0x555555556444 *)
and %xmm1@uint64[2] %xmm1 %xmm15;
(* vpand  (%rcx),%xmm4,%xmm4                       #! EA = L0x55555555a040; Value = 0x0000000000ffffff; PC = 0x555555556449 *)
and %xmm4@uint64[2] %xmm4 [L0x55555555a040,L0x55555555a048];
(* vpsrlq $0x1e,%xmm3,%xmm3                        #! PC = 0x55555555644d *)
split %xmm3 %srlq %xmm3 0x1e;
(* vpand  %xmm15,%xmm2,%xmm2                       #! PC = 0x555555556452 *)
and %xmm2@uint64[2] %xmm2 %xmm15;
(* vpand  %xmm15,%xmm3,%xmm3                       #! PC = 0x555555556457 *)
and %xmm3@uint64[2] %xmm3 %xmm15;
(* vpor   0x20(%rcx),%xmm4,%xmm4                   #! EA = L0x55555555a060; Value = 0x0000000001000000; PC = 0x55555555645c *)
or %xmm4@uint64[2] %xmm4 [L0x55555555a060,L0x55555555a068];
(* vpaddq (%r11),%xmm0,%xmm0                       #! EA = L0x7fffffffde50; Value = 0x0000000001d874ef; PC = 0x555555556461 *)

assert true
    && uext (limbs 26 [%xmm0[0], %xmm1[0], %xmm2[0], %xmm3[0], %xmm4[0]]) 24 =
       limbs 64 [%INP[0], %INP[1], %padbit[0]] /\
       uext (limbs 26 [%xmm0[1], %xmm1[1], %xmm2[1], %xmm3[1], %xmm4[1]]) 24 =
       limbs 64 [%INP[2], %INP[3], %padbit[1]];
assume limbs 26 [%xmm0[0], %xmm1[0], %xmm2[0], %xmm3[0], %xmm4[0]] =
       limbs 64 [%INP[0], %INP[1], %padbit[0]] /\
       limbs 26 [%xmm0[1], %xmm1[1], %xmm2[1], %xmm3[1], %xmm4[1]] =
       limbs 64 [%INP[2], %INP[3], %padbit[1]]
    && true;

add %xmm0 %xmm0 [L0x7fffffffde50,L0x7fffffffde58];
(* vpaddq 0x10(%r11),%xmm1,%xmm1                   #! EA = L0x7fffffffde60; Value = 0x0000000000d76ead; PC = 0x555555556466 *)
add %xmm1 %xmm1 [L0x7fffffffde60,L0x7fffffffde68];
(* vpaddq 0x20(%r11),%xmm2,%xmm2                   #! EA = L0x7fffffffde70; Value = 0x000000000201f603; PC = 0x55555555646c *)
add %xmm2 %xmm2 [L0x7fffffffde70,L0x7fffffffde78];
(* vpaddq 0x30(%r11),%xmm3,%xmm3                   #! EA = L0x7fffffffde80; Value = 0x00000000026f490a; PC = 0x555555556472 *)
add %xmm3 %xmm3 [L0x7fffffffde80,L0x7fffffffde88];
(* vpaddq 0x40(%r11),%xmm4,%xmm4                   #! EA = L0x7fffffffde90; Value = 0x0000000002f0a64d; PC = 0x555555556478 *)
add %xmm4 %xmm4 [L0x7fffffffde90,L0x7fffffffde98];

assert limbs 26 [%xmm0[0], %xmm1[0], %xmm2[0], %xmm3[0], %xmm4[0]] =
       (limbs 64 [%INP[0], %INP[1], %padbit[0]] +
        limbs 26 [%H0[0],%H1[0],%H2[0],%H3[0],%H4[0]]) /\
       limbs 26 [%xmm0[1], %xmm1[1], %xmm2[1], %xmm3[1], %xmm4[1]] =
       (limbs 64 [%INP[2], %INP[3], %padbit[1]] +
        limbs 26 [%H0[1],%H1[1],%H2[1],%H3[1],%H4[1]])
    && true;

(* lea    0x20(%rsi),%rax                          #! PC = 0x55555555647e *)
(* lea %%EA, rax *)
nop;
(* lea    0x40(%rsi),%rsi                          #! PC = 0x555555556482 *)
(* lea %%EA, rsi *)
nop;
(* sub    $0x40,%rdx                               #! PC = 0x555555556486 *)
(* sub 0x40, rdx *)
nop;
(* cmovb  %rax,%rsi                                #! PC = 0x55555555648a *)
(* cmovb rax, rsi *)
nop;

(* ################################################################ *)
(* # Now we accumulate (inp[0:1]+hash)*r^4 *)
(* ################################################################ *)
(* # d4 = h4*r0 + h3*r1   + h2*r2   + h1*r3   + h0*r4 *)
(* # d3 = h3*r0 + h2*r1   + h1*r2   + h0*r3   + h4*5*r4 *)
(* # d2 = h2*r0 + h1*r1   + h0*r2   + h4*5*r3 + h3*5*r4 *)
(* # d1 = h1*r0 + h0*r1   + h4*5*r2 + h3*5*r3 + h2*5*r4 *)
(* # d0 = h0*r0 + h4*5*r1 + h3*5*r2 + h2*5*r3 + h1*5*r4 *)

(* vpmuludq %xmm0,%xmm9,%xmm5                      #! PC = 0x55555555648e *)
mul %xmm5 %xmm9 %xmm0;
(* vpmuludq %xmm1,%xmm9,%xmm6                      #! PC = 0x555555556492 *)
mul %xmm6 %xmm9 %xmm1;
(* vpaddq %xmm5,%xmm10,%xmm10                      #! PC = 0x555555556496 *)
add %xmm10 %xmm10 %xmm5;
(* vpaddq %xmm6,%xmm11,%xmm11                      #! PC = 0x55555555649a *)
add %xmm11 %xmm11 %xmm6;
(* vmovdqa -0x80(%r11),%xmm7                       #! EA = L0x7fffffffddd0; Value = 0x03d1291001016538; PC = 0x55555555649e *)
mov %xmm7 [L0x7fffffffddd0,L0x7fffffffddd8];
(* vpmuludq %xmm2,%xmm9,%xmm5                      #! PC = 0x5555555564a4 *)
mul %xmm5 %xmm9 %xmm2;
(* vpmuludq %xmm3,%xmm9,%xmm6                      #! PC = 0x5555555564a8 *)
mul %xmm6 %xmm9 %xmm3;
(* vpaddq %xmm5,%xmm12,%xmm12                      #! PC = 0x5555555564ac *)
add %xmm12 %xmm12 %xmm5;
(* vpaddq %xmm6,%xmm13,%xmm13                      #! PC = 0x5555555564b0 *)
add %xmm13 %xmm13 %xmm6;
(* vpmuludq %xmm4,%xmm9,%xmm9                      #! PC = 0x5555555564b4 *)
mul %xmm9 %xmm9 %xmm4;
(* vpmuludq -0x70(%r11),%xmm4,%xmm5                #! EA = L0x7fffffffdde0; Value = 0x1315cd500506fa18; PC = 0x5555555564b8 *)
mul %xmm5 %xmm4 [L0x7fffffffdde0,L0x7fffffffdde8];
(* vpaddq %xmm9,%xmm14,%xmm14                      #! PC = 0x5555555564be *)
add %xmm14 %xmm14 %xmm9;
(* vpaddq %xmm5,%xmm10,%xmm10                      #! PC = 0x5555555564c3 *)
add %xmm10 %xmm10 %xmm5;
(* vpmuludq %xmm2,%xmm7,%xmm6                      #! PC = 0x5555555564c7 *)
mul %xmm6 %xmm7 %xmm2;
(* vpmuludq %xmm3,%xmm7,%xmm5                      #! PC = 0x5555555564cb *)
mul %xmm5 %xmm7 %xmm3;
(* vpaddq %xmm6,%xmm13,%xmm13                      #! PC = 0x5555555564cf *)
add %xmm13 %xmm13 %xmm6;
(* vmovdqa -0x60(%r11),%xmm8                       #! EA = L0x7fffffffddf0; Value = 0x012426d2017b2763; PC = 0x5555555564d3 *)
mov %xmm8 [L0x7fffffffddf0,L0x7fffffffddf8];
(* vpaddq %xmm5,%xmm14,%xmm14                      #! PC = 0x5555555564d9 *)
add %xmm14 %xmm14 %xmm5;
(* vpmuludq %xmm1,%xmm7,%xmm6                      #! PC = 0x5555555564dd *)
mul %xmm6 %xmm7 %xmm1;
(* vpmuludq %xmm0,%xmm7,%xmm7                      #! PC = 0x5555555564e1 *)
mul %xmm7 %xmm7 %xmm0;
(* vpaddq %xmm6,%xmm12,%xmm12                      #! PC = 0x5555555564e5 *)
add %xmm12 %xmm12 %xmm6;
(* vpaddq %xmm7,%xmm11,%xmm11                      #! PC = 0x5555555564e9 *)
add %xmm11 %xmm11 %xmm7;
(* vmovdqa -0x50(%r11),%xmm9                       #! EA = L0x7fffffffde00; Value = 0x05b4c21a0767c4ef; PC = 0x5555555564ed *)
mov %xmm9 [L0x7fffffffde00,L0x7fffffffde08];
(* vpmuludq %xmm2,%xmm8,%xmm5                      #! PC = 0x5555555564f3 *)
mul %xmm5 %xmm8 %xmm2;
(* vpmuludq %xmm1,%xmm8,%xmm6                      #! PC = 0x5555555564f7 *)
mul %xmm6 %xmm8 %xmm1;
(* vpaddq %xmm5,%xmm14,%xmm14                      #! PC = 0x5555555564fb *)
add %xmm14 %xmm14 %xmm5;
(* vpaddq %xmm6,%xmm13,%xmm13                      #! PC = 0x5555555564ff *)
add %xmm13 %xmm13 %xmm6;
(* vmovdqa -0x40(%r11),%xmm7                       #! EA = L0x7fffffffde10; Value = 0x02265b6302f4bc5b; PC = 0x555555556503 *)
mov %xmm7 [L0x7fffffffde10,L0x7fffffffde18];
(* vpmuludq %xmm0,%xmm8,%xmm8                      #! PC = 0x555555556509 *)
mul %xmm8 %xmm8 %xmm0;
(* vpmuludq %xmm4,%xmm9,%xmm5                      #! PC = 0x55555555650d *)
mul %xmm5 %xmm9 %xmm4;
(* vpaddq %xmm8,%xmm12,%xmm12                      #! PC = 0x555555556511 *)
add %xmm12 %xmm12 %xmm8;
(* vpaddq %xmm5,%xmm11,%xmm11                      #! PC = 0x555555556516 *)
add %xmm11 %xmm11 %xmm5;
(* vmovdqa -0x30(%r11),%xmm8                       #! EA = L0x7fffffffde20; Value = 0x0abfc8ef0ec7adc7; PC = 0x55555555651a *)
mov %xmm8 [L0x7fffffffde20,L0x7fffffffde28];
(* vpmuludq %xmm3,%xmm9,%xmm9                      #! PC = 0x555555556520 *)
mul %xmm9 %xmm9 %xmm3;
(* vpmuludq %xmm1,%xmm7,%xmm6                      #! PC = 0x555555556524 *)
mul %xmm6 %xmm7 %xmm1;
(* vpaddq %xmm9,%xmm10,%xmm10                      #! PC = 0x555555556528 *)
add %xmm10 %xmm10 %xmm9;
(* vmovdqa -0x10(%r11),%xmm9                       #! EA = L0x7fffffffde40; Value = 0x0fc3cce70964f2bd; PC = 0x55555555652d *)
mov %xmm9 [L0x7fffffffde40,L0x7fffffffde48];
(* vpaddq %xmm6,%xmm14,%xmm14                      #! PC = 0x555555556533 *)
add %xmm14 %xmm14 %xmm6;
(* vpmuludq %xmm0,%xmm7,%xmm7                      #! PC = 0x555555556537 *)
mul %xmm7 %xmm7 %xmm0;
(* vpmuludq %xmm4,%xmm8,%xmm5                      #! PC = 0x55555555653b *)
mul %xmm5 %xmm8 %xmm4;
(* vpaddq %xmm7,%xmm13,%xmm13                      #! PC = 0x55555555653f *)
add %xmm13 %xmm13 %xmm7;
(* vpaddq %xmm5,%xmm12,%xmm12                      #! PC = 0x555555556543 *)
add %xmm12 %xmm12 %xmm5;
(* vmovdqu 0x20(%rsi),%xmm5                        #! EA = L0x55555555c140; Value = 0x0000000000000000; PC = 0x555555556547 *)
mov %xmm5 [L0x55555555c140,L0x55555555c148];
(* vpmuludq %xmm3,%xmm8,%xmm7                      #! PC = 0x55555555654c *)
mul %xmm7 %xmm8 %xmm3;
(* vpmuludq %xmm2,%xmm8,%xmm8                      #! PC = 0x555555556550 *)
mul %xmm8 %xmm8 %xmm2;
(* vpaddq %xmm7,%xmm11,%xmm11                      #! PC = 0x555555556554 *)
add %xmm11 %xmm11 %xmm7;
(* vmovdqu 0x30(%rsi),%xmm6                        #! EA = L0x55555555c150; Value = 0x0000000000000000; PC = 0x555555556558 *)
mov %xmm6 [L0x55555555c150,L0x55555555c158];
(* vpaddq %xmm8,%xmm10,%xmm10                      #! PC = 0x55555555655d *)
add %xmm10 %xmm10 %xmm8;
(* vpmuludq %xmm2,%xmm9,%xmm2                      #! PC = 0x555555556562 *)
mul %xmm2 %xmm9 %xmm2;
(* vpmuludq %xmm3,%xmm9,%xmm3                      #! PC = 0x555555556566 *)
mul %xmm3 %xmm9 %xmm3;
(* vpsrldq $0x6,%xmm5,%xmm7                        #! PC = 0x55555555656a *)
split %xmm7 %srldq %xmm5 48; shl %srldq %srldq [16@uint64,16@uint64];
add %xmm7 %xmm7 [%srldq[1],0@uint64];
(* vpaddq %xmm2,%xmm11,%xmm11                      #! PC = 0x55555555656f *)
add %xmm11 %xmm11 %xmm2;
(* vpmuludq %xmm4,%xmm9,%xmm4                      #! PC = 0x555555556573 *)
mul %xmm4 %xmm9 %xmm4;
(* vpsrldq $0x6,%xmm6,%xmm8                        #! PC = 0x555555556577 *)
split %xmm8 %srldq %xmm6 48; shl %srldq %srldq [16@uint64,16@uint64];
add %xmm8 %xmm8 [%srldq[1],0@uint64];
(* vpaddq %xmm3,%xmm12,%xmm2                       #! PC = 0x55555555657c *)
add %xmm2 %xmm12 %xmm3;
(* vpaddq %xmm4,%xmm13,%xmm3                       #! PC = 0x555555556580 *)
add %xmm3 %xmm13 %xmm4;
(* vpmuludq -0x20(%r11),%xmm0,%xmm4                #! EA = L0x7fffffffde30; Value = 0x032728fb01e0fd59; PC = 0x555555556584 *)
mul %xmm4 %xmm0 [L0x7fffffffde30,L0x7fffffffde38];
(* vpmuludq %xmm1,%xmm9,%xmm0                      #! PC = 0x55555555658a *)
mul %xmm0 %xmm9 %xmm1;
(* vpunpckhqdq %xmm6,%xmm5,%xmm9                   #! PC = 0x55555555658e *)
mov %xmm9 [%xmm5[1],%xmm6[1]];
(* vpaddq %xmm4,%xmm14,%xmm4                       #! PC = 0x555555556592 *)
add %xmm4 %xmm14 %xmm4;
(* vpaddq %xmm0,%xmm10,%xmm0                       #! PC = 0x555555556596 *)
add %xmm0 %xmm10 %xmm0;

(* vpunpcklqdq %xmm6,%xmm5,%xmm5                   #! PC = 0x55555555659a *)
mov %xmm5 [%xmm5[0],%xmm6[0]];
(* vpunpcklqdq %xmm8,%xmm7,%xmm8                   #! PC = 0x55555555659e *)
mov %xmm8 [%xmm7[0],%xmm8[0]];
(* vpsrldq $0x5,%xmm9,%xmm9                        #! PC = 0x5555555565a3 *)
split %xmm9 %srldq %xmm9 40; shl %srldq %srldq [24@uint64,24@uint64];
add %xmm9 %xmm9 [%srldq[1],0@uint64];
(* vpsrlq $0x1a,%xmm5,%xmm6                        #! PC = 0x5555555565a9 *)
split %xmm6 %srlq %xmm5 0x1a;
(* vmovdqa (%rsp),%xmm14                           #! EA = L0x7fffffffdd30; Value = 0x00cddeef029ea80f; PC = 0x5555555565ae *)
mov %xmm14 [L0x7fffffffdd30,L0x7fffffffdd38];
(* vpand  %xmm15,%xmm5,%xmm5                       #! PC = 0x5555555565b3 *)
and %xmm5@uint64[2] %xmm5 %xmm15;
(* vpsrlq $0x4,%xmm8,%xmm7                         #! PC = 0x5555555565b8 *)
split %xmm7 %srlq %xmm8 0x4;
(* vpand  %xmm15,%xmm6,%xmm6                       #! PC = 0x5555555565be *)
and %xmm6@uint64[2] %xmm6 %xmm15;
(* vpand  (%rcx),%xmm9,%xmm9                       #! EA = L0x55555555a040; Value = 0x0000000000ffffff; PC = 0x5555555565c3 *)
and %xmm9@uint64[2] %xmm9 [L0x55555555a040,L0x55555555a048];
(* vpsrlq $0x1e,%xmm8,%xmm8                        #! PC = 0x5555555565c7 *)
split %xmm8 %srlq %xmm8 0x1e;
(* vpand  %xmm15,%xmm7,%xmm7                       #! PC = 0x5555555565cd *)
and %xmm7@uint64[2] %xmm7 %xmm15;
(* vpand  %xmm15,%xmm8,%xmm8                       #! PC = 0x5555555565d2 *)
and %xmm8@uint64[2] %xmm8 %xmm15;
(* vpor   0x20(%rcx),%xmm9,%xmm9                   #! EA = L0x55555555a060; Value = 0x0000000001000000; PC = 0x5555555565d7 *)
or %xmm9@uint64[2] %xmm9 [L0x55555555a060,L0x55555555a068];

cut eqmod (limbs 26 [%xmm0[0],%xmm11[0],%xmm2[0],%xmm3[0],%xmm4[0]])
          ((limbs 64 [%INP[0],%INP[1],%padbit[0]] +
            limbs 26 [%H0[0],%H1[0],%H2[0],%H3[0],%H4[0]]) *
            limbs 26 [%R[0],%R[1],%R[2],%R[3],%R[4]]**4 +
           (limbs 64 [%INP[4],%INP[5],%padbit[0]] *
            limbs 26 [%R[0],%R[1],%R[2],%R[3],%R[4]]**2))
          (2**130 - 5) /\
    eqmod (limbs 26 [%xmm0[1],%xmm11[1],%xmm2[1],%xmm3[1],%xmm4[1]])
          ((limbs 64 [%INP[2],%INP[3],%padbit[1]] +
            limbs 26 [%H0[1],%H1[1],%H2[1],%H3[1],%H4[1]]) *
            limbs 26 [%R[0],%R[1],%R[2],%R[3],%R[4]]**4 +
           (limbs 64 [%INP[6],%INP[7],%padbit[1]] *
            limbs 26 [%R[0],%R[1],%R[2],%R[3],%R[4]]**2))
          (2**130 - 5)
 && limbs 64 [%INP[12],%INP[13],%padbit[0]] =
    uext (limbs 26 [%xmm5[0], %xmm6[0], %xmm7[0], %xmm8[0], %xmm9[0]]) 24 /\
    limbs 64 [%INP[14],%INP[15],%padbit[1]] =
    uext (limbs 26 [%xmm5[1], %xmm6[1], %xmm7[1], %xmm8[1], %xmm9[1]]) 24 /\
    %xmm0 <u [(2**60)@64, (2**60)@64] /\ %xmm11 <u [(2**60)@64, (2**60)@64] /\
    %xmm2 <u [(2**60)@64, (2**60)@64] /\  %xmm3 <u [(2**60)@64, (2**60)@64] /\
    %xmm4 <u [(2**60)@64, (2**60)@64] /\
    %xmm5 <u [(2**26)@64, (2**26)@64] /\ %xmm6 <u [(2**26)@64, (2**26)@64] /\
    %xmm7 <u [(2**26)@64, (2**26)@64] /\ %xmm8 <u [(2**26)@64, (2**26)@64] /\
    %xmm9 <u [(2**27)@64, (2**27)@64];

(* ################################################################ *)
(* # lazy reduction as discussed in "NEON crypto" by D.J. Bernstein *)
(* # and P. Schwabe *)

ghost %xmm0o@uint64[2],%xmm11o@uint64[2],%xmm2o@uint64[2],%xmm3o@uint64[2],
      %xmm4o@uint64[2]:
      %xmm0o = %xmm0 /\ %xmm11o = %xmm11 /\ %xmm2o = %xmm2 /\ %xmm3o = %xmm3 /\
      %xmm4o = %xmm4 &&
      %xmm0o = %xmm0 /\ %xmm11o = %xmm11 /\ %xmm2o = %xmm2 /\ %xmm3o = %xmm3 /\
      %xmm4o = %xmm4;

(* vpsrlq $0x1a,%xmm3,%xmm13                       #! PC = 0x5555555565dc *)
split %xmm13 %srlq %xmm3 0x1a;
(* vpand  %xmm15,%xmm3,%xmm3                       #! PC = 0x5555555565e1 *)
and %xmm3@uint64[2] %xmm3 %xmm15;
(* vpaddq %xmm13,%xmm4,%xmm4                       #! PC = 0x5555555565e6 *)
add %xmm4 %xmm4 %xmm13;
(* vpsrlq $0x1a,%xmm0,%xmm10                       #! PC = 0x5555555565eb *)
split %xmm10 %srlq %xmm0 0x1a;
(* vpand  %xmm15,%xmm0,%xmm0                       #! PC = 0x5555555565f0 *)
and %xmm0@uint64[2] %xmm0 %xmm15;
(* vpaddq %xmm10,%xmm11,%xmm1                      #! PC = 0x5555555565f5 *)
add %xmm1 %xmm11 %xmm10;
(* vpsrlq $0x1a,%xmm4,%xmm10                       #! PC = 0x5555555565fa *)
split %xmm10 %srlq %xmm4 0x1a;
(* vpand  %xmm15,%xmm4,%xmm4                       #! PC = 0x5555555565ff *)
and %xmm4@uint64[2] %xmm4 %xmm15;
(* vpsrlq $0x1a,%xmm1,%xmm11                       #! PC = 0x555555556604 *)
split %xmm11 %srlq %xmm1 0x1a;
(* vpand  %xmm15,%xmm1,%xmm1                       #! PC = 0x555555556609 *)
and %xmm1@uint64[2] %xmm1 %xmm15;
(* vpaddq %xmm11,%xmm2,%xmm2                       #! PC = 0x55555555660e *)
add %xmm2 %xmm2 %xmm11;
(* vpaddq %xmm10,%xmm0,%xmm0                       #! PC = 0x555555556613 *)
add %xmm0 %xmm0 %xmm10;
(* vpsllq $0x2,%xmm10,%xmm10                       #! PC = 0x555555556618 *)
shl %xmm10 %xmm10 [0x2@uint64,0x2@uint64];
(* vpaddq %xmm10,%xmm0,%xmm0                       #! PC = 0x55555555661e *)
add %xmm0 %xmm0 %xmm10;
(* vpsrlq $0x1a,%xmm2,%xmm12                       #! PC = 0x555555556623 *)
split %xmm12 %srlq %xmm2 0x1a;
(* vpand  %xmm15,%xmm2,%xmm2                       #! PC = 0x555555556628 *)
and %xmm2@uint64[2] %xmm2 %xmm15;
(* vpaddq %xmm12,%xmm3,%xmm3                       #! PC = 0x55555555662d *)
add %xmm3 %xmm3 %xmm12;
(* vpsrlq $0x1a,%xmm0,%xmm10                       #! PC = 0x555555556632 *)
split %xmm10 %srlq %xmm0 0x1a;
(* vpand  %xmm15,%xmm0,%xmm0                       #! PC = 0x555555556637 *)
and %xmm0@uint64[2] %xmm0 %xmm15;
(* vpaddq %xmm10,%xmm1,%xmm1                       #! PC = 0x55555555663c *)
add %xmm1 %xmm1 %xmm10;
(* vpsrlq $0x1a,%xmm3,%xmm13                       #! PC = 0x555555556641 *)
split %xmm13 %srlq %xmm3 0x1a;
(* vpand  %xmm15,%xmm3,%xmm3                       #! PC = 0x555555556646 *)
and %xmm3@uint64[2] %xmm3 %xmm15;
(* vpaddq %xmm13,%xmm4,%xmm4                       #! PC = 0x55555555664b *)
add %xmm4 %xmm4 %xmm13;
(* #ja     0x555555556300 <poly1305_blocks_avx+1120>#! PC = 0x555555556650 *)
#ja     0x555555556300 <poly1305_blocks_avx+1120>#! 0x555555556650 = 0x555555556650;

assert true
    && eqmod (limbs 26 [%xmm0o[0],%xmm11o[0],%xmm2o[0],%xmm3o[0],%xmm4o[0]])
             (limbs 26 [%xmm0[0],%xmm1[0],%xmm2[0],%xmm3[0],%xmm4[0]])
             ((2**130 - 5)@168) /\
       eqmod (limbs 26 [%xmm0o[1],%xmm11o[1],%xmm2o[1],%xmm3o[1],%xmm4o[1]])
             (limbs 26 [%xmm0[1],%xmm1[1],%xmm2[1],%xmm3[1],%xmm4[1]])
             ((2**130 - 5)@168);
assume eqmod (limbs 26 [%xmm0o[0],%xmm11o[0],%xmm2o[0],%xmm3o[0],%xmm4o[0]])
             (limbs 26 [%xmm0[0],%xmm1[0],%xmm2[0],%xmm3[0],%xmm4[0]])
             (2**130 - 5) /\
       eqmod (limbs 26 [%xmm0o[1],%xmm11o[1],%xmm2o[1],%xmm3o[1],%xmm4o[1]])
             (limbs 26 [%xmm0[1],%xmm1[1],%xmm2[1],%xmm3[1],%xmm4[1]])
             (2**130 - 5) && true;

mov %HH0 %xmm0; mov %HH1 %xmm1; mov %HH2 %xmm2; mov %HH3 %xmm3; mov %HH4 %xmm4;
mov %TT0 %xmm5; mov %TT1 %xmm6; mov %TT2 %xmm7; mov %TT3 %xmm8; mov %TT4 %xmm9;
{
  eqmod (limbs 26 [%HH0[0], %HH1[0], %HH2[0], %HH3[0], %HH4[0]])
        ((limbs 64 [%INP[0], %INP[1], %padbit[0]] +
          limbs 26 [%H0[0], %H1[0], %H2[0], %H3[0], %H4[0]]) *
         limbs 26 [%R[0], %R[1], %R[2], %R[3], %R[4]]**4 +
         limbs 64 [%INP[4], %INP[5], %padbit[0]] *
         limbs 26 [%R[0], %R[1], %R[2], %R[3], %R[4]]**2)
        (2**130 - 5) /\
  eqmod (limbs 26 [%HH0[1], %HH1[1], %HH2[1], %HH3[1], %HH4[1]])
        ((limbs 64 [%INP[2], %INP[3], %padbit[1]] +
          limbs 26 [%H0[1], %H1[1], %H2[1], %H3[1], %H4[1]]) *
         limbs 26 [%R[0], %R[1], %R[2], %R[3], %R[4]]**4 +
         limbs 64 [%INP[6], %INP[7], %padbit[1]] *
         limbs 26 [%R[0], %R[1], %R[2], %R[3], %R[4]]**2)
        (2**130 - 5)
&&
  limbs 64 [%INP[12],%INP[13],%padbit[0]] =
  uext (limbs 26 [%TT0[0], %TT1[0], %TT2[0], %TT3[0], %TT4[0]]) 24 /\
  limbs 64 [%INP[14],%INP[15],%padbit[1]] =
  uext (limbs 26 [%TT0[1], %TT1[1], %TT2[1], %TT3[1], %TT4[1]]) 24 /\
  %HH0 <u [(2**26)@64, (2**26)@64] /\ %HH1 <u [(2**27)@64, (2**27)@64] /\
  %HH2 <u [(2**26)@64, (2**26)@64] /\ %HH3 <u [(2**26)@64, (2**26)@64] /\
  %HH4 <u [(2**27)@64, (2**27)@64]  /\
  %TT0 <u [(2**26)@64, (2**26)@64] /\ %TT1 <u [(2**26)@64, (2**26)@64] /\
  %TT2 <u [(2**26)@64, (2**26)@64] /\ %TT3 <u [(2**26)@64, (2**26)@64] /\
  %TT4 <u [(2**27)@64, (2**27)@64]
}

