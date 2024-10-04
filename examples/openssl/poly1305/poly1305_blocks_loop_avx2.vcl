proc main (uint64[4] %ymm0,uint64[4] %ymm1,uint64[4] %ymm2,uint64[4] %ymm3,
           uint64[4] %ymm4,
           uint64[4] %ymm6,uint64[4] %ymm7,uint64[4] %ymm8,uint64[4] %ymm9,
           uint64[4] %ymm10,
           uint64[4] %H0,uint64[4] %H1,uint64[4] %H2,uint64[4] %H3,uint64[4] %H4,
           uint64[4] %T0,uint64[4] %T1,uint64[4] %T2,uint64[4] %T3,uint64[4] %T4,
           uint64[5] %R, uint64[5] %R4,
           uint64[5] %S, uint64[5] %S4,
           uint64[8] %INP,
           uint64[4] %padbit) =
{
  %ymm0 = %H0 /\ %ymm1 = %H1 /\ %ymm2 = %H2 + %T2 /\
  %ymm3 = %H3 /\ %ymm4 = %H4 /\
  %ymm7 = %T0 /\ %ymm8 = %T1 /\ %ymm9 = %T2 /\ %ymm10 = %T3 /\ %ymm6 = %T4 /\
  eqmod (limbs 26 [%R4[0],%R4[1],%R4[2],%R4[3],%R4[4]])
        (limbs 26 [%R[0],%R[1],%R[2],%R[3],%R[4]]**4) (2**130 - 5) /\
  %S = [5, 5, 5, 5, 5] * %R /\ %S4 = [5, 5, 5, 5, 5] * %R4
&&
  %ymm0 = %H0 /\ %ymm1 = %H1 /\ %ymm2 = %H2 + %T2 /\
  %ymm3 = %H3 /\ %ymm4 = %H4 /\
  %ymm7 = %T0 /\ %ymm8 = %T1 /\ %ymm9 = %T2 /\ %ymm10 = %T3 /\ %ymm6 = %T4 /\
  %padbit <u [2@64, 2@64, 2@64, 2@64] /\
  %H0 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %H1 <u [(2**27)@64,(2**27)@64,(2**27)@64,(2**27)@64] /\
  %H2 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %H3 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %H4 <u [(2**27)@64,(2**27)@64,(2**27)@64,(2**27)@64] /\
  %T0 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %T1 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %T2 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %T3 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %T4 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %R  <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %R4 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %S  <u [(2**29)@64,(2**29)@64,(2**29)@64,(2**29)@64,(2**29)@64] /\
  %S4 <u [(2**29)@64,(2**29)@64,(2**29)@64,(2**29)@64,(2**29)@64]
}

mov [L0x55555555c080,L0x55555555c088,L0x55555555c090,L0x55555555c098]
    [%INP[0],%INP[1],%INP[2],%INP[3]];
mov [L0x55555555c0a0,L0x55555555c0a8,L0x55555555c0b0,L0x55555555c0b8]
    [%INP[4],%INP[5],%INP[6],%INP[7]];

mul [L0x55555555a060,L0x55555555a068,L0x55555555a070,L0x55555555a078]
    %padbit
    [0x1000000@uint64,0x1000000@uint64,0x1000000@uint64,0x1000000@uint64];

mov [L0x55555555a080,L0x55555555a088,L0x55555555a090,L0x55555555a098]
    [0x3ffffff@uint64,0x3ffffff@uint64,0x3ffffff@uint64,0x3ffffff@uint64];
    
mov [L0x7fffffffde00,L0x7fffffffde08,L0x7fffffffde10,L0x7fffffffde18]
    [%R4[0],%R4[0],%R4[0],%R4[0]];
mov [L0x7fffffffde20,L0x7fffffffde28,L0x7fffffffde30,L0x7fffffffde38]
    [%R4[1],%R4[1],%R4[1],%R4[1]];
mov [L0x7fffffffde40,L0x7fffffffde48,L0x7fffffffde50,L0x7fffffffde58]
    [%S4[1],%S4[1],%S4[1],%S4[1]];
mov [L0x7fffffffde60,L0x7fffffffde68,L0x7fffffffde70,L0x7fffffffde78]
    [%R4[2],%R4[2],%R4[2],%R4[2]];
mov [L0x7fffffffde80,L0x7fffffffde88,L0x7fffffffde90,L0x7fffffffde98]
    [%S4[2],%S4[2],%S4[2],%S4[2]];
mov [L0x7fffffffdea0,L0x7fffffffdea8,L0x7fffffffdeb0,L0x7fffffffdeb8]
    [%R4[3],%R4[3],%R4[3],%R4[3]];
