(* padbit is still unspecified *)

proc main (uint64 ymm0_00, uint64 ymm0_01, uint64 ymm0_10, uint64 ymm0_11, (* h *)
           uint64 ymm1_00, uint64 ymm1_01, uint64 ymm1_10, uint64 ymm1_11,
           uint64 ymm2_00, uint64 ymm2_01, uint64 ymm2_10, uint64 ymm2_11,
           uint64 ymm3_00, uint64 ymm3_01, uint64 ymm3_10, uint64 ymm3_11,
           uint64 ymm4_00, uint64 ymm4_01, uint64 ymm4_10, uint64 ymm4_11,
           
           uint64  ymm7_00, uint64  ymm7_01, uint64  ymm7_10, uint64  ymm7_11, (* t *)
           uint64  ymm8_00, uint64  ymm8_01, uint64  ymm8_10, uint64  ymm8_11,
           uint64  ymm9_00, uint64  ymm9_01, uint64  ymm9_10, uint64  ymm9_11,
           uint64 ymm10_00, uint64 ymm10_01, uint64 ymm10_10, uint64 ymm10_11,
           uint64  ymm6_00, uint64  ymm6_01, uint64  ymm6_10, uint64  ymm6_11,
           
           uint64 t0_00, uint64 t0_01, uint64 t0_10, uint64 t0_11,
           uint64 t1_00, uint64 t1_01, uint64 t1_10, uint64 t1_11,
           uint64 t2_00, uint64 t2_01, uint64 t2_10, uint64 t2_11,
           uint64 t3_00, uint64 t3_01, uint64 t3_10, uint64 t3_11,
           uint64 t4_00, uint64 t4_01, uint64 t4_10, uint64 t4_11,
           uint64 h0_00, uint64 h0_01, uint64 h0_10, uint64 h0_11,
           uint64 h1_00, uint64 h1_01, uint64 h1_10, uint64 h1_11,
           uint64 h2_00, uint64 h2_01, uint64 h2_10, uint64 h2_11,
           uint64 h3_00, uint64 h3_01, uint64 h3_10, uint64 h3_11,
           uint64 h4_00, uint64 h4_01, uint64 h4_10, uint64 h4_11,
           uint64 r0_00, uint64 r0_01, uint64 r0_10, uint64 r0_11,
           uint64 r1_00, uint64 r1_01, uint64 r1_10, uint64 r1_11,
           uint64 r2_00, uint64 r2_01, uint64 r2_10, uint64 r2_11,
           uint64 r3_00, uint64 r3_01, uint64 r3_10, uint64 r3_11,
           uint64 r4_00, uint64 r4_01, uint64 r4_10, uint64 r4_11,
           uint64 s1_00, uint64 s1_01, uint64 s1_10, uint64 s1_11,
           uint64 s2_00, uint64 s2_01, uint64 s2_10, uint64 s2_11,
           uint64 s3_00, uint64 s3_01, uint64 s3_10, uint64 s3_11,
           uint64 s4_00, uint64 s4_01, uint64 s4_10, uint64 s4_11,
           uint64 inp_000, uint64 inp_001, uint64 inp_010, uint64 inp_011,
           uint64 inp_100, uint64 inp_101, uint64 inp_110, uint64 inp_111) =
{
  and [
    ymm0_00 = h0_00, ymm0_01 = h0_01, ymm0_10 = h0_10, ymm0_11 = h0_11,
    ymm1_00 = h1_00, ymm1_01 = h1_01, ymm1_10 = h1_10, ymm1_11 = h1_11,
    ymm2_00 = h2_00 + t2_00, ymm2_01 = h2_01 + t2_01,
    ymm2_10 = h2_10 + t2_10, ymm2_11 = h2_11 + t2_11,
    ymm3_00 = h3_00, ymm3_01 = h3_01, ymm3_10 = h3_10, ymm3_11 = h3_11,
    ymm4_00 = h4_00, ymm4_01 = h4_01, ymm4_10 = h4_10, ymm4_11 = h4_11,

     ymm7_00 = t0_00,  ymm7_01 = t0_01,  ymm7_10 = t0_10,  ymm7_11 = t0_11,
     ymm8_00 = t1_00,  ymm8_01 = t1_01,  ymm8_10 = t1_10,  ymm8_11 = t1_11,
     ymm9_00 = t2_00,  ymm9_01 = t2_01,  ymm9_10 = t2_10,  ymm9_11 = t2_11,
    ymm10_00 = t3_00, ymm10_01 = t3_01, ymm10_10 = t3_10, ymm10_11 = t3_11,
     ymm6_00 = t4_00,  ymm6_01 = t4_01,  ymm6_10 = t4_10,  ymm6_11 = t4_11,

    s1_00 = r1_00*5, s1_01 = r1_01*5, s1_10 = r1_10*5, s1_11 = r1_11*5,
    s2_00 = r2_00*5, s2_01 = r2_01*5, s2_10 = r2_10*5, s2_11 = r2_11*5,
    s3_00 = r3_00*5, s3_01 = r3_01*5, s3_10 = r3_10*5, s3_11 = r3_11*5,
    s4_00 = r4_00*5, s4_01 = r4_01*5, s4_10 = r4_10*5, s4_11 = r4_11*5
  ]
&&
  and [
    ymm0_00 = h0_00, ymm0_01 = h0_01, ymm0_10 = h0_10, ymm0_11 = h0_11,
    ymm1_00 = h1_00, ymm1_01 = h1_01, ymm1_10 = h1_10, ymm1_11 = h1_11,
    ymm2_00 = h2_00 + t2_00, ymm2_01 = h2_01 + t2_01,
    ymm2_10 = h2_10 + t2_10, ymm2_11 = h2_11 + t2_11,
    ymm3_00 = h3_00, ymm3_01 = h3_01, ymm3_10 = h3_10, ymm3_11 = h3_11,
    ymm4_00 = h4_00, ymm4_01 = h4_01, ymm4_10 = h4_10, ymm4_11 = h4_11,

     ymm7_00 = t0_00,  ymm7_01 = t0_01,  ymm7_10 = t0_10,  ymm7_11 = t0_11,
     ymm8_00 = t1_00,  ymm8_01 = t1_01,  ymm8_10 = t1_10,  ymm8_11 = t1_11,
     ymm9_00 = t2_00,  ymm9_01 = t2_01,  ymm9_10 = t2_10,  ymm9_11 = t2_11,
    ymm10_00 = t3_00, ymm10_01 = t3_01, ymm10_10 = t3_10, ymm10_11 = t3_11,
     ymm6_00 = t4_00,  ymm6_01 = t4_01,  ymm6_10 = t4_10,  ymm6_11 = t4_11,

    t0_00 < (2**26)@64, t0_01 < (2**26)@64, t0_10 < (2**26)@64, t0_11 < (2**26)@64,
    t1_00 < (2**26)@64, t1_01 < (2**26)@64, t1_10 < (2**26)@64, t1_11 < (2**26)@64,
    t2_00 < (2**26)@64, t2_01 < (2**26)@64, t2_10 < (2**26)@64, t2_11 < (2**26)@64,
    t3_00 < (2**26)@64, t3_01 < (2**26)@64, t3_10 < (2**26)@64, t3_11 < (2**26)@64,
    t4_00 < (2**26)@64, t4_01 < (2**26)@64, t4_10 < (2**26)@64, t4_11 < (2**26)@64,
    h0_00 < (2**27)@64, h0_01 < (2**27)@64, h0_10 < (2**27)@64, h0_11 < (2**27)@64,
    h1_00 < (2**27)@64, h1_01 < (2**27)@64, h1_10 < (2**27)@64, h1_11 < (2**27)@64,
    h2_00 < (2**27)@64, h2_01 < (2**27)@64, h2_10 < (2**27)@64, h2_11 < (2**27)@64,
    h3_00 < (2**27)@64, h3_01 < (2**27)@64, h3_10 < (2**27)@64, h3_11 < (2**27)@64,
    h4_00 < (2**27)@64, h4_01 < (2**27)@64, h4_10 < (2**27)@64, h4_11 < (2**27)@64,
    r0_00 < (2**26)@64, r0_01 < (2**26)@64, r0_10 < (2**26)@64, r0_11 < (2**26)@64,
    r1_00 < (2**26)@64, r1_01 < (2**26)@64, r1_10 < (2**26)@64, r1_11 < (2**26)@64,
    r2_00 < (2**26)@64, r2_01 < (2**26)@64, r2_10 < (2**26)@64, r2_11 < (2**26)@64,
    r3_00 < (2**26)@64, r3_01 < (2**26)@64, r3_10 < (2**26)@64, r3_11 < (2**26)@64,
    r4_00 < (2**26)@64, r4_01 < (2**26)@64, r4_10 < (2**26)@64, r4_11 < (2**26)@64,
    s1_00 = r1_00*5@64, s1_01 = r1_01*5@64, s1_10 = r1_10*5@64, s1_11 = r1_11*5@64,
    s2_00 = r2_00*5@64, s2_01 = r2_01*5@64, s2_10 = r2_10*5@64, s2_11 = r2_11*5@64, 
    s3_00 = r3_00*5@64, s3_01 = r3_01*5@64, s3_10 = r3_10*5@64, s3_11 = r3_11*5@64, 
    s4_00 = r4_00*5@64, s4_01 = r4_01*5@64, s4_10 = r4_10*5@64, s4_11 = r4_11*5@64
  ]
}

