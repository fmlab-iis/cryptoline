(* padbit is still unspecified *)

proc main (uint64 xmm0_0, uint64 xmm0_1,   (* H0 *)
           uint64 xmm1_0, uint64 xmm1_1,   (* H1 *)
           uint64 xmm2_0, uint64 xmm2_1,   (* H2 *)
           uint64 xmm3_0, uint64 xmm3_1,   (* H3 *)
           uint64 xmm4_0, uint64 xmm4_1,   (* H4 *)
           uint64 xmm5_0, uint64 xmm5_1,   (* T0 *)
           uint64 xmm6_0, uint64 xmm6_1,   (* T1 *)
           uint64 xmm7_0, uint64 xmm7_1,   (* T2 *)
           uint64 xmm8_0, uint64 xmm8_1,   (* T3 *)
           uint64 xmm9_0, uint64 xmm9_1,   (* T4 *)
           uint64 xmm14_0, uint64 xmm14_1, (* D4 *)
           
           uint64 h0_0, uint64 h0_1, uint64 h1_0, uint64 h1_1,
           uint64 h2_0, uint64 h2_1, uint64 h3_0, uint64 h3_1,
           uint64 h4_0, uint64 h4_1,
           
           uint64 r0_0, uint64 r0_1, uint64 r1_0, uint64 r1_1,
           uint64 r2_0, uint64 r2_1, uint64 r3_0, uint64 r3_1,
           uint64 r4_0, uint64 r4_1,
           
           uint64 s1_0, uint64 s1_1, uint64 s2_0, uint64 s2_1,
           uint64 s3_0, uint64 s3_1, uint64 s4_0, uint64 s4_1,
           
           uint64 inp_000, uint64 inp_001, uint64 inp_010, uint64 inp_011,
           uint64 inp_100, uint64 inp_101, uint64 inp_110, uint64 inp_111,
           uint64 INP_100, uint64 INP_101, uint64 INP_110, uint64 INP_111,
           uint64 padbit) =
{
  and [
    xmm0_0 = h0_0, xmm0_1 = h0_1, xmm1_0 = h1_0, xmm1_1 = h1_1,
    xmm2_0 = h2_0, xmm2_1 = h2_1, xmm3_0 = h3_0, xmm3_1 = h3_1,
    xmm4_0 = h4_0, xmm4_1 = h4_1,

    limbs 64 [inp_100, inp_101] =
    limbs 26 [xmm5_0, xmm6_0, xmm7_0, xmm8_0, xmm9_0],
    limbs 64 [inp_110, inp_111] =
    limbs 26 [xmm5_1, xmm6_1, xmm7_1, xmm8_1, xmm9_1],

    xmm14_0 = r0_0, xmm14_1 = r0_1,

    s1_0 = 5*r1_0, s1_1 = 5*r1_1, s2_0 = 5*r2_0, s2_1 = 5*r2_1,
    s3_0 = 5*r3_0, s3_1 = 5*r3_1, s4_0 = 5*r4_0, s4_1 = 5*r4_1
  ]
&&
  and [
    xmm0_0 = h0_0, xmm0_1 = h0_1, xmm1_0 = h1_0, xmm1_1 = h1_1,
    xmm2_0 = h2_0, xmm2_1 = h2_1, xmm3_0 = h3_0, xmm3_1 = h3_1,
    xmm4_0 = h4_0, xmm4_1 = h4_1,

    xmm5_0 < (2**26)@64, xmm5_1 < (2**26)@64,
    xmm6_0 < (2**26)@64, xmm6_1 < (2**26)@64,
    xmm7_0 < (2**26)@64, xmm7_1 < (2**26)@64,
    xmm8_0 < (2**26)@64, xmm8_1 < (2**26)@64,
    xmm9_0 < (2**26)@64, xmm9_1 < (2**26)@64,

    xmm14_0 = r0_0, xmm14_1 = r0_1,

    h0_0 < (2**26)@64, h0_1 < (2**26)@64, h1_0 < (2**26)@64, h1_1 < (2**26)@64,
    h2_0 < (2**26)@64, h2_1 < (2**26)@64, h3_0 < (2**26)@64, h3_1 < (2**26)@64,
    h4_0 < (2**26)@64, h4_1 < (2**26)@64,
    
    r0_0 < (2**26)@64, r0_1 < (2**26)@64, r1_0 < (2**26)@64, r1_1 < (2**26)@64,
    r2_0 < (2**26)@64, r2_1 < (2**26)@64, r3_0 < (2**26)@64, r3_1 < (2**26)@64,
    r4_0 < (2**26)@64, r4_1 < (2**26)@64,

    s1_0 = 5@64*r1_0, s1_1 = 5@64*r1_1, s2_0 = 5@64*r2_0, s2_1 = 5@64*r2_1,
    s3_0 = 5@64*r3_0, s3_1 = 5@64*r3_1, s4_0 = 5@64*r4_0, s4_1 = 5@64*r4_1
  ]
}

mov L0x7fffffffc740 inp_000;
mov L0x7fffffffc748 inp_001;
mov L0x7fffffffc750 inp_010;
mov L0x7fffffffc758 inp_011;

mov L0x7fffffffc7a0 INP_100;
mov L0x7fffffffc7a8 INP_101;
mov L0x7fffffffc7b0 INP_110;
mov L0x7fffffffc7b8 INP_111;

mov L0x7fffffffc720 h0_0;
mov L0x7fffffffc728 h0_1;
mov L0x7fffffffc730 h1_0;
mov L0x7fffffffc738 h1_1;

mov L0x7fffffffc760 h4_0;
mov L0x7fffffffc768 h4_1;

mov L0x7fffffffc5c0 r0_0;
mov L0x7fffffffc5c8 r0_1;
mov L0x7fffffffc530 r0_0;
mov L0x7fffffffc538 r0_1;
mov L0x7fffffffc540 r1_0;
mov L0x7fffffffc548 r1_1;
mov L0x7fffffffc5d0 r1_0;
mov L0x7fffffffc5d8 r1_1;
mov L0x7fffffffc560 r2_0;
mov L0x7fffffffc568 r2_1;
mov L0x7fffffffc5f0 r2_0;
mov L0x7fffffffc5f8 r2_1;
mov L0x7fffffffc580 r3_0;
mov L0x7fffffffc588 r3_1;
mov L0x7fffffffc610 r3_0;
mov L0x7fffffffc618 r3_1;
mov L0x7fffffffc5a0 r4_0;
mov L0x7fffffffc5a8 r4_1;
mov L0x7fffffffc630 r4_0;
mov L0x7fffffffc638 r4_1;

mov L0x7fffffffc550 s1_0;
mov L0x7fffffffc558 s1_1;
mov L0x7fffffffc5e0 s1_0;
mov L0x7fffffffc5e8 s1_1;
mov L0x7fffffffc570 s2_0; (* s2^2 *)
mov L0x7fffffffc578 s2_1;
mov L0x7fffffffc600 s2_0; (* s2^4 *)
mov L0x7fffffffc608 s2_1;
mov L0x7fffffffc590 s3_0; (* s3^2 *)
mov L0x7fffffffc598 s3_1;
mov L0x7fffffffc620 s3_0; (* s3^4 *)
mov L0x7fffffffc628 s3_1;
mov L0x7fffffffc5b0 s4_0; (* s4^2 *)
mov L0x7fffffffc5b8 s4_1;
mov L0x7fffffffc640 s4_0;
mov L0x7fffffffc648 s4_1;

(* padbit *)
mov L0x555555558060 0@uint64;
mov L0x555555558068 0@uint64;