mov [L0x7fffffffdec0,L0x7fffffffdec8,L0x7fffffffded0,L0x7fffffffded8]
    [%S4[3],%S4[3],%S4[3],%S4[3]];
mov [L0x7fffffffdee0,L0x7fffffffdee8,L0x7fffffffdef0,L0x7fffffffdff8]
    [%R4[4],%R4[4],%R4[4],%R4[4]];
mov [L0x7fffffffdf00,L0x7fffffffdf08,L0x7fffffffdf10,L0x7fffffffdf18]
    [%S4[4],%S4[4],%S4[4],%S4[4]];

(* ################################################################ *)
(* # ((inp[0]*r^4+inp[4])*r^4+inp[ 8])*r^4 *)
(* # ((inp[1]*r^4+inp[5])*r^4+inp[ 9])*r^3 *)
(* # ((inp[2]*r^4+inp[6])*r^4+inp[10])*r^2 *)
(* # ((inp[3]*r^4+inp[7])*r^4+inp[11])*r^1 *)
(* #   \________/\__________/ *)
(* ################################################################ *)

(* vpaddq %ymm0,%ymm7,%ymm0                        #! PC = 0x555555556e80 *)
add %ymm0 %ymm7 %ymm0;
(* vmovdqa (%rsp),%ymm7                            #! EA = L0x7fffffffde00; Value = 0x03990cf403990cf4; PC = 0x555555556e84 *)
mov %ymm7 [L0x7fffffffde00,L0x7fffffffde08,L0x7fffffffde10,L0x7fffffffde18];
(* vpaddq %ymm1,%ymm8,%ymm1                        #! PC = 0x555555556e89 *)
add %ymm1 %ymm8 %ymm1;
(* vmovdqa 0x20(%rsp),%ymm8                        #! EA = L0x7fffffffde20; Value = 0x0101653801016538; PC = 0x555555556e8d *)
mov %ymm8 [L0x7fffffffde20,L0x7fffffffde28,L0x7fffffffde30,L0x7fffffffde38];
(* vpaddq %ymm3,%ymm10,%ymm3                       #! PC = 0x555555556e93 *)
add %ymm3 %ymm10 %ymm3;
(* vmovdqa 0x60(%rsp),%ymm9                        #! EA = L0x7fffffffde60; Value = 0x017b2763017b2763; PC = 0x555555556e97 *)
mov %ymm9 [L0x7fffffffde60,L0x7fffffffde68,L0x7fffffffde70,L0x7fffffffde78];
(* vpaddq %ymm4,%ymm6,%ymm4                        #! PC = 0x555555556e9d *)
add %ymm4 %ymm6 %ymm4;
(* vmovdqa 0x30(%rax),%ymm10                       #! EA = L0x7fffffffdec0; Value = 0x0ec7adc70ec7adc7; PC = 0x555555556ea1 *)
mov %ymm10 [L0x7fffffffdec0,L0x7fffffffdec8,L0x7fffffffded0,L0x7fffffffded8];
(* vmovdqa 0x70(%rax),%ymm5                        #! EA = L0x7fffffffdf00; Value = 0x0964f2bd0964f2bd; PC = 0x555555556ea6 *)
mov %ymm5 [L0x7fffffffdf00,L0x7fffffffdf08,L0x7fffffffdf10,L0x7fffffffdf18];

(* # d4 = h4*r0 + h3*r1   + h2*r2   + h1*r3   + h0*r4 *)
(* # d3 = h3*r0 + h2*r1   + h1*r2   + h0*r3   + h4*5*r4 *)
(* # d2 = h2*r0 + h1*r1   + h0*r2   + h4*5*r3 + h3*5*r4 *)
(* # d1 = h1*r0 + h0*r1   + h4*5*r2 + h3*5*r3 + h2*5*r4 *)
(* # d0 = h0*r0 + h4*5*r1 + h3*5*r2 + h2*5*r3 + h1*5*r4 *)
(* # *)
(* # however, as h2 is "chronologically" first one available pull *)
(* # corresponding operations up, so it's *)
(* # *)
(* # d4 = h2*r2   + h4*r0 + h3*r1             + h1*r3   + h0*r4 *)
(* # d3 = h2*r1   + h3*r0           + h1*r2   + h0*r3   + h4*5*r4 *)
(* # d2 = h2*r0           + h1*r1   + h0*r2   + h4*5*r3 + h3*5*r4 *)
(* # d1 = h2*5*r4 + h1*r0 + h0*r1   + h4*5*r2 + h3*5*r3 *)
(* # d0 = h2*5*r3 + h0*r0 + h4*5*r1 + h3*5*r2           + h1*5*r4 *)

(* vpmuludq %ymm2,%ymm7,%ymm13                     #! PC = 0x555555556eab *)
mul %ymm13 %ymm7 %ymm2;
(* vpmuludq %ymm2,%ymm8,%ymm14                     #! PC = 0x555555556eaf *)
mul %ymm14 %ymm8 %ymm2;
(* vpmuludq %ymm2,%ymm9,%ymm15                     #! PC = 0x555555556eb3 *)
mul %ymm15 %ymm9 %ymm2;
(* vpmuludq %ymm2,%ymm10,%ymm11                    #! PC = 0x555555556eb7 *)
mul %ymm11 %ymm10 %ymm2;
(* vpmuludq %ymm2,%ymm5,%ymm12                     #! PC = 0x555555556ebb *)
mul %ymm12 %ymm5 %ymm2;
(* vpmuludq %ymm0,%ymm8,%ymm6                      #! PC = 0x555555556ebf *)
mul %ymm6 %ymm8 %ymm0;
(* vpmuludq %ymm1,%ymm8,%ymm2                      #! PC = 0x555555556ec3 *)
mul %ymm2 %ymm8 %ymm1;
(* vpaddq %ymm6,%ymm12,%ymm12                      #! PC = 0x555555556ec7 *)
add %ymm12 %ymm12 %ymm6;
(* vpaddq %ymm2,%ymm13,%ymm13                      #! PC = 0x555555556ecb *)
add %ymm13 %ymm13 %ymm2;
(* vpmuludq %ymm3,%ymm8,%ymm6                      #! PC = 0x555555556ecf *)
mul %ymm6 %ymm8 %ymm3;
(* vpmuludq 0x40(%rsp),%ymm4,%ymm2                 #! EA = L0x7fffffffde40; Value = 0x0506fa180506fa18; PC = 0x555555556ed3 *)
mul %ymm2 %ymm4 [L0x7fffffffde40,L0x7fffffffde48,L0x7fffffffde50,L0x7fffffffde58];
(* vpaddq %ymm6,%ymm15,%ymm15                      #! PC = 0x555555556ed9 *)
add %ymm15 %ymm15 %ymm6;
(* vpaddq %ymm2,%ymm11,%ymm11                      #! PC = 0x555555556edd *)
add %ymm11 %ymm11 %ymm2;
(* vmovdqa -0x10(%rax),%ymm8                       #! EA = L0x7fffffffde80; Value = 0x0767c4ef0767c4ef; PC = 0x555555556ee1 *)
mov %ymm8 [L0x7fffffffde80,L0x7fffffffde88,L0x7fffffffde90,L0x7fffffffde98];
(* vpmuludq %ymm0,%ymm7,%ymm6                      #! PC = 0x555555556ee6 *)
mul %ymm6 %ymm7 %ymm0;
(* vpmuludq %ymm1,%ymm7,%ymm2                      #! PC = 0x555555556eea *)
mul %ymm2 %ymm7 %ymm1;
(* vpaddq %ymm6,%ymm11,%ymm11                      #! PC = 0x555555556eee *)
add %ymm11 %ymm11 %ymm6;
(* vpaddq %ymm2,%ymm12,%ymm12                      #! PC = 0x555555556ef2 *)
add %ymm12 %ymm12 %ymm2;
(* vpmuludq %ymm3,%ymm7,%ymm6                      #! PC = 0x555555556ef6 *)
mul %ymm6 %ymm7 %ymm3;
(* vpmuludq %ymm4,%ymm7,%ymm2                      #! PC = 0x555555556efa *)
mul %ymm2 %ymm7 %ymm4;
(* vmovdqu (%rsi),%xmm7                            #! EA = L0x55555555c080; Value = 0x0000000000000000; PC = 0x555555556efe *)
mov %ymm7 [L0x55555555c080,L0x55555555c088,%ymm7[2],%ymm7[3]];
(* vpaddq %ymm6,%ymm14,%ymm14                      #! PC = 0x555555556f02 *)
add %ymm14 %ymm14 %ymm6;
(* vpaddq %ymm2,%ymm15,%ymm15                      #! PC = 0x555555556f06 *)
add %ymm15 %ymm15 %ymm2;
(* vinserti128 $0x1,0x20(%rsi),%ymm7,%ymm7         #! EA = L0x55555555c0a0; Value = 0x0000000000000000; PC = 0x555555556f0a *)
mov %ymm7 [%ymm7[0],%ymm7[1],L0x55555555c0a0,L0x55555555c0a8];
(* vpmuludq %ymm3,%ymm8,%ymm6                      #! PC = 0x555555556f11 *)
mul %ymm6 %ymm8 %ymm3;
(* vpmuludq %ymm4,%ymm8,%ymm2                      #! PC = 0x555555556f15 *)
mul %ymm2 %ymm8 %ymm4;
(* vmovdqu 0x10(%rsi),%xmm8                        #! EA = L0x55555555c090; Value = 0x0000000000000000; PC = 0x555555556f19 *)
mov %ymm8 [L0x55555555c090,L0x55555555c098,%ymm8[2],%ymm8[3]];
(* vpaddq %ymm6,%ymm11,%ymm11                      #! PC = 0x555555556f1e *)
add %ymm11 %ymm11 %ymm6;
(* vpaddq %ymm2,%ymm12,%ymm12                      #! PC = 0x555555556f22 *)
add %ymm12 %ymm12 %ymm2;
(* vmovdqa 0x10(%rax),%ymm2                        #! EA = L0x7fffffffdea0; Value = 0x02f4bc5b02f4bc5b; PC = 0x555555556f26 *)
mov %ymm2 [L0x7fffffffdea0,L0x7fffffffdea8,L0x7fffffffdeb0,L0x7fffffffdeb8];
(* vpmuludq %ymm1,%ymm9,%ymm6                      #! PC = 0x555555556f2b *)
mul %ymm6 %ymm9 %ymm1;
(* vpmuludq %ymm0,%ymm9,%ymm9                      #! PC = 0x555555556f2f *)
mul %ymm9 %ymm9 %ymm0;
(* vpaddq %ymm6,%ymm14,%ymm14                      #! PC = 0x555555556f33 *)
add %ymm14 %ymm14 %ymm6;
(* vpaddq %ymm9,%ymm13,%ymm13                      #! PC = 0x555555556f37 *)
add %ymm13 %ymm13 %ymm9;
(* vinserti128 $0x1,0x30(%rsi),%ymm8,%ymm8         #! EA = L0x55555555c0b0; Value = 0x0000000000000000; PC = 0x555555556f3c *)
mov %ymm8 [%ymm8[0],%ymm8[1],L0x55555555c0b0,L0x55555555c0b8];
(* lea    0x40(%rsi),%rsi                          #! PC = 0x555555556f43 *)
(* lea %%EA, %rsi *)
nop;
(* vpmuludq %ymm1,%ymm2,%ymm6                      #! PC = 0x555555556f47 *)
mul %ymm6 %ymm2 %ymm1;
(* vpmuludq %ymm0,%ymm2,%ymm2                      #! PC = 0x555555556f4b *)
mul %ymm2 %ymm2 %ymm0;
(* vpsrldq $0x6,%ymm7,%ymm9                        #! PC = 0x555555556f4f *)
split %ymm9 %srldq %ymm7 48;
shl %srldq %srldq [16@uint64,16@uint64,16@uint64,16@uint64];
add %ymm9 %ymm9 [%srldq[1],0@uint64,%srldq[3],0@uint64];
(* vpaddq %ymm6,%ymm15,%ymm15                      #! PC = 0x555555556f54 *)
add %ymm15 %ymm15 %ymm6;
(* vpaddq %ymm2,%ymm14,%ymm14                      #! PC = 0x555555556f58 *)
add %ymm14 %ymm14 %ymm2;
(* vpmuludq %ymm3,%ymm10,%ymm6                     #! PC = 0x555555556f5c *)
mul %ymm6 %ymm10 %ymm3;
(* vpmuludq %ymm4,%ymm10,%ymm2                     #! PC = 0x555555556f60 *)
mul %ymm2 %ymm10 %ymm4;
(* vpsrldq $0x6,%ymm8,%ymm10                       #! PC = 0x555555556f64 *)
split %ymm10 %srldq %ymm8 48;
shl %srldq %srldq [16@uint64,16@uint64,16@uint64,16@uint64];
add %ymm10 %ymm10 [%srldq[1],0@uint64,%srldq[3],0@uint64];
(* vpaddq %ymm6,%ymm12,%ymm12                      #! PC = 0x555555556f6a *)
add %ymm12 %ymm12 %ymm6;
(* vpaddq %ymm2,%ymm13,%ymm13                      #! PC = 0x555555556f6e *)
add %ymm13 %ymm13 %ymm2;
(* vpunpckhqdq %ymm8,%ymm7,%ymm6                   #! PC = 0x555555556f72 *)
mov %ymm6 [%ymm7[1],%ymm8[1],%ymm7[3],%ymm8[3]];
(* vpmuludq %ymm3,%ymm5,%ymm3                      #! PC = 0x555555556f77 *)
mul %ymm3 %ymm5 %ymm3;
(* vpmuludq %ymm4,%ymm5,%ymm4                      #! PC = 0x555555556f7b *)
mul %ymm4 %ymm5 %ymm4;
(* vpunpcklqdq %ymm8,%ymm7,%ymm7                   #! PC = 0x555555556f7f *)
mov %ymm7 [%ymm7[0],%ymm8[0],%ymm7[2],%ymm8[2]];
(* vpaddq %ymm3,%ymm13,%ymm2                       #! PC = 0x555555556f84 *)
add %ymm2 %ymm13 %ymm3;
(* vpaddq %ymm4,%ymm14,%ymm3                       #! PC = 0x555555556f88 *)
add %ymm3 %ymm14 %ymm4;
(* vpunpcklqdq %ymm10,%ymm9,%ymm10                 #! PC = 0x555555556f8c *)
mov %ymm10 [%ymm9[0],%ymm10[0],%ymm9[2],%ymm10[2]];
(* vpmuludq 0x50(%rax),%ymm0,%ymm4                 #! EA = L0x7fffffffdee0; Value = 0x01e0fd5901e0fd59; PC = 0x555555556f91 *)
mul %ymm4 %ymm0 [L0x7fffffffdee0,L0x7fffffffdee8,L0x7fffffffdef0,L0x7fffffffdff8];
(* vpmuludq %ymm1,%ymm5,%ymm0                      #! PC = 0x555555556f96 *)
mul %ymm0 %ymm5 %ymm1;
(* vmovdqa 0x40(%rcx),%ymm5                        #! EA = L0x55555555a080; Value = 0x0000000003ffffff; PC = 0x555555556f9a *)
mov %ymm5 [L0x55555555a080,L0x55555555a088,L0x55555555a090,L0x55555555a098];
(* vpaddq %ymm4,%ymm15,%ymm4                       #! PC = 0x555555556f9f *)
add %ymm4 %ymm15 %ymm4;
(* vpaddq %ymm0,%ymm11,%ymm0                       #! PC = 0x555555556fa3 *)
add %ymm0 %ymm11 %ymm0;

cut eqmod (limbs 26 [%ymm0[0],%ymm12[0],%ymm2[0],%ymm3[0],%ymm4[0]])
           ((limbs 26 [%H0[0],%H1[0],%H2[0],%H3[0],%H4[0]] +
             limbs 26 [%T0[0],%T1[0],%T2[0],%T3[0],%T4[0]]) *
            limbs 26 [%R[0],%R[1],%R[2],%R[3],%R[4]]**4) (2**130 - 5) /\
    eqmod (limbs 26 [%ymm0[1],%ymm12[1],%ymm2[1],%ymm3[1],%ymm4[1]])
           ((limbs 26 [%H0[1],%H1[1],%H2[1],%H3[1],%H4[1]] +
             limbs 26 [%T0[1],%T1[1],%T2[1],%T3[1],%T4[1]]) *
            limbs 26 [%R[0],%R[1],%R[2],%R[3],%R[4]]**4) (2**130 - 5) /\
    eqmod (limbs 26 [%ymm0[2],%ymm12[2],%ymm2[2],%ymm3[2],%ymm4[2]])
           ((limbs 26 [%H0[2],%H1[2],%H2[2],%H3[2],%H4[2]] +
             limbs 26 [%T0[2],%T1[2],%T2[2],%T3[2],%T4[2]]) *
            limbs 26 [%R[0],%R[1],%R[2],%R[3],%R[4]]**4) (2**130 - 5) /\
    eqmod (limbs 26 [%ymm0[3],%ymm12[3],%ymm2[3],%ymm3[3],%ymm4[3]])
           ((limbs 26 [%H0[3],%H1[3],%H2[3],%H3[3],%H4[3]] +
             limbs 26 [%T0[3],%T1[3],%T2[3],%T3[3],%T4[3]]) *
            limbs 26 [%R[0],%R[1],%R[2],%R[3],%R[4]]**4) (2**130 - 5)
 && %ymm7 = [%INP[0],%INP[2],%INP[4],%INP[6]] /\
    uext (%ymm10[0]) 64 =
    (shr (limbs 64 [%INP[0],%INP[1]]) 48@128) & 0xffffffffffffffff@128 /\
    uext (%ymm10[1]) 64 =
    (shr (limbs 64 [%INP[2],%INP[3]]) 48@128) & 0xffffffffffffffff@128 /\
    uext (%ymm10[2]) 64 =
    (shr (limbs 64 [%INP[4],%INP[5]]) 48@128) & 0xffffffffffffffff@128 /\
    uext (%ymm10[3]) 64 =
    (shr (limbs 64 [%INP[6],%INP[7]]) 48@128) & 0xffffffffffffffff@128 /\
    %ymm6 = [%INP[1],%INP[3],%INP[5],%INP[7]] /\
     %ymm0 <u [(2**60)@64,(2**60)@64,(2**60)@64,(2**60)@64] /\
    %padbit <u [2@64, 2@64, 2@64, 2@64] /\
    [L0x55555555a060,L0x55555555a068,L0x55555555a070,L0x55555555a078] =
    %padbit * [0x1000000@64,0x1000000@64,0x1000000@64,0x1000000@64] /\
    %ymm12 <u [(2**60)@64,(2**60)@64,(2**60)@64,(2**60)@64] /\
     %ymm2 <u [(2**60)@64,(2**60)@64,(2**60)@64,(2**60)@64] /\
     %ymm3 <u [(2**60)@64,(2**60)@64,(2**60)@64,(2**60)@64] /\
     %ymm4 <u [(2**60)@64,(2**60)@64,(2**60)@64,(2**60)@64];


(* ################################################################ *)
(* # lazy reduction (interleaved with tail of input splat) *)

ghost %ymm0o@uint64[4],%ymm12o@uint64[4],%ymm2o@uint64[4],%ymm3o@uint64[4],
      %ymm4o@uint64[4]:
      %ymm0o=%ymm0 /\ %ymm12o=%ymm12 /\ %ymm2o=%ymm2 /\ %ymm3o=%ymm3 /\
      %ymm4o=%ymm4
   && %ymm0o=%ymm0 /\ %ymm12o=%ymm12 /\ %ymm2o=%ymm2 /\ %ymm3o=%ymm3 /\
      %ymm4o=%ymm4;
      
(* vpsrlq $0x1a,%ymm3,%ymm14                       #! PC = 0x555555556fa7 *)
split %ymm14 %srlq %ymm3 0x1a;
(* vpand  %ymm5,%ymm3,%ymm3                        #! PC = 0x555555556fac *)
and %ymm3@uint64[4] %ymm3 %ymm5;
(* vpaddq %ymm14,%ymm4,%ymm4                       #! PC = 0x555555556fb0 *)
add %ymm4 %ymm4 %ymm14;
(* vpsrlq $0x1a,%ymm0,%ymm11                       #! PC = 0x555555556fb5 *)
split %ymm11 %srlq %ymm0 0x1a;
(* vpand  %ymm5,%ymm0,%ymm0                        #! PC = 0x555555556fba *)
and %ymm0@uint64[4] %ymm0 %ymm5;
(* vpaddq %ymm11,%ymm12,%ymm1                      #! PC = 0x555555556fbe *)
add %ymm1 %ymm12 %ymm11;
(* vpsrlq $0x1a,%ymm4,%ymm15                       #! PC = 0x555555556fc3 *)
split %ymm15 %srlq %ymm4 0x1a;
(* vpand  %ymm5,%ymm4,%ymm4                        #! PC = 0x555555556fc8 *)
and %ymm4@uint64[4] %ymm4 %ymm5;
(* vpsrlq $0x4,%ymm10,%ymm9                        #! PC = 0x555555556fcc *)
split %ymm9 %srlq %ymm10 0x4;
(* vpsrlq $0x1a,%ymm1,%ymm12                       #! PC = 0x555555556fd2 *)
split %ymm12 %srlq %ymm1 0x1a;
(* vpand  %ymm5,%ymm1,%ymm1                        #! PC = 0x555555556fd7 *)
and %ymm1@uint64[4] %ymm1 %ymm5;
(* vpaddq %ymm12,%ymm2,%ymm2                       #! PC = 0x555555556fdb *)
add %ymm2 %ymm2 %ymm12;
(* vpaddq %ymm15,%ymm0,%ymm0                       #! PC = 0x555555556fe0 *)
add %ymm0 %ymm0 %ymm15;
(* vpsllq $0x2,%ymm15,%ymm15                       #! PC = 0x555555556fe5 *)
shl %ymm15 %ymm15 [0x2@uint64,0x2@uint64,0x2@uint64,0x2@uint64];
(* vpaddq %ymm15,%ymm0,%ymm0                       #! PC = 0x555555556feb *)
add %ymm0 %ymm0 %ymm15;
(* vpand  %ymm5,%ymm9,%ymm9                        #! PC = 0x555555556ff0 *)
and %ymm9@uint64[4] %ymm9 %ymm5;
(* vpsrlq $0x1a,%ymm7,%ymm8                        #! PC = 0x555555556ff4 *)
split %ymm8 %srlq %ymm7 0x1a;
(* vpsrlq $0x1a,%ymm2,%ymm13                       #! PC = 0x555555556ff9 *)
split %ymm13 %srlq %ymm2 0x1a;
(* vpand  %ymm5,%ymm2,%ymm2                        #! PC = 0x555555556ffe *)
and %ymm2@uint64[4] %ymm2 %ymm5;
(* vpaddq %ymm13,%ymm3,%ymm3                       #! PC = 0x555555557002 *)
add %ymm3 %ymm3 %ymm13;

(* NOTE: save %HH2 *)
mov %HH2 %ymm2;

(* vpaddq %ymm9,%ymm2,%ymm2                        #! PC = 0x555555557007 *)
add %ymm2 %ymm2 %ymm9;
(* vpsrlq $0x1e,%ymm10,%ymm10                      #! PC = 0x55555555700c *)
split %ymm10 %srlq %ymm10 0x1e;
(* vpsrlq $0x1a,%ymm0,%ymm11                       #! PC = 0x555555557012 *)
split %ymm11 %srlq %ymm0 0x1a;
(* vpand  %ymm5,%ymm0,%ymm0                        #! PC = 0x555555557017 *)
and %ymm0@uint64[4] %ymm0 %ymm5;
(* vpaddq %ymm11,%ymm1,%ymm1                       #! PC = 0x55555555701b *)
add %ymm1 %ymm1 %ymm11;
(* vpsrlq $0x28,%ymm6,%ymm6                        #! PC = 0x555555557020 *)
split %ymm6 %srlq %ymm6 0x28;
(* vpsrlq $0x1a,%ymm3,%ymm14                       #! PC = 0x555555557025 *)
split %ymm14 %srlq %ymm3 0x1a;
(* vpand  %ymm5,%ymm3,%ymm3                        #! PC = 0x55555555702a *)
and %ymm3@uint64[4] %ymm3 %ymm5;
(* vpaddq %ymm14,%ymm4,%ymm4                       #! PC = 0x55555555702e *)
add %ymm4 %ymm4 %ymm14;
(* vpand  %ymm5,%ymm7,%ymm7                        #! PC = 0x555555557033 *)
and %ymm7@uint64[4] %ymm7 %ymm5;
(* vpand  %ymm5,%ymm8,%ymm8                        #! PC = 0x555555557037 *)
and %ymm8@uint64[4] %ymm8 %ymm5;
(* vpand  %ymm5,%ymm10,%ymm10                      #! PC = 0x55555555703b *)
and %ymm10@uint64[4] %ymm10 %ymm5;
(* vpor   0x20(%rcx),%ymm6,%ymm6                   #! EA = L0x55555555a060; Value = 0x0000000001000000; PC = 0x55555555703f *)
or %ymm6@uint64[4] %ymm6 [L0x55555555a060,L0x55555555a068,L0x55555555a070,L0x55555555a078];
(* sub    $0x40,%rdx                               #! PC = 0x555555557044 *)
(* sub 0x40, %rdx *)
nop;
(* #jne    0x555555556e80 <poly1305_blocks_avx2+1056>#! PC = 0x555555557048 *)
#jne    0x555555556e80 <poly1305_blocks_avx2+1056>#! 0x555555557048 = 0x555555557048;

mov %HH0 %ymm0; mov %HH1 %ymm1; (* mov %HH2 %ymm2; *) mov %HH3  %ymm3;
mov %HH4 %ymm4;
mov %TT0 %ymm7; mov %TT1 %ymm8; mov %TT2 %ymm9; mov %TT3 %ymm10;
mov %TT4 %ymm6;

assert true
    && eqmod (limbs 26 [%HH0[0],%HH1[0],%HH2[0],%HH3[0],%HH4[0]])
             (limbs 26 [%ymm0o[0],%ymm12o[0],%ymm2o[0],%ymm3o[0],%ymm4o[0]])
             ((2**130 - 5)@168) /\
       eqmod (limbs 26 [%HH0[1],%HH1[1],%HH2[1],%HH3[1],%HH4[1]])
             (limbs 26 [%ymm0o[1],%ymm12o[1],%ymm2o[1],%ymm3o[1],%ymm4o[1]])
             ((2**130 - 5)@168) /\
       eqmod (limbs 26 [%HH0[2],%HH1[2],%HH2[2],%HH3[2],%HH4[2]])
             (limbs 26 [%ymm0o[2],%ymm12o[2],%ymm2o[2],%ymm3o[2],%ymm4o[2]])
             ((2**130 - 5)@168) /\
       eqmod (limbs 26 [%HH0[3],%HH1[3],%HH2[3],%HH3[3],%HH4[3]])
             (limbs 26 [%ymm0o[3],%ymm12o[3],%ymm2o[3],%ymm3o[3],%ymm4o[3]])
             ((2**130 - 5)@168);
assume eqmod (limbs 26 [%HH0[0],%HH1[0],%HH2[0],%HH3[0],%HH4[0]])
             (limbs 26 [%ymm0o[0],%ymm12o[0],%ymm2o[0],%ymm3o[0],%ymm4o[0]])
             (2**130 - 5) /\
       eqmod (limbs 26 [%HH0[1],%HH1[1],%HH2[1],%HH3[1],%HH4[1]])
             (limbs 26 [%ymm0o[1],%ymm12o[1],%ymm2o[1],%ymm3o[1],%ymm4o[1]])
             (2**130 - 5) /\
       eqmod (limbs 26 [%HH0[2],%HH1[2],%HH2[2],%HH3[2],%HH4[2]])
             (limbs 26 [%ymm0o[2],%ymm12o[2],%ymm2o[2],%ymm3o[2],%ymm4o[2]])
             (2**130 - 5) /\
       eqmod (limbs 26 [%HH0[3],%HH1[3],%HH2[3],%HH3[3],%HH4[3]])
             (limbs 26 [%ymm0o[3],%ymm12o[3],%ymm2o[3],%ymm3o[3],%ymm4o[3]])
             (2**130 - 5) && true;

{
  %ymm2 = %HH2 + %TT2 /\
  eqmod (limbs 26 [%HH0[0],%HH1[0],%HH2[0],%HH3[0],%HH4[0]])
        ((limbs 26 [%H0[0],%H1[0],%H2[0],%H3[0],%H4[0]] +
          limbs 26 [%T0[0],%T1[0],%T2[0],%T3[0],%T4[0]]) *
         limbs 26 [%R[0],%R[1],%R[2],%R[3],%R[4]]**4) (2**130 - 5) /\
  eqmod (limbs 26 [%HH0[1],%HH1[1],%HH2[1],%HH3[1],%HH4[1]])
        ((limbs 26 [%H0[1],%H1[1],%H2[1],%H3[1],%H4[1]] +
          limbs 26 [%T0[1],%T1[1],%T2[1],%T3[1],%T4[1]]) *
         limbs 26 [%R[0],%R[1],%R[2],%R[3],%R[4]]**4) (2**130 - 5) /\
  eqmod (limbs 26 [%HH0[2],%HH1[2],%HH2[2],%HH3[2],%HH4[2]])
        ((limbs 26 [%H0[2],%H1[2],%H2[2],%H3[2],%H4[2]] +
          limbs 26 [%T0[2],%T1[2],%T2[2],%T3[2],%T4[2]]) *
         limbs 26 [%R[0],%R[1],%R[2],%R[3],%R[4]]**4) (2**130 - 5) /\
  eqmod (limbs 26 [%HH0[3],%HH1[3],%HH2[3],%HH3[3],%HH4[3]])
        ((limbs 26 [%H0[3],%H1[3],%H2[3],%H3[3],%H4[3]] +
          limbs 26 [%T0[3],%T1[3],%T2[3],%T3[3],%T4[3]]) *
         limbs 26 [%R[0],%R[1],%R[2],%R[3],%R[4]]**4) (2**130 - 5)
&&
  limbs 64 [%INP[0],%INP[1],%padbit[0]] =
  uext (limbs 26 [%TT0[0],%TT1[0],%TT2[0],%TT3[0],%TT4[0]]) 24 /\
  limbs 64 [%INP[2],%INP[3],%padbit[1]] =
  uext (limbs 26 [%TT0[1],%TT1[1],%TT2[1],%TT3[1],%TT4[1]]) 24 /\
  limbs 64 [%INP[4],%INP[5],%padbit[2]] =
  uext (limbs 26 [%TT0[2],%TT1[2],%TT2[2],%TT3[2],%TT4[2]]) 24 /\
  limbs 64 [%INP[6],%INP[7],%padbit[3]] =
  uext (limbs 26 [%TT0[3],%TT1[3],%TT2[3],%TT3[3],%TT4[3]]) 24 /\
  %HH0 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %HH1 <u [(2**27)@64,(2**27)@64,(2**27)@64,(2**27)@64] /\
  %HH2 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %HH3 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %HH4 <u [(2**27)@64,(2**27)@64,(2**27)@64,(2**27)@64] /\
  %TT0 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %TT1 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %TT2 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %TT3 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64] /\
  %TT4 <u [(2**26)@64,(2**26)@64,(2**26)@64,(2**26)@64]
}