mov L0x7fffffffc740 inp_000; mov L0x7fffffffc748 inp_001;
mov L0x7fffffffc750 inp_010; mov L0x7fffffffc758 inp_011;
mov L0x7fffffffc760 inp_100; mov L0x7fffffffc768 inp_101;
mov L0x7fffffffc770 inp_110; mov L0x7fffffffc778 inp_111;

mov L0x7fffffffc400 r0_00; mov L0x7fffffffc408 r0_01;
mov L0x7fffffffc410 r0_10; mov L0x7fffffffc418 r0_11;
mov L0x7fffffffc420 r1_00; mov L0x7fffffffc428 r1_01;
mov L0x7fffffffc430 r1_10; mov L0x7fffffffc438 r1_11;
mov L0x7fffffffc460 r2_00; mov L0x7fffffffc468 r2_01;
mov L0x7fffffffc470 r2_10; mov L0x7fffffffc478 r2_11;
mov L0x7fffffffc4a0 r3_00; mov L0x7fffffffc4a8 r3_01;
mov L0x7fffffffc4b0 r3_10; mov L0x7fffffffc4b8 r3_11;
mov L0x7fffffffc4e0 r4_00; mov L0x7fffffffc4e8 r4_01;
mov L0x7fffffffc4f0 r4_10; mov L0x7fffffffc4f8 r4_11;

mov L0x7fffffffc440 s1_00; mov L0x7fffffffc448 s1_01;
mov L0x7fffffffc450 s1_10; mov L0x7fffffffc458 s1_11;
mov L0x7fffffffc480 s2_00; mov L0x7fffffffc488 s2_01;
mov L0x7fffffffc490 s2_10; mov L0x7fffffffc498 s2_11;
mov L0x7fffffffc4c0 s3_00; mov L0x7fffffffc4c8 s3_01;
mov L0x7fffffffc4d0 s3_10; mov L0x7fffffffc4d8 s3_11;
mov L0x7fffffffc500 s4_00; mov L0x7fffffffc508 s4_01;
mov L0x7fffffffc510 s4_10; mov L0x7fffffffc518 s4_11;

(* .Lmask 26 *)
mov L0x555555558080 0x3ffffff@uint64;
mov L0x555555558088 0x3ffffff@uint64;
mov L0x555555558090 0x3ffffff@uint64;
mov L0x555555558098 0x3ffffff@uint64;

(* padbit *)
mov L0x555555558060 0@uint64;
mov L0x555555558068 0@uint64;
mov L0x555555558070 0@uint64;
mov L0x555555558078 0@uint64;