(* .Lmask 24 *)
mov L0x555555558040 0xffffff@uint64;
mov L0x555555558048 0xffffff@uint64;

(* .Lmask 26 *)
mov L0x555555558080 0x3ffffff@uint64;
mov L0x555555558088 0x3ffffff@uint64;
mov xmm15_0 L0x555555558080;
mov xmm15_1 L0x555555558088;


(* #ja     0x555555555b40 <poly1305_blocks_avx+1088>#! PC = 0x93824992239248 *)
#ja     0x555555555b40 <poly1305_blocks_avx+1088>#! 0x93824992239248 = 0x93824992239248;
(* vpmuludq %xmm5,%xmm14,%xmm10                    #! PC = 0x93824992238400 *)
mul xmm10_0 xmm14_0 xmm5_0;
mul xmm10_1 xmm14_1 xmm5_1;
(* vpmuludq %xmm6,%xmm14,%xmm11                    #! PC = 0x93824992238404 *)
mul xmm11_0 xmm14_0 xmm6_0;
mul xmm11_1 xmm14_1 xmm6_1;
(* vmovdqa %xmm2,0x20(%r11)                        #! EA = L0x7fffffffc670; PC = 0x93824992238408 *)
mov L0x7fffffffc670 xmm2_0;
mov L0x7fffffffc678 xmm2_1;
(* vpmuludq %xmm7,%xmm14,%xmm12                    #! PC = 0x93824992238414 *)
mul xmm12_0 xmm14_0 xmm7_0;
mul xmm12_1 xmm14_1 xmm7_1;
(* vmovdqa 0x10(%rsp),%xmm2                        #! EA = L0x7fffffffc540; Value = 0x0000000000000000; PC = 0x93824992238418 *)
mov xmm2_0 L0x7fffffffc540;
mov xmm2_1 L0x7fffffffc548;
(* vpmuludq %xmm8,%xmm14,%xmm13                    #! PC = 0x93824992238424 *)
mul xmm13_0 xmm14_0 xmm8_0;
mul xmm13_1 xmm14_1 xmm8_1;
(* vpmuludq %xmm9,%xmm14,%xmm14                    #! PC = 0x93824992238429 *)
mul xmm14_0 xmm14_0 xmm9_0;
mul xmm14_1 xmm14_1 xmm9_1;
(* vmovdqa %xmm0,(%r11)                            #! EA = L0x7fffffffc650; PC = 0x93824992238434 *)
mov L0x7fffffffc650 xmm0_0;
mov L0x7fffffffc658 xmm0_1;
(* vpmuludq 0x20(%rsp),%xmm9,%xmm0                 #! EA = L0x7fffffffc550; Value = 0x0000000000000000; PC = 0x93824992238439 *)
mul xmm0_0 xmm9_0 L0x7fffffffc550;
mul xmm0_1 xmm9_1 L0x7fffffffc558;
(* vmovdqa %xmm1,0x10(%r11)                        #! EA = L0x7fffffffc660; PC = 0x93824992238445 *)
mov L0x7fffffffc660 xmm1_0;
mov L0x7fffffffc668 xmm1_1;
(* vpmuludq %xmm8,%xmm2,%xmm1                      #! PC = 0x93824992238451 *)
mul xmm1_0 xmm2_0 xmm8_0;
mul xmm1_1 xmm2_1 xmm8_1;
(* vpaddq %xmm0,%xmm10,%xmm10                      #! PC = 0x93824992238456 *)
add xmm10_0 xmm10_0 xmm0_0;
add xmm10_1 xmm10_1 xmm0_1;
(* vpaddq %xmm1,%xmm14,%xmm14                      #! PC = 0x93824992238460 *)
add xmm14_0 xmm14_0 xmm1_0;
add xmm14_1 xmm14_1 xmm1_1;
(* vmovdqa %xmm3,0x30(%r11)                        #! EA = L0x7fffffffc680; PC = 0x93824992238464 *)
mov L0x7fffffffc680 xmm3_0;
mov L0x7fffffffc688 xmm3_1;
(* vpmuludq %xmm7,%xmm2,%xmm0                      #! PC = 0x93824992238470 *)
mul xmm0_0 xmm2_0 xmm7_0;
mul xmm0_1 xmm2_1 xmm7_1;
(* vpmuludq %xmm6,%xmm2,%xmm1                      #! PC = 0x93824992238474 *)
mul xmm1_0 xmm2_0 xmm6_0;
mul xmm1_1 xmm2_1 xmm6_1;
(* vpaddq %xmm0,%xmm13,%xmm13                      #! PC = 0x93824992238478 *)
add xmm13_0 xmm13_0 xmm0_0;
add xmm13_1 xmm13_1 xmm0_1;
(* vmovdqa 0x30(%rsp),%xmm3                        #! EA = L0x7fffffffc560; Value = 0x0000000000000000; PC = 0x93824992238482 *)
mov xmm3_0 L0x7fffffffc560;
mov xmm3_1 L0x7fffffffc568;
(* vpaddq %xmm1,%xmm12,%xmm12                      #! PC = 0x93824992238488 *)
add xmm12_0 xmm12_0 xmm1_0;
add xmm12_1 xmm12_1 xmm1_1;
(* vmovdqa %xmm4,0x40(%r11)                        #! EA = L0x7fffffffc690; PC = 0x93824992238492 *)
mov L0x7fffffffc690 xmm4_0;
mov L0x7fffffffc698 xmm4_1;
(* vpmuludq %xmm5,%xmm2,%xmm2                      #! PC = 0x93824992238498 *)
mul xmm2_0 xmm2_0 xmm5_0;
mul xmm2_1 xmm2_1 xmm5_1;
(* vpmuludq %xmm7,%xmm3,%xmm0                      #! PC = 0x93824992238502 *)
mul xmm0_0 xmm3_0 xmm7_0;
mul xmm0_1 xmm3_1 xmm7_1;
(* vpaddq %xmm2,%xmm11,%xmm11                      #! PC = 0x93824992238506 *)
add xmm11_0 xmm11_0 xmm2_0;
add xmm11_1 xmm11_1 xmm2_1;
(* vmovdqa 0x40(%rsp),%xmm4                        #! EA = L0x7fffffffc570; Value = 0x0000000000000000; PC = 0x93824992238510 *)
mov xmm4_0 L0x7fffffffc570;
mov xmm4_1 L0x7fffffffc578;
(* vpaddq %xmm0,%xmm14,%xmm14                      #! PC = 0x93824992238516 *)
add xmm14_0 xmm14_0 xmm0_0;
add xmm14_1 xmm14_1 xmm0_1;
(* vpmuludq %xmm6,%xmm3,%xmm1                      #! PC = 0x93824992238520 *)
mul xmm1_0 xmm3_0 xmm6_0;
mul xmm1_1 xmm3_1 xmm6_1;
(* vpmuludq %xmm5,%xmm3,%xmm3                      #! PC = 0x93824992238524 *)
mul xmm3_0 xmm3_0 xmm5_0;
mul xmm3_1 xmm3_1 xmm5_1;
(* vpaddq %xmm1,%xmm13,%xmm13                      #! PC = 0x93824992238528 *)
add xmm13_0 xmm13_0 xmm1_0;
add xmm13_1 xmm13_1 xmm1_1;
(* vmovdqa 0x50(%rsp),%xmm2                        #! EA = L0x7fffffffc580; Value = 0x0000000000000000; PC = 0x93824992238532 *)
mov xmm2_0 L0x7fffffffc580;
mov xmm2_1 L0x7fffffffc588;
(* vpaddq %xmm3,%xmm12,%xmm12                      #! PC = 0x93824992238538 *)
add xmm12_0 xmm12_0 xmm3_0;
add xmm12_1 xmm12_1 xmm3_1;
(* vpmuludq %xmm9,%xmm4,%xmm0                      #! PC = 0x93824992238542 *)
mul xmm0_0 xmm4_0 xmm9_0;
mul xmm0_1 xmm4_1 xmm9_1;
(* vpmuludq %xmm8,%xmm4,%xmm4                      #! PC = 0x93824992238547 *)
mul xmm4_0 xmm4_0 xmm8_0;
mul xmm4_1 xmm4_1 xmm8_1;
(* vpaddq %xmm0,%xmm11,%xmm11                      #! PC = 0x93824992238552 *)
add xmm11_0 xmm11_0 xmm0_0;
add xmm11_1 xmm11_1 xmm0_1;
(* vmovdqa 0x60(%rsp),%xmm3                        #! EA = L0x7fffffffc590; Value = 0x0000000000000000; PC = 0x93824992238556 *)
mov xmm3_0 L0x7fffffffc590;
mov xmm3_1 L0x7fffffffc598;
(* vpaddq %xmm4,%xmm10,%xmm10                      #! PC = 0x93824992238562 *)
add xmm10_0 xmm10_0 xmm4_0;
add xmm10_1 xmm10_1 xmm4_1;
(* vmovdqa 0x80(%rsp),%xmm4                        #! EA = L0x7fffffffc5b0; Value = 0x0000000000000000; PC = 0x93824992238566 *)
mov xmm4_0 L0x7fffffffc5b0;
mov xmm4_1 L0x7fffffffc5b8;
(* vpmuludq %xmm6,%xmm2,%xmm1                      #! PC = 0x93824992238575 *)
mul xmm1_0 xmm2_0 xmm6_0;
mul xmm1_1 xmm2_1 xmm6_1;
(* vpmuludq %xmm5,%xmm2,%xmm2                      #! PC = 0x93824992238579 *)
mul xmm2_0 xmm2_0 xmm5_0;
mul xmm2_1 xmm2_1 xmm5_1;
(* vpaddq %xmm1,%xmm14,%xmm14                      #! PC = 0x93824992238583 *)
add xmm14_0 xmm14_0 xmm1_0;
add xmm14_1 xmm14_1 xmm1_1;
(* vpaddq %xmm2,%xmm13,%xmm13                      #! PC = 0x93824992238587 *)
add xmm13_0 xmm13_0 xmm2_0;
add xmm13_1 xmm13_1 xmm2_1;
(* vpmuludq %xmm9,%xmm3,%xmm0                      #! PC = 0x93824992238591 *)
mul xmm0_0 xmm3_0 xmm9_0;
mul xmm0_1 xmm3_1 xmm9_1;
(* vpmuludq %xmm8,%xmm3,%xmm1                      #! PC = 0x93824992238596 *)
mul xmm1_0 xmm3_0 xmm8_0;
mul xmm1_1 xmm3_1 xmm8_1;
(* vpaddq %xmm0,%xmm12,%xmm12                      #! PC = 0x93824992238601 *)
add xmm12_0 xmm12_0 xmm0_0;
add xmm12_1 xmm12_1 xmm0_1;
(* vmovdqu (%rsi),%xmm0                            #! EA = L0x7fffffffc740; Value = 0x0000000000000000; PC = 0x93824992238605 *)
mov xmm0_0 L0x7fffffffc740;
mov xmm0_1 L0x7fffffffc748;
(* vpaddq %xmm1,%xmm11,%xmm11                      #! PC = 0x93824992238609 *)
add xmm11_0 xmm11_0 xmm1_0;
add xmm11_1 xmm11_1 xmm1_1;
(* vpmuludq %xmm7,%xmm3,%xmm3                      #! PC = 0x93824992238613 *)
mul xmm3_0 xmm3_0 xmm7_0;
mul xmm3_1 xmm3_1 xmm7_1;
(* vpmuludq %xmm7,%xmm4,%xmm7                      #! PC = 0x93824992238617 *)
mul xmm7_0 xmm4_0 xmm7_0;
mul xmm7_1 xmm4_1 xmm7_1;
(* vpaddq %xmm3,%xmm10,%xmm10                      #! PC = 0x93824992238621 *)
add xmm10_0 xmm10_0 xmm3_0;
add xmm10_1 xmm10_1 xmm3_1;
(* vmovdqu 0x10(%rsi),%xmm1                        #! EA = L0x7fffffffc750; Value = 0x0000000000000000; PC = 0x93824992238625 *)
mov xmm1_0 L0x7fffffffc750;
mov xmm1_1 L0x7fffffffc758;
(* vpaddq %xmm7,%xmm11,%xmm11                      #! PC = 0x93824992238630 *)
add xmm11_0 xmm11_0 xmm7_0;
add xmm11_1 xmm11_1 xmm7_1;
(* vpmuludq %xmm8,%xmm4,%xmm8                      #! PC = 0x93824992238634 *)
mul xmm8_0 xmm4_0 xmm8_0;
mul xmm8_1 xmm4_1 xmm8_1;
(* vpmuludq %xmm9,%xmm4,%xmm9                      #! PC = 0x93824992238639 *)
mul xmm9_0 xmm4_0 xmm9_0;
mul xmm9_1 xmm4_1 xmm9_1;
(* vpsrldq $0x6,%xmm0,%xmm2                        #! PC = 0x93824992238644 *)
split xmm2_0 dontcare xmm0_0 48;
split xmm2_1 care xmm0_1 48;
shl care care 16;
add xmm2_0 xmm2_0 care;
(* vpaddq %xmm8,%xmm12,%xmm12                      #! PC = 0x93824992238649 *)
add xmm12_0 xmm12_0 xmm8_0;
add xmm12_1 xmm12_1 xmm8_1;
(* vpaddq %xmm9,%xmm13,%xmm13                      #! PC = 0x93824992238654 *)
add xmm13_0 xmm13_0 xmm9_0;
add xmm13_1 xmm13_1 xmm9_1;
(* vpsrldq $0x6,%xmm1,%xmm3                        #! PC = 0x93824992238659 *)
split xmm3_0 dontcare xmm1_0 48;
split xmm3_1 care xmm1_1 48;
shl care care 16;
add xmm3_0 xmm3_0 care;
(* vpmuludq 0x70(%rsp),%xmm5,%xmm9                 #! EA = L0x7fffffffc5a0; Value = 0x0000000000000000; PC = 0x93824992238664 *)
mul xmm9_0 xmm5_0 L0x7fffffffc5a0;
mul xmm9_1 xmm5_1 L0x7fffffffc5a8;
(* vpmuludq %xmm6,%xmm4,%xmm5                      #! PC = 0x93824992238670 *)
mul xmm5_0 xmm4_0 xmm6_0;
mul xmm5_1 xmm4_1 xmm6_1;
(* vpunpckhqdq %xmm1,%xmm0,%xmm4                   #! PC = 0x93824992238674 *)
mov xmm4_0 xmm0_1;
mov xmm4_1 xmm1_1;
(* vpaddq %xmm9,%xmm14,%xmm14                      #! PC = 0x93824992238678 *)
add xmm14_0 xmm14_0 xmm9_0;
add xmm14_1 xmm14_1 xmm9_1;
(* vmovdqa -0x90(%r11),%xmm9                       #! EA = L0x7fffffffc5c0; Value = 0x0000000000000000; PC = 0x93824992238683 *)
mov xmm9_0 L0x7fffffffc5c0;
mov xmm9_1 L0x7fffffffc5c8;
(* vpaddq %xmm5,%xmm10,%xmm10                      #! PC = 0x93824992238692 *)
add xmm10_0 xmm10_0 xmm5_0;
add xmm10_1 xmm10_1 xmm5_1;

(* NOTE: summary of multiplication *)

(* D0 = xmm10, D1 = xmm11, D12 = xmm12, D3 = xmm13, D4 = xmm14 *)
assert eqmod (limbs 26 [xmm10_0, xmm11_0, xmm12_0, xmm13_0, xmm14_0])
             (limbs 64 [inp_100, inp_101] *
              limbs 26 [r0_0, r1_0, r2_0, r3_0, r4_0])
             (2**130 - 5) && true;
assert eqmod (limbs 26 [xmm10_1, xmm11_1, xmm12_1, xmm13_1, xmm14_1])
             ((limbs 64 [inp_110, inp_111]) *
              limbs 26 [r0_1, r1_1, r2_1, r3_1, r4_1])
             (2**130 - 5) && true;

(* vpunpcklqdq %xmm1,%xmm0,%xmm0                   #! PC = 0x93824992238696 *)
mov xmm0_0 xmm0_0;
mov xmm0_1 xmm1_0;
(* vpunpcklqdq %xmm3,%xmm2,%xmm3                   #! PC = 0x93824992238700 *)
(* NOTE: keep old value to avoid tainting *)
mov xmm3o_0 xmm3_0; mov xmm3o_1 xmm3_1;
mov xmm3_0 xmm2_0;
mov xmm3_1 xmm3o_0;
(* vpsrldq $0x5,%xmm4,%xmm4                        #! PC = 0x93824992238704 *)
split xmm4_0 dontcare xmm4_0 40;
split xmm4_1 care xmm4_1 40;
shl care care 24;
add xmm4_0 xmm4_0 care;
(* vpsrlq $0x1a,%xmm0,%xmm1                        #! PC = 0x93824992238709 *)
split xmm1_0 dontcare xmm0_0 26;
split xmm1_1 dontcare xmm0_1 26;
(* vpand  %xmm15,%xmm0,%xmm0                       #! PC = 0x93824992238714 *)
and xmm0_0@uint64 xmm0_0 xmm15_0;
and xmm0_1@uint64 xmm0_1 xmm15_1;
(* vpsrlq $0x4,%xmm3,%xmm2                         #! PC = 0x93824992238719 *)
split xmm2_0 dontcare xmm3_0 4;
split xmm2_1 dontcare xmm3_1 4;
(* vpand  %xmm15,%xmm1,%xmm1                       #! PC = 0x93824992238724 *)
and xmm1_0@uint64 xmm1_0 xmm15_0;
and xmm1_1@uint64 xmm1_1 xmm15_1;
(* vpand  (%rcx),%xmm4,%xmm4                       #! EA = L0x555555558040; Value = 0x0000000000ffffff; PC = 0x93824992238729 *)
and xmm4_0@uint64 xmm4_0 L0x555555558040;
and xmm4_1@uint64 xmm4_1 L0x555555558048;
(* vpsrlq $0x1e,%xmm3,%xmm3                        #! PC = 0x93824992238733 *)
split xmm3_0 dontcare xmm3_0 30;
split xmm3_1 dontcare xmm3_1 30;
(* vpand  %xmm15,%xmm2,%xmm2                       #! PC = 0x93824992238738 *)
and xmm2_0@uint64 xmm2_0 xmm15_0;
and xmm2_1@uint64 xmm2_1 xmm15_1;
(* vpand  %xmm15,%xmm3,%xmm3                       #! PC = 0x93824992238743 *)
and xmm3_0@uint64 xmm3_0 xmm15_0;
and xmm3_1@uint64 xmm3_1 xmm15_1;
(* vpor   0x20(%rcx),%xmm4,%xmm4                   #! EA = L0x555555558060; Value = 0x0000000001000000; PC = 0x93824992238748 *)
or xmm4_0@uint64 xmm4_0 L0x555555558060;
or xmm4_1@uint64 xmm4_1 L0x555555558068;

(* NOTE: summary of input radix 32 -> 26 *)
(* H0 = xmm0, H1 = xmm1, H2 = xmm2, H3 = xmm3, H4 = xmm4 *)
assert true
    && (uext (limbs 64 [inp_000, inp_001]) 40) =
       (limbs 26 [xmm0_0, xmm1_0, xmm2_0, xmm3_0, xmm4_0]);
assume (limbs 64 [inp_000, inp_001]) =
       (limbs 26 [xmm0_0, xmm1_0, xmm2_0, xmm3_0, xmm4_0])
    && true;
assert true
    && (uext (limbs 64 [inp_010, inp_011]) 40) =
       (limbs 26 [xmm0_1, xmm1_1, xmm2_1, xmm3_1, xmm4_1]);
assume (limbs 64 [inp_010, inp_011]) =
       (limbs 26 [xmm0_1, xmm1_1, xmm2_1, xmm3_1, xmm4_1])
    && true;

(* vpaddq (%r11),%xmm0,%xmm0                       #! EA = L0x7fffffffc650; Value = 0x0000000000000000; PC = 0x93824992238753 *)
add xmm0_0 xmm0_0 L0x7fffffffc650;
add xmm0_1 xmm0_1 L0x7fffffffc658;
(* vpaddq 0x10(%r11),%xmm1,%xmm1                   #! EA = L0x7fffffffc660; Value = 0x0000000000000000; PC = 0x93824992238758 *)
add xmm1_0 xmm1_0 L0x7fffffffc660;
add xmm1_1 xmm1_1 L0x7fffffffc668;
(* vpaddq 0x20(%r11),%xmm2,%xmm2                   #! EA = L0x7fffffffc670; Value = 0x0000000000000000; PC = 0x93824992238764 *)
add xmm2_0 xmm2_0 L0x7fffffffc670;
add xmm2_1 xmm2_1 L0x7fffffffc678;
(* vpaddq 0x30(%r11),%xmm3,%xmm3                   #! EA = L0x7fffffffc680; Value = 0x0000000000000000; PC = 0x93824992238770 *)
add xmm3_0 xmm3_0 L0x7fffffffc680;
add xmm3_1 xmm3_1 L0x7fffffffc688;
(* vpaddq 0x40(%r11),%xmm4,%xmm4                   #! EA = L0x7fffffffc690; Value = 0x0000000000000000; PC = 0x93824992238776 *)
add xmm4_0 xmm4_0 L0x7fffffffc690;
add xmm4_1 xmm4_1 L0x7fffffffc698;
(* #lea    0x20(%rsi),%rax                          #! PC = 0x93824992238782 *)
#lea    %%EA,%%rax                          #! 0x93824992238782 = 0x93824992238782;
(* #lea    0x40(%rsi),%rsi                          #! PC = 0x93824992238786 *)
#lea    %%EA,%%rsi                          #! 0x93824992238786 = 0x93824992238786;
(* #sub    $0x40,%rdx                               #! PC = 0x93824992238790 *)
#sub    $0x40,%%rdx                               #! 0x93824992238790 = 0x93824992238790;
(* #cmovb  %rax,%rsi                                #! PC = 0x93824992238794 *)
#cmovb  %%rax,%%rsi                                #! 0x93824992238794 = 0x93824992238794;
(* vpmuludq %xmm0,%xmm9,%xmm5                      #! PC = 0x93824992238798 *)
mul xmm5_0 xmm9_0 xmm0_0;
mul xmm5_1 xmm9_1 xmm0_1;
(* vpmuludq %xmm1,%xmm9,%xmm6                      #! PC = 0x93824992238802 *)
mul xmm6_0 xmm9_0 xmm1_0;
mul xmm6_1 xmm9_1 xmm1_1;
(* vpaddq %xmm5,%xmm10,%xmm10                      #! PC = 0x93824992238806 *)
add xmm10_0 xmm10_0 xmm5_0;
add xmm10_1 xmm10_1 xmm5_1;
(* vpaddq %xmm6,%xmm11,%xmm11                      #! PC = 0x93824992238810 *)
add xmm11_0 xmm11_0 xmm6_0;
add xmm11_1 xmm11_1 xmm6_1;
(* vmovdqa -0x80(%r11),%xmm7                       #! EA = L0x7fffffffc5d0; Value = 0x0000000000000000; PC = 0x93824992238814 *)
mov xmm7_0 L0x7fffffffc5d0;
mov xmm7_1 L0x7fffffffc5d8;
(* vpmuludq %xmm2,%xmm9,%xmm5                      #! PC = 0x93824992238820 *)
mul xmm5_0 xmm9_0 xmm2_0;
mul xmm5_1 xmm9_1 xmm2_1;
(* vpmuludq %xmm3,%xmm9,%xmm6                      #! PC = 0x93824992238824 *)
mul xmm6_0 xmm9_0 xmm3_0;
mul xmm6_1 xmm9_1 xmm3_1;
(* vpaddq %xmm5,%xmm12,%xmm12                      #! PC = 0x93824992238828 *)
add xmm12_0 xmm12_0 xmm5_0;
add xmm12_1 xmm12_1 xmm5_1;
(* vpaddq %xmm6,%xmm13,%xmm13                      #! PC = 0x93824992238832 *)
add xmm13_0 xmm13_0 xmm6_0;
add xmm13_1 xmm13_1 xmm6_1;
(* vpmuludq %xmm4,%xmm9,%xmm9                      #! PC = 0x93824992238836 *)
mul xmm9_0 xmm9_0 xmm4_0;
mul xmm9_1 xmm9_1 xmm4_1;
(* vpmuludq -0x70(%r11),%xmm4,%xmm5                #! EA = L0x7fffffffc5e0; Value = 0x0000000000000000; PC = 0x93824992238840 *)
mul xmm5_0 xmm4_0 L0x7fffffffc5e0;
mul xmm5_1 xmm4_1 L0x7fffffffc5e8;
(* vpaddq %xmm9,%xmm14,%xmm14                      #! PC = 0x93824992238846 *)
add xmm14_0 xmm14_0 xmm9_0;
add xmm14_1 xmm14_1 xmm9_1;
(* vpaddq %xmm5,%xmm10,%xmm10                      #! PC = 0x93824992238851 *)
add xmm10_0 xmm10_0 xmm5_0;
add xmm10_1 xmm10_1 xmm5_1;
(* vpmuludq %xmm2,%xmm7,%xmm6                      #! PC = 0x93824992238855 *)
mul xmm6_0 xmm7_0 xmm2_0;
mul xmm6_1 xmm7_1 xmm2_1;
(* vpmuludq %xmm3,%xmm7,%xmm5                      #! PC = 0x93824992238859 *)
mul xmm5_0 xmm7_0 xmm3_0;
mul xmm5_1 xmm7_1 xmm3_1;
(* vpaddq %xmm6,%xmm13,%xmm13                      #! PC = 0x93824992238863 *)
add xmm13_0 xmm13_0 xmm6_0;
add xmm13_1 xmm13_1 xmm6_1;
(* vmovdqa -0x60(%r11),%xmm8                       #! EA = L0x7fffffffc5f0; Value = 0x0000000000000000; PC = 0x93824992238867 *)
mov xmm8_0 L0x7fffffffc5f0;
mov xmm8_1 L0x7fffffffc5f8;
(* vpaddq %xmm5,%xmm14,%xmm14                      #! PC = 0x93824992238873 *)
add xmm14_0 xmm14_0 xmm5_0;
add xmm14_1 xmm14_1 xmm5_1;
(* vpmuludq %xmm1,%xmm7,%xmm6                      #! PC = 0x93824992238877 *)
mul xmm6_0 xmm7_0 xmm1_0;
mul xmm6_1 xmm7_1 xmm1_1;
(* vpmuludq %xmm0,%xmm7,%xmm7                      #! PC = 0x93824992238881 *)
mul xmm7_0 xmm7_0 xmm0_0;
mul xmm7_1 xmm7_1 xmm0_1;
(* vpaddq %xmm6,%xmm12,%xmm12                      #! PC = 0x93824992238885 *)
add xmm12_0 xmm12_0 xmm6_0;
add xmm12_1 xmm12_1 xmm6_1;
(* vpaddq %xmm7,%xmm11,%xmm11                      #! PC = 0x93824992238889 *)
add xmm11_0 xmm11_0 xmm7_0;
add xmm11_1 xmm11_1 xmm7_1;
(* vmovdqa -0x50(%r11),%xmm9                       #! EA = L0x7fffffffc600; Value = 0x0000000000000000; PC = 0x93824992238893 *)
mov xmm9_0 L0x7fffffffc600;
mov xmm9_1 L0x7fffffffc608;
(* vpmuludq %xmm2,%xmm8,%xmm5                      #! PC = 0x93824992238899 *)
mul xmm5_0 xmm8_0 xmm2_0;
mul xmm5_1 xmm8_1 xmm2_1;
(* vpmuludq %xmm1,%xmm8,%xmm6                      #! PC = 0x93824992238903 *)
mul xmm6_0 xmm8_0 xmm1_0;
mul xmm6_1 xmm8_1 xmm1_1;
(* vpaddq %xmm5,%xmm14,%xmm14                      #! PC = 0x93824992238907 *)
add xmm14_0 xmm14_0 xmm5_0;
add xmm14_1 xmm14_1 xmm5_1;
(* vpaddq %xmm6,%xmm13,%xmm13                      #! PC = 0x93824992238911 *)
add xmm13_0 xmm13_0 xmm6_0;
add xmm13_1 xmm13_1 xmm6_1;
(* vmovdqa -0x40(%r11),%xmm7                       #! EA = L0x7fffffffc610; Value = 0x0000000000000000; PC = 0x93824992238915 *)
mov xmm7_0 L0x7fffffffc610;
mov xmm7_1 L0x7fffffffc618;
(* vpmuludq %xmm0,%xmm8,%xmm8                      #! PC = 0x93824992238921 *)
mul xmm8_0 xmm8_0 xmm0_0;
mul xmm8_1 xmm8_1 xmm0_1;
(* vpmuludq %xmm4,%xmm9,%xmm5                      #! PC = 0x93824992238925 *)
mul xmm5_0 xmm9_0 xmm4_0;
mul xmm5_1 xmm9_1 xmm4_1;
(* vpaddq %xmm8,%xmm12,%xmm12                      #! PC = 0x93824992238929 *)
add xmm12_0 xmm12_0 xmm8_0;
add xmm12_1 xmm12_1 xmm8_1;
(* vpaddq %xmm5,%xmm11,%xmm11                      #! PC = 0x93824992238934 *)
add xmm11_0 xmm11_0 xmm5_0;
add xmm11_1 xmm11_1 xmm5_1;
(* vmovdqa -0x30(%r11),%xmm8                       #! EA = L0x7fffffffc620; Value = 0x0000000000000000; PC = 0x93824992238938 *)
mov xmm8_0 L0x7fffffffc620;
mov xmm8_1 L0x7fffffffc628;
(* vpmuludq %xmm3,%xmm9,%xmm9                      #! PC = 0x93824992238944 *)
mul xmm9_0 xmm9_0 xmm3_0;
mul xmm9_1 xmm9_1 xmm3_1;
(* vpmuludq %xmm1,%xmm7,%xmm6                      #! PC = 0x93824992238948 *)
mul xmm6_0 xmm7_0 xmm1_0;
mul xmm6_1 xmm7_1 xmm1_1;
(* vpaddq %xmm9,%xmm10,%xmm10                      #! PC = 0x93824992238952 *)
add xmm10_0 xmm10_0 xmm9_0;
add xmm10_1 xmm10_1 xmm9_1;
(* vmovdqa -0x10(%r11),%xmm9                       #! EA = L0x7fffffffc640; Value = 0x0000000000000000; PC = 0x93824992238957 *)
mov xmm9_0 L0x7fffffffc640;
mov xmm9_1 L0x7fffffffc648;
(* vpaddq %xmm6,%xmm14,%xmm14                      #! PC = 0x93824992238963 *)
add xmm14_0 xmm14_0 xmm6_0;
add xmm14_1 xmm14_1 xmm6_1;
(* vpmuludq %xmm0,%xmm7,%xmm7                      #! PC = 0x93824992238967 *)
mul xmm7_0 xmm7_0 xmm0_0;
mul xmm7_1 xmm7_1 xmm0_1;
(* vpmuludq %xmm4,%xmm8,%xmm5                      #! PC = 0x93824992238971 *)
mul xmm5_0 xmm8_0 xmm4_0;
mul xmm5_1 xmm8_1 xmm4_1;
(* vpaddq %xmm7,%xmm13,%xmm13                      #! PC = 0x93824992238975 *)
add xmm13_0 xmm13_0 xmm7_0;
add xmm13_1 xmm13_1 xmm7_1;
(* vpaddq %xmm5,%xmm12,%xmm12                      #! PC = 0x93824992238979 *)
add xmm12_0 xmm12_0 xmm5_0;
add xmm12_1 xmm12_1 xmm5_1;
(* vmovdqu 0x20(%rsi),%xmm5                        #! EA = L0x7fffffffc7a0; Value = 0x0000000000000000; PC = 0x93824992238983 *)
mov xmm5_0 L0x7fffffffc7a0;
mov xmm5_1 L0x7fffffffc7a8;
(* vpmuludq %xmm3,%xmm8,%xmm7                      #! PC = 0x93824992238988 *)
mul xmm7_0 xmm8_0 xmm3_0;
mul xmm7_1 xmm8_1 xmm3_1;
(* vpmuludq %xmm2,%xmm8,%xmm8                      #! PC = 0x93824992238992 *)
mul xmm8_0 xmm8_0 xmm2_0;
mul xmm8_1 xmm8_1 xmm2_1;
(* vpaddq %xmm7,%xmm11,%xmm11                      #! PC = 0x93824992238996 *)
add xmm11_0 xmm11_0 xmm7_0;
add xmm11_1 xmm11_1 xmm7_1;
(* vmovdqu 0x30(%rsi),%xmm6                        #! EA = L0x7fffffffc7b0; Value = 0x0000000000000000; PC = 0x93824992239000 *)
mov xmm6_0 L0x7fffffffc7b0;
mov xmm6_1 L0x7fffffffc7b8;
(* vpaddq %xmm8,%xmm10,%xmm10                      #! PC = 0x93824992239005 *)
add xmm10_0 xmm10_0 xmm8_0;
add xmm10_1 xmm10_1 xmm8_1;
(* vpmuludq %xmm2,%xmm9,%xmm2                      #! PC = 0x93824992239010 *)
mul xmm2_0 xmm9_0 xmm2_0;
mul xmm2_1 xmm9_1 xmm2_1;
(* vpmuludq %xmm3,%xmm9,%xmm3                      #! PC = 0x93824992239014 *)
mul xmm3_0 xmm9_0 xmm3_0;
mul xmm3_1 xmm9_1 xmm3_1;
(* vpsrldq $0x6,%xmm5,%xmm7                        #! PC = 0x93824992239018 *)
split xmm7_0 dontcare xmm5_0 48;
split xmm7_1 care xmm5_1 48;
shl care care 16;
add xmm7_0 xmm7_0 care;
(* vpaddq %xmm2,%xmm11,%xmm11                      #! PC = 0x93824992239023 *)
add xmm11_0 xmm11_0 xmm2_0;
add xmm11_1 xmm11_1 xmm2_1;
(* vpmuludq %xmm4,%xmm9,%xmm4                      #! PC = 0x93824992239027 *)
mul xmm4_0 xmm9_0 xmm4_0;
mul xmm4_1 xmm9_1 xmm4_1;
(* vpsrldq $0x6,%xmm6,%xmm8                        #! PC = 0x93824992239031 *)
split xmm8_0 dontcare xmm6_0 48;
split xmm8_1 care xmm6_1 48;
shl care care 16;
add xmm8_0 xmm8_0 care;
(* vpaddq %xmm3,%xmm12,%xmm2                       #! PC = 0x93824992239036 *)
add xmm2_0 xmm12_0 xmm3_0;
add xmm2_1 xmm12_1 xmm3_1;
(* vpaddq %xmm4,%xmm13,%xmm3                       #! PC = 0x93824992239040 *)
add xmm3_0 xmm13_0 xmm4_0;
add xmm3_1 xmm13_1 xmm4_1;
(* vpmuludq -0x20(%r11),%xmm0,%xmm4                #! EA = L0x7fffffffc630; Value = 0x0000000000000000; PC = 0x93824992239044 *)
mul xmm4_0 xmm0_0 L0x7fffffffc630;
mul xmm4_1 xmm0_1 L0x7fffffffc638;
(* vpmuludq %xmm1,%xmm9,%xmm0                      #! PC = 0x93824992239050 *)
mul xmm0_0 xmm9_0 xmm1_0;
mul xmm0_1 xmm9_1 xmm1_1;
(* vpunpckhqdq %xmm6,%xmm5,%xmm9                   #! PC = 0x93824992239054 *)
mov xmm9_0 xmm5_1;
mov xmm9_1 xmm6_1;
(* vpaddq %xmm4,%xmm14,%xmm4                       #! PC = 0x93824992239058 *)
add xmm4_0 xmm14_0 xmm4_0;
add xmm4_1 xmm14_1 xmm4_1;
(* vpaddq %xmm0,%xmm10,%xmm0                       #! PC = 0x93824992239062 *)
add xmm0_0 xmm10_0 xmm0_0;
add xmm0_1 xmm10_1 xmm0_1;

(* NOTE: summary of multiplication *)
(* H0 = xmm0, D1 = xmm11, H2 = xmm2, H3 = xmm3, H4 = xmm4 *)
assert eqmod (limbs 26 [xmm0_0, xmm11_0, xmm2_0, xmm3_0, xmm4_0])
             ((limbs 64 [inp_100, inp_101] *
               limbs 26 [r0_0, r1_0, r2_0, r3_0, r4_0]) +
              ((limbs 64 [inp_000, inp_001] +
                limbs 26 [h0_0, h1_0, h2_0, h3_0, h4_0]) *
               (limbs 26 [r0_0, r1_0, r2_0, r3_0, r4_0])))
             (2**130 - 5) && true;
assert eqmod (limbs 26 [xmm0_1, xmm11_1, xmm2_1, xmm3_1, xmm4_1])
             ((limbs 64 [inp_110, inp_111] *
               limbs 26 [r0_1, r1_1, r2_1, r3_1, r4_1]) +
              ((limbs 64 [inp_010, inp_011] +
                limbs 26 [h0_1, h1_1, h2_1, h3_1, h4_1]) *
               (limbs 26 [r0_1, r1_1, r2_1, r3_1, r4_1])))
             (2**130 - 5) && true;

(* vpunpcklqdq %xmm6,%xmm5,%xmm5                   #! PC = 0x93824992239066 *)
mov xmm5_0 xmm5_0;
mov xmm5_1 xmm6_0;
(* vpunpcklqdq %xmm8,%xmm7,%xmm8                   #! PC = 0x93824992239070 *)
(* NOTE: keep old value to avoid tainting *)
mov xmm8o_0 xmm8_0; mov xmm8o_1 xmm8_1;
mov xmm8_0 xmm7_0;
mov xmm8_1 xmm8o_0;
(* vpsrldq $0x5,%xmm9,%xmm9                        #! PC = 0x93824992239075 *)
split xmm9_0 dontcare xmm9_0 40;
split xmm9_1 care xmm9_1 40;
shl care care 24;
add xmm9_0 xmm9_0 care;
(* vpsrlq $0x1a,%xmm5,%xmm6                        #! PC = 0x93824992239081 *)
split xmm6_0 dontcare xmm5_0 26;
split xmm6_1 dontcare xmm5_1 26;
(* vmovdqa (%rsp),%xmm14                           #! EA = L0x7fffffffc530; Value = 0x0000000000000000; PC = 0x93824992239086 *)
mov xmm14_0 L0x7fffffffc530;
mov xmm14_1 L0x7fffffffc538;
(* vpand  %xmm15,%xmm5,%xmm5                       #! PC = 0x93824992239091 *)
and xmm5_0@uint64 xmm5_0 xmm15_0;
and xmm5_1@uint64 xmm5_1 xmm15_1;
(* vpsrlq $0x4,%xmm8,%xmm7                         #! PC = 0x93824992239096 *)
split xmm7_0 dontcare xmm8_0 4;
split xmm7_1 dontcare xmm8_1 4;
(* vpand  %xmm15,%xmm6,%xmm6                       #! PC = 0x93824992239102 *)
and xmm6_0@uint64 xmm6_0 xmm15_0;
and xmm6_1@uint64 xmm6_1 xmm15_1;
(* vpand  (%rcx),%xmm9,%xmm9                       #! EA = L0x555555558040; Value = 0x0000000000ffffff; PC = 0x93824992239107 *)
and xmm9_0@uint64 xmm9_0 L0x555555558040;
and xmm9_1@uint64 xmm9_1 L0x555555558048;
(* vpsrlq $0x1e,%xmm8,%xmm8                        #! PC = 0x93824992239111 *)
split xmm8_0 dontcare xmm8_0 30;
split xmm8_1 dontcare xmm8_1 30;
(* vpand  %xmm15,%xmm7,%xmm7                       #! PC = 0x93824992239117 *)
and xmm7_0@uint64 xmm7_0 xmm15_0;
and xmm7_1@uint64 xmm7_1 xmm15_1;
(* vpand  %xmm15,%xmm8,%xmm8                       #! PC = 0x93824992239122 *)
and xmm8_0@uint64 xmm8_0 xmm15_0;
and xmm8_1@uint64 xmm8_1 xmm15_1;
(* vpor   0x20(%rcx),%xmm9,%xmm9                   #! EA = L0x555555558060; Value = 0x0000000001000000; PC = 0x93824992239127 *)
or xmm9_0@uint64 xmm9_0 L0x555555558060;
or xmm9_1@uint64 xmm9_1 L0x555555558068;

(* NOTE: summary of input radix 32 -> 26 *)
assert true
    && (uext (limbs 64 [INP_100, INP_101]) 40) =
       limbs 26 [xmm5_0, xmm6_0, xmm7_0, xmm8_0, xmm9_0];
assume limbs 64 [INP_100, INP_101] =
       limbs 26 [xmm5_0, xmm6_0, xmm7_0, xmm8_0, xmm9_0]
    && true;
assert true
    && uext (limbs 64 [INP_110, INP_111]) 40 =
       limbs 26 [xmm5_1, xmm6_1, xmm7_1, xmm8_1, xmm9_1];
assume limbs 64 [INP_110, INP_111] =
       limbs 26 [xmm5_1, xmm6_1, xmm7_1, xmm8_1, xmm9_1]
    && true;

(* ################################################################ *)
################################################################;
(* # lazy reduction as discussed in "NEON crypto" by D.J. Bernstein *)
# lazy reduction as discussed in "NEON crypto" by D.J. Bernstein;
(* # and P. Schwabe *)
# and P. Schwabe;
(* vpsrlq $0x1a,%xmm3,%xmm13                       #! PC = 0x93824992239132 *)
split xmm13_0 dontcare_0 xmm3_0 26;
split xmm13_1 dontcare_1 xmm3_1 26;
(* vpand  %xmm15,%xmm3,%xmm3                       #! PC = 0x93824992239137 *)
and xmm3_0@uint64 xmm3_0 xmm15_0;
(* NOTE: add relation for xmm3 *)
assert true && xmm3_0 = dontcare_0;
assume xmm3_0 = dontcare_0 && true;
and xmm3_1@uint64 xmm3_1 xmm15_1;
(* NOTE: add relation for xmm3 *)
assert true && xmm3_1 = dontcare_1;
assume xmm3_1 = dontcare_1 && true;
(* vpaddq %xmm13,%xmm4,%xmm4                       #! PC = 0x93824992239142 *)
add xmm4_0 xmm4_0 xmm13_0;
add xmm4_1 xmm4_1 xmm13_1;
(* vpsrlq $0x1a,%xmm0,%xmm10                       #! PC = 0x93824992239147 *)
split xmm10_0 dontcare_0 xmm0_0 26;
split xmm10_1 dontcare_1 xmm0_1 26;
(* vpand  %xmm15,%xmm0,%xmm0                       #! PC = 0x93824992239152 *)
and xmm0_0@uint64 xmm0_0 xmm15_0;
(* NOTE: add relation for xmm0 *)
assert true && xmm0_0 = dontcare_0;
assume xmm0_0 = dontcare_0 && true;
and xmm0_1@uint64 xmm0_1 xmm15_1;
(* NOTE: add relation for xmm0 *)
assert true && xmm0_1 = dontcare_1;
assume xmm0_1 = dontcare_1 && true;
(* vpaddq %xmm10,%xmm11,%xmm1                      #! PC = 0x93824992239157 *)
add xmm1_0 xmm11_0 xmm10_0;
add xmm1_1 xmm11_1 xmm10_1;
(* vpsrlq $0x1a,%xmm4,%xmm10                       #! PC = 0x93824992239162 *)
split xmm10_0 dontcare_0 xmm4_0 26;
split xmm10_1 dontcare_1 xmm4_1 26;
(* vpand  %xmm15,%xmm4,%xmm4                       #! PC = 0x93824992239167 *)
and xmm4_0@uint64 xmm4_0 xmm15_0;
(* NOTE: add relation for xmm4 *)
assert true && xmm4_0 = dontcare_0;
assume xmm4_0 = dontcare_0 && true;
and xmm4_1@uint64 xmm4_1 xmm15_1;
(* NOTE: add relation for xmm4 *)
assert true && xmm4_1 = dontcare_1;
assume xmm4_1 = dontcare_1 && true;
(* vpsrlq $0x1a,%xmm1,%xmm11                       #! PC = 0x93824992239172 *)
split xmm11_0 dontcare_0 xmm1_0 26;
split xmm11_1 dontcare_1 xmm1_1 26;
(* vpand  %xmm15,%xmm1,%xmm1                       #! PC = 0x93824992239177 *)
and xmm1_0@uint64 xmm1_0 xmm15_0;
(* NOTE: add relation for xmm1 *)
assert true && xmm1_0 = dontcare_0;
assume xmm1_0 = dontcare_0 && true;
and xmm1_1@uint64 xmm1_1 xmm15_1;
(* NOTE: add relation for xmm1 *)
assert true && xmm1_1 = dontcare_1;
assume xmm1_1 = dontcare_1 && true;
(* vpaddq %xmm11,%xmm2,%xmm2                       #! PC = 0x93824992239182 *)
add xmm2_0 xmm2_0 xmm11_0;
add xmm2_1 xmm2_1 xmm11_1;
(* vpaddq %xmm10,%xmm0,%xmm0                       #! PC = 0x93824992239187 *)
add xmm0_0 xmm0_0 xmm10_0;
add xmm0_1 xmm0_1 xmm10_1;
(* vpsllq $0x2,%xmm10,%xmm10                       #! PC = 0x93824992239192 *)
shl xmm10_0 xmm10_0 2;
shl xmm10_1 xmm10_1 2;
(* vpaddq %xmm10,%xmm0,%xmm0                       #! PC = 0x93824992239198 *)
add xmm0_0 xmm0_0 xmm10_0;
add xmm0_1 xmm0_1 xmm10_1;
(* vpsrlq $0x1a,%xmm2,%xmm12                       #! PC = 0x93824992239203 *)
split xmm12_0 dontcare_0 xmm2_0 26;
split xmm12_1 dontcare_1 xmm2_1 26;
(* vpand  %xmm15,%xmm2,%xmm2                       #! PC = 0x93824992239208 *)
and xmm2_0@uint64 xmm2_0 xmm15_0;
(* NOTE: add relation for xmm2 *)
assert true && xmm2_0 = dontcare_0;
assume xmm2_0 = dontcare_0 && true;
and xmm2_1@uint64 xmm2_1 xmm15_1;
(* NOTE: add relation for xmm2 *)
assert true && xmm2_1 = dontcare_1;
assume xmm2_1 = dontcare_1 && true;
(* vpaddq %xmm12,%xmm3,%xmm3                       #! PC = 0x93824992239213 *)
add xmm3_0 xmm3_0 xmm12_0;
add xmm3_1 xmm3_1 xmm12_1;
(* vpsrlq $0x1a,%xmm0,%xmm10                       #! PC = 0x93824992239218 *)
split xmm10_0 dontcare_0 xmm0_0 26;
split xmm10_1 dontcare_1 xmm0_1 26;
(* vpand  %xmm15,%xmm0,%xmm0                       #! PC = 0x93824992239223 *)
and xmm0_0@uint64 xmm0_0 xmm15_0;
(* NOTE: add relation for xmm0 *)
assert true && xmm0_0 = dontcare_0;
assume xmm0_0 = dontcare_0 && true;
and xmm0_1@uint64 xmm0_1 xmm15_1;
(* NOTE: add relation for xmm0 *)
assert true && xmm0_1 = dontcare_1;
assume xmm0_1 = dontcare_1 && true;
(* vpaddq %xmm10,%xmm1,%xmm1                       #! PC = 0x93824992239228 *)
add xmm1_0 xmm1_0 xmm10_0;
add xmm1_1 xmm1_1 xmm10_1;
(* vpsrlq $0x1a,%xmm3,%xmm13                       #! PC = 0x93824992239233 *)
split xmm13_0 dontcare_0 xmm3_0 26;
split xmm13_1 dontcare_1 xmm3_1 26;
(* vpand  %xmm15,%xmm3,%xmm3                       #! PC = 0x93824992239238 *)
and xmm3_0@uint64 xmm3_0 xmm15_0;
(* NOTE: add relation for xmm3 *)
assert true && xmm3_0 = dontcare_0;
assume xmm3_0 = dontcare_0 && true;
and xmm3_1@uint64 xmm3_1 xmm15_1;
(* NOTE: add relation for xmm3 *)
assert true && xmm3_1 = dontcare_1;
assume xmm3_1 = dontcare_1 && true;
(* vpaddq %xmm13,%xmm4,%xmm4                       #! PC = 0x93824992239243 *)
add xmm4_0 xmm4_0 xmm13_0;
add xmm4_1 xmm4_1 xmm13_1;
(* #ja     0x555555555b40 <poly1305_blocks_avx+1088>#! PC = 0x93824992239248 *)
#ja     0x555555555b40 <poly1305_blocks_avx+1088>#! 0x93824992239248 = 0x93824992239248;

mov H0_0 xmm0_0; mov H0_1 xmm0_1; mov H1_0 xmm1_0; mov H1_1 xmm1_1;
mov H2_0 xmm2_0; mov H2_1 xmm2_1; mov H3_0 xmm3_0; mov H3_1 xmm3_1;
mov H4_0 xmm4_0; mov H4_1 xmm4_1;

mov T0_0 xmm5_0; mov T0_1 xmm5_1; mov T1_0 xmm6_0; mov T1_1 xmm6_1;
mov T2_0 xmm7_0; mov T2_1 xmm7_1; mov T3_0 xmm8_0; mov T3_1 xmm8_1;
mov T4_0 xmm9_0; mov T4_1 xmm9_1;

{
  and [
    eqmod (limbs 26 [H0_0, H1_0, H2_0, H3_0, H4_0])
          ((limbs 64 [inp_100, inp_101] *
            limbs 26 [r0_0, r1_0, r2_0, r3_0, r4_0]) +
           ((limbs 64 [inp_000, inp_001] +
             limbs 26 [h0_0, h1_0, h2_0, h3_0, h4_0]) *
            (limbs 26 [r0_0, r1_0, r2_0, r3_0, r4_0])))
          (2**130 - 5),
    eqmod (limbs 26 [H0_1, H1_1, H2_1, H3_1, H4_1])
          ((limbs 64 [inp_110, inp_111] *
            limbs 26 [r0_1, r1_1, r2_1, r3_1, r4_1]) +
           ((limbs 64 [inp_010, inp_011] +
             limbs 26 [h0_1, h1_1, h2_1, h3_1, h4_1]) *
            (limbs 26 [r0_1, r1_1, r2_1, r3_1, r4_1])))
          (2**130 - 5),
    limbs 64 [INP_100, INP_101] = limbs 26 [T0_0, T1_0, T2_0, T3_0, T4_0],
    limbs 64 [INP_110, INP_111] = limbs 26 [T0_1, T1_1, T2_1, T3_1, T4_1]
  ]
&&
  and [
    H0_0 < (2**26)@64, H0_1 < (2**26)@64,
(*  H1_0 < (2**26)@64, H2_1 < (2**26)@64, *)
    H2_0 < (2**26)@64, H2_1 < (2**26)@64,
    H3_0 < (2**26)@64, H3_1 < (2**26)@64,
(*  H4_0 < (2**26)@64, H4_1 < (2**26)@64, *)
    T0_0 < (2**26)@64, T0_1 < (2**26)@64,
    T1_0 < (2**26)@64, T1_1 < (2**26)@64,
    T2_0 < (2**26)@64, T2_1 < (2**26)@64,
    T3_0 < (2**26)@64, T3_1 < (2**26)@64,
    T4_0 < (2**26)@64, T4_1 < (2**26)@64
  ]
}

