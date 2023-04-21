(* quine: cv_cec.exe -jobs 16 -v -ov a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,aa,ab,ac,ad,ae,af#b0,b1,b2,b3,b4,b5,b6,b7,b8,b9,ba,bb,bc,bd,be,bf#c0,c1,c2,c3,c4,c5,c6,c7,c8,c9,ca,cb,cc,cd,ce,cf#d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,da,db,dc,dd,de,df#e0,e1,e2,e3,e4,e5,e6,e7,e8,e9,ea,eb,ec,ed,ee,ef#f0,f1,f2,f3,f4,f5,f6,f7,f8,f9,fa,fb,fc,fd,fe,ff#g0,g1,g2,g3,g4,g5,g6,g7,g8,g9,ga,gb,gc,gd,ge,gf#h0,h1,h2,h3,h4,h5,h6,h7,h8,h9,ha,hb,hc,hd,he,hf#i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,ia,ib,ic,id,ie,if#j0,j1,j2,j3,j4,j5,j6,j7,j8,j9,ja,jb,jc,jd,je,jf#k0,k1,k2,k3,k4,k5,k6,k7,k8,k9,ka,kb,kc,kd,ke,kf#l0,l1,l2,l3,l4,l5,l6,l7,l8,l9,la,lb,lc,ld,le,lf#m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,ma,mb,mc,md,me,mf#n0,n1,n2,n3,n4,n5,n6,n7,n8,n9,na,nb,nc,nd,ne,nf#o0,o1,o2,o3,o4,o5,o6,o7,o8,o9,oa,ob,oc,od,oe,of#p0,p1,p2,p3,p4,p5,p6,p7,p8,p9,pa,pb,pc,pd,pe,pf ../chacha_salsa20_wordtobyte_entryx16.cl chacha20_corex16.cl
Parsing CryptoLine file:                [OK]            0.115121 seconds
Checking well-formedness:               [OK]            0.063565 seconds
Parsing CryptoLine file:                [OK]            0.083059 seconds
Checking well-formedness:               [OK]            0.021726 seconds
Equivalence of output group #14:        [OK]            0.798277 seconds
Equivalence of output group #13:        [OK]            1.599199 seconds
Equivalence of output group #12:        [OK]            2.384834 seconds
Equivalence of output group #11:        [OK]            3.164721 seconds
Equivalence of output group #10:        [OK]            3.972901 seconds
Equivalence of output group #9:         [OK]            4.731943 seconds
Equivalence of output group #8:         [OK]            5.479607 seconds
Equivalence of output group #7:         [OK]            6.293789 seconds
Equivalence of output group #6:         [OK]            7.112526 seconds
Equivalence of output group #5:         [OK]            7.859086 seconds
Equivalence of output group #4:         [OK]            8.675705 seconds
Equivalence of output group #3:         [OK]            9.483812 seconds
Equivalence of output group #2:         [OK]            10.240543 seconds
Equivalence of output group #1:         [OK]            11.036855 seconds
Equivalence of output group #0:         [OK]            11.801378 seconds
Equivalence of output group #15:        [OK]            0.276795 seconds
Final result:                           [OK]            12.703684 seconds
*)

proc main (
uint32 A0, uint32 A1, uint32 A2, uint32 A3,
uint32 A4, uint32 A5, uint32 A6, uint32 A7,
uint32 A8, uint32 A9, uint32 Aa, uint32 Ab,
uint32 Ac, uint32 Ad, uint32 Ae, uint32 Af,
uint32 B0, uint32 B1, uint32 B2, uint32 B3,
uint32 B4, uint32 B5, uint32 B6, uint32 B7,
uint32 B8, uint32 B9, uint32 Ba, uint32 Bb,
uint32 Bc, uint32 Bd, uint32 Be, uint32 Bf,
uint32 C0, uint32 C1, uint32 C2, uint32 C3,
uint32 C4, uint32 C5, uint32 C6, uint32 C7,
uint32 C8, uint32 C9, uint32 Ca, uint32 Cb,
uint32 Cc, uint32 Cd, uint32 Ce, uint32 Cf,
uint32 D0, uint32 D1, uint32 D2, uint32 D3,
uint32 D4, uint32 D5, uint32 D6, uint32 D7,
uint32 D8, uint32 D9, uint32 Da, uint32 Db,
uint32 Dc, uint32 Dd, uint32 De, uint32 Df,
uint32 E0, uint32 E1, uint32 E2, uint32 E3,
uint32 E4, uint32 E5, uint32 E6, uint32 E7,
uint32 E8, uint32 E9, uint32 Ea, uint32 Eb,
uint32 Ec, uint32 Ed, uint32 Ee, uint32 Ef,
uint32 F0, uint32 F1, uint32 F2, uint32 F3,
uint32 F4, uint32 F5, uint32 F6, uint32 F7,
uint32 F8, uint32 F9, uint32 Fa, uint32 Fb,
uint32 Fc, uint32 Fd, uint32 Fe, uint32 Ff,
uint32 G0, uint32 G1, uint32 G2, uint32 G3,
uint32 G4, uint32 G5, uint32 G6, uint32 G7,
uint32 G8, uint32 G9, uint32 Ga, uint32 Gb,
uint32 Gc, uint32 Gd, uint32 Ge, uint32 Gf,
uint32 H0, uint32 H1, uint32 H2, uint32 H3,
uint32 H4, uint32 H5, uint32 H6, uint32 H7,
uint32 H8, uint32 H9, uint32 Ha, uint32 Hb,
uint32 Hc, uint32 Hd, uint32 He, uint32 Hf,
uint32 I0, uint32 I1, uint32 I2, uint32 I3,
uint32 I4, uint32 I5, uint32 I6, uint32 I7,
uint32 I8, uint32 I9, uint32 Ia, uint32 Ib,
uint32 Ic, uint32 Id, uint32 Ie, uint32 If,
uint32 J0, uint32 J1, uint32 J2, uint32 J3,
uint32 J4, uint32 J5, uint32 J6, uint32 J7,
uint32 J8, uint32 J9, uint32 Ja, uint32 Jb,
uint32 Jc, uint32 Jd, uint32 Je, uint32 Jf,
uint32 K0, uint32 K1, uint32 K2, uint32 K3,
uint32 K4, uint32 K5, uint32 K6, uint32 K7,
uint32 K8, uint32 K9, uint32 Ka, uint32 Kb,
uint32 Kc, uint32 Kd, uint32 Ke, uint32 Kf,
uint32 L0, uint32 L1, uint32 L2, uint32 L3,
uint32 L4, uint32 L5, uint32 L6, uint32 L7,
uint32 L8, uint32 L9, uint32 La, uint32 Lb,
uint32 Lc, uint32 Ld, uint32 Le, uint32 Lf,
uint32 M0, uint32 M1, uint32 M2, uint32 M3,
uint32 M4, uint32 M5, uint32 M6, uint32 M7,
uint32 M8, uint32 M9, uint32 Ma, uint32 Mb,
uint32 Mc, uint32 Md, uint32 Me, uint32 Mf,
uint32 N0, uint32 N1, uint32 N2, uint32 N3,
uint32 N4, uint32 N5, uint32 N6, uint32 N7,
uint32 N8, uint32 N9, uint32 Na, uint32 Nb,
uint32 Nc, uint32 Nd, uint32 Ne, uint32 Nf,
uint32 O0, uint32 O1, uint32 O2, uint32 O3,
uint32 O4, uint32 O5, uint32 O6, uint32 O7,
uint32 O8, uint32 O9, uint32 Oa, uint32 Ob,
uint32 Oc, uint32 Od, uint32 Oe, uint32 Of,
uint32 P0, uint32 P1, uint32 P2, uint32 P3,
uint32 P4, uint32 P5, uint32 P6, uint32 P7,
uint32 P8, uint32 P9, uint32 Pa, uint32 Pb,
uint32 Pc, uint32 Pd, uint32 Pe, uint32 Pf
) =
{
  true
  &&
  true
}

mov zmm0_0 A0; mov zmm0_1 B0; mov zmm0_2 C0; mov zmm0_3 D0;
mov zmm0_4 E0; mov zmm0_5 F0; mov zmm0_6 G0; mov zmm0_7 H0;
mov zmm0_8 I0; mov zmm0_9 J0; mov zmm0_a K0; mov zmm0_b L0;
mov zmm0_c M0; mov zmm0_d N0; mov zmm0_e O0; mov zmm0_f P0;
mov zmm1_0 A1; mov zmm1_1 B1; mov zmm1_2 C1; mov zmm1_3 D1;
mov zmm1_4 E1; mov zmm1_5 F1; mov zmm1_6 G1; mov zmm1_7 H1;
mov zmm1_8 I1; mov zmm1_9 J1; mov zmm1_a K1; mov zmm1_b L1;
mov zmm1_c M1; mov zmm1_d N1; mov zmm1_e O1; mov zmm1_f P1;
mov zmm2_0 A2; mov zmm2_1 B2; mov zmm2_2 C2; mov zmm2_3 D2;
mov zmm2_4 E2; mov zmm2_5 F2; mov zmm2_6 G2; mov zmm2_7 H2;
mov zmm2_8 I2; mov zmm2_9 J2; mov zmm2_a K2; mov zmm2_b L2;
mov zmm2_c M2; mov zmm2_d N2; mov zmm2_e O2; mov zmm2_f P2;
mov zmm3_0 A3; mov zmm3_1 B3; mov zmm3_2 C3; mov zmm3_3 D3;
mov zmm3_4 E3; mov zmm3_5 F3; mov zmm3_6 G3; mov zmm3_7 H3;
mov zmm3_8 I3; mov zmm3_9 J3; mov zmm3_a K3; mov zmm3_b L3;
mov zmm3_c M3; mov zmm3_d N3; mov zmm3_e O3; mov zmm3_f P3;
mov zmm4_0 A4; mov zmm4_1 B4; mov zmm4_2 C4; mov zmm4_3 D4;
mov zmm4_4 E4; mov zmm4_5 F4; mov zmm4_6 G4; mov zmm4_7 H4;
mov zmm4_8 I4; mov zmm4_9 J4; mov zmm4_a K4; mov zmm4_b L4;
mov zmm4_c M4; mov zmm4_d N4; mov zmm4_e O4; mov zmm4_f P4;
mov zmm5_0 A5; mov zmm5_1 B5; mov zmm5_2 C5; mov zmm5_3 D5;
mov zmm5_4 E5; mov zmm5_5 F5; mov zmm5_6 G5; mov zmm5_7 H5;
mov zmm5_8 I5; mov zmm5_9 J5; mov zmm5_a K5; mov zmm5_b L5;
mov zmm5_c M5; mov zmm5_d N5; mov zmm5_e O5; mov zmm5_f P5;
mov zmm6_0 A6; mov zmm6_1 B6; mov zmm6_2 C6; mov zmm6_3 D6;
mov zmm6_4 E6; mov zmm6_5 F6; mov zmm6_6 G6; mov zmm6_7 H6;
mov zmm6_8 I6; mov zmm6_9 J6; mov zmm6_a K6; mov zmm6_b L6;
mov zmm6_c M6; mov zmm6_d N6; mov zmm6_e O6; mov zmm6_f P6;
mov zmm7_0 A7; mov zmm7_1 B7; mov zmm7_2 C7; mov zmm7_3 D7;
mov zmm7_4 E7; mov zmm7_5 F7; mov zmm7_6 G7; mov zmm7_7 H7;
mov zmm7_8 I7; mov zmm7_9 J7; mov zmm7_a K7; mov zmm7_b L7;
mov zmm7_c M7; mov zmm7_d N7; mov zmm7_e O7; mov zmm7_f P7;
mov zmm8_0 A8; mov zmm8_1 B8; mov zmm8_2 C8; mov zmm8_3 D8;
mov zmm8_4 E8; mov zmm8_5 F8; mov zmm8_6 G8; mov zmm8_7 H8;
mov zmm8_8 I8; mov zmm8_9 J8; mov zmm8_a K8; mov zmm8_b L8;
mov zmm8_c M8; mov zmm8_d N8; mov zmm8_e O8; mov zmm8_f P8;
mov zmm9_0 A9; mov zmm9_1 B9; mov zmm9_2 C9; mov zmm9_3 D9;
mov zmm9_4 E9; mov zmm9_5 F9; mov zmm9_6 G9; mov zmm9_7 H9;
mov zmm9_8 I9; mov zmm9_9 J9; mov zmm9_a K9; mov zmm9_b L9;
mov zmm9_c M9; mov zmm9_d N9; mov zmm9_e O9; mov zmm9_f P9;
mov zmm10_0 Aa; mov zmm10_1 Ba; mov zmm10_2 Ca; mov zmm10_3 Da;
mov zmm10_4 Ea; mov zmm10_5 Fa; mov zmm10_6 Ga; mov zmm10_7 Ha;
mov zmm10_8 Ia; mov zmm10_9 Ja; mov zmm10_a Ka; mov zmm10_b La;
mov zmm10_c Ma; mov zmm10_d Na; mov zmm10_e Oa; mov zmm10_f Pa;
mov zmm11_0 Ab; mov zmm11_1 Bb; mov zmm11_2 Cb; mov zmm11_3 Db;
mov zmm11_4 Eb; mov zmm11_5 Fb; mov zmm11_6 Gb; mov zmm11_7 Hb;
mov zmm11_8 Ib; mov zmm11_9 Jb; mov zmm11_a Kb; mov zmm11_b Lb;
mov zmm11_c Mb; mov zmm11_d Nb; mov zmm11_e Ob; mov zmm11_f Pb;
mov zmm12_0 Ac; mov zmm12_1 Bc; mov zmm12_2 Cc; mov zmm12_3 Dc;
mov zmm12_4 Ec; mov zmm12_5 Fc; mov zmm12_6 Gc; mov zmm12_7 Hc;
mov zmm12_8 Ic; mov zmm12_9 Jc; mov zmm12_a Kc; mov zmm12_b Lc;
mov zmm12_c Mc; mov zmm12_d Nc; mov zmm12_e Oc; mov zmm12_f Pc;
mov zmm13_0 Ad; mov zmm13_1 Bd; mov zmm13_2 Cd; mov zmm13_3 Dd;
mov zmm13_4 Ed; mov zmm13_5 Fd; mov zmm13_6 Gd; mov zmm13_7 Hd;
mov zmm13_8 Id; mov zmm13_9 Jd; mov zmm13_a Kd; mov zmm13_b Ld;
mov zmm13_c Md; mov zmm13_d Nd; mov zmm13_e Od; mov zmm13_f Pd;
mov zmm14_0 Ae; mov zmm14_1 Be; mov zmm14_2 Ce; mov zmm14_3 De;
mov zmm14_4 Ee; mov zmm14_5 Fe; mov zmm14_6 Ge; mov zmm14_7 He;
mov zmm14_8 Ie; mov zmm14_9 Je; mov zmm14_a Ke; mov zmm14_b Le;
mov zmm14_c Me; mov zmm14_d Ne; mov zmm14_e Oe; mov zmm14_f Pe;
mov zmm15_0 Af; mov zmm15_1 Bf; mov zmm15_2 Cf; mov zmm15_3 Df;
mov zmm15_4 Ef; mov zmm15_5 Ff; mov zmm15_6 Gf; mov zmm15_7 Hf;
mov zmm15_8 If; mov zmm15_9 Jf; mov zmm15_a Kf; mov zmm15_b Lf;
mov zmm15_c Mf; mov zmm15_d Nf; mov zmm15_e Of; mov zmm15_f Pf;

(* #vpshufd $0x0,%zmm3,%zmm0                        #! PC = 0x555555557fce *)
#vpshufd $0x0,%%zmm3,%%zmm0                        #! 0x555555557fce = 0x555555557fce;
(* #vpshufd $0x55,%zmm3,%zmm1                       #! PC = 0x555555557fd5 *)
#vpshufd $0x55,%%zmm3,%%zmm1                       #! 0x555555557fd5 = 0x555555557fd5;
(* #vpshufd $0xaa,%zmm3,%zmm2                       #! PC = 0x555555557fdc *)
#vpshufd $0xaa,%%zmm3,%%zmm2                       #! 0x555555557fdc = 0x555555557fdc;
(* #vpshufd $0xff,%zmm3,%zmm3                       #! PC = 0x555555557fe3 *)
#vpshufd $0xff,%%zmm3,%%zmm3                       #! 0x555555557fe3 = 0x555555557fe3;
(* vmovdqa64 %zmm0,%zmm16                          #! PC = 0x555555557fea *)
mov zmm16_0 zmm0_0; mov zmm16_1 zmm0_1; mov zmm16_2 zmm0_2;
mov zmm16_3 zmm0_3; mov zmm16_4 zmm0_4; mov zmm16_5 zmm0_5;
mov zmm16_6 zmm0_6; mov zmm16_7 zmm0_7;
mov zmm16_8 zmm0_8; mov zmm16_9 zmm0_9; mov zmm16_a zmm0_a;
mov zmm16_b zmm0_b; mov zmm16_c zmm0_c; mov zmm16_d zmm0_d;
mov zmm16_e zmm0_e; mov zmm16_f zmm0_f;
(* vmovdqa64 %zmm1,%zmm17                          #! PC = 0x555555557ff0 *)
mov zmm17_0 zmm1_0; mov zmm17_1 zmm1_1; mov zmm17_2 zmm1_2;
mov zmm17_3 zmm1_3; mov zmm17_4 zmm1_4; mov zmm17_5 zmm1_5;
mov zmm17_6 zmm1_6; mov zmm17_7 zmm1_7;
mov zmm17_8 zmm1_8; mov zmm17_9 zmm1_9; mov zmm17_a zmm1_a;
mov zmm17_b zmm1_b; mov zmm17_c zmm1_c; mov zmm17_d zmm1_d;
mov zmm17_e zmm1_e; mov zmm17_f zmm1_f;
(* vmovdqa64 %zmm2,%zmm18                          #! PC = 0x555555557ff6 *)
mov zmm18_0 zmm2_0; mov zmm18_1 zmm2_1; mov zmm18_2 zmm2_2;
mov zmm18_3 zmm2_3; mov zmm18_4 zmm2_4; mov zmm18_5 zmm2_5;
mov zmm18_6 zmm2_6; mov zmm18_7 zmm2_7;
mov zmm18_8 zmm2_8; mov zmm18_9 zmm2_9; mov zmm18_a zmm2_a;
mov zmm18_b zmm2_b; mov zmm18_c zmm2_c; mov zmm18_d zmm2_d;
mov zmm18_e zmm2_e; mov zmm18_f zmm2_f;
(* vmovdqa64 %zmm3,%zmm19                          #! PC = 0x555555557ffc *)
mov zmm19_0 zmm3_0; mov zmm19_1 zmm3_1; mov zmm19_2 zmm3_2;
mov zmm19_3 zmm3_3; mov zmm19_4 zmm3_4; mov zmm19_5 zmm3_5;
mov zmm19_6 zmm3_6; mov zmm19_7 zmm3_7;
mov zmm19_8 zmm3_8; mov zmm19_9 zmm3_9; mov zmm19_a zmm3_a;
mov zmm19_b zmm3_b; mov zmm19_c zmm3_c; mov zmm19_d zmm3_d;
mov zmm19_e zmm3_e; mov zmm19_f zmm3_f;
(* #vpshufd $0x0,%zmm7,%zmm4                        #! PC = 0x555555558002 *)
#vpshufd $0x0,%%zmm7,%%zmm4                        #! 0x555555558002 = 0x555555558002;
(* #vpshufd $0x55,%zmm7,%zmm5                       #! PC = 0x555555558009 *)
#vpshufd $0x55,%%zmm7,%%zmm5                       #! 0x555555558009 = 0x555555558009;
(* #vpshufd $0xaa,%zmm7,%zmm6                       #! PC = 0x555555558010 *)
#vpshufd $0xaa,%%zmm7,%%zmm6                       #! 0x555555558010 = 0x555555558010;
(* #vpshufd $0xff,%zmm7,%zmm7                       #! PC = 0x555555558017 *)
#vpshufd $0xff,%%zmm7,%%zmm7                       #! 0x555555558017 = 0x555555558017;
(* vmovdqa64 %zmm4,%zmm20                          #! PC = 0x55555555801e *)
mov zmm20_0 zmm4_0; mov zmm20_1 zmm4_1; mov zmm20_2 zmm4_2;
mov zmm20_3 zmm4_3; mov zmm20_4 zmm4_4; mov zmm20_5 zmm4_5;
mov zmm20_6 zmm4_6; mov zmm20_7 zmm4_7;
mov zmm20_8 zmm4_8; mov zmm20_9 zmm4_9; mov zmm20_a zmm4_a;
mov zmm20_b zmm4_b; mov zmm20_c zmm4_c; mov zmm20_d zmm4_d;
mov zmm20_e zmm4_e; mov zmm20_f zmm4_f;
(* vmovdqa64 %zmm5,%zmm21                          #! PC = 0x555555558024 *)
mov zmm21_0 zmm5_0; mov zmm21_1 zmm5_1; mov zmm21_2 zmm5_2;
mov zmm21_3 zmm5_3; mov zmm21_4 zmm5_4; mov zmm21_5 zmm5_5;
mov zmm21_6 zmm5_6; mov zmm21_7 zmm5_7;
mov zmm21_8 zmm5_8; mov zmm21_9 zmm5_9; mov zmm21_a zmm5_a;
mov zmm21_b zmm5_b; mov zmm21_c zmm5_c; mov zmm21_d zmm5_d;
mov zmm21_e zmm5_e; mov zmm21_f zmm5_f;
(* vmovdqa64 %zmm6,%zmm22                          #! PC = 0x55555555802a *)
mov zmm22_0 zmm6_0; mov zmm22_1 zmm6_1; mov zmm22_2 zmm6_2;
mov zmm22_3 zmm6_3; mov zmm22_4 zmm6_4; mov zmm22_5 zmm6_5;
mov zmm22_6 zmm6_6; mov zmm22_7 zmm6_7;
mov zmm22_8 zmm6_8; mov zmm22_9 zmm6_9; mov zmm22_a zmm6_a;
mov zmm22_b zmm6_b; mov zmm22_c zmm6_c; mov zmm22_d zmm6_d;
mov zmm22_e zmm6_e; mov zmm22_f zmm6_f;
(* vmovdqa64 %zmm7,%zmm23                          #! PC = 0x555555558030 *)
mov zmm23_0 zmm7_0; mov zmm23_1 zmm7_1; mov zmm23_2 zmm7_2;
mov zmm23_3 zmm7_3; mov zmm23_4 zmm7_4; mov zmm23_5 zmm7_5;
mov zmm23_6 zmm7_6; mov zmm23_7 zmm7_7;
mov zmm23_8 zmm7_8; mov zmm23_9 zmm7_9; mov zmm23_a zmm7_a;
mov zmm23_b zmm7_b; mov zmm23_c zmm7_c; mov zmm23_d zmm7_d;
mov zmm23_e zmm7_e; mov zmm23_f zmm7_f;
(* #vpshufd $0x0,%zmm11,%zmm8                       #! PC = 0x555555558036 *)
#vpshufd $0x0,%%zmm11,%%zmm8                       #! 0x555555558036 = 0x555555558036;
(* #vpshufd $0x55,%zmm11,%zmm9                      #! PC = 0x55555555803d *)
#vpshufd $0x55,%%zmm11,%%zmm9                      #! 0x55555555803d = 0x55555555803d;
(* #vpshufd $0xaa,%zmm11,%zmm10                     #! PC = 0x555555558044 *)
#vpshufd $0xaa,%%zmm11,%%zmm10                     #! 0x555555558044 = 0x555555558044;
(* #vpshufd $0xff,%zmm11,%zmm11                     #! PC = 0x55555555804b *)
#vpshufd $0xff,%%zmm11,%%zmm11                     #! 0x55555555804b = 0x55555555804b;
(* vmovdqa64 %zmm8,%zmm24                          #! PC = 0x555555558052 *)
mov zmm24_0 zmm8_0; mov zmm24_1 zmm8_1; mov zmm24_2 zmm8_2;
mov zmm24_3 zmm8_3; mov zmm24_4 zmm8_4; mov zmm24_5 zmm8_5;
mov zmm24_6 zmm8_6; mov zmm24_7 zmm8_7;
mov zmm24_8 zmm8_8; mov zmm24_9 zmm8_9; mov zmm24_a zmm8_a;
mov zmm24_b zmm8_b; mov zmm24_c zmm8_c; mov zmm24_d zmm8_d;
mov zmm24_e zmm8_e; mov zmm24_f zmm8_f;
(* vmovdqa64 %zmm9,%zmm25                          #! PC = 0x555555558058 *)
mov zmm25_0 zmm9_0; mov zmm25_1 zmm9_1; mov zmm25_2 zmm9_2;
mov zmm25_3 zmm9_3; mov zmm25_4 zmm9_4; mov zmm25_5 zmm9_5;
mov zmm25_6 zmm9_6; mov zmm25_7 zmm9_7;
mov zmm25_8 zmm9_8; mov zmm25_9 zmm9_9; mov zmm25_a zmm9_a;
mov zmm25_b zmm9_b; mov zmm25_c zmm9_c; mov zmm25_d zmm9_d;
mov zmm25_e zmm9_e; mov zmm25_f zmm9_f;
(* vmovdqa64 %zmm10,%zmm26                         #! PC = 0x55555555805e *)
mov zmm26_0 zmm10_0; mov zmm26_1 zmm10_1; mov zmm26_2 zmm10_2;
mov zmm26_3 zmm10_3; mov zmm26_4 zmm10_4; mov zmm26_5 zmm10_5;
mov zmm26_6 zmm10_6; mov zmm26_7 zmm10_7;
mov zmm26_8 zmm10_8; mov zmm26_9 zmm10_9; mov zmm26_a zmm10_a;
mov zmm26_b zmm10_b; mov zmm26_c zmm10_c; mov zmm26_d zmm10_d;
mov zmm26_e zmm10_e; mov zmm26_f zmm10_f;
(* vmovdqa64 %zmm11,%zmm27                         #! PC = 0x555555558064 *)
mov zmm27_0 zmm11_0; mov zmm27_1 zmm11_1; mov zmm27_2 zmm11_2;
mov zmm27_3 zmm11_3; mov zmm27_4 zmm11_4; mov zmm27_5 zmm11_5;
mov zmm27_6 zmm11_6; mov zmm27_7 zmm11_7;
mov zmm27_8 zmm11_8; mov zmm27_9 zmm11_9; mov zmm27_a zmm11_a;
mov zmm27_b zmm11_b; mov zmm27_c zmm11_c; mov zmm27_d zmm11_d;
mov zmm27_e zmm11_e; mov zmm27_f zmm11_f;
(* #vpshufd $0x0,%zmm15,%zmm12                      #! PC = 0x55555555806a *)
#vpshufd $0x0,%%zmm15,%%zmm12                      #! 0x55555555806a = 0x55555555806a;
(* #vpshufd $0x55,%zmm15,%zmm13                     #! PC = 0x555555558071 *)
#vpshufd $0x55,%%zmm15,%%zmm13                     #! 0x555555558071 = 0x555555558071;
(* #vpshufd $0xaa,%zmm15,%zmm14                     #! PC = 0x555555558078 *)
#vpshufd $0xaa,%%zmm15,%%zmm14                     #! 0x555555558078 = 0x555555558078;
(* #vpshufd $0xff,%zmm15,%zmm15                     #! PC = 0x55555555807f *)
#vpshufd $0xff,%%zmm15,%%zmm15                     #! 0x55555555807f = 0x55555555807f;
(* #vpaddd -0x2d50(%rip),%zmm12,%zmm12        # 0x555555555340#! EA = L0x555555555340; Value = 0x0000000100000000; PC = 0x555555558086 *)
#vpaddd %%L0x555555555340,%%zmm12,%%zmm12        # 0x555555555340#! L0x555555555340 = L0x555555555340; 0x0000000100000000 = 0x0000000100000000; 0x555555558086 = 0x555555558086;
(* vmovdqa64 %zmm12,%zmm28                         #! PC = 0x555555558090 *)
mov zmm28_0 zmm12_0; mov zmm28_1 zmm12_1; mov zmm28_2 zmm12_2;
mov zmm28_3 zmm12_3; mov zmm28_4 zmm12_4; mov zmm28_5 zmm12_5;
mov zmm28_6 zmm12_6; mov zmm28_7 zmm12_7;
mov zmm28_8 zmm12_8; mov zmm28_9 zmm12_9; mov zmm28_a zmm12_a;
mov zmm28_b zmm12_b; mov zmm28_c zmm12_c; mov zmm28_d zmm12_d;
mov zmm28_e zmm12_e; mov zmm28_f zmm12_f;
(* vmovdqa64 %zmm13,%zmm29                         #! PC = 0x555555558096 *)
mov zmm29_0 zmm13_0; mov zmm29_1 zmm13_1; mov zmm29_2 zmm13_2;
mov zmm29_3 zmm13_3; mov zmm29_4 zmm13_4; mov zmm29_5 zmm13_5;
mov zmm29_6 zmm13_6; mov zmm29_7 zmm13_7;
mov zmm29_8 zmm13_8; mov zmm29_9 zmm13_9; mov zmm29_a zmm13_a;
mov zmm29_b zmm13_b; mov zmm29_c zmm13_c; mov zmm29_d zmm13_d;
mov zmm29_e zmm13_e; mov zmm29_f zmm13_f;
(* vmovdqa64 %zmm14,%zmm30                         #! PC = 0x55555555809c *)
mov zmm30_0 zmm14_0; mov zmm30_1 zmm14_1; mov zmm30_2 zmm14_2;
mov zmm30_3 zmm14_3; mov zmm30_4 zmm14_4; mov zmm30_5 zmm14_5;
mov zmm30_6 zmm14_6; mov zmm30_7 zmm14_7;
mov zmm30_8 zmm14_8; mov zmm30_9 zmm14_9; mov zmm30_a zmm14_a;
mov zmm30_b zmm14_b; mov zmm30_c zmm14_c; mov zmm30_d zmm14_d;
mov zmm30_e zmm14_e; mov zmm30_f zmm14_f;
(* vmovdqa64 %zmm15,%zmm31                         #! PC = 0x5555555580a2 *)
mov zmm31_0 zmm15_0; mov zmm31_1 zmm15_1; mov zmm31_2 zmm15_2;
mov zmm31_3 zmm15_3; mov zmm31_4 zmm15_4; mov zmm31_5 zmm15_5;
mov zmm31_6 zmm15_6; mov zmm31_7 zmm15_7;
mov zmm31_8 zmm15_8; mov zmm31_9 zmm15_9; mov zmm31_a zmm15_a;
mov zmm31_b zmm15_b; mov zmm31_c zmm15_c; mov zmm31_d zmm15_d;
mov zmm31_e zmm15_e; mov zmm31_f zmm15_f;
(* mov    $0xa,%eax                                #! PC = 0x5555555580a8 *)
(* mov 0xa, %eax *)
nop;
(* #jmp    0x555555558160 <ChaCha20_16x+448>       #! PC = 0x5555555580ad *)
#jmp    0x555555558160 <ChaCha20_16x+448>       #! 0x5555555580ad = 0x5555555580ad;
(* vpaddd %zmm4,%zmm0,%zmm0                        #! PC = 0x555555558160 *)
adds dc zmm0_0 zmm0_0 zmm4_0; adds dc zmm0_1 zmm0_1 zmm4_1;
adds dc zmm0_2 zmm0_2 zmm4_2; adds dc zmm0_3 zmm0_3 zmm4_3;
adds dc zmm0_4 zmm0_4 zmm4_4; adds dc zmm0_5 zmm0_5 zmm4_5;
adds dc zmm0_6 zmm0_6 zmm4_6; adds dc zmm0_7 zmm0_7 zmm4_7;
adds dc zmm0_8 zmm0_8 zmm4_8; adds dc zmm0_9 zmm0_9 zmm4_9;
adds dc zmm0_a zmm0_a zmm4_a; adds dc zmm0_b zmm0_b zmm4_b;
adds dc zmm0_c zmm0_c zmm4_c; adds dc zmm0_d zmm0_d zmm4_d;
adds dc zmm0_e zmm0_e zmm4_e; adds dc zmm0_f zmm0_f zmm4_f;
(* vpaddd %zmm5,%zmm1,%zmm1                        #! PC = 0x555555558166 *)
adds dc zmm1_0 zmm1_0 zmm5_0; adds dc zmm1_1 zmm1_1 zmm5_1;
adds dc zmm1_2 zmm1_2 zmm5_2; adds dc zmm1_3 zmm1_3 zmm5_3;
adds dc zmm1_4 zmm1_4 zmm5_4; adds dc zmm1_5 zmm1_5 zmm5_5;
adds dc zmm1_6 zmm1_6 zmm5_6; adds dc zmm1_7 zmm1_7 zmm5_7;
adds dc zmm1_8 zmm1_8 zmm5_8; adds dc zmm1_9 zmm1_9 zmm5_9;
adds dc zmm1_a zmm1_a zmm5_a; adds dc zmm1_b zmm1_b zmm5_b;
adds dc zmm1_c zmm1_c zmm5_c; adds dc zmm1_d zmm1_d zmm5_d;
adds dc zmm1_e zmm1_e zmm5_e; adds dc zmm1_f zmm1_f zmm5_f;
(* vpaddd %zmm6,%zmm2,%zmm2                        #! PC = 0x55555555816c *)
adds dc zmm2_0 zmm2_0 zmm6_0; adds dc zmm2_1 zmm2_1 zmm6_1;
adds dc zmm2_2 zmm2_2 zmm6_2; adds dc zmm2_3 zmm2_3 zmm6_3;
adds dc zmm2_4 zmm2_4 zmm6_4; adds dc zmm2_5 zmm2_5 zmm6_5;
adds dc zmm2_6 zmm2_6 zmm6_6; adds dc zmm2_7 zmm2_7 zmm6_7;
adds dc zmm2_8 zmm2_8 zmm6_8; adds dc zmm2_9 zmm2_9 zmm6_9;
adds dc zmm2_a zmm2_a zmm6_a; adds dc zmm2_b zmm2_b zmm6_b;
adds dc zmm2_c zmm2_c zmm6_c; adds dc zmm2_d zmm2_d zmm6_d;
adds dc zmm2_e zmm2_e zmm6_e; adds dc zmm2_f zmm2_f zmm6_f;
(* vpaddd %zmm7,%zmm3,%zmm3                        #! PC = 0x555555558172 *)
adds dc zmm3_0 zmm3_0 zmm7_0; adds dc zmm3_1 zmm3_1 zmm7_1;
adds dc zmm3_2 zmm3_2 zmm7_2; adds dc zmm3_3 zmm3_3 zmm7_3;
adds dc zmm3_4 zmm3_4 zmm7_4; adds dc zmm3_5 zmm3_5 zmm7_5;
adds dc zmm3_6 zmm3_6 zmm7_6; adds dc zmm3_7 zmm3_7 zmm7_7;
adds dc zmm3_8 zmm3_8 zmm7_8; adds dc zmm3_9 zmm3_9 zmm7_9;
adds dc zmm3_a zmm3_a zmm7_a; adds dc zmm3_b zmm3_b zmm7_b;
adds dc zmm3_c zmm3_c zmm7_c; adds dc zmm3_d zmm3_d zmm7_d;
adds dc zmm3_e zmm3_e zmm7_e; adds dc zmm3_f zmm3_f zmm7_f;
(* vpxord %zmm0,%zmm12,%zmm12                      #! PC = 0x555555558178 *)
xor zmm12_0@uint32 zmm12_0 zmm0_0; xor zmm12_1@uint32 zmm12_1 zmm0_1;
xor zmm12_2@uint32 zmm12_2 zmm0_2; xor zmm12_3@uint32 zmm12_3 zmm0_3;
xor zmm12_4@uint32 zmm12_4 zmm0_4; xor zmm12_5@uint32 zmm12_5 zmm0_5;
xor zmm12_6@uint32 zmm12_6 zmm0_6; xor zmm12_7@uint32 zmm12_7 zmm0_7;
xor zmm12_8@uint32 zmm12_8 zmm0_8; xor zmm12_9@uint32 zmm12_9 zmm0_9;
xor zmm12_a@uint32 zmm12_a zmm0_a; xor zmm12_b@uint32 zmm12_b zmm0_b;
xor zmm12_c@uint32 zmm12_c zmm0_c; xor zmm12_d@uint32 zmm12_d zmm0_d;
xor zmm12_e@uint32 zmm12_e zmm0_e; xor zmm12_f@uint32 zmm12_f zmm0_f;
(* vpxord %zmm1,%zmm13,%zmm13                      #! PC = 0x55555555817e *)
xor zmm13_0@uint32 zmm13_0 zmm1_0; xor zmm13_1@uint32 zmm13_1 zmm1_1;
xor zmm13_2@uint32 zmm13_2 zmm1_2; xor zmm13_3@uint32 zmm13_3 zmm1_3;
xor zmm13_4@uint32 zmm13_4 zmm1_4; xor zmm13_5@uint32 zmm13_5 zmm1_5;
xor zmm13_6@uint32 zmm13_6 zmm1_6; xor zmm13_7@uint32 zmm13_7 zmm1_7;
xor zmm13_8@uint32 zmm13_8 zmm1_8; xor zmm13_9@uint32 zmm13_9 zmm1_9;
xor zmm13_a@uint32 zmm13_a zmm1_a; xor zmm13_b@uint32 zmm13_b zmm1_b;
xor zmm13_c@uint32 zmm13_c zmm1_c; xor zmm13_d@uint32 zmm13_d zmm1_d;
xor zmm13_e@uint32 zmm13_e zmm1_e; xor zmm13_f@uint32 zmm13_f zmm1_f;
(* vpxord %zmm2,%zmm14,%zmm14                      #! PC = 0x555555558184 *)
xor zmm14_0@uint32 zmm14_0 zmm2_0; xor zmm14_1@uint32 zmm14_1 zmm2_1;
xor zmm14_2@uint32 zmm14_2 zmm2_2; xor zmm14_3@uint32 zmm14_3 zmm2_3;
xor zmm14_4@uint32 zmm14_4 zmm2_4; xor zmm14_5@uint32 zmm14_5 zmm2_5;
xor zmm14_6@uint32 zmm14_6 zmm2_6; xor zmm14_7@uint32 zmm14_7 zmm2_7;
xor zmm14_8@uint32 zmm14_8 zmm2_8; xor zmm14_9@uint32 zmm14_9 zmm2_9;
xor zmm14_a@uint32 zmm14_a zmm2_a; xor zmm14_b@uint32 zmm14_b zmm2_b;
xor zmm14_c@uint32 zmm14_c zmm2_c; xor zmm14_d@uint32 zmm14_d zmm2_d;
xor zmm14_e@uint32 zmm14_e zmm2_e; xor zmm14_f@uint32 zmm14_f zmm2_f;
(* vpxord %zmm3,%zmm15,%zmm15                      #! PC = 0x55555555818a *)
xor zmm15_0@uint32 zmm15_0 zmm3_0; xor zmm15_1@uint32 zmm15_1 zmm3_1;
xor zmm15_2@uint32 zmm15_2 zmm3_2; xor zmm15_3@uint32 zmm15_3 zmm3_3;
xor zmm15_4@uint32 zmm15_4 zmm3_4; xor zmm15_5@uint32 zmm15_5 zmm3_5;
xor zmm15_6@uint32 zmm15_6 zmm3_6; xor zmm15_7@uint32 zmm15_7 zmm3_7;
xor zmm15_8@uint32 zmm15_8 zmm3_8; xor zmm15_9@uint32 zmm15_9 zmm3_9;
xor zmm15_a@uint32 zmm15_a zmm3_a; xor zmm15_b@uint32 zmm15_b zmm3_b;
xor zmm15_c@uint32 zmm15_c zmm3_c; xor zmm15_d@uint32 zmm15_d zmm3_d;
xor zmm15_e@uint32 zmm15_e zmm3_e; xor zmm15_f@uint32 zmm15_f zmm3_f;
(* vprold $0x10,%zmm12,%zmm12                      #! PC = 0x555555558190 *)
rol zmm12_0@uint32 zmm12_0 0x10; rol zmm12_1@uint32 zmm12_1 0x10;
rol zmm12_2@uint32 zmm12_2 0x10; rol zmm12_3@uint32 zmm12_3 0x10;
rol zmm12_4@uint32 zmm12_4 0x10; rol zmm12_5@uint32 zmm12_5 0x10;
rol zmm12_6@uint32 zmm12_6 0x10; rol zmm12_7@uint32 zmm12_7 0x10;
rol zmm12_8@uint32 zmm12_8 0x10; rol zmm12_9@uint32 zmm12_9 0x10;
rol zmm12_a@uint32 zmm12_a 0x10; rol zmm12_b@uint32 zmm12_b 0x10;
rol zmm12_c@uint32 zmm12_c 0x10; rol zmm12_d@uint32 zmm12_d 0x10;
rol zmm12_e@uint32 zmm12_e 0x10; rol zmm12_f@uint32 zmm12_f 0x10;
(* vprold $0x10,%zmm13,%zmm13                      #! PC = 0x555555558197 *)
rol zmm13_0@uint32 zmm13_0 0x10; rol zmm13_1@uint32 zmm13_1 0x10;
rol zmm13_2@uint32 zmm13_2 0x10; rol zmm13_3@uint32 zmm13_3 0x10;
rol zmm13_4@uint32 zmm13_4 0x10; rol zmm13_5@uint32 zmm13_5 0x10;
rol zmm13_6@uint32 zmm13_6 0x10; rol zmm13_7@uint32 zmm13_7 0x10;
rol zmm13_8@uint32 zmm13_8 0x10; rol zmm13_9@uint32 zmm13_9 0x10;
rol zmm13_a@uint32 zmm13_a 0x10; rol zmm13_b@uint32 zmm13_b 0x10;
rol zmm13_c@uint32 zmm13_c 0x10; rol zmm13_d@uint32 zmm13_d 0x10;
rol zmm13_e@uint32 zmm13_e 0x10; rol zmm13_f@uint32 zmm13_f 0x10;
(* vprold $0x10,%zmm14,%zmm14                      #! PC = 0x55555555819e *)
rol zmm14_0@uint32 zmm14_0 0x10; rol zmm14_1@uint32 zmm14_1 0x10;
rol zmm14_2@uint32 zmm14_2 0x10; rol zmm14_3@uint32 zmm14_3 0x10;
rol zmm14_4@uint32 zmm14_4 0x10; rol zmm14_5@uint32 zmm14_5 0x10;
rol zmm14_6@uint32 zmm14_6 0x10; rol zmm14_7@uint32 zmm14_7 0x10;
rol zmm14_8@uint32 zmm14_8 0x10; rol zmm14_9@uint32 zmm14_9 0x10;
rol zmm14_a@uint32 zmm14_a 0x10; rol zmm14_b@uint32 zmm14_b 0x10;
rol zmm14_c@uint32 zmm14_c 0x10; rol zmm14_d@uint32 zmm14_d 0x10;
rol zmm14_e@uint32 zmm14_e 0x10; rol zmm14_f@uint32 zmm14_f 0x10;
(* vprold $0x10,%zmm15,%zmm15                      #! PC = 0x5555555581a5 *)
rol zmm15_0@uint32 zmm15_0 0x10; rol zmm15_1@uint32 zmm15_1 0x10;
rol zmm15_2@uint32 zmm15_2 0x10; rol zmm15_3@uint32 zmm15_3 0x10;
rol zmm15_4@uint32 zmm15_4 0x10; rol zmm15_5@uint32 zmm15_5 0x10;
rol zmm15_6@uint32 zmm15_6 0x10; rol zmm15_7@uint32 zmm15_7 0x10;
rol zmm15_8@uint32 zmm15_8 0x10; rol zmm15_9@uint32 zmm15_9 0x10;
rol zmm15_a@uint32 zmm15_a 0x10; rol zmm15_b@uint32 zmm15_b 0x10;
rol zmm15_c@uint32 zmm15_c 0x10; rol zmm15_d@uint32 zmm15_d 0x10;
rol zmm15_e@uint32 zmm15_e 0x10; rol zmm15_f@uint32 zmm15_f 0x10;
(* vpaddd %zmm12,%zmm8,%zmm8                       #! PC = 0x5555555581ac *)
adds dc zmm8_0 zmm8_0 zmm12_0; adds dc zmm8_1 zmm8_1 zmm12_1;
adds dc zmm8_2 zmm8_2 zmm12_2; adds dc zmm8_3 zmm8_3 zmm12_3;
adds dc zmm8_4 zmm8_4 zmm12_4; adds dc zmm8_5 zmm8_5 zmm12_5;
adds dc zmm8_6 zmm8_6 zmm12_6; adds dc zmm8_7 zmm8_7 zmm12_7;
adds dc zmm8_8 zmm8_8 zmm12_8; adds dc zmm8_9 zmm8_9 zmm12_9;
adds dc zmm8_a zmm8_a zmm12_a; adds dc zmm8_b zmm8_b zmm12_b;
adds dc zmm8_c zmm8_c zmm12_c; adds dc zmm8_d zmm8_d zmm12_d;
adds dc zmm8_e zmm8_e zmm12_e; adds dc zmm8_f zmm8_f zmm12_f;
(* vpaddd %zmm13,%zmm9,%zmm9                       #! PC = 0x5555555581b2 *)
adds dc zmm9_0 zmm9_0 zmm13_0; adds dc zmm9_1 zmm9_1 zmm13_1;
adds dc zmm9_2 zmm9_2 zmm13_2; adds dc zmm9_3 zmm9_3 zmm13_3;
adds dc zmm9_4 zmm9_4 zmm13_4; adds dc zmm9_5 zmm9_5 zmm13_5;
adds dc zmm9_6 zmm9_6 zmm13_6; adds dc zmm9_7 zmm9_7 zmm13_7;
adds dc zmm9_8 zmm9_8 zmm13_8; adds dc zmm9_9 zmm9_9 zmm13_9;
adds dc zmm9_a zmm9_a zmm13_a; adds dc zmm9_b zmm9_b zmm13_b;
adds dc zmm9_c zmm9_c zmm13_c; adds dc zmm9_d zmm9_d zmm13_d;
adds dc zmm9_e zmm9_e zmm13_e; adds dc zmm9_f zmm9_f zmm13_f;
(* vpaddd %zmm14,%zmm10,%zmm10                     #! PC = 0x5555555581b8 *)
adds dc zmm10_0 zmm10_0 zmm14_0; adds dc zmm10_1 zmm10_1 zmm14_1;
adds dc zmm10_2 zmm10_2 zmm14_2; adds dc zmm10_3 zmm10_3 zmm14_3;
adds dc zmm10_4 zmm10_4 zmm14_4; adds dc zmm10_5 zmm10_5 zmm14_5;
adds dc zmm10_6 zmm10_6 zmm14_6; adds dc zmm10_7 zmm10_7 zmm14_7;
adds dc zmm10_8 zmm10_8 zmm14_8; adds dc zmm10_9 zmm10_9 zmm14_9;
adds dc zmm10_a zmm10_a zmm14_a; adds dc zmm10_b zmm10_b zmm14_b;
adds dc zmm10_c zmm10_c zmm14_c; adds dc zmm10_d zmm10_d zmm14_d;
adds dc zmm10_e zmm10_e zmm14_e; adds dc zmm10_f zmm10_f zmm14_f;
(* vpaddd %zmm15,%zmm11,%zmm11                     #! PC = 0x5555555581be *)
adds dc zmm11_0 zmm11_0 zmm15_0; adds dc zmm11_1 zmm11_1 zmm15_1;
adds dc zmm11_2 zmm11_2 zmm15_2; adds dc zmm11_3 zmm11_3 zmm15_3;
adds dc zmm11_4 zmm11_4 zmm15_4; adds dc zmm11_5 zmm11_5 zmm15_5;
adds dc zmm11_6 zmm11_6 zmm15_6; adds dc zmm11_7 zmm11_7 zmm15_7;
adds dc zmm11_8 zmm11_8 zmm15_8; adds dc zmm11_9 zmm11_9 zmm15_9;
adds dc zmm11_a zmm11_a zmm15_a; adds dc zmm11_b zmm11_b zmm15_b;
adds dc zmm11_c zmm11_c zmm15_c; adds dc zmm11_d zmm11_d zmm15_d;
adds dc zmm11_e zmm11_e zmm15_e; adds dc zmm11_f zmm11_f zmm15_f;
(* vpxord %zmm8,%zmm4,%zmm4                        #! PC = 0x5555555581c4 *)
xor zmm4_0@uint32 zmm4_0 zmm8_0; xor zmm4_1@uint32 zmm4_1 zmm8_1;
xor zmm4_2@uint32 zmm4_2 zmm8_2; xor zmm4_3@uint32 zmm4_3 zmm8_3;
xor zmm4_4@uint32 zmm4_4 zmm8_4; xor zmm4_5@uint32 zmm4_5 zmm8_5;
xor zmm4_6@uint32 zmm4_6 zmm8_6; xor zmm4_7@uint32 zmm4_7 zmm8_7;
xor zmm4_8@uint32 zmm4_8 zmm8_8; xor zmm4_9@uint32 zmm4_9 zmm8_9;
xor zmm4_a@uint32 zmm4_a zmm8_a; xor zmm4_b@uint32 zmm4_b zmm8_b;
xor zmm4_c@uint32 zmm4_c zmm8_c; xor zmm4_d@uint32 zmm4_d zmm8_d;
xor zmm4_e@uint32 zmm4_e zmm8_e; xor zmm4_f@uint32 zmm4_f zmm8_f;
(* vpxord %zmm9,%zmm5,%zmm5                        #! PC = 0x5555555581ca *)
xor zmm5_0@uint32 zmm5_0 zmm9_0; xor zmm5_1@uint32 zmm5_1 zmm9_1;
xor zmm5_2@uint32 zmm5_2 zmm9_2; xor zmm5_3@uint32 zmm5_3 zmm9_3;
xor zmm5_4@uint32 zmm5_4 zmm9_4; xor zmm5_5@uint32 zmm5_5 zmm9_5;
xor zmm5_6@uint32 zmm5_6 zmm9_6; xor zmm5_7@uint32 zmm5_7 zmm9_7;
xor zmm5_8@uint32 zmm5_8 zmm9_8; xor zmm5_9@uint32 zmm5_9 zmm9_9;
xor zmm5_a@uint32 zmm5_a zmm9_a; xor zmm5_b@uint32 zmm5_b zmm9_b;
xor zmm5_c@uint32 zmm5_c zmm9_c; xor zmm5_d@uint32 zmm5_d zmm9_d;
xor zmm5_e@uint32 zmm5_e zmm9_e; xor zmm5_f@uint32 zmm5_f zmm9_f;
(* vpxord %zmm10,%zmm6,%zmm6                       #! PC = 0x5555555581d0 *)
xor zmm6_0@uint32 zmm6_0 zmm10_0; xor zmm6_1@uint32 zmm6_1 zmm10_1;
xor zmm6_2@uint32 zmm6_2 zmm10_2; xor zmm6_3@uint32 zmm6_3 zmm10_3;
xor zmm6_4@uint32 zmm6_4 zmm10_4; xor zmm6_5@uint32 zmm6_5 zmm10_5;
xor zmm6_6@uint32 zmm6_6 zmm10_6; xor zmm6_7@uint32 zmm6_7 zmm10_7;
xor zmm6_8@uint32 zmm6_8 zmm10_8; xor zmm6_9@uint32 zmm6_9 zmm10_9;
xor zmm6_a@uint32 zmm6_a zmm10_a; xor zmm6_b@uint32 zmm6_b zmm10_b;
xor zmm6_c@uint32 zmm6_c zmm10_c; xor zmm6_d@uint32 zmm6_d zmm10_d;
xor zmm6_e@uint32 zmm6_e zmm10_e; xor zmm6_f@uint32 zmm6_f zmm10_f;
(* vpxord %zmm11,%zmm7,%zmm7                       #! PC = 0x5555555581d6 *)
xor zmm7_0@uint32 zmm7_0 zmm11_0; xor zmm7_1@uint32 zmm7_1 zmm11_1;
xor zmm7_2@uint32 zmm7_2 zmm11_2; xor zmm7_3@uint32 zmm7_3 zmm11_3;
xor zmm7_4@uint32 zmm7_4 zmm11_4; xor zmm7_5@uint32 zmm7_5 zmm11_5;
xor zmm7_6@uint32 zmm7_6 zmm11_6; xor zmm7_7@uint32 zmm7_7 zmm11_7;
xor zmm7_8@uint32 zmm7_8 zmm11_8; xor zmm7_9@uint32 zmm7_9 zmm11_9;
xor zmm7_a@uint32 zmm7_a zmm11_a; xor zmm7_b@uint32 zmm7_b zmm11_b;
xor zmm7_c@uint32 zmm7_c zmm11_c; xor zmm7_d@uint32 zmm7_d zmm11_d;
xor zmm7_e@uint32 zmm7_e zmm11_e; xor zmm7_f@uint32 zmm7_f zmm11_f;
(* vprold $0xc,%zmm4,%zmm4                         #! PC = 0x5555555581dc *)
rol zmm4_0@uint32 zmm4_0 0xc; rol zmm4_1@uint32 zmm4_1 0xc;
rol zmm4_2@uint32 zmm4_2 0xc; rol zmm4_3@uint32 zmm4_3 0xc;
rol zmm4_4@uint32 zmm4_4 0xc; rol zmm4_5@uint32 zmm4_5 0xc;
rol zmm4_6@uint32 zmm4_6 0xc; rol zmm4_7@uint32 zmm4_7 0xc;
rol zmm4_8@uint32 zmm4_8 0xc; rol zmm4_9@uint32 zmm4_9 0xc;
rol zmm4_a@uint32 zmm4_a 0xc; rol zmm4_b@uint32 zmm4_b 0xc;
rol zmm4_c@uint32 zmm4_c 0xc; rol zmm4_d@uint32 zmm4_d 0xc;
rol zmm4_e@uint32 zmm4_e 0xc; rol zmm4_f@uint32 zmm4_f 0xc;
(* vprold $0xc,%zmm5,%zmm5                         #! PC = 0x5555555581e3 *)
rol zmm5_0@uint32 zmm5_0 0xc; rol zmm5_1@uint32 zmm5_1 0xc;
rol zmm5_2@uint32 zmm5_2 0xc; rol zmm5_3@uint32 zmm5_3 0xc;
rol zmm5_4@uint32 zmm5_4 0xc; rol zmm5_5@uint32 zmm5_5 0xc;
rol zmm5_6@uint32 zmm5_6 0xc; rol zmm5_7@uint32 zmm5_7 0xc;
rol zmm5_8@uint32 zmm5_8 0xc; rol zmm5_9@uint32 zmm5_9 0xc;
rol zmm5_a@uint32 zmm5_a 0xc; rol zmm5_b@uint32 zmm5_b 0xc;
rol zmm5_c@uint32 zmm5_c 0xc; rol zmm5_d@uint32 zmm5_d 0xc;
rol zmm5_e@uint32 zmm5_e 0xc; rol zmm5_f@uint32 zmm5_f 0xc;
(* vprold $0xc,%zmm6,%zmm6                         #! PC = 0x5555555581ea *)
rol zmm6_0@uint32 zmm6_0 0xc; rol zmm6_1@uint32 zmm6_1 0xc;
rol zmm6_2@uint32 zmm6_2 0xc; rol zmm6_3@uint32 zmm6_3 0xc;
rol zmm6_4@uint32 zmm6_4 0xc; rol zmm6_5@uint32 zmm6_5 0xc;
rol zmm6_6@uint32 zmm6_6 0xc; rol zmm6_7@uint32 zmm6_7 0xc;
rol zmm6_8@uint32 zmm6_8 0xc; rol zmm6_9@uint32 zmm6_9 0xc;
rol zmm6_a@uint32 zmm6_a 0xc; rol zmm6_b@uint32 zmm6_b 0xc;
rol zmm6_c@uint32 zmm6_c 0xc; rol zmm6_d@uint32 zmm6_d 0xc;
rol zmm6_e@uint32 zmm6_e 0xc; rol zmm6_f@uint32 zmm6_f 0xc;
(* vprold $0xc,%zmm7,%zmm7                         #! PC = 0x5555555581f1 *)
rol zmm7_0@uint32 zmm7_0 0xc; rol zmm7_1@uint32 zmm7_1 0xc;
rol zmm7_2@uint32 zmm7_2 0xc; rol zmm7_3@uint32 zmm7_3 0xc;
rol zmm7_4@uint32 zmm7_4 0xc; rol zmm7_5@uint32 zmm7_5 0xc;
rol zmm7_6@uint32 zmm7_6 0xc; rol zmm7_7@uint32 zmm7_7 0xc;
rol zmm7_8@uint32 zmm7_8 0xc; rol zmm7_9@uint32 zmm7_9 0xc;
rol zmm7_a@uint32 zmm7_a 0xc; rol zmm7_b@uint32 zmm7_b 0xc;
rol zmm7_c@uint32 zmm7_c 0xc; rol zmm7_d@uint32 zmm7_d 0xc;
rol zmm7_e@uint32 zmm7_e 0xc; rol zmm7_f@uint32 zmm7_f 0xc;
(* vpaddd %zmm4,%zmm0,%zmm0                        #! PC = 0x5555555581f8 *)
adds dc zmm0_0 zmm0_0 zmm4_0; adds dc zmm0_1 zmm0_1 zmm4_1;
adds dc zmm0_2 zmm0_2 zmm4_2; adds dc zmm0_3 zmm0_3 zmm4_3;
adds dc zmm0_4 zmm0_4 zmm4_4; adds dc zmm0_5 zmm0_5 zmm4_5;
adds dc zmm0_6 zmm0_6 zmm4_6; adds dc zmm0_7 zmm0_7 zmm4_7;
adds dc zmm0_8 zmm0_8 zmm4_8; adds dc zmm0_9 zmm0_9 zmm4_9;
adds dc zmm0_a zmm0_a zmm4_a; adds dc zmm0_b zmm0_b zmm4_b;
adds dc zmm0_c zmm0_c zmm4_c; adds dc zmm0_d zmm0_d zmm4_d;
adds dc zmm0_e zmm0_e zmm4_e; adds dc zmm0_f zmm0_f zmm4_f;
(* vpaddd %zmm5,%zmm1,%zmm1                        #! PC = 0x5555555581fe *)
adds dc zmm1_0 zmm1_0 zmm5_0; adds dc zmm1_1 zmm1_1 zmm5_1;
adds dc zmm1_2 zmm1_2 zmm5_2; adds dc zmm1_3 zmm1_3 zmm5_3;
adds dc zmm1_4 zmm1_4 zmm5_4; adds dc zmm1_5 zmm1_5 zmm5_5;
adds dc zmm1_6 zmm1_6 zmm5_6; adds dc zmm1_7 zmm1_7 zmm5_7;
adds dc zmm1_8 zmm1_8 zmm5_8; adds dc zmm1_9 zmm1_9 zmm5_9;
adds dc zmm1_a zmm1_a zmm5_a; adds dc zmm1_b zmm1_b zmm5_b;
adds dc zmm1_c zmm1_c zmm5_c; adds dc zmm1_d zmm1_d zmm5_d;
adds dc zmm1_e zmm1_e zmm5_e; adds dc zmm1_f zmm1_f zmm5_f;
(* vpaddd %zmm6,%zmm2,%zmm2                        #! PC = 0x555555558204 *)
adds dc zmm2_0 zmm2_0 zmm6_0; adds dc zmm2_1 zmm2_1 zmm6_1;
adds dc zmm2_2 zmm2_2 zmm6_2; adds dc zmm2_3 zmm2_3 zmm6_3;
adds dc zmm2_4 zmm2_4 zmm6_4; adds dc zmm2_5 zmm2_5 zmm6_5;
adds dc zmm2_6 zmm2_6 zmm6_6; adds dc zmm2_7 zmm2_7 zmm6_7;
adds dc zmm2_8 zmm2_8 zmm6_8; adds dc zmm2_9 zmm2_9 zmm6_9;
adds dc zmm2_a zmm2_a zmm6_a; adds dc zmm2_b zmm2_b zmm6_b;
adds dc zmm2_c zmm2_c zmm6_c; adds dc zmm2_d zmm2_d zmm6_d;
adds dc zmm2_e zmm2_e zmm6_e; adds dc zmm2_f zmm2_f zmm6_f;
(* vpaddd %zmm7,%zmm3,%zmm3                        #! PC = 0x55555555820a *)
adds dc zmm3_0 zmm3_0 zmm7_0; adds dc zmm3_1 zmm3_1 zmm7_1;
adds dc zmm3_2 zmm3_2 zmm7_2; adds dc zmm3_3 zmm3_3 zmm7_3;
adds dc zmm3_4 zmm3_4 zmm7_4; adds dc zmm3_5 zmm3_5 zmm7_5;
adds dc zmm3_6 zmm3_6 zmm7_6; adds dc zmm3_7 zmm3_7 zmm7_7;
adds dc zmm3_8 zmm3_8 zmm7_8; adds dc zmm3_9 zmm3_9 zmm7_9;
adds dc zmm3_a zmm3_a zmm7_a; adds dc zmm3_b zmm3_b zmm7_b;
adds dc zmm3_c zmm3_c zmm7_c; adds dc zmm3_d zmm3_d zmm7_d;
adds dc zmm3_e zmm3_e zmm7_e; adds dc zmm3_f zmm3_f zmm7_f;
(* vpxord %zmm0,%zmm12,%zmm12                      #! PC = 0x555555558210 *)
xor zmm12_0@uint32 zmm12_0 zmm0_0; xor zmm12_1@uint32 zmm12_1 zmm0_1;
xor zmm12_2@uint32 zmm12_2 zmm0_2; xor zmm12_3@uint32 zmm12_3 zmm0_3;
xor zmm12_4@uint32 zmm12_4 zmm0_4; xor zmm12_5@uint32 zmm12_5 zmm0_5;
xor zmm12_6@uint32 zmm12_6 zmm0_6; xor zmm12_7@uint32 zmm12_7 zmm0_7;
xor zmm12_8@uint32 zmm12_8 zmm0_8; xor zmm12_9@uint32 zmm12_9 zmm0_9;
xor zmm12_a@uint32 zmm12_a zmm0_a; xor zmm12_b@uint32 zmm12_b zmm0_b;
xor zmm12_c@uint32 zmm12_c zmm0_c; xor zmm12_d@uint32 zmm12_d zmm0_d;
xor zmm12_e@uint32 zmm12_e zmm0_e; xor zmm12_f@uint32 zmm12_f zmm0_f;
(* vpxord %zmm1,%zmm13,%zmm13                      #! PC = 0x555555558216 *)
xor zmm13_0@uint32 zmm13_0 zmm1_0; xor zmm13_1@uint32 zmm13_1 zmm1_1;
xor zmm13_2@uint32 zmm13_2 zmm1_2; xor zmm13_3@uint32 zmm13_3 zmm1_3;
xor zmm13_4@uint32 zmm13_4 zmm1_4; xor zmm13_5@uint32 zmm13_5 zmm1_5;
xor zmm13_6@uint32 zmm13_6 zmm1_6; xor zmm13_7@uint32 zmm13_7 zmm1_7;
xor zmm13_8@uint32 zmm13_8 zmm1_8; xor zmm13_9@uint32 zmm13_9 zmm1_9;
xor zmm13_a@uint32 zmm13_a zmm1_a; xor zmm13_b@uint32 zmm13_b zmm1_b;
xor zmm13_c@uint32 zmm13_c zmm1_c; xor zmm13_d@uint32 zmm13_d zmm1_d;
xor zmm13_e@uint32 zmm13_e zmm1_e; xor zmm13_f@uint32 zmm13_f zmm1_f;
(* vpxord %zmm2,%zmm14,%zmm14                      #! PC = 0x55555555821c *)
xor zmm14_0@uint32 zmm14_0 zmm2_0; xor zmm14_1@uint32 zmm14_1 zmm2_1;
xor zmm14_2@uint32 zmm14_2 zmm2_2; xor zmm14_3@uint32 zmm14_3 zmm2_3;
xor zmm14_4@uint32 zmm14_4 zmm2_4; xor zmm14_5@uint32 zmm14_5 zmm2_5;
xor zmm14_6@uint32 zmm14_6 zmm2_6; xor zmm14_7@uint32 zmm14_7 zmm2_7;
xor zmm14_8@uint32 zmm14_8 zmm2_8; xor zmm14_9@uint32 zmm14_9 zmm2_9;
xor zmm14_a@uint32 zmm14_a zmm2_a; xor zmm14_b@uint32 zmm14_b zmm2_b;
xor zmm14_c@uint32 zmm14_c zmm2_c; xor zmm14_d@uint32 zmm14_d zmm2_d;
xor zmm14_e@uint32 zmm14_e zmm2_e; xor zmm14_f@uint32 zmm14_f zmm2_f;
(* vpxord %zmm3,%zmm15,%zmm15                      #! PC = 0x555555558222 *)
xor zmm15_0@uint32 zmm15_0 zmm3_0; xor zmm15_1@uint32 zmm15_1 zmm3_1;
xor zmm15_2@uint32 zmm15_2 zmm3_2; xor zmm15_3@uint32 zmm15_3 zmm3_3;
xor zmm15_4@uint32 zmm15_4 zmm3_4; xor zmm15_5@uint32 zmm15_5 zmm3_5;
xor zmm15_6@uint32 zmm15_6 zmm3_6; xor zmm15_7@uint32 zmm15_7 zmm3_7;
xor zmm15_8@uint32 zmm15_8 zmm3_8; xor zmm15_9@uint32 zmm15_9 zmm3_9;
xor zmm15_a@uint32 zmm15_a zmm3_a; xor zmm15_b@uint32 zmm15_b zmm3_b;
xor zmm15_c@uint32 zmm15_c zmm3_c; xor zmm15_d@uint32 zmm15_d zmm3_d;
xor zmm15_e@uint32 zmm15_e zmm3_e; xor zmm15_f@uint32 zmm15_f zmm3_f;
(* vprold $0x8,%zmm12,%zmm12                       #! PC = 0x555555558228 *)
rol zmm12_0@uint32 zmm12_0 0x8; rol zmm12_1@uint32 zmm12_1 0x8;
rol zmm12_2@uint32 zmm12_2 0x8; rol zmm12_3@uint32 zmm12_3 0x8;
rol zmm12_4@uint32 zmm12_4 0x8; rol zmm12_5@uint32 zmm12_5 0x8;
rol zmm12_6@uint32 zmm12_6 0x8; rol zmm12_7@uint32 zmm12_7 0x8;
rol zmm12_8@uint32 zmm12_8 0x8; rol zmm12_9@uint32 zmm12_9 0x8;
rol zmm12_a@uint32 zmm12_a 0x8; rol zmm12_b@uint32 zmm12_b 0x8;
rol zmm12_c@uint32 zmm12_c 0x8; rol zmm12_d@uint32 zmm12_d 0x8;
rol zmm12_e@uint32 zmm12_e 0x8; rol zmm12_f@uint32 zmm12_f 0x8;
(* vprold $0x8,%zmm13,%zmm13                       #! PC = 0x55555555822f *)
rol zmm13_0@uint32 zmm13_0 0x8; rol zmm13_1@uint32 zmm13_1 0x8;
rol zmm13_2@uint32 zmm13_2 0x8; rol zmm13_3@uint32 zmm13_3 0x8;
rol zmm13_4@uint32 zmm13_4 0x8; rol zmm13_5@uint32 zmm13_5 0x8;
rol zmm13_6@uint32 zmm13_6 0x8; rol zmm13_7@uint32 zmm13_7 0x8;
rol zmm13_8@uint32 zmm13_8 0x8; rol zmm13_9@uint32 zmm13_9 0x8;
rol zmm13_a@uint32 zmm13_a 0x8; rol zmm13_b@uint32 zmm13_b 0x8;
rol zmm13_c@uint32 zmm13_c 0x8; rol zmm13_d@uint32 zmm13_d 0x8;
rol zmm13_e@uint32 zmm13_e 0x8; rol zmm13_f@uint32 zmm13_f 0x8;
(* vprold $0x8,%zmm14,%zmm14                       #! PC = 0x555555558236 *)
rol zmm14_0@uint32 zmm14_0 0x8; rol zmm14_1@uint32 zmm14_1 0x8;
rol zmm14_2@uint32 zmm14_2 0x8; rol zmm14_3@uint32 zmm14_3 0x8;
rol zmm14_4@uint32 zmm14_4 0x8; rol zmm14_5@uint32 zmm14_5 0x8;
rol zmm14_6@uint32 zmm14_6 0x8; rol zmm14_7@uint32 zmm14_7 0x8;
rol zmm14_8@uint32 zmm14_8 0x8; rol zmm14_9@uint32 zmm14_9 0x8;
rol zmm14_a@uint32 zmm14_a 0x8; rol zmm14_b@uint32 zmm14_b 0x8;
rol zmm14_c@uint32 zmm14_c 0x8; rol zmm14_d@uint32 zmm14_d 0x8;
rol zmm14_e@uint32 zmm14_e 0x8; rol zmm14_f@uint32 zmm14_f 0x8;
(* vprold $0x8,%zmm15,%zmm15                       #! PC = 0x55555555823d *)
rol zmm15_0@uint32 zmm15_0 0x8; rol zmm15_1@uint32 zmm15_1 0x8;
rol zmm15_2@uint32 zmm15_2 0x8; rol zmm15_3@uint32 zmm15_3 0x8;
rol zmm15_4@uint32 zmm15_4 0x8; rol zmm15_5@uint32 zmm15_5 0x8;
rol zmm15_6@uint32 zmm15_6 0x8; rol zmm15_7@uint32 zmm15_7 0x8;
rol zmm15_8@uint32 zmm15_8 0x8; rol zmm15_9@uint32 zmm15_9 0x8;
rol zmm15_a@uint32 zmm15_a 0x8; rol zmm15_b@uint32 zmm15_b 0x8;
rol zmm15_c@uint32 zmm15_c 0x8; rol zmm15_d@uint32 zmm15_d 0x8;
rol zmm15_e@uint32 zmm15_e 0x8; rol zmm15_f@uint32 zmm15_f 0x8;
(* vpaddd %zmm12,%zmm8,%zmm8                       #! PC = 0x555555558244 *)
adds dc zmm8_0 zmm8_0 zmm12_0; adds dc zmm8_1 zmm8_1 zmm12_1;
adds dc zmm8_2 zmm8_2 zmm12_2; adds dc zmm8_3 zmm8_3 zmm12_3;
adds dc zmm8_4 zmm8_4 zmm12_4; adds dc zmm8_5 zmm8_5 zmm12_5;
adds dc zmm8_6 zmm8_6 zmm12_6; adds dc zmm8_7 zmm8_7 zmm12_7;
adds dc zmm8_8 zmm8_8 zmm12_8; adds dc zmm8_9 zmm8_9 zmm12_9;
adds dc zmm8_a zmm8_a zmm12_a; adds dc zmm8_b zmm8_b zmm12_b;
adds dc zmm8_c zmm8_c zmm12_c; adds dc zmm8_d zmm8_d zmm12_d;
adds dc zmm8_e zmm8_e zmm12_e; adds dc zmm8_f zmm8_f zmm12_f;
(* vpaddd %zmm13,%zmm9,%zmm9                       #! PC = 0x55555555824a *)
adds dc zmm9_0 zmm9_0 zmm13_0; adds dc zmm9_1 zmm9_1 zmm13_1;
adds dc zmm9_2 zmm9_2 zmm13_2; adds dc zmm9_3 zmm9_3 zmm13_3;
adds dc zmm9_4 zmm9_4 zmm13_4; adds dc zmm9_5 zmm9_5 zmm13_5;
adds dc zmm9_6 zmm9_6 zmm13_6; adds dc zmm9_7 zmm9_7 zmm13_7;
adds dc zmm9_8 zmm9_8 zmm13_8; adds dc zmm9_9 zmm9_9 zmm13_9;
adds dc zmm9_a zmm9_a zmm13_a; adds dc zmm9_b zmm9_b zmm13_b;
adds dc zmm9_c zmm9_c zmm13_c; adds dc zmm9_d zmm9_d zmm13_d;
adds dc zmm9_e zmm9_e zmm13_e; adds dc zmm9_f zmm9_f zmm13_f;
(* vpaddd %zmm14,%zmm10,%zmm10                     #! PC = 0x555555558250 *)
adds dc zmm10_0 zmm10_0 zmm14_0; adds dc zmm10_1 zmm10_1 zmm14_1;
adds dc zmm10_2 zmm10_2 zmm14_2; adds dc zmm10_3 zmm10_3 zmm14_3;
adds dc zmm10_4 zmm10_4 zmm14_4; adds dc zmm10_5 zmm10_5 zmm14_5;
adds dc zmm10_6 zmm10_6 zmm14_6; adds dc zmm10_7 zmm10_7 zmm14_7;
adds dc zmm10_8 zmm10_8 zmm14_8; adds dc zmm10_9 zmm10_9 zmm14_9;
adds dc zmm10_a zmm10_a zmm14_a; adds dc zmm10_b zmm10_b zmm14_b;
adds dc zmm10_c zmm10_c zmm14_c; adds dc zmm10_d zmm10_d zmm14_d;
adds dc zmm10_e zmm10_e zmm14_e; adds dc zmm10_f zmm10_f zmm14_f;
(* vpaddd %zmm15,%zmm11,%zmm11                     #! PC = 0x555555558256 *)
adds dc zmm11_0 zmm11_0 zmm15_0; adds dc zmm11_1 zmm11_1 zmm15_1;
adds dc zmm11_2 zmm11_2 zmm15_2; adds dc zmm11_3 zmm11_3 zmm15_3;
adds dc zmm11_4 zmm11_4 zmm15_4; adds dc zmm11_5 zmm11_5 zmm15_5;
adds dc zmm11_6 zmm11_6 zmm15_6; adds dc zmm11_7 zmm11_7 zmm15_7;
adds dc zmm11_8 zmm11_8 zmm15_8; adds dc zmm11_9 zmm11_9 zmm15_9;
adds dc zmm11_a zmm11_a zmm15_a; adds dc zmm11_b zmm11_b zmm15_b;
adds dc zmm11_c zmm11_c zmm15_c; adds dc zmm11_d zmm11_d zmm15_d;
adds dc zmm11_e zmm11_e zmm15_e; adds dc zmm11_f zmm11_f zmm15_f;
(* vpxord %zmm8,%zmm4,%zmm4                        #! PC = 0x55555555825c *)
xor zmm4_0@uint32 zmm4_0 zmm8_0; xor zmm4_1@uint32 zmm4_1 zmm8_1;
xor zmm4_2@uint32 zmm4_2 zmm8_2; xor zmm4_3@uint32 zmm4_3 zmm8_3;
xor zmm4_4@uint32 zmm4_4 zmm8_4; xor zmm4_5@uint32 zmm4_5 zmm8_5;
xor zmm4_6@uint32 zmm4_6 zmm8_6; xor zmm4_7@uint32 zmm4_7 zmm8_7;
xor zmm4_8@uint32 zmm4_8 zmm8_8; xor zmm4_9@uint32 zmm4_9 zmm8_9;
xor zmm4_a@uint32 zmm4_a zmm8_a; xor zmm4_b@uint32 zmm4_b zmm8_b;
xor zmm4_c@uint32 zmm4_c zmm8_c; xor zmm4_d@uint32 zmm4_d zmm8_d;
xor zmm4_e@uint32 zmm4_e zmm8_e; xor zmm4_f@uint32 zmm4_f zmm8_f;
(* vpxord %zmm9,%zmm5,%zmm5                        #! PC = 0x555555558262 *)
xor zmm5_0@uint32 zmm5_0 zmm9_0; xor zmm5_1@uint32 zmm5_1 zmm9_1;
xor zmm5_2@uint32 zmm5_2 zmm9_2; xor zmm5_3@uint32 zmm5_3 zmm9_3;
xor zmm5_4@uint32 zmm5_4 zmm9_4; xor zmm5_5@uint32 zmm5_5 zmm9_5;
xor zmm5_6@uint32 zmm5_6 zmm9_6; xor zmm5_7@uint32 zmm5_7 zmm9_7;
xor zmm5_8@uint32 zmm5_8 zmm9_8; xor zmm5_9@uint32 zmm5_9 zmm9_9;
xor zmm5_a@uint32 zmm5_a zmm9_a; xor zmm5_b@uint32 zmm5_b zmm9_b;
xor zmm5_c@uint32 zmm5_c zmm9_c; xor zmm5_d@uint32 zmm5_d zmm9_d;
xor zmm5_e@uint32 zmm5_e zmm9_e; xor zmm5_f@uint32 zmm5_f zmm9_f;
(* vpxord %zmm10,%zmm6,%zmm6                       #! PC = 0x555555558268 *)
xor zmm6_0@uint32 zmm6_0 zmm10_0; xor zmm6_1@uint32 zmm6_1 zmm10_1;
xor zmm6_2@uint32 zmm6_2 zmm10_2; xor zmm6_3@uint32 zmm6_3 zmm10_3;
xor zmm6_4@uint32 zmm6_4 zmm10_4; xor zmm6_5@uint32 zmm6_5 zmm10_5;
xor zmm6_6@uint32 zmm6_6 zmm10_6; xor zmm6_7@uint32 zmm6_7 zmm10_7;
xor zmm6_8@uint32 zmm6_8 zmm10_8; xor zmm6_9@uint32 zmm6_9 zmm10_9;
xor zmm6_a@uint32 zmm6_a zmm10_a; xor zmm6_b@uint32 zmm6_b zmm10_b;
xor zmm6_c@uint32 zmm6_c zmm10_c; xor zmm6_d@uint32 zmm6_d zmm10_d;
xor zmm6_e@uint32 zmm6_e zmm10_e; xor zmm6_f@uint32 zmm6_f zmm10_f;
(* vpxord %zmm11,%zmm7,%zmm7                       #! PC = 0x55555555826e *)
xor zmm7_0@uint32 zmm7_0 zmm11_0; xor zmm7_1@uint32 zmm7_1 zmm11_1;
xor zmm7_2@uint32 zmm7_2 zmm11_2; xor zmm7_3@uint32 zmm7_3 zmm11_3;
xor zmm7_4@uint32 zmm7_4 zmm11_4; xor zmm7_5@uint32 zmm7_5 zmm11_5;
xor zmm7_6@uint32 zmm7_6 zmm11_6; xor zmm7_7@uint32 zmm7_7 zmm11_7;
xor zmm7_8@uint32 zmm7_8 zmm11_8; xor zmm7_9@uint32 zmm7_9 zmm11_9;
xor zmm7_a@uint32 zmm7_a zmm11_a; xor zmm7_b@uint32 zmm7_b zmm11_b;
xor zmm7_c@uint32 zmm7_c zmm11_c; xor zmm7_d@uint32 zmm7_d zmm11_d;
xor zmm7_e@uint32 zmm7_e zmm11_e; xor zmm7_f@uint32 zmm7_f zmm11_f;
(* vprold $0x7,%zmm4,%zmm4                         #! PC = 0x555555558274 *)
rol zmm4_0@uint32 zmm4_0 0x7; rol zmm4_1@uint32 zmm4_1 0x7;
rol zmm4_2@uint32 zmm4_2 0x7; rol zmm4_3@uint32 zmm4_3 0x7;
rol zmm4_4@uint32 zmm4_4 0x7; rol zmm4_5@uint32 zmm4_5 0x7;
rol zmm4_6@uint32 zmm4_6 0x7; rol zmm4_7@uint32 zmm4_7 0x7;
rol zmm4_8@uint32 zmm4_8 0x7; rol zmm4_9@uint32 zmm4_9 0x7;
rol zmm4_a@uint32 zmm4_a 0x7; rol zmm4_b@uint32 zmm4_b 0x7;
rol zmm4_c@uint32 zmm4_c 0x7; rol zmm4_d@uint32 zmm4_d 0x7;
rol zmm4_e@uint32 zmm4_e 0x7; rol zmm4_f@uint32 zmm4_f 0x7;
(* vprold $0x7,%zmm5,%zmm5                         #! PC = 0x55555555827b *)
rol zmm5_0@uint32 zmm5_0 0x7; rol zmm5_1@uint32 zmm5_1 0x7;
rol zmm5_2@uint32 zmm5_2 0x7; rol zmm5_3@uint32 zmm5_3 0x7;
rol zmm5_4@uint32 zmm5_4 0x7; rol zmm5_5@uint32 zmm5_5 0x7;
rol zmm5_6@uint32 zmm5_6 0x7; rol zmm5_7@uint32 zmm5_7 0x7;
rol zmm5_8@uint32 zmm5_8 0x7; rol zmm5_9@uint32 zmm5_9 0x7;
rol zmm5_a@uint32 zmm5_a 0x7; rol zmm5_b@uint32 zmm5_b 0x7;
rol zmm5_c@uint32 zmm5_c 0x7; rol zmm5_d@uint32 zmm5_d 0x7;
rol zmm5_e@uint32 zmm5_e 0x7; rol zmm5_f@uint32 zmm5_f 0x7;
(* vprold $0x7,%zmm6,%zmm6                         #! PC = 0x555555558282 *)
rol zmm6_0@uint32 zmm6_0 0x7; rol zmm6_1@uint32 zmm6_1 0x7;
rol zmm6_2@uint32 zmm6_2 0x7; rol zmm6_3@uint32 zmm6_3 0x7;
rol zmm6_4@uint32 zmm6_4 0x7; rol zmm6_5@uint32 zmm6_5 0x7;
rol zmm6_6@uint32 zmm6_6 0x7; rol zmm6_7@uint32 zmm6_7 0x7;
rol zmm6_8@uint32 zmm6_8 0x7; rol zmm6_9@uint32 zmm6_9 0x7;
rol zmm6_a@uint32 zmm6_a 0x7; rol zmm6_b@uint32 zmm6_b 0x7;
rol zmm6_c@uint32 zmm6_c 0x7; rol zmm6_d@uint32 zmm6_d 0x7;
rol zmm6_e@uint32 zmm6_e 0x7; rol zmm6_f@uint32 zmm6_f 0x7;
(* vprold $0x7,%zmm7,%zmm7                         #! PC = 0x555555558289 *)
rol zmm7_0@uint32 zmm7_0 0x7; rol zmm7_1@uint32 zmm7_1 0x7;
rol zmm7_2@uint32 zmm7_2 0x7; rol zmm7_3@uint32 zmm7_3 0x7;
rol zmm7_4@uint32 zmm7_4 0x7; rol zmm7_5@uint32 zmm7_5 0x7;
rol zmm7_6@uint32 zmm7_6 0x7; rol zmm7_7@uint32 zmm7_7 0x7;
rol zmm7_8@uint32 zmm7_8 0x7; rol zmm7_9@uint32 zmm7_9 0x7;
rol zmm7_a@uint32 zmm7_a 0x7; rol zmm7_b@uint32 zmm7_b 0x7;
rol zmm7_c@uint32 zmm7_c 0x7; rol zmm7_d@uint32 zmm7_d 0x7;
rol zmm7_e@uint32 zmm7_e 0x7; rol zmm7_f@uint32 zmm7_f 0x7;
(* vpaddd %zmm5,%zmm0,%zmm0                        #! PC = 0x555555558290 *)
adds dc zmm0_0 zmm0_0 zmm5_0; adds dc zmm0_1 zmm0_1 zmm5_1;
adds dc zmm0_2 zmm0_2 zmm5_2; adds dc zmm0_3 zmm0_3 zmm5_3;
adds dc zmm0_4 zmm0_4 zmm5_4; adds dc zmm0_5 zmm0_5 zmm5_5;
adds dc zmm0_6 zmm0_6 zmm5_6; adds dc zmm0_7 zmm0_7 zmm5_7;
adds dc zmm0_8 zmm0_8 zmm5_8; adds dc zmm0_9 zmm0_9 zmm5_9;
adds dc zmm0_a zmm0_a zmm5_a; adds dc zmm0_b zmm0_b zmm5_b;
adds dc zmm0_c zmm0_c zmm5_c; adds dc zmm0_d zmm0_d zmm5_d;
adds dc zmm0_e zmm0_e zmm5_e; adds dc zmm0_f zmm0_f zmm5_f;
(* vpaddd %zmm6,%zmm1,%zmm1                        #! PC = 0x555555558296 *)
adds dc zmm1_0 zmm1_0 zmm6_0; adds dc zmm1_1 zmm1_1 zmm6_1;
adds dc zmm1_2 zmm1_2 zmm6_2; adds dc zmm1_3 zmm1_3 zmm6_3;
adds dc zmm1_4 zmm1_4 zmm6_4; adds dc zmm1_5 zmm1_5 zmm6_5;
adds dc zmm1_6 zmm1_6 zmm6_6; adds dc zmm1_7 zmm1_7 zmm6_7;
adds dc zmm1_8 zmm1_8 zmm6_8; adds dc zmm1_9 zmm1_9 zmm6_9;
adds dc zmm1_a zmm1_a zmm6_a; adds dc zmm1_b zmm1_b zmm6_b;
adds dc zmm1_c zmm1_c zmm6_c; adds dc zmm1_d zmm1_d zmm6_d;
adds dc zmm1_e zmm1_e zmm6_e; adds dc zmm1_f zmm1_f zmm6_f;
(* vpaddd %zmm7,%zmm2,%zmm2                        #! PC = 0x55555555829c *)
adds dc zmm2_0 zmm2_0 zmm7_0; adds dc zmm2_1 zmm2_1 zmm7_1;
adds dc zmm2_2 zmm2_2 zmm7_2; adds dc zmm2_3 zmm2_3 zmm7_3;
adds dc zmm2_4 zmm2_4 zmm7_4; adds dc zmm2_5 zmm2_5 zmm7_5;
adds dc zmm2_6 zmm2_6 zmm7_6; adds dc zmm2_7 zmm2_7 zmm7_7;
adds dc zmm2_8 zmm2_8 zmm7_8; adds dc zmm2_9 zmm2_9 zmm7_9;
adds dc zmm2_a zmm2_a zmm7_a; adds dc zmm2_b zmm2_b zmm7_b;
adds dc zmm2_c zmm2_c zmm7_c; adds dc zmm2_d zmm2_d zmm7_d;
adds dc zmm2_e zmm2_e zmm7_e; adds dc zmm2_f zmm2_f zmm7_f;
(* vpaddd %zmm4,%zmm3,%zmm3                        #! PC = 0x5555555582a2 *)
adds dc zmm3_0 zmm3_0 zmm4_0; adds dc zmm3_1 zmm3_1 zmm4_1;
adds dc zmm3_2 zmm3_2 zmm4_2; adds dc zmm3_3 zmm3_3 zmm4_3;
adds dc zmm3_4 zmm3_4 zmm4_4; adds dc zmm3_5 zmm3_5 zmm4_5;
adds dc zmm3_6 zmm3_6 zmm4_6; adds dc zmm3_7 zmm3_7 zmm4_7;
adds dc zmm3_8 zmm3_8 zmm4_8; adds dc zmm3_9 zmm3_9 zmm4_9;
adds dc zmm3_a zmm3_a zmm4_a; adds dc zmm3_b zmm3_b zmm4_b;
adds dc zmm3_c zmm3_c zmm4_c; adds dc zmm3_d zmm3_d zmm4_d;
adds dc zmm3_e zmm3_e zmm4_e; adds dc zmm3_f zmm3_f zmm4_f;
(* vpxord %zmm0,%zmm15,%zmm15                      #! PC = 0x5555555582a8 *)
xor zmm15_0@uint32 zmm15_0 zmm0_0; xor zmm15_1@uint32 zmm15_1 zmm0_1;
xor zmm15_2@uint32 zmm15_2 zmm0_2; xor zmm15_3@uint32 zmm15_3 zmm0_3;
xor zmm15_4@uint32 zmm15_4 zmm0_4; xor zmm15_5@uint32 zmm15_5 zmm0_5;
xor zmm15_6@uint32 zmm15_6 zmm0_6; xor zmm15_7@uint32 zmm15_7 zmm0_7;
xor zmm15_8@uint32 zmm15_8 zmm0_8; xor zmm15_9@uint32 zmm15_9 zmm0_9;
xor zmm15_a@uint32 zmm15_a zmm0_a; xor zmm15_b@uint32 zmm15_b zmm0_b;
xor zmm15_c@uint32 zmm15_c zmm0_c; xor zmm15_d@uint32 zmm15_d zmm0_d;
xor zmm15_e@uint32 zmm15_e zmm0_e; xor zmm15_f@uint32 zmm15_f zmm0_f;
(* vpxord %zmm1,%zmm12,%zmm12                      #! PC = 0x5555555582ae *)
xor zmm12_0@uint32 zmm12_0 zmm1_0; xor zmm12_1@uint32 zmm12_1 zmm1_1;
xor zmm12_2@uint32 zmm12_2 zmm1_2; xor zmm12_3@uint32 zmm12_3 zmm1_3;
xor zmm12_4@uint32 zmm12_4 zmm1_4; xor zmm12_5@uint32 zmm12_5 zmm1_5;
xor zmm12_6@uint32 zmm12_6 zmm1_6; xor zmm12_7@uint32 zmm12_7 zmm1_7;
xor zmm12_8@uint32 zmm12_8 zmm1_8; xor zmm12_9@uint32 zmm12_9 zmm1_9;
xor zmm12_a@uint32 zmm12_a zmm1_a; xor zmm12_b@uint32 zmm12_b zmm1_b;
xor zmm12_c@uint32 zmm12_c zmm1_c; xor zmm12_d@uint32 zmm12_d zmm1_d;
xor zmm12_e@uint32 zmm12_e zmm1_e; xor zmm12_f@uint32 zmm12_f zmm1_f;
(* vpxord %zmm2,%zmm13,%zmm13                      #! PC = 0x5555555582b4 *)
xor zmm13_0@uint32 zmm13_0 zmm2_0; xor zmm13_1@uint32 zmm13_1 zmm2_1;
xor zmm13_2@uint32 zmm13_2 zmm2_2; xor zmm13_3@uint32 zmm13_3 zmm2_3;
xor zmm13_4@uint32 zmm13_4 zmm2_4; xor zmm13_5@uint32 zmm13_5 zmm2_5;
xor zmm13_6@uint32 zmm13_6 zmm2_6; xor zmm13_7@uint32 zmm13_7 zmm2_7;
xor zmm13_8@uint32 zmm13_8 zmm2_8; xor zmm13_9@uint32 zmm13_9 zmm2_9;
xor zmm13_a@uint32 zmm13_a zmm2_a; xor zmm13_b@uint32 zmm13_b zmm2_b;
xor zmm13_c@uint32 zmm13_c zmm2_c; xor zmm13_d@uint32 zmm13_d zmm2_d;
xor zmm13_e@uint32 zmm13_e zmm2_e; xor zmm13_f@uint32 zmm13_f zmm2_f;
(* vpxord %zmm3,%zmm14,%zmm14                      #! PC = 0x5555555582ba *)
xor zmm14_0@uint32 zmm14_0 zmm3_0; xor zmm14_1@uint32 zmm14_1 zmm3_1;
xor zmm14_2@uint32 zmm14_2 zmm3_2; xor zmm14_3@uint32 zmm14_3 zmm3_3;
xor zmm14_4@uint32 zmm14_4 zmm3_4; xor zmm14_5@uint32 zmm14_5 zmm3_5;
xor zmm14_6@uint32 zmm14_6 zmm3_6; xor zmm14_7@uint32 zmm14_7 zmm3_7;
xor zmm14_8@uint32 zmm14_8 zmm3_8; xor zmm14_9@uint32 zmm14_9 zmm3_9;
xor zmm14_a@uint32 zmm14_a zmm3_a; xor zmm14_b@uint32 zmm14_b zmm3_b;
xor zmm14_c@uint32 zmm14_c zmm3_c; xor zmm14_d@uint32 zmm14_d zmm3_d;
xor zmm14_e@uint32 zmm14_e zmm3_e; xor zmm14_f@uint32 zmm14_f zmm3_f;
(* vprold $0x10,%zmm15,%zmm15                      #! PC = 0x5555555582c0 *)
rol zmm15_0@uint32 zmm15_0 0x10; rol zmm15_1@uint32 zmm15_1 0x10;
rol zmm15_2@uint32 zmm15_2 0x10; rol zmm15_3@uint32 zmm15_3 0x10;
rol zmm15_4@uint32 zmm15_4 0x10; rol zmm15_5@uint32 zmm15_5 0x10;
rol zmm15_6@uint32 zmm15_6 0x10; rol zmm15_7@uint32 zmm15_7 0x10;
rol zmm15_8@uint32 zmm15_8 0x10; rol zmm15_9@uint32 zmm15_9 0x10;
rol zmm15_a@uint32 zmm15_a 0x10; rol zmm15_b@uint32 zmm15_b 0x10;
rol zmm15_c@uint32 zmm15_c 0x10; rol zmm15_d@uint32 zmm15_d 0x10;
rol zmm15_e@uint32 zmm15_e 0x10; rol zmm15_f@uint32 zmm15_f 0x10;
(* vprold $0x10,%zmm12,%zmm12                      #! PC = 0x5555555582c7 *)
rol zmm12_0@uint32 zmm12_0 0x10; rol zmm12_1@uint32 zmm12_1 0x10;
rol zmm12_2@uint32 zmm12_2 0x10; rol zmm12_3@uint32 zmm12_3 0x10;
rol zmm12_4@uint32 zmm12_4 0x10; rol zmm12_5@uint32 zmm12_5 0x10;
rol zmm12_6@uint32 zmm12_6 0x10; rol zmm12_7@uint32 zmm12_7 0x10;
rol zmm12_8@uint32 zmm12_8 0x10; rol zmm12_9@uint32 zmm12_9 0x10;
rol zmm12_a@uint32 zmm12_a 0x10; rol zmm12_b@uint32 zmm12_b 0x10;
rol zmm12_c@uint32 zmm12_c 0x10; rol zmm12_d@uint32 zmm12_d 0x10;
rol zmm12_e@uint32 zmm12_e 0x10; rol zmm12_f@uint32 zmm12_f 0x10;
(* vprold $0x10,%zmm13,%zmm13                      #! PC = 0x5555555582ce *)
rol zmm13_0@uint32 zmm13_0 0x10; rol zmm13_1@uint32 zmm13_1 0x10;
rol zmm13_2@uint32 zmm13_2 0x10; rol zmm13_3@uint32 zmm13_3 0x10;
rol zmm13_4@uint32 zmm13_4 0x10; rol zmm13_5@uint32 zmm13_5 0x10;
rol zmm13_6@uint32 zmm13_6 0x10; rol zmm13_7@uint32 zmm13_7 0x10;
rol zmm13_8@uint32 zmm13_8 0x10; rol zmm13_9@uint32 zmm13_9 0x10;
rol zmm13_a@uint32 zmm13_a 0x10; rol zmm13_b@uint32 zmm13_b 0x10;
rol zmm13_c@uint32 zmm13_c 0x10; rol zmm13_d@uint32 zmm13_d 0x10;
rol zmm13_e@uint32 zmm13_e 0x10; rol zmm13_f@uint32 zmm13_f 0x10;
(* vprold $0x10,%zmm14,%zmm14                      #! PC = 0x5555555582d5 *)
rol zmm14_0@uint32 zmm14_0 0x10; rol zmm14_1@uint32 zmm14_1 0x10;
rol zmm14_2@uint32 zmm14_2 0x10; rol zmm14_3@uint32 zmm14_3 0x10;
rol zmm14_4@uint32 zmm14_4 0x10; rol zmm14_5@uint32 zmm14_5 0x10;
rol zmm14_6@uint32 zmm14_6 0x10; rol zmm14_7@uint32 zmm14_7 0x10;
rol zmm14_8@uint32 zmm14_8 0x10; rol zmm14_9@uint32 zmm14_9 0x10;
rol zmm14_a@uint32 zmm14_a 0x10; rol zmm14_b@uint32 zmm14_b 0x10;
rol zmm14_c@uint32 zmm14_c 0x10; rol zmm14_d@uint32 zmm14_d 0x10;
rol zmm14_e@uint32 zmm14_e 0x10; rol zmm14_f@uint32 zmm14_f 0x10;
(* vpaddd %zmm15,%zmm10,%zmm10                     #! PC = 0x5555555582dc *)
adds dc zmm10_0 zmm10_0 zmm15_0; adds dc zmm10_1 zmm10_1 zmm15_1;
adds dc zmm10_2 zmm10_2 zmm15_2; adds dc zmm10_3 zmm10_3 zmm15_3;
adds dc zmm10_4 zmm10_4 zmm15_4; adds dc zmm10_5 zmm10_5 zmm15_5;
adds dc zmm10_6 zmm10_6 zmm15_6; adds dc zmm10_7 zmm10_7 zmm15_7;
adds dc zmm10_8 zmm10_8 zmm15_8; adds dc zmm10_9 zmm10_9 zmm15_9;
adds dc zmm10_a zmm10_a zmm15_a; adds dc zmm10_b zmm10_b zmm15_b;
adds dc zmm10_c zmm10_c zmm15_c; adds dc zmm10_d zmm10_d zmm15_d;
adds dc zmm10_e zmm10_e zmm15_e; adds dc zmm10_f zmm10_f zmm15_f;
(* vpaddd %zmm12,%zmm11,%zmm11                     #! PC = 0x5555555582e2 *)
adds dc zmm11_0 zmm11_0 zmm12_0; adds dc zmm11_1 zmm11_1 zmm12_1;
adds dc zmm11_2 zmm11_2 zmm12_2; adds dc zmm11_3 zmm11_3 zmm12_3;
adds dc zmm11_4 zmm11_4 zmm12_4; adds dc zmm11_5 zmm11_5 zmm12_5;
adds dc zmm11_6 zmm11_6 zmm12_6; adds dc zmm11_7 zmm11_7 zmm12_7;
adds dc zmm11_8 zmm11_8 zmm12_8; adds dc zmm11_9 zmm11_9 zmm12_9;
adds dc zmm11_a zmm11_a zmm12_a; adds dc zmm11_b zmm11_b zmm12_b;
adds dc zmm11_c zmm11_c zmm12_c; adds dc zmm11_d zmm11_d zmm12_d;
adds dc zmm11_e zmm11_e zmm12_e; adds dc zmm11_f zmm11_f zmm12_f;
(* vpaddd %zmm13,%zmm8,%zmm8                       #! PC = 0x5555555582e8 *)
adds dc zmm8_0 zmm8_0 zmm13_0; adds dc zmm8_1 zmm8_1 zmm13_1;
adds dc zmm8_2 zmm8_2 zmm13_2; adds dc zmm8_3 zmm8_3 zmm13_3;
adds dc zmm8_4 zmm8_4 zmm13_4; adds dc zmm8_5 zmm8_5 zmm13_5;
adds dc zmm8_6 zmm8_6 zmm13_6; adds dc zmm8_7 zmm8_7 zmm13_7;
adds dc zmm8_8 zmm8_8 zmm13_8; adds dc zmm8_9 zmm8_9 zmm13_9;
adds dc zmm8_a zmm8_a zmm13_a; adds dc zmm8_b zmm8_b zmm13_b;
adds dc zmm8_c zmm8_c zmm13_c; adds dc zmm8_d zmm8_d zmm13_d;
adds dc zmm8_e zmm8_e zmm13_e; adds dc zmm8_f zmm8_f zmm13_f;
(* vpaddd %zmm14,%zmm9,%zmm9                       #! PC = 0x5555555582ee *)
adds dc zmm9_0 zmm9_0 zmm14_0; adds dc zmm9_1 zmm9_1 zmm14_1;
adds dc zmm9_2 zmm9_2 zmm14_2; adds dc zmm9_3 zmm9_3 zmm14_3;
adds dc zmm9_4 zmm9_4 zmm14_4; adds dc zmm9_5 zmm9_5 zmm14_5;
adds dc zmm9_6 zmm9_6 zmm14_6; adds dc zmm9_7 zmm9_7 zmm14_7;
adds dc zmm9_8 zmm9_8 zmm14_8; adds dc zmm9_9 zmm9_9 zmm14_9;
adds dc zmm9_a zmm9_a zmm14_a; adds dc zmm9_b zmm9_b zmm14_b;
adds dc zmm9_c zmm9_c zmm14_c; adds dc zmm9_d zmm9_d zmm14_d;
adds dc zmm9_e zmm9_e zmm14_e; adds dc zmm9_f zmm9_f zmm14_f;
(* vpxord %zmm10,%zmm5,%zmm5                       #! PC = 0x5555555582f4 *)
xor zmm5_0@uint32 zmm5_0 zmm10_0; xor zmm5_1@uint32 zmm5_1 zmm10_1;
xor zmm5_2@uint32 zmm5_2 zmm10_2; xor zmm5_3@uint32 zmm5_3 zmm10_3;
xor zmm5_4@uint32 zmm5_4 zmm10_4; xor zmm5_5@uint32 zmm5_5 zmm10_5;
xor zmm5_6@uint32 zmm5_6 zmm10_6; xor zmm5_7@uint32 zmm5_7 zmm10_7;
xor zmm5_8@uint32 zmm5_8 zmm10_8; xor zmm5_9@uint32 zmm5_9 zmm10_9;
xor zmm5_a@uint32 zmm5_a zmm10_a; xor zmm5_b@uint32 zmm5_b zmm10_b;
xor zmm5_c@uint32 zmm5_c zmm10_c; xor zmm5_d@uint32 zmm5_d zmm10_d;
xor zmm5_e@uint32 zmm5_e zmm10_e; xor zmm5_f@uint32 zmm5_f zmm10_f;
(* vpxord %zmm11,%zmm6,%zmm6                       #! PC = 0x5555555582fa *)
xor zmm6_0@uint32 zmm6_0 zmm11_0; xor zmm6_1@uint32 zmm6_1 zmm11_1;
xor zmm6_2@uint32 zmm6_2 zmm11_2; xor zmm6_3@uint32 zmm6_3 zmm11_3;
xor zmm6_4@uint32 zmm6_4 zmm11_4; xor zmm6_5@uint32 zmm6_5 zmm11_5;
xor zmm6_6@uint32 zmm6_6 zmm11_6; xor zmm6_7@uint32 zmm6_7 zmm11_7;
xor zmm6_8@uint32 zmm6_8 zmm11_8; xor zmm6_9@uint32 zmm6_9 zmm11_9;
xor zmm6_a@uint32 zmm6_a zmm11_a; xor zmm6_b@uint32 zmm6_b zmm11_b;
xor zmm6_c@uint32 zmm6_c zmm11_c; xor zmm6_d@uint32 zmm6_d zmm11_d;
xor zmm6_e@uint32 zmm6_e zmm11_e; xor zmm6_f@uint32 zmm6_f zmm11_f;
(* vpxord %zmm8,%zmm7,%zmm7                        #! PC = 0x555555558300 *)
xor zmm7_0@uint32 zmm7_0 zmm8_0; xor zmm7_1@uint32 zmm7_1 zmm8_1;
xor zmm7_2@uint32 zmm7_2 zmm8_2; xor zmm7_3@uint32 zmm7_3 zmm8_3;
xor zmm7_4@uint32 zmm7_4 zmm8_4; xor zmm7_5@uint32 zmm7_5 zmm8_5;
xor zmm7_6@uint32 zmm7_6 zmm8_6; xor zmm7_7@uint32 zmm7_7 zmm8_7;
xor zmm7_8@uint32 zmm7_8 zmm8_8; xor zmm7_9@uint32 zmm7_9 zmm8_9;
xor zmm7_a@uint32 zmm7_a zmm8_a; xor zmm7_b@uint32 zmm7_b zmm8_b;
xor zmm7_c@uint32 zmm7_c zmm8_c; xor zmm7_d@uint32 zmm7_d zmm8_d;
xor zmm7_e@uint32 zmm7_e zmm8_e; xor zmm7_f@uint32 zmm7_f zmm8_f;
(* vpxord %zmm9,%zmm4,%zmm4                        #! PC = 0x555555558306 *)
xor zmm4_0@uint32 zmm4_0 zmm9_0; xor zmm4_1@uint32 zmm4_1 zmm9_1;
xor zmm4_2@uint32 zmm4_2 zmm9_2; xor zmm4_3@uint32 zmm4_3 zmm9_3;
xor zmm4_4@uint32 zmm4_4 zmm9_4; xor zmm4_5@uint32 zmm4_5 zmm9_5;
xor zmm4_6@uint32 zmm4_6 zmm9_6; xor zmm4_7@uint32 zmm4_7 zmm9_7;
xor zmm4_8@uint32 zmm4_8 zmm9_8; xor zmm4_9@uint32 zmm4_9 zmm9_9;
xor zmm4_a@uint32 zmm4_a zmm9_a; xor zmm4_b@uint32 zmm4_b zmm9_b;
xor zmm4_c@uint32 zmm4_c zmm9_c; xor zmm4_d@uint32 zmm4_d zmm9_d;
xor zmm4_e@uint32 zmm4_e zmm9_e; xor zmm4_f@uint32 zmm4_f zmm9_f;
(* vprold $0xc,%zmm5,%zmm5                         #! PC = 0x55555555830c *)
rol zmm5_0@uint32 zmm5_0 0xc; rol zmm5_1@uint32 zmm5_1 0xc;
rol zmm5_2@uint32 zmm5_2 0xc; rol zmm5_3@uint32 zmm5_3 0xc;
rol zmm5_4@uint32 zmm5_4 0xc; rol zmm5_5@uint32 zmm5_5 0xc;
rol zmm5_6@uint32 zmm5_6 0xc; rol zmm5_7@uint32 zmm5_7 0xc;
rol zmm5_8@uint32 zmm5_8 0xc; rol zmm5_9@uint32 zmm5_9 0xc;
rol zmm5_a@uint32 zmm5_a 0xc; rol zmm5_b@uint32 zmm5_b 0xc;
rol zmm5_c@uint32 zmm5_c 0xc; rol zmm5_d@uint32 zmm5_d 0xc;
rol zmm5_e@uint32 zmm5_e 0xc; rol zmm5_f@uint32 zmm5_f 0xc;
(* vprold $0xc,%zmm6,%zmm6                         #! PC = 0x555555558313 *)
rol zmm6_0@uint32 zmm6_0 0xc; rol zmm6_1@uint32 zmm6_1 0xc;
rol zmm6_2@uint32 zmm6_2 0xc; rol zmm6_3@uint32 zmm6_3 0xc;
rol zmm6_4@uint32 zmm6_4 0xc; rol zmm6_5@uint32 zmm6_5 0xc;
rol zmm6_6@uint32 zmm6_6 0xc; rol zmm6_7@uint32 zmm6_7 0xc;
rol zmm6_8@uint32 zmm6_8 0xc; rol zmm6_9@uint32 zmm6_9 0xc;
rol zmm6_a@uint32 zmm6_a 0xc; rol zmm6_b@uint32 zmm6_b 0xc;
rol zmm6_c@uint32 zmm6_c 0xc; rol zmm6_d@uint32 zmm6_d 0xc;
rol zmm6_e@uint32 zmm6_e 0xc; rol zmm6_f@uint32 zmm6_f 0xc;
(* vprold $0xc,%zmm7,%zmm7                         #! PC = 0x55555555831a *)
rol zmm7_0@uint32 zmm7_0 0xc; rol zmm7_1@uint32 zmm7_1 0xc;
rol zmm7_2@uint32 zmm7_2 0xc; rol zmm7_3@uint32 zmm7_3 0xc;
rol zmm7_4@uint32 zmm7_4 0xc; rol zmm7_5@uint32 zmm7_5 0xc;
rol zmm7_6@uint32 zmm7_6 0xc; rol zmm7_7@uint32 zmm7_7 0xc;
rol zmm7_8@uint32 zmm7_8 0xc; rol zmm7_9@uint32 zmm7_9 0xc;
rol zmm7_a@uint32 zmm7_a 0xc; rol zmm7_b@uint32 zmm7_b 0xc;
rol zmm7_c@uint32 zmm7_c 0xc; rol zmm7_d@uint32 zmm7_d 0xc;
rol zmm7_e@uint32 zmm7_e 0xc; rol zmm7_f@uint32 zmm7_f 0xc;
(* vprold $0xc,%zmm4,%zmm4                         #! PC = 0x555555558321 *)
rol zmm4_0@uint32 zmm4_0 0xc; rol zmm4_1@uint32 zmm4_1 0xc;
rol zmm4_2@uint32 zmm4_2 0xc; rol zmm4_3@uint32 zmm4_3 0xc;
rol zmm4_4@uint32 zmm4_4 0xc; rol zmm4_5@uint32 zmm4_5 0xc;
rol zmm4_6@uint32 zmm4_6 0xc; rol zmm4_7@uint32 zmm4_7 0xc;
rol zmm4_8@uint32 zmm4_8 0xc; rol zmm4_9@uint32 zmm4_9 0xc;
rol zmm4_a@uint32 zmm4_a 0xc; rol zmm4_b@uint32 zmm4_b 0xc;
rol zmm4_c@uint32 zmm4_c 0xc; rol zmm4_d@uint32 zmm4_d 0xc;
rol zmm4_e@uint32 zmm4_e 0xc; rol zmm4_f@uint32 zmm4_f 0xc;
(* vpaddd %zmm5,%zmm0,%zmm0                        #! PC = 0x555555558328 *)
adds dc zmm0_0 zmm0_0 zmm5_0; adds dc zmm0_1 zmm0_1 zmm5_1;
adds dc zmm0_2 zmm0_2 zmm5_2; adds dc zmm0_3 zmm0_3 zmm5_3;
adds dc zmm0_4 zmm0_4 zmm5_4; adds dc zmm0_5 zmm0_5 zmm5_5;
adds dc zmm0_6 zmm0_6 zmm5_6; adds dc zmm0_7 zmm0_7 zmm5_7;
adds dc zmm0_8 zmm0_8 zmm5_8; adds dc zmm0_9 zmm0_9 zmm5_9;
adds dc zmm0_a zmm0_a zmm5_a; adds dc zmm0_b zmm0_b zmm5_b;
adds dc zmm0_c zmm0_c zmm5_c; adds dc zmm0_d zmm0_d zmm5_d;
adds dc zmm0_e zmm0_e zmm5_e; adds dc zmm0_f zmm0_f zmm5_f;
(* vpaddd %zmm6,%zmm1,%zmm1                        #! PC = 0x55555555832e *)
adds dc zmm1_0 zmm1_0 zmm6_0; adds dc zmm1_1 zmm1_1 zmm6_1;
adds dc zmm1_2 zmm1_2 zmm6_2; adds dc zmm1_3 zmm1_3 zmm6_3;
adds dc zmm1_4 zmm1_4 zmm6_4; adds dc zmm1_5 zmm1_5 zmm6_5;
adds dc zmm1_6 zmm1_6 zmm6_6; adds dc zmm1_7 zmm1_7 zmm6_7;
adds dc zmm1_8 zmm1_8 zmm6_8; adds dc zmm1_9 zmm1_9 zmm6_9;
adds dc zmm1_a zmm1_a zmm6_a; adds dc zmm1_b zmm1_b zmm6_b;
adds dc zmm1_c zmm1_c zmm6_c; adds dc zmm1_d zmm1_d zmm6_d;
adds dc zmm1_e zmm1_e zmm6_e; adds dc zmm1_f zmm1_f zmm6_f;
(* vpaddd %zmm7,%zmm2,%zmm2                        #! PC = 0x555555558334 *)
adds dc zmm2_0 zmm2_0 zmm7_0; adds dc zmm2_1 zmm2_1 zmm7_1;
adds dc zmm2_2 zmm2_2 zmm7_2; adds dc zmm2_3 zmm2_3 zmm7_3;
adds dc zmm2_4 zmm2_4 zmm7_4; adds dc zmm2_5 zmm2_5 zmm7_5;
adds dc zmm2_6 zmm2_6 zmm7_6; adds dc zmm2_7 zmm2_7 zmm7_7;
adds dc zmm2_8 zmm2_8 zmm7_8; adds dc zmm2_9 zmm2_9 zmm7_9;
adds dc zmm2_a zmm2_a zmm7_a; adds dc zmm2_b zmm2_b zmm7_b;
adds dc zmm2_c zmm2_c zmm7_c; adds dc zmm2_d zmm2_d zmm7_d;
adds dc zmm2_e zmm2_e zmm7_e; adds dc zmm2_f zmm2_f zmm7_f;
(* vpaddd %zmm4,%zmm3,%zmm3                        #! PC = 0x55555555833a *)
adds dc zmm3_0 zmm3_0 zmm4_0; adds dc zmm3_1 zmm3_1 zmm4_1;
adds dc zmm3_2 zmm3_2 zmm4_2; adds dc zmm3_3 zmm3_3 zmm4_3;
adds dc zmm3_4 zmm3_4 zmm4_4; adds dc zmm3_5 zmm3_5 zmm4_5;
adds dc zmm3_6 zmm3_6 zmm4_6; adds dc zmm3_7 zmm3_7 zmm4_7;
adds dc zmm3_8 zmm3_8 zmm4_8; adds dc zmm3_9 zmm3_9 zmm4_9;
adds dc zmm3_a zmm3_a zmm4_a; adds dc zmm3_b zmm3_b zmm4_b;
adds dc zmm3_c zmm3_c zmm4_c; adds dc zmm3_d zmm3_d zmm4_d;
adds dc zmm3_e zmm3_e zmm4_e; adds dc zmm3_f zmm3_f zmm4_f;
(* vpxord %zmm0,%zmm15,%zmm15                      #! PC = 0x555555558340 *)
xor zmm15_0@uint32 zmm15_0 zmm0_0; xor zmm15_1@uint32 zmm15_1 zmm0_1;
xor zmm15_2@uint32 zmm15_2 zmm0_2; xor zmm15_3@uint32 zmm15_3 zmm0_3;
xor zmm15_4@uint32 zmm15_4 zmm0_4; xor zmm15_5@uint32 zmm15_5 zmm0_5;
xor zmm15_6@uint32 zmm15_6 zmm0_6; xor zmm15_7@uint32 zmm15_7 zmm0_7;
xor zmm15_8@uint32 zmm15_8 zmm0_8; xor zmm15_9@uint32 zmm15_9 zmm0_9;
xor zmm15_a@uint32 zmm15_a zmm0_a; xor zmm15_b@uint32 zmm15_b zmm0_b;
xor zmm15_c@uint32 zmm15_c zmm0_c; xor zmm15_d@uint32 zmm15_d zmm0_d;
xor zmm15_e@uint32 zmm15_e zmm0_e; xor zmm15_f@uint32 zmm15_f zmm0_f;
(* vpxord %zmm1,%zmm12,%zmm12                      #! PC = 0x555555558346 *)
xor zmm12_0@uint32 zmm12_0 zmm1_0; xor zmm12_1@uint32 zmm12_1 zmm1_1;
xor zmm12_2@uint32 zmm12_2 zmm1_2; xor zmm12_3@uint32 zmm12_3 zmm1_3;
xor zmm12_4@uint32 zmm12_4 zmm1_4; xor zmm12_5@uint32 zmm12_5 zmm1_5;
xor zmm12_6@uint32 zmm12_6 zmm1_6; xor zmm12_7@uint32 zmm12_7 zmm1_7;
xor zmm12_8@uint32 zmm12_8 zmm1_8; xor zmm12_9@uint32 zmm12_9 zmm1_9;
xor zmm12_a@uint32 zmm12_a zmm1_a; xor zmm12_b@uint32 zmm12_b zmm1_b;
xor zmm12_c@uint32 zmm12_c zmm1_c; xor zmm12_d@uint32 zmm12_d zmm1_d;
xor zmm12_e@uint32 zmm12_e zmm1_e; xor zmm12_f@uint32 zmm12_f zmm1_f;
(* vpxord %zmm2,%zmm13,%zmm13                      #! PC = 0x55555555834c *)
xor zmm13_0@uint32 zmm13_0 zmm2_0; xor zmm13_1@uint32 zmm13_1 zmm2_1;
xor zmm13_2@uint32 zmm13_2 zmm2_2; xor zmm13_3@uint32 zmm13_3 zmm2_3;
xor zmm13_4@uint32 zmm13_4 zmm2_4; xor zmm13_5@uint32 zmm13_5 zmm2_5;
xor zmm13_6@uint32 zmm13_6 zmm2_6; xor zmm13_7@uint32 zmm13_7 zmm2_7;
xor zmm13_8@uint32 zmm13_8 zmm2_8; xor zmm13_9@uint32 zmm13_9 zmm2_9;
xor zmm13_a@uint32 zmm13_a zmm2_a; xor zmm13_b@uint32 zmm13_b zmm2_b;
xor zmm13_c@uint32 zmm13_c zmm2_c; xor zmm13_d@uint32 zmm13_d zmm2_d;
xor zmm13_e@uint32 zmm13_e zmm2_e; xor zmm13_f@uint32 zmm13_f zmm2_f;
(* vpxord %zmm3,%zmm14,%zmm14                      #! PC = 0x555555558352 *)
xor zmm14_0@uint32 zmm14_0 zmm3_0; xor zmm14_1@uint32 zmm14_1 zmm3_1;
xor zmm14_2@uint32 zmm14_2 zmm3_2; xor zmm14_3@uint32 zmm14_3 zmm3_3;
xor zmm14_4@uint32 zmm14_4 zmm3_4; xor zmm14_5@uint32 zmm14_5 zmm3_5;
xor zmm14_6@uint32 zmm14_6 zmm3_6; xor zmm14_7@uint32 zmm14_7 zmm3_7;
xor zmm14_8@uint32 zmm14_8 zmm3_8; xor zmm14_9@uint32 zmm14_9 zmm3_9;
xor zmm14_a@uint32 zmm14_a zmm3_a; xor zmm14_b@uint32 zmm14_b zmm3_b;
xor zmm14_c@uint32 zmm14_c zmm3_c; xor zmm14_d@uint32 zmm14_d zmm3_d;
xor zmm14_e@uint32 zmm14_e zmm3_e; xor zmm14_f@uint32 zmm14_f zmm3_f;
(* vprold $0x8,%zmm15,%zmm15                       #! PC = 0x555555558358 *)
rol zmm15_0@uint32 zmm15_0 0x8; rol zmm15_1@uint32 zmm15_1 0x8;
rol zmm15_2@uint32 zmm15_2 0x8; rol zmm15_3@uint32 zmm15_3 0x8;
rol zmm15_4@uint32 zmm15_4 0x8; rol zmm15_5@uint32 zmm15_5 0x8;
rol zmm15_6@uint32 zmm15_6 0x8; rol zmm15_7@uint32 zmm15_7 0x8;
rol zmm15_8@uint32 zmm15_8 0x8; rol zmm15_9@uint32 zmm15_9 0x8;
rol zmm15_a@uint32 zmm15_a 0x8; rol zmm15_b@uint32 zmm15_b 0x8;
rol zmm15_c@uint32 zmm15_c 0x8; rol zmm15_d@uint32 zmm15_d 0x8;
rol zmm15_e@uint32 zmm15_e 0x8; rol zmm15_f@uint32 zmm15_f 0x8;
(* vprold $0x8,%zmm12,%zmm12                       #! PC = 0x55555555835f *)
rol zmm12_0@uint32 zmm12_0 0x8; rol zmm12_1@uint32 zmm12_1 0x8;
rol zmm12_2@uint32 zmm12_2 0x8; rol zmm12_3@uint32 zmm12_3 0x8;
rol zmm12_4@uint32 zmm12_4 0x8; rol zmm12_5@uint32 zmm12_5 0x8;
rol zmm12_6@uint32 zmm12_6 0x8; rol zmm12_7@uint32 zmm12_7 0x8;
rol zmm12_8@uint32 zmm12_8 0x8; rol zmm12_9@uint32 zmm12_9 0x8;
rol zmm12_a@uint32 zmm12_a 0x8; rol zmm12_b@uint32 zmm12_b 0x8;
rol zmm12_c@uint32 zmm12_c 0x8; rol zmm12_d@uint32 zmm12_d 0x8;
rol zmm12_e@uint32 zmm12_e 0x8; rol zmm12_f@uint32 zmm12_f 0x8;
(* vprold $0x8,%zmm13,%zmm13                       #! PC = 0x555555558366 *)
rol zmm13_0@uint32 zmm13_0 0x8; rol zmm13_1@uint32 zmm13_1 0x8;
rol zmm13_2@uint32 zmm13_2 0x8; rol zmm13_3@uint32 zmm13_3 0x8;
rol zmm13_4@uint32 zmm13_4 0x8; rol zmm13_5@uint32 zmm13_5 0x8;
rol zmm13_6@uint32 zmm13_6 0x8; rol zmm13_7@uint32 zmm13_7 0x8;
rol zmm13_8@uint32 zmm13_8 0x8; rol zmm13_9@uint32 zmm13_9 0x8;
rol zmm13_a@uint32 zmm13_a 0x8; rol zmm13_b@uint32 zmm13_b 0x8;
rol zmm13_c@uint32 zmm13_c 0x8; rol zmm13_d@uint32 zmm13_d 0x8;
rol zmm13_e@uint32 zmm13_e 0x8; rol zmm13_f@uint32 zmm13_f 0x8;
(* vprold $0x8,%zmm14,%zmm14                       #! PC = 0x55555555836d *)
rol zmm14_0@uint32 zmm14_0 0x8; rol zmm14_1@uint32 zmm14_1 0x8;
rol zmm14_2@uint32 zmm14_2 0x8; rol zmm14_3@uint32 zmm14_3 0x8;
rol zmm14_4@uint32 zmm14_4 0x8; rol zmm14_5@uint32 zmm14_5 0x8;
rol zmm14_6@uint32 zmm14_6 0x8; rol zmm14_7@uint32 zmm14_7 0x8;
rol zmm14_8@uint32 zmm14_8 0x8; rol zmm14_9@uint32 zmm14_9 0x8;
rol zmm14_a@uint32 zmm14_a 0x8; rol zmm14_b@uint32 zmm14_b 0x8;
rol zmm14_c@uint32 zmm14_c 0x8; rol zmm14_d@uint32 zmm14_d 0x8;
rol zmm14_e@uint32 zmm14_e 0x8; rol zmm14_f@uint32 zmm14_f 0x8;
(* vpaddd %zmm15,%zmm10,%zmm10                     #! PC = 0x555555558374 *)
adds dc zmm10_0 zmm10_0 zmm15_0; adds dc zmm10_1 zmm10_1 zmm15_1;
adds dc zmm10_2 zmm10_2 zmm15_2; adds dc zmm10_3 zmm10_3 zmm15_3;
adds dc zmm10_4 zmm10_4 zmm15_4; adds dc zmm10_5 zmm10_5 zmm15_5;
adds dc zmm10_6 zmm10_6 zmm15_6; adds dc zmm10_7 zmm10_7 zmm15_7;
adds dc zmm10_8 zmm10_8 zmm15_8; adds dc zmm10_9 zmm10_9 zmm15_9;
adds dc zmm10_a zmm10_a zmm15_a; adds dc zmm10_b zmm10_b zmm15_b;
adds dc zmm10_c zmm10_c zmm15_c; adds dc zmm10_d zmm10_d zmm15_d;
adds dc zmm10_e zmm10_e zmm15_e; adds dc zmm10_f zmm10_f zmm15_f;
(* vpaddd %zmm12,%zmm11,%zmm11                     #! PC = 0x55555555837a *)
adds dc zmm11_0 zmm11_0 zmm12_0; adds dc zmm11_1 zmm11_1 zmm12_1;
adds dc zmm11_2 zmm11_2 zmm12_2; adds dc zmm11_3 zmm11_3 zmm12_3;
adds dc zmm11_4 zmm11_4 zmm12_4; adds dc zmm11_5 zmm11_5 zmm12_5;
adds dc zmm11_6 zmm11_6 zmm12_6; adds dc zmm11_7 zmm11_7 zmm12_7;
adds dc zmm11_8 zmm11_8 zmm12_8; adds dc zmm11_9 zmm11_9 zmm12_9;
adds dc zmm11_a zmm11_a zmm12_a; adds dc zmm11_b zmm11_b zmm12_b;
adds dc zmm11_c zmm11_c zmm12_c; adds dc zmm11_d zmm11_d zmm12_d;
adds dc zmm11_e zmm11_e zmm12_e; adds dc zmm11_f zmm11_f zmm12_f;
(* vpaddd %zmm13,%zmm8,%zmm8                       #! PC = 0x555555558380 *)
adds dc zmm8_0 zmm8_0 zmm13_0; adds dc zmm8_1 zmm8_1 zmm13_1;
adds dc zmm8_2 zmm8_2 zmm13_2; adds dc zmm8_3 zmm8_3 zmm13_3;
adds dc zmm8_4 zmm8_4 zmm13_4; adds dc zmm8_5 zmm8_5 zmm13_5;
adds dc zmm8_6 zmm8_6 zmm13_6; adds dc zmm8_7 zmm8_7 zmm13_7;
adds dc zmm8_8 zmm8_8 zmm13_8; adds dc zmm8_9 zmm8_9 zmm13_9;
adds dc zmm8_a zmm8_a zmm13_a; adds dc zmm8_b zmm8_b zmm13_b;
adds dc zmm8_c zmm8_c zmm13_c; adds dc zmm8_d zmm8_d zmm13_d;
adds dc zmm8_e zmm8_e zmm13_e; adds dc zmm8_f zmm8_f zmm13_f;
(* vpaddd %zmm14,%zmm9,%zmm9                       #! PC = 0x555555558386 *)
adds dc zmm9_0 zmm9_0 zmm14_0; adds dc zmm9_1 zmm9_1 zmm14_1;
adds dc zmm9_2 zmm9_2 zmm14_2; adds dc zmm9_3 zmm9_3 zmm14_3;
adds dc zmm9_4 zmm9_4 zmm14_4; adds dc zmm9_5 zmm9_5 zmm14_5;
adds dc zmm9_6 zmm9_6 zmm14_6; adds dc zmm9_7 zmm9_7 zmm14_7;
adds dc zmm9_8 zmm9_8 zmm14_8; adds dc zmm9_9 zmm9_9 zmm14_9;
adds dc zmm9_a zmm9_a zmm14_a; adds dc zmm9_b zmm9_b zmm14_b;
adds dc zmm9_c zmm9_c zmm14_c; adds dc zmm9_d zmm9_d zmm14_d;
adds dc zmm9_e zmm9_e zmm14_e; adds dc zmm9_f zmm9_f zmm14_f;
(* vpxord %zmm10,%zmm5,%zmm5                       #! PC = 0x55555555838c *)
xor zmm5_0@uint32 zmm5_0 zmm10_0; xor zmm5_1@uint32 zmm5_1 zmm10_1;
xor zmm5_2@uint32 zmm5_2 zmm10_2; xor zmm5_3@uint32 zmm5_3 zmm10_3;
xor zmm5_4@uint32 zmm5_4 zmm10_4; xor zmm5_5@uint32 zmm5_5 zmm10_5;
xor zmm5_6@uint32 zmm5_6 zmm10_6; xor zmm5_7@uint32 zmm5_7 zmm10_7;
xor zmm5_8@uint32 zmm5_8 zmm10_8; xor zmm5_9@uint32 zmm5_9 zmm10_9;
xor zmm5_a@uint32 zmm5_a zmm10_a; xor zmm5_b@uint32 zmm5_b zmm10_b;
xor zmm5_c@uint32 zmm5_c zmm10_c; xor zmm5_d@uint32 zmm5_d zmm10_d;
xor zmm5_e@uint32 zmm5_e zmm10_e; xor zmm5_f@uint32 zmm5_f zmm10_f;
(* vpxord %zmm11,%zmm6,%zmm6                       #! PC = 0x555555558392 *)
xor zmm6_0@uint32 zmm6_0 zmm11_0; xor zmm6_1@uint32 zmm6_1 zmm11_1;
xor zmm6_2@uint32 zmm6_2 zmm11_2; xor zmm6_3@uint32 zmm6_3 zmm11_3;
xor zmm6_4@uint32 zmm6_4 zmm11_4; xor zmm6_5@uint32 zmm6_5 zmm11_5;
xor zmm6_6@uint32 zmm6_6 zmm11_6; xor zmm6_7@uint32 zmm6_7 zmm11_7;
xor zmm6_8@uint32 zmm6_8 zmm11_8; xor zmm6_9@uint32 zmm6_9 zmm11_9;
xor zmm6_a@uint32 zmm6_a zmm11_a; xor zmm6_b@uint32 zmm6_b zmm11_b;
xor zmm6_c@uint32 zmm6_c zmm11_c; xor zmm6_d@uint32 zmm6_d zmm11_d;
xor zmm6_e@uint32 zmm6_e zmm11_e; xor zmm6_f@uint32 zmm6_f zmm11_f;
(* vpxord %zmm8,%zmm7,%zmm7                        #! PC = 0x555555558398 *)
xor zmm7_0@uint32 zmm7_0 zmm8_0; xor zmm7_1@uint32 zmm7_1 zmm8_1;
xor zmm7_2@uint32 zmm7_2 zmm8_2; xor zmm7_3@uint32 zmm7_3 zmm8_3;
xor zmm7_4@uint32 zmm7_4 zmm8_4; xor zmm7_5@uint32 zmm7_5 zmm8_5;
xor zmm7_6@uint32 zmm7_6 zmm8_6; xor zmm7_7@uint32 zmm7_7 zmm8_7;
xor zmm7_8@uint32 zmm7_8 zmm8_8; xor zmm7_9@uint32 zmm7_9 zmm8_9;
xor zmm7_a@uint32 zmm7_a zmm8_a; xor zmm7_b@uint32 zmm7_b zmm8_b;
xor zmm7_c@uint32 zmm7_c zmm8_c; xor zmm7_d@uint32 zmm7_d zmm8_d;
xor zmm7_e@uint32 zmm7_e zmm8_e; xor zmm7_f@uint32 zmm7_f zmm8_f;
(* vpxord %zmm9,%zmm4,%zmm4                        #! PC = 0x55555555839e *)
xor zmm4_0@uint32 zmm4_0 zmm9_0; xor zmm4_1@uint32 zmm4_1 zmm9_1;
xor zmm4_2@uint32 zmm4_2 zmm9_2; xor zmm4_3@uint32 zmm4_3 zmm9_3;
xor zmm4_4@uint32 zmm4_4 zmm9_4; xor zmm4_5@uint32 zmm4_5 zmm9_5;
xor zmm4_6@uint32 zmm4_6 zmm9_6; xor zmm4_7@uint32 zmm4_7 zmm9_7;
xor zmm4_8@uint32 zmm4_8 zmm9_8; xor zmm4_9@uint32 zmm4_9 zmm9_9;
xor zmm4_a@uint32 zmm4_a zmm9_a; xor zmm4_b@uint32 zmm4_b zmm9_b;
xor zmm4_c@uint32 zmm4_c zmm9_c; xor zmm4_d@uint32 zmm4_d zmm9_d;
xor zmm4_e@uint32 zmm4_e zmm9_e; xor zmm4_f@uint32 zmm4_f zmm9_f;
(* vprold $0x7,%zmm5,%zmm5                         #! PC = 0x5555555583a4 *)
rol zmm5_0@uint32 zmm5_0 0x7; rol zmm5_1@uint32 zmm5_1 0x7;
rol zmm5_2@uint32 zmm5_2 0x7; rol zmm5_3@uint32 zmm5_3 0x7;
rol zmm5_4@uint32 zmm5_4 0x7; rol zmm5_5@uint32 zmm5_5 0x7;
rol zmm5_6@uint32 zmm5_6 0x7; rol zmm5_7@uint32 zmm5_7 0x7;
rol zmm5_8@uint32 zmm5_8 0x7; rol zmm5_9@uint32 zmm5_9 0x7;
rol zmm5_a@uint32 zmm5_a 0x7; rol zmm5_b@uint32 zmm5_b 0x7;
rol zmm5_c@uint32 zmm5_c 0x7; rol zmm5_d@uint32 zmm5_d 0x7;
rol zmm5_e@uint32 zmm5_e 0x7; rol zmm5_f@uint32 zmm5_f 0x7;
(* vprold $0x7,%zmm6,%zmm6                         #! PC = 0x5555555583ab *)
rol zmm6_0@uint32 zmm6_0 0x7; rol zmm6_1@uint32 zmm6_1 0x7;
rol zmm6_2@uint32 zmm6_2 0x7; rol zmm6_3@uint32 zmm6_3 0x7;
rol zmm6_4@uint32 zmm6_4 0x7; rol zmm6_5@uint32 zmm6_5 0x7;
rol zmm6_6@uint32 zmm6_6 0x7; rol zmm6_7@uint32 zmm6_7 0x7;
rol zmm6_8@uint32 zmm6_8 0x7; rol zmm6_9@uint32 zmm6_9 0x7;
rol zmm6_a@uint32 zmm6_a 0x7; rol zmm6_b@uint32 zmm6_b 0x7;
rol zmm6_c@uint32 zmm6_c 0x7; rol zmm6_d@uint32 zmm6_d 0x7;
rol zmm6_e@uint32 zmm6_e 0x7; rol zmm6_f@uint32 zmm6_f 0x7;
(* vprold $0x7,%zmm7,%zmm7                         #! PC = 0x5555555583b2 *)
rol zmm7_0@uint32 zmm7_0 0x7; rol zmm7_1@uint32 zmm7_1 0x7;
rol zmm7_2@uint32 zmm7_2 0x7; rol zmm7_3@uint32 zmm7_3 0x7;
rol zmm7_4@uint32 zmm7_4 0x7; rol zmm7_5@uint32 zmm7_5 0x7;
rol zmm7_6@uint32 zmm7_6 0x7; rol zmm7_7@uint32 zmm7_7 0x7;
rol zmm7_8@uint32 zmm7_8 0x7; rol zmm7_9@uint32 zmm7_9 0x7;
rol zmm7_a@uint32 zmm7_a 0x7; rol zmm7_b@uint32 zmm7_b 0x7;
rol zmm7_c@uint32 zmm7_c 0x7; rol zmm7_d@uint32 zmm7_d 0x7;
rol zmm7_e@uint32 zmm7_e 0x7; rol zmm7_f@uint32 zmm7_f 0x7;
(* vprold $0x7,%zmm4,%zmm4                         #! PC = 0x5555555583b9 *)
rol zmm4_0@uint32 zmm4_0 0x7; rol zmm4_1@uint32 zmm4_1 0x7;
rol zmm4_2@uint32 zmm4_2 0x7; rol zmm4_3@uint32 zmm4_3 0x7;
rol zmm4_4@uint32 zmm4_4 0x7; rol zmm4_5@uint32 zmm4_5 0x7;
rol zmm4_6@uint32 zmm4_6 0x7; rol zmm4_7@uint32 zmm4_7 0x7;
rol zmm4_8@uint32 zmm4_8 0x7; rol zmm4_9@uint32 zmm4_9 0x7;
rol zmm4_a@uint32 zmm4_a 0x7; rol zmm4_b@uint32 zmm4_b 0x7;
rol zmm4_c@uint32 zmm4_c 0x7; rol zmm4_d@uint32 zmm4_d 0x7;
rol zmm4_e@uint32 zmm4_e 0x7; rol zmm4_f@uint32 zmm4_f 0x7;
(* dec    %eax                                     #! PC = 0x5555555583c0 *)
(* dec %eax *)
nop;
(* #jne    0x555555558160 <ChaCha20_16x+448>       #! PC = 0x5555555583c2 *)
#jne    0x555555558160 <ChaCha20_16x+448>       #! 0x5555555583c2 = 0x5555555583c2;
(* vpaddd %zmm4,%zmm0,%zmm0                        #! PC = 0x555555558160 *)
adds dc zmm0_0 zmm0_0 zmm4_0; adds dc zmm0_1 zmm0_1 zmm4_1;
adds dc zmm0_2 zmm0_2 zmm4_2; adds dc zmm0_3 zmm0_3 zmm4_3;
adds dc zmm0_4 zmm0_4 zmm4_4; adds dc zmm0_5 zmm0_5 zmm4_5;
adds dc zmm0_6 zmm0_6 zmm4_6; adds dc zmm0_7 zmm0_7 zmm4_7;
adds dc zmm0_8 zmm0_8 zmm4_8; adds dc zmm0_9 zmm0_9 zmm4_9;
adds dc zmm0_a zmm0_a zmm4_a; adds dc zmm0_b zmm0_b zmm4_b;
adds dc zmm0_c zmm0_c zmm4_c; adds dc zmm0_d zmm0_d zmm4_d;
adds dc zmm0_e zmm0_e zmm4_e; adds dc zmm0_f zmm0_f zmm4_f;
(* vpaddd %zmm5,%zmm1,%zmm1                        #! PC = 0x555555558166 *)
adds dc zmm1_0 zmm1_0 zmm5_0; adds dc zmm1_1 zmm1_1 zmm5_1;
adds dc zmm1_2 zmm1_2 zmm5_2; adds dc zmm1_3 zmm1_3 zmm5_3;
adds dc zmm1_4 zmm1_4 zmm5_4; adds dc zmm1_5 zmm1_5 zmm5_5;
adds dc zmm1_6 zmm1_6 zmm5_6; adds dc zmm1_7 zmm1_7 zmm5_7;
adds dc zmm1_8 zmm1_8 zmm5_8; adds dc zmm1_9 zmm1_9 zmm5_9;
adds dc zmm1_a zmm1_a zmm5_a; adds dc zmm1_b zmm1_b zmm5_b;
adds dc zmm1_c zmm1_c zmm5_c; adds dc zmm1_d zmm1_d zmm5_d;
adds dc zmm1_e zmm1_e zmm5_e; adds dc zmm1_f zmm1_f zmm5_f;
(* vpaddd %zmm6,%zmm2,%zmm2                        #! PC = 0x55555555816c *)
adds dc zmm2_0 zmm2_0 zmm6_0; adds dc zmm2_1 zmm2_1 zmm6_1;
adds dc zmm2_2 zmm2_2 zmm6_2; adds dc zmm2_3 zmm2_3 zmm6_3;
adds dc zmm2_4 zmm2_4 zmm6_4; adds dc zmm2_5 zmm2_5 zmm6_5;
adds dc zmm2_6 zmm2_6 zmm6_6; adds dc zmm2_7 zmm2_7 zmm6_7;
adds dc zmm2_8 zmm2_8 zmm6_8; adds dc zmm2_9 zmm2_9 zmm6_9;
adds dc zmm2_a zmm2_a zmm6_a; adds dc zmm2_b zmm2_b zmm6_b;
adds dc zmm2_c zmm2_c zmm6_c; adds dc zmm2_d zmm2_d zmm6_d;
adds dc zmm2_e zmm2_e zmm6_e; adds dc zmm2_f zmm2_f zmm6_f;
(* vpaddd %zmm7,%zmm3,%zmm3                        #! PC = 0x555555558172 *)
adds dc zmm3_0 zmm3_0 zmm7_0; adds dc zmm3_1 zmm3_1 zmm7_1;
adds dc zmm3_2 zmm3_2 zmm7_2; adds dc zmm3_3 zmm3_3 zmm7_3;
adds dc zmm3_4 zmm3_4 zmm7_4; adds dc zmm3_5 zmm3_5 zmm7_5;
adds dc zmm3_6 zmm3_6 zmm7_6; adds dc zmm3_7 zmm3_7 zmm7_7;
adds dc zmm3_8 zmm3_8 zmm7_8; adds dc zmm3_9 zmm3_9 zmm7_9;
adds dc zmm3_a zmm3_a zmm7_a; adds dc zmm3_b zmm3_b zmm7_b;
adds dc zmm3_c zmm3_c zmm7_c; adds dc zmm3_d zmm3_d zmm7_d;
adds dc zmm3_e zmm3_e zmm7_e; adds dc zmm3_f zmm3_f zmm7_f;
(* vpxord %zmm0,%zmm12,%zmm12                      #! PC = 0x555555558178 *)
xor zmm12_0@uint32 zmm12_0 zmm0_0; xor zmm12_1@uint32 zmm12_1 zmm0_1;
xor zmm12_2@uint32 zmm12_2 zmm0_2; xor zmm12_3@uint32 zmm12_3 zmm0_3;
xor zmm12_4@uint32 zmm12_4 zmm0_4; xor zmm12_5@uint32 zmm12_5 zmm0_5;
xor zmm12_6@uint32 zmm12_6 zmm0_6; xor zmm12_7@uint32 zmm12_7 zmm0_7;
xor zmm12_8@uint32 zmm12_8 zmm0_8; xor zmm12_9@uint32 zmm12_9 zmm0_9;
xor zmm12_a@uint32 zmm12_a zmm0_a; xor zmm12_b@uint32 zmm12_b zmm0_b;
xor zmm12_c@uint32 zmm12_c zmm0_c; xor zmm12_d@uint32 zmm12_d zmm0_d;
xor zmm12_e@uint32 zmm12_e zmm0_e; xor zmm12_f@uint32 zmm12_f zmm0_f;
(* vpxord %zmm1,%zmm13,%zmm13                      #! PC = 0x55555555817e *)
xor zmm13_0@uint32 zmm13_0 zmm1_0; xor zmm13_1@uint32 zmm13_1 zmm1_1;
xor zmm13_2@uint32 zmm13_2 zmm1_2; xor zmm13_3@uint32 zmm13_3 zmm1_3;
xor zmm13_4@uint32 zmm13_4 zmm1_4; xor zmm13_5@uint32 zmm13_5 zmm1_5;
xor zmm13_6@uint32 zmm13_6 zmm1_6; xor zmm13_7@uint32 zmm13_7 zmm1_7;
xor zmm13_8@uint32 zmm13_8 zmm1_8; xor zmm13_9@uint32 zmm13_9 zmm1_9;
xor zmm13_a@uint32 zmm13_a zmm1_a; xor zmm13_b@uint32 zmm13_b zmm1_b;
xor zmm13_c@uint32 zmm13_c zmm1_c; xor zmm13_d@uint32 zmm13_d zmm1_d;
xor zmm13_e@uint32 zmm13_e zmm1_e; xor zmm13_f@uint32 zmm13_f zmm1_f;
(* vpxord %zmm2,%zmm14,%zmm14                      #! PC = 0x555555558184 *)
xor zmm14_0@uint32 zmm14_0 zmm2_0; xor zmm14_1@uint32 zmm14_1 zmm2_1;
xor zmm14_2@uint32 zmm14_2 zmm2_2; xor zmm14_3@uint32 zmm14_3 zmm2_3;
xor zmm14_4@uint32 zmm14_4 zmm2_4; xor zmm14_5@uint32 zmm14_5 zmm2_5;
xor zmm14_6@uint32 zmm14_6 zmm2_6; xor zmm14_7@uint32 zmm14_7 zmm2_7;
xor zmm14_8@uint32 zmm14_8 zmm2_8; xor zmm14_9@uint32 zmm14_9 zmm2_9;
xor zmm14_a@uint32 zmm14_a zmm2_a; xor zmm14_b@uint32 zmm14_b zmm2_b;
xor zmm14_c@uint32 zmm14_c zmm2_c; xor zmm14_d@uint32 zmm14_d zmm2_d;
xor zmm14_e@uint32 zmm14_e zmm2_e; xor zmm14_f@uint32 zmm14_f zmm2_f;
(* vpxord %zmm3,%zmm15,%zmm15                      #! PC = 0x55555555818a *)
xor zmm15_0@uint32 zmm15_0 zmm3_0; xor zmm15_1@uint32 zmm15_1 zmm3_1;
xor zmm15_2@uint32 zmm15_2 zmm3_2; xor zmm15_3@uint32 zmm15_3 zmm3_3;
xor zmm15_4@uint32 zmm15_4 zmm3_4; xor zmm15_5@uint32 zmm15_5 zmm3_5;
xor zmm15_6@uint32 zmm15_6 zmm3_6; xor zmm15_7@uint32 zmm15_7 zmm3_7;
xor zmm15_8@uint32 zmm15_8 zmm3_8; xor zmm15_9@uint32 zmm15_9 zmm3_9;
xor zmm15_a@uint32 zmm15_a zmm3_a; xor zmm15_b@uint32 zmm15_b zmm3_b;
xor zmm15_c@uint32 zmm15_c zmm3_c; xor zmm15_d@uint32 zmm15_d zmm3_d;
xor zmm15_e@uint32 zmm15_e zmm3_e; xor zmm15_f@uint32 zmm15_f zmm3_f;
(* vprold $0x10,%zmm12,%zmm12                      #! PC = 0x555555558190 *)
rol zmm12_0@uint32 zmm12_0 0x10; rol zmm12_1@uint32 zmm12_1 0x10;
rol zmm12_2@uint32 zmm12_2 0x10; rol zmm12_3@uint32 zmm12_3 0x10;
rol zmm12_4@uint32 zmm12_4 0x10; rol zmm12_5@uint32 zmm12_5 0x10;
rol zmm12_6@uint32 zmm12_6 0x10; rol zmm12_7@uint32 zmm12_7 0x10;
rol zmm12_8@uint32 zmm12_8 0x10; rol zmm12_9@uint32 zmm12_9 0x10;
rol zmm12_a@uint32 zmm12_a 0x10; rol zmm12_b@uint32 zmm12_b 0x10;
rol zmm12_c@uint32 zmm12_c 0x10; rol zmm12_d@uint32 zmm12_d 0x10;
rol zmm12_e@uint32 zmm12_e 0x10; rol zmm12_f@uint32 zmm12_f 0x10;
(* vprold $0x10,%zmm13,%zmm13                      #! PC = 0x555555558197 *)
rol zmm13_0@uint32 zmm13_0 0x10; rol zmm13_1@uint32 zmm13_1 0x10;
rol zmm13_2@uint32 zmm13_2 0x10; rol zmm13_3@uint32 zmm13_3 0x10;
rol zmm13_4@uint32 zmm13_4 0x10; rol zmm13_5@uint32 zmm13_5 0x10;
rol zmm13_6@uint32 zmm13_6 0x10; rol zmm13_7@uint32 zmm13_7 0x10;
rol zmm13_8@uint32 zmm13_8 0x10; rol zmm13_9@uint32 zmm13_9 0x10;
rol zmm13_a@uint32 zmm13_a 0x10; rol zmm13_b@uint32 zmm13_b 0x10;
rol zmm13_c@uint32 zmm13_c 0x10; rol zmm13_d@uint32 zmm13_d 0x10;
rol zmm13_e@uint32 zmm13_e 0x10; rol zmm13_f@uint32 zmm13_f 0x10;
(* vprold $0x10,%zmm14,%zmm14                      #! PC = 0x55555555819e *)
rol zmm14_0@uint32 zmm14_0 0x10; rol zmm14_1@uint32 zmm14_1 0x10;
rol zmm14_2@uint32 zmm14_2 0x10; rol zmm14_3@uint32 zmm14_3 0x10;
rol zmm14_4@uint32 zmm14_4 0x10; rol zmm14_5@uint32 zmm14_5 0x10;
rol zmm14_6@uint32 zmm14_6 0x10; rol zmm14_7@uint32 zmm14_7 0x10;
rol zmm14_8@uint32 zmm14_8 0x10; rol zmm14_9@uint32 zmm14_9 0x10;
rol zmm14_a@uint32 zmm14_a 0x10; rol zmm14_b@uint32 zmm14_b 0x10;
rol zmm14_c@uint32 zmm14_c 0x10; rol zmm14_d@uint32 zmm14_d 0x10;
rol zmm14_e@uint32 zmm14_e 0x10; rol zmm14_f@uint32 zmm14_f 0x10;
(* vprold $0x10,%zmm15,%zmm15                      #! PC = 0x5555555581a5 *)
rol zmm15_0@uint32 zmm15_0 0x10; rol zmm15_1@uint32 zmm15_1 0x10;
rol zmm15_2@uint32 zmm15_2 0x10; rol zmm15_3@uint32 zmm15_3 0x10;
rol zmm15_4@uint32 zmm15_4 0x10; rol zmm15_5@uint32 zmm15_5 0x10;
rol zmm15_6@uint32 zmm15_6 0x10; rol zmm15_7@uint32 zmm15_7 0x10;
rol zmm15_8@uint32 zmm15_8 0x10; rol zmm15_9@uint32 zmm15_9 0x10;
rol zmm15_a@uint32 zmm15_a 0x10; rol zmm15_b@uint32 zmm15_b 0x10;
rol zmm15_c@uint32 zmm15_c 0x10; rol zmm15_d@uint32 zmm15_d 0x10;
rol zmm15_e@uint32 zmm15_e 0x10; rol zmm15_f@uint32 zmm15_f 0x10;
(* vpaddd %zmm12,%zmm8,%zmm8                       #! PC = 0x5555555581ac *)
adds dc zmm8_0 zmm8_0 zmm12_0; adds dc zmm8_1 zmm8_1 zmm12_1;
adds dc zmm8_2 zmm8_2 zmm12_2; adds dc zmm8_3 zmm8_3 zmm12_3;
adds dc zmm8_4 zmm8_4 zmm12_4; adds dc zmm8_5 zmm8_5 zmm12_5;
adds dc zmm8_6 zmm8_6 zmm12_6; adds dc zmm8_7 zmm8_7 zmm12_7;
adds dc zmm8_8 zmm8_8 zmm12_8; adds dc zmm8_9 zmm8_9 zmm12_9;
adds dc zmm8_a zmm8_a zmm12_a; adds dc zmm8_b zmm8_b zmm12_b;
adds dc zmm8_c zmm8_c zmm12_c; adds dc zmm8_d zmm8_d zmm12_d;
adds dc zmm8_e zmm8_e zmm12_e; adds dc zmm8_f zmm8_f zmm12_f;
(* vpaddd %zmm13,%zmm9,%zmm9                       #! PC = 0x5555555581b2 *)
adds dc zmm9_0 zmm9_0 zmm13_0; adds dc zmm9_1 zmm9_1 zmm13_1;
adds dc zmm9_2 zmm9_2 zmm13_2; adds dc zmm9_3 zmm9_3 zmm13_3;
adds dc zmm9_4 zmm9_4 zmm13_4; adds dc zmm9_5 zmm9_5 zmm13_5;
adds dc zmm9_6 zmm9_6 zmm13_6; adds dc zmm9_7 zmm9_7 zmm13_7;
adds dc zmm9_8 zmm9_8 zmm13_8; adds dc zmm9_9 zmm9_9 zmm13_9;
adds dc zmm9_a zmm9_a zmm13_a; adds dc zmm9_b zmm9_b zmm13_b;
adds dc zmm9_c zmm9_c zmm13_c; adds dc zmm9_d zmm9_d zmm13_d;
adds dc zmm9_e zmm9_e zmm13_e; adds dc zmm9_f zmm9_f zmm13_f;
(* vpaddd %zmm14,%zmm10,%zmm10                     #! PC = 0x5555555581b8 *)
adds dc zmm10_0 zmm10_0 zmm14_0; adds dc zmm10_1 zmm10_1 zmm14_1;
adds dc zmm10_2 zmm10_2 zmm14_2; adds dc zmm10_3 zmm10_3 zmm14_3;
adds dc zmm10_4 zmm10_4 zmm14_4; adds dc zmm10_5 zmm10_5 zmm14_5;
adds dc zmm10_6 zmm10_6 zmm14_6; adds dc zmm10_7 zmm10_7 zmm14_7;
adds dc zmm10_8 zmm10_8 zmm14_8; adds dc zmm10_9 zmm10_9 zmm14_9;
adds dc zmm10_a zmm10_a zmm14_a; adds dc zmm10_b zmm10_b zmm14_b;
adds dc zmm10_c zmm10_c zmm14_c; adds dc zmm10_d zmm10_d zmm14_d;
adds dc zmm10_e zmm10_e zmm14_e; adds dc zmm10_f zmm10_f zmm14_f;
(* vpaddd %zmm15,%zmm11,%zmm11                     #! PC = 0x5555555581be *)
adds dc zmm11_0 zmm11_0 zmm15_0; adds dc zmm11_1 zmm11_1 zmm15_1;
adds dc zmm11_2 zmm11_2 zmm15_2; adds dc zmm11_3 zmm11_3 zmm15_3;
adds dc zmm11_4 zmm11_4 zmm15_4; adds dc zmm11_5 zmm11_5 zmm15_5;
adds dc zmm11_6 zmm11_6 zmm15_6; adds dc zmm11_7 zmm11_7 zmm15_7;
adds dc zmm11_8 zmm11_8 zmm15_8; adds dc zmm11_9 zmm11_9 zmm15_9;
adds dc zmm11_a zmm11_a zmm15_a; adds dc zmm11_b zmm11_b zmm15_b;
adds dc zmm11_c zmm11_c zmm15_c; adds dc zmm11_d zmm11_d zmm15_d;
adds dc zmm11_e zmm11_e zmm15_e; adds dc zmm11_f zmm11_f zmm15_f;
(* vpxord %zmm8,%zmm4,%zmm4                        #! PC = 0x5555555581c4 *)
xor zmm4_0@uint32 zmm4_0 zmm8_0; xor zmm4_1@uint32 zmm4_1 zmm8_1;
xor zmm4_2@uint32 zmm4_2 zmm8_2; xor zmm4_3@uint32 zmm4_3 zmm8_3;
xor zmm4_4@uint32 zmm4_4 zmm8_4; xor zmm4_5@uint32 zmm4_5 zmm8_5;
xor zmm4_6@uint32 zmm4_6 zmm8_6; xor zmm4_7@uint32 zmm4_7 zmm8_7;
xor zmm4_8@uint32 zmm4_8 zmm8_8; xor zmm4_9@uint32 zmm4_9 zmm8_9;
xor zmm4_a@uint32 zmm4_a zmm8_a; xor zmm4_b@uint32 zmm4_b zmm8_b;
xor zmm4_c@uint32 zmm4_c zmm8_c; xor zmm4_d@uint32 zmm4_d zmm8_d;
xor zmm4_e@uint32 zmm4_e zmm8_e; xor zmm4_f@uint32 zmm4_f zmm8_f;
(* vpxord %zmm9,%zmm5,%zmm5                        #! PC = 0x5555555581ca *)
xor zmm5_0@uint32 zmm5_0 zmm9_0; xor zmm5_1@uint32 zmm5_1 zmm9_1;
xor zmm5_2@uint32 zmm5_2 zmm9_2; xor zmm5_3@uint32 zmm5_3 zmm9_3;
xor zmm5_4@uint32 zmm5_4 zmm9_4; xor zmm5_5@uint32 zmm5_5 zmm9_5;
xor zmm5_6@uint32 zmm5_6 zmm9_6; xor zmm5_7@uint32 zmm5_7 zmm9_7;
xor zmm5_8@uint32 zmm5_8 zmm9_8; xor zmm5_9@uint32 zmm5_9 zmm9_9;
xor zmm5_a@uint32 zmm5_a zmm9_a; xor zmm5_b@uint32 zmm5_b zmm9_b;
xor zmm5_c@uint32 zmm5_c zmm9_c; xor zmm5_d@uint32 zmm5_d zmm9_d;
xor zmm5_e@uint32 zmm5_e zmm9_e; xor zmm5_f@uint32 zmm5_f zmm9_f;
(* vpxord %zmm10,%zmm6,%zmm6                       #! PC = 0x5555555581d0 *)
xor zmm6_0@uint32 zmm6_0 zmm10_0; xor zmm6_1@uint32 zmm6_1 zmm10_1;
xor zmm6_2@uint32 zmm6_2 zmm10_2; xor zmm6_3@uint32 zmm6_3 zmm10_3;
xor zmm6_4@uint32 zmm6_4 zmm10_4; xor zmm6_5@uint32 zmm6_5 zmm10_5;
xor zmm6_6@uint32 zmm6_6 zmm10_6; xor zmm6_7@uint32 zmm6_7 zmm10_7;
xor zmm6_8@uint32 zmm6_8 zmm10_8; xor zmm6_9@uint32 zmm6_9 zmm10_9;
xor zmm6_a@uint32 zmm6_a zmm10_a; xor zmm6_b@uint32 zmm6_b zmm10_b;
xor zmm6_c@uint32 zmm6_c zmm10_c; xor zmm6_d@uint32 zmm6_d zmm10_d;
xor zmm6_e@uint32 zmm6_e zmm10_e; xor zmm6_f@uint32 zmm6_f zmm10_f;
(* vpxord %zmm11,%zmm7,%zmm7                       #! PC = 0x5555555581d6 *)
xor zmm7_0@uint32 zmm7_0 zmm11_0; xor zmm7_1@uint32 zmm7_1 zmm11_1;
xor zmm7_2@uint32 zmm7_2 zmm11_2; xor zmm7_3@uint32 zmm7_3 zmm11_3;
xor zmm7_4@uint32 zmm7_4 zmm11_4; xor zmm7_5@uint32 zmm7_5 zmm11_5;
xor zmm7_6@uint32 zmm7_6 zmm11_6; xor zmm7_7@uint32 zmm7_7 zmm11_7;
xor zmm7_8@uint32 zmm7_8 zmm11_8; xor zmm7_9@uint32 zmm7_9 zmm11_9;
xor zmm7_a@uint32 zmm7_a zmm11_a; xor zmm7_b@uint32 zmm7_b zmm11_b;
xor zmm7_c@uint32 zmm7_c zmm11_c; xor zmm7_d@uint32 zmm7_d zmm11_d;
xor zmm7_e@uint32 zmm7_e zmm11_e; xor zmm7_f@uint32 zmm7_f zmm11_f;
(* vprold $0xc,%zmm4,%zmm4                         #! PC = 0x5555555581dc *)
rol zmm4_0@uint32 zmm4_0 0xc; rol zmm4_1@uint32 zmm4_1 0xc;
rol zmm4_2@uint32 zmm4_2 0xc; rol zmm4_3@uint32 zmm4_3 0xc;
rol zmm4_4@uint32 zmm4_4 0xc; rol zmm4_5@uint32 zmm4_5 0xc;
rol zmm4_6@uint32 zmm4_6 0xc; rol zmm4_7@uint32 zmm4_7 0xc;
rol zmm4_8@uint32 zmm4_8 0xc; rol zmm4_9@uint32 zmm4_9 0xc;
rol zmm4_a@uint32 zmm4_a 0xc; rol zmm4_b@uint32 zmm4_b 0xc;
rol zmm4_c@uint32 zmm4_c 0xc; rol zmm4_d@uint32 zmm4_d 0xc;
rol zmm4_e@uint32 zmm4_e 0xc; rol zmm4_f@uint32 zmm4_f 0xc;
(* vprold $0xc,%zmm5,%zmm5                         #! PC = 0x5555555581e3 *)
rol zmm5_0@uint32 zmm5_0 0xc; rol zmm5_1@uint32 zmm5_1 0xc;
rol zmm5_2@uint32 zmm5_2 0xc; rol zmm5_3@uint32 zmm5_3 0xc;
rol zmm5_4@uint32 zmm5_4 0xc; rol zmm5_5@uint32 zmm5_5 0xc;
rol zmm5_6@uint32 zmm5_6 0xc; rol zmm5_7@uint32 zmm5_7 0xc;
rol zmm5_8@uint32 zmm5_8 0xc; rol zmm5_9@uint32 zmm5_9 0xc;
rol zmm5_a@uint32 zmm5_a 0xc; rol zmm5_b@uint32 zmm5_b 0xc;
rol zmm5_c@uint32 zmm5_c 0xc; rol zmm5_d@uint32 zmm5_d 0xc;
rol zmm5_e@uint32 zmm5_e 0xc; rol zmm5_f@uint32 zmm5_f 0xc;
(* vprold $0xc,%zmm6,%zmm6                         #! PC = 0x5555555581ea *)
rol zmm6_0@uint32 zmm6_0 0xc; rol zmm6_1@uint32 zmm6_1 0xc;
rol zmm6_2@uint32 zmm6_2 0xc; rol zmm6_3@uint32 zmm6_3 0xc;
rol zmm6_4@uint32 zmm6_4 0xc; rol zmm6_5@uint32 zmm6_5 0xc;
rol zmm6_6@uint32 zmm6_6 0xc; rol zmm6_7@uint32 zmm6_7 0xc;
rol zmm6_8@uint32 zmm6_8 0xc; rol zmm6_9@uint32 zmm6_9 0xc;
rol zmm6_a@uint32 zmm6_a 0xc; rol zmm6_b@uint32 zmm6_b 0xc;
rol zmm6_c@uint32 zmm6_c 0xc; rol zmm6_d@uint32 zmm6_d 0xc;
rol zmm6_e@uint32 zmm6_e 0xc; rol zmm6_f@uint32 zmm6_f 0xc;
(* vprold $0xc,%zmm7,%zmm7                         #! PC = 0x5555555581f1 *)
rol zmm7_0@uint32 zmm7_0 0xc; rol zmm7_1@uint32 zmm7_1 0xc;
rol zmm7_2@uint32 zmm7_2 0xc; rol zmm7_3@uint32 zmm7_3 0xc;
rol zmm7_4@uint32 zmm7_4 0xc; rol zmm7_5@uint32 zmm7_5 0xc;
rol zmm7_6@uint32 zmm7_6 0xc; rol zmm7_7@uint32 zmm7_7 0xc;
rol zmm7_8@uint32 zmm7_8 0xc; rol zmm7_9@uint32 zmm7_9 0xc;
rol zmm7_a@uint32 zmm7_a 0xc; rol zmm7_b@uint32 zmm7_b 0xc;
rol zmm7_c@uint32 zmm7_c 0xc; rol zmm7_d@uint32 zmm7_d 0xc;
rol zmm7_e@uint32 zmm7_e 0xc; rol zmm7_f@uint32 zmm7_f 0xc;
(* vpaddd %zmm4,%zmm0,%zmm0                        #! PC = 0x5555555581f8 *)
adds dc zmm0_0 zmm0_0 zmm4_0; adds dc zmm0_1 zmm0_1 zmm4_1;
adds dc zmm0_2 zmm0_2 zmm4_2; adds dc zmm0_3 zmm0_3 zmm4_3;
adds dc zmm0_4 zmm0_4 zmm4_4; adds dc zmm0_5 zmm0_5 zmm4_5;
adds dc zmm0_6 zmm0_6 zmm4_6; adds dc zmm0_7 zmm0_7 zmm4_7;
adds dc zmm0_8 zmm0_8 zmm4_8; adds dc zmm0_9 zmm0_9 zmm4_9;
adds dc zmm0_a zmm0_a zmm4_a; adds dc zmm0_b zmm0_b zmm4_b;
adds dc zmm0_c zmm0_c zmm4_c; adds dc zmm0_d zmm0_d zmm4_d;
adds dc zmm0_e zmm0_e zmm4_e; adds dc zmm0_f zmm0_f zmm4_f;
(* vpaddd %zmm5,%zmm1,%zmm1                        #! PC = 0x5555555581fe *)
adds dc zmm1_0 zmm1_0 zmm5_0; adds dc zmm1_1 zmm1_1 zmm5_1;
adds dc zmm1_2 zmm1_2 zmm5_2; adds dc zmm1_3 zmm1_3 zmm5_3;
adds dc zmm1_4 zmm1_4 zmm5_4; adds dc zmm1_5 zmm1_5 zmm5_5;
adds dc zmm1_6 zmm1_6 zmm5_6; adds dc zmm1_7 zmm1_7 zmm5_7;
adds dc zmm1_8 zmm1_8 zmm5_8; adds dc zmm1_9 zmm1_9 zmm5_9;
adds dc zmm1_a zmm1_a zmm5_a; adds dc zmm1_b zmm1_b zmm5_b;
adds dc zmm1_c zmm1_c zmm5_c; adds dc zmm1_d zmm1_d zmm5_d;
adds dc zmm1_e zmm1_e zmm5_e; adds dc zmm1_f zmm1_f zmm5_f;
(* vpaddd %zmm6,%zmm2,%zmm2                        #! PC = 0x555555558204 *)
adds dc zmm2_0 zmm2_0 zmm6_0; adds dc zmm2_1 zmm2_1 zmm6_1;
adds dc zmm2_2 zmm2_2 zmm6_2; adds dc zmm2_3 zmm2_3 zmm6_3;
adds dc zmm2_4 zmm2_4 zmm6_4; adds dc zmm2_5 zmm2_5 zmm6_5;
adds dc zmm2_6 zmm2_6 zmm6_6; adds dc zmm2_7 zmm2_7 zmm6_7;
adds dc zmm2_8 zmm2_8 zmm6_8; adds dc zmm2_9 zmm2_9 zmm6_9;
adds dc zmm2_a zmm2_a zmm6_a; adds dc zmm2_b zmm2_b zmm6_b;
adds dc zmm2_c zmm2_c zmm6_c; adds dc zmm2_d zmm2_d zmm6_d;
adds dc zmm2_e zmm2_e zmm6_e; adds dc zmm2_f zmm2_f zmm6_f;
(* vpaddd %zmm7,%zmm3,%zmm3                        #! PC = 0x55555555820a *)
adds dc zmm3_0 zmm3_0 zmm7_0; adds dc zmm3_1 zmm3_1 zmm7_1;
adds dc zmm3_2 zmm3_2 zmm7_2; adds dc zmm3_3 zmm3_3 zmm7_3;
adds dc zmm3_4 zmm3_4 zmm7_4; adds dc zmm3_5 zmm3_5 zmm7_5;
adds dc zmm3_6 zmm3_6 zmm7_6; adds dc zmm3_7 zmm3_7 zmm7_7;
adds dc zmm3_8 zmm3_8 zmm7_8; adds dc zmm3_9 zmm3_9 zmm7_9;
adds dc zmm3_a zmm3_a zmm7_a; adds dc zmm3_b zmm3_b zmm7_b;
adds dc zmm3_c zmm3_c zmm7_c; adds dc zmm3_d zmm3_d zmm7_d;
adds dc zmm3_e zmm3_e zmm7_e; adds dc zmm3_f zmm3_f zmm7_f;
(* vpxord %zmm0,%zmm12,%zmm12                      #! PC = 0x555555558210 *)
xor zmm12_0@uint32 zmm12_0 zmm0_0; xor zmm12_1@uint32 zmm12_1 zmm0_1;
xor zmm12_2@uint32 zmm12_2 zmm0_2; xor zmm12_3@uint32 zmm12_3 zmm0_3;
xor zmm12_4@uint32 zmm12_4 zmm0_4; xor zmm12_5@uint32 zmm12_5 zmm0_5;
xor zmm12_6@uint32 zmm12_6 zmm0_6; xor zmm12_7@uint32 zmm12_7 zmm0_7;
xor zmm12_8@uint32 zmm12_8 zmm0_8; xor zmm12_9@uint32 zmm12_9 zmm0_9;
xor zmm12_a@uint32 zmm12_a zmm0_a; xor zmm12_b@uint32 zmm12_b zmm0_b;
xor zmm12_c@uint32 zmm12_c zmm0_c; xor zmm12_d@uint32 zmm12_d zmm0_d;
xor zmm12_e@uint32 zmm12_e zmm0_e; xor zmm12_f@uint32 zmm12_f zmm0_f;
(* vpxord %zmm1,%zmm13,%zmm13                      #! PC = 0x555555558216 *)
xor zmm13_0@uint32 zmm13_0 zmm1_0; xor zmm13_1@uint32 zmm13_1 zmm1_1;
xor zmm13_2@uint32 zmm13_2 zmm1_2; xor zmm13_3@uint32 zmm13_3 zmm1_3;
xor zmm13_4@uint32 zmm13_4 zmm1_4; xor zmm13_5@uint32 zmm13_5 zmm1_5;
xor zmm13_6@uint32 zmm13_6 zmm1_6; xor zmm13_7@uint32 zmm13_7 zmm1_7;
xor zmm13_8@uint32 zmm13_8 zmm1_8; xor zmm13_9@uint32 zmm13_9 zmm1_9;
xor zmm13_a@uint32 zmm13_a zmm1_a; xor zmm13_b@uint32 zmm13_b zmm1_b;
xor zmm13_c@uint32 zmm13_c zmm1_c; xor zmm13_d@uint32 zmm13_d zmm1_d;
xor zmm13_e@uint32 zmm13_e zmm1_e; xor zmm13_f@uint32 zmm13_f zmm1_f;
(* vpxord %zmm2,%zmm14,%zmm14                      #! PC = 0x55555555821c *)
xor zmm14_0@uint32 zmm14_0 zmm2_0; xor zmm14_1@uint32 zmm14_1 zmm2_1;
xor zmm14_2@uint32 zmm14_2 zmm2_2; xor zmm14_3@uint32 zmm14_3 zmm2_3;
xor zmm14_4@uint32 zmm14_4 zmm2_4; xor zmm14_5@uint32 zmm14_5 zmm2_5;
xor zmm14_6@uint32 zmm14_6 zmm2_6; xor zmm14_7@uint32 zmm14_7 zmm2_7;
xor zmm14_8@uint32 zmm14_8 zmm2_8; xor zmm14_9@uint32 zmm14_9 zmm2_9;
xor zmm14_a@uint32 zmm14_a zmm2_a; xor zmm14_b@uint32 zmm14_b zmm2_b;
xor zmm14_c@uint32 zmm14_c zmm2_c; xor zmm14_d@uint32 zmm14_d zmm2_d;
xor zmm14_e@uint32 zmm14_e zmm2_e; xor zmm14_f@uint32 zmm14_f zmm2_f;
(* vpxord %zmm3,%zmm15,%zmm15                      #! PC = 0x555555558222 *)
xor zmm15_0@uint32 zmm15_0 zmm3_0; xor zmm15_1@uint32 zmm15_1 zmm3_1;
xor zmm15_2@uint32 zmm15_2 zmm3_2; xor zmm15_3@uint32 zmm15_3 zmm3_3;
xor zmm15_4@uint32 zmm15_4 zmm3_4; xor zmm15_5@uint32 zmm15_5 zmm3_5;
xor zmm15_6@uint32 zmm15_6 zmm3_6; xor zmm15_7@uint32 zmm15_7 zmm3_7;
xor zmm15_8@uint32 zmm15_8 zmm3_8; xor zmm15_9@uint32 zmm15_9 zmm3_9;
xor zmm15_a@uint32 zmm15_a zmm3_a; xor zmm15_b@uint32 zmm15_b zmm3_b;
xor zmm15_c@uint32 zmm15_c zmm3_c; xor zmm15_d@uint32 zmm15_d zmm3_d;
xor zmm15_e@uint32 zmm15_e zmm3_e; xor zmm15_f@uint32 zmm15_f zmm3_f;
(* vprold $0x8,%zmm12,%zmm12                       #! PC = 0x555555558228 *)
rol zmm12_0@uint32 zmm12_0 0x8; rol zmm12_1@uint32 zmm12_1 0x8;
rol zmm12_2@uint32 zmm12_2 0x8; rol zmm12_3@uint32 zmm12_3 0x8;
rol zmm12_4@uint32 zmm12_4 0x8; rol zmm12_5@uint32 zmm12_5 0x8;
rol zmm12_6@uint32 zmm12_6 0x8; rol zmm12_7@uint32 zmm12_7 0x8;
rol zmm12_8@uint32 zmm12_8 0x8; rol zmm12_9@uint32 zmm12_9 0x8;
rol zmm12_a@uint32 zmm12_a 0x8; rol zmm12_b@uint32 zmm12_b 0x8;
rol zmm12_c@uint32 zmm12_c 0x8; rol zmm12_d@uint32 zmm12_d 0x8;
rol zmm12_e@uint32 zmm12_e 0x8; rol zmm12_f@uint32 zmm12_f 0x8;
(* vprold $0x8,%zmm13,%zmm13                       #! PC = 0x55555555822f *)
rol zmm13_0@uint32 zmm13_0 0x8; rol zmm13_1@uint32 zmm13_1 0x8;
rol zmm13_2@uint32 zmm13_2 0x8; rol zmm13_3@uint32 zmm13_3 0x8;
rol zmm13_4@uint32 zmm13_4 0x8; rol zmm13_5@uint32 zmm13_5 0x8;
rol zmm13_6@uint32 zmm13_6 0x8; rol zmm13_7@uint32 zmm13_7 0x8;
rol zmm13_8@uint32 zmm13_8 0x8; rol zmm13_9@uint32 zmm13_9 0x8;
rol zmm13_a@uint32 zmm13_a 0x8; rol zmm13_b@uint32 zmm13_b 0x8;
rol zmm13_c@uint32 zmm13_c 0x8; rol zmm13_d@uint32 zmm13_d 0x8;
rol zmm13_e@uint32 zmm13_e 0x8; rol zmm13_f@uint32 zmm13_f 0x8;
(* vprold $0x8,%zmm14,%zmm14                       #! PC = 0x555555558236 *)
rol zmm14_0@uint32 zmm14_0 0x8; rol zmm14_1@uint32 zmm14_1 0x8;
rol zmm14_2@uint32 zmm14_2 0x8; rol zmm14_3@uint32 zmm14_3 0x8;
rol zmm14_4@uint32 zmm14_4 0x8; rol zmm14_5@uint32 zmm14_5 0x8;
rol zmm14_6@uint32 zmm14_6 0x8; rol zmm14_7@uint32 zmm14_7 0x8;
rol zmm14_8@uint32 zmm14_8 0x8; rol zmm14_9@uint32 zmm14_9 0x8;
rol zmm14_a@uint32 zmm14_a 0x8; rol zmm14_b@uint32 zmm14_b 0x8;
rol zmm14_c@uint32 zmm14_c 0x8; rol zmm14_d@uint32 zmm14_d 0x8;
rol zmm14_e@uint32 zmm14_e 0x8; rol zmm14_f@uint32 zmm14_f 0x8;
(* vprold $0x8,%zmm15,%zmm15                       #! PC = 0x55555555823d *)
rol zmm15_0@uint32 zmm15_0 0x8; rol zmm15_1@uint32 zmm15_1 0x8;
rol zmm15_2@uint32 zmm15_2 0x8; rol zmm15_3@uint32 zmm15_3 0x8;
rol zmm15_4@uint32 zmm15_4 0x8; rol zmm15_5@uint32 zmm15_5 0x8;
rol zmm15_6@uint32 zmm15_6 0x8; rol zmm15_7@uint32 zmm15_7 0x8;
rol zmm15_8@uint32 zmm15_8 0x8; rol zmm15_9@uint32 zmm15_9 0x8;
rol zmm15_a@uint32 zmm15_a 0x8; rol zmm15_b@uint32 zmm15_b 0x8;
rol zmm15_c@uint32 zmm15_c 0x8; rol zmm15_d@uint32 zmm15_d 0x8;
rol zmm15_e@uint32 zmm15_e 0x8; rol zmm15_f@uint32 zmm15_f 0x8;
(* vpaddd %zmm12,%zmm8,%zmm8                       #! PC = 0x555555558244 *)
adds dc zmm8_0 zmm8_0 zmm12_0; adds dc zmm8_1 zmm8_1 zmm12_1;
adds dc zmm8_2 zmm8_2 zmm12_2; adds dc zmm8_3 zmm8_3 zmm12_3;
adds dc zmm8_4 zmm8_4 zmm12_4; adds dc zmm8_5 zmm8_5 zmm12_5;
adds dc zmm8_6 zmm8_6 zmm12_6; adds dc zmm8_7 zmm8_7 zmm12_7;
adds dc zmm8_8 zmm8_8 zmm12_8; adds dc zmm8_9 zmm8_9 zmm12_9;
adds dc zmm8_a zmm8_a zmm12_a; adds dc zmm8_b zmm8_b zmm12_b;
adds dc zmm8_c zmm8_c zmm12_c; adds dc zmm8_d zmm8_d zmm12_d;
adds dc zmm8_e zmm8_e zmm12_e; adds dc zmm8_f zmm8_f zmm12_f;
(* vpaddd %zmm13,%zmm9,%zmm9                       #! PC = 0x55555555824a *)
adds dc zmm9_0 zmm9_0 zmm13_0; adds dc zmm9_1 zmm9_1 zmm13_1;
adds dc zmm9_2 zmm9_2 zmm13_2; adds dc zmm9_3 zmm9_3 zmm13_3;
adds dc zmm9_4 zmm9_4 zmm13_4; adds dc zmm9_5 zmm9_5 zmm13_5;
adds dc zmm9_6 zmm9_6 zmm13_6; adds dc zmm9_7 zmm9_7 zmm13_7;
adds dc zmm9_8 zmm9_8 zmm13_8; adds dc zmm9_9 zmm9_9 zmm13_9;
adds dc zmm9_a zmm9_a zmm13_a; adds dc zmm9_b zmm9_b zmm13_b;
adds dc zmm9_c zmm9_c zmm13_c; adds dc zmm9_d zmm9_d zmm13_d;
adds dc zmm9_e zmm9_e zmm13_e; adds dc zmm9_f zmm9_f zmm13_f;
(* vpaddd %zmm14,%zmm10,%zmm10                     #! PC = 0x555555558250 *)
adds dc zmm10_0 zmm10_0 zmm14_0; adds dc zmm10_1 zmm10_1 zmm14_1;
adds dc zmm10_2 zmm10_2 zmm14_2; adds dc zmm10_3 zmm10_3 zmm14_3;
adds dc zmm10_4 zmm10_4 zmm14_4; adds dc zmm10_5 zmm10_5 zmm14_5;
adds dc zmm10_6 zmm10_6 zmm14_6; adds dc zmm10_7 zmm10_7 zmm14_7;
adds dc zmm10_8 zmm10_8 zmm14_8; adds dc zmm10_9 zmm10_9 zmm14_9;
adds dc zmm10_a zmm10_a zmm14_a; adds dc zmm10_b zmm10_b zmm14_b;
adds dc zmm10_c zmm10_c zmm14_c; adds dc zmm10_d zmm10_d zmm14_d;
adds dc zmm10_e zmm10_e zmm14_e; adds dc zmm10_f zmm10_f zmm14_f;
(* vpaddd %zmm15,%zmm11,%zmm11                     #! PC = 0x555555558256 *)
adds dc zmm11_0 zmm11_0 zmm15_0; adds dc zmm11_1 zmm11_1 zmm15_1;
adds dc zmm11_2 zmm11_2 zmm15_2; adds dc zmm11_3 zmm11_3 zmm15_3;
adds dc zmm11_4 zmm11_4 zmm15_4; adds dc zmm11_5 zmm11_5 zmm15_5;
adds dc zmm11_6 zmm11_6 zmm15_6; adds dc zmm11_7 zmm11_7 zmm15_7;
adds dc zmm11_8 zmm11_8 zmm15_8; adds dc zmm11_9 zmm11_9 zmm15_9;
adds dc zmm11_a zmm11_a zmm15_a; adds dc zmm11_b zmm11_b zmm15_b;
adds dc zmm11_c zmm11_c zmm15_c; adds dc zmm11_d zmm11_d zmm15_d;
adds dc zmm11_e zmm11_e zmm15_e; adds dc zmm11_f zmm11_f zmm15_f;
(* vpxord %zmm8,%zmm4,%zmm4                        #! PC = 0x55555555825c *)
xor zmm4_0@uint32 zmm4_0 zmm8_0; xor zmm4_1@uint32 zmm4_1 zmm8_1;
xor zmm4_2@uint32 zmm4_2 zmm8_2; xor zmm4_3@uint32 zmm4_3 zmm8_3;
xor zmm4_4@uint32 zmm4_4 zmm8_4; xor zmm4_5@uint32 zmm4_5 zmm8_5;
xor zmm4_6@uint32 zmm4_6 zmm8_6; xor zmm4_7@uint32 zmm4_7 zmm8_7;
xor zmm4_8@uint32 zmm4_8 zmm8_8; xor zmm4_9@uint32 zmm4_9 zmm8_9;
xor zmm4_a@uint32 zmm4_a zmm8_a; xor zmm4_b@uint32 zmm4_b zmm8_b;
xor zmm4_c@uint32 zmm4_c zmm8_c; xor zmm4_d@uint32 zmm4_d zmm8_d;
xor zmm4_e@uint32 zmm4_e zmm8_e; xor zmm4_f@uint32 zmm4_f zmm8_f;
(* vpxord %zmm9,%zmm5,%zmm5                        #! PC = 0x555555558262 *)
xor zmm5_0@uint32 zmm5_0 zmm9_0; xor zmm5_1@uint32 zmm5_1 zmm9_1;
xor zmm5_2@uint32 zmm5_2 zmm9_2; xor zmm5_3@uint32 zmm5_3 zmm9_3;
xor zmm5_4@uint32 zmm5_4 zmm9_4; xor zmm5_5@uint32 zmm5_5 zmm9_5;
xor zmm5_6@uint32 zmm5_6 zmm9_6; xor zmm5_7@uint32 zmm5_7 zmm9_7;
xor zmm5_8@uint32 zmm5_8 zmm9_8; xor zmm5_9@uint32 zmm5_9 zmm9_9;
xor zmm5_a@uint32 zmm5_a zmm9_a; xor zmm5_b@uint32 zmm5_b zmm9_b;
xor zmm5_c@uint32 zmm5_c zmm9_c; xor zmm5_d@uint32 zmm5_d zmm9_d;
xor zmm5_e@uint32 zmm5_e zmm9_e; xor zmm5_f@uint32 zmm5_f zmm9_f;
(* vpxord %zmm10,%zmm6,%zmm6                       #! PC = 0x555555558268 *)
xor zmm6_0@uint32 zmm6_0 zmm10_0; xor zmm6_1@uint32 zmm6_1 zmm10_1;
xor zmm6_2@uint32 zmm6_2 zmm10_2; xor zmm6_3@uint32 zmm6_3 zmm10_3;
xor zmm6_4@uint32 zmm6_4 zmm10_4; xor zmm6_5@uint32 zmm6_5 zmm10_5;
xor zmm6_6@uint32 zmm6_6 zmm10_6; xor zmm6_7@uint32 zmm6_7 zmm10_7;
xor zmm6_8@uint32 zmm6_8 zmm10_8; xor zmm6_9@uint32 zmm6_9 zmm10_9;
xor zmm6_a@uint32 zmm6_a zmm10_a; xor zmm6_b@uint32 zmm6_b zmm10_b;
xor zmm6_c@uint32 zmm6_c zmm10_c; xor zmm6_d@uint32 zmm6_d zmm10_d;
xor zmm6_e@uint32 zmm6_e zmm10_e; xor zmm6_f@uint32 zmm6_f zmm10_f;
(* vpxord %zmm11,%zmm7,%zmm7                       #! PC = 0x55555555826e *)
xor zmm7_0@uint32 zmm7_0 zmm11_0; xor zmm7_1@uint32 zmm7_1 zmm11_1;
xor zmm7_2@uint32 zmm7_2 zmm11_2; xor zmm7_3@uint32 zmm7_3 zmm11_3;
xor zmm7_4@uint32 zmm7_4 zmm11_4; xor zmm7_5@uint32 zmm7_5 zmm11_5;
xor zmm7_6@uint32 zmm7_6 zmm11_6; xor zmm7_7@uint32 zmm7_7 zmm11_7;
xor zmm7_8@uint32 zmm7_8 zmm11_8; xor zmm7_9@uint32 zmm7_9 zmm11_9;
xor zmm7_a@uint32 zmm7_a zmm11_a; xor zmm7_b@uint32 zmm7_b zmm11_b;
xor zmm7_c@uint32 zmm7_c zmm11_c; xor zmm7_d@uint32 zmm7_d zmm11_d;
xor zmm7_e@uint32 zmm7_e zmm11_e; xor zmm7_f@uint32 zmm7_f zmm11_f;
(* vprold $0x7,%zmm4,%zmm4                         #! PC = 0x555555558274 *)
rol zmm4_0@uint32 zmm4_0 0x7; rol zmm4_1@uint32 zmm4_1 0x7;
rol zmm4_2@uint32 zmm4_2 0x7; rol zmm4_3@uint32 zmm4_3 0x7;
rol zmm4_4@uint32 zmm4_4 0x7; rol zmm4_5@uint32 zmm4_5 0x7;
rol zmm4_6@uint32 zmm4_6 0x7; rol zmm4_7@uint32 zmm4_7 0x7;
rol zmm4_8@uint32 zmm4_8 0x7; rol zmm4_9@uint32 zmm4_9 0x7;
rol zmm4_a@uint32 zmm4_a 0x7; rol zmm4_b@uint32 zmm4_b 0x7;
rol zmm4_c@uint32 zmm4_c 0x7; rol zmm4_d@uint32 zmm4_d 0x7;
rol zmm4_e@uint32 zmm4_e 0x7; rol zmm4_f@uint32 zmm4_f 0x7;
(* vprold $0x7,%zmm5,%zmm5                         #! PC = 0x55555555827b *)
rol zmm5_0@uint32 zmm5_0 0x7; rol zmm5_1@uint32 zmm5_1 0x7;
rol zmm5_2@uint32 zmm5_2 0x7; rol zmm5_3@uint32 zmm5_3 0x7;
rol zmm5_4@uint32 zmm5_4 0x7; rol zmm5_5@uint32 zmm5_5 0x7;
rol zmm5_6@uint32 zmm5_6 0x7; rol zmm5_7@uint32 zmm5_7 0x7;
rol zmm5_8@uint32 zmm5_8 0x7; rol zmm5_9@uint32 zmm5_9 0x7;
rol zmm5_a@uint32 zmm5_a 0x7; rol zmm5_b@uint32 zmm5_b 0x7;
rol zmm5_c@uint32 zmm5_c 0x7; rol zmm5_d@uint32 zmm5_d 0x7;
rol zmm5_e@uint32 zmm5_e 0x7; rol zmm5_f@uint32 zmm5_f 0x7;
(* vprold $0x7,%zmm6,%zmm6                         #! PC = 0x555555558282 *)
rol zmm6_0@uint32 zmm6_0 0x7; rol zmm6_1@uint32 zmm6_1 0x7;
rol zmm6_2@uint32 zmm6_2 0x7; rol zmm6_3@uint32 zmm6_3 0x7;
rol zmm6_4@uint32 zmm6_4 0x7; rol zmm6_5@uint32 zmm6_5 0x7;
rol zmm6_6@uint32 zmm6_6 0x7; rol zmm6_7@uint32 zmm6_7 0x7;
rol zmm6_8@uint32 zmm6_8 0x7; rol zmm6_9@uint32 zmm6_9 0x7;
rol zmm6_a@uint32 zmm6_a 0x7; rol zmm6_b@uint32 zmm6_b 0x7;
rol zmm6_c@uint32 zmm6_c 0x7; rol zmm6_d@uint32 zmm6_d 0x7;
rol zmm6_e@uint32 zmm6_e 0x7; rol zmm6_f@uint32 zmm6_f 0x7;
(* vprold $0x7,%zmm7,%zmm7                         #! PC = 0x555555558289 *)
rol zmm7_0@uint32 zmm7_0 0x7; rol zmm7_1@uint32 zmm7_1 0x7;
rol zmm7_2@uint32 zmm7_2 0x7; rol zmm7_3@uint32 zmm7_3 0x7;
rol zmm7_4@uint32 zmm7_4 0x7; rol zmm7_5@uint32 zmm7_5 0x7;
rol zmm7_6@uint32 zmm7_6 0x7; rol zmm7_7@uint32 zmm7_7 0x7;
rol zmm7_8@uint32 zmm7_8 0x7; rol zmm7_9@uint32 zmm7_9 0x7;
rol zmm7_a@uint32 zmm7_a 0x7; rol zmm7_b@uint32 zmm7_b 0x7;
rol zmm7_c@uint32 zmm7_c 0x7; rol zmm7_d@uint32 zmm7_d 0x7;
rol zmm7_e@uint32 zmm7_e 0x7; rol zmm7_f@uint32 zmm7_f 0x7;
(* vpaddd %zmm5,%zmm0,%zmm0                        #! PC = 0x555555558290 *)
adds dc zmm0_0 zmm0_0 zmm5_0; adds dc zmm0_1 zmm0_1 zmm5_1;
adds dc zmm0_2 zmm0_2 zmm5_2; adds dc zmm0_3 zmm0_3 zmm5_3;
adds dc zmm0_4 zmm0_4 zmm5_4; adds dc zmm0_5 zmm0_5 zmm5_5;
adds dc zmm0_6 zmm0_6 zmm5_6; adds dc zmm0_7 zmm0_7 zmm5_7;
adds dc zmm0_8 zmm0_8 zmm5_8; adds dc zmm0_9 zmm0_9 zmm5_9;
adds dc zmm0_a zmm0_a zmm5_a; adds dc zmm0_b zmm0_b zmm5_b;
adds dc zmm0_c zmm0_c zmm5_c; adds dc zmm0_d zmm0_d zmm5_d;
adds dc zmm0_e zmm0_e zmm5_e; adds dc zmm0_f zmm0_f zmm5_f;
(* vpaddd %zmm6,%zmm1,%zmm1                        #! PC = 0x555555558296 *)
adds dc zmm1_0 zmm1_0 zmm6_0; adds dc zmm1_1 zmm1_1 zmm6_1;
adds dc zmm1_2 zmm1_2 zmm6_2; adds dc zmm1_3 zmm1_3 zmm6_3;
adds dc zmm1_4 zmm1_4 zmm6_4; adds dc zmm1_5 zmm1_5 zmm6_5;
adds dc zmm1_6 zmm1_6 zmm6_6; adds dc zmm1_7 zmm1_7 zmm6_7;
adds dc zmm1_8 zmm1_8 zmm6_8; adds dc zmm1_9 zmm1_9 zmm6_9;
adds dc zmm1_a zmm1_a zmm6_a; adds dc zmm1_b zmm1_b zmm6_b;
adds dc zmm1_c zmm1_c zmm6_c; adds dc zmm1_d zmm1_d zmm6_d;
adds dc zmm1_e zmm1_e zmm6_e; adds dc zmm1_f zmm1_f zmm6_f;
(* vpaddd %zmm7,%zmm2,%zmm2                        #! PC = 0x55555555829c *)
adds dc zmm2_0 zmm2_0 zmm7_0; adds dc zmm2_1 zmm2_1 zmm7_1;
adds dc zmm2_2 zmm2_2 zmm7_2; adds dc zmm2_3 zmm2_3 zmm7_3;
adds dc zmm2_4 zmm2_4 zmm7_4; adds dc zmm2_5 zmm2_5 zmm7_5;
adds dc zmm2_6 zmm2_6 zmm7_6; adds dc zmm2_7 zmm2_7 zmm7_7;
adds dc zmm2_8 zmm2_8 zmm7_8; adds dc zmm2_9 zmm2_9 zmm7_9;
adds dc zmm2_a zmm2_a zmm7_a; adds dc zmm2_b zmm2_b zmm7_b;
adds dc zmm2_c zmm2_c zmm7_c; adds dc zmm2_d zmm2_d zmm7_d;
adds dc zmm2_e zmm2_e zmm7_e; adds dc zmm2_f zmm2_f zmm7_f;
(* vpaddd %zmm4,%zmm3,%zmm3                        #! PC = 0x5555555582a2 *)
adds dc zmm3_0 zmm3_0 zmm4_0; adds dc zmm3_1 zmm3_1 zmm4_1;
adds dc zmm3_2 zmm3_2 zmm4_2; adds dc zmm3_3 zmm3_3 zmm4_3;
adds dc zmm3_4 zmm3_4 zmm4_4; adds dc zmm3_5 zmm3_5 zmm4_5;
adds dc zmm3_6 zmm3_6 zmm4_6; adds dc zmm3_7 zmm3_7 zmm4_7;
adds dc zmm3_8 zmm3_8 zmm4_8; adds dc zmm3_9 zmm3_9 zmm4_9;
adds dc zmm3_a zmm3_a zmm4_a; adds dc zmm3_b zmm3_b zmm4_b;
adds dc zmm3_c zmm3_c zmm4_c; adds dc zmm3_d zmm3_d zmm4_d;
adds dc zmm3_e zmm3_e zmm4_e; adds dc zmm3_f zmm3_f zmm4_f;
(* vpxord %zmm0,%zmm15,%zmm15                      #! PC = 0x5555555582a8 *)
xor zmm15_0@uint32 zmm15_0 zmm0_0; xor zmm15_1@uint32 zmm15_1 zmm0_1;
xor zmm15_2@uint32 zmm15_2 zmm0_2; xor zmm15_3@uint32 zmm15_3 zmm0_3;
xor zmm15_4@uint32 zmm15_4 zmm0_4; xor zmm15_5@uint32 zmm15_5 zmm0_5;
xor zmm15_6@uint32 zmm15_6 zmm0_6; xor zmm15_7@uint32 zmm15_7 zmm0_7;
xor zmm15_8@uint32 zmm15_8 zmm0_8; xor zmm15_9@uint32 zmm15_9 zmm0_9;
xor zmm15_a@uint32 zmm15_a zmm0_a; xor zmm15_b@uint32 zmm15_b zmm0_b;
xor zmm15_c@uint32 zmm15_c zmm0_c; xor zmm15_d@uint32 zmm15_d zmm0_d;
xor zmm15_e@uint32 zmm15_e zmm0_e; xor zmm15_f@uint32 zmm15_f zmm0_f;
(* vpxord %zmm1,%zmm12,%zmm12                      #! PC = 0x5555555582ae *)
xor zmm12_0@uint32 zmm12_0 zmm1_0; xor zmm12_1@uint32 zmm12_1 zmm1_1;
xor zmm12_2@uint32 zmm12_2 zmm1_2; xor zmm12_3@uint32 zmm12_3 zmm1_3;
xor zmm12_4@uint32 zmm12_4 zmm1_4; xor zmm12_5@uint32 zmm12_5 zmm1_5;
xor zmm12_6@uint32 zmm12_6 zmm1_6; xor zmm12_7@uint32 zmm12_7 zmm1_7;
xor zmm12_8@uint32 zmm12_8 zmm1_8; xor zmm12_9@uint32 zmm12_9 zmm1_9;
xor zmm12_a@uint32 zmm12_a zmm1_a; xor zmm12_b@uint32 zmm12_b zmm1_b;
xor zmm12_c@uint32 zmm12_c zmm1_c; xor zmm12_d@uint32 zmm12_d zmm1_d;
xor zmm12_e@uint32 zmm12_e zmm1_e; xor zmm12_f@uint32 zmm12_f zmm1_f;
(* vpxord %zmm2,%zmm13,%zmm13                      #! PC = 0x5555555582b4 *)
xor zmm13_0@uint32 zmm13_0 zmm2_0; xor zmm13_1@uint32 zmm13_1 zmm2_1;
xor zmm13_2@uint32 zmm13_2 zmm2_2; xor zmm13_3@uint32 zmm13_3 zmm2_3;
xor zmm13_4@uint32 zmm13_4 zmm2_4; xor zmm13_5@uint32 zmm13_5 zmm2_5;
xor zmm13_6@uint32 zmm13_6 zmm2_6; xor zmm13_7@uint32 zmm13_7 zmm2_7;
xor zmm13_8@uint32 zmm13_8 zmm2_8; xor zmm13_9@uint32 zmm13_9 zmm2_9;
xor zmm13_a@uint32 zmm13_a zmm2_a; xor zmm13_b@uint32 zmm13_b zmm2_b;
xor zmm13_c@uint32 zmm13_c zmm2_c; xor zmm13_d@uint32 zmm13_d zmm2_d;
xor zmm13_e@uint32 zmm13_e zmm2_e; xor zmm13_f@uint32 zmm13_f zmm2_f;
(* vpxord %zmm3,%zmm14,%zmm14                      #! PC = 0x5555555582ba *)
xor zmm14_0@uint32 zmm14_0 zmm3_0; xor zmm14_1@uint32 zmm14_1 zmm3_1;
xor zmm14_2@uint32 zmm14_2 zmm3_2; xor zmm14_3@uint32 zmm14_3 zmm3_3;
xor zmm14_4@uint32 zmm14_4 zmm3_4; xor zmm14_5@uint32 zmm14_5 zmm3_5;
xor zmm14_6@uint32 zmm14_6 zmm3_6; xor zmm14_7@uint32 zmm14_7 zmm3_7;
xor zmm14_8@uint32 zmm14_8 zmm3_8; xor zmm14_9@uint32 zmm14_9 zmm3_9;
xor zmm14_a@uint32 zmm14_a zmm3_a; xor zmm14_b@uint32 zmm14_b zmm3_b;
xor zmm14_c@uint32 zmm14_c zmm3_c; xor zmm14_d@uint32 zmm14_d zmm3_d;
xor zmm14_e@uint32 zmm14_e zmm3_e; xor zmm14_f@uint32 zmm14_f zmm3_f;
(* vprold $0x10,%zmm15,%zmm15                      #! PC = 0x5555555582c0 *)
rol zmm15_0@uint32 zmm15_0 0x10; rol zmm15_1@uint32 zmm15_1 0x10;
rol zmm15_2@uint32 zmm15_2 0x10; rol zmm15_3@uint32 zmm15_3 0x10;
rol zmm15_4@uint32 zmm15_4 0x10; rol zmm15_5@uint32 zmm15_5 0x10;
rol zmm15_6@uint32 zmm15_6 0x10; rol zmm15_7@uint32 zmm15_7 0x10;
rol zmm15_8@uint32 zmm15_8 0x10; rol zmm15_9@uint32 zmm15_9 0x10;
rol zmm15_a@uint32 zmm15_a 0x10; rol zmm15_b@uint32 zmm15_b 0x10;
rol zmm15_c@uint32 zmm15_c 0x10; rol zmm15_d@uint32 zmm15_d 0x10;
rol zmm15_e@uint32 zmm15_e 0x10; rol zmm15_f@uint32 zmm15_f 0x10;
(* vprold $0x10,%zmm12,%zmm12                      #! PC = 0x5555555582c7 *)
rol zmm12_0@uint32 zmm12_0 0x10; rol zmm12_1@uint32 zmm12_1 0x10;
rol zmm12_2@uint32 zmm12_2 0x10; rol zmm12_3@uint32 zmm12_3 0x10;
rol zmm12_4@uint32 zmm12_4 0x10; rol zmm12_5@uint32 zmm12_5 0x10;
rol zmm12_6@uint32 zmm12_6 0x10; rol zmm12_7@uint32 zmm12_7 0x10;
rol zmm12_8@uint32 zmm12_8 0x10; rol zmm12_9@uint32 zmm12_9 0x10;
rol zmm12_a@uint32 zmm12_a 0x10; rol zmm12_b@uint32 zmm12_b 0x10;
rol zmm12_c@uint32 zmm12_c 0x10; rol zmm12_d@uint32 zmm12_d 0x10;
rol zmm12_e@uint32 zmm12_e 0x10; rol zmm12_f@uint32 zmm12_f 0x10;
(* vprold $0x10,%zmm13,%zmm13                      #! PC = 0x5555555582ce *)
rol zmm13_0@uint32 zmm13_0 0x10; rol zmm13_1@uint32 zmm13_1 0x10;
rol zmm13_2@uint32 zmm13_2 0x10; rol zmm13_3@uint32 zmm13_3 0x10;
rol zmm13_4@uint32 zmm13_4 0x10; rol zmm13_5@uint32 zmm13_5 0x10;
rol zmm13_6@uint32 zmm13_6 0x10; rol zmm13_7@uint32 zmm13_7 0x10;
rol zmm13_8@uint32 zmm13_8 0x10; rol zmm13_9@uint32 zmm13_9 0x10;
rol zmm13_a@uint32 zmm13_a 0x10; rol zmm13_b@uint32 zmm13_b 0x10;
rol zmm13_c@uint32 zmm13_c 0x10; rol zmm13_d@uint32 zmm13_d 0x10;
rol zmm13_e@uint32 zmm13_e 0x10; rol zmm13_f@uint32 zmm13_f 0x10;
(* vprold $0x10,%zmm14,%zmm14                      #! PC = 0x5555555582d5 *)
rol zmm14_0@uint32 zmm14_0 0x10; rol zmm14_1@uint32 zmm14_1 0x10;
rol zmm14_2@uint32 zmm14_2 0x10; rol zmm14_3@uint32 zmm14_3 0x10;
rol zmm14_4@uint32 zmm14_4 0x10; rol zmm14_5@uint32 zmm14_5 0x10;
rol zmm14_6@uint32 zmm14_6 0x10; rol zmm14_7@uint32 zmm14_7 0x10;
rol zmm14_8@uint32 zmm14_8 0x10; rol zmm14_9@uint32 zmm14_9 0x10;
rol zmm14_a@uint32 zmm14_a 0x10; rol zmm14_b@uint32 zmm14_b 0x10;
rol zmm14_c@uint32 zmm14_c 0x10; rol zmm14_d@uint32 zmm14_d 0x10;
rol zmm14_e@uint32 zmm14_e 0x10; rol zmm14_f@uint32 zmm14_f 0x10;
(* vpaddd %zmm15,%zmm10,%zmm10                     #! PC = 0x5555555582dc *)
adds dc zmm10_0 zmm10_0 zmm15_0; adds dc zmm10_1 zmm10_1 zmm15_1;
adds dc zmm10_2 zmm10_2 zmm15_2; adds dc zmm10_3 zmm10_3 zmm15_3;
adds dc zmm10_4 zmm10_4 zmm15_4; adds dc zmm10_5 zmm10_5 zmm15_5;
adds dc zmm10_6 zmm10_6 zmm15_6; adds dc zmm10_7 zmm10_7 zmm15_7;
adds dc zmm10_8 zmm10_8 zmm15_8; adds dc zmm10_9 zmm10_9 zmm15_9;
adds dc zmm10_a zmm10_a zmm15_a; adds dc zmm10_b zmm10_b zmm15_b;
adds dc zmm10_c zmm10_c zmm15_c; adds dc zmm10_d zmm10_d zmm15_d;
adds dc zmm10_e zmm10_e zmm15_e; adds dc zmm10_f zmm10_f zmm15_f;
(* vpaddd %zmm12,%zmm11,%zmm11                     #! PC = 0x5555555582e2 *)
adds dc zmm11_0 zmm11_0 zmm12_0; adds dc zmm11_1 zmm11_1 zmm12_1;
adds dc zmm11_2 zmm11_2 zmm12_2; adds dc zmm11_3 zmm11_3 zmm12_3;
adds dc zmm11_4 zmm11_4 zmm12_4; adds dc zmm11_5 zmm11_5 zmm12_5;
adds dc zmm11_6 zmm11_6 zmm12_6; adds dc zmm11_7 zmm11_7 zmm12_7;
adds dc zmm11_8 zmm11_8 zmm12_8; adds dc zmm11_9 zmm11_9 zmm12_9;
adds dc zmm11_a zmm11_a zmm12_a; adds dc zmm11_b zmm11_b zmm12_b;
adds dc zmm11_c zmm11_c zmm12_c; adds dc zmm11_d zmm11_d zmm12_d;
adds dc zmm11_e zmm11_e zmm12_e; adds dc zmm11_f zmm11_f zmm12_f;
(* vpaddd %zmm13,%zmm8,%zmm8                       #! PC = 0x5555555582e8 *)
adds dc zmm8_0 zmm8_0 zmm13_0; adds dc zmm8_1 zmm8_1 zmm13_1;
adds dc zmm8_2 zmm8_2 zmm13_2; adds dc zmm8_3 zmm8_3 zmm13_3;
adds dc zmm8_4 zmm8_4 zmm13_4; adds dc zmm8_5 zmm8_5 zmm13_5;
adds dc zmm8_6 zmm8_6 zmm13_6; adds dc zmm8_7 zmm8_7 zmm13_7;
adds dc zmm8_8 zmm8_8 zmm13_8; adds dc zmm8_9 zmm8_9 zmm13_9;
adds dc zmm8_a zmm8_a zmm13_a; adds dc zmm8_b zmm8_b zmm13_b;
adds dc zmm8_c zmm8_c zmm13_c; adds dc zmm8_d zmm8_d zmm13_d;
adds dc zmm8_e zmm8_e zmm13_e; adds dc zmm8_f zmm8_f zmm13_f;
(* vpaddd %zmm14,%zmm9,%zmm9                       #! PC = 0x5555555582ee *)
adds dc zmm9_0 zmm9_0 zmm14_0; adds dc zmm9_1 zmm9_1 zmm14_1;
adds dc zmm9_2 zmm9_2 zmm14_2; adds dc zmm9_3 zmm9_3 zmm14_3;
adds dc zmm9_4 zmm9_4 zmm14_4; adds dc zmm9_5 zmm9_5 zmm14_5;
adds dc zmm9_6 zmm9_6 zmm14_6; adds dc zmm9_7 zmm9_7 zmm14_7;
adds dc zmm9_8 zmm9_8 zmm14_8; adds dc zmm9_9 zmm9_9 zmm14_9;
adds dc zmm9_a zmm9_a zmm14_a; adds dc zmm9_b zmm9_b zmm14_b;
adds dc zmm9_c zmm9_c zmm14_c; adds dc zmm9_d zmm9_d zmm14_d;
adds dc zmm9_e zmm9_e zmm14_e; adds dc zmm9_f zmm9_f zmm14_f;
(* vpxord %zmm10,%zmm5,%zmm5                       #! PC = 0x5555555582f4 *)
xor zmm5_0@uint32 zmm5_0 zmm10_0; xor zmm5_1@uint32 zmm5_1 zmm10_1;
xor zmm5_2@uint32 zmm5_2 zmm10_2; xor zmm5_3@uint32 zmm5_3 zmm10_3;
xor zmm5_4@uint32 zmm5_4 zmm10_4; xor zmm5_5@uint32 zmm5_5 zmm10_5;
xor zmm5_6@uint32 zmm5_6 zmm10_6; xor zmm5_7@uint32 zmm5_7 zmm10_7;
xor zmm5_8@uint32 zmm5_8 zmm10_8; xor zmm5_9@uint32 zmm5_9 zmm10_9;
xor zmm5_a@uint32 zmm5_a zmm10_a; xor zmm5_b@uint32 zmm5_b zmm10_b;
xor zmm5_c@uint32 zmm5_c zmm10_c; xor zmm5_d@uint32 zmm5_d zmm10_d;
xor zmm5_e@uint32 zmm5_e zmm10_e; xor zmm5_f@uint32 zmm5_f zmm10_f;
(* vpxord %zmm11,%zmm6,%zmm6                       #! PC = 0x5555555582fa *)
xor zmm6_0@uint32 zmm6_0 zmm11_0; xor zmm6_1@uint32 zmm6_1 zmm11_1;
xor zmm6_2@uint32 zmm6_2 zmm11_2; xor zmm6_3@uint32 zmm6_3 zmm11_3;
xor zmm6_4@uint32 zmm6_4 zmm11_4; xor zmm6_5@uint32 zmm6_5 zmm11_5;
xor zmm6_6@uint32 zmm6_6 zmm11_6; xor zmm6_7@uint32 zmm6_7 zmm11_7;
xor zmm6_8@uint32 zmm6_8 zmm11_8; xor zmm6_9@uint32 zmm6_9 zmm11_9;
xor zmm6_a@uint32 zmm6_a zmm11_a; xor zmm6_b@uint32 zmm6_b zmm11_b;
xor zmm6_c@uint32 zmm6_c zmm11_c; xor zmm6_d@uint32 zmm6_d zmm11_d;
xor zmm6_e@uint32 zmm6_e zmm11_e; xor zmm6_f@uint32 zmm6_f zmm11_f;
(* vpxord %zmm8,%zmm7,%zmm7                        #! PC = 0x555555558300 *)
xor zmm7_0@uint32 zmm7_0 zmm8_0; xor zmm7_1@uint32 zmm7_1 zmm8_1;
xor zmm7_2@uint32 zmm7_2 zmm8_2; xor zmm7_3@uint32 zmm7_3 zmm8_3;
xor zmm7_4@uint32 zmm7_4 zmm8_4; xor zmm7_5@uint32 zmm7_5 zmm8_5;
xor zmm7_6@uint32 zmm7_6 zmm8_6; xor zmm7_7@uint32 zmm7_7 zmm8_7;
xor zmm7_8@uint32 zmm7_8 zmm8_8; xor zmm7_9@uint32 zmm7_9 zmm8_9;
xor zmm7_a@uint32 zmm7_a zmm8_a; xor zmm7_b@uint32 zmm7_b zmm8_b;
xor zmm7_c@uint32 zmm7_c zmm8_c; xor zmm7_d@uint32 zmm7_d zmm8_d;
xor zmm7_e@uint32 zmm7_e zmm8_e; xor zmm7_f@uint32 zmm7_f zmm8_f;
(* vpxord %zmm9,%zmm4,%zmm4                        #! PC = 0x555555558306 *)
xor zmm4_0@uint32 zmm4_0 zmm9_0; xor zmm4_1@uint32 zmm4_1 zmm9_1;
xor zmm4_2@uint32 zmm4_2 zmm9_2; xor zmm4_3@uint32 zmm4_3 zmm9_3;
xor zmm4_4@uint32 zmm4_4 zmm9_4; xor zmm4_5@uint32 zmm4_5 zmm9_5;
xor zmm4_6@uint32 zmm4_6 zmm9_6; xor zmm4_7@uint32 zmm4_7 zmm9_7;
xor zmm4_8@uint32 zmm4_8 zmm9_8; xor zmm4_9@uint32 zmm4_9 zmm9_9;
xor zmm4_a@uint32 zmm4_a zmm9_a; xor zmm4_b@uint32 zmm4_b zmm9_b;
xor zmm4_c@uint32 zmm4_c zmm9_c; xor zmm4_d@uint32 zmm4_d zmm9_d;
xor zmm4_e@uint32 zmm4_e zmm9_e; xor zmm4_f@uint32 zmm4_f zmm9_f;
(* vprold $0xc,%zmm5,%zmm5                         #! PC = 0x55555555830c *)
rol zmm5_0@uint32 zmm5_0 0xc; rol zmm5_1@uint32 zmm5_1 0xc;
rol zmm5_2@uint32 zmm5_2 0xc; rol zmm5_3@uint32 zmm5_3 0xc;
rol zmm5_4@uint32 zmm5_4 0xc; rol zmm5_5@uint32 zmm5_5 0xc;
rol zmm5_6@uint32 zmm5_6 0xc; rol zmm5_7@uint32 zmm5_7 0xc;
rol zmm5_8@uint32 zmm5_8 0xc; rol zmm5_9@uint32 zmm5_9 0xc;
rol zmm5_a@uint32 zmm5_a 0xc; rol zmm5_b@uint32 zmm5_b 0xc;
rol zmm5_c@uint32 zmm5_c 0xc; rol zmm5_d@uint32 zmm5_d 0xc;
rol zmm5_e@uint32 zmm5_e 0xc; rol zmm5_f@uint32 zmm5_f 0xc;
(* vprold $0xc,%zmm6,%zmm6                         #! PC = 0x555555558313 *)
rol zmm6_0@uint32 zmm6_0 0xc; rol zmm6_1@uint32 zmm6_1 0xc;
rol zmm6_2@uint32 zmm6_2 0xc; rol zmm6_3@uint32 zmm6_3 0xc;
rol zmm6_4@uint32 zmm6_4 0xc; rol zmm6_5@uint32 zmm6_5 0xc;
rol zmm6_6@uint32 zmm6_6 0xc; rol zmm6_7@uint32 zmm6_7 0xc;
rol zmm6_8@uint32 zmm6_8 0xc; rol zmm6_9@uint32 zmm6_9 0xc;
rol zmm6_a@uint32 zmm6_a 0xc; rol zmm6_b@uint32 zmm6_b 0xc;
rol zmm6_c@uint32 zmm6_c 0xc; rol zmm6_d@uint32 zmm6_d 0xc;
rol zmm6_e@uint32 zmm6_e 0xc; rol zmm6_f@uint32 zmm6_f 0xc;
(* vprold $0xc,%zmm7,%zmm7                         #! PC = 0x55555555831a *)
rol zmm7_0@uint32 zmm7_0 0xc; rol zmm7_1@uint32 zmm7_1 0xc;
rol zmm7_2@uint32 zmm7_2 0xc; rol zmm7_3@uint32 zmm7_3 0xc;
rol zmm7_4@uint32 zmm7_4 0xc; rol zmm7_5@uint32 zmm7_5 0xc;
rol zmm7_6@uint32 zmm7_6 0xc; rol zmm7_7@uint32 zmm7_7 0xc;
rol zmm7_8@uint32 zmm7_8 0xc; rol zmm7_9@uint32 zmm7_9 0xc;
rol zmm7_a@uint32 zmm7_a 0xc; rol zmm7_b@uint32 zmm7_b 0xc;
rol zmm7_c@uint32 zmm7_c 0xc; rol zmm7_d@uint32 zmm7_d 0xc;
rol zmm7_e@uint32 zmm7_e 0xc; rol zmm7_f@uint32 zmm7_f 0xc;
(* vprold $0xc,%zmm4,%zmm4                         #! PC = 0x555555558321 *)
rol zmm4_0@uint32 zmm4_0 0xc; rol zmm4_1@uint32 zmm4_1 0xc;
rol zmm4_2@uint32 zmm4_2 0xc; rol zmm4_3@uint32 zmm4_3 0xc;
rol zmm4_4@uint32 zmm4_4 0xc; rol zmm4_5@uint32 zmm4_5 0xc;
rol zmm4_6@uint32 zmm4_6 0xc; rol zmm4_7@uint32 zmm4_7 0xc;
rol zmm4_8@uint32 zmm4_8 0xc; rol zmm4_9@uint32 zmm4_9 0xc;
rol zmm4_a@uint32 zmm4_a 0xc; rol zmm4_b@uint32 zmm4_b 0xc;
rol zmm4_c@uint32 zmm4_c 0xc; rol zmm4_d@uint32 zmm4_d 0xc;
rol zmm4_e@uint32 zmm4_e 0xc; rol zmm4_f@uint32 zmm4_f 0xc;
(* vpaddd %zmm5,%zmm0,%zmm0                        #! PC = 0x555555558328 *)
adds dc zmm0_0 zmm0_0 zmm5_0; adds dc zmm0_1 zmm0_1 zmm5_1;
adds dc zmm0_2 zmm0_2 zmm5_2; adds dc zmm0_3 zmm0_3 zmm5_3;
adds dc zmm0_4 zmm0_4 zmm5_4; adds dc zmm0_5 zmm0_5 zmm5_5;
adds dc zmm0_6 zmm0_6 zmm5_6; adds dc zmm0_7 zmm0_7 zmm5_7;
adds dc zmm0_8 zmm0_8 zmm5_8; adds dc zmm0_9 zmm0_9 zmm5_9;
adds dc zmm0_a zmm0_a zmm5_a; adds dc zmm0_b zmm0_b zmm5_b;
adds dc zmm0_c zmm0_c zmm5_c; adds dc zmm0_d zmm0_d zmm5_d;
adds dc zmm0_e zmm0_e zmm5_e; adds dc zmm0_f zmm0_f zmm5_f;
(* vpaddd %zmm6,%zmm1,%zmm1                        #! PC = 0x55555555832e *)
adds dc zmm1_0 zmm1_0 zmm6_0; adds dc zmm1_1 zmm1_1 zmm6_1;
adds dc zmm1_2 zmm1_2 zmm6_2; adds dc zmm1_3 zmm1_3 zmm6_3;
adds dc zmm1_4 zmm1_4 zmm6_4; adds dc zmm1_5 zmm1_5 zmm6_5;
adds dc zmm1_6 zmm1_6 zmm6_6; adds dc zmm1_7 zmm1_7 zmm6_7;
adds dc zmm1_8 zmm1_8 zmm6_8; adds dc zmm1_9 zmm1_9 zmm6_9;
adds dc zmm1_a zmm1_a zmm6_a; adds dc zmm1_b zmm1_b zmm6_b;
adds dc zmm1_c zmm1_c zmm6_c; adds dc zmm1_d zmm1_d zmm6_d;
adds dc zmm1_e zmm1_e zmm6_e; adds dc zmm1_f zmm1_f zmm6_f;
(* vpaddd %zmm7,%zmm2,%zmm2                        #! PC = 0x555555558334 *)
adds dc zmm2_0 zmm2_0 zmm7_0; adds dc zmm2_1 zmm2_1 zmm7_1;
adds dc zmm2_2 zmm2_2 zmm7_2; adds dc zmm2_3 zmm2_3 zmm7_3;
adds dc zmm2_4 zmm2_4 zmm7_4; adds dc zmm2_5 zmm2_5 zmm7_5;
adds dc zmm2_6 zmm2_6 zmm7_6; adds dc zmm2_7 zmm2_7 zmm7_7;
adds dc zmm2_8 zmm2_8 zmm7_8; adds dc zmm2_9 zmm2_9 zmm7_9;
adds dc zmm2_a zmm2_a zmm7_a; adds dc zmm2_b zmm2_b zmm7_b;
adds dc zmm2_c zmm2_c zmm7_c; adds dc zmm2_d zmm2_d zmm7_d;
adds dc zmm2_e zmm2_e zmm7_e; adds dc zmm2_f zmm2_f zmm7_f;
(* vpaddd %zmm4,%zmm3,%zmm3                        #! PC = 0x55555555833a *)
adds dc zmm3_0 zmm3_0 zmm4_0; adds dc zmm3_1 zmm3_1 zmm4_1;
adds dc zmm3_2 zmm3_2 zmm4_2; adds dc zmm3_3 zmm3_3 zmm4_3;
adds dc zmm3_4 zmm3_4 zmm4_4; adds dc zmm3_5 zmm3_5 zmm4_5;
adds dc zmm3_6 zmm3_6 zmm4_6; adds dc zmm3_7 zmm3_7 zmm4_7;
adds dc zmm3_8 zmm3_8 zmm4_8; adds dc zmm3_9 zmm3_9 zmm4_9;
adds dc zmm3_a zmm3_a zmm4_a; adds dc zmm3_b zmm3_b zmm4_b;
adds dc zmm3_c zmm3_c zmm4_c; adds dc zmm3_d zmm3_d zmm4_d;
adds dc zmm3_e zmm3_e zmm4_e; adds dc zmm3_f zmm3_f zmm4_f;
(* vpxord %zmm0,%zmm15,%zmm15                      #! PC = 0x555555558340 *)
xor zmm15_0@uint32 zmm15_0 zmm0_0; xor zmm15_1@uint32 zmm15_1 zmm0_1;
xor zmm15_2@uint32 zmm15_2 zmm0_2; xor zmm15_3@uint32 zmm15_3 zmm0_3;
xor zmm15_4@uint32 zmm15_4 zmm0_4; xor zmm15_5@uint32 zmm15_5 zmm0_5;
xor zmm15_6@uint32 zmm15_6 zmm0_6; xor zmm15_7@uint32 zmm15_7 zmm0_7;
xor zmm15_8@uint32 zmm15_8 zmm0_8; xor zmm15_9@uint32 zmm15_9 zmm0_9;
xor zmm15_a@uint32 zmm15_a zmm0_a; xor zmm15_b@uint32 zmm15_b zmm0_b;
xor zmm15_c@uint32 zmm15_c zmm0_c; xor zmm15_d@uint32 zmm15_d zmm0_d;
xor zmm15_e@uint32 zmm15_e zmm0_e; xor zmm15_f@uint32 zmm15_f zmm0_f;
(* vpxord %zmm1,%zmm12,%zmm12                      #! PC = 0x555555558346 *)
xor zmm12_0@uint32 zmm12_0 zmm1_0; xor zmm12_1@uint32 zmm12_1 zmm1_1;
xor zmm12_2@uint32 zmm12_2 zmm1_2; xor zmm12_3@uint32 zmm12_3 zmm1_3;
xor zmm12_4@uint32 zmm12_4 zmm1_4; xor zmm12_5@uint32 zmm12_5 zmm1_5;
xor zmm12_6@uint32 zmm12_6 zmm1_6; xor zmm12_7@uint32 zmm12_7 zmm1_7;
xor zmm12_8@uint32 zmm12_8 zmm1_8; xor zmm12_9@uint32 zmm12_9 zmm1_9;
xor zmm12_a@uint32 zmm12_a zmm1_a; xor zmm12_b@uint32 zmm12_b zmm1_b;
xor zmm12_c@uint32 zmm12_c zmm1_c; xor zmm12_d@uint32 zmm12_d zmm1_d;
xor zmm12_e@uint32 zmm12_e zmm1_e; xor zmm12_f@uint32 zmm12_f zmm1_f;
(* vpxord %zmm2,%zmm13,%zmm13                      #! PC = 0x55555555834c *)
xor zmm13_0@uint32 zmm13_0 zmm2_0; xor zmm13_1@uint32 zmm13_1 zmm2_1;
xor zmm13_2@uint32 zmm13_2 zmm2_2; xor zmm13_3@uint32 zmm13_3 zmm2_3;
xor zmm13_4@uint32 zmm13_4 zmm2_4; xor zmm13_5@uint32 zmm13_5 zmm2_5;
xor zmm13_6@uint32 zmm13_6 zmm2_6; xor zmm13_7@uint32 zmm13_7 zmm2_7;
xor zmm13_8@uint32 zmm13_8 zmm2_8; xor zmm13_9@uint32 zmm13_9 zmm2_9;
xor zmm13_a@uint32 zmm13_a zmm2_a; xor zmm13_b@uint32 zmm13_b zmm2_b;
xor zmm13_c@uint32 zmm13_c zmm2_c; xor zmm13_d@uint32 zmm13_d zmm2_d;
xor zmm13_e@uint32 zmm13_e zmm2_e; xor zmm13_f@uint32 zmm13_f zmm2_f;
(* vpxord %zmm3,%zmm14,%zmm14                      #! PC = 0x555555558352 *)
xor zmm14_0@uint32 zmm14_0 zmm3_0; xor zmm14_1@uint32 zmm14_1 zmm3_1;
xor zmm14_2@uint32 zmm14_2 zmm3_2; xor zmm14_3@uint32 zmm14_3 zmm3_3;
xor zmm14_4@uint32 zmm14_4 zmm3_4; xor zmm14_5@uint32 zmm14_5 zmm3_5;
xor zmm14_6@uint32 zmm14_6 zmm3_6; xor zmm14_7@uint32 zmm14_7 zmm3_7;
xor zmm14_8@uint32 zmm14_8 zmm3_8; xor zmm14_9@uint32 zmm14_9 zmm3_9;
xor zmm14_a@uint32 zmm14_a zmm3_a; xor zmm14_b@uint32 zmm14_b zmm3_b;
xor zmm14_c@uint32 zmm14_c zmm3_c; xor zmm14_d@uint32 zmm14_d zmm3_d;
xor zmm14_e@uint32 zmm14_e zmm3_e; xor zmm14_f@uint32 zmm14_f zmm3_f;
(* vprold $0x8,%zmm15,%zmm15                       #! PC = 0x555555558358 *)
rol zmm15_0@uint32 zmm15_0 0x8; rol zmm15_1@uint32 zmm15_1 0x8;
rol zmm15_2@uint32 zmm15_2 0x8; rol zmm15_3@uint32 zmm15_3 0x8;
rol zmm15_4@uint32 zmm15_4 0x8; rol zmm15_5@uint32 zmm15_5 0x8;
rol zmm15_6@uint32 zmm15_6 0x8; rol zmm15_7@uint32 zmm15_7 0x8;
rol zmm15_8@uint32 zmm15_8 0x8; rol zmm15_9@uint32 zmm15_9 0x8;
rol zmm15_a@uint32 zmm15_a 0x8; rol zmm15_b@uint32 zmm15_b 0x8;
rol zmm15_c@uint32 zmm15_c 0x8; rol zmm15_d@uint32 zmm15_d 0x8;
rol zmm15_e@uint32 zmm15_e 0x8; rol zmm15_f@uint32 zmm15_f 0x8;
(* vprold $0x8,%zmm12,%zmm12                       #! PC = 0x55555555835f *)
rol zmm12_0@uint32 zmm12_0 0x8; rol zmm12_1@uint32 zmm12_1 0x8;
rol zmm12_2@uint32 zmm12_2 0x8; rol zmm12_3@uint32 zmm12_3 0x8;
rol zmm12_4@uint32 zmm12_4 0x8; rol zmm12_5@uint32 zmm12_5 0x8;
rol zmm12_6@uint32 zmm12_6 0x8; rol zmm12_7@uint32 zmm12_7 0x8;
rol zmm12_8@uint32 zmm12_8 0x8; rol zmm12_9@uint32 zmm12_9 0x8;
rol zmm12_a@uint32 zmm12_a 0x8; rol zmm12_b@uint32 zmm12_b 0x8;
rol zmm12_c@uint32 zmm12_c 0x8; rol zmm12_d@uint32 zmm12_d 0x8;
rol zmm12_e@uint32 zmm12_e 0x8; rol zmm12_f@uint32 zmm12_f 0x8;
(* vprold $0x8,%zmm13,%zmm13                       #! PC = 0x555555558366 *)
rol zmm13_0@uint32 zmm13_0 0x8; rol zmm13_1@uint32 zmm13_1 0x8;
rol zmm13_2@uint32 zmm13_2 0x8; rol zmm13_3@uint32 zmm13_3 0x8;
rol zmm13_4@uint32 zmm13_4 0x8; rol zmm13_5@uint32 zmm13_5 0x8;
rol zmm13_6@uint32 zmm13_6 0x8; rol zmm13_7@uint32 zmm13_7 0x8;
rol zmm13_8@uint32 zmm13_8 0x8; rol zmm13_9@uint32 zmm13_9 0x8;
rol zmm13_a@uint32 zmm13_a 0x8; rol zmm13_b@uint32 zmm13_b 0x8;
rol zmm13_c@uint32 zmm13_c 0x8; rol zmm13_d@uint32 zmm13_d 0x8;
rol zmm13_e@uint32 zmm13_e 0x8; rol zmm13_f@uint32 zmm13_f 0x8;
(* vprold $0x8,%zmm14,%zmm14                       #! PC = 0x55555555836d *)
rol zmm14_0@uint32 zmm14_0 0x8; rol zmm14_1@uint32 zmm14_1 0x8;
rol zmm14_2@uint32 zmm14_2 0x8; rol zmm14_3@uint32 zmm14_3 0x8;
rol zmm14_4@uint32 zmm14_4 0x8; rol zmm14_5@uint32 zmm14_5 0x8;
rol zmm14_6@uint32 zmm14_6 0x8; rol zmm14_7@uint32 zmm14_7 0x8;
rol zmm14_8@uint32 zmm14_8 0x8; rol zmm14_9@uint32 zmm14_9 0x8;
rol zmm14_a@uint32 zmm14_a 0x8; rol zmm14_b@uint32 zmm14_b 0x8;
rol zmm14_c@uint32 zmm14_c 0x8; rol zmm14_d@uint32 zmm14_d 0x8;
rol zmm14_e@uint32 zmm14_e 0x8; rol zmm14_f@uint32 zmm14_f 0x8;
(* vpaddd %zmm15,%zmm10,%zmm10                     #! PC = 0x555555558374 *)
adds dc zmm10_0 zmm10_0 zmm15_0; adds dc zmm10_1 zmm10_1 zmm15_1;
adds dc zmm10_2 zmm10_2 zmm15_2; adds dc zmm10_3 zmm10_3 zmm15_3;
adds dc zmm10_4 zmm10_4 zmm15_4; adds dc zmm10_5 zmm10_5 zmm15_5;
adds dc zmm10_6 zmm10_6 zmm15_6; adds dc zmm10_7 zmm10_7 zmm15_7;
adds dc zmm10_8 zmm10_8 zmm15_8; adds dc zmm10_9 zmm10_9 zmm15_9;
adds dc zmm10_a zmm10_a zmm15_a; adds dc zmm10_b zmm10_b zmm15_b;
adds dc zmm10_c zmm10_c zmm15_c; adds dc zmm10_d zmm10_d zmm15_d;
adds dc zmm10_e zmm10_e zmm15_e; adds dc zmm10_f zmm10_f zmm15_f;
(* vpaddd %zmm12,%zmm11,%zmm11                     #! PC = 0x55555555837a *)
adds dc zmm11_0 zmm11_0 zmm12_0; adds dc zmm11_1 zmm11_1 zmm12_1;
adds dc zmm11_2 zmm11_2 zmm12_2; adds dc zmm11_3 zmm11_3 zmm12_3;
adds dc zmm11_4 zmm11_4 zmm12_4; adds dc zmm11_5 zmm11_5 zmm12_5;
adds dc zmm11_6 zmm11_6 zmm12_6; adds dc zmm11_7 zmm11_7 zmm12_7;
adds dc zmm11_8 zmm11_8 zmm12_8; adds dc zmm11_9 zmm11_9 zmm12_9;
adds dc zmm11_a zmm11_a zmm12_a; adds dc zmm11_b zmm11_b zmm12_b;
adds dc zmm11_c zmm11_c zmm12_c; adds dc zmm11_d zmm11_d zmm12_d;
adds dc zmm11_e zmm11_e zmm12_e; adds dc zmm11_f zmm11_f zmm12_f;
(* vpaddd %zmm13,%zmm8,%zmm8                       #! PC = 0x555555558380 *)
adds dc zmm8_0 zmm8_0 zmm13_0; adds dc zmm8_1 zmm8_1 zmm13_1;
adds dc zmm8_2 zmm8_2 zmm13_2; adds dc zmm8_3 zmm8_3 zmm13_3;
adds dc zmm8_4 zmm8_4 zmm13_4; adds dc zmm8_5 zmm8_5 zmm13_5;
adds dc zmm8_6 zmm8_6 zmm13_6; adds dc zmm8_7 zmm8_7 zmm13_7;
adds dc zmm8_8 zmm8_8 zmm13_8; adds dc zmm8_9 zmm8_9 zmm13_9;
adds dc zmm8_a zmm8_a zmm13_a; adds dc zmm8_b zmm8_b zmm13_b;
adds dc zmm8_c zmm8_c zmm13_c; adds dc zmm8_d zmm8_d zmm13_d;
adds dc zmm8_e zmm8_e zmm13_e; adds dc zmm8_f zmm8_f zmm13_f;
(* vpaddd %zmm14,%zmm9,%zmm9                       #! PC = 0x555555558386 *)
adds dc zmm9_0 zmm9_0 zmm14_0; adds dc zmm9_1 zmm9_1 zmm14_1;
adds dc zmm9_2 zmm9_2 zmm14_2; adds dc zmm9_3 zmm9_3 zmm14_3;
adds dc zmm9_4 zmm9_4 zmm14_4; adds dc zmm9_5 zmm9_5 zmm14_5;
adds dc zmm9_6 zmm9_6 zmm14_6; adds dc zmm9_7 zmm9_7 zmm14_7;
adds dc zmm9_8 zmm9_8 zmm14_8; adds dc zmm9_9 zmm9_9 zmm14_9;
adds dc zmm9_a zmm9_a zmm14_a; adds dc zmm9_b zmm9_b zmm14_b;
adds dc zmm9_c zmm9_c zmm14_c; adds dc zmm9_d zmm9_d zmm14_d;
adds dc zmm9_e zmm9_e zmm14_e; adds dc zmm9_f zmm9_f zmm14_f;
(* vpxord %zmm10,%zmm5,%zmm5                       #! PC = 0x55555555838c *)
xor zmm5_0@uint32 zmm5_0 zmm10_0; xor zmm5_1@uint32 zmm5_1 zmm10_1;
xor zmm5_2@uint32 zmm5_2 zmm10_2; xor zmm5_3@uint32 zmm5_3 zmm10_3;
xor zmm5_4@uint32 zmm5_4 zmm10_4; xor zmm5_5@uint32 zmm5_5 zmm10_5;
xor zmm5_6@uint32 zmm5_6 zmm10_6; xor zmm5_7@uint32 zmm5_7 zmm10_7;
xor zmm5_8@uint32 zmm5_8 zmm10_8; xor zmm5_9@uint32 zmm5_9 zmm10_9;
xor zmm5_a@uint32 zmm5_a zmm10_a; xor zmm5_b@uint32 zmm5_b zmm10_b;
xor zmm5_c@uint32 zmm5_c zmm10_c; xor zmm5_d@uint32 zmm5_d zmm10_d;
xor zmm5_e@uint32 zmm5_e zmm10_e; xor zmm5_f@uint32 zmm5_f zmm10_f;
(* vpxord %zmm11,%zmm6,%zmm6                       #! PC = 0x555555558392 *)
xor zmm6_0@uint32 zmm6_0 zmm11_0; xor zmm6_1@uint32 zmm6_1 zmm11_1;
xor zmm6_2@uint32 zmm6_2 zmm11_2; xor zmm6_3@uint32 zmm6_3 zmm11_3;
xor zmm6_4@uint32 zmm6_4 zmm11_4; xor zmm6_5@uint32 zmm6_5 zmm11_5;
xor zmm6_6@uint32 zmm6_6 zmm11_6; xor zmm6_7@uint32 zmm6_7 zmm11_7;
xor zmm6_8@uint32 zmm6_8 zmm11_8; xor zmm6_9@uint32 zmm6_9 zmm11_9;
xor zmm6_a@uint32 zmm6_a zmm11_a; xor zmm6_b@uint32 zmm6_b zmm11_b;
xor zmm6_c@uint32 zmm6_c zmm11_c; xor zmm6_d@uint32 zmm6_d zmm11_d;
xor zmm6_e@uint32 zmm6_e zmm11_e; xor zmm6_f@uint32 zmm6_f zmm11_f;
(* vpxord %zmm8,%zmm7,%zmm7                        #! PC = 0x555555558398 *)
xor zmm7_0@uint32 zmm7_0 zmm8_0; xor zmm7_1@uint32 zmm7_1 zmm8_1;
xor zmm7_2@uint32 zmm7_2 zmm8_2; xor zmm7_3@uint32 zmm7_3 zmm8_3;
xor zmm7_4@uint32 zmm7_4 zmm8_4; xor zmm7_5@uint32 zmm7_5 zmm8_5;
xor zmm7_6@uint32 zmm7_6 zmm8_6; xor zmm7_7@uint32 zmm7_7 zmm8_7;
xor zmm7_8@uint32 zmm7_8 zmm8_8; xor zmm7_9@uint32 zmm7_9 zmm8_9;
xor zmm7_a@uint32 zmm7_a zmm8_a; xor zmm7_b@uint32 zmm7_b zmm8_b;
xor zmm7_c@uint32 zmm7_c zmm8_c; xor zmm7_d@uint32 zmm7_d zmm8_d;
xor zmm7_e@uint32 zmm7_e zmm8_e; xor zmm7_f@uint32 zmm7_f zmm8_f;
(* vpxord %zmm9,%zmm4,%zmm4                        #! PC = 0x55555555839e *)
xor zmm4_0@uint32 zmm4_0 zmm9_0; xor zmm4_1@uint32 zmm4_1 zmm9_1;
xor zmm4_2@uint32 zmm4_2 zmm9_2; xor zmm4_3@uint32 zmm4_3 zmm9_3;
xor zmm4_4@uint32 zmm4_4 zmm9_4; xor zmm4_5@uint32 zmm4_5 zmm9_5;
xor zmm4_6@uint32 zmm4_6 zmm9_6; xor zmm4_7@uint32 zmm4_7 zmm9_7;
xor zmm4_8@uint32 zmm4_8 zmm9_8; xor zmm4_9@uint32 zmm4_9 zmm9_9;
xor zmm4_a@uint32 zmm4_a zmm9_a; xor zmm4_b@uint32 zmm4_b zmm9_b;
xor zmm4_c@uint32 zmm4_c zmm9_c; xor zmm4_d@uint32 zmm4_d zmm9_d;
xor zmm4_e@uint32 zmm4_e zmm9_e; xor zmm4_f@uint32 zmm4_f zmm9_f;
(* vprold $0x7,%zmm5,%zmm5                         #! PC = 0x5555555583a4 *)
rol zmm5_0@uint32 zmm5_0 0x7; rol zmm5_1@uint32 zmm5_1 0x7;
rol zmm5_2@uint32 zmm5_2 0x7; rol zmm5_3@uint32 zmm5_3 0x7;
rol zmm5_4@uint32 zmm5_4 0x7; rol zmm5_5@uint32 zmm5_5 0x7;
rol zmm5_6@uint32 zmm5_6 0x7; rol zmm5_7@uint32 zmm5_7 0x7;
rol zmm5_8@uint32 zmm5_8 0x7; rol zmm5_9@uint32 zmm5_9 0x7;
rol zmm5_a@uint32 zmm5_a 0x7; rol zmm5_b@uint32 zmm5_b 0x7;
rol zmm5_c@uint32 zmm5_c 0x7; rol zmm5_d@uint32 zmm5_d 0x7;
rol zmm5_e@uint32 zmm5_e 0x7; rol zmm5_f@uint32 zmm5_f 0x7;
(* vprold $0x7,%zmm6,%zmm6                         #! PC = 0x5555555583ab *)
rol zmm6_0@uint32 zmm6_0 0x7; rol zmm6_1@uint32 zmm6_1 0x7;
rol zmm6_2@uint32 zmm6_2 0x7; rol zmm6_3@uint32 zmm6_3 0x7;
rol zmm6_4@uint32 zmm6_4 0x7; rol zmm6_5@uint32 zmm6_5 0x7;
rol zmm6_6@uint32 zmm6_6 0x7; rol zmm6_7@uint32 zmm6_7 0x7;
rol zmm6_8@uint32 zmm6_8 0x7; rol zmm6_9@uint32 zmm6_9 0x7;
rol zmm6_a@uint32 zmm6_a 0x7; rol zmm6_b@uint32 zmm6_b 0x7;
rol zmm6_c@uint32 zmm6_c 0x7; rol zmm6_d@uint32 zmm6_d 0x7;
rol zmm6_e@uint32 zmm6_e 0x7; rol zmm6_f@uint32 zmm6_f 0x7;
(* vprold $0x7,%zmm7,%zmm7                         #! PC = 0x5555555583b2 *)
rol zmm7_0@uint32 zmm7_0 0x7; rol zmm7_1@uint32 zmm7_1 0x7;
rol zmm7_2@uint32 zmm7_2 0x7; rol zmm7_3@uint32 zmm7_3 0x7;
rol zmm7_4@uint32 zmm7_4 0x7; rol zmm7_5@uint32 zmm7_5 0x7;
rol zmm7_6@uint32 zmm7_6 0x7; rol zmm7_7@uint32 zmm7_7 0x7;
rol zmm7_8@uint32 zmm7_8 0x7; rol zmm7_9@uint32 zmm7_9 0x7;
rol zmm7_a@uint32 zmm7_a 0x7; rol zmm7_b@uint32 zmm7_b 0x7;
rol zmm7_c@uint32 zmm7_c 0x7; rol zmm7_d@uint32 zmm7_d 0x7;
rol zmm7_e@uint32 zmm7_e 0x7; rol zmm7_f@uint32 zmm7_f 0x7;
(* vprold $0x7,%zmm4,%zmm4                         #! PC = 0x5555555583b9 *)
rol zmm4_0@uint32 zmm4_0 0x7; rol zmm4_1@uint32 zmm4_1 0x7;
rol zmm4_2@uint32 zmm4_2 0x7; rol zmm4_3@uint32 zmm4_3 0x7;
rol zmm4_4@uint32 zmm4_4 0x7; rol zmm4_5@uint32 zmm4_5 0x7;
rol zmm4_6@uint32 zmm4_6 0x7; rol zmm4_7@uint32 zmm4_7 0x7;
rol zmm4_8@uint32 zmm4_8 0x7; rol zmm4_9@uint32 zmm4_9 0x7;
rol zmm4_a@uint32 zmm4_a 0x7; rol zmm4_b@uint32 zmm4_b 0x7;
rol zmm4_c@uint32 zmm4_c 0x7; rol zmm4_d@uint32 zmm4_d 0x7;
rol zmm4_e@uint32 zmm4_e 0x7; rol zmm4_f@uint32 zmm4_f 0x7;
(* dec    %eax                                     #! PC = 0x5555555583c0 *)
(* dec %eax *)
nop;
(* #jne    0x555555558160 <ChaCha20_16x+448>       #! PC = 0x5555555583c2 *)
#jne    0x555555558160 <ChaCha20_16x+448>       #! 0x5555555583c2 = 0x5555555583c2;
(* vpaddd %zmm4,%zmm0,%zmm0                        #! PC = 0x555555558160 *)
adds dc zmm0_0 zmm0_0 zmm4_0; adds dc zmm0_1 zmm0_1 zmm4_1;
adds dc zmm0_2 zmm0_2 zmm4_2; adds dc zmm0_3 zmm0_3 zmm4_3;
adds dc zmm0_4 zmm0_4 zmm4_4; adds dc zmm0_5 zmm0_5 zmm4_5;
adds dc zmm0_6 zmm0_6 zmm4_6; adds dc zmm0_7 zmm0_7 zmm4_7;
adds dc zmm0_8 zmm0_8 zmm4_8; adds dc zmm0_9 zmm0_9 zmm4_9;
adds dc zmm0_a zmm0_a zmm4_a; adds dc zmm0_b zmm0_b zmm4_b;
adds dc zmm0_c zmm0_c zmm4_c; adds dc zmm0_d zmm0_d zmm4_d;
adds dc zmm0_e zmm0_e zmm4_e; adds dc zmm0_f zmm0_f zmm4_f;
(* vpaddd %zmm5,%zmm1,%zmm1                        #! PC = 0x555555558166 *)
adds dc zmm1_0 zmm1_0 zmm5_0; adds dc zmm1_1 zmm1_1 zmm5_1;
adds dc zmm1_2 zmm1_2 zmm5_2; adds dc zmm1_3 zmm1_3 zmm5_3;
adds dc zmm1_4 zmm1_4 zmm5_4; adds dc zmm1_5 zmm1_5 zmm5_5;
adds dc zmm1_6 zmm1_6 zmm5_6; adds dc zmm1_7 zmm1_7 zmm5_7;
adds dc zmm1_8 zmm1_8 zmm5_8; adds dc zmm1_9 zmm1_9 zmm5_9;
adds dc zmm1_a zmm1_a zmm5_a; adds dc zmm1_b zmm1_b zmm5_b;
adds dc zmm1_c zmm1_c zmm5_c; adds dc zmm1_d zmm1_d zmm5_d;
adds dc zmm1_e zmm1_e zmm5_e; adds dc zmm1_f zmm1_f zmm5_f;
(* vpaddd %zmm6,%zmm2,%zmm2                        #! PC = 0x55555555816c *)
adds dc zmm2_0 zmm2_0 zmm6_0; adds dc zmm2_1 zmm2_1 zmm6_1;
adds dc zmm2_2 zmm2_2 zmm6_2; adds dc zmm2_3 zmm2_3 zmm6_3;
adds dc zmm2_4 zmm2_4 zmm6_4; adds dc zmm2_5 zmm2_5 zmm6_5;
adds dc zmm2_6 zmm2_6 zmm6_6; adds dc zmm2_7 zmm2_7 zmm6_7;
adds dc zmm2_8 zmm2_8 zmm6_8; adds dc zmm2_9 zmm2_9 zmm6_9;
adds dc zmm2_a zmm2_a zmm6_a; adds dc zmm2_b zmm2_b zmm6_b;
adds dc zmm2_c zmm2_c zmm6_c; adds dc zmm2_d zmm2_d zmm6_d;
adds dc zmm2_e zmm2_e zmm6_e; adds dc zmm2_f zmm2_f zmm6_f;
(* vpaddd %zmm7,%zmm3,%zmm3                        #! PC = 0x555555558172 *)
adds dc zmm3_0 zmm3_0 zmm7_0; adds dc zmm3_1 zmm3_1 zmm7_1;
adds dc zmm3_2 zmm3_2 zmm7_2; adds dc zmm3_3 zmm3_3 zmm7_3;
adds dc zmm3_4 zmm3_4 zmm7_4; adds dc zmm3_5 zmm3_5 zmm7_5;
adds dc zmm3_6 zmm3_6 zmm7_6; adds dc zmm3_7 zmm3_7 zmm7_7;
adds dc zmm3_8 zmm3_8 zmm7_8; adds dc zmm3_9 zmm3_9 zmm7_9;
adds dc zmm3_a zmm3_a zmm7_a; adds dc zmm3_b zmm3_b zmm7_b;
adds dc zmm3_c zmm3_c zmm7_c; adds dc zmm3_d zmm3_d zmm7_d;
adds dc zmm3_e zmm3_e zmm7_e; adds dc zmm3_f zmm3_f zmm7_f;
(* vpxord %zmm0,%zmm12,%zmm12                      #! PC = 0x555555558178 *)
xor zmm12_0@uint32 zmm12_0 zmm0_0; xor zmm12_1@uint32 zmm12_1 zmm0_1;
xor zmm12_2@uint32 zmm12_2 zmm0_2; xor zmm12_3@uint32 zmm12_3 zmm0_3;
xor zmm12_4@uint32 zmm12_4 zmm0_4; xor zmm12_5@uint32 zmm12_5 zmm0_5;
xor zmm12_6@uint32 zmm12_6 zmm0_6; xor zmm12_7@uint32 zmm12_7 zmm0_7;
xor zmm12_8@uint32 zmm12_8 zmm0_8; xor zmm12_9@uint32 zmm12_9 zmm0_9;
xor zmm12_a@uint32 zmm12_a zmm0_a; xor zmm12_b@uint32 zmm12_b zmm0_b;
xor zmm12_c@uint32 zmm12_c zmm0_c; xor zmm12_d@uint32 zmm12_d zmm0_d;
xor zmm12_e@uint32 zmm12_e zmm0_e; xor zmm12_f@uint32 zmm12_f zmm0_f;
(* vpxord %zmm1,%zmm13,%zmm13                      #! PC = 0x55555555817e *)
xor zmm13_0@uint32 zmm13_0 zmm1_0; xor zmm13_1@uint32 zmm13_1 zmm1_1;
xor zmm13_2@uint32 zmm13_2 zmm1_2; xor zmm13_3@uint32 zmm13_3 zmm1_3;
xor zmm13_4@uint32 zmm13_4 zmm1_4; xor zmm13_5@uint32 zmm13_5 zmm1_5;
xor zmm13_6@uint32 zmm13_6 zmm1_6; xor zmm13_7@uint32 zmm13_7 zmm1_7;
xor zmm13_8@uint32 zmm13_8 zmm1_8; xor zmm13_9@uint32 zmm13_9 zmm1_9;
xor zmm13_a@uint32 zmm13_a zmm1_a; xor zmm13_b@uint32 zmm13_b zmm1_b;
xor zmm13_c@uint32 zmm13_c zmm1_c; xor zmm13_d@uint32 zmm13_d zmm1_d;
xor zmm13_e@uint32 zmm13_e zmm1_e; xor zmm13_f@uint32 zmm13_f zmm1_f;
(* vpxord %zmm2,%zmm14,%zmm14                      #! PC = 0x555555558184 *)
xor zmm14_0@uint32 zmm14_0 zmm2_0; xor zmm14_1@uint32 zmm14_1 zmm2_1;
xor zmm14_2@uint32 zmm14_2 zmm2_2; xor zmm14_3@uint32 zmm14_3 zmm2_3;
xor zmm14_4@uint32 zmm14_4 zmm2_4; xor zmm14_5@uint32 zmm14_5 zmm2_5;
xor zmm14_6@uint32 zmm14_6 zmm2_6; xor zmm14_7@uint32 zmm14_7 zmm2_7;
xor zmm14_8@uint32 zmm14_8 zmm2_8; xor zmm14_9@uint32 zmm14_9 zmm2_9;
xor zmm14_a@uint32 zmm14_a zmm2_a; xor zmm14_b@uint32 zmm14_b zmm2_b;
xor zmm14_c@uint32 zmm14_c zmm2_c; xor zmm14_d@uint32 zmm14_d zmm2_d;
xor zmm14_e@uint32 zmm14_e zmm2_e; xor zmm14_f@uint32 zmm14_f zmm2_f;
(* vpxord %zmm3,%zmm15,%zmm15                      #! PC = 0x55555555818a *)
xor zmm15_0@uint32 zmm15_0 zmm3_0; xor zmm15_1@uint32 zmm15_1 zmm3_1;
xor zmm15_2@uint32 zmm15_2 zmm3_2; xor zmm15_3@uint32 zmm15_3 zmm3_3;
xor zmm15_4@uint32 zmm15_4 zmm3_4; xor zmm15_5@uint32 zmm15_5 zmm3_5;
xor zmm15_6@uint32 zmm15_6 zmm3_6; xor zmm15_7@uint32 zmm15_7 zmm3_7;
xor zmm15_8@uint32 zmm15_8 zmm3_8; xor zmm15_9@uint32 zmm15_9 zmm3_9;
xor zmm15_a@uint32 zmm15_a zmm3_a; xor zmm15_b@uint32 zmm15_b zmm3_b;
xor zmm15_c@uint32 zmm15_c zmm3_c; xor zmm15_d@uint32 zmm15_d zmm3_d;
xor zmm15_e@uint32 zmm15_e zmm3_e; xor zmm15_f@uint32 zmm15_f zmm3_f;
(* vprold $0x10,%zmm12,%zmm12                      #! PC = 0x555555558190 *)
rol zmm12_0@uint32 zmm12_0 0x10; rol zmm12_1@uint32 zmm12_1 0x10;
rol zmm12_2@uint32 zmm12_2 0x10; rol zmm12_3@uint32 zmm12_3 0x10;
rol zmm12_4@uint32 zmm12_4 0x10; rol zmm12_5@uint32 zmm12_5 0x10;
rol zmm12_6@uint32 zmm12_6 0x10; rol zmm12_7@uint32 zmm12_7 0x10;
rol zmm12_8@uint32 zmm12_8 0x10; rol zmm12_9@uint32 zmm12_9 0x10;
rol zmm12_a@uint32 zmm12_a 0x10; rol zmm12_b@uint32 zmm12_b 0x10;
rol zmm12_c@uint32 zmm12_c 0x10; rol zmm12_d@uint32 zmm12_d 0x10;
rol zmm12_e@uint32 zmm12_e 0x10; rol zmm12_f@uint32 zmm12_f 0x10;
(* vprold $0x10,%zmm13,%zmm13                      #! PC = 0x555555558197 *)
rol zmm13_0@uint32 zmm13_0 0x10; rol zmm13_1@uint32 zmm13_1 0x10;
rol zmm13_2@uint32 zmm13_2 0x10; rol zmm13_3@uint32 zmm13_3 0x10;
rol zmm13_4@uint32 zmm13_4 0x10; rol zmm13_5@uint32 zmm13_5 0x10;
rol zmm13_6@uint32 zmm13_6 0x10; rol zmm13_7@uint32 zmm13_7 0x10;
rol zmm13_8@uint32 zmm13_8 0x10; rol zmm13_9@uint32 zmm13_9 0x10;
rol zmm13_a@uint32 zmm13_a 0x10; rol zmm13_b@uint32 zmm13_b 0x10;
rol zmm13_c@uint32 zmm13_c 0x10; rol zmm13_d@uint32 zmm13_d 0x10;
rol zmm13_e@uint32 zmm13_e 0x10; rol zmm13_f@uint32 zmm13_f 0x10;
(* vprold $0x10,%zmm14,%zmm14                      #! PC = 0x55555555819e *)
rol zmm14_0@uint32 zmm14_0 0x10; rol zmm14_1@uint32 zmm14_1 0x10;
rol zmm14_2@uint32 zmm14_2 0x10; rol zmm14_3@uint32 zmm14_3 0x10;
rol zmm14_4@uint32 zmm14_4 0x10; rol zmm14_5@uint32 zmm14_5 0x10;
rol zmm14_6@uint32 zmm14_6 0x10; rol zmm14_7@uint32 zmm14_7 0x10;
rol zmm14_8@uint32 zmm14_8 0x10; rol zmm14_9@uint32 zmm14_9 0x10;
rol zmm14_a@uint32 zmm14_a 0x10; rol zmm14_b@uint32 zmm14_b 0x10;
rol zmm14_c@uint32 zmm14_c 0x10; rol zmm14_d@uint32 zmm14_d 0x10;
rol zmm14_e@uint32 zmm14_e 0x10; rol zmm14_f@uint32 zmm14_f 0x10;
(* vprold $0x10,%zmm15,%zmm15                      #! PC = 0x5555555581a5 *)
rol zmm15_0@uint32 zmm15_0 0x10; rol zmm15_1@uint32 zmm15_1 0x10;
rol zmm15_2@uint32 zmm15_2 0x10; rol zmm15_3@uint32 zmm15_3 0x10;
rol zmm15_4@uint32 zmm15_4 0x10; rol zmm15_5@uint32 zmm15_5 0x10;
rol zmm15_6@uint32 zmm15_6 0x10; rol zmm15_7@uint32 zmm15_7 0x10;
rol zmm15_8@uint32 zmm15_8 0x10; rol zmm15_9@uint32 zmm15_9 0x10;
rol zmm15_a@uint32 zmm15_a 0x10; rol zmm15_b@uint32 zmm15_b 0x10;
rol zmm15_c@uint32 zmm15_c 0x10; rol zmm15_d@uint32 zmm15_d 0x10;
rol zmm15_e@uint32 zmm15_e 0x10; rol zmm15_f@uint32 zmm15_f 0x10;
(* vpaddd %zmm12,%zmm8,%zmm8                       #! PC = 0x5555555581ac *)
adds dc zmm8_0 zmm8_0 zmm12_0; adds dc zmm8_1 zmm8_1 zmm12_1;
adds dc zmm8_2 zmm8_2 zmm12_2; adds dc zmm8_3 zmm8_3 zmm12_3;
adds dc zmm8_4 zmm8_4 zmm12_4; adds dc zmm8_5 zmm8_5 zmm12_5;
adds dc zmm8_6 zmm8_6 zmm12_6; adds dc zmm8_7 zmm8_7 zmm12_7;
adds dc zmm8_8 zmm8_8 zmm12_8; adds dc zmm8_9 zmm8_9 zmm12_9;
adds dc zmm8_a zmm8_a zmm12_a; adds dc zmm8_b zmm8_b zmm12_b;
adds dc zmm8_c zmm8_c zmm12_c; adds dc zmm8_d zmm8_d zmm12_d;
adds dc zmm8_e zmm8_e zmm12_e; adds dc zmm8_f zmm8_f zmm12_f;
(* vpaddd %zmm13,%zmm9,%zmm9                       #! PC = 0x5555555581b2 *)
adds dc zmm9_0 zmm9_0 zmm13_0; adds dc zmm9_1 zmm9_1 zmm13_1;
adds dc zmm9_2 zmm9_2 zmm13_2; adds dc zmm9_3 zmm9_3 zmm13_3;
adds dc zmm9_4 zmm9_4 zmm13_4; adds dc zmm9_5 zmm9_5 zmm13_5;
adds dc zmm9_6 zmm9_6 zmm13_6; adds dc zmm9_7 zmm9_7 zmm13_7;
adds dc zmm9_8 zmm9_8 zmm13_8; adds dc zmm9_9 zmm9_9 zmm13_9;
adds dc zmm9_a zmm9_a zmm13_a; adds dc zmm9_b zmm9_b zmm13_b;
adds dc zmm9_c zmm9_c zmm13_c; adds dc zmm9_d zmm9_d zmm13_d;
adds dc zmm9_e zmm9_e zmm13_e; adds dc zmm9_f zmm9_f zmm13_f;
(* vpaddd %zmm14,%zmm10,%zmm10                     #! PC = 0x5555555581b8 *)
adds dc zmm10_0 zmm10_0 zmm14_0; adds dc zmm10_1 zmm10_1 zmm14_1;
adds dc zmm10_2 zmm10_2 zmm14_2; adds dc zmm10_3 zmm10_3 zmm14_3;
adds dc zmm10_4 zmm10_4 zmm14_4; adds dc zmm10_5 zmm10_5 zmm14_5;
adds dc zmm10_6 zmm10_6 zmm14_6; adds dc zmm10_7 zmm10_7 zmm14_7;
adds dc zmm10_8 zmm10_8 zmm14_8; adds dc zmm10_9 zmm10_9 zmm14_9;
adds dc zmm10_a zmm10_a zmm14_a; adds dc zmm10_b zmm10_b zmm14_b;
adds dc zmm10_c zmm10_c zmm14_c; adds dc zmm10_d zmm10_d zmm14_d;
adds dc zmm10_e zmm10_e zmm14_e; adds dc zmm10_f zmm10_f zmm14_f;
(* vpaddd %zmm15,%zmm11,%zmm11                     #! PC = 0x5555555581be *)
adds dc zmm11_0 zmm11_0 zmm15_0; adds dc zmm11_1 zmm11_1 zmm15_1;
adds dc zmm11_2 zmm11_2 zmm15_2; adds dc zmm11_3 zmm11_3 zmm15_3;
adds dc zmm11_4 zmm11_4 zmm15_4; adds dc zmm11_5 zmm11_5 zmm15_5;
adds dc zmm11_6 zmm11_6 zmm15_6; adds dc zmm11_7 zmm11_7 zmm15_7;
adds dc zmm11_8 zmm11_8 zmm15_8; adds dc zmm11_9 zmm11_9 zmm15_9;
adds dc zmm11_a zmm11_a zmm15_a; adds dc zmm11_b zmm11_b zmm15_b;
adds dc zmm11_c zmm11_c zmm15_c; adds dc zmm11_d zmm11_d zmm15_d;
adds dc zmm11_e zmm11_e zmm15_e; adds dc zmm11_f zmm11_f zmm15_f;
(* vpxord %zmm8,%zmm4,%zmm4                        #! PC = 0x5555555581c4 *)
xor zmm4_0@uint32 zmm4_0 zmm8_0; xor zmm4_1@uint32 zmm4_1 zmm8_1;
xor zmm4_2@uint32 zmm4_2 zmm8_2; xor zmm4_3@uint32 zmm4_3 zmm8_3;
xor zmm4_4@uint32 zmm4_4 zmm8_4; xor zmm4_5@uint32 zmm4_5 zmm8_5;
xor zmm4_6@uint32 zmm4_6 zmm8_6; xor zmm4_7@uint32 zmm4_7 zmm8_7;
xor zmm4_8@uint32 zmm4_8 zmm8_8; xor zmm4_9@uint32 zmm4_9 zmm8_9;
xor zmm4_a@uint32 zmm4_a zmm8_a; xor zmm4_b@uint32 zmm4_b zmm8_b;
xor zmm4_c@uint32 zmm4_c zmm8_c; xor zmm4_d@uint32 zmm4_d zmm8_d;
xor zmm4_e@uint32 zmm4_e zmm8_e; xor zmm4_f@uint32 zmm4_f zmm8_f;
(* vpxord %zmm9,%zmm5,%zmm5                        #! PC = 0x5555555581ca *)
xor zmm5_0@uint32 zmm5_0 zmm9_0; xor zmm5_1@uint32 zmm5_1 zmm9_1;
xor zmm5_2@uint32 zmm5_2 zmm9_2; xor zmm5_3@uint32 zmm5_3 zmm9_3;
xor zmm5_4@uint32 zmm5_4 zmm9_4; xor zmm5_5@uint32 zmm5_5 zmm9_5;
xor zmm5_6@uint32 zmm5_6 zmm9_6; xor zmm5_7@uint32 zmm5_7 zmm9_7;
xor zmm5_8@uint32 zmm5_8 zmm9_8; xor zmm5_9@uint32 zmm5_9 zmm9_9;
xor zmm5_a@uint32 zmm5_a zmm9_a; xor zmm5_b@uint32 zmm5_b zmm9_b;
xor zmm5_c@uint32 zmm5_c zmm9_c; xor zmm5_d@uint32 zmm5_d zmm9_d;
xor zmm5_e@uint32 zmm5_e zmm9_e; xor zmm5_f@uint32 zmm5_f zmm9_f;
(* vpxord %zmm10,%zmm6,%zmm6                       #! PC = 0x5555555581d0 *)
xor zmm6_0@uint32 zmm6_0 zmm10_0; xor zmm6_1@uint32 zmm6_1 zmm10_1;
xor zmm6_2@uint32 zmm6_2 zmm10_2; xor zmm6_3@uint32 zmm6_3 zmm10_3;
xor zmm6_4@uint32 zmm6_4 zmm10_4; xor zmm6_5@uint32 zmm6_5 zmm10_5;
xor zmm6_6@uint32 zmm6_6 zmm10_6; xor zmm6_7@uint32 zmm6_7 zmm10_7;
xor zmm6_8@uint32 zmm6_8 zmm10_8; xor zmm6_9@uint32 zmm6_9 zmm10_9;
xor zmm6_a@uint32 zmm6_a zmm10_a; xor zmm6_b@uint32 zmm6_b zmm10_b;
xor zmm6_c@uint32 zmm6_c zmm10_c; xor zmm6_d@uint32 zmm6_d zmm10_d;
xor zmm6_e@uint32 zmm6_e zmm10_e; xor zmm6_f@uint32 zmm6_f zmm10_f;
(* vpxord %zmm11,%zmm7,%zmm7                       #! PC = 0x5555555581d6 *)
xor zmm7_0@uint32 zmm7_0 zmm11_0; xor zmm7_1@uint32 zmm7_1 zmm11_1;
xor zmm7_2@uint32 zmm7_2 zmm11_2; xor zmm7_3@uint32 zmm7_3 zmm11_3;
xor zmm7_4@uint32 zmm7_4 zmm11_4; xor zmm7_5@uint32 zmm7_5 zmm11_5;
xor zmm7_6@uint32 zmm7_6 zmm11_6; xor zmm7_7@uint32 zmm7_7 zmm11_7;
xor zmm7_8@uint32 zmm7_8 zmm11_8; xor zmm7_9@uint32 zmm7_9 zmm11_9;
xor zmm7_a@uint32 zmm7_a zmm11_a; xor zmm7_b@uint32 zmm7_b zmm11_b;
xor zmm7_c@uint32 zmm7_c zmm11_c; xor zmm7_d@uint32 zmm7_d zmm11_d;
xor zmm7_e@uint32 zmm7_e zmm11_e; xor zmm7_f@uint32 zmm7_f zmm11_f;
(* vprold $0xc,%zmm4,%zmm4                         #! PC = 0x5555555581dc *)
rol zmm4_0@uint32 zmm4_0 0xc; rol zmm4_1@uint32 zmm4_1 0xc;
rol zmm4_2@uint32 zmm4_2 0xc; rol zmm4_3@uint32 zmm4_3 0xc;
rol zmm4_4@uint32 zmm4_4 0xc; rol zmm4_5@uint32 zmm4_5 0xc;
rol zmm4_6@uint32 zmm4_6 0xc; rol zmm4_7@uint32 zmm4_7 0xc;
rol zmm4_8@uint32 zmm4_8 0xc; rol zmm4_9@uint32 zmm4_9 0xc;
rol zmm4_a@uint32 zmm4_a 0xc; rol zmm4_b@uint32 zmm4_b 0xc;
rol zmm4_c@uint32 zmm4_c 0xc; rol zmm4_d@uint32 zmm4_d 0xc;
rol zmm4_e@uint32 zmm4_e 0xc; rol zmm4_f@uint32 zmm4_f 0xc;
(* vprold $0xc,%zmm5,%zmm5                         #! PC = 0x5555555581e3 *)
rol zmm5_0@uint32 zmm5_0 0xc; rol zmm5_1@uint32 zmm5_1 0xc;
rol zmm5_2@uint32 zmm5_2 0xc; rol zmm5_3@uint32 zmm5_3 0xc;
rol zmm5_4@uint32 zmm5_4 0xc; rol zmm5_5@uint32 zmm5_5 0xc;
rol zmm5_6@uint32 zmm5_6 0xc; rol zmm5_7@uint32 zmm5_7 0xc;
rol zmm5_8@uint32 zmm5_8 0xc; rol zmm5_9@uint32 zmm5_9 0xc;
rol zmm5_a@uint32 zmm5_a 0xc; rol zmm5_b@uint32 zmm5_b 0xc;
rol zmm5_c@uint32 zmm5_c 0xc; rol zmm5_d@uint32 zmm5_d 0xc;
rol zmm5_e@uint32 zmm5_e 0xc; rol zmm5_f@uint32 zmm5_f 0xc;
(* vprold $0xc,%zmm6,%zmm6                         #! PC = 0x5555555581ea *)
rol zmm6_0@uint32 zmm6_0 0xc; rol zmm6_1@uint32 zmm6_1 0xc;
rol zmm6_2@uint32 zmm6_2 0xc; rol zmm6_3@uint32 zmm6_3 0xc;
rol zmm6_4@uint32 zmm6_4 0xc; rol zmm6_5@uint32 zmm6_5 0xc;
rol zmm6_6@uint32 zmm6_6 0xc; rol zmm6_7@uint32 zmm6_7 0xc;
rol zmm6_8@uint32 zmm6_8 0xc; rol zmm6_9@uint32 zmm6_9 0xc;
rol zmm6_a@uint32 zmm6_a 0xc; rol zmm6_b@uint32 zmm6_b 0xc;
rol zmm6_c@uint32 zmm6_c 0xc; rol zmm6_d@uint32 zmm6_d 0xc;
rol zmm6_e@uint32 zmm6_e 0xc; rol zmm6_f@uint32 zmm6_f 0xc;
(* vprold $0xc,%zmm7,%zmm7                         #! PC = 0x5555555581f1 *)
rol zmm7_0@uint32 zmm7_0 0xc; rol zmm7_1@uint32 zmm7_1 0xc;
rol zmm7_2@uint32 zmm7_2 0xc; rol zmm7_3@uint32 zmm7_3 0xc;
rol zmm7_4@uint32 zmm7_4 0xc; rol zmm7_5@uint32 zmm7_5 0xc;
rol zmm7_6@uint32 zmm7_6 0xc; rol zmm7_7@uint32 zmm7_7 0xc;
rol zmm7_8@uint32 zmm7_8 0xc; rol zmm7_9@uint32 zmm7_9 0xc;
rol zmm7_a@uint32 zmm7_a 0xc; rol zmm7_b@uint32 zmm7_b 0xc;
rol zmm7_c@uint32 zmm7_c 0xc; rol zmm7_d@uint32 zmm7_d 0xc;
rol zmm7_e@uint32 zmm7_e 0xc; rol zmm7_f@uint32 zmm7_f 0xc;
(* vpaddd %zmm4,%zmm0,%zmm0                        #! PC = 0x5555555581f8 *)
adds dc zmm0_0 zmm0_0 zmm4_0; adds dc zmm0_1 zmm0_1 zmm4_1;
adds dc zmm0_2 zmm0_2 zmm4_2; adds dc zmm0_3 zmm0_3 zmm4_3;
adds dc zmm0_4 zmm0_4 zmm4_4; adds dc zmm0_5 zmm0_5 zmm4_5;
adds dc zmm0_6 zmm0_6 zmm4_6; adds dc zmm0_7 zmm0_7 zmm4_7;
adds dc zmm0_8 zmm0_8 zmm4_8; adds dc zmm0_9 zmm0_9 zmm4_9;
adds dc zmm0_a zmm0_a zmm4_a; adds dc zmm0_b zmm0_b zmm4_b;
adds dc zmm0_c zmm0_c zmm4_c; adds dc zmm0_d zmm0_d zmm4_d;
adds dc zmm0_e zmm0_e zmm4_e; adds dc zmm0_f zmm0_f zmm4_f;
(* vpaddd %zmm5,%zmm1,%zmm1                        #! PC = 0x5555555581fe *)
adds dc zmm1_0 zmm1_0 zmm5_0; adds dc zmm1_1 zmm1_1 zmm5_1;
adds dc zmm1_2 zmm1_2 zmm5_2; adds dc zmm1_3 zmm1_3 zmm5_3;
adds dc zmm1_4 zmm1_4 zmm5_4; adds dc zmm1_5 zmm1_5 zmm5_5;
adds dc zmm1_6 zmm1_6 zmm5_6; adds dc zmm1_7 zmm1_7 zmm5_7;
adds dc zmm1_8 zmm1_8 zmm5_8; adds dc zmm1_9 zmm1_9 zmm5_9;
adds dc zmm1_a zmm1_a zmm5_a; adds dc zmm1_b zmm1_b zmm5_b;
adds dc zmm1_c zmm1_c zmm5_c; adds dc zmm1_d zmm1_d zmm5_d;
adds dc zmm1_e zmm1_e zmm5_e; adds dc zmm1_f zmm1_f zmm5_f;
(* vpaddd %zmm6,%zmm2,%zmm2                        #! PC = 0x555555558204 *)
adds dc zmm2_0 zmm2_0 zmm6_0; adds dc zmm2_1 zmm2_1 zmm6_1;
adds dc zmm2_2 zmm2_2 zmm6_2; adds dc zmm2_3 zmm2_3 zmm6_3;
adds dc zmm2_4 zmm2_4 zmm6_4; adds dc zmm2_5 zmm2_5 zmm6_5;
adds dc zmm2_6 zmm2_6 zmm6_6; adds dc zmm2_7 zmm2_7 zmm6_7;
adds dc zmm2_8 zmm2_8 zmm6_8; adds dc zmm2_9 zmm2_9 zmm6_9;
adds dc zmm2_a zmm2_a zmm6_a; adds dc zmm2_b zmm2_b zmm6_b;
adds dc zmm2_c zmm2_c zmm6_c; adds dc zmm2_d zmm2_d zmm6_d;
adds dc zmm2_e zmm2_e zmm6_e; adds dc zmm2_f zmm2_f zmm6_f;
(* vpaddd %zmm7,%zmm3,%zmm3                        #! PC = 0x55555555820a *)
adds dc zmm3_0 zmm3_0 zmm7_0; adds dc zmm3_1 zmm3_1 zmm7_1;
adds dc zmm3_2 zmm3_2 zmm7_2; adds dc zmm3_3 zmm3_3 zmm7_3;
adds dc zmm3_4 zmm3_4 zmm7_4; adds dc zmm3_5 zmm3_5 zmm7_5;
adds dc zmm3_6 zmm3_6 zmm7_6; adds dc zmm3_7 zmm3_7 zmm7_7;
adds dc zmm3_8 zmm3_8 zmm7_8; adds dc zmm3_9 zmm3_9 zmm7_9;
adds dc zmm3_a zmm3_a zmm7_a; adds dc zmm3_b zmm3_b zmm7_b;
adds dc zmm3_c zmm3_c zmm7_c; adds dc zmm3_d zmm3_d zmm7_d;
adds dc zmm3_e zmm3_e zmm7_e; adds dc zmm3_f zmm3_f zmm7_f;
(* vpxord %zmm0,%zmm12,%zmm12                      #! PC = 0x555555558210 *)
xor zmm12_0@uint32 zmm12_0 zmm0_0; xor zmm12_1@uint32 zmm12_1 zmm0_1;
xor zmm12_2@uint32 zmm12_2 zmm0_2; xor zmm12_3@uint32 zmm12_3 zmm0_3;
xor zmm12_4@uint32 zmm12_4 zmm0_4; xor zmm12_5@uint32 zmm12_5 zmm0_5;
xor zmm12_6@uint32 zmm12_6 zmm0_6; xor zmm12_7@uint32 zmm12_7 zmm0_7;
xor zmm12_8@uint32 zmm12_8 zmm0_8; xor zmm12_9@uint32 zmm12_9 zmm0_9;
xor zmm12_a@uint32 zmm12_a zmm0_a; xor zmm12_b@uint32 zmm12_b zmm0_b;
xor zmm12_c@uint32 zmm12_c zmm0_c; xor zmm12_d@uint32 zmm12_d zmm0_d;
xor zmm12_e@uint32 zmm12_e zmm0_e; xor zmm12_f@uint32 zmm12_f zmm0_f;
(* vpxord %zmm1,%zmm13,%zmm13                      #! PC = 0x555555558216 *)
xor zmm13_0@uint32 zmm13_0 zmm1_0; xor zmm13_1@uint32 zmm13_1 zmm1_1;
xor zmm13_2@uint32 zmm13_2 zmm1_2; xor zmm13_3@uint32 zmm13_3 zmm1_3;
xor zmm13_4@uint32 zmm13_4 zmm1_4; xor zmm13_5@uint32 zmm13_5 zmm1_5;
xor zmm13_6@uint32 zmm13_6 zmm1_6; xor zmm13_7@uint32 zmm13_7 zmm1_7;
xor zmm13_8@uint32 zmm13_8 zmm1_8; xor zmm13_9@uint32 zmm13_9 zmm1_9;
xor zmm13_a@uint32 zmm13_a zmm1_a; xor zmm13_b@uint32 zmm13_b zmm1_b;
xor zmm13_c@uint32 zmm13_c zmm1_c; xor zmm13_d@uint32 zmm13_d zmm1_d;
xor zmm13_e@uint32 zmm13_e zmm1_e; xor zmm13_f@uint32 zmm13_f zmm1_f;
(* vpxord %zmm2,%zmm14,%zmm14                      #! PC = 0x55555555821c *)
xor zmm14_0@uint32 zmm14_0 zmm2_0; xor zmm14_1@uint32 zmm14_1 zmm2_1;
xor zmm14_2@uint32 zmm14_2 zmm2_2; xor zmm14_3@uint32 zmm14_3 zmm2_3;
xor zmm14_4@uint32 zmm14_4 zmm2_4; xor zmm14_5@uint32 zmm14_5 zmm2_5;
xor zmm14_6@uint32 zmm14_6 zmm2_6; xor zmm14_7@uint32 zmm14_7 zmm2_7;
xor zmm14_8@uint32 zmm14_8 zmm2_8; xor zmm14_9@uint32 zmm14_9 zmm2_9;
xor zmm14_a@uint32 zmm14_a zmm2_a; xor zmm14_b@uint32 zmm14_b zmm2_b;
xor zmm14_c@uint32 zmm14_c zmm2_c; xor zmm14_d@uint32 zmm14_d zmm2_d;
xor zmm14_e@uint32 zmm14_e zmm2_e; xor zmm14_f@uint32 zmm14_f zmm2_f;
(* vpxord %zmm3,%zmm15,%zmm15                      #! PC = 0x555555558222 *)
xor zmm15_0@uint32 zmm15_0 zmm3_0; xor zmm15_1@uint32 zmm15_1 zmm3_1;
xor zmm15_2@uint32 zmm15_2 zmm3_2; xor zmm15_3@uint32 zmm15_3 zmm3_3;
xor zmm15_4@uint32 zmm15_4 zmm3_4; xor zmm15_5@uint32 zmm15_5 zmm3_5;
xor zmm15_6@uint32 zmm15_6 zmm3_6; xor zmm15_7@uint32 zmm15_7 zmm3_7;
xor zmm15_8@uint32 zmm15_8 zmm3_8; xor zmm15_9@uint32 zmm15_9 zmm3_9;
xor zmm15_a@uint32 zmm15_a zmm3_a; xor zmm15_b@uint32 zmm15_b zmm3_b;
xor zmm15_c@uint32 zmm15_c zmm3_c; xor zmm15_d@uint32 zmm15_d zmm3_d;
xor zmm15_e@uint32 zmm15_e zmm3_e; xor zmm15_f@uint32 zmm15_f zmm3_f;
(* vprold $0x8,%zmm12,%zmm12                       #! PC = 0x555555558228 *)
rol zmm12_0@uint32 zmm12_0 0x8; rol zmm12_1@uint32 zmm12_1 0x8;
rol zmm12_2@uint32 zmm12_2 0x8; rol zmm12_3@uint32 zmm12_3 0x8;
rol zmm12_4@uint32 zmm12_4 0x8; rol zmm12_5@uint32 zmm12_5 0x8;
rol zmm12_6@uint32 zmm12_6 0x8; rol zmm12_7@uint32 zmm12_7 0x8;
rol zmm12_8@uint32 zmm12_8 0x8; rol zmm12_9@uint32 zmm12_9 0x8;
rol zmm12_a@uint32 zmm12_a 0x8; rol zmm12_b@uint32 zmm12_b 0x8;
rol zmm12_c@uint32 zmm12_c 0x8; rol zmm12_d@uint32 zmm12_d 0x8;
rol zmm12_e@uint32 zmm12_e 0x8; rol zmm12_f@uint32 zmm12_f 0x8;
(* vprold $0x8,%zmm13,%zmm13                       #! PC = 0x55555555822f *)
rol zmm13_0@uint32 zmm13_0 0x8; rol zmm13_1@uint32 zmm13_1 0x8;
rol zmm13_2@uint32 zmm13_2 0x8; rol zmm13_3@uint32 zmm13_3 0x8;
rol zmm13_4@uint32 zmm13_4 0x8; rol zmm13_5@uint32 zmm13_5 0x8;
rol zmm13_6@uint32 zmm13_6 0x8; rol zmm13_7@uint32 zmm13_7 0x8;
rol zmm13_8@uint32 zmm13_8 0x8; rol zmm13_9@uint32 zmm13_9 0x8;
rol zmm13_a@uint32 zmm13_a 0x8; rol zmm13_b@uint32 zmm13_b 0x8;
rol zmm13_c@uint32 zmm13_c 0x8; rol zmm13_d@uint32 zmm13_d 0x8;
rol zmm13_e@uint32 zmm13_e 0x8; rol zmm13_f@uint32 zmm13_f 0x8;
(* vprold $0x8,%zmm14,%zmm14                       #! PC = 0x555555558236 *)
rol zmm14_0@uint32 zmm14_0 0x8; rol zmm14_1@uint32 zmm14_1 0x8;
rol zmm14_2@uint32 zmm14_2 0x8; rol zmm14_3@uint32 zmm14_3 0x8;
rol zmm14_4@uint32 zmm14_4 0x8; rol zmm14_5@uint32 zmm14_5 0x8;
rol zmm14_6@uint32 zmm14_6 0x8; rol zmm14_7@uint32 zmm14_7 0x8;
rol zmm14_8@uint32 zmm14_8 0x8; rol zmm14_9@uint32 zmm14_9 0x8;
rol zmm14_a@uint32 zmm14_a 0x8; rol zmm14_b@uint32 zmm14_b 0x8;
rol zmm14_c@uint32 zmm14_c 0x8; rol zmm14_d@uint32 zmm14_d 0x8;
rol zmm14_e@uint32 zmm14_e 0x8; rol zmm14_f@uint32 zmm14_f 0x8;
(* vprold $0x8,%zmm15,%zmm15                       #! PC = 0x55555555823d *)
rol zmm15_0@uint32 zmm15_0 0x8; rol zmm15_1@uint32 zmm15_1 0x8;
rol zmm15_2@uint32 zmm15_2 0x8; rol zmm15_3@uint32 zmm15_3 0x8;
rol zmm15_4@uint32 zmm15_4 0x8; rol zmm15_5@uint32 zmm15_5 0x8;
rol zmm15_6@uint32 zmm15_6 0x8; rol zmm15_7@uint32 zmm15_7 0x8;
rol zmm15_8@uint32 zmm15_8 0x8; rol zmm15_9@uint32 zmm15_9 0x8;
rol zmm15_a@uint32 zmm15_a 0x8; rol zmm15_b@uint32 zmm15_b 0x8;
rol zmm15_c@uint32 zmm15_c 0x8; rol zmm15_d@uint32 zmm15_d 0x8;
rol zmm15_e@uint32 zmm15_e 0x8; rol zmm15_f@uint32 zmm15_f 0x8;
(* vpaddd %zmm12,%zmm8,%zmm8                       #! PC = 0x555555558244 *)
adds dc zmm8_0 zmm8_0 zmm12_0; adds dc zmm8_1 zmm8_1 zmm12_1;
adds dc zmm8_2 zmm8_2 zmm12_2; adds dc zmm8_3 zmm8_3 zmm12_3;
adds dc zmm8_4 zmm8_4 zmm12_4; adds dc zmm8_5 zmm8_5 zmm12_5;
adds dc zmm8_6 zmm8_6 zmm12_6; adds dc zmm8_7 zmm8_7 zmm12_7;
adds dc zmm8_8 zmm8_8 zmm12_8; adds dc zmm8_9 zmm8_9 zmm12_9;
adds dc zmm8_a zmm8_a zmm12_a; adds dc zmm8_b zmm8_b zmm12_b;
adds dc zmm8_c zmm8_c zmm12_c; adds dc zmm8_d zmm8_d zmm12_d;
adds dc zmm8_e zmm8_e zmm12_e; adds dc zmm8_f zmm8_f zmm12_f;
(* vpaddd %zmm13,%zmm9,%zmm9                       #! PC = 0x55555555824a *)
adds dc zmm9_0 zmm9_0 zmm13_0; adds dc zmm9_1 zmm9_1 zmm13_1;
adds dc zmm9_2 zmm9_2 zmm13_2; adds dc zmm9_3 zmm9_3 zmm13_3;
adds dc zmm9_4 zmm9_4 zmm13_4; adds dc zmm9_5 zmm9_5 zmm13_5;
adds dc zmm9_6 zmm9_6 zmm13_6; adds dc zmm9_7 zmm9_7 zmm13_7;
adds dc zmm9_8 zmm9_8 zmm13_8; adds dc zmm9_9 zmm9_9 zmm13_9;
adds dc zmm9_a zmm9_a zmm13_a; adds dc zmm9_b zmm9_b zmm13_b;
adds dc zmm9_c zmm9_c zmm13_c; adds dc zmm9_d zmm9_d zmm13_d;
adds dc zmm9_e zmm9_e zmm13_e; adds dc zmm9_f zmm9_f zmm13_f;
(* vpaddd %zmm14,%zmm10,%zmm10                     #! PC = 0x555555558250 *)
adds dc zmm10_0 zmm10_0 zmm14_0; adds dc zmm10_1 zmm10_1 zmm14_1;
adds dc zmm10_2 zmm10_2 zmm14_2; adds dc zmm10_3 zmm10_3 zmm14_3;
adds dc zmm10_4 zmm10_4 zmm14_4; adds dc zmm10_5 zmm10_5 zmm14_5;
adds dc zmm10_6 zmm10_6 zmm14_6; adds dc zmm10_7 zmm10_7 zmm14_7;
adds dc zmm10_8 zmm10_8 zmm14_8; adds dc zmm10_9 zmm10_9 zmm14_9;
adds dc zmm10_a zmm10_a zmm14_a; adds dc zmm10_b zmm10_b zmm14_b;
adds dc zmm10_c zmm10_c zmm14_c; adds dc zmm10_d zmm10_d zmm14_d;
adds dc zmm10_e zmm10_e zmm14_e; adds dc zmm10_f zmm10_f zmm14_f;
(* vpaddd %zmm15,%zmm11,%zmm11                     #! PC = 0x555555558256 *)
adds dc zmm11_0 zmm11_0 zmm15_0; adds dc zmm11_1 zmm11_1 zmm15_1;
adds dc zmm11_2 zmm11_2 zmm15_2; adds dc zmm11_3 zmm11_3 zmm15_3;
adds dc zmm11_4 zmm11_4 zmm15_4; adds dc zmm11_5 zmm11_5 zmm15_5;
adds dc zmm11_6 zmm11_6 zmm15_6; adds dc zmm11_7 zmm11_7 zmm15_7;
adds dc zmm11_8 zmm11_8 zmm15_8; adds dc zmm11_9 zmm11_9 zmm15_9;
adds dc zmm11_a zmm11_a zmm15_a; adds dc zmm11_b zmm11_b zmm15_b;
adds dc zmm11_c zmm11_c zmm15_c; adds dc zmm11_d zmm11_d zmm15_d;
adds dc zmm11_e zmm11_e zmm15_e; adds dc zmm11_f zmm11_f zmm15_f;
(* vpxord %zmm8,%zmm4,%zmm4                        #! PC = 0x55555555825c *)
xor zmm4_0@uint32 zmm4_0 zmm8_0; xor zmm4_1@uint32 zmm4_1 zmm8_1;
xor zmm4_2@uint32 zmm4_2 zmm8_2; xor zmm4_3@uint32 zmm4_3 zmm8_3;
xor zmm4_4@uint32 zmm4_4 zmm8_4; xor zmm4_5@uint32 zmm4_5 zmm8_5;
xor zmm4_6@uint32 zmm4_6 zmm8_6; xor zmm4_7@uint32 zmm4_7 zmm8_7;
xor zmm4_8@uint32 zmm4_8 zmm8_8; xor zmm4_9@uint32 zmm4_9 zmm8_9;
xor zmm4_a@uint32 zmm4_a zmm8_a; xor zmm4_b@uint32 zmm4_b zmm8_b;
xor zmm4_c@uint32 zmm4_c zmm8_c; xor zmm4_d@uint32 zmm4_d zmm8_d;
xor zmm4_e@uint32 zmm4_e zmm8_e; xor zmm4_f@uint32 zmm4_f zmm8_f;
(* vpxord %zmm9,%zmm5,%zmm5                        #! PC = 0x555555558262 *)
xor zmm5_0@uint32 zmm5_0 zmm9_0; xor zmm5_1@uint32 zmm5_1 zmm9_1;
xor zmm5_2@uint32 zmm5_2 zmm9_2; xor zmm5_3@uint32 zmm5_3 zmm9_3;
xor zmm5_4@uint32 zmm5_4 zmm9_4; xor zmm5_5@uint32 zmm5_5 zmm9_5;
xor zmm5_6@uint32 zmm5_6 zmm9_6; xor zmm5_7@uint32 zmm5_7 zmm9_7;
xor zmm5_8@uint32 zmm5_8 zmm9_8; xor zmm5_9@uint32 zmm5_9 zmm9_9;
xor zmm5_a@uint32 zmm5_a zmm9_a; xor zmm5_b@uint32 zmm5_b zmm9_b;
xor zmm5_c@uint32 zmm5_c zmm9_c; xor zmm5_d@uint32 zmm5_d zmm9_d;
xor zmm5_e@uint32 zmm5_e zmm9_e; xor zmm5_f@uint32 zmm5_f zmm9_f;
(* vpxord %zmm10,%zmm6,%zmm6                       #! PC = 0x555555558268 *)
xor zmm6_0@uint32 zmm6_0 zmm10_0; xor zmm6_1@uint32 zmm6_1 zmm10_1;
xor zmm6_2@uint32 zmm6_2 zmm10_2; xor zmm6_3@uint32 zmm6_3 zmm10_3;
xor zmm6_4@uint32 zmm6_4 zmm10_4; xor zmm6_5@uint32 zmm6_5 zmm10_5;
xor zmm6_6@uint32 zmm6_6 zmm10_6; xor zmm6_7@uint32 zmm6_7 zmm10_7;
xor zmm6_8@uint32 zmm6_8 zmm10_8; xor zmm6_9@uint32 zmm6_9 zmm10_9;
xor zmm6_a@uint32 zmm6_a zmm10_a; xor zmm6_b@uint32 zmm6_b zmm10_b;
xor zmm6_c@uint32 zmm6_c zmm10_c; xor zmm6_d@uint32 zmm6_d zmm10_d;
xor zmm6_e@uint32 zmm6_e zmm10_e; xor zmm6_f@uint32 zmm6_f zmm10_f;
(* vpxord %zmm11,%zmm7,%zmm7                       #! PC = 0x55555555826e *)
xor zmm7_0@uint32 zmm7_0 zmm11_0; xor zmm7_1@uint32 zmm7_1 zmm11_1;
xor zmm7_2@uint32 zmm7_2 zmm11_2; xor zmm7_3@uint32 zmm7_3 zmm11_3;
xor zmm7_4@uint32 zmm7_4 zmm11_4; xor zmm7_5@uint32 zmm7_5 zmm11_5;
xor zmm7_6@uint32 zmm7_6 zmm11_6; xor zmm7_7@uint32 zmm7_7 zmm11_7;
xor zmm7_8@uint32 zmm7_8 zmm11_8; xor zmm7_9@uint32 zmm7_9 zmm11_9;
xor zmm7_a@uint32 zmm7_a zmm11_a; xor zmm7_b@uint32 zmm7_b zmm11_b;
xor zmm7_c@uint32 zmm7_c zmm11_c; xor zmm7_d@uint32 zmm7_d zmm11_d;
xor zmm7_e@uint32 zmm7_e zmm11_e; xor zmm7_f@uint32 zmm7_f zmm11_f;
(* vprold $0x7,%zmm4,%zmm4                         #! PC = 0x555555558274 *)
rol zmm4_0@uint32 zmm4_0 0x7; rol zmm4_1@uint32 zmm4_1 0x7;
rol zmm4_2@uint32 zmm4_2 0x7; rol zmm4_3@uint32 zmm4_3 0x7;
rol zmm4_4@uint32 zmm4_4 0x7; rol zmm4_5@uint32 zmm4_5 0x7;
rol zmm4_6@uint32 zmm4_6 0x7; rol zmm4_7@uint32 zmm4_7 0x7;
rol zmm4_8@uint32 zmm4_8 0x7; rol zmm4_9@uint32 zmm4_9 0x7;
rol zmm4_a@uint32 zmm4_a 0x7; rol zmm4_b@uint32 zmm4_b 0x7;
rol zmm4_c@uint32 zmm4_c 0x7; rol zmm4_d@uint32 zmm4_d 0x7;
rol zmm4_e@uint32 zmm4_e 0x7; rol zmm4_f@uint32 zmm4_f 0x7;
(* vprold $0x7,%zmm5,%zmm5                         #! PC = 0x55555555827b *)
rol zmm5_0@uint32 zmm5_0 0x7; rol zmm5_1@uint32 zmm5_1 0x7;
rol zmm5_2@uint32 zmm5_2 0x7; rol zmm5_3@uint32 zmm5_3 0x7;
rol zmm5_4@uint32 zmm5_4 0x7; rol zmm5_5@uint32 zmm5_5 0x7;
rol zmm5_6@uint32 zmm5_6 0x7; rol zmm5_7@uint32 zmm5_7 0x7;
rol zmm5_8@uint32 zmm5_8 0x7; rol zmm5_9@uint32 zmm5_9 0x7;
rol zmm5_a@uint32 zmm5_a 0x7; rol zmm5_b@uint32 zmm5_b 0x7;
rol zmm5_c@uint32 zmm5_c 0x7; rol zmm5_d@uint32 zmm5_d 0x7;
rol zmm5_e@uint32 zmm5_e 0x7; rol zmm5_f@uint32 zmm5_f 0x7;
(* vprold $0x7,%zmm6,%zmm6                         #! PC = 0x555555558282 *)
rol zmm6_0@uint32 zmm6_0 0x7; rol zmm6_1@uint32 zmm6_1 0x7;
rol zmm6_2@uint32 zmm6_2 0x7; rol zmm6_3@uint32 zmm6_3 0x7;
rol zmm6_4@uint32 zmm6_4 0x7; rol zmm6_5@uint32 zmm6_5 0x7;
rol zmm6_6@uint32 zmm6_6 0x7; rol zmm6_7@uint32 zmm6_7 0x7;
rol zmm6_8@uint32 zmm6_8 0x7; rol zmm6_9@uint32 zmm6_9 0x7;
rol zmm6_a@uint32 zmm6_a 0x7; rol zmm6_b@uint32 zmm6_b 0x7;
rol zmm6_c@uint32 zmm6_c 0x7; rol zmm6_d@uint32 zmm6_d 0x7;
rol zmm6_e@uint32 zmm6_e 0x7; rol zmm6_f@uint32 zmm6_f 0x7;
(* vprold $0x7,%zmm7,%zmm7                         #! PC = 0x555555558289 *)
rol zmm7_0@uint32 zmm7_0 0x7; rol zmm7_1@uint32 zmm7_1 0x7;
rol zmm7_2@uint32 zmm7_2 0x7; rol zmm7_3@uint32 zmm7_3 0x7;
rol zmm7_4@uint32 zmm7_4 0x7; rol zmm7_5@uint32 zmm7_5 0x7;
rol zmm7_6@uint32 zmm7_6 0x7; rol zmm7_7@uint32 zmm7_7 0x7;
rol zmm7_8@uint32 zmm7_8 0x7; rol zmm7_9@uint32 zmm7_9 0x7;
rol zmm7_a@uint32 zmm7_a 0x7; rol zmm7_b@uint32 zmm7_b 0x7;
rol zmm7_c@uint32 zmm7_c 0x7; rol zmm7_d@uint32 zmm7_d 0x7;
rol zmm7_e@uint32 zmm7_e 0x7; rol zmm7_f@uint32 zmm7_f 0x7;
(* vpaddd %zmm5,%zmm0,%zmm0                        #! PC = 0x555555558290 *)
adds dc zmm0_0 zmm0_0 zmm5_0; adds dc zmm0_1 zmm0_1 zmm5_1;
adds dc zmm0_2 zmm0_2 zmm5_2; adds dc zmm0_3 zmm0_3 zmm5_3;
adds dc zmm0_4 zmm0_4 zmm5_4; adds dc zmm0_5 zmm0_5 zmm5_5;
adds dc zmm0_6 zmm0_6 zmm5_6; adds dc zmm0_7 zmm0_7 zmm5_7;
adds dc zmm0_8 zmm0_8 zmm5_8; adds dc zmm0_9 zmm0_9 zmm5_9;
adds dc zmm0_a zmm0_a zmm5_a; adds dc zmm0_b zmm0_b zmm5_b;
adds dc zmm0_c zmm0_c zmm5_c; adds dc zmm0_d zmm0_d zmm5_d;
adds dc zmm0_e zmm0_e zmm5_e; adds dc zmm0_f zmm0_f zmm5_f;
(* vpaddd %zmm6,%zmm1,%zmm1                        #! PC = 0x555555558296 *)
adds dc zmm1_0 zmm1_0 zmm6_0; adds dc zmm1_1 zmm1_1 zmm6_1;
adds dc zmm1_2 zmm1_2 zmm6_2; adds dc zmm1_3 zmm1_3 zmm6_3;
adds dc zmm1_4 zmm1_4 zmm6_4; adds dc zmm1_5 zmm1_5 zmm6_5;
adds dc zmm1_6 zmm1_6 zmm6_6; adds dc zmm1_7 zmm1_7 zmm6_7;
adds dc zmm1_8 zmm1_8 zmm6_8; adds dc zmm1_9 zmm1_9 zmm6_9;
adds dc zmm1_a zmm1_a zmm6_a; adds dc zmm1_b zmm1_b zmm6_b;
adds dc zmm1_c zmm1_c zmm6_c; adds dc zmm1_d zmm1_d zmm6_d;
adds dc zmm1_e zmm1_e zmm6_e; adds dc zmm1_f zmm1_f zmm6_f;
(* vpaddd %zmm7,%zmm2,%zmm2                        #! PC = 0x55555555829c *)
adds dc zmm2_0 zmm2_0 zmm7_0; adds dc zmm2_1 zmm2_1 zmm7_1;
adds dc zmm2_2 zmm2_2 zmm7_2; adds dc zmm2_3 zmm2_3 zmm7_3;
adds dc zmm2_4 zmm2_4 zmm7_4; adds dc zmm2_5 zmm2_5 zmm7_5;
adds dc zmm2_6 zmm2_6 zmm7_6; adds dc zmm2_7 zmm2_7 zmm7_7;
adds dc zmm2_8 zmm2_8 zmm7_8; adds dc zmm2_9 zmm2_9 zmm7_9;
adds dc zmm2_a zmm2_a zmm7_a; adds dc zmm2_b zmm2_b zmm7_b;
adds dc zmm2_c zmm2_c zmm7_c; adds dc zmm2_d zmm2_d zmm7_d;
adds dc zmm2_e zmm2_e zmm7_e; adds dc zmm2_f zmm2_f zmm7_f;
(* vpaddd %zmm4,%zmm3,%zmm3                        #! PC = 0x5555555582a2 *)
adds dc zmm3_0 zmm3_0 zmm4_0; adds dc zmm3_1 zmm3_1 zmm4_1;
adds dc zmm3_2 zmm3_2 zmm4_2; adds dc zmm3_3 zmm3_3 zmm4_3;
adds dc zmm3_4 zmm3_4 zmm4_4; adds dc zmm3_5 zmm3_5 zmm4_5;
adds dc zmm3_6 zmm3_6 zmm4_6; adds dc zmm3_7 zmm3_7 zmm4_7;
adds dc zmm3_8 zmm3_8 zmm4_8; adds dc zmm3_9 zmm3_9 zmm4_9;
adds dc zmm3_a zmm3_a zmm4_a; adds dc zmm3_b zmm3_b zmm4_b;
adds dc zmm3_c zmm3_c zmm4_c; adds dc zmm3_d zmm3_d zmm4_d;
adds dc zmm3_e zmm3_e zmm4_e; adds dc zmm3_f zmm3_f zmm4_f;
(* vpxord %zmm0,%zmm15,%zmm15                      #! PC = 0x5555555582a8 *)
xor zmm15_0@uint32 zmm15_0 zmm0_0; xor zmm15_1@uint32 zmm15_1 zmm0_1;
xor zmm15_2@uint32 zmm15_2 zmm0_2; xor zmm15_3@uint32 zmm15_3 zmm0_3;
xor zmm15_4@uint32 zmm15_4 zmm0_4; xor zmm15_5@uint32 zmm15_5 zmm0_5;
xor zmm15_6@uint32 zmm15_6 zmm0_6; xor zmm15_7@uint32 zmm15_7 zmm0_7;
xor zmm15_8@uint32 zmm15_8 zmm0_8; xor zmm15_9@uint32 zmm15_9 zmm0_9;
xor zmm15_a@uint32 zmm15_a zmm0_a; xor zmm15_b@uint32 zmm15_b zmm0_b;
xor zmm15_c@uint32 zmm15_c zmm0_c; xor zmm15_d@uint32 zmm15_d zmm0_d;
xor zmm15_e@uint32 zmm15_e zmm0_e; xor zmm15_f@uint32 zmm15_f zmm0_f;
(* vpxord %zmm1,%zmm12,%zmm12                      #! PC = 0x5555555582ae *)
xor zmm12_0@uint32 zmm12_0 zmm1_0; xor zmm12_1@uint32 zmm12_1 zmm1_1;
xor zmm12_2@uint32 zmm12_2 zmm1_2; xor zmm12_3@uint32 zmm12_3 zmm1_3;
xor zmm12_4@uint32 zmm12_4 zmm1_4; xor zmm12_5@uint32 zmm12_5 zmm1_5;
xor zmm12_6@uint32 zmm12_6 zmm1_6; xor zmm12_7@uint32 zmm12_7 zmm1_7;
xor zmm12_8@uint32 zmm12_8 zmm1_8; xor zmm12_9@uint32 zmm12_9 zmm1_9;
xor zmm12_a@uint32 zmm12_a zmm1_a; xor zmm12_b@uint32 zmm12_b zmm1_b;
xor zmm12_c@uint32 zmm12_c zmm1_c; xor zmm12_d@uint32 zmm12_d zmm1_d;
xor zmm12_e@uint32 zmm12_e zmm1_e; xor zmm12_f@uint32 zmm12_f zmm1_f;
(* vpxord %zmm2,%zmm13,%zmm13                      #! PC = 0x5555555582b4 *)
xor zmm13_0@uint32 zmm13_0 zmm2_0; xor zmm13_1@uint32 zmm13_1 zmm2_1;
xor zmm13_2@uint32 zmm13_2 zmm2_2; xor zmm13_3@uint32 zmm13_3 zmm2_3;
xor zmm13_4@uint32 zmm13_4 zmm2_4; xor zmm13_5@uint32 zmm13_5 zmm2_5;
xor zmm13_6@uint32 zmm13_6 zmm2_6; xor zmm13_7@uint32 zmm13_7 zmm2_7;
xor zmm13_8@uint32 zmm13_8 zmm2_8; xor zmm13_9@uint32 zmm13_9 zmm2_9;
xor zmm13_a@uint32 zmm13_a zmm2_a; xor zmm13_b@uint32 zmm13_b zmm2_b;
xor zmm13_c@uint32 zmm13_c zmm2_c; xor zmm13_d@uint32 zmm13_d zmm2_d;
xor zmm13_e@uint32 zmm13_e zmm2_e; xor zmm13_f@uint32 zmm13_f zmm2_f;
(* vpxord %zmm3,%zmm14,%zmm14                      #! PC = 0x5555555582ba *)
xor zmm14_0@uint32 zmm14_0 zmm3_0; xor zmm14_1@uint32 zmm14_1 zmm3_1;
xor zmm14_2@uint32 zmm14_2 zmm3_2; xor zmm14_3@uint32 zmm14_3 zmm3_3;
xor zmm14_4@uint32 zmm14_4 zmm3_4; xor zmm14_5@uint32 zmm14_5 zmm3_5;
xor zmm14_6@uint32 zmm14_6 zmm3_6; xor zmm14_7@uint32 zmm14_7 zmm3_7;
xor zmm14_8@uint32 zmm14_8 zmm3_8; xor zmm14_9@uint32 zmm14_9 zmm3_9;
xor zmm14_a@uint32 zmm14_a zmm3_a; xor zmm14_b@uint32 zmm14_b zmm3_b;
xor zmm14_c@uint32 zmm14_c zmm3_c; xor zmm14_d@uint32 zmm14_d zmm3_d;
xor zmm14_e@uint32 zmm14_e zmm3_e; xor zmm14_f@uint32 zmm14_f zmm3_f;
(* vprold $0x10,%zmm15,%zmm15                      #! PC = 0x5555555582c0 *)
rol zmm15_0@uint32 zmm15_0 0x10; rol zmm15_1@uint32 zmm15_1 0x10;
rol zmm15_2@uint32 zmm15_2 0x10; rol zmm15_3@uint32 zmm15_3 0x10;
rol zmm15_4@uint32 zmm15_4 0x10; rol zmm15_5@uint32 zmm15_5 0x10;
rol zmm15_6@uint32 zmm15_6 0x10; rol zmm15_7@uint32 zmm15_7 0x10;
rol zmm15_8@uint32 zmm15_8 0x10; rol zmm15_9@uint32 zmm15_9 0x10;
rol zmm15_a@uint32 zmm15_a 0x10; rol zmm15_b@uint32 zmm15_b 0x10;
rol zmm15_c@uint32 zmm15_c 0x10; rol zmm15_d@uint32 zmm15_d 0x10;
rol zmm15_e@uint32 zmm15_e 0x10; rol zmm15_f@uint32 zmm15_f 0x10;
(* vprold $0x10,%zmm12,%zmm12                      #! PC = 0x5555555582c7 *)
rol zmm12_0@uint32 zmm12_0 0x10; rol zmm12_1@uint32 zmm12_1 0x10;
rol zmm12_2@uint32 zmm12_2 0x10; rol zmm12_3@uint32 zmm12_3 0x10;
rol zmm12_4@uint32 zmm12_4 0x10; rol zmm12_5@uint32 zmm12_5 0x10;
rol zmm12_6@uint32 zmm12_6 0x10; rol zmm12_7@uint32 zmm12_7 0x10;
rol zmm12_8@uint32 zmm12_8 0x10; rol zmm12_9@uint32 zmm12_9 0x10;
rol zmm12_a@uint32 zmm12_a 0x10; rol zmm12_b@uint32 zmm12_b 0x10;
rol zmm12_c@uint32 zmm12_c 0x10; rol zmm12_d@uint32 zmm12_d 0x10;
rol zmm12_e@uint32 zmm12_e 0x10; rol zmm12_f@uint32 zmm12_f 0x10;
(* vprold $0x10,%zmm13,%zmm13                      #! PC = 0x5555555582ce *)
rol zmm13_0@uint32 zmm13_0 0x10; rol zmm13_1@uint32 zmm13_1 0x10;
rol zmm13_2@uint32 zmm13_2 0x10; rol zmm13_3@uint32 zmm13_3 0x10;
rol zmm13_4@uint32 zmm13_4 0x10; rol zmm13_5@uint32 zmm13_5 0x10;
rol zmm13_6@uint32 zmm13_6 0x10; rol zmm13_7@uint32 zmm13_7 0x10;
rol zmm13_8@uint32 zmm13_8 0x10; rol zmm13_9@uint32 zmm13_9 0x10;
rol zmm13_a@uint32 zmm13_a 0x10; rol zmm13_b@uint32 zmm13_b 0x10;
rol zmm13_c@uint32 zmm13_c 0x10; rol zmm13_d@uint32 zmm13_d 0x10;
rol zmm13_e@uint32 zmm13_e 0x10; rol zmm13_f@uint32 zmm13_f 0x10;
(* vprold $0x10,%zmm14,%zmm14                      #! PC = 0x5555555582d5 *)
rol zmm14_0@uint32 zmm14_0 0x10; rol zmm14_1@uint32 zmm14_1 0x10;
rol zmm14_2@uint32 zmm14_2 0x10; rol zmm14_3@uint32 zmm14_3 0x10;
rol zmm14_4@uint32 zmm14_4 0x10; rol zmm14_5@uint32 zmm14_5 0x10;
rol zmm14_6@uint32 zmm14_6 0x10; rol zmm14_7@uint32 zmm14_7 0x10;
rol zmm14_8@uint32 zmm14_8 0x10; rol zmm14_9@uint32 zmm14_9 0x10;
rol zmm14_a@uint32 zmm14_a 0x10; rol zmm14_b@uint32 zmm14_b 0x10;
rol zmm14_c@uint32 zmm14_c 0x10; rol zmm14_d@uint32 zmm14_d 0x10;
rol zmm14_e@uint32 zmm14_e 0x10; rol zmm14_f@uint32 zmm14_f 0x10;
(* vpaddd %zmm15,%zmm10,%zmm10                     #! PC = 0x5555555582dc *)
adds dc zmm10_0 zmm10_0 zmm15_0; adds dc zmm10_1 zmm10_1 zmm15_1;
adds dc zmm10_2 zmm10_2 zmm15_2; adds dc zmm10_3 zmm10_3 zmm15_3;
adds dc zmm10_4 zmm10_4 zmm15_4; adds dc zmm10_5 zmm10_5 zmm15_5;
adds dc zmm10_6 zmm10_6 zmm15_6; adds dc zmm10_7 zmm10_7 zmm15_7;
adds dc zmm10_8 zmm10_8 zmm15_8; adds dc zmm10_9 zmm10_9 zmm15_9;
adds dc zmm10_a zmm10_a zmm15_a; adds dc zmm10_b zmm10_b zmm15_b;
adds dc zmm10_c zmm10_c zmm15_c; adds dc zmm10_d zmm10_d zmm15_d;
adds dc zmm10_e zmm10_e zmm15_e; adds dc zmm10_f zmm10_f zmm15_f;
(* vpaddd %zmm12,%zmm11,%zmm11                     #! PC = 0x5555555582e2 *)
adds dc zmm11_0 zmm11_0 zmm12_0; adds dc zmm11_1 zmm11_1 zmm12_1;
adds dc zmm11_2 zmm11_2 zmm12_2; adds dc zmm11_3 zmm11_3 zmm12_3;
adds dc zmm11_4 zmm11_4 zmm12_4; adds dc zmm11_5 zmm11_5 zmm12_5;
adds dc zmm11_6 zmm11_6 zmm12_6; adds dc zmm11_7 zmm11_7 zmm12_7;
adds dc zmm11_8 zmm11_8 zmm12_8; adds dc zmm11_9 zmm11_9 zmm12_9;
adds dc zmm11_a zmm11_a zmm12_a; adds dc zmm11_b zmm11_b zmm12_b;
adds dc zmm11_c zmm11_c zmm12_c; adds dc zmm11_d zmm11_d zmm12_d;
adds dc zmm11_e zmm11_e zmm12_e; adds dc zmm11_f zmm11_f zmm12_f;
(* vpaddd %zmm13,%zmm8,%zmm8                       #! PC = 0x5555555582e8 *)
adds dc zmm8_0 zmm8_0 zmm13_0; adds dc zmm8_1 zmm8_1 zmm13_1;
adds dc zmm8_2 zmm8_2 zmm13_2; adds dc zmm8_3 zmm8_3 zmm13_3;
adds dc zmm8_4 zmm8_4 zmm13_4; adds dc zmm8_5 zmm8_5 zmm13_5;
adds dc zmm8_6 zmm8_6 zmm13_6; adds dc zmm8_7 zmm8_7 zmm13_7;
adds dc zmm8_8 zmm8_8 zmm13_8; adds dc zmm8_9 zmm8_9 zmm13_9;
adds dc zmm8_a zmm8_a zmm13_a; adds dc zmm8_b zmm8_b zmm13_b;
adds dc zmm8_c zmm8_c zmm13_c; adds dc zmm8_d zmm8_d zmm13_d;
adds dc zmm8_e zmm8_e zmm13_e; adds dc zmm8_f zmm8_f zmm13_f;
(* vpaddd %zmm14,%zmm9,%zmm9                       #! PC = 0x5555555582ee *)
adds dc zmm9_0 zmm9_0 zmm14_0; adds dc zmm9_1 zmm9_1 zmm14_1;
adds dc zmm9_2 zmm9_2 zmm14_2; adds dc zmm9_3 zmm9_3 zmm14_3;
adds dc zmm9_4 zmm9_4 zmm14_4; adds dc zmm9_5 zmm9_5 zmm14_5;
adds dc zmm9_6 zmm9_6 zmm14_6; adds dc zmm9_7 zmm9_7 zmm14_7;
adds dc zmm9_8 zmm9_8 zmm14_8; adds dc zmm9_9 zmm9_9 zmm14_9;
adds dc zmm9_a zmm9_a zmm14_a; adds dc zmm9_b zmm9_b zmm14_b;
adds dc zmm9_c zmm9_c zmm14_c; adds dc zmm9_d zmm9_d zmm14_d;
adds dc zmm9_e zmm9_e zmm14_e; adds dc zmm9_f zmm9_f zmm14_f;
(* vpxord %zmm10,%zmm5,%zmm5                       #! PC = 0x5555555582f4 *)
xor zmm5_0@uint32 zmm5_0 zmm10_0; xor zmm5_1@uint32 zmm5_1 zmm10_1;
xor zmm5_2@uint32 zmm5_2 zmm10_2; xor zmm5_3@uint32 zmm5_3 zmm10_3;
xor zmm5_4@uint32 zmm5_4 zmm10_4; xor zmm5_5@uint32 zmm5_5 zmm10_5;
xor zmm5_6@uint32 zmm5_6 zmm10_6; xor zmm5_7@uint32 zmm5_7 zmm10_7;
xor zmm5_8@uint32 zmm5_8 zmm10_8; xor zmm5_9@uint32 zmm5_9 zmm10_9;
xor zmm5_a@uint32 zmm5_a zmm10_a; xor zmm5_b@uint32 zmm5_b zmm10_b;
xor zmm5_c@uint32 zmm5_c zmm10_c; xor zmm5_d@uint32 zmm5_d zmm10_d;
xor zmm5_e@uint32 zmm5_e zmm10_e; xor zmm5_f@uint32 zmm5_f zmm10_f;
(* vpxord %zmm11,%zmm6,%zmm6                       #! PC = 0x5555555582fa *)
xor zmm6_0@uint32 zmm6_0 zmm11_0; xor zmm6_1@uint32 zmm6_1 zmm11_1;
xor zmm6_2@uint32 zmm6_2 zmm11_2; xor zmm6_3@uint32 zmm6_3 zmm11_3;
xor zmm6_4@uint32 zmm6_4 zmm11_4; xor zmm6_5@uint32 zmm6_5 zmm11_5;
xor zmm6_6@uint32 zmm6_6 zmm11_6; xor zmm6_7@uint32 zmm6_7 zmm11_7;
xor zmm6_8@uint32 zmm6_8 zmm11_8; xor zmm6_9@uint32 zmm6_9 zmm11_9;
xor zmm6_a@uint32 zmm6_a zmm11_a; xor zmm6_b@uint32 zmm6_b zmm11_b;
xor zmm6_c@uint32 zmm6_c zmm11_c; xor zmm6_d@uint32 zmm6_d zmm11_d;
xor zmm6_e@uint32 zmm6_e zmm11_e; xor zmm6_f@uint32 zmm6_f zmm11_f;
(* vpxord %zmm8,%zmm7,%zmm7                        #! PC = 0x555555558300 *)
xor zmm7_0@uint32 zmm7_0 zmm8_0; xor zmm7_1@uint32 zmm7_1 zmm8_1;
xor zmm7_2@uint32 zmm7_2 zmm8_2; xor zmm7_3@uint32 zmm7_3 zmm8_3;
xor zmm7_4@uint32 zmm7_4 zmm8_4; xor zmm7_5@uint32 zmm7_5 zmm8_5;
xor zmm7_6@uint32 zmm7_6 zmm8_6; xor zmm7_7@uint32 zmm7_7 zmm8_7;
xor zmm7_8@uint32 zmm7_8 zmm8_8; xor zmm7_9@uint32 zmm7_9 zmm8_9;
xor zmm7_a@uint32 zmm7_a zmm8_a; xor zmm7_b@uint32 zmm7_b zmm8_b;
xor zmm7_c@uint32 zmm7_c zmm8_c; xor zmm7_d@uint32 zmm7_d zmm8_d;
xor zmm7_e@uint32 zmm7_e zmm8_e; xor zmm7_f@uint32 zmm7_f zmm8_f;
(* vpxord %zmm9,%zmm4,%zmm4                        #! PC = 0x555555558306 *)
xor zmm4_0@uint32 zmm4_0 zmm9_0; xor zmm4_1@uint32 zmm4_1 zmm9_1;
xor zmm4_2@uint32 zmm4_2 zmm9_2; xor zmm4_3@uint32 zmm4_3 zmm9_3;
xor zmm4_4@uint32 zmm4_4 zmm9_4; xor zmm4_5@uint32 zmm4_5 zmm9_5;
xor zmm4_6@uint32 zmm4_6 zmm9_6; xor zmm4_7@uint32 zmm4_7 zmm9_7;
xor zmm4_8@uint32 zmm4_8 zmm9_8; xor zmm4_9@uint32 zmm4_9 zmm9_9;
xor zmm4_a@uint32 zmm4_a zmm9_a; xor zmm4_b@uint32 zmm4_b zmm9_b;
xor zmm4_c@uint32 zmm4_c zmm9_c; xor zmm4_d@uint32 zmm4_d zmm9_d;
xor zmm4_e@uint32 zmm4_e zmm9_e; xor zmm4_f@uint32 zmm4_f zmm9_f;
(* vprold $0xc,%zmm5,%zmm5                         #! PC = 0x55555555830c *)
rol zmm5_0@uint32 zmm5_0 0xc; rol zmm5_1@uint32 zmm5_1 0xc;
rol zmm5_2@uint32 zmm5_2 0xc; rol zmm5_3@uint32 zmm5_3 0xc;
rol zmm5_4@uint32 zmm5_4 0xc; rol zmm5_5@uint32 zmm5_5 0xc;
rol zmm5_6@uint32 zmm5_6 0xc; rol zmm5_7@uint32 zmm5_7 0xc;
rol zmm5_8@uint32 zmm5_8 0xc; rol zmm5_9@uint32 zmm5_9 0xc;
rol zmm5_a@uint32 zmm5_a 0xc; rol zmm5_b@uint32 zmm5_b 0xc;
rol zmm5_c@uint32 zmm5_c 0xc; rol zmm5_d@uint32 zmm5_d 0xc;
rol zmm5_e@uint32 zmm5_e 0xc; rol zmm5_f@uint32 zmm5_f 0xc;
(* vprold $0xc,%zmm6,%zmm6                         #! PC = 0x555555558313 *)
rol zmm6_0@uint32 zmm6_0 0xc; rol zmm6_1@uint32 zmm6_1 0xc;
rol zmm6_2@uint32 zmm6_2 0xc; rol zmm6_3@uint32 zmm6_3 0xc;
rol zmm6_4@uint32 zmm6_4 0xc; rol zmm6_5@uint32 zmm6_5 0xc;
rol zmm6_6@uint32 zmm6_6 0xc; rol zmm6_7@uint32 zmm6_7 0xc;
rol zmm6_8@uint32 zmm6_8 0xc; rol zmm6_9@uint32 zmm6_9 0xc;
rol zmm6_a@uint32 zmm6_a 0xc; rol zmm6_b@uint32 zmm6_b 0xc;
rol zmm6_c@uint32 zmm6_c 0xc; rol zmm6_d@uint32 zmm6_d 0xc;
rol zmm6_e@uint32 zmm6_e 0xc; rol zmm6_f@uint32 zmm6_f 0xc;
(* vprold $0xc,%zmm7,%zmm7                         #! PC = 0x55555555831a *)
rol zmm7_0@uint32 zmm7_0 0xc; rol zmm7_1@uint32 zmm7_1 0xc;
rol zmm7_2@uint32 zmm7_2 0xc; rol zmm7_3@uint32 zmm7_3 0xc;
rol zmm7_4@uint32 zmm7_4 0xc; rol zmm7_5@uint32 zmm7_5 0xc;
rol zmm7_6@uint32 zmm7_6 0xc; rol zmm7_7@uint32 zmm7_7 0xc;
rol zmm7_8@uint32 zmm7_8 0xc; rol zmm7_9@uint32 zmm7_9 0xc;
rol zmm7_a@uint32 zmm7_a 0xc; rol zmm7_b@uint32 zmm7_b 0xc;
rol zmm7_c@uint32 zmm7_c 0xc; rol zmm7_d@uint32 zmm7_d 0xc;
rol zmm7_e@uint32 zmm7_e 0xc; rol zmm7_f@uint32 zmm7_f 0xc;
(* vprold $0xc,%zmm4,%zmm4                         #! PC = 0x555555558321 *)
rol zmm4_0@uint32 zmm4_0 0xc; rol zmm4_1@uint32 zmm4_1 0xc;
rol zmm4_2@uint32 zmm4_2 0xc; rol zmm4_3@uint32 zmm4_3 0xc;
rol zmm4_4@uint32 zmm4_4 0xc; rol zmm4_5@uint32 zmm4_5 0xc;
rol zmm4_6@uint32 zmm4_6 0xc; rol zmm4_7@uint32 zmm4_7 0xc;
rol zmm4_8@uint32 zmm4_8 0xc; rol zmm4_9@uint32 zmm4_9 0xc;
rol zmm4_a@uint32 zmm4_a 0xc; rol zmm4_b@uint32 zmm4_b 0xc;
rol zmm4_c@uint32 zmm4_c 0xc; rol zmm4_d@uint32 zmm4_d 0xc;
rol zmm4_e@uint32 zmm4_e 0xc; rol zmm4_f@uint32 zmm4_f 0xc;
(* vpaddd %zmm5,%zmm0,%zmm0                        #! PC = 0x555555558328 *)
adds dc zmm0_0 zmm0_0 zmm5_0; adds dc zmm0_1 zmm0_1 zmm5_1;
adds dc zmm0_2 zmm0_2 zmm5_2; adds dc zmm0_3 zmm0_3 zmm5_3;
adds dc zmm0_4 zmm0_4 zmm5_4; adds dc zmm0_5 zmm0_5 zmm5_5;
adds dc zmm0_6 zmm0_6 zmm5_6; adds dc zmm0_7 zmm0_7 zmm5_7;
adds dc zmm0_8 zmm0_8 zmm5_8; adds dc zmm0_9 zmm0_9 zmm5_9;
adds dc zmm0_a zmm0_a zmm5_a; adds dc zmm0_b zmm0_b zmm5_b;
adds dc zmm0_c zmm0_c zmm5_c; adds dc zmm0_d zmm0_d zmm5_d;
adds dc zmm0_e zmm0_e zmm5_e; adds dc zmm0_f zmm0_f zmm5_f;
(* vpaddd %zmm6,%zmm1,%zmm1                        #! PC = 0x55555555832e *)
adds dc zmm1_0 zmm1_0 zmm6_0; adds dc zmm1_1 zmm1_1 zmm6_1;
adds dc zmm1_2 zmm1_2 zmm6_2; adds dc zmm1_3 zmm1_3 zmm6_3;
adds dc zmm1_4 zmm1_4 zmm6_4; adds dc zmm1_5 zmm1_5 zmm6_5;
adds dc zmm1_6 zmm1_6 zmm6_6; adds dc zmm1_7 zmm1_7 zmm6_7;
adds dc zmm1_8 zmm1_8 zmm6_8; adds dc zmm1_9 zmm1_9 zmm6_9;
adds dc zmm1_a zmm1_a zmm6_a; adds dc zmm1_b zmm1_b zmm6_b;
adds dc zmm1_c zmm1_c zmm6_c; adds dc zmm1_d zmm1_d zmm6_d;
adds dc zmm1_e zmm1_e zmm6_e; adds dc zmm1_f zmm1_f zmm6_f;
(* vpaddd %zmm7,%zmm2,%zmm2                        #! PC = 0x555555558334 *)
adds dc zmm2_0 zmm2_0 zmm7_0; adds dc zmm2_1 zmm2_1 zmm7_1;
adds dc zmm2_2 zmm2_2 zmm7_2; adds dc zmm2_3 zmm2_3 zmm7_3;
adds dc zmm2_4 zmm2_4 zmm7_4; adds dc zmm2_5 zmm2_5 zmm7_5;
adds dc zmm2_6 zmm2_6 zmm7_6; adds dc zmm2_7 zmm2_7 zmm7_7;
adds dc zmm2_8 zmm2_8 zmm7_8; adds dc zmm2_9 zmm2_9 zmm7_9;
adds dc zmm2_a zmm2_a zmm7_a; adds dc zmm2_b zmm2_b zmm7_b;
adds dc zmm2_c zmm2_c zmm7_c; adds dc zmm2_d zmm2_d zmm7_d;
adds dc zmm2_e zmm2_e zmm7_e; adds dc zmm2_f zmm2_f zmm7_f;
(* vpaddd %zmm4,%zmm3,%zmm3                        #! PC = 0x55555555833a *)
adds dc zmm3_0 zmm3_0 zmm4_0; adds dc zmm3_1 zmm3_1 zmm4_1;
adds dc zmm3_2 zmm3_2 zmm4_2; adds dc zmm3_3 zmm3_3 zmm4_3;
adds dc zmm3_4 zmm3_4 zmm4_4; adds dc zmm3_5 zmm3_5 zmm4_5;
adds dc zmm3_6 zmm3_6 zmm4_6; adds dc zmm3_7 zmm3_7 zmm4_7;
adds dc zmm3_8 zmm3_8 zmm4_8; adds dc zmm3_9 zmm3_9 zmm4_9;
adds dc zmm3_a zmm3_a zmm4_a; adds dc zmm3_b zmm3_b zmm4_b;
adds dc zmm3_c zmm3_c zmm4_c; adds dc zmm3_d zmm3_d zmm4_d;
adds dc zmm3_e zmm3_e zmm4_e; adds dc zmm3_f zmm3_f zmm4_f;
(* vpxord %zmm0,%zmm15,%zmm15                      #! PC = 0x555555558340 *)
xor zmm15_0@uint32 zmm15_0 zmm0_0; xor zmm15_1@uint32 zmm15_1 zmm0_1;
xor zmm15_2@uint32 zmm15_2 zmm0_2; xor zmm15_3@uint32 zmm15_3 zmm0_3;
xor zmm15_4@uint32 zmm15_4 zmm0_4; xor zmm15_5@uint32 zmm15_5 zmm0_5;
xor zmm15_6@uint32 zmm15_6 zmm0_6; xor zmm15_7@uint32 zmm15_7 zmm0_7;
xor zmm15_8@uint32 zmm15_8 zmm0_8; xor zmm15_9@uint32 zmm15_9 zmm0_9;
xor zmm15_a@uint32 zmm15_a zmm0_a; xor zmm15_b@uint32 zmm15_b zmm0_b;
xor zmm15_c@uint32 zmm15_c zmm0_c; xor zmm15_d@uint32 zmm15_d zmm0_d;
xor zmm15_e@uint32 zmm15_e zmm0_e; xor zmm15_f@uint32 zmm15_f zmm0_f;
(* vpxord %zmm1,%zmm12,%zmm12                      #! PC = 0x555555558346 *)
xor zmm12_0@uint32 zmm12_0 zmm1_0; xor zmm12_1@uint32 zmm12_1 zmm1_1;
xor zmm12_2@uint32 zmm12_2 zmm1_2; xor zmm12_3@uint32 zmm12_3 zmm1_3;
xor zmm12_4@uint32 zmm12_4 zmm1_4; xor zmm12_5@uint32 zmm12_5 zmm1_5;
xor zmm12_6@uint32 zmm12_6 zmm1_6; xor zmm12_7@uint32 zmm12_7 zmm1_7;
xor zmm12_8@uint32 zmm12_8 zmm1_8; xor zmm12_9@uint32 zmm12_9 zmm1_9;
xor zmm12_a@uint32 zmm12_a zmm1_a; xor zmm12_b@uint32 zmm12_b zmm1_b;
xor zmm12_c@uint32 zmm12_c zmm1_c; xor zmm12_d@uint32 zmm12_d zmm1_d;
xor zmm12_e@uint32 zmm12_e zmm1_e; xor zmm12_f@uint32 zmm12_f zmm1_f;
(* vpxord %zmm2,%zmm13,%zmm13                      #! PC = 0x55555555834c *)
xor zmm13_0@uint32 zmm13_0 zmm2_0; xor zmm13_1@uint32 zmm13_1 zmm2_1;
xor zmm13_2@uint32 zmm13_2 zmm2_2; xor zmm13_3@uint32 zmm13_3 zmm2_3;
xor zmm13_4@uint32 zmm13_4 zmm2_4; xor zmm13_5@uint32 zmm13_5 zmm2_5;
xor zmm13_6@uint32 zmm13_6 zmm2_6; xor zmm13_7@uint32 zmm13_7 zmm2_7;
xor zmm13_8@uint32 zmm13_8 zmm2_8; xor zmm13_9@uint32 zmm13_9 zmm2_9;
xor zmm13_a@uint32 zmm13_a zmm2_a; xor zmm13_b@uint32 zmm13_b zmm2_b;
xor zmm13_c@uint32 zmm13_c zmm2_c; xor zmm13_d@uint32 zmm13_d zmm2_d;
xor zmm13_e@uint32 zmm13_e zmm2_e; xor zmm13_f@uint32 zmm13_f zmm2_f;
(* vpxord %zmm3,%zmm14,%zmm14                      #! PC = 0x555555558352 *)
xor zmm14_0@uint32 zmm14_0 zmm3_0; xor zmm14_1@uint32 zmm14_1 zmm3_1;
xor zmm14_2@uint32 zmm14_2 zmm3_2; xor zmm14_3@uint32 zmm14_3 zmm3_3;
xor zmm14_4@uint32 zmm14_4 zmm3_4; xor zmm14_5@uint32 zmm14_5 zmm3_5;
xor zmm14_6@uint32 zmm14_6 zmm3_6; xor zmm14_7@uint32 zmm14_7 zmm3_7;
xor zmm14_8@uint32 zmm14_8 zmm3_8; xor zmm14_9@uint32 zmm14_9 zmm3_9;
xor zmm14_a@uint32 zmm14_a zmm3_a; xor zmm14_b@uint32 zmm14_b zmm3_b;
xor zmm14_c@uint32 zmm14_c zmm3_c; xor zmm14_d@uint32 zmm14_d zmm3_d;
xor zmm14_e@uint32 zmm14_e zmm3_e; xor zmm14_f@uint32 zmm14_f zmm3_f;
(* vprold $0x8,%zmm15,%zmm15                       #! PC = 0x555555558358 *)
rol zmm15_0@uint32 zmm15_0 0x8; rol zmm15_1@uint32 zmm15_1 0x8;
rol zmm15_2@uint32 zmm15_2 0x8; rol zmm15_3@uint32 zmm15_3 0x8;
rol zmm15_4@uint32 zmm15_4 0x8; rol zmm15_5@uint32 zmm15_5 0x8;
rol zmm15_6@uint32 zmm15_6 0x8; rol zmm15_7@uint32 zmm15_7 0x8;
rol zmm15_8@uint32 zmm15_8 0x8; rol zmm15_9@uint32 zmm15_9 0x8;
rol zmm15_a@uint32 zmm15_a 0x8; rol zmm15_b@uint32 zmm15_b 0x8;
rol zmm15_c@uint32 zmm15_c 0x8; rol zmm15_d@uint32 zmm15_d 0x8;
rol zmm15_e@uint32 zmm15_e 0x8; rol zmm15_f@uint32 zmm15_f 0x8;
(* vprold $0x8,%zmm12,%zmm12                       #! PC = 0x55555555835f *)
rol zmm12_0@uint32 zmm12_0 0x8; rol zmm12_1@uint32 zmm12_1 0x8;
rol zmm12_2@uint32 zmm12_2 0x8; rol zmm12_3@uint32 zmm12_3 0x8;
rol zmm12_4@uint32 zmm12_4 0x8; rol zmm12_5@uint32 zmm12_5 0x8;
rol zmm12_6@uint32 zmm12_6 0x8; rol zmm12_7@uint32 zmm12_7 0x8;
rol zmm12_8@uint32 zmm12_8 0x8; rol zmm12_9@uint32 zmm12_9 0x8;
rol zmm12_a@uint32 zmm12_a 0x8; rol zmm12_b@uint32 zmm12_b 0x8;
rol zmm12_c@uint32 zmm12_c 0x8; rol zmm12_d@uint32 zmm12_d 0x8;
rol zmm12_e@uint32 zmm12_e 0x8; rol zmm12_f@uint32 zmm12_f 0x8;
(* vprold $0x8,%zmm13,%zmm13                       #! PC = 0x555555558366 *)
rol zmm13_0@uint32 zmm13_0 0x8; rol zmm13_1@uint32 zmm13_1 0x8;
rol zmm13_2@uint32 zmm13_2 0x8; rol zmm13_3@uint32 zmm13_3 0x8;
rol zmm13_4@uint32 zmm13_4 0x8; rol zmm13_5@uint32 zmm13_5 0x8;
rol zmm13_6@uint32 zmm13_6 0x8; rol zmm13_7@uint32 zmm13_7 0x8;
rol zmm13_8@uint32 zmm13_8 0x8; rol zmm13_9@uint32 zmm13_9 0x8;
rol zmm13_a@uint32 zmm13_a 0x8; rol zmm13_b@uint32 zmm13_b 0x8;
rol zmm13_c@uint32 zmm13_c 0x8; rol zmm13_d@uint32 zmm13_d 0x8;
rol zmm13_e@uint32 zmm13_e 0x8; rol zmm13_f@uint32 zmm13_f 0x8;
(* vprold $0x8,%zmm14,%zmm14                       #! PC = 0x55555555836d *)
rol zmm14_0@uint32 zmm14_0 0x8; rol zmm14_1@uint32 zmm14_1 0x8;
rol zmm14_2@uint32 zmm14_2 0x8; rol zmm14_3@uint32 zmm14_3 0x8;
rol zmm14_4@uint32 zmm14_4 0x8; rol zmm14_5@uint32 zmm14_5 0x8;
rol zmm14_6@uint32 zmm14_6 0x8; rol zmm14_7@uint32 zmm14_7 0x8;
rol zmm14_8@uint32 zmm14_8 0x8; rol zmm14_9@uint32 zmm14_9 0x8;
rol zmm14_a@uint32 zmm14_a 0x8; rol zmm14_b@uint32 zmm14_b 0x8;
rol zmm14_c@uint32 zmm14_c 0x8; rol zmm14_d@uint32 zmm14_d 0x8;
rol zmm14_e@uint32 zmm14_e 0x8; rol zmm14_f@uint32 zmm14_f 0x8;
(* vpaddd %zmm15,%zmm10,%zmm10                     #! PC = 0x555555558374 *)
adds dc zmm10_0 zmm10_0 zmm15_0; adds dc zmm10_1 zmm10_1 zmm15_1;
adds dc zmm10_2 zmm10_2 zmm15_2; adds dc zmm10_3 zmm10_3 zmm15_3;
adds dc zmm10_4 zmm10_4 zmm15_4; adds dc zmm10_5 zmm10_5 zmm15_5;
adds dc zmm10_6 zmm10_6 zmm15_6; adds dc zmm10_7 zmm10_7 zmm15_7;
adds dc zmm10_8 zmm10_8 zmm15_8; adds dc zmm10_9 zmm10_9 zmm15_9;
adds dc zmm10_a zmm10_a zmm15_a; adds dc zmm10_b zmm10_b zmm15_b;
adds dc zmm10_c zmm10_c zmm15_c; adds dc zmm10_d zmm10_d zmm15_d;
adds dc zmm10_e zmm10_e zmm15_e; adds dc zmm10_f zmm10_f zmm15_f;
(* vpaddd %zmm12,%zmm11,%zmm11                     #! PC = 0x55555555837a *)
adds dc zmm11_0 zmm11_0 zmm12_0; adds dc zmm11_1 zmm11_1 zmm12_1;
adds dc zmm11_2 zmm11_2 zmm12_2; adds dc zmm11_3 zmm11_3 zmm12_3;
adds dc zmm11_4 zmm11_4 zmm12_4; adds dc zmm11_5 zmm11_5 zmm12_5;
adds dc zmm11_6 zmm11_6 zmm12_6; adds dc zmm11_7 zmm11_7 zmm12_7;
adds dc zmm11_8 zmm11_8 zmm12_8; adds dc zmm11_9 zmm11_9 zmm12_9;
adds dc zmm11_a zmm11_a zmm12_a; adds dc zmm11_b zmm11_b zmm12_b;
adds dc zmm11_c zmm11_c zmm12_c; adds dc zmm11_d zmm11_d zmm12_d;
adds dc zmm11_e zmm11_e zmm12_e; adds dc zmm11_f zmm11_f zmm12_f;
(* vpaddd %zmm13,%zmm8,%zmm8                       #! PC = 0x555555558380 *)
adds dc zmm8_0 zmm8_0 zmm13_0; adds dc zmm8_1 zmm8_1 zmm13_1;
adds dc zmm8_2 zmm8_2 zmm13_2; adds dc zmm8_3 zmm8_3 zmm13_3;
adds dc zmm8_4 zmm8_4 zmm13_4; adds dc zmm8_5 zmm8_5 zmm13_5;
adds dc zmm8_6 zmm8_6 zmm13_6; adds dc zmm8_7 zmm8_7 zmm13_7;
adds dc zmm8_8 zmm8_8 zmm13_8; adds dc zmm8_9 zmm8_9 zmm13_9;
adds dc zmm8_a zmm8_a zmm13_a; adds dc zmm8_b zmm8_b zmm13_b;
adds dc zmm8_c zmm8_c zmm13_c; adds dc zmm8_d zmm8_d zmm13_d;
adds dc zmm8_e zmm8_e zmm13_e; adds dc zmm8_f zmm8_f zmm13_f;
(* vpaddd %zmm14,%zmm9,%zmm9                       #! PC = 0x555555558386 *)
adds dc zmm9_0 zmm9_0 zmm14_0; adds dc zmm9_1 zmm9_1 zmm14_1;
adds dc zmm9_2 zmm9_2 zmm14_2; adds dc zmm9_3 zmm9_3 zmm14_3;
adds dc zmm9_4 zmm9_4 zmm14_4; adds dc zmm9_5 zmm9_5 zmm14_5;
adds dc zmm9_6 zmm9_6 zmm14_6; adds dc zmm9_7 zmm9_7 zmm14_7;
adds dc zmm9_8 zmm9_8 zmm14_8; adds dc zmm9_9 zmm9_9 zmm14_9;
adds dc zmm9_a zmm9_a zmm14_a; adds dc zmm9_b zmm9_b zmm14_b;
adds dc zmm9_c zmm9_c zmm14_c; adds dc zmm9_d zmm9_d zmm14_d;
adds dc zmm9_e zmm9_e zmm14_e; adds dc zmm9_f zmm9_f zmm14_f;
(* vpxord %zmm10,%zmm5,%zmm5                       #! PC = 0x55555555838c *)
xor zmm5_0@uint32 zmm5_0 zmm10_0; xor zmm5_1@uint32 zmm5_1 zmm10_1;
xor zmm5_2@uint32 zmm5_2 zmm10_2; xor zmm5_3@uint32 zmm5_3 zmm10_3;
xor zmm5_4@uint32 zmm5_4 zmm10_4; xor zmm5_5@uint32 zmm5_5 zmm10_5;
xor zmm5_6@uint32 zmm5_6 zmm10_6; xor zmm5_7@uint32 zmm5_7 zmm10_7;
xor zmm5_8@uint32 zmm5_8 zmm10_8; xor zmm5_9@uint32 zmm5_9 zmm10_9;
xor zmm5_a@uint32 zmm5_a zmm10_a; xor zmm5_b@uint32 zmm5_b zmm10_b;
xor zmm5_c@uint32 zmm5_c zmm10_c; xor zmm5_d@uint32 zmm5_d zmm10_d;
xor zmm5_e@uint32 zmm5_e zmm10_e; xor zmm5_f@uint32 zmm5_f zmm10_f;
(* vpxord %zmm11,%zmm6,%zmm6                       #! PC = 0x555555558392 *)
xor zmm6_0@uint32 zmm6_0 zmm11_0; xor zmm6_1@uint32 zmm6_1 zmm11_1;
xor zmm6_2@uint32 zmm6_2 zmm11_2; xor zmm6_3@uint32 zmm6_3 zmm11_3;
xor zmm6_4@uint32 zmm6_4 zmm11_4; xor zmm6_5@uint32 zmm6_5 zmm11_5;
xor zmm6_6@uint32 zmm6_6 zmm11_6; xor zmm6_7@uint32 zmm6_7 zmm11_7;
xor zmm6_8@uint32 zmm6_8 zmm11_8; xor zmm6_9@uint32 zmm6_9 zmm11_9;
xor zmm6_a@uint32 zmm6_a zmm11_a; xor zmm6_b@uint32 zmm6_b zmm11_b;
xor zmm6_c@uint32 zmm6_c zmm11_c; xor zmm6_d@uint32 zmm6_d zmm11_d;
xor zmm6_e@uint32 zmm6_e zmm11_e; xor zmm6_f@uint32 zmm6_f zmm11_f;
(* vpxord %zmm8,%zmm7,%zmm7                        #! PC = 0x555555558398 *)
xor zmm7_0@uint32 zmm7_0 zmm8_0; xor zmm7_1@uint32 zmm7_1 zmm8_1;
xor zmm7_2@uint32 zmm7_2 zmm8_2; xor zmm7_3@uint32 zmm7_3 zmm8_3;
xor zmm7_4@uint32 zmm7_4 zmm8_4; xor zmm7_5@uint32 zmm7_5 zmm8_5;
xor zmm7_6@uint32 zmm7_6 zmm8_6; xor zmm7_7@uint32 zmm7_7 zmm8_7;
xor zmm7_8@uint32 zmm7_8 zmm8_8; xor zmm7_9@uint32 zmm7_9 zmm8_9;
xor zmm7_a@uint32 zmm7_a zmm8_a; xor zmm7_b@uint32 zmm7_b zmm8_b;
xor zmm7_c@uint32 zmm7_c zmm8_c; xor zmm7_d@uint32 zmm7_d zmm8_d;
xor zmm7_e@uint32 zmm7_e zmm8_e; xor zmm7_f@uint32 zmm7_f zmm8_f;
(* vpxord %zmm9,%zmm4,%zmm4                        #! PC = 0x55555555839e *)
xor zmm4_0@uint32 zmm4_0 zmm9_0; xor zmm4_1@uint32 zmm4_1 zmm9_1;
xor zmm4_2@uint32 zmm4_2 zmm9_2; xor zmm4_3@uint32 zmm4_3 zmm9_3;
xor zmm4_4@uint32 zmm4_4 zmm9_4; xor zmm4_5@uint32 zmm4_5 zmm9_5;
xor zmm4_6@uint32 zmm4_6 zmm9_6; xor zmm4_7@uint32 zmm4_7 zmm9_7;
xor zmm4_8@uint32 zmm4_8 zmm9_8; xor zmm4_9@uint32 zmm4_9 zmm9_9;
xor zmm4_a@uint32 zmm4_a zmm9_a; xor zmm4_b@uint32 zmm4_b zmm9_b;
xor zmm4_c@uint32 zmm4_c zmm9_c; xor zmm4_d@uint32 zmm4_d zmm9_d;
xor zmm4_e@uint32 zmm4_e zmm9_e; xor zmm4_f@uint32 zmm4_f zmm9_f;
(* vprold $0x7,%zmm5,%zmm5                         #! PC = 0x5555555583a4 *)
rol zmm5_0@uint32 zmm5_0 0x7; rol zmm5_1@uint32 zmm5_1 0x7;
rol zmm5_2@uint32 zmm5_2 0x7; rol zmm5_3@uint32 zmm5_3 0x7;
rol zmm5_4@uint32 zmm5_4 0x7; rol zmm5_5@uint32 zmm5_5 0x7;
rol zmm5_6@uint32 zmm5_6 0x7; rol zmm5_7@uint32 zmm5_7 0x7;
rol zmm5_8@uint32 zmm5_8 0x7; rol zmm5_9@uint32 zmm5_9 0x7;
rol zmm5_a@uint32 zmm5_a 0x7; rol zmm5_b@uint32 zmm5_b 0x7;
rol zmm5_c@uint32 zmm5_c 0x7; rol zmm5_d@uint32 zmm5_d 0x7;
rol zmm5_e@uint32 zmm5_e 0x7; rol zmm5_f@uint32 zmm5_f 0x7;
(* vprold $0x7,%zmm6,%zmm6                         #! PC = 0x5555555583ab *)
rol zmm6_0@uint32 zmm6_0 0x7; rol zmm6_1@uint32 zmm6_1 0x7;
rol zmm6_2@uint32 zmm6_2 0x7; rol zmm6_3@uint32 zmm6_3 0x7;
rol zmm6_4@uint32 zmm6_4 0x7; rol zmm6_5@uint32 zmm6_5 0x7;
rol zmm6_6@uint32 zmm6_6 0x7; rol zmm6_7@uint32 zmm6_7 0x7;
rol zmm6_8@uint32 zmm6_8 0x7; rol zmm6_9@uint32 zmm6_9 0x7;
rol zmm6_a@uint32 zmm6_a 0x7; rol zmm6_b@uint32 zmm6_b 0x7;
rol zmm6_c@uint32 zmm6_c 0x7; rol zmm6_d@uint32 zmm6_d 0x7;
rol zmm6_e@uint32 zmm6_e 0x7; rol zmm6_f@uint32 zmm6_f 0x7;
(* vprold $0x7,%zmm7,%zmm7                         #! PC = 0x5555555583b2 *)
rol zmm7_0@uint32 zmm7_0 0x7; rol zmm7_1@uint32 zmm7_1 0x7;
rol zmm7_2@uint32 zmm7_2 0x7; rol zmm7_3@uint32 zmm7_3 0x7;
rol zmm7_4@uint32 zmm7_4 0x7; rol zmm7_5@uint32 zmm7_5 0x7;
rol zmm7_6@uint32 zmm7_6 0x7; rol zmm7_7@uint32 zmm7_7 0x7;
rol zmm7_8@uint32 zmm7_8 0x7; rol zmm7_9@uint32 zmm7_9 0x7;
rol zmm7_a@uint32 zmm7_a 0x7; rol zmm7_b@uint32 zmm7_b 0x7;
rol zmm7_c@uint32 zmm7_c 0x7; rol zmm7_d@uint32 zmm7_d 0x7;
rol zmm7_e@uint32 zmm7_e 0x7; rol zmm7_f@uint32 zmm7_f 0x7;
(* vprold $0x7,%zmm4,%zmm4                         #! PC = 0x5555555583b9 *)
rol zmm4_0@uint32 zmm4_0 0x7; rol zmm4_1@uint32 zmm4_1 0x7;
rol zmm4_2@uint32 zmm4_2 0x7; rol zmm4_3@uint32 zmm4_3 0x7;
rol zmm4_4@uint32 zmm4_4 0x7; rol zmm4_5@uint32 zmm4_5 0x7;
rol zmm4_6@uint32 zmm4_6 0x7; rol zmm4_7@uint32 zmm4_7 0x7;
rol zmm4_8@uint32 zmm4_8 0x7; rol zmm4_9@uint32 zmm4_9 0x7;
rol zmm4_a@uint32 zmm4_a 0x7; rol zmm4_b@uint32 zmm4_b 0x7;
rol zmm4_c@uint32 zmm4_c 0x7; rol zmm4_d@uint32 zmm4_d 0x7;
rol zmm4_e@uint32 zmm4_e 0x7; rol zmm4_f@uint32 zmm4_f 0x7;
(* dec    %eax                                     #! PC = 0x5555555583c0 *)
(* dec %eax *)
nop;
(* #jne    0x555555558160 <ChaCha20_16x+448>       #! PC = 0x5555555583c2 *)
#jne    0x555555558160 <ChaCha20_16x+448>       #! 0x5555555583c2 = 0x5555555583c2;
(* vpaddd %zmm4,%zmm0,%zmm0                        #! PC = 0x555555558160 *)
adds dc zmm0_0 zmm0_0 zmm4_0; adds dc zmm0_1 zmm0_1 zmm4_1;
adds dc zmm0_2 zmm0_2 zmm4_2; adds dc zmm0_3 zmm0_3 zmm4_3;
adds dc zmm0_4 zmm0_4 zmm4_4; adds dc zmm0_5 zmm0_5 zmm4_5;
adds dc zmm0_6 zmm0_6 zmm4_6; adds dc zmm0_7 zmm0_7 zmm4_7;
adds dc zmm0_8 zmm0_8 zmm4_8; adds dc zmm0_9 zmm0_9 zmm4_9;
adds dc zmm0_a zmm0_a zmm4_a; adds dc zmm0_b zmm0_b zmm4_b;
adds dc zmm0_c zmm0_c zmm4_c; adds dc zmm0_d zmm0_d zmm4_d;
adds dc zmm0_e zmm0_e zmm4_e; adds dc zmm0_f zmm0_f zmm4_f;
(* vpaddd %zmm5,%zmm1,%zmm1                        #! PC = 0x555555558166 *)
adds dc zmm1_0 zmm1_0 zmm5_0; adds dc zmm1_1 zmm1_1 zmm5_1;
adds dc zmm1_2 zmm1_2 zmm5_2; adds dc zmm1_3 zmm1_3 zmm5_3;
adds dc zmm1_4 zmm1_4 zmm5_4; adds dc zmm1_5 zmm1_5 zmm5_5;
adds dc zmm1_6 zmm1_6 zmm5_6; adds dc zmm1_7 zmm1_7 zmm5_7;
adds dc zmm1_8 zmm1_8 zmm5_8; adds dc zmm1_9 zmm1_9 zmm5_9;
adds dc zmm1_a zmm1_a zmm5_a; adds dc zmm1_b zmm1_b zmm5_b;
adds dc zmm1_c zmm1_c zmm5_c; adds dc zmm1_d zmm1_d zmm5_d;
adds dc zmm1_e zmm1_e zmm5_e; adds dc zmm1_f zmm1_f zmm5_f;
(* vpaddd %zmm6,%zmm2,%zmm2                        #! PC = 0x55555555816c *)
adds dc zmm2_0 zmm2_0 zmm6_0; adds dc zmm2_1 zmm2_1 zmm6_1;
adds dc zmm2_2 zmm2_2 zmm6_2; adds dc zmm2_3 zmm2_3 zmm6_3;
adds dc zmm2_4 zmm2_4 zmm6_4; adds dc zmm2_5 zmm2_5 zmm6_5;
adds dc zmm2_6 zmm2_6 zmm6_6; adds dc zmm2_7 zmm2_7 zmm6_7;
adds dc zmm2_8 zmm2_8 zmm6_8; adds dc zmm2_9 zmm2_9 zmm6_9;
adds dc zmm2_a zmm2_a zmm6_a; adds dc zmm2_b zmm2_b zmm6_b;
adds dc zmm2_c zmm2_c zmm6_c; adds dc zmm2_d zmm2_d zmm6_d;
adds dc zmm2_e zmm2_e zmm6_e; adds dc zmm2_f zmm2_f zmm6_f;
(* vpaddd %zmm7,%zmm3,%zmm3                        #! PC = 0x555555558172 *)
adds dc zmm3_0 zmm3_0 zmm7_0; adds dc zmm3_1 zmm3_1 zmm7_1;
adds dc zmm3_2 zmm3_2 zmm7_2; adds dc zmm3_3 zmm3_3 zmm7_3;
adds dc zmm3_4 zmm3_4 zmm7_4; adds dc zmm3_5 zmm3_5 zmm7_5;
adds dc zmm3_6 zmm3_6 zmm7_6; adds dc zmm3_7 zmm3_7 zmm7_7;
adds dc zmm3_8 zmm3_8 zmm7_8; adds dc zmm3_9 zmm3_9 zmm7_9;
adds dc zmm3_a zmm3_a zmm7_a; adds dc zmm3_b zmm3_b zmm7_b;
adds dc zmm3_c zmm3_c zmm7_c; adds dc zmm3_d zmm3_d zmm7_d;
adds dc zmm3_e zmm3_e zmm7_e; adds dc zmm3_f zmm3_f zmm7_f;
(* vpxord %zmm0,%zmm12,%zmm12                      #! PC = 0x555555558178 *)
xor zmm12_0@uint32 zmm12_0 zmm0_0; xor zmm12_1@uint32 zmm12_1 zmm0_1;
xor zmm12_2@uint32 zmm12_2 zmm0_2; xor zmm12_3@uint32 zmm12_3 zmm0_3;
xor zmm12_4@uint32 zmm12_4 zmm0_4; xor zmm12_5@uint32 zmm12_5 zmm0_5;
xor zmm12_6@uint32 zmm12_6 zmm0_6; xor zmm12_7@uint32 zmm12_7 zmm0_7;
xor zmm12_8@uint32 zmm12_8 zmm0_8; xor zmm12_9@uint32 zmm12_9 zmm0_9;
xor zmm12_a@uint32 zmm12_a zmm0_a; xor zmm12_b@uint32 zmm12_b zmm0_b;
xor zmm12_c@uint32 zmm12_c zmm0_c; xor zmm12_d@uint32 zmm12_d zmm0_d;
xor zmm12_e@uint32 zmm12_e zmm0_e; xor zmm12_f@uint32 zmm12_f zmm0_f;
(* vpxord %zmm1,%zmm13,%zmm13                      #! PC = 0x55555555817e *)
xor zmm13_0@uint32 zmm13_0 zmm1_0; xor zmm13_1@uint32 zmm13_1 zmm1_1;
xor zmm13_2@uint32 zmm13_2 zmm1_2; xor zmm13_3@uint32 zmm13_3 zmm1_3;
xor zmm13_4@uint32 zmm13_4 zmm1_4; xor zmm13_5@uint32 zmm13_5 zmm1_5;
xor zmm13_6@uint32 zmm13_6 zmm1_6; xor zmm13_7@uint32 zmm13_7 zmm1_7;
xor zmm13_8@uint32 zmm13_8 zmm1_8; xor zmm13_9@uint32 zmm13_9 zmm1_9;
xor zmm13_a@uint32 zmm13_a zmm1_a; xor zmm13_b@uint32 zmm13_b zmm1_b;
xor zmm13_c@uint32 zmm13_c zmm1_c; xor zmm13_d@uint32 zmm13_d zmm1_d;
xor zmm13_e@uint32 zmm13_e zmm1_e; xor zmm13_f@uint32 zmm13_f zmm1_f;
(* vpxord %zmm2,%zmm14,%zmm14                      #! PC = 0x555555558184 *)
xor zmm14_0@uint32 zmm14_0 zmm2_0; xor zmm14_1@uint32 zmm14_1 zmm2_1;
xor zmm14_2@uint32 zmm14_2 zmm2_2; xor zmm14_3@uint32 zmm14_3 zmm2_3;
xor zmm14_4@uint32 zmm14_4 zmm2_4; xor zmm14_5@uint32 zmm14_5 zmm2_5;
xor zmm14_6@uint32 zmm14_6 zmm2_6; xor zmm14_7@uint32 zmm14_7 zmm2_7;
xor zmm14_8@uint32 zmm14_8 zmm2_8; xor zmm14_9@uint32 zmm14_9 zmm2_9;
xor zmm14_a@uint32 zmm14_a zmm2_a; xor zmm14_b@uint32 zmm14_b zmm2_b;
xor zmm14_c@uint32 zmm14_c zmm2_c; xor zmm14_d@uint32 zmm14_d zmm2_d;
xor zmm14_e@uint32 zmm14_e zmm2_e; xor zmm14_f@uint32 zmm14_f zmm2_f;
(* vpxord %zmm3,%zmm15,%zmm15                      #! PC = 0x55555555818a *)
xor zmm15_0@uint32 zmm15_0 zmm3_0; xor zmm15_1@uint32 zmm15_1 zmm3_1;
xor zmm15_2@uint32 zmm15_2 zmm3_2; xor zmm15_3@uint32 zmm15_3 zmm3_3;
xor zmm15_4@uint32 zmm15_4 zmm3_4; xor zmm15_5@uint32 zmm15_5 zmm3_5;
xor zmm15_6@uint32 zmm15_6 zmm3_6; xor zmm15_7@uint32 zmm15_7 zmm3_7;
xor zmm15_8@uint32 zmm15_8 zmm3_8; xor zmm15_9@uint32 zmm15_9 zmm3_9;
xor zmm15_a@uint32 zmm15_a zmm3_a; xor zmm15_b@uint32 zmm15_b zmm3_b;
xor zmm15_c@uint32 zmm15_c zmm3_c; xor zmm15_d@uint32 zmm15_d zmm3_d;
xor zmm15_e@uint32 zmm15_e zmm3_e; xor zmm15_f@uint32 zmm15_f zmm3_f;
(* vprold $0x10,%zmm12,%zmm12                      #! PC = 0x555555558190 *)
rol zmm12_0@uint32 zmm12_0 0x10; rol zmm12_1@uint32 zmm12_1 0x10;
rol zmm12_2@uint32 zmm12_2 0x10; rol zmm12_3@uint32 zmm12_3 0x10;
rol zmm12_4@uint32 zmm12_4 0x10; rol zmm12_5@uint32 zmm12_5 0x10;
rol zmm12_6@uint32 zmm12_6 0x10; rol zmm12_7@uint32 zmm12_7 0x10;
rol zmm12_8@uint32 zmm12_8 0x10; rol zmm12_9@uint32 zmm12_9 0x10;
rol zmm12_a@uint32 zmm12_a 0x10; rol zmm12_b@uint32 zmm12_b 0x10;
rol zmm12_c@uint32 zmm12_c 0x10; rol zmm12_d@uint32 zmm12_d 0x10;
rol zmm12_e@uint32 zmm12_e 0x10; rol zmm12_f@uint32 zmm12_f 0x10;
(* vprold $0x10,%zmm13,%zmm13                      #! PC = 0x555555558197 *)
rol zmm13_0@uint32 zmm13_0 0x10; rol zmm13_1@uint32 zmm13_1 0x10;
rol zmm13_2@uint32 zmm13_2 0x10; rol zmm13_3@uint32 zmm13_3 0x10;
rol zmm13_4@uint32 zmm13_4 0x10; rol zmm13_5@uint32 zmm13_5 0x10;
rol zmm13_6@uint32 zmm13_6 0x10; rol zmm13_7@uint32 zmm13_7 0x10;
rol zmm13_8@uint32 zmm13_8 0x10; rol zmm13_9@uint32 zmm13_9 0x10;
rol zmm13_a@uint32 zmm13_a 0x10; rol zmm13_b@uint32 zmm13_b 0x10;
rol zmm13_c@uint32 zmm13_c 0x10; rol zmm13_d@uint32 zmm13_d 0x10;
rol zmm13_e@uint32 zmm13_e 0x10; rol zmm13_f@uint32 zmm13_f 0x10;
(* vprold $0x10,%zmm14,%zmm14                      #! PC = 0x55555555819e *)
rol zmm14_0@uint32 zmm14_0 0x10; rol zmm14_1@uint32 zmm14_1 0x10;
rol zmm14_2@uint32 zmm14_2 0x10; rol zmm14_3@uint32 zmm14_3 0x10;
rol zmm14_4@uint32 zmm14_4 0x10; rol zmm14_5@uint32 zmm14_5 0x10;
rol zmm14_6@uint32 zmm14_6 0x10; rol zmm14_7@uint32 zmm14_7 0x10;
rol zmm14_8@uint32 zmm14_8 0x10; rol zmm14_9@uint32 zmm14_9 0x10;
rol zmm14_a@uint32 zmm14_a 0x10; rol zmm14_b@uint32 zmm14_b 0x10;
rol zmm14_c@uint32 zmm14_c 0x10; rol zmm14_d@uint32 zmm14_d 0x10;
rol zmm14_e@uint32 zmm14_e 0x10; rol zmm14_f@uint32 zmm14_f 0x10;
(* vprold $0x10,%zmm15,%zmm15                      #! PC = 0x5555555581a5 *)
rol zmm15_0@uint32 zmm15_0 0x10; rol zmm15_1@uint32 zmm15_1 0x10;
rol zmm15_2@uint32 zmm15_2 0x10; rol zmm15_3@uint32 zmm15_3 0x10;
rol zmm15_4@uint32 zmm15_4 0x10; rol zmm15_5@uint32 zmm15_5 0x10;
rol zmm15_6@uint32 zmm15_6 0x10; rol zmm15_7@uint32 zmm15_7 0x10;
rol zmm15_8@uint32 zmm15_8 0x10; rol zmm15_9@uint32 zmm15_9 0x10;
rol zmm15_a@uint32 zmm15_a 0x10; rol zmm15_b@uint32 zmm15_b 0x10;
rol zmm15_c@uint32 zmm15_c 0x10; rol zmm15_d@uint32 zmm15_d 0x10;
rol zmm15_e@uint32 zmm15_e 0x10; rol zmm15_f@uint32 zmm15_f 0x10;
(* vpaddd %zmm12,%zmm8,%zmm8                       #! PC = 0x5555555581ac *)
adds dc zmm8_0 zmm8_0 zmm12_0; adds dc zmm8_1 zmm8_1 zmm12_1;
adds dc zmm8_2 zmm8_2 zmm12_2; adds dc zmm8_3 zmm8_3 zmm12_3;
adds dc zmm8_4 zmm8_4 zmm12_4; adds dc zmm8_5 zmm8_5 zmm12_5;
adds dc zmm8_6 zmm8_6 zmm12_6; adds dc zmm8_7 zmm8_7 zmm12_7;
adds dc zmm8_8 zmm8_8 zmm12_8; adds dc zmm8_9 zmm8_9 zmm12_9;
adds dc zmm8_a zmm8_a zmm12_a; adds dc zmm8_b zmm8_b zmm12_b;
adds dc zmm8_c zmm8_c zmm12_c; adds dc zmm8_d zmm8_d zmm12_d;
adds dc zmm8_e zmm8_e zmm12_e; adds dc zmm8_f zmm8_f zmm12_f;
(* vpaddd %zmm13,%zmm9,%zmm9                       #! PC = 0x5555555581b2 *)
adds dc zmm9_0 zmm9_0 zmm13_0; adds dc zmm9_1 zmm9_1 zmm13_1;
adds dc zmm9_2 zmm9_2 zmm13_2; adds dc zmm9_3 zmm9_3 zmm13_3;
adds dc zmm9_4 zmm9_4 zmm13_4; adds dc zmm9_5 zmm9_5 zmm13_5;
adds dc zmm9_6 zmm9_6 zmm13_6; adds dc zmm9_7 zmm9_7 zmm13_7;
adds dc zmm9_8 zmm9_8 zmm13_8; adds dc zmm9_9 zmm9_9 zmm13_9;
adds dc zmm9_a zmm9_a zmm13_a; adds dc zmm9_b zmm9_b zmm13_b;
adds dc zmm9_c zmm9_c zmm13_c; adds dc zmm9_d zmm9_d zmm13_d;
adds dc zmm9_e zmm9_e zmm13_e; adds dc zmm9_f zmm9_f zmm13_f;
(* vpaddd %zmm14,%zmm10,%zmm10                     #! PC = 0x5555555581b8 *)
adds dc zmm10_0 zmm10_0 zmm14_0; adds dc zmm10_1 zmm10_1 zmm14_1;
adds dc zmm10_2 zmm10_2 zmm14_2; adds dc zmm10_3 zmm10_3 zmm14_3;
adds dc zmm10_4 zmm10_4 zmm14_4; adds dc zmm10_5 zmm10_5 zmm14_5;
adds dc zmm10_6 zmm10_6 zmm14_6; adds dc zmm10_7 zmm10_7 zmm14_7;
adds dc zmm10_8 zmm10_8 zmm14_8; adds dc zmm10_9 zmm10_9 zmm14_9;
adds dc zmm10_a zmm10_a zmm14_a; adds dc zmm10_b zmm10_b zmm14_b;
adds dc zmm10_c zmm10_c zmm14_c; adds dc zmm10_d zmm10_d zmm14_d;
adds dc zmm10_e zmm10_e zmm14_e; adds dc zmm10_f zmm10_f zmm14_f;
(* vpaddd %zmm15,%zmm11,%zmm11                     #! PC = 0x5555555581be *)
adds dc zmm11_0 zmm11_0 zmm15_0; adds dc zmm11_1 zmm11_1 zmm15_1;
adds dc zmm11_2 zmm11_2 zmm15_2; adds dc zmm11_3 zmm11_3 zmm15_3;
adds dc zmm11_4 zmm11_4 zmm15_4; adds dc zmm11_5 zmm11_5 zmm15_5;
adds dc zmm11_6 zmm11_6 zmm15_6; adds dc zmm11_7 zmm11_7 zmm15_7;
adds dc zmm11_8 zmm11_8 zmm15_8; adds dc zmm11_9 zmm11_9 zmm15_9;
adds dc zmm11_a zmm11_a zmm15_a; adds dc zmm11_b zmm11_b zmm15_b;
adds dc zmm11_c zmm11_c zmm15_c; adds dc zmm11_d zmm11_d zmm15_d;
adds dc zmm11_e zmm11_e zmm15_e; adds dc zmm11_f zmm11_f zmm15_f;
(* vpxord %zmm8,%zmm4,%zmm4                        #! PC = 0x5555555581c4 *)
xor zmm4_0@uint32 zmm4_0 zmm8_0; xor zmm4_1@uint32 zmm4_1 zmm8_1;
xor zmm4_2@uint32 zmm4_2 zmm8_2; xor zmm4_3@uint32 zmm4_3 zmm8_3;
xor zmm4_4@uint32 zmm4_4 zmm8_4; xor zmm4_5@uint32 zmm4_5 zmm8_5;
xor zmm4_6@uint32 zmm4_6 zmm8_6; xor zmm4_7@uint32 zmm4_7 zmm8_7;
xor zmm4_8@uint32 zmm4_8 zmm8_8; xor zmm4_9@uint32 zmm4_9 zmm8_9;
xor zmm4_a@uint32 zmm4_a zmm8_a; xor zmm4_b@uint32 zmm4_b zmm8_b;
xor zmm4_c@uint32 zmm4_c zmm8_c; xor zmm4_d@uint32 zmm4_d zmm8_d;
xor zmm4_e@uint32 zmm4_e zmm8_e; xor zmm4_f@uint32 zmm4_f zmm8_f;
(* vpxord %zmm9,%zmm5,%zmm5                        #! PC = 0x5555555581ca *)
xor zmm5_0@uint32 zmm5_0 zmm9_0; xor zmm5_1@uint32 zmm5_1 zmm9_1;
xor zmm5_2@uint32 zmm5_2 zmm9_2; xor zmm5_3@uint32 zmm5_3 zmm9_3;
xor zmm5_4@uint32 zmm5_4 zmm9_4; xor zmm5_5@uint32 zmm5_5 zmm9_5;
xor zmm5_6@uint32 zmm5_6 zmm9_6; xor zmm5_7@uint32 zmm5_7 zmm9_7;
xor zmm5_8@uint32 zmm5_8 zmm9_8; xor zmm5_9@uint32 zmm5_9 zmm9_9;
xor zmm5_a@uint32 zmm5_a zmm9_a; xor zmm5_b@uint32 zmm5_b zmm9_b;
xor zmm5_c@uint32 zmm5_c zmm9_c; xor zmm5_d@uint32 zmm5_d zmm9_d;
xor zmm5_e@uint32 zmm5_e zmm9_e; xor zmm5_f@uint32 zmm5_f zmm9_f;
(* vpxord %zmm10,%zmm6,%zmm6                       #! PC = 0x5555555581d0 *)
xor zmm6_0@uint32 zmm6_0 zmm10_0; xor zmm6_1@uint32 zmm6_1 zmm10_1;
xor zmm6_2@uint32 zmm6_2 zmm10_2; xor zmm6_3@uint32 zmm6_3 zmm10_3;
xor zmm6_4@uint32 zmm6_4 zmm10_4; xor zmm6_5@uint32 zmm6_5 zmm10_5;
xor zmm6_6@uint32 zmm6_6 zmm10_6; xor zmm6_7@uint32 zmm6_7 zmm10_7;
xor zmm6_8@uint32 zmm6_8 zmm10_8; xor zmm6_9@uint32 zmm6_9 zmm10_9;
xor zmm6_a@uint32 zmm6_a zmm10_a; xor zmm6_b@uint32 zmm6_b zmm10_b;
xor zmm6_c@uint32 zmm6_c zmm10_c; xor zmm6_d@uint32 zmm6_d zmm10_d;
xor zmm6_e@uint32 zmm6_e zmm10_e; xor zmm6_f@uint32 zmm6_f zmm10_f;
(* vpxord %zmm11,%zmm7,%zmm7                       #! PC = 0x5555555581d6 *)
xor zmm7_0@uint32 zmm7_0 zmm11_0; xor zmm7_1@uint32 zmm7_1 zmm11_1;
xor zmm7_2@uint32 zmm7_2 zmm11_2; xor zmm7_3@uint32 zmm7_3 zmm11_3;
xor zmm7_4@uint32 zmm7_4 zmm11_4; xor zmm7_5@uint32 zmm7_5 zmm11_5;
xor zmm7_6@uint32 zmm7_6 zmm11_6; xor zmm7_7@uint32 zmm7_7 zmm11_7;
xor zmm7_8@uint32 zmm7_8 zmm11_8; xor zmm7_9@uint32 zmm7_9 zmm11_9;
xor zmm7_a@uint32 zmm7_a zmm11_a; xor zmm7_b@uint32 zmm7_b zmm11_b;
xor zmm7_c@uint32 zmm7_c zmm11_c; xor zmm7_d@uint32 zmm7_d zmm11_d;
xor zmm7_e@uint32 zmm7_e zmm11_e; xor zmm7_f@uint32 zmm7_f zmm11_f;
(* vprold $0xc,%zmm4,%zmm4                         #! PC = 0x5555555581dc *)
rol zmm4_0@uint32 zmm4_0 0xc; rol zmm4_1@uint32 zmm4_1 0xc;
rol zmm4_2@uint32 zmm4_2 0xc; rol zmm4_3@uint32 zmm4_3 0xc;
rol zmm4_4@uint32 zmm4_4 0xc; rol zmm4_5@uint32 zmm4_5 0xc;
rol zmm4_6@uint32 zmm4_6 0xc; rol zmm4_7@uint32 zmm4_7 0xc;
rol zmm4_8@uint32 zmm4_8 0xc; rol zmm4_9@uint32 zmm4_9 0xc;
rol zmm4_a@uint32 zmm4_a 0xc; rol zmm4_b@uint32 zmm4_b 0xc;
rol zmm4_c@uint32 zmm4_c 0xc; rol zmm4_d@uint32 zmm4_d 0xc;
rol zmm4_e@uint32 zmm4_e 0xc; rol zmm4_f@uint32 zmm4_f 0xc;
(* vprold $0xc,%zmm5,%zmm5                         #! PC = 0x5555555581e3 *)
rol zmm5_0@uint32 zmm5_0 0xc; rol zmm5_1@uint32 zmm5_1 0xc;
rol zmm5_2@uint32 zmm5_2 0xc; rol zmm5_3@uint32 zmm5_3 0xc;
rol zmm5_4@uint32 zmm5_4 0xc; rol zmm5_5@uint32 zmm5_5 0xc;
rol zmm5_6@uint32 zmm5_6 0xc; rol zmm5_7@uint32 zmm5_7 0xc;
rol zmm5_8@uint32 zmm5_8 0xc; rol zmm5_9@uint32 zmm5_9 0xc;
rol zmm5_a@uint32 zmm5_a 0xc; rol zmm5_b@uint32 zmm5_b 0xc;
rol zmm5_c@uint32 zmm5_c 0xc; rol zmm5_d@uint32 zmm5_d 0xc;
rol zmm5_e@uint32 zmm5_e 0xc; rol zmm5_f@uint32 zmm5_f 0xc;
(* vprold $0xc,%zmm6,%zmm6                         #! PC = 0x5555555581ea *)
rol zmm6_0@uint32 zmm6_0 0xc; rol zmm6_1@uint32 zmm6_1 0xc;
rol zmm6_2@uint32 zmm6_2 0xc; rol zmm6_3@uint32 zmm6_3 0xc;
rol zmm6_4@uint32 zmm6_4 0xc; rol zmm6_5@uint32 zmm6_5 0xc;
rol zmm6_6@uint32 zmm6_6 0xc; rol zmm6_7@uint32 zmm6_7 0xc;
rol zmm6_8@uint32 zmm6_8 0xc; rol zmm6_9@uint32 zmm6_9 0xc;
rol zmm6_a@uint32 zmm6_a 0xc; rol zmm6_b@uint32 zmm6_b 0xc;
rol zmm6_c@uint32 zmm6_c 0xc; rol zmm6_d@uint32 zmm6_d 0xc;
rol zmm6_e@uint32 zmm6_e 0xc; rol zmm6_f@uint32 zmm6_f 0xc;
(* vprold $0xc,%zmm7,%zmm7                         #! PC = 0x5555555581f1 *)
rol zmm7_0@uint32 zmm7_0 0xc; rol zmm7_1@uint32 zmm7_1 0xc;
rol zmm7_2@uint32 zmm7_2 0xc; rol zmm7_3@uint32 zmm7_3 0xc;
rol zmm7_4@uint32 zmm7_4 0xc; rol zmm7_5@uint32 zmm7_5 0xc;
rol zmm7_6@uint32 zmm7_6 0xc; rol zmm7_7@uint32 zmm7_7 0xc;
rol zmm7_8@uint32 zmm7_8 0xc; rol zmm7_9@uint32 zmm7_9 0xc;
rol zmm7_a@uint32 zmm7_a 0xc; rol zmm7_b@uint32 zmm7_b 0xc;
rol zmm7_c@uint32 zmm7_c 0xc; rol zmm7_d@uint32 zmm7_d 0xc;
rol zmm7_e@uint32 zmm7_e 0xc; rol zmm7_f@uint32 zmm7_f 0xc;
(* vpaddd %zmm4,%zmm0,%zmm0                        #! PC = 0x5555555581f8 *)
adds dc zmm0_0 zmm0_0 zmm4_0; adds dc zmm0_1 zmm0_1 zmm4_1;
adds dc zmm0_2 zmm0_2 zmm4_2; adds dc zmm0_3 zmm0_3 zmm4_3;
adds dc zmm0_4 zmm0_4 zmm4_4; adds dc zmm0_5 zmm0_5 zmm4_5;
adds dc zmm0_6 zmm0_6 zmm4_6; adds dc zmm0_7 zmm0_7 zmm4_7;
adds dc zmm0_8 zmm0_8 zmm4_8; adds dc zmm0_9 zmm0_9 zmm4_9;
adds dc zmm0_a zmm0_a zmm4_a; adds dc zmm0_b zmm0_b zmm4_b;
adds dc zmm0_c zmm0_c zmm4_c; adds dc zmm0_d zmm0_d zmm4_d;
adds dc zmm0_e zmm0_e zmm4_e; adds dc zmm0_f zmm0_f zmm4_f;
(* vpaddd %zmm5,%zmm1,%zmm1                        #! PC = 0x5555555581fe *)
adds dc zmm1_0 zmm1_0 zmm5_0; adds dc zmm1_1 zmm1_1 zmm5_1;
adds dc zmm1_2 zmm1_2 zmm5_2; adds dc zmm1_3 zmm1_3 zmm5_3;
adds dc zmm1_4 zmm1_4 zmm5_4; adds dc zmm1_5 zmm1_5 zmm5_5;
adds dc zmm1_6 zmm1_6 zmm5_6; adds dc zmm1_7 zmm1_7 zmm5_7;
adds dc zmm1_8 zmm1_8 zmm5_8; adds dc zmm1_9 zmm1_9 zmm5_9;
adds dc zmm1_a zmm1_a zmm5_a; adds dc zmm1_b zmm1_b zmm5_b;
adds dc zmm1_c zmm1_c zmm5_c; adds dc zmm1_d zmm1_d zmm5_d;
adds dc zmm1_e zmm1_e zmm5_e; adds dc zmm1_f zmm1_f zmm5_f;
(* vpaddd %zmm6,%zmm2,%zmm2                        #! PC = 0x555555558204 *)
adds dc zmm2_0 zmm2_0 zmm6_0; adds dc zmm2_1 zmm2_1 zmm6_1;
adds dc zmm2_2 zmm2_2 zmm6_2; adds dc zmm2_3 zmm2_3 zmm6_3;
adds dc zmm2_4 zmm2_4 zmm6_4; adds dc zmm2_5 zmm2_5 zmm6_5;
adds dc zmm2_6 zmm2_6 zmm6_6; adds dc zmm2_7 zmm2_7 zmm6_7;
adds dc zmm2_8 zmm2_8 zmm6_8; adds dc zmm2_9 zmm2_9 zmm6_9;
adds dc zmm2_a zmm2_a zmm6_a; adds dc zmm2_b zmm2_b zmm6_b;
adds dc zmm2_c zmm2_c zmm6_c; adds dc zmm2_d zmm2_d zmm6_d;
adds dc zmm2_e zmm2_e zmm6_e; adds dc zmm2_f zmm2_f zmm6_f;
(* vpaddd %zmm7,%zmm3,%zmm3                        #! PC = 0x55555555820a *)
adds dc zmm3_0 zmm3_0 zmm7_0; adds dc zmm3_1 zmm3_1 zmm7_1;
adds dc zmm3_2 zmm3_2 zmm7_2; adds dc zmm3_3 zmm3_3 zmm7_3;
adds dc zmm3_4 zmm3_4 zmm7_4; adds dc zmm3_5 zmm3_5 zmm7_5;
adds dc zmm3_6 zmm3_6 zmm7_6; adds dc zmm3_7 zmm3_7 zmm7_7;
adds dc zmm3_8 zmm3_8 zmm7_8; adds dc zmm3_9 zmm3_9 zmm7_9;
adds dc zmm3_a zmm3_a zmm7_a; adds dc zmm3_b zmm3_b zmm7_b;
adds dc zmm3_c zmm3_c zmm7_c; adds dc zmm3_d zmm3_d zmm7_d;
adds dc zmm3_e zmm3_e zmm7_e; adds dc zmm3_f zmm3_f zmm7_f;
(* vpxord %zmm0,%zmm12,%zmm12                      #! PC = 0x555555558210 *)
xor zmm12_0@uint32 zmm12_0 zmm0_0; xor zmm12_1@uint32 zmm12_1 zmm0_1;
xor zmm12_2@uint32 zmm12_2 zmm0_2; xor zmm12_3@uint32 zmm12_3 zmm0_3;
xor zmm12_4@uint32 zmm12_4 zmm0_4; xor zmm12_5@uint32 zmm12_5 zmm0_5;
xor zmm12_6@uint32 zmm12_6 zmm0_6; xor zmm12_7@uint32 zmm12_7 zmm0_7;
xor zmm12_8@uint32 zmm12_8 zmm0_8; xor zmm12_9@uint32 zmm12_9 zmm0_9;
xor zmm12_a@uint32 zmm12_a zmm0_a; xor zmm12_b@uint32 zmm12_b zmm0_b;
xor zmm12_c@uint32 zmm12_c zmm0_c; xor zmm12_d@uint32 zmm12_d zmm0_d;
xor zmm12_e@uint32 zmm12_e zmm0_e; xor zmm12_f@uint32 zmm12_f zmm0_f;
(* vpxord %zmm1,%zmm13,%zmm13                      #! PC = 0x555555558216 *)
xor zmm13_0@uint32 zmm13_0 zmm1_0; xor zmm13_1@uint32 zmm13_1 zmm1_1;
xor zmm13_2@uint32 zmm13_2 zmm1_2; xor zmm13_3@uint32 zmm13_3 zmm1_3;
xor zmm13_4@uint32 zmm13_4 zmm1_4; xor zmm13_5@uint32 zmm13_5 zmm1_5;
xor zmm13_6@uint32 zmm13_6 zmm1_6; xor zmm13_7@uint32 zmm13_7 zmm1_7;
xor zmm13_8@uint32 zmm13_8 zmm1_8; xor zmm13_9@uint32 zmm13_9 zmm1_9;
xor zmm13_a@uint32 zmm13_a zmm1_a; xor zmm13_b@uint32 zmm13_b zmm1_b;
xor zmm13_c@uint32 zmm13_c zmm1_c; xor zmm13_d@uint32 zmm13_d zmm1_d;
xor zmm13_e@uint32 zmm13_e zmm1_e; xor zmm13_f@uint32 zmm13_f zmm1_f;
(* vpxord %zmm2,%zmm14,%zmm14                      #! PC = 0x55555555821c *)
xor zmm14_0@uint32 zmm14_0 zmm2_0; xor zmm14_1@uint32 zmm14_1 zmm2_1;
xor zmm14_2@uint32 zmm14_2 zmm2_2; xor zmm14_3@uint32 zmm14_3 zmm2_3;
xor zmm14_4@uint32 zmm14_4 zmm2_4; xor zmm14_5@uint32 zmm14_5 zmm2_5;
xor zmm14_6@uint32 zmm14_6 zmm2_6; xor zmm14_7@uint32 zmm14_7 zmm2_7;
xor zmm14_8@uint32 zmm14_8 zmm2_8; xor zmm14_9@uint32 zmm14_9 zmm2_9;
xor zmm14_a@uint32 zmm14_a zmm2_a; xor zmm14_b@uint32 zmm14_b zmm2_b;
xor zmm14_c@uint32 zmm14_c zmm2_c; xor zmm14_d@uint32 zmm14_d zmm2_d;
xor zmm14_e@uint32 zmm14_e zmm2_e; xor zmm14_f@uint32 zmm14_f zmm2_f;
(* vpxord %zmm3,%zmm15,%zmm15                      #! PC = 0x555555558222 *)
xor zmm15_0@uint32 zmm15_0 zmm3_0; xor zmm15_1@uint32 zmm15_1 zmm3_1;
xor zmm15_2@uint32 zmm15_2 zmm3_2; xor zmm15_3@uint32 zmm15_3 zmm3_3;
xor zmm15_4@uint32 zmm15_4 zmm3_4; xor zmm15_5@uint32 zmm15_5 zmm3_5;
xor zmm15_6@uint32 zmm15_6 zmm3_6; xor zmm15_7@uint32 zmm15_7 zmm3_7;
xor zmm15_8@uint32 zmm15_8 zmm3_8; xor zmm15_9@uint32 zmm15_9 zmm3_9;
xor zmm15_a@uint32 zmm15_a zmm3_a; xor zmm15_b@uint32 zmm15_b zmm3_b;
xor zmm15_c@uint32 zmm15_c zmm3_c; xor zmm15_d@uint32 zmm15_d zmm3_d;
xor zmm15_e@uint32 zmm15_e zmm3_e; xor zmm15_f@uint32 zmm15_f zmm3_f;
(* vprold $0x8,%zmm12,%zmm12                       #! PC = 0x555555558228 *)
rol zmm12_0@uint32 zmm12_0 0x8; rol zmm12_1@uint32 zmm12_1 0x8;
rol zmm12_2@uint32 zmm12_2 0x8; rol zmm12_3@uint32 zmm12_3 0x8;
rol zmm12_4@uint32 zmm12_4 0x8; rol zmm12_5@uint32 zmm12_5 0x8;
rol zmm12_6@uint32 zmm12_6 0x8; rol zmm12_7@uint32 zmm12_7 0x8;
rol zmm12_8@uint32 zmm12_8 0x8; rol zmm12_9@uint32 zmm12_9 0x8;
rol zmm12_a@uint32 zmm12_a 0x8; rol zmm12_b@uint32 zmm12_b 0x8;
rol zmm12_c@uint32 zmm12_c 0x8; rol zmm12_d@uint32 zmm12_d 0x8;
rol zmm12_e@uint32 zmm12_e 0x8; rol zmm12_f@uint32 zmm12_f 0x8;
(* vprold $0x8,%zmm13,%zmm13                       #! PC = 0x55555555822f *)
rol zmm13_0@uint32 zmm13_0 0x8; rol zmm13_1@uint32 zmm13_1 0x8;
rol zmm13_2@uint32 zmm13_2 0x8; rol zmm13_3@uint32 zmm13_3 0x8;
rol zmm13_4@uint32 zmm13_4 0x8; rol zmm13_5@uint32 zmm13_5 0x8;
rol zmm13_6@uint32 zmm13_6 0x8; rol zmm13_7@uint32 zmm13_7 0x8;
rol zmm13_8@uint32 zmm13_8 0x8; rol zmm13_9@uint32 zmm13_9 0x8;
rol zmm13_a@uint32 zmm13_a 0x8; rol zmm13_b@uint32 zmm13_b 0x8;
rol zmm13_c@uint32 zmm13_c 0x8; rol zmm13_d@uint32 zmm13_d 0x8;
rol zmm13_e@uint32 zmm13_e 0x8; rol zmm13_f@uint32 zmm13_f 0x8;
(* vprold $0x8,%zmm14,%zmm14                       #! PC = 0x555555558236 *)
rol zmm14_0@uint32 zmm14_0 0x8; rol zmm14_1@uint32 zmm14_1 0x8;
rol zmm14_2@uint32 zmm14_2 0x8; rol zmm14_3@uint32 zmm14_3 0x8;
rol zmm14_4@uint32 zmm14_4 0x8; rol zmm14_5@uint32 zmm14_5 0x8;
rol zmm14_6@uint32 zmm14_6 0x8; rol zmm14_7@uint32 zmm14_7 0x8;
rol zmm14_8@uint32 zmm14_8 0x8; rol zmm14_9@uint32 zmm14_9 0x8;
rol zmm14_a@uint32 zmm14_a 0x8; rol zmm14_b@uint32 zmm14_b 0x8;
rol zmm14_c@uint32 zmm14_c 0x8; rol zmm14_d@uint32 zmm14_d 0x8;
rol zmm14_e@uint32 zmm14_e 0x8; rol zmm14_f@uint32 zmm14_f 0x8;
(* vprold $0x8,%zmm15,%zmm15                       #! PC = 0x55555555823d *)
rol zmm15_0@uint32 zmm15_0 0x8; rol zmm15_1@uint32 zmm15_1 0x8;
rol zmm15_2@uint32 zmm15_2 0x8; rol zmm15_3@uint32 zmm15_3 0x8;
rol zmm15_4@uint32 zmm15_4 0x8; rol zmm15_5@uint32 zmm15_5 0x8;
rol zmm15_6@uint32 zmm15_6 0x8; rol zmm15_7@uint32 zmm15_7 0x8;
rol zmm15_8@uint32 zmm15_8 0x8; rol zmm15_9@uint32 zmm15_9 0x8;
rol zmm15_a@uint32 zmm15_a 0x8; rol zmm15_b@uint32 zmm15_b 0x8;
rol zmm15_c@uint32 zmm15_c 0x8; rol zmm15_d@uint32 zmm15_d 0x8;
rol zmm15_e@uint32 zmm15_e 0x8; rol zmm15_f@uint32 zmm15_f 0x8;
(* vpaddd %zmm12,%zmm8,%zmm8                       #! PC = 0x555555558244 *)
adds dc zmm8_0 zmm8_0 zmm12_0; adds dc zmm8_1 zmm8_1 zmm12_1;
adds dc zmm8_2 zmm8_2 zmm12_2; adds dc zmm8_3 zmm8_3 zmm12_3;
adds dc zmm8_4 zmm8_4 zmm12_4; adds dc zmm8_5 zmm8_5 zmm12_5;
adds dc zmm8_6 zmm8_6 zmm12_6; adds dc zmm8_7 zmm8_7 zmm12_7;
adds dc zmm8_8 zmm8_8 zmm12_8; adds dc zmm8_9 zmm8_9 zmm12_9;
adds dc zmm8_a zmm8_a zmm12_a; adds dc zmm8_b zmm8_b zmm12_b;
adds dc zmm8_c zmm8_c zmm12_c; adds dc zmm8_d zmm8_d zmm12_d;
adds dc zmm8_e zmm8_e zmm12_e; adds dc zmm8_f zmm8_f zmm12_f;
(* vpaddd %zmm13,%zmm9,%zmm9                       #! PC = 0x55555555824a *)
adds dc zmm9_0 zmm9_0 zmm13_0; adds dc zmm9_1 zmm9_1 zmm13_1;
adds dc zmm9_2 zmm9_2 zmm13_2; adds dc zmm9_3 zmm9_3 zmm13_3;
adds dc zmm9_4 zmm9_4 zmm13_4; adds dc zmm9_5 zmm9_5 zmm13_5;
adds dc zmm9_6 zmm9_6 zmm13_6; adds dc zmm9_7 zmm9_7 zmm13_7;
adds dc zmm9_8 zmm9_8 zmm13_8; adds dc zmm9_9 zmm9_9 zmm13_9;
adds dc zmm9_a zmm9_a zmm13_a; adds dc zmm9_b zmm9_b zmm13_b;
adds dc zmm9_c zmm9_c zmm13_c; adds dc zmm9_d zmm9_d zmm13_d;
adds dc zmm9_e zmm9_e zmm13_e; adds dc zmm9_f zmm9_f zmm13_f;
(* vpaddd %zmm14,%zmm10,%zmm10                     #! PC = 0x555555558250 *)
adds dc zmm10_0 zmm10_0 zmm14_0; adds dc zmm10_1 zmm10_1 zmm14_1;
adds dc zmm10_2 zmm10_2 zmm14_2; adds dc zmm10_3 zmm10_3 zmm14_3;
adds dc zmm10_4 zmm10_4 zmm14_4; adds dc zmm10_5 zmm10_5 zmm14_5;
adds dc zmm10_6 zmm10_6 zmm14_6; adds dc zmm10_7 zmm10_7 zmm14_7;
adds dc zmm10_8 zmm10_8 zmm14_8; adds dc zmm10_9 zmm10_9 zmm14_9;
adds dc zmm10_a zmm10_a zmm14_a; adds dc zmm10_b zmm10_b zmm14_b;
adds dc zmm10_c zmm10_c zmm14_c; adds dc zmm10_d zmm10_d zmm14_d;
adds dc zmm10_e zmm10_e zmm14_e; adds dc zmm10_f zmm10_f zmm14_f;
(* vpaddd %zmm15,%zmm11,%zmm11                     #! PC = 0x555555558256 *)
adds dc zmm11_0 zmm11_0 zmm15_0; adds dc zmm11_1 zmm11_1 zmm15_1;
adds dc zmm11_2 zmm11_2 zmm15_2; adds dc zmm11_3 zmm11_3 zmm15_3;
adds dc zmm11_4 zmm11_4 zmm15_4; adds dc zmm11_5 zmm11_5 zmm15_5;
adds dc zmm11_6 zmm11_6 zmm15_6; adds dc zmm11_7 zmm11_7 zmm15_7;
adds dc zmm11_8 zmm11_8 zmm15_8; adds dc zmm11_9 zmm11_9 zmm15_9;
adds dc zmm11_a zmm11_a zmm15_a; adds dc zmm11_b zmm11_b zmm15_b;
adds dc zmm11_c zmm11_c zmm15_c; adds dc zmm11_d zmm11_d zmm15_d;
adds dc zmm11_e zmm11_e zmm15_e; adds dc zmm11_f zmm11_f zmm15_f;
(* vpxord %zmm8,%zmm4,%zmm4                        #! PC = 0x55555555825c *)
xor zmm4_0@uint32 zmm4_0 zmm8_0; xor zmm4_1@uint32 zmm4_1 zmm8_1;
xor zmm4_2@uint32 zmm4_2 zmm8_2; xor zmm4_3@uint32 zmm4_3 zmm8_3;
xor zmm4_4@uint32 zmm4_4 zmm8_4; xor zmm4_5@uint32 zmm4_5 zmm8_5;
xor zmm4_6@uint32 zmm4_6 zmm8_6; xor zmm4_7@uint32 zmm4_7 zmm8_7;
xor zmm4_8@uint32 zmm4_8 zmm8_8; xor zmm4_9@uint32 zmm4_9 zmm8_9;
xor zmm4_a@uint32 zmm4_a zmm8_a; xor zmm4_b@uint32 zmm4_b zmm8_b;
xor zmm4_c@uint32 zmm4_c zmm8_c; xor zmm4_d@uint32 zmm4_d zmm8_d;
xor zmm4_e@uint32 zmm4_e zmm8_e; xor zmm4_f@uint32 zmm4_f zmm8_f;
(* vpxord %zmm9,%zmm5,%zmm5                        #! PC = 0x555555558262 *)
xor zmm5_0@uint32 zmm5_0 zmm9_0; xor zmm5_1@uint32 zmm5_1 zmm9_1;
xor zmm5_2@uint32 zmm5_2 zmm9_2; xor zmm5_3@uint32 zmm5_3 zmm9_3;
xor zmm5_4@uint32 zmm5_4 zmm9_4; xor zmm5_5@uint32 zmm5_5 zmm9_5;
xor zmm5_6@uint32 zmm5_6 zmm9_6; xor zmm5_7@uint32 zmm5_7 zmm9_7;
xor zmm5_8@uint32 zmm5_8 zmm9_8; xor zmm5_9@uint32 zmm5_9 zmm9_9;
xor zmm5_a@uint32 zmm5_a zmm9_a; xor zmm5_b@uint32 zmm5_b zmm9_b;
xor zmm5_c@uint32 zmm5_c zmm9_c; xor zmm5_d@uint32 zmm5_d zmm9_d;
xor zmm5_e@uint32 zmm5_e zmm9_e; xor zmm5_f@uint32 zmm5_f zmm9_f;
(* vpxord %zmm10,%zmm6,%zmm6                       #! PC = 0x555555558268 *)
xor zmm6_0@uint32 zmm6_0 zmm10_0; xor zmm6_1@uint32 zmm6_1 zmm10_1;
xor zmm6_2@uint32 zmm6_2 zmm10_2; xor zmm6_3@uint32 zmm6_3 zmm10_3;
xor zmm6_4@uint32 zmm6_4 zmm10_4; xor zmm6_5@uint32 zmm6_5 zmm10_5;
xor zmm6_6@uint32 zmm6_6 zmm10_6; xor zmm6_7@uint32 zmm6_7 zmm10_7;
xor zmm6_8@uint32 zmm6_8 zmm10_8; xor zmm6_9@uint32 zmm6_9 zmm10_9;
xor zmm6_a@uint32 zmm6_a zmm10_a; xor zmm6_b@uint32 zmm6_b zmm10_b;
xor zmm6_c@uint32 zmm6_c zmm10_c; xor zmm6_d@uint32 zmm6_d zmm10_d;
xor zmm6_e@uint32 zmm6_e zmm10_e; xor zmm6_f@uint32 zmm6_f zmm10_f;
(* vpxord %zmm11,%zmm7,%zmm7                       #! PC = 0x55555555826e *)
xor zmm7_0@uint32 zmm7_0 zmm11_0; xor zmm7_1@uint32 zmm7_1 zmm11_1;
xor zmm7_2@uint32 zmm7_2 zmm11_2; xor zmm7_3@uint32 zmm7_3 zmm11_3;
xor zmm7_4@uint32 zmm7_4 zmm11_4; xor zmm7_5@uint32 zmm7_5 zmm11_5;
xor zmm7_6@uint32 zmm7_6 zmm11_6; xor zmm7_7@uint32 zmm7_7 zmm11_7;
xor zmm7_8@uint32 zmm7_8 zmm11_8; xor zmm7_9@uint32 zmm7_9 zmm11_9;
xor zmm7_a@uint32 zmm7_a zmm11_a; xor zmm7_b@uint32 zmm7_b zmm11_b;
xor zmm7_c@uint32 zmm7_c zmm11_c; xor zmm7_d@uint32 zmm7_d zmm11_d;
xor zmm7_e@uint32 zmm7_e zmm11_e; xor zmm7_f@uint32 zmm7_f zmm11_f;
(* vprold $0x7,%zmm4,%zmm4                         #! PC = 0x555555558274 *)
rol zmm4_0@uint32 zmm4_0 0x7; rol zmm4_1@uint32 zmm4_1 0x7;
rol zmm4_2@uint32 zmm4_2 0x7; rol zmm4_3@uint32 zmm4_3 0x7;
rol zmm4_4@uint32 zmm4_4 0x7; rol zmm4_5@uint32 zmm4_5 0x7;
rol zmm4_6@uint32 zmm4_6 0x7; rol zmm4_7@uint32 zmm4_7 0x7;
rol zmm4_8@uint32 zmm4_8 0x7; rol zmm4_9@uint32 zmm4_9 0x7;
rol zmm4_a@uint32 zmm4_a 0x7; rol zmm4_b@uint32 zmm4_b 0x7;
rol zmm4_c@uint32 zmm4_c 0x7; rol zmm4_d@uint32 zmm4_d 0x7;
rol zmm4_e@uint32 zmm4_e 0x7; rol zmm4_f@uint32 zmm4_f 0x7;
(* vprold $0x7,%zmm5,%zmm5                         #! PC = 0x55555555827b *)
rol zmm5_0@uint32 zmm5_0 0x7; rol zmm5_1@uint32 zmm5_1 0x7;
rol zmm5_2@uint32 zmm5_2 0x7; rol zmm5_3@uint32 zmm5_3 0x7;
rol zmm5_4@uint32 zmm5_4 0x7; rol zmm5_5@uint32 zmm5_5 0x7;
rol zmm5_6@uint32 zmm5_6 0x7; rol zmm5_7@uint32 zmm5_7 0x7;
rol zmm5_8@uint32 zmm5_8 0x7; rol zmm5_9@uint32 zmm5_9 0x7;
rol zmm5_a@uint32 zmm5_a 0x7; rol zmm5_b@uint32 zmm5_b 0x7;
rol zmm5_c@uint32 zmm5_c 0x7; rol zmm5_d@uint32 zmm5_d 0x7;
rol zmm5_e@uint32 zmm5_e 0x7; rol zmm5_f@uint32 zmm5_f 0x7;
(* vprold $0x7,%zmm6,%zmm6                         #! PC = 0x555555558282 *)
rol zmm6_0@uint32 zmm6_0 0x7; rol zmm6_1@uint32 zmm6_1 0x7;
rol zmm6_2@uint32 zmm6_2 0x7; rol zmm6_3@uint32 zmm6_3 0x7;
rol zmm6_4@uint32 zmm6_4 0x7; rol zmm6_5@uint32 zmm6_5 0x7;
rol zmm6_6@uint32 zmm6_6 0x7; rol zmm6_7@uint32 zmm6_7 0x7;
rol zmm6_8@uint32 zmm6_8 0x7; rol zmm6_9@uint32 zmm6_9 0x7;
rol zmm6_a@uint32 zmm6_a 0x7; rol zmm6_b@uint32 zmm6_b 0x7;
rol zmm6_c@uint32 zmm6_c 0x7; rol zmm6_d@uint32 zmm6_d 0x7;
rol zmm6_e@uint32 zmm6_e 0x7; rol zmm6_f@uint32 zmm6_f 0x7;
(* vprold $0x7,%zmm7,%zmm7                         #! PC = 0x555555558289 *)
rol zmm7_0@uint32 zmm7_0 0x7; rol zmm7_1@uint32 zmm7_1 0x7;
rol zmm7_2@uint32 zmm7_2 0x7; rol zmm7_3@uint32 zmm7_3 0x7;
rol zmm7_4@uint32 zmm7_4 0x7; rol zmm7_5@uint32 zmm7_5 0x7;
rol zmm7_6@uint32 zmm7_6 0x7; rol zmm7_7@uint32 zmm7_7 0x7;
rol zmm7_8@uint32 zmm7_8 0x7; rol zmm7_9@uint32 zmm7_9 0x7;
rol zmm7_a@uint32 zmm7_a 0x7; rol zmm7_b@uint32 zmm7_b 0x7;
rol zmm7_c@uint32 zmm7_c 0x7; rol zmm7_d@uint32 zmm7_d 0x7;
rol zmm7_e@uint32 zmm7_e 0x7; rol zmm7_f@uint32 zmm7_f 0x7;
(* vpaddd %zmm5,%zmm0,%zmm0                        #! PC = 0x555555558290 *)
adds dc zmm0_0 zmm0_0 zmm5_0; adds dc zmm0_1 zmm0_1 zmm5_1;
adds dc zmm0_2 zmm0_2 zmm5_2; adds dc zmm0_3 zmm0_3 zmm5_3;
adds dc zmm0_4 zmm0_4 zmm5_4; adds dc zmm0_5 zmm0_5 zmm5_5;
adds dc zmm0_6 zmm0_6 zmm5_6; adds dc zmm0_7 zmm0_7 zmm5_7;
adds dc zmm0_8 zmm0_8 zmm5_8; adds dc zmm0_9 zmm0_9 zmm5_9;
adds dc zmm0_a zmm0_a zmm5_a; adds dc zmm0_b zmm0_b zmm5_b;
adds dc zmm0_c zmm0_c zmm5_c; adds dc zmm0_d zmm0_d zmm5_d;
adds dc zmm0_e zmm0_e zmm5_e; adds dc zmm0_f zmm0_f zmm5_f;
(* vpaddd %zmm6,%zmm1,%zmm1                        #! PC = 0x555555558296 *)
adds dc zmm1_0 zmm1_0 zmm6_0; adds dc zmm1_1 zmm1_1 zmm6_1;
adds dc zmm1_2 zmm1_2 zmm6_2; adds dc zmm1_3 zmm1_3 zmm6_3;
adds dc zmm1_4 zmm1_4 zmm6_4; adds dc zmm1_5 zmm1_5 zmm6_5;
adds dc zmm1_6 zmm1_6 zmm6_6; adds dc zmm1_7 zmm1_7 zmm6_7;
adds dc zmm1_8 zmm1_8 zmm6_8; adds dc zmm1_9 zmm1_9 zmm6_9;
adds dc zmm1_a zmm1_a zmm6_a; adds dc zmm1_b zmm1_b zmm6_b;
adds dc zmm1_c zmm1_c zmm6_c; adds dc zmm1_d zmm1_d zmm6_d;
adds dc zmm1_e zmm1_e zmm6_e; adds dc zmm1_f zmm1_f zmm6_f;
(* vpaddd %zmm7,%zmm2,%zmm2                        #! PC = 0x55555555829c *)
adds dc zmm2_0 zmm2_0 zmm7_0; adds dc zmm2_1 zmm2_1 zmm7_1;
adds dc zmm2_2 zmm2_2 zmm7_2; adds dc zmm2_3 zmm2_3 zmm7_3;
adds dc zmm2_4 zmm2_4 zmm7_4; adds dc zmm2_5 zmm2_5 zmm7_5;
adds dc zmm2_6 zmm2_6 zmm7_6; adds dc zmm2_7 zmm2_7 zmm7_7;
adds dc zmm2_8 zmm2_8 zmm7_8; adds dc zmm2_9 zmm2_9 zmm7_9;
adds dc zmm2_a zmm2_a zmm7_a; adds dc zmm2_b zmm2_b zmm7_b;
adds dc zmm2_c zmm2_c zmm7_c; adds dc zmm2_d zmm2_d zmm7_d;
adds dc zmm2_e zmm2_e zmm7_e; adds dc zmm2_f zmm2_f zmm7_f;
(* vpaddd %zmm4,%zmm3,%zmm3                        #! PC = 0x5555555582a2 *)
adds dc zmm3_0 zmm3_0 zmm4_0; adds dc zmm3_1 zmm3_1 zmm4_1;
adds dc zmm3_2 zmm3_2 zmm4_2; adds dc zmm3_3 zmm3_3 zmm4_3;
adds dc zmm3_4 zmm3_4 zmm4_4; adds dc zmm3_5 zmm3_5 zmm4_5;
adds dc zmm3_6 zmm3_6 zmm4_6; adds dc zmm3_7 zmm3_7 zmm4_7;
adds dc zmm3_8 zmm3_8 zmm4_8; adds dc zmm3_9 zmm3_9 zmm4_9;
adds dc zmm3_a zmm3_a zmm4_a; adds dc zmm3_b zmm3_b zmm4_b;
adds dc zmm3_c zmm3_c zmm4_c; adds dc zmm3_d zmm3_d zmm4_d;
adds dc zmm3_e zmm3_e zmm4_e; adds dc zmm3_f zmm3_f zmm4_f;
(* vpxord %zmm0,%zmm15,%zmm15                      #! PC = 0x5555555582a8 *)
xor zmm15_0@uint32 zmm15_0 zmm0_0; xor zmm15_1@uint32 zmm15_1 zmm0_1;
xor zmm15_2@uint32 zmm15_2 zmm0_2; xor zmm15_3@uint32 zmm15_3 zmm0_3;
xor zmm15_4@uint32 zmm15_4 zmm0_4; xor zmm15_5@uint32 zmm15_5 zmm0_5;
xor zmm15_6@uint32 zmm15_6 zmm0_6; xor zmm15_7@uint32 zmm15_7 zmm0_7;
xor zmm15_8@uint32 zmm15_8 zmm0_8; xor zmm15_9@uint32 zmm15_9 zmm0_9;
xor zmm15_a@uint32 zmm15_a zmm0_a; xor zmm15_b@uint32 zmm15_b zmm0_b;
xor zmm15_c@uint32 zmm15_c zmm0_c; xor zmm15_d@uint32 zmm15_d zmm0_d;
xor zmm15_e@uint32 zmm15_e zmm0_e; xor zmm15_f@uint32 zmm15_f zmm0_f;
(* vpxord %zmm1,%zmm12,%zmm12                      #! PC = 0x5555555582ae *)
xor zmm12_0@uint32 zmm12_0 zmm1_0; xor zmm12_1@uint32 zmm12_1 zmm1_1;
xor zmm12_2@uint32 zmm12_2 zmm1_2; xor zmm12_3@uint32 zmm12_3 zmm1_3;
xor zmm12_4@uint32 zmm12_4 zmm1_4; xor zmm12_5@uint32 zmm12_5 zmm1_5;
xor zmm12_6@uint32 zmm12_6 zmm1_6; xor zmm12_7@uint32 zmm12_7 zmm1_7;
xor zmm12_8@uint32 zmm12_8 zmm1_8; xor zmm12_9@uint32 zmm12_9 zmm1_9;
xor zmm12_a@uint32 zmm12_a zmm1_a; xor zmm12_b@uint32 zmm12_b zmm1_b;
xor zmm12_c@uint32 zmm12_c zmm1_c; xor zmm12_d@uint32 zmm12_d zmm1_d;
xor zmm12_e@uint32 zmm12_e zmm1_e; xor zmm12_f@uint32 zmm12_f zmm1_f;
(* vpxord %zmm2,%zmm13,%zmm13                      #! PC = 0x5555555582b4 *)
xor zmm13_0@uint32 zmm13_0 zmm2_0; xor zmm13_1@uint32 zmm13_1 zmm2_1;
xor zmm13_2@uint32 zmm13_2 zmm2_2; xor zmm13_3@uint32 zmm13_3 zmm2_3;
xor zmm13_4@uint32 zmm13_4 zmm2_4; xor zmm13_5@uint32 zmm13_5 zmm2_5;
xor zmm13_6@uint32 zmm13_6 zmm2_6; xor zmm13_7@uint32 zmm13_7 zmm2_7;
xor zmm13_8@uint32 zmm13_8 zmm2_8; xor zmm13_9@uint32 zmm13_9 zmm2_9;
xor zmm13_a@uint32 zmm13_a zmm2_a; xor zmm13_b@uint32 zmm13_b zmm2_b;
xor zmm13_c@uint32 zmm13_c zmm2_c; xor zmm13_d@uint32 zmm13_d zmm2_d;
xor zmm13_e@uint32 zmm13_e zmm2_e; xor zmm13_f@uint32 zmm13_f zmm2_f;
(* vpxord %zmm3,%zmm14,%zmm14                      #! PC = 0x5555555582ba *)
xor zmm14_0@uint32 zmm14_0 zmm3_0; xor zmm14_1@uint32 zmm14_1 zmm3_1;
xor zmm14_2@uint32 zmm14_2 zmm3_2; xor zmm14_3@uint32 zmm14_3 zmm3_3;
xor zmm14_4@uint32 zmm14_4 zmm3_4; xor zmm14_5@uint32 zmm14_5 zmm3_5;
xor zmm14_6@uint32 zmm14_6 zmm3_6; xor zmm14_7@uint32 zmm14_7 zmm3_7;
xor zmm14_8@uint32 zmm14_8 zmm3_8; xor zmm14_9@uint32 zmm14_9 zmm3_9;
xor zmm14_a@uint32 zmm14_a zmm3_a; xor zmm14_b@uint32 zmm14_b zmm3_b;
xor zmm14_c@uint32 zmm14_c zmm3_c; xor zmm14_d@uint32 zmm14_d zmm3_d;
xor zmm14_e@uint32 zmm14_e zmm3_e; xor zmm14_f@uint32 zmm14_f zmm3_f;
(* vprold $0x10,%zmm15,%zmm15                      #! PC = 0x5555555582c0 *)
rol zmm15_0@uint32 zmm15_0 0x10; rol zmm15_1@uint32 zmm15_1 0x10;
rol zmm15_2@uint32 zmm15_2 0x10; rol zmm15_3@uint32 zmm15_3 0x10;
rol zmm15_4@uint32 zmm15_4 0x10; rol zmm15_5@uint32 zmm15_5 0x10;
rol zmm15_6@uint32 zmm15_6 0x10; rol zmm15_7@uint32 zmm15_7 0x10;
rol zmm15_8@uint32 zmm15_8 0x10; rol zmm15_9@uint32 zmm15_9 0x10;
rol zmm15_a@uint32 zmm15_a 0x10; rol zmm15_b@uint32 zmm15_b 0x10;
rol zmm15_c@uint32 zmm15_c 0x10; rol zmm15_d@uint32 zmm15_d 0x10;
rol zmm15_e@uint32 zmm15_e 0x10; rol zmm15_f@uint32 zmm15_f 0x10;
(* vprold $0x10,%zmm12,%zmm12                      #! PC = 0x5555555582c7 *)
rol zmm12_0@uint32 zmm12_0 0x10; rol zmm12_1@uint32 zmm12_1 0x10;
rol zmm12_2@uint32 zmm12_2 0x10; rol zmm12_3@uint32 zmm12_3 0x10;
rol zmm12_4@uint32 zmm12_4 0x10; rol zmm12_5@uint32 zmm12_5 0x10;
rol zmm12_6@uint32 zmm12_6 0x10; rol zmm12_7@uint32 zmm12_7 0x10;
rol zmm12_8@uint32 zmm12_8 0x10; rol zmm12_9@uint32 zmm12_9 0x10;
rol zmm12_a@uint32 zmm12_a 0x10; rol zmm12_b@uint32 zmm12_b 0x10;
rol zmm12_c@uint32 zmm12_c 0x10; rol zmm12_d@uint32 zmm12_d 0x10;
rol zmm12_e@uint32 zmm12_e 0x10; rol zmm12_f@uint32 zmm12_f 0x10;
(* vprold $0x10,%zmm13,%zmm13                      #! PC = 0x5555555582ce *)
rol zmm13_0@uint32 zmm13_0 0x10; rol zmm13_1@uint32 zmm13_1 0x10;
rol zmm13_2@uint32 zmm13_2 0x10; rol zmm13_3@uint32 zmm13_3 0x10;
rol zmm13_4@uint32 zmm13_4 0x10; rol zmm13_5@uint32 zmm13_5 0x10;
rol zmm13_6@uint32 zmm13_6 0x10; rol zmm13_7@uint32 zmm13_7 0x10;
rol zmm13_8@uint32 zmm13_8 0x10; rol zmm13_9@uint32 zmm13_9 0x10;
rol zmm13_a@uint32 zmm13_a 0x10; rol zmm13_b@uint32 zmm13_b 0x10;
rol zmm13_c@uint32 zmm13_c 0x10; rol zmm13_d@uint32 zmm13_d 0x10;
rol zmm13_e@uint32 zmm13_e 0x10; rol zmm13_f@uint32 zmm13_f 0x10;
(* vprold $0x10,%zmm14,%zmm14                      #! PC = 0x5555555582d5 *)
rol zmm14_0@uint32 zmm14_0 0x10; rol zmm14_1@uint32 zmm14_1 0x10;
rol zmm14_2@uint32 zmm14_2 0x10; rol zmm14_3@uint32 zmm14_3 0x10;
rol zmm14_4@uint32 zmm14_4 0x10; rol zmm14_5@uint32 zmm14_5 0x10;
rol zmm14_6@uint32 zmm14_6 0x10; rol zmm14_7@uint32 zmm14_7 0x10;
rol zmm14_8@uint32 zmm14_8 0x10; rol zmm14_9@uint32 zmm14_9 0x10;
rol zmm14_a@uint32 zmm14_a 0x10; rol zmm14_b@uint32 zmm14_b 0x10;
rol zmm14_c@uint32 zmm14_c 0x10; rol zmm14_d@uint32 zmm14_d 0x10;
rol zmm14_e@uint32 zmm14_e 0x10; rol zmm14_f@uint32 zmm14_f 0x10;
(* vpaddd %zmm15,%zmm10,%zmm10                     #! PC = 0x5555555582dc *)
adds dc zmm10_0 zmm10_0 zmm15_0; adds dc zmm10_1 zmm10_1 zmm15_1;
adds dc zmm10_2 zmm10_2 zmm15_2; adds dc zmm10_3 zmm10_3 zmm15_3;
adds dc zmm10_4 zmm10_4 zmm15_4; adds dc zmm10_5 zmm10_5 zmm15_5;
adds dc zmm10_6 zmm10_6 zmm15_6; adds dc zmm10_7 zmm10_7 zmm15_7;
adds dc zmm10_8 zmm10_8 zmm15_8; adds dc zmm10_9 zmm10_9 zmm15_9;
adds dc zmm10_a zmm10_a zmm15_a; adds dc zmm10_b zmm10_b zmm15_b;
adds dc zmm10_c zmm10_c zmm15_c; adds dc zmm10_d zmm10_d zmm15_d;
adds dc zmm10_e zmm10_e zmm15_e; adds dc zmm10_f zmm10_f zmm15_f;
(* vpaddd %zmm12,%zmm11,%zmm11                     #! PC = 0x5555555582e2 *)
adds dc zmm11_0 zmm11_0 zmm12_0; adds dc zmm11_1 zmm11_1 zmm12_1;
adds dc zmm11_2 zmm11_2 zmm12_2; adds dc zmm11_3 zmm11_3 zmm12_3;
adds dc zmm11_4 zmm11_4 zmm12_4; adds dc zmm11_5 zmm11_5 zmm12_5;
adds dc zmm11_6 zmm11_6 zmm12_6; adds dc zmm11_7 zmm11_7 zmm12_7;
adds dc zmm11_8 zmm11_8 zmm12_8; adds dc zmm11_9 zmm11_9 zmm12_9;
adds dc zmm11_a zmm11_a zmm12_a; adds dc zmm11_b zmm11_b zmm12_b;
adds dc zmm11_c zmm11_c zmm12_c; adds dc zmm11_d zmm11_d zmm12_d;
adds dc zmm11_e zmm11_e zmm12_e; adds dc zmm11_f zmm11_f zmm12_f;
(* vpaddd %zmm13,%zmm8,%zmm8                       #! PC = 0x5555555582e8 *)
adds dc zmm8_0 zmm8_0 zmm13_0; adds dc zmm8_1 zmm8_1 zmm13_1;
adds dc zmm8_2 zmm8_2 zmm13_2; adds dc zmm8_3 zmm8_3 zmm13_3;
adds dc zmm8_4 zmm8_4 zmm13_4; adds dc zmm8_5 zmm8_5 zmm13_5;
adds dc zmm8_6 zmm8_6 zmm13_6; adds dc zmm8_7 zmm8_7 zmm13_7;
adds dc zmm8_8 zmm8_8 zmm13_8; adds dc zmm8_9 zmm8_9 zmm13_9;
adds dc zmm8_a zmm8_a zmm13_a; adds dc zmm8_b zmm8_b zmm13_b;
adds dc zmm8_c zmm8_c zmm13_c; adds dc zmm8_d zmm8_d zmm13_d;
adds dc zmm8_e zmm8_e zmm13_e; adds dc zmm8_f zmm8_f zmm13_f;
(* vpaddd %zmm14,%zmm9,%zmm9                       #! PC = 0x5555555582ee *)
adds dc zmm9_0 zmm9_0 zmm14_0; adds dc zmm9_1 zmm9_1 zmm14_1;
adds dc zmm9_2 zmm9_2 zmm14_2; adds dc zmm9_3 zmm9_3 zmm14_3;
adds dc zmm9_4 zmm9_4 zmm14_4; adds dc zmm9_5 zmm9_5 zmm14_5;
adds dc zmm9_6 zmm9_6 zmm14_6; adds dc zmm9_7 zmm9_7 zmm14_7;
adds dc zmm9_8 zmm9_8 zmm14_8; adds dc zmm9_9 zmm9_9 zmm14_9;
adds dc zmm9_a zmm9_a zmm14_a; adds dc zmm9_b zmm9_b zmm14_b;
adds dc zmm9_c zmm9_c zmm14_c; adds dc zmm9_d zmm9_d zmm14_d;
adds dc zmm9_e zmm9_e zmm14_e; adds dc zmm9_f zmm9_f zmm14_f;
(* vpxord %zmm10,%zmm5,%zmm5                       #! PC = 0x5555555582f4 *)
xor zmm5_0@uint32 zmm5_0 zmm10_0; xor zmm5_1@uint32 zmm5_1 zmm10_1;
xor zmm5_2@uint32 zmm5_2 zmm10_2; xor zmm5_3@uint32 zmm5_3 zmm10_3;
xor zmm5_4@uint32 zmm5_4 zmm10_4; xor zmm5_5@uint32 zmm5_5 zmm10_5;
xor zmm5_6@uint32 zmm5_6 zmm10_6; xor zmm5_7@uint32 zmm5_7 zmm10_7;
xor zmm5_8@uint32 zmm5_8 zmm10_8; xor zmm5_9@uint32 zmm5_9 zmm10_9;
xor zmm5_a@uint32 zmm5_a zmm10_a; xor zmm5_b@uint32 zmm5_b zmm10_b;
xor zmm5_c@uint32 zmm5_c zmm10_c; xor zmm5_d@uint32 zmm5_d zmm10_d;
xor zmm5_e@uint32 zmm5_e zmm10_e; xor zmm5_f@uint32 zmm5_f zmm10_f;
(* vpxord %zmm11,%zmm6,%zmm6                       #! PC = 0x5555555582fa *)
xor zmm6_0@uint32 zmm6_0 zmm11_0; xor zmm6_1@uint32 zmm6_1 zmm11_1;
xor zmm6_2@uint32 zmm6_2 zmm11_2; xor zmm6_3@uint32 zmm6_3 zmm11_3;
xor zmm6_4@uint32 zmm6_4 zmm11_4; xor zmm6_5@uint32 zmm6_5 zmm11_5;
xor zmm6_6@uint32 zmm6_6 zmm11_6; xor zmm6_7@uint32 zmm6_7 zmm11_7;
xor zmm6_8@uint32 zmm6_8 zmm11_8; xor zmm6_9@uint32 zmm6_9 zmm11_9;
xor zmm6_a@uint32 zmm6_a zmm11_a; xor zmm6_b@uint32 zmm6_b zmm11_b;
xor zmm6_c@uint32 zmm6_c zmm11_c; xor zmm6_d@uint32 zmm6_d zmm11_d;
xor zmm6_e@uint32 zmm6_e zmm11_e; xor zmm6_f@uint32 zmm6_f zmm11_f;
(* vpxord %zmm8,%zmm7,%zmm7                        #! PC = 0x555555558300 *)
xor zmm7_0@uint32 zmm7_0 zmm8_0; xor zmm7_1@uint32 zmm7_1 zmm8_1;
xor zmm7_2@uint32 zmm7_2 zmm8_2; xor zmm7_3@uint32 zmm7_3 zmm8_3;
xor zmm7_4@uint32 zmm7_4 zmm8_4; xor zmm7_5@uint32 zmm7_5 zmm8_5;
xor zmm7_6@uint32 zmm7_6 zmm8_6; xor zmm7_7@uint32 zmm7_7 zmm8_7;
xor zmm7_8@uint32 zmm7_8 zmm8_8; xor zmm7_9@uint32 zmm7_9 zmm8_9;
xor zmm7_a@uint32 zmm7_a zmm8_a; xor zmm7_b@uint32 zmm7_b zmm8_b;
xor zmm7_c@uint32 zmm7_c zmm8_c; xor zmm7_d@uint32 zmm7_d zmm8_d;
xor zmm7_e@uint32 zmm7_e zmm8_e; xor zmm7_f@uint32 zmm7_f zmm8_f;
(* vpxord %zmm9,%zmm4,%zmm4                        #! PC = 0x555555558306 *)
xor zmm4_0@uint32 zmm4_0 zmm9_0; xor zmm4_1@uint32 zmm4_1 zmm9_1;
xor zmm4_2@uint32 zmm4_2 zmm9_2; xor zmm4_3@uint32 zmm4_3 zmm9_3;
xor zmm4_4@uint32 zmm4_4 zmm9_4; xor zmm4_5@uint32 zmm4_5 zmm9_5;
xor zmm4_6@uint32 zmm4_6 zmm9_6; xor zmm4_7@uint32 zmm4_7 zmm9_7;
xor zmm4_8@uint32 zmm4_8 zmm9_8; xor zmm4_9@uint32 zmm4_9 zmm9_9;
xor zmm4_a@uint32 zmm4_a zmm9_a; xor zmm4_b@uint32 zmm4_b zmm9_b;
xor zmm4_c@uint32 zmm4_c zmm9_c; xor zmm4_d@uint32 zmm4_d zmm9_d;
xor zmm4_e@uint32 zmm4_e zmm9_e; xor zmm4_f@uint32 zmm4_f zmm9_f;
(* vprold $0xc,%zmm5,%zmm5                         #! PC = 0x55555555830c *)
rol zmm5_0@uint32 zmm5_0 0xc; rol zmm5_1@uint32 zmm5_1 0xc;
rol zmm5_2@uint32 zmm5_2 0xc; rol zmm5_3@uint32 zmm5_3 0xc;
rol zmm5_4@uint32 zmm5_4 0xc; rol zmm5_5@uint32 zmm5_5 0xc;
rol zmm5_6@uint32 zmm5_6 0xc; rol zmm5_7@uint32 zmm5_7 0xc;
rol zmm5_8@uint32 zmm5_8 0xc; rol zmm5_9@uint32 zmm5_9 0xc;
rol zmm5_a@uint32 zmm5_a 0xc; rol zmm5_b@uint32 zmm5_b 0xc;
rol zmm5_c@uint32 zmm5_c 0xc; rol zmm5_d@uint32 zmm5_d 0xc;
rol zmm5_e@uint32 zmm5_e 0xc; rol zmm5_f@uint32 zmm5_f 0xc;
(* vprold $0xc,%zmm6,%zmm6                         #! PC = 0x555555558313 *)
rol zmm6_0@uint32 zmm6_0 0xc; rol zmm6_1@uint32 zmm6_1 0xc;
rol zmm6_2@uint32 zmm6_2 0xc; rol zmm6_3@uint32 zmm6_3 0xc;
rol zmm6_4@uint32 zmm6_4 0xc; rol zmm6_5@uint32 zmm6_5 0xc;
rol zmm6_6@uint32 zmm6_6 0xc; rol zmm6_7@uint32 zmm6_7 0xc;
rol zmm6_8@uint32 zmm6_8 0xc; rol zmm6_9@uint32 zmm6_9 0xc;
rol zmm6_a@uint32 zmm6_a 0xc; rol zmm6_b@uint32 zmm6_b 0xc;
rol zmm6_c@uint32 zmm6_c 0xc; rol zmm6_d@uint32 zmm6_d 0xc;
rol zmm6_e@uint32 zmm6_e 0xc; rol zmm6_f@uint32 zmm6_f 0xc;
(* vprold $0xc,%zmm7,%zmm7                         #! PC = 0x55555555831a *)
rol zmm7_0@uint32 zmm7_0 0xc; rol zmm7_1@uint32 zmm7_1 0xc;
rol zmm7_2@uint32 zmm7_2 0xc; rol zmm7_3@uint32 zmm7_3 0xc;
rol zmm7_4@uint32 zmm7_4 0xc; rol zmm7_5@uint32 zmm7_5 0xc;
rol zmm7_6@uint32 zmm7_6 0xc; rol zmm7_7@uint32 zmm7_7 0xc;
rol zmm7_8@uint32 zmm7_8 0xc; rol zmm7_9@uint32 zmm7_9 0xc;
rol zmm7_a@uint32 zmm7_a 0xc; rol zmm7_b@uint32 zmm7_b 0xc;
rol zmm7_c@uint32 zmm7_c 0xc; rol zmm7_d@uint32 zmm7_d 0xc;
rol zmm7_e@uint32 zmm7_e 0xc; rol zmm7_f@uint32 zmm7_f 0xc;
(* vprold $0xc,%zmm4,%zmm4                         #! PC = 0x555555558321 *)
rol zmm4_0@uint32 zmm4_0 0xc; rol zmm4_1@uint32 zmm4_1 0xc;
rol zmm4_2@uint32 zmm4_2 0xc; rol zmm4_3@uint32 zmm4_3 0xc;
rol zmm4_4@uint32 zmm4_4 0xc; rol zmm4_5@uint32 zmm4_5 0xc;
rol zmm4_6@uint32 zmm4_6 0xc; rol zmm4_7@uint32 zmm4_7 0xc;
rol zmm4_8@uint32 zmm4_8 0xc; rol zmm4_9@uint32 zmm4_9 0xc;
rol zmm4_a@uint32 zmm4_a 0xc; rol zmm4_b@uint32 zmm4_b 0xc;
rol zmm4_c@uint32 zmm4_c 0xc; rol zmm4_d@uint32 zmm4_d 0xc;
rol zmm4_e@uint32 zmm4_e 0xc; rol zmm4_f@uint32 zmm4_f 0xc;
(* vpaddd %zmm5,%zmm0,%zmm0                        #! PC = 0x555555558328 *)
adds dc zmm0_0 zmm0_0 zmm5_0; adds dc zmm0_1 zmm0_1 zmm5_1;
adds dc zmm0_2 zmm0_2 zmm5_2; adds dc zmm0_3 zmm0_3 zmm5_3;
adds dc zmm0_4 zmm0_4 zmm5_4; adds dc zmm0_5 zmm0_5 zmm5_5;
adds dc zmm0_6 zmm0_6 zmm5_6; adds dc zmm0_7 zmm0_7 zmm5_7;
adds dc zmm0_8 zmm0_8 zmm5_8; adds dc zmm0_9 zmm0_9 zmm5_9;
adds dc zmm0_a zmm0_a zmm5_a; adds dc zmm0_b zmm0_b zmm5_b;
adds dc zmm0_c zmm0_c zmm5_c; adds dc zmm0_d zmm0_d zmm5_d;
adds dc zmm0_e zmm0_e zmm5_e; adds dc zmm0_f zmm0_f zmm5_f;
(* vpaddd %zmm6,%zmm1,%zmm1                        #! PC = 0x55555555832e *)
adds dc zmm1_0 zmm1_0 zmm6_0; adds dc zmm1_1 zmm1_1 zmm6_1;
adds dc zmm1_2 zmm1_2 zmm6_2; adds dc zmm1_3 zmm1_3 zmm6_3;
adds dc zmm1_4 zmm1_4 zmm6_4; adds dc zmm1_5 zmm1_5 zmm6_5;
adds dc zmm1_6 zmm1_6 zmm6_6; adds dc zmm1_7 zmm1_7 zmm6_7;
adds dc zmm1_8 zmm1_8 zmm6_8; adds dc zmm1_9 zmm1_9 zmm6_9;
adds dc zmm1_a zmm1_a zmm6_a; adds dc zmm1_b zmm1_b zmm6_b;
adds dc zmm1_c zmm1_c zmm6_c; adds dc zmm1_d zmm1_d zmm6_d;
adds dc zmm1_e zmm1_e zmm6_e; adds dc zmm1_f zmm1_f zmm6_f;
(* vpaddd %zmm7,%zmm2,%zmm2                        #! PC = 0x555555558334 *)
adds dc zmm2_0 zmm2_0 zmm7_0; adds dc zmm2_1 zmm2_1 zmm7_1;
adds dc zmm2_2 zmm2_2 zmm7_2; adds dc zmm2_3 zmm2_3 zmm7_3;
adds dc zmm2_4 zmm2_4 zmm7_4; adds dc zmm2_5 zmm2_5 zmm7_5;
adds dc zmm2_6 zmm2_6 zmm7_6; adds dc zmm2_7 zmm2_7 zmm7_7;
adds dc zmm2_8 zmm2_8 zmm7_8; adds dc zmm2_9 zmm2_9 zmm7_9;
adds dc zmm2_a zmm2_a zmm7_a; adds dc zmm2_b zmm2_b zmm7_b;
adds dc zmm2_c zmm2_c zmm7_c; adds dc zmm2_d zmm2_d zmm7_d;
adds dc zmm2_e zmm2_e zmm7_e; adds dc zmm2_f zmm2_f zmm7_f;
(* vpaddd %zmm4,%zmm3,%zmm3                        #! PC = 0x55555555833a *)
adds dc zmm3_0 zmm3_0 zmm4_0; adds dc zmm3_1 zmm3_1 zmm4_1;
adds dc zmm3_2 zmm3_2 zmm4_2; adds dc zmm3_3 zmm3_3 zmm4_3;
adds dc zmm3_4 zmm3_4 zmm4_4; adds dc zmm3_5 zmm3_5 zmm4_5;
adds dc zmm3_6 zmm3_6 zmm4_6; adds dc zmm3_7 zmm3_7 zmm4_7;
adds dc zmm3_8 zmm3_8 zmm4_8; adds dc zmm3_9 zmm3_9 zmm4_9;
adds dc zmm3_a zmm3_a zmm4_a; adds dc zmm3_b zmm3_b zmm4_b;
adds dc zmm3_c zmm3_c zmm4_c; adds dc zmm3_d zmm3_d zmm4_d;
adds dc zmm3_e zmm3_e zmm4_e; adds dc zmm3_f zmm3_f zmm4_f;
(* vpxord %zmm0,%zmm15,%zmm15                      #! PC = 0x555555558340 *)
xor zmm15_0@uint32 zmm15_0 zmm0_0; xor zmm15_1@uint32 zmm15_1 zmm0_1;
xor zmm15_2@uint32 zmm15_2 zmm0_2; xor zmm15_3@uint32 zmm15_3 zmm0_3;
xor zmm15_4@uint32 zmm15_4 zmm0_4; xor zmm15_5@uint32 zmm15_5 zmm0_5;
xor zmm15_6@uint32 zmm15_6 zmm0_6; xor zmm15_7@uint32 zmm15_7 zmm0_7;
xor zmm15_8@uint32 zmm15_8 zmm0_8; xor zmm15_9@uint32 zmm15_9 zmm0_9;
xor zmm15_a@uint32 zmm15_a zmm0_a; xor zmm15_b@uint32 zmm15_b zmm0_b;
xor zmm15_c@uint32 zmm15_c zmm0_c; xor zmm15_d@uint32 zmm15_d zmm0_d;
xor zmm15_e@uint32 zmm15_e zmm0_e; xor zmm15_f@uint32 zmm15_f zmm0_f;
(* vpxord %zmm1,%zmm12,%zmm12                      #! PC = 0x555555558346 *)
xor zmm12_0@uint32 zmm12_0 zmm1_0; xor zmm12_1@uint32 zmm12_1 zmm1_1;
xor zmm12_2@uint32 zmm12_2 zmm1_2; xor zmm12_3@uint32 zmm12_3 zmm1_3;
xor zmm12_4@uint32 zmm12_4 zmm1_4; xor zmm12_5@uint32 zmm12_5 zmm1_5;
xor zmm12_6@uint32 zmm12_6 zmm1_6; xor zmm12_7@uint32 zmm12_7 zmm1_7;
xor zmm12_8@uint32 zmm12_8 zmm1_8; xor zmm12_9@uint32 zmm12_9 zmm1_9;
xor zmm12_a@uint32 zmm12_a zmm1_a; xor zmm12_b@uint32 zmm12_b zmm1_b;
xor zmm12_c@uint32 zmm12_c zmm1_c; xor zmm12_d@uint32 zmm12_d zmm1_d;
xor zmm12_e@uint32 zmm12_e zmm1_e; xor zmm12_f@uint32 zmm12_f zmm1_f;
(* vpxord %zmm2,%zmm13,%zmm13                      #! PC = 0x55555555834c *)
xor zmm13_0@uint32 zmm13_0 zmm2_0; xor zmm13_1@uint32 zmm13_1 zmm2_1;
xor zmm13_2@uint32 zmm13_2 zmm2_2; xor zmm13_3@uint32 zmm13_3 zmm2_3;
xor zmm13_4@uint32 zmm13_4 zmm2_4; xor zmm13_5@uint32 zmm13_5 zmm2_5;
xor zmm13_6@uint32 zmm13_6 zmm2_6; xor zmm13_7@uint32 zmm13_7 zmm2_7;
xor zmm13_8@uint32 zmm13_8 zmm2_8; xor zmm13_9@uint32 zmm13_9 zmm2_9;
xor zmm13_a@uint32 zmm13_a zmm2_a; xor zmm13_b@uint32 zmm13_b zmm2_b;
xor zmm13_c@uint32 zmm13_c zmm2_c; xor zmm13_d@uint32 zmm13_d zmm2_d;
xor zmm13_e@uint32 zmm13_e zmm2_e; xor zmm13_f@uint32 zmm13_f zmm2_f;
(* vpxord %zmm3,%zmm14,%zmm14                      #! PC = 0x555555558352 *)
xor zmm14_0@uint32 zmm14_0 zmm3_0; xor zmm14_1@uint32 zmm14_1 zmm3_1;
xor zmm14_2@uint32 zmm14_2 zmm3_2; xor zmm14_3@uint32 zmm14_3 zmm3_3;
xor zmm14_4@uint32 zmm14_4 zmm3_4; xor zmm14_5@uint32 zmm14_5 zmm3_5;
xor zmm14_6@uint32 zmm14_6 zmm3_6; xor zmm14_7@uint32 zmm14_7 zmm3_7;
xor zmm14_8@uint32 zmm14_8 zmm3_8; xor zmm14_9@uint32 zmm14_9 zmm3_9;
xor zmm14_a@uint32 zmm14_a zmm3_a; xor zmm14_b@uint32 zmm14_b zmm3_b;
xor zmm14_c@uint32 zmm14_c zmm3_c; xor zmm14_d@uint32 zmm14_d zmm3_d;
xor zmm14_e@uint32 zmm14_e zmm3_e; xor zmm14_f@uint32 zmm14_f zmm3_f;
(* vprold $0x8,%zmm15,%zmm15                       #! PC = 0x555555558358 *)
rol zmm15_0@uint32 zmm15_0 0x8; rol zmm15_1@uint32 zmm15_1 0x8;
rol zmm15_2@uint32 zmm15_2 0x8; rol zmm15_3@uint32 zmm15_3 0x8;
rol zmm15_4@uint32 zmm15_4 0x8; rol zmm15_5@uint32 zmm15_5 0x8;
rol zmm15_6@uint32 zmm15_6 0x8; rol zmm15_7@uint32 zmm15_7 0x8;
rol zmm15_8@uint32 zmm15_8 0x8; rol zmm15_9@uint32 zmm15_9 0x8;
rol zmm15_a@uint32 zmm15_a 0x8; rol zmm15_b@uint32 zmm15_b 0x8;
rol zmm15_c@uint32 zmm15_c 0x8; rol zmm15_d@uint32 zmm15_d 0x8;
rol zmm15_e@uint32 zmm15_e 0x8; rol zmm15_f@uint32 zmm15_f 0x8;
(* vprold $0x8,%zmm12,%zmm12                       #! PC = 0x55555555835f *)
rol zmm12_0@uint32 zmm12_0 0x8; rol zmm12_1@uint32 zmm12_1 0x8;
rol zmm12_2@uint32 zmm12_2 0x8; rol zmm12_3@uint32 zmm12_3 0x8;
rol zmm12_4@uint32 zmm12_4 0x8; rol zmm12_5@uint32 zmm12_5 0x8;
rol zmm12_6@uint32 zmm12_6 0x8; rol zmm12_7@uint32 zmm12_7 0x8;
rol zmm12_8@uint32 zmm12_8 0x8; rol zmm12_9@uint32 zmm12_9 0x8;
rol zmm12_a@uint32 zmm12_a 0x8; rol zmm12_b@uint32 zmm12_b 0x8;
rol zmm12_c@uint32 zmm12_c 0x8; rol zmm12_d@uint32 zmm12_d 0x8;
rol zmm12_e@uint32 zmm12_e 0x8; rol zmm12_f@uint32 zmm12_f 0x8;
(* vprold $0x8,%zmm13,%zmm13                       #! PC = 0x555555558366 *)
rol zmm13_0@uint32 zmm13_0 0x8; rol zmm13_1@uint32 zmm13_1 0x8;
rol zmm13_2@uint32 zmm13_2 0x8; rol zmm13_3@uint32 zmm13_3 0x8;
rol zmm13_4@uint32 zmm13_4 0x8; rol zmm13_5@uint32 zmm13_5 0x8;
rol zmm13_6@uint32 zmm13_6 0x8; rol zmm13_7@uint32 zmm13_7 0x8;
rol zmm13_8@uint32 zmm13_8 0x8; rol zmm13_9@uint32 zmm13_9 0x8;
rol zmm13_a@uint32 zmm13_a 0x8; rol zmm13_b@uint32 zmm13_b 0x8;
rol zmm13_c@uint32 zmm13_c 0x8; rol zmm13_d@uint32 zmm13_d 0x8;
rol zmm13_e@uint32 zmm13_e 0x8; rol zmm13_f@uint32 zmm13_f 0x8;
(* vprold $0x8,%zmm14,%zmm14                       #! PC = 0x55555555836d *)
rol zmm14_0@uint32 zmm14_0 0x8; rol zmm14_1@uint32 zmm14_1 0x8;
rol zmm14_2@uint32 zmm14_2 0x8; rol zmm14_3@uint32 zmm14_3 0x8;
rol zmm14_4@uint32 zmm14_4 0x8; rol zmm14_5@uint32 zmm14_5 0x8;
rol zmm14_6@uint32 zmm14_6 0x8; rol zmm14_7@uint32 zmm14_7 0x8;
rol zmm14_8@uint32 zmm14_8 0x8; rol zmm14_9@uint32 zmm14_9 0x8;
rol zmm14_a@uint32 zmm14_a 0x8; rol zmm14_b@uint32 zmm14_b 0x8;
rol zmm14_c@uint32 zmm14_c 0x8; rol zmm14_d@uint32 zmm14_d 0x8;
rol zmm14_e@uint32 zmm14_e 0x8; rol zmm14_f@uint32 zmm14_f 0x8;
(* vpaddd %zmm15,%zmm10,%zmm10                     #! PC = 0x555555558374 *)
adds dc zmm10_0 zmm10_0 zmm15_0; adds dc zmm10_1 zmm10_1 zmm15_1;
adds dc zmm10_2 zmm10_2 zmm15_2; adds dc zmm10_3 zmm10_3 zmm15_3;
adds dc zmm10_4 zmm10_4 zmm15_4; adds dc zmm10_5 zmm10_5 zmm15_5;
adds dc zmm10_6 zmm10_6 zmm15_6; adds dc zmm10_7 zmm10_7 zmm15_7;
adds dc zmm10_8 zmm10_8 zmm15_8; adds dc zmm10_9 zmm10_9 zmm15_9;
adds dc zmm10_a zmm10_a zmm15_a; adds dc zmm10_b zmm10_b zmm15_b;
adds dc zmm10_c zmm10_c zmm15_c; adds dc zmm10_d zmm10_d zmm15_d;
adds dc zmm10_e zmm10_e zmm15_e; adds dc zmm10_f zmm10_f zmm15_f;
(* vpaddd %zmm12,%zmm11,%zmm11                     #! PC = 0x55555555837a *)
adds dc zmm11_0 zmm11_0 zmm12_0; adds dc zmm11_1 zmm11_1 zmm12_1;
adds dc zmm11_2 zmm11_2 zmm12_2; adds dc zmm11_3 zmm11_3 zmm12_3;
adds dc zmm11_4 zmm11_4 zmm12_4; adds dc zmm11_5 zmm11_5 zmm12_5;
adds dc zmm11_6 zmm11_6 zmm12_6; adds dc zmm11_7 zmm11_7 zmm12_7;
adds dc zmm11_8 zmm11_8 zmm12_8; adds dc zmm11_9 zmm11_9 zmm12_9;
adds dc zmm11_a zmm11_a zmm12_a; adds dc zmm11_b zmm11_b zmm12_b;
adds dc zmm11_c zmm11_c zmm12_c; adds dc zmm11_d zmm11_d zmm12_d;
adds dc zmm11_e zmm11_e zmm12_e; adds dc zmm11_f zmm11_f zmm12_f;
(* vpaddd %zmm13,%zmm8,%zmm8                       #! PC = 0x555555558380 *)
adds dc zmm8_0 zmm8_0 zmm13_0; adds dc zmm8_1 zmm8_1 zmm13_1;
adds dc zmm8_2 zmm8_2 zmm13_2; adds dc zmm8_3 zmm8_3 zmm13_3;
adds dc zmm8_4 zmm8_4 zmm13_4; adds dc zmm8_5 zmm8_5 zmm13_5;
adds dc zmm8_6 zmm8_6 zmm13_6; adds dc zmm8_7 zmm8_7 zmm13_7;
adds dc zmm8_8 zmm8_8 zmm13_8; adds dc zmm8_9 zmm8_9 zmm13_9;
adds dc zmm8_a zmm8_a zmm13_a; adds dc zmm8_b zmm8_b zmm13_b;
adds dc zmm8_c zmm8_c zmm13_c; adds dc zmm8_d zmm8_d zmm13_d;
adds dc zmm8_e zmm8_e zmm13_e; adds dc zmm8_f zmm8_f zmm13_f;
(* vpaddd %zmm14,%zmm9,%zmm9                       #! PC = 0x555555558386 *)
adds dc zmm9_0 zmm9_0 zmm14_0; adds dc zmm9_1 zmm9_1 zmm14_1;
adds dc zmm9_2 zmm9_2 zmm14_2; adds dc zmm9_3 zmm9_3 zmm14_3;
adds dc zmm9_4 zmm9_4 zmm14_4; adds dc zmm9_5 zmm9_5 zmm14_5;
adds dc zmm9_6 zmm9_6 zmm14_6; adds dc zmm9_7 zmm9_7 zmm14_7;
adds dc zmm9_8 zmm9_8 zmm14_8; adds dc zmm9_9 zmm9_9 zmm14_9;
adds dc zmm9_a zmm9_a zmm14_a; adds dc zmm9_b zmm9_b zmm14_b;
adds dc zmm9_c zmm9_c zmm14_c; adds dc zmm9_d zmm9_d zmm14_d;
adds dc zmm9_e zmm9_e zmm14_e; adds dc zmm9_f zmm9_f zmm14_f;
(* vpxord %zmm10,%zmm5,%zmm5                       #! PC = 0x55555555838c *)
xor zmm5_0@uint32 zmm5_0 zmm10_0; xor zmm5_1@uint32 zmm5_1 zmm10_1;
xor zmm5_2@uint32 zmm5_2 zmm10_2; xor zmm5_3@uint32 zmm5_3 zmm10_3;
xor zmm5_4@uint32 zmm5_4 zmm10_4; xor zmm5_5@uint32 zmm5_5 zmm10_5;
xor zmm5_6@uint32 zmm5_6 zmm10_6; xor zmm5_7@uint32 zmm5_7 zmm10_7;
xor zmm5_8@uint32 zmm5_8 zmm10_8; xor zmm5_9@uint32 zmm5_9 zmm10_9;
xor zmm5_a@uint32 zmm5_a zmm10_a; xor zmm5_b@uint32 zmm5_b zmm10_b;
xor zmm5_c@uint32 zmm5_c zmm10_c; xor zmm5_d@uint32 zmm5_d zmm10_d;
xor zmm5_e@uint32 zmm5_e zmm10_e; xor zmm5_f@uint32 zmm5_f zmm10_f;
(* vpxord %zmm11,%zmm6,%zmm6                       #! PC = 0x555555558392 *)
xor zmm6_0@uint32 zmm6_0 zmm11_0; xor zmm6_1@uint32 zmm6_1 zmm11_1;
xor zmm6_2@uint32 zmm6_2 zmm11_2; xor zmm6_3@uint32 zmm6_3 zmm11_3;
xor zmm6_4@uint32 zmm6_4 zmm11_4; xor zmm6_5@uint32 zmm6_5 zmm11_5;
xor zmm6_6@uint32 zmm6_6 zmm11_6; xor zmm6_7@uint32 zmm6_7 zmm11_7;
xor zmm6_8@uint32 zmm6_8 zmm11_8; xor zmm6_9@uint32 zmm6_9 zmm11_9;
xor zmm6_a@uint32 zmm6_a zmm11_a; xor zmm6_b@uint32 zmm6_b zmm11_b;
xor zmm6_c@uint32 zmm6_c zmm11_c; xor zmm6_d@uint32 zmm6_d zmm11_d;
xor zmm6_e@uint32 zmm6_e zmm11_e; xor zmm6_f@uint32 zmm6_f zmm11_f;
(* vpxord %zmm8,%zmm7,%zmm7                        #! PC = 0x555555558398 *)
xor zmm7_0@uint32 zmm7_0 zmm8_0; xor zmm7_1@uint32 zmm7_1 zmm8_1;
xor zmm7_2@uint32 zmm7_2 zmm8_2; xor zmm7_3@uint32 zmm7_3 zmm8_3;
xor zmm7_4@uint32 zmm7_4 zmm8_4; xor zmm7_5@uint32 zmm7_5 zmm8_5;
xor zmm7_6@uint32 zmm7_6 zmm8_6; xor zmm7_7@uint32 zmm7_7 zmm8_7;
xor zmm7_8@uint32 zmm7_8 zmm8_8; xor zmm7_9@uint32 zmm7_9 zmm8_9;
xor zmm7_a@uint32 zmm7_a zmm8_a; xor zmm7_b@uint32 zmm7_b zmm8_b;
xor zmm7_c@uint32 zmm7_c zmm8_c; xor zmm7_d@uint32 zmm7_d zmm8_d;
xor zmm7_e@uint32 zmm7_e zmm8_e; xor zmm7_f@uint32 zmm7_f zmm8_f;
(* vpxord %zmm9,%zmm4,%zmm4                        #! PC = 0x55555555839e *)
xor zmm4_0@uint32 zmm4_0 zmm9_0; xor zmm4_1@uint32 zmm4_1 zmm9_1;
xor zmm4_2@uint32 zmm4_2 zmm9_2; xor zmm4_3@uint32 zmm4_3 zmm9_3;
xor zmm4_4@uint32 zmm4_4 zmm9_4; xor zmm4_5@uint32 zmm4_5 zmm9_5;
xor zmm4_6@uint32 zmm4_6 zmm9_6; xor zmm4_7@uint32 zmm4_7 zmm9_7;
xor zmm4_8@uint32 zmm4_8 zmm9_8; xor zmm4_9@uint32 zmm4_9 zmm9_9;
xor zmm4_a@uint32 zmm4_a zmm9_a; xor zmm4_b@uint32 zmm4_b zmm9_b;
xor zmm4_c@uint32 zmm4_c zmm9_c; xor zmm4_d@uint32 zmm4_d zmm9_d;
xor zmm4_e@uint32 zmm4_e zmm9_e; xor zmm4_f@uint32 zmm4_f zmm9_f;
(* vprold $0x7,%zmm5,%zmm5                         #! PC = 0x5555555583a4 *)
rol zmm5_0@uint32 zmm5_0 0x7; rol zmm5_1@uint32 zmm5_1 0x7;
rol zmm5_2@uint32 zmm5_2 0x7; rol zmm5_3@uint32 zmm5_3 0x7;
rol zmm5_4@uint32 zmm5_4 0x7; rol zmm5_5@uint32 zmm5_5 0x7;
rol zmm5_6@uint32 zmm5_6 0x7; rol zmm5_7@uint32 zmm5_7 0x7;
rol zmm5_8@uint32 zmm5_8 0x7; rol zmm5_9@uint32 zmm5_9 0x7;
rol zmm5_a@uint32 zmm5_a 0x7; rol zmm5_b@uint32 zmm5_b 0x7;
rol zmm5_c@uint32 zmm5_c 0x7; rol zmm5_d@uint32 zmm5_d 0x7;
rol zmm5_e@uint32 zmm5_e 0x7; rol zmm5_f@uint32 zmm5_f 0x7;
(* vprold $0x7,%zmm6,%zmm6                         #! PC = 0x5555555583ab *)
rol zmm6_0@uint32 zmm6_0 0x7; rol zmm6_1@uint32 zmm6_1 0x7;
rol zmm6_2@uint32 zmm6_2 0x7; rol zmm6_3@uint32 zmm6_3 0x7;
rol zmm6_4@uint32 zmm6_4 0x7; rol zmm6_5@uint32 zmm6_5 0x7;
rol zmm6_6@uint32 zmm6_6 0x7; rol zmm6_7@uint32 zmm6_7 0x7;
rol zmm6_8@uint32 zmm6_8 0x7; rol zmm6_9@uint32 zmm6_9 0x7;
rol zmm6_a@uint32 zmm6_a 0x7; rol zmm6_b@uint32 zmm6_b 0x7;
rol zmm6_c@uint32 zmm6_c 0x7; rol zmm6_d@uint32 zmm6_d 0x7;
rol zmm6_e@uint32 zmm6_e 0x7; rol zmm6_f@uint32 zmm6_f 0x7;
(* vprold $0x7,%zmm7,%zmm7                         #! PC = 0x5555555583b2 *)
rol zmm7_0@uint32 zmm7_0 0x7; rol zmm7_1@uint32 zmm7_1 0x7;
rol zmm7_2@uint32 zmm7_2 0x7; rol zmm7_3@uint32 zmm7_3 0x7;
rol zmm7_4@uint32 zmm7_4 0x7; rol zmm7_5@uint32 zmm7_5 0x7;
rol zmm7_6@uint32 zmm7_6 0x7; rol zmm7_7@uint32 zmm7_7 0x7;
rol zmm7_8@uint32 zmm7_8 0x7; rol zmm7_9@uint32 zmm7_9 0x7;
rol zmm7_a@uint32 zmm7_a 0x7; rol zmm7_b@uint32 zmm7_b 0x7;
rol zmm7_c@uint32 zmm7_c 0x7; rol zmm7_d@uint32 zmm7_d 0x7;
rol zmm7_e@uint32 zmm7_e 0x7; rol zmm7_f@uint32 zmm7_f 0x7;
(* vprold $0x7,%zmm4,%zmm4                         #! PC = 0x5555555583b9 *)
rol zmm4_0@uint32 zmm4_0 0x7; rol zmm4_1@uint32 zmm4_1 0x7;
rol zmm4_2@uint32 zmm4_2 0x7; rol zmm4_3@uint32 zmm4_3 0x7;
rol zmm4_4@uint32 zmm4_4 0x7; rol zmm4_5@uint32 zmm4_5 0x7;
rol zmm4_6@uint32 zmm4_6 0x7; rol zmm4_7@uint32 zmm4_7 0x7;
rol zmm4_8@uint32 zmm4_8 0x7; rol zmm4_9@uint32 zmm4_9 0x7;
rol zmm4_a@uint32 zmm4_a 0x7; rol zmm4_b@uint32 zmm4_b 0x7;
rol zmm4_c@uint32 zmm4_c 0x7; rol zmm4_d@uint32 zmm4_d 0x7;
rol zmm4_e@uint32 zmm4_e 0x7; rol zmm4_f@uint32 zmm4_f 0x7;
(* dec    %eax                                     #! PC = 0x5555555583c0 *)
(* dec %eax *)
nop;
(* #jne    0x555555558160 <ChaCha20_16x+448>       #! PC = 0x5555555583c2 *)
#jne    0x555555558160 <ChaCha20_16x+448>       #! 0x5555555583c2 = 0x5555555583c2;
(* vpaddd %zmm4,%zmm0,%zmm0                        #! PC = 0x555555558160 *)
adds dc zmm0_0 zmm0_0 zmm4_0; adds dc zmm0_1 zmm0_1 zmm4_1;
adds dc zmm0_2 zmm0_2 zmm4_2; adds dc zmm0_3 zmm0_3 zmm4_3;
adds dc zmm0_4 zmm0_4 zmm4_4; adds dc zmm0_5 zmm0_5 zmm4_5;
adds dc zmm0_6 zmm0_6 zmm4_6; adds dc zmm0_7 zmm0_7 zmm4_7;
adds dc zmm0_8 zmm0_8 zmm4_8; adds dc zmm0_9 zmm0_9 zmm4_9;
adds dc zmm0_a zmm0_a zmm4_a; adds dc zmm0_b zmm0_b zmm4_b;
adds dc zmm0_c zmm0_c zmm4_c; adds dc zmm0_d zmm0_d zmm4_d;
adds dc zmm0_e zmm0_e zmm4_e; adds dc zmm0_f zmm0_f zmm4_f;
(* vpaddd %zmm5,%zmm1,%zmm1                        #! PC = 0x555555558166 *)
adds dc zmm1_0 zmm1_0 zmm5_0; adds dc zmm1_1 zmm1_1 zmm5_1;
adds dc zmm1_2 zmm1_2 zmm5_2; adds dc zmm1_3 zmm1_3 zmm5_3;
adds dc zmm1_4 zmm1_4 zmm5_4; adds dc zmm1_5 zmm1_5 zmm5_5;
adds dc zmm1_6 zmm1_6 zmm5_6; adds dc zmm1_7 zmm1_7 zmm5_7;
adds dc zmm1_8 zmm1_8 zmm5_8; adds dc zmm1_9 zmm1_9 zmm5_9;
adds dc zmm1_a zmm1_a zmm5_a; adds dc zmm1_b zmm1_b zmm5_b;
adds dc zmm1_c zmm1_c zmm5_c; adds dc zmm1_d zmm1_d zmm5_d;
adds dc zmm1_e zmm1_e zmm5_e; adds dc zmm1_f zmm1_f zmm5_f;
(* vpaddd %zmm6,%zmm2,%zmm2                        #! PC = 0x55555555816c *)
adds dc zmm2_0 zmm2_0 zmm6_0; adds dc zmm2_1 zmm2_1 zmm6_1;
adds dc zmm2_2 zmm2_2 zmm6_2; adds dc zmm2_3 zmm2_3 zmm6_3;
adds dc zmm2_4 zmm2_4 zmm6_4; adds dc zmm2_5 zmm2_5 zmm6_5;
adds dc zmm2_6 zmm2_6 zmm6_6; adds dc zmm2_7 zmm2_7 zmm6_7;
adds dc zmm2_8 zmm2_8 zmm6_8; adds dc zmm2_9 zmm2_9 zmm6_9;
adds dc zmm2_a zmm2_a zmm6_a; adds dc zmm2_b zmm2_b zmm6_b;
adds dc zmm2_c zmm2_c zmm6_c; adds dc zmm2_d zmm2_d zmm6_d;
adds dc zmm2_e zmm2_e zmm6_e; adds dc zmm2_f zmm2_f zmm6_f;
(* vpaddd %zmm7,%zmm3,%zmm3                        #! PC = 0x555555558172 *)
adds dc zmm3_0 zmm3_0 zmm7_0; adds dc zmm3_1 zmm3_1 zmm7_1;
adds dc zmm3_2 zmm3_2 zmm7_2; adds dc zmm3_3 zmm3_3 zmm7_3;
adds dc zmm3_4 zmm3_4 zmm7_4; adds dc zmm3_5 zmm3_5 zmm7_5;
adds dc zmm3_6 zmm3_6 zmm7_6; adds dc zmm3_7 zmm3_7 zmm7_7;
adds dc zmm3_8 zmm3_8 zmm7_8; adds dc zmm3_9 zmm3_9 zmm7_9;
adds dc zmm3_a zmm3_a zmm7_a; adds dc zmm3_b zmm3_b zmm7_b;
adds dc zmm3_c zmm3_c zmm7_c; adds dc zmm3_d zmm3_d zmm7_d;
adds dc zmm3_e zmm3_e zmm7_e; adds dc zmm3_f zmm3_f zmm7_f;
(* vpxord %zmm0,%zmm12,%zmm12                      #! PC = 0x555555558178 *)
xor zmm12_0@uint32 zmm12_0 zmm0_0; xor zmm12_1@uint32 zmm12_1 zmm0_1;
xor zmm12_2@uint32 zmm12_2 zmm0_2; xor zmm12_3@uint32 zmm12_3 zmm0_3;
xor zmm12_4@uint32 zmm12_4 zmm0_4; xor zmm12_5@uint32 zmm12_5 zmm0_5;
xor zmm12_6@uint32 zmm12_6 zmm0_6; xor zmm12_7@uint32 zmm12_7 zmm0_7;
xor zmm12_8@uint32 zmm12_8 zmm0_8; xor zmm12_9@uint32 zmm12_9 zmm0_9;
xor zmm12_a@uint32 zmm12_a zmm0_a; xor zmm12_b@uint32 zmm12_b zmm0_b;
xor zmm12_c@uint32 zmm12_c zmm0_c; xor zmm12_d@uint32 zmm12_d zmm0_d;
xor zmm12_e@uint32 zmm12_e zmm0_e; xor zmm12_f@uint32 zmm12_f zmm0_f;
(* vpxord %zmm1,%zmm13,%zmm13                      #! PC = 0x55555555817e *)
xor zmm13_0@uint32 zmm13_0 zmm1_0; xor zmm13_1@uint32 zmm13_1 zmm1_1;
xor zmm13_2@uint32 zmm13_2 zmm1_2; xor zmm13_3@uint32 zmm13_3 zmm1_3;
xor zmm13_4@uint32 zmm13_4 zmm1_4; xor zmm13_5@uint32 zmm13_5 zmm1_5;
xor zmm13_6@uint32 zmm13_6 zmm1_6; xor zmm13_7@uint32 zmm13_7 zmm1_7;
xor zmm13_8@uint32 zmm13_8 zmm1_8; xor zmm13_9@uint32 zmm13_9 zmm1_9;
xor zmm13_a@uint32 zmm13_a zmm1_a; xor zmm13_b@uint32 zmm13_b zmm1_b;
xor zmm13_c@uint32 zmm13_c zmm1_c; xor zmm13_d@uint32 zmm13_d zmm1_d;
xor zmm13_e@uint32 zmm13_e zmm1_e; xor zmm13_f@uint32 zmm13_f zmm1_f;
(* vpxord %zmm2,%zmm14,%zmm14                      #! PC = 0x555555558184 *)
xor zmm14_0@uint32 zmm14_0 zmm2_0; xor zmm14_1@uint32 zmm14_1 zmm2_1;
xor zmm14_2@uint32 zmm14_2 zmm2_2; xor zmm14_3@uint32 zmm14_3 zmm2_3;
xor zmm14_4@uint32 zmm14_4 zmm2_4; xor zmm14_5@uint32 zmm14_5 zmm2_5;
xor zmm14_6@uint32 zmm14_6 zmm2_6; xor zmm14_7@uint32 zmm14_7 zmm2_7;
xor zmm14_8@uint32 zmm14_8 zmm2_8; xor zmm14_9@uint32 zmm14_9 zmm2_9;
xor zmm14_a@uint32 zmm14_a zmm2_a; xor zmm14_b@uint32 zmm14_b zmm2_b;
xor zmm14_c@uint32 zmm14_c zmm2_c; xor zmm14_d@uint32 zmm14_d zmm2_d;
xor zmm14_e@uint32 zmm14_e zmm2_e; xor zmm14_f@uint32 zmm14_f zmm2_f;
(* vpxord %zmm3,%zmm15,%zmm15                      #! PC = 0x55555555818a *)
xor zmm15_0@uint32 zmm15_0 zmm3_0; xor zmm15_1@uint32 zmm15_1 zmm3_1;
xor zmm15_2@uint32 zmm15_2 zmm3_2; xor zmm15_3@uint32 zmm15_3 zmm3_3;
xor zmm15_4@uint32 zmm15_4 zmm3_4; xor zmm15_5@uint32 zmm15_5 zmm3_5;
xor zmm15_6@uint32 zmm15_6 zmm3_6; xor zmm15_7@uint32 zmm15_7 zmm3_7;
xor zmm15_8@uint32 zmm15_8 zmm3_8; xor zmm15_9@uint32 zmm15_9 zmm3_9;
xor zmm15_a@uint32 zmm15_a zmm3_a; xor zmm15_b@uint32 zmm15_b zmm3_b;
xor zmm15_c@uint32 zmm15_c zmm3_c; xor zmm15_d@uint32 zmm15_d zmm3_d;
xor zmm15_e@uint32 zmm15_e zmm3_e; xor zmm15_f@uint32 zmm15_f zmm3_f;
(* vprold $0x10,%zmm12,%zmm12                      #! PC = 0x555555558190 *)
rol zmm12_0@uint32 zmm12_0 0x10; rol zmm12_1@uint32 zmm12_1 0x10;
rol zmm12_2@uint32 zmm12_2 0x10; rol zmm12_3@uint32 zmm12_3 0x10;
rol zmm12_4@uint32 zmm12_4 0x10; rol zmm12_5@uint32 zmm12_5 0x10;
rol zmm12_6@uint32 zmm12_6 0x10; rol zmm12_7@uint32 zmm12_7 0x10;
rol zmm12_8@uint32 zmm12_8 0x10; rol zmm12_9@uint32 zmm12_9 0x10;
rol zmm12_a@uint32 zmm12_a 0x10; rol zmm12_b@uint32 zmm12_b 0x10;
rol zmm12_c@uint32 zmm12_c 0x10; rol zmm12_d@uint32 zmm12_d 0x10;
rol zmm12_e@uint32 zmm12_e 0x10; rol zmm12_f@uint32 zmm12_f 0x10;
(* vprold $0x10,%zmm13,%zmm13                      #! PC = 0x555555558197 *)
rol zmm13_0@uint32 zmm13_0 0x10; rol zmm13_1@uint32 zmm13_1 0x10;
rol zmm13_2@uint32 zmm13_2 0x10; rol zmm13_3@uint32 zmm13_3 0x10;
rol zmm13_4@uint32 zmm13_4 0x10; rol zmm13_5@uint32 zmm13_5 0x10;
rol zmm13_6@uint32 zmm13_6 0x10; rol zmm13_7@uint32 zmm13_7 0x10;
rol zmm13_8@uint32 zmm13_8 0x10; rol zmm13_9@uint32 zmm13_9 0x10;
rol zmm13_a@uint32 zmm13_a 0x10; rol zmm13_b@uint32 zmm13_b 0x10;
rol zmm13_c@uint32 zmm13_c 0x10; rol zmm13_d@uint32 zmm13_d 0x10;
rol zmm13_e@uint32 zmm13_e 0x10; rol zmm13_f@uint32 zmm13_f 0x10;
(* vprold $0x10,%zmm14,%zmm14                      #! PC = 0x55555555819e *)
rol zmm14_0@uint32 zmm14_0 0x10; rol zmm14_1@uint32 zmm14_1 0x10;
rol zmm14_2@uint32 zmm14_2 0x10; rol zmm14_3@uint32 zmm14_3 0x10;
rol zmm14_4@uint32 zmm14_4 0x10; rol zmm14_5@uint32 zmm14_5 0x10;
rol zmm14_6@uint32 zmm14_6 0x10; rol zmm14_7@uint32 zmm14_7 0x10;
rol zmm14_8@uint32 zmm14_8 0x10; rol zmm14_9@uint32 zmm14_9 0x10;
rol zmm14_a@uint32 zmm14_a 0x10; rol zmm14_b@uint32 zmm14_b 0x10;
rol zmm14_c@uint32 zmm14_c 0x10; rol zmm14_d@uint32 zmm14_d 0x10;
rol zmm14_e@uint32 zmm14_e 0x10; rol zmm14_f@uint32 zmm14_f 0x10;
(* vprold $0x10,%zmm15,%zmm15                      #! PC = 0x5555555581a5 *)
rol zmm15_0@uint32 zmm15_0 0x10; rol zmm15_1@uint32 zmm15_1 0x10;
rol zmm15_2@uint32 zmm15_2 0x10; rol zmm15_3@uint32 zmm15_3 0x10;
rol zmm15_4@uint32 zmm15_4 0x10; rol zmm15_5@uint32 zmm15_5 0x10;
rol zmm15_6@uint32 zmm15_6 0x10; rol zmm15_7@uint32 zmm15_7 0x10;
rol zmm15_8@uint32 zmm15_8 0x10; rol zmm15_9@uint32 zmm15_9 0x10;
rol zmm15_a@uint32 zmm15_a 0x10; rol zmm15_b@uint32 zmm15_b 0x10;
rol zmm15_c@uint32 zmm15_c 0x10; rol zmm15_d@uint32 zmm15_d 0x10;
rol zmm15_e@uint32 zmm15_e 0x10; rol zmm15_f@uint32 zmm15_f 0x10;
(* vpaddd %zmm12,%zmm8,%zmm8                       #! PC = 0x5555555581ac *)
adds dc zmm8_0 zmm8_0 zmm12_0; adds dc zmm8_1 zmm8_1 zmm12_1;
adds dc zmm8_2 zmm8_2 zmm12_2; adds dc zmm8_3 zmm8_3 zmm12_3;
adds dc zmm8_4 zmm8_4 zmm12_4; adds dc zmm8_5 zmm8_5 zmm12_5;
adds dc zmm8_6 zmm8_6 zmm12_6; adds dc zmm8_7 zmm8_7 zmm12_7;
adds dc zmm8_8 zmm8_8 zmm12_8; adds dc zmm8_9 zmm8_9 zmm12_9;
adds dc zmm8_a zmm8_a zmm12_a; adds dc zmm8_b zmm8_b zmm12_b;
adds dc zmm8_c zmm8_c zmm12_c; adds dc zmm8_d zmm8_d zmm12_d;
adds dc zmm8_e zmm8_e zmm12_e; adds dc zmm8_f zmm8_f zmm12_f;
(* vpaddd %zmm13,%zmm9,%zmm9                       #! PC = 0x5555555581b2 *)
adds dc zmm9_0 zmm9_0 zmm13_0; adds dc zmm9_1 zmm9_1 zmm13_1;
adds dc zmm9_2 zmm9_2 zmm13_2; adds dc zmm9_3 zmm9_3 zmm13_3;
adds dc zmm9_4 zmm9_4 zmm13_4; adds dc zmm9_5 zmm9_5 zmm13_5;
adds dc zmm9_6 zmm9_6 zmm13_6; adds dc zmm9_7 zmm9_7 zmm13_7;
adds dc zmm9_8 zmm9_8 zmm13_8; adds dc zmm9_9 zmm9_9 zmm13_9;
adds dc zmm9_a zmm9_a zmm13_a; adds dc zmm9_b zmm9_b zmm13_b;
adds dc zmm9_c zmm9_c zmm13_c; adds dc zmm9_d zmm9_d zmm13_d;
adds dc zmm9_e zmm9_e zmm13_e; adds dc zmm9_f zmm9_f zmm13_f;
(* vpaddd %zmm14,%zmm10,%zmm10                     #! PC = 0x5555555581b8 *)
adds dc zmm10_0 zmm10_0 zmm14_0; adds dc zmm10_1 zmm10_1 zmm14_1;
adds dc zmm10_2 zmm10_2 zmm14_2; adds dc zmm10_3 zmm10_3 zmm14_3;
adds dc zmm10_4 zmm10_4 zmm14_4; adds dc zmm10_5 zmm10_5 zmm14_5;
adds dc zmm10_6 zmm10_6 zmm14_6; adds dc zmm10_7 zmm10_7 zmm14_7;
adds dc zmm10_8 zmm10_8 zmm14_8; adds dc zmm10_9 zmm10_9 zmm14_9;
adds dc zmm10_a zmm10_a zmm14_a; adds dc zmm10_b zmm10_b zmm14_b;
adds dc zmm10_c zmm10_c zmm14_c; adds dc zmm10_d zmm10_d zmm14_d;
adds dc zmm10_e zmm10_e zmm14_e; adds dc zmm10_f zmm10_f zmm14_f;
(* vpaddd %zmm15,%zmm11,%zmm11                     #! PC = 0x5555555581be *)
adds dc zmm11_0 zmm11_0 zmm15_0; adds dc zmm11_1 zmm11_1 zmm15_1;
adds dc zmm11_2 zmm11_2 zmm15_2; adds dc zmm11_3 zmm11_3 zmm15_3;
adds dc zmm11_4 zmm11_4 zmm15_4; adds dc zmm11_5 zmm11_5 zmm15_5;
adds dc zmm11_6 zmm11_6 zmm15_6; adds dc zmm11_7 zmm11_7 zmm15_7;
adds dc zmm11_8 zmm11_8 zmm15_8; adds dc zmm11_9 zmm11_9 zmm15_9;
adds dc zmm11_a zmm11_a zmm15_a; adds dc zmm11_b zmm11_b zmm15_b;
adds dc zmm11_c zmm11_c zmm15_c; adds dc zmm11_d zmm11_d zmm15_d;
adds dc zmm11_e zmm11_e zmm15_e; adds dc zmm11_f zmm11_f zmm15_f;
(* vpxord %zmm8,%zmm4,%zmm4                        #! PC = 0x5555555581c4 *)
xor zmm4_0@uint32 zmm4_0 zmm8_0; xor zmm4_1@uint32 zmm4_1 zmm8_1;
xor zmm4_2@uint32 zmm4_2 zmm8_2; xor zmm4_3@uint32 zmm4_3 zmm8_3;
xor zmm4_4@uint32 zmm4_4 zmm8_4; xor zmm4_5@uint32 zmm4_5 zmm8_5;
xor zmm4_6@uint32 zmm4_6 zmm8_6; xor zmm4_7@uint32 zmm4_7 zmm8_7;
xor zmm4_8@uint32 zmm4_8 zmm8_8; xor zmm4_9@uint32 zmm4_9 zmm8_9;
xor zmm4_a@uint32 zmm4_a zmm8_a; xor zmm4_b@uint32 zmm4_b zmm8_b;
xor zmm4_c@uint32 zmm4_c zmm8_c; xor zmm4_d@uint32 zmm4_d zmm8_d;
xor zmm4_e@uint32 zmm4_e zmm8_e; xor zmm4_f@uint32 zmm4_f zmm8_f;
(* vpxord %zmm9,%zmm5,%zmm5                        #! PC = 0x5555555581ca *)
xor zmm5_0@uint32 zmm5_0 zmm9_0; xor zmm5_1@uint32 zmm5_1 zmm9_1;
xor zmm5_2@uint32 zmm5_2 zmm9_2; xor zmm5_3@uint32 zmm5_3 zmm9_3;
xor zmm5_4@uint32 zmm5_4 zmm9_4; xor zmm5_5@uint32 zmm5_5 zmm9_5;
xor zmm5_6@uint32 zmm5_6 zmm9_6; xor zmm5_7@uint32 zmm5_7 zmm9_7;
xor zmm5_8@uint32 zmm5_8 zmm9_8; xor zmm5_9@uint32 zmm5_9 zmm9_9;
xor zmm5_a@uint32 zmm5_a zmm9_a; xor zmm5_b@uint32 zmm5_b zmm9_b;
xor zmm5_c@uint32 zmm5_c zmm9_c; xor zmm5_d@uint32 zmm5_d zmm9_d;
xor zmm5_e@uint32 zmm5_e zmm9_e; xor zmm5_f@uint32 zmm5_f zmm9_f;
(* vpxord %zmm10,%zmm6,%zmm6                       #! PC = 0x5555555581d0 *)
xor zmm6_0@uint32 zmm6_0 zmm10_0; xor zmm6_1@uint32 zmm6_1 zmm10_1;
xor zmm6_2@uint32 zmm6_2 zmm10_2; xor zmm6_3@uint32 zmm6_3 zmm10_3;
xor zmm6_4@uint32 zmm6_4 zmm10_4; xor zmm6_5@uint32 zmm6_5 zmm10_5;
xor zmm6_6@uint32 zmm6_6 zmm10_6; xor zmm6_7@uint32 zmm6_7 zmm10_7;
xor zmm6_8@uint32 zmm6_8 zmm10_8; xor zmm6_9@uint32 zmm6_9 zmm10_9;
xor zmm6_a@uint32 zmm6_a zmm10_a; xor zmm6_b@uint32 zmm6_b zmm10_b;
xor zmm6_c@uint32 zmm6_c zmm10_c; xor zmm6_d@uint32 zmm6_d zmm10_d;
xor zmm6_e@uint32 zmm6_e zmm10_e; xor zmm6_f@uint32 zmm6_f zmm10_f;
(* vpxord %zmm11,%zmm7,%zmm7                       #! PC = 0x5555555581d6 *)
xor zmm7_0@uint32 zmm7_0 zmm11_0; xor zmm7_1@uint32 zmm7_1 zmm11_1;
xor zmm7_2@uint32 zmm7_2 zmm11_2; xor zmm7_3@uint32 zmm7_3 zmm11_3;
xor zmm7_4@uint32 zmm7_4 zmm11_4; xor zmm7_5@uint32 zmm7_5 zmm11_5;
xor zmm7_6@uint32 zmm7_6 zmm11_6; xor zmm7_7@uint32 zmm7_7 zmm11_7;
xor zmm7_8@uint32 zmm7_8 zmm11_8; xor zmm7_9@uint32 zmm7_9 zmm11_9;
xor zmm7_a@uint32 zmm7_a zmm11_a; xor zmm7_b@uint32 zmm7_b zmm11_b;
xor zmm7_c@uint32 zmm7_c zmm11_c; xor zmm7_d@uint32 zmm7_d zmm11_d;
xor zmm7_e@uint32 zmm7_e zmm11_e; xor zmm7_f@uint32 zmm7_f zmm11_f;
(* vprold $0xc,%zmm4,%zmm4                         #! PC = 0x5555555581dc *)
rol zmm4_0@uint32 zmm4_0 0xc; rol zmm4_1@uint32 zmm4_1 0xc;
rol zmm4_2@uint32 zmm4_2 0xc; rol zmm4_3@uint32 zmm4_3 0xc;
rol zmm4_4@uint32 zmm4_4 0xc; rol zmm4_5@uint32 zmm4_5 0xc;
rol zmm4_6@uint32 zmm4_6 0xc; rol zmm4_7@uint32 zmm4_7 0xc;
rol zmm4_8@uint32 zmm4_8 0xc; rol zmm4_9@uint32 zmm4_9 0xc;
rol zmm4_a@uint32 zmm4_a 0xc; rol zmm4_b@uint32 zmm4_b 0xc;
rol zmm4_c@uint32 zmm4_c 0xc; rol zmm4_d@uint32 zmm4_d 0xc;
rol zmm4_e@uint32 zmm4_e 0xc; rol zmm4_f@uint32 zmm4_f 0xc;
(* vprold $0xc,%zmm5,%zmm5                         #! PC = 0x5555555581e3 *)
rol zmm5_0@uint32 zmm5_0 0xc; rol zmm5_1@uint32 zmm5_1 0xc;
rol zmm5_2@uint32 zmm5_2 0xc; rol zmm5_3@uint32 zmm5_3 0xc;
rol zmm5_4@uint32 zmm5_4 0xc; rol zmm5_5@uint32 zmm5_5 0xc;
rol zmm5_6@uint32 zmm5_6 0xc; rol zmm5_7@uint32 zmm5_7 0xc;
rol zmm5_8@uint32 zmm5_8 0xc; rol zmm5_9@uint32 zmm5_9 0xc;
rol zmm5_a@uint32 zmm5_a 0xc; rol zmm5_b@uint32 zmm5_b 0xc;
rol zmm5_c@uint32 zmm5_c 0xc; rol zmm5_d@uint32 zmm5_d 0xc;
rol zmm5_e@uint32 zmm5_e 0xc; rol zmm5_f@uint32 zmm5_f 0xc;
(* vprold $0xc,%zmm6,%zmm6                         #! PC = 0x5555555581ea *)
rol zmm6_0@uint32 zmm6_0 0xc; rol zmm6_1@uint32 zmm6_1 0xc;
rol zmm6_2@uint32 zmm6_2 0xc; rol zmm6_3@uint32 zmm6_3 0xc;
rol zmm6_4@uint32 zmm6_4 0xc; rol zmm6_5@uint32 zmm6_5 0xc;
rol zmm6_6@uint32 zmm6_6 0xc; rol zmm6_7@uint32 zmm6_7 0xc;
rol zmm6_8@uint32 zmm6_8 0xc; rol zmm6_9@uint32 zmm6_9 0xc;
rol zmm6_a@uint32 zmm6_a 0xc; rol zmm6_b@uint32 zmm6_b 0xc;
rol zmm6_c@uint32 zmm6_c 0xc; rol zmm6_d@uint32 zmm6_d 0xc;
rol zmm6_e@uint32 zmm6_e 0xc; rol zmm6_f@uint32 zmm6_f 0xc;
(* vprold $0xc,%zmm7,%zmm7                         #! PC = 0x5555555581f1 *)
rol zmm7_0@uint32 zmm7_0 0xc; rol zmm7_1@uint32 zmm7_1 0xc;
rol zmm7_2@uint32 zmm7_2 0xc; rol zmm7_3@uint32 zmm7_3 0xc;
rol zmm7_4@uint32 zmm7_4 0xc; rol zmm7_5@uint32 zmm7_5 0xc;
rol zmm7_6@uint32 zmm7_6 0xc; rol zmm7_7@uint32 zmm7_7 0xc;
rol zmm7_8@uint32 zmm7_8 0xc; rol zmm7_9@uint32 zmm7_9 0xc;
rol zmm7_a@uint32 zmm7_a 0xc; rol zmm7_b@uint32 zmm7_b 0xc;
rol zmm7_c@uint32 zmm7_c 0xc; rol zmm7_d@uint32 zmm7_d 0xc;
rol zmm7_e@uint32 zmm7_e 0xc; rol zmm7_f@uint32 zmm7_f 0xc;
(* vpaddd %zmm4,%zmm0,%zmm0                        #! PC = 0x5555555581f8 *)
adds dc zmm0_0 zmm0_0 zmm4_0; adds dc zmm0_1 zmm0_1 zmm4_1;
adds dc zmm0_2 zmm0_2 zmm4_2; adds dc zmm0_3 zmm0_3 zmm4_3;
adds dc zmm0_4 zmm0_4 zmm4_4; adds dc zmm0_5 zmm0_5 zmm4_5;
adds dc zmm0_6 zmm0_6 zmm4_6; adds dc zmm0_7 zmm0_7 zmm4_7;
adds dc zmm0_8 zmm0_8 zmm4_8; adds dc zmm0_9 zmm0_9 zmm4_9;
adds dc zmm0_a zmm0_a zmm4_a; adds dc zmm0_b zmm0_b zmm4_b;
adds dc zmm0_c zmm0_c zmm4_c; adds dc zmm0_d zmm0_d zmm4_d;
adds dc zmm0_e zmm0_e zmm4_e; adds dc zmm0_f zmm0_f zmm4_f;
(* vpaddd %zmm5,%zmm1,%zmm1                        #! PC = 0x5555555581fe *)
adds dc zmm1_0 zmm1_0 zmm5_0; adds dc zmm1_1 zmm1_1 zmm5_1;
adds dc zmm1_2 zmm1_2 zmm5_2; adds dc zmm1_3 zmm1_3 zmm5_3;
adds dc zmm1_4 zmm1_4 zmm5_4; adds dc zmm1_5 zmm1_5 zmm5_5;
adds dc zmm1_6 zmm1_6 zmm5_6; adds dc zmm1_7 zmm1_7 zmm5_7;
adds dc zmm1_8 zmm1_8 zmm5_8; adds dc zmm1_9 zmm1_9 zmm5_9;
adds dc zmm1_a zmm1_a zmm5_a; adds dc zmm1_b zmm1_b zmm5_b;
adds dc zmm1_c zmm1_c zmm5_c; adds dc zmm1_d zmm1_d zmm5_d;
adds dc zmm1_e zmm1_e zmm5_e; adds dc zmm1_f zmm1_f zmm5_f;
(* vpaddd %zmm6,%zmm2,%zmm2                        #! PC = 0x555555558204 *)
adds dc zmm2_0 zmm2_0 zmm6_0; adds dc zmm2_1 zmm2_1 zmm6_1;
adds dc zmm2_2 zmm2_2 zmm6_2; adds dc zmm2_3 zmm2_3 zmm6_3;
adds dc zmm2_4 zmm2_4 zmm6_4; adds dc zmm2_5 zmm2_5 zmm6_5;
adds dc zmm2_6 zmm2_6 zmm6_6; adds dc zmm2_7 zmm2_7 zmm6_7;
adds dc zmm2_8 zmm2_8 zmm6_8; adds dc zmm2_9 zmm2_9 zmm6_9;
adds dc zmm2_a zmm2_a zmm6_a; adds dc zmm2_b zmm2_b zmm6_b;
adds dc zmm2_c zmm2_c zmm6_c; adds dc zmm2_d zmm2_d zmm6_d;
adds dc zmm2_e zmm2_e zmm6_e; adds dc zmm2_f zmm2_f zmm6_f;
(* vpaddd %zmm7,%zmm3,%zmm3                        #! PC = 0x55555555820a *)
adds dc zmm3_0 zmm3_0 zmm7_0; adds dc zmm3_1 zmm3_1 zmm7_1;
adds dc zmm3_2 zmm3_2 zmm7_2; adds dc zmm3_3 zmm3_3 zmm7_3;
adds dc zmm3_4 zmm3_4 zmm7_4; adds dc zmm3_5 zmm3_5 zmm7_5;
adds dc zmm3_6 zmm3_6 zmm7_6; adds dc zmm3_7 zmm3_7 zmm7_7;
adds dc zmm3_8 zmm3_8 zmm7_8; adds dc zmm3_9 zmm3_9 zmm7_9;
adds dc zmm3_a zmm3_a zmm7_a; adds dc zmm3_b zmm3_b zmm7_b;
adds dc zmm3_c zmm3_c zmm7_c; adds dc zmm3_d zmm3_d zmm7_d;
adds dc zmm3_e zmm3_e zmm7_e; adds dc zmm3_f zmm3_f zmm7_f;
(* vpxord %zmm0,%zmm12,%zmm12                      #! PC = 0x555555558210 *)
xor zmm12_0@uint32 zmm12_0 zmm0_0; xor zmm12_1@uint32 zmm12_1 zmm0_1;
xor zmm12_2@uint32 zmm12_2 zmm0_2; xor zmm12_3@uint32 zmm12_3 zmm0_3;
xor zmm12_4@uint32 zmm12_4 zmm0_4; xor zmm12_5@uint32 zmm12_5 zmm0_5;
xor zmm12_6@uint32 zmm12_6 zmm0_6; xor zmm12_7@uint32 zmm12_7 zmm0_7;
xor zmm12_8@uint32 zmm12_8 zmm0_8; xor zmm12_9@uint32 zmm12_9 zmm0_9;
xor zmm12_a@uint32 zmm12_a zmm0_a; xor zmm12_b@uint32 zmm12_b zmm0_b;
xor zmm12_c@uint32 zmm12_c zmm0_c; xor zmm12_d@uint32 zmm12_d zmm0_d;
xor zmm12_e@uint32 zmm12_e zmm0_e; xor zmm12_f@uint32 zmm12_f zmm0_f;
(* vpxord %zmm1,%zmm13,%zmm13                      #! PC = 0x555555558216 *)
xor zmm13_0@uint32 zmm13_0 zmm1_0; xor zmm13_1@uint32 zmm13_1 zmm1_1;
xor zmm13_2@uint32 zmm13_2 zmm1_2; xor zmm13_3@uint32 zmm13_3 zmm1_3;
xor zmm13_4@uint32 zmm13_4 zmm1_4; xor zmm13_5@uint32 zmm13_5 zmm1_5;
xor zmm13_6@uint32 zmm13_6 zmm1_6; xor zmm13_7@uint32 zmm13_7 zmm1_7;
xor zmm13_8@uint32 zmm13_8 zmm1_8; xor zmm13_9@uint32 zmm13_9 zmm1_9;
xor zmm13_a@uint32 zmm13_a zmm1_a; xor zmm13_b@uint32 zmm13_b zmm1_b;
xor zmm13_c@uint32 zmm13_c zmm1_c; xor zmm13_d@uint32 zmm13_d zmm1_d;
xor zmm13_e@uint32 zmm13_e zmm1_e; xor zmm13_f@uint32 zmm13_f zmm1_f;
(* vpxord %zmm2,%zmm14,%zmm14                      #! PC = 0x55555555821c *)
xor zmm14_0@uint32 zmm14_0 zmm2_0; xor zmm14_1@uint32 zmm14_1 zmm2_1;
xor zmm14_2@uint32 zmm14_2 zmm2_2; xor zmm14_3@uint32 zmm14_3 zmm2_3;
xor zmm14_4@uint32 zmm14_4 zmm2_4; xor zmm14_5@uint32 zmm14_5 zmm2_5;
xor zmm14_6@uint32 zmm14_6 zmm2_6; xor zmm14_7@uint32 zmm14_7 zmm2_7;
xor zmm14_8@uint32 zmm14_8 zmm2_8; xor zmm14_9@uint32 zmm14_9 zmm2_9;
xor zmm14_a@uint32 zmm14_a zmm2_a; xor zmm14_b@uint32 zmm14_b zmm2_b;
xor zmm14_c@uint32 zmm14_c zmm2_c; xor zmm14_d@uint32 zmm14_d zmm2_d;
xor zmm14_e@uint32 zmm14_e zmm2_e; xor zmm14_f@uint32 zmm14_f zmm2_f;
(* vpxord %zmm3,%zmm15,%zmm15                      #! PC = 0x555555558222 *)
xor zmm15_0@uint32 zmm15_0 zmm3_0; xor zmm15_1@uint32 zmm15_1 zmm3_1;
xor zmm15_2@uint32 zmm15_2 zmm3_2; xor zmm15_3@uint32 zmm15_3 zmm3_3;
xor zmm15_4@uint32 zmm15_4 zmm3_4; xor zmm15_5@uint32 zmm15_5 zmm3_5;
xor zmm15_6@uint32 zmm15_6 zmm3_6; xor zmm15_7@uint32 zmm15_7 zmm3_7;
xor zmm15_8@uint32 zmm15_8 zmm3_8; xor zmm15_9@uint32 zmm15_9 zmm3_9;
xor zmm15_a@uint32 zmm15_a zmm3_a; xor zmm15_b@uint32 zmm15_b zmm3_b;
xor zmm15_c@uint32 zmm15_c zmm3_c; xor zmm15_d@uint32 zmm15_d zmm3_d;
xor zmm15_e@uint32 zmm15_e zmm3_e; xor zmm15_f@uint32 zmm15_f zmm3_f;
(* vprold $0x8,%zmm12,%zmm12                       #! PC = 0x555555558228 *)
rol zmm12_0@uint32 zmm12_0 0x8; rol zmm12_1@uint32 zmm12_1 0x8;
rol zmm12_2@uint32 zmm12_2 0x8; rol zmm12_3@uint32 zmm12_3 0x8;
rol zmm12_4@uint32 zmm12_4 0x8; rol zmm12_5@uint32 zmm12_5 0x8;
rol zmm12_6@uint32 zmm12_6 0x8; rol zmm12_7@uint32 zmm12_7 0x8;
rol zmm12_8@uint32 zmm12_8 0x8; rol zmm12_9@uint32 zmm12_9 0x8;
rol zmm12_a@uint32 zmm12_a 0x8; rol zmm12_b@uint32 zmm12_b 0x8;
rol zmm12_c@uint32 zmm12_c 0x8; rol zmm12_d@uint32 zmm12_d 0x8;
rol zmm12_e@uint32 zmm12_e 0x8; rol zmm12_f@uint32 zmm12_f 0x8;
(* vprold $0x8,%zmm13,%zmm13                       #! PC = 0x55555555822f *)
rol zmm13_0@uint32 zmm13_0 0x8; rol zmm13_1@uint32 zmm13_1 0x8;
rol zmm13_2@uint32 zmm13_2 0x8; rol zmm13_3@uint32 zmm13_3 0x8;
rol zmm13_4@uint32 zmm13_4 0x8; rol zmm13_5@uint32 zmm13_5 0x8;
rol zmm13_6@uint32 zmm13_6 0x8; rol zmm13_7@uint32 zmm13_7 0x8;
rol zmm13_8@uint32 zmm13_8 0x8; rol zmm13_9@uint32 zmm13_9 0x8;
rol zmm13_a@uint32 zmm13_a 0x8; rol zmm13_b@uint32 zmm13_b 0x8;
rol zmm13_c@uint32 zmm13_c 0x8; rol zmm13_d@uint32 zmm13_d 0x8;
rol zmm13_e@uint32 zmm13_e 0x8; rol zmm13_f@uint32 zmm13_f 0x8;
(* vprold $0x8,%zmm14,%zmm14                       #! PC = 0x555555558236 *)
rol zmm14_0@uint32 zmm14_0 0x8; rol zmm14_1@uint32 zmm14_1 0x8;
rol zmm14_2@uint32 zmm14_2 0x8; rol zmm14_3@uint32 zmm14_3 0x8;
rol zmm14_4@uint32 zmm14_4 0x8; rol zmm14_5@uint32 zmm14_5 0x8;
rol zmm14_6@uint32 zmm14_6 0x8; rol zmm14_7@uint32 zmm14_7 0x8;
rol zmm14_8@uint32 zmm14_8 0x8; rol zmm14_9@uint32 zmm14_9 0x8;
rol zmm14_a@uint32 zmm14_a 0x8; rol zmm14_b@uint32 zmm14_b 0x8;
rol zmm14_c@uint32 zmm14_c 0x8; rol zmm14_d@uint32 zmm14_d 0x8;
rol zmm14_e@uint32 zmm14_e 0x8; rol zmm14_f@uint32 zmm14_f 0x8;
(* vprold $0x8,%zmm15,%zmm15                       #! PC = 0x55555555823d *)
rol zmm15_0@uint32 zmm15_0 0x8; rol zmm15_1@uint32 zmm15_1 0x8;
rol zmm15_2@uint32 zmm15_2 0x8; rol zmm15_3@uint32 zmm15_3 0x8;
rol zmm15_4@uint32 zmm15_4 0x8; rol zmm15_5@uint32 zmm15_5 0x8;
rol zmm15_6@uint32 zmm15_6 0x8; rol zmm15_7@uint32 zmm15_7 0x8;
rol zmm15_8@uint32 zmm15_8 0x8; rol zmm15_9@uint32 zmm15_9 0x8;
rol zmm15_a@uint32 zmm15_a 0x8; rol zmm15_b@uint32 zmm15_b 0x8;
rol zmm15_c@uint32 zmm15_c 0x8; rol zmm15_d@uint32 zmm15_d 0x8;
rol zmm15_e@uint32 zmm15_e 0x8; rol zmm15_f@uint32 zmm15_f 0x8;
(* vpaddd %zmm12,%zmm8,%zmm8                       #! PC = 0x555555558244 *)
adds dc zmm8_0 zmm8_0 zmm12_0; adds dc zmm8_1 zmm8_1 zmm12_1;
adds dc zmm8_2 zmm8_2 zmm12_2; adds dc zmm8_3 zmm8_3 zmm12_3;
adds dc zmm8_4 zmm8_4 zmm12_4; adds dc zmm8_5 zmm8_5 zmm12_5;
adds dc zmm8_6 zmm8_6 zmm12_6; adds dc zmm8_7 zmm8_7 zmm12_7;
adds dc zmm8_8 zmm8_8 zmm12_8; adds dc zmm8_9 zmm8_9 zmm12_9;
adds dc zmm8_a zmm8_a zmm12_a; adds dc zmm8_b zmm8_b zmm12_b;
adds dc zmm8_c zmm8_c zmm12_c; adds dc zmm8_d zmm8_d zmm12_d;
adds dc zmm8_e zmm8_e zmm12_e; adds dc zmm8_f zmm8_f zmm12_f;
(* vpaddd %zmm13,%zmm9,%zmm9                       #! PC = 0x55555555824a *)
adds dc zmm9_0 zmm9_0 zmm13_0; adds dc zmm9_1 zmm9_1 zmm13_1;
adds dc zmm9_2 zmm9_2 zmm13_2; adds dc zmm9_3 zmm9_3 zmm13_3;
adds dc zmm9_4 zmm9_4 zmm13_4; adds dc zmm9_5 zmm9_5 zmm13_5;
adds dc zmm9_6 zmm9_6 zmm13_6; adds dc zmm9_7 zmm9_7 zmm13_7;
adds dc zmm9_8 zmm9_8 zmm13_8; adds dc zmm9_9 zmm9_9 zmm13_9;
adds dc zmm9_a zmm9_a zmm13_a; adds dc zmm9_b zmm9_b zmm13_b;
adds dc zmm9_c zmm9_c zmm13_c; adds dc zmm9_d zmm9_d zmm13_d;
adds dc zmm9_e zmm9_e zmm13_e; adds dc zmm9_f zmm9_f zmm13_f;
(* vpaddd %zmm14,%zmm10,%zmm10                     #! PC = 0x555555558250 *)
adds dc zmm10_0 zmm10_0 zmm14_0; adds dc zmm10_1 zmm10_1 zmm14_1;
adds dc zmm10_2 zmm10_2 zmm14_2; adds dc zmm10_3 zmm10_3 zmm14_3;
adds dc zmm10_4 zmm10_4 zmm14_4; adds dc zmm10_5 zmm10_5 zmm14_5;
adds dc zmm10_6 zmm10_6 zmm14_6; adds dc zmm10_7 zmm10_7 zmm14_7;
adds dc zmm10_8 zmm10_8 zmm14_8; adds dc zmm10_9 zmm10_9 zmm14_9;
adds dc zmm10_a zmm10_a zmm14_a; adds dc zmm10_b zmm10_b zmm14_b;
adds dc zmm10_c zmm10_c zmm14_c; adds dc zmm10_d zmm10_d zmm14_d;
adds dc zmm10_e zmm10_e zmm14_e; adds dc zmm10_f zmm10_f zmm14_f;
(* vpaddd %zmm15,%zmm11,%zmm11                     #! PC = 0x555555558256 *)
adds dc zmm11_0 zmm11_0 zmm15_0; adds dc zmm11_1 zmm11_1 zmm15_1;
adds dc zmm11_2 zmm11_2 zmm15_2; adds dc zmm11_3 zmm11_3 zmm15_3;
adds dc zmm11_4 zmm11_4 zmm15_4; adds dc zmm11_5 zmm11_5 zmm15_5;
adds dc zmm11_6 zmm11_6 zmm15_6; adds dc zmm11_7 zmm11_7 zmm15_7;
adds dc zmm11_8 zmm11_8 zmm15_8; adds dc zmm11_9 zmm11_9 zmm15_9;
adds dc zmm11_a zmm11_a zmm15_a; adds dc zmm11_b zmm11_b zmm15_b;
adds dc zmm11_c zmm11_c zmm15_c; adds dc zmm11_d zmm11_d zmm15_d;
adds dc zmm11_e zmm11_e zmm15_e; adds dc zmm11_f zmm11_f zmm15_f;
(* vpxord %zmm8,%zmm4,%zmm4                        #! PC = 0x55555555825c *)
xor zmm4_0@uint32 zmm4_0 zmm8_0; xor zmm4_1@uint32 zmm4_1 zmm8_1;
xor zmm4_2@uint32 zmm4_2 zmm8_2; xor zmm4_3@uint32 zmm4_3 zmm8_3;
xor zmm4_4@uint32 zmm4_4 zmm8_4; xor zmm4_5@uint32 zmm4_5 zmm8_5;
xor zmm4_6@uint32 zmm4_6 zmm8_6; xor zmm4_7@uint32 zmm4_7 zmm8_7;
xor zmm4_8@uint32 zmm4_8 zmm8_8; xor zmm4_9@uint32 zmm4_9 zmm8_9;
xor zmm4_a@uint32 zmm4_a zmm8_a; xor zmm4_b@uint32 zmm4_b zmm8_b;
xor zmm4_c@uint32 zmm4_c zmm8_c; xor zmm4_d@uint32 zmm4_d zmm8_d;
xor zmm4_e@uint32 zmm4_e zmm8_e; xor zmm4_f@uint32 zmm4_f zmm8_f;
(* vpxord %zmm9,%zmm5,%zmm5                        #! PC = 0x555555558262 *)
xor zmm5_0@uint32 zmm5_0 zmm9_0; xor zmm5_1@uint32 zmm5_1 zmm9_1;
xor zmm5_2@uint32 zmm5_2 zmm9_2; xor zmm5_3@uint32 zmm5_3 zmm9_3;
xor zmm5_4@uint32 zmm5_4 zmm9_4; xor zmm5_5@uint32 zmm5_5 zmm9_5;
xor zmm5_6@uint32 zmm5_6 zmm9_6; xor zmm5_7@uint32 zmm5_7 zmm9_7;
xor zmm5_8@uint32 zmm5_8 zmm9_8; xor zmm5_9@uint32 zmm5_9 zmm9_9;
xor zmm5_a@uint32 zmm5_a zmm9_a; xor zmm5_b@uint32 zmm5_b zmm9_b;
xor zmm5_c@uint32 zmm5_c zmm9_c; xor zmm5_d@uint32 zmm5_d zmm9_d;
xor zmm5_e@uint32 zmm5_e zmm9_e; xor zmm5_f@uint32 zmm5_f zmm9_f;
(* vpxord %zmm10,%zmm6,%zmm6                       #! PC = 0x555555558268 *)
xor zmm6_0@uint32 zmm6_0 zmm10_0; xor zmm6_1@uint32 zmm6_1 zmm10_1;
xor zmm6_2@uint32 zmm6_2 zmm10_2; xor zmm6_3@uint32 zmm6_3 zmm10_3;
xor zmm6_4@uint32 zmm6_4 zmm10_4; xor zmm6_5@uint32 zmm6_5 zmm10_5;
xor zmm6_6@uint32 zmm6_6 zmm10_6; xor zmm6_7@uint32 zmm6_7 zmm10_7;
xor zmm6_8@uint32 zmm6_8 zmm10_8; xor zmm6_9@uint32 zmm6_9 zmm10_9;
xor zmm6_a@uint32 zmm6_a zmm10_a; xor zmm6_b@uint32 zmm6_b zmm10_b;
xor zmm6_c@uint32 zmm6_c zmm10_c; xor zmm6_d@uint32 zmm6_d zmm10_d;
xor zmm6_e@uint32 zmm6_e zmm10_e; xor zmm6_f@uint32 zmm6_f zmm10_f;
(* vpxord %zmm11,%zmm7,%zmm7                       #! PC = 0x55555555826e *)
xor zmm7_0@uint32 zmm7_0 zmm11_0; xor zmm7_1@uint32 zmm7_1 zmm11_1;
xor zmm7_2@uint32 zmm7_2 zmm11_2; xor zmm7_3@uint32 zmm7_3 zmm11_3;
xor zmm7_4@uint32 zmm7_4 zmm11_4; xor zmm7_5@uint32 zmm7_5 zmm11_5;
xor zmm7_6@uint32 zmm7_6 zmm11_6; xor zmm7_7@uint32 zmm7_7 zmm11_7;
xor zmm7_8@uint32 zmm7_8 zmm11_8; xor zmm7_9@uint32 zmm7_9 zmm11_9;
xor zmm7_a@uint32 zmm7_a zmm11_a; xor zmm7_b@uint32 zmm7_b zmm11_b;
xor zmm7_c@uint32 zmm7_c zmm11_c; xor zmm7_d@uint32 zmm7_d zmm11_d;
xor zmm7_e@uint32 zmm7_e zmm11_e; xor zmm7_f@uint32 zmm7_f zmm11_f;
(* vprold $0x7,%zmm4,%zmm4                         #! PC = 0x555555558274 *)
rol zmm4_0@uint32 zmm4_0 0x7; rol zmm4_1@uint32 zmm4_1 0x7;
rol zmm4_2@uint32 zmm4_2 0x7; rol zmm4_3@uint32 zmm4_3 0x7;
rol zmm4_4@uint32 zmm4_4 0x7; rol zmm4_5@uint32 zmm4_5 0x7;
rol zmm4_6@uint32 zmm4_6 0x7; rol zmm4_7@uint32 zmm4_7 0x7;
rol zmm4_8@uint32 zmm4_8 0x7; rol zmm4_9@uint32 zmm4_9 0x7;
rol zmm4_a@uint32 zmm4_a 0x7; rol zmm4_b@uint32 zmm4_b 0x7;
rol zmm4_c@uint32 zmm4_c 0x7; rol zmm4_d@uint32 zmm4_d 0x7;
rol zmm4_e@uint32 zmm4_e 0x7; rol zmm4_f@uint32 zmm4_f 0x7;
(* vprold $0x7,%zmm5,%zmm5                         #! PC = 0x55555555827b *)
rol zmm5_0@uint32 zmm5_0 0x7; rol zmm5_1@uint32 zmm5_1 0x7;
rol zmm5_2@uint32 zmm5_2 0x7; rol zmm5_3@uint32 zmm5_3 0x7;
rol zmm5_4@uint32 zmm5_4 0x7; rol zmm5_5@uint32 zmm5_5 0x7;
rol zmm5_6@uint32 zmm5_6 0x7; rol zmm5_7@uint32 zmm5_7 0x7;
rol zmm5_8@uint32 zmm5_8 0x7; rol zmm5_9@uint32 zmm5_9 0x7;
rol zmm5_a@uint32 zmm5_a 0x7; rol zmm5_b@uint32 zmm5_b 0x7;
rol zmm5_c@uint32 zmm5_c 0x7; rol zmm5_d@uint32 zmm5_d 0x7;
rol zmm5_e@uint32 zmm5_e 0x7; rol zmm5_f@uint32 zmm5_f 0x7;
(* vprold $0x7,%zmm6,%zmm6                         #! PC = 0x555555558282 *)
rol zmm6_0@uint32 zmm6_0 0x7; rol zmm6_1@uint32 zmm6_1 0x7;
rol zmm6_2@uint32 zmm6_2 0x7; rol zmm6_3@uint32 zmm6_3 0x7;
rol zmm6_4@uint32 zmm6_4 0x7; rol zmm6_5@uint32 zmm6_5 0x7;
rol zmm6_6@uint32 zmm6_6 0x7; rol zmm6_7@uint32 zmm6_7 0x7;
rol zmm6_8@uint32 zmm6_8 0x7; rol zmm6_9@uint32 zmm6_9 0x7;
rol zmm6_a@uint32 zmm6_a 0x7; rol zmm6_b@uint32 zmm6_b 0x7;
rol zmm6_c@uint32 zmm6_c 0x7; rol zmm6_d@uint32 zmm6_d 0x7;
rol zmm6_e@uint32 zmm6_e 0x7; rol zmm6_f@uint32 zmm6_f 0x7;
(* vprold $0x7,%zmm7,%zmm7                         #! PC = 0x555555558289 *)
rol zmm7_0@uint32 zmm7_0 0x7; rol zmm7_1@uint32 zmm7_1 0x7;
rol zmm7_2@uint32 zmm7_2 0x7; rol zmm7_3@uint32 zmm7_3 0x7;
rol zmm7_4@uint32 zmm7_4 0x7; rol zmm7_5@uint32 zmm7_5 0x7;
rol zmm7_6@uint32 zmm7_6 0x7; rol zmm7_7@uint32 zmm7_7 0x7;
rol zmm7_8@uint32 zmm7_8 0x7; rol zmm7_9@uint32 zmm7_9 0x7;
rol zmm7_a@uint32 zmm7_a 0x7; rol zmm7_b@uint32 zmm7_b 0x7;
rol zmm7_c@uint32 zmm7_c 0x7; rol zmm7_d@uint32 zmm7_d 0x7;
rol zmm7_e@uint32 zmm7_e 0x7; rol zmm7_f@uint32 zmm7_f 0x7;
(* vpaddd %zmm5,%zmm0,%zmm0                        #! PC = 0x555555558290 *)
adds dc zmm0_0 zmm0_0 zmm5_0; adds dc zmm0_1 zmm0_1 zmm5_1;
adds dc zmm0_2 zmm0_2 zmm5_2; adds dc zmm0_3 zmm0_3 zmm5_3;
adds dc zmm0_4 zmm0_4 zmm5_4; adds dc zmm0_5 zmm0_5 zmm5_5;
adds dc zmm0_6 zmm0_6 zmm5_6; adds dc zmm0_7 zmm0_7 zmm5_7;
adds dc zmm0_8 zmm0_8 zmm5_8; adds dc zmm0_9 zmm0_9 zmm5_9;
adds dc zmm0_a zmm0_a zmm5_a; adds dc zmm0_b zmm0_b zmm5_b;
adds dc zmm0_c zmm0_c zmm5_c; adds dc zmm0_d zmm0_d zmm5_d;
adds dc zmm0_e zmm0_e zmm5_e; adds dc zmm0_f zmm0_f zmm5_f;
(* vpaddd %zmm6,%zmm1,%zmm1                        #! PC = 0x555555558296 *)
adds dc zmm1_0 zmm1_0 zmm6_0; adds dc zmm1_1 zmm1_1 zmm6_1;
adds dc zmm1_2 zmm1_2 zmm6_2; adds dc zmm1_3 zmm1_3 zmm6_3;
adds dc zmm1_4 zmm1_4 zmm6_4; adds dc zmm1_5 zmm1_5 zmm6_5;
adds dc zmm1_6 zmm1_6 zmm6_6; adds dc zmm1_7 zmm1_7 zmm6_7;
adds dc zmm1_8 zmm1_8 zmm6_8; adds dc zmm1_9 zmm1_9 zmm6_9;
adds dc zmm1_a zmm1_a zmm6_a; adds dc zmm1_b zmm1_b zmm6_b;
adds dc zmm1_c zmm1_c zmm6_c; adds dc zmm1_d zmm1_d zmm6_d;
adds dc zmm1_e zmm1_e zmm6_e; adds dc zmm1_f zmm1_f zmm6_f;
(* vpaddd %zmm7,%zmm2,%zmm2                        #! PC = 0x55555555829c *)
adds dc zmm2_0 zmm2_0 zmm7_0; adds dc zmm2_1 zmm2_1 zmm7_1;
adds dc zmm2_2 zmm2_2 zmm7_2; adds dc zmm2_3 zmm2_3 zmm7_3;
adds dc zmm2_4 zmm2_4 zmm7_4; adds dc zmm2_5 zmm2_5 zmm7_5;
adds dc zmm2_6 zmm2_6 zmm7_6; adds dc zmm2_7 zmm2_7 zmm7_7;
adds dc zmm2_8 zmm2_8 zmm7_8; adds dc zmm2_9 zmm2_9 zmm7_9;
adds dc zmm2_a zmm2_a zmm7_a; adds dc zmm2_b zmm2_b zmm7_b;
adds dc zmm2_c zmm2_c zmm7_c; adds dc zmm2_d zmm2_d zmm7_d;
adds dc zmm2_e zmm2_e zmm7_e; adds dc zmm2_f zmm2_f zmm7_f;
(* vpaddd %zmm4,%zmm3,%zmm3                        #! PC = 0x5555555582a2 *)
adds dc zmm3_0 zmm3_0 zmm4_0; adds dc zmm3_1 zmm3_1 zmm4_1;
adds dc zmm3_2 zmm3_2 zmm4_2; adds dc zmm3_3 zmm3_3 zmm4_3;
adds dc zmm3_4 zmm3_4 zmm4_4; adds dc zmm3_5 zmm3_5 zmm4_5;
adds dc zmm3_6 zmm3_6 zmm4_6; adds dc zmm3_7 zmm3_7 zmm4_7;
adds dc zmm3_8 zmm3_8 zmm4_8; adds dc zmm3_9 zmm3_9 zmm4_9;
adds dc zmm3_a zmm3_a zmm4_a; adds dc zmm3_b zmm3_b zmm4_b;
adds dc zmm3_c zmm3_c zmm4_c; adds dc zmm3_d zmm3_d zmm4_d;
adds dc zmm3_e zmm3_e zmm4_e; adds dc zmm3_f zmm3_f zmm4_f;
(* vpxord %zmm0,%zmm15,%zmm15                      #! PC = 0x5555555582a8 *)
xor zmm15_0@uint32 zmm15_0 zmm0_0; xor zmm15_1@uint32 zmm15_1 zmm0_1;
xor zmm15_2@uint32 zmm15_2 zmm0_2; xor zmm15_3@uint32 zmm15_3 zmm0_3;
xor zmm15_4@uint32 zmm15_4 zmm0_4; xor zmm15_5@uint32 zmm15_5 zmm0_5;
xor zmm15_6@uint32 zmm15_6 zmm0_6; xor zmm15_7@uint32 zmm15_7 zmm0_7;
xor zmm15_8@uint32 zmm15_8 zmm0_8; xor zmm15_9@uint32 zmm15_9 zmm0_9;
xor zmm15_a@uint32 zmm15_a zmm0_a; xor zmm15_b@uint32 zmm15_b zmm0_b;
xor zmm15_c@uint32 zmm15_c zmm0_c; xor zmm15_d@uint32 zmm15_d zmm0_d;
xor zmm15_e@uint32 zmm15_e zmm0_e; xor zmm15_f@uint32 zmm15_f zmm0_f;
(* vpxord %zmm1,%zmm12,%zmm12                      #! PC = 0x5555555582ae *)
xor zmm12_0@uint32 zmm12_0 zmm1_0; xor zmm12_1@uint32 zmm12_1 zmm1_1;
xor zmm12_2@uint32 zmm12_2 zmm1_2; xor zmm12_3@uint32 zmm12_3 zmm1_3;
xor zmm12_4@uint32 zmm12_4 zmm1_4; xor zmm12_5@uint32 zmm12_5 zmm1_5;
xor zmm12_6@uint32 zmm12_6 zmm1_6; xor zmm12_7@uint32 zmm12_7 zmm1_7;
xor zmm12_8@uint32 zmm12_8 zmm1_8; xor zmm12_9@uint32 zmm12_9 zmm1_9;
xor zmm12_a@uint32 zmm12_a zmm1_a; xor zmm12_b@uint32 zmm12_b zmm1_b;
xor zmm12_c@uint32 zmm12_c zmm1_c; xor zmm12_d@uint32 zmm12_d zmm1_d;
xor zmm12_e@uint32 zmm12_e zmm1_e; xor zmm12_f@uint32 zmm12_f zmm1_f;
(* vpxord %zmm2,%zmm13,%zmm13                      #! PC = 0x5555555582b4 *)
xor zmm13_0@uint32 zmm13_0 zmm2_0; xor zmm13_1@uint32 zmm13_1 zmm2_1;
xor zmm13_2@uint32 zmm13_2 zmm2_2; xor zmm13_3@uint32 zmm13_3 zmm2_3;
xor zmm13_4@uint32 zmm13_4 zmm2_4; xor zmm13_5@uint32 zmm13_5 zmm2_5;
xor zmm13_6@uint32 zmm13_6 zmm2_6; xor zmm13_7@uint32 zmm13_7 zmm2_7;
xor zmm13_8@uint32 zmm13_8 zmm2_8; xor zmm13_9@uint32 zmm13_9 zmm2_9;
xor zmm13_a@uint32 zmm13_a zmm2_a; xor zmm13_b@uint32 zmm13_b zmm2_b;
xor zmm13_c@uint32 zmm13_c zmm2_c; xor zmm13_d@uint32 zmm13_d zmm2_d;
xor zmm13_e@uint32 zmm13_e zmm2_e; xor zmm13_f@uint32 zmm13_f zmm2_f;
(* vpxord %zmm3,%zmm14,%zmm14                      #! PC = 0x5555555582ba *)
xor zmm14_0@uint32 zmm14_0 zmm3_0; xor zmm14_1@uint32 zmm14_1 zmm3_1;
xor zmm14_2@uint32 zmm14_2 zmm3_2; xor zmm14_3@uint32 zmm14_3 zmm3_3;
xor zmm14_4@uint32 zmm14_4 zmm3_4; xor zmm14_5@uint32 zmm14_5 zmm3_5;
xor zmm14_6@uint32 zmm14_6 zmm3_6; xor zmm14_7@uint32 zmm14_7 zmm3_7;
xor zmm14_8@uint32 zmm14_8 zmm3_8; xor zmm14_9@uint32 zmm14_9 zmm3_9;
xor zmm14_a@uint32 zmm14_a zmm3_a; xor zmm14_b@uint32 zmm14_b zmm3_b;
xor zmm14_c@uint32 zmm14_c zmm3_c; xor zmm14_d@uint32 zmm14_d zmm3_d;
xor zmm14_e@uint32 zmm14_e zmm3_e; xor zmm14_f@uint32 zmm14_f zmm3_f;
(* vprold $0x10,%zmm15,%zmm15                      #! PC = 0x5555555582c0 *)
rol zmm15_0@uint32 zmm15_0 0x10; rol zmm15_1@uint32 zmm15_1 0x10;
rol zmm15_2@uint32 zmm15_2 0x10; rol zmm15_3@uint32 zmm15_3 0x10;
rol zmm15_4@uint32 zmm15_4 0x10; rol zmm15_5@uint32 zmm15_5 0x10;
rol zmm15_6@uint32 zmm15_6 0x10; rol zmm15_7@uint32 zmm15_7 0x10;
rol zmm15_8@uint32 zmm15_8 0x10; rol zmm15_9@uint32 zmm15_9 0x10;
rol zmm15_a@uint32 zmm15_a 0x10; rol zmm15_b@uint32 zmm15_b 0x10;
rol zmm15_c@uint32 zmm15_c 0x10; rol zmm15_d@uint32 zmm15_d 0x10;
rol zmm15_e@uint32 zmm15_e 0x10; rol zmm15_f@uint32 zmm15_f 0x10;
(* vprold $0x10,%zmm12,%zmm12                      #! PC = 0x5555555582c7 *)
rol zmm12_0@uint32 zmm12_0 0x10; rol zmm12_1@uint32 zmm12_1 0x10;
rol zmm12_2@uint32 zmm12_2 0x10; rol zmm12_3@uint32 zmm12_3 0x10;
rol zmm12_4@uint32 zmm12_4 0x10; rol zmm12_5@uint32 zmm12_5 0x10;
rol zmm12_6@uint32 zmm12_6 0x10; rol zmm12_7@uint32 zmm12_7 0x10;
rol zmm12_8@uint32 zmm12_8 0x10; rol zmm12_9@uint32 zmm12_9 0x10;
rol zmm12_a@uint32 zmm12_a 0x10; rol zmm12_b@uint32 zmm12_b 0x10;
rol zmm12_c@uint32 zmm12_c 0x10; rol zmm12_d@uint32 zmm12_d 0x10;
rol zmm12_e@uint32 zmm12_e 0x10; rol zmm12_f@uint32 zmm12_f 0x10;
(* vprold $0x10,%zmm13,%zmm13                      #! PC = 0x5555555582ce *)
rol zmm13_0@uint32 zmm13_0 0x10; rol zmm13_1@uint32 zmm13_1 0x10;
rol zmm13_2@uint32 zmm13_2 0x10; rol zmm13_3@uint32 zmm13_3 0x10;
rol zmm13_4@uint32 zmm13_4 0x10; rol zmm13_5@uint32 zmm13_5 0x10;
rol zmm13_6@uint32 zmm13_6 0x10; rol zmm13_7@uint32 zmm13_7 0x10;
rol zmm13_8@uint32 zmm13_8 0x10; rol zmm13_9@uint32 zmm13_9 0x10;
rol zmm13_a@uint32 zmm13_a 0x10; rol zmm13_b@uint32 zmm13_b 0x10;
rol zmm13_c@uint32 zmm13_c 0x10; rol zmm13_d@uint32 zmm13_d 0x10;
rol zmm13_e@uint32 zmm13_e 0x10; rol zmm13_f@uint32 zmm13_f 0x10;
(* vprold $0x10,%zmm14,%zmm14                      #! PC = 0x5555555582d5 *)
rol zmm14_0@uint32 zmm14_0 0x10; rol zmm14_1@uint32 zmm14_1 0x10;
rol zmm14_2@uint32 zmm14_2 0x10; rol zmm14_3@uint32 zmm14_3 0x10;
rol zmm14_4@uint32 zmm14_4 0x10; rol zmm14_5@uint32 zmm14_5 0x10;
rol zmm14_6@uint32 zmm14_6 0x10; rol zmm14_7@uint32 zmm14_7 0x10;
rol zmm14_8@uint32 zmm14_8 0x10; rol zmm14_9@uint32 zmm14_9 0x10;
rol zmm14_a@uint32 zmm14_a 0x10; rol zmm14_b@uint32 zmm14_b 0x10;
rol zmm14_c@uint32 zmm14_c 0x10; rol zmm14_d@uint32 zmm14_d 0x10;
rol zmm14_e@uint32 zmm14_e 0x10; rol zmm14_f@uint32 zmm14_f 0x10;
(* vpaddd %zmm15,%zmm10,%zmm10                     #! PC = 0x5555555582dc *)
adds dc zmm10_0 zmm10_0 zmm15_0; adds dc zmm10_1 zmm10_1 zmm15_1;
adds dc zmm10_2 zmm10_2 zmm15_2; adds dc zmm10_3 zmm10_3 zmm15_3;
adds dc zmm10_4 zmm10_4 zmm15_4; adds dc zmm10_5 zmm10_5 zmm15_5;
adds dc zmm10_6 zmm10_6 zmm15_6; adds dc zmm10_7 zmm10_7 zmm15_7;
adds dc zmm10_8 zmm10_8 zmm15_8; adds dc zmm10_9 zmm10_9 zmm15_9;
adds dc zmm10_a zmm10_a zmm15_a; adds dc zmm10_b zmm10_b zmm15_b;
adds dc zmm10_c zmm10_c zmm15_c; adds dc zmm10_d zmm10_d zmm15_d;
adds dc zmm10_e zmm10_e zmm15_e; adds dc zmm10_f zmm10_f zmm15_f;
(* vpaddd %zmm12,%zmm11,%zmm11                     #! PC = 0x5555555582e2 *)
adds dc zmm11_0 zmm11_0 zmm12_0; adds dc zmm11_1 zmm11_1 zmm12_1;
adds dc zmm11_2 zmm11_2 zmm12_2; adds dc zmm11_3 zmm11_3 zmm12_3;
adds dc zmm11_4 zmm11_4 zmm12_4; adds dc zmm11_5 zmm11_5 zmm12_5;
adds dc zmm11_6 zmm11_6 zmm12_6; adds dc zmm11_7 zmm11_7 zmm12_7;
adds dc zmm11_8 zmm11_8 zmm12_8; adds dc zmm11_9 zmm11_9 zmm12_9;
adds dc zmm11_a zmm11_a zmm12_a; adds dc zmm11_b zmm11_b zmm12_b;
adds dc zmm11_c zmm11_c zmm12_c; adds dc zmm11_d zmm11_d zmm12_d;
adds dc zmm11_e zmm11_e zmm12_e; adds dc zmm11_f zmm11_f zmm12_f;
(* vpaddd %zmm13,%zmm8,%zmm8                       #! PC = 0x5555555582e8 *)
adds dc zmm8_0 zmm8_0 zmm13_0; adds dc zmm8_1 zmm8_1 zmm13_1;
adds dc zmm8_2 zmm8_2 zmm13_2; adds dc zmm8_3 zmm8_3 zmm13_3;
adds dc zmm8_4 zmm8_4 zmm13_4; adds dc zmm8_5 zmm8_5 zmm13_5;
adds dc zmm8_6 zmm8_6 zmm13_6; adds dc zmm8_7 zmm8_7 zmm13_7;
adds dc zmm8_8 zmm8_8 zmm13_8; adds dc zmm8_9 zmm8_9 zmm13_9;
adds dc zmm8_a zmm8_a zmm13_a; adds dc zmm8_b zmm8_b zmm13_b;
adds dc zmm8_c zmm8_c zmm13_c; adds dc zmm8_d zmm8_d zmm13_d;
adds dc zmm8_e zmm8_e zmm13_e; adds dc zmm8_f zmm8_f zmm13_f;
(* vpaddd %zmm14,%zmm9,%zmm9                       #! PC = 0x5555555582ee *)
adds dc zmm9_0 zmm9_0 zmm14_0; adds dc zmm9_1 zmm9_1 zmm14_1;
adds dc zmm9_2 zmm9_2 zmm14_2; adds dc zmm9_3 zmm9_3 zmm14_3;
adds dc zmm9_4 zmm9_4 zmm14_4; adds dc zmm9_5 zmm9_5 zmm14_5;
adds dc zmm9_6 zmm9_6 zmm14_6; adds dc zmm9_7 zmm9_7 zmm14_7;
adds dc zmm9_8 zmm9_8 zmm14_8; adds dc zmm9_9 zmm9_9 zmm14_9;
adds dc zmm9_a zmm9_a zmm14_a; adds dc zmm9_b zmm9_b zmm14_b;
adds dc zmm9_c zmm9_c zmm14_c; adds dc zmm9_d zmm9_d zmm14_d;
adds dc zmm9_e zmm9_e zmm14_e; adds dc zmm9_f zmm9_f zmm14_f;
(* vpxord %zmm10,%zmm5,%zmm5                       #! PC = 0x5555555582f4 *)
xor zmm5_0@uint32 zmm5_0 zmm10_0; xor zmm5_1@uint32 zmm5_1 zmm10_1;
xor zmm5_2@uint32 zmm5_2 zmm10_2; xor zmm5_3@uint32 zmm5_3 zmm10_3;
xor zmm5_4@uint32 zmm5_4 zmm10_4; xor zmm5_5@uint32 zmm5_5 zmm10_5;
xor zmm5_6@uint32 zmm5_6 zmm10_6; xor zmm5_7@uint32 zmm5_7 zmm10_7;
xor zmm5_8@uint32 zmm5_8 zmm10_8; xor zmm5_9@uint32 zmm5_9 zmm10_9;
xor zmm5_a@uint32 zmm5_a zmm10_a; xor zmm5_b@uint32 zmm5_b zmm10_b;
xor zmm5_c@uint32 zmm5_c zmm10_c; xor zmm5_d@uint32 zmm5_d zmm10_d;
xor zmm5_e@uint32 zmm5_e zmm10_e; xor zmm5_f@uint32 zmm5_f zmm10_f;
(* vpxord %zmm11,%zmm6,%zmm6                       #! PC = 0x5555555582fa *)
xor zmm6_0@uint32 zmm6_0 zmm11_0; xor zmm6_1@uint32 zmm6_1 zmm11_1;
xor zmm6_2@uint32 zmm6_2 zmm11_2; xor zmm6_3@uint32 zmm6_3 zmm11_3;
xor zmm6_4@uint32 zmm6_4 zmm11_4; xor zmm6_5@uint32 zmm6_5 zmm11_5;
xor zmm6_6@uint32 zmm6_6 zmm11_6; xor zmm6_7@uint32 zmm6_7 zmm11_7;
xor zmm6_8@uint32 zmm6_8 zmm11_8; xor zmm6_9@uint32 zmm6_9 zmm11_9;
xor zmm6_a@uint32 zmm6_a zmm11_a; xor zmm6_b@uint32 zmm6_b zmm11_b;
xor zmm6_c@uint32 zmm6_c zmm11_c; xor zmm6_d@uint32 zmm6_d zmm11_d;
xor zmm6_e@uint32 zmm6_e zmm11_e; xor zmm6_f@uint32 zmm6_f zmm11_f;
(* vpxord %zmm8,%zmm7,%zmm7                        #! PC = 0x555555558300 *)
xor zmm7_0@uint32 zmm7_0 zmm8_0; xor zmm7_1@uint32 zmm7_1 zmm8_1;
xor zmm7_2@uint32 zmm7_2 zmm8_2; xor zmm7_3@uint32 zmm7_3 zmm8_3;
xor zmm7_4@uint32 zmm7_4 zmm8_4; xor zmm7_5@uint32 zmm7_5 zmm8_5;
xor zmm7_6@uint32 zmm7_6 zmm8_6; xor zmm7_7@uint32 zmm7_7 zmm8_7;
xor zmm7_8@uint32 zmm7_8 zmm8_8; xor zmm7_9@uint32 zmm7_9 zmm8_9;
xor zmm7_a@uint32 zmm7_a zmm8_a; xor zmm7_b@uint32 zmm7_b zmm8_b;
xor zmm7_c@uint32 zmm7_c zmm8_c; xor zmm7_d@uint32 zmm7_d zmm8_d;
xor zmm7_e@uint32 zmm7_e zmm8_e; xor zmm7_f@uint32 zmm7_f zmm8_f;
(* vpxord %zmm9,%zmm4,%zmm4                        #! PC = 0x555555558306 *)
xor zmm4_0@uint32 zmm4_0 zmm9_0; xor zmm4_1@uint32 zmm4_1 zmm9_1;
xor zmm4_2@uint32 zmm4_2 zmm9_2; xor zmm4_3@uint32 zmm4_3 zmm9_3;
xor zmm4_4@uint32 zmm4_4 zmm9_4; xor zmm4_5@uint32 zmm4_5 zmm9_5;
xor zmm4_6@uint32 zmm4_6 zmm9_6; xor zmm4_7@uint32 zmm4_7 zmm9_7;
xor zmm4_8@uint32 zmm4_8 zmm9_8; xor zmm4_9@uint32 zmm4_9 zmm9_9;
xor zmm4_a@uint32 zmm4_a zmm9_a; xor zmm4_b@uint32 zmm4_b zmm9_b;
xor zmm4_c@uint32 zmm4_c zmm9_c; xor zmm4_d@uint32 zmm4_d zmm9_d;
xor zmm4_e@uint32 zmm4_e zmm9_e; xor zmm4_f@uint32 zmm4_f zmm9_f;
(* vprold $0xc,%zmm5,%zmm5                         #! PC = 0x55555555830c *)
rol zmm5_0@uint32 zmm5_0 0xc; rol zmm5_1@uint32 zmm5_1 0xc;
rol zmm5_2@uint32 zmm5_2 0xc; rol zmm5_3@uint32 zmm5_3 0xc;
rol zmm5_4@uint32 zmm5_4 0xc; rol zmm5_5@uint32 zmm5_5 0xc;
rol zmm5_6@uint32 zmm5_6 0xc; rol zmm5_7@uint32 zmm5_7 0xc;
rol zmm5_8@uint32 zmm5_8 0xc; rol zmm5_9@uint32 zmm5_9 0xc;
rol zmm5_a@uint32 zmm5_a 0xc; rol zmm5_b@uint32 zmm5_b 0xc;
rol zmm5_c@uint32 zmm5_c 0xc; rol zmm5_d@uint32 zmm5_d 0xc;
rol zmm5_e@uint32 zmm5_e 0xc; rol zmm5_f@uint32 zmm5_f 0xc;
(* vprold $0xc,%zmm6,%zmm6                         #! PC = 0x555555558313 *)
rol zmm6_0@uint32 zmm6_0 0xc; rol zmm6_1@uint32 zmm6_1 0xc;
rol zmm6_2@uint32 zmm6_2 0xc; rol zmm6_3@uint32 zmm6_3 0xc;
rol zmm6_4@uint32 zmm6_4 0xc; rol zmm6_5@uint32 zmm6_5 0xc;
rol zmm6_6@uint32 zmm6_6 0xc; rol zmm6_7@uint32 zmm6_7 0xc;
rol zmm6_8@uint32 zmm6_8 0xc; rol zmm6_9@uint32 zmm6_9 0xc;
rol zmm6_a@uint32 zmm6_a 0xc; rol zmm6_b@uint32 zmm6_b 0xc;
rol zmm6_c@uint32 zmm6_c 0xc; rol zmm6_d@uint32 zmm6_d 0xc;
rol zmm6_e@uint32 zmm6_e 0xc; rol zmm6_f@uint32 zmm6_f 0xc;
(* vprold $0xc,%zmm7,%zmm7                         #! PC = 0x55555555831a *)
rol zmm7_0@uint32 zmm7_0 0xc; rol zmm7_1@uint32 zmm7_1 0xc;
rol zmm7_2@uint32 zmm7_2 0xc; rol zmm7_3@uint32 zmm7_3 0xc;
rol zmm7_4@uint32 zmm7_4 0xc; rol zmm7_5@uint32 zmm7_5 0xc;
rol zmm7_6@uint32 zmm7_6 0xc; rol zmm7_7@uint32 zmm7_7 0xc;
rol zmm7_8@uint32 zmm7_8 0xc; rol zmm7_9@uint32 zmm7_9 0xc;
rol zmm7_a@uint32 zmm7_a 0xc; rol zmm7_b@uint32 zmm7_b 0xc;
rol zmm7_c@uint32 zmm7_c 0xc; rol zmm7_d@uint32 zmm7_d 0xc;
rol zmm7_e@uint32 zmm7_e 0xc; rol zmm7_f@uint32 zmm7_f 0xc;
(* vprold $0xc,%zmm4,%zmm4                         #! PC = 0x555555558321 *)
rol zmm4_0@uint32 zmm4_0 0xc; rol zmm4_1@uint32 zmm4_1 0xc;
rol zmm4_2@uint32 zmm4_2 0xc; rol zmm4_3@uint32 zmm4_3 0xc;
rol zmm4_4@uint32 zmm4_4 0xc; rol zmm4_5@uint32 zmm4_5 0xc;
rol zmm4_6@uint32 zmm4_6 0xc; rol zmm4_7@uint32 zmm4_7 0xc;
rol zmm4_8@uint32 zmm4_8 0xc; rol zmm4_9@uint32 zmm4_9 0xc;
rol zmm4_a@uint32 zmm4_a 0xc; rol zmm4_b@uint32 zmm4_b 0xc;
rol zmm4_c@uint32 zmm4_c 0xc; rol zmm4_d@uint32 zmm4_d 0xc;
rol zmm4_e@uint32 zmm4_e 0xc; rol zmm4_f@uint32 zmm4_f 0xc;
(* vpaddd %zmm5,%zmm0,%zmm0                        #! PC = 0x555555558328 *)
adds dc zmm0_0 zmm0_0 zmm5_0; adds dc zmm0_1 zmm0_1 zmm5_1;
adds dc zmm0_2 zmm0_2 zmm5_2; adds dc zmm0_3 zmm0_3 zmm5_3;
adds dc zmm0_4 zmm0_4 zmm5_4; adds dc zmm0_5 zmm0_5 zmm5_5;
adds dc zmm0_6 zmm0_6 zmm5_6; adds dc zmm0_7 zmm0_7 zmm5_7;
adds dc zmm0_8 zmm0_8 zmm5_8; adds dc zmm0_9 zmm0_9 zmm5_9;
adds dc zmm0_a zmm0_a zmm5_a; adds dc zmm0_b zmm0_b zmm5_b;
adds dc zmm0_c zmm0_c zmm5_c; adds dc zmm0_d zmm0_d zmm5_d;
adds dc zmm0_e zmm0_e zmm5_e; adds dc zmm0_f zmm0_f zmm5_f;
(* vpaddd %zmm6,%zmm1,%zmm1                        #! PC = 0x55555555832e *)
adds dc zmm1_0 zmm1_0 zmm6_0; adds dc zmm1_1 zmm1_1 zmm6_1;
adds dc zmm1_2 zmm1_2 zmm6_2; adds dc zmm1_3 zmm1_3 zmm6_3;
adds dc zmm1_4 zmm1_4 zmm6_4; adds dc zmm1_5 zmm1_5 zmm6_5;
adds dc zmm1_6 zmm1_6 zmm6_6; adds dc zmm1_7 zmm1_7 zmm6_7;
adds dc zmm1_8 zmm1_8 zmm6_8; adds dc zmm1_9 zmm1_9 zmm6_9;
adds dc zmm1_a zmm1_a zmm6_a; adds dc zmm1_b zmm1_b zmm6_b;
adds dc zmm1_c zmm1_c zmm6_c; adds dc zmm1_d zmm1_d zmm6_d;
adds dc zmm1_e zmm1_e zmm6_e; adds dc zmm1_f zmm1_f zmm6_f;
(* vpaddd %zmm7,%zmm2,%zmm2                        #! PC = 0x555555558334 *)
adds dc zmm2_0 zmm2_0 zmm7_0; adds dc zmm2_1 zmm2_1 zmm7_1;
adds dc zmm2_2 zmm2_2 zmm7_2; adds dc zmm2_3 zmm2_3 zmm7_3;
adds dc zmm2_4 zmm2_4 zmm7_4; adds dc zmm2_5 zmm2_5 zmm7_5;
adds dc zmm2_6 zmm2_6 zmm7_6; adds dc zmm2_7 zmm2_7 zmm7_7;
adds dc zmm2_8 zmm2_8 zmm7_8; adds dc zmm2_9 zmm2_9 zmm7_9;
adds dc zmm2_a zmm2_a zmm7_a; adds dc zmm2_b zmm2_b zmm7_b;
adds dc zmm2_c zmm2_c zmm7_c; adds dc zmm2_d zmm2_d zmm7_d;
adds dc zmm2_e zmm2_e zmm7_e; adds dc zmm2_f zmm2_f zmm7_f;
(* vpaddd %zmm4,%zmm3,%zmm3                        #! PC = 0x55555555833a *)
adds dc zmm3_0 zmm3_0 zmm4_0; adds dc zmm3_1 zmm3_1 zmm4_1;
adds dc zmm3_2 zmm3_2 zmm4_2; adds dc zmm3_3 zmm3_3 zmm4_3;
adds dc zmm3_4 zmm3_4 zmm4_4; adds dc zmm3_5 zmm3_5 zmm4_5;
adds dc zmm3_6 zmm3_6 zmm4_6; adds dc zmm3_7 zmm3_7 zmm4_7;
adds dc zmm3_8 zmm3_8 zmm4_8; adds dc zmm3_9 zmm3_9 zmm4_9;
adds dc zmm3_a zmm3_a zmm4_a; adds dc zmm3_b zmm3_b zmm4_b;
adds dc zmm3_c zmm3_c zmm4_c; adds dc zmm3_d zmm3_d zmm4_d;
adds dc zmm3_e zmm3_e zmm4_e; adds dc zmm3_f zmm3_f zmm4_f;
(* vpxord %zmm0,%zmm15,%zmm15                      #! PC = 0x555555558340 *)
xor zmm15_0@uint32 zmm15_0 zmm0_0; xor zmm15_1@uint32 zmm15_1 zmm0_1;
xor zmm15_2@uint32 zmm15_2 zmm0_2; xor zmm15_3@uint32 zmm15_3 zmm0_3;
xor zmm15_4@uint32 zmm15_4 zmm0_4; xor zmm15_5@uint32 zmm15_5 zmm0_5;
xor zmm15_6@uint32 zmm15_6 zmm0_6; xor zmm15_7@uint32 zmm15_7 zmm0_7;
xor zmm15_8@uint32 zmm15_8 zmm0_8; xor zmm15_9@uint32 zmm15_9 zmm0_9;
xor zmm15_a@uint32 zmm15_a zmm0_a; xor zmm15_b@uint32 zmm15_b zmm0_b;
xor zmm15_c@uint32 zmm15_c zmm0_c; xor zmm15_d@uint32 zmm15_d zmm0_d;
xor zmm15_e@uint32 zmm15_e zmm0_e; xor zmm15_f@uint32 zmm15_f zmm0_f;
(* vpxord %zmm1,%zmm12,%zmm12                      #! PC = 0x555555558346 *)
xor zmm12_0@uint32 zmm12_0 zmm1_0; xor zmm12_1@uint32 zmm12_1 zmm1_1;
xor zmm12_2@uint32 zmm12_2 zmm1_2; xor zmm12_3@uint32 zmm12_3 zmm1_3;
xor zmm12_4@uint32 zmm12_4 zmm1_4; xor zmm12_5@uint32 zmm12_5 zmm1_5;
xor zmm12_6@uint32 zmm12_6 zmm1_6; xor zmm12_7@uint32 zmm12_7 zmm1_7;
xor zmm12_8@uint32 zmm12_8 zmm1_8; xor zmm12_9@uint32 zmm12_9 zmm1_9;
xor zmm12_a@uint32 zmm12_a zmm1_a; xor zmm12_b@uint32 zmm12_b zmm1_b;
xor zmm12_c@uint32 zmm12_c zmm1_c; xor zmm12_d@uint32 zmm12_d zmm1_d;
xor zmm12_e@uint32 zmm12_e zmm1_e; xor zmm12_f@uint32 zmm12_f zmm1_f;
(* vpxord %zmm2,%zmm13,%zmm13                      #! PC = 0x55555555834c *)
xor zmm13_0@uint32 zmm13_0 zmm2_0; xor zmm13_1@uint32 zmm13_1 zmm2_1;
xor zmm13_2@uint32 zmm13_2 zmm2_2; xor zmm13_3@uint32 zmm13_3 zmm2_3;
xor zmm13_4@uint32 zmm13_4 zmm2_4; xor zmm13_5@uint32 zmm13_5 zmm2_5;
xor zmm13_6@uint32 zmm13_6 zmm2_6; xor zmm13_7@uint32 zmm13_7 zmm2_7;
xor zmm13_8@uint32 zmm13_8 zmm2_8; xor zmm13_9@uint32 zmm13_9 zmm2_9;
xor zmm13_a@uint32 zmm13_a zmm2_a; xor zmm13_b@uint32 zmm13_b zmm2_b;
xor zmm13_c@uint32 zmm13_c zmm2_c; xor zmm13_d@uint32 zmm13_d zmm2_d;
xor zmm13_e@uint32 zmm13_e zmm2_e; xor zmm13_f@uint32 zmm13_f zmm2_f;
(* vpxord %zmm3,%zmm14,%zmm14                      #! PC = 0x555555558352 *)
xor zmm14_0@uint32 zmm14_0 zmm3_0; xor zmm14_1@uint32 zmm14_1 zmm3_1;
xor zmm14_2@uint32 zmm14_2 zmm3_2; xor zmm14_3@uint32 zmm14_3 zmm3_3;
xor zmm14_4@uint32 zmm14_4 zmm3_4; xor zmm14_5@uint32 zmm14_5 zmm3_5;
xor zmm14_6@uint32 zmm14_6 zmm3_6; xor zmm14_7@uint32 zmm14_7 zmm3_7;
xor zmm14_8@uint32 zmm14_8 zmm3_8; xor zmm14_9@uint32 zmm14_9 zmm3_9;
xor zmm14_a@uint32 zmm14_a zmm3_a; xor zmm14_b@uint32 zmm14_b zmm3_b;
xor zmm14_c@uint32 zmm14_c zmm3_c; xor zmm14_d@uint32 zmm14_d zmm3_d;
xor zmm14_e@uint32 zmm14_e zmm3_e; xor zmm14_f@uint32 zmm14_f zmm3_f;
(* vprold $0x8,%zmm15,%zmm15                       #! PC = 0x555555558358 *)
rol zmm15_0@uint32 zmm15_0 0x8; rol zmm15_1@uint32 zmm15_1 0x8;
rol zmm15_2@uint32 zmm15_2 0x8; rol zmm15_3@uint32 zmm15_3 0x8;
rol zmm15_4@uint32 zmm15_4 0x8; rol zmm15_5@uint32 zmm15_5 0x8;
rol zmm15_6@uint32 zmm15_6 0x8; rol zmm15_7@uint32 zmm15_7 0x8;
rol zmm15_8@uint32 zmm15_8 0x8; rol zmm15_9@uint32 zmm15_9 0x8;
rol zmm15_a@uint32 zmm15_a 0x8; rol zmm15_b@uint32 zmm15_b 0x8;
rol zmm15_c@uint32 zmm15_c 0x8; rol zmm15_d@uint32 zmm15_d 0x8;
rol zmm15_e@uint32 zmm15_e 0x8; rol zmm15_f@uint32 zmm15_f 0x8;
(* vprold $0x8,%zmm12,%zmm12                       #! PC = 0x55555555835f *)
rol zmm12_0@uint32 zmm12_0 0x8; rol zmm12_1@uint32 zmm12_1 0x8;
rol zmm12_2@uint32 zmm12_2 0x8; rol zmm12_3@uint32 zmm12_3 0x8;
rol zmm12_4@uint32 zmm12_4 0x8; rol zmm12_5@uint32 zmm12_5 0x8;
rol zmm12_6@uint32 zmm12_6 0x8; rol zmm12_7@uint32 zmm12_7 0x8;
rol zmm12_8@uint32 zmm12_8 0x8; rol zmm12_9@uint32 zmm12_9 0x8;
rol zmm12_a@uint32 zmm12_a 0x8; rol zmm12_b@uint32 zmm12_b 0x8;
rol zmm12_c@uint32 zmm12_c 0x8; rol zmm12_d@uint32 zmm12_d 0x8;
rol zmm12_e@uint32 zmm12_e 0x8; rol zmm12_f@uint32 zmm12_f 0x8;
(* vprold $0x8,%zmm13,%zmm13                       #! PC = 0x555555558366 *)
rol zmm13_0@uint32 zmm13_0 0x8; rol zmm13_1@uint32 zmm13_1 0x8;
rol zmm13_2@uint32 zmm13_2 0x8; rol zmm13_3@uint32 zmm13_3 0x8;
rol zmm13_4@uint32 zmm13_4 0x8; rol zmm13_5@uint32 zmm13_5 0x8;
rol zmm13_6@uint32 zmm13_6 0x8; rol zmm13_7@uint32 zmm13_7 0x8;
rol zmm13_8@uint32 zmm13_8 0x8; rol zmm13_9@uint32 zmm13_9 0x8;
rol zmm13_a@uint32 zmm13_a 0x8; rol zmm13_b@uint32 zmm13_b 0x8;
rol zmm13_c@uint32 zmm13_c 0x8; rol zmm13_d@uint32 zmm13_d 0x8;
rol zmm13_e@uint32 zmm13_e 0x8; rol zmm13_f@uint32 zmm13_f 0x8;
(* vprold $0x8,%zmm14,%zmm14                       #! PC = 0x55555555836d *)
rol zmm14_0@uint32 zmm14_0 0x8; rol zmm14_1@uint32 zmm14_1 0x8;
rol zmm14_2@uint32 zmm14_2 0x8; rol zmm14_3@uint32 zmm14_3 0x8;
rol zmm14_4@uint32 zmm14_4 0x8; rol zmm14_5@uint32 zmm14_5 0x8;
rol zmm14_6@uint32 zmm14_6 0x8; rol zmm14_7@uint32 zmm14_7 0x8;
rol zmm14_8@uint32 zmm14_8 0x8; rol zmm14_9@uint32 zmm14_9 0x8;
rol zmm14_a@uint32 zmm14_a 0x8; rol zmm14_b@uint32 zmm14_b 0x8;
rol zmm14_c@uint32 zmm14_c 0x8; rol zmm14_d@uint32 zmm14_d 0x8;
rol zmm14_e@uint32 zmm14_e 0x8; rol zmm14_f@uint32 zmm14_f 0x8;
(* vpaddd %zmm15,%zmm10,%zmm10                     #! PC = 0x555555558374 *)
adds dc zmm10_0 zmm10_0 zmm15_0; adds dc zmm10_1 zmm10_1 zmm15_1;
adds dc zmm10_2 zmm10_2 zmm15_2; adds dc zmm10_3 zmm10_3 zmm15_3;
adds dc zmm10_4 zmm10_4 zmm15_4; adds dc zmm10_5 zmm10_5 zmm15_5;
adds dc zmm10_6 zmm10_6 zmm15_6; adds dc zmm10_7 zmm10_7 zmm15_7;
adds dc zmm10_8 zmm10_8 zmm15_8; adds dc zmm10_9 zmm10_9 zmm15_9;
adds dc zmm10_a zmm10_a zmm15_a; adds dc zmm10_b zmm10_b zmm15_b;
adds dc zmm10_c zmm10_c zmm15_c; adds dc zmm10_d zmm10_d zmm15_d;
adds dc zmm10_e zmm10_e zmm15_e; adds dc zmm10_f zmm10_f zmm15_f;
(* vpaddd %zmm12,%zmm11,%zmm11                     #! PC = 0x55555555837a *)
adds dc zmm11_0 zmm11_0 zmm12_0; adds dc zmm11_1 zmm11_1 zmm12_1;
adds dc zmm11_2 zmm11_2 zmm12_2; adds dc zmm11_3 zmm11_3 zmm12_3;
adds dc zmm11_4 zmm11_4 zmm12_4; adds dc zmm11_5 zmm11_5 zmm12_5;
adds dc zmm11_6 zmm11_6 zmm12_6; adds dc zmm11_7 zmm11_7 zmm12_7;
adds dc zmm11_8 zmm11_8 zmm12_8; adds dc zmm11_9 zmm11_9 zmm12_9;
adds dc zmm11_a zmm11_a zmm12_a; adds dc zmm11_b zmm11_b zmm12_b;
adds dc zmm11_c zmm11_c zmm12_c; adds dc zmm11_d zmm11_d zmm12_d;
adds dc zmm11_e zmm11_e zmm12_e; adds dc zmm11_f zmm11_f zmm12_f;
(* vpaddd %zmm13,%zmm8,%zmm8                       #! PC = 0x555555558380 *)
adds dc zmm8_0 zmm8_0 zmm13_0; adds dc zmm8_1 zmm8_1 zmm13_1;
adds dc zmm8_2 zmm8_2 zmm13_2; adds dc zmm8_3 zmm8_3 zmm13_3;
adds dc zmm8_4 zmm8_4 zmm13_4; adds dc zmm8_5 zmm8_5 zmm13_5;
adds dc zmm8_6 zmm8_6 zmm13_6; adds dc zmm8_7 zmm8_7 zmm13_7;
adds dc zmm8_8 zmm8_8 zmm13_8; adds dc zmm8_9 zmm8_9 zmm13_9;
adds dc zmm8_a zmm8_a zmm13_a; adds dc zmm8_b zmm8_b zmm13_b;
adds dc zmm8_c zmm8_c zmm13_c; adds dc zmm8_d zmm8_d zmm13_d;
adds dc zmm8_e zmm8_e zmm13_e; adds dc zmm8_f zmm8_f zmm13_f;
(* vpaddd %zmm14,%zmm9,%zmm9                       #! PC = 0x555555558386 *)
adds dc zmm9_0 zmm9_0 zmm14_0; adds dc zmm9_1 zmm9_1 zmm14_1;
adds dc zmm9_2 zmm9_2 zmm14_2; adds dc zmm9_3 zmm9_3 zmm14_3;
adds dc zmm9_4 zmm9_4 zmm14_4; adds dc zmm9_5 zmm9_5 zmm14_5;
adds dc zmm9_6 zmm9_6 zmm14_6; adds dc zmm9_7 zmm9_7 zmm14_7;
adds dc zmm9_8 zmm9_8 zmm14_8; adds dc zmm9_9 zmm9_9 zmm14_9;
adds dc zmm9_a zmm9_a zmm14_a; adds dc zmm9_b zmm9_b zmm14_b;
adds dc zmm9_c zmm9_c zmm14_c; adds dc zmm9_d zmm9_d zmm14_d;
adds dc zmm9_e zmm9_e zmm14_e; adds dc zmm9_f zmm9_f zmm14_f;
(* vpxord %zmm10,%zmm5,%zmm5                       #! PC = 0x55555555838c *)
xor zmm5_0@uint32 zmm5_0 zmm10_0; xor zmm5_1@uint32 zmm5_1 zmm10_1;
xor zmm5_2@uint32 zmm5_2 zmm10_2; xor zmm5_3@uint32 zmm5_3 zmm10_3;
xor zmm5_4@uint32 zmm5_4 zmm10_4; xor zmm5_5@uint32 zmm5_5 zmm10_5;
xor zmm5_6@uint32 zmm5_6 zmm10_6; xor zmm5_7@uint32 zmm5_7 zmm10_7;
xor zmm5_8@uint32 zmm5_8 zmm10_8; xor zmm5_9@uint32 zmm5_9 zmm10_9;
xor zmm5_a@uint32 zmm5_a zmm10_a; xor zmm5_b@uint32 zmm5_b zmm10_b;
xor zmm5_c@uint32 zmm5_c zmm10_c; xor zmm5_d@uint32 zmm5_d zmm10_d;
xor zmm5_e@uint32 zmm5_e zmm10_e; xor zmm5_f@uint32 zmm5_f zmm10_f;
(* vpxord %zmm11,%zmm6,%zmm6                       #! PC = 0x555555558392 *)
xor zmm6_0@uint32 zmm6_0 zmm11_0; xor zmm6_1@uint32 zmm6_1 zmm11_1;
xor zmm6_2@uint32 zmm6_2 zmm11_2; xor zmm6_3@uint32 zmm6_3 zmm11_3;
xor zmm6_4@uint32 zmm6_4 zmm11_4; xor zmm6_5@uint32 zmm6_5 zmm11_5;
xor zmm6_6@uint32 zmm6_6 zmm11_6; xor zmm6_7@uint32 zmm6_7 zmm11_7;
xor zmm6_8@uint32 zmm6_8 zmm11_8; xor zmm6_9@uint32 zmm6_9 zmm11_9;
xor zmm6_a@uint32 zmm6_a zmm11_a; xor zmm6_b@uint32 zmm6_b zmm11_b;
xor zmm6_c@uint32 zmm6_c zmm11_c; xor zmm6_d@uint32 zmm6_d zmm11_d;
xor zmm6_e@uint32 zmm6_e zmm11_e; xor zmm6_f@uint32 zmm6_f zmm11_f;
(* vpxord %zmm8,%zmm7,%zmm7                        #! PC = 0x555555558398 *)
xor zmm7_0@uint32 zmm7_0 zmm8_0; xor zmm7_1@uint32 zmm7_1 zmm8_1;
xor zmm7_2@uint32 zmm7_2 zmm8_2; xor zmm7_3@uint32 zmm7_3 zmm8_3;
xor zmm7_4@uint32 zmm7_4 zmm8_4; xor zmm7_5@uint32 zmm7_5 zmm8_5;
xor zmm7_6@uint32 zmm7_6 zmm8_6; xor zmm7_7@uint32 zmm7_7 zmm8_7;
xor zmm7_8@uint32 zmm7_8 zmm8_8; xor zmm7_9@uint32 zmm7_9 zmm8_9;
xor zmm7_a@uint32 zmm7_a zmm8_a; xor zmm7_b@uint32 zmm7_b zmm8_b;
xor zmm7_c@uint32 zmm7_c zmm8_c; xor zmm7_d@uint32 zmm7_d zmm8_d;
xor zmm7_e@uint32 zmm7_e zmm8_e; xor zmm7_f@uint32 zmm7_f zmm8_f;
(* vpxord %zmm9,%zmm4,%zmm4                        #! PC = 0x55555555839e *)
xor zmm4_0@uint32 zmm4_0 zmm9_0; xor zmm4_1@uint32 zmm4_1 zmm9_1;
xor zmm4_2@uint32 zmm4_2 zmm9_2; xor zmm4_3@uint32 zmm4_3 zmm9_3;
xor zmm4_4@uint32 zmm4_4 zmm9_4; xor zmm4_5@uint32 zmm4_5 zmm9_5;
xor zmm4_6@uint32 zmm4_6 zmm9_6; xor zmm4_7@uint32 zmm4_7 zmm9_7;
xor zmm4_8@uint32 zmm4_8 zmm9_8; xor zmm4_9@uint32 zmm4_9 zmm9_9;
xor zmm4_a@uint32 zmm4_a zmm9_a; xor zmm4_b@uint32 zmm4_b zmm9_b;
xor zmm4_c@uint32 zmm4_c zmm9_c; xor zmm4_d@uint32 zmm4_d zmm9_d;
xor zmm4_e@uint32 zmm4_e zmm9_e; xor zmm4_f@uint32 zmm4_f zmm9_f;
(* vprold $0x7,%zmm5,%zmm5                         #! PC = 0x5555555583a4 *)
rol zmm5_0@uint32 zmm5_0 0x7; rol zmm5_1@uint32 zmm5_1 0x7;
rol zmm5_2@uint32 zmm5_2 0x7; rol zmm5_3@uint32 zmm5_3 0x7;
rol zmm5_4@uint32 zmm5_4 0x7; rol zmm5_5@uint32 zmm5_5 0x7;
rol zmm5_6@uint32 zmm5_6 0x7; rol zmm5_7@uint32 zmm5_7 0x7;
rol zmm5_8@uint32 zmm5_8 0x7; rol zmm5_9@uint32 zmm5_9 0x7;
rol zmm5_a@uint32 zmm5_a 0x7; rol zmm5_b@uint32 zmm5_b 0x7;
rol zmm5_c@uint32 zmm5_c 0x7; rol zmm5_d@uint32 zmm5_d 0x7;
rol zmm5_e@uint32 zmm5_e 0x7; rol zmm5_f@uint32 zmm5_f 0x7;
(* vprold $0x7,%zmm6,%zmm6                         #! PC = 0x5555555583ab *)
rol zmm6_0@uint32 zmm6_0 0x7; rol zmm6_1@uint32 zmm6_1 0x7;
rol zmm6_2@uint32 zmm6_2 0x7; rol zmm6_3@uint32 zmm6_3 0x7;
rol zmm6_4@uint32 zmm6_4 0x7; rol zmm6_5@uint32 zmm6_5 0x7;
rol zmm6_6@uint32 zmm6_6 0x7; rol zmm6_7@uint32 zmm6_7 0x7;
rol zmm6_8@uint32 zmm6_8 0x7; rol zmm6_9@uint32 zmm6_9 0x7;
rol zmm6_a@uint32 zmm6_a 0x7; rol zmm6_b@uint32 zmm6_b 0x7;
rol zmm6_c@uint32 zmm6_c 0x7; rol zmm6_d@uint32 zmm6_d 0x7;
rol zmm6_e@uint32 zmm6_e 0x7; rol zmm6_f@uint32 zmm6_f 0x7;
(* vprold $0x7,%zmm7,%zmm7                         #! PC = 0x5555555583b2 *)
rol zmm7_0@uint32 zmm7_0 0x7; rol zmm7_1@uint32 zmm7_1 0x7;
rol zmm7_2@uint32 zmm7_2 0x7; rol zmm7_3@uint32 zmm7_3 0x7;
rol zmm7_4@uint32 zmm7_4 0x7; rol zmm7_5@uint32 zmm7_5 0x7;
rol zmm7_6@uint32 zmm7_6 0x7; rol zmm7_7@uint32 zmm7_7 0x7;
rol zmm7_8@uint32 zmm7_8 0x7; rol zmm7_9@uint32 zmm7_9 0x7;
rol zmm7_a@uint32 zmm7_a 0x7; rol zmm7_b@uint32 zmm7_b 0x7;
rol zmm7_c@uint32 zmm7_c 0x7; rol zmm7_d@uint32 zmm7_d 0x7;
rol zmm7_e@uint32 zmm7_e 0x7; rol zmm7_f@uint32 zmm7_f 0x7;
(* vprold $0x7,%zmm4,%zmm4                         #! PC = 0x5555555583b9 *)
rol zmm4_0@uint32 zmm4_0 0x7; rol zmm4_1@uint32 zmm4_1 0x7;
rol zmm4_2@uint32 zmm4_2 0x7; rol zmm4_3@uint32 zmm4_3 0x7;
rol zmm4_4@uint32 zmm4_4 0x7; rol zmm4_5@uint32 zmm4_5 0x7;
rol zmm4_6@uint32 zmm4_6 0x7; rol zmm4_7@uint32 zmm4_7 0x7;
rol zmm4_8@uint32 zmm4_8 0x7; rol zmm4_9@uint32 zmm4_9 0x7;
rol zmm4_a@uint32 zmm4_a 0x7; rol zmm4_b@uint32 zmm4_b 0x7;
rol zmm4_c@uint32 zmm4_c 0x7; rol zmm4_d@uint32 zmm4_d 0x7;
rol zmm4_e@uint32 zmm4_e 0x7; rol zmm4_f@uint32 zmm4_f 0x7;
(* dec    %eax                                     #! PC = 0x5555555583c0 *)
(* dec %eax *)
nop;
(* #jne    0x555555558160 <ChaCha20_16x+448>       #! PC = 0x5555555583c2 *)
#jne    0x555555558160 <ChaCha20_16x+448>       #! 0x5555555583c2 = 0x5555555583c2;
(* vpaddd %zmm4,%zmm0,%zmm0                        #! PC = 0x555555558160 *)
adds dc zmm0_0 zmm0_0 zmm4_0; adds dc zmm0_1 zmm0_1 zmm4_1;
adds dc zmm0_2 zmm0_2 zmm4_2; adds dc zmm0_3 zmm0_3 zmm4_3;
adds dc zmm0_4 zmm0_4 zmm4_4; adds dc zmm0_5 zmm0_5 zmm4_5;
adds dc zmm0_6 zmm0_6 zmm4_6; adds dc zmm0_7 zmm0_7 zmm4_7;
adds dc zmm0_8 zmm0_8 zmm4_8; adds dc zmm0_9 zmm0_9 zmm4_9;
adds dc zmm0_a zmm0_a zmm4_a; adds dc zmm0_b zmm0_b zmm4_b;
adds dc zmm0_c zmm0_c zmm4_c; adds dc zmm0_d zmm0_d zmm4_d;
adds dc zmm0_e zmm0_e zmm4_e; adds dc zmm0_f zmm0_f zmm4_f;
(* vpaddd %zmm5,%zmm1,%zmm1                        #! PC = 0x555555558166 *)
adds dc zmm1_0 zmm1_0 zmm5_0; adds dc zmm1_1 zmm1_1 zmm5_1;
adds dc zmm1_2 zmm1_2 zmm5_2; adds dc zmm1_3 zmm1_3 zmm5_3;
adds dc zmm1_4 zmm1_4 zmm5_4; adds dc zmm1_5 zmm1_5 zmm5_5;
adds dc zmm1_6 zmm1_6 zmm5_6; adds dc zmm1_7 zmm1_7 zmm5_7;
adds dc zmm1_8 zmm1_8 zmm5_8; adds dc zmm1_9 zmm1_9 zmm5_9;
adds dc zmm1_a zmm1_a zmm5_a; adds dc zmm1_b zmm1_b zmm5_b;
adds dc zmm1_c zmm1_c zmm5_c; adds dc zmm1_d zmm1_d zmm5_d;
adds dc zmm1_e zmm1_e zmm5_e; adds dc zmm1_f zmm1_f zmm5_f;
(* vpaddd %zmm6,%zmm2,%zmm2                        #! PC = 0x55555555816c *)
adds dc zmm2_0 zmm2_0 zmm6_0; adds dc zmm2_1 zmm2_1 zmm6_1;
adds dc zmm2_2 zmm2_2 zmm6_2; adds dc zmm2_3 zmm2_3 zmm6_3;
adds dc zmm2_4 zmm2_4 zmm6_4; adds dc zmm2_5 zmm2_5 zmm6_5;
adds dc zmm2_6 zmm2_6 zmm6_6; adds dc zmm2_7 zmm2_7 zmm6_7;
adds dc zmm2_8 zmm2_8 zmm6_8; adds dc zmm2_9 zmm2_9 zmm6_9;
adds dc zmm2_a zmm2_a zmm6_a; adds dc zmm2_b zmm2_b zmm6_b;
adds dc zmm2_c zmm2_c zmm6_c; adds dc zmm2_d zmm2_d zmm6_d;
adds dc zmm2_e zmm2_e zmm6_e; adds dc zmm2_f zmm2_f zmm6_f;
(* vpaddd %zmm7,%zmm3,%zmm3                        #! PC = 0x555555558172 *)
adds dc zmm3_0 zmm3_0 zmm7_0; adds dc zmm3_1 zmm3_1 zmm7_1;
adds dc zmm3_2 zmm3_2 zmm7_2; adds dc zmm3_3 zmm3_3 zmm7_3;
adds dc zmm3_4 zmm3_4 zmm7_4; adds dc zmm3_5 zmm3_5 zmm7_5;
adds dc zmm3_6 zmm3_6 zmm7_6; adds dc zmm3_7 zmm3_7 zmm7_7;
adds dc zmm3_8 zmm3_8 zmm7_8; adds dc zmm3_9 zmm3_9 zmm7_9;
adds dc zmm3_a zmm3_a zmm7_a; adds dc zmm3_b zmm3_b zmm7_b;
adds dc zmm3_c zmm3_c zmm7_c; adds dc zmm3_d zmm3_d zmm7_d;
adds dc zmm3_e zmm3_e zmm7_e; adds dc zmm3_f zmm3_f zmm7_f;
(* vpxord %zmm0,%zmm12,%zmm12                      #! PC = 0x555555558178 *)
xor zmm12_0@uint32 zmm12_0 zmm0_0; xor zmm12_1@uint32 zmm12_1 zmm0_1;
xor zmm12_2@uint32 zmm12_2 zmm0_2; xor zmm12_3@uint32 zmm12_3 zmm0_3;
xor zmm12_4@uint32 zmm12_4 zmm0_4; xor zmm12_5@uint32 zmm12_5 zmm0_5;
xor zmm12_6@uint32 zmm12_6 zmm0_6; xor zmm12_7@uint32 zmm12_7 zmm0_7;
xor zmm12_8@uint32 zmm12_8 zmm0_8; xor zmm12_9@uint32 zmm12_9 zmm0_9;
xor zmm12_a@uint32 zmm12_a zmm0_a; xor zmm12_b@uint32 zmm12_b zmm0_b;
xor zmm12_c@uint32 zmm12_c zmm0_c; xor zmm12_d@uint32 zmm12_d zmm0_d;
xor zmm12_e@uint32 zmm12_e zmm0_e; xor zmm12_f@uint32 zmm12_f zmm0_f;
(* vpxord %zmm1,%zmm13,%zmm13                      #! PC = 0x55555555817e *)
xor zmm13_0@uint32 zmm13_0 zmm1_0; xor zmm13_1@uint32 zmm13_1 zmm1_1;
xor zmm13_2@uint32 zmm13_2 zmm1_2; xor zmm13_3@uint32 zmm13_3 zmm1_3;
xor zmm13_4@uint32 zmm13_4 zmm1_4; xor zmm13_5@uint32 zmm13_5 zmm1_5;
xor zmm13_6@uint32 zmm13_6 zmm1_6; xor zmm13_7@uint32 zmm13_7 zmm1_7;
xor zmm13_8@uint32 zmm13_8 zmm1_8; xor zmm13_9@uint32 zmm13_9 zmm1_9;
xor zmm13_a@uint32 zmm13_a zmm1_a; xor zmm13_b@uint32 zmm13_b zmm1_b;
xor zmm13_c@uint32 zmm13_c zmm1_c; xor zmm13_d@uint32 zmm13_d zmm1_d;
xor zmm13_e@uint32 zmm13_e zmm1_e; xor zmm13_f@uint32 zmm13_f zmm1_f;
(* vpxord %zmm2,%zmm14,%zmm14                      #! PC = 0x555555558184 *)
xor zmm14_0@uint32 zmm14_0 zmm2_0; xor zmm14_1@uint32 zmm14_1 zmm2_1;
xor zmm14_2@uint32 zmm14_2 zmm2_2; xor zmm14_3@uint32 zmm14_3 zmm2_3;
xor zmm14_4@uint32 zmm14_4 zmm2_4; xor zmm14_5@uint32 zmm14_5 zmm2_5;
xor zmm14_6@uint32 zmm14_6 zmm2_6; xor zmm14_7@uint32 zmm14_7 zmm2_7;
xor zmm14_8@uint32 zmm14_8 zmm2_8; xor zmm14_9@uint32 zmm14_9 zmm2_9;
xor zmm14_a@uint32 zmm14_a zmm2_a; xor zmm14_b@uint32 zmm14_b zmm2_b;
xor zmm14_c@uint32 zmm14_c zmm2_c; xor zmm14_d@uint32 zmm14_d zmm2_d;
xor zmm14_e@uint32 zmm14_e zmm2_e; xor zmm14_f@uint32 zmm14_f zmm2_f;
(* vpxord %zmm3,%zmm15,%zmm15                      #! PC = 0x55555555818a *)
xor zmm15_0@uint32 zmm15_0 zmm3_0; xor zmm15_1@uint32 zmm15_1 zmm3_1;
xor zmm15_2@uint32 zmm15_2 zmm3_2; xor zmm15_3@uint32 zmm15_3 zmm3_3;
xor zmm15_4@uint32 zmm15_4 zmm3_4; xor zmm15_5@uint32 zmm15_5 zmm3_5;
xor zmm15_6@uint32 zmm15_6 zmm3_6; xor zmm15_7@uint32 zmm15_7 zmm3_7;
xor zmm15_8@uint32 zmm15_8 zmm3_8; xor zmm15_9@uint32 zmm15_9 zmm3_9;
xor zmm15_a@uint32 zmm15_a zmm3_a; xor zmm15_b@uint32 zmm15_b zmm3_b;
xor zmm15_c@uint32 zmm15_c zmm3_c; xor zmm15_d@uint32 zmm15_d zmm3_d;
xor zmm15_e@uint32 zmm15_e zmm3_e; xor zmm15_f@uint32 zmm15_f zmm3_f;
(* vprold $0x10,%zmm12,%zmm12                      #! PC = 0x555555558190 *)
rol zmm12_0@uint32 zmm12_0 0x10; rol zmm12_1@uint32 zmm12_1 0x10;
rol zmm12_2@uint32 zmm12_2 0x10; rol zmm12_3@uint32 zmm12_3 0x10;
rol zmm12_4@uint32 zmm12_4 0x10; rol zmm12_5@uint32 zmm12_5 0x10;
rol zmm12_6@uint32 zmm12_6 0x10; rol zmm12_7@uint32 zmm12_7 0x10;
rol zmm12_8@uint32 zmm12_8 0x10; rol zmm12_9@uint32 zmm12_9 0x10;
rol zmm12_a@uint32 zmm12_a 0x10; rol zmm12_b@uint32 zmm12_b 0x10;
rol zmm12_c@uint32 zmm12_c 0x10; rol zmm12_d@uint32 zmm12_d 0x10;
rol zmm12_e@uint32 zmm12_e 0x10; rol zmm12_f@uint32 zmm12_f 0x10;
(* vprold $0x10,%zmm13,%zmm13                      #! PC = 0x555555558197 *)
rol zmm13_0@uint32 zmm13_0 0x10; rol zmm13_1@uint32 zmm13_1 0x10;
rol zmm13_2@uint32 zmm13_2 0x10; rol zmm13_3@uint32 zmm13_3 0x10;
rol zmm13_4@uint32 zmm13_4 0x10; rol zmm13_5@uint32 zmm13_5 0x10;
rol zmm13_6@uint32 zmm13_6 0x10; rol zmm13_7@uint32 zmm13_7 0x10;
rol zmm13_8@uint32 zmm13_8 0x10; rol zmm13_9@uint32 zmm13_9 0x10;
rol zmm13_a@uint32 zmm13_a 0x10; rol zmm13_b@uint32 zmm13_b 0x10;
rol zmm13_c@uint32 zmm13_c 0x10; rol zmm13_d@uint32 zmm13_d 0x10;
rol zmm13_e@uint32 zmm13_e 0x10; rol zmm13_f@uint32 zmm13_f 0x10;
(* vprold $0x10,%zmm14,%zmm14                      #! PC = 0x55555555819e *)
rol zmm14_0@uint32 zmm14_0 0x10; rol zmm14_1@uint32 zmm14_1 0x10;
rol zmm14_2@uint32 zmm14_2 0x10; rol zmm14_3@uint32 zmm14_3 0x10;
rol zmm14_4@uint32 zmm14_4 0x10; rol zmm14_5@uint32 zmm14_5 0x10;
rol zmm14_6@uint32 zmm14_6 0x10; rol zmm14_7@uint32 zmm14_7 0x10;
rol zmm14_8@uint32 zmm14_8 0x10; rol zmm14_9@uint32 zmm14_9 0x10;
rol zmm14_a@uint32 zmm14_a 0x10; rol zmm14_b@uint32 zmm14_b 0x10;
rol zmm14_c@uint32 zmm14_c 0x10; rol zmm14_d@uint32 zmm14_d 0x10;
rol zmm14_e@uint32 zmm14_e 0x10; rol zmm14_f@uint32 zmm14_f 0x10;
(* vprold $0x10,%zmm15,%zmm15                      #! PC = 0x5555555581a5 *)
rol zmm15_0@uint32 zmm15_0 0x10; rol zmm15_1@uint32 zmm15_1 0x10;
rol zmm15_2@uint32 zmm15_2 0x10; rol zmm15_3@uint32 zmm15_3 0x10;
rol zmm15_4@uint32 zmm15_4 0x10; rol zmm15_5@uint32 zmm15_5 0x10;
rol zmm15_6@uint32 zmm15_6 0x10; rol zmm15_7@uint32 zmm15_7 0x10;
rol zmm15_8@uint32 zmm15_8 0x10; rol zmm15_9@uint32 zmm15_9 0x10;
rol zmm15_a@uint32 zmm15_a 0x10; rol zmm15_b@uint32 zmm15_b 0x10;
rol zmm15_c@uint32 zmm15_c 0x10; rol zmm15_d@uint32 zmm15_d 0x10;
rol zmm15_e@uint32 zmm15_e 0x10; rol zmm15_f@uint32 zmm15_f 0x10;
(* vpaddd %zmm12,%zmm8,%zmm8                       #! PC = 0x5555555581ac *)
adds dc zmm8_0 zmm8_0 zmm12_0; adds dc zmm8_1 zmm8_1 zmm12_1;
adds dc zmm8_2 zmm8_2 zmm12_2; adds dc zmm8_3 zmm8_3 zmm12_3;
adds dc zmm8_4 zmm8_4 zmm12_4; adds dc zmm8_5 zmm8_5 zmm12_5;
adds dc zmm8_6 zmm8_6 zmm12_6; adds dc zmm8_7 zmm8_7 zmm12_7;
adds dc zmm8_8 zmm8_8 zmm12_8; adds dc zmm8_9 zmm8_9 zmm12_9;
adds dc zmm8_a zmm8_a zmm12_a; adds dc zmm8_b zmm8_b zmm12_b;
adds dc zmm8_c zmm8_c zmm12_c; adds dc zmm8_d zmm8_d zmm12_d;
adds dc zmm8_e zmm8_e zmm12_e; adds dc zmm8_f zmm8_f zmm12_f;
(* vpaddd %zmm13,%zmm9,%zmm9                       #! PC = 0x5555555581b2 *)
adds dc zmm9_0 zmm9_0 zmm13_0; adds dc zmm9_1 zmm9_1 zmm13_1;
adds dc zmm9_2 zmm9_2 zmm13_2; adds dc zmm9_3 zmm9_3 zmm13_3;
adds dc zmm9_4 zmm9_4 zmm13_4; adds dc zmm9_5 zmm9_5 zmm13_5;
adds dc zmm9_6 zmm9_6 zmm13_6; adds dc zmm9_7 zmm9_7 zmm13_7;
adds dc zmm9_8 zmm9_8 zmm13_8; adds dc zmm9_9 zmm9_9 zmm13_9;
adds dc zmm9_a zmm9_a zmm13_a; adds dc zmm9_b zmm9_b zmm13_b;
adds dc zmm9_c zmm9_c zmm13_c; adds dc zmm9_d zmm9_d zmm13_d;
adds dc zmm9_e zmm9_e zmm13_e; adds dc zmm9_f zmm9_f zmm13_f;
(* vpaddd %zmm14,%zmm10,%zmm10                     #! PC = 0x5555555581b8 *)
adds dc zmm10_0 zmm10_0 zmm14_0; adds dc zmm10_1 zmm10_1 zmm14_1;
adds dc zmm10_2 zmm10_2 zmm14_2; adds dc zmm10_3 zmm10_3 zmm14_3;
adds dc zmm10_4 zmm10_4 zmm14_4; adds dc zmm10_5 zmm10_5 zmm14_5;
adds dc zmm10_6 zmm10_6 zmm14_6; adds dc zmm10_7 zmm10_7 zmm14_7;
adds dc zmm10_8 zmm10_8 zmm14_8; adds dc zmm10_9 zmm10_9 zmm14_9;
adds dc zmm10_a zmm10_a zmm14_a; adds dc zmm10_b zmm10_b zmm14_b;
adds dc zmm10_c zmm10_c zmm14_c; adds dc zmm10_d zmm10_d zmm14_d;
adds dc zmm10_e zmm10_e zmm14_e; adds dc zmm10_f zmm10_f zmm14_f;
(* vpaddd %zmm15,%zmm11,%zmm11                     #! PC = 0x5555555581be *)
adds dc zmm11_0 zmm11_0 zmm15_0; adds dc zmm11_1 zmm11_1 zmm15_1;
adds dc zmm11_2 zmm11_2 zmm15_2; adds dc zmm11_3 zmm11_3 zmm15_3;
adds dc zmm11_4 zmm11_4 zmm15_4; adds dc zmm11_5 zmm11_5 zmm15_5;
adds dc zmm11_6 zmm11_6 zmm15_6; adds dc zmm11_7 zmm11_7 zmm15_7;
adds dc zmm11_8 zmm11_8 zmm15_8; adds dc zmm11_9 zmm11_9 zmm15_9;
adds dc zmm11_a zmm11_a zmm15_a; adds dc zmm11_b zmm11_b zmm15_b;
adds dc zmm11_c zmm11_c zmm15_c; adds dc zmm11_d zmm11_d zmm15_d;
adds dc zmm11_e zmm11_e zmm15_e; adds dc zmm11_f zmm11_f zmm15_f;
(* vpxord %zmm8,%zmm4,%zmm4                        #! PC = 0x5555555581c4 *)
xor zmm4_0@uint32 zmm4_0 zmm8_0; xor zmm4_1@uint32 zmm4_1 zmm8_1;
xor zmm4_2@uint32 zmm4_2 zmm8_2; xor zmm4_3@uint32 zmm4_3 zmm8_3;
xor zmm4_4@uint32 zmm4_4 zmm8_4; xor zmm4_5@uint32 zmm4_5 zmm8_5;
xor zmm4_6@uint32 zmm4_6 zmm8_6; xor zmm4_7@uint32 zmm4_7 zmm8_7;
xor zmm4_8@uint32 zmm4_8 zmm8_8; xor zmm4_9@uint32 zmm4_9 zmm8_9;
xor zmm4_a@uint32 zmm4_a zmm8_a; xor zmm4_b@uint32 zmm4_b zmm8_b;
xor zmm4_c@uint32 zmm4_c zmm8_c; xor zmm4_d@uint32 zmm4_d zmm8_d;
xor zmm4_e@uint32 zmm4_e zmm8_e; xor zmm4_f@uint32 zmm4_f zmm8_f;
(* vpxord %zmm9,%zmm5,%zmm5                        #! PC = 0x5555555581ca *)
xor zmm5_0@uint32 zmm5_0 zmm9_0; xor zmm5_1@uint32 zmm5_1 zmm9_1;
xor zmm5_2@uint32 zmm5_2 zmm9_2; xor zmm5_3@uint32 zmm5_3 zmm9_3;
xor zmm5_4@uint32 zmm5_4 zmm9_4; xor zmm5_5@uint32 zmm5_5 zmm9_5;
xor zmm5_6@uint32 zmm5_6 zmm9_6; xor zmm5_7@uint32 zmm5_7 zmm9_7;
xor zmm5_8@uint32 zmm5_8 zmm9_8; xor zmm5_9@uint32 zmm5_9 zmm9_9;
xor zmm5_a@uint32 zmm5_a zmm9_a; xor zmm5_b@uint32 zmm5_b zmm9_b;
xor zmm5_c@uint32 zmm5_c zmm9_c; xor zmm5_d@uint32 zmm5_d zmm9_d;
xor zmm5_e@uint32 zmm5_e zmm9_e; xor zmm5_f@uint32 zmm5_f zmm9_f;
(* vpxord %zmm10,%zmm6,%zmm6                       #! PC = 0x5555555581d0 *)
xor zmm6_0@uint32 zmm6_0 zmm10_0; xor zmm6_1@uint32 zmm6_1 zmm10_1;
xor zmm6_2@uint32 zmm6_2 zmm10_2; xor zmm6_3@uint32 zmm6_3 zmm10_3;
xor zmm6_4@uint32 zmm6_4 zmm10_4; xor zmm6_5@uint32 zmm6_5 zmm10_5;
xor zmm6_6@uint32 zmm6_6 zmm10_6; xor zmm6_7@uint32 zmm6_7 zmm10_7;
xor zmm6_8@uint32 zmm6_8 zmm10_8; xor zmm6_9@uint32 zmm6_9 zmm10_9;
xor zmm6_a@uint32 zmm6_a zmm10_a; xor zmm6_b@uint32 zmm6_b zmm10_b;
xor zmm6_c@uint32 zmm6_c zmm10_c; xor zmm6_d@uint32 zmm6_d zmm10_d;
xor zmm6_e@uint32 zmm6_e zmm10_e; xor zmm6_f@uint32 zmm6_f zmm10_f;
(* vpxord %zmm11,%zmm7,%zmm7                       #! PC = 0x5555555581d6 *)
xor zmm7_0@uint32 zmm7_0 zmm11_0; xor zmm7_1@uint32 zmm7_1 zmm11_1;
xor zmm7_2@uint32 zmm7_2 zmm11_2; xor zmm7_3@uint32 zmm7_3 zmm11_3;
xor zmm7_4@uint32 zmm7_4 zmm11_4; xor zmm7_5@uint32 zmm7_5 zmm11_5;
xor zmm7_6@uint32 zmm7_6 zmm11_6; xor zmm7_7@uint32 zmm7_7 zmm11_7;
xor zmm7_8@uint32 zmm7_8 zmm11_8; xor zmm7_9@uint32 zmm7_9 zmm11_9;
xor zmm7_a@uint32 zmm7_a zmm11_a; xor zmm7_b@uint32 zmm7_b zmm11_b;
xor zmm7_c@uint32 zmm7_c zmm11_c; xor zmm7_d@uint32 zmm7_d zmm11_d;
xor zmm7_e@uint32 zmm7_e zmm11_e; xor zmm7_f@uint32 zmm7_f zmm11_f;
(* vprold $0xc,%zmm4,%zmm4                         #! PC = 0x5555555581dc *)
rol zmm4_0@uint32 zmm4_0 0xc; rol zmm4_1@uint32 zmm4_1 0xc;
rol zmm4_2@uint32 zmm4_2 0xc; rol zmm4_3@uint32 zmm4_3 0xc;
rol zmm4_4@uint32 zmm4_4 0xc; rol zmm4_5@uint32 zmm4_5 0xc;
rol zmm4_6@uint32 zmm4_6 0xc; rol zmm4_7@uint32 zmm4_7 0xc;
rol zmm4_8@uint32 zmm4_8 0xc; rol zmm4_9@uint32 zmm4_9 0xc;
rol zmm4_a@uint32 zmm4_a 0xc; rol zmm4_b@uint32 zmm4_b 0xc;
rol zmm4_c@uint32 zmm4_c 0xc; rol zmm4_d@uint32 zmm4_d 0xc;
rol zmm4_e@uint32 zmm4_e 0xc; rol zmm4_f@uint32 zmm4_f 0xc;
(* vprold $0xc,%zmm5,%zmm5                         #! PC = 0x5555555581e3 *)
rol zmm5_0@uint32 zmm5_0 0xc; rol zmm5_1@uint32 zmm5_1 0xc;
rol zmm5_2@uint32 zmm5_2 0xc; rol zmm5_3@uint32 zmm5_3 0xc;
rol zmm5_4@uint32 zmm5_4 0xc; rol zmm5_5@uint32 zmm5_5 0xc;
rol zmm5_6@uint32 zmm5_6 0xc; rol zmm5_7@uint32 zmm5_7 0xc;
rol zmm5_8@uint32 zmm5_8 0xc; rol zmm5_9@uint32 zmm5_9 0xc;
rol zmm5_a@uint32 zmm5_a 0xc; rol zmm5_b@uint32 zmm5_b 0xc;
rol zmm5_c@uint32 zmm5_c 0xc; rol zmm5_d@uint32 zmm5_d 0xc;
rol zmm5_e@uint32 zmm5_e 0xc; rol zmm5_f@uint32 zmm5_f 0xc;
(* vprold $0xc,%zmm6,%zmm6                         #! PC = 0x5555555581ea *)
rol zmm6_0@uint32 zmm6_0 0xc; rol zmm6_1@uint32 zmm6_1 0xc;
rol zmm6_2@uint32 zmm6_2 0xc; rol zmm6_3@uint32 zmm6_3 0xc;
rol zmm6_4@uint32 zmm6_4 0xc; rol zmm6_5@uint32 zmm6_5 0xc;
rol zmm6_6@uint32 zmm6_6 0xc; rol zmm6_7@uint32 zmm6_7 0xc;
rol zmm6_8@uint32 zmm6_8 0xc; rol zmm6_9@uint32 zmm6_9 0xc;
rol zmm6_a@uint32 zmm6_a 0xc; rol zmm6_b@uint32 zmm6_b 0xc;
rol zmm6_c@uint32 zmm6_c 0xc; rol zmm6_d@uint32 zmm6_d 0xc;
rol zmm6_e@uint32 zmm6_e 0xc; rol zmm6_f@uint32 zmm6_f 0xc;
(* vprold $0xc,%zmm7,%zmm7                         #! PC = 0x5555555581f1 *)
rol zmm7_0@uint32 zmm7_0 0xc; rol zmm7_1@uint32 zmm7_1 0xc;
rol zmm7_2@uint32 zmm7_2 0xc; rol zmm7_3@uint32 zmm7_3 0xc;
rol zmm7_4@uint32 zmm7_4 0xc; rol zmm7_5@uint32 zmm7_5 0xc;
rol zmm7_6@uint32 zmm7_6 0xc; rol zmm7_7@uint32 zmm7_7 0xc;
rol zmm7_8@uint32 zmm7_8 0xc; rol zmm7_9@uint32 zmm7_9 0xc;
rol zmm7_a@uint32 zmm7_a 0xc; rol zmm7_b@uint32 zmm7_b 0xc;
rol zmm7_c@uint32 zmm7_c 0xc; rol zmm7_d@uint32 zmm7_d 0xc;
rol zmm7_e@uint32 zmm7_e 0xc; rol zmm7_f@uint32 zmm7_f 0xc;
(* vpaddd %zmm4,%zmm0,%zmm0                        #! PC = 0x5555555581f8 *)
adds dc zmm0_0 zmm0_0 zmm4_0; adds dc zmm0_1 zmm0_1 zmm4_1;
adds dc zmm0_2 zmm0_2 zmm4_2; adds dc zmm0_3 zmm0_3 zmm4_3;
adds dc zmm0_4 zmm0_4 zmm4_4; adds dc zmm0_5 zmm0_5 zmm4_5;
adds dc zmm0_6 zmm0_6 zmm4_6; adds dc zmm0_7 zmm0_7 zmm4_7;
adds dc zmm0_8 zmm0_8 zmm4_8; adds dc zmm0_9 zmm0_9 zmm4_9;
adds dc zmm0_a zmm0_a zmm4_a; adds dc zmm0_b zmm0_b zmm4_b;
adds dc zmm0_c zmm0_c zmm4_c; adds dc zmm0_d zmm0_d zmm4_d;
adds dc zmm0_e zmm0_e zmm4_e; adds dc zmm0_f zmm0_f zmm4_f;
(* vpaddd %zmm5,%zmm1,%zmm1                        #! PC = 0x5555555581fe *)
adds dc zmm1_0 zmm1_0 zmm5_0; adds dc zmm1_1 zmm1_1 zmm5_1;
adds dc zmm1_2 zmm1_2 zmm5_2; adds dc zmm1_3 zmm1_3 zmm5_3;
adds dc zmm1_4 zmm1_4 zmm5_4; adds dc zmm1_5 zmm1_5 zmm5_5;
adds dc zmm1_6 zmm1_6 zmm5_6; adds dc zmm1_7 zmm1_7 zmm5_7;
adds dc zmm1_8 zmm1_8 zmm5_8; adds dc zmm1_9 zmm1_9 zmm5_9;
adds dc zmm1_a zmm1_a zmm5_a; adds dc zmm1_b zmm1_b zmm5_b;
adds dc zmm1_c zmm1_c zmm5_c; adds dc zmm1_d zmm1_d zmm5_d;
adds dc zmm1_e zmm1_e zmm5_e; adds dc zmm1_f zmm1_f zmm5_f;
(* vpaddd %zmm6,%zmm2,%zmm2                        #! PC = 0x555555558204 *)
adds dc zmm2_0 zmm2_0 zmm6_0; adds dc zmm2_1 zmm2_1 zmm6_1;
adds dc zmm2_2 zmm2_2 zmm6_2; adds dc zmm2_3 zmm2_3 zmm6_3;
adds dc zmm2_4 zmm2_4 zmm6_4; adds dc zmm2_5 zmm2_5 zmm6_5;
adds dc zmm2_6 zmm2_6 zmm6_6; adds dc zmm2_7 zmm2_7 zmm6_7;
adds dc zmm2_8 zmm2_8 zmm6_8; adds dc zmm2_9 zmm2_9 zmm6_9;
adds dc zmm2_a zmm2_a zmm6_a; adds dc zmm2_b zmm2_b zmm6_b;
adds dc zmm2_c zmm2_c zmm6_c; adds dc zmm2_d zmm2_d zmm6_d;
adds dc zmm2_e zmm2_e zmm6_e; adds dc zmm2_f zmm2_f zmm6_f;
(* vpaddd %zmm7,%zmm3,%zmm3                        #! PC = 0x55555555820a *)
adds dc zmm3_0 zmm3_0 zmm7_0; adds dc zmm3_1 zmm3_1 zmm7_1;
adds dc zmm3_2 zmm3_2 zmm7_2; adds dc zmm3_3 zmm3_3 zmm7_3;
adds dc zmm3_4 zmm3_4 zmm7_4; adds dc zmm3_5 zmm3_5 zmm7_5;
adds dc zmm3_6 zmm3_6 zmm7_6; adds dc zmm3_7 zmm3_7 zmm7_7;
adds dc zmm3_8 zmm3_8 zmm7_8; adds dc zmm3_9 zmm3_9 zmm7_9;
adds dc zmm3_a zmm3_a zmm7_a; adds dc zmm3_b zmm3_b zmm7_b;
adds dc zmm3_c zmm3_c zmm7_c; adds dc zmm3_d zmm3_d zmm7_d;
adds dc zmm3_e zmm3_e zmm7_e; adds dc zmm3_f zmm3_f zmm7_f;
(* vpxord %zmm0,%zmm12,%zmm12                      #! PC = 0x555555558210 *)
xor zmm12_0@uint32 zmm12_0 zmm0_0; xor zmm12_1@uint32 zmm12_1 zmm0_1;
xor zmm12_2@uint32 zmm12_2 zmm0_2; xor zmm12_3@uint32 zmm12_3 zmm0_3;
xor zmm12_4@uint32 zmm12_4 zmm0_4; xor zmm12_5@uint32 zmm12_5 zmm0_5;
xor zmm12_6@uint32 zmm12_6 zmm0_6; xor zmm12_7@uint32 zmm12_7 zmm0_7;
xor zmm12_8@uint32 zmm12_8 zmm0_8; xor zmm12_9@uint32 zmm12_9 zmm0_9;
xor zmm12_a@uint32 zmm12_a zmm0_a; xor zmm12_b@uint32 zmm12_b zmm0_b;
xor zmm12_c@uint32 zmm12_c zmm0_c; xor zmm12_d@uint32 zmm12_d zmm0_d;
xor zmm12_e@uint32 zmm12_e zmm0_e; xor zmm12_f@uint32 zmm12_f zmm0_f;
(* vpxord %zmm1,%zmm13,%zmm13                      #! PC = 0x555555558216 *)
xor zmm13_0@uint32 zmm13_0 zmm1_0; xor zmm13_1@uint32 zmm13_1 zmm1_1;
xor zmm13_2@uint32 zmm13_2 zmm1_2; xor zmm13_3@uint32 zmm13_3 zmm1_3;
xor zmm13_4@uint32 zmm13_4 zmm1_4; xor zmm13_5@uint32 zmm13_5 zmm1_5;
xor zmm13_6@uint32 zmm13_6 zmm1_6; xor zmm13_7@uint32 zmm13_7 zmm1_7;
xor zmm13_8@uint32 zmm13_8 zmm1_8; xor zmm13_9@uint32 zmm13_9 zmm1_9;
xor zmm13_a@uint32 zmm13_a zmm1_a; xor zmm13_b@uint32 zmm13_b zmm1_b;
xor zmm13_c@uint32 zmm13_c zmm1_c; xor zmm13_d@uint32 zmm13_d zmm1_d;
xor zmm13_e@uint32 zmm13_e zmm1_e; xor zmm13_f@uint32 zmm13_f zmm1_f;
(* vpxord %zmm2,%zmm14,%zmm14                      #! PC = 0x55555555821c *)
xor zmm14_0@uint32 zmm14_0 zmm2_0; xor zmm14_1@uint32 zmm14_1 zmm2_1;
xor zmm14_2@uint32 zmm14_2 zmm2_2; xor zmm14_3@uint32 zmm14_3 zmm2_3;
xor zmm14_4@uint32 zmm14_4 zmm2_4; xor zmm14_5@uint32 zmm14_5 zmm2_5;
xor zmm14_6@uint32 zmm14_6 zmm2_6; xor zmm14_7@uint32 zmm14_7 zmm2_7;
xor zmm14_8@uint32 zmm14_8 zmm2_8; xor zmm14_9@uint32 zmm14_9 zmm2_9;
xor zmm14_a@uint32 zmm14_a zmm2_a; xor zmm14_b@uint32 zmm14_b zmm2_b;
xor zmm14_c@uint32 zmm14_c zmm2_c; xor zmm14_d@uint32 zmm14_d zmm2_d;
xor zmm14_e@uint32 zmm14_e zmm2_e; xor zmm14_f@uint32 zmm14_f zmm2_f;
(* vpxord %zmm3,%zmm15,%zmm15                      #! PC = 0x555555558222 *)
xor zmm15_0@uint32 zmm15_0 zmm3_0; xor zmm15_1@uint32 zmm15_1 zmm3_1;
xor zmm15_2@uint32 zmm15_2 zmm3_2; xor zmm15_3@uint32 zmm15_3 zmm3_3;
xor zmm15_4@uint32 zmm15_4 zmm3_4; xor zmm15_5@uint32 zmm15_5 zmm3_5;
xor zmm15_6@uint32 zmm15_6 zmm3_6; xor zmm15_7@uint32 zmm15_7 zmm3_7;
xor zmm15_8@uint32 zmm15_8 zmm3_8; xor zmm15_9@uint32 zmm15_9 zmm3_9;
xor zmm15_a@uint32 zmm15_a zmm3_a; xor zmm15_b@uint32 zmm15_b zmm3_b;
xor zmm15_c@uint32 zmm15_c zmm3_c; xor zmm15_d@uint32 zmm15_d zmm3_d;
xor zmm15_e@uint32 zmm15_e zmm3_e; xor zmm15_f@uint32 zmm15_f zmm3_f;
(* vprold $0x8,%zmm12,%zmm12                       #! PC = 0x555555558228 *)
rol zmm12_0@uint32 zmm12_0 0x8; rol zmm12_1@uint32 zmm12_1 0x8;
rol zmm12_2@uint32 zmm12_2 0x8; rol zmm12_3@uint32 zmm12_3 0x8;
rol zmm12_4@uint32 zmm12_4 0x8; rol zmm12_5@uint32 zmm12_5 0x8;
rol zmm12_6@uint32 zmm12_6 0x8; rol zmm12_7@uint32 zmm12_7 0x8;
rol zmm12_8@uint32 zmm12_8 0x8; rol zmm12_9@uint32 zmm12_9 0x8;
rol zmm12_a@uint32 zmm12_a 0x8; rol zmm12_b@uint32 zmm12_b 0x8;
rol zmm12_c@uint32 zmm12_c 0x8; rol zmm12_d@uint32 zmm12_d 0x8;
rol zmm12_e@uint32 zmm12_e 0x8; rol zmm12_f@uint32 zmm12_f 0x8;
(* vprold $0x8,%zmm13,%zmm13                       #! PC = 0x55555555822f *)
rol zmm13_0@uint32 zmm13_0 0x8; rol zmm13_1@uint32 zmm13_1 0x8;
rol zmm13_2@uint32 zmm13_2 0x8; rol zmm13_3@uint32 zmm13_3 0x8;
rol zmm13_4@uint32 zmm13_4 0x8; rol zmm13_5@uint32 zmm13_5 0x8;
rol zmm13_6@uint32 zmm13_6 0x8; rol zmm13_7@uint32 zmm13_7 0x8;
rol zmm13_8@uint32 zmm13_8 0x8; rol zmm13_9@uint32 zmm13_9 0x8;
rol zmm13_a@uint32 zmm13_a 0x8; rol zmm13_b@uint32 zmm13_b 0x8;
rol zmm13_c@uint32 zmm13_c 0x8; rol zmm13_d@uint32 zmm13_d 0x8;
rol zmm13_e@uint32 zmm13_e 0x8; rol zmm13_f@uint32 zmm13_f 0x8;
(* vprold $0x8,%zmm14,%zmm14                       #! PC = 0x555555558236 *)
rol zmm14_0@uint32 zmm14_0 0x8; rol zmm14_1@uint32 zmm14_1 0x8;
rol zmm14_2@uint32 zmm14_2 0x8; rol zmm14_3@uint32 zmm14_3 0x8;
rol zmm14_4@uint32 zmm14_4 0x8; rol zmm14_5@uint32 zmm14_5 0x8;
rol zmm14_6@uint32 zmm14_6 0x8; rol zmm14_7@uint32 zmm14_7 0x8;
rol zmm14_8@uint32 zmm14_8 0x8; rol zmm14_9@uint32 zmm14_9 0x8;
rol zmm14_a@uint32 zmm14_a 0x8; rol zmm14_b@uint32 zmm14_b 0x8;
rol zmm14_c@uint32 zmm14_c 0x8; rol zmm14_d@uint32 zmm14_d 0x8;
rol zmm14_e@uint32 zmm14_e 0x8; rol zmm14_f@uint32 zmm14_f 0x8;
(* vprold $0x8,%zmm15,%zmm15                       #! PC = 0x55555555823d *)
rol zmm15_0@uint32 zmm15_0 0x8; rol zmm15_1@uint32 zmm15_1 0x8;
rol zmm15_2@uint32 zmm15_2 0x8; rol zmm15_3@uint32 zmm15_3 0x8;
rol zmm15_4@uint32 zmm15_4 0x8; rol zmm15_5@uint32 zmm15_5 0x8;
rol zmm15_6@uint32 zmm15_6 0x8; rol zmm15_7@uint32 zmm15_7 0x8;
rol zmm15_8@uint32 zmm15_8 0x8; rol zmm15_9@uint32 zmm15_9 0x8;
rol zmm15_a@uint32 zmm15_a 0x8; rol zmm15_b@uint32 zmm15_b 0x8;
rol zmm15_c@uint32 zmm15_c 0x8; rol zmm15_d@uint32 zmm15_d 0x8;
rol zmm15_e@uint32 zmm15_e 0x8; rol zmm15_f@uint32 zmm15_f 0x8;
(* vpaddd %zmm12,%zmm8,%zmm8                       #! PC = 0x555555558244 *)
adds dc zmm8_0 zmm8_0 zmm12_0; adds dc zmm8_1 zmm8_1 zmm12_1;
adds dc zmm8_2 zmm8_2 zmm12_2; adds dc zmm8_3 zmm8_3 zmm12_3;
adds dc zmm8_4 zmm8_4 zmm12_4; adds dc zmm8_5 zmm8_5 zmm12_5;
adds dc zmm8_6 zmm8_6 zmm12_6; adds dc zmm8_7 zmm8_7 zmm12_7;
adds dc zmm8_8 zmm8_8 zmm12_8; adds dc zmm8_9 zmm8_9 zmm12_9;
adds dc zmm8_a zmm8_a zmm12_a; adds dc zmm8_b zmm8_b zmm12_b;
adds dc zmm8_c zmm8_c zmm12_c; adds dc zmm8_d zmm8_d zmm12_d;
adds dc zmm8_e zmm8_e zmm12_e; adds dc zmm8_f zmm8_f zmm12_f;
(* vpaddd %zmm13,%zmm9,%zmm9                       #! PC = 0x55555555824a *)
adds dc zmm9_0 zmm9_0 zmm13_0; adds dc zmm9_1 zmm9_1 zmm13_1;
adds dc zmm9_2 zmm9_2 zmm13_2; adds dc zmm9_3 zmm9_3 zmm13_3;
adds dc zmm9_4 zmm9_4 zmm13_4; adds dc zmm9_5 zmm9_5 zmm13_5;
adds dc zmm9_6 zmm9_6 zmm13_6; adds dc zmm9_7 zmm9_7 zmm13_7;
adds dc zmm9_8 zmm9_8 zmm13_8; adds dc zmm9_9 zmm9_9 zmm13_9;
adds dc zmm9_a zmm9_a zmm13_a; adds dc zmm9_b zmm9_b zmm13_b;
adds dc zmm9_c zmm9_c zmm13_c; adds dc zmm9_d zmm9_d zmm13_d;
adds dc zmm9_e zmm9_e zmm13_e; adds dc zmm9_f zmm9_f zmm13_f;
(* vpaddd %zmm14,%zmm10,%zmm10                     #! PC = 0x555555558250 *)
adds dc zmm10_0 zmm10_0 zmm14_0; adds dc zmm10_1 zmm10_1 zmm14_1;
adds dc zmm10_2 zmm10_2 zmm14_2; adds dc zmm10_3 zmm10_3 zmm14_3;
adds dc zmm10_4 zmm10_4 zmm14_4; adds dc zmm10_5 zmm10_5 zmm14_5;
adds dc zmm10_6 zmm10_6 zmm14_6; adds dc zmm10_7 zmm10_7 zmm14_7;
adds dc zmm10_8 zmm10_8 zmm14_8; adds dc zmm10_9 zmm10_9 zmm14_9;
adds dc zmm10_a zmm10_a zmm14_a; adds dc zmm10_b zmm10_b zmm14_b;
adds dc zmm10_c zmm10_c zmm14_c; adds dc zmm10_d zmm10_d zmm14_d;
adds dc zmm10_e zmm10_e zmm14_e; adds dc zmm10_f zmm10_f zmm14_f;
(* vpaddd %zmm15,%zmm11,%zmm11                     #! PC = 0x555555558256 *)
adds dc zmm11_0 zmm11_0 zmm15_0; adds dc zmm11_1 zmm11_1 zmm15_1;
adds dc zmm11_2 zmm11_2 zmm15_2; adds dc zmm11_3 zmm11_3 zmm15_3;
adds dc zmm11_4 zmm11_4 zmm15_4; adds dc zmm11_5 zmm11_5 zmm15_5;
adds dc zmm11_6 zmm11_6 zmm15_6; adds dc zmm11_7 zmm11_7 zmm15_7;
adds dc zmm11_8 zmm11_8 zmm15_8; adds dc zmm11_9 zmm11_9 zmm15_9;
adds dc zmm11_a zmm11_a zmm15_a; adds dc zmm11_b zmm11_b zmm15_b;
adds dc zmm11_c zmm11_c zmm15_c; adds dc zmm11_d zmm11_d zmm15_d;
adds dc zmm11_e zmm11_e zmm15_e; adds dc zmm11_f zmm11_f zmm15_f;
(* vpxord %zmm8,%zmm4,%zmm4                        #! PC = 0x55555555825c *)
xor zmm4_0@uint32 zmm4_0 zmm8_0; xor zmm4_1@uint32 zmm4_1 zmm8_1;
xor zmm4_2@uint32 zmm4_2 zmm8_2; xor zmm4_3@uint32 zmm4_3 zmm8_3;
xor zmm4_4@uint32 zmm4_4 zmm8_4; xor zmm4_5@uint32 zmm4_5 zmm8_5;
xor zmm4_6@uint32 zmm4_6 zmm8_6; xor zmm4_7@uint32 zmm4_7 zmm8_7;
xor zmm4_8@uint32 zmm4_8 zmm8_8; xor zmm4_9@uint32 zmm4_9 zmm8_9;
xor zmm4_a@uint32 zmm4_a zmm8_a; xor zmm4_b@uint32 zmm4_b zmm8_b;
xor zmm4_c@uint32 zmm4_c zmm8_c; xor zmm4_d@uint32 zmm4_d zmm8_d;
xor zmm4_e@uint32 zmm4_e zmm8_e; xor zmm4_f@uint32 zmm4_f zmm8_f;
(* vpxord %zmm9,%zmm5,%zmm5                        #! PC = 0x555555558262 *)
xor zmm5_0@uint32 zmm5_0 zmm9_0; xor zmm5_1@uint32 zmm5_1 zmm9_1;
xor zmm5_2@uint32 zmm5_2 zmm9_2; xor zmm5_3@uint32 zmm5_3 zmm9_3;
xor zmm5_4@uint32 zmm5_4 zmm9_4; xor zmm5_5@uint32 zmm5_5 zmm9_5;
xor zmm5_6@uint32 zmm5_6 zmm9_6; xor zmm5_7@uint32 zmm5_7 zmm9_7;
xor zmm5_8@uint32 zmm5_8 zmm9_8; xor zmm5_9@uint32 zmm5_9 zmm9_9;
xor zmm5_a@uint32 zmm5_a zmm9_a; xor zmm5_b@uint32 zmm5_b zmm9_b;
xor zmm5_c@uint32 zmm5_c zmm9_c; xor zmm5_d@uint32 zmm5_d zmm9_d;
xor zmm5_e@uint32 zmm5_e zmm9_e; xor zmm5_f@uint32 zmm5_f zmm9_f;
(* vpxord %zmm10,%zmm6,%zmm6                       #! PC = 0x555555558268 *)
xor zmm6_0@uint32 zmm6_0 zmm10_0; xor zmm6_1@uint32 zmm6_1 zmm10_1;
xor zmm6_2@uint32 zmm6_2 zmm10_2; xor zmm6_3@uint32 zmm6_3 zmm10_3;
xor zmm6_4@uint32 zmm6_4 zmm10_4; xor zmm6_5@uint32 zmm6_5 zmm10_5;
xor zmm6_6@uint32 zmm6_6 zmm10_6; xor zmm6_7@uint32 zmm6_7 zmm10_7;
xor zmm6_8@uint32 zmm6_8 zmm10_8; xor zmm6_9@uint32 zmm6_9 zmm10_9;
xor zmm6_a@uint32 zmm6_a zmm10_a; xor zmm6_b@uint32 zmm6_b zmm10_b;
xor zmm6_c@uint32 zmm6_c zmm10_c; xor zmm6_d@uint32 zmm6_d zmm10_d;
xor zmm6_e@uint32 zmm6_e zmm10_e; xor zmm6_f@uint32 zmm6_f zmm10_f;
(* vpxord %zmm11,%zmm7,%zmm7                       #! PC = 0x55555555826e *)
xor zmm7_0@uint32 zmm7_0 zmm11_0; xor zmm7_1@uint32 zmm7_1 zmm11_1;
xor zmm7_2@uint32 zmm7_2 zmm11_2; xor zmm7_3@uint32 zmm7_3 zmm11_3;
xor zmm7_4@uint32 zmm7_4 zmm11_4; xor zmm7_5@uint32 zmm7_5 zmm11_5;
xor zmm7_6@uint32 zmm7_6 zmm11_6; xor zmm7_7@uint32 zmm7_7 zmm11_7;
xor zmm7_8@uint32 zmm7_8 zmm11_8; xor zmm7_9@uint32 zmm7_9 zmm11_9;
xor zmm7_a@uint32 zmm7_a zmm11_a; xor zmm7_b@uint32 zmm7_b zmm11_b;
xor zmm7_c@uint32 zmm7_c zmm11_c; xor zmm7_d@uint32 zmm7_d zmm11_d;
xor zmm7_e@uint32 zmm7_e zmm11_e; xor zmm7_f@uint32 zmm7_f zmm11_f;
(* vprold $0x7,%zmm4,%zmm4                         #! PC = 0x555555558274 *)
rol zmm4_0@uint32 zmm4_0 0x7; rol zmm4_1@uint32 zmm4_1 0x7;
rol zmm4_2@uint32 zmm4_2 0x7; rol zmm4_3@uint32 zmm4_3 0x7;
rol zmm4_4@uint32 zmm4_4 0x7; rol zmm4_5@uint32 zmm4_5 0x7;
rol zmm4_6@uint32 zmm4_6 0x7; rol zmm4_7@uint32 zmm4_7 0x7;
rol zmm4_8@uint32 zmm4_8 0x7; rol zmm4_9@uint32 zmm4_9 0x7;
rol zmm4_a@uint32 zmm4_a 0x7; rol zmm4_b@uint32 zmm4_b 0x7;
rol zmm4_c@uint32 zmm4_c 0x7; rol zmm4_d@uint32 zmm4_d 0x7;
rol zmm4_e@uint32 zmm4_e 0x7; rol zmm4_f@uint32 zmm4_f 0x7;
(* vprold $0x7,%zmm5,%zmm5                         #! PC = 0x55555555827b *)
rol zmm5_0@uint32 zmm5_0 0x7; rol zmm5_1@uint32 zmm5_1 0x7;
rol zmm5_2@uint32 zmm5_2 0x7; rol zmm5_3@uint32 zmm5_3 0x7;
rol zmm5_4@uint32 zmm5_4 0x7; rol zmm5_5@uint32 zmm5_5 0x7;
rol zmm5_6@uint32 zmm5_6 0x7; rol zmm5_7@uint32 zmm5_7 0x7;
rol zmm5_8@uint32 zmm5_8 0x7; rol zmm5_9@uint32 zmm5_9 0x7;
rol zmm5_a@uint32 zmm5_a 0x7; rol zmm5_b@uint32 zmm5_b 0x7;
rol zmm5_c@uint32 zmm5_c 0x7; rol zmm5_d@uint32 zmm5_d 0x7;
rol zmm5_e@uint32 zmm5_e 0x7; rol zmm5_f@uint32 zmm5_f 0x7;
(* vprold $0x7,%zmm6,%zmm6                         #! PC = 0x555555558282 *)
rol zmm6_0@uint32 zmm6_0 0x7; rol zmm6_1@uint32 zmm6_1 0x7;
rol zmm6_2@uint32 zmm6_2 0x7; rol zmm6_3@uint32 zmm6_3 0x7;
rol zmm6_4@uint32 zmm6_4 0x7; rol zmm6_5@uint32 zmm6_5 0x7;
rol zmm6_6@uint32 zmm6_6 0x7; rol zmm6_7@uint32 zmm6_7 0x7;
rol zmm6_8@uint32 zmm6_8 0x7; rol zmm6_9@uint32 zmm6_9 0x7;
rol zmm6_a@uint32 zmm6_a 0x7; rol zmm6_b@uint32 zmm6_b 0x7;
rol zmm6_c@uint32 zmm6_c 0x7; rol zmm6_d@uint32 zmm6_d 0x7;
rol zmm6_e@uint32 zmm6_e 0x7; rol zmm6_f@uint32 zmm6_f 0x7;
(* vprold $0x7,%zmm7,%zmm7                         #! PC = 0x555555558289 *)
rol zmm7_0@uint32 zmm7_0 0x7; rol zmm7_1@uint32 zmm7_1 0x7;
rol zmm7_2@uint32 zmm7_2 0x7; rol zmm7_3@uint32 zmm7_3 0x7;
rol zmm7_4@uint32 zmm7_4 0x7; rol zmm7_5@uint32 zmm7_5 0x7;
rol zmm7_6@uint32 zmm7_6 0x7; rol zmm7_7@uint32 zmm7_7 0x7;
rol zmm7_8@uint32 zmm7_8 0x7; rol zmm7_9@uint32 zmm7_9 0x7;
rol zmm7_a@uint32 zmm7_a 0x7; rol zmm7_b@uint32 zmm7_b 0x7;
rol zmm7_c@uint32 zmm7_c 0x7; rol zmm7_d@uint32 zmm7_d 0x7;
rol zmm7_e@uint32 zmm7_e 0x7; rol zmm7_f@uint32 zmm7_f 0x7;
(* vpaddd %zmm5,%zmm0,%zmm0                        #! PC = 0x555555558290 *)
adds dc zmm0_0 zmm0_0 zmm5_0; adds dc zmm0_1 zmm0_1 zmm5_1;
adds dc zmm0_2 zmm0_2 zmm5_2; adds dc zmm0_3 zmm0_3 zmm5_3;
adds dc zmm0_4 zmm0_4 zmm5_4; adds dc zmm0_5 zmm0_5 zmm5_5;
adds dc zmm0_6 zmm0_6 zmm5_6; adds dc zmm0_7 zmm0_7 zmm5_7;
adds dc zmm0_8 zmm0_8 zmm5_8; adds dc zmm0_9 zmm0_9 zmm5_9;
adds dc zmm0_a zmm0_a zmm5_a; adds dc zmm0_b zmm0_b zmm5_b;
adds dc zmm0_c zmm0_c zmm5_c; adds dc zmm0_d zmm0_d zmm5_d;
adds dc zmm0_e zmm0_e zmm5_e; adds dc zmm0_f zmm0_f zmm5_f;
(* vpaddd %zmm6,%zmm1,%zmm1                        #! PC = 0x555555558296 *)
adds dc zmm1_0 zmm1_0 zmm6_0; adds dc zmm1_1 zmm1_1 zmm6_1;
adds dc zmm1_2 zmm1_2 zmm6_2; adds dc zmm1_3 zmm1_3 zmm6_3;
adds dc zmm1_4 zmm1_4 zmm6_4; adds dc zmm1_5 zmm1_5 zmm6_5;
adds dc zmm1_6 zmm1_6 zmm6_6; adds dc zmm1_7 zmm1_7 zmm6_7;
adds dc zmm1_8 zmm1_8 zmm6_8; adds dc zmm1_9 zmm1_9 zmm6_9;
adds dc zmm1_a zmm1_a zmm6_a; adds dc zmm1_b zmm1_b zmm6_b;
adds dc zmm1_c zmm1_c zmm6_c; adds dc zmm1_d zmm1_d zmm6_d;
adds dc zmm1_e zmm1_e zmm6_e; adds dc zmm1_f zmm1_f zmm6_f;
(* vpaddd %zmm7,%zmm2,%zmm2                        #! PC = 0x55555555829c *)
adds dc zmm2_0 zmm2_0 zmm7_0; adds dc zmm2_1 zmm2_1 zmm7_1;
adds dc zmm2_2 zmm2_2 zmm7_2; adds dc zmm2_3 zmm2_3 zmm7_3;
adds dc zmm2_4 zmm2_4 zmm7_4; adds dc zmm2_5 zmm2_5 zmm7_5;
adds dc zmm2_6 zmm2_6 zmm7_6; adds dc zmm2_7 zmm2_7 zmm7_7;
adds dc zmm2_8 zmm2_8 zmm7_8; adds dc zmm2_9 zmm2_9 zmm7_9;
adds dc zmm2_a zmm2_a zmm7_a; adds dc zmm2_b zmm2_b zmm7_b;
adds dc zmm2_c zmm2_c zmm7_c; adds dc zmm2_d zmm2_d zmm7_d;
adds dc zmm2_e zmm2_e zmm7_e; adds dc zmm2_f zmm2_f zmm7_f;
(* vpaddd %zmm4,%zmm3,%zmm3                        #! PC = 0x5555555582a2 *)
adds dc zmm3_0 zmm3_0 zmm4_0; adds dc zmm3_1 zmm3_1 zmm4_1;
adds dc zmm3_2 zmm3_2 zmm4_2; adds dc zmm3_3 zmm3_3 zmm4_3;
adds dc zmm3_4 zmm3_4 zmm4_4; adds dc zmm3_5 zmm3_5 zmm4_5;
adds dc zmm3_6 zmm3_6 zmm4_6; adds dc zmm3_7 zmm3_7 zmm4_7;
adds dc zmm3_8 zmm3_8 zmm4_8; adds dc zmm3_9 zmm3_9 zmm4_9;
adds dc zmm3_a zmm3_a zmm4_a; adds dc zmm3_b zmm3_b zmm4_b;
adds dc zmm3_c zmm3_c zmm4_c; adds dc zmm3_d zmm3_d zmm4_d;
adds dc zmm3_e zmm3_e zmm4_e; adds dc zmm3_f zmm3_f zmm4_f;
(* vpxord %zmm0,%zmm15,%zmm15                      #! PC = 0x5555555582a8 *)
xor zmm15_0@uint32 zmm15_0 zmm0_0; xor zmm15_1@uint32 zmm15_1 zmm0_1;
xor zmm15_2@uint32 zmm15_2 zmm0_2; xor zmm15_3@uint32 zmm15_3 zmm0_3;
xor zmm15_4@uint32 zmm15_4 zmm0_4; xor zmm15_5@uint32 zmm15_5 zmm0_5;
xor zmm15_6@uint32 zmm15_6 zmm0_6; xor zmm15_7@uint32 zmm15_7 zmm0_7;
xor zmm15_8@uint32 zmm15_8 zmm0_8; xor zmm15_9@uint32 zmm15_9 zmm0_9;
xor zmm15_a@uint32 zmm15_a zmm0_a; xor zmm15_b@uint32 zmm15_b zmm0_b;
xor zmm15_c@uint32 zmm15_c zmm0_c; xor zmm15_d@uint32 zmm15_d zmm0_d;
xor zmm15_e@uint32 zmm15_e zmm0_e; xor zmm15_f@uint32 zmm15_f zmm0_f;
(* vpxord %zmm1,%zmm12,%zmm12                      #! PC = 0x5555555582ae *)
xor zmm12_0@uint32 zmm12_0 zmm1_0; xor zmm12_1@uint32 zmm12_1 zmm1_1;
xor zmm12_2@uint32 zmm12_2 zmm1_2; xor zmm12_3@uint32 zmm12_3 zmm1_3;
xor zmm12_4@uint32 zmm12_4 zmm1_4; xor zmm12_5@uint32 zmm12_5 zmm1_5;
xor zmm12_6@uint32 zmm12_6 zmm1_6; xor zmm12_7@uint32 zmm12_7 zmm1_7;
xor zmm12_8@uint32 zmm12_8 zmm1_8; xor zmm12_9@uint32 zmm12_9 zmm1_9;
xor zmm12_a@uint32 zmm12_a zmm1_a; xor zmm12_b@uint32 zmm12_b zmm1_b;
xor zmm12_c@uint32 zmm12_c zmm1_c; xor zmm12_d@uint32 zmm12_d zmm1_d;
xor zmm12_e@uint32 zmm12_e zmm1_e; xor zmm12_f@uint32 zmm12_f zmm1_f;
(* vpxord %zmm2,%zmm13,%zmm13                      #! PC = 0x5555555582b4 *)
xor zmm13_0@uint32 zmm13_0 zmm2_0; xor zmm13_1@uint32 zmm13_1 zmm2_1;
xor zmm13_2@uint32 zmm13_2 zmm2_2; xor zmm13_3@uint32 zmm13_3 zmm2_3;
xor zmm13_4@uint32 zmm13_4 zmm2_4; xor zmm13_5@uint32 zmm13_5 zmm2_5;
xor zmm13_6@uint32 zmm13_6 zmm2_6; xor zmm13_7@uint32 zmm13_7 zmm2_7;
xor zmm13_8@uint32 zmm13_8 zmm2_8; xor zmm13_9@uint32 zmm13_9 zmm2_9;
xor zmm13_a@uint32 zmm13_a zmm2_a; xor zmm13_b@uint32 zmm13_b zmm2_b;
xor zmm13_c@uint32 zmm13_c zmm2_c; xor zmm13_d@uint32 zmm13_d zmm2_d;
xor zmm13_e@uint32 zmm13_e zmm2_e; xor zmm13_f@uint32 zmm13_f zmm2_f;
(* vpxord %zmm3,%zmm14,%zmm14                      #! PC = 0x5555555582ba *)
xor zmm14_0@uint32 zmm14_0 zmm3_0; xor zmm14_1@uint32 zmm14_1 zmm3_1;
xor zmm14_2@uint32 zmm14_2 zmm3_2; xor zmm14_3@uint32 zmm14_3 zmm3_3;
xor zmm14_4@uint32 zmm14_4 zmm3_4; xor zmm14_5@uint32 zmm14_5 zmm3_5;
xor zmm14_6@uint32 zmm14_6 zmm3_6; xor zmm14_7@uint32 zmm14_7 zmm3_7;
xor zmm14_8@uint32 zmm14_8 zmm3_8; xor zmm14_9@uint32 zmm14_9 zmm3_9;
xor zmm14_a@uint32 zmm14_a zmm3_a; xor zmm14_b@uint32 zmm14_b zmm3_b;
xor zmm14_c@uint32 zmm14_c zmm3_c; xor zmm14_d@uint32 zmm14_d zmm3_d;
xor zmm14_e@uint32 zmm14_e zmm3_e; xor zmm14_f@uint32 zmm14_f zmm3_f;
(* vprold $0x10,%zmm15,%zmm15                      #! PC = 0x5555555582c0 *)
rol zmm15_0@uint32 zmm15_0 0x10; rol zmm15_1@uint32 zmm15_1 0x10;
rol zmm15_2@uint32 zmm15_2 0x10; rol zmm15_3@uint32 zmm15_3 0x10;
rol zmm15_4@uint32 zmm15_4 0x10; rol zmm15_5@uint32 zmm15_5 0x10;
rol zmm15_6@uint32 zmm15_6 0x10; rol zmm15_7@uint32 zmm15_7 0x10;
rol zmm15_8@uint32 zmm15_8 0x10; rol zmm15_9@uint32 zmm15_9 0x10;
rol zmm15_a@uint32 zmm15_a 0x10; rol zmm15_b@uint32 zmm15_b 0x10;
rol zmm15_c@uint32 zmm15_c 0x10; rol zmm15_d@uint32 zmm15_d 0x10;
rol zmm15_e@uint32 zmm15_e 0x10; rol zmm15_f@uint32 zmm15_f 0x10;
(* vprold $0x10,%zmm12,%zmm12                      #! PC = 0x5555555582c7 *)
rol zmm12_0@uint32 zmm12_0 0x10; rol zmm12_1@uint32 zmm12_1 0x10;
rol zmm12_2@uint32 zmm12_2 0x10; rol zmm12_3@uint32 zmm12_3 0x10;
rol zmm12_4@uint32 zmm12_4 0x10; rol zmm12_5@uint32 zmm12_5 0x10;
rol zmm12_6@uint32 zmm12_6 0x10; rol zmm12_7@uint32 zmm12_7 0x10;
rol zmm12_8@uint32 zmm12_8 0x10; rol zmm12_9@uint32 zmm12_9 0x10;
rol zmm12_a@uint32 zmm12_a 0x10; rol zmm12_b@uint32 zmm12_b 0x10;
rol zmm12_c@uint32 zmm12_c 0x10; rol zmm12_d@uint32 zmm12_d 0x10;
rol zmm12_e@uint32 zmm12_e 0x10; rol zmm12_f@uint32 zmm12_f 0x10;
(* vprold $0x10,%zmm13,%zmm13                      #! PC = 0x5555555582ce *)
rol zmm13_0@uint32 zmm13_0 0x10; rol zmm13_1@uint32 zmm13_1 0x10;
rol zmm13_2@uint32 zmm13_2 0x10; rol zmm13_3@uint32 zmm13_3 0x10;
rol zmm13_4@uint32 zmm13_4 0x10; rol zmm13_5@uint32 zmm13_5 0x10;
rol zmm13_6@uint32 zmm13_6 0x10; rol zmm13_7@uint32 zmm13_7 0x10;
rol zmm13_8@uint32 zmm13_8 0x10; rol zmm13_9@uint32 zmm13_9 0x10;
rol zmm13_a@uint32 zmm13_a 0x10; rol zmm13_b@uint32 zmm13_b 0x10;
rol zmm13_c@uint32 zmm13_c 0x10; rol zmm13_d@uint32 zmm13_d 0x10;
rol zmm13_e@uint32 zmm13_e 0x10; rol zmm13_f@uint32 zmm13_f 0x10;
(* vprold $0x10,%zmm14,%zmm14                      #! PC = 0x5555555582d5 *)
rol zmm14_0@uint32 zmm14_0 0x10; rol zmm14_1@uint32 zmm14_1 0x10;
rol zmm14_2@uint32 zmm14_2 0x10; rol zmm14_3@uint32 zmm14_3 0x10;
rol zmm14_4@uint32 zmm14_4 0x10; rol zmm14_5@uint32 zmm14_5 0x10;
rol zmm14_6@uint32 zmm14_6 0x10; rol zmm14_7@uint32 zmm14_7 0x10;
rol zmm14_8@uint32 zmm14_8 0x10; rol zmm14_9@uint32 zmm14_9 0x10;
rol zmm14_a@uint32 zmm14_a 0x10; rol zmm14_b@uint32 zmm14_b 0x10;
rol zmm14_c@uint32 zmm14_c 0x10; rol zmm14_d@uint32 zmm14_d 0x10;
rol zmm14_e@uint32 zmm14_e 0x10; rol zmm14_f@uint32 zmm14_f 0x10;
(* vpaddd %zmm15,%zmm10,%zmm10                     #! PC = 0x5555555582dc *)
adds dc zmm10_0 zmm10_0 zmm15_0; adds dc zmm10_1 zmm10_1 zmm15_1;
adds dc zmm10_2 zmm10_2 zmm15_2; adds dc zmm10_3 zmm10_3 zmm15_3;
adds dc zmm10_4 zmm10_4 zmm15_4; adds dc zmm10_5 zmm10_5 zmm15_5;
adds dc zmm10_6 zmm10_6 zmm15_6; adds dc zmm10_7 zmm10_7 zmm15_7;
adds dc zmm10_8 zmm10_8 zmm15_8; adds dc zmm10_9 zmm10_9 zmm15_9;
adds dc zmm10_a zmm10_a zmm15_a; adds dc zmm10_b zmm10_b zmm15_b;
adds dc zmm10_c zmm10_c zmm15_c; adds dc zmm10_d zmm10_d zmm15_d;
adds dc zmm10_e zmm10_e zmm15_e; adds dc zmm10_f zmm10_f zmm15_f;
(* vpaddd %zmm12,%zmm11,%zmm11                     #! PC = 0x5555555582e2 *)
adds dc zmm11_0 zmm11_0 zmm12_0; adds dc zmm11_1 zmm11_1 zmm12_1;
adds dc zmm11_2 zmm11_2 zmm12_2; adds dc zmm11_3 zmm11_3 zmm12_3;
adds dc zmm11_4 zmm11_4 zmm12_4; adds dc zmm11_5 zmm11_5 zmm12_5;
adds dc zmm11_6 zmm11_6 zmm12_6; adds dc zmm11_7 zmm11_7 zmm12_7;
adds dc zmm11_8 zmm11_8 zmm12_8; adds dc zmm11_9 zmm11_9 zmm12_9;
adds dc zmm11_a zmm11_a zmm12_a; adds dc zmm11_b zmm11_b zmm12_b;
adds dc zmm11_c zmm11_c zmm12_c; adds dc zmm11_d zmm11_d zmm12_d;
adds dc zmm11_e zmm11_e zmm12_e; adds dc zmm11_f zmm11_f zmm12_f;
(* vpaddd %zmm13,%zmm8,%zmm8                       #! PC = 0x5555555582e8 *)
adds dc zmm8_0 zmm8_0 zmm13_0; adds dc zmm8_1 zmm8_1 zmm13_1;
adds dc zmm8_2 zmm8_2 zmm13_2; adds dc zmm8_3 zmm8_3 zmm13_3;
adds dc zmm8_4 zmm8_4 zmm13_4; adds dc zmm8_5 zmm8_5 zmm13_5;
adds dc zmm8_6 zmm8_6 zmm13_6; adds dc zmm8_7 zmm8_7 zmm13_7;
adds dc zmm8_8 zmm8_8 zmm13_8; adds dc zmm8_9 zmm8_9 zmm13_9;
adds dc zmm8_a zmm8_a zmm13_a; adds dc zmm8_b zmm8_b zmm13_b;
adds dc zmm8_c zmm8_c zmm13_c; adds dc zmm8_d zmm8_d zmm13_d;
adds dc zmm8_e zmm8_e zmm13_e; adds dc zmm8_f zmm8_f zmm13_f;
(* vpaddd %zmm14,%zmm9,%zmm9                       #! PC = 0x5555555582ee *)
adds dc zmm9_0 zmm9_0 zmm14_0; adds dc zmm9_1 zmm9_1 zmm14_1;
adds dc zmm9_2 zmm9_2 zmm14_2; adds dc zmm9_3 zmm9_3 zmm14_3;
adds dc zmm9_4 zmm9_4 zmm14_4; adds dc zmm9_5 zmm9_5 zmm14_5;
adds dc zmm9_6 zmm9_6 zmm14_6; adds dc zmm9_7 zmm9_7 zmm14_7;
adds dc zmm9_8 zmm9_8 zmm14_8; adds dc zmm9_9 zmm9_9 zmm14_9;
adds dc zmm9_a zmm9_a zmm14_a; adds dc zmm9_b zmm9_b zmm14_b;
adds dc zmm9_c zmm9_c zmm14_c; adds dc zmm9_d zmm9_d zmm14_d;
adds dc zmm9_e zmm9_e zmm14_e; adds dc zmm9_f zmm9_f zmm14_f;
(* vpxord %zmm10,%zmm5,%zmm5                       #! PC = 0x5555555582f4 *)
xor zmm5_0@uint32 zmm5_0 zmm10_0; xor zmm5_1@uint32 zmm5_1 zmm10_1;
xor zmm5_2@uint32 zmm5_2 zmm10_2; xor zmm5_3@uint32 zmm5_3 zmm10_3;
xor zmm5_4@uint32 zmm5_4 zmm10_4; xor zmm5_5@uint32 zmm5_5 zmm10_5;
xor zmm5_6@uint32 zmm5_6 zmm10_6; xor zmm5_7@uint32 zmm5_7 zmm10_7;
xor zmm5_8@uint32 zmm5_8 zmm10_8; xor zmm5_9@uint32 zmm5_9 zmm10_9;
xor zmm5_a@uint32 zmm5_a zmm10_a; xor zmm5_b@uint32 zmm5_b zmm10_b;
xor zmm5_c@uint32 zmm5_c zmm10_c; xor zmm5_d@uint32 zmm5_d zmm10_d;
xor zmm5_e@uint32 zmm5_e zmm10_e; xor zmm5_f@uint32 zmm5_f zmm10_f;
(* vpxord %zmm11,%zmm6,%zmm6                       #! PC = 0x5555555582fa *)
xor zmm6_0@uint32 zmm6_0 zmm11_0; xor zmm6_1@uint32 zmm6_1 zmm11_1;
xor zmm6_2@uint32 zmm6_2 zmm11_2; xor zmm6_3@uint32 zmm6_3 zmm11_3;
xor zmm6_4@uint32 zmm6_4 zmm11_4; xor zmm6_5@uint32 zmm6_5 zmm11_5;
xor zmm6_6@uint32 zmm6_6 zmm11_6; xor zmm6_7@uint32 zmm6_7 zmm11_7;
xor zmm6_8@uint32 zmm6_8 zmm11_8; xor zmm6_9@uint32 zmm6_9 zmm11_9;
xor zmm6_a@uint32 zmm6_a zmm11_a; xor zmm6_b@uint32 zmm6_b zmm11_b;
xor zmm6_c@uint32 zmm6_c zmm11_c; xor zmm6_d@uint32 zmm6_d zmm11_d;
xor zmm6_e@uint32 zmm6_e zmm11_e; xor zmm6_f@uint32 zmm6_f zmm11_f;
(* vpxord %zmm8,%zmm7,%zmm7                        #! PC = 0x555555558300 *)
xor zmm7_0@uint32 zmm7_0 zmm8_0; xor zmm7_1@uint32 zmm7_1 zmm8_1;
xor zmm7_2@uint32 zmm7_2 zmm8_2; xor zmm7_3@uint32 zmm7_3 zmm8_3;
xor zmm7_4@uint32 zmm7_4 zmm8_4; xor zmm7_5@uint32 zmm7_5 zmm8_5;
xor zmm7_6@uint32 zmm7_6 zmm8_6; xor zmm7_7@uint32 zmm7_7 zmm8_7;
xor zmm7_8@uint32 zmm7_8 zmm8_8; xor zmm7_9@uint32 zmm7_9 zmm8_9;
xor zmm7_a@uint32 zmm7_a zmm8_a; xor zmm7_b@uint32 zmm7_b zmm8_b;
xor zmm7_c@uint32 zmm7_c zmm8_c; xor zmm7_d@uint32 zmm7_d zmm8_d;
xor zmm7_e@uint32 zmm7_e zmm8_e; xor zmm7_f@uint32 zmm7_f zmm8_f;
(* vpxord %zmm9,%zmm4,%zmm4                        #! PC = 0x555555558306 *)
xor zmm4_0@uint32 zmm4_0 zmm9_0; xor zmm4_1@uint32 zmm4_1 zmm9_1;
xor zmm4_2@uint32 zmm4_2 zmm9_2; xor zmm4_3@uint32 zmm4_3 zmm9_3;
xor zmm4_4@uint32 zmm4_4 zmm9_4; xor zmm4_5@uint32 zmm4_5 zmm9_5;
xor zmm4_6@uint32 zmm4_6 zmm9_6; xor zmm4_7@uint32 zmm4_7 zmm9_7;
xor zmm4_8@uint32 zmm4_8 zmm9_8; xor zmm4_9@uint32 zmm4_9 zmm9_9;
xor zmm4_a@uint32 zmm4_a zmm9_a; xor zmm4_b@uint32 zmm4_b zmm9_b;
xor zmm4_c@uint32 zmm4_c zmm9_c; xor zmm4_d@uint32 zmm4_d zmm9_d;
xor zmm4_e@uint32 zmm4_e zmm9_e; xor zmm4_f@uint32 zmm4_f zmm9_f;
(* vprold $0xc,%zmm5,%zmm5                         #! PC = 0x55555555830c *)
rol zmm5_0@uint32 zmm5_0 0xc; rol zmm5_1@uint32 zmm5_1 0xc;
rol zmm5_2@uint32 zmm5_2 0xc; rol zmm5_3@uint32 zmm5_3 0xc;
rol zmm5_4@uint32 zmm5_4 0xc; rol zmm5_5@uint32 zmm5_5 0xc;
rol zmm5_6@uint32 zmm5_6 0xc; rol zmm5_7@uint32 zmm5_7 0xc;
rol zmm5_8@uint32 zmm5_8 0xc; rol zmm5_9@uint32 zmm5_9 0xc;
rol zmm5_a@uint32 zmm5_a 0xc; rol zmm5_b@uint32 zmm5_b 0xc;
rol zmm5_c@uint32 zmm5_c 0xc; rol zmm5_d@uint32 zmm5_d 0xc;
rol zmm5_e@uint32 zmm5_e 0xc; rol zmm5_f@uint32 zmm5_f 0xc;
(* vprold $0xc,%zmm6,%zmm6                         #! PC = 0x555555558313 *)
rol zmm6_0@uint32 zmm6_0 0xc; rol zmm6_1@uint32 zmm6_1 0xc;
rol zmm6_2@uint32 zmm6_2 0xc; rol zmm6_3@uint32 zmm6_3 0xc;
rol zmm6_4@uint32 zmm6_4 0xc; rol zmm6_5@uint32 zmm6_5 0xc;
rol zmm6_6@uint32 zmm6_6 0xc; rol zmm6_7@uint32 zmm6_7 0xc;
rol zmm6_8@uint32 zmm6_8 0xc; rol zmm6_9@uint32 zmm6_9 0xc;
rol zmm6_a@uint32 zmm6_a 0xc; rol zmm6_b@uint32 zmm6_b 0xc;
rol zmm6_c@uint32 zmm6_c 0xc; rol zmm6_d@uint32 zmm6_d 0xc;
rol zmm6_e@uint32 zmm6_e 0xc; rol zmm6_f@uint32 zmm6_f 0xc;
(* vprold $0xc,%zmm7,%zmm7                         #! PC = 0x55555555831a *)
rol zmm7_0@uint32 zmm7_0 0xc; rol zmm7_1@uint32 zmm7_1 0xc;
rol zmm7_2@uint32 zmm7_2 0xc; rol zmm7_3@uint32 zmm7_3 0xc;
rol zmm7_4@uint32 zmm7_4 0xc; rol zmm7_5@uint32 zmm7_5 0xc;
rol zmm7_6@uint32 zmm7_6 0xc; rol zmm7_7@uint32 zmm7_7 0xc;
rol zmm7_8@uint32 zmm7_8 0xc; rol zmm7_9@uint32 zmm7_9 0xc;
rol zmm7_a@uint32 zmm7_a 0xc; rol zmm7_b@uint32 zmm7_b 0xc;
rol zmm7_c@uint32 zmm7_c 0xc; rol zmm7_d@uint32 zmm7_d 0xc;
rol zmm7_e@uint32 zmm7_e 0xc; rol zmm7_f@uint32 zmm7_f 0xc;
(* vprold $0xc,%zmm4,%zmm4                         #! PC = 0x555555558321 *)
rol zmm4_0@uint32 zmm4_0 0xc; rol zmm4_1@uint32 zmm4_1 0xc;
rol zmm4_2@uint32 zmm4_2 0xc; rol zmm4_3@uint32 zmm4_3 0xc;
rol zmm4_4@uint32 zmm4_4 0xc; rol zmm4_5@uint32 zmm4_5 0xc;
rol zmm4_6@uint32 zmm4_6 0xc; rol zmm4_7@uint32 zmm4_7 0xc;
rol zmm4_8@uint32 zmm4_8 0xc; rol zmm4_9@uint32 zmm4_9 0xc;
rol zmm4_a@uint32 zmm4_a 0xc; rol zmm4_b@uint32 zmm4_b 0xc;
rol zmm4_c@uint32 zmm4_c 0xc; rol zmm4_d@uint32 zmm4_d 0xc;
rol zmm4_e@uint32 zmm4_e 0xc; rol zmm4_f@uint32 zmm4_f 0xc;
(* vpaddd %zmm5,%zmm0,%zmm0                        #! PC = 0x555555558328 *)
adds dc zmm0_0 zmm0_0 zmm5_0; adds dc zmm0_1 zmm0_1 zmm5_1;
adds dc zmm0_2 zmm0_2 zmm5_2; adds dc zmm0_3 zmm0_3 zmm5_3;
adds dc zmm0_4 zmm0_4 zmm5_4; adds dc zmm0_5 zmm0_5 zmm5_5;
adds dc zmm0_6 zmm0_6 zmm5_6; adds dc zmm0_7 zmm0_7 zmm5_7;
adds dc zmm0_8 zmm0_8 zmm5_8; adds dc zmm0_9 zmm0_9 zmm5_9;
adds dc zmm0_a zmm0_a zmm5_a; adds dc zmm0_b zmm0_b zmm5_b;
adds dc zmm0_c zmm0_c zmm5_c; adds dc zmm0_d zmm0_d zmm5_d;
adds dc zmm0_e zmm0_e zmm5_e; adds dc zmm0_f zmm0_f zmm5_f;
(* vpaddd %zmm6,%zmm1,%zmm1                        #! PC = 0x55555555832e *)
adds dc zmm1_0 zmm1_0 zmm6_0; adds dc zmm1_1 zmm1_1 zmm6_1;
adds dc zmm1_2 zmm1_2 zmm6_2; adds dc zmm1_3 zmm1_3 zmm6_3;
adds dc zmm1_4 zmm1_4 zmm6_4; adds dc zmm1_5 zmm1_5 zmm6_5;
adds dc zmm1_6 zmm1_6 zmm6_6; adds dc zmm1_7 zmm1_7 zmm6_7;
adds dc zmm1_8 zmm1_8 zmm6_8; adds dc zmm1_9 zmm1_9 zmm6_9;
adds dc zmm1_a zmm1_a zmm6_a; adds dc zmm1_b zmm1_b zmm6_b;
adds dc zmm1_c zmm1_c zmm6_c; adds dc zmm1_d zmm1_d zmm6_d;
adds dc zmm1_e zmm1_e zmm6_e; adds dc zmm1_f zmm1_f zmm6_f;
(* vpaddd %zmm7,%zmm2,%zmm2                        #! PC = 0x555555558334 *)
adds dc zmm2_0 zmm2_0 zmm7_0; adds dc zmm2_1 zmm2_1 zmm7_1;
adds dc zmm2_2 zmm2_2 zmm7_2; adds dc zmm2_3 zmm2_3 zmm7_3;
adds dc zmm2_4 zmm2_4 zmm7_4; adds dc zmm2_5 zmm2_5 zmm7_5;
adds dc zmm2_6 zmm2_6 zmm7_6; adds dc zmm2_7 zmm2_7 zmm7_7;
adds dc zmm2_8 zmm2_8 zmm7_8; adds dc zmm2_9 zmm2_9 zmm7_9;
adds dc zmm2_a zmm2_a zmm7_a; adds dc zmm2_b zmm2_b zmm7_b;
adds dc zmm2_c zmm2_c zmm7_c; adds dc zmm2_d zmm2_d zmm7_d;
adds dc zmm2_e zmm2_e zmm7_e; adds dc zmm2_f zmm2_f zmm7_f;
(* vpaddd %zmm4,%zmm3,%zmm3                        #! PC = 0x55555555833a *)
adds dc zmm3_0 zmm3_0 zmm4_0; adds dc zmm3_1 zmm3_1 zmm4_1;
adds dc zmm3_2 zmm3_2 zmm4_2; adds dc zmm3_3 zmm3_3 zmm4_3;
adds dc zmm3_4 zmm3_4 zmm4_4; adds dc zmm3_5 zmm3_5 zmm4_5;
adds dc zmm3_6 zmm3_6 zmm4_6; adds dc zmm3_7 zmm3_7 zmm4_7;
adds dc zmm3_8 zmm3_8 zmm4_8; adds dc zmm3_9 zmm3_9 zmm4_9;
adds dc zmm3_a zmm3_a zmm4_a; adds dc zmm3_b zmm3_b zmm4_b;
adds dc zmm3_c zmm3_c zmm4_c; adds dc zmm3_d zmm3_d zmm4_d;
adds dc zmm3_e zmm3_e zmm4_e; adds dc zmm3_f zmm3_f zmm4_f;
(* vpxord %zmm0,%zmm15,%zmm15                      #! PC = 0x555555558340 *)
xor zmm15_0@uint32 zmm15_0 zmm0_0; xor zmm15_1@uint32 zmm15_1 zmm0_1;
xor zmm15_2@uint32 zmm15_2 zmm0_2; xor zmm15_3@uint32 zmm15_3 zmm0_3;
xor zmm15_4@uint32 zmm15_4 zmm0_4; xor zmm15_5@uint32 zmm15_5 zmm0_5;
xor zmm15_6@uint32 zmm15_6 zmm0_6; xor zmm15_7@uint32 zmm15_7 zmm0_7;
xor zmm15_8@uint32 zmm15_8 zmm0_8; xor zmm15_9@uint32 zmm15_9 zmm0_9;
xor zmm15_a@uint32 zmm15_a zmm0_a; xor zmm15_b@uint32 zmm15_b zmm0_b;
xor zmm15_c@uint32 zmm15_c zmm0_c; xor zmm15_d@uint32 zmm15_d zmm0_d;
xor zmm15_e@uint32 zmm15_e zmm0_e; xor zmm15_f@uint32 zmm15_f zmm0_f;
(* vpxord %zmm1,%zmm12,%zmm12                      #! PC = 0x555555558346 *)
xor zmm12_0@uint32 zmm12_0 zmm1_0; xor zmm12_1@uint32 zmm12_1 zmm1_1;
xor zmm12_2@uint32 zmm12_2 zmm1_2; xor zmm12_3@uint32 zmm12_3 zmm1_3;
xor zmm12_4@uint32 zmm12_4 zmm1_4; xor zmm12_5@uint32 zmm12_5 zmm1_5;
xor zmm12_6@uint32 zmm12_6 zmm1_6; xor zmm12_7@uint32 zmm12_7 zmm1_7;
xor zmm12_8@uint32 zmm12_8 zmm1_8; xor zmm12_9@uint32 zmm12_9 zmm1_9;
xor zmm12_a@uint32 zmm12_a zmm1_a; xor zmm12_b@uint32 zmm12_b zmm1_b;
xor zmm12_c@uint32 zmm12_c zmm1_c; xor zmm12_d@uint32 zmm12_d zmm1_d;
xor zmm12_e@uint32 zmm12_e zmm1_e; xor zmm12_f@uint32 zmm12_f zmm1_f;
(* vpxord %zmm2,%zmm13,%zmm13                      #! PC = 0x55555555834c *)
xor zmm13_0@uint32 zmm13_0 zmm2_0; xor zmm13_1@uint32 zmm13_1 zmm2_1;
xor zmm13_2@uint32 zmm13_2 zmm2_2; xor zmm13_3@uint32 zmm13_3 zmm2_3;
xor zmm13_4@uint32 zmm13_4 zmm2_4; xor zmm13_5@uint32 zmm13_5 zmm2_5;
xor zmm13_6@uint32 zmm13_6 zmm2_6; xor zmm13_7@uint32 zmm13_7 zmm2_7;
xor zmm13_8@uint32 zmm13_8 zmm2_8; xor zmm13_9@uint32 zmm13_9 zmm2_9;
xor zmm13_a@uint32 zmm13_a zmm2_a; xor zmm13_b@uint32 zmm13_b zmm2_b;
xor zmm13_c@uint32 zmm13_c zmm2_c; xor zmm13_d@uint32 zmm13_d zmm2_d;
xor zmm13_e@uint32 zmm13_e zmm2_e; xor zmm13_f@uint32 zmm13_f zmm2_f;
(* vpxord %zmm3,%zmm14,%zmm14                      #! PC = 0x555555558352 *)
xor zmm14_0@uint32 zmm14_0 zmm3_0; xor zmm14_1@uint32 zmm14_1 zmm3_1;
xor zmm14_2@uint32 zmm14_2 zmm3_2; xor zmm14_3@uint32 zmm14_3 zmm3_3;
xor zmm14_4@uint32 zmm14_4 zmm3_4; xor zmm14_5@uint32 zmm14_5 zmm3_5;
xor zmm14_6@uint32 zmm14_6 zmm3_6; xor zmm14_7@uint32 zmm14_7 zmm3_7;
xor zmm14_8@uint32 zmm14_8 zmm3_8; xor zmm14_9@uint32 zmm14_9 zmm3_9;
xor zmm14_a@uint32 zmm14_a zmm3_a; xor zmm14_b@uint32 zmm14_b zmm3_b;
xor zmm14_c@uint32 zmm14_c zmm3_c; xor zmm14_d@uint32 zmm14_d zmm3_d;
xor zmm14_e@uint32 zmm14_e zmm3_e; xor zmm14_f@uint32 zmm14_f zmm3_f;
(* vprold $0x8,%zmm15,%zmm15                       #! PC = 0x555555558358 *)
rol zmm15_0@uint32 zmm15_0 0x8; rol zmm15_1@uint32 zmm15_1 0x8;
rol zmm15_2@uint32 zmm15_2 0x8; rol zmm15_3@uint32 zmm15_3 0x8;
rol zmm15_4@uint32 zmm15_4 0x8; rol zmm15_5@uint32 zmm15_5 0x8;
rol zmm15_6@uint32 zmm15_6 0x8; rol zmm15_7@uint32 zmm15_7 0x8;
rol zmm15_8@uint32 zmm15_8 0x8; rol zmm15_9@uint32 zmm15_9 0x8;
rol zmm15_a@uint32 zmm15_a 0x8; rol zmm15_b@uint32 zmm15_b 0x8;
rol zmm15_c@uint32 zmm15_c 0x8; rol zmm15_d@uint32 zmm15_d 0x8;
rol zmm15_e@uint32 zmm15_e 0x8; rol zmm15_f@uint32 zmm15_f 0x8;
(* vprold $0x8,%zmm12,%zmm12                       #! PC = 0x55555555835f *)
rol zmm12_0@uint32 zmm12_0 0x8; rol zmm12_1@uint32 zmm12_1 0x8;
rol zmm12_2@uint32 zmm12_2 0x8; rol zmm12_3@uint32 zmm12_3 0x8;
rol zmm12_4@uint32 zmm12_4 0x8; rol zmm12_5@uint32 zmm12_5 0x8;
rol zmm12_6@uint32 zmm12_6 0x8; rol zmm12_7@uint32 zmm12_7 0x8;
rol zmm12_8@uint32 zmm12_8 0x8; rol zmm12_9@uint32 zmm12_9 0x8;
rol zmm12_a@uint32 zmm12_a 0x8; rol zmm12_b@uint32 zmm12_b 0x8;
rol zmm12_c@uint32 zmm12_c 0x8; rol zmm12_d@uint32 zmm12_d 0x8;
rol zmm12_e@uint32 zmm12_e 0x8; rol zmm12_f@uint32 zmm12_f 0x8;
(* vprold $0x8,%zmm13,%zmm13                       #! PC = 0x555555558366 *)
rol zmm13_0@uint32 zmm13_0 0x8; rol zmm13_1@uint32 zmm13_1 0x8;
rol zmm13_2@uint32 zmm13_2 0x8; rol zmm13_3@uint32 zmm13_3 0x8;
rol zmm13_4@uint32 zmm13_4 0x8; rol zmm13_5@uint32 zmm13_5 0x8;
rol zmm13_6@uint32 zmm13_6 0x8; rol zmm13_7@uint32 zmm13_7 0x8;
rol zmm13_8@uint32 zmm13_8 0x8; rol zmm13_9@uint32 zmm13_9 0x8;
rol zmm13_a@uint32 zmm13_a 0x8; rol zmm13_b@uint32 zmm13_b 0x8;
rol zmm13_c@uint32 zmm13_c 0x8; rol zmm13_d@uint32 zmm13_d 0x8;
rol zmm13_e@uint32 zmm13_e 0x8; rol zmm13_f@uint32 zmm13_f 0x8;
(* vprold $0x8,%zmm14,%zmm14                       #! PC = 0x55555555836d *)
rol zmm14_0@uint32 zmm14_0 0x8; rol zmm14_1@uint32 zmm14_1 0x8;
rol zmm14_2@uint32 zmm14_2 0x8; rol zmm14_3@uint32 zmm14_3 0x8;
rol zmm14_4@uint32 zmm14_4 0x8; rol zmm14_5@uint32 zmm14_5 0x8;
rol zmm14_6@uint32 zmm14_6 0x8; rol zmm14_7@uint32 zmm14_7 0x8;
rol zmm14_8@uint32 zmm14_8 0x8; rol zmm14_9@uint32 zmm14_9 0x8;
rol zmm14_a@uint32 zmm14_a 0x8; rol zmm14_b@uint32 zmm14_b 0x8;
rol zmm14_c@uint32 zmm14_c 0x8; rol zmm14_d@uint32 zmm14_d 0x8;
rol zmm14_e@uint32 zmm14_e 0x8; rol zmm14_f@uint32 zmm14_f 0x8;
(* vpaddd %zmm15,%zmm10,%zmm10                     #! PC = 0x555555558374 *)
adds dc zmm10_0 zmm10_0 zmm15_0; adds dc zmm10_1 zmm10_1 zmm15_1;
adds dc zmm10_2 zmm10_2 zmm15_2; adds dc zmm10_3 zmm10_3 zmm15_3;
adds dc zmm10_4 zmm10_4 zmm15_4; adds dc zmm10_5 zmm10_5 zmm15_5;
adds dc zmm10_6 zmm10_6 zmm15_6; adds dc zmm10_7 zmm10_7 zmm15_7;
adds dc zmm10_8 zmm10_8 zmm15_8; adds dc zmm10_9 zmm10_9 zmm15_9;
adds dc zmm10_a zmm10_a zmm15_a; adds dc zmm10_b zmm10_b zmm15_b;
adds dc zmm10_c zmm10_c zmm15_c; adds dc zmm10_d zmm10_d zmm15_d;
adds dc zmm10_e zmm10_e zmm15_e; adds dc zmm10_f zmm10_f zmm15_f;
(* vpaddd %zmm12,%zmm11,%zmm11                     #! PC = 0x55555555837a *)
adds dc zmm11_0 zmm11_0 zmm12_0; adds dc zmm11_1 zmm11_1 zmm12_1;
adds dc zmm11_2 zmm11_2 zmm12_2; adds dc zmm11_3 zmm11_3 zmm12_3;
adds dc zmm11_4 zmm11_4 zmm12_4; adds dc zmm11_5 zmm11_5 zmm12_5;
adds dc zmm11_6 zmm11_6 zmm12_6; adds dc zmm11_7 zmm11_7 zmm12_7;
adds dc zmm11_8 zmm11_8 zmm12_8; adds dc zmm11_9 zmm11_9 zmm12_9;
adds dc zmm11_a zmm11_a zmm12_a; adds dc zmm11_b zmm11_b zmm12_b;
adds dc zmm11_c zmm11_c zmm12_c; adds dc zmm11_d zmm11_d zmm12_d;
adds dc zmm11_e zmm11_e zmm12_e; adds dc zmm11_f zmm11_f zmm12_f;
(* vpaddd %zmm13,%zmm8,%zmm8                       #! PC = 0x555555558380 *)
adds dc zmm8_0 zmm8_0 zmm13_0; adds dc zmm8_1 zmm8_1 zmm13_1;
adds dc zmm8_2 zmm8_2 zmm13_2; adds dc zmm8_3 zmm8_3 zmm13_3;
adds dc zmm8_4 zmm8_4 zmm13_4; adds dc zmm8_5 zmm8_5 zmm13_5;
adds dc zmm8_6 zmm8_6 zmm13_6; adds dc zmm8_7 zmm8_7 zmm13_7;
adds dc zmm8_8 zmm8_8 zmm13_8; adds dc zmm8_9 zmm8_9 zmm13_9;
adds dc zmm8_a zmm8_a zmm13_a; adds dc zmm8_b zmm8_b zmm13_b;
adds dc zmm8_c zmm8_c zmm13_c; adds dc zmm8_d zmm8_d zmm13_d;
adds dc zmm8_e zmm8_e zmm13_e; adds dc zmm8_f zmm8_f zmm13_f;
(* vpaddd %zmm14,%zmm9,%zmm9                       #! PC = 0x555555558386 *)
adds dc zmm9_0 zmm9_0 zmm14_0; adds dc zmm9_1 zmm9_1 zmm14_1;
adds dc zmm9_2 zmm9_2 zmm14_2; adds dc zmm9_3 zmm9_3 zmm14_3;
adds dc zmm9_4 zmm9_4 zmm14_4; adds dc zmm9_5 zmm9_5 zmm14_5;
adds dc zmm9_6 zmm9_6 zmm14_6; adds dc zmm9_7 zmm9_7 zmm14_7;
adds dc zmm9_8 zmm9_8 zmm14_8; adds dc zmm9_9 zmm9_9 zmm14_9;
adds dc zmm9_a zmm9_a zmm14_a; adds dc zmm9_b zmm9_b zmm14_b;
adds dc zmm9_c zmm9_c zmm14_c; adds dc zmm9_d zmm9_d zmm14_d;
adds dc zmm9_e zmm9_e zmm14_e; adds dc zmm9_f zmm9_f zmm14_f;
(* vpxord %zmm10,%zmm5,%zmm5                       #! PC = 0x55555555838c *)
xor zmm5_0@uint32 zmm5_0 zmm10_0; xor zmm5_1@uint32 zmm5_1 zmm10_1;
xor zmm5_2@uint32 zmm5_2 zmm10_2; xor zmm5_3@uint32 zmm5_3 zmm10_3;
xor zmm5_4@uint32 zmm5_4 zmm10_4; xor zmm5_5@uint32 zmm5_5 zmm10_5;
xor zmm5_6@uint32 zmm5_6 zmm10_6; xor zmm5_7@uint32 zmm5_7 zmm10_7;
xor zmm5_8@uint32 zmm5_8 zmm10_8; xor zmm5_9@uint32 zmm5_9 zmm10_9;
xor zmm5_a@uint32 zmm5_a zmm10_a; xor zmm5_b@uint32 zmm5_b zmm10_b;
xor zmm5_c@uint32 zmm5_c zmm10_c; xor zmm5_d@uint32 zmm5_d zmm10_d;
xor zmm5_e@uint32 zmm5_e zmm10_e; xor zmm5_f@uint32 zmm5_f zmm10_f;
(* vpxord %zmm11,%zmm6,%zmm6                       #! PC = 0x555555558392 *)
xor zmm6_0@uint32 zmm6_0 zmm11_0; xor zmm6_1@uint32 zmm6_1 zmm11_1;
xor zmm6_2@uint32 zmm6_2 zmm11_2; xor zmm6_3@uint32 zmm6_3 zmm11_3;
xor zmm6_4@uint32 zmm6_4 zmm11_4; xor zmm6_5@uint32 zmm6_5 zmm11_5;
xor zmm6_6@uint32 zmm6_6 zmm11_6; xor zmm6_7@uint32 zmm6_7 zmm11_7;
xor zmm6_8@uint32 zmm6_8 zmm11_8; xor zmm6_9@uint32 zmm6_9 zmm11_9;
xor zmm6_a@uint32 zmm6_a zmm11_a; xor zmm6_b@uint32 zmm6_b zmm11_b;
xor zmm6_c@uint32 zmm6_c zmm11_c; xor zmm6_d@uint32 zmm6_d zmm11_d;
xor zmm6_e@uint32 zmm6_e zmm11_e; xor zmm6_f@uint32 zmm6_f zmm11_f;
(* vpxord %zmm8,%zmm7,%zmm7                        #! PC = 0x555555558398 *)
xor zmm7_0@uint32 zmm7_0 zmm8_0; xor zmm7_1@uint32 zmm7_1 zmm8_1;
xor zmm7_2@uint32 zmm7_2 zmm8_2; xor zmm7_3@uint32 zmm7_3 zmm8_3;
xor zmm7_4@uint32 zmm7_4 zmm8_4; xor zmm7_5@uint32 zmm7_5 zmm8_5;
xor zmm7_6@uint32 zmm7_6 zmm8_6; xor zmm7_7@uint32 zmm7_7 zmm8_7;
xor zmm7_8@uint32 zmm7_8 zmm8_8; xor zmm7_9@uint32 zmm7_9 zmm8_9;
xor zmm7_a@uint32 zmm7_a zmm8_a; xor zmm7_b@uint32 zmm7_b zmm8_b;
xor zmm7_c@uint32 zmm7_c zmm8_c; xor zmm7_d@uint32 zmm7_d zmm8_d;
xor zmm7_e@uint32 zmm7_e zmm8_e; xor zmm7_f@uint32 zmm7_f zmm8_f;
(* vpxord %zmm9,%zmm4,%zmm4                        #! PC = 0x55555555839e *)
xor zmm4_0@uint32 zmm4_0 zmm9_0; xor zmm4_1@uint32 zmm4_1 zmm9_1;
xor zmm4_2@uint32 zmm4_2 zmm9_2; xor zmm4_3@uint32 zmm4_3 zmm9_3;
xor zmm4_4@uint32 zmm4_4 zmm9_4; xor zmm4_5@uint32 zmm4_5 zmm9_5;
xor zmm4_6@uint32 zmm4_6 zmm9_6; xor zmm4_7@uint32 zmm4_7 zmm9_7;
xor zmm4_8@uint32 zmm4_8 zmm9_8; xor zmm4_9@uint32 zmm4_9 zmm9_9;
xor zmm4_a@uint32 zmm4_a zmm9_a; xor zmm4_b@uint32 zmm4_b zmm9_b;
xor zmm4_c@uint32 zmm4_c zmm9_c; xor zmm4_d@uint32 zmm4_d zmm9_d;
xor zmm4_e@uint32 zmm4_e zmm9_e; xor zmm4_f@uint32 zmm4_f zmm9_f;
(* vprold $0x7,%zmm5,%zmm5                         #! PC = 0x5555555583a4 *)
rol zmm5_0@uint32 zmm5_0 0x7; rol zmm5_1@uint32 zmm5_1 0x7;
rol zmm5_2@uint32 zmm5_2 0x7; rol zmm5_3@uint32 zmm5_3 0x7;
rol zmm5_4@uint32 zmm5_4 0x7; rol zmm5_5@uint32 zmm5_5 0x7;
rol zmm5_6@uint32 zmm5_6 0x7; rol zmm5_7@uint32 zmm5_7 0x7;
rol zmm5_8@uint32 zmm5_8 0x7; rol zmm5_9@uint32 zmm5_9 0x7;
rol zmm5_a@uint32 zmm5_a 0x7; rol zmm5_b@uint32 zmm5_b 0x7;
rol zmm5_c@uint32 zmm5_c 0x7; rol zmm5_d@uint32 zmm5_d 0x7;
rol zmm5_e@uint32 zmm5_e 0x7; rol zmm5_f@uint32 zmm5_f 0x7;
(* vprold $0x7,%zmm6,%zmm6                         #! PC = 0x5555555583ab *)
rol zmm6_0@uint32 zmm6_0 0x7; rol zmm6_1@uint32 zmm6_1 0x7;
rol zmm6_2@uint32 zmm6_2 0x7; rol zmm6_3@uint32 zmm6_3 0x7;
rol zmm6_4@uint32 zmm6_4 0x7; rol zmm6_5@uint32 zmm6_5 0x7;
rol zmm6_6@uint32 zmm6_6 0x7; rol zmm6_7@uint32 zmm6_7 0x7;
rol zmm6_8@uint32 zmm6_8 0x7; rol zmm6_9@uint32 zmm6_9 0x7;
rol zmm6_a@uint32 zmm6_a 0x7; rol zmm6_b@uint32 zmm6_b 0x7;
rol zmm6_c@uint32 zmm6_c 0x7; rol zmm6_d@uint32 zmm6_d 0x7;
rol zmm6_e@uint32 zmm6_e 0x7; rol zmm6_f@uint32 zmm6_f 0x7;
(* vprold $0x7,%zmm7,%zmm7                         #! PC = 0x5555555583b2 *)
rol zmm7_0@uint32 zmm7_0 0x7; rol zmm7_1@uint32 zmm7_1 0x7;
rol zmm7_2@uint32 zmm7_2 0x7; rol zmm7_3@uint32 zmm7_3 0x7;
rol zmm7_4@uint32 zmm7_4 0x7; rol zmm7_5@uint32 zmm7_5 0x7;
rol zmm7_6@uint32 zmm7_6 0x7; rol zmm7_7@uint32 zmm7_7 0x7;
rol zmm7_8@uint32 zmm7_8 0x7; rol zmm7_9@uint32 zmm7_9 0x7;
rol zmm7_a@uint32 zmm7_a 0x7; rol zmm7_b@uint32 zmm7_b 0x7;
rol zmm7_c@uint32 zmm7_c 0x7; rol zmm7_d@uint32 zmm7_d 0x7;
rol zmm7_e@uint32 zmm7_e 0x7; rol zmm7_f@uint32 zmm7_f 0x7;
(* vprold $0x7,%zmm4,%zmm4                         #! PC = 0x5555555583b9 *)
rol zmm4_0@uint32 zmm4_0 0x7; rol zmm4_1@uint32 zmm4_1 0x7;
rol zmm4_2@uint32 zmm4_2 0x7; rol zmm4_3@uint32 zmm4_3 0x7;
rol zmm4_4@uint32 zmm4_4 0x7; rol zmm4_5@uint32 zmm4_5 0x7;
rol zmm4_6@uint32 zmm4_6 0x7; rol zmm4_7@uint32 zmm4_7 0x7;
rol zmm4_8@uint32 zmm4_8 0x7; rol zmm4_9@uint32 zmm4_9 0x7;
rol zmm4_a@uint32 zmm4_a 0x7; rol zmm4_b@uint32 zmm4_b 0x7;
rol zmm4_c@uint32 zmm4_c 0x7; rol zmm4_d@uint32 zmm4_d 0x7;
rol zmm4_e@uint32 zmm4_e 0x7; rol zmm4_f@uint32 zmm4_f 0x7;
(* dec    %eax                                     #! PC = 0x5555555583c0 *)
(* dec %eax *)
nop;
(* #jne    0x555555558160 <ChaCha20_16x+448>       #! PC = 0x5555555583c2 *)
#jne    0x555555558160 <ChaCha20_16x+448>       #! 0x5555555583c2 = 0x5555555583c2;
(* vpaddd %zmm4,%zmm0,%zmm0                        #! PC = 0x555555558160 *)
adds dc zmm0_0 zmm0_0 zmm4_0; adds dc zmm0_1 zmm0_1 zmm4_1;
adds dc zmm0_2 zmm0_2 zmm4_2; adds dc zmm0_3 zmm0_3 zmm4_3;
adds dc zmm0_4 zmm0_4 zmm4_4; adds dc zmm0_5 zmm0_5 zmm4_5;
adds dc zmm0_6 zmm0_6 zmm4_6; adds dc zmm0_7 zmm0_7 zmm4_7;
adds dc zmm0_8 zmm0_8 zmm4_8; adds dc zmm0_9 zmm0_9 zmm4_9;
adds dc zmm0_a zmm0_a zmm4_a; adds dc zmm0_b zmm0_b zmm4_b;
adds dc zmm0_c zmm0_c zmm4_c; adds dc zmm0_d zmm0_d zmm4_d;
adds dc zmm0_e zmm0_e zmm4_e; adds dc zmm0_f zmm0_f zmm4_f;
(* vpaddd %zmm5,%zmm1,%zmm1                        #! PC = 0x555555558166 *)
adds dc zmm1_0 zmm1_0 zmm5_0; adds dc zmm1_1 zmm1_1 zmm5_1;
adds dc zmm1_2 zmm1_2 zmm5_2; adds dc zmm1_3 zmm1_3 zmm5_3;
adds dc zmm1_4 zmm1_4 zmm5_4; adds dc zmm1_5 zmm1_5 zmm5_5;
adds dc zmm1_6 zmm1_6 zmm5_6; adds dc zmm1_7 zmm1_7 zmm5_7;
adds dc zmm1_8 zmm1_8 zmm5_8; adds dc zmm1_9 zmm1_9 zmm5_9;
adds dc zmm1_a zmm1_a zmm5_a; adds dc zmm1_b zmm1_b zmm5_b;
adds dc zmm1_c zmm1_c zmm5_c; adds dc zmm1_d zmm1_d zmm5_d;
adds dc zmm1_e zmm1_e zmm5_e; adds dc zmm1_f zmm1_f zmm5_f;
(* vpaddd %zmm6,%zmm2,%zmm2                        #! PC = 0x55555555816c *)
adds dc zmm2_0 zmm2_0 zmm6_0; adds dc zmm2_1 zmm2_1 zmm6_1;
adds dc zmm2_2 zmm2_2 zmm6_2; adds dc zmm2_3 zmm2_3 zmm6_3;
adds dc zmm2_4 zmm2_4 zmm6_4; adds dc zmm2_5 zmm2_5 zmm6_5;
adds dc zmm2_6 zmm2_6 zmm6_6; adds dc zmm2_7 zmm2_7 zmm6_7;
adds dc zmm2_8 zmm2_8 zmm6_8; adds dc zmm2_9 zmm2_9 zmm6_9;
adds dc zmm2_a zmm2_a zmm6_a; adds dc zmm2_b zmm2_b zmm6_b;
adds dc zmm2_c zmm2_c zmm6_c; adds dc zmm2_d zmm2_d zmm6_d;
adds dc zmm2_e zmm2_e zmm6_e; adds dc zmm2_f zmm2_f zmm6_f;
(* vpaddd %zmm7,%zmm3,%zmm3                        #! PC = 0x555555558172 *)
adds dc zmm3_0 zmm3_0 zmm7_0; adds dc zmm3_1 zmm3_1 zmm7_1;
adds dc zmm3_2 zmm3_2 zmm7_2; adds dc zmm3_3 zmm3_3 zmm7_3;
adds dc zmm3_4 zmm3_4 zmm7_4; adds dc zmm3_5 zmm3_5 zmm7_5;
adds dc zmm3_6 zmm3_6 zmm7_6; adds dc zmm3_7 zmm3_7 zmm7_7;
adds dc zmm3_8 zmm3_8 zmm7_8; adds dc zmm3_9 zmm3_9 zmm7_9;
adds dc zmm3_a zmm3_a zmm7_a; adds dc zmm3_b zmm3_b zmm7_b;
adds dc zmm3_c zmm3_c zmm7_c; adds dc zmm3_d zmm3_d zmm7_d;
adds dc zmm3_e zmm3_e zmm7_e; adds dc zmm3_f zmm3_f zmm7_f;
(* vpxord %zmm0,%zmm12,%zmm12                      #! PC = 0x555555558178 *)
xor zmm12_0@uint32 zmm12_0 zmm0_0; xor zmm12_1@uint32 zmm12_1 zmm0_1;
xor zmm12_2@uint32 zmm12_2 zmm0_2; xor zmm12_3@uint32 zmm12_3 zmm0_3;
xor zmm12_4@uint32 zmm12_4 zmm0_4; xor zmm12_5@uint32 zmm12_5 zmm0_5;
xor zmm12_6@uint32 zmm12_6 zmm0_6; xor zmm12_7@uint32 zmm12_7 zmm0_7;
xor zmm12_8@uint32 zmm12_8 zmm0_8; xor zmm12_9@uint32 zmm12_9 zmm0_9;
xor zmm12_a@uint32 zmm12_a zmm0_a; xor zmm12_b@uint32 zmm12_b zmm0_b;
xor zmm12_c@uint32 zmm12_c zmm0_c; xor zmm12_d@uint32 zmm12_d zmm0_d;
xor zmm12_e@uint32 zmm12_e zmm0_e; xor zmm12_f@uint32 zmm12_f zmm0_f;
(* vpxord %zmm1,%zmm13,%zmm13                      #! PC = 0x55555555817e *)
xor zmm13_0@uint32 zmm13_0 zmm1_0; xor zmm13_1@uint32 zmm13_1 zmm1_1;
xor zmm13_2@uint32 zmm13_2 zmm1_2; xor zmm13_3@uint32 zmm13_3 zmm1_3;
xor zmm13_4@uint32 zmm13_4 zmm1_4; xor zmm13_5@uint32 zmm13_5 zmm1_5;
xor zmm13_6@uint32 zmm13_6 zmm1_6; xor zmm13_7@uint32 zmm13_7 zmm1_7;
xor zmm13_8@uint32 zmm13_8 zmm1_8; xor zmm13_9@uint32 zmm13_9 zmm1_9;
xor zmm13_a@uint32 zmm13_a zmm1_a; xor zmm13_b@uint32 zmm13_b zmm1_b;
xor zmm13_c@uint32 zmm13_c zmm1_c; xor zmm13_d@uint32 zmm13_d zmm1_d;
xor zmm13_e@uint32 zmm13_e zmm1_e; xor zmm13_f@uint32 zmm13_f zmm1_f;
(* vpxord %zmm2,%zmm14,%zmm14                      #! PC = 0x555555558184 *)
xor zmm14_0@uint32 zmm14_0 zmm2_0; xor zmm14_1@uint32 zmm14_1 zmm2_1;
xor zmm14_2@uint32 zmm14_2 zmm2_2; xor zmm14_3@uint32 zmm14_3 zmm2_3;
xor zmm14_4@uint32 zmm14_4 zmm2_4; xor zmm14_5@uint32 zmm14_5 zmm2_5;
xor zmm14_6@uint32 zmm14_6 zmm2_6; xor zmm14_7@uint32 zmm14_7 zmm2_7;
xor zmm14_8@uint32 zmm14_8 zmm2_8; xor zmm14_9@uint32 zmm14_9 zmm2_9;
xor zmm14_a@uint32 zmm14_a zmm2_a; xor zmm14_b@uint32 zmm14_b zmm2_b;
xor zmm14_c@uint32 zmm14_c zmm2_c; xor zmm14_d@uint32 zmm14_d zmm2_d;
xor zmm14_e@uint32 zmm14_e zmm2_e; xor zmm14_f@uint32 zmm14_f zmm2_f;
(* vpxord %zmm3,%zmm15,%zmm15                      #! PC = 0x55555555818a *)
xor zmm15_0@uint32 zmm15_0 zmm3_0; xor zmm15_1@uint32 zmm15_1 zmm3_1;
xor zmm15_2@uint32 zmm15_2 zmm3_2; xor zmm15_3@uint32 zmm15_3 zmm3_3;
xor zmm15_4@uint32 zmm15_4 zmm3_4; xor zmm15_5@uint32 zmm15_5 zmm3_5;
xor zmm15_6@uint32 zmm15_6 zmm3_6; xor zmm15_7@uint32 zmm15_7 zmm3_7;
xor zmm15_8@uint32 zmm15_8 zmm3_8; xor zmm15_9@uint32 zmm15_9 zmm3_9;
xor zmm15_a@uint32 zmm15_a zmm3_a; xor zmm15_b@uint32 zmm15_b zmm3_b;
xor zmm15_c@uint32 zmm15_c zmm3_c; xor zmm15_d@uint32 zmm15_d zmm3_d;
xor zmm15_e@uint32 zmm15_e zmm3_e; xor zmm15_f@uint32 zmm15_f zmm3_f;
(* vprold $0x10,%zmm12,%zmm12                      #! PC = 0x555555558190 *)
rol zmm12_0@uint32 zmm12_0 0x10; rol zmm12_1@uint32 zmm12_1 0x10;
rol zmm12_2@uint32 zmm12_2 0x10; rol zmm12_3@uint32 zmm12_3 0x10;
rol zmm12_4@uint32 zmm12_4 0x10; rol zmm12_5@uint32 zmm12_5 0x10;
rol zmm12_6@uint32 zmm12_6 0x10; rol zmm12_7@uint32 zmm12_7 0x10;
rol zmm12_8@uint32 zmm12_8 0x10; rol zmm12_9@uint32 zmm12_9 0x10;
rol zmm12_a@uint32 zmm12_a 0x10; rol zmm12_b@uint32 zmm12_b 0x10;
rol zmm12_c@uint32 zmm12_c 0x10; rol zmm12_d@uint32 zmm12_d 0x10;
rol zmm12_e@uint32 zmm12_e 0x10; rol zmm12_f@uint32 zmm12_f 0x10;
(* vprold $0x10,%zmm13,%zmm13                      #! PC = 0x555555558197 *)
rol zmm13_0@uint32 zmm13_0 0x10; rol zmm13_1@uint32 zmm13_1 0x10;
rol zmm13_2@uint32 zmm13_2 0x10; rol zmm13_3@uint32 zmm13_3 0x10;
rol zmm13_4@uint32 zmm13_4 0x10; rol zmm13_5@uint32 zmm13_5 0x10;
rol zmm13_6@uint32 zmm13_6 0x10; rol zmm13_7@uint32 zmm13_7 0x10;
rol zmm13_8@uint32 zmm13_8 0x10; rol zmm13_9@uint32 zmm13_9 0x10;
rol zmm13_a@uint32 zmm13_a 0x10; rol zmm13_b@uint32 zmm13_b 0x10;
rol zmm13_c@uint32 zmm13_c 0x10; rol zmm13_d@uint32 zmm13_d 0x10;
rol zmm13_e@uint32 zmm13_e 0x10; rol zmm13_f@uint32 zmm13_f 0x10;
(* vprold $0x10,%zmm14,%zmm14                      #! PC = 0x55555555819e *)
rol zmm14_0@uint32 zmm14_0 0x10; rol zmm14_1@uint32 zmm14_1 0x10;
rol zmm14_2@uint32 zmm14_2 0x10; rol zmm14_3@uint32 zmm14_3 0x10;
rol zmm14_4@uint32 zmm14_4 0x10; rol zmm14_5@uint32 zmm14_5 0x10;
rol zmm14_6@uint32 zmm14_6 0x10; rol zmm14_7@uint32 zmm14_7 0x10;
rol zmm14_8@uint32 zmm14_8 0x10; rol zmm14_9@uint32 zmm14_9 0x10;
rol zmm14_a@uint32 zmm14_a 0x10; rol zmm14_b@uint32 zmm14_b 0x10;
rol zmm14_c@uint32 zmm14_c 0x10; rol zmm14_d@uint32 zmm14_d 0x10;
rol zmm14_e@uint32 zmm14_e 0x10; rol zmm14_f@uint32 zmm14_f 0x10;
(* vprold $0x10,%zmm15,%zmm15                      #! PC = 0x5555555581a5 *)
rol zmm15_0@uint32 zmm15_0 0x10; rol zmm15_1@uint32 zmm15_1 0x10;
rol zmm15_2@uint32 zmm15_2 0x10; rol zmm15_3@uint32 zmm15_3 0x10;
rol zmm15_4@uint32 zmm15_4 0x10; rol zmm15_5@uint32 zmm15_5 0x10;
rol zmm15_6@uint32 zmm15_6 0x10; rol zmm15_7@uint32 zmm15_7 0x10;
rol zmm15_8@uint32 zmm15_8 0x10; rol zmm15_9@uint32 zmm15_9 0x10;
rol zmm15_a@uint32 zmm15_a 0x10; rol zmm15_b@uint32 zmm15_b 0x10;
rol zmm15_c@uint32 zmm15_c 0x10; rol zmm15_d@uint32 zmm15_d 0x10;
rol zmm15_e@uint32 zmm15_e 0x10; rol zmm15_f@uint32 zmm15_f 0x10;
(* vpaddd %zmm12,%zmm8,%zmm8                       #! PC = 0x5555555581ac *)
adds dc zmm8_0 zmm8_0 zmm12_0; adds dc zmm8_1 zmm8_1 zmm12_1;
adds dc zmm8_2 zmm8_2 zmm12_2; adds dc zmm8_3 zmm8_3 zmm12_3;
adds dc zmm8_4 zmm8_4 zmm12_4; adds dc zmm8_5 zmm8_5 zmm12_5;
adds dc zmm8_6 zmm8_6 zmm12_6; adds dc zmm8_7 zmm8_7 zmm12_7;
adds dc zmm8_8 zmm8_8 zmm12_8; adds dc zmm8_9 zmm8_9 zmm12_9;
adds dc zmm8_a zmm8_a zmm12_a; adds dc zmm8_b zmm8_b zmm12_b;
adds dc zmm8_c zmm8_c zmm12_c; adds dc zmm8_d zmm8_d zmm12_d;
adds dc zmm8_e zmm8_e zmm12_e; adds dc zmm8_f zmm8_f zmm12_f;
(* vpaddd %zmm13,%zmm9,%zmm9                       #! PC = 0x5555555581b2 *)
adds dc zmm9_0 zmm9_0 zmm13_0; adds dc zmm9_1 zmm9_1 zmm13_1;
adds dc zmm9_2 zmm9_2 zmm13_2; adds dc zmm9_3 zmm9_3 zmm13_3;
adds dc zmm9_4 zmm9_4 zmm13_4; adds dc zmm9_5 zmm9_5 zmm13_5;
adds dc zmm9_6 zmm9_6 zmm13_6; adds dc zmm9_7 zmm9_7 zmm13_7;
adds dc zmm9_8 zmm9_8 zmm13_8; adds dc zmm9_9 zmm9_9 zmm13_9;
adds dc zmm9_a zmm9_a zmm13_a; adds dc zmm9_b zmm9_b zmm13_b;
adds dc zmm9_c zmm9_c zmm13_c; adds dc zmm9_d zmm9_d zmm13_d;
adds dc zmm9_e zmm9_e zmm13_e; adds dc zmm9_f zmm9_f zmm13_f;
(* vpaddd %zmm14,%zmm10,%zmm10                     #! PC = 0x5555555581b8 *)
adds dc zmm10_0 zmm10_0 zmm14_0; adds dc zmm10_1 zmm10_1 zmm14_1;
adds dc zmm10_2 zmm10_2 zmm14_2; adds dc zmm10_3 zmm10_3 zmm14_3;
adds dc zmm10_4 zmm10_4 zmm14_4; adds dc zmm10_5 zmm10_5 zmm14_5;
adds dc zmm10_6 zmm10_6 zmm14_6; adds dc zmm10_7 zmm10_7 zmm14_7;
adds dc zmm10_8 zmm10_8 zmm14_8; adds dc zmm10_9 zmm10_9 zmm14_9;
adds dc zmm10_a zmm10_a zmm14_a; adds dc zmm10_b zmm10_b zmm14_b;
adds dc zmm10_c zmm10_c zmm14_c; adds dc zmm10_d zmm10_d zmm14_d;
adds dc zmm10_e zmm10_e zmm14_e; adds dc zmm10_f zmm10_f zmm14_f;
(* vpaddd %zmm15,%zmm11,%zmm11                     #! PC = 0x5555555581be *)
adds dc zmm11_0 zmm11_0 zmm15_0; adds dc zmm11_1 zmm11_1 zmm15_1;
adds dc zmm11_2 zmm11_2 zmm15_2; adds dc zmm11_3 zmm11_3 zmm15_3;
adds dc zmm11_4 zmm11_4 zmm15_4; adds dc zmm11_5 zmm11_5 zmm15_5;
adds dc zmm11_6 zmm11_6 zmm15_6; adds dc zmm11_7 zmm11_7 zmm15_7;
adds dc zmm11_8 zmm11_8 zmm15_8; adds dc zmm11_9 zmm11_9 zmm15_9;
adds dc zmm11_a zmm11_a zmm15_a; adds dc zmm11_b zmm11_b zmm15_b;
adds dc zmm11_c zmm11_c zmm15_c; adds dc zmm11_d zmm11_d zmm15_d;
adds dc zmm11_e zmm11_e zmm15_e; adds dc zmm11_f zmm11_f zmm15_f;
(* vpxord %zmm8,%zmm4,%zmm4                        #! PC = 0x5555555581c4 *)
xor zmm4_0@uint32 zmm4_0 zmm8_0; xor zmm4_1@uint32 zmm4_1 zmm8_1;
xor zmm4_2@uint32 zmm4_2 zmm8_2; xor zmm4_3@uint32 zmm4_3 zmm8_3;
xor zmm4_4@uint32 zmm4_4 zmm8_4; xor zmm4_5@uint32 zmm4_5 zmm8_5;
xor zmm4_6@uint32 zmm4_6 zmm8_6; xor zmm4_7@uint32 zmm4_7 zmm8_7;
xor zmm4_8@uint32 zmm4_8 zmm8_8; xor zmm4_9@uint32 zmm4_9 zmm8_9;
xor zmm4_a@uint32 zmm4_a zmm8_a; xor zmm4_b@uint32 zmm4_b zmm8_b;
xor zmm4_c@uint32 zmm4_c zmm8_c; xor zmm4_d@uint32 zmm4_d zmm8_d;
xor zmm4_e@uint32 zmm4_e zmm8_e; xor zmm4_f@uint32 zmm4_f zmm8_f;
(* vpxord %zmm9,%zmm5,%zmm5                        #! PC = 0x5555555581ca *)
xor zmm5_0@uint32 zmm5_0 zmm9_0; xor zmm5_1@uint32 zmm5_1 zmm9_1;
xor zmm5_2@uint32 zmm5_2 zmm9_2; xor zmm5_3@uint32 zmm5_3 zmm9_3;
xor zmm5_4@uint32 zmm5_4 zmm9_4; xor zmm5_5@uint32 zmm5_5 zmm9_5;
xor zmm5_6@uint32 zmm5_6 zmm9_6; xor zmm5_7@uint32 zmm5_7 zmm9_7;
xor zmm5_8@uint32 zmm5_8 zmm9_8; xor zmm5_9@uint32 zmm5_9 zmm9_9;
xor zmm5_a@uint32 zmm5_a zmm9_a; xor zmm5_b@uint32 zmm5_b zmm9_b;
xor zmm5_c@uint32 zmm5_c zmm9_c; xor zmm5_d@uint32 zmm5_d zmm9_d;
xor zmm5_e@uint32 zmm5_e zmm9_e; xor zmm5_f@uint32 zmm5_f zmm9_f;
(* vpxord %zmm10,%zmm6,%zmm6                       #! PC = 0x5555555581d0 *)
xor zmm6_0@uint32 zmm6_0 zmm10_0; xor zmm6_1@uint32 zmm6_1 zmm10_1;
xor zmm6_2@uint32 zmm6_2 zmm10_2; xor zmm6_3@uint32 zmm6_3 zmm10_3;
xor zmm6_4@uint32 zmm6_4 zmm10_4; xor zmm6_5@uint32 zmm6_5 zmm10_5;
xor zmm6_6@uint32 zmm6_6 zmm10_6; xor zmm6_7@uint32 zmm6_7 zmm10_7;
xor zmm6_8@uint32 zmm6_8 zmm10_8; xor zmm6_9@uint32 zmm6_9 zmm10_9;
xor zmm6_a@uint32 zmm6_a zmm10_a; xor zmm6_b@uint32 zmm6_b zmm10_b;
xor zmm6_c@uint32 zmm6_c zmm10_c; xor zmm6_d@uint32 zmm6_d zmm10_d;
xor zmm6_e@uint32 zmm6_e zmm10_e; xor zmm6_f@uint32 zmm6_f zmm10_f;
(* vpxord %zmm11,%zmm7,%zmm7                       #! PC = 0x5555555581d6 *)
xor zmm7_0@uint32 zmm7_0 zmm11_0; xor zmm7_1@uint32 zmm7_1 zmm11_1;
xor zmm7_2@uint32 zmm7_2 zmm11_2; xor zmm7_3@uint32 zmm7_3 zmm11_3;
xor zmm7_4@uint32 zmm7_4 zmm11_4; xor zmm7_5@uint32 zmm7_5 zmm11_5;
xor zmm7_6@uint32 zmm7_6 zmm11_6; xor zmm7_7@uint32 zmm7_7 zmm11_7;
xor zmm7_8@uint32 zmm7_8 zmm11_8; xor zmm7_9@uint32 zmm7_9 zmm11_9;
xor zmm7_a@uint32 zmm7_a zmm11_a; xor zmm7_b@uint32 zmm7_b zmm11_b;
xor zmm7_c@uint32 zmm7_c zmm11_c; xor zmm7_d@uint32 zmm7_d zmm11_d;
xor zmm7_e@uint32 zmm7_e zmm11_e; xor zmm7_f@uint32 zmm7_f zmm11_f;
(* vprold $0xc,%zmm4,%zmm4                         #! PC = 0x5555555581dc *)
rol zmm4_0@uint32 zmm4_0 0xc; rol zmm4_1@uint32 zmm4_1 0xc;
rol zmm4_2@uint32 zmm4_2 0xc; rol zmm4_3@uint32 zmm4_3 0xc;
rol zmm4_4@uint32 zmm4_4 0xc; rol zmm4_5@uint32 zmm4_5 0xc;
rol zmm4_6@uint32 zmm4_6 0xc; rol zmm4_7@uint32 zmm4_7 0xc;
rol zmm4_8@uint32 zmm4_8 0xc; rol zmm4_9@uint32 zmm4_9 0xc;
rol zmm4_a@uint32 zmm4_a 0xc; rol zmm4_b@uint32 zmm4_b 0xc;
rol zmm4_c@uint32 zmm4_c 0xc; rol zmm4_d@uint32 zmm4_d 0xc;
rol zmm4_e@uint32 zmm4_e 0xc; rol zmm4_f@uint32 zmm4_f 0xc;
(* vprold $0xc,%zmm5,%zmm5                         #! PC = 0x5555555581e3 *)
rol zmm5_0@uint32 zmm5_0 0xc; rol zmm5_1@uint32 zmm5_1 0xc;
rol zmm5_2@uint32 zmm5_2 0xc; rol zmm5_3@uint32 zmm5_3 0xc;
rol zmm5_4@uint32 zmm5_4 0xc; rol zmm5_5@uint32 zmm5_5 0xc;
rol zmm5_6@uint32 zmm5_6 0xc; rol zmm5_7@uint32 zmm5_7 0xc;
rol zmm5_8@uint32 zmm5_8 0xc; rol zmm5_9@uint32 zmm5_9 0xc;
rol zmm5_a@uint32 zmm5_a 0xc; rol zmm5_b@uint32 zmm5_b 0xc;
rol zmm5_c@uint32 zmm5_c 0xc; rol zmm5_d@uint32 zmm5_d 0xc;
rol zmm5_e@uint32 zmm5_e 0xc; rol zmm5_f@uint32 zmm5_f 0xc;
(* vprold $0xc,%zmm6,%zmm6                         #! PC = 0x5555555581ea *)
rol zmm6_0@uint32 zmm6_0 0xc; rol zmm6_1@uint32 zmm6_1 0xc;
rol zmm6_2@uint32 zmm6_2 0xc; rol zmm6_3@uint32 zmm6_3 0xc;
rol zmm6_4@uint32 zmm6_4 0xc; rol zmm6_5@uint32 zmm6_5 0xc;
rol zmm6_6@uint32 zmm6_6 0xc; rol zmm6_7@uint32 zmm6_7 0xc;
rol zmm6_8@uint32 zmm6_8 0xc; rol zmm6_9@uint32 zmm6_9 0xc;
rol zmm6_a@uint32 zmm6_a 0xc; rol zmm6_b@uint32 zmm6_b 0xc;
rol zmm6_c@uint32 zmm6_c 0xc; rol zmm6_d@uint32 zmm6_d 0xc;
rol zmm6_e@uint32 zmm6_e 0xc; rol zmm6_f@uint32 zmm6_f 0xc;
(* vprold $0xc,%zmm7,%zmm7                         #! PC = 0x5555555581f1 *)
rol zmm7_0@uint32 zmm7_0 0xc; rol zmm7_1@uint32 zmm7_1 0xc;
rol zmm7_2@uint32 zmm7_2 0xc; rol zmm7_3@uint32 zmm7_3 0xc;
rol zmm7_4@uint32 zmm7_4 0xc; rol zmm7_5@uint32 zmm7_5 0xc;
rol zmm7_6@uint32 zmm7_6 0xc; rol zmm7_7@uint32 zmm7_7 0xc;
rol zmm7_8@uint32 zmm7_8 0xc; rol zmm7_9@uint32 zmm7_9 0xc;
rol zmm7_a@uint32 zmm7_a 0xc; rol zmm7_b@uint32 zmm7_b 0xc;
rol zmm7_c@uint32 zmm7_c 0xc; rol zmm7_d@uint32 zmm7_d 0xc;
rol zmm7_e@uint32 zmm7_e 0xc; rol zmm7_f@uint32 zmm7_f 0xc;
(* vpaddd %zmm4,%zmm0,%zmm0                        #! PC = 0x5555555581f8 *)
adds dc zmm0_0 zmm0_0 zmm4_0; adds dc zmm0_1 zmm0_1 zmm4_1;
adds dc zmm0_2 zmm0_2 zmm4_2; adds dc zmm0_3 zmm0_3 zmm4_3;
adds dc zmm0_4 zmm0_4 zmm4_4; adds dc zmm0_5 zmm0_5 zmm4_5;
adds dc zmm0_6 zmm0_6 zmm4_6; adds dc zmm0_7 zmm0_7 zmm4_7;
adds dc zmm0_8 zmm0_8 zmm4_8; adds dc zmm0_9 zmm0_9 zmm4_9;
adds dc zmm0_a zmm0_a zmm4_a; adds dc zmm0_b zmm0_b zmm4_b;
adds dc zmm0_c zmm0_c zmm4_c; adds dc zmm0_d zmm0_d zmm4_d;
adds dc zmm0_e zmm0_e zmm4_e; adds dc zmm0_f zmm0_f zmm4_f;
(* vpaddd %zmm5,%zmm1,%zmm1                        #! PC = 0x5555555581fe *)
adds dc zmm1_0 zmm1_0 zmm5_0; adds dc zmm1_1 zmm1_1 zmm5_1;
adds dc zmm1_2 zmm1_2 zmm5_2; adds dc zmm1_3 zmm1_3 zmm5_3;
adds dc zmm1_4 zmm1_4 zmm5_4; adds dc zmm1_5 zmm1_5 zmm5_5;
adds dc zmm1_6 zmm1_6 zmm5_6; adds dc zmm1_7 zmm1_7 zmm5_7;
adds dc zmm1_8 zmm1_8 zmm5_8; adds dc zmm1_9 zmm1_9 zmm5_9;
adds dc zmm1_a zmm1_a zmm5_a; adds dc zmm1_b zmm1_b zmm5_b;
adds dc zmm1_c zmm1_c zmm5_c; adds dc zmm1_d zmm1_d zmm5_d;
adds dc zmm1_e zmm1_e zmm5_e; adds dc zmm1_f zmm1_f zmm5_f;
(* vpaddd %zmm6,%zmm2,%zmm2                        #! PC = 0x555555558204 *)
adds dc zmm2_0 zmm2_0 zmm6_0; adds dc zmm2_1 zmm2_1 zmm6_1;
adds dc zmm2_2 zmm2_2 zmm6_2; adds dc zmm2_3 zmm2_3 zmm6_3;
adds dc zmm2_4 zmm2_4 zmm6_4; adds dc zmm2_5 zmm2_5 zmm6_5;
adds dc zmm2_6 zmm2_6 zmm6_6; adds dc zmm2_7 zmm2_7 zmm6_7;
adds dc zmm2_8 zmm2_8 zmm6_8; adds dc zmm2_9 zmm2_9 zmm6_9;
adds dc zmm2_a zmm2_a zmm6_a; adds dc zmm2_b zmm2_b zmm6_b;
adds dc zmm2_c zmm2_c zmm6_c; adds dc zmm2_d zmm2_d zmm6_d;
adds dc zmm2_e zmm2_e zmm6_e; adds dc zmm2_f zmm2_f zmm6_f;
(* vpaddd %zmm7,%zmm3,%zmm3                        #! PC = 0x55555555820a *)
adds dc zmm3_0 zmm3_0 zmm7_0; adds dc zmm3_1 zmm3_1 zmm7_1;
adds dc zmm3_2 zmm3_2 zmm7_2; adds dc zmm3_3 zmm3_3 zmm7_3;
adds dc zmm3_4 zmm3_4 zmm7_4; adds dc zmm3_5 zmm3_5 zmm7_5;
adds dc zmm3_6 zmm3_6 zmm7_6; adds dc zmm3_7 zmm3_7 zmm7_7;
adds dc zmm3_8 zmm3_8 zmm7_8; adds dc zmm3_9 zmm3_9 zmm7_9;
adds dc zmm3_a zmm3_a zmm7_a; adds dc zmm3_b zmm3_b zmm7_b;
adds dc zmm3_c zmm3_c zmm7_c; adds dc zmm3_d zmm3_d zmm7_d;
adds dc zmm3_e zmm3_e zmm7_e; adds dc zmm3_f zmm3_f zmm7_f;
(* vpxord %zmm0,%zmm12,%zmm12                      #! PC = 0x555555558210 *)
xor zmm12_0@uint32 zmm12_0 zmm0_0; xor zmm12_1@uint32 zmm12_1 zmm0_1;
xor zmm12_2@uint32 zmm12_2 zmm0_2; xor zmm12_3@uint32 zmm12_3 zmm0_3;
xor zmm12_4@uint32 zmm12_4 zmm0_4; xor zmm12_5@uint32 zmm12_5 zmm0_5;
xor zmm12_6@uint32 zmm12_6 zmm0_6; xor zmm12_7@uint32 zmm12_7 zmm0_7;
xor zmm12_8@uint32 zmm12_8 zmm0_8; xor zmm12_9@uint32 zmm12_9 zmm0_9;
xor zmm12_a@uint32 zmm12_a zmm0_a; xor zmm12_b@uint32 zmm12_b zmm0_b;
xor zmm12_c@uint32 zmm12_c zmm0_c; xor zmm12_d@uint32 zmm12_d zmm0_d;
xor zmm12_e@uint32 zmm12_e zmm0_e; xor zmm12_f@uint32 zmm12_f zmm0_f;
(* vpxord %zmm1,%zmm13,%zmm13                      #! PC = 0x555555558216 *)
xor zmm13_0@uint32 zmm13_0 zmm1_0; xor zmm13_1@uint32 zmm13_1 zmm1_1;
xor zmm13_2@uint32 zmm13_2 zmm1_2; xor zmm13_3@uint32 zmm13_3 zmm1_3;
xor zmm13_4@uint32 zmm13_4 zmm1_4; xor zmm13_5@uint32 zmm13_5 zmm1_5;
xor zmm13_6@uint32 zmm13_6 zmm1_6; xor zmm13_7@uint32 zmm13_7 zmm1_7;
xor zmm13_8@uint32 zmm13_8 zmm1_8; xor zmm13_9@uint32 zmm13_9 zmm1_9;
xor zmm13_a@uint32 zmm13_a zmm1_a; xor zmm13_b@uint32 zmm13_b zmm1_b;
xor zmm13_c@uint32 zmm13_c zmm1_c; xor zmm13_d@uint32 zmm13_d zmm1_d;
xor zmm13_e@uint32 zmm13_e zmm1_e; xor zmm13_f@uint32 zmm13_f zmm1_f;
(* vpxord %zmm2,%zmm14,%zmm14                      #! PC = 0x55555555821c *)
xor zmm14_0@uint32 zmm14_0 zmm2_0; xor zmm14_1@uint32 zmm14_1 zmm2_1;
xor zmm14_2@uint32 zmm14_2 zmm2_2; xor zmm14_3@uint32 zmm14_3 zmm2_3;
xor zmm14_4@uint32 zmm14_4 zmm2_4; xor zmm14_5@uint32 zmm14_5 zmm2_5;
xor zmm14_6@uint32 zmm14_6 zmm2_6; xor zmm14_7@uint32 zmm14_7 zmm2_7;
xor zmm14_8@uint32 zmm14_8 zmm2_8; xor zmm14_9@uint32 zmm14_9 zmm2_9;
xor zmm14_a@uint32 zmm14_a zmm2_a; xor zmm14_b@uint32 zmm14_b zmm2_b;
xor zmm14_c@uint32 zmm14_c zmm2_c; xor zmm14_d@uint32 zmm14_d zmm2_d;
xor zmm14_e@uint32 zmm14_e zmm2_e; xor zmm14_f@uint32 zmm14_f zmm2_f;
(* vpxord %zmm3,%zmm15,%zmm15                      #! PC = 0x555555558222 *)
xor zmm15_0@uint32 zmm15_0 zmm3_0; xor zmm15_1@uint32 zmm15_1 zmm3_1;
xor zmm15_2@uint32 zmm15_2 zmm3_2; xor zmm15_3@uint32 zmm15_3 zmm3_3;
xor zmm15_4@uint32 zmm15_4 zmm3_4; xor zmm15_5@uint32 zmm15_5 zmm3_5;
xor zmm15_6@uint32 zmm15_6 zmm3_6; xor zmm15_7@uint32 zmm15_7 zmm3_7;
xor zmm15_8@uint32 zmm15_8 zmm3_8; xor zmm15_9@uint32 zmm15_9 zmm3_9;
xor zmm15_a@uint32 zmm15_a zmm3_a; xor zmm15_b@uint32 zmm15_b zmm3_b;
xor zmm15_c@uint32 zmm15_c zmm3_c; xor zmm15_d@uint32 zmm15_d zmm3_d;
xor zmm15_e@uint32 zmm15_e zmm3_e; xor zmm15_f@uint32 zmm15_f zmm3_f;
(* vprold $0x8,%zmm12,%zmm12                       #! PC = 0x555555558228 *)
rol zmm12_0@uint32 zmm12_0 0x8; rol zmm12_1@uint32 zmm12_1 0x8;
rol zmm12_2@uint32 zmm12_2 0x8; rol zmm12_3@uint32 zmm12_3 0x8;
rol zmm12_4@uint32 zmm12_4 0x8; rol zmm12_5@uint32 zmm12_5 0x8;
rol zmm12_6@uint32 zmm12_6 0x8; rol zmm12_7@uint32 zmm12_7 0x8;
rol zmm12_8@uint32 zmm12_8 0x8; rol zmm12_9@uint32 zmm12_9 0x8;
rol zmm12_a@uint32 zmm12_a 0x8; rol zmm12_b@uint32 zmm12_b 0x8;
rol zmm12_c@uint32 zmm12_c 0x8; rol zmm12_d@uint32 zmm12_d 0x8;
rol zmm12_e@uint32 zmm12_e 0x8; rol zmm12_f@uint32 zmm12_f 0x8;
(* vprold $0x8,%zmm13,%zmm13                       #! PC = 0x55555555822f *)
rol zmm13_0@uint32 zmm13_0 0x8; rol zmm13_1@uint32 zmm13_1 0x8;
rol zmm13_2@uint32 zmm13_2 0x8; rol zmm13_3@uint32 zmm13_3 0x8;
rol zmm13_4@uint32 zmm13_4 0x8; rol zmm13_5@uint32 zmm13_5 0x8;
rol zmm13_6@uint32 zmm13_6 0x8; rol zmm13_7@uint32 zmm13_7 0x8;
rol zmm13_8@uint32 zmm13_8 0x8; rol zmm13_9@uint32 zmm13_9 0x8;
rol zmm13_a@uint32 zmm13_a 0x8; rol zmm13_b@uint32 zmm13_b 0x8;
rol zmm13_c@uint32 zmm13_c 0x8; rol zmm13_d@uint32 zmm13_d 0x8;
rol zmm13_e@uint32 zmm13_e 0x8; rol zmm13_f@uint32 zmm13_f 0x8;
(* vprold $0x8,%zmm14,%zmm14                       #! PC = 0x555555558236 *)
rol zmm14_0@uint32 zmm14_0 0x8; rol zmm14_1@uint32 zmm14_1 0x8;
rol zmm14_2@uint32 zmm14_2 0x8; rol zmm14_3@uint32 zmm14_3 0x8;
rol zmm14_4@uint32 zmm14_4 0x8; rol zmm14_5@uint32 zmm14_5 0x8;
rol zmm14_6@uint32 zmm14_6 0x8; rol zmm14_7@uint32 zmm14_7 0x8;
rol zmm14_8@uint32 zmm14_8 0x8; rol zmm14_9@uint32 zmm14_9 0x8;
rol zmm14_a@uint32 zmm14_a 0x8; rol zmm14_b@uint32 zmm14_b 0x8;
rol zmm14_c@uint32 zmm14_c 0x8; rol zmm14_d@uint32 zmm14_d 0x8;
rol zmm14_e@uint32 zmm14_e 0x8; rol zmm14_f@uint32 zmm14_f 0x8;
(* vprold $0x8,%zmm15,%zmm15                       #! PC = 0x55555555823d *)
rol zmm15_0@uint32 zmm15_0 0x8; rol zmm15_1@uint32 zmm15_1 0x8;
rol zmm15_2@uint32 zmm15_2 0x8; rol zmm15_3@uint32 zmm15_3 0x8;
rol zmm15_4@uint32 zmm15_4 0x8; rol zmm15_5@uint32 zmm15_5 0x8;
rol zmm15_6@uint32 zmm15_6 0x8; rol zmm15_7@uint32 zmm15_7 0x8;
rol zmm15_8@uint32 zmm15_8 0x8; rol zmm15_9@uint32 zmm15_9 0x8;
rol zmm15_a@uint32 zmm15_a 0x8; rol zmm15_b@uint32 zmm15_b 0x8;
rol zmm15_c@uint32 zmm15_c 0x8; rol zmm15_d@uint32 zmm15_d 0x8;
rol zmm15_e@uint32 zmm15_e 0x8; rol zmm15_f@uint32 zmm15_f 0x8;
(* vpaddd %zmm12,%zmm8,%zmm8                       #! PC = 0x555555558244 *)
adds dc zmm8_0 zmm8_0 zmm12_0; adds dc zmm8_1 zmm8_1 zmm12_1;
adds dc zmm8_2 zmm8_2 zmm12_2; adds dc zmm8_3 zmm8_3 zmm12_3;
adds dc zmm8_4 zmm8_4 zmm12_4; adds dc zmm8_5 zmm8_5 zmm12_5;
adds dc zmm8_6 zmm8_6 zmm12_6; adds dc zmm8_7 zmm8_7 zmm12_7;
adds dc zmm8_8 zmm8_8 zmm12_8; adds dc zmm8_9 zmm8_9 zmm12_9;
adds dc zmm8_a zmm8_a zmm12_a; adds dc zmm8_b zmm8_b zmm12_b;
adds dc zmm8_c zmm8_c zmm12_c; adds dc zmm8_d zmm8_d zmm12_d;
adds dc zmm8_e zmm8_e zmm12_e; adds dc zmm8_f zmm8_f zmm12_f;
(* vpaddd %zmm13,%zmm9,%zmm9                       #! PC = 0x55555555824a *)
adds dc zmm9_0 zmm9_0 zmm13_0; adds dc zmm9_1 zmm9_1 zmm13_1;
adds dc zmm9_2 zmm9_2 zmm13_2; adds dc zmm9_3 zmm9_3 zmm13_3;
adds dc zmm9_4 zmm9_4 zmm13_4; adds dc zmm9_5 zmm9_5 zmm13_5;
adds dc zmm9_6 zmm9_6 zmm13_6; adds dc zmm9_7 zmm9_7 zmm13_7;
adds dc zmm9_8 zmm9_8 zmm13_8; adds dc zmm9_9 zmm9_9 zmm13_9;
adds dc zmm9_a zmm9_a zmm13_a; adds dc zmm9_b zmm9_b zmm13_b;
adds dc zmm9_c zmm9_c zmm13_c; adds dc zmm9_d zmm9_d zmm13_d;
adds dc zmm9_e zmm9_e zmm13_e; adds dc zmm9_f zmm9_f zmm13_f;
(* vpaddd %zmm14,%zmm10,%zmm10                     #! PC = 0x555555558250 *)
adds dc zmm10_0 zmm10_0 zmm14_0; adds dc zmm10_1 zmm10_1 zmm14_1;
adds dc zmm10_2 zmm10_2 zmm14_2; adds dc zmm10_3 zmm10_3 zmm14_3;
adds dc zmm10_4 zmm10_4 zmm14_4; adds dc zmm10_5 zmm10_5 zmm14_5;
adds dc zmm10_6 zmm10_6 zmm14_6; adds dc zmm10_7 zmm10_7 zmm14_7;
adds dc zmm10_8 zmm10_8 zmm14_8; adds dc zmm10_9 zmm10_9 zmm14_9;
adds dc zmm10_a zmm10_a zmm14_a; adds dc zmm10_b zmm10_b zmm14_b;
adds dc zmm10_c zmm10_c zmm14_c; adds dc zmm10_d zmm10_d zmm14_d;
adds dc zmm10_e zmm10_e zmm14_e; adds dc zmm10_f zmm10_f zmm14_f;
(* vpaddd %zmm15,%zmm11,%zmm11                     #! PC = 0x555555558256 *)
adds dc zmm11_0 zmm11_0 zmm15_0; adds dc zmm11_1 zmm11_1 zmm15_1;
adds dc zmm11_2 zmm11_2 zmm15_2; adds dc zmm11_3 zmm11_3 zmm15_3;
adds dc zmm11_4 zmm11_4 zmm15_4; adds dc zmm11_5 zmm11_5 zmm15_5;
adds dc zmm11_6 zmm11_6 zmm15_6; adds dc zmm11_7 zmm11_7 zmm15_7;
adds dc zmm11_8 zmm11_8 zmm15_8; adds dc zmm11_9 zmm11_9 zmm15_9;
adds dc zmm11_a zmm11_a zmm15_a; adds dc zmm11_b zmm11_b zmm15_b;
adds dc zmm11_c zmm11_c zmm15_c; adds dc zmm11_d zmm11_d zmm15_d;
adds dc zmm11_e zmm11_e zmm15_e; adds dc zmm11_f zmm11_f zmm15_f;
(* vpxord %zmm8,%zmm4,%zmm4                        #! PC = 0x55555555825c *)
xor zmm4_0@uint32 zmm4_0 zmm8_0; xor zmm4_1@uint32 zmm4_1 zmm8_1;
xor zmm4_2@uint32 zmm4_2 zmm8_2; xor zmm4_3@uint32 zmm4_3 zmm8_3;
xor zmm4_4@uint32 zmm4_4 zmm8_4; xor zmm4_5@uint32 zmm4_5 zmm8_5;
xor zmm4_6@uint32 zmm4_6 zmm8_6; xor zmm4_7@uint32 zmm4_7 zmm8_7;
xor zmm4_8@uint32 zmm4_8 zmm8_8; xor zmm4_9@uint32 zmm4_9 zmm8_9;
xor zmm4_a@uint32 zmm4_a zmm8_a; xor zmm4_b@uint32 zmm4_b zmm8_b;
xor zmm4_c@uint32 zmm4_c zmm8_c; xor zmm4_d@uint32 zmm4_d zmm8_d;
xor zmm4_e@uint32 zmm4_e zmm8_e; xor zmm4_f@uint32 zmm4_f zmm8_f;
(* vpxord %zmm9,%zmm5,%zmm5                        #! PC = 0x555555558262 *)
xor zmm5_0@uint32 zmm5_0 zmm9_0; xor zmm5_1@uint32 zmm5_1 zmm9_1;
xor zmm5_2@uint32 zmm5_2 zmm9_2; xor zmm5_3@uint32 zmm5_3 zmm9_3;
xor zmm5_4@uint32 zmm5_4 zmm9_4; xor zmm5_5@uint32 zmm5_5 zmm9_5;
xor zmm5_6@uint32 zmm5_6 zmm9_6; xor zmm5_7@uint32 zmm5_7 zmm9_7;
xor zmm5_8@uint32 zmm5_8 zmm9_8; xor zmm5_9@uint32 zmm5_9 zmm9_9;
xor zmm5_a@uint32 zmm5_a zmm9_a; xor zmm5_b@uint32 zmm5_b zmm9_b;
xor zmm5_c@uint32 zmm5_c zmm9_c; xor zmm5_d@uint32 zmm5_d zmm9_d;
xor zmm5_e@uint32 zmm5_e zmm9_e; xor zmm5_f@uint32 zmm5_f zmm9_f;
(* vpxord %zmm10,%zmm6,%zmm6                       #! PC = 0x555555558268 *)
xor zmm6_0@uint32 zmm6_0 zmm10_0; xor zmm6_1@uint32 zmm6_1 zmm10_1;
xor zmm6_2@uint32 zmm6_2 zmm10_2; xor zmm6_3@uint32 zmm6_3 zmm10_3;
xor zmm6_4@uint32 zmm6_4 zmm10_4; xor zmm6_5@uint32 zmm6_5 zmm10_5;
xor zmm6_6@uint32 zmm6_6 zmm10_6; xor zmm6_7@uint32 zmm6_7 zmm10_7;
xor zmm6_8@uint32 zmm6_8 zmm10_8; xor zmm6_9@uint32 zmm6_9 zmm10_9;
xor zmm6_a@uint32 zmm6_a zmm10_a; xor zmm6_b@uint32 zmm6_b zmm10_b;
xor zmm6_c@uint32 zmm6_c zmm10_c; xor zmm6_d@uint32 zmm6_d zmm10_d;
xor zmm6_e@uint32 zmm6_e zmm10_e; xor zmm6_f@uint32 zmm6_f zmm10_f;
(* vpxord %zmm11,%zmm7,%zmm7                       #! PC = 0x55555555826e *)
xor zmm7_0@uint32 zmm7_0 zmm11_0; xor zmm7_1@uint32 zmm7_1 zmm11_1;
xor zmm7_2@uint32 zmm7_2 zmm11_2; xor zmm7_3@uint32 zmm7_3 zmm11_3;
xor zmm7_4@uint32 zmm7_4 zmm11_4; xor zmm7_5@uint32 zmm7_5 zmm11_5;
xor zmm7_6@uint32 zmm7_6 zmm11_6; xor zmm7_7@uint32 zmm7_7 zmm11_7;
xor zmm7_8@uint32 zmm7_8 zmm11_8; xor zmm7_9@uint32 zmm7_9 zmm11_9;
xor zmm7_a@uint32 zmm7_a zmm11_a; xor zmm7_b@uint32 zmm7_b zmm11_b;
xor zmm7_c@uint32 zmm7_c zmm11_c; xor zmm7_d@uint32 zmm7_d zmm11_d;
xor zmm7_e@uint32 zmm7_e zmm11_e; xor zmm7_f@uint32 zmm7_f zmm11_f;
(* vprold $0x7,%zmm4,%zmm4                         #! PC = 0x555555558274 *)
rol zmm4_0@uint32 zmm4_0 0x7; rol zmm4_1@uint32 zmm4_1 0x7;
rol zmm4_2@uint32 zmm4_2 0x7; rol zmm4_3@uint32 zmm4_3 0x7;
rol zmm4_4@uint32 zmm4_4 0x7; rol zmm4_5@uint32 zmm4_5 0x7;
rol zmm4_6@uint32 zmm4_6 0x7; rol zmm4_7@uint32 zmm4_7 0x7;
rol zmm4_8@uint32 zmm4_8 0x7; rol zmm4_9@uint32 zmm4_9 0x7;
rol zmm4_a@uint32 zmm4_a 0x7; rol zmm4_b@uint32 zmm4_b 0x7;
rol zmm4_c@uint32 zmm4_c 0x7; rol zmm4_d@uint32 zmm4_d 0x7;
rol zmm4_e@uint32 zmm4_e 0x7; rol zmm4_f@uint32 zmm4_f 0x7;
(* vprold $0x7,%zmm5,%zmm5                         #! PC = 0x55555555827b *)
rol zmm5_0@uint32 zmm5_0 0x7; rol zmm5_1@uint32 zmm5_1 0x7;
rol zmm5_2@uint32 zmm5_2 0x7; rol zmm5_3@uint32 zmm5_3 0x7;
rol zmm5_4@uint32 zmm5_4 0x7; rol zmm5_5@uint32 zmm5_5 0x7;
rol zmm5_6@uint32 zmm5_6 0x7; rol zmm5_7@uint32 zmm5_7 0x7;
rol zmm5_8@uint32 zmm5_8 0x7; rol zmm5_9@uint32 zmm5_9 0x7;
rol zmm5_a@uint32 zmm5_a 0x7; rol zmm5_b@uint32 zmm5_b 0x7;
rol zmm5_c@uint32 zmm5_c 0x7; rol zmm5_d@uint32 zmm5_d 0x7;
rol zmm5_e@uint32 zmm5_e 0x7; rol zmm5_f@uint32 zmm5_f 0x7;
(* vprold $0x7,%zmm6,%zmm6                         #! PC = 0x555555558282 *)
rol zmm6_0@uint32 zmm6_0 0x7; rol zmm6_1@uint32 zmm6_1 0x7;
rol zmm6_2@uint32 zmm6_2 0x7; rol zmm6_3@uint32 zmm6_3 0x7;
rol zmm6_4@uint32 zmm6_4 0x7; rol zmm6_5@uint32 zmm6_5 0x7;
rol zmm6_6@uint32 zmm6_6 0x7; rol zmm6_7@uint32 zmm6_7 0x7;
rol zmm6_8@uint32 zmm6_8 0x7; rol zmm6_9@uint32 zmm6_9 0x7;
rol zmm6_a@uint32 zmm6_a 0x7; rol zmm6_b@uint32 zmm6_b 0x7;
rol zmm6_c@uint32 zmm6_c 0x7; rol zmm6_d@uint32 zmm6_d 0x7;
rol zmm6_e@uint32 zmm6_e 0x7; rol zmm6_f@uint32 zmm6_f 0x7;
(* vprold $0x7,%zmm7,%zmm7                         #! PC = 0x555555558289 *)
rol zmm7_0@uint32 zmm7_0 0x7; rol zmm7_1@uint32 zmm7_1 0x7;
rol zmm7_2@uint32 zmm7_2 0x7; rol zmm7_3@uint32 zmm7_3 0x7;
rol zmm7_4@uint32 zmm7_4 0x7; rol zmm7_5@uint32 zmm7_5 0x7;
rol zmm7_6@uint32 zmm7_6 0x7; rol zmm7_7@uint32 zmm7_7 0x7;
rol zmm7_8@uint32 zmm7_8 0x7; rol zmm7_9@uint32 zmm7_9 0x7;
rol zmm7_a@uint32 zmm7_a 0x7; rol zmm7_b@uint32 zmm7_b 0x7;
rol zmm7_c@uint32 zmm7_c 0x7; rol zmm7_d@uint32 zmm7_d 0x7;
rol zmm7_e@uint32 zmm7_e 0x7; rol zmm7_f@uint32 zmm7_f 0x7;
(* vpaddd %zmm5,%zmm0,%zmm0                        #! PC = 0x555555558290 *)
adds dc zmm0_0 zmm0_0 zmm5_0; adds dc zmm0_1 zmm0_1 zmm5_1;
adds dc zmm0_2 zmm0_2 zmm5_2; adds dc zmm0_3 zmm0_3 zmm5_3;
adds dc zmm0_4 zmm0_4 zmm5_4; adds dc zmm0_5 zmm0_5 zmm5_5;
adds dc zmm0_6 zmm0_6 zmm5_6; adds dc zmm0_7 zmm0_7 zmm5_7;
adds dc zmm0_8 zmm0_8 zmm5_8; adds dc zmm0_9 zmm0_9 zmm5_9;
adds dc zmm0_a zmm0_a zmm5_a; adds dc zmm0_b zmm0_b zmm5_b;
adds dc zmm0_c zmm0_c zmm5_c; adds dc zmm0_d zmm0_d zmm5_d;
adds dc zmm0_e zmm0_e zmm5_e; adds dc zmm0_f zmm0_f zmm5_f;
(* vpaddd %zmm6,%zmm1,%zmm1                        #! PC = 0x555555558296 *)
adds dc zmm1_0 zmm1_0 zmm6_0; adds dc zmm1_1 zmm1_1 zmm6_1;
adds dc zmm1_2 zmm1_2 zmm6_2; adds dc zmm1_3 zmm1_3 zmm6_3;
adds dc zmm1_4 zmm1_4 zmm6_4; adds dc zmm1_5 zmm1_5 zmm6_5;
adds dc zmm1_6 zmm1_6 zmm6_6; adds dc zmm1_7 zmm1_7 zmm6_7;
adds dc zmm1_8 zmm1_8 zmm6_8; adds dc zmm1_9 zmm1_9 zmm6_9;
adds dc zmm1_a zmm1_a zmm6_a; adds dc zmm1_b zmm1_b zmm6_b;
adds dc zmm1_c zmm1_c zmm6_c; adds dc zmm1_d zmm1_d zmm6_d;
adds dc zmm1_e zmm1_e zmm6_e; adds dc zmm1_f zmm1_f zmm6_f;
(* vpaddd %zmm7,%zmm2,%zmm2                        #! PC = 0x55555555829c *)
adds dc zmm2_0 zmm2_0 zmm7_0; adds dc zmm2_1 zmm2_1 zmm7_1;
adds dc zmm2_2 zmm2_2 zmm7_2; adds dc zmm2_3 zmm2_3 zmm7_3;
adds dc zmm2_4 zmm2_4 zmm7_4; adds dc zmm2_5 zmm2_5 zmm7_5;
adds dc zmm2_6 zmm2_6 zmm7_6; adds dc zmm2_7 zmm2_7 zmm7_7;
adds dc zmm2_8 zmm2_8 zmm7_8; adds dc zmm2_9 zmm2_9 zmm7_9;
adds dc zmm2_a zmm2_a zmm7_a; adds dc zmm2_b zmm2_b zmm7_b;
adds dc zmm2_c zmm2_c zmm7_c; adds dc zmm2_d zmm2_d zmm7_d;
adds dc zmm2_e zmm2_e zmm7_e; adds dc zmm2_f zmm2_f zmm7_f;
(* vpaddd %zmm4,%zmm3,%zmm3                        #! PC = 0x5555555582a2 *)
adds dc zmm3_0 zmm3_0 zmm4_0; adds dc zmm3_1 zmm3_1 zmm4_1;
adds dc zmm3_2 zmm3_2 zmm4_2; adds dc zmm3_3 zmm3_3 zmm4_3;
adds dc zmm3_4 zmm3_4 zmm4_4; adds dc zmm3_5 zmm3_5 zmm4_5;
adds dc zmm3_6 zmm3_6 zmm4_6; adds dc zmm3_7 zmm3_7 zmm4_7;
adds dc zmm3_8 zmm3_8 zmm4_8; adds dc zmm3_9 zmm3_9 zmm4_9;
adds dc zmm3_a zmm3_a zmm4_a; adds dc zmm3_b zmm3_b zmm4_b;
adds dc zmm3_c zmm3_c zmm4_c; adds dc zmm3_d zmm3_d zmm4_d;
adds dc zmm3_e zmm3_e zmm4_e; adds dc zmm3_f zmm3_f zmm4_f;
(* vpxord %zmm0,%zmm15,%zmm15                      #! PC = 0x5555555582a8 *)
xor zmm15_0@uint32 zmm15_0 zmm0_0; xor zmm15_1@uint32 zmm15_1 zmm0_1;
xor zmm15_2@uint32 zmm15_2 zmm0_2; xor zmm15_3@uint32 zmm15_3 zmm0_3;
xor zmm15_4@uint32 zmm15_4 zmm0_4; xor zmm15_5@uint32 zmm15_5 zmm0_5;
xor zmm15_6@uint32 zmm15_6 zmm0_6; xor zmm15_7@uint32 zmm15_7 zmm0_7;
xor zmm15_8@uint32 zmm15_8 zmm0_8; xor zmm15_9@uint32 zmm15_9 zmm0_9;
xor zmm15_a@uint32 zmm15_a zmm0_a; xor zmm15_b@uint32 zmm15_b zmm0_b;
xor zmm15_c@uint32 zmm15_c zmm0_c; xor zmm15_d@uint32 zmm15_d zmm0_d;
xor zmm15_e@uint32 zmm15_e zmm0_e; xor zmm15_f@uint32 zmm15_f zmm0_f;
(* vpxord %zmm1,%zmm12,%zmm12                      #! PC = 0x5555555582ae *)
xor zmm12_0@uint32 zmm12_0 zmm1_0; xor zmm12_1@uint32 zmm12_1 zmm1_1;
xor zmm12_2@uint32 zmm12_2 zmm1_2; xor zmm12_3@uint32 zmm12_3 zmm1_3;
xor zmm12_4@uint32 zmm12_4 zmm1_4; xor zmm12_5@uint32 zmm12_5 zmm1_5;
xor zmm12_6@uint32 zmm12_6 zmm1_6; xor zmm12_7@uint32 zmm12_7 zmm1_7;
xor zmm12_8@uint32 zmm12_8 zmm1_8; xor zmm12_9@uint32 zmm12_9 zmm1_9;
xor zmm12_a@uint32 zmm12_a zmm1_a; xor zmm12_b@uint32 zmm12_b zmm1_b;
xor zmm12_c@uint32 zmm12_c zmm1_c; xor zmm12_d@uint32 zmm12_d zmm1_d;
xor zmm12_e@uint32 zmm12_e zmm1_e; xor zmm12_f@uint32 zmm12_f zmm1_f;
(* vpxord %zmm2,%zmm13,%zmm13                      #! PC = 0x5555555582b4 *)
xor zmm13_0@uint32 zmm13_0 zmm2_0; xor zmm13_1@uint32 zmm13_1 zmm2_1;
xor zmm13_2@uint32 zmm13_2 zmm2_2; xor zmm13_3@uint32 zmm13_3 zmm2_3;
xor zmm13_4@uint32 zmm13_4 zmm2_4; xor zmm13_5@uint32 zmm13_5 zmm2_5;
xor zmm13_6@uint32 zmm13_6 zmm2_6; xor zmm13_7@uint32 zmm13_7 zmm2_7;
xor zmm13_8@uint32 zmm13_8 zmm2_8; xor zmm13_9@uint32 zmm13_9 zmm2_9;
xor zmm13_a@uint32 zmm13_a zmm2_a; xor zmm13_b@uint32 zmm13_b zmm2_b;
xor zmm13_c@uint32 zmm13_c zmm2_c; xor zmm13_d@uint32 zmm13_d zmm2_d;
xor zmm13_e@uint32 zmm13_e zmm2_e; xor zmm13_f@uint32 zmm13_f zmm2_f;
(* vpxord %zmm3,%zmm14,%zmm14                      #! PC = 0x5555555582ba *)
xor zmm14_0@uint32 zmm14_0 zmm3_0; xor zmm14_1@uint32 zmm14_1 zmm3_1;
xor zmm14_2@uint32 zmm14_2 zmm3_2; xor zmm14_3@uint32 zmm14_3 zmm3_3;
xor zmm14_4@uint32 zmm14_4 zmm3_4; xor zmm14_5@uint32 zmm14_5 zmm3_5;
xor zmm14_6@uint32 zmm14_6 zmm3_6; xor zmm14_7@uint32 zmm14_7 zmm3_7;
xor zmm14_8@uint32 zmm14_8 zmm3_8; xor zmm14_9@uint32 zmm14_9 zmm3_9;
xor zmm14_a@uint32 zmm14_a zmm3_a; xor zmm14_b@uint32 zmm14_b zmm3_b;
xor zmm14_c@uint32 zmm14_c zmm3_c; xor zmm14_d@uint32 zmm14_d zmm3_d;
xor zmm14_e@uint32 zmm14_e zmm3_e; xor zmm14_f@uint32 zmm14_f zmm3_f;
(* vprold $0x10,%zmm15,%zmm15                      #! PC = 0x5555555582c0 *)
rol zmm15_0@uint32 zmm15_0 0x10; rol zmm15_1@uint32 zmm15_1 0x10;
rol zmm15_2@uint32 zmm15_2 0x10; rol zmm15_3@uint32 zmm15_3 0x10;
rol zmm15_4@uint32 zmm15_4 0x10; rol zmm15_5@uint32 zmm15_5 0x10;
rol zmm15_6@uint32 zmm15_6 0x10; rol zmm15_7@uint32 zmm15_7 0x10;
rol zmm15_8@uint32 zmm15_8 0x10; rol zmm15_9@uint32 zmm15_9 0x10;
rol zmm15_a@uint32 zmm15_a 0x10; rol zmm15_b@uint32 zmm15_b 0x10;
rol zmm15_c@uint32 zmm15_c 0x10; rol zmm15_d@uint32 zmm15_d 0x10;
rol zmm15_e@uint32 zmm15_e 0x10; rol zmm15_f@uint32 zmm15_f 0x10;
(* vprold $0x10,%zmm12,%zmm12                      #! PC = 0x5555555582c7 *)
rol zmm12_0@uint32 zmm12_0 0x10; rol zmm12_1@uint32 zmm12_1 0x10;
rol zmm12_2@uint32 zmm12_2 0x10; rol zmm12_3@uint32 zmm12_3 0x10;
rol zmm12_4@uint32 zmm12_4 0x10; rol zmm12_5@uint32 zmm12_5 0x10;
rol zmm12_6@uint32 zmm12_6 0x10; rol zmm12_7@uint32 zmm12_7 0x10;
rol zmm12_8@uint32 zmm12_8 0x10; rol zmm12_9@uint32 zmm12_9 0x10;
rol zmm12_a@uint32 zmm12_a 0x10; rol zmm12_b@uint32 zmm12_b 0x10;
rol zmm12_c@uint32 zmm12_c 0x10; rol zmm12_d@uint32 zmm12_d 0x10;
rol zmm12_e@uint32 zmm12_e 0x10; rol zmm12_f@uint32 zmm12_f 0x10;
(* vprold $0x10,%zmm13,%zmm13                      #! PC = 0x5555555582ce *)
rol zmm13_0@uint32 zmm13_0 0x10; rol zmm13_1@uint32 zmm13_1 0x10;
rol zmm13_2@uint32 zmm13_2 0x10; rol zmm13_3@uint32 zmm13_3 0x10;
rol zmm13_4@uint32 zmm13_4 0x10; rol zmm13_5@uint32 zmm13_5 0x10;
rol zmm13_6@uint32 zmm13_6 0x10; rol zmm13_7@uint32 zmm13_7 0x10;
rol zmm13_8@uint32 zmm13_8 0x10; rol zmm13_9@uint32 zmm13_9 0x10;
rol zmm13_a@uint32 zmm13_a 0x10; rol zmm13_b@uint32 zmm13_b 0x10;
rol zmm13_c@uint32 zmm13_c 0x10; rol zmm13_d@uint32 zmm13_d 0x10;
rol zmm13_e@uint32 zmm13_e 0x10; rol zmm13_f@uint32 zmm13_f 0x10;
(* vprold $0x10,%zmm14,%zmm14                      #! PC = 0x5555555582d5 *)
rol zmm14_0@uint32 zmm14_0 0x10; rol zmm14_1@uint32 zmm14_1 0x10;
rol zmm14_2@uint32 zmm14_2 0x10; rol zmm14_3@uint32 zmm14_3 0x10;
rol zmm14_4@uint32 zmm14_4 0x10; rol zmm14_5@uint32 zmm14_5 0x10;
rol zmm14_6@uint32 zmm14_6 0x10; rol zmm14_7@uint32 zmm14_7 0x10;
rol zmm14_8@uint32 zmm14_8 0x10; rol zmm14_9@uint32 zmm14_9 0x10;
rol zmm14_a@uint32 zmm14_a 0x10; rol zmm14_b@uint32 zmm14_b 0x10;
rol zmm14_c@uint32 zmm14_c 0x10; rol zmm14_d@uint32 zmm14_d 0x10;
rol zmm14_e@uint32 zmm14_e 0x10; rol zmm14_f@uint32 zmm14_f 0x10;
(* vpaddd %zmm15,%zmm10,%zmm10                     #! PC = 0x5555555582dc *)
adds dc zmm10_0 zmm10_0 zmm15_0; adds dc zmm10_1 zmm10_1 zmm15_1;
adds dc zmm10_2 zmm10_2 zmm15_2; adds dc zmm10_3 zmm10_3 zmm15_3;
adds dc zmm10_4 zmm10_4 zmm15_4; adds dc zmm10_5 zmm10_5 zmm15_5;
adds dc zmm10_6 zmm10_6 zmm15_6; adds dc zmm10_7 zmm10_7 zmm15_7;
adds dc zmm10_8 zmm10_8 zmm15_8; adds dc zmm10_9 zmm10_9 zmm15_9;
adds dc zmm10_a zmm10_a zmm15_a; adds dc zmm10_b zmm10_b zmm15_b;
adds dc zmm10_c zmm10_c zmm15_c; adds dc zmm10_d zmm10_d zmm15_d;
adds dc zmm10_e zmm10_e zmm15_e; adds dc zmm10_f zmm10_f zmm15_f;
(* vpaddd %zmm12,%zmm11,%zmm11                     #! PC = 0x5555555582e2 *)
adds dc zmm11_0 zmm11_0 zmm12_0; adds dc zmm11_1 zmm11_1 zmm12_1;
adds dc zmm11_2 zmm11_2 zmm12_2; adds dc zmm11_3 zmm11_3 zmm12_3;
adds dc zmm11_4 zmm11_4 zmm12_4; adds dc zmm11_5 zmm11_5 zmm12_5;
adds dc zmm11_6 zmm11_6 zmm12_6; adds dc zmm11_7 zmm11_7 zmm12_7;
adds dc zmm11_8 zmm11_8 zmm12_8; adds dc zmm11_9 zmm11_9 zmm12_9;
adds dc zmm11_a zmm11_a zmm12_a; adds dc zmm11_b zmm11_b zmm12_b;
adds dc zmm11_c zmm11_c zmm12_c; adds dc zmm11_d zmm11_d zmm12_d;
adds dc zmm11_e zmm11_e zmm12_e; adds dc zmm11_f zmm11_f zmm12_f;
(* vpaddd %zmm13,%zmm8,%zmm8                       #! PC = 0x5555555582e8 *)
adds dc zmm8_0 zmm8_0 zmm13_0; adds dc zmm8_1 zmm8_1 zmm13_1;
adds dc zmm8_2 zmm8_2 zmm13_2; adds dc zmm8_3 zmm8_3 zmm13_3;
adds dc zmm8_4 zmm8_4 zmm13_4; adds dc zmm8_5 zmm8_5 zmm13_5;
adds dc zmm8_6 zmm8_6 zmm13_6; adds dc zmm8_7 zmm8_7 zmm13_7;
adds dc zmm8_8 zmm8_8 zmm13_8; adds dc zmm8_9 zmm8_9 zmm13_9;
adds dc zmm8_a zmm8_a zmm13_a; adds dc zmm8_b zmm8_b zmm13_b;
adds dc zmm8_c zmm8_c zmm13_c; adds dc zmm8_d zmm8_d zmm13_d;
adds dc zmm8_e zmm8_e zmm13_e; adds dc zmm8_f zmm8_f zmm13_f;
(* vpaddd %zmm14,%zmm9,%zmm9                       #! PC = 0x5555555582ee *)
adds dc zmm9_0 zmm9_0 zmm14_0; adds dc zmm9_1 zmm9_1 zmm14_1;
adds dc zmm9_2 zmm9_2 zmm14_2; adds dc zmm9_3 zmm9_3 zmm14_3;
adds dc zmm9_4 zmm9_4 zmm14_4; adds dc zmm9_5 zmm9_5 zmm14_5;
adds dc zmm9_6 zmm9_6 zmm14_6; adds dc zmm9_7 zmm9_7 zmm14_7;
adds dc zmm9_8 zmm9_8 zmm14_8; adds dc zmm9_9 zmm9_9 zmm14_9;
adds dc zmm9_a zmm9_a zmm14_a; adds dc zmm9_b zmm9_b zmm14_b;
adds dc zmm9_c zmm9_c zmm14_c; adds dc zmm9_d zmm9_d zmm14_d;
adds dc zmm9_e zmm9_e zmm14_e; adds dc zmm9_f zmm9_f zmm14_f;
(* vpxord %zmm10,%zmm5,%zmm5                       #! PC = 0x5555555582f4 *)
xor zmm5_0@uint32 zmm5_0 zmm10_0; xor zmm5_1@uint32 zmm5_1 zmm10_1;
xor zmm5_2@uint32 zmm5_2 zmm10_2; xor zmm5_3@uint32 zmm5_3 zmm10_3;
xor zmm5_4@uint32 zmm5_4 zmm10_4; xor zmm5_5@uint32 zmm5_5 zmm10_5;
xor zmm5_6@uint32 zmm5_6 zmm10_6; xor zmm5_7@uint32 zmm5_7 zmm10_7;
xor zmm5_8@uint32 zmm5_8 zmm10_8; xor zmm5_9@uint32 zmm5_9 zmm10_9;
xor zmm5_a@uint32 zmm5_a zmm10_a; xor zmm5_b@uint32 zmm5_b zmm10_b;
xor zmm5_c@uint32 zmm5_c zmm10_c; xor zmm5_d@uint32 zmm5_d zmm10_d;
xor zmm5_e@uint32 zmm5_e zmm10_e; xor zmm5_f@uint32 zmm5_f zmm10_f;
(* vpxord %zmm11,%zmm6,%zmm6                       #! PC = 0x5555555582fa *)
xor zmm6_0@uint32 zmm6_0 zmm11_0; xor zmm6_1@uint32 zmm6_1 zmm11_1;
xor zmm6_2@uint32 zmm6_2 zmm11_2; xor zmm6_3@uint32 zmm6_3 zmm11_3;
xor zmm6_4@uint32 zmm6_4 zmm11_4; xor zmm6_5@uint32 zmm6_5 zmm11_5;
xor zmm6_6@uint32 zmm6_6 zmm11_6; xor zmm6_7@uint32 zmm6_7 zmm11_7;
xor zmm6_8@uint32 zmm6_8 zmm11_8; xor zmm6_9@uint32 zmm6_9 zmm11_9;
xor zmm6_a@uint32 zmm6_a zmm11_a; xor zmm6_b@uint32 zmm6_b zmm11_b;
xor zmm6_c@uint32 zmm6_c zmm11_c; xor zmm6_d@uint32 zmm6_d zmm11_d;
xor zmm6_e@uint32 zmm6_e zmm11_e; xor zmm6_f@uint32 zmm6_f zmm11_f;
(* vpxord %zmm8,%zmm7,%zmm7                        #! PC = 0x555555558300 *)
xor zmm7_0@uint32 zmm7_0 zmm8_0; xor zmm7_1@uint32 zmm7_1 zmm8_1;
xor zmm7_2@uint32 zmm7_2 zmm8_2; xor zmm7_3@uint32 zmm7_3 zmm8_3;
xor zmm7_4@uint32 zmm7_4 zmm8_4; xor zmm7_5@uint32 zmm7_5 zmm8_5;
xor zmm7_6@uint32 zmm7_6 zmm8_6; xor zmm7_7@uint32 zmm7_7 zmm8_7;
xor zmm7_8@uint32 zmm7_8 zmm8_8; xor zmm7_9@uint32 zmm7_9 zmm8_9;
xor zmm7_a@uint32 zmm7_a zmm8_a; xor zmm7_b@uint32 zmm7_b zmm8_b;
xor zmm7_c@uint32 zmm7_c zmm8_c; xor zmm7_d@uint32 zmm7_d zmm8_d;
xor zmm7_e@uint32 zmm7_e zmm8_e; xor zmm7_f@uint32 zmm7_f zmm8_f;
(* vpxord %zmm9,%zmm4,%zmm4                        #! PC = 0x555555558306 *)
xor zmm4_0@uint32 zmm4_0 zmm9_0; xor zmm4_1@uint32 zmm4_1 zmm9_1;
xor zmm4_2@uint32 zmm4_2 zmm9_2; xor zmm4_3@uint32 zmm4_3 zmm9_3;
xor zmm4_4@uint32 zmm4_4 zmm9_4; xor zmm4_5@uint32 zmm4_5 zmm9_5;
xor zmm4_6@uint32 zmm4_6 zmm9_6; xor zmm4_7@uint32 zmm4_7 zmm9_7;
xor zmm4_8@uint32 zmm4_8 zmm9_8; xor zmm4_9@uint32 zmm4_9 zmm9_9;
xor zmm4_a@uint32 zmm4_a zmm9_a; xor zmm4_b@uint32 zmm4_b zmm9_b;
xor zmm4_c@uint32 zmm4_c zmm9_c; xor zmm4_d@uint32 zmm4_d zmm9_d;
xor zmm4_e@uint32 zmm4_e zmm9_e; xor zmm4_f@uint32 zmm4_f zmm9_f;
(* vprold $0xc,%zmm5,%zmm5                         #! PC = 0x55555555830c *)
rol zmm5_0@uint32 zmm5_0 0xc; rol zmm5_1@uint32 zmm5_1 0xc;
rol zmm5_2@uint32 zmm5_2 0xc; rol zmm5_3@uint32 zmm5_3 0xc;
rol zmm5_4@uint32 zmm5_4 0xc; rol zmm5_5@uint32 zmm5_5 0xc;
rol zmm5_6@uint32 zmm5_6 0xc; rol zmm5_7@uint32 zmm5_7 0xc;
rol zmm5_8@uint32 zmm5_8 0xc; rol zmm5_9@uint32 zmm5_9 0xc;
rol zmm5_a@uint32 zmm5_a 0xc; rol zmm5_b@uint32 zmm5_b 0xc;
rol zmm5_c@uint32 zmm5_c 0xc; rol zmm5_d@uint32 zmm5_d 0xc;
rol zmm5_e@uint32 zmm5_e 0xc; rol zmm5_f@uint32 zmm5_f 0xc;
(* vprold $0xc,%zmm6,%zmm6                         #! PC = 0x555555558313 *)
rol zmm6_0@uint32 zmm6_0 0xc; rol zmm6_1@uint32 zmm6_1 0xc;
rol zmm6_2@uint32 zmm6_2 0xc; rol zmm6_3@uint32 zmm6_3 0xc;
rol zmm6_4@uint32 zmm6_4 0xc; rol zmm6_5@uint32 zmm6_5 0xc;
rol zmm6_6@uint32 zmm6_6 0xc; rol zmm6_7@uint32 zmm6_7 0xc;
rol zmm6_8@uint32 zmm6_8 0xc; rol zmm6_9@uint32 zmm6_9 0xc;
rol zmm6_a@uint32 zmm6_a 0xc; rol zmm6_b@uint32 zmm6_b 0xc;
rol zmm6_c@uint32 zmm6_c 0xc; rol zmm6_d@uint32 zmm6_d 0xc;
rol zmm6_e@uint32 zmm6_e 0xc; rol zmm6_f@uint32 zmm6_f 0xc;
(* vprold $0xc,%zmm7,%zmm7                         #! PC = 0x55555555831a *)
rol zmm7_0@uint32 zmm7_0 0xc; rol zmm7_1@uint32 zmm7_1 0xc;
rol zmm7_2@uint32 zmm7_2 0xc; rol zmm7_3@uint32 zmm7_3 0xc;
rol zmm7_4@uint32 zmm7_4 0xc; rol zmm7_5@uint32 zmm7_5 0xc;
rol zmm7_6@uint32 zmm7_6 0xc; rol zmm7_7@uint32 zmm7_7 0xc;
rol zmm7_8@uint32 zmm7_8 0xc; rol zmm7_9@uint32 zmm7_9 0xc;
rol zmm7_a@uint32 zmm7_a 0xc; rol zmm7_b@uint32 zmm7_b 0xc;
rol zmm7_c@uint32 zmm7_c 0xc; rol zmm7_d@uint32 zmm7_d 0xc;
rol zmm7_e@uint32 zmm7_e 0xc; rol zmm7_f@uint32 zmm7_f 0xc;
(* vprold $0xc,%zmm4,%zmm4                         #! PC = 0x555555558321 *)
rol zmm4_0@uint32 zmm4_0 0xc; rol zmm4_1@uint32 zmm4_1 0xc;
rol zmm4_2@uint32 zmm4_2 0xc; rol zmm4_3@uint32 zmm4_3 0xc;
rol zmm4_4@uint32 zmm4_4 0xc; rol zmm4_5@uint32 zmm4_5 0xc;
rol zmm4_6@uint32 zmm4_6 0xc; rol zmm4_7@uint32 zmm4_7 0xc;
rol zmm4_8@uint32 zmm4_8 0xc; rol zmm4_9@uint32 zmm4_9 0xc;
rol zmm4_a@uint32 zmm4_a 0xc; rol zmm4_b@uint32 zmm4_b 0xc;
rol zmm4_c@uint32 zmm4_c 0xc; rol zmm4_d@uint32 zmm4_d 0xc;
rol zmm4_e@uint32 zmm4_e 0xc; rol zmm4_f@uint32 zmm4_f 0xc;
(* vpaddd %zmm5,%zmm0,%zmm0                        #! PC = 0x555555558328 *)
adds dc zmm0_0 zmm0_0 zmm5_0; adds dc zmm0_1 zmm0_1 zmm5_1;
adds dc zmm0_2 zmm0_2 zmm5_2; adds dc zmm0_3 zmm0_3 zmm5_3;
adds dc zmm0_4 zmm0_4 zmm5_4; adds dc zmm0_5 zmm0_5 zmm5_5;
adds dc zmm0_6 zmm0_6 zmm5_6; adds dc zmm0_7 zmm0_7 zmm5_7;
adds dc zmm0_8 zmm0_8 zmm5_8; adds dc zmm0_9 zmm0_9 zmm5_9;
adds dc zmm0_a zmm0_a zmm5_a; adds dc zmm0_b zmm0_b zmm5_b;
adds dc zmm0_c zmm0_c zmm5_c; adds dc zmm0_d zmm0_d zmm5_d;
adds dc zmm0_e zmm0_e zmm5_e; adds dc zmm0_f zmm0_f zmm5_f;
(* vpaddd %zmm6,%zmm1,%zmm1                        #! PC = 0x55555555832e *)
adds dc zmm1_0 zmm1_0 zmm6_0; adds dc zmm1_1 zmm1_1 zmm6_1;
adds dc zmm1_2 zmm1_2 zmm6_2; adds dc zmm1_3 zmm1_3 zmm6_3;
adds dc zmm1_4 zmm1_4 zmm6_4; adds dc zmm1_5 zmm1_5 zmm6_5;
adds dc zmm1_6 zmm1_6 zmm6_6; adds dc zmm1_7 zmm1_7 zmm6_7;
adds dc zmm1_8 zmm1_8 zmm6_8; adds dc zmm1_9 zmm1_9 zmm6_9;
adds dc zmm1_a zmm1_a zmm6_a; adds dc zmm1_b zmm1_b zmm6_b;
adds dc zmm1_c zmm1_c zmm6_c; adds dc zmm1_d zmm1_d zmm6_d;
adds dc zmm1_e zmm1_e zmm6_e; adds dc zmm1_f zmm1_f zmm6_f;
(* vpaddd %zmm7,%zmm2,%zmm2                        #! PC = 0x555555558334 *)
adds dc zmm2_0 zmm2_0 zmm7_0; adds dc zmm2_1 zmm2_1 zmm7_1;
adds dc zmm2_2 zmm2_2 zmm7_2; adds dc zmm2_3 zmm2_3 zmm7_3;
adds dc zmm2_4 zmm2_4 zmm7_4; adds dc zmm2_5 zmm2_5 zmm7_5;
adds dc zmm2_6 zmm2_6 zmm7_6; adds dc zmm2_7 zmm2_7 zmm7_7;
adds dc zmm2_8 zmm2_8 zmm7_8; adds dc zmm2_9 zmm2_9 zmm7_9;
adds dc zmm2_a zmm2_a zmm7_a; adds dc zmm2_b zmm2_b zmm7_b;
adds dc zmm2_c zmm2_c zmm7_c; adds dc zmm2_d zmm2_d zmm7_d;
adds dc zmm2_e zmm2_e zmm7_e; adds dc zmm2_f zmm2_f zmm7_f;
(* vpaddd %zmm4,%zmm3,%zmm3                        #! PC = 0x55555555833a *)
adds dc zmm3_0 zmm3_0 zmm4_0; adds dc zmm3_1 zmm3_1 zmm4_1;
adds dc zmm3_2 zmm3_2 zmm4_2; adds dc zmm3_3 zmm3_3 zmm4_3;
adds dc zmm3_4 zmm3_4 zmm4_4; adds dc zmm3_5 zmm3_5 zmm4_5;
adds dc zmm3_6 zmm3_6 zmm4_6; adds dc zmm3_7 zmm3_7 zmm4_7;
adds dc zmm3_8 zmm3_8 zmm4_8; adds dc zmm3_9 zmm3_9 zmm4_9;
adds dc zmm3_a zmm3_a zmm4_a; adds dc zmm3_b zmm3_b zmm4_b;
adds dc zmm3_c zmm3_c zmm4_c; adds dc zmm3_d zmm3_d zmm4_d;
adds dc zmm3_e zmm3_e zmm4_e; adds dc zmm3_f zmm3_f zmm4_f;
(* vpxord %zmm0,%zmm15,%zmm15                      #! PC = 0x555555558340 *)
xor zmm15_0@uint32 zmm15_0 zmm0_0; xor zmm15_1@uint32 zmm15_1 zmm0_1;
xor zmm15_2@uint32 zmm15_2 zmm0_2; xor zmm15_3@uint32 zmm15_3 zmm0_3;
xor zmm15_4@uint32 zmm15_4 zmm0_4; xor zmm15_5@uint32 zmm15_5 zmm0_5;
xor zmm15_6@uint32 zmm15_6 zmm0_6; xor zmm15_7@uint32 zmm15_7 zmm0_7;
xor zmm15_8@uint32 zmm15_8 zmm0_8; xor zmm15_9@uint32 zmm15_9 zmm0_9;
xor zmm15_a@uint32 zmm15_a zmm0_a; xor zmm15_b@uint32 zmm15_b zmm0_b;
xor zmm15_c@uint32 zmm15_c zmm0_c; xor zmm15_d@uint32 zmm15_d zmm0_d;
xor zmm15_e@uint32 zmm15_e zmm0_e; xor zmm15_f@uint32 zmm15_f zmm0_f;
(* vpxord %zmm1,%zmm12,%zmm12                      #! PC = 0x555555558346 *)
xor zmm12_0@uint32 zmm12_0 zmm1_0; xor zmm12_1@uint32 zmm12_1 zmm1_1;
xor zmm12_2@uint32 zmm12_2 zmm1_2; xor zmm12_3@uint32 zmm12_3 zmm1_3;
xor zmm12_4@uint32 zmm12_4 zmm1_4; xor zmm12_5@uint32 zmm12_5 zmm1_5;
xor zmm12_6@uint32 zmm12_6 zmm1_6; xor zmm12_7@uint32 zmm12_7 zmm1_7;
xor zmm12_8@uint32 zmm12_8 zmm1_8; xor zmm12_9@uint32 zmm12_9 zmm1_9;
xor zmm12_a@uint32 zmm12_a zmm1_a; xor zmm12_b@uint32 zmm12_b zmm1_b;
xor zmm12_c@uint32 zmm12_c zmm1_c; xor zmm12_d@uint32 zmm12_d zmm1_d;
xor zmm12_e@uint32 zmm12_e zmm1_e; xor zmm12_f@uint32 zmm12_f zmm1_f;
(* vpxord %zmm2,%zmm13,%zmm13                      #! PC = 0x55555555834c *)
xor zmm13_0@uint32 zmm13_0 zmm2_0; xor zmm13_1@uint32 zmm13_1 zmm2_1;
xor zmm13_2@uint32 zmm13_2 zmm2_2; xor zmm13_3@uint32 zmm13_3 zmm2_3;
xor zmm13_4@uint32 zmm13_4 zmm2_4; xor zmm13_5@uint32 zmm13_5 zmm2_5;
xor zmm13_6@uint32 zmm13_6 zmm2_6; xor zmm13_7@uint32 zmm13_7 zmm2_7;
xor zmm13_8@uint32 zmm13_8 zmm2_8; xor zmm13_9@uint32 zmm13_9 zmm2_9;
xor zmm13_a@uint32 zmm13_a zmm2_a; xor zmm13_b@uint32 zmm13_b zmm2_b;
xor zmm13_c@uint32 zmm13_c zmm2_c; xor zmm13_d@uint32 zmm13_d zmm2_d;
xor zmm13_e@uint32 zmm13_e zmm2_e; xor zmm13_f@uint32 zmm13_f zmm2_f;
(* vpxord %zmm3,%zmm14,%zmm14                      #! PC = 0x555555558352 *)
xor zmm14_0@uint32 zmm14_0 zmm3_0; xor zmm14_1@uint32 zmm14_1 zmm3_1;
xor zmm14_2@uint32 zmm14_2 zmm3_2; xor zmm14_3@uint32 zmm14_3 zmm3_3;
xor zmm14_4@uint32 zmm14_4 zmm3_4; xor zmm14_5@uint32 zmm14_5 zmm3_5;
xor zmm14_6@uint32 zmm14_6 zmm3_6; xor zmm14_7@uint32 zmm14_7 zmm3_7;
xor zmm14_8@uint32 zmm14_8 zmm3_8; xor zmm14_9@uint32 zmm14_9 zmm3_9;
xor zmm14_a@uint32 zmm14_a zmm3_a; xor zmm14_b@uint32 zmm14_b zmm3_b;
xor zmm14_c@uint32 zmm14_c zmm3_c; xor zmm14_d@uint32 zmm14_d zmm3_d;
xor zmm14_e@uint32 zmm14_e zmm3_e; xor zmm14_f@uint32 zmm14_f zmm3_f;
(* vprold $0x8,%zmm15,%zmm15                       #! PC = 0x555555558358 *)
rol zmm15_0@uint32 zmm15_0 0x8; rol zmm15_1@uint32 zmm15_1 0x8;
rol zmm15_2@uint32 zmm15_2 0x8; rol zmm15_3@uint32 zmm15_3 0x8;
rol zmm15_4@uint32 zmm15_4 0x8; rol zmm15_5@uint32 zmm15_5 0x8;
rol zmm15_6@uint32 zmm15_6 0x8; rol zmm15_7@uint32 zmm15_7 0x8;
rol zmm15_8@uint32 zmm15_8 0x8; rol zmm15_9@uint32 zmm15_9 0x8;
rol zmm15_a@uint32 zmm15_a 0x8; rol zmm15_b@uint32 zmm15_b 0x8;
rol zmm15_c@uint32 zmm15_c 0x8; rol zmm15_d@uint32 zmm15_d 0x8;
rol zmm15_e@uint32 zmm15_e 0x8; rol zmm15_f@uint32 zmm15_f 0x8;
(* vprold $0x8,%zmm12,%zmm12                       #! PC = 0x55555555835f *)
rol zmm12_0@uint32 zmm12_0 0x8; rol zmm12_1@uint32 zmm12_1 0x8;
rol zmm12_2@uint32 zmm12_2 0x8; rol zmm12_3@uint32 zmm12_3 0x8;
rol zmm12_4@uint32 zmm12_4 0x8; rol zmm12_5@uint32 zmm12_5 0x8;
rol zmm12_6@uint32 zmm12_6 0x8; rol zmm12_7@uint32 zmm12_7 0x8;
rol zmm12_8@uint32 zmm12_8 0x8; rol zmm12_9@uint32 zmm12_9 0x8;
rol zmm12_a@uint32 zmm12_a 0x8; rol zmm12_b@uint32 zmm12_b 0x8;
rol zmm12_c@uint32 zmm12_c 0x8; rol zmm12_d@uint32 zmm12_d 0x8;
rol zmm12_e@uint32 zmm12_e 0x8; rol zmm12_f@uint32 zmm12_f 0x8;
(* vprold $0x8,%zmm13,%zmm13                       #! PC = 0x555555558366 *)
rol zmm13_0@uint32 zmm13_0 0x8; rol zmm13_1@uint32 zmm13_1 0x8;
rol zmm13_2@uint32 zmm13_2 0x8; rol zmm13_3@uint32 zmm13_3 0x8;
rol zmm13_4@uint32 zmm13_4 0x8; rol zmm13_5@uint32 zmm13_5 0x8;
rol zmm13_6@uint32 zmm13_6 0x8; rol zmm13_7@uint32 zmm13_7 0x8;
rol zmm13_8@uint32 zmm13_8 0x8; rol zmm13_9@uint32 zmm13_9 0x8;
rol zmm13_a@uint32 zmm13_a 0x8; rol zmm13_b@uint32 zmm13_b 0x8;
rol zmm13_c@uint32 zmm13_c 0x8; rol zmm13_d@uint32 zmm13_d 0x8;
rol zmm13_e@uint32 zmm13_e 0x8; rol zmm13_f@uint32 zmm13_f 0x8;
(* vprold $0x8,%zmm14,%zmm14                       #! PC = 0x55555555836d *)
rol zmm14_0@uint32 zmm14_0 0x8; rol zmm14_1@uint32 zmm14_1 0x8;
rol zmm14_2@uint32 zmm14_2 0x8; rol zmm14_3@uint32 zmm14_3 0x8;
rol zmm14_4@uint32 zmm14_4 0x8; rol zmm14_5@uint32 zmm14_5 0x8;
rol zmm14_6@uint32 zmm14_6 0x8; rol zmm14_7@uint32 zmm14_7 0x8;
rol zmm14_8@uint32 zmm14_8 0x8; rol zmm14_9@uint32 zmm14_9 0x8;
rol zmm14_a@uint32 zmm14_a 0x8; rol zmm14_b@uint32 zmm14_b 0x8;
rol zmm14_c@uint32 zmm14_c 0x8; rol zmm14_d@uint32 zmm14_d 0x8;
rol zmm14_e@uint32 zmm14_e 0x8; rol zmm14_f@uint32 zmm14_f 0x8;
(* vpaddd %zmm15,%zmm10,%zmm10                     #! PC = 0x555555558374 *)
adds dc zmm10_0 zmm10_0 zmm15_0; adds dc zmm10_1 zmm10_1 zmm15_1;
adds dc zmm10_2 zmm10_2 zmm15_2; adds dc zmm10_3 zmm10_3 zmm15_3;
adds dc zmm10_4 zmm10_4 zmm15_4; adds dc zmm10_5 zmm10_5 zmm15_5;
adds dc zmm10_6 zmm10_6 zmm15_6; adds dc zmm10_7 zmm10_7 zmm15_7;
adds dc zmm10_8 zmm10_8 zmm15_8; adds dc zmm10_9 zmm10_9 zmm15_9;
adds dc zmm10_a zmm10_a zmm15_a; adds dc zmm10_b zmm10_b zmm15_b;
adds dc zmm10_c zmm10_c zmm15_c; adds dc zmm10_d zmm10_d zmm15_d;
adds dc zmm10_e zmm10_e zmm15_e; adds dc zmm10_f zmm10_f zmm15_f;
(* vpaddd %zmm12,%zmm11,%zmm11                     #! PC = 0x55555555837a *)
adds dc zmm11_0 zmm11_0 zmm12_0; adds dc zmm11_1 zmm11_1 zmm12_1;
adds dc zmm11_2 zmm11_2 zmm12_2; adds dc zmm11_3 zmm11_3 zmm12_3;
adds dc zmm11_4 zmm11_4 zmm12_4; adds dc zmm11_5 zmm11_5 zmm12_5;
adds dc zmm11_6 zmm11_6 zmm12_6; adds dc zmm11_7 zmm11_7 zmm12_7;
adds dc zmm11_8 zmm11_8 zmm12_8; adds dc zmm11_9 zmm11_9 zmm12_9;
adds dc zmm11_a zmm11_a zmm12_a; adds dc zmm11_b zmm11_b zmm12_b;
adds dc zmm11_c zmm11_c zmm12_c; adds dc zmm11_d zmm11_d zmm12_d;
adds dc zmm11_e zmm11_e zmm12_e; adds dc zmm11_f zmm11_f zmm12_f;
(* vpaddd %zmm13,%zmm8,%zmm8                       #! PC = 0x555555558380 *)
adds dc zmm8_0 zmm8_0 zmm13_0; adds dc zmm8_1 zmm8_1 zmm13_1;
adds dc zmm8_2 zmm8_2 zmm13_2; adds dc zmm8_3 zmm8_3 zmm13_3;
adds dc zmm8_4 zmm8_4 zmm13_4; adds dc zmm8_5 zmm8_5 zmm13_5;
adds dc zmm8_6 zmm8_6 zmm13_6; adds dc zmm8_7 zmm8_7 zmm13_7;
adds dc zmm8_8 zmm8_8 zmm13_8; adds dc zmm8_9 zmm8_9 zmm13_9;
adds dc zmm8_a zmm8_a zmm13_a; adds dc zmm8_b zmm8_b zmm13_b;
adds dc zmm8_c zmm8_c zmm13_c; adds dc zmm8_d zmm8_d zmm13_d;
adds dc zmm8_e zmm8_e zmm13_e; adds dc zmm8_f zmm8_f zmm13_f;
(* vpaddd %zmm14,%zmm9,%zmm9                       #! PC = 0x555555558386 *)
adds dc zmm9_0 zmm9_0 zmm14_0; adds dc zmm9_1 zmm9_1 zmm14_1;
adds dc zmm9_2 zmm9_2 zmm14_2; adds dc zmm9_3 zmm9_3 zmm14_3;
adds dc zmm9_4 zmm9_4 zmm14_4; adds dc zmm9_5 zmm9_5 zmm14_5;
adds dc zmm9_6 zmm9_6 zmm14_6; adds dc zmm9_7 zmm9_7 zmm14_7;
adds dc zmm9_8 zmm9_8 zmm14_8; adds dc zmm9_9 zmm9_9 zmm14_9;
adds dc zmm9_a zmm9_a zmm14_a; adds dc zmm9_b zmm9_b zmm14_b;
adds dc zmm9_c zmm9_c zmm14_c; adds dc zmm9_d zmm9_d zmm14_d;
adds dc zmm9_e zmm9_e zmm14_e; adds dc zmm9_f zmm9_f zmm14_f;
(* vpxord %zmm10,%zmm5,%zmm5                       #! PC = 0x55555555838c *)
xor zmm5_0@uint32 zmm5_0 zmm10_0; xor zmm5_1@uint32 zmm5_1 zmm10_1;
xor zmm5_2@uint32 zmm5_2 zmm10_2; xor zmm5_3@uint32 zmm5_3 zmm10_3;
xor zmm5_4@uint32 zmm5_4 zmm10_4; xor zmm5_5@uint32 zmm5_5 zmm10_5;
xor zmm5_6@uint32 zmm5_6 zmm10_6; xor zmm5_7@uint32 zmm5_7 zmm10_7;
xor zmm5_8@uint32 zmm5_8 zmm10_8; xor zmm5_9@uint32 zmm5_9 zmm10_9;
xor zmm5_a@uint32 zmm5_a zmm10_a; xor zmm5_b@uint32 zmm5_b zmm10_b;
xor zmm5_c@uint32 zmm5_c zmm10_c; xor zmm5_d@uint32 zmm5_d zmm10_d;
xor zmm5_e@uint32 zmm5_e zmm10_e; xor zmm5_f@uint32 zmm5_f zmm10_f;
(* vpxord %zmm11,%zmm6,%zmm6                       #! PC = 0x555555558392 *)
xor zmm6_0@uint32 zmm6_0 zmm11_0; xor zmm6_1@uint32 zmm6_1 zmm11_1;
xor zmm6_2@uint32 zmm6_2 zmm11_2; xor zmm6_3@uint32 zmm6_3 zmm11_3;
xor zmm6_4@uint32 zmm6_4 zmm11_4; xor zmm6_5@uint32 zmm6_5 zmm11_5;
xor zmm6_6@uint32 zmm6_6 zmm11_6; xor zmm6_7@uint32 zmm6_7 zmm11_7;
xor zmm6_8@uint32 zmm6_8 zmm11_8; xor zmm6_9@uint32 zmm6_9 zmm11_9;
xor zmm6_a@uint32 zmm6_a zmm11_a; xor zmm6_b@uint32 zmm6_b zmm11_b;
xor zmm6_c@uint32 zmm6_c zmm11_c; xor zmm6_d@uint32 zmm6_d zmm11_d;
xor zmm6_e@uint32 zmm6_e zmm11_e; xor zmm6_f@uint32 zmm6_f zmm11_f;
(* vpxord %zmm8,%zmm7,%zmm7                        #! PC = 0x555555558398 *)
xor zmm7_0@uint32 zmm7_0 zmm8_0; xor zmm7_1@uint32 zmm7_1 zmm8_1;
xor zmm7_2@uint32 zmm7_2 zmm8_2; xor zmm7_3@uint32 zmm7_3 zmm8_3;
xor zmm7_4@uint32 zmm7_4 zmm8_4; xor zmm7_5@uint32 zmm7_5 zmm8_5;
xor zmm7_6@uint32 zmm7_6 zmm8_6; xor zmm7_7@uint32 zmm7_7 zmm8_7;
xor zmm7_8@uint32 zmm7_8 zmm8_8; xor zmm7_9@uint32 zmm7_9 zmm8_9;
xor zmm7_a@uint32 zmm7_a zmm8_a; xor zmm7_b@uint32 zmm7_b zmm8_b;
xor zmm7_c@uint32 zmm7_c zmm8_c; xor zmm7_d@uint32 zmm7_d zmm8_d;
xor zmm7_e@uint32 zmm7_e zmm8_e; xor zmm7_f@uint32 zmm7_f zmm8_f;
(* vpxord %zmm9,%zmm4,%zmm4                        #! PC = 0x55555555839e *)
xor zmm4_0@uint32 zmm4_0 zmm9_0; xor zmm4_1@uint32 zmm4_1 zmm9_1;
xor zmm4_2@uint32 zmm4_2 zmm9_2; xor zmm4_3@uint32 zmm4_3 zmm9_3;
xor zmm4_4@uint32 zmm4_4 zmm9_4; xor zmm4_5@uint32 zmm4_5 zmm9_5;
xor zmm4_6@uint32 zmm4_6 zmm9_6; xor zmm4_7@uint32 zmm4_7 zmm9_7;
xor zmm4_8@uint32 zmm4_8 zmm9_8; xor zmm4_9@uint32 zmm4_9 zmm9_9;
xor zmm4_a@uint32 zmm4_a zmm9_a; xor zmm4_b@uint32 zmm4_b zmm9_b;
xor zmm4_c@uint32 zmm4_c zmm9_c; xor zmm4_d@uint32 zmm4_d zmm9_d;
xor zmm4_e@uint32 zmm4_e zmm9_e; xor zmm4_f@uint32 zmm4_f zmm9_f;
(* vprold $0x7,%zmm5,%zmm5                         #! PC = 0x5555555583a4 *)
rol zmm5_0@uint32 zmm5_0 0x7; rol zmm5_1@uint32 zmm5_1 0x7;
rol zmm5_2@uint32 zmm5_2 0x7; rol zmm5_3@uint32 zmm5_3 0x7;
rol zmm5_4@uint32 zmm5_4 0x7; rol zmm5_5@uint32 zmm5_5 0x7;
rol zmm5_6@uint32 zmm5_6 0x7; rol zmm5_7@uint32 zmm5_7 0x7;
rol zmm5_8@uint32 zmm5_8 0x7; rol zmm5_9@uint32 zmm5_9 0x7;
rol zmm5_a@uint32 zmm5_a 0x7; rol zmm5_b@uint32 zmm5_b 0x7;
rol zmm5_c@uint32 zmm5_c 0x7; rol zmm5_d@uint32 zmm5_d 0x7;
rol zmm5_e@uint32 zmm5_e 0x7; rol zmm5_f@uint32 zmm5_f 0x7;
(* vprold $0x7,%zmm6,%zmm6                         #! PC = 0x5555555583ab *)
rol zmm6_0@uint32 zmm6_0 0x7; rol zmm6_1@uint32 zmm6_1 0x7;
rol zmm6_2@uint32 zmm6_2 0x7; rol zmm6_3@uint32 zmm6_3 0x7;
rol zmm6_4@uint32 zmm6_4 0x7; rol zmm6_5@uint32 zmm6_5 0x7;
rol zmm6_6@uint32 zmm6_6 0x7; rol zmm6_7@uint32 zmm6_7 0x7;
rol zmm6_8@uint32 zmm6_8 0x7; rol zmm6_9@uint32 zmm6_9 0x7;
rol zmm6_a@uint32 zmm6_a 0x7; rol zmm6_b@uint32 zmm6_b 0x7;
rol zmm6_c@uint32 zmm6_c 0x7; rol zmm6_d@uint32 zmm6_d 0x7;
rol zmm6_e@uint32 zmm6_e 0x7; rol zmm6_f@uint32 zmm6_f 0x7;
(* vprold $0x7,%zmm7,%zmm7                         #! PC = 0x5555555583b2 *)
rol zmm7_0@uint32 zmm7_0 0x7; rol zmm7_1@uint32 zmm7_1 0x7;
rol zmm7_2@uint32 zmm7_2 0x7; rol zmm7_3@uint32 zmm7_3 0x7;
rol zmm7_4@uint32 zmm7_4 0x7; rol zmm7_5@uint32 zmm7_5 0x7;
rol zmm7_6@uint32 zmm7_6 0x7; rol zmm7_7@uint32 zmm7_7 0x7;
rol zmm7_8@uint32 zmm7_8 0x7; rol zmm7_9@uint32 zmm7_9 0x7;
rol zmm7_a@uint32 zmm7_a 0x7; rol zmm7_b@uint32 zmm7_b 0x7;
rol zmm7_c@uint32 zmm7_c 0x7; rol zmm7_d@uint32 zmm7_d 0x7;
rol zmm7_e@uint32 zmm7_e 0x7; rol zmm7_f@uint32 zmm7_f 0x7;
(* vprold $0x7,%zmm4,%zmm4                         #! PC = 0x5555555583b9 *)
rol zmm4_0@uint32 zmm4_0 0x7; rol zmm4_1@uint32 zmm4_1 0x7;
rol zmm4_2@uint32 zmm4_2 0x7; rol zmm4_3@uint32 zmm4_3 0x7;
rol zmm4_4@uint32 zmm4_4 0x7; rol zmm4_5@uint32 zmm4_5 0x7;
rol zmm4_6@uint32 zmm4_6 0x7; rol zmm4_7@uint32 zmm4_7 0x7;
rol zmm4_8@uint32 zmm4_8 0x7; rol zmm4_9@uint32 zmm4_9 0x7;
rol zmm4_a@uint32 zmm4_a 0x7; rol zmm4_b@uint32 zmm4_b 0x7;
rol zmm4_c@uint32 zmm4_c 0x7; rol zmm4_d@uint32 zmm4_d 0x7;
rol zmm4_e@uint32 zmm4_e 0x7; rol zmm4_f@uint32 zmm4_f 0x7;
(* dec    %eax                                     #! PC = 0x5555555583c0 *)
(* dec %eax *)
nop;
(* #jne    0x555555558160 <ChaCha20_16x+448>       #! PC = 0x5555555583c2 *)
#jne    0x555555558160 <ChaCha20_16x+448>       #! 0x5555555583c2 = 0x5555555583c2;
(* vpaddd %zmm4,%zmm0,%zmm0                        #! PC = 0x555555558160 *)
adds dc zmm0_0 zmm0_0 zmm4_0; adds dc zmm0_1 zmm0_1 zmm4_1;
adds dc zmm0_2 zmm0_2 zmm4_2; adds dc zmm0_3 zmm0_3 zmm4_3;
adds dc zmm0_4 zmm0_4 zmm4_4; adds dc zmm0_5 zmm0_5 zmm4_5;
adds dc zmm0_6 zmm0_6 zmm4_6; adds dc zmm0_7 zmm0_7 zmm4_7;
adds dc zmm0_8 zmm0_8 zmm4_8; adds dc zmm0_9 zmm0_9 zmm4_9;
adds dc zmm0_a zmm0_a zmm4_a; adds dc zmm0_b zmm0_b zmm4_b;
adds dc zmm0_c zmm0_c zmm4_c; adds dc zmm0_d zmm0_d zmm4_d;
adds dc zmm0_e zmm0_e zmm4_e; adds dc zmm0_f zmm0_f zmm4_f;
(* vpaddd %zmm5,%zmm1,%zmm1                        #! PC = 0x555555558166 *)
adds dc zmm1_0 zmm1_0 zmm5_0; adds dc zmm1_1 zmm1_1 zmm5_1;
adds dc zmm1_2 zmm1_2 zmm5_2; adds dc zmm1_3 zmm1_3 zmm5_3;
adds dc zmm1_4 zmm1_4 zmm5_4; adds dc zmm1_5 zmm1_5 zmm5_5;
adds dc zmm1_6 zmm1_6 zmm5_6; adds dc zmm1_7 zmm1_7 zmm5_7;
adds dc zmm1_8 zmm1_8 zmm5_8; adds dc zmm1_9 zmm1_9 zmm5_9;
adds dc zmm1_a zmm1_a zmm5_a; adds dc zmm1_b zmm1_b zmm5_b;
adds dc zmm1_c zmm1_c zmm5_c; adds dc zmm1_d zmm1_d zmm5_d;
adds dc zmm1_e zmm1_e zmm5_e; adds dc zmm1_f zmm1_f zmm5_f;
(* vpaddd %zmm6,%zmm2,%zmm2                        #! PC = 0x55555555816c *)
adds dc zmm2_0 zmm2_0 zmm6_0; adds dc zmm2_1 zmm2_1 zmm6_1;
adds dc zmm2_2 zmm2_2 zmm6_2; adds dc zmm2_3 zmm2_3 zmm6_3;
adds dc zmm2_4 zmm2_4 zmm6_4; adds dc zmm2_5 zmm2_5 zmm6_5;
adds dc zmm2_6 zmm2_6 zmm6_6; adds dc zmm2_7 zmm2_7 zmm6_7;
adds dc zmm2_8 zmm2_8 zmm6_8; adds dc zmm2_9 zmm2_9 zmm6_9;
adds dc zmm2_a zmm2_a zmm6_a; adds dc zmm2_b zmm2_b zmm6_b;
adds dc zmm2_c zmm2_c zmm6_c; adds dc zmm2_d zmm2_d zmm6_d;
adds dc zmm2_e zmm2_e zmm6_e; adds dc zmm2_f zmm2_f zmm6_f;
(* vpaddd %zmm7,%zmm3,%zmm3                        #! PC = 0x555555558172 *)
adds dc zmm3_0 zmm3_0 zmm7_0; adds dc zmm3_1 zmm3_1 zmm7_1;
adds dc zmm3_2 zmm3_2 zmm7_2; adds dc zmm3_3 zmm3_3 zmm7_3;
adds dc zmm3_4 zmm3_4 zmm7_4; adds dc zmm3_5 zmm3_5 zmm7_5;
adds dc zmm3_6 zmm3_6 zmm7_6; adds dc zmm3_7 zmm3_7 zmm7_7;
adds dc zmm3_8 zmm3_8 zmm7_8; adds dc zmm3_9 zmm3_9 zmm7_9;
adds dc zmm3_a zmm3_a zmm7_a; adds dc zmm3_b zmm3_b zmm7_b;
adds dc zmm3_c zmm3_c zmm7_c; adds dc zmm3_d zmm3_d zmm7_d;
adds dc zmm3_e zmm3_e zmm7_e; adds dc zmm3_f zmm3_f zmm7_f;
(* vpxord %zmm0,%zmm12,%zmm12                      #! PC = 0x555555558178 *)
xor zmm12_0@uint32 zmm12_0 zmm0_0; xor zmm12_1@uint32 zmm12_1 zmm0_1;
xor zmm12_2@uint32 zmm12_2 zmm0_2; xor zmm12_3@uint32 zmm12_3 zmm0_3;
xor zmm12_4@uint32 zmm12_4 zmm0_4; xor zmm12_5@uint32 zmm12_5 zmm0_5;
xor zmm12_6@uint32 zmm12_6 zmm0_6; xor zmm12_7@uint32 zmm12_7 zmm0_7;
xor zmm12_8@uint32 zmm12_8 zmm0_8; xor zmm12_9@uint32 zmm12_9 zmm0_9;
xor zmm12_a@uint32 zmm12_a zmm0_a; xor zmm12_b@uint32 zmm12_b zmm0_b;
xor zmm12_c@uint32 zmm12_c zmm0_c; xor zmm12_d@uint32 zmm12_d zmm0_d;
xor zmm12_e@uint32 zmm12_e zmm0_e; xor zmm12_f@uint32 zmm12_f zmm0_f;
(* vpxord %zmm1,%zmm13,%zmm13                      #! PC = 0x55555555817e *)
xor zmm13_0@uint32 zmm13_0 zmm1_0; xor zmm13_1@uint32 zmm13_1 zmm1_1;
xor zmm13_2@uint32 zmm13_2 zmm1_2; xor zmm13_3@uint32 zmm13_3 zmm1_3;
xor zmm13_4@uint32 zmm13_4 zmm1_4; xor zmm13_5@uint32 zmm13_5 zmm1_5;
xor zmm13_6@uint32 zmm13_6 zmm1_6; xor zmm13_7@uint32 zmm13_7 zmm1_7;
xor zmm13_8@uint32 zmm13_8 zmm1_8; xor zmm13_9@uint32 zmm13_9 zmm1_9;
xor zmm13_a@uint32 zmm13_a zmm1_a; xor zmm13_b@uint32 zmm13_b zmm1_b;
xor zmm13_c@uint32 zmm13_c zmm1_c; xor zmm13_d@uint32 zmm13_d zmm1_d;
xor zmm13_e@uint32 zmm13_e zmm1_e; xor zmm13_f@uint32 zmm13_f zmm1_f;
(* vpxord %zmm2,%zmm14,%zmm14                      #! PC = 0x555555558184 *)
xor zmm14_0@uint32 zmm14_0 zmm2_0; xor zmm14_1@uint32 zmm14_1 zmm2_1;
xor zmm14_2@uint32 zmm14_2 zmm2_2; xor zmm14_3@uint32 zmm14_3 zmm2_3;
xor zmm14_4@uint32 zmm14_4 zmm2_4; xor zmm14_5@uint32 zmm14_5 zmm2_5;
xor zmm14_6@uint32 zmm14_6 zmm2_6; xor zmm14_7@uint32 zmm14_7 zmm2_7;
xor zmm14_8@uint32 zmm14_8 zmm2_8; xor zmm14_9@uint32 zmm14_9 zmm2_9;
xor zmm14_a@uint32 zmm14_a zmm2_a; xor zmm14_b@uint32 zmm14_b zmm2_b;
xor zmm14_c@uint32 zmm14_c zmm2_c; xor zmm14_d@uint32 zmm14_d zmm2_d;
xor zmm14_e@uint32 zmm14_e zmm2_e; xor zmm14_f@uint32 zmm14_f zmm2_f;
(* vpxord %zmm3,%zmm15,%zmm15                      #! PC = 0x55555555818a *)
xor zmm15_0@uint32 zmm15_0 zmm3_0; xor zmm15_1@uint32 zmm15_1 zmm3_1;
xor zmm15_2@uint32 zmm15_2 zmm3_2; xor zmm15_3@uint32 zmm15_3 zmm3_3;
xor zmm15_4@uint32 zmm15_4 zmm3_4; xor zmm15_5@uint32 zmm15_5 zmm3_5;
xor zmm15_6@uint32 zmm15_6 zmm3_6; xor zmm15_7@uint32 zmm15_7 zmm3_7;
xor zmm15_8@uint32 zmm15_8 zmm3_8; xor zmm15_9@uint32 zmm15_9 zmm3_9;
xor zmm15_a@uint32 zmm15_a zmm3_a; xor zmm15_b@uint32 zmm15_b zmm3_b;
xor zmm15_c@uint32 zmm15_c zmm3_c; xor zmm15_d@uint32 zmm15_d zmm3_d;
xor zmm15_e@uint32 zmm15_e zmm3_e; xor zmm15_f@uint32 zmm15_f zmm3_f;
(* vprold $0x10,%zmm12,%zmm12                      #! PC = 0x555555558190 *)
rol zmm12_0@uint32 zmm12_0 0x10; rol zmm12_1@uint32 zmm12_1 0x10;
rol zmm12_2@uint32 zmm12_2 0x10; rol zmm12_3@uint32 zmm12_3 0x10;
rol zmm12_4@uint32 zmm12_4 0x10; rol zmm12_5@uint32 zmm12_5 0x10;
rol zmm12_6@uint32 zmm12_6 0x10; rol zmm12_7@uint32 zmm12_7 0x10;
rol zmm12_8@uint32 zmm12_8 0x10; rol zmm12_9@uint32 zmm12_9 0x10;
rol zmm12_a@uint32 zmm12_a 0x10; rol zmm12_b@uint32 zmm12_b 0x10;
rol zmm12_c@uint32 zmm12_c 0x10; rol zmm12_d@uint32 zmm12_d 0x10;
rol zmm12_e@uint32 zmm12_e 0x10; rol zmm12_f@uint32 zmm12_f 0x10;
(* vprold $0x10,%zmm13,%zmm13                      #! PC = 0x555555558197 *)
rol zmm13_0@uint32 zmm13_0 0x10; rol zmm13_1@uint32 zmm13_1 0x10;
rol zmm13_2@uint32 zmm13_2 0x10; rol zmm13_3@uint32 zmm13_3 0x10;
rol zmm13_4@uint32 zmm13_4 0x10; rol zmm13_5@uint32 zmm13_5 0x10;
rol zmm13_6@uint32 zmm13_6 0x10; rol zmm13_7@uint32 zmm13_7 0x10;
rol zmm13_8@uint32 zmm13_8 0x10; rol zmm13_9@uint32 zmm13_9 0x10;
rol zmm13_a@uint32 zmm13_a 0x10; rol zmm13_b@uint32 zmm13_b 0x10;
rol zmm13_c@uint32 zmm13_c 0x10; rol zmm13_d@uint32 zmm13_d 0x10;
rol zmm13_e@uint32 zmm13_e 0x10; rol zmm13_f@uint32 zmm13_f 0x10;
(* vprold $0x10,%zmm14,%zmm14                      #! PC = 0x55555555819e *)
rol zmm14_0@uint32 zmm14_0 0x10; rol zmm14_1@uint32 zmm14_1 0x10;
rol zmm14_2@uint32 zmm14_2 0x10; rol zmm14_3@uint32 zmm14_3 0x10;
rol zmm14_4@uint32 zmm14_4 0x10; rol zmm14_5@uint32 zmm14_5 0x10;
rol zmm14_6@uint32 zmm14_6 0x10; rol zmm14_7@uint32 zmm14_7 0x10;
rol zmm14_8@uint32 zmm14_8 0x10; rol zmm14_9@uint32 zmm14_9 0x10;
rol zmm14_a@uint32 zmm14_a 0x10; rol zmm14_b@uint32 zmm14_b 0x10;
rol zmm14_c@uint32 zmm14_c 0x10; rol zmm14_d@uint32 zmm14_d 0x10;
rol zmm14_e@uint32 zmm14_e 0x10; rol zmm14_f@uint32 zmm14_f 0x10;
(* vprold $0x10,%zmm15,%zmm15                      #! PC = 0x5555555581a5 *)
rol zmm15_0@uint32 zmm15_0 0x10; rol zmm15_1@uint32 zmm15_1 0x10;
rol zmm15_2@uint32 zmm15_2 0x10; rol zmm15_3@uint32 zmm15_3 0x10;
rol zmm15_4@uint32 zmm15_4 0x10; rol zmm15_5@uint32 zmm15_5 0x10;
rol zmm15_6@uint32 zmm15_6 0x10; rol zmm15_7@uint32 zmm15_7 0x10;
rol zmm15_8@uint32 zmm15_8 0x10; rol zmm15_9@uint32 zmm15_9 0x10;
rol zmm15_a@uint32 zmm15_a 0x10; rol zmm15_b@uint32 zmm15_b 0x10;
rol zmm15_c@uint32 zmm15_c 0x10; rol zmm15_d@uint32 zmm15_d 0x10;
rol zmm15_e@uint32 zmm15_e 0x10; rol zmm15_f@uint32 zmm15_f 0x10;
(* vpaddd %zmm12,%zmm8,%zmm8                       #! PC = 0x5555555581ac *)
adds dc zmm8_0 zmm8_0 zmm12_0; adds dc zmm8_1 zmm8_1 zmm12_1;
adds dc zmm8_2 zmm8_2 zmm12_2; adds dc zmm8_3 zmm8_3 zmm12_3;
adds dc zmm8_4 zmm8_4 zmm12_4; adds dc zmm8_5 zmm8_5 zmm12_5;
adds dc zmm8_6 zmm8_6 zmm12_6; adds dc zmm8_7 zmm8_7 zmm12_7;
adds dc zmm8_8 zmm8_8 zmm12_8; adds dc zmm8_9 zmm8_9 zmm12_9;
adds dc zmm8_a zmm8_a zmm12_a; adds dc zmm8_b zmm8_b zmm12_b;
adds dc zmm8_c zmm8_c zmm12_c; adds dc zmm8_d zmm8_d zmm12_d;
adds dc zmm8_e zmm8_e zmm12_e; adds dc zmm8_f zmm8_f zmm12_f;
(* vpaddd %zmm13,%zmm9,%zmm9                       #! PC = 0x5555555581b2 *)
adds dc zmm9_0 zmm9_0 zmm13_0; adds dc zmm9_1 zmm9_1 zmm13_1;
adds dc zmm9_2 zmm9_2 zmm13_2; adds dc zmm9_3 zmm9_3 zmm13_3;
adds dc zmm9_4 zmm9_4 zmm13_4; adds dc zmm9_5 zmm9_5 zmm13_5;
adds dc zmm9_6 zmm9_6 zmm13_6; adds dc zmm9_7 zmm9_7 zmm13_7;
adds dc zmm9_8 zmm9_8 zmm13_8; adds dc zmm9_9 zmm9_9 zmm13_9;
adds dc zmm9_a zmm9_a zmm13_a; adds dc zmm9_b zmm9_b zmm13_b;
adds dc zmm9_c zmm9_c zmm13_c; adds dc zmm9_d zmm9_d zmm13_d;
adds dc zmm9_e zmm9_e zmm13_e; adds dc zmm9_f zmm9_f zmm13_f;
(* vpaddd %zmm14,%zmm10,%zmm10                     #! PC = 0x5555555581b8 *)
adds dc zmm10_0 zmm10_0 zmm14_0; adds dc zmm10_1 zmm10_1 zmm14_1;
adds dc zmm10_2 zmm10_2 zmm14_2; adds dc zmm10_3 zmm10_3 zmm14_3;
adds dc zmm10_4 zmm10_4 zmm14_4; adds dc zmm10_5 zmm10_5 zmm14_5;
adds dc zmm10_6 zmm10_6 zmm14_6; adds dc zmm10_7 zmm10_7 zmm14_7;
adds dc zmm10_8 zmm10_8 zmm14_8; adds dc zmm10_9 zmm10_9 zmm14_9;
adds dc zmm10_a zmm10_a zmm14_a; adds dc zmm10_b zmm10_b zmm14_b;
adds dc zmm10_c zmm10_c zmm14_c; adds dc zmm10_d zmm10_d zmm14_d;
adds dc zmm10_e zmm10_e zmm14_e; adds dc zmm10_f zmm10_f zmm14_f;
(* vpaddd %zmm15,%zmm11,%zmm11                     #! PC = 0x5555555581be *)
adds dc zmm11_0 zmm11_0 zmm15_0; adds dc zmm11_1 zmm11_1 zmm15_1;
adds dc zmm11_2 zmm11_2 zmm15_2; adds dc zmm11_3 zmm11_3 zmm15_3;
adds dc zmm11_4 zmm11_4 zmm15_4; adds dc zmm11_5 zmm11_5 zmm15_5;
adds dc zmm11_6 zmm11_6 zmm15_6; adds dc zmm11_7 zmm11_7 zmm15_7;
adds dc zmm11_8 zmm11_8 zmm15_8; adds dc zmm11_9 zmm11_9 zmm15_9;
adds dc zmm11_a zmm11_a zmm15_a; adds dc zmm11_b zmm11_b zmm15_b;
adds dc zmm11_c zmm11_c zmm15_c; adds dc zmm11_d zmm11_d zmm15_d;
adds dc zmm11_e zmm11_e zmm15_e; adds dc zmm11_f zmm11_f zmm15_f;
(* vpxord %zmm8,%zmm4,%zmm4                        #! PC = 0x5555555581c4 *)
xor zmm4_0@uint32 zmm4_0 zmm8_0; xor zmm4_1@uint32 zmm4_1 zmm8_1;
xor zmm4_2@uint32 zmm4_2 zmm8_2; xor zmm4_3@uint32 zmm4_3 zmm8_3;
xor zmm4_4@uint32 zmm4_4 zmm8_4; xor zmm4_5@uint32 zmm4_5 zmm8_5;
xor zmm4_6@uint32 zmm4_6 zmm8_6; xor zmm4_7@uint32 zmm4_7 zmm8_7;
xor zmm4_8@uint32 zmm4_8 zmm8_8; xor zmm4_9@uint32 zmm4_9 zmm8_9;
xor zmm4_a@uint32 zmm4_a zmm8_a; xor zmm4_b@uint32 zmm4_b zmm8_b;
xor zmm4_c@uint32 zmm4_c zmm8_c; xor zmm4_d@uint32 zmm4_d zmm8_d;
xor zmm4_e@uint32 zmm4_e zmm8_e; xor zmm4_f@uint32 zmm4_f zmm8_f;
(* vpxord %zmm9,%zmm5,%zmm5                        #! PC = 0x5555555581ca *)
xor zmm5_0@uint32 zmm5_0 zmm9_0; xor zmm5_1@uint32 zmm5_1 zmm9_1;
xor zmm5_2@uint32 zmm5_2 zmm9_2; xor zmm5_3@uint32 zmm5_3 zmm9_3;
xor zmm5_4@uint32 zmm5_4 zmm9_4; xor zmm5_5@uint32 zmm5_5 zmm9_5;
xor zmm5_6@uint32 zmm5_6 zmm9_6; xor zmm5_7@uint32 zmm5_7 zmm9_7;
xor zmm5_8@uint32 zmm5_8 zmm9_8; xor zmm5_9@uint32 zmm5_9 zmm9_9;
xor zmm5_a@uint32 zmm5_a zmm9_a; xor zmm5_b@uint32 zmm5_b zmm9_b;
xor zmm5_c@uint32 zmm5_c zmm9_c; xor zmm5_d@uint32 zmm5_d zmm9_d;
xor zmm5_e@uint32 zmm5_e zmm9_e; xor zmm5_f@uint32 zmm5_f zmm9_f;
(* vpxord %zmm10,%zmm6,%zmm6                       #! PC = 0x5555555581d0 *)
xor zmm6_0@uint32 zmm6_0 zmm10_0; xor zmm6_1@uint32 zmm6_1 zmm10_1;
xor zmm6_2@uint32 zmm6_2 zmm10_2; xor zmm6_3@uint32 zmm6_3 zmm10_3;
xor zmm6_4@uint32 zmm6_4 zmm10_4; xor zmm6_5@uint32 zmm6_5 zmm10_5;
xor zmm6_6@uint32 zmm6_6 zmm10_6; xor zmm6_7@uint32 zmm6_7 zmm10_7;
xor zmm6_8@uint32 zmm6_8 zmm10_8; xor zmm6_9@uint32 zmm6_9 zmm10_9;
xor zmm6_a@uint32 zmm6_a zmm10_a; xor zmm6_b@uint32 zmm6_b zmm10_b;
xor zmm6_c@uint32 zmm6_c zmm10_c; xor zmm6_d@uint32 zmm6_d zmm10_d;
xor zmm6_e@uint32 zmm6_e zmm10_e; xor zmm6_f@uint32 zmm6_f zmm10_f;
(* vpxord %zmm11,%zmm7,%zmm7                       #! PC = 0x5555555581d6 *)
xor zmm7_0@uint32 zmm7_0 zmm11_0; xor zmm7_1@uint32 zmm7_1 zmm11_1;
xor zmm7_2@uint32 zmm7_2 zmm11_2; xor zmm7_3@uint32 zmm7_3 zmm11_3;
xor zmm7_4@uint32 zmm7_4 zmm11_4; xor zmm7_5@uint32 zmm7_5 zmm11_5;
xor zmm7_6@uint32 zmm7_6 zmm11_6; xor zmm7_7@uint32 zmm7_7 zmm11_7;
xor zmm7_8@uint32 zmm7_8 zmm11_8; xor zmm7_9@uint32 zmm7_9 zmm11_9;
xor zmm7_a@uint32 zmm7_a zmm11_a; xor zmm7_b@uint32 zmm7_b zmm11_b;
xor zmm7_c@uint32 zmm7_c zmm11_c; xor zmm7_d@uint32 zmm7_d zmm11_d;
xor zmm7_e@uint32 zmm7_e zmm11_e; xor zmm7_f@uint32 zmm7_f zmm11_f;
(* vprold $0xc,%zmm4,%zmm4                         #! PC = 0x5555555581dc *)
rol zmm4_0@uint32 zmm4_0 0xc; rol zmm4_1@uint32 zmm4_1 0xc;
rol zmm4_2@uint32 zmm4_2 0xc; rol zmm4_3@uint32 zmm4_3 0xc;
rol zmm4_4@uint32 zmm4_4 0xc; rol zmm4_5@uint32 zmm4_5 0xc;
rol zmm4_6@uint32 zmm4_6 0xc; rol zmm4_7@uint32 zmm4_7 0xc;
rol zmm4_8@uint32 zmm4_8 0xc; rol zmm4_9@uint32 zmm4_9 0xc;
rol zmm4_a@uint32 zmm4_a 0xc; rol zmm4_b@uint32 zmm4_b 0xc;
rol zmm4_c@uint32 zmm4_c 0xc; rol zmm4_d@uint32 zmm4_d 0xc;
rol zmm4_e@uint32 zmm4_e 0xc; rol zmm4_f@uint32 zmm4_f 0xc;
(* vprold $0xc,%zmm5,%zmm5                         #! PC = 0x5555555581e3 *)
rol zmm5_0@uint32 zmm5_0 0xc; rol zmm5_1@uint32 zmm5_1 0xc;
rol zmm5_2@uint32 zmm5_2 0xc; rol zmm5_3@uint32 zmm5_3 0xc;
rol zmm5_4@uint32 zmm5_4 0xc; rol zmm5_5@uint32 zmm5_5 0xc;
rol zmm5_6@uint32 zmm5_6 0xc; rol zmm5_7@uint32 zmm5_7 0xc;
rol zmm5_8@uint32 zmm5_8 0xc; rol zmm5_9@uint32 zmm5_9 0xc;
rol zmm5_a@uint32 zmm5_a 0xc; rol zmm5_b@uint32 zmm5_b 0xc;
rol zmm5_c@uint32 zmm5_c 0xc; rol zmm5_d@uint32 zmm5_d 0xc;
rol zmm5_e@uint32 zmm5_e 0xc; rol zmm5_f@uint32 zmm5_f 0xc;
(* vprold $0xc,%zmm6,%zmm6                         #! PC = 0x5555555581ea *)
rol zmm6_0@uint32 zmm6_0 0xc; rol zmm6_1@uint32 zmm6_1 0xc;
rol zmm6_2@uint32 zmm6_2 0xc; rol zmm6_3@uint32 zmm6_3 0xc;
rol zmm6_4@uint32 zmm6_4 0xc; rol zmm6_5@uint32 zmm6_5 0xc;
rol zmm6_6@uint32 zmm6_6 0xc; rol zmm6_7@uint32 zmm6_7 0xc;
rol zmm6_8@uint32 zmm6_8 0xc; rol zmm6_9@uint32 zmm6_9 0xc;
rol zmm6_a@uint32 zmm6_a 0xc; rol zmm6_b@uint32 zmm6_b 0xc;
rol zmm6_c@uint32 zmm6_c 0xc; rol zmm6_d@uint32 zmm6_d 0xc;
rol zmm6_e@uint32 zmm6_e 0xc; rol zmm6_f@uint32 zmm6_f 0xc;
(* vprold $0xc,%zmm7,%zmm7                         #! PC = 0x5555555581f1 *)
rol zmm7_0@uint32 zmm7_0 0xc; rol zmm7_1@uint32 zmm7_1 0xc;
rol zmm7_2@uint32 zmm7_2 0xc; rol zmm7_3@uint32 zmm7_3 0xc;
rol zmm7_4@uint32 zmm7_4 0xc; rol zmm7_5@uint32 zmm7_5 0xc;
rol zmm7_6@uint32 zmm7_6 0xc; rol zmm7_7@uint32 zmm7_7 0xc;
rol zmm7_8@uint32 zmm7_8 0xc; rol zmm7_9@uint32 zmm7_9 0xc;
rol zmm7_a@uint32 zmm7_a 0xc; rol zmm7_b@uint32 zmm7_b 0xc;
rol zmm7_c@uint32 zmm7_c 0xc; rol zmm7_d@uint32 zmm7_d 0xc;
rol zmm7_e@uint32 zmm7_e 0xc; rol zmm7_f@uint32 zmm7_f 0xc;
(* vpaddd %zmm4,%zmm0,%zmm0                        #! PC = 0x5555555581f8 *)
adds dc zmm0_0 zmm0_0 zmm4_0; adds dc zmm0_1 zmm0_1 zmm4_1;
adds dc zmm0_2 zmm0_2 zmm4_2; adds dc zmm0_3 zmm0_3 zmm4_3;
adds dc zmm0_4 zmm0_4 zmm4_4; adds dc zmm0_5 zmm0_5 zmm4_5;
adds dc zmm0_6 zmm0_6 zmm4_6; adds dc zmm0_7 zmm0_7 zmm4_7;
adds dc zmm0_8 zmm0_8 zmm4_8; adds dc zmm0_9 zmm0_9 zmm4_9;
adds dc zmm0_a zmm0_a zmm4_a; adds dc zmm0_b zmm0_b zmm4_b;
adds dc zmm0_c zmm0_c zmm4_c; adds dc zmm0_d zmm0_d zmm4_d;
adds dc zmm0_e zmm0_e zmm4_e; adds dc zmm0_f zmm0_f zmm4_f;
(* vpaddd %zmm5,%zmm1,%zmm1                        #! PC = 0x5555555581fe *)
adds dc zmm1_0 zmm1_0 zmm5_0; adds dc zmm1_1 zmm1_1 zmm5_1;
adds dc zmm1_2 zmm1_2 zmm5_2; adds dc zmm1_3 zmm1_3 zmm5_3;
adds dc zmm1_4 zmm1_4 zmm5_4; adds dc zmm1_5 zmm1_5 zmm5_5;
adds dc zmm1_6 zmm1_6 zmm5_6; adds dc zmm1_7 zmm1_7 zmm5_7;
adds dc zmm1_8 zmm1_8 zmm5_8; adds dc zmm1_9 zmm1_9 zmm5_9;
adds dc zmm1_a zmm1_a zmm5_a; adds dc zmm1_b zmm1_b zmm5_b;
adds dc zmm1_c zmm1_c zmm5_c; adds dc zmm1_d zmm1_d zmm5_d;
adds dc zmm1_e zmm1_e zmm5_e; adds dc zmm1_f zmm1_f zmm5_f;
(* vpaddd %zmm6,%zmm2,%zmm2                        #! PC = 0x555555558204 *)
adds dc zmm2_0 zmm2_0 zmm6_0; adds dc zmm2_1 zmm2_1 zmm6_1;
adds dc zmm2_2 zmm2_2 zmm6_2; adds dc zmm2_3 zmm2_3 zmm6_3;
adds dc zmm2_4 zmm2_4 zmm6_4; adds dc zmm2_5 zmm2_5 zmm6_5;
adds dc zmm2_6 zmm2_6 zmm6_6; adds dc zmm2_7 zmm2_7 zmm6_7;
adds dc zmm2_8 zmm2_8 zmm6_8; adds dc zmm2_9 zmm2_9 zmm6_9;
adds dc zmm2_a zmm2_a zmm6_a; adds dc zmm2_b zmm2_b zmm6_b;
adds dc zmm2_c zmm2_c zmm6_c; adds dc zmm2_d zmm2_d zmm6_d;
adds dc zmm2_e zmm2_e zmm6_e; adds dc zmm2_f zmm2_f zmm6_f;
(* vpaddd %zmm7,%zmm3,%zmm3                        #! PC = 0x55555555820a *)
adds dc zmm3_0 zmm3_0 zmm7_0; adds dc zmm3_1 zmm3_1 zmm7_1;
adds dc zmm3_2 zmm3_2 zmm7_2; adds dc zmm3_3 zmm3_3 zmm7_3;
adds dc zmm3_4 zmm3_4 zmm7_4; adds dc zmm3_5 zmm3_5 zmm7_5;
adds dc zmm3_6 zmm3_6 zmm7_6; adds dc zmm3_7 zmm3_7 zmm7_7;
adds dc zmm3_8 zmm3_8 zmm7_8; adds dc zmm3_9 zmm3_9 zmm7_9;
adds dc zmm3_a zmm3_a zmm7_a; adds dc zmm3_b zmm3_b zmm7_b;
adds dc zmm3_c zmm3_c zmm7_c; adds dc zmm3_d zmm3_d zmm7_d;
adds dc zmm3_e zmm3_e zmm7_e; adds dc zmm3_f zmm3_f zmm7_f;
(* vpxord %zmm0,%zmm12,%zmm12                      #! PC = 0x555555558210 *)
xor zmm12_0@uint32 zmm12_0 zmm0_0; xor zmm12_1@uint32 zmm12_1 zmm0_1;
xor zmm12_2@uint32 zmm12_2 zmm0_2; xor zmm12_3@uint32 zmm12_3 zmm0_3;
xor zmm12_4@uint32 zmm12_4 zmm0_4; xor zmm12_5@uint32 zmm12_5 zmm0_5;
xor zmm12_6@uint32 zmm12_6 zmm0_6; xor zmm12_7@uint32 zmm12_7 zmm0_7;
xor zmm12_8@uint32 zmm12_8 zmm0_8; xor zmm12_9@uint32 zmm12_9 zmm0_9;
xor zmm12_a@uint32 zmm12_a zmm0_a; xor zmm12_b@uint32 zmm12_b zmm0_b;
xor zmm12_c@uint32 zmm12_c zmm0_c; xor zmm12_d@uint32 zmm12_d zmm0_d;
xor zmm12_e@uint32 zmm12_e zmm0_e; xor zmm12_f@uint32 zmm12_f zmm0_f;
(* vpxord %zmm1,%zmm13,%zmm13                      #! PC = 0x555555558216 *)
xor zmm13_0@uint32 zmm13_0 zmm1_0; xor zmm13_1@uint32 zmm13_1 zmm1_1;
xor zmm13_2@uint32 zmm13_2 zmm1_2; xor zmm13_3@uint32 zmm13_3 zmm1_3;
xor zmm13_4@uint32 zmm13_4 zmm1_4; xor zmm13_5@uint32 zmm13_5 zmm1_5;
xor zmm13_6@uint32 zmm13_6 zmm1_6; xor zmm13_7@uint32 zmm13_7 zmm1_7;
xor zmm13_8@uint32 zmm13_8 zmm1_8; xor zmm13_9@uint32 zmm13_9 zmm1_9;
xor zmm13_a@uint32 zmm13_a zmm1_a; xor zmm13_b@uint32 zmm13_b zmm1_b;
xor zmm13_c@uint32 zmm13_c zmm1_c; xor zmm13_d@uint32 zmm13_d zmm1_d;
xor zmm13_e@uint32 zmm13_e zmm1_e; xor zmm13_f@uint32 zmm13_f zmm1_f;
(* vpxord %zmm2,%zmm14,%zmm14                      #! PC = 0x55555555821c *)
xor zmm14_0@uint32 zmm14_0 zmm2_0; xor zmm14_1@uint32 zmm14_1 zmm2_1;
xor zmm14_2@uint32 zmm14_2 zmm2_2; xor zmm14_3@uint32 zmm14_3 zmm2_3;
xor zmm14_4@uint32 zmm14_4 zmm2_4; xor zmm14_5@uint32 zmm14_5 zmm2_5;
xor zmm14_6@uint32 zmm14_6 zmm2_6; xor zmm14_7@uint32 zmm14_7 zmm2_7;
xor zmm14_8@uint32 zmm14_8 zmm2_8; xor zmm14_9@uint32 zmm14_9 zmm2_9;
xor zmm14_a@uint32 zmm14_a zmm2_a; xor zmm14_b@uint32 zmm14_b zmm2_b;
xor zmm14_c@uint32 zmm14_c zmm2_c; xor zmm14_d@uint32 zmm14_d zmm2_d;
xor zmm14_e@uint32 zmm14_e zmm2_e; xor zmm14_f@uint32 zmm14_f zmm2_f;
(* vpxord %zmm3,%zmm15,%zmm15                      #! PC = 0x555555558222 *)
xor zmm15_0@uint32 zmm15_0 zmm3_0; xor zmm15_1@uint32 zmm15_1 zmm3_1;
xor zmm15_2@uint32 zmm15_2 zmm3_2; xor zmm15_3@uint32 zmm15_3 zmm3_3;
xor zmm15_4@uint32 zmm15_4 zmm3_4; xor zmm15_5@uint32 zmm15_5 zmm3_5;
xor zmm15_6@uint32 zmm15_6 zmm3_6; xor zmm15_7@uint32 zmm15_7 zmm3_7;
xor zmm15_8@uint32 zmm15_8 zmm3_8; xor zmm15_9@uint32 zmm15_9 zmm3_9;
xor zmm15_a@uint32 zmm15_a zmm3_a; xor zmm15_b@uint32 zmm15_b zmm3_b;
xor zmm15_c@uint32 zmm15_c zmm3_c; xor zmm15_d@uint32 zmm15_d zmm3_d;
xor zmm15_e@uint32 zmm15_e zmm3_e; xor zmm15_f@uint32 zmm15_f zmm3_f;
(* vprold $0x8,%zmm12,%zmm12                       #! PC = 0x555555558228 *)
rol zmm12_0@uint32 zmm12_0 0x8; rol zmm12_1@uint32 zmm12_1 0x8;
rol zmm12_2@uint32 zmm12_2 0x8; rol zmm12_3@uint32 zmm12_3 0x8;
rol zmm12_4@uint32 zmm12_4 0x8; rol zmm12_5@uint32 zmm12_5 0x8;
rol zmm12_6@uint32 zmm12_6 0x8; rol zmm12_7@uint32 zmm12_7 0x8;
rol zmm12_8@uint32 zmm12_8 0x8; rol zmm12_9@uint32 zmm12_9 0x8;
rol zmm12_a@uint32 zmm12_a 0x8; rol zmm12_b@uint32 zmm12_b 0x8;
rol zmm12_c@uint32 zmm12_c 0x8; rol zmm12_d@uint32 zmm12_d 0x8;
rol zmm12_e@uint32 zmm12_e 0x8; rol zmm12_f@uint32 zmm12_f 0x8;
(* vprold $0x8,%zmm13,%zmm13                       #! PC = 0x55555555822f *)
rol zmm13_0@uint32 zmm13_0 0x8; rol zmm13_1@uint32 zmm13_1 0x8;
rol zmm13_2@uint32 zmm13_2 0x8; rol zmm13_3@uint32 zmm13_3 0x8;
rol zmm13_4@uint32 zmm13_4 0x8; rol zmm13_5@uint32 zmm13_5 0x8;
rol zmm13_6@uint32 zmm13_6 0x8; rol zmm13_7@uint32 zmm13_7 0x8;
rol zmm13_8@uint32 zmm13_8 0x8; rol zmm13_9@uint32 zmm13_9 0x8;
rol zmm13_a@uint32 zmm13_a 0x8; rol zmm13_b@uint32 zmm13_b 0x8;
rol zmm13_c@uint32 zmm13_c 0x8; rol zmm13_d@uint32 zmm13_d 0x8;
rol zmm13_e@uint32 zmm13_e 0x8; rol zmm13_f@uint32 zmm13_f 0x8;
(* vprold $0x8,%zmm14,%zmm14                       #! PC = 0x555555558236 *)
rol zmm14_0@uint32 zmm14_0 0x8; rol zmm14_1@uint32 zmm14_1 0x8;
rol zmm14_2@uint32 zmm14_2 0x8; rol zmm14_3@uint32 zmm14_3 0x8;
rol zmm14_4@uint32 zmm14_4 0x8; rol zmm14_5@uint32 zmm14_5 0x8;
rol zmm14_6@uint32 zmm14_6 0x8; rol zmm14_7@uint32 zmm14_7 0x8;
rol zmm14_8@uint32 zmm14_8 0x8; rol zmm14_9@uint32 zmm14_9 0x8;
rol zmm14_a@uint32 zmm14_a 0x8; rol zmm14_b@uint32 zmm14_b 0x8;
rol zmm14_c@uint32 zmm14_c 0x8; rol zmm14_d@uint32 zmm14_d 0x8;
rol zmm14_e@uint32 zmm14_e 0x8; rol zmm14_f@uint32 zmm14_f 0x8;
(* vprold $0x8,%zmm15,%zmm15                       #! PC = 0x55555555823d *)
rol zmm15_0@uint32 zmm15_0 0x8; rol zmm15_1@uint32 zmm15_1 0x8;
rol zmm15_2@uint32 zmm15_2 0x8; rol zmm15_3@uint32 zmm15_3 0x8;
rol zmm15_4@uint32 zmm15_4 0x8; rol zmm15_5@uint32 zmm15_5 0x8;
rol zmm15_6@uint32 zmm15_6 0x8; rol zmm15_7@uint32 zmm15_7 0x8;
rol zmm15_8@uint32 zmm15_8 0x8; rol zmm15_9@uint32 zmm15_9 0x8;
rol zmm15_a@uint32 zmm15_a 0x8; rol zmm15_b@uint32 zmm15_b 0x8;
rol zmm15_c@uint32 zmm15_c 0x8; rol zmm15_d@uint32 zmm15_d 0x8;
rol zmm15_e@uint32 zmm15_e 0x8; rol zmm15_f@uint32 zmm15_f 0x8;
(* vpaddd %zmm12,%zmm8,%zmm8                       #! PC = 0x555555558244 *)
adds dc zmm8_0 zmm8_0 zmm12_0; adds dc zmm8_1 zmm8_1 zmm12_1;
adds dc zmm8_2 zmm8_2 zmm12_2; adds dc zmm8_3 zmm8_3 zmm12_3;
adds dc zmm8_4 zmm8_4 zmm12_4; adds dc zmm8_5 zmm8_5 zmm12_5;
adds dc zmm8_6 zmm8_6 zmm12_6; adds dc zmm8_7 zmm8_7 zmm12_7;
adds dc zmm8_8 zmm8_8 zmm12_8; adds dc zmm8_9 zmm8_9 zmm12_9;
adds dc zmm8_a zmm8_a zmm12_a; adds dc zmm8_b zmm8_b zmm12_b;
adds dc zmm8_c zmm8_c zmm12_c; adds dc zmm8_d zmm8_d zmm12_d;
adds dc zmm8_e zmm8_e zmm12_e; adds dc zmm8_f zmm8_f zmm12_f;
(* vpaddd %zmm13,%zmm9,%zmm9                       #! PC = 0x55555555824a *)
adds dc zmm9_0 zmm9_0 zmm13_0; adds dc zmm9_1 zmm9_1 zmm13_1;
adds dc zmm9_2 zmm9_2 zmm13_2; adds dc zmm9_3 zmm9_3 zmm13_3;
adds dc zmm9_4 zmm9_4 zmm13_4; adds dc zmm9_5 zmm9_5 zmm13_5;
adds dc zmm9_6 zmm9_6 zmm13_6; adds dc zmm9_7 zmm9_7 zmm13_7;
adds dc zmm9_8 zmm9_8 zmm13_8; adds dc zmm9_9 zmm9_9 zmm13_9;
adds dc zmm9_a zmm9_a zmm13_a; adds dc zmm9_b zmm9_b zmm13_b;
adds dc zmm9_c zmm9_c zmm13_c; adds dc zmm9_d zmm9_d zmm13_d;
adds dc zmm9_e zmm9_e zmm13_e; adds dc zmm9_f zmm9_f zmm13_f;
(* vpaddd %zmm14,%zmm10,%zmm10                     #! PC = 0x555555558250 *)
adds dc zmm10_0 zmm10_0 zmm14_0; adds dc zmm10_1 zmm10_1 zmm14_1;
adds dc zmm10_2 zmm10_2 zmm14_2; adds dc zmm10_3 zmm10_3 zmm14_3;
adds dc zmm10_4 zmm10_4 zmm14_4; adds dc zmm10_5 zmm10_5 zmm14_5;
adds dc zmm10_6 zmm10_6 zmm14_6; adds dc zmm10_7 zmm10_7 zmm14_7;
adds dc zmm10_8 zmm10_8 zmm14_8; adds dc zmm10_9 zmm10_9 zmm14_9;
adds dc zmm10_a zmm10_a zmm14_a; adds dc zmm10_b zmm10_b zmm14_b;
adds dc zmm10_c zmm10_c zmm14_c; adds dc zmm10_d zmm10_d zmm14_d;
adds dc zmm10_e zmm10_e zmm14_e; adds dc zmm10_f zmm10_f zmm14_f;
(* vpaddd %zmm15,%zmm11,%zmm11                     #! PC = 0x555555558256 *)
adds dc zmm11_0 zmm11_0 zmm15_0; adds dc zmm11_1 zmm11_1 zmm15_1;
adds dc zmm11_2 zmm11_2 zmm15_2; adds dc zmm11_3 zmm11_3 zmm15_3;
adds dc zmm11_4 zmm11_4 zmm15_4; adds dc zmm11_5 zmm11_5 zmm15_5;
adds dc zmm11_6 zmm11_6 zmm15_6; adds dc zmm11_7 zmm11_7 zmm15_7;
adds dc zmm11_8 zmm11_8 zmm15_8; adds dc zmm11_9 zmm11_9 zmm15_9;
adds dc zmm11_a zmm11_a zmm15_a; adds dc zmm11_b zmm11_b zmm15_b;
adds dc zmm11_c zmm11_c zmm15_c; adds dc zmm11_d zmm11_d zmm15_d;
adds dc zmm11_e zmm11_e zmm15_e; adds dc zmm11_f zmm11_f zmm15_f;
(* vpxord %zmm8,%zmm4,%zmm4                        #! PC = 0x55555555825c *)
xor zmm4_0@uint32 zmm4_0 zmm8_0; xor zmm4_1@uint32 zmm4_1 zmm8_1;
xor zmm4_2@uint32 zmm4_2 zmm8_2; xor zmm4_3@uint32 zmm4_3 zmm8_3;
xor zmm4_4@uint32 zmm4_4 zmm8_4; xor zmm4_5@uint32 zmm4_5 zmm8_5;
xor zmm4_6@uint32 zmm4_6 zmm8_6; xor zmm4_7@uint32 zmm4_7 zmm8_7;
xor zmm4_8@uint32 zmm4_8 zmm8_8; xor zmm4_9@uint32 zmm4_9 zmm8_9;
xor zmm4_a@uint32 zmm4_a zmm8_a; xor zmm4_b@uint32 zmm4_b zmm8_b;
xor zmm4_c@uint32 zmm4_c zmm8_c; xor zmm4_d@uint32 zmm4_d zmm8_d;
xor zmm4_e@uint32 zmm4_e zmm8_e; xor zmm4_f@uint32 zmm4_f zmm8_f;
(* vpxord %zmm9,%zmm5,%zmm5                        #! PC = 0x555555558262 *)
xor zmm5_0@uint32 zmm5_0 zmm9_0; xor zmm5_1@uint32 zmm5_1 zmm9_1;
xor zmm5_2@uint32 zmm5_2 zmm9_2; xor zmm5_3@uint32 zmm5_3 zmm9_3;
xor zmm5_4@uint32 zmm5_4 zmm9_4; xor zmm5_5@uint32 zmm5_5 zmm9_5;
xor zmm5_6@uint32 zmm5_6 zmm9_6; xor zmm5_7@uint32 zmm5_7 zmm9_7;
xor zmm5_8@uint32 zmm5_8 zmm9_8; xor zmm5_9@uint32 zmm5_9 zmm9_9;
xor zmm5_a@uint32 zmm5_a zmm9_a; xor zmm5_b@uint32 zmm5_b zmm9_b;
xor zmm5_c@uint32 zmm5_c zmm9_c; xor zmm5_d@uint32 zmm5_d zmm9_d;
xor zmm5_e@uint32 zmm5_e zmm9_e; xor zmm5_f@uint32 zmm5_f zmm9_f;
(* vpxord %zmm10,%zmm6,%zmm6                       #! PC = 0x555555558268 *)
xor zmm6_0@uint32 zmm6_0 zmm10_0; xor zmm6_1@uint32 zmm6_1 zmm10_1;
xor zmm6_2@uint32 zmm6_2 zmm10_2; xor zmm6_3@uint32 zmm6_3 zmm10_3;
xor zmm6_4@uint32 zmm6_4 zmm10_4; xor zmm6_5@uint32 zmm6_5 zmm10_5;
xor zmm6_6@uint32 zmm6_6 zmm10_6; xor zmm6_7@uint32 zmm6_7 zmm10_7;
xor zmm6_8@uint32 zmm6_8 zmm10_8; xor zmm6_9@uint32 zmm6_9 zmm10_9;
xor zmm6_a@uint32 zmm6_a zmm10_a; xor zmm6_b@uint32 zmm6_b zmm10_b;
xor zmm6_c@uint32 zmm6_c zmm10_c; xor zmm6_d@uint32 zmm6_d zmm10_d;
xor zmm6_e@uint32 zmm6_e zmm10_e; xor zmm6_f@uint32 zmm6_f zmm10_f;
(* vpxord %zmm11,%zmm7,%zmm7                       #! PC = 0x55555555826e *)
xor zmm7_0@uint32 zmm7_0 zmm11_0; xor zmm7_1@uint32 zmm7_1 zmm11_1;
xor zmm7_2@uint32 zmm7_2 zmm11_2; xor zmm7_3@uint32 zmm7_3 zmm11_3;
xor zmm7_4@uint32 zmm7_4 zmm11_4; xor zmm7_5@uint32 zmm7_5 zmm11_5;
xor zmm7_6@uint32 zmm7_6 zmm11_6; xor zmm7_7@uint32 zmm7_7 zmm11_7;
xor zmm7_8@uint32 zmm7_8 zmm11_8; xor zmm7_9@uint32 zmm7_9 zmm11_9;
xor zmm7_a@uint32 zmm7_a zmm11_a; xor zmm7_b@uint32 zmm7_b zmm11_b;
xor zmm7_c@uint32 zmm7_c zmm11_c; xor zmm7_d@uint32 zmm7_d zmm11_d;
xor zmm7_e@uint32 zmm7_e zmm11_e; xor zmm7_f@uint32 zmm7_f zmm11_f;
(* vprold $0x7,%zmm4,%zmm4                         #! PC = 0x555555558274 *)
rol zmm4_0@uint32 zmm4_0 0x7; rol zmm4_1@uint32 zmm4_1 0x7;
rol zmm4_2@uint32 zmm4_2 0x7; rol zmm4_3@uint32 zmm4_3 0x7;
rol zmm4_4@uint32 zmm4_4 0x7; rol zmm4_5@uint32 zmm4_5 0x7;
rol zmm4_6@uint32 zmm4_6 0x7; rol zmm4_7@uint32 zmm4_7 0x7;
rol zmm4_8@uint32 zmm4_8 0x7; rol zmm4_9@uint32 zmm4_9 0x7;
rol zmm4_a@uint32 zmm4_a 0x7; rol zmm4_b@uint32 zmm4_b 0x7;
rol zmm4_c@uint32 zmm4_c 0x7; rol zmm4_d@uint32 zmm4_d 0x7;
rol zmm4_e@uint32 zmm4_e 0x7; rol zmm4_f@uint32 zmm4_f 0x7;
(* vprold $0x7,%zmm5,%zmm5                         #! PC = 0x55555555827b *)
rol zmm5_0@uint32 zmm5_0 0x7; rol zmm5_1@uint32 zmm5_1 0x7;
rol zmm5_2@uint32 zmm5_2 0x7; rol zmm5_3@uint32 zmm5_3 0x7;
rol zmm5_4@uint32 zmm5_4 0x7; rol zmm5_5@uint32 zmm5_5 0x7;
rol zmm5_6@uint32 zmm5_6 0x7; rol zmm5_7@uint32 zmm5_7 0x7;
rol zmm5_8@uint32 zmm5_8 0x7; rol zmm5_9@uint32 zmm5_9 0x7;
rol zmm5_a@uint32 zmm5_a 0x7; rol zmm5_b@uint32 zmm5_b 0x7;
rol zmm5_c@uint32 zmm5_c 0x7; rol zmm5_d@uint32 zmm5_d 0x7;
rol zmm5_e@uint32 zmm5_e 0x7; rol zmm5_f@uint32 zmm5_f 0x7;
(* vprold $0x7,%zmm6,%zmm6                         #! PC = 0x555555558282 *)
rol zmm6_0@uint32 zmm6_0 0x7; rol zmm6_1@uint32 zmm6_1 0x7;
rol zmm6_2@uint32 zmm6_2 0x7; rol zmm6_3@uint32 zmm6_3 0x7;
rol zmm6_4@uint32 zmm6_4 0x7; rol zmm6_5@uint32 zmm6_5 0x7;
rol zmm6_6@uint32 zmm6_6 0x7; rol zmm6_7@uint32 zmm6_7 0x7;
rol zmm6_8@uint32 zmm6_8 0x7; rol zmm6_9@uint32 zmm6_9 0x7;
rol zmm6_a@uint32 zmm6_a 0x7; rol zmm6_b@uint32 zmm6_b 0x7;
rol zmm6_c@uint32 zmm6_c 0x7; rol zmm6_d@uint32 zmm6_d 0x7;
rol zmm6_e@uint32 zmm6_e 0x7; rol zmm6_f@uint32 zmm6_f 0x7;
(* vprold $0x7,%zmm7,%zmm7                         #! PC = 0x555555558289 *)
rol zmm7_0@uint32 zmm7_0 0x7; rol zmm7_1@uint32 zmm7_1 0x7;
rol zmm7_2@uint32 zmm7_2 0x7; rol zmm7_3@uint32 zmm7_3 0x7;
rol zmm7_4@uint32 zmm7_4 0x7; rol zmm7_5@uint32 zmm7_5 0x7;
rol zmm7_6@uint32 zmm7_6 0x7; rol zmm7_7@uint32 zmm7_7 0x7;
rol zmm7_8@uint32 zmm7_8 0x7; rol zmm7_9@uint32 zmm7_9 0x7;
rol zmm7_a@uint32 zmm7_a 0x7; rol zmm7_b@uint32 zmm7_b 0x7;
rol zmm7_c@uint32 zmm7_c 0x7; rol zmm7_d@uint32 zmm7_d 0x7;
rol zmm7_e@uint32 zmm7_e 0x7; rol zmm7_f@uint32 zmm7_f 0x7;
(* vpaddd %zmm5,%zmm0,%zmm0                        #! PC = 0x555555558290 *)
adds dc zmm0_0 zmm0_0 zmm5_0; adds dc zmm0_1 zmm0_1 zmm5_1;
adds dc zmm0_2 zmm0_2 zmm5_2; adds dc zmm0_3 zmm0_3 zmm5_3;
adds dc zmm0_4 zmm0_4 zmm5_4; adds dc zmm0_5 zmm0_5 zmm5_5;
adds dc zmm0_6 zmm0_6 zmm5_6; adds dc zmm0_7 zmm0_7 zmm5_7;
adds dc zmm0_8 zmm0_8 zmm5_8; adds dc zmm0_9 zmm0_9 zmm5_9;
adds dc zmm0_a zmm0_a zmm5_a; adds dc zmm0_b zmm0_b zmm5_b;
adds dc zmm0_c zmm0_c zmm5_c; adds dc zmm0_d zmm0_d zmm5_d;
adds dc zmm0_e zmm0_e zmm5_e; adds dc zmm0_f zmm0_f zmm5_f;
(* vpaddd %zmm6,%zmm1,%zmm1                        #! PC = 0x555555558296 *)
adds dc zmm1_0 zmm1_0 zmm6_0; adds dc zmm1_1 zmm1_1 zmm6_1;
adds dc zmm1_2 zmm1_2 zmm6_2; adds dc zmm1_3 zmm1_3 zmm6_3;
adds dc zmm1_4 zmm1_4 zmm6_4; adds dc zmm1_5 zmm1_5 zmm6_5;
adds dc zmm1_6 zmm1_6 zmm6_6; adds dc zmm1_7 zmm1_7 zmm6_7;
adds dc zmm1_8 zmm1_8 zmm6_8; adds dc zmm1_9 zmm1_9 zmm6_9;
adds dc zmm1_a zmm1_a zmm6_a; adds dc zmm1_b zmm1_b zmm6_b;
adds dc zmm1_c zmm1_c zmm6_c; adds dc zmm1_d zmm1_d zmm6_d;
adds dc zmm1_e zmm1_e zmm6_e; adds dc zmm1_f zmm1_f zmm6_f;
(* vpaddd %zmm7,%zmm2,%zmm2                        #! PC = 0x55555555829c *)
adds dc zmm2_0 zmm2_0 zmm7_0; adds dc zmm2_1 zmm2_1 zmm7_1;
adds dc zmm2_2 zmm2_2 zmm7_2; adds dc zmm2_3 zmm2_3 zmm7_3;
adds dc zmm2_4 zmm2_4 zmm7_4; adds dc zmm2_5 zmm2_5 zmm7_5;
adds dc zmm2_6 zmm2_6 zmm7_6; adds dc zmm2_7 zmm2_7 zmm7_7;
adds dc zmm2_8 zmm2_8 zmm7_8; adds dc zmm2_9 zmm2_9 zmm7_9;
adds dc zmm2_a zmm2_a zmm7_a; adds dc zmm2_b zmm2_b zmm7_b;
adds dc zmm2_c zmm2_c zmm7_c; adds dc zmm2_d zmm2_d zmm7_d;
adds dc zmm2_e zmm2_e zmm7_e; adds dc zmm2_f zmm2_f zmm7_f;
(* vpaddd %zmm4,%zmm3,%zmm3                        #! PC = 0x5555555582a2 *)
adds dc zmm3_0 zmm3_0 zmm4_0; adds dc zmm3_1 zmm3_1 zmm4_1;
adds dc zmm3_2 zmm3_2 zmm4_2; adds dc zmm3_3 zmm3_3 zmm4_3;
adds dc zmm3_4 zmm3_4 zmm4_4; adds dc zmm3_5 zmm3_5 zmm4_5;
adds dc zmm3_6 zmm3_6 zmm4_6; adds dc zmm3_7 zmm3_7 zmm4_7;
adds dc zmm3_8 zmm3_8 zmm4_8; adds dc zmm3_9 zmm3_9 zmm4_9;
adds dc zmm3_a zmm3_a zmm4_a; adds dc zmm3_b zmm3_b zmm4_b;
adds dc zmm3_c zmm3_c zmm4_c; adds dc zmm3_d zmm3_d zmm4_d;
adds dc zmm3_e zmm3_e zmm4_e; adds dc zmm3_f zmm3_f zmm4_f;
(* vpxord %zmm0,%zmm15,%zmm15                      #! PC = 0x5555555582a8 *)
xor zmm15_0@uint32 zmm15_0 zmm0_0; xor zmm15_1@uint32 zmm15_1 zmm0_1;
xor zmm15_2@uint32 zmm15_2 zmm0_2; xor zmm15_3@uint32 zmm15_3 zmm0_3;
xor zmm15_4@uint32 zmm15_4 zmm0_4; xor zmm15_5@uint32 zmm15_5 zmm0_5;
xor zmm15_6@uint32 zmm15_6 zmm0_6; xor zmm15_7@uint32 zmm15_7 zmm0_7;
xor zmm15_8@uint32 zmm15_8 zmm0_8; xor zmm15_9@uint32 zmm15_9 zmm0_9;
xor zmm15_a@uint32 zmm15_a zmm0_a; xor zmm15_b@uint32 zmm15_b zmm0_b;
xor zmm15_c@uint32 zmm15_c zmm0_c; xor zmm15_d@uint32 zmm15_d zmm0_d;
xor zmm15_e@uint32 zmm15_e zmm0_e; xor zmm15_f@uint32 zmm15_f zmm0_f;
(* vpxord %zmm1,%zmm12,%zmm12                      #! PC = 0x5555555582ae *)
xor zmm12_0@uint32 zmm12_0 zmm1_0; xor zmm12_1@uint32 zmm12_1 zmm1_1;
xor zmm12_2@uint32 zmm12_2 zmm1_2; xor zmm12_3@uint32 zmm12_3 zmm1_3;
xor zmm12_4@uint32 zmm12_4 zmm1_4; xor zmm12_5@uint32 zmm12_5 zmm1_5;
xor zmm12_6@uint32 zmm12_6 zmm1_6; xor zmm12_7@uint32 zmm12_7 zmm1_7;
xor zmm12_8@uint32 zmm12_8 zmm1_8; xor zmm12_9@uint32 zmm12_9 zmm1_9;
xor zmm12_a@uint32 zmm12_a zmm1_a; xor zmm12_b@uint32 zmm12_b zmm1_b;
xor zmm12_c@uint32 zmm12_c zmm1_c; xor zmm12_d@uint32 zmm12_d zmm1_d;
xor zmm12_e@uint32 zmm12_e zmm1_e; xor zmm12_f@uint32 zmm12_f zmm1_f;
(* vpxord %zmm2,%zmm13,%zmm13                      #! PC = 0x5555555582b4 *)
xor zmm13_0@uint32 zmm13_0 zmm2_0; xor zmm13_1@uint32 zmm13_1 zmm2_1;
xor zmm13_2@uint32 zmm13_2 zmm2_2; xor zmm13_3@uint32 zmm13_3 zmm2_3;
xor zmm13_4@uint32 zmm13_4 zmm2_4; xor zmm13_5@uint32 zmm13_5 zmm2_5;
xor zmm13_6@uint32 zmm13_6 zmm2_6; xor zmm13_7@uint32 zmm13_7 zmm2_7;
xor zmm13_8@uint32 zmm13_8 zmm2_8; xor zmm13_9@uint32 zmm13_9 zmm2_9;
xor zmm13_a@uint32 zmm13_a zmm2_a; xor zmm13_b@uint32 zmm13_b zmm2_b;
xor zmm13_c@uint32 zmm13_c zmm2_c; xor zmm13_d@uint32 zmm13_d zmm2_d;
xor zmm13_e@uint32 zmm13_e zmm2_e; xor zmm13_f@uint32 zmm13_f zmm2_f;
(* vpxord %zmm3,%zmm14,%zmm14                      #! PC = 0x5555555582ba *)
xor zmm14_0@uint32 zmm14_0 zmm3_0; xor zmm14_1@uint32 zmm14_1 zmm3_1;
xor zmm14_2@uint32 zmm14_2 zmm3_2; xor zmm14_3@uint32 zmm14_3 zmm3_3;
xor zmm14_4@uint32 zmm14_4 zmm3_4; xor zmm14_5@uint32 zmm14_5 zmm3_5;
xor zmm14_6@uint32 zmm14_6 zmm3_6; xor zmm14_7@uint32 zmm14_7 zmm3_7;
xor zmm14_8@uint32 zmm14_8 zmm3_8; xor zmm14_9@uint32 zmm14_9 zmm3_9;
xor zmm14_a@uint32 zmm14_a zmm3_a; xor zmm14_b@uint32 zmm14_b zmm3_b;
xor zmm14_c@uint32 zmm14_c zmm3_c; xor zmm14_d@uint32 zmm14_d zmm3_d;
xor zmm14_e@uint32 zmm14_e zmm3_e; xor zmm14_f@uint32 zmm14_f zmm3_f;
(* vprold $0x10,%zmm15,%zmm15                      #! PC = 0x5555555582c0 *)
rol zmm15_0@uint32 zmm15_0 0x10; rol zmm15_1@uint32 zmm15_1 0x10;
rol zmm15_2@uint32 zmm15_2 0x10; rol zmm15_3@uint32 zmm15_3 0x10;
rol zmm15_4@uint32 zmm15_4 0x10; rol zmm15_5@uint32 zmm15_5 0x10;
rol zmm15_6@uint32 zmm15_6 0x10; rol zmm15_7@uint32 zmm15_7 0x10;
rol zmm15_8@uint32 zmm15_8 0x10; rol zmm15_9@uint32 zmm15_9 0x10;
rol zmm15_a@uint32 zmm15_a 0x10; rol zmm15_b@uint32 zmm15_b 0x10;
rol zmm15_c@uint32 zmm15_c 0x10; rol zmm15_d@uint32 zmm15_d 0x10;
rol zmm15_e@uint32 zmm15_e 0x10; rol zmm15_f@uint32 zmm15_f 0x10;
(* vprold $0x10,%zmm12,%zmm12                      #! PC = 0x5555555582c7 *)
rol zmm12_0@uint32 zmm12_0 0x10; rol zmm12_1@uint32 zmm12_1 0x10;
rol zmm12_2@uint32 zmm12_2 0x10; rol zmm12_3@uint32 zmm12_3 0x10;
rol zmm12_4@uint32 zmm12_4 0x10; rol zmm12_5@uint32 zmm12_5 0x10;
rol zmm12_6@uint32 zmm12_6 0x10; rol zmm12_7@uint32 zmm12_7 0x10;
rol zmm12_8@uint32 zmm12_8 0x10; rol zmm12_9@uint32 zmm12_9 0x10;
rol zmm12_a@uint32 zmm12_a 0x10; rol zmm12_b@uint32 zmm12_b 0x10;
rol zmm12_c@uint32 zmm12_c 0x10; rol zmm12_d@uint32 zmm12_d 0x10;
rol zmm12_e@uint32 zmm12_e 0x10; rol zmm12_f@uint32 zmm12_f 0x10;
(* vprold $0x10,%zmm13,%zmm13                      #! PC = 0x5555555582ce *)
rol zmm13_0@uint32 zmm13_0 0x10; rol zmm13_1@uint32 zmm13_1 0x10;
rol zmm13_2@uint32 zmm13_2 0x10; rol zmm13_3@uint32 zmm13_3 0x10;
rol zmm13_4@uint32 zmm13_4 0x10; rol zmm13_5@uint32 zmm13_5 0x10;
rol zmm13_6@uint32 zmm13_6 0x10; rol zmm13_7@uint32 zmm13_7 0x10;
rol zmm13_8@uint32 zmm13_8 0x10; rol zmm13_9@uint32 zmm13_9 0x10;
rol zmm13_a@uint32 zmm13_a 0x10; rol zmm13_b@uint32 zmm13_b 0x10;
rol zmm13_c@uint32 zmm13_c 0x10; rol zmm13_d@uint32 zmm13_d 0x10;
rol zmm13_e@uint32 zmm13_e 0x10; rol zmm13_f@uint32 zmm13_f 0x10;
(* vprold $0x10,%zmm14,%zmm14                      #! PC = 0x5555555582d5 *)
rol zmm14_0@uint32 zmm14_0 0x10; rol zmm14_1@uint32 zmm14_1 0x10;
rol zmm14_2@uint32 zmm14_2 0x10; rol zmm14_3@uint32 zmm14_3 0x10;
rol zmm14_4@uint32 zmm14_4 0x10; rol zmm14_5@uint32 zmm14_5 0x10;
rol zmm14_6@uint32 zmm14_6 0x10; rol zmm14_7@uint32 zmm14_7 0x10;
rol zmm14_8@uint32 zmm14_8 0x10; rol zmm14_9@uint32 zmm14_9 0x10;
rol zmm14_a@uint32 zmm14_a 0x10; rol zmm14_b@uint32 zmm14_b 0x10;
rol zmm14_c@uint32 zmm14_c 0x10; rol zmm14_d@uint32 zmm14_d 0x10;
rol zmm14_e@uint32 zmm14_e 0x10; rol zmm14_f@uint32 zmm14_f 0x10;
(* vpaddd %zmm15,%zmm10,%zmm10                     #! PC = 0x5555555582dc *)
adds dc zmm10_0 zmm10_0 zmm15_0; adds dc zmm10_1 zmm10_1 zmm15_1;
adds dc zmm10_2 zmm10_2 zmm15_2; adds dc zmm10_3 zmm10_3 zmm15_3;
adds dc zmm10_4 zmm10_4 zmm15_4; adds dc zmm10_5 zmm10_5 zmm15_5;
adds dc zmm10_6 zmm10_6 zmm15_6; adds dc zmm10_7 zmm10_7 zmm15_7;
adds dc zmm10_8 zmm10_8 zmm15_8; adds dc zmm10_9 zmm10_9 zmm15_9;
adds dc zmm10_a zmm10_a zmm15_a; adds dc zmm10_b zmm10_b zmm15_b;
adds dc zmm10_c zmm10_c zmm15_c; adds dc zmm10_d zmm10_d zmm15_d;
adds dc zmm10_e zmm10_e zmm15_e; adds dc zmm10_f zmm10_f zmm15_f;
(* vpaddd %zmm12,%zmm11,%zmm11                     #! PC = 0x5555555582e2 *)
adds dc zmm11_0 zmm11_0 zmm12_0; adds dc zmm11_1 zmm11_1 zmm12_1;
adds dc zmm11_2 zmm11_2 zmm12_2; adds dc zmm11_3 zmm11_3 zmm12_3;
adds dc zmm11_4 zmm11_4 zmm12_4; adds dc zmm11_5 zmm11_5 zmm12_5;
adds dc zmm11_6 zmm11_6 zmm12_6; adds dc zmm11_7 zmm11_7 zmm12_7;
adds dc zmm11_8 zmm11_8 zmm12_8; adds dc zmm11_9 zmm11_9 zmm12_9;
adds dc zmm11_a zmm11_a zmm12_a; adds dc zmm11_b zmm11_b zmm12_b;
adds dc zmm11_c zmm11_c zmm12_c; adds dc zmm11_d zmm11_d zmm12_d;
adds dc zmm11_e zmm11_e zmm12_e; adds dc zmm11_f zmm11_f zmm12_f;
(* vpaddd %zmm13,%zmm8,%zmm8                       #! PC = 0x5555555582e8 *)
adds dc zmm8_0 zmm8_0 zmm13_0; adds dc zmm8_1 zmm8_1 zmm13_1;
adds dc zmm8_2 zmm8_2 zmm13_2; adds dc zmm8_3 zmm8_3 zmm13_3;
adds dc zmm8_4 zmm8_4 zmm13_4; adds dc zmm8_5 zmm8_5 zmm13_5;
adds dc zmm8_6 zmm8_6 zmm13_6; adds dc zmm8_7 zmm8_7 zmm13_7;
adds dc zmm8_8 zmm8_8 zmm13_8; adds dc zmm8_9 zmm8_9 zmm13_9;
adds dc zmm8_a zmm8_a zmm13_a; adds dc zmm8_b zmm8_b zmm13_b;
adds dc zmm8_c zmm8_c zmm13_c; adds dc zmm8_d zmm8_d zmm13_d;
adds dc zmm8_e zmm8_e zmm13_e; adds dc zmm8_f zmm8_f zmm13_f;
(* vpaddd %zmm14,%zmm9,%zmm9                       #! PC = 0x5555555582ee *)
adds dc zmm9_0 zmm9_0 zmm14_0; adds dc zmm9_1 zmm9_1 zmm14_1;
adds dc zmm9_2 zmm9_2 zmm14_2; adds dc zmm9_3 zmm9_3 zmm14_3;
adds dc zmm9_4 zmm9_4 zmm14_4; adds dc zmm9_5 zmm9_5 zmm14_5;
adds dc zmm9_6 zmm9_6 zmm14_6; adds dc zmm9_7 zmm9_7 zmm14_7;
adds dc zmm9_8 zmm9_8 zmm14_8; adds dc zmm9_9 zmm9_9 zmm14_9;
adds dc zmm9_a zmm9_a zmm14_a; adds dc zmm9_b zmm9_b zmm14_b;
adds dc zmm9_c zmm9_c zmm14_c; adds dc zmm9_d zmm9_d zmm14_d;
adds dc zmm9_e zmm9_e zmm14_e; adds dc zmm9_f zmm9_f zmm14_f;
(* vpxord %zmm10,%zmm5,%zmm5                       #! PC = 0x5555555582f4 *)
xor zmm5_0@uint32 zmm5_0 zmm10_0; xor zmm5_1@uint32 zmm5_1 zmm10_1;
xor zmm5_2@uint32 zmm5_2 zmm10_2; xor zmm5_3@uint32 zmm5_3 zmm10_3;
xor zmm5_4@uint32 zmm5_4 zmm10_4; xor zmm5_5@uint32 zmm5_5 zmm10_5;
xor zmm5_6@uint32 zmm5_6 zmm10_6; xor zmm5_7@uint32 zmm5_7 zmm10_7;
xor zmm5_8@uint32 zmm5_8 zmm10_8; xor zmm5_9@uint32 zmm5_9 zmm10_9;
xor zmm5_a@uint32 zmm5_a zmm10_a; xor zmm5_b@uint32 zmm5_b zmm10_b;
xor zmm5_c@uint32 zmm5_c zmm10_c; xor zmm5_d@uint32 zmm5_d zmm10_d;
xor zmm5_e@uint32 zmm5_e zmm10_e; xor zmm5_f@uint32 zmm5_f zmm10_f;
(* vpxord %zmm11,%zmm6,%zmm6                       #! PC = 0x5555555582fa *)
xor zmm6_0@uint32 zmm6_0 zmm11_0; xor zmm6_1@uint32 zmm6_1 zmm11_1;
xor zmm6_2@uint32 zmm6_2 zmm11_2; xor zmm6_3@uint32 zmm6_3 zmm11_3;
xor zmm6_4@uint32 zmm6_4 zmm11_4; xor zmm6_5@uint32 zmm6_5 zmm11_5;
xor zmm6_6@uint32 zmm6_6 zmm11_6; xor zmm6_7@uint32 zmm6_7 zmm11_7;
xor zmm6_8@uint32 zmm6_8 zmm11_8; xor zmm6_9@uint32 zmm6_9 zmm11_9;
xor zmm6_a@uint32 zmm6_a zmm11_a; xor zmm6_b@uint32 zmm6_b zmm11_b;
xor zmm6_c@uint32 zmm6_c zmm11_c; xor zmm6_d@uint32 zmm6_d zmm11_d;
xor zmm6_e@uint32 zmm6_e zmm11_e; xor zmm6_f@uint32 zmm6_f zmm11_f;
(* vpxord %zmm8,%zmm7,%zmm7                        #! PC = 0x555555558300 *)
xor zmm7_0@uint32 zmm7_0 zmm8_0; xor zmm7_1@uint32 zmm7_1 zmm8_1;
xor zmm7_2@uint32 zmm7_2 zmm8_2; xor zmm7_3@uint32 zmm7_3 zmm8_3;
xor zmm7_4@uint32 zmm7_4 zmm8_4; xor zmm7_5@uint32 zmm7_5 zmm8_5;
xor zmm7_6@uint32 zmm7_6 zmm8_6; xor zmm7_7@uint32 zmm7_7 zmm8_7;
xor zmm7_8@uint32 zmm7_8 zmm8_8; xor zmm7_9@uint32 zmm7_9 zmm8_9;
xor zmm7_a@uint32 zmm7_a zmm8_a; xor zmm7_b@uint32 zmm7_b zmm8_b;
xor zmm7_c@uint32 zmm7_c zmm8_c; xor zmm7_d@uint32 zmm7_d zmm8_d;
xor zmm7_e@uint32 zmm7_e zmm8_e; xor zmm7_f@uint32 zmm7_f zmm8_f;
(* vpxord %zmm9,%zmm4,%zmm4                        #! PC = 0x555555558306 *)
xor zmm4_0@uint32 zmm4_0 zmm9_0; xor zmm4_1@uint32 zmm4_1 zmm9_1;
xor zmm4_2@uint32 zmm4_2 zmm9_2; xor zmm4_3@uint32 zmm4_3 zmm9_3;
xor zmm4_4@uint32 zmm4_4 zmm9_4; xor zmm4_5@uint32 zmm4_5 zmm9_5;
xor zmm4_6@uint32 zmm4_6 zmm9_6; xor zmm4_7@uint32 zmm4_7 zmm9_7;
xor zmm4_8@uint32 zmm4_8 zmm9_8; xor zmm4_9@uint32 zmm4_9 zmm9_9;
xor zmm4_a@uint32 zmm4_a zmm9_a; xor zmm4_b@uint32 zmm4_b zmm9_b;
xor zmm4_c@uint32 zmm4_c zmm9_c; xor zmm4_d@uint32 zmm4_d zmm9_d;
xor zmm4_e@uint32 zmm4_e zmm9_e; xor zmm4_f@uint32 zmm4_f zmm9_f;
(* vprold $0xc,%zmm5,%zmm5                         #! PC = 0x55555555830c *)
rol zmm5_0@uint32 zmm5_0 0xc; rol zmm5_1@uint32 zmm5_1 0xc;
rol zmm5_2@uint32 zmm5_2 0xc; rol zmm5_3@uint32 zmm5_3 0xc;
rol zmm5_4@uint32 zmm5_4 0xc; rol zmm5_5@uint32 zmm5_5 0xc;
rol zmm5_6@uint32 zmm5_6 0xc; rol zmm5_7@uint32 zmm5_7 0xc;
rol zmm5_8@uint32 zmm5_8 0xc; rol zmm5_9@uint32 zmm5_9 0xc;
rol zmm5_a@uint32 zmm5_a 0xc; rol zmm5_b@uint32 zmm5_b 0xc;
rol zmm5_c@uint32 zmm5_c 0xc; rol zmm5_d@uint32 zmm5_d 0xc;
rol zmm5_e@uint32 zmm5_e 0xc; rol zmm5_f@uint32 zmm5_f 0xc;
(* vprold $0xc,%zmm6,%zmm6                         #! PC = 0x555555558313 *)
rol zmm6_0@uint32 zmm6_0 0xc; rol zmm6_1@uint32 zmm6_1 0xc;
rol zmm6_2@uint32 zmm6_2 0xc; rol zmm6_3@uint32 zmm6_3 0xc;
rol zmm6_4@uint32 zmm6_4 0xc; rol zmm6_5@uint32 zmm6_5 0xc;
rol zmm6_6@uint32 zmm6_6 0xc; rol zmm6_7@uint32 zmm6_7 0xc;
rol zmm6_8@uint32 zmm6_8 0xc; rol zmm6_9@uint32 zmm6_9 0xc;
rol zmm6_a@uint32 zmm6_a 0xc; rol zmm6_b@uint32 zmm6_b 0xc;
rol zmm6_c@uint32 zmm6_c 0xc; rol zmm6_d@uint32 zmm6_d 0xc;
rol zmm6_e@uint32 zmm6_e 0xc; rol zmm6_f@uint32 zmm6_f 0xc;
(* vprold $0xc,%zmm7,%zmm7                         #! PC = 0x55555555831a *)
rol zmm7_0@uint32 zmm7_0 0xc; rol zmm7_1@uint32 zmm7_1 0xc;
rol zmm7_2@uint32 zmm7_2 0xc; rol zmm7_3@uint32 zmm7_3 0xc;
rol zmm7_4@uint32 zmm7_4 0xc; rol zmm7_5@uint32 zmm7_5 0xc;
rol zmm7_6@uint32 zmm7_6 0xc; rol zmm7_7@uint32 zmm7_7 0xc;
rol zmm7_8@uint32 zmm7_8 0xc; rol zmm7_9@uint32 zmm7_9 0xc;
rol zmm7_a@uint32 zmm7_a 0xc; rol zmm7_b@uint32 zmm7_b 0xc;
rol zmm7_c@uint32 zmm7_c 0xc; rol zmm7_d@uint32 zmm7_d 0xc;
rol zmm7_e@uint32 zmm7_e 0xc; rol zmm7_f@uint32 zmm7_f 0xc;
(* vprold $0xc,%zmm4,%zmm4                         #! PC = 0x555555558321 *)
rol zmm4_0@uint32 zmm4_0 0xc; rol zmm4_1@uint32 zmm4_1 0xc;
rol zmm4_2@uint32 zmm4_2 0xc; rol zmm4_3@uint32 zmm4_3 0xc;
rol zmm4_4@uint32 zmm4_4 0xc; rol zmm4_5@uint32 zmm4_5 0xc;
rol zmm4_6@uint32 zmm4_6 0xc; rol zmm4_7@uint32 zmm4_7 0xc;
rol zmm4_8@uint32 zmm4_8 0xc; rol zmm4_9@uint32 zmm4_9 0xc;
rol zmm4_a@uint32 zmm4_a 0xc; rol zmm4_b@uint32 zmm4_b 0xc;
rol zmm4_c@uint32 zmm4_c 0xc; rol zmm4_d@uint32 zmm4_d 0xc;
rol zmm4_e@uint32 zmm4_e 0xc; rol zmm4_f@uint32 zmm4_f 0xc;
(* vpaddd %zmm5,%zmm0,%zmm0                        #! PC = 0x555555558328 *)
adds dc zmm0_0 zmm0_0 zmm5_0; adds dc zmm0_1 zmm0_1 zmm5_1;
adds dc zmm0_2 zmm0_2 zmm5_2; adds dc zmm0_3 zmm0_3 zmm5_3;
adds dc zmm0_4 zmm0_4 zmm5_4; adds dc zmm0_5 zmm0_5 zmm5_5;
adds dc zmm0_6 zmm0_6 zmm5_6; adds dc zmm0_7 zmm0_7 zmm5_7;
adds dc zmm0_8 zmm0_8 zmm5_8; adds dc zmm0_9 zmm0_9 zmm5_9;
adds dc zmm0_a zmm0_a zmm5_a; adds dc zmm0_b zmm0_b zmm5_b;
adds dc zmm0_c zmm0_c zmm5_c; adds dc zmm0_d zmm0_d zmm5_d;
adds dc zmm0_e zmm0_e zmm5_e; adds dc zmm0_f zmm0_f zmm5_f;
(* vpaddd %zmm6,%zmm1,%zmm1                        #! PC = 0x55555555832e *)
adds dc zmm1_0 zmm1_0 zmm6_0; adds dc zmm1_1 zmm1_1 zmm6_1;
adds dc zmm1_2 zmm1_2 zmm6_2; adds dc zmm1_3 zmm1_3 zmm6_3;
adds dc zmm1_4 zmm1_4 zmm6_4; adds dc zmm1_5 zmm1_5 zmm6_5;
adds dc zmm1_6 zmm1_6 zmm6_6; adds dc zmm1_7 zmm1_7 zmm6_7;
adds dc zmm1_8 zmm1_8 zmm6_8; adds dc zmm1_9 zmm1_9 zmm6_9;
adds dc zmm1_a zmm1_a zmm6_a; adds dc zmm1_b zmm1_b zmm6_b;
adds dc zmm1_c zmm1_c zmm6_c; adds dc zmm1_d zmm1_d zmm6_d;
adds dc zmm1_e zmm1_e zmm6_e; adds dc zmm1_f zmm1_f zmm6_f;
(* vpaddd %zmm7,%zmm2,%zmm2                        #! PC = 0x555555558334 *)
adds dc zmm2_0 zmm2_0 zmm7_0; adds dc zmm2_1 zmm2_1 zmm7_1;
adds dc zmm2_2 zmm2_2 zmm7_2; adds dc zmm2_3 zmm2_3 zmm7_3;
adds dc zmm2_4 zmm2_4 zmm7_4; adds dc zmm2_5 zmm2_5 zmm7_5;
adds dc zmm2_6 zmm2_6 zmm7_6; adds dc zmm2_7 zmm2_7 zmm7_7;
adds dc zmm2_8 zmm2_8 zmm7_8; adds dc zmm2_9 zmm2_9 zmm7_9;
adds dc zmm2_a zmm2_a zmm7_a; adds dc zmm2_b zmm2_b zmm7_b;
adds dc zmm2_c zmm2_c zmm7_c; adds dc zmm2_d zmm2_d zmm7_d;
adds dc zmm2_e zmm2_e zmm7_e; adds dc zmm2_f zmm2_f zmm7_f;
(* vpaddd %zmm4,%zmm3,%zmm3                        #! PC = 0x55555555833a *)
adds dc zmm3_0 zmm3_0 zmm4_0; adds dc zmm3_1 zmm3_1 zmm4_1;
adds dc zmm3_2 zmm3_2 zmm4_2; adds dc zmm3_3 zmm3_3 zmm4_3;
adds dc zmm3_4 zmm3_4 zmm4_4; adds dc zmm3_5 zmm3_5 zmm4_5;
adds dc zmm3_6 zmm3_6 zmm4_6; adds dc zmm3_7 zmm3_7 zmm4_7;
adds dc zmm3_8 zmm3_8 zmm4_8; adds dc zmm3_9 zmm3_9 zmm4_9;
adds dc zmm3_a zmm3_a zmm4_a; adds dc zmm3_b zmm3_b zmm4_b;
adds dc zmm3_c zmm3_c zmm4_c; adds dc zmm3_d zmm3_d zmm4_d;
adds dc zmm3_e zmm3_e zmm4_e; adds dc zmm3_f zmm3_f zmm4_f;
(* vpxord %zmm0,%zmm15,%zmm15                      #! PC = 0x555555558340 *)
xor zmm15_0@uint32 zmm15_0 zmm0_0; xor zmm15_1@uint32 zmm15_1 zmm0_1;
xor zmm15_2@uint32 zmm15_2 zmm0_2; xor zmm15_3@uint32 zmm15_3 zmm0_3;
xor zmm15_4@uint32 zmm15_4 zmm0_4; xor zmm15_5@uint32 zmm15_5 zmm0_5;
xor zmm15_6@uint32 zmm15_6 zmm0_6; xor zmm15_7@uint32 zmm15_7 zmm0_7;
xor zmm15_8@uint32 zmm15_8 zmm0_8; xor zmm15_9@uint32 zmm15_9 zmm0_9;
xor zmm15_a@uint32 zmm15_a zmm0_a; xor zmm15_b@uint32 zmm15_b zmm0_b;
xor zmm15_c@uint32 zmm15_c zmm0_c; xor zmm15_d@uint32 zmm15_d zmm0_d;
xor zmm15_e@uint32 zmm15_e zmm0_e; xor zmm15_f@uint32 zmm15_f zmm0_f;
(* vpxord %zmm1,%zmm12,%zmm12                      #! PC = 0x555555558346 *)
xor zmm12_0@uint32 zmm12_0 zmm1_0; xor zmm12_1@uint32 zmm12_1 zmm1_1;
xor zmm12_2@uint32 zmm12_2 zmm1_2; xor zmm12_3@uint32 zmm12_3 zmm1_3;
xor zmm12_4@uint32 zmm12_4 zmm1_4; xor zmm12_5@uint32 zmm12_5 zmm1_5;
xor zmm12_6@uint32 zmm12_6 zmm1_6; xor zmm12_7@uint32 zmm12_7 zmm1_7;
xor zmm12_8@uint32 zmm12_8 zmm1_8; xor zmm12_9@uint32 zmm12_9 zmm1_9;
xor zmm12_a@uint32 zmm12_a zmm1_a; xor zmm12_b@uint32 zmm12_b zmm1_b;
xor zmm12_c@uint32 zmm12_c zmm1_c; xor zmm12_d@uint32 zmm12_d zmm1_d;
xor zmm12_e@uint32 zmm12_e zmm1_e; xor zmm12_f@uint32 zmm12_f zmm1_f;
(* vpxord %zmm2,%zmm13,%zmm13                      #! PC = 0x55555555834c *)
xor zmm13_0@uint32 zmm13_0 zmm2_0; xor zmm13_1@uint32 zmm13_1 zmm2_1;
xor zmm13_2@uint32 zmm13_2 zmm2_2; xor zmm13_3@uint32 zmm13_3 zmm2_3;
xor zmm13_4@uint32 zmm13_4 zmm2_4; xor zmm13_5@uint32 zmm13_5 zmm2_5;
xor zmm13_6@uint32 zmm13_6 zmm2_6; xor zmm13_7@uint32 zmm13_7 zmm2_7;
xor zmm13_8@uint32 zmm13_8 zmm2_8; xor zmm13_9@uint32 zmm13_9 zmm2_9;
xor zmm13_a@uint32 zmm13_a zmm2_a; xor zmm13_b@uint32 zmm13_b zmm2_b;
xor zmm13_c@uint32 zmm13_c zmm2_c; xor zmm13_d@uint32 zmm13_d zmm2_d;
xor zmm13_e@uint32 zmm13_e zmm2_e; xor zmm13_f@uint32 zmm13_f zmm2_f;
(* vpxord %zmm3,%zmm14,%zmm14                      #! PC = 0x555555558352 *)
xor zmm14_0@uint32 zmm14_0 zmm3_0; xor zmm14_1@uint32 zmm14_1 zmm3_1;
xor zmm14_2@uint32 zmm14_2 zmm3_2; xor zmm14_3@uint32 zmm14_3 zmm3_3;
xor zmm14_4@uint32 zmm14_4 zmm3_4; xor zmm14_5@uint32 zmm14_5 zmm3_5;
xor zmm14_6@uint32 zmm14_6 zmm3_6; xor zmm14_7@uint32 zmm14_7 zmm3_7;
xor zmm14_8@uint32 zmm14_8 zmm3_8; xor zmm14_9@uint32 zmm14_9 zmm3_9;
xor zmm14_a@uint32 zmm14_a zmm3_a; xor zmm14_b@uint32 zmm14_b zmm3_b;
xor zmm14_c@uint32 zmm14_c zmm3_c; xor zmm14_d@uint32 zmm14_d zmm3_d;
xor zmm14_e@uint32 zmm14_e zmm3_e; xor zmm14_f@uint32 zmm14_f zmm3_f;
(* vprold $0x8,%zmm15,%zmm15                       #! PC = 0x555555558358 *)
rol zmm15_0@uint32 zmm15_0 0x8; rol zmm15_1@uint32 zmm15_1 0x8;
rol zmm15_2@uint32 zmm15_2 0x8; rol zmm15_3@uint32 zmm15_3 0x8;
rol zmm15_4@uint32 zmm15_4 0x8; rol zmm15_5@uint32 zmm15_5 0x8;
rol zmm15_6@uint32 zmm15_6 0x8; rol zmm15_7@uint32 zmm15_7 0x8;
rol zmm15_8@uint32 zmm15_8 0x8; rol zmm15_9@uint32 zmm15_9 0x8;
rol zmm15_a@uint32 zmm15_a 0x8; rol zmm15_b@uint32 zmm15_b 0x8;
rol zmm15_c@uint32 zmm15_c 0x8; rol zmm15_d@uint32 zmm15_d 0x8;
rol zmm15_e@uint32 zmm15_e 0x8; rol zmm15_f@uint32 zmm15_f 0x8;
(* vprold $0x8,%zmm12,%zmm12                       #! PC = 0x55555555835f *)
rol zmm12_0@uint32 zmm12_0 0x8; rol zmm12_1@uint32 zmm12_1 0x8;
rol zmm12_2@uint32 zmm12_2 0x8; rol zmm12_3@uint32 zmm12_3 0x8;
rol zmm12_4@uint32 zmm12_4 0x8; rol zmm12_5@uint32 zmm12_5 0x8;
rol zmm12_6@uint32 zmm12_6 0x8; rol zmm12_7@uint32 zmm12_7 0x8;
rol zmm12_8@uint32 zmm12_8 0x8; rol zmm12_9@uint32 zmm12_9 0x8;
rol zmm12_a@uint32 zmm12_a 0x8; rol zmm12_b@uint32 zmm12_b 0x8;
rol zmm12_c@uint32 zmm12_c 0x8; rol zmm12_d@uint32 zmm12_d 0x8;
rol zmm12_e@uint32 zmm12_e 0x8; rol zmm12_f@uint32 zmm12_f 0x8;
(* vprold $0x8,%zmm13,%zmm13                       #! PC = 0x555555558366 *)
rol zmm13_0@uint32 zmm13_0 0x8; rol zmm13_1@uint32 zmm13_1 0x8;
rol zmm13_2@uint32 zmm13_2 0x8; rol zmm13_3@uint32 zmm13_3 0x8;
rol zmm13_4@uint32 zmm13_4 0x8; rol zmm13_5@uint32 zmm13_5 0x8;
rol zmm13_6@uint32 zmm13_6 0x8; rol zmm13_7@uint32 zmm13_7 0x8;
rol zmm13_8@uint32 zmm13_8 0x8; rol zmm13_9@uint32 zmm13_9 0x8;
rol zmm13_a@uint32 zmm13_a 0x8; rol zmm13_b@uint32 zmm13_b 0x8;
rol zmm13_c@uint32 zmm13_c 0x8; rol zmm13_d@uint32 zmm13_d 0x8;
rol zmm13_e@uint32 zmm13_e 0x8; rol zmm13_f@uint32 zmm13_f 0x8;
(* vprold $0x8,%zmm14,%zmm14                       #! PC = 0x55555555836d *)
rol zmm14_0@uint32 zmm14_0 0x8; rol zmm14_1@uint32 zmm14_1 0x8;
rol zmm14_2@uint32 zmm14_2 0x8; rol zmm14_3@uint32 zmm14_3 0x8;
rol zmm14_4@uint32 zmm14_4 0x8; rol zmm14_5@uint32 zmm14_5 0x8;
rol zmm14_6@uint32 zmm14_6 0x8; rol zmm14_7@uint32 zmm14_7 0x8;
rol zmm14_8@uint32 zmm14_8 0x8; rol zmm14_9@uint32 zmm14_9 0x8;
rol zmm14_a@uint32 zmm14_a 0x8; rol zmm14_b@uint32 zmm14_b 0x8;
rol zmm14_c@uint32 zmm14_c 0x8; rol zmm14_d@uint32 zmm14_d 0x8;
rol zmm14_e@uint32 zmm14_e 0x8; rol zmm14_f@uint32 zmm14_f 0x8;
(* vpaddd %zmm15,%zmm10,%zmm10                     #! PC = 0x555555558374 *)
adds dc zmm10_0 zmm10_0 zmm15_0; adds dc zmm10_1 zmm10_1 zmm15_1;
adds dc zmm10_2 zmm10_2 zmm15_2; adds dc zmm10_3 zmm10_3 zmm15_3;
adds dc zmm10_4 zmm10_4 zmm15_4; adds dc zmm10_5 zmm10_5 zmm15_5;
adds dc zmm10_6 zmm10_6 zmm15_6; adds dc zmm10_7 zmm10_7 zmm15_7;
adds dc zmm10_8 zmm10_8 zmm15_8; adds dc zmm10_9 zmm10_9 zmm15_9;
adds dc zmm10_a zmm10_a zmm15_a; adds dc zmm10_b zmm10_b zmm15_b;
adds dc zmm10_c zmm10_c zmm15_c; adds dc zmm10_d zmm10_d zmm15_d;
adds dc zmm10_e zmm10_e zmm15_e; adds dc zmm10_f zmm10_f zmm15_f;
(* vpaddd %zmm12,%zmm11,%zmm11                     #! PC = 0x55555555837a *)
adds dc zmm11_0 zmm11_0 zmm12_0; adds dc zmm11_1 zmm11_1 zmm12_1;
adds dc zmm11_2 zmm11_2 zmm12_2; adds dc zmm11_3 zmm11_3 zmm12_3;
adds dc zmm11_4 zmm11_4 zmm12_4; adds dc zmm11_5 zmm11_5 zmm12_5;
adds dc zmm11_6 zmm11_6 zmm12_6; adds dc zmm11_7 zmm11_7 zmm12_7;
adds dc zmm11_8 zmm11_8 zmm12_8; adds dc zmm11_9 zmm11_9 zmm12_9;
adds dc zmm11_a zmm11_a zmm12_a; adds dc zmm11_b zmm11_b zmm12_b;
adds dc zmm11_c zmm11_c zmm12_c; adds dc zmm11_d zmm11_d zmm12_d;
adds dc zmm11_e zmm11_e zmm12_e; adds dc zmm11_f zmm11_f zmm12_f;
(* vpaddd %zmm13,%zmm8,%zmm8                       #! PC = 0x555555558380 *)
adds dc zmm8_0 zmm8_0 zmm13_0; adds dc zmm8_1 zmm8_1 zmm13_1;
adds dc zmm8_2 zmm8_2 zmm13_2; adds dc zmm8_3 zmm8_3 zmm13_3;
adds dc zmm8_4 zmm8_4 zmm13_4; adds dc zmm8_5 zmm8_5 zmm13_5;
adds dc zmm8_6 zmm8_6 zmm13_6; adds dc zmm8_7 zmm8_7 zmm13_7;
adds dc zmm8_8 zmm8_8 zmm13_8; adds dc zmm8_9 zmm8_9 zmm13_9;
adds dc zmm8_a zmm8_a zmm13_a; adds dc zmm8_b zmm8_b zmm13_b;
adds dc zmm8_c zmm8_c zmm13_c; adds dc zmm8_d zmm8_d zmm13_d;
adds dc zmm8_e zmm8_e zmm13_e; adds dc zmm8_f zmm8_f zmm13_f;
(* vpaddd %zmm14,%zmm9,%zmm9                       #! PC = 0x555555558386 *)
adds dc zmm9_0 zmm9_0 zmm14_0; adds dc zmm9_1 zmm9_1 zmm14_1;
adds dc zmm9_2 zmm9_2 zmm14_2; adds dc zmm9_3 zmm9_3 zmm14_3;
adds dc zmm9_4 zmm9_4 zmm14_4; adds dc zmm9_5 zmm9_5 zmm14_5;
adds dc zmm9_6 zmm9_6 zmm14_6; adds dc zmm9_7 zmm9_7 zmm14_7;
adds dc zmm9_8 zmm9_8 zmm14_8; adds dc zmm9_9 zmm9_9 zmm14_9;
adds dc zmm9_a zmm9_a zmm14_a; adds dc zmm9_b zmm9_b zmm14_b;
adds dc zmm9_c zmm9_c zmm14_c; adds dc zmm9_d zmm9_d zmm14_d;
adds dc zmm9_e zmm9_e zmm14_e; adds dc zmm9_f zmm9_f zmm14_f;
(* vpxord %zmm10,%zmm5,%zmm5                       #! PC = 0x55555555838c *)
xor zmm5_0@uint32 zmm5_0 zmm10_0; xor zmm5_1@uint32 zmm5_1 zmm10_1;
xor zmm5_2@uint32 zmm5_2 zmm10_2; xor zmm5_3@uint32 zmm5_3 zmm10_3;
xor zmm5_4@uint32 zmm5_4 zmm10_4; xor zmm5_5@uint32 zmm5_5 zmm10_5;
xor zmm5_6@uint32 zmm5_6 zmm10_6; xor zmm5_7@uint32 zmm5_7 zmm10_7;
xor zmm5_8@uint32 zmm5_8 zmm10_8; xor zmm5_9@uint32 zmm5_9 zmm10_9;
xor zmm5_a@uint32 zmm5_a zmm10_a; xor zmm5_b@uint32 zmm5_b zmm10_b;
xor zmm5_c@uint32 zmm5_c zmm10_c; xor zmm5_d@uint32 zmm5_d zmm10_d;
xor zmm5_e@uint32 zmm5_e zmm10_e; xor zmm5_f@uint32 zmm5_f zmm10_f;
(* vpxord %zmm11,%zmm6,%zmm6                       #! PC = 0x555555558392 *)
xor zmm6_0@uint32 zmm6_0 zmm11_0; xor zmm6_1@uint32 zmm6_1 zmm11_1;
xor zmm6_2@uint32 zmm6_2 zmm11_2; xor zmm6_3@uint32 zmm6_3 zmm11_3;
xor zmm6_4@uint32 zmm6_4 zmm11_4; xor zmm6_5@uint32 zmm6_5 zmm11_5;
xor zmm6_6@uint32 zmm6_6 zmm11_6; xor zmm6_7@uint32 zmm6_7 zmm11_7;
xor zmm6_8@uint32 zmm6_8 zmm11_8; xor zmm6_9@uint32 zmm6_9 zmm11_9;
xor zmm6_a@uint32 zmm6_a zmm11_a; xor zmm6_b@uint32 zmm6_b zmm11_b;
xor zmm6_c@uint32 zmm6_c zmm11_c; xor zmm6_d@uint32 zmm6_d zmm11_d;
xor zmm6_e@uint32 zmm6_e zmm11_e; xor zmm6_f@uint32 zmm6_f zmm11_f;
(* vpxord %zmm8,%zmm7,%zmm7                        #! PC = 0x555555558398 *)
xor zmm7_0@uint32 zmm7_0 zmm8_0; xor zmm7_1@uint32 zmm7_1 zmm8_1;
xor zmm7_2@uint32 zmm7_2 zmm8_2; xor zmm7_3@uint32 zmm7_3 zmm8_3;
xor zmm7_4@uint32 zmm7_4 zmm8_4; xor zmm7_5@uint32 zmm7_5 zmm8_5;
xor zmm7_6@uint32 zmm7_6 zmm8_6; xor zmm7_7@uint32 zmm7_7 zmm8_7;
xor zmm7_8@uint32 zmm7_8 zmm8_8; xor zmm7_9@uint32 zmm7_9 zmm8_9;
xor zmm7_a@uint32 zmm7_a zmm8_a; xor zmm7_b@uint32 zmm7_b zmm8_b;
xor zmm7_c@uint32 zmm7_c zmm8_c; xor zmm7_d@uint32 zmm7_d zmm8_d;
xor zmm7_e@uint32 zmm7_e zmm8_e; xor zmm7_f@uint32 zmm7_f zmm8_f;
(* vpxord %zmm9,%zmm4,%zmm4                        #! PC = 0x55555555839e *)
xor zmm4_0@uint32 zmm4_0 zmm9_0; xor zmm4_1@uint32 zmm4_1 zmm9_1;
xor zmm4_2@uint32 zmm4_2 zmm9_2; xor zmm4_3@uint32 zmm4_3 zmm9_3;
xor zmm4_4@uint32 zmm4_4 zmm9_4; xor zmm4_5@uint32 zmm4_5 zmm9_5;
xor zmm4_6@uint32 zmm4_6 zmm9_6; xor zmm4_7@uint32 zmm4_7 zmm9_7;
xor zmm4_8@uint32 zmm4_8 zmm9_8; xor zmm4_9@uint32 zmm4_9 zmm9_9;
xor zmm4_a@uint32 zmm4_a zmm9_a; xor zmm4_b@uint32 zmm4_b zmm9_b;
xor zmm4_c@uint32 zmm4_c zmm9_c; xor zmm4_d@uint32 zmm4_d zmm9_d;
xor zmm4_e@uint32 zmm4_e zmm9_e; xor zmm4_f@uint32 zmm4_f zmm9_f;
(* vprold $0x7,%zmm5,%zmm5                         #! PC = 0x5555555583a4 *)
rol zmm5_0@uint32 zmm5_0 0x7; rol zmm5_1@uint32 zmm5_1 0x7;
rol zmm5_2@uint32 zmm5_2 0x7; rol zmm5_3@uint32 zmm5_3 0x7;
rol zmm5_4@uint32 zmm5_4 0x7; rol zmm5_5@uint32 zmm5_5 0x7;
rol zmm5_6@uint32 zmm5_6 0x7; rol zmm5_7@uint32 zmm5_7 0x7;
rol zmm5_8@uint32 zmm5_8 0x7; rol zmm5_9@uint32 zmm5_9 0x7;
rol zmm5_a@uint32 zmm5_a 0x7; rol zmm5_b@uint32 zmm5_b 0x7;
rol zmm5_c@uint32 zmm5_c 0x7; rol zmm5_d@uint32 zmm5_d 0x7;
rol zmm5_e@uint32 zmm5_e 0x7; rol zmm5_f@uint32 zmm5_f 0x7;
(* vprold $0x7,%zmm6,%zmm6                         #! PC = 0x5555555583ab *)
rol zmm6_0@uint32 zmm6_0 0x7; rol zmm6_1@uint32 zmm6_1 0x7;
rol zmm6_2@uint32 zmm6_2 0x7; rol zmm6_3@uint32 zmm6_3 0x7;
rol zmm6_4@uint32 zmm6_4 0x7; rol zmm6_5@uint32 zmm6_5 0x7;
rol zmm6_6@uint32 zmm6_6 0x7; rol zmm6_7@uint32 zmm6_7 0x7;
rol zmm6_8@uint32 zmm6_8 0x7; rol zmm6_9@uint32 zmm6_9 0x7;
rol zmm6_a@uint32 zmm6_a 0x7; rol zmm6_b@uint32 zmm6_b 0x7;
rol zmm6_c@uint32 zmm6_c 0x7; rol zmm6_d@uint32 zmm6_d 0x7;
rol zmm6_e@uint32 zmm6_e 0x7; rol zmm6_f@uint32 zmm6_f 0x7;
(* vprold $0x7,%zmm7,%zmm7                         #! PC = 0x5555555583b2 *)
rol zmm7_0@uint32 zmm7_0 0x7; rol zmm7_1@uint32 zmm7_1 0x7;
rol zmm7_2@uint32 zmm7_2 0x7; rol zmm7_3@uint32 zmm7_3 0x7;
rol zmm7_4@uint32 zmm7_4 0x7; rol zmm7_5@uint32 zmm7_5 0x7;
rol zmm7_6@uint32 zmm7_6 0x7; rol zmm7_7@uint32 zmm7_7 0x7;
rol zmm7_8@uint32 zmm7_8 0x7; rol zmm7_9@uint32 zmm7_9 0x7;
rol zmm7_a@uint32 zmm7_a 0x7; rol zmm7_b@uint32 zmm7_b 0x7;
rol zmm7_c@uint32 zmm7_c 0x7; rol zmm7_d@uint32 zmm7_d 0x7;
rol zmm7_e@uint32 zmm7_e 0x7; rol zmm7_f@uint32 zmm7_f 0x7;
(* vprold $0x7,%zmm4,%zmm4                         #! PC = 0x5555555583b9 *)
rol zmm4_0@uint32 zmm4_0 0x7; rol zmm4_1@uint32 zmm4_1 0x7;
rol zmm4_2@uint32 zmm4_2 0x7; rol zmm4_3@uint32 zmm4_3 0x7;
rol zmm4_4@uint32 zmm4_4 0x7; rol zmm4_5@uint32 zmm4_5 0x7;
rol zmm4_6@uint32 zmm4_6 0x7; rol zmm4_7@uint32 zmm4_7 0x7;
rol zmm4_8@uint32 zmm4_8 0x7; rol zmm4_9@uint32 zmm4_9 0x7;
rol zmm4_a@uint32 zmm4_a 0x7; rol zmm4_b@uint32 zmm4_b 0x7;
rol zmm4_c@uint32 zmm4_c 0x7; rol zmm4_d@uint32 zmm4_d 0x7;
rol zmm4_e@uint32 zmm4_e 0x7; rol zmm4_f@uint32 zmm4_f 0x7;
(* dec    %eax                                     #! PC = 0x5555555583c0 *)
(* dec %eax *)
nop;
(* #jne    0x555555558160 <ChaCha20_16x+448>       #! PC = 0x5555555583c2 *)
#jne    0x555555558160 <ChaCha20_16x+448>       #! 0x5555555583c2 = 0x5555555583c2;
(* vpaddd %zmm4,%zmm0,%zmm0                        #! PC = 0x555555558160 *)
adds dc zmm0_0 zmm0_0 zmm4_0; adds dc zmm0_1 zmm0_1 zmm4_1;
adds dc zmm0_2 zmm0_2 zmm4_2; adds dc zmm0_3 zmm0_3 zmm4_3;
adds dc zmm0_4 zmm0_4 zmm4_4; adds dc zmm0_5 zmm0_5 zmm4_5;
adds dc zmm0_6 zmm0_6 zmm4_6; adds dc zmm0_7 zmm0_7 zmm4_7;
adds dc zmm0_8 zmm0_8 zmm4_8; adds dc zmm0_9 zmm0_9 zmm4_9;
adds dc zmm0_a zmm0_a zmm4_a; adds dc zmm0_b zmm0_b zmm4_b;
adds dc zmm0_c zmm0_c zmm4_c; adds dc zmm0_d zmm0_d zmm4_d;
adds dc zmm0_e zmm0_e zmm4_e; adds dc zmm0_f zmm0_f zmm4_f;
(* vpaddd %zmm5,%zmm1,%zmm1                        #! PC = 0x555555558166 *)
adds dc zmm1_0 zmm1_0 zmm5_0; adds dc zmm1_1 zmm1_1 zmm5_1;
adds dc zmm1_2 zmm1_2 zmm5_2; adds dc zmm1_3 zmm1_3 zmm5_3;
adds dc zmm1_4 zmm1_4 zmm5_4; adds dc zmm1_5 zmm1_5 zmm5_5;
adds dc zmm1_6 zmm1_6 zmm5_6; adds dc zmm1_7 zmm1_7 zmm5_7;
adds dc zmm1_8 zmm1_8 zmm5_8; adds dc zmm1_9 zmm1_9 zmm5_9;
adds dc zmm1_a zmm1_a zmm5_a; adds dc zmm1_b zmm1_b zmm5_b;
adds dc zmm1_c zmm1_c zmm5_c; adds dc zmm1_d zmm1_d zmm5_d;
adds dc zmm1_e zmm1_e zmm5_e; adds dc zmm1_f zmm1_f zmm5_f;
(* vpaddd %zmm6,%zmm2,%zmm2                        #! PC = 0x55555555816c *)
adds dc zmm2_0 zmm2_0 zmm6_0; adds dc zmm2_1 zmm2_1 zmm6_1;
adds dc zmm2_2 zmm2_2 zmm6_2; adds dc zmm2_3 zmm2_3 zmm6_3;
adds dc zmm2_4 zmm2_4 zmm6_4; adds dc zmm2_5 zmm2_5 zmm6_5;
adds dc zmm2_6 zmm2_6 zmm6_6; adds dc zmm2_7 zmm2_7 zmm6_7;
adds dc zmm2_8 zmm2_8 zmm6_8; adds dc zmm2_9 zmm2_9 zmm6_9;
adds dc zmm2_a zmm2_a zmm6_a; adds dc zmm2_b zmm2_b zmm6_b;
adds dc zmm2_c zmm2_c zmm6_c; adds dc zmm2_d zmm2_d zmm6_d;
adds dc zmm2_e zmm2_e zmm6_e; adds dc zmm2_f zmm2_f zmm6_f;
(* vpaddd %zmm7,%zmm3,%zmm3                        #! PC = 0x555555558172 *)
adds dc zmm3_0 zmm3_0 zmm7_0; adds dc zmm3_1 zmm3_1 zmm7_1;
adds dc zmm3_2 zmm3_2 zmm7_2; adds dc zmm3_3 zmm3_3 zmm7_3;
adds dc zmm3_4 zmm3_4 zmm7_4; adds dc zmm3_5 zmm3_5 zmm7_5;
adds dc zmm3_6 zmm3_6 zmm7_6; adds dc zmm3_7 zmm3_7 zmm7_7;
adds dc zmm3_8 zmm3_8 zmm7_8; adds dc zmm3_9 zmm3_9 zmm7_9;
adds dc zmm3_a zmm3_a zmm7_a; adds dc zmm3_b zmm3_b zmm7_b;
adds dc zmm3_c zmm3_c zmm7_c; adds dc zmm3_d zmm3_d zmm7_d;
adds dc zmm3_e zmm3_e zmm7_e; adds dc zmm3_f zmm3_f zmm7_f;
(* vpxord %zmm0,%zmm12,%zmm12                      #! PC = 0x555555558178 *)
xor zmm12_0@uint32 zmm12_0 zmm0_0; xor zmm12_1@uint32 zmm12_1 zmm0_1;
xor zmm12_2@uint32 zmm12_2 zmm0_2; xor zmm12_3@uint32 zmm12_3 zmm0_3;
xor zmm12_4@uint32 zmm12_4 zmm0_4; xor zmm12_5@uint32 zmm12_5 zmm0_5;
xor zmm12_6@uint32 zmm12_6 zmm0_6; xor zmm12_7@uint32 zmm12_7 zmm0_7;
xor zmm12_8@uint32 zmm12_8 zmm0_8; xor zmm12_9@uint32 zmm12_9 zmm0_9;
xor zmm12_a@uint32 zmm12_a zmm0_a; xor zmm12_b@uint32 zmm12_b zmm0_b;
xor zmm12_c@uint32 zmm12_c zmm0_c; xor zmm12_d@uint32 zmm12_d zmm0_d;
xor zmm12_e@uint32 zmm12_e zmm0_e; xor zmm12_f@uint32 zmm12_f zmm0_f;
(* vpxord %zmm1,%zmm13,%zmm13                      #! PC = 0x55555555817e *)
xor zmm13_0@uint32 zmm13_0 zmm1_0; xor zmm13_1@uint32 zmm13_1 zmm1_1;
xor zmm13_2@uint32 zmm13_2 zmm1_2; xor zmm13_3@uint32 zmm13_3 zmm1_3;
xor zmm13_4@uint32 zmm13_4 zmm1_4; xor zmm13_5@uint32 zmm13_5 zmm1_5;
xor zmm13_6@uint32 zmm13_6 zmm1_6; xor zmm13_7@uint32 zmm13_7 zmm1_7;
xor zmm13_8@uint32 zmm13_8 zmm1_8; xor zmm13_9@uint32 zmm13_9 zmm1_9;
xor zmm13_a@uint32 zmm13_a zmm1_a; xor zmm13_b@uint32 zmm13_b zmm1_b;
xor zmm13_c@uint32 zmm13_c zmm1_c; xor zmm13_d@uint32 zmm13_d zmm1_d;
xor zmm13_e@uint32 zmm13_e zmm1_e; xor zmm13_f@uint32 zmm13_f zmm1_f;
(* vpxord %zmm2,%zmm14,%zmm14                      #! PC = 0x555555558184 *)
xor zmm14_0@uint32 zmm14_0 zmm2_0; xor zmm14_1@uint32 zmm14_1 zmm2_1;
xor zmm14_2@uint32 zmm14_2 zmm2_2; xor zmm14_3@uint32 zmm14_3 zmm2_3;
xor zmm14_4@uint32 zmm14_4 zmm2_4; xor zmm14_5@uint32 zmm14_5 zmm2_5;
xor zmm14_6@uint32 zmm14_6 zmm2_6; xor zmm14_7@uint32 zmm14_7 zmm2_7;
xor zmm14_8@uint32 zmm14_8 zmm2_8; xor zmm14_9@uint32 zmm14_9 zmm2_9;
xor zmm14_a@uint32 zmm14_a zmm2_a; xor zmm14_b@uint32 zmm14_b zmm2_b;
xor zmm14_c@uint32 zmm14_c zmm2_c; xor zmm14_d@uint32 zmm14_d zmm2_d;
xor zmm14_e@uint32 zmm14_e zmm2_e; xor zmm14_f@uint32 zmm14_f zmm2_f;
(* vpxord %zmm3,%zmm15,%zmm15                      #! PC = 0x55555555818a *)
xor zmm15_0@uint32 zmm15_0 zmm3_0; xor zmm15_1@uint32 zmm15_1 zmm3_1;
xor zmm15_2@uint32 zmm15_2 zmm3_2; xor zmm15_3@uint32 zmm15_3 zmm3_3;
xor zmm15_4@uint32 zmm15_4 zmm3_4; xor zmm15_5@uint32 zmm15_5 zmm3_5;
xor zmm15_6@uint32 zmm15_6 zmm3_6; xor zmm15_7@uint32 zmm15_7 zmm3_7;
xor zmm15_8@uint32 zmm15_8 zmm3_8; xor zmm15_9@uint32 zmm15_9 zmm3_9;
xor zmm15_a@uint32 zmm15_a zmm3_a; xor zmm15_b@uint32 zmm15_b zmm3_b;
xor zmm15_c@uint32 zmm15_c zmm3_c; xor zmm15_d@uint32 zmm15_d zmm3_d;
xor zmm15_e@uint32 zmm15_e zmm3_e; xor zmm15_f@uint32 zmm15_f zmm3_f;
(* vprold $0x10,%zmm12,%zmm12                      #! PC = 0x555555558190 *)
rol zmm12_0@uint32 zmm12_0 0x10; rol zmm12_1@uint32 zmm12_1 0x10;
rol zmm12_2@uint32 zmm12_2 0x10; rol zmm12_3@uint32 zmm12_3 0x10;
rol zmm12_4@uint32 zmm12_4 0x10; rol zmm12_5@uint32 zmm12_5 0x10;
rol zmm12_6@uint32 zmm12_6 0x10; rol zmm12_7@uint32 zmm12_7 0x10;
rol zmm12_8@uint32 zmm12_8 0x10; rol zmm12_9@uint32 zmm12_9 0x10;
rol zmm12_a@uint32 zmm12_a 0x10; rol zmm12_b@uint32 zmm12_b 0x10;
rol zmm12_c@uint32 zmm12_c 0x10; rol zmm12_d@uint32 zmm12_d 0x10;
rol zmm12_e@uint32 zmm12_e 0x10; rol zmm12_f@uint32 zmm12_f 0x10;
(* vprold $0x10,%zmm13,%zmm13                      #! PC = 0x555555558197 *)
rol zmm13_0@uint32 zmm13_0 0x10; rol zmm13_1@uint32 zmm13_1 0x10;
rol zmm13_2@uint32 zmm13_2 0x10; rol zmm13_3@uint32 zmm13_3 0x10;
rol zmm13_4@uint32 zmm13_4 0x10; rol zmm13_5@uint32 zmm13_5 0x10;
rol zmm13_6@uint32 zmm13_6 0x10; rol zmm13_7@uint32 zmm13_7 0x10;
rol zmm13_8@uint32 zmm13_8 0x10; rol zmm13_9@uint32 zmm13_9 0x10;
rol zmm13_a@uint32 zmm13_a 0x10; rol zmm13_b@uint32 zmm13_b 0x10;
rol zmm13_c@uint32 zmm13_c 0x10; rol zmm13_d@uint32 zmm13_d 0x10;
rol zmm13_e@uint32 zmm13_e 0x10; rol zmm13_f@uint32 zmm13_f 0x10;
(* vprold $0x10,%zmm14,%zmm14                      #! PC = 0x55555555819e *)
rol zmm14_0@uint32 zmm14_0 0x10; rol zmm14_1@uint32 zmm14_1 0x10;
rol zmm14_2@uint32 zmm14_2 0x10; rol zmm14_3@uint32 zmm14_3 0x10;
rol zmm14_4@uint32 zmm14_4 0x10; rol zmm14_5@uint32 zmm14_5 0x10;
rol zmm14_6@uint32 zmm14_6 0x10; rol zmm14_7@uint32 zmm14_7 0x10;
rol zmm14_8@uint32 zmm14_8 0x10; rol zmm14_9@uint32 zmm14_9 0x10;
rol zmm14_a@uint32 zmm14_a 0x10; rol zmm14_b@uint32 zmm14_b 0x10;
rol zmm14_c@uint32 zmm14_c 0x10; rol zmm14_d@uint32 zmm14_d 0x10;
rol zmm14_e@uint32 zmm14_e 0x10; rol zmm14_f@uint32 zmm14_f 0x10;
(* vprold $0x10,%zmm15,%zmm15                      #! PC = 0x5555555581a5 *)
rol zmm15_0@uint32 zmm15_0 0x10; rol zmm15_1@uint32 zmm15_1 0x10;
rol zmm15_2@uint32 zmm15_2 0x10; rol zmm15_3@uint32 zmm15_3 0x10;
rol zmm15_4@uint32 zmm15_4 0x10; rol zmm15_5@uint32 zmm15_5 0x10;
rol zmm15_6@uint32 zmm15_6 0x10; rol zmm15_7@uint32 zmm15_7 0x10;
rol zmm15_8@uint32 zmm15_8 0x10; rol zmm15_9@uint32 zmm15_9 0x10;
rol zmm15_a@uint32 zmm15_a 0x10; rol zmm15_b@uint32 zmm15_b 0x10;
rol zmm15_c@uint32 zmm15_c 0x10; rol zmm15_d@uint32 zmm15_d 0x10;
rol zmm15_e@uint32 zmm15_e 0x10; rol zmm15_f@uint32 zmm15_f 0x10;
(* vpaddd %zmm12,%zmm8,%zmm8                       #! PC = 0x5555555581ac *)
adds dc zmm8_0 zmm8_0 zmm12_0; adds dc zmm8_1 zmm8_1 zmm12_1;
adds dc zmm8_2 zmm8_2 zmm12_2; adds dc zmm8_3 zmm8_3 zmm12_3;
adds dc zmm8_4 zmm8_4 zmm12_4; adds dc zmm8_5 zmm8_5 zmm12_5;
adds dc zmm8_6 zmm8_6 zmm12_6; adds dc zmm8_7 zmm8_7 zmm12_7;
adds dc zmm8_8 zmm8_8 zmm12_8; adds dc zmm8_9 zmm8_9 zmm12_9;
adds dc zmm8_a zmm8_a zmm12_a; adds dc zmm8_b zmm8_b zmm12_b;
adds dc zmm8_c zmm8_c zmm12_c; adds dc zmm8_d zmm8_d zmm12_d;
adds dc zmm8_e zmm8_e zmm12_e; adds dc zmm8_f zmm8_f zmm12_f;
(* vpaddd %zmm13,%zmm9,%zmm9                       #! PC = 0x5555555581b2 *)
adds dc zmm9_0 zmm9_0 zmm13_0; adds dc zmm9_1 zmm9_1 zmm13_1;
adds dc zmm9_2 zmm9_2 zmm13_2; adds dc zmm9_3 zmm9_3 zmm13_3;
adds dc zmm9_4 zmm9_4 zmm13_4; adds dc zmm9_5 zmm9_5 zmm13_5;
adds dc zmm9_6 zmm9_6 zmm13_6; adds dc zmm9_7 zmm9_7 zmm13_7;
adds dc zmm9_8 zmm9_8 zmm13_8; adds dc zmm9_9 zmm9_9 zmm13_9;
adds dc zmm9_a zmm9_a zmm13_a; adds dc zmm9_b zmm9_b zmm13_b;
adds dc zmm9_c zmm9_c zmm13_c; adds dc zmm9_d zmm9_d zmm13_d;
adds dc zmm9_e zmm9_e zmm13_e; adds dc zmm9_f zmm9_f zmm13_f;
(* vpaddd %zmm14,%zmm10,%zmm10                     #! PC = 0x5555555581b8 *)
adds dc zmm10_0 zmm10_0 zmm14_0; adds dc zmm10_1 zmm10_1 zmm14_1;
adds dc zmm10_2 zmm10_2 zmm14_2; adds dc zmm10_3 zmm10_3 zmm14_3;
adds dc zmm10_4 zmm10_4 zmm14_4; adds dc zmm10_5 zmm10_5 zmm14_5;
adds dc zmm10_6 zmm10_6 zmm14_6; adds dc zmm10_7 zmm10_7 zmm14_7;
adds dc zmm10_8 zmm10_8 zmm14_8; adds dc zmm10_9 zmm10_9 zmm14_9;
adds dc zmm10_a zmm10_a zmm14_a; adds dc zmm10_b zmm10_b zmm14_b;
adds dc zmm10_c zmm10_c zmm14_c; adds dc zmm10_d zmm10_d zmm14_d;
adds dc zmm10_e zmm10_e zmm14_e; adds dc zmm10_f zmm10_f zmm14_f;
(* vpaddd %zmm15,%zmm11,%zmm11                     #! PC = 0x5555555581be *)
adds dc zmm11_0 zmm11_0 zmm15_0; adds dc zmm11_1 zmm11_1 zmm15_1;
adds dc zmm11_2 zmm11_2 zmm15_2; adds dc zmm11_3 zmm11_3 zmm15_3;
adds dc zmm11_4 zmm11_4 zmm15_4; adds dc zmm11_5 zmm11_5 zmm15_5;
adds dc zmm11_6 zmm11_6 zmm15_6; adds dc zmm11_7 zmm11_7 zmm15_7;
adds dc zmm11_8 zmm11_8 zmm15_8; adds dc zmm11_9 zmm11_9 zmm15_9;
adds dc zmm11_a zmm11_a zmm15_a; adds dc zmm11_b zmm11_b zmm15_b;
adds dc zmm11_c zmm11_c zmm15_c; adds dc zmm11_d zmm11_d zmm15_d;
adds dc zmm11_e zmm11_e zmm15_e; adds dc zmm11_f zmm11_f zmm15_f;
(* vpxord %zmm8,%zmm4,%zmm4                        #! PC = 0x5555555581c4 *)
xor zmm4_0@uint32 zmm4_0 zmm8_0; xor zmm4_1@uint32 zmm4_1 zmm8_1;
xor zmm4_2@uint32 zmm4_2 zmm8_2; xor zmm4_3@uint32 zmm4_3 zmm8_3;
xor zmm4_4@uint32 zmm4_4 zmm8_4; xor zmm4_5@uint32 zmm4_5 zmm8_5;
xor zmm4_6@uint32 zmm4_6 zmm8_6; xor zmm4_7@uint32 zmm4_7 zmm8_7;
xor zmm4_8@uint32 zmm4_8 zmm8_8; xor zmm4_9@uint32 zmm4_9 zmm8_9;
xor zmm4_a@uint32 zmm4_a zmm8_a; xor zmm4_b@uint32 zmm4_b zmm8_b;
xor zmm4_c@uint32 zmm4_c zmm8_c; xor zmm4_d@uint32 zmm4_d zmm8_d;
xor zmm4_e@uint32 zmm4_e zmm8_e; xor zmm4_f@uint32 zmm4_f zmm8_f;
(* vpxord %zmm9,%zmm5,%zmm5                        #! PC = 0x5555555581ca *)
xor zmm5_0@uint32 zmm5_0 zmm9_0; xor zmm5_1@uint32 zmm5_1 zmm9_1;
xor zmm5_2@uint32 zmm5_2 zmm9_2; xor zmm5_3@uint32 zmm5_3 zmm9_3;
xor zmm5_4@uint32 zmm5_4 zmm9_4; xor zmm5_5@uint32 zmm5_5 zmm9_5;
xor zmm5_6@uint32 zmm5_6 zmm9_6; xor zmm5_7@uint32 zmm5_7 zmm9_7;
xor zmm5_8@uint32 zmm5_8 zmm9_8; xor zmm5_9@uint32 zmm5_9 zmm9_9;
xor zmm5_a@uint32 zmm5_a zmm9_a; xor zmm5_b@uint32 zmm5_b zmm9_b;
xor zmm5_c@uint32 zmm5_c zmm9_c; xor zmm5_d@uint32 zmm5_d zmm9_d;
xor zmm5_e@uint32 zmm5_e zmm9_e; xor zmm5_f@uint32 zmm5_f zmm9_f;
(* vpxord %zmm10,%zmm6,%zmm6                       #! PC = 0x5555555581d0 *)
xor zmm6_0@uint32 zmm6_0 zmm10_0; xor zmm6_1@uint32 zmm6_1 zmm10_1;
xor zmm6_2@uint32 zmm6_2 zmm10_2; xor zmm6_3@uint32 zmm6_3 zmm10_3;
xor zmm6_4@uint32 zmm6_4 zmm10_4; xor zmm6_5@uint32 zmm6_5 zmm10_5;
xor zmm6_6@uint32 zmm6_6 zmm10_6; xor zmm6_7@uint32 zmm6_7 zmm10_7;
xor zmm6_8@uint32 zmm6_8 zmm10_8; xor zmm6_9@uint32 zmm6_9 zmm10_9;
xor zmm6_a@uint32 zmm6_a zmm10_a; xor zmm6_b@uint32 zmm6_b zmm10_b;
xor zmm6_c@uint32 zmm6_c zmm10_c; xor zmm6_d@uint32 zmm6_d zmm10_d;
xor zmm6_e@uint32 zmm6_e zmm10_e; xor zmm6_f@uint32 zmm6_f zmm10_f;
(* vpxord %zmm11,%zmm7,%zmm7                       #! PC = 0x5555555581d6 *)
xor zmm7_0@uint32 zmm7_0 zmm11_0; xor zmm7_1@uint32 zmm7_1 zmm11_1;
xor zmm7_2@uint32 zmm7_2 zmm11_2; xor zmm7_3@uint32 zmm7_3 zmm11_3;
xor zmm7_4@uint32 zmm7_4 zmm11_4; xor zmm7_5@uint32 zmm7_5 zmm11_5;
xor zmm7_6@uint32 zmm7_6 zmm11_6; xor zmm7_7@uint32 zmm7_7 zmm11_7;
xor zmm7_8@uint32 zmm7_8 zmm11_8; xor zmm7_9@uint32 zmm7_9 zmm11_9;
xor zmm7_a@uint32 zmm7_a zmm11_a; xor zmm7_b@uint32 zmm7_b zmm11_b;
xor zmm7_c@uint32 zmm7_c zmm11_c; xor zmm7_d@uint32 zmm7_d zmm11_d;
xor zmm7_e@uint32 zmm7_e zmm11_e; xor zmm7_f@uint32 zmm7_f zmm11_f;
(* vprold $0xc,%zmm4,%zmm4                         #! PC = 0x5555555581dc *)
rol zmm4_0@uint32 zmm4_0 0xc; rol zmm4_1@uint32 zmm4_1 0xc;
rol zmm4_2@uint32 zmm4_2 0xc; rol zmm4_3@uint32 zmm4_3 0xc;
rol zmm4_4@uint32 zmm4_4 0xc; rol zmm4_5@uint32 zmm4_5 0xc;
rol zmm4_6@uint32 zmm4_6 0xc; rol zmm4_7@uint32 zmm4_7 0xc;
rol zmm4_8@uint32 zmm4_8 0xc; rol zmm4_9@uint32 zmm4_9 0xc;
rol zmm4_a@uint32 zmm4_a 0xc; rol zmm4_b@uint32 zmm4_b 0xc;
rol zmm4_c@uint32 zmm4_c 0xc; rol zmm4_d@uint32 zmm4_d 0xc;
rol zmm4_e@uint32 zmm4_e 0xc; rol zmm4_f@uint32 zmm4_f 0xc;
(* vprold $0xc,%zmm5,%zmm5                         #! PC = 0x5555555581e3 *)
rol zmm5_0@uint32 zmm5_0 0xc; rol zmm5_1@uint32 zmm5_1 0xc;
rol zmm5_2@uint32 zmm5_2 0xc; rol zmm5_3@uint32 zmm5_3 0xc;
rol zmm5_4@uint32 zmm5_4 0xc; rol zmm5_5@uint32 zmm5_5 0xc;
rol zmm5_6@uint32 zmm5_6 0xc; rol zmm5_7@uint32 zmm5_7 0xc;
rol zmm5_8@uint32 zmm5_8 0xc; rol zmm5_9@uint32 zmm5_9 0xc;
rol zmm5_a@uint32 zmm5_a 0xc; rol zmm5_b@uint32 zmm5_b 0xc;
rol zmm5_c@uint32 zmm5_c 0xc; rol zmm5_d@uint32 zmm5_d 0xc;
rol zmm5_e@uint32 zmm5_e 0xc; rol zmm5_f@uint32 zmm5_f 0xc;
(* vprold $0xc,%zmm6,%zmm6                         #! PC = 0x5555555581ea *)
rol zmm6_0@uint32 zmm6_0 0xc; rol zmm6_1@uint32 zmm6_1 0xc;
rol zmm6_2@uint32 zmm6_2 0xc; rol zmm6_3@uint32 zmm6_3 0xc;
rol zmm6_4@uint32 zmm6_4 0xc; rol zmm6_5@uint32 zmm6_5 0xc;
rol zmm6_6@uint32 zmm6_6 0xc; rol zmm6_7@uint32 zmm6_7 0xc;
rol zmm6_8@uint32 zmm6_8 0xc; rol zmm6_9@uint32 zmm6_9 0xc;
rol zmm6_a@uint32 zmm6_a 0xc; rol zmm6_b@uint32 zmm6_b 0xc;
rol zmm6_c@uint32 zmm6_c 0xc; rol zmm6_d@uint32 zmm6_d 0xc;
rol zmm6_e@uint32 zmm6_e 0xc; rol zmm6_f@uint32 zmm6_f 0xc;
(* vprold $0xc,%zmm7,%zmm7                         #! PC = 0x5555555581f1 *)
rol zmm7_0@uint32 zmm7_0 0xc; rol zmm7_1@uint32 zmm7_1 0xc;
rol zmm7_2@uint32 zmm7_2 0xc; rol zmm7_3@uint32 zmm7_3 0xc;
rol zmm7_4@uint32 zmm7_4 0xc; rol zmm7_5@uint32 zmm7_5 0xc;
rol zmm7_6@uint32 zmm7_6 0xc; rol zmm7_7@uint32 zmm7_7 0xc;
rol zmm7_8@uint32 zmm7_8 0xc; rol zmm7_9@uint32 zmm7_9 0xc;
rol zmm7_a@uint32 zmm7_a 0xc; rol zmm7_b@uint32 zmm7_b 0xc;
rol zmm7_c@uint32 zmm7_c 0xc; rol zmm7_d@uint32 zmm7_d 0xc;
rol zmm7_e@uint32 zmm7_e 0xc; rol zmm7_f@uint32 zmm7_f 0xc;
(* vpaddd %zmm4,%zmm0,%zmm0                        #! PC = 0x5555555581f8 *)
adds dc zmm0_0 zmm0_0 zmm4_0; adds dc zmm0_1 zmm0_1 zmm4_1;
adds dc zmm0_2 zmm0_2 zmm4_2; adds dc zmm0_3 zmm0_3 zmm4_3;
adds dc zmm0_4 zmm0_4 zmm4_4; adds dc zmm0_5 zmm0_5 zmm4_5;
adds dc zmm0_6 zmm0_6 zmm4_6; adds dc zmm0_7 zmm0_7 zmm4_7;
adds dc zmm0_8 zmm0_8 zmm4_8; adds dc zmm0_9 zmm0_9 zmm4_9;
adds dc zmm0_a zmm0_a zmm4_a; adds dc zmm0_b zmm0_b zmm4_b;
adds dc zmm0_c zmm0_c zmm4_c; adds dc zmm0_d zmm0_d zmm4_d;
adds dc zmm0_e zmm0_e zmm4_e; adds dc zmm0_f zmm0_f zmm4_f;
(* vpaddd %zmm5,%zmm1,%zmm1                        #! PC = 0x5555555581fe *)
adds dc zmm1_0 zmm1_0 zmm5_0; adds dc zmm1_1 zmm1_1 zmm5_1;
adds dc zmm1_2 zmm1_2 zmm5_2; adds dc zmm1_3 zmm1_3 zmm5_3;
adds dc zmm1_4 zmm1_4 zmm5_4; adds dc zmm1_5 zmm1_5 zmm5_5;
adds dc zmm1_6 zmm1_6 zmm5_6; adds dc zmm1_7 zmm1_7 zmm5_7;
adds dc zmm1_8 zmm1_8 zmm5_8; adds dc zmm1_9 zmm1_9 zmm5_9;
adds dc zmm1_a zmm1_a zmm5_a; adds dc zmm1_b zmm1_b zmm5_b;
adds dc zmm1_c zmm1_c zmm5_c; adds dc zmm1_d zmm1_d zmm5_d;
adds dc zmm1_e zmm1_e zmm5_e; adds dc zmm1_f zmm1_f zmm5_f;
(* vpaddd %zmm6,%zmm2,%zmm2                        #! PC = 0x555555558204 *)
adds dc zmm2_0 zmm2_0 zmm6_0; adds dc zmm2_1 zmm2_1 zmm6_1;
adds dc zmm2_2 zmm2_2 zmm6_2; adds dc zmm2_3 zmm2_3 zmm6_3;
adds dc zmm2_4 zmm2_4 zmm6_4; adds dc zmm2_5 zmm2_5 zmm6_5;
adds dc zmm2_6 zmm2_6 zmm6_6; adds dc zmm2_7 zmm2_7 zmm6_7;
adds dc zmm2_8 zmm2_8 zmm6_8; adds dc zmm2_9 zmm2_9 zmm6_9;
adds dc zmm2_a zmm2_a zmm6_a; adds dc zmm2_b zmm2_b zmm6_b;
adds dc zmm2_c zmm2_c zmm6_c; adds dc zmm2_d zmm2_d zmm6_d;
adds dc zmm2_e zmm2_e zmm6_e; adds dc zmm2_f zmm2_f zmm6_f;
(* vpaddd %zmm7,%zmm3,%zmm3                        #! PC = 0x55555555820a *)
adds dc zmm3_0 zmm3_0 zmm7_0; adds dc zmm3_1 zmm3_1 zmm7_1;
adds dc zmm3_2 zmm3_2 zmm7_2; adds dc zmm3_3 zmm3_3 zmm7_3;
adds dc zmm3_4 zmm3_4 zmm7_4; adds dc zmm3_5 zmm3_5 zmm7_5;
adds dc zmm3_6 zmm3_6 zmm7_6; adds dc zmm3_7 zmm3_7 zmm7_7;
adds dc zmm3_8 zmm3_8 zmm7_8; adds dc zmm3_9 zmm3_9 zmm7_9;
adds dc zmm3_a zmm3_a zmm7_a; adds dc zmm3_b zmm3_b zmm7_b;
adds dc zmm3_c zmm3_c zmm7_c; adds dc zmm3_d zmm3_d zmm7_d;
adds dc zmm3_e zmm3_e zmm7_e; adds dc zmm3_f zmm3_f zmm7_f;
(* vpxord %zmm0,%zmm12,%zmm12                      #! PC = 0x555555558210 *)
xor zmm12_0@uint32 zmm12_0 zmm0_0; xor zmm12_1@uint32 zmm12_1 zmm0_1;
xor zmm12_2@uint32 zmm12_2 zmm0_2; xor zmm12_3@uint32 zmm12_3 zmm0_3;
xor zmm12_4@uint32 zmm12_4 zmm0_4; xor zmm12_5@uint32 zmm12_5 zmm0_5;
xor zmm12_6@uint32 zmm12_6 zmm0_6; xor zmm12_7@uint32 zmm12_7 zmm0_7;
xor zmm12_8@uint32 zmm12_8 zmm0_8; xor zmm12_9@uint32 zmm12_9 zmm0_9;
xor zmm12_a@uint32 zmm12_a zmm0_a; xor zmm12_b@uint32 zmm12_b zmm0_b;
xor zmm12_c@uint32 zmm12_c zmm0_c; xor zmm12_d@uint32 zmm12_d zmm0_d;
xor zmm12_e@uint32 zmm12_e zmm0_e; xor zmm12_f@uint32 zmm12_f zmm0_f;
(* vpxord %zmm1,%zmm13,%zmm13                      #! PC = 0x555555558216 *)
xor zmm13_0@uint32 zmm13_0 zmm1_0; xor zmm13_1@uint32 zmm13_1 zmm1_1;
xor zmm13_2@uint32 zmm13_2 zmm1_2; xor zmm13_3@uint32 zmm13_3 zmm1_3;
xor zmm13_4@uint32 zmm13_4 zmm1_4; xor zmm13_5@uint32 zmm13_5 zmm1_5;
xor zmm13_6@uint32 zmm13_6 zmm1_6; xor zmm13_7@uint32 zmm13_7 zmm1_7;
xor zmm13_8@uint32 zmm13_8 zmm1_8; xor zmm13_9@uint32 zmm13_9 zmm1_9;
xor zmm13_a@uint32 zmm13_a zmm1_a; xor zmm13_b@uint32 zmm13_b zmm1_b;
xor zmm13_c@uint32 zmm13_c zmm1_c; xor zmm13_d@uint32 zmm13_d zmm1_d;
xor zmm13_e@uint32 zmm13_e zmm1_e; xor zmm13_f@uint32 zmm13_f zmm1_f;
(* vpxord %zmm2,%zmm14,%zmm14                      #! PC = 0x55555555821c *)
xor zmm14_0@uint32 zmm14_0 zmm2_0; xor zmm14_1@uint32 zmm14_1 zmm2_1;
xor zmm14_2@uint32 zmm14_2 zmm2_2; xor zmm14_3@uint32 zmm14_3 zmm2_3;
xor zmm14_4@uint32 zmm14_4 zmm2_4; xor zmm14_5@uint32 zmm14_5 zmm2_5;
xor zmm14_6@uint32 zmm14_6 zmm2_6; xor zmm14_7@uint32 zmm14_7 zmm2_7;
xor zmm14_8@uint32 zmm14_8 zmm2_8; xor zmm14_9@uint32 zmm14_9 zmm2_9;
xor zmm14_a@uint32 zmm14_a zmm2_a; xor zmm14_b@uint32 zmm14_b zmm2_b;
xor zmm14_c@uint32 zmm14_c zmm2_c; xor zmm14_d@uint32 zmm14_d zmm2_d;
xor zmm14_e@uint32 zmm14_e zmm2_e; xor zmm14_f@uint32 zmm14_f zmm2_f;
(* vpxord %zmm3,%zmm15,%zmm15                      #! PC = 0x555555558222 *)
xor zmm15_0@uint32 zmm15_0 zmm3_0; xor zmm15_1@uint32 zmm15_1 zmm3_1;
xor zmm15_2@uint32 zmm15_2 zmm3_2; xor zmm15_3@uint32 zmm15_3 zmm3_3;
xor zmm15_4@uint32 zmm15_4 zmm3_4; xor zmm15_5@uint32 zmm15_5 zmm3_5;
xor zmm15_6@uint32 zmm15_6 zmm3_6; xor zmm15_7@uint32 zmm15_7 zmm3_7;
xor zmm15_8@uint32 zmm15_8 zmm3_8; xor zmm15_9@uint32 zmm15_9 zmm3_9;
xor zmm15_a@uint32 zmm15_a zmm3_a; xor zmm15_b@uint32 zmm15_b zmm3_b;
xor zmm15_c@uint32 zmm15_c zmm3_c; xor zmm15_d@uint32 zmm15_d zmm3_d;
xor zmm15_e@uint32 zmm15_e zmm3_e; xor zmm15_f@uint32 zmm15_f zmm3_f;
(* vprold $0x8,%zmm12,%zmm12                       #! PC = 0x555555558228 *)
rol zmm12_0@uint32 zmm12_0 0x8; rol zmm12_1@uint32 zmm12_1 0x8;
rol zmm12_2@uint32 zmm12_2 0x8; rol zmm12_3@uint32 zmm12_3 0x8;
rol zmm12_4@uint32 zmm12_4 0x8; rol zmm12_5@uint32 zmm12_5 0x8;
rol zmm12_6@uint32 zmm12_6 0x8; rol zmm12_7@uint32 zmm12_7 0x8;
rol zmm12_8@uint32 zmm12_8 0x8; rol zmm12_9@uint32 zmm12_9 0x8;
rol zmm12_a@uint32 zmm12_a 0x8; rol zmm12_b@uint32 zmm12_b 0x8;
rol zmm12_c@uint32 zmm12_c 0x8; rol zmm12_d@uint32 zmm12_d 0x8;
rol zmm12_e@uint32 zmm12_e 0x8; rol zmm12_f@uint32 zmm12_f 0x8;
(* vprold $0x8,%zmm13,%zmm13                       #! PC = 0x55555555822f *)
rol zmm13_0@uint32 zmm13_0 0x8; rol zmm13_1@uint32 zmm13_1 0x8;
rol zmm13_2@uint32 zmm13_2 0x8; rol zmm13_3@uint32 zmm13_3 0x8;
rol zmm13_4@uint32 zmm13_4 0x8; rol zmm13_5@uint32 zmm13_5 0x8;
rol zmm13_6@uint32 zmm13_6 0x8; rol zmm13_7@uint32 zmm13_7 0x8;
rol zmm13_8@uint32 zmm13_8 0x8; rol zmm13_9@uint32 zmm13_9 0x8;
rol zmm13_a@uint32 zmm13_a 0x8; rol zmm13_b@uint32 zmm13_b 0x8;
rol zmm13_c@uint32 zmm13_c 0x8; rol zmm13_d@uint32 zmm13_d 0x8;
rol zmm13_e@uint32 zmm13_e 0x8; rol zmm13_f@uint32 zmm13_f 0x8;
(* vprold $0x8,%zmm14,%zmm14                       #! PC = 0x555555558236 *)
rol zmm14_0@uint32 zmm14_0 0x8; rol zmm14_1@uint32 zmm14_1 0x8;
rol zmm14_2@uint32 zmm14_2 0x8; rol zmm14_3@uint32 zmm14_3 0x8;
rol zmm14_4@uint32 zmm14_4 0x8; rol zmm14_5@uint32 zmm14_5 0x8;
rol zmm14_6@uint32 zmm14_6 0x8; rol zmm14_7@uint32 zmm14_7 0x8;
rol zmm14_8@uint32 zmm14_8 0x8; rol zmm14_9@uint32 zmm14_9 0x8;
rol zmm14_a@uint32 zmm14_a 0x8; rol zmm14_b@uint32 zmm14_b 0x8;
rol zmm14_c@uint32 zmm14_c 0x8; rol zmm14_d@uint32 zmm14_d 0x8;
rol zmm14_e@uint32 zmm14_e 0x8; rol zmm14_f@uint32 zmm14_f 0x8;
(* vprold $0x8,%zmm15,%zmm15                       #! PC = 0x55555555823d *)
rol zmm15_0@uint32 zmm15_0 0x8; rol zmm15_1@uint32 zmm15_1 0x8;
rol zmm15_2@uint32 zmm15_2 0x8; rol zmm15_3@uint32 zmm15_3 0x8;
rol zmm15_4@uint32 zmm15_4 0x8; rol zmm15_5@uint32 zmm15_5 0x8;
rol zmm15_6@uint32 zmm15_6 0x8; rol zmm15_7@uint32 zmm15_7 0x8;
rol zmm15_8@uint32 zmm15_8 0x8; rol zmm15_9@uint32 zmm15_9 0x8;
rol zmm15_a@uint32 zmm15_a 0x8; rol zmm15_b@uint32 zmm15_b 0x8;
rol zmm15_c@uint32 zmm15_c 0x8; rol zmm15_d@uint32 zmm15_d 0x8;
rol zmm15_e@uint32 zmm15_e 0x8; rol zmm15_f@uint32 zmm15_f 0x8;
(* vpaddd %zmm12,%zmm8,%zmm8                       #! PC = 0x555555558244 *)
adds dc zmm8_0 zmm8_0 zmm12_0; adds dc zmm8_1 zmm8_1 zmm12_1;
adds dc zmm8_2 zmm8_2 zmm12_2; adds dc zmm8_3 zmm8_3 zmm12_3;
adds dc zmm8_4 zmm8_4 zmm12_4; adds dc zmm8_5 zmm8_5 zmm12_5;
adds dc zmm8_6 zmm8_6 zmm12_6; adds dc zmm8_7 zmm8_7 zmm12_7;
adds dc zmm8_8 zmm8_8 zmm12_8; adds dc zmm8_9 zmm8_9 zmm12_9;
adds dc zmm8_a zmm8_a zmm12_a; adds dc zmm8_b zmm8_b zmm12_b;
adds dc zmm8_c zmm8_c zmm12_c; adds dc zmm8_d zmm8_d zmm12_d;
adds dc zmm8_e zmm8_e zmm12_e; adds dc zmm8_f zmm8_f zmm12_f;
(* vpaddd %zmm13,%zmm9,%zmm9                       #! PC = 0x55555555824a *)
adds dc zmm9_0 zmm9_0 zmm13_0; adds dc zmm9_1 zmm9_1 zmm13_1;
adds dc zmm9_2 zmm9_2 zmm13_2; adds dc zmm9_3 zmm9_3 zmm13_3;
adds dc zmm9_4 zmm9_4 zmm13_4; adds dc zmm9_5 zmm9_5 zmm13_5;
adds dc zmm9_6 zmm9_6 zmm13_6; adds dc zmm9_7 zmm9_7 zmm13_7;
adds dc zmm9_8 zmm9_8 zmm13_8; adds dc zmm9_9 zmm9_9 zmm13_9;
adds dc zmm9_a zmm9_a zmm13_a; adds dc zmm9_b zmm9_b zmm13_b;
adds dc zmm9_c zmm9_c zmm13_c; adds dc zmm9_d zmm9_d zmm13_d;
adds dc zmm9_e zmm9_e zmm13_e; adds dc zmm9_f zmm9_f zmm13_f;
(* vpaddd %zmm14,%zmm10,%zmm10                     #! PC = 0x555555558250 *)
adds dc zmm10_0 zmm10_0 zmm14_0; adds dc zmm10_1 zmm10_1 zmm14_1;
adds dc zmm10_2 zmm10_2 zmm14_2; adds dc zmm10_3 zmm10_3 zmm14_3;
adds dc zmm10_4 zmm10_4 zmm14_4; adds dc zmm10_5 zmm10_5 zmm14_5;
adds dc zmm10_6 zmm10_6 zmm14_6; adds dc zmm10_7 zmm10_7 zmm14_7;
adds dc zmm10_8 zmm10_8 zmm14_8; adds dc zmm10_9 zmm10_9 zmm14_9;
adds dc zmm10_a zmm10_a zmm14_a; adds dc zmm10_b zmm10_b zmm14_b;
adds dc zmm10_c zmm10_c zmm14_c; adds dc zmm10_d zmm10_d zmm14_d;
adds dc zmm10_e zmm10_e zmm14_e; adds dc zmm10_f zmm10_f zmm14_f;
(* vpaddd %zmm15,%zmm11,%zmm11                     #! PC = 0x555555558256 *)
adds dc zmm11_0 zmm11_0 zmm15_0; adds dc zmm11_1 zmm11_1 zmm15_1;
adds dc zmm11_2 zmm11_2 zmm15_2; adds dc zmm11_3 zmm11_3 zmm15_3;
adds dc zmm11_4 zmm11_4 zmm15_4; adds dc zmm11_5 zmm11_5 zmm15_5;
adds dc zmm11_6 zmm11_6 zmm15_6; adds dc zmm11_7 zmm11_7 zmm15_7;
adds dc zmm11_8 zmm11_8 zmm15_8; adds dc zmm11_9 zmm11_9 zmm15_9;
adds dc zmm11_a zmm11_a zmm15_a; adds dc zmm11_b zmm11_b zmm15_b;
adds dc zmm11_c zmm11_c zmm15_c; adds dc zmm11_d zmm11_d zmm15_d;
adds dc zmm11_e zmm11_e zmm15_e; adds dc zmm11_f zmm11_f zmm15_f;
(* vpxord %zmm8,%zmm4,%zmm4                        #! PC = 0x55555555825c *)
xor zmm4_0@uint32 zmm4_0 zmm8_0; xor zmm4_1@uint32 zmm4_1 zmm8_1;
xor zmm4_2@uint32 zmm4_2 zmm8_2; xor zmm4_3@uint32 zmm4_3 zmm8_3;
xor zmm4_4@uint32 zmm4_4 zmm8_4; xor zmm4_5@uint32 zmm4_5 zmm8_5;
xor zmm4_6@uint32 zmm4_6 zmm8_6; xor zmm4_7@uint32 zmm4_7 zmm8_7;
xor zmm4_8@uint32 zmm4_8 zmm8_8; xor zmm4_9@uint32 zmm4_9 zmm8_9;
xor zmm4_a@uint32 zmm4_a zmm8_a; xor zmm4_b@uint32 zmm4_b zmm8_b;
xor zmm4_c@uint32 zmm4_c zmm8_c; xor zmm4_d@uint32 zmm4_d zmm8_d;
xor zmm4_e@uint32 zmm4_e zmm8_e; xor zmm4_f@uint32 zmm4_f zmm8_f;
(* vpxord %zmm9,%zmm5,%zmm5                        #! PC = 0x555555558262 *)
xor zmm5_0@uint32 zmm5_0 zmm9_0; xor zmm5_1@uint32 zmm5_1 zmm9_1;
xor zmm5_2@uint32 zmm5_2 zmm9_2; xor zmm5_3@uint32 zmm5_3 zmm9_3;
xor zmm5_4@uint32 zmm5_4 zmm9_4; xor zmm5_5@uint32 zmm5_5 zmm9_5;
xor zmm5_6@uint32 zmm5_6 zmm9_6; xor zmm5_7@uint32 zmm5_7 zmm9_7;
xor zmm5_8@uint32 zmm5_8 zmm9_8; xor zmm5_9@uint32 zmm5_9 zmm9_9;
xor zmm5_a@uint32 zmm5_a zmm9_a; xor zmm5_b@uint32 zmm5_b zmm9_b;
xor zmm5_c@uint32 zmm5_c zmm9_c; xor zmm5_d@uint32 zmm5_d zmm9_d;
xor zmm5_e@uint32 zmm5_e zmm9_e; xor zmm5_f@uint32 zmm5_f zmm9_f;
(* vpxord %zmm10,%zmm6,%zmm6                       #! PC = 0x555555558268 *)
xor zmm6_0@uint32 zmm6_0 zmm10_0; xor zmm6_1@uint32 zmm6_1 zmm10_1;
xor zmm6_2@uint32 zmm6_2 zmm10_2; xor zmm6_3@uint32 zmm6_3 zmm10_3;
xor zmm6_4@uint32 zmm6_4 zmm10_4; xor zmm6_5@uint32 zmm6_5 zmm10_5;
xor zmm6_6@uint32 zmm6_6 zmm10_6; xor zmm6_7@uint32 zmm6_7 zmm10_7;
xor zmm6_8@uint32 zmm6_8 zmm10_8; xor zmm6_9@uint32 zmm6_9 zmm10_9;
xor zmm6_a@uint32 zmm6_a zmm10_a; xor zmm6_b@uint32 zmm6_b zmm10_b;
xor zmm6_c@uint32 zmm6_c zmm10_c; xor zmm6_d@uint32 zmm6_d zmm10_d;
xor zmm6_e@uint32 zmm6_e zmm10_e; xor zmm6_f@uint32 zmm6_f zmm10_f;
(* vpxord %zmm11,%zmm7,%zmm7                       #! PC = 0x55555555826e *)
xor zmm7_0@uint32 zmm7_0 zmm11_0; xor zmm7_1@uint32 zmm7_1 zmm11_1;
xor zmm7_2@uint32 zmm7_2 zmm11_2; xor zmm7_3@uint32 zmm7_3 zmm11_3;
xor zmm7_4@uint32 zmm7_4 zmm11_4; xor zmm7_5@uint32 zmm7_5 zmm11_5;
xor zmm7_6@uint32 zmm7_6 zmm11_6; xor zmm7_7@uint32 zmm7_7 zmm11_7;
xor zmm7_8@uint32 zmm7_8 zmm11_8; xor zmm7_9@uint32 zmm7_9 zmm11_9;
xor zmm7_a@uint32 zmm7_a zmm11_a; xor zmm7_b@uint32 zmm7_b zmm11_b;
xor zmm7_c@uint32 zmm7_c zmm11_c; xor zmm7_d@uint32 zmm7_d zmm11_d;
xor zmm7_e@uint32 zmm7_e zmm11_e; xor zmm7_f@uint32 zmm7_f zmm11_f;
(* vprold $0x7,%zmm4,%zmm4                         #! PC = 0x555555558274 *)
rol zmm4_0@uint32 zmm4_0 0x7; rol zmm4_1@uint32 zmm4_1 0x7;
rol zmm4_2@uint32 zmm4_2 0x7; rol zmm4_3@uint32 zmm4_3 0x7;
rol zmm4_4@uint32 zmm4_4 0x7; rol zmm4_5@uint32 zmm4_5 0x7;
rol zmm4_6@uint32 zmm4_6 0x7; rol zmm4_7@uint32 zmm4_7 0x7;
rol zmm4_8@uint32 zmm4_8 0x7; rol zmm4_9@uint32 zmm4_9 0x7;
rol zmm4_a@uint32 zmm4_a 0x7; rol zmm4_b@uint32 zmm4_b 0x7;
rol zmm4_c@uint32 zmm4_c 0x7; rol zmm4_d@uint32 zmm4_d 0x7;
rol zmm4_e@uint32 zmm4_e 0x7; rol zmm4_f@uint32 zmm4_f 0x7;
(* vprold $0x7,%zmm5,%zmm5                         #! PC = 0x55555555827b *)
rol zmm5_0@uint32 zmm5_0 0x7; rol zmm5_1@uint32 zmm5_1 0x7;
rol zmm5_2@uint32 zmm5_2 0x7; rol zmm5_3@uint32 zmm5_3 0x7;
rol zmm5_4@uint32 zmm5_4 0x7; rol zmm5_5@uint32 zmm5_5 0x7;
rol zmm5_6@uint32 zmm5_6 0x7; rol zmm5_7@uint32 zmm5_7 0x7;
rol zmm5_8@uint32 zmm5_8 0x7; rol zmm5_9@uint32 zmm5_9 0x7;
rol zmm5_a@uint32 zmm5_a 0x7; rol zmm5_b@uint32 zmm5_b 0x7;
rol zmm5_c@uint32 zmm5_c 0x7; rol zmm5_d@uint32 zmm5_d 0x7;
rol zmm5_e@uint32 zmm5_e 0x7; rol zmm5_f@uint32 zmm5_f 0x7;
(* vprold $0x7,%zmm6,%zmm6                         #! PC = 0x555555558282 *)
rol zmm6_0@uint32 zmm6_0 0x7; rol zmm6_1@uint32 zmm6_1 0x7;
rol zmm6_2@uint32 zmm6_2 0x7; rol zmm6_3@uint32 zmm6_3 0x7;
rol zmm6_4@uint32 zmm6_4 0x7; rol zmm6_5@uint32 zmm6_5 0x7;
rol zmm6_6@uint32 zmm6_6 0x7; rol zmm6_7@uint32 zmm6_7 0x7;
rol zmm6_8@uint32 zmm6_8 0x7; rol zmm6_9@uint32 zmm6_9 0x7;
rol zmm6_a@uint32 zmm6_a 0x7; rol zmm6_b@uint32 zmm6_b 0x7;
rol zmm6_c@uint32 zmm6_c 0x7; rol zmm6_d@uint32 zmm6_d 0x7;
rol zmm6_e@uint32 zmm6_e 0x7; rol zmm6_f@uint32 zmm6_f 0x7;
(* vprold $0x7,%zmm7,%zmm7                         #! PC = 0x555555558289 *)
rol zmm7_0@uint32 zmm7_0 0x7; rol zmm7_1@uint32 zmm7_1 0x7;
rol zmm7_2@uint32 zmm7_2 0x7; rol zmm7_3@uint32 zmm7_3 0x7;
rol zmm7_4@uint32 zmm7_4 0x7; rol zmm7_5@uint32 zmm7_5 0x7;
rol zmm7_6@uint32 zmm7_6 0x7; rol zmm7_7@uint32 zmm7_7 0x7;
rol zmm7_8@uint32 zmm7_8 0x7; rol zmm7_9@uint32 zmm7_9 0x7;
rol zmm7_a@uint32 zmm7_a 0x7; rol zmm7_b@uint32 zmm7_b 0x7;
rol zmm7_c@uint32 zmm7_c 0x7; rol zmm7_d@uint32 zmm7_d 0x7;
rol zmm7_e@uint32 zmm7_e 0x7; rol zmm7_f@uint32 zmm7_f 0x7;
(* vpaddd %zmm5,%zmm0,%zmm0                        #! PC = 0x555555558290 *)
adds dc zmm0_0 zmm0_0 zmm5_0; adds dc zmm0_1 zmm0_1 zmm5_1;
adds dc zmm0_2 zmm0_2 zmm5_2; adds dc zmm0_3 zmm0_3 zmm5_3;
adds dc zmm0_4 zmm0_4 zmm5_4; adds dc zmm0_5 zmm0_5 zmm5_5;
adds dc zmm0_6 zmm0_6 zmm5_6; adds dc zmm0_7 zmm0_7 zmm5_7;
adds dc zmm0_8 zmm0_8 zmm5_8; adds dc zmm0_9 zmm0_9 zmm5_9;
adds dc zmm0_a zmm0_a zmm5_a; adds dc zmm0_b zmm0_b zmm5_b;
adds dc zmm0_c zmm0_c zmm5_c; adds dc zmm0_d zmm0_d zmm5_d;
adds dc zmm0_e zmm0_e zmm5_e; adds dc zmm0_f zmm0_f zmm5_f;
(* vpaddd %zmm6,%zmm1,%zmm1                        #! PC = 0x555555558296 *)
adds dc zmm1_0 zmm1_0 zmm6_0; adds dc zmm1_1 zmm1_1 zmm6_1;
adds dc zmm1_2 zmm1_2 zmm6_2; adds dc zmm1_3 zmm1_3 zmm6_3;
adds dc zmm1_4 zmm1_4 zmm6_4; adds dc zmm1_5 zmm1_5 zmm6_5;
adds dc zmm1_6 zmm1_6 zmm6_6; adds dc zmm1_7 zmm1_7 zmm6_7;
adds dc zmm1_8 zmm1_8 zmm6_8; adds dc zmm1_9 zmm1_9 zmm6_9;
adds dc zmm1_a zmm1_a zmm6_a; adds dc zmm1_b zmm1_b zmm6_b;
adds dc zmm1_c zmm1_c zmm6_c; adds dc zmm1_d zmm1_d zmm6_d;
adds dc zmm1_e zmm1_e zmm6_e; adds dc zmm1_f zmm1_f zmm6_f;
(* vpaddd %zmm7,%zmm2,%zmm2                        #! PC = 0x55555555829c *)
adds dc zmm2_0 zmm2_0 zmm7_0; adds dc zmm2_1 zmm2_1 zmm7_1;
adds dc zmm2_2 zmm2_2 zmm7_2; adds dc zmm2_3 zmm2_3 zmm7_3;
adds dc zmm2_4 zmm2_4 zmm7_4; adds dc zmm2_5 zmm2_5 zmm7_5;
adds dc zmm2_6 zmm2_6 zmm7_6; adds dc zmm2_7 zmm2_7 zmm7_7;
adds dc zmm2_8 zmm2_8 zmm7_8; adds dc zmm2_9 zmm2_9 zmm7_9;
adds dc zmm2_a zmm2_a zmm7_a; adds dc zmm2_b zmm2_b zmm7_b;
adds dc zmm2_c zmm2_c zmm7_c; adds dc zmm2_d zmm2_d zmm7_d;
adds dc zmm2_e zmm2_e zmm7_e; adds dc zmm2_f zmm2_f zmm7_f;
(* vpaddd %zmm4,%zmm3,%zmm3                        #! PC = 0x5555555582a2 *)
adds dc zmm3_0 zmm3_0 zmm4_0; adds dc zmm3_1 zmm3_1 zmm4_1;
adds dc zmm3_2 zmm3_2 zmm4_2; adds dc zmm3_3 zmm3_3 zmm4_3;
adds dc zmm3_4 zmm3_4 zmm4_4; adds dc zmm3_5 zmm3_5 zmm4_5;
adds dc zmm3_6 zmm3_6 zmm4_6; adds dc zmm3_7 zmm3_7 zmm4_7;
adds dc zmm3_8 zmm3_8 zmm4_8; adds dc zmm3_9 zmm3_9 zmm4_9;
adds dc zmm3_a zmm3_a zmm4_a; adds dc zmm3_b zmm3_b zmm4_b;
adds dc zmm3_c zmm3_c zmm4_c; adds dc zmm3_d zmm3_d zmm4_d;
adds dc zmm3_e zmm3_e zmm4_e; adds dc zmm3_f zmm3_f zmm4_f;
(* vpxord %zmm0,%zmm15,%zmm15                      #! PC = 0x5555555582a8 *)
xor zmm15_0@uint32 zmm15_0 zmm0_0; xor zmm15_1@uint32 zmm15_1 zmm0_1;
xor zmm15_2@uint32 zmm15_2 zmm0_2; xor zmm15_3@uint32 zmm15_3 zmm0_3;
xor zmm15_4@uint32 zmm15_4 zmm0_4; xor zmm15_5@uint32 zmm15_5 zmm0_5;
xor zmm15_6@uint32 zmm15_6 zmm0_6; xor zmm15_7@uint32 zmm15_7 zmm0_7;
xor zmm15_8@uint32 zmm15_8 zmm0_8; xor zmm15_9@uint32 zmm15_9 zmm0_9;
xor zmm15_a@uint32 zmm15_a zmm0_a; xor zmm15_b@uint32 zmm15_b zmm0_b;
xor zmm15_c@uint32 zmm15_c zmm0_c; xor zmm15_d@uint32 zmm15_d zmm0_d;
xor zmm15_e@uint32 zmm15_e zmm0_e; xor zmm15_f@uint32 zmm15_f zmm0_f;
(* vpxord %zmm1,%zmm12,%zmm12                      #! PC = 0x5555555582ae *)
xor zmm12_0@uint32 zmm12_0 zmm1_0; xor zmm12_1@uint32 zmm12_1 zmm1_1;
xor zmm12_2@uint32 zmm12_2 zmm1_2; xor zmm12_3@uint32 zmm12_3 zmm1_3;
xor zmm12_4@uint32 zmm12_4 zmm1_4; xor zmm12_5@uint32 zmm12_5 zmm1_5;
xor zmm12_6@uint32 zmm12_6 zmm1_6; xor zmm12_7@uint32 zmm12_7 zmm1_7;
xor zmm12_8@uint32 zmm12_8 zmm1_8; xor zmm12_9@uint32 zmm12_9 zmm1_9;
xor zmm12_a@uint32 zmm12_a zmm1_a; xor zmm12_b@uint32 zmm12_b zmm1_b;
xor zmm12_c@uint32 zmm12_c zmm1_c; xor zmm12_d@uint32 zmm12_d zmm1_d;
xor zmm12_e@uint32 zmm12_e zmm1_e; xor zmm12_f@uint32 zmm12_f zmm1_f;
(* vpxord %zmm2,%zmm13,%zmm13                      #! PC = 0x5555555582b4 *)
xor zmm13_0@uint32 zmm13_0 zmm2_0; xor zmm13_1@uint32 zmm13_1 zmm2_1;
xor zmm13_2@uint32 zmm13_2 zmm2_2; xor zmm13_3@uint32 zmm13_3 zmm2_3;
xor zmm13_4@uint32 zmm13_4 zmm2_4; xor zmm13_5@uint32 zmm13_5 zmm2_5;
xor zmm13_6@uint32 zmm13_6 zmm2_6; xor zmm13_7@uint32 zmm13_7 zmm2_7;
xor zmm13_8@uint32 zmm13_8 zmm2_8; xor zmm13_9@uint32 zmm13_9 zmm2_9;
xor zmm13_a@uint32 zmm13_a zmm2_a; xor zmm13_b@uint32 zmm13_b zmm2_b;
xor zmm13_c@uint32 zmm13_c zmm2_c; xor zmm13_d@uint32 zmm13_d zmm2_d;
xor zmm13_e@uint32 zmm13_e zmm2_e; xor zmm13_f@uint32 zmm13_f zmm2_f;
(* vpxord %zmm3,%zmm14,%zmm14                      #! PC = 0x5555555582ba *)
xor zmm14_0@uint32 zmm14_0 zmm3_0; xor zmm14_1@uint32 zmm14_1 zmm3_1;
xor zmm14_2@uint32 zmm14_2 zmm3_2; xor zmm14_3@uint32 zmm14_3 zmm3_3;
xor zmm14_4@uint32 zmm14_4 zmm3_4; xor zmm14_5@uint32 zmm14_5 zmm3_5;
xor zmm14_6@uint32 zmm14_6 zmm3_6; xor zmm14_7@uint32 zmm14_7 zmm3_7;
xor zmm14_8@uint32 zmm14_8 zmm3_8; xor zmm14_9@uint32 zmm14_9 zmm3_9;
xor zmm14_a@uint32 zmm14_a zmm3_a; xor zmm14_b@uint32 zmm14_b zmm3_b;
xor zmm14_c@uint32 zmm14_c zmm3_c; xor zmm14_d@uint32 zmm14_d zmm3_d;
xor zmm14_e@uint32 zmm14_e zmm3_e; xor zmm14_f@uint32 zmm14_f zmm3_f;
(* vprold $0x10,%zmm15,%zmm15                      #! PC = 0x5555555582c0 *)
rol zmm15_0@uint32 zmm15_0 0x10; rol zmm15_1@uint32 zmm15_1 0x10;
rol zmm15_2@uint32 zmm15_2 0x10; rol zmm15_3@uint32 zmm15_3 0x10;
rol zmm15_4@uint32 zmm15_4 0x10; rol zmm15_5@uint32 zmm15_5 0x10;
rol zmm15_6@uint32 zmm15_6 0x10; rol zmm15_7@uint32 zmm15_7 0x10;
rol zmm15_8@uint32 zmm15_8 0x10; rol zmm15_9@uint32 zmm15_9 0x10;
rol zmm15_a@uint32 zmm15_a 0x10; rol zmm15_b@uint32 zmm15_b 0x10;
rol zmm15_c@uint32 zmm15_c 0x10; rol zmm15_d@uint32 zmm15_d 0x10;
rol zmm15_e@uint32 zmm15_e 0x10; rol zmm15_f@uint32 zmm15_f 0x10;
(* vprold $0x10,%zmm12,%zmm12                      #! PC = 0x5555555582c7 *)
rol zmm12_0@uint32 zmm12_0 0x10; rol zmm12_1@uint32 zmm12_1 0x10;
rol zmm12_2@uint32 zmm12_2 0x10; rol zmm12_3@uint32 zmm12_3 0x10;
rol zmm12_4@uint32 zmm12_4 0x10; rol zmm12_5@uint32 zmm12_5 0x10;
rol zmm12_6@uint32 zmm12_6 0x10; rol zmm12_7@uint32 zmm12_7 0x10;
rol zmm12_8@uint32 zmm12_8 0x10; rol zmm12_9@uint32 zmm12_9 0x10;
rol zmm12_a@uint32 zmm12_a 0x10; rol zmm12_b@uint32 zmm12_b 0x10;
rol zmm12_c@uint32 zmm12_c 0x10; rol zmm12_d@uint32 zmm12_d 0x10;
rol zmm12_e@uint32 zmm12_e 0x10; rol zmm12_f@uint32 zmm12_f 0x10;
(* vprold $0x10,%zmm13,%zmm13                      #! PC = 0x5555555582ce *)
rol zmm13_0@uint32 zmm13_0 0x10; rol zmm13_1@uint32 zmm13_1 0x10;
rol zmm13_2@uint32 zmm13_2 0x10; rol zmm13_3@uint32 zmm13_3 0x10;
rol zmm13_4@uint32 zmm13_4 0x10; rol zmm13_5@uint32 zmm13_5 0x10;
rol zmm13_6@uint32 zmm13_6 0x10; rol zmm13_7@uint32 zmm13_7 0x10;
rol zmm13_8@uint32 zmm13_8 0x10; rol zmm13_9@uint32 zmm13_9 0x10;
rol zmm13_a@uint32 zmm13_a 0x10; rol zmm13_b@uint32 zmm13_b 0x10;
rol zmm13_c@uint32 zmm13_c 0x10; rol zmm13_d@uint32 zmm13_d 0x10;
rol zmm13_e@uint32 zmm13_e 0x10; rol zmm13_f@uint32 zmm13_f 0x10;
(* vprold $0x10,%zmm14,%zmm14                      #! PC = 0x5555555582d5 *)
rol zmm14_0@uint32 zmm14_0 0x10; rol zmm14_1@uint32 zmm14_1 0x10;
rol zmm14_2@uint32 zmm14_2 0x10; rol zmm14_3@uint32 zmm14_3 0x10;
rol zmm14_4@uint32 zmm14_4 0x10; rol zmm14_5@uint32 zmm14_5 0x10;
rol zmm14_6@uint32 zmm14_6 0x10; rol zmm14_7@uint32 zmm14_7 0x10;
rol zmm14_8@uint32 zmm14_8 0x10; rol zmm14_9@uint32 zmm14_9 0x10;
rol zmm14_a@uint32 zmm14_a 0x10; rol zmm14_b@uint32 zmm14_b 0x10;
rol zmm14_c@uint32 zmm14_c 0x10; rol zmm14_d@uint32 zmm14_d 0x10;
rol zmm14_e@uint32 zmm14_e 0x10; rol zmm14_f@uint32 zmm14_f 0x10;
(* vpaddd %zmm15,%zmm10,%zmm10                     #! PC = 0x5555555582dc *)
adds dc zmm10_0 zmm10_0 zmm15_0; adds dc zmm10_1 zmm10_1 zmm15_1;
adds dc zmm10_2 zmm10_2 zmm15_2; adds dc zmm10_3 zmm10_3 zmm15_3;
adds dc zmm10_4 zmm10_4 zmm15_4; adds dc zmm10_5 zmm10_5 zmm15_5;
adds dc zmm10_6 zmm10_6 zmm15_6; adds dc zmm10_7 zmm10_7 zmm15_7;
adds dc zmm10_8 zmm10_8 zmm15_8; adds dc zmm10_9 zmm10_9 zmm15_9;
adds dc zmm10_a zmm10_a zmm15_a; adds dc zmm10_b zmm10_b zmm15_b;
adds dc zmm10_c zmm10_c zmm15_c; adds dc zmm10_d zmm10_d zmm15_d;
adds dc zmm10_e zmm10_e zmm15_e; adds dc zmm10_f zmm10_f zmm15_f;
(* vpaddd %zmm12,%zmm11,%zmm11                     #! PC = 0x5555555582e2 *)
adds dc zmm11_0 zmm11_0 zmm12_0; adds dc zmm11_1 zmm11_1 zmm12_1;
adds dc zmm11_2 zmm11_2 zmm12_2; adds dc zmm11_3 zmm11_3 zmm12_3;
adds dc zmm11_4 zmm11_4 zmm12_4; adds dc zmm11_5 zmm11_5 zmm12_5;
adds dc zmm11_6 zmm11_6 zmm12_6; adds dc zmm11_7 zmm11_7 zmm12_7;
adds dc zmm11_8 zmm11_8 zmm12_8; adds dc zmm11_9 zmm11_9 zmm12_9;
adds dc zmm11_a zmm11_a zmm12_a; adds dc zmm11_b zmm11_b zmm12_b;
adds dc zmm11_c zmm11_c zmm12_c; adds dc zmm11_d zmm11_d zmm12_d;
adds dc zmm11_e zmm11_e zmm12_e; adds dc zmm11_f zmm11_f zmm12_f;
(* vpaddd %zmm13,%zmm8,%zmm8                       #! PC = 0x5555555582e8 *)
adds dc zmm8_0 zmm8_0 zmm13_0; adds dc zmm8_1 zmm8_1 zmm13_1;
adds dc zmm8_2 zmm8_2 zmm13_2; adds dc zmm8_3 zmm8_3 zmm13_3;
adds dc zmm8_4 zmm8_4 zmm13_4; adds dc zmm8_5 zmm8_5 zmm13_5;
adds dc zmm8_6 zmm8_6 zmm13_6; adds dc zmm8_7 zmm8_7 zmm13_7;
adds dc zmm8_8 zmm8_8 zmm13_8; adds dc zmm8_9 zmm8_9 zmm13_9;
adds dc zmm8_a zmm8_a zmm13_a; adds dc zmm8_b zmm8_b zmm13_b;
adds dc zmm8_c zmm8_c zmm13_c; adds dc zmm8_d zmm8_d zmm13_d;
adds dc zmm8_e zmm8_e zmm13_e; adds dc zmm8_f zmm8_f zmm13_f;
(* vpaddd %zmm14,%zmm9,%zmm9                       #! PC = 0x5555555582ee *)
adds dc zmm9_0 zmm9_0 zmm14_0; adds dc zmm9_1 zmm9_1 zmm14_1;
adds dc zmm9_2 zmm9_2 zmm14_2; adds dc zmm9_3 zmm9_3 zmm14_3;
adds dc zmm9_4 zmm9_4 zmm14_4; adds dc zmm9_5 zmm9_5 zmm14_5;
adds dc zmm9_6 zmm9_6 zmm14_6; adds dc zmm9_7 zmm9_7 zmm14_7;
adds dc zmm9_8 zmm9_8 zmm14_8; adds dc zmm9_9 zmm9_9 zmm14_9;
adds dc zmm9_a zmm9_a zmm14_a; adds dc zmm9_b zmm9_b zmm14_b;
adds dc zmm9_c zmm9_c zmm14_c; adds dc zmm9_d zmm9_d zmm14_d;
adds dc zmm9_e zmm9_e zmm14_e; adds dc zmm9_f zmm9_f zmm14_f;
(* vpxord %zmm10,%zmm5,%zmm5                       #! PC = 0x5555555582f4 *)
xor zmm5_0@uint32 zmm5_0 zmm10_0; xor zmm5_1@uint32 zmm5_1 zmm10_1;
xor zmm5_2@uint32 zmm5_2 zmm10_2; xor zmm5_3@uint32 zmm5_3 zmm10_3;
xor zmm5_4@uint32 zmm5_4 zmm10_4; xor zmm5_5@uint32 zmm5_5 zmm10_5;
xor zmm5_6@uint32 zmm5_6 zmm10_6; xor zmm5_7@uint32 zmm5_7 zmm10_7;
xor zmm5_8@uint32 zmm5_8 zmm10_8; xor zmm5_9@uint32 zmm5_9 zmm10_9;
xor zmm5_a@uint32 zmm5_a zmm10_a; xor zmm5_b@uint32 zmm5_b zmm10_b;
xor zmm5_c@uint32 zmm5_c zmm10_c; xor zmm5_d@uint32 zmm5_d zmm10_d;
xor zmm5_e@uint32 zmm5_e zmm10_e; xor zmm5_f@uint32 zmm5_f zmm10_f;
(* vpxord %zmm11,%zmm6,%zmm6                       #! PC = 0x5555555582fa *)
xor zmm6_0@uint32 zmm6_0 zmm11_0; xor zmm6_1@uint32 zmm6_1 zmm11_1;
xor zmm6_2@uint32 zmm6_2 zmm11_2; xor zmm6_3@uint32 zmm6_3 zmm11_3;
xor zmm6_4@uint32 zmm6_4 zmm11_4; xor zmm6_5@uint32 zmm6_5 zmm11_5;
xor zmm6_6@uint32 zmm6_6 zmm11_6; xor zmm6_7@uint32 zmm6_7 zmm11_7;
xor zmm6_8@uint32 zmm6_8 zmm11_8; xor zmm6_9@uint32 zmm6_9 zmm11_9;
xor zmm6_a@uint32 zmm6_a zmm11_a; xor zmm6_b@uint32 zmm6_b zmm11_b;
xor zmm6_c@uint32 zmm6_c zmm11_c; xor zmm6_d@uint32 zmm6_d zmm11_d;
xor zmm6_e@uint32 zmm6_e zmm11_e; xor zmm6_f@uint32 zmm6_f zmm11_f;
(* vpxord %zmm8,%zmm7,%zmm7                        #! PC = 0x555555558300 *)
xor zmm7_0@uint32 zmm7_0 zmm8_0; xor zmm7_1@uint32 zmm7_1 zmm8_1;
xor zmm7_2@uint32 zmm7_2 zmm8_2; xor zmm7_3@uint32 zmm7_3 zmm8_3;
xor zmm7_4@uint32 zmm7_4 zmm8_4; xor zmm7_5@uint32 zmm7_5 zmm8_5;
xor zmm7_6@uint32 zmm7_6 zmm8_6; xor zmm7_7@uint32 zmm7_7 zmm8_7;
xor zmm7_8@uint32 zmm7_8 zmm8_8; xor zmm7_9@uint32 zmm7_9 zmm8_9;
xor zmm7_a@uint32 zmm7_a zmm8_a; xor zmm7_b@uint32 zmm7_b zmm8_b;
xor zmm7_c@uint32 zmm7_c zmm8_c; xor zmm7_d@uint32 zmm7_d zmm8_d;
xor zmm7_e@uint32 zmm7_e zmm8_e; xor zmm7_f@uint32 zmm7_f zmm8_f;
(* vpxord %zmm9,%zmm4,%zmm4                        #! PC = 0x555555558306 *)
xor zmm4_0@uint32 zmm4_0 zmm9_0; xor zmm4_1@uint32 zmm4_1 zmm9_1;
xor zmm4_2@uint32 zmm4_2 zmm9_2; xor zmm4_3@uint32 zmm4_3 zmm9_3;
xor zmm4_4@uint32 zmm4_4 zmm9_4; xor zmm4_5@uint32 zmm4_5 zmm9_5;
xor zmm4_6@uint32 zmm4_6 zmm9_6; xor zmm4_7@uint32 zmm4_7 zmm9_7;
xor zmm4_8@uint32 zmm4_8 zmm9_8; xor zmm4_9@uint32 zmm4_9 zmm9_9;
xor zmm4_a@uint32 zmm4_a zmm9_a; xor zmm4_b@uint32 zmm4_b zmm9_b;
xor zmm4_c@uint32 zmm4_c zmm9_c; xor zmm4_d@uint32 zmm4_d zmm9_d;
xor zmm4_e@uint32 zmm4_e zmm9_e; xor zmm4_f@uint32 zmm4_f zmm9_f;
(* vprold $0xc,%zmm5,%zmm5                         #! PC = 0x55555555830c *)
rol zmm5_0@uint32 zmm5_0 0xc; rol zmm5_1@uint32 zmm5_1 0xc;
rol zmm5_2@uint32 zmm5_2 0xc; rol zmm5_3@uint32 zmm5_3 0xc;
rol zmm5_4@uint32 zmm5_4 0xc; rol zmm5_5@uint32 zmm5_5 0xc;
rol zmm5_6@uint32 zmm5_6 0xc; rol zmm5_7@uint32 zmm5_7 0xc;
rol zmm5_8@uint32 zmm5_8 0xc; rol zmm5_9@uint32 zmm5_9 0xc;
rol zmm5_a@uint32 zmm5_a 0xc; rol zmm5_b@uint32 zmm5_b 0xc;
rol zmm5_c@uint32 zmm5_c 0xc; rol zmm5_d@uint32 zmm5_d 0xc;
rol zmm5_e@uint32 zmm5_e 0xc; rol zmm5_f@uint32 zmm5_f 0xc;
(* vprold $0xc,%zmm6,%zmm6                         #! PC = 0x555555558313 *)
rol zmm6_0@uint32 zmm6_0 0xc; rol zmm6_1@uint32 zmm6_1 0xc;
rol zmm6_2@uint32 zmm6_2 0xc; rol zmm6_3@uint32 zmm6_3 0xc;
rol zmm6_4@uint32 zmm6_4 0xc; rol zmm6_5@uint32 zmm6_5 0xc;
rol zmm6_6@uint32 zmm6_6 0xc; rol zmm6_7@uint32 zmm6_7 0xc;
rol zmm6_8@uint32 zmm6_8 0xc; rol zmm6_9@uint32 zmm6_9 0xc;
rol zmm6_a@uint32 zmm6_a 0xc; rol zmm6_b@uint32 zmm6_b 0xc;
rol zmm6_c@uint32 zmm6_c 0xc; rol zmm6_d@uint32 zmm6_d 0xc;
rol zmm6_e@uint32 zmm6_e 0xc; rol zmm6_f@uint32 zmm6_f 0xc;
(* vprold $0xc,%zmm7,%zmm7                         #! PC = 0x55555555831a *)
rol zmm7_0@uint32 zmm7_0 0xc; rol zmm7_1@uint32 zmm7_1 0xc;
rol zmm7_2@uint32 zmm7_2 0xc; rol zmm7_3@uint32 zmm7_3 0xc;
rol zmm7_4@uint32 zmm7_4 0xc; rol zmm7_5@uint32 zmm7_5 0xc;
rol zmm7_6@uint32 zmm7_6 0xc; rol zmm7_7@uint32 zmm7_7 0xc;
rol zmm7_8@uint32 zmm7_8 0xc; rol zmm7_9@uint32 zmm7_9 0xc;
rol zmm7_a@uint32 zmm7_a 0xc; rol zmm7_b@uint32 zmm7_b 0xc;
rol zmm7_c@uint32 zmm7_c 0xc; rol zmm7_d@uint32 zmm7_d 0xc;
rol zmm7_e@uint32 zmm7_e 0xc; rol zmm7_f@uint32 zmm7_f 0xc;
(* vprold $0xc,%zmm4,%zmm4                         #! PC = 0x555555558321 *)
rol zmm4_0@uint32 zmm4_0 0xc; rol zmm4_1@uint32 zmm4_1 0xc;
rol zmm4_2@uint32 zmm4_2 0xc; rol zmm4_3@uint32 zmm4_3 0xc;
rol zmm4_4@uint32 zmm4_4 0xc; rol zmm4_5@uint32 zmm4_5 0xc;
rol zmm4_6@uint32 zmm4_6 0xc; rol zmm4_7@uint32 zmm4_7 0xc;
rol zmm4_8@uint32 zmm4_8 0xc; rol zmm4_9@uint32 zmm4_9 0xc;
rol zmm4_a@uint32 zmm4_a 0xc; rol zmm4_b@uint32 zmm4_b 0xc;
rol zmm4_c@uint32 zmm4_c 0xc; rol zmm4_d@uint32 zmm4_d 0xc;
rol zmm4_e@uint32 zmm4_e 0xc; rol zmm4_f@uint32 zmm4_f 0xc;
(* vpaddd %zmm5,%zmm0,%zmm0                        #! PC = 0x555555558328 *)
adds dc zmm0_0 zmm0_0 zmm5_0; adds dc zmm0_1 zmm0_1 zmm5_1;
adds dc zmm0_2 zmm0_2 zmm5_2; adds dc zmm0_3 zmm0_3 zmm5_3;
adds dc zmm0_4 zmm0_4 zmm5_4; adds dc zmm0_5 zmm0_5 zmm5_5;
adds dc zmm0_6 zmm0_6 zmm5_6; adds dc zmm0_7 zmm0_7 zmm5_7;
adds dc zmm0_8 zmm0_8 zmm5_8; adds dc zmm0_9 zmm0_9 zmm5_9;
adds dc zmm0_a zmm0_a zmm5_a; adds dc zmm0_b zmm0_b zmm5_b;
adds dc zmm0_c zmm0_c zmm5_c; adds dc zmm0_d zmm0_d zmm5_d;
adds dc zmm0_e zmm0_e zmm5_e; adds dc zmm0_f zmm0_f zmm5_f;
(* vpaddd %zmm6,%zmm1,%zmm1                        #! PC = 0x55555555832e *)
adds dc zmm1_0 zmm1_0 zmm6_0; adds dc zmm1_1 zmm1_1 zmm6_1;
adds dc zmm1_2 zmm1_2 zmm6_2; adds dc zmm1_3 zmm1_3 zmm6_3;
adds dc zmm1_4 zmm1_4 zmm6_4; adds dc zmm1_5 zmm1_5 zmm6_5;
adds dc zmm1_6 zmm1_6 zmm6_6; adds dc zmm1_7 zmm1_7 zmm6_7;
adds dc zmm1_8 zmm1_8 zmm6_8; adds dc zmm1_9 zmm1_9 zmm6_9;
adds dc zmm1_a zmm1_a zmm6_a; adds dc zmm1_b zmm1_b zmm6_b;
adds dc zmm1_c zmm1_c zmm6_c; adds dc zmm1_d zmm1_d zmm6_d;
adds dc zmm1_e zmm1_e zmm6_e; adds dc zmm1_f zmm1_f zmm6_f;
(* vpaddd %zmm7,%zmm2,%zmm2                        #! PC = 0x555555558334 *)
adds dc zmm2_0 zmm2_0 zmm7_0; adds dc zmm2_1 zmm2_1 zmm7_1;
adds dc zmm2_2 zmm2_2 zmm7_2; adds dc zmm2_3 zmm2_3 zmm7_3;
adds dc zmm2_4 zmm2_4 zmm7_4; adds dc zmm2_5 zmm2_5 zmm7_5;
adds dc zmm2_6 zmm2_6 zmm7_6; adds dc zmm2_7 zmm2_7 zmm7_7;
adds dc zmm2_8 zmm2_8 zmm7_8; adds dc zmm2_9 zmm2_9 zmm7_9;
adds dc zmm2_a zmm2_a zmm7_a; adds dc zmm2_b zmm2_b zmm7_b;
adds dc zmm2_c zmm2_c zmm7_c; adds dc zmm2_d zmm2_d zmm7_d;
adds dc zmm2_e zmm2_e zmm7_e; adds dc zmm2_f zmm2_f zmm7_f;
(* vpaddd %zmm4,%zmm3,%zmm3                        #! PC = 0x55555555833a *)
adds dc zmm3_0 zmm3_0 zmm4_0; adds dc zmm3_1 zmm3_1 zmm4_1;
adds dc zmm3_2 zmm3_2 zmm4_2; adds dc zmm3_3 zmm3_3 zmm4_3;
adds dc zmm3_4 zmm3_4 zmm4_4; adds dc zmm3_5 zmm3_5 zmm4_5;
adds dc zmm3_6 zmm3_6 zmm4_6; adds dc zmm3_7 zmm3_7 zmm4_7;
adds dc zmm3_8 zmm3_8 zmm4_8; adds dc zmm3_9 zmm3_9 zmm4_9;
adds dc zmm3_a zmm3_a zmm4_a; adds dc zmm3_b zmm3_b zmm4_b;
adds dc zmm3_c zmm3_c zmm4_c; adds dc zmm3_d zmm3_d zmm4_d;
adds dc zmm3_e zmm3_e zmm4_e; adds dc zmm3_f zmm3_f zmm4_f;
(* vpxord %zmm0,%zmm15,%zmm15                      #! PC = 0x555555558340 *)
xor zmm15_0@uint32 zmm15_0 zmm0_0; xor zmm15_1@uint32 zmm15_1 zmm0_1;
xor zmm15_2@uint32 zmm15_2 zmm0_2; xor zmm15_3@uint32 zmm15_3 zmm0_3;
xor zmm15_4@uint32 zmm15_4 zmm0_4; xor zmm15_5@uint32 zmm15_5 zmm0_5;
xor zmm15_6@uint32 zmm15_6 zmm0_6; xor zmm15_7@uint32 zmm15_7 zmm0_7;
xor zmm15_8@uint32 zmm15_8 zmm0_8; xor zmm15_9@uint32 zmm15_9 zmm0_9;
xor zmm15_a@uint32 zmm15_a zmm0_a; xor zmm15_b@uint32 zmm15_b zmm0_b;
xor zmm15_c@uint32 zmm15_c zmm0_c; xor zmm15_d@uint32 zmm15_d zmm0_d;
xor zmm15_e@uint32 zmm15_e zmm0_e; xor zmm15_f@uint32 zmm15_f zmm0_f;
(* vpxord %zmm1,%zmm12,%zmm12                      #! PC = 0x555555558346 *)
xor zmm12_0@uint32 zmm12_0 zmm1_0; xor zmm12_1@uint32 zmm12_1 zmm1_1;
xor zmm12_2@uint32 zmm12_2 zmm1_2; xor zmm12_3@uint32 zmm12_3 zmm1_3;
xor zmm12_4@uint32 zmm12_4 zmm1_4; xor zmm12_5@uint32 zmm12_5 zmm1_5;
xor zmm12_6@uint32 zmm12_6 zmm1_6; xor zmm12_7@uint32 zmm12_7 zmm1_7;
xor zmm12_8@uint32 zmm12_8 zmm1_8; xor zmm12_9@uint32 zmm12_9 zmm1_9;
xor zmm12_a@uint32 zmm12_a zmm1_a; xor zmm12_b@uint32 zmm12_b zmm1_b;
xor zmm12_c@uint32 zmm12_c zmm1_c; xor zmm12_d@uint32 zmm12_d zmm1_d;
xor zmm12_e@uint32 zmm12_e zmm1_e; xor zmm12_f@uint32 zmm12_f zmm1_f;
(* vpxord %zmm2,%zmm13,%zmm13                      #! PC = 0x55555555834c *)
xor zmm13_0@uint32 zmm13_0 zmm2_0; xor zmm13_1@uint32 zmm13_1 zmm2_1;
xor zmm13_2@uint32 zmm13_2 zmm2_2; xor zmm13_3@uint32 zmm13_3 zmm2_3;
xor zmm13_4@uint32 zmm13_4 zmm2_4; xor zmm13_5@uint32 zmm13_5 zmm2_5;
xor zmm13_6@uint32 zmm13_6 zmm2_6; xor zmm13_7@uint32 zmm13_7 zmm2_7;
xor zmm13_8@uint32 zmm13_8 zmm2_8; xor zmm13_9@uint32 zmm13_9 zmm2_9;
xor zmm13_a@uint32 zmm13_a zmm2_a; xor zmm13_b@uint32 zmm13_b zmm2_b;
xor zmm13_c@uint32 zmm13_c zmm2_c; xor zmm13_d@uint32 zmm13_d zmm2_d;
xor zmm13_e@uint32 zmm13_e zmm2_e; xor zmm13_f@uint32 zmm13_f zmm2_f;
(* vpxord %zmm3,%zmm14,%zmm14                      #! PC = 0x555555558352 *)
xor zmm14_0@uint32 zmm14_0 zmm3_0; xor zmm14_1@uint32 zmm14_1 zmm3_1;
xor zmm14_2@uint32 zmm14_2 zmm3_2; xor zmm14_3@uint32 zmm14_3 zmm3_3;
xor zmm14_4@uint32 zmm14_4 zmm3_4; xor zmm14_5@uint32 zmm14_5 zmm3_5;
xor zmm14_6@uint32 zmm14_6 zmm3_6; xor zmm14_7@uint32 zmm14_7 zmm3_7;
xor zmm14_8@uint32 zmm14_8 zmm3_8; xor zmm14_9@uint32 zmm14_9 zmm3_9;
xor zmm14_a@uint32 zmm14_a zmm3_a; xor zmm14_b@uint32 zmm14_b zmm3_b;
xor zmm14_c@uint32 zmm14_c zmm3_c; xor zmm14_d@uint32 zmm14_d zmm3_d;
xor zmm14_e@uint32 zmm14_e zmm3_e; xor zmm14_f@uint32 zmm14_f zmm3_f;
(* vprold $0x8,%zmm15,%zmm15                       #! PC = 0x555555558358 *)
rol zmm15_0@uint32 zmm15_0 0x8; rol zmm15_1@uint32 zmm15_1 0x8;
rol zmm15_2@uint32 zmm15_2 0x8; rol zmm15_3@uint32 zmm15_3 0x8;
rol zmm15_4@uint32 zmm15_4 0x8; rol zmm15_5@uint32 zmm15_5 0x8;
rol zmm15_6@uint32 zmm15_6 0x8; rol zmm15_7@uint32 zmm15_7 0x8;
rol zmm15_8@uint32 zmm15_8 0x8; rol zmm15_9@uint32 zmm15_9 0x8;
rol zmm15_a@uint32 zmm15_a 0x8; rol zmm15_b@uint32 zmm15_b 0x8;
rol zmm15_c@uint32 zmm15_c 0x8; rol zmm15_d@uint32 zmm15_d 0x8;
rol zmm15_e@uint32 zmm15_e 0x8; rol zmm15_f@uint32 zmm15_f 0x8;
(* vprold $0x8,%zmm12,%zmm12                       #! PC = 0x55555555835f *)
rol zmm12_0@uint32 zmm12_0 0x8; rol zmm12_1@uint32 zmm12_1 0x8;
rol zmm12_2@uint32 zmm12_2 0x8; rol zmm12_3@uint32 zmm12_3 0x8;
rol zmm12_4@uint32 zmm12_4 0x8; rol zmm12_5@uint32 zmm12_5 0x8;
rol zmm12_6@uint32 zmm12_6 0x8; rol zmm12_7@uint32 zmm12_7 0x8;
rol zmm12_8@uint32 zmm12_8 0x8; rol zmm12_9@uint32 zmm12_9 0x8;
rol zmm12_a@uint32 zmm12_a 0x8; rol zmm12_b@uint32 zmm12_b 0x8;
rol zmm12_c@uint32 zmm12_c 0x8; rol zmm12_d@uint32 zmm12_d 0x8;
rol zmm12_e@uint32 zmm12_e 0x8; rol zmm12_f@uint32 zmm12_f 0x8;
(* vprold $0x8,%zmm13,%zmm13                       #! PC = 0x555555558366 *)
rol zmm13_0@uint32 zmm13_0 0x8; rol zmm13_1@uint32 zmm13_1 0x8;
rol zmm13_2@uint32 zmm13_2 0x8; rol zmm13_3@uint32 zmm13_3 0x8;
rol zmm13_4@uint32 zmm13_4 0x8; rol zmm13_5@uint32 zmm13_5 0x8;
rol zmm13_6@uint32 zmm13_6 0x8; rol zmm13_7@uint32 zmm13_7 0x8;
rol zmm13_8@uint32 zmm13_8 0x8; rol zmm13_9@uint32 zmm13_9 0x8;
rol zmm13_a@uint32 zmm13_a 0x8; rol zmm13_b@uint32 zmm13_b 0x8;
rol zmm13_c@uint32 zmm13_c 0x8; rol zmm13_d@uint32 zmm13_d 0x8;
rol zmm13_e@uint32 zmm13_e 0x8; rol zmm13_f@uint32 zmm13_f 0x8;
(* vprold $0x8,%zmm14,%zmm14                       #! PC = 0x55555555836d *)
rol zmm14_0@uint32 zmm14_0 0x8; rol zmm14_1@uint32 zmm14_1 0x8;
rol zmm14_2@uint32 zmm14_2 0x8; rol zmm14_3@uint32 zmm14_3 0x8;
rol zmm14_4@uint32 zmm14_4 0x8; rol zmm14_5@uint32 zmm14_5 0x8;
rol zmm14_6@uint32 zmm14_6 0x8; rol zmm14_7@uint32 zmm14_7 0x8;
rol zmm14_8@uint32 zmm14_8 0x8; rol zmm14_9@uint32 zmm14_9 0x8;
rol zmm14_a@uint32 zmm14_a 0x8; rol zmm14_b@uint32 zmm14_b 0x8;
rol zmm14_c@uint32 zmm14_c 0x8; rol zmm14_d@uint32 zmm14_d 0x8;
rol zmm14_e@uint32 zmm14_e 0x8; rol zmm14_f@uint32 zmm14_f 0x8;
(* vpaddd %zmm15,%zmm10,%zmm10                     #! PC = 0x555555558374 *)
adds dc zmm10_0 zmm10_0 zmm15_0; adds dc zmm10_1 zmm10_1 zmm15_1;
adds dc zmm10_2 zmm10_2 zmm15_2; adds dc zmm10_3 zmm10_3 zmm15_3;
adds dc zmm10_4 zmm10_4 zmm15_4; adds dc zmm10_5 zmm10_5 zmm15_5;
adds dc zmm10_6 zmm10_6 zmm15_6; adds dc zmm10_7 zmm10_7 zmm15_7;
adds dc zmm10_8 zmm10_8 zmm15_8; adds dc zmm10_9 zmm10_9 zmm15_9;
adds dc zmm10_a zmm10_a zmm15_a; adds dc zmm10_b zmm10_b zmm15_b;
adds dc zmm10_c zmm10_c zmm15_c; adds dc zmm10_d zmm10_d zmm15_d;
adds dc zmm10_e zmm10_e zmm15_e; adds dc zmm10_f zmm10_f zmm15_f;
(* vpaddd %zmm12,%zmm11,%zmm11                     #! PC = 0x55555555837a *)
adds dc zmm11_0 zmm11_0 zmm12_0; adds dc zmm11_1 zmm11_1 zmm12_1;
adds dc zmm11_2 zmm11_2 zmm12_2; adds dc zmm11_3 zmm11_3 zmm12_3;
adds dc zmm11_4 zmm11_4 zmm12_4; adds dc zmm11_5 zmm11_5 zmm12_5;
adds dc zmm11_6 zmm11_6 zmm12_6; adds dc zmm11_7 zmm11_7 zmm12_7;
adds dc zmm11_8 zmm11_8 zmm12_8; adds dc zmm11_9 zmm11_9 zmm12_9;
adds dc zmm11_a zmm11_a zmm12_a; adds dc zmm11_b zmm11_b zmm12_b;
adds dc zmm11_c zmm11_c zmm12_c; adds dc zmm11_d zmm11_d zmm12_d;
adds dc zmm11_e zmm11_e zmm12_e; adds dc zmm11_f zmm11_f zmm12_f;
(* vpaddd %zmm13,%zmm8,%zmm8                       #! PC = 0x555555558380 *)
adds dc zmm8_0 zmm8_0 zmm13_0; adds dc zmm8_1 zmm8_1 zmm13_1;
adds dc zmm8_2 zmm8_2 zmm13_2; adds dc zmm8_3 zmm8_3 zmm13_3;
adds dc zmm8_4 zmm8_4 zmm13_4; adds dc zmm8_5 zmm8_5 zmm13_5;
adds dc zmm8_6 zmm8_6 zmm13_6; adds dc zmm8_7 zmm8_7 zmm13_7;
adds dc zmm8_8 zmm8_8 zmm13_8; adds dc zmm8_9 zmm8_9 zmm13_9;
adds dc zmm8_a zmm8_a zmm13_a; adds dc zmm8_b zmm8_b zmm13_b;
adds dc zmm8_c zmm8_c zmm13_c; adds dc zmm8_d zmm8_d zmm13_d;
adds dc zmm8_e zmm8_e zmm13_e; adds dc zmm8_f zmm8_f zmm13_f;
(* vpaddd %zmm14,%zmm9,%zmm9                       #! PC = 0x555555558386 *)
adds dc zmm9_0 zmm9_0 zmm14_0; adds dc zmm9_1 zmm9_1 zmm14_1;
adds dc zmm9_2 zmm9_2 zmm14_2; adds dc zmm9_3 zmm9_3 zmm14_3;
adds dc zmm9_4 zmm9_4 zmm14_4; adds dc zmm9_5 zmm9_5 zmm14_5;
adds dc zmm9_6 zmm9_6 zmm14_6; adds dc zmm9_7 zmm9_7 zmm14_7;
adds dc zmm9_8 zmm9_8 zmm14_8; adds dc zmm9_9 zmm9_9 zmm14_9;
adds dc zmm9_a zmm9_a zmm14_a; adds dc zmm9_b zmm9_b zmm14_b;
adds dc zmm9_c zmm9_c zmm14_c; adds dc zmm9_d zmm9_d zmm14_d;
adds dc zmm9_e zmm9_e zmm14_e; adds dc zmm9_f zmm9_f zmm14_f;
(* vpxord %zmm10,%zmm5,%zmm5                       #! PC = 0x55555555838c *)
xor zmm5_0@uint32 zmm5_0 zmm10_0; xor zmm5_1@uint32 zmm5_1 zmm10_1;
xor zmm5_2@uint32 zmm5_2 zmm10_2; xor zmm5_3@uint32 zmm5_3 zmm10_3;
xor zmm5_4@uint32 zmm5_4 zmm10_4; xor zmm5_5@uint32 zmm5_5 zmm10_5;
xor zmm5_6@uint32 zmm5_6 zmm10_6; xor zmm5_7@uint32 zmm5_7 zmm10_7;
xor zmm5_8@uint32 zmm5_8 zmm10_8; xor zmm5_9@uint32 zmm5_9 zmm10_9;
xor zmm5_a@uint32 zmm5_a zmm10_a; xor zmm5_b@uint32 zmm5_b zmm10_b;
xor zmm5_c@uint32 zmm5_c zmm10_c; xor zmm5_d@uint32 zmm5_d zmm10_d;
xor zmm5_e@uint32 zmm5_e zmm10_e; xor zmm5_f@uint32 zmm5_f zmm10_f;
(* vpxord %zmm11,%zmm6,%zmm6                       #! PC = 0x555555558392 *)
xor zmm6_0@uint32 zmm6_0 zmm11_0; xor zmm6_1@uint32 zmm6_1 zmm11_1;
xor zmm6_2@uint32 zmm6_2 zmm11_2; xor zmm6_3@uint32 zmm6_3 zmm11_3;
xor zmm6_4@uint32 zmm6_4 zmm11_4; xor zmm6_5@uint32 zmm6_5 zmm11_5;
xor zmm6_6@uint32 zmm6_6 zmm11_6; xor zmm6_7@uint32 zmm6_7 zmm11_7;
xor zmm6_8@uint32 zmm6_8 zmm11_8; xor zmm6_9@uint32 zmm6_9 zmm11_9;
xor zmm6_a@uint32 zmm6_a zmm11_a; xor zmm6_b@uint32 zmm6_b zmm11_b;
xor zmm6_c@uint32 zmm6_c zmm11_c; xor zmm6_d@uint32 zmm6_d zmm11_d;
xor zmm6_e@uint32 zmm6_e zmm11_e; xor zmm6_f@uint32 zmm6_f zmm11_f;
(* vpxord %zmm8,%zmm7,%zmm7                        #! PC = 0x555555558398 *)
xor zmm7_0@uint32 zmm7_0 zmm8_0; xor zmm7_1@uint32 zmm7_1 zmm8_1;
xor zmm7_2@uint32 zmm7_2 zmm8_2; xor zmm7_3@uint32 zmm7_3 zmm8_3;
xor zmm7_4@uint32 zmm7_4 zmm8_4; xor zmm7_5@uint32 zmm7_5 zmm8_5;
xor zmm7_6@uint32 zmm7_6 zmm8_6; xor zmm7_7@uint32 zmm7_7 zmm8_7;
xor zmm7_8@uint32 zmm7_8 zmm8_8; xor zmm7_9@uint32 zmm7_9 zmm8_9;
xor zmm7_a@uint32 zmm7_a zmm8_a; xor zmm7_b@uint32 zmm7_b zmm8_b;
xor zmm7_c@uint32 zmm7_c zmm8_c; xor zmm7_d@uint32 zmm7_d zmm8_d;
xor zmm7_e@uint32 zmm7_e zmm8_e; xor zmm7_f@uint32 zmm7_f zmm8_f;
(* vpxord %zmm9,%zmm4,%zmm4                        #! PC = 0x55555555839e *)
xor zmm4_0@uint32 zmm4_0 zmm9_0; xor zmm4_1@uint32 zmm4_1 zmm9_1;
xor zmm4_2@uint32 zmm4_2 zmm9_2; xor zmm4_3@uint32 zmm4_3 zmm9_3;
xor zmm4_4@uint32 zmm4_4 zmm9_4; xor zmm4_5@uint32 zmm4_5 zmm9_5;
xor zmm4_6@uint32 zmm4_6 zmm9_6; xor zmm4_7@uint32 zmm4_7 zmm9_7;
xor zmm4_8@uint32 zmm4_8 zmm9_8; xor zmm4_9@uint32 zmm4_9 zmm9_9;
xor zmm4_a@uint32 zmm4_a zmm9_a; xor zmm4_b@uint32 zmm4_b zmm9_b;
xor zmm4_c@uint32 zmm4_c zmm9_c; xor zmm4_d@uint32 zmm4_d zmm9_d;
xor zmm4_e@uint32 zmm4_e zmm9_e; xor zmm4_f@uint32 zmm4_f zmm9_f;
(* vprold $0x7,%zmm5,%zmm5                         #! PC = 0x5555555583a4 *)
rol zmm5_0@uint32 zmm5_0 0x7; rol zmm5_1@uint32 zmm5_1 0x7;
rol zmm5_2@uint32 zmm5_2 0x7; rol zmm5_3@uint32 zmm5_3 0x7;
rol zmm5_4@uint32 zmm5_4 0x7; rol zmm5_5@uint32 zmm5_5 0x7;
rol zmm5_6@uint32 zmm5_6 0x7; rol zmm5_7@uint32 zmm5_7 0x7;
rol zmm5_8@uint32 zmm5_8 0x7; rol zmm5_9@uint32 zmm5_9 0x7;
rol zmm5_a@uint32 zmm5_a 0x7; rol zmm5_b@uint32 zmm5_b 0x7;
rol zmm5_c@uint32 zmm5_c 0x7; rol zmm5_d@uint32 zmm5_d 0x7;
rol zmm5_e@uint32 zmm5_e 0x7; rol zmm5_f@uint32 zmm5_f 0x7;
(* vprold $0x7,%zmm6,%zmm6                         #! PC = 0x5555555583ab *)
rol zmm6_0@uint32 zmm6_0 0x7; rol zmm6_1@uint32 zmm6_1 0x7;
rol zmm6_2@uint32 zmm6_2 0x7; rol zmm6_3@uint32 zmm6_3 0x7;
rol zmm6_4@uint32 zmm6_4 0x7; rol zmm6_5@uint32 zmm6_5 0x7;
rol zmm6_6@uint32 zmm6_6 0x7; rol zmm6_7@uint32 zmm6_7 0x7;
rol zmm6_8@uint32 zmm6_8 0x7; rol zmm6_9@uint32 zmm6_9 0x7;
rol zmm6_a@uint32 zmm6_a 0x7; rol zmm6_b@uint32 zmm6_b 0x7;
rol zmm6_c@uint32 zmm6_c 0x7; rol zmm6_d@uint32 zmm6_d 0x7;
rol zmm6_e@uint32 zmm6_e 0x7; rol zmm6_f@uint32 zmm6_f 0x7;
(* vprold $0x7,%zmm7,%zmm7                         #! PC = 0x5555555583b2 *)
rol zmm7_0@uint32 zmm7_0 0x7; rol zmm7_1@uint32 zmm7_1 0x7;
rol zmm7_2@uint32 zmm7_2 0x7; rol zmm7_3@uint32 zmm7_3 0x7;
rol zmm7_4@uint32 zmm7_4 0x7; rol zmm7_5@uint32 zmm7_5 0x7;
rol zmm7_6@uint32 zmm7_6 0x7; rol zmm7_7@uint32 zmm7_7 0x7;
rol zmm7_8@uint32 zmm7_8 0x7; rol zmm7_9@uint32 zmm7_9 0x7;
rol zmm7_a@uint32 zmm7_a 0x7; rol zmm7_b@uint32 zmm7_b 0x7;
rol zmm7_c@uint32 zmm7_c 0x7; rol zmm7_d@uint32 zmm7_d 0x7;
rol zmm7_e@uint32 zmm7_e 0x7; rol zmm7_f@uint32 zmm7_f 0x7;
(* vprold $0x7,%zmm4,%zmm4                         #! PC = 0x5555555583b9 *)
rol zmm4_0@uint32 zmm4_0 0x7; rol zmm4_1@uint32 zmm4_1 0x7;
rol zmm4_2@uint32 zmm4_2 0x7; rol zmm4_3@uint32 zmm4_3 0x7;
rol zmm4_4@uint32 zmm4_4 0x7; rol zmm4_5@uint32 zmm4_5 0x7;
rol zmm4_6@uint32 zmm4_6 0x7; rol zmm4_7@uint32 zmm4_7 0x7;
rol zmm4_8@uint32 zmm4_8 0x7; rol zmm4_9@uint32 zmm4_9 0x7;
rol zmm4_a@uint32 zmm4_a 0x7; rol zmm4_b@uint32 zmm4_b 0x7;
rol zmm4_c@uint32 zmm4_c 0x7; rol zmm4_d@uint32 zmm4_d 0x7;
rol zmm4_e@uint32 zmm4_e 0x7; rol zmm4_f@uint32 zmm4_f 0x7;
(* dec    %eax                                     #! PC = 0x5555555583c0 *)
(* dec %eax *)
nop;
(* #jne    0x555555558160 <ChaCha20_16x+448>       #! PC = 0x5555555583c2 *)
#jne    0x555555558160 <ChaCha20_16x+448>       #! 0x5555555583c2 = 0x5555555583c2;
(* vpaddd %zmm4,%zmm0,%zmm0                        #! PC = 0x555555558160 *)
adds dc zmm0_0 zmm0_0 zmm4_0; adds dc zmm0_1 zmm0_1 zmm4_1;
adds dc zmm0_2 zmm0_2 zmm4_2; adds dc zmm0_3 zmm0_3 zmm4_3;
adds dc zmm0_4 zmm0_4 zmm4_4; adds dc zmm0_5 zmm0_5 zmm4_5;
adds dc zmm0_6 zmm0_6 zmm4_6; adds dc zmm0_7 zmm0_7 zmm4_7;
adds dc zmm0_8 zmm0_8 zmm4_8; adds dc zmm0_9 zmm0_9 zmm4_9;
adds dc zmm0_a zmm0_a zmm4_a; adds dc zmm0_b zmm0_b zmm4_b;
adds dc zmm0_c zmm0_c zmm4_c; adds dc zmm0_d zmm0_d zmm4_d;
adds dc zmm0_e zmm0_e zmm4_e; adds dc zmm0_f zmm0_f zmm4_f;
(* vpaddd %zmm5,%zmm1,%zmm1                        #! PC = 0x555555558166 *)
adds dc zmm1_0 zmm1_0 zmm5_0; adds dc zmm1_1 zmm1_1 zmm5_1;
adds dc zmm1_2 zmm1_2 zmm5_2; adds dc zmm1_3 zmm1_3 zmm5_3;
adds dc zmm1_4 zmm1_4 zmm5_4; adds dc zmm1_5 zmm1_5 zmm5_5;
adds dc zmm1_6 zmm1_6 zmm5_6; adds dc zmm1_7 zmm1_7 zmm5_7;
adds dc zmm1_8 zmm1_8 zmm5_8; adds dc zmm1_9 zmm1_9 zmm5_9;
adds dc zmm1_a zmm1_a zmm5_a; adds dc zmm1_b zmm1_b zmm5_b;
adds dc zmm1_c zmm1_c zmm5_c; adds dc zmm1_d zmm1_d zmm5_d;
adds dc zmm1_e zmm1_e zmm5_e; adds dc zmm1_f zmm1_f zmm5_f;
(* vpaddd %zmm6,%zmm2,%zmm2                        #! PC = 0x55555555816c *)
adds dc zmm2_0 zmm2_0 zmm6_0; adds dc zmm2_1 zmm2_1 zmm6_1;
adds dc zmm2_2 zmm2_2 zmm6_2; adds dc zmm2_3 zmm2_3 zmm6_3;
adds dc zmm2_4 zmm2_4 zmm6_4; adds dc zmm2_5 zmm2_5 zmm6_5;
adds dc zmm2_6 zmm2_6 zmm6_6; adds dc zmm2_7 zmm2_7 zmm6_7;
adds dc zmm2_8 zmm2_8 zmm6_8; adds dc zmm2_9 zmm2_9 zmm6_9;
adds dc zmm2_a zmm2_a zmm6_a; adds dc zmm2_b zmm2_b zmm6_b;
adds dc zmm2_c zmm2_c zmm6_c; adds dc zmm2_d zmm2_d zmm6_d;
adds dc zmm2_e zmm2_e zmm6_e; adds dc zmm2_f zmm2_f zmm6_f;
(* vpaddd %zmm7,%zmm3,%zmm3                        #! PC = 0x555555558172 *)
adds dc zmm3_0 zmm3_0 zmm7_0; adds dc zmm3_1 zmm3_1 zmm7_1;
adds dc zmm3_2 zmm3_2 zmm7_2; adds dc zmm3_3 zmm3_3 zmm7_3;
adds dc zmm3_4 zmm3_4 zmm7_4; adds dc zmm3_5 zmm3_5 zmm7_5;
adds dc zmm3_6 zmm3_6 zmm7_6; adds dc zmm3_7 zmm3_7 zmm7_7;
adds dc zmm3_8 zmm3_8 zmm7_8; adds dc zmm3_9 zmm3_9 zmm7_9;
adds dc zmm3_a zmm3_a zmm7_a; adds dc zmm3_b zmm3_b zmm7_b;
adds dc zmm3_c zmm3_c zmm7_c; adds dc zmm3_d zmm3_d zmm7_d;
adds dc zmm3_e zmm3_e zmm7_e; adds dc zmm3_f zmm3_f zmm7_f;
(* vpxord %zmm0,%zmm12,%zmm12                      #! PC = 0x555555558178 *)
xor zmm12_0@uint32 zmm12_0 zmm0_0; xor zmm12_1@uint32 zmm12_1 zmm0_1;
xor zmm12_2@uint32 zmm12_2 zmm0_2; xor zmm12_3@uint32 zmm12_3 zmm0_3;
xor zmm12_4@uint32 zmm12_4 zmm0_4; xor zmm12_5@uint32 zmm12_5 zmm0_5;
xor zmm12_6@uint32 zmm12_6 zmm0_6; xor zmm12_7@uint32 zmm12_7 zmm0_7;
xor zmm12_8@uint32 zmm12_8 zmm0_8; xor zmm12_9@uint32 zmm12_9 zmm0_9;
xor zmm12_a@uint32 zmm12_a zmm0_a; xor zmm12_b@uint32 zmm12_b zmm0_b;
xor zmm12_c@uint32 zmm12_c zmm0_c; xor zmm12_d@uint32 zmm12_d zmm0_d;
xor zmm12_e@uint32 zmm12_e zmm0_e; xor zmm12_f@uint32 zmm12_f zmm0_f;
(* vpxord %zmm1,%zmm13,%zmm13                      #! PC = 0x55555555817e *)
xor zmm13_0@uint32 zmm13_0 zmm1_0; xor zmm13_1@uint32 zmm13_1 zmm1_1;
xor zmm13_2@uint32 zmm13_2 zmm1_2; xor zmm13_3@uint32 zmm13_3 zmm1_3;
xor zmm13_4@uint32 zmm13_4 zmm1_4; xor zmm13_5@uint32 zmm13_5 zmm1_5;
xor zmm13_6@uint32 zmm13_6 zmm1_6; xor zmm13_7@uint32 zmm13_7 zmm1_7;
xor zmm13_8@uint32 zmm13_8 zmm1_8; xor zmm13_9@uint32 zmm13_9 zmm1_9;
xor zmm13_a@uint32 zmm13_a zmm1_a; xor zmm13_b@uint32 zmm13_b zmm1_b;
xor zmm13_c@uint32 zmm13_c zmm1_c; xor zmm13_d@uint32 zmm13_d zmm1_d;
xor zmm13_e@uint32 zmm13_e zmm1_e; xor zmm13_f@uint32 zmm13_f zmm1_f;
(* vpxord %zmm2,%zmm14,%zmm14                      #! PC = 0x555555558184 *)
xor zmm14_0@uint32 zmm14_0 zmm2_0; xor zmm14_1@uint32 zmm14_1 zmm2_1;
xor zmm14_2@uint32 zmm14_2 zmm2_2; xor zmm14_3@uint32 zmm14_3 zmm2_3;
xor zmm14_4@uint32 zmm14_4 zmm2_4; xor zmm14_5@uint32 zmm14_5 zmm2_5;
xor zmm14_6@uint32 zmm14_6 zmm2_6; xor zmm14_7@uint32 zmm14_7 zmm2_7;
xor zmm14_8@uint32 zmm14_8 zmm2_8; xor zmm14_9@uint32 zmm14_9 zmm2_9;
xor zmm14_a@uint32 zmm14_a zmm2_a; xor zmm14_b@uint32 zmm14_b zmm2_b;
xor zmm14_c@uint32 zmm14_c zmm2_c; xor zmm14_d@uint32 zmm14_d zmm2_d;
xor zmm14_e@uint32 zmm14_e zmm2_e; xor zmm14_f@uint32 zmm14_f zmm2_f;
(* vpxord %zmm3,%zmm15,%zmm15                      #! PC = 0x55555555818a *)
xor zmm15_0@uint32 zmm15_0 zmm3_0; xor zmm15_1@uint32 zmm15_1 zmm3_1;
xor zmm15_2@uint32 zmm15_2 zmm3_2; xor zmm15_3@uint32 zmm15_3 zmm3_3;
xor zmm15_4@uint32 zmm15_4 zmm3_4; xor zmm15_5@uint32 zmm15_5 zmm3_5;
xor zmm15_6@uint32 zmm15_6 zmm3_6; xor zmm15_7@uint32 zmm15_7 zmm3_7;
xor zmm15_8@uint32 zmm15_8 zmm3_8; xor zmm15_9@uint32 zmm15_9 zmm3_9;
xor zmm15_a@uint32 zmm15_a zmm3_a; xor zmm15_b@uint32 zmm15_b zmm3_b;
xor zmm15_c@uint32 zmm15_c zmm3_c; xor zmm15_d@uint32 zmm15_d zmm3_d;
xor zmm15_e@uint32 zmm15_e zmm3_e; xor zmm15_f@uint32 zmm15_f zmm3_f;
(* vprold $0x10,%zmm12,%zmm12                      #! PC = 0x555555558190 *)
rol zmm12_0@uint32 zmm12_0 0x10; rol zmm12_1@uint32 zmm12_1 0x10;
rol zmm12_2@uint32 zmm12_2 0x10; rol zmm12_3@uint32 zmm12_3 0x10;
rol zmm12_4@uint32 zmm12_4 0x10; rol zmm12_5@uint32 zmm12_5 0x10;
rol zmm12_6@uint32 zmm12_6 0x10; rol zmm12_7@uint32 zmm12_7 0x10;
rol zmm12_8@uint32 zmm12_8 0x10; rol zmm12_9@uint32 zmm12_9 0x10;
rol zmm12_a@uint32 zmm12_a 0x10; rol zmm12_b@uint32 zmm12_b 0x10;
rol zmm12_c@uint32 zmm12_c 0x10; rol zmm12_d@uint32 zmm12_d 0x10;
rol zmm12_e@uint32 zmm12_e 0x10; rol zmm12_f@uint32 zmm12_f 0x10;
(* vprold $0x10,%zmm13,%zmm13                      #! PC = 0x555555558197 *)
rol zmm13_0@uint32 zmm13_0 0x10; rol zmm13_1@uint32 zmm13_1 0x10;
rol zmm13_2@uint32 zmm13_2 0x10; rol zmm13_3@uint32 zmm13_3 0x10;
rol zmm13_4@uint32 zmm13_4 0x10; rol zmm13_5@uint32 zmm13_5 0x10;
rol zmm13_6@uint32 zmm13_6 0x10; rol zmm13_7@uint32 zmm13_7 0x10;
rol zmm13_8@uint32 zmm13_8 0x10; rol zmm13_9@uint32 zmm13_9 0x10;
rol zmm13_a@uint32 zmm13_a 0x10; rol zmm13_b@uint32 zmm13_b 0x10;
rol zmm13_c@uint32 zmm13_c 0x10; rol zmm13_d@uint32 zmm13_d 0x10;
rol zmm13_e@uint32 zmm13_e 0x10; rol zmm13_f@uint32 zmm13_f 0x10;
(* vprold $0x10,%zmm14,%zmm14                      #! PC = 0x55555555819e *)
rol zmm14_0@uint32 zmm14_0 0x10; rol zmm14_1@uint32 zmm14_1 0x10;
rol zmm14_2@uint32 zmm14_2 0x10; rol zmm14_3@uint32 zmm14_3 0x10;
rol zmm14_4@uint32 zmm14_4 0x10; rol zmm14_5@uint32 zmm14_5 0x10;
rol zmm14_6@uint32 zmm14_6 0x10; rol zmm14_7@uint32 zmm14_7 0x10;
rol zmm14_8@uint32 zmm14_8 0x10; rol zmm14_9@uint32 zmm14_9 0x10;
rol zmm14_a@uint32 zmm14_a 0x10; rol zmm14_b@uint32 zmm14_b 0x10;
rol zmm14_c@uint32 zmm14_c 0x10; rol zmm14_d@uint32 zmm14_d 0x10;
rol zmm14_e@uint32 zmm14_e 0x10; rol zmm14_f@uint32 zmm14_f 0x10;
(* vprold $0x10,%zmm15,%zmm15                      #! PC = 0x5555555581a5 *)
rol zmm15_0@uint32 zmm15_0 0x10; rol zmm15_1@uint32 zmm15_1 0x10;
rol zmm15_2@uint32 zmm15_2 0x10; rol zmm15_3@uint32 zmm15_3 0x10;
rol zmm15_4@uint32 zmm15_4 0x10; rol zmm15_5@uint32 zmm15_5 0x10;
rol zmm15_6@uint32 zmm15_6 0x10; rol zmm15_7@uint32 zmm15_7 0x10;
rol zmm15_8@uint32 zmm15_8 0x10; rol zmm15_9@uint32 zmm15_9 0x10;
rol zmm15_a@uint32 zmm15_a 0x10; rol zmm15_b@uint32 zmm15_b 0x10;
rol zmm15_c@uint32 zmm15_c 0x10; rol zmm15_d@uint32 zmm15_d 0x10;
rol zmm15_e@uint32 zmm15_e 0x10; rol zmm15_f@uint32 zmm15_f 0x10;
(* vpaddd %zmm12,%zmm8,%zmm8                       #! PC = 0x5555555581ac *)
adds dc zmm8_0 zmm8_0 zmm12_0; adds dc zmm8_1 zmm8_1 zmm12_1;
adds dc zmm8_2 zmm8_2 zmm12_2; adds dc zmm8_3 zmm8_3 zmm12_3;
adds dc zmm8_4 zmm8_4 zmm12_4; adds dc zmm8_5 zmm8_5 zmm12_5;
adds dc zmm8_6 zmm8_6 zmm12_6; adds dc zmm8_7 zmm8_7 zmm12_7;
adds dc zmm8_8 zmm8_8 zmm12_8; adds dc zmm8_9 zmm8_9 zmm12_9;
adds dc zmm8_a zmm8_a zmm12_a; adds dc zmm8_b zmm8_b zmm12_b;
adds dc zmm8_c zmm8_c zmm12_c; adds dc zmm8_d zmm8_d zmm12_d;
adds dc zmm8_e zmm8_e zmm12_e; adds dc zmm8_f zmm8_f zmm12_f;
(* vpaddd %zmm13,%zmm9,%zmm9                       #! PC = 0x5555555581b2 *)
adds dc zmm9_0 zmm9_0 zmm13_0; adds dc zmm9_1 zmm9_1 zmm13_1;
adds dc zmm9_2 zmm9_2 zmm13_2; adds dc zmm9_3 zmm9_3 zmm13_3;
adds dc zmm9_4 zmm9_4 zmm13_4; adds dc zmm9_5 zmm9_5 zmm13_5;
adds dc zmm9_6 zmm9_6 zmm13_6; adds dc zmm9_7 zmm9_7 zmm13_7;
adds dc zmm9_8 zmm9_8 zmm13_8; adds dc zmm9_9 zmm9_9 zmm13_9;
adds dc zmm9_a zmm9_a zmm13_a; adds dc zmm9_b zmm9_b zmm13_b;
adds dc zmm9_c zmm9_c zmm13_c; adds dc zmm9_d zmm9_d zmm13_d;
adds dc zmm9_e zmm9_e zmm13_e; adds dc zmm9_f zmm9_f zmm13_f;
(* vpaddd %zmm14,%zmm10,%zmm10                     #! PC = 0x5555555581b8 *)
adds dc zmm10_0 zmm10_0 zmm14_0; adds dc zmm10_1 zmm10_1 zmm14_1;
adds dc zmm10_2 zmm10_2 zmm14_2; adds dc zmm10_3 zmm10_3 zmm14_3;
adds dc zmm10_4 zmm10_4 zmm14_4; adds dc zmm10_5 zmm10_5 zmm14_5;
adds dc zmm10_6 zmm10_6 zmm14_6; adds dc zmm10_7 zmm10_7 zmm14_7;
adds dc zmm10_8 zmm10_8 zmm14_8; adds dc zmm10_9 zmm10_9 zmm14_9;
adds dc zmm10_a zmm10_a zmm14_a; adds dc zmm10_b zmm10_b zmm14_b;
adds dc zmm10_c zmm10_c zmm14_c; adds dc zmm10_d zmm10_d zmm14_d;
adds dc zmm10_e zmm10_e zmm14_e; adds dc zmm10_f zmm10_f zmm14_f;
(* vpaddd %zmm15,%zmm11,%zmm11                     #! PC = 0x5555555581be *)
adds dc zmm11_0 zmm11_0 zmm15_0; adds dc zmm11_1 zmm11_1 zmm15_1;
adds dc zmm11_2 zmm11_2 zmm15_2; adds dc zmm11_3 zmm11_3 zmm15_3;
adds dc zmm11_4 zmm11_4 zmm15_4; adds dc zmm11_5 zmm11_5 zmm15_5;
adds dc zmm11_6 zmm11_6 zmm15_6; adds dc zmm11_7 zmm11_7 zmm15_7;
adds dc zmm11_8 zmm11_8 zmm15_8; adds dc zmm11_9 zmm11_9 zmm15_9;
adds dc zmm11_a zmm11_a zmm15_a; adds dc zmm11_b zmm11_b zmm15_b;
adds dc zmm11_c zmm11_c zmm15_c; adds dc zmm11_d zmm11_d zmm15_d;
adds dc zmm11_e zmm11_e zmm15_e; adds dc zmm11_f zmm11_f zmm15_f;
(* vpxord %zmm8,%zmm4,%zmm4                        #! PC = 0x5555555581c4 *)
xor zmm4_0@uint32 zmm4_0 zmm8_0; xor zmm4_1@uint32 zmm4_1 zmm8_1;
xor zmm4_2@uint32 zmm4_2 zmm8_2; xor zmm4_3@uint32 zmm4_3 zmm8_3;
xor zmm4_4@uint32 zmm4_4 zmm8_4; xor zmm4_5@uint32 zmm4_5 zmm8_5;
xor zmm4_6@uint32 zmm4_6 zmm8_6; xor zmm4_7@uint32 zmm4_7 zmm8_7;
xor zmm4_8@uint32 zmm4_8 zmm8_8; xor zmm4_9@uint32 zmm4_9 zmm8_9;
xor zmm4_a@uint32 zmm4_a zmm8_a; xor zmm4_b@uint32 zmm4_b zmm8_b;
xor zmm4_c@uint32 zmm4_c zmm8_c; xor zmm4_d@uint32 zmm4_d zmm8_d;
xor zmm4_e@uint32 zmm4_e zmm8_e; xor zmm4_f@uint32 zmm4_f zmm8_f;
(* vpxord %zmm9,%zmm5,%zmm5                        #! PC = 0x5555555581ca *)
xor zmm5_0@uint32 zmm5_0 zmm9_0; xor zmm5_1@uint32 zmm5_1 zmm9_1;
xor zmm5_2@uint32 zmm5_2 zmm9_2; xor zmm5_3@uint32 zmm5_3 zmm9_3;
xor zmm5_4@uint32 zmm5_4 zmm9_4; xor zmm5_5@uint32 zmm5_5 zmm9_5;
xor zmm5_6@uint32 zmm5_6 zmm9_6; xor zmm5_7@uint32 zmm5_7 zmm9_7;
xor zmm5_8@uint32 zmm5_8 zmm9_8; xor zmm5_9@uint32 zmm5_9 zmm9_9;
xor zmm5_a@uint32 zmm5_a zmm9_a; xor zmm5_b@uint32 zmm5_b zmm9_b;
xor zmm5_c@uint32 zmm5_c zmm9_c; xor zmm5_d@uint32 zmm5_d zmm9_d;
xor zmm5_e@uint32 zmm5_e zmm9_e; xor zmm5_f@uint32 zmm5_f zmm9_f;
(* vpxord %zmm10,%zmm6,%zmm6                       #! PC = 0x5555555581d0 *)
xor zmm6_0@uint32 zmm6_0 zmm10_0; xor zmm6_1@uint32 zmm6_1 zmm10_1;
xor zmm6_2@uint32 zmm6_2 zmm10_2; xor zmm6_3@uint32 zmm6_3 zmm10_3;
xor zmm6_4@uint32 zmm6_4 zmm10_4; xor zmm6_5@uint32 zmm6_5 zmm10_5;
xor zmm6_6@uint32 zmm6_6 zmm10_6; xor zmm6_7@uint32 zmm6_7 zmm10_7;
xor zmm6_8@uint32 zmm6_8 zmm10_8; xor zmm6_9@uint32 zmm6_9 zmm10_9;
xor zmm6_a@uint32 zmm6_a zmm10_a; xor zmm6_b@uint32 zmm6_b zmm10_b;
xor zmm6_c@uint32 zmm6_c zmm10_c; xor zmm6_d@uint32 zmm6_d zmm10_d;
xor zmm6_e@uint32 zmm6_e zmm10_e; xor zmm6_f@uint32 zmm6_f zmm10_f;
(* vpxord %zmm11,%zmm7,%zmm7                       #! PC = 0x5555555581d6 *)
xor zmm7_0@uint32 zmm7_0 zmm11_0; xor zmm7_1@uint32 zmm7_1 zmm11_1;
xor zmm7_2@uint32 zmm7_2 zmm11_2; xor zmm7_3@uint32 zmm7_3 zmm11_3;
xor zmm7_4@uint32 zmm7_4 zmm11_4; xor zmm7_5@uint32 zmm7_5 zmm11_5;
xor zmm7_6@uint32 zmm7_6 zmm11_6; xor zmm7_7@uint32 zmm7_7 zmm11_7;
xor zmm7_8@uint32 zmm7_8 zmm11_8; xor zmm7_9@uint32 zmm7_9 zmm11_9;
xor zmm7_a@uint32 zmm7_a zmm11_a; xor zmm7_b@uint32 zmm7_b zmm11_b;
xor zmm7_c@uint32 zmm7_c zmm11_c; xor zmm7_d@uint32 zmm7_d zmm11_d;
xor zmm7_e@uint32 zmm7_e zmm11_e; xor zmm7_f@uint32 zmm7_f zmm11_f;
(* vprold $0xc,%zmm4,%zmm4                         #! PC = 0x5555555581dc *)
rol zmm4_0@uint32 zmm4_0 0xc; rol zmm4_1@uint32 zmm4_1 0xc;
rol zmm4_2@uint32 zmm4_2 0xc; rol zmm4_3@uint32 zmm4_3 0xc;
rol zmm4_4@uint32 zmm4_4 0xc; rol zmm4_5@uint32 zmm4_5 0xc;
rol zmm4_6@uint32 zmm4_6 0xc; rol zmm4_7@uint32 zmm4_7 0xc;
rol zmm4_8@uint32 zmm4_8 0xc; rol zmm4_9@uint32 zmm4_9 0xc;
rol zmm4_a@uint32 zmm4_a 0xc; rol zmm4_b@uint32 zmm4_b 0xc;
rol zmm4_c@uint32 zmm4_c 0xc; rol zmm4_d@uint32 zmm4_d 0xc;
rol zmm4_e@uint32 zmm4_e 0xc; rol zmm4_f@uint32 zmm4_f 0xc;
(* vprold $0xc,%zmm5,%zmm5                         #! PC = 0x5555555581e3 *)
rol zmm5_0@uint32 zmm5_0 0xc; rol zmm5_1@uint32 zmm5_1 0xc;
rol zmm5_2@uint32 zmm5_2 0xc; rol zmm5_3@uint32 zmm5_3 0xc;
rol zmm5_4@uint32 zmm5_4 0xc; rol zmm5_5@uint32 zmm5_5 0xc;
rol zmm5_6@uint32 zmm5_6 0xc; rol zmm5_7@uint32 zmm5_7 0xc;
rol zmm5_8@uint32 zmm5_8 0xc; rol zmm5_9@uint32 zmm5_9 0xc;
rol zmm5_a@uint32 zmm5_a 0xc; rol zmm5_b@uint32 zmm5_b 0xc;
rol zmm5_c@uint32 zmm5_c 0xc; rol zmm5_d@uint32 zmm5_d 0xc;
rol zmm5_e@uint32 zmm5_e 0xc; rol zmm5_f@uint32 zmm5_f 0xc;
(* vprold $0xc,%zmm6,%zmm6                         #! PC = 0x5555555581ea *)
rol zmm6_0@uint32 zmm6_0 0xc; rol zmm6_1@uint32 zmm6_1 0xc;
rol zmm6_2@uint32 zmm6_2 0xc; rol zmm6_3@uint32 zmm6_3 0xc;
rol zmm6_4@uint32 zmm6_4 0xc; rol zmm6_5@uint32 zmm6_5 0xc;
rol zmm6_6@uint32 zmm6_6 0xc; rol zmm6_7@uint32 zmm6_7 0xc;
rol zmm6_8@uint32 zmm6_8 0xc; rol zmm6_9@uint32 zmm6_9 0xc;
rol zmm6_a@uint32 zmm6_a 0xc; rol zmm6_b@uint32 zmm6_b 0xc;
rol zmm6_c@uint32 zmm6_c 0xc; rol zmm6_d@uint32 zmm6_d 0xc;
rol zmm6_e@uint32 zmm6_e 0xc; rol zmm6_f@uint32 zmm6_f 0xc;
(* vprold $0xc,%zmm7,%zmm7                         #! PC = 0x5555555581f1 *)
rol zmm7_0@uint32 zmm7_0 0xc; rol zmm7_1@uint32 zmm7_1 0xc;
rol zmm7_2@uint32 zmm7_2 0xc; rol zmm7_3@uint32 zmm7_3 0xc;
rol zmm7_4@uint32 zmm7_4 0xc; rol zmm7_5@uint32 zmm7_5 0xc;
rol zmm7_6@uint32 zmm7_6 0xc; rol zmm7_7@uint32 zmm7_7 0xc;
rol zmm7_8@uint32 zmm7_8 0xc; rol zmm7_9@uint32 zmm7_9 0xc;
rol zmm7_a@uint32 zmm7_a 0xc; rol zmm7_b@uint32 zmm7_b 0xc;
rol zmm7_c@uint32 zmm7_c 0xc; rol zmm7_d@uint32 zmm7_d 0xc;
rol zmm7_e@uint32 zmm7_e 0xc; rol zmm7_f@uint32 zmm7_f 0xc;
(* vpaddd %zmm4,%zmm0,%zmm0                        #! PC = 0x5555555581f8 *)
adds dc zmm0_0 zmm0_0 zmm4_0; adds dc zmm0_1 zmm0_1 zmm4_1;
adds dc zmm0_2 zmm0_2 zmm4_2; adds dc zmm0_3 zmm0_3 zmm4_3;
adds dc zmm0_4 zmm0_4 zmm4_4; adds dc zmm0_5 zmm0_5 zmm4_5;
adds dc zmm0_6 zmm0_6 zmm4_6; adds dc zmm0_7 zmm0_7 zmm4_7;
adds dc zmm0_8 zmm0_8 zmm4_8; adds dc zmm0_9 zmm0_9 zmm4_9;
adds dc zmm0_a zmm0_a zmm4_a; adds dc zmm0_b zmm0_b zmm4_b;
adds dc zmm0_c zmm0_c zmm4_c; adds dc zmm0_d zmm0_d zmm4_d;
adds dc zmm0_e zmm0_e zmm4_e; adds dc zmm0_f zmm0_f zmm4_f;
(* vpaddd %zmm5,%zmm1,%zmm1                        #! PC = 0x5555555581fe *)
adds dc zmm1_0 zmm1_0 zmm5_0; adds dc zmm1_1 zmm1_1 zmm5_1;
adds dc zmm1_2 zmm1_2 zmm5_2; adds dc zmm1_3 zmm1_3 zmm5_3;
adds dc zmm1_4 zmm1_4 zmm5_4; adds dc zmm1_5 zmm1_5 zmm5_5;
adds dc zmm1_6 zmm1_6 zmm5_6; adds dc zmm1_7 zmm1_7 zmm5_7;
adds dc zmm1_8 zmm1_8 zmm5_8; adds dc zmm1_9 zmm1_9 zmm5_9;
adds dc zmm1_a zmm1_a zmm5_a; adds dc zmm1_b zmm1_b zmm5_b;
adds dc zmm1_c zmm1_c zmm5_c; adds dc zmm1_d zmm1_d zmm5_d;
adds dc zmm1_e zmm1_e zmm5_e; adds dc zmm1_f zmm1_f zmm5_f;
(* vpaddd %zmm6,%zmm2,%zmm2                        #! PC = 0x555555558204 *)
adds dc zmm2_0 zmm2_0 zmm6_0; adds dc zmm2_1 zmm2_1 zmm6_1;
adds dc zmm2_2 zmm2_2 zmm6_2; adds dc zmm2_3 zmm2_3 zmm6_3;
adds dc zmm2_4 zmm2_4 zmm6_4; adds dc zmm2_5 zmm2_5 zmm6_5;
adds dc zmm2_6 zmm2_6 zmm6_6; adds dc zmm2_7 zmm2_7 zmm6_7;
adds dc zmm2_8 zmm2_8 zmm6_8; adds dc zmm2_9 zmm2_9 zmm6_9;
adds dc zmm2_a zmm2_a zmm6_a; adds dc zmm2_b zmm2_b zmm6_b;
adds dc zmm2_c zmm2_c zmm6_c; adds dc zmm2_d zmm2_d zmm6_d;
adds dc zmm2_e zmm2_e zmm6_e; adds dc zmm2_f zmm2_f zmm6_f;
(* vpaddd %zmm7,%zmm3,%zmm3                        #! PC = 0x55555555820a *)
adds dc zmm3_0 zmm3_0 zmm7_0; adds dc zmm3_1 zmm3_1 zmm7_1;
adds dc zmm3_2 zmm3_2 zmm7_2; adds dc zmm3_3 zmm3_3 zmm7_3;
adds dc zmm3_4 zmm3_4 zmm7_4; adds dc zmm3_5 zmm3_5 zmm7_5;
adds dc zmm3_6 zmm3_6 zmm7_6; adds dc zmm3_7 zmm3_7 zmm7_7;
adds dc zmm3_8 zmm3_8 zmm7_8; adds dc zmm3_9 zmm3_9 zmm7_9;
adds dc zmm3_a zmm3_a zmm7_a; adds dc zmm3_b zmm3_b zmm7_b;
adds dc zmm3_c zmm3_c zmm7_c; adds dc zmm3_d zmm3_d zmm7_d;
adds dc zmm3_e zmm3_e zmm7_e; adds dc zmm3_f zmm3_f zmm7_f;
(* vpxord %zmm0,%zmm12,%zmm12                      #! PC = 0x555555558210 *)
xor zmm12_0@uint32 zmm12_0 zmm0_0; xor zmm12_1@uint32 zmm12_1 zmm0_1;
xor zmm12_2@uint32 zmm12_2 zmm0_2; xor zmm12_3@uint32 zmm12_3 zmm0_3;
xor zmm12_4@uint32 zmm12_4 zmm0_4; xor zmm12_5@uint32 zmm12_5 zmm0_5;
xor zmm12_6@uint32 zmm12_6 zmm0_6; xor zmm12_7@uint32 zmm12_7 zmm0_7;
xor zmm12_8@uint32 zmm12_8 zmm0_8; xor zmm12_9@uint32 zmm12_9 zmm0_9;
xor zmm12_a@uint32 zmm12_a zmm0_a; xor zmm12_b@uint32 zmm12_b zmm0_b;
xor zmm12_c@uint32 zmm12_c zmm0_c; xor zmm12_d@uint32 zmm12_d zmm0_d;
xor zmm12_e@uint32 zmm12_e zmm0_e; xor zmm12_f@uint32 zmm12_f zmm0_f;
(* vpxord %zmm1,%zmm13,%zmm13                      #! PC = 0x555555558216 *)
xor zmm13_0@uint32 zmm13_0 zmm1_0; xor zmm13_1@uint32 zmm13_1 zmm1_1;
xor zmm13_2@uint32 zmm13_2 zmm1_2; xor zmm13_3@uint32 zmm13_3 zmm1_3;
xor zmm13_4@uint32 zmm13_4 zmm1_4; xor zmm13_5@uint32 zmm13_5 zmm1_5;
xor zmm13_6@uint32 zmm13_6 zmm1_6; xor zmm13_7@uint32 zmm13_7 zmm1_7;
xor zmm13_8@uint32 zmm13_8 zmm1_8; xor zmm13_9@uint32 zmm13_9 zmm1_9;
xor zmm13_a@uint32 zmm13_a zmm1_a; xor zmm13_b@uint32 zmm13_b zmm1_b;
xor zmm13_c@uint32 zmm13_c zmm1_c; xor zmm13_d@uint32 zmm13_d zmm1_d;
xor zmm13_e@uint32 zmm13_e zmm1_e; xor zmm13_f@uint32 zmm13_f zmm1_f;
(* vpxord %zmm2,%zmm14,%zmm14                      #! PC = 0x55555555821c *)
xor zmm14_0@uint32 zmm14_0 zmm2_0; xor zmm14_1@uint32 zmm14_1 zmm2_1;
xor zmm14_2@uint32 zmm14_2 zmm2_2; xor zmm14_3@uint32 zmm14_3 zmm2_3;
xor zmm14_4@uint32 zmm14_4 zmm2_4; xor zmm14_5@uint32 zmm14_5 zmm2_5;
xor zmm14_6@uint32 zmm14_6 zmm2_6; xor zmm14_7@uint32 zmm14_7 zmm2_7;
xor zmm14_8@uint32 zmm14_8 zmm2_8; xor zmm14_9@uint32 zmm14_9 zmm2_9;
xor zmm14_a@uint32 zmm14_a zmm2_a; xor zmm14_b@uint32 zmm14_b zmm2_b;
xor zmm14_c@uint32 zmm14_c zmm2_c; xor zmm14_d@uint32 zmm14_d zmm2_d;
xor zmm14_e@uint32 zmm14_e zmm2_e; xor zmm14_f@uint32 zmm14_f zmm2_f;
(* vpxord %zmm3,%zmm15,%zmm15                      #! PC = 0x555555558222 *)
xor zmm15_0@uint32 zmm15_0 zmm3_0; xor zmm15_1@uint32 zmm15_1 zmm3_1;
xor zmm15_2@uint32 zmm15_2 zmm3_2; xor zmm15_3@uint32 zmm15_3 zmm3_3;
xor zmm15_4@uint32 zmm15_4 zmm3_4; xor zmm15_5@uint32 zmm15_5 zmm3_5;
xor zmm15_6@uint32 zmm15_6 zmm3_6; xor zmm15_7@uint32 zmm15_7 zmm3_7;
xor zmm15_8@uint32 zmm15_8 zmm3_8; xor zmm15_9@uint32 zmm15_9 zmm3_9;
xor zmm15_a@uint32 zmm15_a zmm3_a; xor zmm15_b@uint32 zmm15_b zmm3_b;
xor zmm15_c@uint32 zmm15_c zmm3_c; xor zmm15_d@uint32 zmm15_d zmm3_d;
xor zmm15_e@uint32 zmm15_e zmm3_e; xor zmm15_f@uint32 zmm15_f zmm3_f;
(* vprold $0x8,%zmm12,%zmm12                       #! PC = 0x555555558228 *)
rol zmm12_0@uint32 zmm12_0 0x8; rol zmm12_1@uint32 zmm12_1 0x8;
rol zmm12_2@uint32 zmm12_2 0x8; rol zmm12_3@uint32 zmm12_3 0x8;
rol zmm12_4@uint32 zmm12_4 0x8; rol zmm12_5@uint32 zmm12_5 0x8;
rol zmm12_6@uint32 zmm12_6 0x8; rol zmm12_7@uint32 zmm12_7 0x8;
rol zmm12_8@uint32 zmm12_8 0x8; rol zmm12_9@uint32 zmm12_9 0x8;
rol zmm12_a@uint32 zmm12_a 0x8; rol zmm12_b@uint32 zmm12_b 0x8;
rol zmm12_c@uint32 zmm12_c 0x8; rol zmm12_d@uint32 zmm12_d 0x8;
rol zmm12_e@uint32 zmm12_e 0x8; rol zmm12_f@uint32 zmm12_f 0x8;
(* vprold $0x8,%zmm13,%zmm13                       #! PC = 0x55555555822f *)
rol zmm13_0@uint32 zmm13_0 0x8; rol zmm13_1@uint32 zmm13_1 0x8;
rol zmm13_2@uint32 zmm13_2 0x8; rol zmm13_3@uint32 zmm13_3 0x8;
rol zmm13_4@uint32 zmm13_4 0x8; rol zmm13_5@uint32 zmm13_5 0x8;
rol zmm13_6@uint32 zmm13_6 0x8; rol zmm13_7@uint32 zmm13_7 0x8;
rol zmm13_8@uint32 zmm13_8 0x8; rol zmm13_9@uint32 zmm13_9 0x8;
rol zmm13_a@uint32 zmm13_a 0x8; rol zmm13_b@uint32 zmm13_b 0x8;
rol zmm13_c@uint32 zmm13_c 0x8; rol zmm13_d@uint32 zmm13_d 0x8;
rol zmm13_e@uint32 zmm13_e 0x8; rol zmm13_f@uint32 zmm13_f 0x8;
(* vprold $0x8,%zmm14,%zmm14                       #! PC = 0x555555558236 *)
rol zmm14_0@uint32 zmm14_0 0x8; rol zmm14_1@uint32 zmm14_1 0x8;
rol zmm14_2@uint32 zmm14_2 0x8; rol zmm14_3@uint32 zmm14_3 0x8;
rol zmm14_4@uint32 zmm14_4 0x8; rol zmm14_5@uint32 zmm14_5 0x8;
rol zmm14_6@uint32 zmm14_6 0x8; rol zmm14_7@uint32 zmm14_7 0x8;
rol zmm14_8@uint32 zmm14_8 0x8; rol zmm14_9@uint32 zmm14_9 0x8;
rol zmm14_a@uint32 zmm14_a 0x8; rol zmm14_b@uint32 zmm14_b 0x8;
rol zmm14_c@uint32 zmm14_c 0x8; rol zmm14_d@uint32 zmm14_d 0x8;
rol zmm14_e@uint32 zmm14_e 0x8; rol zmm14_f@uint32 zmm14_f 0x8;
(* vprold $0x8,%zmm15,%zmm15                       #! PC = 0x55555555823d *)
rol zmm15_0@uint32 zmm15_0 0x8; rol zmm15_1@uint32 zmm15_1 0x8;
rol zmm15_2@uint32 zmm15_2 0x8; rol zmm15_3@uint32 zmm15_3 0x8;
rol zmm15_4@uint32 zmm15_4 0x8; rol zmm15_5@uint32 zmm15_5 0x8;
rol zmm15_6@uint32 zmm15_6 0x8; rol zmm15_7@uint32 zmm15_7 0x8;
rol zmm15_8@uint32 zmm15_8 0x8; rol zmm15_9@uint32 zmm15_9 0x8;
rol zmm15_a@uint32 zmm15_a 0x8; rol zmm15_b@uint32 zmm15_b 0x8;
rol zmm15_c@uint32 zmm15_c 0x8; rol zmm15_d@uint32 zmm15_d 0x8;
rol zmm15_e@uint32 zmm15_e 0x8; rol zmm15_f@uint32 zmm15_f 0x8;
(* vpaddd %zmm12,%zmm8,%zmm8                       #! PC = 0x555555558244 *)
adds dc zmm8_0 zmm8_0 zmm12_0; adds dc zmm8_1 zmm8_1 zmm12_1;
adds dc zmm8_2 zmm8_2 zmm12_2; adds dc zmm8_3 zmm8_3 zmm12_3;
adds dc zmm8_4 zmm8_4 zmm12_4; adds dc zmm8_5 zmm8_5 zmm12_5;
adds dc zmm8_6 zmm8_6 zmm12_6; adds dc zmm8_7 zmm8_7 zmm12_7;
adds dc zmm8_8 zmm8_8 zmm12_8; adds dc zmm8_9 zmm8_9 zmm12_9;
adds dc zmm8_a zmm8_a zmm12_a; adds dc zmm8_b zmm8_b zmm12_b;
adds dc zmm8_c zmm8_c zmm12_c; adds dc zmm8_d zmm8_d zmm12_d;
adds dc zmm8_e zmm8_e zmm12_e; adds dc zmm8_f zmm8_f zmm12_f;
(* vpaddd %zmm13,%zmm9,%zmm9                       #! PC = 0x55555555824a *)
adds dc zmm9_0 zmm9_0 zmm13_0; adds dc zmm9_1 zmm9_1 zmm13_1;
adds dc zmm9_2 zmm9_2 zmm13_2; adds dc zmm9_3 zmm9_3 zmm13_3;
adds dc zmm9_4 zmm9_4 zmm13_4; adds dc zmm9_5 zmm9_5 zmm13_5;
adds dc zmm9_6 zmm9_6 zmm13_6; adds dc zmm9_7 zmm9_7 zmm13_7;
adds dc zmm9_8 zmm9_8 zmm13_8; adds dc zmm9_9 zmm9_9 zmm13_9;
adds dc zmm9_a zmm9_a zmm13_a; adds dc zmm9_b zmm9_b zmm13_b;
adds dc zmm9_c zmm9_c zmm13_c; adds dc zmm9_d zmm9_d zmm13_d;
adds dc zmm9_e zmm9_e zmm13_e; adds dc zmm9_f zmm9_f zmm13_f;
(* vpaddd %zmm14,%zmm10,%zmm10                     #! PC = 0x555555558250 *)
adds dc zmm10_0 zmm10_0 zmm14_0; adds dc zmm10_1 zmm10_1 zmm14_1;
adds dc zmm10_2 zmm10_2 zmm14_2; adds dc zmm10_3 zmm10_3 zmm14_3;
adds dc zmm10_4 zmm10_4 zmm14_4; adds dc zmm10_5 zmm10_5 zmm14_5;
adds dc zmm10_6 zmm10_6 zmm14_6; adds dc zmm10_7 zmm10_7 zmm14_7;
adds dc zmm10_8 zmm10_8 zmm14_8; adds dc zmm10_9 zmm10_9 zmm14_9;
adds dc zmm10_a zmm10_a zmm14_a; adds dc zmm10_b zmm10_b zmm14_b;
adds dc zmm10_c zmm10_c zmm14_c; adds dc zmm10_d zmm10_d zmm14_d;
adds dc zmm10_e zmm10_e zmm14_e; adds dc zmm10_f zmm10_f zmm14_f;
(* vpaddd %zmm15,%zmm11,%zmm11                     #! PC = 0x555555558256 *)
adds dc zmm11_0 zmm11_0 zmm15_0; adds dc zmm11_1 zmm11_1 zmm15_1;
adds dc zmm11_2 zmm11_2 zmm15_2; adds dc zmm11_3 zmm11_3 zmm15_3;
adds dc zmm11_4 zmm11_4 zmm15_4; adds dc zmm11_5 zmm11_5 zmm15_5;
adds dc zmm11_6 zmm11_6 zmm15_6; adds dc zmm11_7 zmm11_7 zmm15_7;
adds dc zmm11_8 zmm11_8 zmm15_8; adds dc zmm11_9 zmm11_9 zmm15_9;
adds dc zmm11_a zmm11_a zmm15_a; adds dc zmm11_b zmm11_b zmm15_b;
adds dc zmm11_c zmm11_c zmm15_c; adds dc zmm11_d zmm11_d zmm15_d;
adds dc zmm11_e zmm11_e zmm15_e; adds dc zmm11_f zmm11_f zmm15_f;
(* vpxord %zmm8,%zmm4,%zmm4                        #! PC = 0x55555555825c *)
xor zmm4_0@uint32 zmm4_0 zmm8_0; xor zmm4_1@uint32 zmm4_1 zmm8_1;
xor zmm4_2@uint32 zmm4_2 zmm8_2; xor zmm4_3@uint32 zmm4_3 zmm8_3;
xor zmm4_4@uint32 zmm4_4 zmm8_4; xor zmm4_5@uint32 zmm4_5 zmm8_5;
xor zmm4_6@uint32 zmm4_6 zmm8_6; xor zmm4_7@uint32 zmm4_7 zmm8_7;
xor zmm4_8@uint32 zmm4_8 zmm8_8; xor zmm4_9@uint32 zmm4_9 zmm8_9;
xor zmm4_a@uint32 zmm4_a zmm8_a; xor zmm4_b@uint32 zmm4_b zmm8_b;
xor zmm4_c@uint32 zmm4_c zmm8_c; xor zmm4_d@uint32 zmm4_d zmm8_d;
xor zmm4_e@uint32 zmm4_e zmm8_e; xor zmm4_f@uint32 zmm4_f zmm8_f;
(* vpxord %zmm9,%zmm5,%zmm5                        #! PC = 0x555555558262 *)
xor zmm5_0@uint32 zmm5_0 zmm9_0; xor zmm5_1@uint32 zmm5_1 zmm9_1;
xor zmm5_2@uint32 zmm5_2 zmm9_2; xor zmm5_3@uint32 zmm5_3 zmm9_3;
xor zmm5_4@uint32 zmm5_4 zmm9_4; xor zmm5_5@uint32 zmm5_5 zmm9_5;
xor zmm5_6@uint32 zmm5_6 zmm9_6; xor zmm5_7@uint32 zmm5_7 zmm9_7;
xor zmm5_8@uint32 zmm5_8 zmm9_8; xor zmm5_9@uint32 zmm5_9 zmm9_9;
xor zmm5_a@uint32 zmm5_a zmm9_a; xor zmm5_b@uint32 zmm5_b zmm9_b;
xor zmm5_c@uint32 zmm5_c zmm9_c; xor zmm5_d@uint32 zmm5_d zmm9_d;
xor zmm5_e@uint32 zmm5_e zmm9_e; xor zmm5_f@uint32 zmm5_f zmm9_f;
(* vpxord %zmm10,%zmm6,%zmm6                       #! PC = 0x555555558268 *)
xor zmm6_0@uint32 zmm6_0 zmm10_0; xor zmm6_1@uint32 zmm6_1 zmm10_1;
xor zmm6_2@uint32 zmm6_2 zmm10_2; xor zmm6_3@uint32 zmm6_3 zmm10_3;
xor zmm6_4@uint32 zmm6_4 zmm10_4; xor zmm6_5@uint32 zmm6_5 zmm10_5;
xor zmm6_6@uint32 zmm6_6 zmm10_6; xor zmm6_7@uint32 zmm6_7 zmm10_7;
xor zmm6_8@uint32 zmm6_8 zmm10_8; xor zmm6_9@uint32 zmm6_9 zmm10_9;
xor zmm6_a@uint32 zmm6_a zmm10_a; xor zmm6_b@uint32 zmm6_b zmm10_b;
xor zmm6_c@uint32 zmm6_c zmm10_c; xor zmm6_d@uint32 zmm6_d zmm10_d;
xor zmm6_e@uint32 zmm6_e zmm10_e; xor zmm6_f@uint32 zmm6_f zmm10_f;
(* vpxord %zmm11,%zmm7,%zmm7                       #! PC = 0x55555555826e *)
xor zmm7_0@uint32 zmm7_0 zmm11_0; xor zmm7_1@uint32 zmm7_1 zmm11_1;
xor zmm7_2@uint32 zmm7_2 zmm11_2; xor zmm7_3@uint32 zmm7_3 zmm11_3;
xor zmm7_4@uint32 zmm7_4 zmm11_4; xor zmm7_5@uint32 zmm7_5 zmm11_5;
xor zmm7_6@uint32 zmm7_6 zmm11_6; xor zmm7_7@uint32 zmm7_7 zmm11_7;
xor zmm7_8@uint32 zmm7_8 zmm11_8; xor zmm7_9@uint32 zmm7_9 zmm11_9;
xor zmm7_a@uint32 zmm7_a zmm11_a; xor zmm7_b@uint32 zmm7_b zmm11_b;
xor zmm7_c@uint32 zmm7_c zmm11_c; xor zmm7_d@uint32 zmm7_d zmm11_d;
xor zmm7_e@uint32 zmm7_e zmm11_e; xor zmm7_f@uint32 zmm7_f zmm11_f;
(* vprold $0x7,%zmm4,%zmm4                         #! PC = 0x555555558274 *)
rol zmm4_0@uint32 zmm4_0 0x7; rol zmm4_1@uint32 zmm4_1 0x7;
rol zmm4_2@uint32 zmm4_2 0x7; rol zmm4_3@uint32 zmm4_3 0x7;
rol zmm4_4@uint32 zmm4_4 0x7; rol zmm4_5@uint32 zmm4_5 0x7;
rol zmm4_6@uint32 zmm4_6 0x7; rol zmm4_7@uint32 zmm4_7 0x7;
rol zmm4_8@uint32 zmm4_8 0x7; rol zmm4_9@uint32 zmm4_9 0x7;
rol zmm4_a@uint32 zmm4_a 0x7; rol zmm4_b@uint32 zmm4_b 0x7;
rol zmm4_c@uint32 zmm4_c 0x7; rol zmm4_d@uint32 zmm4_d 0x7;
rol zmm4_e@uint32 zmm4_e 0x7; rol zmm4_f@uint32 zmm4_f 0x7;
(* vprold $0x7,%zmm5,%zmm5                         #! PC = 0x55555555827b *)
rol zmm5_0@uint32 zmm5_0 0x7; rol zmm5_1@uint32 zmm5_1 0x7;
rol zmm5_2@uint32 zmm5_2 0x7; rol zmm5_3@uint32 zmm5_3 0x7;
rol zmm5_4@uint32 zmm5_4 0x7; rol zmm5_5@uint32 zmm5_5 0x7;
rol zmm5_6@uint32 zmm5_6 0x7; rol zmm5_7@uint32 zmm5_7 0x7;
rol zmm5_8@uint32 zmm5_8 0x7; rol zmm5_9@uint32 zmm5_9 0x7;
rol zmm5_a@uint32 zmm5_a 0x7; rol zmm5_b@uint32 zmm5_b 0x7;
rol zmm5_c@uint32 zmm5_c 0x7; rol zmm5_d@uint32 zmm5_d 0x7;
rol zmm5_e@uint32 zmm5_e 0x7; rol zmm5_f@uint32 zmm5_f 0x7;
(* vprold $0x7,%zmm6,%zmm6                         #! PC = 0x555555558282 *)
rol zmm6_0@uint32 zmm6_0 0x7; rol zmm6_1@uint32 zmm6_1 0x7;
rol zmm6_2@uint32 zmm6_2 0x7; rol zmm6_3@uint32 zmm6_3 0x7;
rol zmm6_4@uint32 zmm6_4 0x7; rol zmm6_5@uint32 zmm6_5 0x7;
rol zmm6_6@uint32 zmm6_6 0x7; rol zmm6_7@uint32 zmm6_7 0x7;
rol zmm6_8@uint32 zmm6_8 0x7; rol zmm6_9@uint32 zmm6_9 0x7;
rol zmm6_a@uint32 zmm6_a 0x7; rol zmm6_b@uint32 zmm6_b 0x7;
rol zmm6_c@uint32 zmm6_c 0x7; rol zmm6_d@uint32 zmm6_d 0x7;
rol zmm6_e@uint32 zmm6_e 0x7; rol zmm6_f@uint32 zmm6_f 0x7;
(* vprold $0x7,%zmm7,%zmm7                         #! PC = 0x555555558289 *)
rol zmm7_0@uint32 zmm7_0 0x7; rol zmm7_1@uint32 zmm7_1 0x7;
rol zmm7_2@uint32 zmm7_2 0x7; rol zmm7_3@uint32 zmm7_3 0x7;
rol zmm7_4@uint32 zmm7_4 0x7; rol zmm7_5@uint32 zmm7_5 0x7;
rol zmm7_6@uint32 zmm7_6 0x7; rol zmm7_7@uint32 zmm7_7 0x7;
rol zmm7_8@uint32 zmm7_8 0x7; rol zmm7_9@uint32 zmm7_9 0x7;
rol zmm7_a@uint32 zmm7_a 0x7; rol zmm7_b@uint32 zmm7_b 0x7;
rol zmm7_c@uint32 zmm7_c 0x7; rol zmm7_d@uint32 zmm7_d 0x7;
rol zmm7_e@uint32 zmm7_e 0x7; rol zmm7_f@uint32 zmm7_f 0x7;
(* vpaddd %zmm5,%zmm0,%zmm0                        #! PC = 0x555555558290 *)
adds dc zmm0_0 zmm0_0 zmm5_0; adds dc zmm0_1 zmm0_1 zmm5_1;
adds dc zmm0_2 zmm0_2 zmm5_2; adds dc zmm0_3 zmm0_3 zmm5_3;
adds dc zmm0_4 zmm0_4 zmm5_4; adds dc zmm0_5 zmm0_5 zmm5_5;
adds dc zmm0_6 zmm0_6 zmm5_6; adds dc zmm0_7 zmm0_7 zmm5_7;
adds dc zmm0_8 zmm0_8 zmm5_8; adds dc zmm0_9 zmm0_9 zmm5_9;
adds dc zmm0_a zmm0_a zmm5_a; adds dc zmm0_b zmm0_b zmm5_b;
adds dc zmm0_c zmm0_c zmm5_c; adds dc zmm0_d zmm0_d zmm5_d;
adds dc zmm0_e zmm0_e zmm5_e; adds dc zmm0_f zmm0_f zmm5_f;
(* vpaddd %zmm6,%zmm1,%zmm1                        #! PC = 0x555555558296 *)
adds dc zmm1_0 zmm1_0 zmm6_0; adds dc zmm1_1 zmm1_1 zmm6_1;
adds dc zmm1_2 zmm1_2 zmm6_2; adds dc zmm1_3 zmm1_3 zmm6_3;
adds dc zmm1_4 zmm1_4 zmm6_4; adds dc zmm1_5 zmm1_5 zmm6_5;
adds dc zmm1_6 zmm1_6 zmm6_6; adds dc zmm1_7 zmm1_7 zmm6_7;
adds dc zmm1_8 zmm1_8 zmm6_8; adds dc zmm1_9 zmm1_9 zmm6_9;
adds dc zmm1_a zmm1_a zmm6_a; adds dc zmm1_b zmm1_b zmm6_b;
adds dc zmm1_c zmm1_c zmm6_c; adds dc zmm1_d zmm1_d zmm6_d;
adds dc zmm1_e zmm1_e zmm6_e; adds dc zmm1_f zmm1_f zmm6_f;
(* vpaddd %zmm7,%zmm2,%zmm2                        #! PC = 0x55555555829c *)
adds dc zmm2_0 zmm2_0 zmm7_0; adds dc zmm2_1 zmm2_1 zmm7_1;
adds dc zmm2_2 zmm2_2 zmm7_2; adds dc zmm2_3 zmm2_3 zmm7_3;
adds dc zmm2_4 zmm2_4 zmm7_4; adds dc zmm2_5 zmm2_5 zmm7_5;
adds dc zmm2_6 zmm2_6 zmm7_6; adds dc zmm2_7 zmm2_7 zmm7_7;
adds dc zmm2_8 zmm2_8 zmm7_8; adds dc zmm2_9 zmm2_9 zmm7_9;
adds dc zmm2_a zmm2_a zmm7_a; adds dc zmm2_b zmm2_b zmm7_b;
adds dc zmm2_c zmm2_c zmm7_c; adds dc zmm2_d zmm2_d zmm7_d;
adds dc zmm2_e zmm2_e zmm7_e; adds dc zmm2_f zmm2_f zmm7_f;
(* vpaddd %zmm4,%zmm3,%zmm3                        #! PC = 0x5555555582a2 *)
adds dc zmm3_0 zmm3_0 zmm4_0; adds dc zmm3_1 zmm3_1 zmm4_1;
adds dc zmm3_2 zmm3_2 zmm4_2; adds dc zmm3_3 zmm3_3 zmm4_3;
adds dc zmm3_4 zmm3_4 zmm4_4; adds dc zmm3_5 zmm3_5 zmm4_5;
adds dc zmm3_6 zmm3_6 zmm4_6; adds dc zmm3_7 zmm3_7 zmm4_7;
adds dc zmm3_8 zmm3_8 zmm4_8; adds dc zmm3_9 zmm3_9 zmm4_9;
adds dc zmm3_a zmm3_a zmm4_a; adds dc zmm3_b zmm3_b zmm4_b;
adds dc zmm3_c zmm3_c zmm4_c; adds dc zmm3_d zmm3_d zmm4_d;
adds dc zmm3_e zmm3_e zmm4_e; adds dc zmm3_f zmm3_f zmm4_f;
(* vpxord %zmm0,%zmm15,%zmm15                      #! PC = 0x5555555582a8 *)
xor zmm15_0@uint32 zmm15_0 zmm0_0; xor zmm15_1@uint32 zmm15_1 zmm0_1;
xor zmm15_2@uint32 zmm15_2 zmm0_2; xor zmm15_3@uint32 zmm15_3 zmm0_3;
xor zmm15_4@uint32 zmm15_4 zmm0_4; xor zmm15_5@uint32 zmm15_5 zmm0_5;
xor zmm15_6@uint32 zmm15_6 zmm0_6; xor zmm15_7@uint32 zmm15_7 zmm0_7;
xor zmm15_8@uint32 zmm15_8 zmm0_8; xor zmm15_9@uint32 zmm15_9 zmm0_9;
xor zmm15_a@uint32 zmm15_a zmm0_a; xor zmm15_b@uint32 zmm15_b zmm0_b;
xor zmm15_c@uint32 zmm15_c zmm0_c; xor zmm15_d@uint32 zmm15_d zmm0_d;
xor zmm15_e@uint32 zmm15_e zmm0_e; xor zmm15_f@uint32 zmm15_f zmm0_f;
(* vpxord %zmm1,%zmm12,%zmm12                      #! PC = 0x5555555582ae *)
xor zmm12_0@uint32 zmm12_0 zmm1_0; xor zmm12_1@uint32 zmm12_1 zmm1_1;
xor zmm12_2@uint32 zmm12_2 zmm1_2; xor zmm12_3@uint32 zmm12_3 zmm1_3;
xor zmm12_4@uint32 zmm12_4 zmm1_4; xor zmm12_5@uint32 zmm12_5 zmm1_5;
xor zmm12_6@uint32 zmm12_6 zmm1_6; xor zmm12_7@uint32 zmm12_7 zmm1_7;
xor zmm12_8@uint32 zmm12_8 zmm1_8; xor zmm12_9@uint32 zmm12_9 zmm1_9;
xor zmm12_a@uint32 zmm12_a zmm1_a; xor zmm12_b@uint32 zmm12_b zmm1_b;
xor zmm12_c@uint32 zmm12_c zmm1_c; xor zmm12_d@uint32 zmm12_d zmm1_d;
xor zmm12_e@uint32 zmm12_e zmm1_e; xor zmm12_f@uint32 zmm12_f zmm1_f;
(* vpxord %zmm2,%zmm13,%zmm13                      #! PC = 0x5555555582b4 *)
xor zmm13_0@uint32 zmm13_0 zmm2_0; xor zmm13_1@uint32 zmm13_1 zmm2_1;
xor zmm13_2@uint32 zmm13_2 zmm2_2; xor zmm13_3@uint32 zmm13_3 zmm2_3;
xor zmm13_4@uint32 zmm13_4 zmm2_4; xor zmm13_5@uint32 zmm13_5 zmm2_5;
xor zmm13_6@uint32 zmm13_6 zmm2_6; xor zmm13_7@uint32 zmm13_7 zmm2_7;
xor zmm13_8@uint32 zmm13_8 zmm2_8; xor zmm13_9@uint32 zmm13_9 zmm2_9;
xor zmm13_a@uint32 zmm13_a zmm2_a; xor zmm13_b@uint32 zmm13_b zmm2_b;
xor zmm13_c@uint32 zmm13_c zmm2_c; xor zmm13_d@uint32 zmm13_d zmm2_d;
xor zmm13_e@uint32 zmm13_e zmm2_e; xor zmm13_f@uint32 zmm13_f zmm2_f;
(* vpxord %zmm3,%zmm14,%zmm14                      #! PC = 0x5555555582ba *)
xor zmm14_0@uint32 zmm14_0 zmm3_0; xor zmm14_1@uint32 zmm14_1 zmm3_1;
xor zmm14_2@uint32 zmm14_2 zmm3_2; xor zmm14_3@uint32 zmm14_3 zmm3_3;
xor zmm14_4@uint32 zmm14_4 zmm3_4; xor zmm14_5@uint32 zmm14_5 zmm3_5;
xor zmm14_6@uint32 zmm14_6 zmm3_6; xor zmm14_7@uint32 zmm14_7 zmm3_7;
xor zmm14_8@uint32 zmm14_8 zmm3_8; xor zmm14_9@uint32 zmm14_9 zmm3_9;
xor zmm14_a@uint32 zmm14_a zmm3_a; xor zmm14_b@uint32 zmm14_b zmm3_b;
xor zmm14_c@uint32 zmm14_c zmm3_c; xor zmm14_d@uint32 zmm14_d zmm3_d;
xor zmm14_e@uint32 zmm14_e zmm3_e; xor zmm14_f@uint32 zmm14_f zmm3_f;
(* vprold $0x10,%zmm15,%zmm15                      #! PC = 0x5555555582c0 *)
rol zmm15_0@uint32 zmm15_0 0x10; rol zmm15_1@uint32 zmm15_1 0x10;
rol zmm15_2@uint32 zmm15_2 0x10; rol zmm15_3@uint32 zmm15_3 0x10;
rol zmm15_4@uint32 zmm15_4 0x10; rol zmm15_5@uint32 zmm15_5 0x10;
rol zmm15_6@uint32 zmm15_6 0x10; rol zmm15_7@uint32 zmm15_7 0x10;
rol zmm15_8@uint32 zmm15_8 0x10; rol zmm15_9@uint32 zmm15_9 0x10;
rol zmm15_a@uint32 zmm15_a 0x10; rol zmm15_b@uint32 zmm15_b 0x10;
rol zmm15_c@uint32 zmm15_c 0x10; rol zmm15_d@uint32 zmm15_d 0x10;
rol zmm15_e@uint32 zmm15_e 0x10; rol zmm15_f@uint32 zmm15_f 0x10;
(* vprold $0x10,%zmm12,%zmm12                      #! PC = 0x5555555582c7 *)
rol zmm12_0@uint32 zmm12_0 0x10; rol zmm12_1@uint32 zmm12_1 0x10;
rol zmm12_2@uint32 zmm12_2 0x10; rol zmm12_3@uint32 zmm12_3 0x10;
rol zmm12_4@uint32 zmm12_4 0x10; rol zmm12_5@uint32 zmm12_5 0x10;
rol zmm12_6@uint32 zmm12_6 0x10; rol zmm12_7@uint32 zmm12_7 0x10;
rol zmm12_8@uint32 zmm12_8 0x10; rol zmm12_9@uint32 zmm12_9 0x10;
rol zmm12_a@uint32 zmm12_a 0x10; rol zmm12_b@uint32 zmm12_b 0x10;
rol zmm12_c@uint32 zmm12_c 0x10; rol zmm12_d@uint32 zmm12_d 0x10;
rol zmm12_e@uint32 zmm12_e 0x10; rol zmm12_f@uint32 zmm12_f 0x10;
(* vprold $0x10,%zmm13,%zmm13                      #! PC = 0x5555555582ce *)
rol zmm13_0@uint32 zmm13_0 0x10; rol zmm13_1@uint32 zmm13_1 0x10;
rol zmm13_2@uint32 zmm13_2 0x10; rol zmm13_3@uint32 zmm13_3 0x10;
rol zmm13_4@uint32 zmm13_4 0x10; rol zmm13_5@uint32 zmm13_5 0x10;
rol zmm13_6@uint32 zmm13_6 0x10; rol zmm13_7@uint32 zmm13_7 0x10;
rol zmm13_8@uint32 zmm13_8 0x10; rol zmm13_9@uint32 zmm13_9 0x10;
rol zmm13_a@uint32 zmm13_a 0x10; rol zmm13_b@uint32 zmm13_b 0x10;
rol zmm13_c@uint32 zmm13_c 0x10; rol zmm13_d@uint32 zmm13_d 0x10;
rol zmm13_e@uint32 zmm13_e 0x10; rol zmm13_f@uint32 zmm13_f 0x10;
(* vprold $0x10,%zmm14,%zmm14                      #! PC = 0x5555555582d5 *)
rol zmm14_0@uint32 zmm14_0 0x10; rol zmm14_1@uint32 zmm14_1 0x10;
rol zmm14_2@uint32 zmm14_2 0x10; rol zmm14_3@uint32 zmm14_3 0x10;
rol zmm14_4@uint32 zmm14_4 0x10; rol zmm14_5@uint32 zmm14_5 0x10;
rol zmm14_6@uint32 zmm14_6 0x10; rol zmm14_7@uint32 zmm14_7 0x10;
rol zmm14_8@uint32 zmm14_8 0x10; rol zmm14_9@uint32 zmm14_9 0x10;
rol zmm14_a@uint32 zmm14_a 0x10; rol zmm14_b@uint32 zmm14_b 0x10;
rol zmm14_c@uint32 zmm14_c 0x10; rol zmm14_d@uint32 zmm14_d 0x10;
rol zmm14_e@uint32 zmm14_e 0x10; rol zmm14_f@uint32 zmm14_f 0x10;
(* vpaddd %zmm15,%zmm10,%zmm10                     #! PC = 0x5555555582dc *)
adds dc zmm10_0 zmm10_0 zmm15_0; adds dc zmm10_1 zmm10_1 zmm15_1;
adds dc zmm10_2 zmm10_2 zmm15_2; adds dc zmm10_3 zmm10_3 zmm15_3;
adds dc zmm10_4 zmm10_4 zmm15_4; adds dc zmm10_5 zmm10_5 zmm15_5;
adds dc zmm10_6 zmm10_6 zmm15_6; adds dc zmm10_7 zmm10_7 zmm15_7;
adds dc zmm10_8 zmm10_8 zmm15_8; adds dc zmm10_9 zmm10_9 zmm15_9;
adds dc zmm10_a zmm10_a zmm15_a; adds dc zmm10_b zmm10_b zmm15_b;
adds dc zmm10_c zmm10_c zmm15_c; adds dc zmm10_d zmm10_d zmm15_d;
adds dc zmm10_e zmm10_e zmm15_e; adds dc zmm10_f zmm10_f zmm15_f;
(* vpaddd %zmm12,%zmm11,%zmm11                     #! PC = 0x5555555582e2 *)
adds dc zmm11_0 zmm11_0 zmm12_0; adds dc zmm11_1 zmm11_1 zmm12_1;
adds dc zmm11_2 zmm11_2 zmm12_2; adds dc zmm11_3 zmm11_3 zmm12_3;
adds dc zmm11_4 zmm11_4 zmm12_4; adds dc zmm11_5 zmm11_5 zmm12_5;
adds dc zmm11_6 zmm11_6 zmm12_6; adds dc zmm11_7 zmm11_7 zmm12_7;
adds dc zmm11_8 zmm11_8 zmm12_8; adds dc zmm11_9 zmm11_9 zmm12_9;
adds dc zmm11_a zmm11_a zmm12_a; adds dc zmm11_b zmm11_b zmm12_b;
adds dc zmm11_c zmm11_c zmm12_c; adds dc zmm11_d zmm11_d zmm12_d;
adds dc zmm11_e zmm11_e zmm12_e; adds dc zmm11_f zmm11_f zmm12_f;
(* vpaddd %zmm13,%zmm8,%zmm8                       #! PC = 0x5555555582e8 *)
adds dc zmm8_0 zmm8_0 zmm13_0; adds dc zmm8_1 zmm8_1 zmm13_1;
adds dc zmm8_2 zmm8_2 zmm13_2; adds dc zmm8_3 zmm8_3 zmm13_3;
adds dc zmm8_4 zmm8_4 zmm13_4; adds dc zmm8_5 zmm8_5 zmm13_5;
adds dc zmm8_6 zmm8_6 zmm13_6; adds dc zmm8_7 zmm8_7 zmm13_7;
adds dc zmm8_8 zmm8_8 zmm13_8; adds dc zmm8_9 zmm8_9 zmm13_9;
adds dc zmm8_a zmm8_a zmm13_a; adds dc zmm8_b zmm8_b zmm13_b;
adds dc zmm8_c zmm8_c zmm13_c; adds dc zmm8_d zmm8_d zmm13_d;
adds dc zmm8_e zmm8_e zmm13_e; adds dc zmm8_f zmm8_f zmm13_f;
(* vpaddd %zmm14,%zmm9,%zmm9                       #! PC = 0x5555555582ee *)
adds dc zmm9_0 zmm9_0 zmm14_0; adds dc zmm9_1 zmm9_1 zmm14_1;
adds dc zmm9_2 zmm9_2 zmm14_2; adds dc zmm9_3 zmm9_3 zmm14_3;
adds dc zmm9_4 zmm9_4 zmm14_4; adds dc zmm9_5 zmm9_5 zmm14_5;
adds dc zmm9_6 zmm9_6 zmm14_6; adds dc zmm9_7 zmm9_7 zmm14_7;
adds dc zmm9_8 zmm9_8 zmm14_8; adds dc zmm9_9 zmm9_9 zmm14_9;
adds dc zmm9_a zmm9_a zmm14_a; adds dc zmm9_b zmm9_b zmm14_b;
adds dc zmm9_c zmm9_c zmm14_c; adds dc zmm9_d zmm9_d zmm14_d;
adds dc zmm9_e zmm9_e zmm14_e; adds dc zmm9_f zmm9_f zmm14_f;
(* vpxord %zmm10,%zmm5,%zmm5                       #! PC = 0x5555555582f4 *)
xor zmm5_0@uint32 zmm5_0 zmm10_0; xor zmm5_1@uint32 zmm5_1 zmm10_1;
xor zmm5_2@uint32 zmm5_2 zmm10_2; xor zmm5_3@uint32 zmm5_3 zmm10_3;
xor zmm5_4@uint32 zmm5_4 zmm10_4; xor zmm5_5@uint32 zmm5_5 zmm10_5;
xor zmm5_6@uint32 zmm5_6 zmm10_6; xor zmm5_7@uint32 zmm5_7 zmm10_7;
xor zmm5_8@uint32 zmm5_8 zmm10_8; xor zmm5_9@uint32 zmm5_9 zmm10_9;
xor zmm5_a@uint32 zmm5_a zmm10_a; xor zmm5_b@uint32 zmm5_b zmm10_b;
xor zmm5_c@uint32 zmm5_c zmm10_c; xor zmm5_d@uint32 zmm5_d zmm10_d;
xor zmm5_e@uint32 zmm5_e zmm10_e; xor zmm5_f@uint32 zmm5_f zmm10_f;
(* vpxord %zmm11,%zmm6,%zmm6                       #! PC = 0x5555555582fa *)
xor zmm6_0@uint32 zmm6_0 zmm11_0; xor zmm6_1@uint32 zmm6_1 zmm11_1;
xor zmm6_2@uint32 zmm6_2 zmm11_2; xor zmm6_3@uint32 zmm6_3 zmm11_3;
xor zmm6_4@uint32 zmm6_4 zmm11_4; xor zmm6_5@uint32 zmm6_5 zmm11_5;
xor zmm6_6@uint32 zmm6_6 zmm11_6; xor zmm6_7@uint32 zmm6_7 zmm11_7;
xor zmm6_8@uint32 zmm6_8 zmm11_8; xor zmm6_9@uint32 zmm6_9 zmm11_9;
xor zmm6_a@uint32 zmm6_a zmm11_a; xor zmm6_b@uint32 zmm6_b zmm11_b;
xor zmm6_c@uint32 zmm6_c zmm11_c; xor zmm6_d@uint32 zmm6_d zmm11_d;
xor zmm6_e@uint32 zmm6_e zmm11_e; xor zmm6_f@uint32 zmm6_f zmm11_f;
(* vpxord %zmm8,%zmm7,%zmm7                        #! PC = 0x555555558300 *)
xor zmm7_0@uint32 zmm7_0 zmm8_0; xor zmm7_1@uint32 zmm7_1 zmm8_1;
xor zmm7_2@uint32 zmm7_2 zmm8_2; xor zmm7_3@uint32 zmm7_3 zmm8_3;
xor zmm7_4@uint32 zmm7_4 zmm8_4; xor zmm7_5@uint32 zmm7_5 zmm8_5;
xor zmm7_6@uint32 zmm7_6 zmm8_6; xor zmm7_7@uint32 zmm7_7 zmm8_7;
xor zmm7_8@uint32 zmm7_8 zmm8_8; xor zmm7_9@uint32 zmm7_9 zmm8_9;
xor zmm7_a@uint32 zmm7_a zmm8_a; xor zmm7_b@uint32 zmm7_b zmm8_b;
xor zmm7_c@uint32 zmm7_c zmm8_c; xor zmm7_d@uint32 zmm7_d zmm8_d;
xor zmm7_e@uint32 zmm7_e zmm8_e; xor zmm7_f@uint32 zmm7_f zmm8_f;
(* vpxord %zmm9,%zmm4,%zmm4                        #! PC = 0x555555558306 *)
xor zmm4_0@uint32 zmm4_0 zmm9_0; xor zmm4_1@uint32 zmm4_1 zmm9_1;
xor zmm4_2@uint32 zmm4_2 zmm9_2; xor zmm4_3@uint32 zmm4_3 zmm9_3;
xor zmm4_4@uint32 zmm4_4 zmm9_4; xor zmm4_5@uint32 zmm4_5 zmm9_5;
xor zmm4_6@uint32 zmm4_6 zmm9_6; xor zmm4_7@uint32 zmm4_7 zmm9_7;
xor zmm4_8@uint32 zmm4_8 zmm9_8; xor zmm4_9@uint32 zmm4_9 zmm9_9;
xor zmm4_a@uint32 zmm4_a zmm9_a; xor zmm4_b@uint32 zmm4_b zmm9_b;
xor zmm4_c@uint32 zmm4_c zmm9_c; xor zmm4_d@uint32 zmm4_d zmm9_d;
xor zmm4_e@uint32 zmm4_e zmm9_e; xor zmm4_f@uint32 zmm4_f zmm9_f;
(* vprold $0xc,%zmm5,%zmm5                         #! PC = 0x55555555830c *)
rol zmm5_0@uint32 zmm5_0 0xc; rol zmm5_1@uint32 zmm5_1 0xc;
rol zmm5_2@uint32 zmm5_2 0xc; rol zmm5_3@uint32 zmm5_3 0xc;
rol zmm5_4@uint32 zmm5_4 0xc; rol zmm5_5@uint32 zmm5_5 0xc;
rol zmm5_6@uint32 zmm5_6 0xc; rol zmm5_7@uint32 zmm5_7 0xc;
rol zmm5_8@uint32 zmm5_8 0xc; rol zmm5_9@uint32 zmm5_9 0xc;
rol zmm5_a@uint32 zmm5_a 0xc; rol zmm5_b@uint32 zmm5_b 0xc;
rol zmm5_c@uint32 zmm5_c 0xc; rol zmm5_d@uint32 zmm5_d 0xc;
rol zmm5_e@uint32 zmm5_e 0xc; rol zmm5_f@uint32 zmm5_f 0xc;
(* vprold $0xc,%zmm6,%zmm6                         #! PC = 0x555555558313 *)
rol zmm6_0@uint32 zmm6_0 0xc; rol zmm6_1@uint32 zmm6_1 0xc;
rol zmm6_2@uint32 zmm6_2 0xc; rol zmm6_3@uint32 zmm6_3 0xc;
rol zmm6_4@uint32 zmm6_4 0xc; rol zmm6_5@uint32 zmm6_5 0xc;
rol zmm6_6@uint32 zmm6_6 0xc; rol zmm6_7@uint32 zmm6_7 0xc;
rol zmm6_8@uint32 zmm6_8 0xc; rol zmm6_9@uint32 zmm6_9 0xc;
rol zmm6_a@uint32 zmm6_a 0xc; rol zmm6_b@uint32 zmm6_b 0xc;
rol zmm6_c@uint32 zmm6_c 0xc; rol zmm6_d@uint32 zmm6_d 0xc;
rol zmm6_e@uint32 zmm6_e 0xc; rol zmm6_f@uint32 zmm6_f 0xc;
(* vprold $0xc,%zmm7,%zmm7                         #! PC = 0x55555555831a *)
rol zmm7_0@uint32 zmm7_0 0xc; rol zmm7_1@uint32 zmm7_1 0xc;
rol zmm7_2@uint32 zmm7_2 0xc; rol zmm7_3@uint32 zmm7_3 0xc;
rol zmm7_4@uint32 zmm7_4 0xc; rol zmm7_5@uint32 zmm7_5 0xc;
rol zmm7_6@uint32 zmm7_6 0xc; rol zmm7_7@uint32 zmm7_7 0xc;
rol zmm7_8@uint32 zmm7_8 0xc; rol zmm7_9@uint32 zmm7_9 0xc;
rol zmm7_a@uint32 zmm7_a 0xc; rol zmm7_b@uint32 zmm7_b 0xc;
rol zmm7_c@uint32 zmm7_c 0xc; rol zmm7_d@uint32 zmm7_d 0xc;
rol zmm7_e@uint32 zmm7_e 0xc; rol zmm7_f@uint32 zmm7_f 0xc;
(* vprold $0xc,%zmm4,%zmm4                         #! PC = 0x555555558321 *)
rol zmm4_0@uint32 zmm4_0 0xc; rol zmm4_1@uint32 zmm4_1 0xc;
rol zmm4_2@uint32 zmm4_2 0xc; rol zmm4_3@uint32 zmm4_3 0xc;
rol zmm4_4@uint32 zmm4_4 0xc; rol zmm4_5@uint32 zmm4_5 0xc;
rol zmm4_6@uint32 zmm4_6 0xc; rol zmm4_7@uint32 zmm4_7 0xc;
rol zmm4_8@uint32 zmm4_8 0xc; rol zmm4_9@uint32 zmm4_9 0xc;
rol zmm4_a@uint32 zmm4_a 0xc; rol zmm4_b@uint32 zmm4_b 0xc;
rol zmm4_c@uint32 zmm4_c 0xc; rol zmm4_d@uint32 zmm4_d 0xc;
rol zmm4_e@uint32 zmm4_e 0xc; rol zmm4_f@uint32 zmm4_f 0xc;
(* vpaddd %zmm5,%zmm0,%zmm0                        #! PC = 0x555555558328 *)
adds dc zmm0_0 zmm0_0 zmm5_0; adds dc zmm0_1 zmm0_1 zmm5_1;
adds dc zmm0_2 zmm0_2 zmm5_2; adds dc zmm0_3 zmm0_3 zmm5_3;
adds dc zmm0_4 zmm0_4 zmm5_4; adds dc zmm0_5 zmm0_5 zmm5_5;
adds dc zmm0_6 zmm0_6 zmm5_6; adds dc zmm0_7 zmm0_7 zmm5_7;
adds dc zmm0_8 zmm0_8 zmm5_8; adds dc zmm0_9 zmm0_9 zmm5_9;
adds dc zmm0_a zmm0_a zmm5_a; adds dc zmm0_b zmm0_b zmm5_b;
adds dc zmm0_c zmm0_c zmm5_c; adds dc zmm0_d zmm0_d zmm5_d;
adds dc zmm0_e zmm0_e zmm5_e; adds dc zmm0_f zmm0_f zmm5_f;
(* vpaddd %zmm6,%zmm1,%zmm1                        #! PC = 0x55555555832e *)
adds dc zmm1_0 zmm1_0 zmm6_0; adds dc zmm1_1 zmm1_1 zmm6_1;
adds dc zmm1_2 zmm1_2 zmm6_2; adds dc zmm1_3 zmm1_3 zmm6_3;
adds dc zmm1_4 zmm1_4 zmm6_4; adds dc zmm1_5 zmm1_5 zmm6_5;
adds dc zmm1_6 zmm1_6 zmm6_6; adds dc zmm1_7 zmm1_7 zmm6_7;
adds dc zmm1_8 zmm1_8 zmm6_8; adds dc zmm1_9 zmm1_9 zmm6_9;
adds dc zmm1_a zmm1_a zmm6_a; adds dc zmm1_b zmm1_b zmm6_b;
adds dc zmm1_c zmm1_c zmm6_c; adds dc zmm1_d zmm1_d zmm6_d;
adds dc zmm1_e zmm1_e zmm6_e; adds dc zmm1_f zmm1_f zmm6_f;
(* vpaddd %zmm7,%zmm2,%zmm2                        #! PC = 0x555555558334 *)
adds dc zmm2_0 zmm2_0 zmm7_0; adds dc zmm2_1 zmm2_1 zmm7_1;
adds dc zmm2_2 zmm2_2 zmm7_2; adds dc zmm2_3 zmm2_3 zmm7_3;
adds dc zmm2_4 zmm2_4 zmm7_4; adds dc zmm2_5 zmm2_5 zmm7_5;
adds dc zmm2_6 zmm2_6 zmm7_6; adds dc zmm2_7 zmm2_7 zmm7_7;
adds dc zmm2_8 zmm2_8 zmm7_8; adds dc zmm2_9 zmm2_9 zmm7_9;
adds dc zmm2_a zmm2_a zmm7_a; adds dc zmm2_b zmm2_b zmm7_b;
adds dc zmm2_c zmm2_c zmm7_c; adds dc zmm2_d zmm2_d zmm7_d;
adds dc zmm2_e zmm2_e zmm7_e; adds dc zmm2_f zmm2_f zmm7_f;
(* vpaddd %zmm4,%zmm3,%zmm3                        #! PC = 0x55555555833a *)
adds dc zmm3_0 zmm3_0 zmm4_0; adds dc zmm3_1 zmm3_1 zmm4_1;
adds dc zmm3_2 zmm3_2 zmm4_2; adds dc zmm3_3 zmm3_3 zmm4_3;
adds dc zmm3_4 zmm3_4 zmm4_4; adds dc zmm3_5 zmm3_5 zmm4_5;
adds dc zmm3_6 zmm3_6 zmm4_6; adds dc zmm3_7 zmm3_7 zmm4_7;
adds dc zmm3_8 zmm3_8 zmm4_8; adds dc zmm3_9 zmm3_9 zmm4_9;
adds dc zmm3_a zmm3_a zmm4_a; adds dc zmm3_b zmm3_b zmm4_b;
adds dc zmm3_c zmm3_c zmm4_c; adds dc zmm3_d zmm3_d zmm4_d;
adds dc zmm3_e zmm3_e zmm4_e; adds dc zmm3_f zmm3_f zmm4_f;
(* vpxord %zmm0,%zmm15,%zmm15                      #! PC = 0x555555558340 *)
xor zmm15_0@uint32 zmm15_0 zmm0_0; xor zmm15_1@uint32 zmm15_1 zmm0_1;
xor zmm15_2@uint32 zmm15_2 zmm0_2; xor zmm15_3@uint32 zmm15_3 zmm0_3;
xor zmm15_4@uint32 zmm15_4 zmm0_4; xor zmm15_5@uint32 zmm15_5 zmm0_5;
xor zmm15_6@uint32 zmm15_6 zmm0_6; xor zmm15_7@uint32 zmm15_7 zmm0_7;
xor zmm15_8@uint32 zmm15_8 zmm0_8; xor zmm15_9@uint32 zmm15_9 zmm0_9;
xor zmm15_a@uint32 zmm15_a zmm0_a; xor zmm15_b@uint32 zmm15_b zmm0_b;
xor zmm15_c@uint32 zmm15_c zmm0_c; xor zmm15_d@uint32 zmm15_d zmm0_d;
xor zmm15_e@uint32 zmm15_e zmm0_e; xor zmm15_f@uint32 zmm15_f zmm0_f;
(* vpxord %zmm1,%zmm12,%zmm12                      #! PC = 0x555555558346 *)
xor zmm12_0@uint32 zmm12_0 zmm1_0; xor zmm12_1@uint32 zmm12_1 zmm1_1;
xor zmm12_2@uint32 zmm12_2 zmm1_2; xor zmm12_3@uint32 zmm12_3 zmm1_3;
xor zmm12_4@uint32 zmm12_4 zmm1_4; xor zmm12_5@uint32 zmm12_5 zmm1_5;
xor zmm12_6@uint32 zmm12_6 zmm1_6; xor zmm12_7@uint32 zmm12_7 zmm1_7;
xor zmm12_8@uint32 zmm12_8 zmm1_8; xor zmm12_9@uint32 zmm12_9 zmm1_9;
xor zmm12_a@uint32 zmm12_a zmm1_a; xor zmm12_b@uint32 zmm12_b zmm1_b;
xor zmm12_c@uint32 zmm12_c zmm1_c; xor zmm12_d@uint32 zmm12_d zmm1_d;
xor zmm12_e@uint32 zmm12_e zmm1_e; xor zmm12_f@uint32 zmm12_f zmm1_f;
(* vpxord %zmm2,%zmm13,%zmm13                      #! PC = 0x55555555834c *)
xor zmm13_0@uint32 zmm13_0 zmm2_0; xor zmm13_1@uint32 zmm13_1 zmm2_1;
xor zmm13_2@uint32 zmm13_2 zmm2_2; xor zmm13_3@uint32 zmm13_3 zmm2_3;
xor zmm13_4@uint32 zmm13_4 zmm2_4; xor zmm13_5@uint32 zmm13_5 zmm2_5;
xor zmm13_6@uint32 zmm13_6 zmm2_6; xor zmm13_7@uint32 zmm13_7 zmm2_7;
xor zmm13_8@uint32 zmm13_8 zmm2_8; xor zmm13_9@uint32 zmm13_9 zmm2_9;
xor zmm13_a@uint32 zmm13_a zmm2_a; xor zmm13_b@uint32 zmm13_b zmm2_b;
xor zmm13_c@uint32 zmm13_c zmm2_c; xor zmm13_d@uint32 zmm13_d zmm2_d;
xor zmm13_e@uint32 zmm13_e zmm2_e; xor zmm13_f@uint32 zmm13_f zmm2_f;
(* vpxord %zmm3,%zmm14,%zmm14                      #! PC = 0x555555558352 *)
xor zmm14_0@uint32 zmm14_0 zmm3_0; xor zmm14_1@uint32 zmm14_1 zmm3_1;
xor zmm14_2@uint32 zmm14_2 zmm3_2; xor zmm14_3@uint32 zmm14_3 zmm3_3;
xor zmm14_4@uint32 zmm14_4 zmm3_4; xor zmm14_5@uint32 zmm14_5 zmm3_5;
xor zmm14_6@uint32 zmm14_6 zmm3_6; xor zmm14_7@uint32 zmm14_7 zmm3_7;
xor zmm14_8@uint32 zmm14_8 zmm3_8; xor zmm14_9@uint32 zmm14_9 zmm3_9;
xor zmm14_a@uint32 zmm14_a zmm3_a; xor zmm14_b@uint32 zmm14_b zmm3_b;
xor zmm14_c@uint32 zmm14_c zmm3_c; xor zmm14_d@uint32 zmm14_d zmm3_d;
xor zmm14_e@uint32 zmm14_e zmm3_e; xor zmm14_f@uint32 zmm14_f zmm3_f;
(* vprold $0x8,%zmm15,%zmm15                       #! PC = 0x555555558358 *)
rol zmm15_0@uint32 zmm15_0 0x8; rol zmm15_1@uint32 zmm15_1 0x8;
rol zmm15_2@uint32 zmm15_2 0x8; rol zmm15_3@uint32 zmm15_3 0x8;
rol zmm15_4@uint32 zmm15_4 0x8; rol zmm15_5@uint32 zmm15_5 0x8;
rol zmm15_6@uint32 zmm15_6 0x8; rol zmm15_7@uint32 zmm15_7 0x8;
rol zmm15_8@uint32 zmm15_8 0x8; rol zmm15_9@uint32 zmm15_9 0x8;
rol zmm15_a@uint32 zmm15_a 0x8; rol zmm15_b@uint32 zmm15_b 0x8;
rol zmm15_c@uint32 zmm15_c 0x8; rol zmm15_d@uint32 zmm15_d 0x8;
rol zmm15_e@uint32 zmm15_e 0x8; rol zmm15_f@uint32 zmm15_f 0x8;
(* vprold $0x8,%zmm12,%zmm12                       #! PC = 0x55555555835f *)
rol zmm12_0@uint32 zmm12_0 0x8; rol zmm12_1@uint32 zmm12_1 0x8;
rol zmm12_2@uint32 zmm12_2 0x8; rol zmm12_3@uint32 zmm12_3 0x8;
rol zmm12_4@uint32 zmm12_4 0x8; rol zmm12_5@uint32 zmm12_5 0x8;
rol zmm12_6@uint32 zmm12_6 0x8; rol zmm12_7@uint32 zmm12_7 0x8;
rol zmm12_8@uint32 zmm12_8 0x8; rol zmm12_9@uint32 zmm12_9 0x8;
rol zmm12_a@uint32 zmm12_a 0x8; rol zmm12_b@uint32 zmm12_b 0x8;
rol zmm12_c@uint32 zmm12_c 0x8; rol zmm12_d@uint32 zmm12_d 0x8;
rol zmm12_e@uint32 zmm12_e 0x8; rol zmm12_f@uint32 zmm12_f 0x8;
(* vprold $0x8,%zmm13,%zmm13                       #! PC = 0x555555558366 *)
rol zmm13_0@uint32 zmm13_0 0x8; rol zmm13_1@uint32 zmm13_1 0x8;
rol zmm13_2@uint32 zmm13_2 0x8; rol zmm13_3@uint32 zmm13_3 0x8;
rol zmm13_4@uint32 zmm13_4 0x8; rol zmm13_5@uint32 zmm13_5 0x8;
rol zmm13_6@uint32 zmm13_6 0x8; rol zmm13_7@uint32 zmm13_7 0x8;
rol zmm13_8@uint32 zmm13_8 0x8; rol zmm13_9@uint32 zmm13_9 0x8;
rol zmm13_a@uint32 zmm13_a 0x8; rol zmm13_b@uint32 zmm13_b 0x8;
rol zmm13_c@uint32 zmm13_c 0x8; rol zmm13_d@uint32 zmm13_d 0x8;
rol zmm13_e@uint32 zmm13_e 0x8; rol zmm13_f@uint32 zmm13_f 0x8;
(* vprold $0x8,%zmm14,%zmm14                       #! PC = 0x55555555836d *)
rol zmm14_0@uint32 zmm14_0 0x8; rol zmm14_1@uint32 zmm14_1 0x8;
rol zmm14_2@uint32 zmm14_2 0x8; rol zmm14_3@uint32 zmm14_3 0x8;
rol zmm14_4@uint32 zmm14_4 0x8; rol zmm14_5@uint32 zmm14_5 0x8;
rol zmm14_6@uint32 zmm14_6 0x8; rol zmm14_7@uint32 zmm14_7 0x8;
rol zmm14_8@uint32 zmm14_8 0x8; rol zmm14_9@uint32 zmm14_9 0x8;
rol zmm14_a@uint32 zmm14_a 0x8; rol zmm14_b@uint32 zmm14_b 0x8;
rol zmm14_c@uint32 zmm14_c 0x8; rol zmm14_d@uint32 zmm14_d 0x8;
rol zmm14_e@uint32 zmm14_e 0x8; rol zmm14_f@uint32 zmm14_f 0x8;
(* vpaddd %zmm15,%zmm10,%zmm10                     #! PC = 0x555555558374 *)
adds dc zmm10_0 zmm10_0 zmm15_0; adds dc zmm10_1 zmm10_1 zmm15_1;
adds dc zmm10_2 zmm10_2 zmm15_2; adds dc zmm10_3 zmm10_3 zmm15_3;
adds dc zmm10_4 zmm10_4 zmm15_4; adds dc zmm10_5 zmm10_5 zmm15_5;
adds dc zmm10_6 zmm10_6 zmm15_6; adds dc zmm10_7 zmm10_7 zmm15_7;
adds dc zmm10_8 zmm10_8 zmm15_8; adds dc zmm10_9 zmm10_9 zmm15_9;
adds dc zmm10_a zmm10_a zmm15_a; adds dc zmm10_b zmm10_b zmm15_b;
adds dc zmm10_c zmm10_c zmm15_c; adds dc zmm10_d zmm10_d zmm15_d;
adds dc zmm10_e zmm10_e zmm15_e; adds dc zmm10_f zmm10_f zmm15_f;
(* vpaddd %zmm12,%zmm11,%zmm11                     #! PC = 0x55555555837a *)
adds dc zmm11_0 zmm11_0 zmm12_0; adds dc zmm11_1 zmm11_1 zmm12_1;
adds dc zmm11_2 zmm11_2 zmm12_2; adds dc zmm11_3 zmm11_3 zmm12_3;
adds dc zmm11_4 zmm11_4 zmm12_4; adds dc zmm11_5 zmm11_5 zmm12_5;
adds dc zmm11_6 zmm11_6 zmm12_6; adds dc zmm11_7 zmm11_7 zmm12_7;
adds dc zmm11_8 zmm11_8 zmm12_8; adds dc zmm11_9 zmm11_9 zmm12_9;
adds dc zmm11_a zmm11_a zmm12_a; adds dc zmm11_b zmm11_b zmm12_b;
adds dc zmm11_c zmm11_c zmm12_c; adds dc zmm11_d zmm11_d zmm12_d;
adds dc zmm11_e zmm11_e zmm12_e; adds dc zmm11_f zmm11_f zmm12_f;
(* vpaddd %zmm13,%zmm8,%zmm8                       #! PC = 0x555555558380 *)
adds dc zmm8_0 zmm8_0 zmm13_0; adds dc zmm8_1 zmm8_1 zmm13_1;
adds dc zmm8_2 zmm8_2 zmm13_2; adds dc zmm8_3 zmm8_3 zmm13_3;
adds dc zmm8_4 zmm8_4 zmm13_4; adds dc zmm8_5 zmm8_5 zmm13_5;
adds dc zmm8_6 zmm8_6 zmm13_6; adds dc zmm8_7 zmm8_7 zmm13_7;
adds dc zmm8_8 zmm8_8 zmm13_8; adds dc zmm8_9 zmm8_9 zmm13_9;
adds dc zmm8_a zmm8_a zmm13_a; adds dc zmm8_b zmm8_b zmm13_b;
adds dc zmm8_c zmm8_c zmm13_c; adds dc zmm8_d zmm8_d zmm13_d;
adds dc zmm8_e zmm8_e zmm13_e; adds dc zmm8_f zmm8_f zmm13_f;
(* vpaddd %zmm14,%zmm9,%zmm9                       #! PC = 0x555555558386 *)
adds dc zmm9_0 zmm9_0 zmm14_0; adds dc zmm9_1 zmm9_1 zmm14_1;
adds dc zmm9_2 zmm9_2 zmm14_2; adds dc zmm9_3 zmm9_3 zmm14_3;
adds dc zmm9_4 zmm9_4 zmm14_4; adds dc zmm9_5 zmm9_5 zmm14_5;
adds dc zmm9_6 zmm9_6 zmm14_6; adds dc zmm9_7 zmm9_7 zmm14_7;
adds dc zmm9_8 zmm9_8 zmm14_8; adds dc zmm9_9 zmm9_9 zmm14_9;
adds dc zmm9_a zmm9_a zmm14_a; adds dc zmm9_b zmm9_b zmm14_b;
adds dc zmm9_c zmm9_c zmm14_c; adds dc zmm9_d zmm9_d zmm14_d;
adds dc zmm9_e zmm9_e zmm14_e; adds dc zmm9_f zmm9_f zmm14_f;
(* vpxord %zmm10,%zmm5,%zmm5                       #! PC = 0x55555555838c *)
xor zmm5_0@uint32 zmm5_0 zmm10_0; xor zmm5_1@uint32 zmm5_1 zmm10_1;
xor zmm5_2@uint32 zmm5_2 zmm10_2; xor zmm5_3@uint32 zmm5_3 zmm10_3;
xor zmm5_4@uint32 zmm5_4 zmm10_4; xor zmm5_5@uint32 zmm5_5 zmm10_5;
xor zmm5_6@uint32 zmm5_6 zmm10_6; xor zmm5_7@uint32 zmm5_7 zmm10_7;
xor zmm5_8@uint32 zmm5_8 zmm10_8; xor zmm5_9@uint32 zmm5_9 zmm10_9;
xor zmm5_a@uint32 zmm5_a zmm10_a; xor zmm5_b@uint32 zmm5_b zmm10_b;
xor zmm5_c@uint32 zmm5_c zmm10_c; xor zmm5_d@uint32 zmm5_d zmm10_d;
xor zmm5_e@uint32 zmm5_e zmm10_e; xor zmm5_f@uint32 zmm5_f zmm10_f;
(* vpxord %zmm11,%zmm6,%zmm6                       #! PC = 0x555555558392 *)
xor zmm6_0@uint32 zmm6_0 zmm11_0; xor zmm6_1@uint32 zmm6_1 zmm11_1;
xor zmm6_2@uint32 zmm6_2 zmm11_2; xor zmm6_3@uint32 zmm6_3 zmm11_3;
xor zmm6_4@uint32 zmm6_4 zmm11_4; xor zmm6_5@uint32 zmm6_5 zmm11_5;
xor zmm6_6@uint32 zmm6_6 zmm11_6; xor zmm6_7@uint32 zmm6_7 zmm11_7;
xor zmm6_8@uint32 zmm6_8 zmm11_8; xor zmm6_9@uint32 zmm6_9 zmm11_9;
xor zmm6_a@uint32 zmm6_a zmm11_a; xor zmm6_b@uint32 zmm6_b zmm11_b;
xor zmm6_c@uint32 zmm6_c zmm11_c; xor zmm6_d@uint32 zmm6_d zmm11_d;
xor zmm6_e@uint32 zmm6_e zmm11_e; xor zmm6_f@uint32 zmm6_f zmm11_f;
(* vpxord %zmm8,%zmm7,%zmm7                        #! PC = 0x555555558398 *)
xor zmm7_0@uint32 zmm7_0 zmm8_0; xor zmm7_1@uint32 zmm7_1 zmm8_1;
xor zmm7_2@uint32 zmm7_2 zmm8_2; xor zmm7_3@uint32 zmm7_3 zmm8_3;
xor zmm7_4@uint32 zmm7_4 zmm8_4; xor zmm7_5@uint32 zmm7_5 zmm8_5;
xor zmm7_6@uint32 zmm7_6 zmm8_6; xor zmm7_7@uint32 zmm7_7 zmm8_7;
xor zmm7_8@uint32 zmm7_8 zmm8_8; xor zmm7_9@uint32 zmm7_9 zmm8_9;
xor zmm7_a@uint32 zmm7_a zmm8_a; xor zmm7_b@uint32 zmm7_b zmm8_b;
xor zmm7_c@uint32 zmm7_c zmm8_c; xor zmm7_d@uint32 zmm7_d zmm8_d;
xor zmm7_e@uint32 zmm7_e zmm8_e; xor zmm7_f@uint32 zmm7_f zmm8_f;
(* vpxord %zmm9,%zmm4,%zmm4                        #! PC = 0x55555555839e *)
xor zmm4_0@uint32 zmm4_0 zmm9_0; xor zmm4_1@uint32 zmm4_1 zmm9_1;
xor zmm4_2@uint32 zmm4_2 zmm9_2; xor zmm4_3@uint32 zmm4_3 zmm9_3;
xor zmm4_4@uint32 zmm4_4 zmm9_4; xor zmm4_5@uint32 zmm4_5 zmm9_5;
xor zmm4_6@uint32 zmm4_6 zmm9_6; xor zmm4_7@uint32 zmm4_7 zmm9_7;
xor zmm4_8@uint32 zmm4_8 zmm9_8; xor zmm4_9@uint32 zmm4_9 zmm9_9;
xor zmm4_a@uint32 zmm4_a zmm9_a; xor zmm4_b@uint32 zmm4_b zmm9_b;
xor zmm4_c@uint32 zmm4_c zmm9_c; xor zmm4_d@uint32 zmm4_d zmm9_d;
xor zmm4_e@uint32 zmm4_e zmm9_e; xor zmm4_f@uint32 zmm4_f zmm9_f;
(* vprold $0x7,%zmm5,%zmm5                         #! PC = 0x5555555583a4 *)
rol zmm5_0@uint32 zmm5_0 0x7; rol zmm5_1@uint32 zmm5_1 0x7;
rol zmm5_2@uint32 zmm5_2 0x7; rol zmm5_3@uint32 zmm5_3 0x7;
rol zmm5_4@uint32 zmm5_4 0x7; rol zmm5_5@uint32 zmm5_5 0x7;
rol zmm5_6@uint32 zmm5_6 0x7; rol zmm5_7@uint32 zmm5_7 0x7;
rol zmm5_8@uint32 zmm5_8 0x7; rol zmm5_9@uint32 zmm5_9 0x7;
rol zmm5_a@uint32 zmm5_a 0x7; rol zmm5_b@uint32 zmm5_b 0x7;
rol zmm5_c@uint32 zmm5_c 0x7; rol zmm5_d@uint32 zmm5_d 0x7;
rol zmm5_e@uint32 zmm5_e 0x7; rol zmm5_f@uint32 zmm5_f 0x7;
(* vprold $0x7,%zmm6,%zmm6                         #! PC = 0x5555555583ab *)
rol zmm6_0@uint32 zmm6_0 0x7; rol zmm6_1@uint32 zmm6_1 0x7;
rol zmm6_2@uint32 zmm6_2 0x7; rol zmm6_3@uint32 zmm6_3 0x7;
rol zmm6_4@uint32 zmm6_4 0x7; rol zmm6_5@uint32 zmm6_5 0x7;
rol zmm6_6@uint32 zmm6_6 0x7; rol zmm6_7@uint32 zmm6_7 0x7;
rol zmm6_8@uint32 zmm6_8 0x7; rol zmm6_9@uint32 zmm6_9 0x7;
rol zmm6_a@uint32 zmm6_a 0x7; rol zmm6_b@uint32 zmm6_b 0x7;
rol zmm6_c@uint32 zmm6_c 0x7; rol zmm6_d@uint32 zmm6_d 0x7;
rol zmm6_e@uint32 zmm6_e 0x7; rol zmm6_f@uint32 zmm6_f 0x7;
(* vprold $0x7,%zmm7,%zmm7                         #! PC = 0x5555555583b2 *)
rol zmm7_0@uint32 zmm7_0 0x7; rol zmm7_1@uint32 zmm7_1 0x7;
rol zmm7_2@uint32 zmm7_2 0x7; rol zmm7_3@uint32 zmm7_3 0x7;
rol zmm7_4@uint32 zmm7_4 0x7; rol zmm7_5@uint32 zmm7_5 0x7;
rol zmm7_6@uint32 zmm7_6 0x7; rol zmm7_7@uint32 zmm7_7 0x7;
rol zmm7_8@uint32 zmm7_8 0x7; rol zmm7_9@uint32 zmm7_9 0x7;
rol zmm7_a@uint32 zmm7_a 0x7; rol zmm7_b@uint32 zmm7_b 0x7;
rol zmm7_c@uint32 zmm7_c 0x7; rol zmm7_d@uint32 zmm7_d 0x7;
rol zmm7_e@uint32 zmm7_e 0x7; rol zmm7_f@uint32 zmm7_f 0x7;
(* vprold $0x7,%zmm4,%zmm4                         #! PC = 0x5555555583b9 *)
rol zmm4_0@uint32 zmm4_0 0x7; rol zmm4_1@uint32 zmm4_1 0x7;
rol zmm4_2@uint32 zmm4_2 0x7; rol zmm4_3@uint32 zmm4_3 0x7;
rol zmm4_4@uint32 zmm4_4 0x7; rol zmm4_5@uint32 zmm4_5 0x7;
rol zmm4_6@uint32 zmm4_6 0x7; rol zmm4_7@uint32 zmm4_7 0x7;
rol zmm4_8@uint32 zmm4_8 0x7; rol zmm4_9@uint32 zmm4_9 0x7;
rol zmm4_a@uint32 zmm4_a 0x7; rol zmm4_b@uint32 zmm4_b 0x7;
rol zmm4_c@uint32 zmm4_c 0x7; rol zmm4_d@uint32 zmm4_d 0x7;
rol zmm4_e@uint32 zmm4_e 0x7; rol zmm4_f@uint32 zmm4_f 0x7;
(* dec    %eax                                     #! PC = 0x5555555583c0 *)
(* dec %eax *)
nop;
(* #jne    0x555555558160 <ChaCha20_16x+448>       #! PC = 0x5555555583c2 *)
#jne    0x555555558160 <ChaCha20_16x+448>       #! 0x5555555583c2 = 0x5555555583c2;
(* vpaddd %zmm16,%zmm0,%zmm0                       #! PC = 0x5555555583c8 *)
adds dc zmm0_0 zmm0_0 zmm16_0; adds dc zmm0_1 zmm0_1 zmm16_1;
adds dc zmm0_2 zmm0_2 zmm16_2; adds dc zmm0_3 zmm0_3 zmm16_3;
adds dc zmm0_4 zmm0_4 zmm16_4; adds dc zmm0_5 zmm0_5 zmm16_5;
adds dc zmm0_6 zmm0_6 zmm16_6; adds dc zmm0_7 zmm0_7 zmm16_7;
adds dc zmm0_8 zmm0_8 zmm16_8; adds dc zmm0_9 zmm0_9 zmm16_9;
adds dc zmm0_a zmm0_a zmm16_a; adds dc zmm0_b zmm0_b zmm16_b;
adds dc zmm0_c zmm0_c zmm16_c; adds dc zmm0_d zmm0_d zmm16_d;
adds dc zmm0_e zmm0_e zmm16_e; adds dc zmm0_f zmm0_f zmm16_f;
(* vpaddd %zmm17,%zmm1,%zmm1                       #! PC = 0x5555555583ce *)
adds dc zmm1_0 zmm1_0 zmm17_0; adds dc zmm1_1 zmm1_1 zmm17_1;
adds dc zmm1_2 zmm1_2 zmm17_2; adds dc zmm1_3 zmm1_3 zmm17_3;
adds dc zmm1_4 zmm1_4 zmm17_4; adds dc zmm1_5 zmm1_5 zmm17_5;
adds dc zmm1_6 zmm1_6 zmm17_6; adds dc zmm1_7 zmm1_7 zmm17_7;
adds dc zmm1_8 zmm1_8 zmm17_8; adds dc zmm1_9 zmm1_9 zmm17_9;
adds dc zmm1_a zmm1_a zmm17_a; adds dc zmm1_b zmm1_b zmm17_b;
adds dc zmm1_c zmm1_c zmm17_c; adds dc zmm1_d zmm1_d zmm17_d;
adds dc zmm1_e zmm1_e zmm17_e; adds dc zmm1_f zmm1_f zmm17_f;
(* vpaddd %zmm18,%zmm2,%zmm2                       #! PC = 0x5555555583d4 *)
adds dc zmm2_0 zmm2_0 zmm18_0; adds dc zmm2_1 zmm2_1 zmm18_1;
adds dc zmm2_2 zmm2_2 zmm18_2; adds dc zmm2_3 zmm2_3 zmm18_3;
adds dc zmm2_4 zmm2_4 zmm18_4; adds dc zmm2_5 zmm2_5 zmm18_5;
adds dc zmm2_6 zmm2_6 zmm18_6; adds dc zmm2_7 zmm2_7 zmm18_7;
adds dc zmm2_8 zmm2_8 zmm18_8; adds dc zmm2_9 zmm2_9 zmm18_9;
adds dc zmm2_a zmm2_a zmm18_a; adds dc zmm2_b zmm2_b zmm18_b;
adds dc zmm2_c zmm2_c zmm18_c; adds dc zmm2_d zmm2_d zmm18_d;
adds dc zmm2_e zmm2_e zmm18_e; adds dc zmm2_f zmm2_f zmm18_f;
(* vpaddd %zmm19,%zmm3,%zmm3                       #! PC = 0x5555555583da *)
adds dc zmm3_0 zmm3_0 zmm19_0; adds dc zmm3_1 zmm3_1 zmm19_1;
adds dc zmm3_2 zmm3_2 zmm19_2; adds dc zmm3_3 zmm3_3 zmm19_3;
adds dc zmm3_4 zmm3_4 zmm19_4; adds dc zmm3_5 zmm3_5 zmm19_5;
adds dc zmm3_6 zmm3_6 zmm19_6; adds dc zmm3_7 zmm3_7 zmm19_7;
adds dc zmm3_8 zmm3_8 zmm19_8; adds dc zmm3_9 zmm3_9 zmm19_9;
adds dc zmm3_a zmm3_a zmm19_a; adds dc zmm3_b zmm3_b zmm19_b;
adds dc zmm3_c zmm3_c zmm19_c; adds dc zmm3_d zmm3_d zmm19_d;
adds dc zmm3_e zmm3_e zmm19_e; adds dc zmm3_f zmm3_f zmm19_f;
(* #vpunpckldq %zmm1,%zmm0,%zmm18                   #! PC = 0x5555555583e0 *)
#vpunpckldq %%zmm1,%%zmm0,%%zmm18                   #! 0x5555555583e0 = 0x5555555583e0;
(* #vpunpckldq %zmm3,%zmm2,%zmm19                   #! PC = 0x5555555583e6 *)
#vpunpckldq %%zmm3,%%zmm2,%%zmm19                   #! 0x5555555583e6 = 0x5555555583e6;
(* #vpunpckhdq %zmm1,%zmm0,%zmm0                    #! PC = 0x5555555583ec *)
#vpunpckhdq %%zmm1,%%zmm0,%%zmm0                    #! 0x5555555583ec = 0x5555555583ec;
(* #vpunpckhdq %zmm3,%zmm2,%zmm2                    #! PC = 0x5555555583f2 *)
#vpunpckhdq %%zmm3,%%zmm2,%%zmm2                    #! 0x5555555583f2 = 0x5555555583f2;
(* #vpunpcklqdq %zmm19,%zmm18,%zmm1                 #! PC = 0x5555555583f8 *)
#vpunpcklqdq %%zmm19,%%zmm18,%%zmm1                 #! 0x5555555583f8 = 0x5555555583f8;
(* #vpunpckhqdq %zmm19,%zmm18,%zmm18                #! PC = 0x5555555583fe *)
#vpunpckhqdq %%zmm19,%%zmm18,%%zmm18                #! 0x5555555583fe = 0x5555555583fe;
(* #vpunpcklqdq %zmm2,%zmm0,%zmm3                   #! PC = 0x555555558404 *)
#vpunpcklqdq %%zmm2,%%zmm0,%%zmm3                   #! 0x555555558404 = 0x555555558404;
(* #vpunpckhqdq %zmm2,%zmm0,%zmm0                   #! PC = 0x55555555840a *)
#vpunpckhqdq %%zmm2,%%zmm0,%%zmm0                   #! 0x55555555840a = 0x55555555840a;
(* vpaddd %zmm20,%zmm4,%zmm4                       #! PC = 0x555555558410 *)
adds dc zmm4_0 zmm4_0 zmm20_0; adds dc zmm4_1 zmm4_1 zmm20_1;
adds dc zmm4_2 zmm4_2 zmm20_2; adds dc zmm4_3 zmm4_3 zmm20_3;
adds dc zmm4_4 zmm4_4 zmm20_4; adds dc zmm4_5 zmm4_5 zmm20_5;
adds dc zmm4_6 zmm4_6 zmm20_6; adds dc zmm4_7 zmm4_7 zmm20_7;
adds dc zmm4_8 zmm4_8 zmm20_8; adds dc zmm4_9 zmm4_9 zmm20_9;
adds dc zmm4_a zmm4_a zmm20_a; adds dc zmm4_b zmm4_b zmm20_b;
adds dc zmm4_c zmm4_c zmm20_c; adds dc zmm4_d zmm4_d zmm20_d;
adds dc zmm4_e zmm4_e zmm20_e; adds dc zmm4_f zmm4_f zmm20_f;
(* vpaddd %zmm21,%zmm5,%zmm5                       #! PC = 0x555555558416 *)
adds dc zmm5_0 zmm5_0 zmm21_0; adds dc zmm5_1 zmm5_1 zmm21_1;
adds dc zmm5_2 zmm5_2 zmm21_2; adds dc zmm5_3 zmm5_3 zmm21_3;
adds dc zmm5_4 zmm5_4 zmm21_4; adds dc zmm5_5 zmm5_5 zmm21_5;
adds dc zmm5_6 zmm5_6 zmm21_6; adds dc zmm5_7 zmm5_7 zmm21_7;
adds dc zmm5_8 zmm5_8 zmm21_8; adds dc zmm5_9 zmm5_9 zmm21_9;
adds dc zmm5_a zmm5_a zmm21_a; adds dc zmm5_b zmm5_b zmm21_b;
adds dc zmm5_c zmm5_c zmm21_c; adds dc zmm5_d zmm5_d zmm21_d;
adds dc zmm5_e zmm5_e zmm21_e; adds dc zmm5_f zmm5_f zmm21_f;
(* vpaddd %zmm22,%zmm6,%zmm6                       #! PC = 0x55555555841c *)
adds dc zmm6_0 zmm6_0 zmm22_0; adds dc zmm6_1 zmm6_1 zmm22_1;
adds dc zmm6_2 zmm6_2 zmm22_2; adds dc zmm6_3 zmm6_3 zmm22_3;
adds dc zmm6_4 zmm6_4 zmm22_4; adds dc zmm6_5 zmm6_5 zmm22_5;
adds dc zmm6_6 zmm6_6 zmm22_6; adds dc zmm6_7 zmm6_7 zmm22_7;
adds dc zmm6_8 zmm6_8 zmm22_8; adds dc zmm6_9 zmm6_9 zmm22_9;
adds dc zmm6_a zmm6_a zmm22_a; adds dc zmm6_b zmm6_b zmm22_b;
adds dc zmm6_c zmm6_c zmm22_c; adds dc zmm6_d zmm6_d zmm22_d;
adds dc zmm6_e zmm6_e zmm22_e; adds dc zmm6_f zmm6_f zmm22_f;
(* vpaddd %zmm23,%zmm7,%zmm7                       #! PC = 0x555555558422 *)
adds dc zmm7_0 zmm7_0 zmm23_0; adds dc zmm7_1 zmm7_1 zmm23_1;
adds dc zmm7_2 zmm7_2 zmm23_2; adds dc zmm7_3 zmm7_3 zmm23_3;
adds dc zmm7_4 zmm7_4 zmm23_4; adds dc zmm7_5 zmm7_5 zmm23_5;
adds dc zmm7_6 zmm7_6 zmm23_6; adds dc zmm7_7 zmm7_7 zmm23_7;
adds dc zmm7_8 zmm7_8 zmm23_8; adds dc zmm7_9 zmm7_9 zmm23_9;
adds dc zmm7_a zmm7_a zmm23_a; adds dc zmm7_b zmm7_b zmm23_b;
adds dc zmm7_c zmm7_c zmm23_c; adds dc zmm7_d zmm7_d zmm23_d;
adds dc zmm7_e zmm7_e zmm23_e; adds dc zmm7_f zmm7_f zmm23_f;
(* #vpunpckldq %zmm5,%zmm4,%zmm2                    #! PC = 0x555555558428 *)
#vpunpckldq %%zmm5,%%zmm4,%%zmm2                    #! 0x555555558428 = 0x555555558428;
(* #vpunpckldq %zmm7,%zmm6,%zmm19                   #! PC = 0x55555555842e *)
#vpunpckldq %%zmm7,%%zmm6,%%zmm19                   #! 0x55555555842e = 0x55555555842e;
(* #vpunpckhdq %zmm5,%zmm4,%zmm4                    #! PC = 0x555555558434 *)
#vpunpckhdq %%zmm5,%%zmm4,%%zmm4                    #! 0x555555558434 = 0x555555558434;
(* #vpunpckhdq %zmm7,%zmm6,%zmm6                    #! PC = 0x55555555843a *)
#vpunpckhdq %%zmm7,%%zmm6,%%zmm6                    #! 0x55555555843a = 0x55555555843a;
(* #vpunpcklqdq %zmm19,%zmm2,%zmm5                  #! PC = 0x555555558440 *)
#vpunpcklqdq %%zmm19,%%zmm2,%%zmm5                  #! 0x555555558440 = 0x555555558440;
(* #vpunpckhqdq %zmm19,%zmm2,%zmm2                  #! PC = 0x555555558446 *)
#vpunpckhqdq %%zmm19,%%zmm2,%%zmm2                  #! 0x555555558446 = 0x555555558446;
(* #vpunpcklqdq %zmm6,%zmm4,%zmm7                   #! PC = 0x55555555844c *)
#vpunpcklqdq %%zmm6,%%zmm4,%%zmm7                   #! 0x55555555844c = 0x55555555844c;
(* #vpunpckhqdq %zmm6,%zmm4,%zmm4                   #! PC = 0x555555558452 *)
#vpunpckhqdq %%zmm6,%%zmm4,%%zmm4                   #! 0x555555558452 = 0x555555558452;
(* #vshufi32x4 $0x44,%zmm5,%zmm1,%zmm19             #! PC = 0x555555558458 *)
#vshufi32x4 $0x44,%%zmm5,%%zmm1,%%zmm19             #! 0x555555558458 = 0x555555558458;
(* #vshufi32x4 $0xee,%zmm5,%zmm1,%zmm5              #! PC = 0x55555555845f *)
#vshufi32x4 $0xee,%%zmm5,%%zmm1,%%zmm5              #! 0x55555555845f = 0x55555555845f;
(* #vshufi32x4 $0x44,%zmm2,%zmm18,%zmm1             #! PC = 0x555555558466 *)
#vshufi32x4 $0x44,%%zmm2,%%zmm18,%%zmm1             #! 0x555555558466 = 0x555555558466;
(* #vshufi32x4 $0xee,%zmm2,%zmm18,%zmm2             #! PC = 0x55555555846d *)
#vshufi32x4 $0xee,%%zmm2,%%zmm18,%%zmm2             #! 0x55555555846d = 0x55555555846d;
(* #vshufi32x4 $0x44,%zmm7,%zmm3,%zmm18             #! PC = 0x555555558474 *)
#vshufi32x4 $0x44,%%zmm7,%%zmm3,%%zmm18             #! 0x555555558474 = 0x555555558474;
(* #vshufi32x4 $0xee,%zmm7,%zmm3,%zmm7              #! PC = 0x55555555847b *)
#vshufi32x4 $0xee,%%zmm7,%%zmm3,%%zmm7              #! 0x55555555847b = 0x55555555847b;
(* #vshufi32x4 $0x44,%zmm4,%zmm0,%zmm3              #! PC = 0x555555558482 *)
#vshufi32x4 $0x44,%%zmm4,%%zmm0,%%zmm3              #! 0x555555558482 = 0x555555558482;
(* #vshufi32x4 $0xee,%zmm4,%zmm0,%zmm4              #! PC = 0x555555558489 *)
#vshufi32x4 $0xee,%%zmm4,%%zmm0,%%zmm4              #! 0x555555558489 = 0x555555558489;
(* vpaddd %zmm24,%zmm8,%zmm8                       #! PC = 0x555555558490 *)
adds dc zmm8_0 zmm8_0 zmm24_0; adds dc zmm8_1 zmm8_1 zmm24_1;
adds dc zmm8_2 zmm8_2 zmm24_2; adds dc zmm8_3 zmm8_3 zmm24_3;
adds dc zmm8_4 zmm8_4 zmm24_4; adds dc zmm8_5 zmm8_5 zmm24_5;
adds dc zmm8_6 zmm8_6 zmm24_6; adds dc zmm8_7 zmm8_7 zmm24_7;
adds dc zmm8_8 zmm8_8 zmm24_8; adds dc zmm8_9 zmm8_9 zmm24_9;
adds dc zmm8_a zmm8_a zmm24_a; adds dc zmm8_b zmm8_b zmm24_b;
adds dc zmm8_c zmm8_c zmm24_c; adds dc zmm8_d zmm8_d zmm24_d;
adds dc zmm8_e zmm8_e zmm24_e; adds dc zmm8_f zmm8_f zmm24_f;
(* vpaddd %zmm25,%zmm9,%zmm9                       #! PC = 0x555555558496 *)
adds dc zmm9_0 zmm9_0 zmm25_0; adds dc zmm9_1 zmm9_1 zmm25_1;
adds dc zmm9_2 zmm9_2 zmm25_2; adds dc zmm9_3 zmm9_3 zmm25_3;
adds dc zmm9_4 zmm9_4 zmm25_4; adds dc zmm9_5 zmm9_5 zmm25_5;
adds dc zmm9_6 zmm9_6 zmm25_6; adds dc zmm9_7 zmm9_7 zmm25_7;
adds dc zmm9_8 zmm9_8 zmm25_8; adds dc zmm9_9 zmm9_9 zmm25_9;
adds dc zmm9_a zmm9_a zmm25_a; adds dc zmm9_b zmm9_b zmm25_b;
adds dc zmm9_c zmm9_c zmm25_c; adds dc zmm9_d zmm9_d zmm25_d;
adds dc zmm9_e zmm9_e zmm25_e; adds dc zmm9_f zmm9_f zmm25_f;
(* vpaddd %zmm26,%zmm10,%zmm10                     #! PC = 0x55555555849c *)
adds dc zmm10_0 zmm10_0 zmm26_0; adds dc zmm10_1 zmm10_1 zmm26_1;
adds dc zmm10_2 zmm10_2 zmm26_2; adds dc zmm10_3 zmm10_3 zmm26_3;
adds dc zmm10_4 zmm10_4 zmm26_4; adds dc zmm10_5 zmm10_5 zmm26_5;
adds dc zmm10_6 zmm10_6 zmm26_6; adds dc zmm10_7 zmm10_7 zmm26_7;
adds dc zmm10_8 zmm10_8 zmm26_8; adds dc zmm10_9 zmm10_9 zmm26_9;
adds dc zmm10_a zmm10_a zmm26_a; adds dc zmm10_b zmm10_b zmm26_b;
adds dc zmm10_c zmm10_c zmm26_c; adds dc zmm10_d zmm10_d zmm26_d;
adds dc zmm10_e zmm10_e zmm26_e; adds dc zmm10_f zmm10_f zmm26_f;
(* vpaddd %zmm27,%zmm11,%zmm11                     #! PC = 0x5555555584a2 *)
adds dc zmm11_0 zmm11_0 zmm27_0; adds dc zmm11_1 zmm11_1 zmm27_1;
adds dc zmm11_2 zmm11_2 zmm27_2; adds dc zmm11_3 zmm11_3 zmm27_3;
adds dc zmm11_4 zmm11_4 zmm27_4; adds dc zmm11_5 zmm11_5 zmm27_5;
adds dc zmm11_6 zmm11_6 zmm27_6; adds dc zmm11_7 zmm11_7 zmm27_7;
adds dc zmm11_8 zmm11_8 zmm27_8; adds dc zmm11_9 zmm11_9 zmm27_9;
adds dc zmm11_a zmm11_a zmm27_a; adds dc zmm11_b zmm11_b zmm27_b;
adds dc zmm11_c zmm11_c zmm27_c; adds dc zmm11_d zmm11_d zmm27_d;
adds dc zmm11_e zmm11_e zmm27_e; adds dc zmm11_f zmm11_f zmm27_f;
(* #vpunpckldq %zmm9,%zmm8,%zmm6                    #! PC = 0x5555555584a8 *)
#vpunpckldq %%zmm9,%%zmm8,%%zmm6                    #! 0x5555555584a8 = 0x5555555584a8;
(* #vpunpckldq %zmm11,%zmm10,%zmm0                  #! PC = 0x5555555584ae *)
#vpunpckldq %%zmm11,%%zmm10,%%zmm0                  #! 0x5555555584ae = 0x5555555584ae;
(* #vpunpckhdq %zmm9,%zmm8,%zmm8                    #! PC = 0x5555555584b4 *)
#vpunpckhdq %%zmm9,%%zmm8,%%zmm8                    #! 0x5555555584b4 = 0x5555555584b4;
(* #vpunpckhdq %zmm11,%zmm10,%zmm10                 #! PC = 0x5555555584ba *)
#vpunpckhdq %%zmm11,%%zmm10,%%zmm10                 #! 0x5555555584ba = 0x5555555584ba;
(* #vpunpcklqdq %zmm0,%zmm6,%zmm9                   #! PC = 0x5555555584c0 *)
#vpunpcklqdq %%zmm0,%%zmm6,%%zmm9                   #! 0x5555555584c0 = 0x5555555584c0;
(* #vpunpckhqdq %zmm0,%zmm6,%zmm6                   #! PC = 0x5555555584c6 *)
#vpunpckhqdq %%zmm0,%%zmm6,%%zmm6                   #! 0x5555555584c6 = 0x5555555584c6;
(* #vpunpcklqdq %zmm10,%zmm8,%zmm11                 #! PC = 0x5555555584cc *)
#vpunpcklqdq %%zmm10,%%zmm8,%%zmm11                 #! 0x5555555584cc = 0x5555555584cc;
(* #vpunpckhqdq %zmm10,%zmm8,%zmm8                  #! PC = 0x5555555584d2 *)
#vpunpckhqdq %%zmm10,%%zmm8,%%zmm8                  #! 0x5555555584d2 = 0x5555555584d2;
(* vpaddd %zmm28,%zmm12,%zmm12                     #! PC = 0x5555555584d8 *)
adds dc zmm12_0 zmm12_0 zmm28_0; adds dc zmm12_1 zmm12_1 zmm28_1;
adds dc zmm12_2 zmm12_2 zmm28_2; adds dc zmm12_3 zmm12_3 zmm28_3;
adds dc zmm12_4 zmm12_4 zmm28_4; adds dc zmm12_5 zmm12_5 zmm28_5;
adds dc zmm12_6 zmm12_6 zmm28_6; adds dc zmm12_7 zmm12_7 zmm28_7;
adds dc zmm12_8 zmm12_8 zmm28_8; adds dc zmm12_9 zmm12_9 zmm28_9;
adds dc zmm12_a zmm12_a zmm28_a; adds dc zmm12_b zmm12_b zmm28_b;
adds dc zmm12_c zmm12_c zmm28_c; adds dc zmm12_d zmm12_d zmm28_d;
adds dc zmm12_e zmm12_e zmm28_e; adds dc zmm12_f zmm12_f zmm28_f;
(* vpaddd %zmm29,%zmm13,%zmm13                     #! PC = 0x5555555584de *)
adds dc zmm13_0 zmm13_0 zmm29_0; adds dc zmm13_1 zmm13_1 zmm29_1;
adds dc zmm13_2 zmm13_2 zmm29_2; adds dc zmm13_3 zmm13_3 zmm29_3;
adds dc zmm13_4 zmm13_4 zmm29_4; adds dc zmm13_5 zmm13_5 zmm29_5;
adds dc zmm13_6 zmm13_6 zmm29_6; adds dc zmm13_7 zmm13_7 zmm29_7;
adds dc zmm13_8 zmm13_8 zmm29_8; adds dc zmm13_9 zmm13_9 zmm29_9;
adds dc zmm13_a zmm13_a zmm29_a; adds dc zmm13_b zmm13_b zmm29_b;
adds dc zmm13_c zmm13_c zmm29_c; adds dc zmm13_d zmm13_d zmm29_d;
adds dc zmm13_e zmm13_e zmm29_e; adds dc zmm13_f zmm13_f zmm29_f;
(* vpaddd %zmm30,%zmm14,%zmm14                     #! PC = 0x5555555584e4 *)
adds dc zmm14_0 zmm14_0 zmm30_0; adds dc zmm14_1 zmm14_1 zmm30_1;
adds dc zmm14_2 zmm14_2 zmm30_2; adds dc zmm14_3 zmm14_3 zmm30_3;
adds dc zmm14_4 zmm14_4 zmm30_4; adds dc zmm14_5 zmm14_5 zmm30_5;
adds dc zmm14_6 zmm14_6 zmm30_6; adds dc zmm14_7 zmm14_7 zmm30_7;
adds dc zmm14_8 zmm14_8 zmm30_8; adds dc zmm14_9 zmm14_9 zmm30_9;
adds dc zmm14_a zmm14_a zmm30_a; adds dc zmm14_b zmm14_b zmm30_b;
adds dc zmm14_c zmm14_c zmm30_c; adds dc zmm14_d zmm14_d zmm30_d;
adds dc zmm14_e zmm14_e zmm30_e; adds dc zmm14_f zmm14_f zmm30_f;
(* vpaddd %zmm31,%zmm15,%zmm15                     #! PC = 0x5555555584ea *)
adds dc zmm15_0 zmm15_0 zmm31_0; adds dc zmm15_1 zmm15_1 zmm31_1;
adds dc zmm15_2 zmm15_2 zmm31_2; adds dc zmm15_3 zmm15_3 zmm31_3;
adds dc zmm15_4 zmm15_4 zmm31_4; adds dc zmm15_5 zmm15_5 zmm31_5;
adds dc zmm15_6 zmm15_6 zmm31_6; adds dc zmm15_7 zmm15_7 zmm31_7;
adds dc zmm15_8 zmm15_8 zmm31_8; adds dc zmm15_9 zmm15_9 zmm31_9;
adds dc zmm15_a zmm15_a zmm31_a; adds dc zmm15_b zmm15_b zmm31_b;
adds dc zmm15_c zmm15_c zmm31_c; adds dc zmm15_d zmm15_d zmm31_d;
adds dc zmm15_e zmm15_e zmm31_e; adds dc zmm15_f zmm15_f zmm31_f;

mov a0 zmm0_0; mov b0 zmm0_1; mov c0 zmm0_2; mov d0 zmm0_3;
mov e0 zmm0_4; mov f0 zmm0_5; mov g0 zmm0_6; mov h0 zmm0_7;
mov i0 zmm0_8; mov j0 zmm0_9; mov k0 zmm0_a; mov l0 zmm0_b;
mov m0 zmm0_c; mov n0 zmm0_d; mov o0 zmm0_e; mov p0 zmm0_f;
mov a1 zmm1_0; mov b1 zmm1_1; mov c1 zmm1_2; mov d1 zmm1_3;
mov e1 zmm1_4; mov f1 zmm1_5; mov g1 zmm1_6; mov h1 zmm1_7;
mov i1 zmm1_8; mov j1 zmm1_9; mov k1 zmm1_a; mov l1 zmm1_b;
mov m1 zmm1_c; mov n1 zmm1_d; mov o1 zmm1_e; mov p1 zmm1_f;
mov a2 zmm2_0; mov b2 zmm2_1; mov c2 zmm2_2; mov d2 zmm2_3;
mov e2 zmm2_4; mov f2 zmm2_5; mov g2 zmm2_6; mov h2 zmm2_7;
mov i2 zmm2_8; mov j2 zmm2_9; mov k2 zmm2_a; mov l2 zmm2_b;
mov m2 zmm2_c; mov n2 zmm2_d; mov o2 zmm2_e; mov p2 zmm2_f;
mov a3 zmm3_0; mov b3 zmm3_1; mov c3 zmm3_2; mov d3 zmm3_3;
mov e3 zmm3_4; mov f3 zmm3_5; mov g3 zmm3_6; mov h3 zmm3_7;
mov i3 zmm3_8; mov j3 zmm3_9; mov k3 zmm3_a; mov l3 zmm3_b;
mov m3 zmm3_c; mov n3 zmm3_d; mov o3 zmm3_e; mov p3 zmm3_f;
mov a4 zmm4_0; mov b4 zmm4_1; mov c4 zmm4_2; mov d4 zmm4_3;
mov e4 zmm4_4; mov f4 zmm4_5; mov g4 zmm4_6; mov h4 zmm4_7;
mov i4 zmm4_8; mov j4 zmm4_9; mov k4 zmm4_a; mov l4 zmm4_b;
mov m4 zmm4_c; mov n4 zmm4_d; mov o4 zmm4_e; mov p4 zmm4_f;
mov a5 zmm5_0; mov b5 zmm5_1; mov c5 zmm5_2; mov d5 zmm5_3;
mov e5 zmm5_4; mov f5 zmm5_5; mov g5 zmm5_6; mov h5 zmm5_7;
mov i5 zmm5_8; mov j5 zmm5_9; mov k5 zmm5_a; mov l5 zmm5_b;
mov m5 zmm5_c; mov n5 zmm5_d; mov o5 zmm5_e; mov p5 zmm5_f;
mov a6 zmm6_0; mov b6 zmm6_1; mov c6 zmm6_2; mov d6 zmm6_3;
mov e6 zmm6_4; mov f6 zmm6_5; mov g6 zmm6_6; mov h6 zmm6_7;
mov i6 zmm6_8; mov j6 zmm6_9; mov k6 zmm6_a; mov l6 zmm6_b;
mov m6 zmm6_c; mov n6 zmm6_d; mov o6 zmm6_e; mov p6 zmm6_f;
mov a7 zmm7_0; mov b7 zmm7_1; mov c7 zmm7_2; mov d7 zmm7_3;
mov e7 zmm7_4; mov f7 zmm7_5; mov g7 zmm7_6; mov h7 zmm7_7;
mov i7 zmm7_8; mov j7 zmm7_9; mov k7 zmm7_a; mov l7 zmm7_b;
mov m7 zmm7_c; mov n7 zmm7_d; mov o7 zmm7_e; mov p7 zmm7_f;
mov a8 zmm8_0; mov b8 zmm8_1; mov c8 zmm8_2; mov d8 zmm8_3;
mov e8 zmm8_4; mov f8 zmm8_5; mov g8 zmm8_6; mov h8 zmm8_7;
mov i8 zmm8_8; mov j8 zmm8_9; mov k8 zmm8_a; mov l8 zmm8_b;
mov m8 zmm8_c; mov n8 zmm8_d; mov o8 zmm8_e; mov p8 zmm8_f;
mov a9 zmm9_0; mov b9 zmm9_1; mov c9 zmm9_2; mov d9 zmm9_3;
mov e9 zmm9_4; mov f9 zmm9_5; mov g9 zmm9_6; mov h9 zmm9_7;
mov i9 zmm9_8; mov j9 zmm9_9; mov k9 zmm9_a; mov l9 zmm9_b;
mov m9 zmm9_c; mov n9 zmm9_d; mov o9 zmm9_e; mov p9 zmm9_f;
mov aa zmm10_0; mov ba zmm10_1; mov ca zmm10_2; mov da zmm10_3;
mov ea zmm10_4; mov fa zmm10_5; mov ga zmm10_6; mov ha zmm10_7;
mov ia zmm10_8; mov ja zmm10_9; mov ka zmm10_a; mov la zmm10_b;
mov ma zmm10_c; mov na zmm10_d; mov oa zmm10_e; mov pa zmm10_f;
mov ab zmm11_0; mov bb zmm11_1; mov cb zmm11_2; mov db zmm11_3;
mov eb zmm11_4; mov fb zmm11_5; mov gb zmm11_6; mov hb zmm11_7;
mov ib zmm11_8; mov jb zmm11_9; mov kb zmm11_a; mov lb zmm11_b;
mov mb zmm11_c; mov nb zmm11_d; mov ob zmm11_e; mov pb zmm11_f;
mov ac zmm12_0; mov bc zmm12_1; mov cc zmm12_2; mov dc zmm12_3;
mov ec zmm12_4; mov fc zmm12_5; mov gc zmm12_6; mov hc zmm12_7;
mov ic zmm12_8; mov jc zmm12_9; mov kc zmm12_a; mov lc zmm12_b;
mov mc zmm12_c; mov nc zmm12_d; mov oc zmm12_e; mov pc zmm12_f;
mov ad zmm13_0; mov bd zmm13_1; mov cd zmm13_2; mov dd zmm13_3;
mov ed zmm13_4; mov fd zmm13_5; mov gd zmm13_6; mov hd zmm13_7;
mov id zmm13_8; mov jd zmm13_9; mov kd zmm13_a; mov ld zmm13_b;
mov md zmm13_c; mov nd zmm13_d; mov od zmm13_e; mov pd zmm13_f;
mov ae zmm14_0; mov be zmm14_1; mov ce zmm14_2; mov de zmm14_3;
mov ee zmm14_4; mov fe zmm14_5; mov ge zmm14_6; mov he zmm14_7;
mov ie zmm14_8; mov je zmm14_9; mov ke zmm14_a; mov le zmm14_b;
mov me zmm14_c; mov ne zmm14_d; mov oe zmm14_e; mov pe zmm14_f;
mov af zmm15_0; mov bf zmm15_1; mov cf zmm15_2; mov df zmm15_3;
mov ef zmm15_4; mov ff zmm15_5; mov gf zmm15_6; mov hf zmm15_7;
mov if zmm15_8; mov jf zmm15_9; mov kf zmm15_a; mov lf zmm15_b;
mov mf zmm15_c; mov nf zmm15_d; mov of zmm15_e; mov pf zmm15_f;

{
  true
  &&
  true
}