(* vpaddq %ymm0,%ymm7,%ymm0                        #! PC = 0x93824992241248 *)
add ymm0_00 ymm7_00 ymm0_00;
add ymm0_01 ymm7_01 ymm0_01;
add ymm0_10 ymm7_10 ymm0_10;
add ymm0_11 ymm7_11 ymm0_11;
(* vmovdqa (%rsp),%ymm7                            #! EA = L0x7fffffffc400; Value = 0x0000000000000000; PC = 0x93824992241252 *)
mov ymm7_00 L0x7fffffffc400;
mov ymm7_01 L0x7fffffffc408;
mov ymm7_10 L0x7fffffffc410;
mov ymm7_11 L0x7fffffffc418;
(* vpaddq %ymm1,%ymm8,%ymm1                        #! PC = 0x93824992241257 *)
add ymm1_00 ymm8_00 ymm1_00;
add ymm1_01 ymm8_01 ymm1_01;
add ymm1_10 ymm8_10 ymm1_10;
add ymm1_11 ymm8_11 ymm1_11;
(* vmovdqa 0x20(%rsp),%ymm8                        #! EA = L0x7fffffffc420; Value = 0x0000000000000000; PC = 0x93824992241261 *)
mov ymm8_00 L0x7fffffffc420;
mov ymm8_01 L0x7fffffffc428;
mov ymm8_10 L0x7fffffffc430;
mov ymm8_11 L0x7fffffffc438;
(* vpaddq %ymm3,%ymm10,%ymm3                       #! PC = 0x93824992241267 *)
add ymm3_00 ymm10_00 ymm3_00;
add ymm3_01 ymm10_01 ymm3_01;
add ymm3_10 ymm10_10 ymm3_10;
add ymm3_11 ymm10_11 ymm3_11;
(* vmovdqa 0x60(%rsp),%ymm9                        #! EA = L0x7fffffffc460; Value = 0x0000000000000000; PC = 0x93824992241271 *)
mov ymm9_00 L0x7fffffffc460;
mov ymm9_01 L0x7fffffffc468;
mov ymm9_10 L0x7fffffffc470;
mov ymm9_11 L0x7fffffffc478;
(* vpaddq %ymm4,%ymm6,%ymm4                        #! PC = 0x93824992241277 *)
add ymm4_00 ymm6_00 ymm4_00;
add ymm4_01 ymm6_01 ymm4_01;
add ymm4_10 ymm6_10 ymm4_10;
add ymm4_11 ymm6_11 ymm4_11;
(* vmovdqa 0x30(%rax),%ymm10                       #! EA = L0x7fffffffc4c0; Value = 0x0000000000000000; PC = 0x93824992241281 *)
mov ymm10_00 L0x7fffffffc4c0;
mov ymm10_01 L0x7fffffffc4c8;
mov ymm10_10 L0x7fffffffc4d0;
mov ymm10_11 L0x7fffffffc4d8;
(* vmovdqa 0x70(%rax),%ymm5                        #! EA = L0x7fffffffc500; Value = 0x0000000000000000; PC = 0x93824992241286 *)
mov ymm5_00 L0x7fffffffc500;
mov ymm5_01 L0x7fffffffc508;
mov ymm5_10 L0x7fffffffc510;
mov ymm5_11 L0x7fffffffc518;
(* vpmuludq %ymm2,%ymm7,%ymm13                     #! PC = 0x93824992241291 *)
mul ymm13_00 ymm7_00 ymm2_00;
mul ymm13_01 ymm7_01 ymm2_01;
mul ymm13_10 ymm7_10 ymm2_10;
mul ymm13_11 ymm7_11 ymm2_11;
(* vpmuludq %ymm2,%ymm8,%ymm14                     #! PC = 0x93824992241295 *)
mul ymm14_00 ymm8_00 ymm2_00;
mul ymm14_01 ymm8_01 ymm2_01;
mul ymm14_10 ymm8_10 ymm2_10;
mul ymm14_11 ymm8_11 ymm2_11;
(* vpmuludq %ymm2,%ymm9,%ymm15                     #! PC = 0x93824992241299 *)
mul ymm15_00 ymm9_00 ymm2_00;
mul ymm15_01 ymm9_01 ymm2_01;
mul ymm15_10 ymm9_10 ymm2_10;
mul ymm15_11 ymm9_11 ymm2_11;
(* vpmuludq %ymm2,%ymm10,%ymm11                    #! PC = 0x93824992241303 *)
mul ymm11_00 ymm10_00 ymm2_00;
mul ymm11_01 ymm10_01 ymm2_01;
mul ymm11_10 ymm10_10 ymm2_10;
mul ymm11_11 ymm10_11 ymm2_11;
(* vpmuludq %ymm2,%ymm5,%ymm12                     #! PC = 0x93824992241307 *)
mul ymm12_00 ymm5_00 ymm2_00;
mul ymm12_01 ymm5_01 ymm2_01;
mul ymm12_10 ymm5_10 ymm2_10;
mul ymm12_11 ymm5_11 ymm2_11;
(* vpmuludq %ymm0,%ymm8,%ymm6                      #! PC = 0x93824992241311 *)
mul ymm6_00 ymm8_00 ymm0_00;
mul ymm6_01 ymm8_01 ymm0_01;
mul ymm6_10 ymm8_10 ymm0_10;
mul ymm6_11 ymm8_11 ymm0_11;
(* vpmuludq %ymm1,%ymm8,%ymm2                      #! PC = 0x93824992241315 *)
mul ymm2_00 ymm8_00 ymm1_00;
mul ymm2_01 ymm8_01 ymm1_01;
mul ymm2_10 ymm8_10 ymm1_10;
mul ymm2_11 ymm8_11 ymm1_11;
(* vpaddq %ymm6,%ymm12,%ymm12                      #! PC = 0x93824992241319 *)
add ymm12_00 ymm12_00 ymm6_00;
add ymm12_01 ymm12_01 ymm6_01;
add ymm12_10 ymm12_10 ymm6_10;
add ymm12_11 ymm12_11 ymm6_11;
(* vpaddq %ymm2,%ymm13,%ymm13                      #! PC = 0x93824992241323 *)
add ymm13_00 ymm13_00 ymm2_00;
add ymm13_01 ymm13_01 ymm2_01;
add ymm13_10 ymm13_10 ymm2_10;
add ymm13_11 ymm13_11 ymm2_11;
(* vpmuludq %ymm3,%ymm8,%ymm6                      #! PC = 0x93824992241327 *)
mul ymm6_00 ymm8_00 ymm3_00;
mul ymm6_01 ymm8_01 ymm3_01;
mul ymm6_10 ymm8_10 ymm3_10;
mul ymm6_11 ymm8_11 ymm3_11;
(* vpmuludq 0x40(%rsp),%ymm4,%ymm2                 #! EA = L0x7fffffffc440; Value = 0x0000000000000000; PC = 0x93824992241331 *)
mul ymm2_00 ymm4_00 L0x7fffffffc440;
mul ymm2_01 ymm4_01 L0x7fffffffc448;
mul ymm2_10 ymm4_10 L0x7fffffffc450;
mul ymm2_11 ymm4_11 L0x7fffffffc458;
(* vpaddq %ymm6,%ymm15,%ymm15                      #! PC = 0x93824992241337 *)
add ymm15_00 ymm15_00 ymm6_00;
add ymm15_01 ymm15_01 ymm6_01;
add ymm15_10 ymm15_10 ymm6_10;
add ymm15_11 ymm15_11 ymm6_11;
(* vpaddq %ymm2,%ymm11,%ymm11                      #! PC = 0x93824992241341 *)
add ymm11_00 ymm11_00 ymm2_00;
add ymm11_01 ymm11_01 ymm2_01;
add ymm11_10 ymm11_10 ymm2_10;
add ymm11_11 ymm11_11 ymm2_11;
(* vmovdqa -0x10(%rax),%ymm8                       #! EA = L0x7fffffffc480; Value = 0x0000000000000000; PC = 0x93824992241345 *)
mov ymm8_00 L0x7fffffffc480;
mov ymm8_01 L0x7fffffffc488;
mov ymm8_10 L0x7fffffffc490;
mov ymm8_11 L0x7fffffffc498;
(* vpmuludq %ymm0,%ymm7,%ymm6                      #! PC = 0x93824992241350 *)
mul ymm6_00 ymm7_00 ymm0_00;
mul ymm6_01 ymm7_01 ymm0_01;
mul ymm6_10 ymm7_10 ymm0_10;
mul ymm6_11 ymm7_11 ymm0_11;
(* vpmuludq %ymm1,%ymm7,%ymm2                      #! PC = 0x93824992241354 *)
mul ymm2_00 ymm7_00 ymm1_00;
mul ymm2_01 ymm7_01 ymm1_01;
mul ymm2_10 ymm7_10 ymm1_10;
mul ymm2_11 ymm7_11 ymm1_11;
(* vpaddq %ymm6,%ymm11,%ymm11                      #! PC = 0x93824992241358 *)
add ymm11_00 ymm11_00 ymm6_00;
add ymm11_01 ymm11_01 ymm6_01;
add ymm11_10 ymm11_10 ymm6_10;
add ymm11_11 ymm11_11 ymm6_11;
(* vpaddq %ymm2,%ymm12,%ymm12                      #! PC = 0x93824992241362 *)
add ymm12_00 ymm12_00 ymm2_00;
add ymm12_01 ymm12_01 ymm2_01;
add ymm12_10 ymm12_10 ymm2_10;
add ymm12_11 ymm12_11 ymm2_11;
(* vpmuludq %ymm3,%ymm7,%ymm6                      #! PC = 0x93824992241366 *)
mul ymm6_00 ymm7_00 ymm3_00;
mul ymm6_01 ymm7_01 ymm3_01;
mul ymm6_10 ymm7_10 ymm3_10;
mul ymm6_11 ymm7_11 ymm3_11;
(* vpmuludq %ymm4,%ymm7,%ymm2                      #! PC = 0x93824992241370 *)
mul ymm2_00 ymm7_00 ymm4_00;
mul ymm2_01 ymm7_01 ymm4_01;
mul ymm2_10 ymm7_10 ymm4_10;
mul ymm2_11 ymm7_11 ymm4_11;
(* vmovdqu (%rsi),%xmm7                            #! EA = L0x7fffffffc740; Value = 0x0000000000000000; PC = 0x93824992241374 *)
mov ymm7_00 L0x7fffffffc740;
mov ymm7_01 L0x7fffffffc748;
(* vpaddq %ymm6,%ymm14,%ymm14                      #! PC = 0x93824992241378 *)
add ymm14_00 ymm14_00 ymm6_00;
add ymm14_01 ymm14_01 ymm6_01;
add ymm14_10 ymm14_10 ymm6_10;
add ymm14_11 ymm14_11 ymm6_11;
(* vpaddq %ymm2,%ymm15,%ymm15                      #! PC = 0x93824992241382 *)
add ymm15_00 ymm15_00 ymm2_00;
add ymm15_01 ymm15_01 ymm2_01;
add ymm15_10 ymm15_10 ymm2_10;
add ymm15_11 ymm15_11 ymm2_11;
(* vinserti128 $0x1,0x20(%rsi),%ymm7,%ymm7         #! EA = L0x7fffffffc760; Value = 0x0000000000000000; PC = 0x93824992241386 *)
mov ymm7_00 ymm7_00;
mov ymm7_01 ymm7_01;
mov ymm7_10 L0x7fffffffc760;
mov ymm7_11 L0x7fffffffc768;
(* vpmuludq %ymm3,%ymm8,%ymm6                      #! PC = 0x93824992241393 *)
mul ymm6_00 ymm8_00 ymm3_00;
mul ymm6_01 ymm8_01 ymm3_01;
mul ymm6_10 ymm8_10 ymm3_10;
mul ymm6_11 ymm8_11 ymm3_11;
(* vpmuludq %ymm4,%ymm8,%ymm2                      #! PC = 0x93824992241397 *)
mul ymm2_00 ymm8_00 ymm4_00;
mul ymm2_01 ymm8_01 ymm4_01;
mul ymm2_10 ymm8_10 ymm4_10;
mul ymm2_11 ymm8_11 ymm4_11;
(* vmovdqu 0x10(%rsi),%xmm8                        #! EA = L0x7fffffffc750; Value = 0x0000000000000000; PC = 0x93824992241401 *)
mov ymm8_00 L0x7fffffffc750;
mov ymm8_01 L0x7fffffffc758;
(* vpaddq %ymm6,%ymm11,%ymm11                      #! PC = 0x93824992241406 *)
add ymm11_00 ymm11_00 ymm6_00;
add ymm11_01 ymm11_01 ymm6_01;
add ymm11_10 ymm11_10 ymm6_10;
add ymm11_11 ymm11_11 ymm6_11;
(* vpaddq %ymm2,%ymm12,%ymm12                      #! PC = 0x93824992241410 *)
add ymm12_00 ymm12_00 ymm2_00;
add ymm12_01 ymm12_01 ymm2_01;
add ymm12_10 ymm12_10 ymm2_10;
add ymm12_11 ymm12_11 ymm2_11;
(* vmovdqa 0x10(%rax),%ymm2                        #! EA = L0x7fffffffc4a0; Value = 0x0000000000000000; PC = 0x93824992241414 *)
mov ymm2_00 L0x7fffffffc4a0;
mov ymm2_01 L0x7fffffffc4a8;
mov ymm2_10 L0x7fffffffc4b0;
mov ymm2_11 L0x7fffffffc4b8;
(* vpmuludq %ymm1,%ymm9,%ymm6                      #! PC = 0x93824992241419 *)
mul ymm6_00 ymm9_00 ymm1_00;
mul ymm6_01 ymm9_01 ymm1_01;
mul ymm6_10 ymm9_10 ymm1_10;
mul ymm6_11 ymm9_11 ymm1_11;
(* vpmuludq %ymm0,%ymm9,%ymm9                      #! PC = 0x93824992241423 *)
mul ymm9_00 ymm9_00 ymm0_00;
mul ymm9_01 ymm9_01 ymm0_01;
mul ymm9_10 ymm9_10 ymm0_10;
mul ymm9_11 ymm9_11 ymm0_11;
(* vpaddq %ymm6,%ymm14,%ymm14                      #! PC = 0x93824992241427 *)
add ymm14_00 ymm14_00 ymm6_00;
add ymm14_01 ymm14_01 ymm6_01;
add ymm14_10 ymm14_10 ymm6_10;
add ymm14_11 ymm14_11 ymm6_11;
(* vpaddq %ymm9,%ymm13,%ymm13                      #! PC = 0x93824992241431 *)
add ymm13_00 ymm13_00 ymm9_00;
add ymm13_01 ymm13_01 ymm9_01;
add ymm13_10 ymm13_10 ymm9_10;
add ymm13_11 ymm13_11 ymm9_11;
(* vinserti128 $0x1,0x30(%rsi),%ymm8,%ymm8         #! EA = L0x7fffffffc770; Value = 0x0000000000000000; PC = 0x93824992241436 *)
mov ymm8_00 ymm8_00;
mov ymm8_01 ymm8_01;
mov ymm8_10 L0x7fffffffc770;
mov ymm8_11 L0x7fffffffc778;
(* #lea    0x40(%rsi),%rsi                          #! PC = 0x93824992241443 *)
#lea    %%EA,%rsi                          #! 0x93824992241443 = 0x93824992241443;
(* vpmuludq %ymm1,%ymm2,%ymm6                      #! PC = 0x93824992241447 *)
mul ymm6_00 ymm2_00 ymm1_00;
mul ymm6_01 ymm2_01 ymm1_01;
mul ymm6_10 ymm2_10 ymm1_10;
mul ymm6_11 ymm2_11 ymm1_11;
(* vpmuludq %ymm0,%ymm2,%ymm2                      #! PC = 0x93824992241451 *)
mul ymm2_00 ymm2_00 ymm0_00;
mul ymm2_01 ymm2_01 ymm0_01;
mul ymm2_10 ymm2_10 ymm0_10;
mul ymm2_11 ymm2_11 ymm0_11;
(* vpsrldq $0x6,%ymm7,%ymm9                        #! PC = 0x93824992241455 *)
split ymm9_00 dontcare ymm7_00 48;
split ymm9_01 care ymm7_01 48;
shl care care 16;
add ymm9_00 ymm9_00 care;
split ymm9_10 dontcare ymm7_10 48;
split ymm9_11 care ymm7_11 48;
shl care care 16;
add ymm9_10 ymm9_10 care;
(* vpaddq %ymm6,%ymm15,%ymm15                      #! PC = 0x93824992241460 *)
add ymm15_00 ymm15_00 ymm6_00;
add ymm15_01 ymm15_01 ymm6_01;
add ymm15_10 ymm15_10 ymm6_10;
add ymm15_11 ymm15_11 ymm6_11;
(* vpaddq %ymm2,%ymm14,%ymm14                      #! PC = 0x93824992241464 *)
add ymm14_00 ymm14_00 ymm2_00;
add ymm14_01 ymm14_01 ymm2_01;
add ymm14_10 ymm14_10 ymm2_10;
add ymm14_11 ymm14_11 ymm2_11;
(* vpmuludq %ymm3,%ymm10,%ymm6                     #! PC = 0x93824992241468 *)
mul ymm6_00 ymm10_00 ymm3_00;
mul ymm6_01 ymm10_01 ymm3_01;
mul ymm6_10 ymm10_10 ymm3_10;
mul ymm6_11 ymm10_11 ymm3_11;
(* vpmuludq %ymm4,%ymm10,%ymm2                     #! PC = 0x93824992241472 *)
mul ymm2_00 ymm10_00 ymm4_00;
mul ymm2_01 ymm10_01 ymm4_01;
mul ymm2_10 ymm10_10 ymm4_10;
mul ymm2_11 ymm10_11 ymm4_11;
(* vpsrldq $0x6,%ymm8,%ymm10                       #! PC = 0x93824992241476 *)
split ymm10_00 dontcare ymm8_00 48;
split ymm10_01 care ymm8_01 48;
shl care care 16;
add ymm10_00 ymm10_00 care;
split ymm10_10 dontcare ymm8_10 48;
split ymm10_11 care ymm8_11 48;
shl care care 16;
add ymm10_10 ymm10_10 care;
(* vpaddq %ymm6,%ymm12,%ymm12                      #! PC = 0x93824992241482 *)
add ymm12_00 ymm12_00 ymm6_00;
add ymm12_01 ymm12_01 ymm6_01;
add ymm12_10 ymm12_10 ymm6_10;
add ymm12_11 ymm12_11 ymm6_11;
(* vpaddq %ymm2,%ymm13,%ymm13                      #! PC = 0x93824992241486 *)
add ymm13_00 ymm13_00 ymm2_00;
add ymm13_01 ymm13_01 ymm2_01;
add ymm13_10 ymm13_10 ymm2_10;
add ymm13_11 ymm13_11 ymm2_11;
(* vpunpckhqdq %ymm8,%ymm7,%ymm6                   #! PC = 0x93824992241490 *)
mov ymm6_00 ymm7_01;
mov ymm6_01 ymm8_01;
mov ymm6_10 ymm7_11;
mov ymm6_11 ymm8_11;
(* vpmuludq %ymm3,%ymm5,%ymm3                      #! PC = 0x93824992241495 *)
mul ymm3_00 ymm5_00 ymm3_00;
mul ymm3_01 ymm5_01 ymm3_01;
mul ymm3_10 ymm5_10 ymm3_10;
mul ymm3_11 ymm5_11 ymm3_11;
(* vpmuludq %ymm4,%ymm5,%ymm4                      #! PC = 0x93824992241499 *)
mul ymm4_00 ymm5_00 ymm4_00;
mul ymm4_01 ymm5_01 ymm4_01;
mul ymm4_10 ymm5_10 ymm4_10;
mul ymm4_11 ymm5_11 ymm4_11;
(* vpunpcklqdq %ymm8,%ymm7,%ymm7                   #! PC = 0x93824992241503 *)
mov ymm7_00 ymm7_00;
mov ymm7_01 ymm8_00;
mov ymm7_10 ymm7_10;
mov ymm7_11 ymm8_10;
(* vpaddq %ymm3,%ymm13,%ymm2                       #! PC = 0x93824992241508 *)
add ymm2_00 ymm13_00 ymm3_00;
add ymm2_01 ymm13_01 ymm3_01;
add ymm2_10 ymm13_10 ymm3_10;
add ymm2_11 ymm13_11 ymm3_11;
(* vpaddq %ymm4,%ymm14,%ymm3                       #! PC = 0x93824992241512 *)
add ymm3_00 ymm14_00 ymm4_00;
add ymm3_01 ymm14_01 ymm4_01;
add ymm3_10 ymm14_10 ymm4_10;
add ymm3_11 ymm14_11 ymm4_11;
(* vpunpcklqdq %ymm10,%ymm9,%ymm10                 #! PC = 0x93824992241516 *)
(* NOTE: keep old values from tainting *)
mov ymm10o_00 ymm10_00; mov ymm10o_01 ymm10_01; 
mov ymm10o_10 ymm10_10; mov ymm10o_11 ymm10_11; 
mov ymm10_00 ymm9_00;
mov ymm10_01 ymm10o_00;
mov ymm10_10 ymm9_10;
mov ymm10_11 ymm10o_10;
(* vpmuludq 0x50(%rax),%ymm0,%ymm4                 #! EA = L0x7fffffffc4e0; Value = 0x0000000000000000; PC = 0x93824992241521 *)
mul ymm4_00 ymm0_00 L0x7fffffffc4e0;
mul ymm4_01 ymm0_01 L0x7fffffffc4e8;
mul ymm4_10 ymm0_10 L0x7fffffffc4f0;
mul ymm4_11 ymm0_11 L0x7fffffffc4f8;
(* vpmuludq %ymm1,%ymm5,%ymm0                      #! PC = 0x93824992241526 *)
mul ymm0_00 ymm5_00 ymm1_00;
mul ymm0_01 ymm5_01 ymm1_01;
mul ymm0_10 ymm5_10 ymm1_10;
mul ymm0_11 ymm5_11 ymm1_11;
(* vmovdqa 0x40(%rcx),%ymm5                        #! EA = L0x555555558080; Value = 0x0000000003ffffff; PC = 0x93824992241530 *)
mov ymm5_00 L0x555555558080;
mov ymm5_01 L0x555555558088;
mov ymm5_10 L0x555555558090;
mov ymm5_11 L0x555555558098;
(* vpaddq %ymm4,%ymm15,%ymm4                       #! PC = 0x93824992241535 *)
add ymm4_00 ymm15_00 ymm4_00;
add ymm4_01 ymm15_01 ymm4_01;
add ymm4_10 ymm15_10 ymm4_10;
add ymm4_11 ymm15_11 ymm4_11;
(* vpaddq %ymm0,%ymm11,%ymm0                       #! PC = 0x93824992241539 *)
add ymm0_00 ymm11_00 ymm0_00;
add ymm0_01 ymm11_01 ymm0_01;
add ymm0_10 ymm11_10 ymm0_10;
add ymm0_11 ymm11_11 ymm0_11;

(* NOTE: summary of multiplication *)

assert eqmod (limbs 26 [ymm0_00, ymm12_00, ymm2_00, ymm3_00, ymm4_00])
             ((limbs 26 [t0_00, t1_00, t2_00, t3_00, t4_00] +
               limbs 26 [h0_00, h1_00, h2_00, h3_00, h4_00]) *
              limbs 26 [r0_00, r1_00, r2_00, r3_00, r4_00])
             (2**130 - 5) && true;
assert eqmod (limbs 26 [ymm0_01, ymm12_01, ymm2_01, ymm3_01, ymm4_01])
             ((limbs 26 [t0_01, t1_01, t2_01, t3_01, t4_01] +
               limbs 26 [h0_01, h1_01, h2_01, h3_01, h4_01]) *
              limbs 26 [r0_01, r1_01, r2_01, r3_01, r4_01])
             (2**130 - 5) && true;
assert eqmod (limbs 26 [ymm0_10, ymm12_10, ymm2_10, ymm3_10, ymm4_10])
             ((limbs 26 [t0_10, t1_10, t2_10, t3_10, t4_10] +
               limbs 26 [h0_10, h1_10, h2_10, h3_10, h4_10]) *
              limbs 26 [r0_10, r1_10, r2_10, r3_10, r4_10])
             (2**130 - 5) && true;
assert eqmod (limbs 26 [ymm0_11, ymm12_11, ymm2_11, ymm3_11, ymm4_11])
             ((limbs 26 [t0_11, t1_11, t2_11, t3_11, t4_11] +
               limbs 26 [h0_11, h1_11, h2_11, h3_11, h4_11]) *
              limbs 26 [r0_11, r1_11, r2_11, r3_11, r4_11])
             (2**130 - 5) && true;

(* vpsrlq $0x1a,%ymm3,%ymm14                       #! PC = 0x93824992241543 *)
split ymm14_00 dontcare_00 ymm3_00 26;
split ymm14_01 dontcare_01 ymm3_01 26;
split ymm14_10 dontcare_10 ymm3_10 26;
split ymm14_11 dontcare_11 ymm3_11 26;
(* vpand  %ymm5,%ymm3,%ymm3                        #! PC = 0x93824992241548 *)
and ymm3_00@uint64 ymm5_00 ymm3_00;
(* NOTE: add relation for ymm3 *)
assert true && ymm3_00 = dontcare_00;
assume ymm3_00 = dontcare_00 && true;
and ymm3_01@uint64 ymm5_01 ymm3_01;
(* NOTE: add relation for ymm3 *)
assert true && ymm3_01 = dontcare_01;
assume ymm3_01 = dontcare_01 && true;
and ymm3_10@uint64 ymm5_10 ymm3_10;
(* NOTE: add relation for ymm3 *)
assert true && ymm3_10 = dontcare_10;
assume ymm3_10 = dontcare_10 && true;
and ymm3_11@uint64 ymm5_11 ymm3_11;
(* NOTE: add relation for ymm3 *)
assert true && ymm3_11 = dontcare_11;
assume ymm3_11 = dontcare_11 && true;
(* vpaddq %ymm14,%ymm4,%ymm4                       #! PC = 0x93824992241552 *)
add ymm4_00 ymm4_00 ymm14_00;
add ymm4_01 ymm4_01 ymm14_01;
add ymm4_10 ymm4_10 ymm14_10;
add ymm4_11 ymm4_11 ymm14_11;
(* vpsrlq $0x1a,%ymm0,%ymm11                       #! PC = 0x93824992241557 *)
split ymm11_00 dontcare_00 ymm0_00 26;
split ymm11_01 dontcare_01 ymm0_01 26;
split ymm11_10 dontcare_10 ymm0_10 26;
split ymm11_11 dontcare_11 ymm0_11 26;
(* vpand  %ymm5,%ymm0,%ymm0                        #! PC = 0x93824992241562 *)
and ymm0_00@uint64 ymm5_00 ymm0_00;
(* NOTE: add relation for ymm0 *)
assert true && ymm0_00 = dontcare_00;
assume ymm0_00 = dontcare_00 && true;
and ymm0_01@uint64 ymm5_01 ymm0_01;
(* NOTE: add relation for ymm0 *)
assert true && ymm0_01 = dontcare_01;
assume ymm0_01 = dontcare_01 && true;
and ymm0_10@uint64 ymm5_10 ymm0_10;
(* NOTE: add relation for ymm0 *)
assert true && ymm0_10 = dontcare_10;
assume ymm0_10 = dontcare_10 && true;
and ymm0_11@uint64 ymm5_11 ymm0_11;
(* NOTE: add relation for ymm0 *)
assert true && ymm0_11 = dontcare_11;
assume ymm0_11 = dontcare_11 && true;
(* vpaddq %ymm11,%ymm12,%ymm1                      #! PC = 0x93824992241566 *)
add ymm1_00 ymm12_00 ymm11_00;
add ymm1_01 ymm12_01 ymm11_01;
add ymm1_10 ymm12_10 ymm11_10;
add ymm1_11 ymm12_11 ymm11_11;
(* vpsrlq $0x1a,%ymm4,%ymm15                       #! PC = 0x93824992241571 *)
split ymm15_00 dontcare_00 ymm4_00 26;
split ymm15_01 dontcare_01 ymm4_01 26;
split ymm15_10 dontcare_10 ymm4_10 26;
split ymm15_11 dontcare_11 ymm4_11 26;
(* vpand  %ymm5,%ymm4,%ymm4                        #! PC = 0x93824992241576 *)
and ymm4_00@uint64 ymm5_00 ymm4_00;
(* NOTE: add relation for ymm4 *)
assert true && ymm4_00 = dontcare_00;
assume ymm4_00 = dontcare_00 && true;
and ymm4_01@uint64 ymm5_01 ymm4_01;
(* NOTE: add relation for ymm4 *)
assert true && ymm4_01 = dontcare_01;
assume ymm4_01 = dontcare_01 && true;
and ymm4_10@uint64 ymm5_10 ymm4_10;
(* NOTE: add relation for ymm4 *)
assert true && ymm4_10 = dontcare_10;
assume ymm4_10 = dontcare_10 && true;
and ymm4_11@uint64 ymm5_11 ymm4_11;
(* NOTE: add relation for ymm4 *)
assert true && ymm4_11 = dontcare_11;
assume ymm4_11 = dontcare_11 && true;
(* vpsrlq $0x4,%ymm10,%ymm9                        #! PC = 0x93824992241580 *)
split ymm9_00 dontcare ymm10_00 4;
 split ymm9_01 dontcare ymm10_01 4;
 split ymm9_10 dontcare ymm10_10 4;
 split ymm9_11 dontcare ymm10_11 4;
(* vpsrlq $0x1a,%ymm1,%ymm12                       #! PC = 0x93824992241586 *)
split ymm12_00 dontcare_00 ymm1_00 26;
split ymm12_01 dontcare_01 ymm1_01 26;
split ymm12_10 dontcare_10 ymm1_10 26;
split ymm12_11 dontcare_11 ymm1_11 26;
(* vpand  %ymm5,%ymm1,%ymm1                        #! PC = 0x93824992241591 *)
and ymm1_00@uint64 ymm5_00 ymm1_00;
(* NOTE: add relation for ymm1 *)
assert true && ymm1_00 = dontcare_00;
assume ymm1_00 = dontcare_00 && true;
and ymm1_01@uint64 ymm5_01 ymm1_01;
(* NOTE: add relation for ymm1 *)
assert true && ymm1_01 = dontcare_01;
assume ymm1_01 = dontcare_01 && true;
and ymm1_10@uint64 ymm5_10 ymm1_10;
(* NOTE: add relation for ymm1 *)
assert true && ymm1_10 = dontcare_10;
assume ymm1_10 = dontcare_10 && true;
and ymm1_11@uint64 ymm5_11 ymm1_11;
(* NOTE: add relation for ymm1 *)
assert true && ymm1_11 = dontcare_11;
assume ymm1_11 = dontcare_11 && true;
(* vpaddq %ymm12,%ymm2,%ymm2                       #! PC = 0x93824992241595 *)
add ymm2_00 ymm2_00 ymm12_00;
add ymm2_01 ymm2_01 ymm12_01;
add ymm2_10 ymm2_10 ymm12_10;
add ymm2_11 ymm2_11 ymm12_11;
(* vpaddq %ymm15,%ymm0,%ymm0                       #! PC = 0x93824992241600 *)
add ymm0_00 ymm0_00 ymm15_00;
add ymm0_01 ymm0_01 ymm15_01;
add ymm0_10 ymm0_10 ymm15_10;
add ymm0_11 ymm0_11 ymm15_11;
(* vpsllq $0x2,%ymm15,%ymm15                       #! PC = 0x93824992241605 *)
shl ymm15_00 ymm15_00 2;
shl ymm15_01 ymm15_01 2;
shl ymm15_10 ymm15_10 2;
shl ymm15_11 ymm15_11 2;
(* vpaddq %ymm15,%ymm0,%ymm0                       #! PC = 0x93824992241611 *)
add ymm0_00 ymm0_00 ymm15_00;
add ymm0_01 ymm0_01 ymm15_01;
add ymm0_10 ymm0_10 ymm15_10;
add ymm0_11 ymm0_11 ymm15_11;
(* vpand  %ymm5,%ymm9,%ymm9                        #! PC = 0x93824992241616 *)
and ymm9_00@uint64 ymm5_00 ymm9_00;
and ymm9_01@uint64 ymm5_01 ymm9_01;
and ymm9_10@uint64 ymm5_10 ymm9_10;
and ymm9_11@uint64 ymm5_11 ymm9_11;
(* vpsrlq $0x1a,%ymm7,%ymm8                        #! PC = 0x93824992241620 *)
split ymm8_00 dontcare ymm7_00 26;
split ymm8_01 dontcare ymm7_01 26;
split ymm8_10 dontcare ymm7_10 26;
split ymm8_11 dontcare ymm7_11 26;
(* vpsrlq $0x1a,%ymm2,%ymm13                       #! PC = 0x93824992241625 *)
split ymm13_00 dontcare_00 ymm2_00 26;
split ymm13_01 dontcare_01 ymm2_01 26;
split ymm13_10 dontcare_10 ymm2_10 26;
split ymm13_11 dontcare_11 ymm2_11 26;
(* vpand  %ymm5,%ymm2,%ymm2                        #! PC = 0x93824992241630 *)
and ymm2_00@uint64 ymm5_00 ymm2_00;
(* NOTE: add relation for ymm2 *)
assert true && ymm2_00 = dontcare_00;
assume ymm2_00 = dontcare_00 && true;
and ymm2_01@uint64 ymm5_01 ymm2_01;
(* NOTE: add relation for ymm2 *)
assert true && ymm2_01 = dontcare_01;
assume ymm2_01 = dontcare_01 && true;
and ymm2_10@uint64 ymm5_10 ymm2_10;
(* NOTE: add relation for ymm2 *)
assert true && ymm2_10 = dontcare_10;
assume ymm2_10 = dontcare_10 && true;
and ymm2_11@uint64 ymm5_11 ymm2_11;
(* NOTE: add relation for ymm2 *)
assert true && ymm2_11 = dontcare_11;
assume ymm2_11 = dontcare_11 && true;
(* vpaddq %ymm13,%ymm3,%ymm3                       #! PC = 0x93824992241634 *)
add ymm3_00 ymm3_00 ymm13_00;
add ymm3_01 ymm3_01 ymm13_01;
add ymm3_10 ymm3_10 ymm13_10;
add ymm3_11 ymm3_11 ymm13_11;
(* vpaddq %ymm9,%ymm2,%ymm2                        #! PC = 0x93824992241639 *)
add ymm2_00 ymm2_00 ymm9_00;
add ymm2_01 ymm2_01 ymm9_01;
add ymm2_10 ymm2_10 ymm9_10;
add ymm2_11 ymm2_11 ymm9_11;
(* vpsrlq $0x1e,%ymm10,%ymm10                      #! PC = 0x93824992241644 *)
split ymm10_00 dontcare ymm10_00 30;
split ymm10_01 dontcare ymm10_01 30;
split ymm10_10 dontcare ymm10_10 30;
split ymm10_11 dontcare ymm10_11 30;
(* vpsrlq $0x1a,%ymm0,%ymm11                       #! PC = 0x93824992241650 *)
split ymm11_00 dontcare_00 ymm0_00 26;
split ymm11_01 dontcare_01 ymm0_01 26;
split ymm11_10 dontcare_10 ymm0_10 26;
split ymm11_11 dontcare_11 ymm0_11 26;
(* vpand  %ymm5,%ymm0,%ymm0                        #! PC = 0x93824992241655 *)
and ymm0_00@uint64 ymm5_00 ymm0_00;
(* NOTE: add relation for ymm0 *)
assert true && ymm0_00 = dontcare_00;
assume ymm0_00 = dontcare_00 && true;
and ymm0_01@uint64 ymm5_01 ymm0_01;
(* NOTE: add relation for ymm0 *)
assert true && ymm0_01 = dontcare_01;
assume ymm0_01 = dontcare_01 && true;
and ymm0_10@uint64 ymm5_10 ymm0_10;
(* NOTE: add relation for ymm0 *)
assert true && ymm0_10 = dontcare_10;
assume ymm0_10 = dontcare_10 && true;
and ymm0_11@uint64 ymm5_11 ymm0_11;
(* NOTE: add relation for ymm0 *)
assert true && ymm0_11 = dontcare_11;
assume ymm0_11 = dontcare_11 && true;
(* vpaddq %ymm11,%ymm1,%ymm1                       #! PC = 0x93824992241659 *)
add ymm1_00 ymm1_00 ymm11_00;
add ymm1_01 ymm1_01 ymm11_01;
add ymm1_10 ymm1_10 ymm11_10;
add ymm1_11 ymm1_11 ymm11_11;
(* vpsrlq $0x28,%ymm6,%ymm6                        #! PC = 0x93824992241664 *)
split ymm6_00 dontcare ymm6_00 40;
split ymm6_01 dontcare ymm6_01 40;
split ymm6_10 dontcare ymm6_10 40;
split ymm6_11 dontcare ymm6_11 40;
(* vpsrlq $0x1a,%ymm3,%ymm14                       #! PC = 0x93824992241669 *)
split ymm14_00 dontcare_00 ymm3_00 26;
split ymm14_01 dontcare_01 ymm3_01 26;
split ymm14_10 dontcare_10 ymm3_10 26;
split ymm14_11 dontcare_11 ymm3_11 26;
(* vpand  %ymm5,%ymm3,%ymm3                        #! PC = 0x93824992241674 *)
and ymm3_00@uint64 ymm5_00 ymm3_00;
(* NOTE: add relation for ymm3 *)
assert true && ymm3_00 = dontcare_00;
assume ymm3_00 = dontcare_00 && true;
and ymm3_01@uint64 ymm5_01 ymm3_01;
(* NOTE: add relation for ymm3 *)
assert true && ymm3_01 = dontcare_01;
assume ymm3_01 = dontcare_01 && true;
and ymm3_10@uint64 ymm5_10 ymm3_10;
(* NOTE: add relation for ymm3 *)
assert true && ymm3_10 = dontcare_10;
assume ymm3_10 = dontcare_10 && true;
and ymm3_11@uint64 ymm5_11 ymm3_11;
(* NOTE: add relation for ymm3 *)
assert true && ymm3_11 = dontcare_11;
assume ymm3_11 = dontcare_11 && true;
(* vpaddq %ymm14,%ymm4,%ymm4                       #! PC = 0x93824992241678 *)
add ymm4_00 ymm4_00 ymm14_00;
add ymm4_01 ymm4_01 ymm14_01;
add ymm4_10 ymm4_10 ymm14_10;
add ymm4_11 ymm4_11 ymm14_11;
(* vpand  %ymm5,%ymm7,%ymm7                        #! PC = 0x93824992241683 *)
and ymm7_00@uint64 ymm5_00 ymm7_00;
and ymm7_01@uint64 ymm5_01 ymm7_01;
and ymm7_10@uint64 ymm5_10 ymm7_10;
and ymm7_11@uint64 ymm5_11 ymm7_11;
(* vpand  %ymm5,%ymm8,%ymm8                        #! PC = 0x93824992241687 *)
and ymm8_00@uint64 ymm5_00 ymm8_00;
and ymm8_01@uint64 ymm5_01 ymm8_01;
and ymm8_10@uint64 ymm5_10 ymm8_10;
and ymm8_11@uint64 ymm5_11 ymm8_11;
(* vpand  %ymm5,%ymm10,%ymm10                      #! PC = 0x93824992241691 *)
and ymm10_00@uint64 ymm5_00 ymm10_00;
and ymm10_01@uint64 ymm5_01 ymm10_01;
and ymm10_10@uint64 ymm5_10 ymm10_10;
and ymm10_11@uint64 ymm5_11 ymm10_11;
(* vpor   0x20(%rcx),%ymm6,%ymm6                   #! EA = L0x555555558060; Value = 0x0000000001000000; PC = 0x93824992241695 *)
or ymm6_00@uint64 L0x555555558060 ymm6_00;
or ymm6_01@uint64 L0x555555558068 ymm6_01;
or ymm6_10@uint64 L0x555555558070 ymm6_10;
or ymm6_11@uint64 L0x555555558078 ymm6_11;
(* sub    $0x40,%rdx                               #! PC = 0x93824992241700 *)
#sub    $0x40,%rdx                               #! 0x93824992241700 = 0x93824992241700;
(* #jne    0x555555556660 <poly1305_blocks_avx2+960>#! PC = 0x93824992241704 *)
#jne    0x555555556660 <poly1305_blocks_avx2+960>#! 0x93824992241704 = 0x93824992241704;

mov T0_00 ymm7_00; mov T0_01 ymm7_01; mov T0_10 ymm7_10; mov T0_11 ymm7_11;
mov T1_00 ymm8_00; mov T1_01 ymm8_01; mov T1_10 ymm8_10; mov T1_11 ymm8_11;
mov T2_00 ymm9_00; mov T2_01 ymm9_01; mov T2_10 ymm9_10; mov T2_11 ymm9_11;
mov T3_00 ymm10_00; mov T3_01 ymm10_01; mov T3_10 ymm10_10; mov T3_11 ymm10_11;
mov T4_00 ymm6_00; mov T4_01 ymm6_01; mov T4_10 ymm6_10; mov T4_11 ymm6_11;

mov H0_00 ymm0_00; mov H0_01 ymm0_01; mov H0_10 ymm0_10; mov H0_11 ymm0_11;
mov H1_00 ymm1_00; mov H1_01 ymm1_01; mov H1_10 ymm1_10; mov H1_11 ymm1_11;
mov H2_00 ymm2_00; mov H2_01 ymm2_01; mov H2_10 ymm2_10; mov H2_11 ymm2_11;
mov H3_00 ymm3_00; mov H3_01 ymm3_01; mov H3_10 ymm3_10; mov H3_11 ymm3_11;
mov H4_00 ymm4_00; mov H4_01 ymm4_01; mov H4_10 ymm4_10; mov H4_11 ymm4_11;

{
  and [
    eqmod
      (limbs 26 [H0_00, H1_00, H2_00, H3_00, H4_00])
      (((limbs 26 [h0_00, h1_00, h2_00, h3_00, h4_00])
        +
        (limbs 26 [t0_00, t1_00, t2_00, t3_00, t4_00]))
       *
       (limbs 26 [r0_00, r1_00, r2_00, r3_00, r4_00])
       +
       (limbs 26 [0, 0, T2_00, 0, 0]))
      (2**130 - 5),
    eqmod
      (limbs 26 [H0_01, H1_01, H2_01, H3_01, H4_01])
      (((limbs 26 [h0_01, h1_01, h2_01, h3_01, h4_01])
        +
        (limbs 26 [t0_01, t1_01, t2_01, t3_01, t4_01]))
       *
       (limbs 26 [r0_01, r1_01, r2_01, r3_01, r4_01])
       +
       (limbs 26 [0, 0, T2_01, 0, 0]))
      (2**130 - 5),
    eqmod
      (limbs 26 [H0_10, H1_10, H2_10, H3_10, H4_10])
      (((limbs 26 [h0_10, h1_10, h2_10, h3_10, h4_10])
        +
        (limbs 26 [t0_10, t1_10, t2_10, t3_10, t4_10]))
       *
       (limbs 26 [r0_10, r1_10, r2_10, r3_10, r4_10])
       +
       (limbs 26 [0, 0, T2_10, 0, 0]))
      (2**130 - 5),
    eqmod
      (limbs 26 [H0_11, H1_11, H2_11, H3_11, H4_11])
      (((limbs 26 [h0_11, h1_11, h2_11, h3_11, h4_11])
        +
        (limbs 26 [t0_11, t1_11, t2_11, t3_11, t4_11]))
       *
       (limbs 26 [r0_11, r1_11, r2_11, r3_11, r4_11])
       +
       (limbs 26 [0, 0, T2_11, 0, 0]))
      (2**130 - 5)
  ]
&&
  and [
   (uext (limbs 64 [inp_000, inp_001]) 40) =
   limbs 26 [T0_00, T1_00, T2_00, T3_00, T4_00],
   (uext (limbs 64 [inp_010, inp_011]) 40) =
   limbs 26 [T0_01, T1_01, T2_01, T3_01, T4_01],
   (uext (limbs 64 [inp_100, inp_101]) 40) =
   limbs 26 [T0_10, T1_10, T2_10, T3_10, T4_10],
   (uext (limbs 64 [inp_110, inp_111]) 40) =
   limbs 26 [T0_11, T1_11, T2_11, T3_11, T4_11],

    T0_00 < (2**26)@64, T0_01 < (2**26)@64, T0_10 < (2**26)@64, T0_11 < (2**26)@64,
    T1_00 < (2**26)@64, T1_01 < (2**26)@64, T1_10 < (2**26)@64, T1_11 < (2**26)@64,
    T2_00 < (2**26)@64, T2_01 < (2**26)@64, T2_10 < (2**26)@64, T2_11 < (2**26)@64,
    T3_00 < (2**26)@64, T3_01 < (2**26)@64, T3_10 < (2**26)@64, T3_11 < (2**26)@64,
    T4_00 < (2**26)@64, T4_01 < (2**26)@64, T4_10 < (2**26)@64, T4_11 < (2**26)@64,
    
    H0_00 < (2**27)@64, H0_01 < (2**27)@64, H0_10 < (2**27)@64, H0_11 < (2**27)@64,
    H1_00 < (2**27)@64, H1_01 < (2**27)@64, H1_10 < (2**27)@64, H1_11 < (2**27)@64,
    H2_00 < (2**27)@64, H2_01 < (2**27)@64, H2_10 < (2**27)@64, H2_11 < (2**27)@64,
    H3_00 < (2**27)@64, H3_01 < (2**27)@64, H3_10 < (2**27)@64, H3_11 < (2**27)@64,
    H4_00 < (2**27)@64, H4_01 < (2**27)@64, H4_10 < (2**27)@64, H4_11 < (2**27)@64
  ]
}

