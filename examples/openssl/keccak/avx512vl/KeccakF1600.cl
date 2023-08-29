(* popper: cv_cec.exe -v -ov a00,a01,a02,a03,a04,a10,a11,a12,a13,a14,a20,a21,a22,a23,a24,a30,a31,a32,a33,a34,a40,a41,a42,a43,a44 KeccakF1600.cl ../KeccakP-1600-reference_KeccakP1600_Permute_24rounds.cl
Parsing CryptoLine file:                [OK]            1.053010 seconds
Checking well-formedness:               [OK]            1.359949 seconds
Parsing CryptoLine file:                [OK]            0.016846 seconds
Checking well-formedness:               [OK]            0.006525 seconds
Equivalence of output group #0:         [OK]            727.745272 seconds
Final result:                           [OK]            733.375844 seconds
*)
(* csweep popper: cv_cec.exe -v -ov a00,a01,a02,a03,a04,a10,a11,a12,a13,a14,a20,a21,a22,a23,a24,a30,a31,a32,a33,a34,a40,a41,a42,a43,a44 KeccakF1600.cl ../KeccakP-1600-reference_KeccakP1600_Permute_24rounds.cl
Parsing CryptoLine file:                [OK]            1.152750 seconds
Checking well-formedness:               [OK]            1.406709 seconds
Parsing CryptoLine file:                [OK]            0.017789 seconds
Checking well-formedness:               [OK]            0.006967 seconds
Equivalence of output group #0:         [OK]            697.179611 seconds
Final result:                           [OK]            703.810242 seconds
*)
(* quine: cv_cec.exe -v -ov1 a00,a01,a02,a03,a04,a10,a11,a12,a13,a14,a20,a21,a22,a23,a24,a30,a31,a32,a33,a34,a40,a41,a42,a43,a44 -ov2 output00,output01,output02,output03,output04,output05,output06,output07,output08,output09,output10,output11,output12,output13,output14,output15,output16,output17,output18,output19,output20,output21,output22,output23,output24 KeccakF1600.cl ../../../../../llvm2cryptoline/examples/XKCP/ref-64bits-fc23735/KeccakP-1600-reference_KeccakP1600_Permute_24rounds.cl
Parsing CryptoLine file:                [OK]            1.650401 seconds
Checking well-formedness:               [OK]            1.605706 seconds
Parsing CryptoLine file:                [OK]            0.018514 seconds
Checking well-formedness:               [OK]            0.007784 seconds
Equivalence of output group #0:         [OK]            1361.921671 seconds
Final result:                           [OK]            1371.963476 seconds
*)

proc vpternlogq64 (uint64 ymmH, uint64 ymmM, uint64 ymmL, uint8 table) =
{ true && true }
  mov h00 ymmH;
  spl h20 h00 h00 32;
  spl h10 h00 h00 16;spl h30 h20 h20 16;
  spl h08 h00 h00  8;spl h18 h10 h10  8;spl h28 h20 h20  8;spl h38 h30 h30  8;
  spl h04 h00 h00  4;spl h0c h08 h08  4;spl h14 h10 h10  4;spl h1c h18 h18  4;
  spl h24 h20 h20  4;spl h2c h28 h28  4;spl h34 h30 h30  4;spl h3c h38 h38  4;
  spl h02 h00 h00  2;spl h06 h04 h04  2;spl h0a h08 h08  2;spl h0e h0c h0c  2;
  spl h12 h10 h10  2;spl h16 h14 h14  2;spl h1a h18 h18  2;spl h1e h1c h1c  2;
  spl h22 h20 h20  2;spl h26 h24 h24  2;spl h2a h28 h28  2;spl h2e h2c h2c  2;
  spl h32 h30 h30  2;spl h36 h34 h34  2;spl h3a h38 h38  2;spl h3e h3c h3c  2;
  spl h01 h00 h00  1;spl h03 h02 h02  1;spl h05 h04 h04  1;spl h07 h06 h06  1;
  spl h09 h08 h08  1;spl h0b h0a h0a  1;spl h0d h0c h0c  1;spl h0f h0e h0e  1;
  spl h11 h10 h10  1;spl h13 h12 h12  1;spl h15 h14 h14  1;spl h17 h16 h16  1;
  spl h19 h18 h18  1;spl h1b h1a h1a  1;spl h1d h1c h1c  1;spl h1f h1e h1e  1;
  spl h21 h20 h20  1;spl h23 h22 h22  1;spl h25 h24 h24  1;spl h27 h26 h26  1;
  spl h29 h28 h28  1;spl h2b h2a h2a  1;spl h2d h2c h2c  1;spl h2f h2e h2e  1;
  spl h31 h30 h30  1;spl h33 h32 h32  1;spl h35 h34 h34  1;spl h37 h36 h36  1;
  spl h39 h38 h38  1;spl h3b h3a h3a  1;spl h3d h3c h3c  1;spl h3f h3e h3e  1;
  mov m00 ymmM;
  spl m20 m00 m00 32;
  spl m10 m00 m00 16;spl m30 m20 m20 16;
  spl m08 m00 m00  8;spl m18 m10 m10  8;spl m28 m20 m20  8;spl m38 m30 m30  8;
  spl m04 m00 m00  4;spl m0c m08 m08  4;spl m14 m10 m10  4;spl m1c m18 m18  4;
  spl m24 m20 m20  4;spl m2c m28 m28  4;spl m34 m30 m30  4;spl m3c m38 m38  4;
  spl m02 m00 m00  2;spl m06 m04 m04  2;spl m0a m08 m08  2;spl m0e m0c m0c  2;
  spl m12 m10 m10  2;spl m16 m14 m14  2;spl m1a m18 m18  2;spl m1e m1c m1c  2;
  spl m22 m20 m20  2;spl m26 m24 m24  2;spl m2a m28 m28  2;spl m2e m2c m2c  2;
  spl m32 m30 m30  2;spl m36 m34 m34  2;spl m3a m38 m38  2;spl m3e m3c m3c  2;
  spl m01 m00 m00  1;spl m03 m02 m02  1;spl m05 m04 m04  1;spl m07 m06 m06  1;
  spl m09 m08 m08  1;spl m0b m0a m0a  1;spl m0d m0c m0c  1;spl m0f m0e m0e  1;
  spl m11 m10 m10  1;spl m13 m12 m12  1;spl m15 m14 m14  1;spl m17 m16 m16  1;
  spl m19 m18 m18  1;spl m1b m1a m1a  1;spl m1d m1c m1c  1;spl m1f m1e m1e  1;
  spl m21 m20 m20  1;spl m23 m22 m22  1;spl m25 m24 m24  1;spl m27 m26 m26  1;
  spl m29 m28 m28  1;spl m2b m2a m2a  1;spl m2d m2c m2c  1;spl m2f m2e m2e  1;
  spl m31 m30 m30  1;spl m33 m32 m32  1;spl m35 m34 m34  1;spl m37 m36 m36  1;
  spl m39 m38 m38  1;spl m3b m3a m3a  1;spl m3d m3c m3c  1;spl m3f m3e m3e  1;
  mov l00 ymmL;
  spl l20 l00 l00 32;
  spl l10 l00 l00 16;spl l30 l20 l20 16;
  spl l08 l00 l00  8;spl l18 l10 l10  8;spl l28 l20 l20  8;spl l38 l30 l30  8;
  spl l04 l00 l00  4;spl l0c l08 l08  4;spl l14 l10 l10  4;spl l1c l18 l18  4;
  spl l24 l20 l20  4;spl l2c l28 l28  4;spl l34 l30 l30  4;spl l3c l38 l38  4;
  spl l02 l00 l00  2;spl l06 l04 l04  2;spl l0a l08 l08  2;spl l0e l0c l0c  2;
  spl l12 l10 l10  2;spl l16 l14 l14  2;spl l1a l18 l18  2;spl l1e l1c l1c  2;
  spl l22 l20 l20  2;spl l26 l24 l24  2;spl l2a l28 l28  2;spl l2e l2c l2c  2;
  spl l32 l30 l30  2;spl l36 l34 l34  2;spl l3a l38 l38  2;spl l3e l3c l3c  2;
  spl l01 l00 l00  1;spl l03 l02 l02  1;spl l05 l04 l04  1;spl l07 l06 l06  1;
  spl l09 l08 l08  1;spl l0b l0a l0a  1;spl l0d l0c l0c  1;spl l0f l0e l0e  1;
  spl l11 l10 l10  1;spl l13 l12 l12  1;spl l15 l14 l14  1;spl l17 l16 l16  1;
  spl l19 l18 l18  1;spl l1b l1a l1a  1;spl l1d l1c l1c  1;spl l1f l1e l1e  1;
  spl l21 l20 l20  1;spl l23 l22 l22  1;spl l25 l24 l24  1;spl l27 l26 l26  1;
  spl l29 l28 l28  1;spl l2b l2a l2a  1;spl l2d l2c l2c  1;spl l2f l2e l2e  1;
  spl l31 l30 l30  1;spl l33 l32 l32  1;spl l35 l34 l34  1;spl l37 l36 l36  1;
  spl l39 l38 l38  1;spl l3b l3a l3a  1;spl l3d l3c l3c  1;spl l3f l3e l3e  1;
  cast h00@bit h00;cast h01@bit h01;cast h02@bit h02;cast h03@bit h03;
  cast h04@bit h04;cast h05@bit h05;cast h06@bit h06;cast h07@bit h07;
  cast h08@bit h08;cast h09@bit h09;cast h0a@bit h0a;cast h0b@bit h0b;
  cast h0c@bit h0c;cast h0d@bit h0d;cast h0e@bit h0e;cast h0f@bit h0f;
  cast h10@bit h10;cast h11@bit h11;cast h12@bit h12;cast h13@bit h13;
  cast h14@bit h14;cast h15@bit h15;cast h16@bit h16;cast h17@bit h17;
  cast h18@bit h18;cast h19@bit h19;cast h1a@bit h1a;cast h1b@bit h1b;
  cast h1c@bit h1c;cast h1d@bit h1d;cast h1e@bit h1e;cast h1f@bit h1f;
  cast h20@bit h20;cast h21@bit h21;cast h22@bit h22;cast h23@bit h23;
  cast h24@bit h24;cast h25@bit h25;cast h26@bit h26;cast h27@bit h27;
  cast h28@bit h28;cast h29@bit h29;cast h2a@bit h2a;cast h2b@bit h2b;
  cast h2c@bit h2c;cast h2d@bit h2d;cast h2e@bit h2e;cast h2f@bit h2f;
  cast h30@bit h30;cast h31@bit h31;cast h32@bit h32;cast h33@bit h33;
  cast h34@bit h34;cast h35@bit h35;cast h36@bit h36;cast h37@bit h37;
  cast h38@bit h38;cast h39@bit h39;cast h3a@bit h3a;cast h3b@bit h3b;
  cast h3c@bit h3c;cast h3d@bit h3d;cast h3e@bit h3e;cast h3f@bit h3f;
  cast m00@bit m00;cast m01@bit m01;cast m02@bit m02;cast m03@bit m03;
  cast m04@bit m04;cast m05@bit m05;cast m06@bit m06;cast m07@bit m07;
  cast m08@bit m08;cast m09@bit m09;cast m0a@bit m0a;cast m0b@bit m0b;
  cast m0c@bit m0c;cast m0d@bit m0d;cast m0e@bit m0e;cast m0f@bit m0f;
  cast m10@bit m10;cast m11@bit m11;cast m12@bit m12;cast m13@bit m13;
  cast m14@bit m14;cast m15@bit m15;cast m16@bit m16;cast m17@bit m17;
  cast m18@bit m18;cast m19@bit m19;cast m1a@bit m1a;cast m1b@bit m1b;
  cast m1c@bit m1c;cast m1d@bit m1d;cast m1e@bit m1e;cast m1f@bit m1f;
  cast m20@bit m20;cast m21@bit m21;cast m22@bit m22;cast m23@bit m23;
  cast m24@bit m24;cast m25@bit m25;cast m26@bit m26;cast m27@bit m27;
  cast m28@bit m28;cast m29@bit m29;cast m2a@bit m2a;cast m2b@bit m2b;
  cast m2c@bit m2c;cast m2d@bit m2d;cast m2e@bit m2e;cast m2f@bit m2f;
  cast m30@bit m30;cast m31@bit m31;cast m32@bit m32;cast m33@bit m33;
  cast m34@bit m34;cast m35@bit m35;cast m36@bit m36;cast m37@bit m37;
  cast m38@bit m38;cast m39@bit m39;cast m3a@bit m3a;cast m3b@bit m3b;
  cast m3c@bit m3c;cast m3d@bit m3d;cast m3e@bit m3e;cast m3f@bit m3f;
  cast l00@bit l00;cast l01@bit l01;cast l02@bit l02;cast l03@bit l03;
  cast l04@bit l04;cast l05@bit l05;cast l06@bit l06;cast l07@bit l07;
  cast l08@bit l08;cast l09@bit l09;cast l0a@bit l0a;cast l0b@bit l0b;
  cast l0c@bit l0c;cast l0d@bit l0d;cast l0e@bit l0e;cast l0f@bit l0f;
  cast l10@bit l10;cast l11@bit l11;cast l12@bit l12;cast l13@bit l13;
  cast l14@bit l14;cast l15@bit l15;cast l16@bit l16;cast l17@bit l17;
  cast l18@bit l18;cast l19@bit l19;cast l1a@bit l1a;cast l1b@bit l1b;
  cast l1c@bit l1c;cast l1d@bit l1d;cast l1e@bit l1e;cast l1f@bit l1f;
  cast l20@bit l20;cast l21@bit l21;cast l22@bit l22;cast l23@bit l23;
  cast l24@bit l24;cast l25@bit l25;cast l26@bit l26;cast l27@bit l27;
  cast l28@bit l28;cast l29@bit l29;cast l2a@bit l2a;cast l2b@bit l2b;
  cast l2c@bit l2c;cast l2d@bit l2d;cast l2e@bit l2e;cast l2f@bit l2f;
  cast l30@bit l30;cast l31@bit l31;cast l32@bit l32;cast l33@bit l33;
  cast l34@bit l34;cast l35@bit l35;cast l36@bit l36;cast l37@bit l37;
  cast l38@bit l38;cast l39@bit l39;cast l3a@bit l3a;cast l3b@bit l3b;
  cast l3c@bit l3c;cast l3d@bit l3d;cast l3e@bit l3e;cast l3f@bit l3f;
  cmov maskH h00 0xf0@uint8 0x0f@uint8; cmov maskM m00 0xcc@uint8 0x33@uint8;
  cmov maskL l00 0xaa@uint8 0x55@uint8;
  and mask00@uint8 maskH maskM; and mask00@uint8 mask00 maskL;
  and o00@uint8 mask00 table; subc o00 dc o00 1@uint8;
  cmov maskH h01 0xf0@uint8 0x0f@uint8; cmov maskM m01 0xcc@uint8 0x33@uint8;
  cmov maskL l01 0xaa@uint8 0x55@uint8;
  and mask01@uint8 maskH maskM; and mask01@uint8 mask01 maskL;
  and o01@uint8 mask01 table; subc o01 dc o01 1@uint8;
  cmov maskH h02 0xf0@uint8 0x0f@uint8; cmov maskM m02 0xcc@uint8 0x33@uint8;
  cmov maskL l02 0xaa@uint8 0x55@uint8;
  and mask02@uint8 maskH maskM; and mask02@uint8 mask02 maskL;
  and o02@uint8 mask02 table; subc o02 dc o02 1@uint8;
  cmov maskH h03 0xf0@uint8 0x0f@uint8; cmov maskM m03 0xcc@uint8 0x33@uint8;
  cmov maskL l03 0xaa@uint8 0x55@uint8;
  and mask03@uint8 maskH maskM; and mask03@uint8 mask03 maskL;
  and o03@uint8 mask03 table; subc o03 dc o03 1@uint8;
  cmov maskH h04 0xf0@uint8 0x0f@uint8; cmov maskM m04 0xcc@uint8 0x33@uint8;
  cmov maskL l04 0xaa@uint8 0x55@uint8;
  and mask04@uint8 maskH maskM; and mask04@uint8 mask04 maskL;
  and o04@uint8 mask04 table; subc o04 dc o04 1@uint8;
  cmov maskH h05 0xf0@uint8 0x0f@uint8; cmov maskM m05 0xcc@uint8 0x33@uint8;
  cmov maskL l05 0xaa@uint8 0x55@uint8;
  and mask05@uint8 maskH maskM; and mask05@uint8 mask05 maskL;
  and o05@uint8 mask05 table; subc o05 dc o05 1@uint8;
  cmov maskH h06 0xf0@uint8 0x0f@uint8; cmov maskM m06 0xcc@uint8 0x33@uint8;
  cmov maskL l06 0xaa@uint8 0x55@uint8;
  and mask06@uint8 maskH maskM; and mask06@uint8 mask06 maskL;
  and o06@uint8 mask06 table; subc o06 dc o06 1@uint8;
  cmov maskH h07 0xf0@uint8 0x0f@uint8; cmov maskM m07 0xcc@uint8 0x33@uint8;
  cmov maskL l07 0xaa@uint8 0x55@uint8;
  and mask07@uint8 maskH maskM; and mask07@uint8 mask07 maskL;
  and o07@uint8 mask07 table; subc o07 dc o07 1@uint8;
  cmov maskH h08 0xf0@uint8 0x0f@uint8; cmov maskM m08 0xcc@uint8 0x33@uint8;
  cmov maskL l08 0xaa@uint8 0x55@uint8;
  and mask08@uint8 maskH maskM; and mask08@uint8 mask08 maskL;
  and o08@uint8 mask08 table; subc o08 dc o08 1@uint8;
  cmov maskH h09 0xf0@uint8 0x0f@uint8; cmov maskM m09 0xcc@uint8 0x33@uint8;
  cmov maskL l09 0xaa@uint8 0x55@uint8;
  and mask09@uint8 maskH maskM; and mask09@uint8 mask09 maskL;
  and o09@uint8 mask09 table; subc o09 dc o09 1@uint8;
  cmov maskH h0a 0xf0@uint8 0x0f@uint8; cmov maskM m0a 0xcc@uint8 0x33@uint8;
  cmov maskL l0a 0xaa@uint8 0x55@uint8;
  and mask0a@uint8 maskH maskM; and mask0a@uint8 mask0a maskL;
  and o0a@uint8 mask0a table; subc o0a dc o0a 1@uint8;
  cmov maskH h0b 0xf0@uint8 0x0f@uint8; cmov maskM m0b 0xcc@uint8 0x33@uint8;
  cmov maskL l0b 0xaa@uint8 0x55@uint8;
  and mask0b@uint8 maskH maskM; and mask0b@uint8 mask0b maskL;
  and o0b@uint8 mask0b table; subc o0b dc o0b 1@uint8;
  cmov maskH h0c 0xf0@uint8 0x0f@uint8; cmov maskM m0c 0xcc@uint8 0x33@uint8;
  cmov maskL l0c 0xaa@uint8 0x55@uint8;
  and mask0c@uint8 maskH maskM; and mask0c@uint8 mask0c maskL;
  and o0c@uint8 mask0c table; subc o0c dc o0c 1@uint8;
  cmov maskH h0d 0xf0@uint8 0x0f@uint8; cmov maskM m0d 0xcc@uint8 0x33@uint8;
  cmov maskL l0d 0xaa@uint8 0x55@uint8;
  and mask0d@uint8 maskH maskM; and mask0d@uint8 mask0d maskL;
  and o0d@uint8 mask0d table; subc o0d dc o0d 1@uint8;
  cmov maskH h0e 0xf0@uint8 0x0f@uint8; cmov maskM m0e 0xcc@uint8 0x33@uint8;
  cmov maskL l0e 0xaa@uint8 0x55@uint8;
  and mask0e@uint8 maskH maskM; and mask0e@uint8 mask0e maskL;
  and o0e@uint8 mask0e table; subc o0e dc o0e 1@uint8;
  cmov maskH h0f 0xf0@uint8 0x0f@uint8; cmov maskM m0f 0xcc@uint8 0x33@uint8;
  cmov maskL l0f 0xaa@uint8 0x55@uint8;
  and mask0f@uint8 maskH maskM; and mask0f@uint8 mask0f maskL;
  and o0f@uint8 mask0f table; subc o0f dc o0f 1@uint8;
  cmov maskH h10 0xf0@uint8 0x0f@uint8; cmov maskM m10 0xcc@uint8 0x33@uint8;
  cmov maskL l10 0xaa@uint8 0x55@uint8;
  and mask10@uint8 maskH maskM; and mask10@uint8 mask10 maskL;
  and o10@uint8 mask10 table; subc o10 dc o10 1@uint8;
  cmov maskH h11 0xf0@uint8 0x0f@uint8; cmov maskM m11 0xcc@uint8 0x33@uint8;
  cmov maskL l11 0xaa@uint8 0x55@uint8;
  and mask11@uint8 maskH maskM; and mask11@uint8 mask11 maskL;
  and o11@uint8 mask11 table; subc o11 dc o11 1@uint8;
  cmov maskH h12 0xf0@uint8 0x0f@uint8; cmov maskM m12 0xcc@uint8 0x33@uint8;
  cmov maskL l12 0xaa@uint8 0x55@uint8;
  and mask12@uint8 maskH maskM; and mask12@uint8 mask12 maskL;
  and o12@uint8 mask12 table; subc o12 dc o12 1@uint8;
  cmov maskH h13 0xf0@uint8 0x0f@uint8; cmov maskM m13 0xcc@uint8 0x33@uint8;
  cmov maskL l13 0xaa@uint8 0x55@uint8;
  and mask13@uint8 maskH maskM; and mask13@uint8 mask13 maskL;
  and o13@uint8 mask13 table; subc o13 dc o13 1@uint8;
  cmov maskH h14 0xf0@uint8 0x0f@uint8; cmov maskM m14 0xcc@uint8 0x33@uint8;
  cmov maskL l14 0xaa@uint8 0x55@uint8;
  and mask14@uint8 maskH maskM; and mask14@uint8 mask14 maskL;
  and o14@uint8 mask14 table; subc o14 dc o14 1@uint8;
  cmov maskH h15 0xf0@uint8 0x0f@uint8; cmov maskM m15 0xcc@uint8 0x33@uint8;
  cmov maskL l15 0xaa@uint8 0x55@uint8;
  and mask15@uint8 maskH maskM; and mask15@uint8 mask15 maskL;
  and o15@uint8 mask15 table; subc o15 dc o15 1@uint8;
  cmov maskH h16 0xf0@uint8 0x0f@uint8; cmov maskM m16 0xcc@uint8 0x33@uint8;
  cmov maskL l16 0xaa@uint8 0x55@uint8;
  and mask16@uint8 maskH maskM; and mask16@uint8 mask16 maskL;
  and o16@uint8 mask16 table; subc o16 dc o16 1@uint8;
  cmov maskH h17 0xf0@uint8 0x0f@uint8; cmov maskM m17 0xcc@uint8 0x33@uint8;
  cmov maskL l17 0xaa@uint8 0x55@uint8;
  and mask17@uint8 maskH maskM; and mask17@uint8 mask17 maskL;
  and o17@uint8 mask17 table; subc o17 dc o17 1@uint8;
  cmov maskH h18 0xf0@uint8 0x0f@uint8; cmov maskM m18 0xcc@uint8 0x33@uint8;
  cmov maskL l18 0xaa@uint8 0x55@uint8;
  and mask18@uint8 maskH maskM; and mask18@uint8 mask18 maskL;
  and o18@uint8 mask18 table; subc o18 dc o18 1@uint8;
  cmov maskH h19 0xf0@uint8 0x0f@uint8; cmov maskM m19 0xcc@uint8 0x33@uint8;
  cmov maskL l19 0xaa@uint8 0x55@uint8;
  and mask19@uint8 maskH maskM; and mask19@uint8 mask19 maskL;
  and o19@uint8 mask19 table; subc o19 dc o19 1@uint8;
  cmov maskH h1a 0xf0@uint8 0x0f@uint8; cmov maskM m1a 0xcc@uint8 0x33@uint8;
  cmov maskL l1a 0xaa@uint8 0x55@uint8;
  and mask1a@uint8 maskH maskM; and mask1a@uint8 mask1a maskL;
  and o1a@uint8 mask1a table; subc o1a dc o1a 1@uint8;
  cmov maskH h1b 0xf0@uint8 0x0f@uint8; cmov maskM m1b 0xcc@uint8 0x33@uint8;
  cmov maskL l1b 0xaa@uint8 0x55@uint8;
  and mask1b@uint8 maskH maskM; and mask1b@uint8 mask1b maskL;
  and o1b@uint8 mask1b table; subc o1b dc o1b 1@uint8;
  cmov maskH h1c 0xf0@uint8 0x0f@uint8; cmov maskM m1c 0xcc@uint8 0x33@uint8;
  cmov maskL l1c 0xaa@uint8 0x55@uint8;
  and mask1c@uint8 maskH maskM; and mask1c@uint8 mask1c maskL;
  and o1c@uint8 mask1c table; subc o1c dc o1c 1@uint8;
  cmov maskH h1d 0xf0@uint8 0x0f@uint8; cmov maskM m1d 0xcc@uint8 0x33@uint8;
  cmov maskL l1d 0xaa@uint8 0x55@uint8;
  and mask1d@uint8 maskH maskM; and mask1d@uint8 mask1d maskL;
  and o1d@uint8 mask1d table; subc o1d dc o1d 1@uint8;
  cmov maskH h1e 0xf0@uint8 0x0f@uint8; cmov maskM m1e 0xcc@uint8 0x33@uint8;
  cmov maskL l1e 0xaa@uint8 0x55@uint8;
  and mask1e@uint8 maskH maskM; and mask1e@uint8 mask1e maskL;
  and o1e@uint8 mask1e table; subc o1e dc o1e 1@uint8;
  cmov maskH h1f 0xf0@uint8 0x0f@uint8; cmov maskM m1f 0xcc@uint8 0x33@uint8;
  cmov maskL l1f 0xaa@uint8 0x55@uint8;
  and mask1f@uint8 maskH maskM; and mask1f@uint8 mask1f maskL;
  and o1f@uint8 mask1f table; subc o1f dc o1f 1@uint8;
  cmov maskH h20 0xf0@uint8 0x0f@uint8; cmov maskM m20 0xcc@uint8 0x33@uint8;
  cmov maskL l20 0xaa@uint8 0x55@uint8;
  and mask20@uint8 maskH maskM; and mask20@uint8 mask20 maskL;
  and o20@uint8 mask20 table; subc o20 dc o20 1@uint8;
  cmov maskH h21 0xf0@uint8 0x0f@uint8; cmov maskM m21 0xcc@uint8 0x33@uint8;
  cmov maskL l21 0xaa@uint8 0x55@uint8;
  and mask21@uint8 maskH maskM; and mask21@uint8 mask21 maskL;
  and o21@uint8 mask21 table; subc o21 dc o21 1@uint8;
  cmov maskH h22 0xf0@uint8 0x0f@uint8; cmov maskM m22 0xcc@uint8 0x33@uint8;
  cmov maskL l22 0xaa@uint8 0x55@uint8;
  and mask22@uint8 maskH maskM; and mask22@uint8 mask22 maskL;
  and o22@uint8 mask22 table; subc o22 dc o22 1@uint8;
  cmov maskH h23 0xf0@uint8 0x0f@uint8; cmov maskM m23 0xcc@uint8 0x33@uint8;
  cmov maskL l23 0xaa@uint8 0x55@uint8;
  and mask23@uint8 maskH maskM; and mask23@uint8 mask23 maskL;
  and o23@uint8 mask23 table; subc o23 dc o23 1@uint8;
  cmov maskH h24 0xf0@uint8 0x0f@uint8; cmov maskM m24 0xcc@uint8 0x33@uint8;
  cmov maskL l24 0xaa@uint8 0x55@uint8;
  and mask24@uint8 maskH maskM; and mask24@uint8 mask24 maskL;
  and o24@uint8 mask24 table; subc o24 dc o24 1@uint8;
  cmov maskH h25 0xf0@uint8 0x0f@uint8; cmov maskM m25 0xcc@uint8 0x33@uint8;
  cmov maskL l25 0xaa@uint8 0x55@uint8;
  and mask25@uint8 maskH maskM; and mask25@uint8 mask25 maskL;
  and o25@uint8 mask25 table; subc o25 dc o25 1@uint8;
  cmov maskH h26 0xf0@uint8 0x0f@uint8; cmov maskM m26 0xcc@uint8 0x33@uint8;
  cmov maskL l26 0xaa@uint8 0x55@uint8;
  and mask26@uint8 maskH maskM; and mask26@uint8 mask26 maskL;
  and o26@uint8 mask26 table; subc o26 dc o26 1@uint8;
  cmov maskH h27 0xf0@uint8 0x0f@uint8; cmov maskM m27 0xcc@uint8 0x33@uint8;
  cmov maskL l27 0xaa@uint8 0x55@uint8;
  and mask27@uint8 maskH maskM; and mask27@uint8 mask27 maskL;
  and o27@uint8 mask27 table; subc o27 dc o27 1@uint8;
  cmov maskH h28 0xf0@uint8 0x0f@uint8; cmov maskM m28 0xcc@uint8 0x33@uint8;
  cmov maskL l28 0xaa@uint8 0x55@uint8;
  and mask28@uint8 maskH maskM; and mask28@uint8 mask28 maskL;
  and o28@uint8 mask28 table; subc o28 dc o28 1@uint8;
  cmov maskH h29 0xf0@uint8 0x0f@uint8; cmov maskM m29 0xcc@uint8 0x33@uint8;
  cmov maskL l29 0xaa@uint8 0x55@uint8;
  and mask29@uint8 maskH maskM; and mask29@uint8 mask29 maskL;
  and o29@uint8 mask29 table; subc o29 dc o29 1@uint8;
  cmov maskH h2a 0xf0@uint8 0x0f@uint8; cmov maskM m2a 0xcc@uint8 0x33@uint8;
  cmov maskL l2a 0xaa@uint8 0x55@uint8;
  and mask2a@uint8 maskH maskM; and mask2a@uint8 mask2a maskL;
  and o2a@uint8 mask2a table; subc o2a dc o2a 1@uint8;
  cmov maskH h2b 0xf0@uint8 0x0f@uint8; cmov maskM m2b 0xcc@uint8 0x33@uint8;
  cmov maskL l2b 0xaa@uint8 0x55@uint8;
  and mask2b@uint8 maskH maskM; and mask2b@uint8 mask2b maskL;
  and o2b@uint8 mask2b table; subc o2b dc o2b 1@uint8;
  cmov maskH h2c 0xf0@uint8 0x0f@uint8; cmov maskM m2c 0xcc@uint8 0x33@uint8;
  cmov maskL l2c 0xaa@uint8 0x55@uint8;
  and mask2c@uint8 maskH maskM; and mask2c@uint8 mask2c maskL;
  and o2c@uint8 mask2c table; subc o2c dc o2c 1@uint8;
  cmov maskH h2d 0xf0@uint8 0x0f@uint8; cmov maskM m2d 0xcc@uint8 0x33@uint8;
  cmov maskL l2d 0xaa@uint8 0x55@uint8;
  and mask2d@uint8 maskH maskM; and mask2d@uint8 mask2d maskL;
  and o2d@uint8 mask2d table; subc o2d dc o2d 1@uint8;
  cmov maskH h2e 0xf0@uint8 0x0f@uint8; cmov maskM m2e 0xcc@uint8 0x33@uint8;
  cmov maskL l2e 0xaa@uint8 0x55@uint8;
  and mask2e@uint8 maskH maskM; and mask2e@uint8 mask2e maskL;
  and o2e@uint8 mask2e table; subc o2e dc o2e 1@uint8;
  cmov maskH h2f 0xf0@uint8 0x0f@uint8; cmov maskM m2f 0xcc@uint8 0x33@uint8;
  cmov maskL l2f 0xaa@uint8 0x55@uint8;
  and mask2f@uint8 maskH maskM; and mask2f@uint8 mask2f maskL;
  and o2f@uint8 mask2f table; subc o2f dc o2f 1@uint8;
  cmov maskH h30 0xf0@uint8 0x0f@uint8; cmov maskM m30 0xcc@uint8 0x33@uint8;
  cmov maskL l30 0xaa@uint8 0x55@uint8;
  and mask30@uint8 maskH maskM; and mask30@uint8 mask30 maskL;
  and o30@uint8 mask30 table; subc o30 dc o30 1@uint8;
  cmov maskH h31 0xf0@uint8 0x0f@uint8; cmov maskM m31 0xcc@uint8 0x33@uint8;
  cmov maskL l31 0xaa@uint8 0x55@uint8;
  and mask31@uint8 maskH maskM; and mask31@uint8 mask31 maskL;
  and o31@uint8 mask31 table; subc o31 dc o31 1@uint8;
  cmov maskH h32 0xf0@uint8 0x0f@uint8; cmov maskM m32 0xcc@uint8 0x33@uint8;
  cmov maskL l32 0xaa@uint8 0x55@uint8;
  and mask32@uint8 maskH maskM; and mask32@uint8 mask32 maskL;
  and o32@uint8 mask32 table; subc o32 dc o32 1@uint8;
  cmov maskH h33 0xf0@uint8 0x0f@uint8; cmov maskM m33 0xcc@uint8 0x33@uint8;
  cmov maskL l33 0xaa@uint8 0x55@uint8;
  and mask33@uint8 maskH maskM; and mask33@uint8 mask33 maskL;
  and o33@uint8 mask33 table; subc o33 dc o33 1@uint8;
  cmov maskH h34 0xf0@uint8 0x0f@uint8; cmov maskM m34 0xcc@uint8 0x33@uint8;
  cmov maskL l34 0xaa@uint8 0x55@uint8;
  and mask34@uint8 maskH maskM; and mask34@uint8 mask34 maskL;
  and o34@uint8 mask34 table; subc o34 dc o34 1@uint8;
  cmov maskH h35 0xf0@uint8 0x0f@uint8; cmov maskM m35 0xcc@uint8 0x33@uint8;
  cmov maskL l35 0xaa@uint8 0x55@uint8;
  and mask35@uint8 maskH maskM; and mask35@uint8 mask35 maskL;
  and o35@uint8 mask35 table; subc o35 dc o35 1@uint8;
  cmov maskH h36 0xf0@uint8 0x0f@uint8; cmov maskM m36 0xcc@uint8 0x33@uint8;
  cmov maskL l36 0xaa@uint8 0x55@uint8;
  and mask36@uint8 maskH maskM; and mask36@uint8 mask36 maskL;
  and o36@uint8 mask36 table; subc o36 dc o36 1@uint8;
  cmov maskH h37 0xf0@uint8 0x0f@uint8; cmov maskM m37 0xcc@uint8 0x33@uint8;
  cmov maskL l37 0xaa@uint8 0x55@uint8;
  and mask37@uint8 maskH maskM; and mask37@uint8 mask37 maskL;
  and o37@uint8 mask37 table; subc o37 dc o37 1@uint8;
  cmov maskH h38 0xf0@uint8 0x0f@uint8; cmov maskM m38 0xcc@uint8 0x33@uint8;
  cmov maskL l38 0xaa@uint8 0x55@uint8;
  and mask38@uint8 maskH maskM; and mask38@uint8 mask38 maskL;
  and o38@uint8 mask38 table; subc o38 dc o38 1@uint8;
  cmov maskH h39 0xf0@uint8 0x0f@uint8; cmov maskM m39 0xcc@uint8 0x33@uint8;
  cmov maskL l39 0xaa@uint8 0x55@uint8;
  and mask39@uint8 maskH maskM; and mask39@uint8 mask39 maskL;
  and o39@uint8 mask39 table; subc o39 dc o39 1@uint8;
  cmov maskH h3a 0xf0@uint8 0x0f@uint8; cmov maskM m3a 0xcc@uint8 0x33@uint8;
  cmov maskL l3a 0xaa@uint8 0x55@uint8;
  and mask3a@uint8 maskH maskM; and mask3a@uint8 mask3a maskL;
  and o3a@uint8 mask3a table; subc o3a dc o3a 1@uint8;
  cmov maskH h3b 0xf0@uint8 0x0f@uint8; cmov maskM m3b 0xcc@uint8 0x33@uint8;
  cmov maskL l3b 0xaa@uint8 0x55@uint8;
  and mask3b@uint8 maskH maskM; and mask3b@uint8 mask3b maskL;
  and o3b@uint8 mask3b table; subc o3b dc o3b 1@uint8;
  cmov maskH h3c 0xf0@uint8 0x0f@uint8; cmov maskM m3c 0xcc@uint8 0x33@uint8;
  cmov maskL l3c 0xaa@uint8 0x55@uint8;
  and mask3c@uint8 maskH maskM; and mask3c@uint8 mask3c maskL;
  and o3c@uint8 mask3c table; subc o3c dc o3c 1@uint8;
  cmov maskH h3d 0xf0@uint8 0x0f@uint8; cmov maskM m3d 0xcc@uint8 0x33@uint8;
  cmov maskL l3d 0xaa@uint8 0x55@uint8;
  and mask3d@uint8 maskH maskM; and mask3d@uint8 mask3d maskL;
  and o3d@uint8 mask3d table; subc o3d dc o3d 1@uint8;
  cmov maskH h3e 0xf0@uint8 0x0f@uint8; cmov maskM m3e 0xcc@uint8 0x33@uint8;
  cmov maskL l3e 0xaa@uint8 0x55@uint8;
  and mask3e@uint8 maskH maskM; and mask3e@uint8 mask3e maskL;
  and o3e@uint8 mask3e table; subc o3e dc o3e 1@uint8;
  cmov maskH h3f 0xf0@uint8 0x0f@uint8; cmov maskM m3f 0xcc@uint8 0x33@uint8;
  cmov maskL l3f 0xaa@uint8 0x55@uint8;
  and mask3f@uint8 maskH maskM; and mask3f@uint8 mask3f maskL;
  and o3f@uint8 mask3f table; subc o3f dc o3f 1@uint8;
  join o00 o01 o00; join o02 o03 o02; join o04 o05 o04; join o06 o07 o06;
  join o08 o09 o08; join o0a o0b o0a; join o0c o0d o0c; join o0e o0f o0e;
  join o10 o11 o10; join o12 o13 o12; join o14 o15 o14; join o16 o17 o16;
  join o18 o19 o18; join o1a o1b o1a; join o1c o1d o1c; join o1e o1f o1e;
  join o20 o21 o20; join o22 o23 o22; join o24 o25 o24; join o26 o27 o26;
  join o28 o29 o28; join o2a o2b o2a; join o2c o2d o2c; join o2e o2f o2e;
  join o30 o31 o30; join o32 o33 o32; join o34 o35 o34; join o36 o37 o36;
  join o38 o39 o38; join o3a o3b o3a; join o3c o3d o3c; join o3e o3f o3e;
  join o00 o02 o00; join o04 o06 o04; join o08 o0a o08; join o0c o0e o0c;
  join o10 o12 o10; join o14 o16 o14; join o18 o1a o18; join o1c o1e o1c;
  join o20 o22 o20; join o24 o26 o24; join o28 o2a o28; join o2c o2e o2c;
  join o30 o32 o30; join o34 o36 o34; join o38 o3a o38; join o3c o3e o3c;
  join o00 o04 o00; join o08 o0c o08; join o10 o14 o10; join o18 o1c o18;
  join o20 o24 o20; join o28 o2c o28; join o30 o34 o30; join o38 o3c o38;
  join o00 o08 o00; join o10 o18 o10; join o20 o28 o20; join o30 o38 o30;
  join o00 o10 o00; join o20 o30 o20;
  join o00 o20 o00;
  mov ymmH o00;
{ true && true }

proc main (
uint64 A00, uint64 A01, uint64 A02, uint64 A03, uint64 A04,
uint64 A10, uint64 A11, uint64 A12, uint64 A13, uint64 A14,
uint64 A20, uint64 A21, uint64 A22, uint64 A23, uint64 A24,
uint64 A30, uint64 A31, uint64 A32, uint64 A33, uint64 A34,
uint64 A40, uint64 A41, uint64 A42, uint64 A43, uint64 A44
) =
{ true && true }

(* from keccak1600-avx2.pl 
my ($A00,   # [0][0] [0][0] [0][0] [0][0]           # %ymm0
    $A01,   # [0][4] [0][3] [0][2] [0][1]           # %ymm1
    $A20,   # [3][0] [1][0] [4][0] [2][0]           # %ymm2
    $A31,   # [2][4] [4][3] [1][2] [3][1]           # %ymm3
    $A21,   # [3][4] [1][3] [4][2] [2][1]           # %ymm4
    $A41,   # [1][4] [2][3] [3][2] [4][1]           # %ymm5
    $A11) = # [4][4] [3][3] [2][2] [1][1]           # %ymm6
*)

mov ymm0_0 A00; mov ymm0_1 A00; mov ymm0_2 A00; mov ymm0_3 A00;
mov ymm1_0 A01; mov ymm1_1 A02; mov ymm1_2 A03; mov ymm1_3 A04;
mov ymm2_0 A20; mov ymm2_1 A40; mov ymm2_2 A10; mov ymm2_3 A30;
mov ymm3_0 A31; mov ymm3_1 A12; mov ymm3_2 A43; mov ymm3_3 A24;
mov ymm4_0 A21; mov ymm4_1 A42; mov ymm4_2 A13; mov ymm4_3 A34;
mov ymm5_0 A41; mov ymm5_1 A32; mov ymm5_2 A23; mov ymm5_3 A14;
mov ymm6_0 A11; mov ymm6_1 A22; mov ymm6_2 A33; mov ymm6_3 A44;



nondet r10@uint64; 



mov L0x555555555a80 0x0000000000000003@uint64; mov L0x555555555a88 0x0000000000000012@uint64;
mov L0x555555555a90 0x0000000000000024@uint64; mov L0x555555555a98 0x0000000000000029@uint64;
mov L0x555555555aa0 0x0000000000000001@uint64; mov L0x555555555aa8 0x000000000000003e@uint64;
mov L0x555555555ab0 0x000000000000001c@uint64; mov L0x555555555ab8 0x000000000000001b@uint64;
mov L0x555555555ac0 0x000000000000002d@uint64; mov L0x555555555ac8 0x0000000000000006@uint64;
mov L0x555555555ad0 0x0000000000000038@uint64; mov L0x555555555ad8 0x0000000000000027@uint64;
mov L0x555555555ae0 0x000000000000000a@uint64; mov L0x555555555ae8 0x000000000000003d@uint64;
mov L0x555555555af0 0x0000000000000037@uint64; mov L0x555555555af8 0x0000000000000008@uint64;
mov L0x555555555b00 0x0000000000000002@uint64; mov L0x555555555b08 0x000000000000000f@uint64;
mov L0x555555555b10 0x0000000000000019@uint64; mov L0x555555555b18 0x0000000000000014@uint64;
mov L0x555555555b20 0x000000000000002c@uint64; mov L0x555555555b28 0x000000000000002b@uint64;
mov L0x555555555b30 0x0000000000000015@uint64; mov L0x555555555b38 0x000000000000000e@uint64;
mov L0x555555555b40 0x0000000000000001@uint64; mov L0x555555555b48 0x0000000000000001@uint64;
mov L0x555555555b50 0x0000000000000001@uint64; mov L0x555555555b58 0x0000000000000001@uint64;
mov L0x555555555b60 0x0000000000008082@uint64; mov L0x555555555b68 0x0000000000008082@uint64;
mov L0x555555555b70 0x0000000000008082@uint64; mov L0x555555555b78 0x0000000000008082@uint64;
mov L0x555555555b80 0x800000000000808a@uint64; mov L0x555555555b88 0x800000000000808a@uint64;
mov L0x555555555b90 0x800000000000808a@uint64; mov L0x555555555b98 0x800000000000808a@uint64;
mov L0x555555555ba0 0x8000000080008000@uint64; mov L0x555555555ba8 0x8000000080008000@uint64;
mov L0x555555555bb0 0x8000000080008000@uint64; mov L0x555555555bb8 0x8000000080008000@uint64;
mov L0x555555555bc0 0x000000000000808b@uint64; mov L0x555555555bc8 0x000000000000808b@uint64;
mov L0x555555555bd0 0x000000000000808b@uint64; mov L0x555555555bd8 0x000000000000808b@uint64;
mov L0x555555555be0 0x0000000080000001@uint64; mov L0x555555555be8 0x0000000080000001@uint64;
mov L0x555555555bf0 0x0000000080000001@uint64; mov L0x555555555bf8 0x0000000080000001@uint64;
mov L0x555555555c00 0x8000000080008081@uint64; mov L0x555555555c08 0x8000000080008081@uint64;
mov L0x555555555c10 0x8000000080008081@uint64; mov L0x555555555c18 0x8000000080008081@uint64;
mov L0x555555555c20 0x8000000000008009@uint64; mov L0x555555555c28 0x8000000000008009@uint64;
mov L0x555555555c30 0x8000000000008009@uint64; mov L0x555555555c38 0x8000000000008009@uint64;
mov L0x555555555c40 0x000000000000008a@uint64; mov L0x555555555c48 0x000000000000008a@uint64;
mov L0x555555555c50 0x000000000000008a@uint64; mov L0x555555555c58 0x000000000000008a@uint64;
mov L0x555555555c60 0x0000000000000088@uint64; mov L0x555555555c68 0x0000000000000088@uint64;
mov L0x555555555c70 0x0000000000000088@uint64; mov L0x555555555c78 0x0000000000000088@uint64;
mov L0x555555555c80 0x0000000080008009@uint64; mov L0x555555555c88 0x0000000080008009@uint64;
mov L0x555555555c90 0x0000000080008009@uint64; mov L0x555555555c98 0x0000000080008009@uint64;
mov L0x555555555ca0 0x000000008000000a@uint64; mov L0x555555555ca8 0x000000008000000a@uint64;
mov L0x555555555cb0 0x000000008000000a@uint64; mov L0x555555555cb8 0x000000008000000a@uint64;
mov L0x555555555cc0 0x000000008000808b@uint64; mov L0x555555555cc8 0x000000008000808b@uint64;
mov L0x555555555cd0 0x000000008000808b@uint64; mov L0x555555555cd8 0x000000008000808b@uint64;
mov L0x555555555ce0 0x800000000000008b@uint64; mov L0x555555555ce8 0x800000000000008b@uint64;
mov L0x555555555cf0 0x800000000000008b@uint64; mov L0x555555555cf8 0x800000000000008b@uint64;
mov L0x555555555d00 0x8000000000008089@uint64; mov L0x555555555d08 0x8000000000008089@uint64;
mov L0x555555555d10 0x8000000000008089@uint64; mov L0x555555555d18 0x8000000000008089@uint64;
mov L0x555555555d20 0x8000000000008003@uint64; mov L0x555555555d28 0x8000000000008003@uint64;
mov L0x555555555d30 0x8000000000008003@uint64; mov L0x555555555d38 0x8000000000008003@uint64;
mov L0x555555555d40 0x8000000000008002@uint64; mov L0x555555555d48 0x8000000000008002@uint64;
mov L0x555555555d50 0x8000000000008002@uint64; mov L0x555555555d58 0x8000000000008002@uint64;
mov L0x555555555d60 0x8000000000000080@uint64; mov L0x555555555d68 0x8000000000000080@uint64;
mov L0x555555555d70 0x8000000000000080@uint64; mov L0x555555555d78 0x8000000000000080@uint64;
mov L0x555555555d80 0x000000000000800a@uint64; mov L0x555555555d88 0x000000000000800a@uint64;
mov L0x555555555d90 0x000000000000800a@uint64; mov L0x555555555d98 0x000000000000800a@uint64;
mov L0x555555555da0 0x800000008000000a@uint64; mov L0x555555555da8 0x800000008000000a@uint64;
mov L0x555555555db0 0x800000008000000a@uint64; mov L0x555555555db8 0x800000008000000a@uint64;
mov L0x555555555dc0 0x8000000080008081@uint64; mov L0x555555555dc8 0x8000000080008081@uint64;
mov L0x555555555dd0 0x8000000080008081@uint64; mov L0x555555555dd8 0x8000000080008081@uint64;
mov L0x555555555de0 0x8000000000008080@uint64; mov L0x555555555de8 0x8000000000008080@uint64;
mov L0x555555555df0 0x8000000000008080@uint64; mov L0x555555555df8 0x8000000000008080@uint64;
mov L0x555555555e00 0x0000000080000001@uint64; mov L0x555555555e08 0x0000000080000001@uint64;
mov L0x555555555e10 0x0000000080000001@uint64; mov L0x555555555e18 0x0000000080000001@uint64;
mov L0x555555555e20 0x8000000080008008@uint64; mov L0x555555555e28 0x8000000080008008@uint64;
mov L0x555555555e30 0x8000000080008008@uint64; mov L0x555555555e38 0x8000000080008008@uint64;


(* #lea    0x939(%rip),%r10        # 0x555555555b40 <iotas>#! PC = 0x555555555200 *)
#lea    0x939(%rip),%r10        # 0x555555555b40 <iotas>#! 0x555555555200 = 0x555555555200;
(* #mov    $0x18,%eax                               #! PC = 0x555555555207 *)
#mov    $0x18,%eax                               #! 0x555555555207 = 0x555555555207;
(* #jmp    0x555555555220 <__KeccakF1600+32>       #! PC = 0x55555555520c *)
#jmp    0x555555555220 <__KeccakF1600+32>       #! 0x55555555520c = 0x55555555520c;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpternlogq $0x96,%ymm1,%ymm9,%ymm12             #! PC = 0x55555555522d *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm12_0, ymm9_0, ymm1_0, table);
inline vpternlogq64 (ymm12_1, ymm9_1, ymm1_1, table);
inline vpternlogq64 (ymm12_2, ymm9_2, ymm1_2, table);
inline vpternlogq64 (ymm12_3, ymm9_3, ymm1_3, table);
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x555555555234 *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555238 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x55555555523e *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vprolq $0x1,%ymm12,%ymm8                        #! PC = 0x555555555244 *)
rol ymm8_0 ymm12_0 1; rol ymm8_1 ymm12_1 1;
rol ymm8_2 ymm12_2 1; rol ymm8_3 ymm12_3 1;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x55555555524b *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x555555555251 *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555256 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm0,%ymm13             #! PC = 0x55555555525c *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm13_0, ymm0_0, ymm7_0, table);
inline vpternlogq64 (ymm13_1, ymm0_1, ymm7_1, table);
inline vpternlogq64 (ymm13_2, ymm0_2, ymm7_2, table);
inline vpternlogq64 (ymm13_3, ymm0_3, ymm7_3, table);
(* vprolq $0x1,%ymm13,%ymm8                        #! PC = 0x555555555263 *)
rol ymm8_0 ymm13_0 1; rol ymm8_1 ymm13_1 1;
rol ymm8_2 ymm13_2 1; rol ymm8_3 ymm13_3 1;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x55555555526a *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x55555555526f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm7               #! PC = 0x555555555275 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm7_0 blen_0; mov ymm7_1 blen_1;
mov ymm7_2 blen_2; mov ymm7_3 blen_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527b *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vprolvq %ymm16,%ymm2,%ymm2                      #! PC = 0x555555555280 *)
rol ymm2_0 ymm2_0  3; rol ymm2_1 ymm2_1 18;
rol ymm2_2 ymm2_2 36; rol ymm2_3 ymm2_3 41;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm3             #! PC = 0x555555555286 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm3_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm3_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm3_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm3_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm18,%ymm3,%ymm3                      #! PC = 0x55555555528d *)
rol ymm3_0 ymm3_0 45; rol ymm3_1 ymm3_1  6;
rol ymm3_2 ymm3_2 56; rol ymm3_3 ymm3_3 39;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm4             #! PC = 0x555555555293 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm4_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm4_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm4_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm4_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm19,%ymm4,%ymm4                      #! PC = 0x55555555529a *)
rol ymm4_0 ymm4_0 10; rol ymm4_1 ymm4_1 61;
rol ymm4_2 ymm4_2 55; rol ymm4_3 ymm4_3  8;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm5             #! PC = 0x5555555552a0 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm5_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm5_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm5_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm5_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm20,%ymm5,%ymm5                      #! PC = 0x5555555552a7 *)
rol ymm5_0 ymm5_0  2; rol ymm5_1 ymm5_1 15;
rol ymm5_2 ymm5_2 25; rol ymm5_3 ymm5_3 20;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ad *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552b3 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm6             #! PC = 0x5555555552b9 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm6_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm6_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm6_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm6_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm21,%ymm6,%ymm8                      #! PC = 0x5555555552c0 *)
rol ymm8_0 ymm6_0 44; rol ymm8_1 ymm6_1 43;
rol ymm8_2 ymm6_2 21; rol ymm8_3 ymm6_3 14;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x5555555552c6 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x5555555552cc *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm1             #! PC = 0x5555555552d2 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm1_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm1_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm1_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm1_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm17,%ymm1,%ymm9                      #! PC = 0x5555555552d9 *)
rol ymm9_0 ymm1_0  1; rol ymm9_1 ymm1_1 62;
rol ymm9_2 ymm1_2 28; rol ymm9_3 ymm1_3 27;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x5555555552df *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x5555555552e5 *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x5555555552eb *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x5555555552f1 *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x5555555552f7 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x5555555552fd *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x555555555303 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555309 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x55555555530f *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x555555555315 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x55555555531b *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x555555555321 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm10,%ymm3            #! PC = 0x555555555327 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm3_0, ymm10_0, ymm15_0, table);
inline vpternlogq64 (ymm3_1, ymm10_1, ymm15_1, table);
inline vpternlogq64 (ymm3_2, ymm10_2, ymm15_2, table);
inline vpternlogq64 (ymm3_3, ymm10_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm12,%ymm5            #! PC = 0x55555555532e *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm5_0, ymm12_0, ymm14_0, table);
inline vpternlogq64 (ymm5_1, ymm12_1, ymm14_1, table);
inline vpternlogq64 (ymm5_2, ymm12_2, ymm14_2, table);
inline vpternlogq64 (ymm5_3, ymm12_3, ymm14_3, table);
(* vpsrldq $0x8,%ymm8,%ymm7                        #! PC = 0x555555555335 *)
mov ymm7_0 ymm8_1; mov ymm7_1 0@uint64;
mov ymm7_2 ymm8_3; mov ymm7_3 0@uint64;
(* vpandn %ymm7,%ymm8,%ymm7                        #! PC = 0x55555555533b *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm7_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm7_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm7_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm7_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555533f *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555534b *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x555555555351 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x555555555357 *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x55555555535d *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm13,%ymm6            #! PC = 0x555555555363 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm6_0, ymm13_0, ymm15_0, table);
inline vpternlogq64 (ymm6_1, ymm13_1, ymm15_1, table);
inline vpternlogq64 (ymm6_2, ymm13_2, ymm15_2, table);
inline vpternlogq64 (ymm6_3, ymm13_3, ymm15_3, table);
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x55555555536a *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x555555555370 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x555555555376 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x55555555537c *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x555555555382 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x555555555388 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x55555555538e *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555394 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x55555555539a *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553a0 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm14,%ymm9,%ymm2             #! PC = 0x5555555553a6 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm2_0, ymm9_0, ymm14_0, table);
inline vpternlogq64 (ymm2_1, ymm9_1, ymm14_1, table);
inline vpternlogq64 (ymm2_2, ymm9_2, ymm14_2, table);
inline vpternlogq64 (ymm2_3, ymm9_3, ymm14_3, table);
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x5555555553ad *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x5555555553b3 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x5555555553b9 *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x5555555553bf *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x5555555553c5 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x5555555553cb *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x5555555553d1 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x5555555553d7 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x5555555553dd *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553e3 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm8,%ymm1             #! PC = 0x5555555553e9 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm1_0, ymm8_0, ymm15_0, table);
inline vpternlogq64 (ymm1_1, ymm8_1, ymm15_1, table);
inline vpternlogq64 (ymm1_2, ymm8_2, ymm15_2, table);
inline vpternlogq64 (ymm1_3, ymm8_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm11,%ymm4            #! PC = 0x5555555553f0 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm4_0, ymm11_0, ymm14_0, table);
inline vpternlogq64 (ymm4_1, ymm11_1, ymm14_1, table);
inline vpternlogq64 (ymm4_2, ymm11_2, ymm14_2, table);
inline vpternlogq64 (ymm4_3, ymm11_3, ymm14_3, table);
(* vpternlogq $0x96,(%r10),%ymm7,%ymm0             #! EA = L0x555555555b40; Value = 0x0000000000000001; PC = 0x5555555553f7 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm0_0, ymm7_0, L0x555555555b40, table);
inline vpternlogq64 (ymm0_1, ymm7_1, L0x555555555b48, table);
inline vpternlogq64 (ymm0_2, ymm7_2, L0x555555555b50, table);
inline vpternlogq64 (ymm0_3, ymm7_3, L0x555555555b58, table);
(* lea    0x20(%r10),%r10                          #! PC = 0x5555555553fe *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555402 *)
(* dec %eax *)
nop;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555404 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555404 = 0x555555555404;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpternlogq $0x96,%ymm1,%ymm9,%ymm12             #! PC = 0x55555555522d *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm12_0, ymm9_0, ymm1_0, table);
inline vpternlogq64 (ymm12_1, ymm9_1, ymm1_1, table);
inline vpternlogq64 (ymm12_2, ymm9_2, ymm1_2, table);
inline vpternlogq64 (ymm12_3, ymm9_3, ymm1_3, table);
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x555555555234 *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555238 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x55555555523e *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vprolq $0x1,%ymm12,%ymm8                        #! PC = 0x555555555244 *)
rol ymm8_0 ymm12_0 1; rol ymm8_1 ymm12_1 1;
rol ymm8_2 ymm12_2 1; rol ymm8_3 ymm12_3 1;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x55555555524b *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x555555555251 *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555256 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm0,%ymm13             #! PC = 0x55555555525c *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm13_0, ymm0_0, ymm7_0, table);
inline vpternlogq64 (ymm13_1, ymm0_1, ymm7_1, table);
inline vpternlogq64 (ymm13_2, ymm0_2, ymm7_2, table);
inline vpternlogq64 (ymm13_3, ymm0_3, ymm7_3, table);
(* vprolq $0x1,%ymm13,%ymm8                        #! PC = 0x555555555263 *)
rol ymm8_0 ymm13_0 1; rol ymm8_1 ymm13_1 1;
rol ymm8_2 ymm13_2 1; rol ymm8_3 ymm13_3 1;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x55555555526a *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x55555555526f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm7               #! PC = 0x555555555275 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm7_0 blen_0; mov ymm7_1 blen_1;
mov ymm7_2 blen_2; mov ymm7_3 blen_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527b *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vprolvq %ymm16,%ymm2,%ymm2                      #! PC = 0x555555555280 *)
rol ymm2_0 ymm2_0  3; rol ymm2_1 ymm2_1 18;
rol ymm2_2 ymm2_2 36; rol ymm2_3 ymm2_3 41;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm3             #! PC = 0x555555555286 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm3_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm3_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm3_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm3_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm18,%ymm3,%ymm3                      #! PC = 0x55555555528d *)
rol ymm3_0 ymm3_0 45; rol ymm3_1 ymm3_1  6;
rol ymm3_2 ymm3_2 56; rol ymm3_3 ymm3_3 39;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm4             #! PC = 0x555555555293 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm4_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm4_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm4_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm4_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm19,%ymm4,%ymm4                      #! PC = 0x55555555529a *)
rol ymm4_0 ymm4_0 10; rol ymm4_1 ymm4_1 61;
rol ymm4_2 ymm4_2 55; rol ymm4_3 ymm4_3  8;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm5             #! PC = 0x5555555552a0 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm5_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm5_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm5_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm5_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm20,%ymm5,%ymm5                      #! PC = 0x5555555552a7 *)
rol ymm5_0 ymm5_0  2; rol ymm5_1 ymm5_1 15;
rol ymm5_2 ymm5_2 25; rol ymm5_3 ymm5_3 20;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ad *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552b3 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm6             #! PC = 0x5555555552b9 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm6_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm6_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm6_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm6_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm21,%ymm6,%ymm8                      #! PC = 0x5555555552c0 *)
rol ymm8_0 ymm6_0 44; rol ymm8_1 ymm6_1 43;
rol ymm8_2 ymm6_2 21; rol ymm8_3 ymm6_3 14;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x5555555552c6 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x5555555552cc *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm1             #! PC = 0x5555555552d2 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm1_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm1_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm1_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm1_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm17,%ymm1,%ymm9                      #! PC = 0x5555555552d9 *)
rol ymm9_0 ymm1_0  1; rol ymm9_1 ymm1_1 62;
rol ymm9_2 ymm1_2 28; rol ymm9_3 ymm1_3 27;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x5555555552df *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x5555555552e5 *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x5555555552eb *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x5555555552f1 *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x5555555552f7 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x5555555552fd *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x555555555303 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555309 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x55555555530f *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x555555555315 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x55555555531b *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x555555555321 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm10,%ymm3            #! PC = 0x555555555327 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm3_0, ymm10_0, ymm15_0, table);
inline vpternlogq64 (ymm3_1, ymm10_1, ymm15_1, table);
inline vpternlogq64 (ymm3_2, ymm10_2, ymm15_2, table);
inline vpternlogq64 (ymm3_3, ymm10_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm12,%ymm5            #! PC = 0x55555555532e *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm5_0, ymm12_0, ymm14_0, table);
inline vpternlogq64 (ymm5_1, ymm12_1, ymm14_1, table);
inline vpternlogq64 (ymm5_2, ymm12_2, ymm14_2, table);
inline vpternlogq64 (ymm5_3, ymm12_3, ymm14_3, table);
(* vpsrldq $0x8,%ymm8,%ymm7                        #! PC = 0x555555555335 *)
mov ymm7_0 ymm8_1; mov ymm7_1 0@uint64;
mov ymm7_2 ymm8_3; mov ymm7_3 0@uint64;
(* vpandn %ymm7,%ymm8,%ymm7                        #! PC = 0x55555555533b *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm7_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm7_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm7_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm7_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555533f *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555534b *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x555555555351 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x555555555357 *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x55555555535d *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm13,%ymm6            #! PC = 0x555555555363 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm6_0, ymm13_0, ymm15_0, table);
inline vpternlogq64 (ymm6_1, ymm13_1, ymm15_1, table);
inline vpternlogq64 (ymm6_2, ymm13_2, ymm15_2, table);
inline vpternlogq64 (ymm6_3, ymm13_3, ymm15_3, table);
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x55555555536a *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x555555555370 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x555555555376 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x55555555537c *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x555555555382 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x555555555388 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x55555555538e *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555394 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x55555555539a *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553a0 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm14,%ymm9,%ymm2             #! PC = 0x5555555553a6 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm2_0, ymm9_0, ymm14_0, table);
inline vpternlogq64 (ymm2_1, ymm9_1, ymm14_1, table);
inline vpternlogq64 (ymm2_2, ymm9_2, ymm14_2, table);
inline vpternlogq64 (ymm2_3, ymm9_3, ymm14_3, table);
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x5555555553ad *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x5555555553b3 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x5555555553b9 *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x5555555553bf *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x5555555553c5 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x5555555553cb *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x5555555553d1 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x5555555553d7 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x5555555553dd *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553e3 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm8,%ymm1             #! PC = 0x5555555553e9 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm1_0, ymm8_0, ymm15_0, table);
inline vpternlogq64 (ymm1_1, ymm8_1, ymm15_1, table);
inline vpternlogq64 (ymm1_2, ymm8_2, ymm15_2, table);
inline vpternlogq64 (ymm1_3, ymm8_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm11,%ymm4            #! PC = 0x5555555553f0 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm4_0, ymm11_0, ymm14_0, table);
inline vpternlogq64 (ymm4_1, ymm11_1, ymm14_1, table);
inline vpternlogq64 (ymm4_2, ymm11_2, ymm14_2, table);
inline vpternlogq64 (ymm4_3, ymm11_3, ymm14_3, table);
(* vpternlogq $0x96,(%r10),%ymm7,%ymm0             #! EA = L0x555555555b60; Value = 0x0000000000008082; PC = 0x5555555553f7 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm0_0, ymm7_0, L0x555555555b60, table);
inline vpternlogq64 (ymm0_1, ymm7_1, L0x555555555b68, table);
inline vpternlogq64 (ymm0_2, ymm7_2, L0x555555555b70, table);
inline vpternlogq64 (ymm0_3, ymm7_3, L0x555555555b78, table);
(* lea    0x20(%r10),%r10                          #! PC = 0x5555555553fe *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555402 *)
(* dec %eax *)
nop;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555404 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555404 = 0x555555555404;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpternlogq $0x96,%ymm1,%ymm9,%ymm12             #! PC = 0x55555555522d *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm12_0, ymm9_0, ymm1_0, table);
inline vpternlogq64 (ymm12_1, ymm9_1, ymm1_1, table);
inline vpternlogq64 (ymm12_2, ymm9_2, ymm1_2, table);
inline vpternlogq64 (ymm12_3, ymm9_3, ymm1_3, table);
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x555555555234 *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555238 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x55555555523e *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vprolq $0x1,%ymm12,%ymm8                        #! PC = 0x555555555244 *)
rol ymm8_0 ymm12_0 1; rol ymm8_1 ymm12_1 1;
rol ymm8_2 ymm12_2 1; rol ymm8_3 ymm12_3 1;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x55555555524b *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x555555555251 *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555256 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm0,%ymm13             #! PC = 0x55555555525c *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm13_0, ymm0_0, ymm7_0, table);
inline vpternlogq64 (ymm13_1, ymm0_1, ymm7_1, table);
inline vpternlogq64 (ymm13_2, ymm0_2, ymm7_2, table);
inline vpternlogq64 (ymm13_3, ymm0_3, ymm7_3, table);
(* vprolq $0x1,%ymm13,%ymm8                        #! PC = 0x555555555263 *)
rol ymm8_0 ymm13_0 1; rol ymm8_1 ymm13_1 1;
rol ymm8_2 ymm13_2 1; rol ymm8_3 ymm13_3 1;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x55555555526a *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x55555555526f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm7               #! PC = 0x555555555275 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm7_0 blen_0; mov ymm7_1 blen_1;
mov ymm7_2 blen_2; mov ymm7_3 blen_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527b *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vprolvq %ymm16,%ymm2,%ymm2                      #! PC = 0x555555555280 *)
rol ymm2_0 ymm2_0  3; rol ymm2_1 ymm2_1 18;
rol ymm2_2 ymm2_2 36; rol ymm2_3 ymm2_3 41;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm3             #! PC = 0x555555555286 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm3_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm3_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm3_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm3_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm18,%ymm3,%ymm3                      #! PC = 0x55555555528d *)
rol ymm3_0 ymm3_0 45; rol ymm3_1 ymm3_1  6;
rol ymm3_2 ymm3_2 56; rol ymm3_3 ymm3_3 39;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm4             #! PC = 0x555555555293 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm4_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm4_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm4_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm4_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm19,%ymm4,%ymm4                      #! PC = 0x55555555529a *)
rol ymm4_0 ymm4_0 10; rol ymm4_1 ymm4_1 61;
rol ymm4_2 ymm4_2 55; rol ymm4_3 ymm4_3  8;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm5             #! PC = 0x5555555552a0 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm5_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm5_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm5_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm5_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm20,%ymm5,%ymm5                      #! PC = 0x5555555552a7 *)
rol ymm5_0 ymm5_0  2; rol ymm5_1 ymm5_1 15;
rol ymm5_2 ymm5_2 25; rol ymm5_3 ymm5_3 20;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ad *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552b3 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm6             #! PC = 0x5555555552b9 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm6_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm6_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm6_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm6_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm21,%ymm6,%ymm8                      #! PC = 0x5555555552c0 *)
rol ymm8_0 ymm6_0 44; rol ymm8_1 ymm6_1 43;
rol ymm8_2 ymm6_2 21; rol ymm8_3 ymm6_3 14;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x5555555552c6 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x5555555552cc *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm1             #! PC = 0x5555555552d2 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm1_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm1_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm1_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm1_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm17,%ymm1,%ymm9                      #! PC = 0x5555555552d9 *)
rol ymm9_0 ymm1_0  1; rol ymm9_1 ymm1_1 62;
rol ymm9_2 ymm1_2 28; rol ymm9_3 ymm1_3 27;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x5555555552df *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x5555555552e5 *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x5555555552eb *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x5555555552f1 *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x5555555552f7 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x5555555552fd *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x555555555303 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555309 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x55555555530f *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x555555555315 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x55555555531b *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x555555555321 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm10,%ymm3            #! PC = 0x555555555327 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm3_0, ymm10_0, ymm15_0, table);
inline vpternlogq64 (ymm3_1, ymm10_1, ymm15_1, table);
inline vpternlogq64 (ymm3_2, ymm10_2, ymm15_2, table);
inline vpternlogq64 (ymm3_3, ymm10_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm12,%ymm5            #! PC = 0x55555555532e *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm5_0, ymm12_0, ymm14_0, table);
inline vpternlogq64 (ymm5_1, ymm12_1, ymm14_1, table);
inline vpternlogq64 (ymm5_2, ymm12_2, ymm14_2, table);
inline vpternlogq64 (ymm5_3, ymm12_3, ymm14_3, table);
(* vpsrldq $0x8,%ymm8,%ymm7                        #! PC = 0x555555555335 *)
mov ymm7_0 ymm8_1; mov ymm7_1 0@uint64;
mov ymm7_2 ymm8_3; mov ymm7_3 0@uint64;
(* vpandn %ymm7,%ymm8,%ymm7                        #! PC = 0x55555555533b *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm7_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm7_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm7_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm7_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555533f *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555534b *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x555555555351 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x555555555357 *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x55555555535d *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm13,%ymm6            #! PC = 0x555555555363 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm6_0, ymm13_0, ymm15_0, table);
inline vpternlogq64 (ymm6_1, ymm13_1, ymm15_1, table);
inline vpternlogq64 (ymm6_2, ymm13_2, ymm15_2, table);
inline vpternlogq64 (ymm6_3, ymm13_3, ymm15_3, table);
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x55555555536a *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x555555555370 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x555555555376 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x55555555537c *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x555555555382 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x555555555388 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x55555555538e *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555394 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x55555555539a *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553a0 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm14,%ymm9,%ymm2             #! PC = 0x5555555553a6 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm2_0, ymm9_0, ymm14_0, table);
inline vpternlogq64 (ymm2_1, ymm9_1, ymm14_1, table);
inline vpternlogq64 (ymm2_2, ymm9_2, ymm14_2, table);
inline vpternlogq64 (ymm2_3, ymm9_3, ymm14_3, table);
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x5555555553ad *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x5555555553b3 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x5555555553b9 *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x5555555553bf *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x5555555553c5 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x5555555553cb *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x5555555553d1 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x5555555553d7 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x5555555553dd *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553e3 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm8,%ymm1             #! PC = 0x5555555553e9 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm1_0, ymm8_0, ymm15_0, table);
inline vpternlogq64 (ymm1_1, ymm8_1, ymm15_1, table);
inline vpternlogq64 (ymm1_2, ymm8_2, ymm15_2, table);
inline vpternlogq64 (ymm1_3, ymm8_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm11,%ymm4            #! PC = 0x5555555553f0 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm4_0, ymm11_0, ymm14_0, table);
inline vpternlogq64 (ymm4_1, ymm11_1, ymm14_1, table);
inline vpternlogq64 (ymm4_2, ymm11_2, ymm14_2, table);
inline vpternlogq64 (ymm4_3, ymm11_3, ymm14_3, table);
(* vpternlogq $0x96,(%r10),%ymm7,%ymm0             #! EA = L0x555555555b80; Value = 0x800000000000808a; PC = 0x5555555553f7 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm0_0, ymm7_0, L0x555555555b80, table);
inline vpternlogq64 (ymm0_1, ymm7_1, L0x555555555b88, table);
inline vpternlogq64 (ymm0_2, ymm7_2, L0x555555555b90, table);
inline vpternlogq64 (ymm0_3, ymm7_3, L0x555555555b98, table);
(* lea    0x20(%r10),%r10                          #! PC = 0x5555555553fe *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555402 *)
(* dec %eax *)
nop;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555404 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555404 = 0x555555555404;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpternlogq $0x96,%ymm1,%ymm9,%ymm12             #! PC = 0x55555555522d *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm12_0, ymm9_0, ymm1_0, table);
inline vpternlogq64 (ymm12_1, ymm9_1, ymm1_1, table);
inline vpternlogq64 (ymm12_2, ymm9_2, ymm1_2, table);
inline vpternlogq64 (ymm12_3, ymm9_3, ymm1_3, table);
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x555555555234 *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555238 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x55555555523e *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vprolq $0x1,%ymm12,%ymm8                        #! PC = 0x555555555244 *)
rol ymm8_0 ymm12_0 1; rol ymm8_1 ymm12_1 1;
rol ymm8_2 ymm12_2 1; rol ymm8_3 ymm12_3 1;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x55555555524b *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x555555555251 *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555256 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm0,%ymm13             #! PC = 0x55555555525c *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm13_0, ymm0_0, ymm7_0, table);
inline vpternlogq64 (ymm13_1, ymm0_1, ymm7_1, table);
inline vpternlogq64 (ymm13_2, ymm0_2, ymm7_2, table);
inline vpternlogq64 (ymm13_3, ymm0_3, ymm7_3, table);
(* vprolq $0x1,%ymm13,%ymm8                        #! PC = 0x555555555263 *)
rol ymm8_0 ymm13_0 1; rol ymm8_1 ymm13_1 1;
rol ymm8_2 ymm13_2 1; rol ymm8_3 ymm13_3 1;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x55555555526a *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x55555555526f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm7               #! PC = 0x555555555275 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm7_0 blen_0; mov ymm7_1 blen_1;
mov ymm7_2 blen_2; mov ymm7_3 blen_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527b *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vprolvq %ymm16,%ymm2,%ymm2                      #! PC = 0x555555555280 *)
rol ymm2_0 ymm2_0  3; rol ymm2_1 ymm2_1 18;
rol ymm2_2 ymm2_2 36; rol ymm2_3 ymm2_3 41;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm3             #! PC = 0x555555555286 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm3_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm3_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm3_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm3_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm18,%ymm3,%ymm3                      #! PC = 0x55555555528d *)
rol ymm3_0 ymm3_0 45; rol ymm3_1 ymm3_1  6;
rol ymm3_2 ymm3_2 56; rol ymm3_3 ymm3_3 39;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm4             #! PC = 0x555555555293 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm4_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm4_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm4_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm4_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm19,%ymm4,%ymm4                      #! PC = 0x55555555529a *)
rol ymm4_0 ymm4_0 10; rol ymm4_1 ymm4_1 61;
rol ymm4_2 ymm4_2 55; rol ymm4_3 ymm4_3  8;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm5             #! PC = 0x5555555552a0 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm5_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm5_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm5_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm5_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm20,%ymm5,%ymm5                      #! PC = 0x5555555552a7 *)
rol ymm5_0 ymm5_0  2; rol ymm5_1 ymm5_1 15;
rol ymm5_2 ymm5_2 25; rol ymm5_3 ymm5_3 20;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ad *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552b3 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm6             #! PC = 0x5555555552b9 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm6_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm6_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm6_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm6_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm21,%ymm6,%ymm8                      #! PC = 0x5555555552c0 *)
rol ymm8_0 ymm6_0 44; rol ymm8_1 ymm6_1 43;
rol ymm8_2 ymm6_2 21; rol ymm8_3 ymm6_3 14;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x5555555552c6 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x5555555552cc *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm1             #! PC = 0x5555555552d2 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm1_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm1_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm1_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm1_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm17,%ymm1,%ymm9                      #! PC = 0x5555555552d9 *)
rol ymm9_0 ymm1_0  1; rol ymm9_1 ymm1_1 62;
rol ymm9_2 ymm1_2 28; rol ymm9_3 ymm1_3 27;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x5555555552df *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x5555555552e5 *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x5555555552eb *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x5555555552f1 *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x5555555552f7 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x5555555552fd *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x555555555303 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555309 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x55555555530f *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x555555555315 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x55555555531b *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x555555555321 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm10,%ymm3            #! PC = 0x555555555327 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm3_0, ymm10_0, ymm15_0, table);
inline vpternlogq64 (ymm3_1, ymm10_1, ymm15_1, table);
inline vpternlogq64 (ymm3_2, ymm10_2, ymm15_2, table);
inline vpternlogq64 (ymm3_3, ymm10_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm12,%ymm5            #! PC = 0x55555555532e *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm5_0, ymm12_0, ymm14_0, table);
inline vpternlogq64 (ymm5_1, ymm12_1, ymm14_1, table);
inline vpternlogq64 (ymm5_2, ymm12_2, ymm14_2, table);
inline vpternlogq64 (ymm5_3, ymm12_3, ymm14_3, table);
(* vpsrldq $0x8,%ymm8,%ymm7                        #! PC = 0x555555555335 *)
mov ymm7_0 ymm8_1; mov ymm7_1 0@uint64;
mov ymm7_2 ymm8_3; mov ymm7_3 0@uint64;
(* vpandn %ymm7,%ymm8,%ymm7                        #! PC = 0x55555555533b *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm7_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm7_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm7_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm7_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555533f *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555534b *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x555555555351 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x555555555357 *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x55555555535d *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm13,%ymm6            #! PC = 0x555555555363 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm6_0, ymm13_0, ymm15_0, table);
inline vpternlogq64 (ymm6_1, ymm13_1, ymm15_1, table);
inline vpternlogq64 (ymm6_2, ymm13_2, ymm15_2, table);
inline vpternlogq64 (ymm6_3, ymm13_3, ymm15_3, table);
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x55555555536a *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x555555555370 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x555555555376 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x55555555537c *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x555555555382 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x555555555388 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x55555555538e *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555394 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x55555555539a *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553a0 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm14,%ymm9,%ymm2             #! PC = 0x5555555553a6 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm2_0, ymm9_0, ymm14_0, table);
inline vpternlogq64 (ymm2_1, ymm9_1, ymm14_1, table);
inline vpternlogq64 (ymm2_2, ymm9_2, ymm14_2, table);
inline vpternlogq64 (ymm2_3, ymm9_3, ymm14_3, table);
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x5555555553ad *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x5555555553b3 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x5555555553b9 *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x5555555553bf *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x5555555553c5 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x5555555553cb *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x5555555553d1 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x5555555553d7 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x5555555553dd *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553e3 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm8,%ymm1             #! PC = 0x5555555553e9 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm1_0, ymm8_0, ymm15_0, table);
inline vpternlogq64 (ymm1_1, ymm8_1, ymm15_1, table);
inline vpternlogq64 (ymm1_2, ymm8_2, ymm15_2, table);
inline vpternlogq64 (ymm1_3, ymm8_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm11,%ymm4            #! PC = 0x5555555553f0 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm4_0, ymm11_0, ymm14_0, table);
inline vpternlogq64 (ymm4_1, ymm11_1, ymm14_1, table);
inline vpternlogq64 (ymm4_2, ymm11_2, ymm14_2, table);
inline vpternlogq64 (ymm4_3, ymm11_3, ymm14_3, table);
(* vpternlogq $0x96,(%r10),%ymm7,%ymm0             #! EA = L0x555555555ba0; Value = 0x8000000080008000; PC = 0x5555555553f7 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm0_0, ymm7_0, L0x555555555ba0, table);
inline vpternlogq64 (ymm0_1, ymm7_1, L0x555555555ba8, table);
inline vpternlogq64 (ymm0_2, ymm7_2, L0x555555555bb0, table);
inline vpternlogq64 (ymm0_3, ymm7_3, L0x555555555bb8, table);
(* lea    0x20(%r10),%r10                          #! PC = 0x5555555553fe *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555402 *)
(* dec %eax *)
nop;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555404 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555404 = 0x555555555404;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpternlogq $0x96,%ymm1,%ymm9,%ymm12             #! PC = 0x55555555522d *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm12_0, ymm9_0, ymm1_0, table);
inline vpternlogq64 (ymm12_1, ymm9_1, ymm1_1, table);
inline vpternlogq64 (ymm12_2, ymm9_2, ymm1_2, table);
inline vpternlogq64 (ymm12_3, ymm9_3, ymm1_3, table);
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x555555555234 *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555238 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x55555555523e *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vprolq $0x1,%ymm12,%ymm8                        #! PC = 0x555555555244 *)
rol ymm8_0 ymm12_0 1; rol ymm8_1 ymm12_1 1;
rol ymm8_2 ymm12_2 1; rol ymm8_3 ymm12_3 1;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x55555555524b *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x555555555251 *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555256 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm0,%ymm13             #! PC = 0x55555555525c *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm13_0, ymm0_0, ymm7_0, table);
inline vpternlogq64 (ymm13_1, ymm0_1, ymm7_1, table);
inline vpternlogq64 (ymm13_2, ymm0_2, ymm7_2, table);
inline vpternlogq64 (ymm13_3, ymm0_3, ymm7_3, table);
(* vprolq $0x1,%ymm13,%ymm8                        #! PC = 0x555555555263 *)
rol ymm8_0 ymm13_0 1; rol ymm8_1 ymm13_1 1;
rol ymm8_2 ymm13_2 1; rol ymm8_3 ymm13_3 1;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x55555555526a *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x55555555526f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm7               #! PC = 0x555555555275 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm7_0 blen_0; mov ymm7_1 blen_1;
mov ymm7_2 blen_2; mov ymm7_3 blen_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527b *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vprolvq %ymm16,%ymm2,%ymm2                      #! PC = 0x555555555280 *)
rol ymm2_0 ymm2_0  3; rol ymm2_1 ymm2_1 18;
rol ymm2_2 ymm2_2 36; rol ymm2_3 ymm2_3 41;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm3             #! PC = 0x555555555286 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm3_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm3_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm3_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm3_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm18,%ymm3,%ymm3                      #! PC = 0x55555555528d *)
rol ymm3_0 ymm3_0 45; rol ymm3_1 ymm3_1  6;
rol ymm3_2 ymm3_2 56; rol ymm3_3 ymm3_3 39;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm4             #! PC = 0x555555555293 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm4_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm4_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm4_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm4_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm19,%ymm4,%ymm4                      #! PC = 0x55555555529a *)
rol ymm4_0 ymm4_0 10; rol ymm4_1 ymm4_1 61;
rol ymm4_2 ymm4_2 55; rol ymm4_3 ymm4_3  8;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm5             #! PC = 0x5555555552a0 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm5_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm5_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm5_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm5_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm20,%ymm5,%ymm5                      #! PC = 0x5555555552a7 *)
rol ymm5_0 ymm5_0  2; rol ymm5_1 ymm5_1 15;
rol ymm5_2 ymm5_2 25; rol ymm5_3 ymm5_3 20;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ad *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552b3 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm6             #! PC = 0x5555555552b9 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm6_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm6_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm6_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm6_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm21,%ymm6,%ymm8                      #! PC = 0x5555555552c0 *)
rol ymm8_0 ymm6_0 44; rol ymm8_1 ymm6_1 43;
rol ymm8_2 ymm6_2 21; rol ymm8_3 ymm6_3 14;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x5555555552c6 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x5555555552cc *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm1             #! PC = 0x5555555552d2 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm1_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm1_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm1_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm1_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm17,%ymm1,%ymm9                      #! PC = 0x5555555552d9 *)
rol ymm9_0 ymm1_0  1; rol ymm9_1 ymm1_1 62;
rol ymm9_2 ymm1_2 28; rol ymm9_3 ymm1_3 27;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x5555555552df *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x5555555552e5 *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x5555555552eb *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x5555555552f1 *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x5555555552f7 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x5555555552fd *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x555555555303 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555309 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x55555555530f *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x555555555315 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x55555555531b *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x555555555321 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm10,%ymm3            #! PC = 0x555555555327 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm3_0, ymm10_0, ymm15_0, table);
inline vpternlogq64 (ymm3_1, ymm10_1, ymm15_1, table);
inline vpternlogq64 (ymm3_2, ymm10_2, ymm15_2, table);
inline vpternlogq64 (ymm3_3, ymm10_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm12,%ymm5            #! PC = 0x55555555532e *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm5_0, ymm12_0, ymm14_0, table);
inline vpternlogq64 (ymm5_1, ymm12_1, ymm14_1, table);
inline vpternlogq64 (ymm5_2, ymm12_2, ymm14_2, table);
inline vpternlogq64 (ymm5_3, ymm12_3, ymm14_3, table);
(* vpsrldq $0x8,%ymm8,%ymm7                        #! PC = 0x555555555335 *)
mov ymm7_0 ymm8_1; mov ymm7_1 0@uint64;
mov ymm7_2 ymm8_3; mov ymm7_3 0@uint64;
(* vpandn %ymm7,%ymm8,%ymm7                        #! PC = 0x55555555533b *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm7_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm7_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm7_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm7_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555533f *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555534b *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x555555555351 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x555555555357 *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x55555555535d *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm13,%ymm6            #! PC = 0x555555555363 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm6_0, ymm13_0, ymm15_0, table);
inline vpternlogq64 (ymm6_1, ymm13_1, ymm15_1, table);
inline vpternlogq64 (ymm6_2, ymm13_2, ymm15_2, table);
inline vpternlogq64 (ymm6_3, ymm13_3, ymm15_3, table);
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x55555555536a *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x555555555370 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x555555555376 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x55555555537c *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x555555555382 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x555555555388 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x55555555538e *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555394 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x55555555539a *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553a0 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm14,%ymm9,%ymm2             #! PC = 0x5555555553a6 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm2_0, ymm9_0, ymm14_0, table);
inline vpternlogq64 (ymm2_1, ymm9_1, ymm14_1, table);
inline vpternlogq64 (ymm2_2, ymm9_2, ymm14_2, table);
inline vpternlogq64 (ymm2_3, ymm9_3, ymm14_3, table);
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x5555555553ad *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x5555555553b3 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x5555555553b9 *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x5555555553bf *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x5555555553c5 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x5555555553cb *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x5555555553d1 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x5555555553d7 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x5555555553dd *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553e3 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm8,%ymm1             #! PC = 0x5555555553e9 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm1_0, ymm8_0, ymm15_0, table);
inline vpternlogq64 (ymm1_1, ymm8_1, ymm15_1, table);
inline vpternlogq64 (ymm1_2, ymm8_2, ymm15_2, table);
inline vpternlogq64 (ymm1_3, ymm8_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm11,%ymm4            #! PC = 0x5555555553f0 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm4_0, ymm11_0, ymm14_0, table);
inline vpternlogq64 (ymm4_1, ymm11_1, ymm14_1, table);
inline vpternlogq64 (ymm4_2, ymm11_2, ymm14_2, table);
inline vpternlogq64 (ymm4_3, ymm11_3, ymm14_3, table);
(* vpternlogq $0x96,(%r10),%ymm7,%ymm0             #! EA = L0x555555555bc0; Value = 0x000000000000808b; PC = 0x5555555553f7 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm0_0, ymm7_0, L0x555555555bc0, table);
inline vpternlogq64 (ymm0_1, ymm7_1, L0x555555555bc8, table);
inline vpternlogq64 (ymm0_2, ymm7_2, L0x555555555bd0, table);
inline vpternlogq64 (ymm0_3, ymm7_3, L0x555555555bd8, table);
(* lea    0x20(%r10),%r10                          #! PC = 0x5555555553fe *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555402 *)
(* dec %eax *)
nop;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555404 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555404 = 0x555555555404;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpternlogq $0x96,%ymm1,%ymm9,%ymm12             #! PC = 0x55555555522d *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm12_0, ymm9_0, ymm1_0, table);
inline vpternlogq64 (ymm12_1, ymm9_1, ymm1_1, table);
inline vpternlogq64 (ymm12_2, ymm9_2, ymm1_2, table);
inline vpternlogq64 (ymm12_3, ymm9_3, ymm1_3, table);
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x555555555234 *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555238 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x55555555523e *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vprolq $0x1,%ymm12,%ymm8                        #! PC = 0x555555555244 *)
rol ymm8_0 ymm12_0 1; rol ymm8_1 ymm12_1 1;
rol ymm8_2 ymm12_2 1; rol ymm8_3 ymm12_3 1;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x55555555524b *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x555555555251 *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555256 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm0,%ymm13             #! PC = 0x55555555525c *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm13_0, ymm0_0, ymm7_0, table);
inline vpternlogq64 (ymm13_1, ymm0_1, ymm7_1, table);
inline vpternlogq64 (ymm13_2, ymm0_2, ymm7_2, table);
inline vpternlogq64 (ymm13_3, ymm0_3, ymm7_3, table);
(* vprolq $0x1,%ymm13,%ymm8                        #! PC = 0x555555555263 *)
rol ymm8_0 ymm13_0 1; rol ymm8_1 ymm13_1 1;
rol ymm8_2 ymm13_2 1; rol ymm8_3 ymm13_3 1;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x55555555526a *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x55555555526f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm7               #! PC = 0x555555555275 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm7_0 blen_0; mov ymm7_1 blen_1;
mov ymm7_2 blen_2; mov ymm7_3 blen_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527b *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vprolvq %ymm16,%ymm2,%ymm2                      #! PC = 0x555555555280 *)
rol ymm2_0 ymm2_0  3; rol ymm2_1 ymm2_1 18;
rol ymm2_2 ymm2_2 36; rol ymm2_3 ymm2_3 41;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm3             #! PC = 0x555555555286 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm3_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm3_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm3_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm3_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm18,%ymm3,%ymm3                      #! PC = 0x55555555528d *)
rol ymm3_0 ymm3_0 45; rol ymm3_1 ymm3_1  6;
rol ymm3_2 ymm3_2 56; rol ymm3_3 ymm3_3 39;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm4             #! PC = 0x555555555293 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm4_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm4_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm4_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm4_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm19,%ymm4,%ymm4                      #! PC = 0x55555555529a *)
rol ymm4_0 ymm4_0 10; rol ymm4_1 ymm4_1 61;
rol ymm4_2 ymm4_2 55; rol ymm4_3 ymm4_3  8;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm5             #! PC = 0x5555555552a0 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm5_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm5_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm5_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm5_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm20,%ymm5,%ymm5                      #! PC = 0x5555555552a7 *)
rol ymm5_0 ymm5_0  2; rol ymm5_1 ymm5_1 15;
rol ymm5_2 ymm5_2 25; rol ymm5_3 ymm5_3 20;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ad *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552b3 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm6             #! PC = 0x5555555552b9 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm6_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm6_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm6_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm6_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm21,%ymm6,%ymm8                      #! PC = 0x5555555552c0 *)
rol ymm8_0 ymm6_0 44; rol ymm8_1 ymm6_1 43;
rol ymm8_2 ymm6_2 21; rol ymm8_3 ymm6_3 14;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x5555555552c6 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x5555555552cc *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm1             #! PC = 0x5555555552d2 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm1_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm1_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm1_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm1_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm17,%ymm1,%ymm9                      #! PC = 0x5555555552d9 *)
rol ymm9_0 ymm1_0  1; rol ymm9_1 ymm1_1 62;
rol ymm9_2 ymm1_2 28; rol ymm9_3 ymm1_3 27;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x5555555552df *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x5555555552e5 *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x5555555552eb *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x5555555552f1 *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x5555555552f7 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x5555555552fd *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x555555555303 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555309 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x55555555530f *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x555555555315 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x55555555531b *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x555555555321 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm10,%ymm3            #! PC = 0x555555555327 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm3_0, ymm10_0, ymm15_0, table);
inline vpternlogq64 (ymm3_1, ymm10_1, ymm15_1, table);
inline vpternlogq64 (ymm3_2, ymm10_2, ymm15_2, table);
inline vpternlogq64 (ymm3_3, ymm10_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm12,%ymm5            #! PC = 0x55555555532e *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm5_0, ymm12_0, ymm14_0, table);
inline vpternlogq64 (ymm5_1, ymm12_1, ymm14_1, table);
inline vpternlogq64 (ymm5_2, ymm12_2, ymm14_2, table);
inline vpternlogq64 (ymm5_3, ymm12_3, ymm14_3, table);
(* vpsrldq $0x8,%ymm8,%ymm7                        #! PC = 0x555555555335 *)
mov ymm7_0 ymm8_1; mov ymm7_1 0@uint64;
mov ymm7_2 ymm8_3; mov ymm7_3 0@uint64;
(* vpandn %ymm7,%ymm8,%ymm7                        #! PC = 0x55555555533b *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm7_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm7_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm7_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm7_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555533f *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555534b *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x555555555351 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x555555555357 *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x55555555535d *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm13,%ymm6            #! PC = 0x555555555363 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm6_0, ymm13_0, ymm15_0, table);
inline vpternlogq64 (ymm6_1, ymm13_1, ymm15_1, table);
inline vpternlogq64 (ymm6_2, ymm13_2, ymm15_2, table);
inline vpternlogq64 (ymm6_3, ymm13_3, ymm15_3, table);
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x55555555536a *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x555555555370 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x555555555376 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x55555555537c *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x555555555382 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x555555555388 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x55555555538e *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555394 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x55555555539a *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553a0 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm14,%ymm9,%ymm2             #! PC = 0x5555555553a6 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm2_0, ymm9_0, ymm14_0, table);
inline vpternlogq64 (ymm2_1, ymm9_1, ymm14_1, table);
inline vpternlogq64 (ymm2_2, ymm9_2, ymm14_2, table);
inline vpternlogq64 (ymm2_3, ymm9_3, ymm14_3, table);
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x5555555553ad *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x5555555553b3 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x5555555553b9 *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x5555555553bf *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x5555555553c5 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x5555555553cb *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x5555555553d1 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x5555555553d7 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x5555555553dd *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553e3 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm8,%ymm1             #! PC = 0x5555555553e9 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm1_0, ymm8_0, ymm15_0, table);
inline vpternlogq64 (ymm1_1, ymm8_1, ymm15_1, table);
inline vpternlogq64 (ymm1_2, ymm8_2, ymm15_2, table);
inline vpternlogq64 (ymm1_3, ymm8_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm11,%ymm4            #! PC = 0x5555555553f0 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm4_0, ymm11_0, ymm14_0, table);
inline vpternlogq64 (ymm4_1, ymm11_1, ymm14_1, table);
inline vpternlogq64 (ymm4_2, ymm11_2, ymm14_2, table);
inline vpternlogq64 (ymm4_3, ymm11_3, ymm14_3, table);
(* vpternlogq $0x96,(%r10),%ymm7,%ymm0             #! EA = L0x555555555be0; Value = 0x0000000080000001; PC = 0x5555555553f7 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm0_0, ymm7_0, L0x555555555be0, table);
inline vpternlogq64 (ymm0_1, ymm7_1, L0x555555555be8, table);
inline vpternlogq64 (ymm0_2, ymm7_2, L0x555555555bf0, table);
inline vpternlogq64 (ymm0_3, ymm7_3, L0x555555555bf8, table);
(* lea    0x20(%r10),%r10                          #! PC = 0x5555555553fe *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555402 *)
(* dec %eax *)
nop;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555404 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555404 = 0x555555555404;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpternlogq $0x96,%ymm1,%ymm9,%ymm12             #! PC = 0x55555555522d *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm12_0, ymm9_0, ymm1_0, table);
inline vpternlogq64 (ymm12_1, ymm9_1, ymm1_1, table);
inline vpternlogq64 (ymm12_2, ymm9_2, ymm1_2, table);
inline vpternlogq64 (ymm12_3, ymm9_3, ymm1_3, table);
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x555555555234 *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555238 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x55555555523e *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vprolq $0x1,%ymm12,%ymm8                        #! PC = 0x555555555244 *)
rol ymm8_0 ymm12_0 1; rol ymm8_1 ymm12_1 1;
rol ymm8_2 ymm12_2 1; rol ymm8_3 ymm12_3 1;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x55555555524b *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x555555555251 *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555256 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm0,%ymm13             #! PC = 0x55555555525c *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm13_0, ymm0_0, ymm7_0, table);
inline vpternlogq64 (ymm13_1, ymm0_1, ymm7_1, table);
inline vpternlogq64 (ymm13_2, ymm0_2, ymm7_2, table);
inline vpternlogq64 (ymm13_3, ymm0_3, ymm7_3, table);
(* vprolq $0x1,%ymm13,%ymm8                        #! PC = 0x555555555263 *)
rol ymm8_0 ymm13_0 1; rol ymm8_1 ymm13_1 1;
rol ymm8_2 ymm13_2 1; rol ymm8_3 ymm13_3 1;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x55555555526a *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x55555555526f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm7               #! PC = 0x555555555275 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm7_0 blen_0; mov ymm7_1 blen_1;
mov ymm7_2 blen_2; mov ymm7_3 blen_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527b *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vprolvq %ymm16,%ymm2,%ymm2                      #! PC = 0x555555555280 *)
rol ymm2_0 ymm2_0  3; rol ymm2_1 ymm2_1 18;
rol ymm2_2 ymm2_2 36; rol ymm2_3 ymm2_3 41;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm3             #! PC = 0x555555555286 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm3_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm3_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm3_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm3_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm18,%ymm3,%ymm3                      #! PC = 0x55555555528d *)
rol ymm3_0 ymm3_0 45; rol ymm3_1 ymm3_1  6;
rol ymm3_2 ymm3_2 56; rol ymm3_3 ymm3_3 39;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm4             #! PC = 0x555555555293 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm4_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm4_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm4_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm4_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm19,%ymm4,%ymm4                      #! PC = 0x55555555529a *)
rol ymm4_0 ymm4_0 10; rol ymm4_1 ymm4_1 61;
rol ymm4_2 ymm4_2 55; rol ymm4_3 ymm4_3  8;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm5             #! PC = 0x5555555552a0 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm5_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm5_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm5_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm5_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm20,%ymm5,%ymm5                      #! PC = 0x5555555552a7 *)
rol ymm5_0 ymm5_0  2; rol ymm5_1 ymm5_1 15;
rol ymm5_2 ymm5_2 25; rol ymm5_3 ymm5_3 20;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ad *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552b3 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm6             #! PC = 0x5555555552b9 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm6_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm6_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm6_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm6_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm21,%ymm6,%ymm8                      #! PC = 0x5555555552c0 *)
rol ymm8_0 ymm6_0 44; rol ymm8_1 ymm6_1 43;
rol ymm8_2 ymm6_2 21; rol ymm8_3 ymm6_3 14;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x5555555552c6 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x5555555552cc *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm1             #! PC = 0x5555555552d2 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm1_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm1_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm1_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm1_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm17,%ymm1,%ymm9                      #! PC = 0x5555555552d9 *)
rol ymm9_0 ymm1_0  1; rol ymm9_1 ymm1_1 62;
rol ymm9_2 ymm1_2 28; rol ymm9_3 ymm1_3 27;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x5555555552df *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x5555555552e5 *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x5555555552eb *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x5555555552f1 *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x5555555552f7 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x5555555552fd *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x555555555303 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555309 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x55555555530f *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x555555555315 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x55555555531b *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x555555555321 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm10,%ymm3            #! PC = 0x555555555327 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm3_0, ymm10_0, ymm15_0, table);
inline vpternlogq64 (ymm3_1, ymm10_1, ymm15_1, table);
inline vpternlogq64 (ymm3_2, ymm10_2, ymm15_2, table);
inline vpternlogq64 (ymm3_3, ymm10_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm12,%ymm5            #! PC = 0x55555555532e *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm5_0, ymm12_0, ymm14_0, table);
inline vpternlogq64 (ymm5_1, ymm12_1, ymm14_1, table);
inline vpternlogq64 (ymm5_2, ymm12_2, ymm14_2, table);
inline vpternlogq64 (ymm5_3, ymm12_3, ymm14_3, table);
(* vpsrldq $0x8,%ymm8,%ymm7                        #! PC = 0x555555555335 *)
mov ymm7_0 ymm8_1; mov ymm7_1 0@uint64;
mov ymm7_2 ymm8_3; mov ymm7_3 0@uint64;
(* vpandn %ymm7,%ymm8,%ymm7                        #! PC = 0x55555555533b *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm7_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm7_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm7_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm7_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555533f *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555534b *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x555555555351 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x555555555357 *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x55555555535d *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm13,%ymm6            #! PC = 0x555555555363 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm6_0, ymm13_0, ymm15_0, table);
inline vpternlogq64 (ymm6_1, ymm13_1, ymm15_1, table);
inline vpternlogq64 (ymm6_2, ymm13_2, ymm15_2, table);
inline vpternlogq64 (ymm6_3, ymm13_3, ymm15_3, table);
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x55555555536a *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x555555555370 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x555555555376 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x55555555537c *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x555555555382 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x555555555388 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x55555555538e *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555394 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x55555555539a *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553a0 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm14,%ymm9,%ymm2             #! PC = 0x5555555553a6 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm2_0, ymm9_0, ymm14_0, table);
inline vpternlogq64 (ymm2_1, ymm9_1, ymm14_1, table);
inline vpternlogq64 (ymm2_2, ymm9_2, ymm14_2, table);
inline vpternlogq64 (ymm2_3, ymm9_3, ymm14_3, table);
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x5555555553ad *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x5555555553b3 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x5555555553b9 *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x5555555553bf *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x5555555553c5 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x5555555553cb *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x5555555553d1 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x5555555553d7 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x5555555553dd *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553e3 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm8,%ymm1             #! PC = 0x5555555553e9 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm1_0, ymm8_0, ymm15_0, table);
inline vpternlogq64 (ymm1_1, ymm8_1, ymm15_1, table);
inline vpternlogq64 (ymm1_2, ymm8_2, ymm15_2, table);
inline vpternlogq64 (ymm1_3, ymm8_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm11,%ymm4            #! PC = 0x5555555553f0 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm4_0, ymm11_0, ymm14_0, table);
inline vpternlogq64 (ymm4_1, ymm11_1, ymm14_1, table);
inline vpternlogq64 (ymm4_2, ymm11_2, ymm14_2, table);
inline vpternlogq64 (ymm4_3, ymm11_3, ymm14_3, table);
(* vpternlogq $0x96,(%r10),%ymm7,%ymm0             #! EA = L0x555555555c00; Value = 0x8000000080008081; PC = 0x5555555553f7 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm0_0, ymm7_0, L0x555555555c00, table);
inline vpternlogq64 (ymm0_1, ymm7_1, L0x555555555c08, table);
inline vpternlogq64 (ymm0_2, ymm7_2, L0x555555555c10, table);
inline vpternlogq64 (ymm0_3, ymm7_3, L0x555555555c18, table);
(* lea    0x20(%r10),%r10                          #! PC = 0x5555555553fe *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555402 *)
(* dec %eax *)
nop;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555404 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555404 = 0x555555555404;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpternlogq $0x96,%ymm1,%ymm9,%ymm12             #! PC = 0x55555555522d *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm12_0, ymm9_0, ymm1_0, table);
inline vpternlogq64 (ymm12_1, ymm9_1, ymm1_1, table);
inline vpternlogq64 (ymm12_2, ymm9_2, ymm1_2, table);
inline vpternlogq64 (ymm12_3, ymm9_3, ymm1_3, table);
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x555555555234 *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555238 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x55555555523e *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vprolq $0x1,%ymm12,%ymm8                        #! PC = 0x555555555244 *)
rol ymm8_0 ymm12_0 1; rol ymm8_1 ymm12_1 1;
rol ymm8_2 ymm12_2 1; rol ymm8_3 ymm12_3 1;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x55555555524b *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x555555555251 *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555256 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm0,%ymm13             #! PC = 0x55555555525c *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm13_0, ymm0_0, ymm7_0, table);
inline vpternlogq64 (ymm13_1, ymm0_1, ymm7_1, table);
inline vpternlogq64 (ymm13_2, ymm0_2, ymm7_2, table);
inline vpternlogq64 (ymm13_3, ymm0_3, ymm7_3, table);
(* vprolq $0x1,%ymm13,%ymm8                        #! PC = 0x555555555263 *)
rol ymm8_0 ymm13_0 1; rol ymm8_1 ymm13_1 1;
rol ymm8_2 ymm13_2 1; rol ymm8_3 ymm13_3 1;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x55555555526a *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x55555555526f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm7               #! PC = 0x555555555275 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm7_0 blen_0; mov ymm7_1 blen_1;
mov ymm7_2 blen_2; mov ymm7_3 blen_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527b *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vprolvq %ymm16,%ymm2,%ymm2                      #! PC = 0x555555555280 *)
rol ymm2_0 ymm2_0  3; rol ymm2_1 ymm2_1 18;
rol ymm2_2 ymm2_2 36; rol ymm2_3 ymm2_3 41;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm3             #! PC = 0x555555555286 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm3_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm3_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm3_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm3_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm18,%ymm3,%ymm3                      #! PC = 0x55555555528d *)
rol ymm3_0 ymm3_0 45; rol ymm3_1 ymm3_1  6;
rol ymm3_2 ymm3_2 56; rol ymm3_3 ymm3_3 39;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm4             #! PC = 0x555555555293 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm4_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm4_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm4_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm4_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm19,%ymm4,%ymm4                      #! PC = 0x55555555529a *)
rol ymm4_0 ymm4_0 10; rol ymm4_1 ymm4_1 61;
rol ymm4_2 ymm4_2 55; rol ymm4_3 ymm4_3  8;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm5             #! PC = 0x5555555552a0 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm5_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm5_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm5_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm5_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm20,%ymm5,%ymm5                      #! PC = 0x5555555552a7 *)
rol ymm5_0 ymm5_0  2; rol ymm5_1 ymm5_1 15;
rol ymm5_2 ymm5_2 25; rol ymm5_3 ymm5_3 20;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ad *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552b3 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm6             #! PC = 0x5555555552b9 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm6_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm6_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm6_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm6_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm21,%ymm6,%ymm8                      #! PC = 0x5555555552c0 *)
rol ymm8_0 ymm6_0 44; rol ymm8_1 ymm6_1 43;
rol ymm8_2 ymm6_2 21; rol ymm8_3 ymm6_3 14;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x5555555552c6 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x5555555552cc *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm1             #! PC = 0x5555555552d2 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm1_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm1_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm1_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm1_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm17,%ymm1,%ymm9                      #! PC = 0x5555555552d9 *)
rol ymm9_0 ymm1_0  1; rol ymm9_1 ymm1_1 62;
rol ymm9_2 ymm1_2 28; rol ymm9_3 ymm1_3 27;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x5555555552df *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x5555555552e5 *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x5555555552eb *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x5555555552f1 *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x5555555552f7 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x5555555552fd *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x555555555303 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555309 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x55555555530f *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x555555555315 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x55555555531b *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x555555555321 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm10,%ymm3            #! PC = 0x555555555327 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm3_0, ymm10_0, ymm15_0, table);
inline vpternlogq64 (ymm3_1, ymm10_1, ymm15_1, table);
inline vpternlogq64 (ymm3_2, ymm10_2, ymm15_2, table);
inline vpternlogq64 (ymm3_3, ymm10_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm12,%ymm5            #! PC = 0x55555555532e *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm5_0, ymm12_0, ymm14_0, table);
inline vpternlogq64 (ymm5_1, ymm12_1, ymm14_1, table);
inline vpternlogq64 (ymm5_2, ymm12_2, ymm14_2, table);
inline vpternlogq64 (ymm5_3, ymm12_3, ymm14_3, table);
(* vpsrldq $0x8,%ymm8,%ymm7                        #! PC = 0x555555555335 *)
mov ymm7_0 ymm8_1; mov ymm7_1 0@uint64;
mov ymm7_2 ymm8_3; mov ymm7_3 0@uint64;
(* vpandn %ymm7,%ymm8,%ymm7                        #! PC = 0x55555555533b *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm7_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm7_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm7_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm7_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555533f *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555534b *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x555555555351 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x555555555357 *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x55555555535d *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm13,%ymm6            #! PC = 0x555555555363 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm6_0, ymm13_0, ymm15_0, table);
inline vpternlogq64 (ymm6_1, ymm13_1, ymm15_1, table);
inline vpternlogq64 (ymm6_2, ymm13_2, ymm15_2, table);
inline vpternlogq64 (ymm6_3, ymm13_3, ymm15_3, table);
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x55555555536a *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x555555555370 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x555555555376 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x55555555537c *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x555555555382 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x555555555388 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x55555555538e *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555394 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x55555555539a *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553a0 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm14,%ymm9,%ymm2             #! PC = 0x5555555553a6 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm2_0, ymm9_0, ymm14_0, table);
inline vpternlogq64 (ymm2_1, ymm9_1, ymm14_1, table);
inline vpternlogq64 (ymm2_2, ymm9_2, ymm14_2, table);
inline vpternlogq64 (ymm2_3, ymm9_3, ymm14_3, table);
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x5555555553ad *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x5555555553b3 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x5555555553b9 *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x5555555553bf *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x5555555553c5 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x5555555553cb *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x5555555553d1 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x5555555553d7 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x5555555553dd *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553e3 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm8,%ymm1             #! PC = 0x5555555553e9 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm1_0, ymm8_0, ymm15_0, table);
inline vpternlogq64 (ymm1_1, ymm8_1, ymm15_1, table);
inline vpternlogq64 (ymm1_2, ymm8_2, ymm15_2, table);
inline vpternlogq64 (ymm1_3, ymm8_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm11,%ymm4            #! PC = 0x5555555553f0 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm4_0, ymm11_0, ymm14_0, table);
inline vpternlogq64 (ymm4_1, ymm11_1, ymm14_1, table);
inline vpternlogq64 (ymm4_2, ymm11_2, ymm14_2, table);
inline vpternlogq64 (ymm4_3, ymm11_3, ymm14_3, table);
(* vpternlogq $0x96,(%r10),%ymm7,%ymm0             #! EA = L0x555555555c20; Value = 0x8000000000008009; PC = 0x5555555553f7 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm0_0, ymm7_0, L0x555555555c20, table);
inline vpternlogq64 (ymm0_1, ymm7_1, L0x555555555c28, table);
inline vpternlogq64 (ymm0_2, ymm7_2, L0x555555555c30, table);
inline vpternlogq64 (ymm0_3, ymm7_3, L0x555555555c38, table);
(* lea    0x20(%r10),%r10                          #! PC = 0x5555555553fe *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555402 *)
(* dec %eax *)
nop;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555404 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555404 = 0x555555555404;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpternlogq $0x96,%ymm1,%ymm9,%ymm12             #! PC = 0x55555555522d *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm12_0, ymm9_0, ymm1_0, table);
inline vpternlogq64 (ymm12_1, ymm9_1, ymm1_1, table);
inline vpternlogq64 (ymm12_2, ymm9_2, ymm1_2, table);
inline vpternlogq64 (ymm12_3, ymm9_3, ymm1_3, table);
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x555555555234 *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555238 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x55555555523e *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vprolq $0x1,%ymm12,%ymm8                        #! PC = 0x555555555244 *)
rol ymm8_0 ymm12_0 1; rol ymm8_1 ymm12_1 1;
rol ymm8_2 ymm12_2 1; rol ymm8_3 ymm12_3 1;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x55555555524b *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x555555555251 *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555256 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm0,%ymm13             #! PC = 0x55555555525c *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm13_0, ymm0_0, ymm7_0, table);
inline vpternlogq64 (ymm13_1, ymm0_1, ymm7_1, table);
inline vpternlogq64 (ymm13_2, ymm0_2, ymm7_2, table);
inline vpternlogq64 (ymm13_3, ymm0_3, ymm7_3, table);
(* vprolq $0x1,%ymm13,%ymm8                        #! PC = 0x555555555263 *)
rol ymm8_0 ymm13_0 1; rol ymm8_1 ymm13_1 1;
rol ymm8_2 ymm13_2 1; rol ymm8_3 ymm13_3 1;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x55555555526a *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x55555555526f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm7               #! PC = 0x555555555275 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm7_0 blen_0; mov ymm7_1 blen_1;
mov ymm7_2 blen_2; mov ymm7_3 blen_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527b *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vprolvq %ymm16,%ymm2,%ymm2                      #! PC = 0x555555555280 *)
rol ymm2_0 ymm2_0  3; rol ymm2_1 ymm2_1 18;
rol ymm2_2 ymm2_2 36; rol ymm2_3 ymm2_3 41;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm3             #! PC = 0x555555555286 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm3_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm3_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm3_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm3_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm18,%ymm3,%ymm3                      #! PC = 0x55555555528d *)
rol ymm3_0 ymm3_0 45; rol ymm3_1 ymm3_1  6;
rol ymm3_2 ymm3_2 56; rol ymm3_3 ymm3_3 39;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm4             #! PC = 0x555555555293 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm4_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm4_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm4_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm4_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm19,%ymm4,%ymm4                      #! PC = 0x55555555529a *)
rol ymm4_0 ymm4_0 10; rol ymm4_1 ymm4_1 61;
rol ymm4_2 ymm4_2 55; rol ymm4_3 ymm4_3  8;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm5             #! PC = 0x5555555552a0 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm5_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm5_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm5_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm5_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm20,%ymm5,%ymm5                      #! PC = 0x5555555552a7 *)
rol ymm5_0 ymm5_0  2; rol ymm5_1 ymm5_1 15;
rol ymm5_2 ymm5_2 25; rol ymm5_3 ymm5_3 20;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ad *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552b3 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm6             #! PC = 0x5555555552b9 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm6_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm6_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm6_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm6_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm21,%ymm6,%ymm8                      #! PC = 0x5555555552c0 *)
rol ymm8_0 ymm6_0 44; rol ymm8_1 ymm6_1 43;
rol ymm8_2 ymm6_2 21; rol ymm8_3 ymm6_3 14;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x5555555552c6 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x5555555552cc *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm1             #! PC = 0x5555555552d2 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm1_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm1_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm1_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm1_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm17,%ymm1,%ymm9                      #! PC = 0x5555555552d9 *)
rol ymm9_0 ymm1_0  1; rol ymm9_1 ymm1_1 62;
rol ymm9_2 ymm1_2 28; rol ymm9_3 ymm1_3 27;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x5555555552df *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x5555555552e5 *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x5555555552eb *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x5555555552f1 *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x5555555552f7 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x5555555552fd *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x555555555303 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555309 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x55555555530f *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x555555555315 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x55555555531b *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x555555555321 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm10,%ymm3            #! PC = 0x555555555327 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm3_0, ymm10_0, ymm15_0, table);
inline vpternlogq64 (ymm3_1, ymm10_1, ymm15_1, table);
inline vpternlogq64 (ymm3_2, ymm10_2, ymm15_2, table);
inline vpternlogq64 (ymm3_3, ymm10_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm12,%ymm5            #! PC = 0x55555555532e *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm5_0, ymm12_0, ymm14_0, table);
inline vpternlogq64 (ymm5_1, ymm12_1, ymm14_1, table);
inline vpternlogq64 (ymm5_2, ymm12_2, ymm14_2, table);
inline vpternlogq64 (ymm5_3, ymm12_3, ymm14_3, table);
(* vpsrldq $0x8,%ymm8,%ymm7                        #! PC = 0x555555555335 *)
mov ymm7_0 ymm8_1; mov ymm7_1 0@uint64;
mov ymm7_2 ymm8_3; mov ymm7_3 0@uint64;
(* vpandn %ymm7,%ymm8,%ymm7                        #! PC = 0x55555555533b *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm7_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm7_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm7_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm7_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555533f *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555534b *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x555555555351 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x555555555357 *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x55555555535d *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm13,%ymm6            #! PC = 0x555555555363 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm6_0, ymm13_0, ymm15_0, table);
inline vpternlogq64 (ymm6_1, ymm13_1, ymm15_1, table);
inline vpternlogq64 (ymm6_2, ymm13_2, ymm15_2, table);
inline vpternlogq64 (ymm6_3, ymm13_3, ymm15_3, table);
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x55555555536a *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x555555555370 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x555555555376 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x55555555537c *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x555555555382 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x555555555388 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x55555555538e *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555394 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x55555555539a *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553a0 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm14,%ymm9,%ymm2             #! PC = 0x5555555553a6 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm2_0, ymm9_0, ymm14_0, table);
inline vpternlogq64 (ymm2_1, ymm9_1, ymm14_1, table);
inline vpternlogq64 (ymm2_2, ymm9_2, ymm14_2, table);
inline vpternlogq64 (ymm2_3, ymm9_3, ymm14_3, table);
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x5555555553ad *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x5555555553b3 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x5555555553b9 *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x5555555553bf *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x5555555553c5 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x5555555553cb *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x5555555553d1 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x5555555553d7 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x5555555553dd *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553e3 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm8,%ymm1             #! PC = 0x5555555553e9 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm1_0, ymm8_0, ymm15_0, table);
inline vpternlogq64 (ymm1_1, ymm8_1, ymm15_1, table);
inline vpternlogq64 (ymm1_2, ymm8_2, ymm15_2, table);
inline vpternlogq64 (ymm1_3, ymm8_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm11,%ymm4            #! PC = 0x5555555553f0 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm4_0, ymm11_0, ymm14_0, table);
inline vpternlogq64 (ymm4_1, ymm11_1, ymm14_1, table);
inline vpternlogq64 (ymm4_2, ymm11_2, ymm14_2, table);
inline vpternlogq64 (ymm4_3, ymm11_3, ymm14_3, table);
(* vpternlogq $0x96,(%r10),%ymm7,%ymm0             #! EA = L0x555555555c40; Value = 0x000000000000008a; PC = 0x5555555553f7 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm0_0, ymm7_0, L0x555555555c40, table);
inline vpternlogq64 (ymm0_1, ymm7_1, L0x555555555c48, table);
inline vpternlogq64 (ymm0_2, ymm7_2, L0x555555555c50, table);
inline vpternlogq64 (ymm0_3, ymm7_3, L0x555555555c58, table);
(* lea    0x20(%r10),%r10                          #! PC = 0x5555555553fe *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555402 *)
(* dec %eax *)
nop;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555404 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555404 = 0x555555555404;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpternlogq $0x96,%ymm1,%ymm9,%ymm12             #! PC = 0x55555555522d *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm12_0, ymm9_0, ymm1_0, table);
inline vpternlogq64 (ymm12_1, ymm9_1, ymm1_1, table);
inline vpternlogq64 (ymm12_2, ymm9_2, ymm1_2, table);
inline vpternlogq64 (ymm12_3, ymm9_3, ymm1_3, table);
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x555555555234 *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555238 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x55555555523e *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vprolq $0x1,%ymm12,%ymm8                        #! PC = 0x555555555244 *)
rol ymm8_0 ymm12_0 1; rol ymm8_1 ymm12_1 1;
rol ymm8_2 ymm12_2 1; rol ymm8_3 ymm12_3 1;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x55555555524b *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x555555555251 *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555256 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm0,%ymm13             #! PC = 0x55555555525c *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm13_0, ymm0_0, ymm7_0, table);
inline vpternlogq64 (ymm13_1, ymm0_1, ymm7_1, table);
inline vpternlogq64 (ymm13_2, ymm0_2, ymm7_2, table);
inline vpternlogq64 (ymm13_3, ymm0_3, ymm7_3, table);
(* vprolq $0x1,%ymm13,%ymm8                        #! PC = 0x555555555263 *)
rol ymm8_0 ymm13_0 1; rol ymm8_1 ymm13_1 1;
rol ymm8_2 ymm13_2 1; rol ymm8_3 ymm13_3 1;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x55555555526a *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x55555555526f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm7               #! PC = 0x555555555275 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm7_0 blen_0; mov ymm7_1 blen_1;
mov ymm7_2 blen_2; mov ymm7_3 blen_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527b *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vprolvq %ymm16,%ymm2,%ymm2                      #! PC = 0x555555555280 *)
rol ymm2_0 ymm2_0  3; rol ymm2_1 ymm2_1 18;
rol ymm2_2 ymm2_2 36; rol ymm2_3 ymm2_3 41;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm3             #! PC = 0x555555555286 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm3_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm3_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm3_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm3_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm18,%ymm3,%ymm3                      #! PC = 0x55555555528d *)
rol ymm3_0 ymm3_0 45; rol ymm3_1 ymm3_1  6;
rol ymm3_2 ymm3_2 56; rol ymm3_3 ymm3_3 39;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm4             #! PC = 0x555555555293 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm4_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm4_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm4_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm4_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm19,%ymm4,%ymm4                      #! PC = 0x55555555529a *)
rol ymm4_0 ymm4_0 10; rol ymm4_1 ymm4_1 61;
rol ymm4_2 ymm4_2 55; rol ymm4_3 ymm4_3  8;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm5             #! PC = 0x5555555552a0 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm5_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm5_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm5_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm5_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm20,%ymm5,%ymm5                      #! PC = 0x5555555552a7 *)
rol ymm5_0 ymm5_0  2; rol ymm5_1 ymm5_1 15;
rol ymm5_2 ymm5_2 25; rol ymm5_3 ymm5_3 20;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ad *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552b3 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm6             #! PC = 0x5555555552b9 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm6_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm6_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm6_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm6_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm21,%ymm6,%ymm8                      #! PC = 0x5555555552c0 *)
rol ymm8_0 ymm6_0 44; rol ymm8_1 ymm6_1 43;
rol ymm8_2 ymm6_2 21; rol ymm8_3 ymm6_3 14;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x5555555552c6 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x5555555552cc *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm1             #! PC = 0x5555555552d2 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm1_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm1_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm1_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm1_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm17,%ymm1,%ymm9                      #! PC = 0x5555555552d9 *)
rol ymm9_0 ymm1_0  1; rol ymm9_1 ymm1_1 62;
rol ymm9_2 ymm1_2 28; rol ymm9_3 ymm1_3 27;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x5555555552df *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x5555555552e5 *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x5555555552eb *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x5555555552f1 *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x5555555552f7 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x5555555552fd *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x555555555303 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555309 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x55555555530f *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x555555555315 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x55555555531b *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x555555555321 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm10,%ymm3            #! PC = 0x555555555327 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm3_0, ymm10_0, ymm15_0, table);
inline vpternlogq64 (ymm3_1, ymm10_1, ymm15_1, table);
inline vpternlogq64 (ymm3_2, ymm10_2, ymm15_2, table);
inline vpternlogq64 (ymm3_3, ymm10_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm12,%ymm5            #! PC = 0x55555555532e *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm5_0, ymm12_0, ymm14_0, table);
inline vpternlogq64 (ymm5_1, ymm12_1, ymm14_1, table);
inline vpternlogq64 (ymm5_2, ymm12_2, ymm14_2, table);
inline vpternlogq64 (ymm5_3, ymm12_3, ymm14_3, table);
(* vpsrldq $0x8,%ymm8,%ymm7                        #! PC = 0x555555555335 *)
mov ymm7_0 ymm8_1; mov ymm7_1 0@uint64;
mov ymm7_2 ymm8_3; mov ymm7_3 0@uint64;
(* vpandn %ymm7,%ymm8,%ymm7                        #! PC = 0x55555555533b *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm7_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm7_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm7_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm7_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555533f *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555534b *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x555555555351 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x555555555357 *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x55555555535d *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm13,%ymm6            #! PC = 0x555555555363 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm6_0, ymm13_0, ymm15_0, table);
inline vpternlogq64 (ymm6_1, ymm13_1, ymm15_1, table);
inline vpternlogq64 (ymm6_2, ymm13_2, ymm15_2, table);
inline vpternlogq64 (ymm6_3, ymm13_3, ymm15_3, table);
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x55555555536a *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x555555555370 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x555555555376 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x55555555537c *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x555555555382 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x555555555388 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x55555555538e *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555394 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x55555555539a *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553a0 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm14,%ymm9,%ymm2             #! PC = 0x5555555553a6 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm2_0, ymm9_0, ymm14_0, table);
inline vpternlogq64 (ymm2_1, ymm9_1, ymm14_1, table);
inline vpternlogq64 (ymm2_2, ymm9_2, ymm14_2, table);
inline vpternlogq64 (ymm2_3, ymm9_3, ymm14_3, table);
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x5555555553ad *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x5555555553b3 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x5555555553b9 *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x5555555553bf *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x5555555553c5 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x5555555553cb *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x5555555553d1 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x5555555553d7 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x5555555553dd *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553e3 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm8,%ymm1             #! PC = 0x5555555553e9 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm1_0, ymm8_0, ymm15_0, table);
inline vpternlogq64 (ymm1_1, ymm8_1, ymm15_1, table);
inline vpternlogq64 (ymm1_2, ymm8_2, ymm15_2, table);
inline vpternlogq64 (ymm1_3, ymm8_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm11,%ymm4            #! PC = 0x5555555553f0 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm4_0, ymm11_0, ymm14_0, table);
inline vpternlogq64 (ymm4_1, ymm11_1, ymm14_1, table);
inline vpternlogq64 (ymm4_2, ymm11_2, ymm14_2, table);
inline vpternlogq64 (ymm4_3, ymm11_3, ymm14_3, table);
(* vpternlogq $0x96,(%r10),%ymm7,%ymm0             #! EA = L0x555555555c60; Value = 0x0000000000000088; PC = 0x5555555553f7 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm0_0, ymm7_0, L0x555555555c60, table);
inline vpternlogq64 (ymm0_1, ymm7_1, L0x555555555c68, table);
inline vpternlogq64 (ymm0_2, ymm7_2, L0x555555555c70, table);
inline vpternlogq64 (ymm0_3, ymm7_3, L0x555555555c78, table);
(* lea    0x20(%r10),%r10                          #! PC = 0x5555555553fe *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555402 *)
(* dec %eax *)
nop;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555404 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555404 = 0x555555555404;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpternlogq $0x96,%ymm1,%ymm9,%ymm12             #! PC = 0x55555555522d *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm12_0, ymm9_0, ymm1_0, table);
inline vpternlogq64 (ymm12_1, ymm9_1, ymm1_1, table);
inline vpternlogq64 (ymm12_2, ymm9_2, ymm1_2, table);
inline vpternlogq64 (ymm12_3, ymm9_3, ymm1_3, table);
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x555555555234 *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555238 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x55555555523e *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vprolq $0x1,%ymm12,%ymm8                        #! PC = 0x555555555244 *)
rol ymm8_0 ymm12_0 1; rol ymm8_1 ymm12_1 1;
rol ymm8_2 ymm12_2 1; rol ymm8_3 ymm12_3 1;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x55555555524b *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x555555555251 *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555256 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm0,%ymm13             #! PC = 0x55555555525c *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm13_0, ymm0_0, ymm7_0, table);
inline vpternlogq64 (ymm13_1, ymm0_1, ymm7_1, table);
inline vpternlogq64 (ymm13_2, ymm0_2, ymm7_2, table);
inline vpternlogq64 (ymm13_3, ymm0_3, ymm7_3, table);
(* vprolq $0x1,%ymm13,%ymm8                        #! PC = 0x555555555263 *)
rol ymm8_0 ymm13_0 1; rol ymm8_1 ymm13_1 1;
rol ymm8_2 ymm13_2 1; rol ymm8_3 ymm13_3 1;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x55555555526a *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x55555555526f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm7               #! PC = 0x555555555275 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm7_0 blen_0; mov ymm7_1 blen_1;
mov ymm7_2 blen_2; mov ymm7_3 blen_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527b *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vprolvq %ymm16,%ymm2,%ymm2                      #! PC = 0x555555555280 *)
rol ymm2_0 ymm2_0  3; rol ymm2_1 ymm2_1 18;
rol ymm2_2 ymm2_2 36; rol ymm2_3 ymm2_3 41;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm3             #! PC = 0x555555555286 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm3_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm3_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm3_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm3_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm18,%ymm3,%ymm3                      #! PC = 0x55555555528d *)
rol ymm3_0 ymm3_0 45; rol ymm3_1 ymm3_1  6;
rol ymm3_2 ymm3_2 56; rol ymm3_3 ymm3_3 39;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm4             #! PC = 0x555555555293 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm4_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm4_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm4_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm4_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm19,%ymm4,%ymm4                      #! PC = 0x55555555529a *)
rol ymm4_0 ymm4_0 10; rol ymm4_1 ymm4_1 61;
rol ymm4_2 ymm4_2 55; rol ymm4_3 ymm4_3  8;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm5             #! PC = 0x5555555552a0 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm5_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm5_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm5_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm5_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm20,%ymm5,%ymm5                      #! PC = 0x5555555552a7 *)
rol ymm5_0 ymm5_0  2; rol ymm5_1 ymm5_1 15;
rol ymm5_2 ymm5_2 25; rol ymm5_3 ymm5_3 20;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ad *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552b3 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm6             #! PC = 0x5555555552b9 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm6_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm6_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm6_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm6_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm21,%ymm6,%ymm8                      #! PC = 0x5555555552c0 *)
rol ymm8_0 ymm6_0 44; rol ymm8_1 ymm6_1 43;
rol ymm8_2 ymm6_2 21; rol ymm8_3 ymm6_3 14;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x5555555552c6 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x5555555552cc *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm1             #! PC = 0x5555555552d2 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm1_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm1_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm1_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm1_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm17,%ymm1,%ymm9                      #! PC = 0x5555555552d9 *)
rol ymm9_0 ymm1_0  1; rol ymm9_1 ymm1_1 62;
rol ymm9_2 ymm1_2 28; rol ymm9_3 ymm1_3 27;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x5555555552df *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x5555555552e5 *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x5555555552eb *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x5555555552f1 *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x5555555552f7 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x5555555552fd *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x555555555303 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555309 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x55555555530f *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x555555555315 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x55555555531b *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x555555555321 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm10,%ymm3            #! PC = 0x555555555327 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm3_0, ymm10_0, ymm15_0, table);
inline vpternlogq64 (ymm3_1, ymm10_1, ymm15_1, table);
inline vpternlogq64 (ymm3_2, ymm10_2, ymm15_2, table);
inline vpternlogq64 (ymm3_3, ymm10_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm12,%ymm5            #! PC = 0x55555555532e *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm5_0, ymm12_0, ymm14_0, table);
inline vpternlogq64 (ymm5_1, ymm12_1, ymm14_1, table);
inline vpternlogq64 (ymm5_2, ymm12_2, ymm14_2, table);
inline vpternlogq64 (ymm5_3, ymm12_3, ymm14_3, table);
(* vpsrldq $0x8,%ymm8,%ymm7                        #! PC = 0x555555555335 *)
mov ymm7_0 ymm8_1; mov ymm7_1 0@uint64;
mov ymm7_2 ymm8_3; mov ymm7_3 0@uint64;
(* vpandn %ymm7,%ymm8,%ymm7                        #! PC = 0x55555555533b *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm7_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm7_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm7_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm7_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555533f *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555534b *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x555555555351 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x555555555357 *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x55555555535d *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm13,%ymm6            #! PC = 0x555555555363 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm6_0, ymm13_0, ymm15_0, table);
inline vpternlogq64 (ymm6_1, ymm13_1, ymm15_1, table);
inline vpternlogq64 (ymm6_2, ymm13_2, ymm15_2, table);
inline vpternlogq64 (ymm6_3, ymm13_3, ymm15_3, table);
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x55555555536a *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x555555555370 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x555555555376 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x55555555537c *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x555555555382 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x555555555388 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x55555555538e *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555394 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x55555555539a *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553a0 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm14,%ymm9,%ymm2             #! PC = 0x5555555553a6 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm2_0, ymm9_0, ymm14_0, table);
inline vpternlogq64 (ymm2_1, ymm9_1, ymm14_1, table);
inline vpternlogq64 (ymm2_2, ymm9_2, ymm14_2, table);
inline vpternlogq64 (ymm2_3, ymm9_3, ymm14_3, table);
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x5555555553ad *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x5555555553b3 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x5555555553b9 *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x5555555553bf *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x5555555553c5 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x5555555553cb *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x5555555553d1 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x5555555553d7 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x5555555553dd *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553e3 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm8,%ymm1             #! PC = 0x5555555553e9 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm1_0, ymm8_0, ymm15_0, table);
inline vpternlogq64 (ymm1_1, ymm8_1, ymm15_1, table);
inline vpternlogq64 (ymm1_2, ymm8_2, ymm15_2, table);
inline vpternlogq64 (ymm1_3, ymm8_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm11,%ymm4            #! PC = 0x5555555553f0 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm4_0, ymm11_0, ymm14_0, table);
inline vpternlogq64 (ymm4_1, ymm11_1, ymm14_1, table);
inline vpternlogq64 (ymm4_2, ymm11_2, ymm14_2, table);
inline vpternlogq64 (ymm4_3, ymm11_3, ymm14_3, table);
(* vpternlogq $0x96,(%r10),%ymm7,%ymm0             #! EA = L0x555555555c80; Value = 0x0000000080008009; PC = 0x5555555553f7 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm0_0, ymm7_0, L0x555555555c80, table);
inline vpternlogq64 (ymm0_1, ymm7_1, L0x555555555c88, table);
inline vpternlogq64 (ymm0_2, ymm7_2, L0x555555555c90, table);
inline vpternlogq64 (ymm0_3, ymm7_3, L0x555555555c98, table);
(* lea    0x20(%r10),%r10                          #! PC = 0x5555555553fe *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555402 *)
(* dec %eax *)
nop;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555404 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555404 = 0x555555555404;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpternlogq $0x96,%ymm1,%ymm9,%ymm12             #! PC = 0x55555555522d *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm12_0, ymm9_0, ymm1_0, table);
inline vpternlogq64 (ymm12_1, ymm9_1, ymm1_1, table);
inline vpternlogq64 (ymm12_2, ymm9_2, ymm1_2, table);
inline vpternlogq64 (ymm12_3, ymm9_3, ymm1_3, table);
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x555555555234 *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555238 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x55555555523e *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vprolq $0x1,%ymm12,%ymm8                        #! PC = 0x555555555244 *)
rol ymm8_0 ymm12_0 1; rol ymm8_1 ymm12_1 1;
rol ymm8_2 ymm12_2 1; rol ymm8_3 ymm12_3 1;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x55555555524b *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x555555555251 *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555256 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm0,%ymm13             #! PC = 0x55555555525c *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm13_0, ymm0_0, ymm7_0, table);
inline vpternlogq64 (ymm13_1, ymm0_1, ymm7_1, table);
inline vpternlogq64 (ymm13_2, ymm0_2, ymm7_2, table);
inline vpternlogq64 (ymm13_3, ymm0_3, ymm7_3, table);
(* vprolq $0x1,%ymm13,%ymm8                        #! PC = 0x555555555263 *)
rol ymm8_0 ymm13_0 1; rol ymm8_1 ymm13_1 1;
rol ymm8_2 ymm13_2 1; rol ymm8_3 ymm13_3 1;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x55555555526a *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x55555555526f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm7               #! PC = 0x555555555275 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm7_0 blen_0; mov ymm7_1 blen_1;
mov ymm7_2 blen_2; mov ymm7_3 blen_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527b *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vprolvq %ymm16,%ymm2,%ymm2                      #! PC = 0x555555555280 *)
rol ymm2_0 ymm2_0  3; rol ymm2_1 ymm2_1 18;
rol ymm2_2 ymm2_2 36; rol ymm2_3 ymm2_3 41;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm3             #! PC = 0x555555555286 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm3_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm3_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm3_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm3_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm18,%ymm3,%ymm3                      #! PC = 0x55555555528d *)
rol ymm3_0 ymm3_0 45; rol ymm3_1 ymm3_1  6;
rol ymm3_2 ymm3_2 56; rol ymm3_3 ymm3_3 39;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm4             #! PC = 0x555555555293 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm4_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm4_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm4_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm4_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm19,%ymm4,%ymm4                      #! PC = 0x55555555529a *)
rol ymm4_0 ymm4_0 10; rol ymm4_1 ymm4_1 61;
rol ymm4_2 ymm4_2 55; rol ymm4_3 ymm4_3  8;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm5             #! PC = 0x5555555552a0 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm5_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm5_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm5_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm5_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm20,%ymm5,%ymm5                      #! PC = 0x5555555552a7 *)
rol ymm5_0 ymm5_0  2; rol ymm5_1 ymm5_1 15;
rol ymm5_2 ymm5_2 25; rol ymm5_3 ymm5_3 20;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ad *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552b3 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm6             #! PC = 0x5555555552b9 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm6_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm6_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm6_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm6_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm21,%ymm6,%ymm8                      #! PC = 0x5555555552c0 *)
rol ymm8_0 ymm6_0 44; rol ymm8_1 ymm6_1 43;
rol ymm8_2 ymm6_2 21; rol ymm8_3 ymm6_3 14;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x5555555552c6 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x5555555552cc *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm1             #! PC = 0x5555555552d2 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm1_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm1_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm1_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm1_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm17,%ymm1,%ymm9                      #! PC = 0x5555555552d9 *)
rol ymm9_0 ymm1_0  1; rol ymm9_1 ymm1_1 62;
rol ymm9_2 ymm1_2 28; rol ymm9_3 ymm1_3 27;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x5555555552df *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x5555555552e5 *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x5555555552eb *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x5555555552f1 *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x5555555552f7 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x5555555552fd *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x555555555303 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555309 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x55555555530f *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x555555555315 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x55555555531b *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x555555555321 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm10,%ymm3            #! PC = 0x555555555327 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm3_0, ymm10_0, ymm15_0, table);
inline vpternlogq64 (ymm3_1, ymm10_1, ymm15_1, table);
inline vpternlogq64 (ymm3_2, ymm10_2, ymm15_2, table);
inline vpternlogq64 (ymm3_3, ymm10_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm12,%ymm5            #! PC = 0x55555555532e *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm5_0, ymm12_0, ymm14_0, table);
inline vpternlogq64 (ymm5_1, ymm12_1, ymm14_1, table);
inline vpternlogq64 (ymm5_2, ymm12_2, ymm14_2, table);
inline vpternlogq64 (ymm5_3, ymm12_3, ymm14_3, table);
(* vpsrldq $0x8,%ymm8,%ymm7                        #! PC = 0x555555555335 *)
mov ymm7_0 ymm8_1; mov ymm7_1 0@uint64;
mov ymm7_2 ymm8_3; mov ymm7_3 0@uint64;
(* vpandn %ymm7,%ymm8,%ymm7                        #! PC = 0x55555555533b *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm7_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm7_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm7_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm7_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555533f *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555534b *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x555555555351 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x555555555357 *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x55555555535d *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm13,%ymm6            #! PC = 0x555555555363 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm6_0, ymm13_0, ymm15_0, table);
inline vpternlogq64 (ymm6_1, ymm13_1, ymm15_1, table);
inline vpternlogq64 (ymm6_2, ymm13_2, ymm15_2, table);
inline vpternlogq64 (ymm6_3, ymm13_3, ymm15_3, table);
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x55555555536a *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x555555555370 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x555555555376 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x55555555537c *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x555555555382 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x555555555388 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x55555555538e *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555394 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x55555555539a *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553a0 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm14,%ymm9,%ymm2             #! PC = 0x5555555553a6 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm2_0, ymm9_0, ymm14_0, table);
inline vpternlogq64 (ymm2_1, ymm9_1, ymm14_1, table);
inline vpternlogq64 (ymm2_2, ymm9_2, ymm14_2, table);
inline vpternlogq64 (ymm2_3, ymm9_3, ymm14_3, table);
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x5555555553ad *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x5555555553b3 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x5555555553b9 *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x5555555553bf *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x5555555553c5 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x5555555553cb *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x5555555553d1 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x5555555553d7 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x5555555553dd *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553e3 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm8,%ymm1             #! PC = 0x5555555553e9 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm1_0, ymm8_0, ymm15_0, table);
inline vpternlogq64 (ymm1_1, ymm8_1, ymm15_1, table);
inline vpternlogq64 (ymm1_2, ymm8_2, ymm15_2, table);
inline vpternlogq64 (ymm1_3, ymm8_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm11,%ymm4            #! PC = 0x5555555553f0 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm4_0, ymm11_0, ymm14_0, table);
inline vpternlogq64 (ymm4_1, ymm11_1, ymm14_1, table);
inline vpternlogq64 (ymm4_2, ymm11_2, ymm14_2, table);
inline vpternlogq64 (ymm4_3, ymm11_3, ymm14_3, table);
(* vpternlogq $0x96,(%r10),%ymm7,%ymm0             #! EA = L0x555555555ca0; Value = 0x000000008000000a; PC = 0x5555555553f7 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm0_0, ymm7_0, L0x555555555ca0, table);
inline vpternlogq64 (ymm0_1, ymm7_1, L0x555555555ca8, table);
inline vpternlogq64 (ymm0_2, ymm7_2, L0x555555555cb0, table);
inline vpternlogq64 (ymm0_3, ymm7_3, L0x555555555cb8, table);
(* lea    0x20(%r10),%r10                          #! PC = 0x5555555553fe *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555402 *)
(* dec %eax *)
nop;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555404 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555404 = 0x555555555404;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpternlogq $0x96,%ymm1,%ymm9,%ymm12             #! PC = 0x55555555522d *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm12_0, ymm9_0, ymm1_0, table);
inline vpternlogq64 (ymm12_1, ymm9_1, ymm1_1, table);
inline vpternlogq64 (ymm12_2, ymm9_2, ymm1_2, table);
inline vpternlogq64 (ymm12_3, ymm9_3, ymm1_3, table);
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x555555555234 *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555238 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x55555555523e *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vprolq $0x1,%ymm12,%ymm8                        #! PC = 0x555555555244 *)
rol ymm8_0 ymm12_0 1; rol ymm8_1 ymm12_1 1;
rol ymm8_2 ymm12_2 1; rol ymm8_3 ymm12_3 1;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x55555555524b *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x555555555251 *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555256 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm0,%ymm13             #! PC = 0x55555555525c *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm13_0, ymm0_0, ymm7_0, table);
inline vpternlogq64 (ymm13_1, ymm0_1, ymm7_1, table);
inline vpternlogq64 (ymm13_2, ymm0_2, ymm7_2, table);
inline vpternlogq64 (ymm13_3, ymm0_3, ymm7_3, table);
(* vprolq $0x1,%ymm13,%ymm8                        #! PC = 0x555555555263 *)
rol ymm8_0 ymm13_0 1; rol ymm8_1 ymm13_1 1;
rol ymm8_2 ymm13_2 1; rol ymm8_3 ymm13_3 1;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x55555555526a *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x55555555526f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm7               #! PC = 0x555555555275 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm7_0 blen_0; mov ymm7_1 blen_1;
mov ymm7_2 blen_2; mov ymm7_3 blen_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527b *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vprolvq %ymm16,%ymm2,%ymm2                      #! PC = 0x555555555280 *)
rol ymm2_0 ymm2_0  3; rol ymm2_1 ymm2_1 18;
rol ymm2_2 ymm2_2 36; rol ymm2_3 ymm2_3 41;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm3             #! PC = 0x555555555286 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm3_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm3_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm3_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm3_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm18,%ymm3,%ymm3                      #! PC = 0x55555555528d *)
rol ymm3_0 ymm3_0 45; rol ymm3_1 ymm3_1  6;
rol ymm3_2 ymm3_2 56; rol ymm3_3 ymm3_3 39;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm4             #! PC = 0x555555555293 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm4_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm4_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm4_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm4_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm19,%ymm4,%ymm4                      #! PC = 0x55555555529a *)
rol ymm4_0 ymm4_0 10; rol ymm4_1 ymm4_1 61;
rol ymm4_2 ymm4_2 55; rol ymm4_3 ymm4_3  8;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm5             #! PC = 0x5555555552a0 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm5_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm5_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm5_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm5_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm20,%ymm5,%ymm5                      #! PC = 0x5555555552a7 *)
rol ymm5_0 ymm5_0  2; rol ymm5_1 ymm5_1 15;
rol ymm5_2 ymm5_2 25; rol ymm5_3 ymm5_3 20;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ad *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552b3 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm6             #! PC = 0x5555555552b9 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm6_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm6_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm6_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm6_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm21,%ymm6,%ymm8                      #! PC = 0x5555555552c0 *)
rol ymm8_0 ymm6_0 44; rol ymm8_1 ymm6_1 43;
rol ymm8_2 ymm6_2 21; rol ymm8_3 ymm6_3 14;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x5555555552c6 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x5555555552cc *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm1             #! PC = 0x5555555552d2 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm1_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm1_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm1_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm1_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm17,%ymm1,%ymm9                      #! PC = 0x5555555552d9 *)
rol ymm9_0 ymm1_0  1; rol ymm9_1 ymm1_1 62;
rol ymm9_2 ymm1_2 28; rol ymm9_3 ymm1_3 27;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x5555555552df *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x5555555552e5 *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x5555555552eb *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x5555555552f1 *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x5555555552f7 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x5555555552fd *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x555555555303 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555309 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x55555555530f *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x555555555315 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x55555555531b *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x555555555321 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm10,%ymm3            #! PC = 0x555555555327 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm3_0, ymm10_0, ymm15_0, table);
inline vpternlogq64 (ymm3_1, ymm10_1, ymm15_1, table);
inline vpternlogq64 (ymm3_2, ymm10_2, ymm15_2, table);
inline vpternlogq64 (ymm3_3, ymm10_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm12,%ymm5            #! PC = 0x55555555532e *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm5_0, ymm12_0, ymm14_0, table);
inline vpternlogq64 (ymm5_1, ymm12_1, ymm14_1, table);
inline vpternlogq64 (ymm5_2, ymm12_2, ymm14_2, table);
inline vpternlogq64 (ymm5_3, ymm12_3, ymm14_3, table);
(* vpsrldq $0x8,%ymm8,%ymm7                        #! PC = 0x555555555335 *)
mov ymm7_0 ymm8_1; mov ymm7_1 0@uint64;
mov ymm7_2 ymm8_3; mov ymm7_3 0@uint64;
(* vpandn %ymm7,%ymm8,%ymm7                        #! PC = 0x55555555533b *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm7_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm7_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm7_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm7_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555533f *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555534b *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x555555555351 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x555555555357 *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x55555555535d *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm13,%ymm6            #! PC = 0x555555555363 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm6_0, ymm13_0, ymm15_0, table);
inline vpternlogq64 (ymm6_1, ymm13_1, ymm15_1, table);
inline vpternlogq64 (ymm6_2, ymm13_2, ymm15_2, table);
inline vpternlogq64 (ymm6_3, ymm13_3, ymm15_3, table);
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x55555555536a *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x555555555370 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x555555555376 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x55555555537c *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x555555555382 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x555555555388 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x55555555538e *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555394 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x55555555539a *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553a0 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm14,%ymm9,%ymm2             #! PC = 0x5555555553a6 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm2_0, ymm9_0, ymm14_0, table);
inline vpternlogq64 (ymm2_1, ymm9_1, ymm14_1, table);
inline vpternlogq64 (ymm2_2, ymm9_2, ymm14_2, table);
inline vpternlogq64 (ymm2_3, ymm9_3, ymm14_3, table);
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x5555555553ad *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x5555555553b3 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x5555555553b9 *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x5555555553bf *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x5555555553c5 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x5555555553cb *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x5555555553d1 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x5555555553d7 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x5555555553dd *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553e3 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm8,%ymm1             #! PC = 0x5555555553e9 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm1_0, ymm8_0, ymm15_0, table);
inline vpternlogq64 (ymm1_1, ymm8_1, ymm15_1, table);
inline vpternlogq64 (ymm1_2, ymm8_2, ymm15_2, table);
inline vpternlogq64 (ymm1_3, ymm8_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm11,%ymm4            #! PC = 0x5555555553f0 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm4_0, ymm11_0, ymm14_0, table);
inline vpternlogq64 (ymm4_1, ymm11_1, ymm14_1, table);
inline vpternlogq64 (ymm4_2, ymm11_2, ymm14_2, table);
inline vpternlogq64 (ymm4_3, ymm11_3, ymm14_3, table);
(* vpternlogq $0x96,(%r10),%ymm7,%ymm0             #! EA = L0x555555555cc0; Value = 0x000000008000808b; PC = 0x5555555553f7 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm0_0, ymm7_0, L0x555555555cc0, table);
inline vpternlogq64 (ymm0_1, ymm7_1, L0x555555555cc8, table);
inline vpternlogq64 (ymm0_2, ymm7_2, L0x555555555cd0, table);
inline vpternlogq64 (ymm0_3, ymm7_3, L0x555555555cd8, table);
(* lea    0x20(%r10),%r10                          #! PC = 0x5555555553fe *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555402 *)
(* dec %eax *)
nop;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555404 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555404 = 0x555555555404;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpternlogq $0x96,%ymm1,%ymm9,%ymm12             #! PC = 0x55555555522d *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm12_0, ymm9_0, ymm1_0, table);
inline vpternlogq64 (ymm12_1, ymm9_1, ymm1_1, table);
inline vpternlogq64 (ymm12_2, ymm9_2, ymm1_2, table);
inline vpternlogq64 (ymm12_3, ymm9_3, ymm1_3, table);
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x555555555234 *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555238 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x55555555523e *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vprolq $0x1,%ymm12,%ymm8                        #! PC = 0x555555555244 *)
rol ymm8_0 ymm12_0 1; rol ymm8_1 ymm12_1 1;
rol ymm8_2 ymm12_2 1; rol ymm8_3 ymm12_3 1;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x55555555524b *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x555555555251 *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555256 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm0,%ymm13             #! PC = 0x55555555525c *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm13_0, ymm0_0, ymm7_0, table);
inline vpternlogq64 (ymm13_1, ymm0_1, ymm7_1, table);
inline vpternlogq64 (ymm13_2, ymm0_2, ymm7_2, table);
inline vpternlogq64 (ymm13_3, ymm0_3, ymm7_3, table);
(* vprolq $0x1,%ymm13,%ymm8                        #! PC = 0x555555555263 *)
rol ymm8_0 ymm13_0 1; rol ymm8_1 ymm13_1 1;
rol ymm8_2 ymm13_2 1; rol ymm8_3 ymm13_3 1;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x55555555526a *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x55555555526f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm7               #! PC = 0x555555555275 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm7_0 blen_0; mov ymm7_1 blen_1;
mov ymm7_2 blen_2; mov ymm7_3 blen_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527b *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vprolvq %ymm16,%ymm2,%ymm2                      #! PC = 0x555555555280 *)
rol ymm2_0 ymm2_0  3; rol ymm2_1 ymm2_1 18;
rol ymm2_2 ymm2_2 36; rol ymm2_3 ymm2_3 41;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm3             #! PC = 0x555555555286 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm3_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm3_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm3_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm3_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm18,%ymm3,%ymm3                      #! PC = 0x55555555528d *)
rol ymm3_0 ymm3_0 45; rol ymm3_1 ymm3_1  6;
rol ymm3_2 ymm3_2 56; rol ymm3_3 ymm3_3 39;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm4             #! PC = 0x555555555293 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm4_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm4_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm4_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm4_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm19,%ymm4,%ymm4                      #! PC = 0x55555555529a *)
rol ymm4_0 ymm4_0 10; rol ymm4_1 ymm4_1 61;
rol ymm4_2 ymm4_2 55; rol ymm4_3 ymm4_3  8;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm5             #! PC = 0x5555555552a0 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm5_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm5_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm5_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm5_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm20,%ymm5,%ymm5                      #! PC = 0x5555555552a7 *)
rol ymm5_0 ymm5_0  2; rol ymm5_1 ymm5_1 15;
rol ymm5_2 ymm5_2 25; rol ymm5_3 ymm5_3 20;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ad *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552b3 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm6             #! PC = 0x5555555552b9 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm6_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm6_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm6_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm6_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm21,%ymm6,%ymm8                      #! PC = 0x5555555552c0 *)
rol ymm8_0 ymm6_0 44; rol ymm8_1 ymm6_1 43;
rol ymm8_2 ymm6_2 21; rol ymm8_3 ymm6_3 14;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x5555555552c6 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x5555555552cc *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm1             #! PC = 0x5555555552d2 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm1_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm1_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm1_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm1_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm17,%ymm1,%ymm9                      #! PC = 0x5555555552d9 *)
rol ymm9_0 ymm1_0  1; rol ymm9_1 ymm1_1 62;
rol ymm9_2 ymm1_2 28; rol ymm9_3 ymm1_3 27;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x5555555552df *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x5555555552e5 *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x5555555552eb *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x5555555552f1 *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x5555555552f7 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x5555555552fd *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x555555555303 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555309 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x55555555530f *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x555555555315 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x55555555531b *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x555555555321 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm10,%ymm3            #! PC = 0x555555555327 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm3_0, ymm10_0, ymm15_0, table);
inline vpternlogq64 (ymm3_1, ymm10_1, ymm15_1, table);
inline vpternlogq64 (ymm3_2, ymm10_2, ymm15_2, table);
inline vpternlogq64 (ymm3_3, ymm10_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm12,%ymm5            #! PC = 0x55555555532e *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm5_0, ymm12_0, ymm14_0, table);
inline vpternlogq64 (ymm5_1, ymm12_1, ymm14_1, table);
inline vpternlogq64 (ymm5_2, ymm12_2, ymm14_2, table);
inline vpternlogq64 (ymm5_3, ymm12_3, ymm14_3, table);
(* vpsrldq $0x8,%ymm8,%ymm7                        #! PC = 0x555555555335 *)
mov ymm7_0 ymm8_1; mov ymm7_1 0@uint64;
mov ymm7_2 ymm8_3; mov ymm7_3 0@uint64;
(* vpandn %ymm7,%ymm8,%ymm7                        #! PC = 0x55555555533b *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm7_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm7_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm7_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm7_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555533f *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555534b *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x555555555351 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x555555555357 *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x55555555535d *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm13,%ymm6            #! PC = 0x555555555363 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm6_0, ymm13_0, ymm15_0, table);
inline vpternlogq64 (ymm6_1, ymm13_1, ymm15_1, table);
inline vpternlogq64 (ymm6_2, ymm13_2, ymm15_2, table);
inline vpternlogq64 (ymm6_3, ymm13_3, ymm15_3, table);
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x55555555536a *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x555555555370 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x555555555376 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x55555555537c *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x555555555382 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x555555555388 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x55555555538e *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555394 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x55555555539a *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553a0 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm14,%ymm9,%ymm2             #! PC = 0x5555555553a6 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm2_0, ymm9_0, ymm14_0, table);
inline vpternlogq64 (ymm2_1, ymm9_1, ymm14_1, table);
inline vpternlogq64 (ymm2_2, ymm9_2, ymm14_2, table);
inline vpternlogq64 (ymm2_3, ymm9_3, ymm14_3, table);
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x5555555553ad *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x5555555553b3 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x5555555553b9 *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x5555555553bf *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x5555555553c5 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x5555555553cb *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x5555555553d1 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x5555555553d7 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x5555555553dd *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553e3 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm8,%ymm1             #! PC = 0x5555555553e9 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm1_0, ymm8_0, ymm15_0, table);
inline vpternlogq64 (ymm1_1, ymm8_1, ymm15_1, table);
inline vpternlogq64 (ymm1_2, ymm8_2, ymm15_2, table);
inline vpternlogq64 (ymm1_3, ymm8_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm11,%ymm4            #! PC = 0x5555555553f0 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm4_0, ymm11_0, ymm14_0, table);
inline vpternlogq64 (ymm4_1, ymm11_1, ymm14_1, table);
inline vpternlogq64 (ymm4_2, ymm11_2, ymm14_2, table);
inline vpternlogq64 (ymm4_3, ymm11_3, ymm14_3, table);
(* vpternlogq $0x96,(%r10),%ymm7,%ymm0             #! EA = L0x555555555ce0; Value = 0x800000000000008b; PC = 0x5555555553f7 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm0_0, ymm7_0, L0x555555555ce0, table);
inline vpternlogq64 (ymm0_1, ymm7_1, L0x555555555ce8, table);
inline vpternlogq64 (ymm0_2, ymm7_2, L0x555555555cf0, table);
inline vpternlogq64 (ymm0_3, ymm7_3, L0x555555555cf8, table);
(* lea    0x20(%r10),%r10                          #! PC = 0x5555555553fe *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555402 *)
(* dec %eax *)
nop;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555404 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555404 = 0x555555555404;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpternlogq $0x96,%ymm1,%ymm9,%ymm12             #! PC = 0x55555555522d *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm12_0, ymm9_0, ymm1_0, table);
inline vpternlogq64 (ymm12_1, ymm9_1, ymm1_1, table);
inline vpternlogq64 (ymm12_2, ymm9_2, ymm1_2, table);
inline vpternlogq64 (ymm12_3, ymm9_3, ymm1_3, table);
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x555555555234 *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555238 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x55555555523e *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vprolq $0x1,%ymm12,%ymm8                        #! PC = 0x555555555244 *)
rol ymm8_0 ymm12_0 1; rol ymm8_1 ymm12_1 1;
rol ymm8_2 ymm12_2 1; rol ymm8_3 ymm12_3 1;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x55555555524b *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x555555555251 *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555256 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm0,%ymm13             #! PC = 0x55555555525c *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm13_0, ymm0_0, ymm7_0, table);
inline vpternlogq64 (ymm13_1, ymm0_1, ymm7_1, table);
inline vpternlogq64 (ymm13_2, ymm0_2, ymm7_2, table);
inline vpternlogq64 (ymm13_3, ymm0_3, ymm7_3, table);
(* vprolq $0x1,%ymm13,%ymm8                        #! PC = 0x555555555263 *)
rol ymm8_0 ymm13_0 1; rol ymm8_1 ymm13_1 1;
rol ymm8_2 ymm13_2 1; rol ymm8_3 ymm13_3 1;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x55555555526a *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x55555555526f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm7               #! PC = 0x555555555275 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm7_0 blen_0; mov ymm7_1 blen_1;
mov ymm7_2 blen_2; mov ymm7_3 blen_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527b *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vprolvq %ymm16,%ymm2,%ymm2                      #! PC = 0x555555555280 *)
rol ymm2_0 ymm2_0  3; rol ymm2_1 ymm2_1 18;
rol ymm2_2 ymm2_2 36; rol ymm2_3 ymm2_3 41;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm3             #! PC = 0x555555555286 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm3_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm3_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm3_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm3_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm18,%ymm3,%ymm3                      #! PC = 0x55555555528d *)
rol ymm3_0 ymm3_0 45; rol ymm3_1 ymm3_1  6;
rol ymm3_2 ymm3_2 56; rol ymm3_3 ymm3_3 39;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm4             #! PC = 0x555555555293 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm4_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm4_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm4_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm4_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm19,%ymm4,%ymm4                      #! PC = 0x55555555529a *)
rol ymm4_0 ymm4_0 10; rol ymm4_1 ymm4_1 61;
rol ymm4_2 ymm4_2 55; rol ymm4_3 ymm4_3  8;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm5             #! PC = 0x5555555552a0 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm5_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm5_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm5_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm5_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm20,%ymm5,%ymm5                      #! PC = 0x5555555552a7 *)
rol ymm5_0 ymm5_0  2; rol ymm5_1 ymm5_1 15;
rol ymm5_2 ymm5_2 25; rol ymm5_3 ymm5_3 20;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ad *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552b3 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm6             #! PC = 0x5555555552b9 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm6_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm6_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm6_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm6_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm21,%ymm6,%ymm8                      #! PC = 0x5555555552c0 *)
rol ymm8_0 ymm6_0 44; rol ymm8_1 ymm6_1 43;
rol ymm8_2 ymm6_2 21; rol ymm8_3 ymm6_3 14;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x5555555552c6 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x5555555552cc *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm1             #! PC = 0x5555555552d2 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm1_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm1_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm1_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm1_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm17,%ymm1,%ymm9                      #! PC = 0x5555555552d9 *)
rol ymm9_0 ymm1_0  1; rol ymm9_1 ymm1_1 62;
rol ymm9_2 ymm1_2 28; rol ymm9_3 ymm1_3 27;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x5555555552df *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x5555555552e5 *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x5555555552eb *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x5555555552f1 *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x5555555552f7 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x5555555552fd *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x555555555303 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555309 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x55555555530f *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x555555555315 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x55555555531b *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x555555555321 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm10,%ymm3            #! PC = 0x555555555327 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm3_0, ymm10_0, ymm15_0, table);
inline vpternlogq64 (ymm3_1, ymm10_1, ymm15_1, table);
inline vpternlogq64 (ymm3_2, ymm10_2, ymm15_2, table);
inline vpternlogq64 (ymm3_3, ymm10_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm12,%ymm5            #! PC = 0x55555555532e *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm5_0, ymm12_0, ymm14_0, table);
inline vpternlogq64 (ymm5_1, ymm12_1, ymm14_1, table);
inline vpternlogq64 (ymm5_2, ymm12_2, ymm14_2, table);
inline vpternlogq64 (ymm5_3, ymm12_3, ymm14_3, table);
(* vpsrldq $0x8,%ymm8,%ymm7                        #! PC = 0x555555555335 *)
mov ymm7_0 ymm8_1; mov ymm7_1 0@uint64;
mov ymm7_2 ymm8_3; mov ymm7_3 0@uint64;
(* vpandn %ymm7,%ymm8,%ymm7                        #! PC = 0x55555555533b *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm7_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm7_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm7_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm7_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555533f *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555534b *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x555555555351 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x555555555357 *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x55555555535d *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm13,%ymm6            #! PC = 0x555555555363 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm6_0, ymm13_0, ymm15_0, table);
inline vpternlogq64 (ymm6_1, ymm13_1, ymm15_1, table);
inline vpternlogq64 (ymm6_2, ymm13_2, ymm15_2, table);
inline vpternlogq64 (ymm6_3, ymm13_3, ymm15_3, table);
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x55555555536a *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x555555555370 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x555555555376 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x55555555537c *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x555555555382 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x555555555388 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x55555555538e *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555394 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x55555555539a *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553a0 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm14,%ymm9,%ymm2             #! PC = 0x5555555553a6 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm2_0, ymm9_0, ymm14_0, table);
inline vpternlogq64 (ymm2_1, ymm9_1, ymm14_1, table);
inline vpternlogq64 (ymm2_2, ymm9_2, ymm14_2, table);
inline vpternlogq64 (ymm2_3, ymm9_3, ymm14_3, table);
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x5555555553ad *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x5555555553b3 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x5555555553b9 *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x5555555553bf *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x5555555553c5 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x5555555553cb *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x5555555553d1 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x5555555553d7 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x5555555553dd *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553e3 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm8,%ymm1             #! PC = 0x5555555553e9 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm1_0, ymm8_0, ymm15_0, table);
inline vpternlogq64 (ymm1_1, ymm8_1, ymm15_1, table);
inline vpternlogq64 (ymm1_2, ymm8_2, ymm15_2, table);
inline vpternlogq64 (ymm1_3, ymm8_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm11,%ymm4            #! PC = 0x5555555553f0 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm4_0, ymm11_0, ymm14_0, table);
inline vpternlogq64 (ymm4_1, ymm11_1, ymm14_1, table);
inline vpternlogq64 (ymm4_2, ymm11_2, ymm14_2, table);
inline vpternlogq64 (ymm4_3, ymm11_3, ymm14_3, table);
(* vpternlogq $0x96,(%r10),%ymm7,%ymm0             #! EA = L0x555555555d00; Value = 0x8000000000008089; PC = 0x5555555553f7 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm0_0, ymm7_0, L0x555555555d00, table);
inline vpternlogq64 (ymm0_1, ymm7_1, L0x555555555d08, table);
inline vpternlogq64 (ymm0_2, ymm7_2, L0x555555555d10, table);
inline vpternlogq64 (ymm0_3, ymm7_3, L0x555555555d18, table);
(* lea    0x20(%r10),%r10                          #! PC = 0x5555555553fe *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555402 *)
(* dec %eax *)
nop;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555404 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555404 = 0x555555555404;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpternlogq $0x96,%ymm1,%ymm9,%ymm12             #! PC = 0x55555555522d *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm12_0, ymm9_0, ymm1_0, table);
inline vpternlogq64 (ymm12_1, ymm9_1, ymm1_1, table);
inline vpternlogq64 (ymm12_2, ymm9_2, ymm1_2, table);
inline vpternlogq64 (ymm12_3, ymm9_3, ymm1_3, table);
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x555555555234 *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555238 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x55555555523e *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vprolq $0x1,%ymm12,%ymm8                        #! PC = 0x555555555244 *)
rol ymm8_0 ymm12_0 1; rol ymm8_1 ymm12_1 1;
rol ymm8_2 ymm12_2 1; rol ymm8_3 ymm12_3 1;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x55555555524b *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x555555555251 *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555256 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm0,%ymm13             #! PC = 0x55555555525c *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm13_0, ymm0_0, ymm7_0, table);
inline vpternlogq64 (ymm13_1, ymm0_1, ymm7_1, table);
inline vpternlogq64 (ymm13_2, ymm0_2, ymm7_2, table);
inline vpternlogq64 (ymm13_3, ymm0_3, ymm7_3, table);
(* vprolq $0x1,%ymm13,%ymm8                        #! PC = 0x555555555263 *)
rol ymm8_0 ymm13_0 1; rol ymm8_1 ymm13_1 1;
rol ymm8_2 ymm13_2 1; rol ymm8_3 ymm13_3 1;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x55555555526a *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x55555555526f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm7               #! PC = 0x555555555275 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm7_0 blen_0; mov ymm7_1 blen_1;
mov ymm7_2 blen_2; mov ymm7_3 blen_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527b *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vprolvq %ymm16,%ymm2,%ymm2                      #! PC = 0x555555555280 *)
rol ymm2_0 ymm2_0  3; rol ymm2_1 ymm2_1 18;
rol ymm2_2 ymm2_2 36; rol ymm2_3 ymm2_3 41;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm3             #! PC = 0x555555555286 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm3_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm3_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm3_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm3_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm18,%ymm3,%ymm3                      #! PC = 0x55555555528d *)
rol ymm3_0 ymm3_0 45; rol ymm3_1 ymm3_1  6;
rol ymm3_2 ymm3_2 56; rol ymm3_3 ymm3_3 39;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm4             #! PC = 0x555555555293 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm4_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm4_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm4_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm4_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm19,%ymm4,%ymm4                      #! PC = 0x55555555529a *)
rol ymm4_0 ymm4_0 10; rol ymm4_1 ymm4_1 61;
rol ymm4_2 ymm4_2 55; rol ymm4_3 ymm4_3  8;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm5             #! PC = 0x5555555552a0 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm5_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm5_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm5_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm5_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm20,%ymm5,%ymm5                      #! PC = 0x5555555552a7 *)
rol ymm5_0 ymm5_0  2; rol ymm5_1 ymm5_1 15;
rol ymm5_2 ymm5_2 25; rol ymm5_3 ymm5_3 20;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ad *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552b3 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm6             #! PC = 0x5555555552b9 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm6_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm6_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm6_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm6_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm21,%ymm6,%ymm8                      #! PC = 0x5555555552c0 *)
rol ymm8_0 ymm6_0 44; rol ymm8_1 ymm6_1 43;
rol ymm8_2 ymm6_2 21; rol ymm8_3 ymm6_3 14;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x5555555552c6 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x5555555552cc *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm1             #! PC = 0x5555555552d2 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm1_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm1_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm1_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm1_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm17,%ymm1,%ymm9                      #! PC = 0x5555555552d9 *)
rol ymm9_0 ymm1_0  1; rol ymm9_1 ymm1_1 62;
rol ymm9_2 ymm1_2 28; rol ymm9_3 ymm1_3 27;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x5555555552df *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x5555555552e5 *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x5555555552eb *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x5555555552f1 *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x5555555552f7 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x5555555552fd *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x555555555303 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555309 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x55555555530f *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x555555555315 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x55555555531b *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x555555555321 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm10,%ymm3            #! PC = 0x555555555327 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm3_0, ymm10_0, ymm15_0, table);
inline vpternlogq64 (ymm3_1, ymm10_1, ymm15_1, table);
inline vpternlogq64 (ymm3_2, ymm10_2, ymm15_2, table);
inline vpternlogq64 (ymm3_3, ymm10_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm12,%ymm5            #! PC = 0x55555555532e *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm5_0, ymm12_0, ymm14_0, table);
inline vpternlogq64 (ymm5_1, ymm12_1, ymm14_1, table);
inline vpternlogq64 (ymm5_2, ymm12_2, ymm14_2, table);
inline vpternlogq64 (ymm5_3, ymm12_3, ymm14_3, table);
(* vpsrldq $0x8,%ymm8,%ymm7                        #! PC = 0x555555555335 *)
mov ymm7_0 ymm8_1; mov ymm7_1 0@uint64;
mov ymm7_2 ymm8_3; mov ymm7_3 0@uint64;
(* vpandn %ymm7,%ymm8,%ymm7                        #! PC = 0x55555555533b *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm7_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm7_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm7_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm7_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555533f *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555534b *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x555555555351 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x555555555357 *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x55555555535d *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm13,%ymm6            #! PC = 0x555555555363 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm6_0, ymm13_0, ymm15_0, table);
inline vpternlogq64 (ymm6_1, ymm13_1, ymm15_1, table);
inline vpternlogq64 (ymm6_2, ymm13_2, ymm15_2, table);
inline vpternlogq64 (ymm6_3, ymm13_3, ymm15_3, table);
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x55555555536a *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x555555555370 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x555555555376 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x55555555537c *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x555555555382 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x555555555388 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x55555555538e *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555394 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x55555555539a *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553a0 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm14,%ymm9,%ymm2             #! PC = 0x5555555553a6 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm2_0, ymm9_0, ymm14_0, table);
inline vpternlogq64 (ymm2_1, ymm9_1, ymm14_1, table);
inline vpternlogq64 (ymm2_2, ymm9_2, ymm14_2, table);
inline vpternlogq64 (ymm2_3, ymm9_3, ymm14_3, table);
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x5555555553ad *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x5555555553b3 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x5555555553b9 *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x5555555553bf *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x5555555553c5 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x5555555553cb *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x5555555553d1 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x5555555553d7 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x5555555553dd *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553e3 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm8,%ymm1             #! PC = 0x5555555553e9 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm1_0, ymm8_0, ymm15_0, table);
inline vpternlogq64 (ymm1_1, ymm8_1, ymm15_1, table);
inline vpternlogq64 (ymm1_2, ymm8_2, ymm15_2, table);
inline vpternlogq64 (ymm1_3, ymm8_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm11,%ymm4            #! PC = 0x5555555553f0 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm4_0, ymm11_0, ymm14_0, table);
inline vpternlogq64 (ymm4_1, ymm11_1, ymm14_1, table);
inline vpternlogq64 (ymm4_2, ymm11_2, ymm14_2, table);
inline vpternlogq64 (ymm4_3, ymm11_3, ymm14_3, table);
(* vpternlogq $0x96,(%r10),%ymm7,%ymm0             #! EA = L0x555555555d20; Value = 0x8000000000008003; PC = 0x5555555553f7 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm0_0, ymm7_0, L0x555555555d20, table);
inline vpternlogq64 (ymm0_1, ymm7_1, L0x555555555d28, table);
inline vpternlogq64 (ymm0_2, ymm7_2, L0x555555555d30, table);
inline vpternlogq64 (ymm0_3, ymm7_3, L0x555555555d38, table);
(* lea    0x20(%r10),%r10                          #! PC = 0x5555555553fe *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555402 *)
(* dec %eax *)
nop;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555404 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555404 = 0x555555555404;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpternlogq $0x96,%ymm1,%ymm9,%ymm12             #! PC = 0x55555555522d *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm12_0, ymm9_0, ymm1_0, table);
inline vpternlogq64 (ymm12_1, ymm9_1, ymm1_1, table);
inline vpternlogq64 (ymm12_2, ymm9_2, ymm1_2, table);
inline vpternlogq64 (ymm12_3, ymm9_3, ymm1_3, table);
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x555555555234 *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555238 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x55555555523e *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vprolq $0x1,%ymm12,%ymm8                        #! PC = 0x555555555244 *)
rol ymm8_0 ymm12_0 1; rol ymm8_1 ymm12_1 1;
rol ymm8_2 ymm12_2 1; rol ymm8_3 ymm12_3 1;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x55555555524b *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x555555555251 *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555256 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm0,%ymm13             #! PC = 0x55555555525c *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm13_0, ymm0_0, ymm7_0, table);
inline vpternlogq64 (ymm13_1, ymm0_1, ymm7_1, table);
inline vpternlogq64 (ymm13_2, ymm0_2, ymm7_2, table);
inline vpternlogq64 (ymm13_3, ymm0_3, ymm7_3, table);
(* vprolq $0x1,%ymm13,%ymm8                        #! PC = 0x555555555263 *)
rol ymm8_0 ymm13_0 1; rol ymm8_1 ymm13_1 1;
rol ymm8_2 ymm13_2 1; rol ymm8_3 ymm13_3 1;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x55555555526a *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x55555555526f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm7               #! PC = 0x555555555275 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm7_0 blen_0; mov ymm7_1 blen_1;
mov ymm7_2 blen_2; mov ymm7_3 blen_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527b *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vprolvq %ymm16,%ymm2,%ymm2                      #! PC = 0x555555555280 *)
rol ymm2_0 ymm2_0  3; rol ymm2_1 ymm2_1 18;
rol ymm2_2 ymm2_2 36; rol ymm2_3 ymm2_3 41;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm3             #! PC = 0x555555555286 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm3_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm3_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm3_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm3_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm18,%ymm3,%ymm3                      #! PC = 0x55555555528d *)
rol ymm3_0 ymm3_0 45; rol ymm3_1 ymm3_1  6;
rol ymm3_2 ymm3_2 56; rol ymm3_3 ymm3_3 39;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm4             #! PC = 0x555555555293 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm4_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm4_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm4_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm4_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm19,%ymm4,%ymm4                      #! PC = 0x55555555529a *)
rol ymm4_0 ymm4_0 10; rol ymm4_1 ymm4_1 61;
rol ymm4_2 ymm4_2 55; rol ymm4_3 ymm4_3  8;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm5             #! PC = 0x5555555552a0 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm5_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm5_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm5_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm5_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm20,%ymm5,%ymm5                      #! PC = 0x5555555552a7 *)
rol ymm5_0 ymm5_0  2; rol ymm5_1 ymm5_1 15;
rol ymm5_2 ymm5_2 25; rol ymm5_3 ymm5_3 20;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ad *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552b3 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm6             #! PC = 0x5555555552b9 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm6_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm6_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm6_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm6_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm21,%ymm6,%ymm8                      #! PC = 0x5555555552c0 *)
rol ymm8_0 ymm6_0 44; rol ymm8_1 ymm6_1 43;
rol ymm8_2 ymm6_2 21; rol ymm8_3 ymm6_3 14;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x5555555552c6 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x5555555552cc *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm1             #! PC = 0x5555555552d2 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm1_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm1_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm1_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm1_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm17,%ymm1,%ymm9                      #! PC = 0x5555555552d9 *)
rol ymm9_0 ymm1_0  1; rol ymm9_1 ymm1_1 62;
rol ymm9_2 ymm1_2 28; rol ymm9_3 ymm1_3 27;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x5555555552df *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x5555555552e5 *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x5555555552eb *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x5555555552f1 *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x5555555552f7 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x5555555552fd *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x555555555303 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555309 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x55555555530f *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x555555555315 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x55555555531b *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x555555555321 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm10,%ymm3            #! PC = 0x555555555327 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm3_0, ymm10_0, ymm15_0, table);
inline vpternlogq64 (ymm3_1, ymm10_1, ymm15_1, table);
inline vpternlogq64 (ymm3_2, ymm10_2, ymm15_2, table);
inline vpternlogq64 (ymm3_3, ymm10_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm12,%ymm5            #! PC = 0x55555555532e *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm5_0, ymm12_0, ymm14_0, table);
inline vpternlogq64 (ymm5_1, ymm12_1, ymm14_1, table);
inline vpternlogq64 (ymm5_2, ymm12_2, ymm14_2, table);
inline vpternlogq64 (ymm5_3, ymm12_3, ymm14_3, table);
(* vpsrldq $0x8,%ymm8,%ymm7                        #! PC = 0x555555555335 *)
mov ymm7_0 ymm8_1; mov ymm7_1 0@uint64;
mov ymm7_2 ymm8_3; mov ymm7_3 0@uint64;
(* vpandn %ymm7,%ymm8,%ymm7                        #! PC = 0x55555555533b *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm7_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm7_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm7_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm7_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555533f *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555534b *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x555555555351 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x555555555357 *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x55555555535d *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm13,%ymm6            #! PC = 0x555555555363 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm6_0, ymm13_0, ymm15_0, table);
inline vpternlogq64 (ymm6_1, ymm13_1, ymm15_1, table);
inline vpternlogq64 (ymm6_2, ymm13_2, ymm15_2, table);
inline vpternlogq64 (ymm6_3, ymm13_3, ymm15_3, table);
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x55555555536a *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x555555555370 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x555555555376 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x55555555537c *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x555555555382 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x555555555388 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x55555555538e *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555394 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x55555555539a *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553a0 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm14,%ymm9,%ymm2             #! PC = 0x5555555553a6 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm2_0, ymm9_0, ymm14_0, table);
inline vpternlogq64 (ymm2_1, ymm9_1, ymm14_1, table);
inline vpternlogq64 (ymm2_2, ymm9_2, ymm14_2, table);
inline vpternlogq64 (ymm2_3, ymm9_3, ymm14_3, table);
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x5555555553ad *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x5555555553b3 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x5555555553b9 *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x5555555553bf *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x5555555553c5 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x5555555553cb *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x5555555553d1 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x5555555553d7 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x5555555553dd *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553e3 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm8,%ymm1             #! PC = 0x5555555553e9 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm1_0, ymm8_0, ymm15_0, table);
inline vpternlogq64 (ymm1_1, ymm8_1, ymm15_1, table);
inline vpternlogq64 (ymm1_2, ymm8_2, ymm15_2, table);
inline vpternlogq64 (ymm1_3, ymm8_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm11,%ymm4            #! PC = 0x5555555553f0 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm4_0, ymm11_0, ymm14_0, table);
inline vpternlogq64 (ymm4_1, ymm11_1, ymm14_1, table);
inline vpternlogq64 (ymm4_2, ymm11_2, ymm14_2, table);
inline vpternlogq64 (ymm4_3, ymm11_3, ymm14_3, table);
(* vpternlogq $0x96,(%r10),%ymm7,%ymm0             #! EA = L0x555555555d40; Value = 0x8000000000008002; PC = 0x5555555553f7 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm0_0, ymm7_0, L0x555555555d40, table);
inline vpternlogq64 (ymm0_1, ymm7_1, L0x555555555d48, table);
inline vpternlogq64 (ymm0_2, ymm7_2, L0x555555555d50, table);
inline vpternlogq64 (ymm0_3, ymm7_3, L0x555555555d58, table);
(* lea    0x20(%r10),%r10                          #! PC = 0x5555555553fe *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555402 *)
(* dec %eax *)
nop;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555404 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555404 = 0x555555555404;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpternlogq $0x96,%ymm1,%ymm9,%ymm12             #! PC = 0x55555555522d *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm12_0, ymm9_0, ymm1_0, table);
inline vpternlogq64 (ymm12_1, ymm9_1, ymm1_1, table);
inline vpternlogq64 (ymm12_2, ymm9_2, ymm1_2, table);
inline vpternlogq64 (ymm12_3, ymm9_3, ymm1_3, table);
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x555555555234 *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555238 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x55555555523e *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vprolq $0x1,%ymm12,%ymm8                        #! PC = 0x555555555244 *)
rol ymm8_0 ymm12_0 1; rol ymm8_1 ymm12_1 1;
rol ymm8_2 ymm12_2 1; rol ymm8_3 ymm12_3 1;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x55555555524b *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x555555555251 *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555256 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm0,%ymm13             #! PC = 0x55555555525c *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm13_0, ymm0_0, ymm7_0, table);
inline vpternlogq64 (ymm13_1, ymm0_1, ymm7_1, table);
inline vpternlogq64 (ymm13_2, ymm0_2, ymm7_2, table);
inline vpternlogq64 (ymm13_3, ymm0_3, ymm7_3, table);
(* vprolq $0x1,%ymm13,%ymm8                        #! PC = 0x555555555263 *)
rol ymm8_0 ymm13_0 1; rol ymm8_1 ymm13_1 1;
rol ymm8_2 ymm13_2 1; rol ymm8_3 ymm13_3 1;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x55555555526a *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x55555555526f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm7               #! PC = 0x555555555275 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm7_0 blen_0; mov ymm7_1 blen_1;
mov ymm7_2 blen_2; mov ymm7_3 blen_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527b *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vprolvq %ymm16,%ymm2,%ymm2                      #! PC = 0x555555555280 *)
rol ymm2_0 ymm2_0  3; rol ymm2_1 ymm2_1 18;
rol ymm2_2 ymm2_2 36; rol ymm2_3 ymm2_3 41;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm3             #! PC = 0x555555555286 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm3_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm3_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm3_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm3_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm18,%ymm3,%ymm3                      #! PC = 0x55555555528d *)
rol ymm3_0 ymm3_0 45; rol ymm3_1 ymm3_1  6;
rol ymm3_2 ymm3_2 56; rol ymm3_3 ymm3_3 39;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm4             #! PC = 0x555555555293 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm4_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm4_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm4_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm4_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm19,%ymm4,%ymm4                      #! PC = 0x55555555529a *)
rol ymm4_0 ymm4_0 10; rol ymm4_1 ymm4_1 61;
rol ymm4_2 ymm4_2 55; rol ymm4_3 ymm4_3  8;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm5             #! PC = 0x5555555552a0 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm5_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm5_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm5_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm5_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm20,%ymm5,%ymm5                      #! PC = 0x5555555552a7 *)
rol ymm5_0 ymm5_0  2; rol ymm5_1 ymm5_1 15;
rol ymm5_2 ymm5_2 25; rol ymm5_3 ymm5_3 20;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ad *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552b3 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm6             #! PC = 0x5555555552b9 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm6_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm6_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm6_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm6_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm21,%ymm6,%ymm8                      #! PC = 0x5555555552c0 *)
rol ymm8_0 ymm6_0 44; rol ymm8_1 ymm6_1 43;
rol ymm8_2 ymm6_2 21; rol ymm8_3 ymm6_3 14;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x5555555552c6 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x5555555552cc *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm1             #! PC = 0x5555555552d2 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm1_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm1_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm1_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm1_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm17,%ymm1,%ymm9                      #! PC = 0x5555555552d9 *)
rol ymm9_0 ymm1_0  1; rol ymm9_1 ymm1_1 62;
rol ymm9_2 ymm1_2 28; rol ymm9_3 ymm1_3 27;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x5555555552df *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x5555555552e5 *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x5555555552eb *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x5555555552f1 *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x5555555552f7 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x5555555552fd *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x555555555303 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555309 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x55555555530f *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x555555555315 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x55555555531b *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x555555555321 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm10,%ymm3            #! PC = 0x555555555327 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm3_0, ymm10_0, ymm15_0, table);
inline vpternlogq64 (ymm3_1, ymm10_1, ymm15_1, table);
inline vpternlogq64 (ymm3_2, ymm10_2, ymm15_2, table);
inline vpternlogq64 (ymm3_3, ymm10_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm12,%ymm5            #! PC = 0x55555555532e *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm5_0, ymm12_0, ymm14_0, table);
inline vpternlogq64 (ymm5_1, ymm12_1, ymm14_1, table);
inline vpternlogq64 (ymm5_2, ymm12_2, ymm14_2, table);
inline vpternlogq64 (ymm5_3, ymm12_3, ymm14_3, table);
(* vpsrldq $0x8,%ymm8,%ymm7                        #! PC = 0x555555555335 *)
mov ymm7_0 ymm8_1; mov ymm7_1 0@uint64;
mov ymm7_2 ymm8_3; mov ymm7_3 0@uint64;
(* vpandn %ymm7,%ymm8,%ymm7                        #! PC = 0x55555555533b *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm7_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm7_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm7_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm7_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555533f *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555534b *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x555555555351 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x555555555357 *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x55555555535d *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm13,%ymm6            #! PC = 0x555555555363 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm6_0, ymm13_0, ymm15_0, table);
inline vpternlogq64 (ymm6_1, ymm13_1, ymm15_1, table);
inline vpternlogq64 (ymm6_2, ymm13_2, ymm15_2, table);
inline vpternlogq64 (ymm6_3, ymm13_3, ymm15_3, table);
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x55555555536a *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x555555555370 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x555555555376 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x55555555537c *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x555555555382 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x555555555388 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x55555555538e *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555394 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x55555555539a *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553a0 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm14,%ymm9,%ymm2             #! PC = 0x5555555553a6 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm2_0, ymm9_0, ymm14_0, table);
inline vpternlogq64 (ymm2_1, ymm9_1, ymm14_1, table);
inline vpternlogq64 (ymm2_2, ymm9_2, ymm14_2, table);
inline vpternlogq64 (ymm2_3, ymm9_3, ymm14_3, table);
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x5555555553ad *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x5555555553b3 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x5555555553b9 *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x5555555553bf *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x5555555553c5 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x5555555553cb *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x5555555553d1 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x5555555553d7 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x5555555553dd *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553e3 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm8,%ymm1             #! PC = 0x5555555553e9 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm1_0, ymm8_0, ymm15_0, table);
inline vpternlogq64 (ymm1_1, ymm8_1, ymm15_1, table);
inline vpternlogq64 (ymm1_2, ymm8_2, ymm15_2, table);
inline vpternlogq64 (ymm1_3, ymm8_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm11,%ymm4            #! PC = 0x5555555553f0 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm4_0, ymm11_0, ymm14_0, table);
inline vpternlogq64 (ymm4_1, ymm11_1, ymm14_1, table);
inline vpternlogq64 (ymm4_2, ymm11_2, ymm14_2, table);
inline vpternlogq64 (ymm4_3, ymm11_3, ymm14_3, table);
(* vpternlogq $0x96,(%r10),%ymm7,%ymm0             #! EA = L0x555555555d60; Value = 0x8000000000000080; PC = 0x5555555553f7 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm0_0, ymm7_0, L0x555555555d60, table);
inline vpternlogq64 (ymm0_1, ymm7_1, L0x555555555d68, table);
inline vpternlogq64 (ymm0_2, ymm7_2, L0x555555555d70, table);
inline vpternlogq64 (ymm0_3, ymm7_3, L0x555555555d78, table);
(* lea    0x20(%r10),%r10                          #! PC = 0x5555555553fe *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555402 *)
(* dec %eax *)
nop;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555404 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555404 = 0x555555555404;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpternlogq $0x96,%ymm1,%ymm9,%ymm12             #! PC = 0x55555555522d *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm12_0, ymm9_0, ymm1_0, table);
inline vpternlogq64 (ymm12_1, ymm9_1, ymm1_1, table);
inline vpternlogq64 (ymm12_2, ymm9_2, ymm1_2, table);
inline vpternlogq64 (ymm12_3, ymm9_3, ymm1_3, table);
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x555555555234 *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555238 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x55555555523e *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vprolq $0x1,%ymm12,%ymm8                        #! PC = 0x555555555244 *)
rol ymm8_0 ymm12_0 1; rol ymm8_1 ymm12_1 1;
rol ymm8_2 ymm12_2 1; rol ymm8_3 ymm12_3 1;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x55555555524b *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x555555555251 *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555256 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm0,%ymm13             #! PC = 0x55555555525c *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm13_0, ymm0_0, ymm7_0, table);
inline vpternlogq64 (ymm13_1, ymm0_1, ymm7_1, table);
inline vpternlogq64 (ymm13_2, ymm0_2, ymm7_2, table);
inline vpternlogq64 (ymm13_3, ymm0_3, ymm7_3, table);
(* vprolq $0x1,%ymm13,%ymm8                        #! PC = 0x555555555263 *)
rol ymm8_0 ymm13_0 1; rol ymm8_1 ymm13_1 1;
rol ymm8_2 ymm13_2 1; rol ymm8_3 ymm13_3 1;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x55555555526a *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x55555555526f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm7               #! PC = 0x555555555275 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm7_0 blen_0; mov ymm7_1 blen_1;
mov ymm7_2 blen_2; mov ymm7_3 blen_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527b *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vprolvq %ymm16,%ymm2,%ymm2                      #! PC = 0x555555555280 *)
rol ymm2_0 ymm2_0  3; rol ymm2_1 ymm2_1 18;
rol ymm2_2 ymm2_2 36; rol ymm2_3 ymm2_3 41;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm3             #! PC = 0x555555555286 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm3_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm3_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm3_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm3_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm18,%ymm3,%ymm3                      #! PC = 0x55555555528d *)
rol ymm3_0 ymm3_0 45; rol ymm3_1 ymm3_1  6;
rol ymm3_2 ymm3_2 56; rol ymm3_3 ymm3_3 39;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm4             #! PC = 0x555555555293 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm4_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm4_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm4_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm4_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm19,%ymm4,%ymm4                      #! PC = 0x55555555529a *)
rol ymm4_0 ymm4_0 10; rol ymm4_1 ymm4_1 61;
rol ymm4_2 ymm4_2 55; rol ymm4_3 ymm4_3  8;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm5             #! PC = 0x5555555552a0 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm5_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm5_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm5_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm5_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm20,%ymm5,%ymm5                      #! PC = 0x5555555552a7 *)
rol ymm5_0 ymm5_0  2; rol ymm5_1 ymm5_1 15;
rol ymm5_2 ymm5_2 25; rol ymm5_3 ymm5_3 20;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ad *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552b3 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm6             #! PC = 0x5555555552b9 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm6_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm6_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm6_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm6_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm21,%ymm6,%ymm8                      #! PC = 0x5555555552c0 *)
rol ymm8_0 ymm6_0 44; rol ymm8_1 ymm6_1 43;
rol ymm8_2 ymm6_2 21; rol ymm8_3 ymm6_3 14;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x5555555552c6 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x5555555552cc *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm1             #! PC = 0x5555555552d2 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm1_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm1_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm1_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm1_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm17,%ymm1,%ymm9                      #! PC = 0x5555555552d9 *)
rol ymm9_0 ymm1_0  1; rol ymm9_1 ymm1_1 62;
rol ymm9_2 ymm1_2 28; rol ymm9_3 ymm1_3 27;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x5555555552df *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x5555555552e5 *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x5555555552eb *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x5555555552f1 *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x5555555552f7 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x5555555552fd *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x555555555303 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555309 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x55555555530f *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x555555555315 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x55555555531b *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x555555555321 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm10,%ymm3            #! PC = 0x555555555327 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm3_0, ymm10_0, ymm15_0, table);
inline vpternlogq64 (ymm3_1, ymm10_1, ymm15_1, table);
inline vpternlogq64 (ymm3_2, ymm10_2, ymm15_2, table);
inline vpternlogq64 (ymm3_3, ymm10_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm12,%ymm5            #! PC = 0x55555555532e *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm5_0, ymm12_0, ymm14_0, table);
inline vpternlogq64 (ymm5_1, ymm12_1, ymm14_1, table);
inline vpternlogq64 (ymm5_2, ymm12_2, ymm14_2, table);
inline vpternlogq64 (ymm5_3, ymm12_3, ymm14_3, table);
(* vpsrldq $0x8,%ymm8,%ymm7                        #! PC = 0x555555555335 *)
mov ymm7_0 ymm8_1; mov ymm7_1 0@uint64;
mov ymm7_2 ymm8_3; mov ymm7_3 0@uint64;
(* vpandn %ymm7,%ymm8,%ymm7                        #! PC = 0x55555555533b *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm7_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm7_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm7_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm7_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555533f *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555534b *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x555555555351 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x555555555357 *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x55555555535d *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm13,%ymm6            #! PC = 0x555555555363 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm6_0, ymm13_0, ymm15_0, table);
inline vpternlogq64 (ymm6_1, ymm13_1, ymm15_1, table);
inline vpternlogq64 (ymm6_2, ymm13_2, ymm15_2, table);
inline vpternlogq64 (ymm6_3, ymm13_3, ymm15_3, table);
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x55555555536a *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x555555555370 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x555555555376 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x55555555537c *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x555555555382 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x555555555388 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x55555555538e *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555394 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x55555555539a *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553a0 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm14,%ymm9,%ymm2             #! PC = 0x5555555553a6 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm2_0, ymm9_0, ymm14_0, table);
inline vpternlogq64 (ymm2_1, ymm9_1, ymm14_1, table);
inline vpternlogq64 (ymm2_2, ymm9_2, ymm14_2, table);
inline vpternlogq64 (ymm2_3, ymm9_3, ymm14_3, table);
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x5555555553ad *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x5555555553b3 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x5555555553b9 *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x5555555553bf *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x5555555553c5 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x5555555553cb *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x5555555553d1 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x5555555553d7 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x5555555553dd *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553e3 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm8,%ymm1             #! PC = 0x5555555553e9 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm1_0, ymm8_0, ymm15_0, table);
inline vpternlogq64 (ymm1_1, ymm8_1, ymm15_1, table);
inline vpternlogq64 (ymm1_2, ymm8_2, ymm15_2, table);
inline vpternlogq64 (ymm1_3, ymm8_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm11,%ymm4            #! PC = 0x5555555553f0 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm4_0, ymm11_0, ymm14_0, table);
inline vpternlogq64 (ymm4_1, ymm11_1, ymm14_1, table);
inline vpternlogq64 (ymm4_2, ymm11_2, ymm14_2, table);
inline vpternlogq64 (ymm4_3, ymm11_3, ymm14_3, table);
(* vpternlogq $0x96,(%r10),%ymm7,%ymm0             #! EA = L0x555555555d80; Value = 0x000000000000800a; PC = 0x5555555553f7 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm0_0, ymm7_0, L0x555555555d80, table);
inline vpternlogq64 (ymm0_1, ymm7_1, L0x555555555d88, table);
inline vpternlogq64 (ymm0_2, ymm7_2, L0x555555555d90, table);
inline vpternlogq64 (ymm0_3, ymm7_3, L0x555555555d98, table);
(* lea    0x20(%r10),%r10                          #! PC = 0x5555555553fe *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555402 *)
(* dec %eax *)
nop;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555404 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555404 = 0x555555555404;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpternlogq $0x96,%ymm1,%ymm9,%ymm12             #! PC = 0x55555555522d *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm12_0, ymm9_0, ymm1_0, table);
inline vpternlogq64 (ymm12_1, ymm9_1, ymm1_1, table);
inline vpternlogq64 (ymm12_2, ymm9_2, ymm1_2, table);
inline vpternlogq64 (ymm12_3, ymm9_3, ymm1_3, table);
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x555555555234 *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555238 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x55555555523e *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vprolq $0x1,%ymm12,%ymm8                        #! PC = 0x555555555244 *)
rol ymm8_0 ymm12_0 1; rol ymm8_1 ymm12_1 1;
rol ymm8_2 ymm12_2 1; rol ymm8_3 ymm12_3 1;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x55555555524b *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x555555555251 *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555256 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm0,%ymm13             #! PC = 0x55555555525c *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm13_0, ymm0_0, ymm7_0, table);
inline vpternlogq64 (ymm13_1, ymm0_1, ymm7_1, table);
inline vpternlogq64 (ymm13_2, ymm0_2, ymm7_2, table);
inline vpternlogq64 (ymm13_3, ymm0_3, ymm7_3, table);
(* vprolq $0x1,%ymm13,%ymm8                        #! PC = 0x555555555263 *)
rol ymm8_0 ymm13_0 1; rol ymm8_1 ymm13_1 1;
rol ymm8_2 ymm13_2 1; rol ymm8_3 ymm13_3 1;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x55555555526a *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x55555555526f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm7               #! PC = 0x555555555275 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm7_0 blen_0; mov ymm7_1 blen_1;
mov ymm7_2 blen_2; mov ymm7_3 blen_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527b *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vprolvq %ymm16,%ymm2,%ymm2                      #! PC = 0x555555555280 *)
rol ymm2_0 ymm2_0  3; rol ymm2_1 ymm2_1 18;
rol ymm2_2 ymm2_2 36; rol ymm2_3 ymm2_3 41;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm3             #! PC = 0x555555555286 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm3_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm3_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm3_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm3_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm18,%ymm3,%ymm3                      #! PC = 0x55555555528d *)
rol ymm3_0 ymm3_0 45; rol ymm3_1 ymm3_1  6;
rol ymm3_2 ymm3_2 56; rol ymm3_3 ymm3_3 39;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm4             #! PC = 0x555555555293 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm4_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm4_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm4_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm4_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm19,%ymm4,%ymm4                      #! PC = 0x55555555529a *)
rol ymm4_0 ymm4_0 10; rol ymm4_1 ymm4_1 61;
rol ymm4_2 ymm4_2 55; rol ymm4_3 ymm4_3  8;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm5             #! PC = 0x5555555552a0 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm5_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm5_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm5_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm5_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm20,%ymm5,%ymm5                      #! PC = 0x5555555552a7 *)
rol ymm5_0 ymm5_0  2; rol ymm5_1 ymm5_1 15;
rol ymm5_2 ymm5_2 25; rol ymm5_3 ymm5_3 20;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ad *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552b3 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm6             #! PC = 0x5555555552b9 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm6_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm6_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm6_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm6_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm21,%ymm6,%ymm8                      #! PC = 0x5555555552c0 *)
rol ymm8_0 ymm6_0 44; rol ymm8_1 ymm6_1 43;
rol ymm8_2 ymm6_2 21; rol ymm8_3 ymm6_3 14;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x5555555552c6 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x5555555552cc *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm1             #! PC = 0x5555555552d2 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm1_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm1_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm1_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm1_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm17,%ymm1,%ymm9                      #! PC = 0x5555555552d9 *)
rol ymm9_0 ymm1_0  1; rol ymm9_1 ymm1_1 62;
rol ymm9_2 ymm1_2 28; rol ymm9_3 ymm1_3 27;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x5555555552df *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x5555555552e5 *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x5555555552eb *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x5555555552f1 *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x5555555552f7 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x5555555552fd *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x555555555303 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555309 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x55555555530f *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x555555555315 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x55555555531b *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x555555555321 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm10,%ymm3            #! PC = 0x555555555327 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm3_0, ymm10_0, ymm15_0, table);
inline vpternlogq64 (ymm3_1, ymm10_1, ymm15_1, table);
inline vpternlogq64 (ymm3_2, ymm10_2, ymm15_2, table);
inline vpternlogq64 (ymm3_3, ymm10_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm12,%ymm5            #! PC = 0x55555555532e *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm5_0, ymm12_0, ymm14_0, table);
inline vpternlogq64 (ymm5_1, ymm12_1, ymm14_1, table);
inline vpternlogq64 (ymm5_2, ymm12_2, ymm14_2, table);
inline vpternlogq64 (ymm5_3, ymm12_3, ymm14_3, table);
(* vpsrldq $0x8,%ymm8,%ymm7                        #! PC = 0x555555555335 *)
mov ymm7_0 ymm8_1; mov ymm7_1 0@uint64;
mov ymm7_2 ymm8_3; mov ymm7_3 0@uint64;
(* vpandn %ymm7,%ymm8,%ymm7                        #! PC = 0x55555555533b *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm7_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm7_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm7_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm7_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555533f *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555534b *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x555555555351 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x555555555357 *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x55555555535d *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm13,%ymm6            #! PC = 0x555555555363 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm6_0, ymm13_0, ymm15_0, table);
inline vpternlogq64 (ymm6_1, ymm13_1, ymm15_1, table);
inline vpternlogq64 (ymm6_2, ymm13_2, ymm15_2, table);
inline vpternlogq64 (ymm6_3, ymm13_3, ymm15_3, table);
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x55555555536a *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x555555555370 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x555555555376 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x55555555537c *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x555555555382 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x555555555388 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x55555555538e *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555394 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x55555555539a *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553a0 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm14,%ymm9,%ymm2             #! PC = 0x5555555553a6 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm2_0, ymm9_0, ymm14_0, table);
inline vpternlogq64 (ymm2_1, ymm9_1, ymm14_1, table);
inline vpternlogq64 (ymm2_2, ymm9_2, ymm14_2, table);
inline vpternlogq64 (ymm2_3, ymm9_3, ymm14_3, table);
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x5555555553ad *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x5555555553b3 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x5555555553b9 *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x5555555553bf *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x5555555553c5 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x5555555553cb *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x5555555553d1 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x5555555553d7 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x5555555553dd *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553e3 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm8,%ymm1             #! PC = 0x5555555553e9 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm1_0, ymm8_0, ymm15_0, table);
inline vpternlogq64 (ymm1_1, ymm8_1, ymm15_1, table);
inline vpternlogq64 (ymm1_2, ymm8_2, ymm15_2, table);
inline vpternlogq64 (ymm1_3, ymm8_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm11,%ymm4            #! PC = 0x5555555553f0 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm4_0, ymm11_0, ymm14_0, table);
inline vpternlogq64 (ymm4_1, ymm11_1, ymm14_1, table);
inline vpternlogq64 (ymm4_2, ymm11_2, ymm14_2, table);
inline vpternlogq64 (ymm4_3, ymm11_3, ymm14_3, table);
(* vpternlogq $0x96,(%r10),%ymm7,%ymm0             #! EA = L0x555555555da0; Value = 0x800000008000000a; PC = 0x5555555553f7 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm0_0, ymm7_0, L0x555555555da0, table);
inline vpternlogq64 (ymm0_1, ymm7_1, L0x555555555da8, table);
inline vpternlogq64 (ymm0_2, ymm7_2, L0x555555555db0, table);
inline vpternlogq64 (ymm0_3, ymm7_3, L0x555555555db8, table);
(* lea    0x20(%r10),%r10                          #! PC = 0x5555555553fe *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555402 *)
(* dec %eax *)
nop;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555404 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555404 = 0x555555555404;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpternlogq $0x96,%ymm1,%ymm9,%ymm12             #! PC = 0x55555555522d *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm12_0, ymm9_0, ymm1_0, table);
inline vpternlogq64 (ymm12_1, ymm9_1, ymm1_1, table);
inline vpternlogq64 (ymm12_2, ymm9_2, ymm1_2, table);
inline vpternlogq64 (ymm12_3, ymm9_3, ymm1_3, table);
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x555555555234 *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555238 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x55555555523e *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vprolq $0x1,%ymm12,%ymm8                        #! PC = 0x555555555244 *)
rol ymm8_0 ymm12_0 1; rol ymm8_1 ymm12_1 1;
rol ymm8_2 ymm12_2 1; rol ymm8_3 ymm12_3 1;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x55555555524b *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x555555555251 *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555256 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm0,%ymm13             #! PC = 0x55555555525c *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm13_0, ymm0_0, ymm7_0, table);
inline vpternlogq64 (ymm13_1, ymm0_1, ymm7_1, table);
inline vpternlogq64 (ymm13_2, ymm0_2, ymm7_2, table);
inline vpternlogq64 (ymm13_3, ymm0_3, ymm7_3, table);
(* vprolq $0x1,%ymm13,%ymm8                        #! PC = 0x555555555263 *)
rol ymm8_0 ymm13_0 1; rol ymm8_1 ymm13_1 1;
rol ymm8_2 ymm13_2 1; rol ymm8_3 ymm13_3 1;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x55555555526a *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x55555555526f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm7               #! PC = 0x555555555275 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm7_0 blen_0; mov ymm7_1 blen_1;
mov ymm7_2 blen_2; mov ymm7_3 blen_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527b *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vprolvq %ymm16,%ymm2,%ymm2                      #! PC = 0x555555555280 *)
rol ymm2_0 ymm2_0  3; rol ymm2_1 ymm2_1 18;
rol ymm2_2 ymm2_2 36; rol ymm2_3 ymm2_3 41;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm3             #! PC = 0x555555555286 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm3_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm3_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm3_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm3_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm18,%ymm3,%ymm3                      #! PC = 0x55555555528d *)
rol ymm3_0 ymm3_0 45; rol ymm3_1 ymm3_1  6;
rol ymm3_2 ymm3_2 56; rol ymm3_3 ymm3_3 39;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm4             #! PC = 0x555555555293 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm4_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm4_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm4_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm4_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm19,%ymm4,%ymm4                      #! PC = 0x55555555529a *)
rol ymm4_0 ymm4_0 10; rol ymm4_1 ymm4_1 61;
rol ymm4_2 ymm4_2 55; rol ymm4_3 ymm4_3  8;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm5             #! PC = 0x5555555552a0 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm5_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm5_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm5_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm5_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm20,%ymm5,%ymm5                      #! PC = 0x5555555552a7 *)
rol ymm5_0 ymm5_0  2; rol ymm5_1 ymm5_1 15;
rol ymm5_2 ymm5_2 25; rol ymm5_3 ymm5_3 20;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ad *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552b3 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm6             #! PC = 0x5555555552b9 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm6_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm6_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm6_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm6_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm21,%ymm6,%ymm8                      #! PC = 0x5555555552c0 *)
rol ymm8_0 ymm6_0 44; rol ymm8_1 ymm6_1 43;
rol ymm8_2 ymm6_2 21; rol ymm8_3 ymm6_3 14;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x5555555552c6 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x5555555552cc *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm1             #! PC = 0x5555555552d2 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm1_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm1_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm1_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm1_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm17,%ymm1,%ymm9                      #! PC = 0x5555555552d9 *)
rol ymm9_0 ymm1_0  1; rol ymm9_1 ymm1_1 62;
rol ymm9_2 ymm1_2 28; rol ymm9_3 ymm1_3 27;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x5555555552df *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x5555555552e5 *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x5555555552eb *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x5555555552f1 *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x5555555552f7 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x5555555552fd *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x555555555303 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555309 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x55555555530f *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x555555555315 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x55555555531b *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x555555555321 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm10,%ymm3            #! PC = 0x555555555327 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm3_0, ymm10_0, ymm15_0, table);
inline vpternlogq64 (ymm3_1, ymm10_1, ymm15_1, table);
inline vpternlogq64 (ymm3_2, ymm10_2, ymm15_2, table);
inline vpternlogq64 (ymm3_3, ymm10_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm12,%ymm5            #! PC = 0x55555555532e *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm5_0, ymm12_0, ymm14_0, table);
inline vpternlogq64 (ymm5_1, ymm12_1, ymm14_1, table);
inline vpternlogq64 (ymm5_2, ymm12_2, ymm14_2, table);
inline vpternlogq64 (ymm5_3, ymm12_3, ymm14_3, table);
(* vpsrldq $0x8,%ymm8,%ymm7                        #! PC = 0x555555555335 *)
mov ymm7_0 ymm8_1; mov ymm7_1 0@uint64;
mov ymm7_2 ymm8_3; mov ymm7_3 0@uint64;
(* vpandn %ymm7,%ymm8,%ymm7                        #! PC = 0x55555555533b *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm7_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm7_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm7_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm7_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555533f *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555534b *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x555555555351 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x555555555357 *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x55555555535d *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm13,%ymm6            #! PC = 0x555555555363 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm6_0, ymm13_0, ymm15_0, table);
inline vpternlogq64 (ymm6_1, ymm13_1, ymm15_1, table);
inline vpternlogq64 (ymm6_2, ymm13_2, ymm15_2, table);
inline vpternlogq64 (ymm6_3, ymm13_3, ymm15_3, table);
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x55555555536a *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x555555555370 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x555555555376 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x55555555537c *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x555555555382 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x555555555388 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x55555555538e *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555394 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x55555555539a *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553a0 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm14,%ymm9,%ymm2             #! PC = 0x5555555553a6 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm2_0, ymm9_0, ymm14_0, table);
inline vpternlogq64 (ymm2_1, ymm9_1, ymm14_1, table);
inline vpternlogq64 (ymm2_2, ymm9_2, ymm14_2, table);
inline vpternlogq64 (ymm2_3, ymm9_3, ymm14_3, table);
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x5555555553ad *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x5555555553b3 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x5555555553b9 *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x5555555553bf *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x5555555553c5 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x5555555553cb *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x5555555553d1 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x5555555553d7 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x5555555553dd *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553e3 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm8,%ymm1             #! PC = 0x5555555553e9 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm1_0, ymm8_0, ymm15_0, table);
inline vpternlogq64 (ymm1_1, ymm8_1, ymm15_1, table);
inline vpternlogq64 (ymm1_2, ymm8_2, ymm15_2, table);
inline vpternlogq64 (ymm1_3, ymm8_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm11,%ymm4            #! PC = 0x5555555553f0 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm4_0, ymm11_0, ymm14_0, table);
inline vpternlogq64 (ymm4_1, ymm11_1, ymm14_1, table);
inline vpternlogq64 (ymm4_2, ymm11_2, ymm14_2, table);
inline vpternlogq64 (ymm4_3, ymm11_3, ymm14_3, table);
(* vpternlogq $0x96,(%r10),%ymm7,%ymm0             #! EA = L0x555555555dc0; Value = 0x8000000080008081; PC = 0x5555555553f7 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm0_0, ymm7_0, L0x555555555dc0, table);
inline vpternlogq64 (ymm0_1, ymm7_1, L0x555555555dc8, table);
inline vpternlogq64 (ymm0_2, ymm7_2, L0x555555555dd0, table);
inline vpternlogq64 (ymm0_3, ymm7_3, L0x555555555dd8, table);
(* lea    0x20(%r10),%r10                          #! PC = 0x5555555553fe *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555402 *)
(* dec %eax *)
nop;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555404 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555404 = 0x555555555404;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpternlogq $0x96,%ymm1,%ymm9,%ymm12             #! PC = 0x55555555522d *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm12_0, ymm9_0, ymm1_0, table);
inline vpternlogq64 (ymm12_1, ymm9_1, ymm1_1, table);
inline vpternlogq64 (ymm12_2, ymm9_2, ymm1_2, table);
inline vpternlogq64 (ymm12_3, ymm9_3, ymm1_3, table);
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x555555555234 *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555238 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x55555555523e *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vprolq $0x1,%ymm12,%ymm8                        #! PC = 0x555555555244 *)
rol ymm8_0 ymm12_0 1; rol ymm8_1 ymm12_1 1;
rol ymm8_2 ymm12_2 1; rol ymm8_3 ymm12_3 1;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x55555555524b *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x555555555251 *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555256 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm0,%ymm13             #! PC = 0x55555555525c *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm13_0, ymm0_0, ymm7_0, table);
inline vpternlogq64 (ymm13_1, ymm0_1, ymm7_1, table);
inline vpternlogq64 (ymm13_2, ymm0_2, ymm7_2, table);
inline vpternlogq64 (ymm13_3, ymm0_3, ymm7_3, table);
(* vprolq $0x1,%ymm13,%ymm8                        #! PC = 0x555555555263 *)
rol ymm8_0 ymm13_0 1; rol ymm8_1 ymm13_1 1;
rol ymm8_2 ymm13_2 1; rol ymm8_3 ymm13_3 1;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x55555555526a *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x55555555526f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm7               #! PC = 0x555555555275 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm7_0 blen_0; mov ymm7_1 blen_1;
mov ymm7_2 blen_2; mov ymm7_3 blen_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527b *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vprolvq %ymm16,%ymm2,%ymm2                      #! PC = 0x555555555280 *)
rol ymm2_0 ymm2_0  3; rol ymm2_1 ymm2_1 18;
rol ymm2_2 ymm2_2 36; rol ymm2_3 ymm2_3 41;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm3             #! PC = 0x555555555286 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm3_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm3_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm3_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm3_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm18,%ymm3,%ymm3                      #! PC = 0x55555555528d *)
rol ymm3_0 ymm3_0 45; rol ymm3_1 ymm3_1  6;
rol ymm3_2 ymm3_2 56; rol ymm3_3 ymm3_3 39;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm4             #! PC = 0x555555555293 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm4_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm4_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm4_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm4_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm19,%ymm4,%ymm4                      #! PC = 0x55555555529a *)
rol ymm4_0 ymm4_0 10; rol ymm4_1 ymm4_1 61;
rol ymm4_2 ymm4_2 55; rol ymm4_3 ymm4_3  8;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm5             #! PC = 0x5555555552a0 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm5_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm5_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm5_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm5_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm20,%ymm5,%ymm5                      #! PC = 0x5555555552a7 *)
rol ymm5_0 ymm5_0  2; rol ymm5_1 ymm5_1 15;
rol ymm5_2 ymm5_2 25; rol ymm5_3 ymm5_3 20;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ad *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552b3 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm6             #! PC = 0x5555555552b9 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm6_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm6_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm6_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm6_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm21,%ymm6,%ymm8                      #! PC = 0x5555555552c0 *)
rol ymm8_0 ymm6_0 44; rol ymm8_1 ymm6_1 43;
rol ymm8_2 ymm6_2 21; rol ymm8_3 ymm6_3 14;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x5555555552c6 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x5555555552cc *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm1             #! PC = 0x5555555552d2 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm1_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm1_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm1_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm1_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm17,%ymm1,%ymm9                      #! PC = 0x5555555552d9 *)
rol ymm9_0 ymm1_0  1; rol ymm9_1 ymm1_1 62;
rol ymm9_2 ymm1_2 28; rol ymm9_3 ymm1_3 27;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x5555555552df *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x5555555552e5 *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x5555555552eb *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x5555555552f1 *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x5555555552f7 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x5555555552fd *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x555555555303 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555309 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x55555555530f *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x555555555315 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x55555555531b *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x555555555321 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm10,%ymm3            #! PC = 0x555555555327 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm3_0, ymm10_0, ymm15_0, table);
inline vpternlogq64 (ymm3_1, ymm10_1, ymm15_1, table);
inline vpternlogq64 (ymm3_2, ymm10_2, ymm15_2, table);
inline vpternlogq64 (ymm3_3, ymm10_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm12,%ymm5            #! PC = 0x55555555532e *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm5_0, ymm12_0, ymm14_0, table);
inline vpternlogq64 (ymm5_1, ymm12_1, ymm14_1, table);
inline vpternlogq64 (ymm5_2, ymm12_2, ymm14_2, table);
inline vpternlogq64 (ymm5_3, ymm12_3, ymm14_3, table);
(* vpsrldq $0x8,%ymm8,%ymm7                        #! PC = 0x555555555335 *)
mov ymm7_0 ymm8_1; mov ymm7_1 0@uint64;
mov ymm7_2 ymm8_3; mov ymm7_3 0@uint64;
(* vpandn %ymm7,%ymm8,%ymm7                        #! PC = 0x55555555533b *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm7_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm7_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm7_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm7_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555533f *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555534b *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x555555555351 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x555555555357 *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x55555555535d *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm13,%ymm6            #! PC = 0x555555555363 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm6_0, ymm13_0, ymm15_0, table);
inline vpternlogq64 (ymm6_1, ymm13_1, ymm15_1, table);
inline vpternlogq64 (ymm6_2, ymm13_2, ymm15_2, table);
inline vpternlogq64 (ymm6_3, ymm13_3, ymm15_3, table);
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x55555555536a *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x555555555370 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x555555555376 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x55555555537c *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x555555555382 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x555555555388 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x55555555538e *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555394 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x55555555539a *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553a0 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm14,%ymm9,%ymm2             #! PC = 0x5555555553a6 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm2_0, ymm9_0, ymm14_0, table);
inline vpternlogq64 (ymm2_1, ymm9_1, ymm14_1, table);
inline vpternlogq64 (ymm2_2, ymm9_2, ymm14_2, table);
inline vpternlogq64 (ymm2_3, ymm9_3, ymm14_3, table);
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x5555555553ad *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x5555555553b3 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x5555555553b9 *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x5555555553bf *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x5555555553c5 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x5555555553cb *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x5555555553d1 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x5555555553d7 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x5555555553dd *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553e3 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm8,%ymm1             #! PC = 0x5555555553e9 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm1_0, ymm8_0, ymm15_0, table);
inline vpternlogq64 (ymm1_1, ymm8_1, ymm15_1, table);
inline vpternlogq64 (ymm1_2, ymm8_2, ymm15_2, table);
inline vpternlogq64 (ymm1_3, ymm8_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm11,%ymm4            #! PC = 0x5555555553f0 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm4_0, ymm11_0, ymm14_0, table);
inline vpternlogq64 (ymm4_1, ymm11_1, ymm14_1, table);
inline vpternlogq64 (ymm4_2, ymm11_2, ymm14_2, table);
inline vpternlogq64 (ymm4_3, ymm11_3, ymm14_3, table);
(* vpternlogq $0x96,(%r10),%ymm7,%ymm0             #! EA = L0x555555555de0; Value = 0x8000000000008080; PC = 0x5555555553f7 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm0_0, ymm7_0, L0x555555555de0, table);
inline vpternlogq64 (ymm0_1, ymm7_1, L0x555555555de8, table);
inline vpternlogq64 (ymm0_2, ymm7_2, L0x555555555df0, table);
inline vpternlogq64 (ymm0_3, ymm7_3, L0x555555555df8, table);
(* lea    0x20(%r10),%r10                          #! PC = 0x5555555553fe *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555402 *)
(* dec %eax *)
nop;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555404 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555404 = 0x555555555404;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpternlogq $0x96,%ymm1,%ymm9,%ymm12             #! PC = 0x55555555522d *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm12_0, ymm9_0, ymm1_0, table);
inline vpternlogq64 (ymm12_1, ymm9_1, ymm1_1, table);
inline vpternlogq64 (ymm12_2, ymm9_2, ymm1_2, table);
inline vpternlogq64 (ymm12_3, ymm9_3, ymm1_3, table);
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x555555555234 *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555238 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x55555555523e *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vprolq $0x1,%ymm12,%ymm8                        #! PC = 0x555555555244 *)
rol ymm8_0 ymm12_0 1; rol ymm8_1 ymm12_1 1;
rol ymm8_2 ymm12_2 1; rol ymm8_3 ymm12_3 1;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x55555555524b *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x555555555251 *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555256 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm0,%ymm13             #! PC = 0x55555555525c *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm13_0, ymm0_0, ymm7_0, table);
inline vpternlogq64 (ymm13_1, ymm0_1, ymm7_1, table);
inline vpternlogq64 (ymm13_2, ymm0_2, ymm7_2, table);
inline vpternlogq64 (ymm13_3, ymm0_3, ymm7_3, table);
(* vprolq $0x1,%ymm13,%ymm8                        #! PC = 0x555555555263 *)
rol ymm8_0 ymm13_0 1; rol ymm8_1 ymm13_1 1;
rol ymm8_2 ymm13_2 1; rol ymm8_3 ymm13_3 1;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x55555555526a *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x55555555526f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm7               #! PC = 0x555555555275 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm7_0 blen_0; mov ymm7_1 blen_1;
mov ymm7_2 blen_2; mov ymm7_3 blen_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527b *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vprolvq %ymm16,%ymm2,%ymm2                      #! PC = 0x555555555280 *)
rol ymm2_0 ymm2_0  3; rol ymm2_1 ymm2_1 18;
rol ymm2_2 ymm2_2 36; rol ymm2_3 ymm2_3 41;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm3             #! PC = 0x555555555286 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm3_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm3_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm3_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm3_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm18,%ymm3,%ymm3                      #! PC = 0x55555555528d *)
rol ymm3_0 ymm3_0 45; rol ymm3_1 ymm3_1  6;
rol ymm3_2 ymm3_2 56; rol ymm3_3 ymm3_3 39;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm4             #! PC = 0x555555555293 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm4_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm4_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm4_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm4_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm19,%ymm4,%ymm4                      #! PC = 0x55555555529a *)
rol ymm4_0 ymm4_0 10; rol ymm4_1 ymm4_1 61;
rol ymm4_2 ymm4_2 55; rol ymm4_3 ymm4_3  8;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm5             #! PC = 0x5555555552a0 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm5_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm5_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm5_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm5_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm20,%ymm5,%ymm5                      #! PC = 0x5555555552a7 *)
rol ymm5_0 ymm5_0  2; rol ymm5_1 ymm5_1 15;
rol ymm5_2 ymm5_2 25; rol ymm5_3 ymm5_3 20;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ad *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552b3 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm6             #! PC = 0x5555555552b9 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm6_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm6_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm6_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm6_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm21,%ymm6,%ymm8                      #! PC = 0x5555555552c0 *)
rol ymm8_0 ymm6_0 44; rol ymm8_1 ymm6_1 43;
rol ymm8_2 ymm6_2 21; rol ymm8_3 ymm6_3 14;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x5555555552c6 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x5555555552cc *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm1             #! PC = 0x5555555552d2 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm1_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm1_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm1_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm1_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm17,%ymm1,%ymm9                      #! PC = 0x5555555552d9 *)
rol ymm9_0 ymm1_0  1; rol ymm9_1 ymm1_1 62;
rol ymm9_2 ymm1_2 28; rol ymm9_3 ymm1_3 27;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x5555555552df *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x5555555552e5 *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x5555555552eb *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x5555555552f1 *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x5555555552f7 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x5555555552fd *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x555555555303 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555309 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x55555555530f *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x555555555315 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x55555555531b *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x555555555321 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm10,%ymm3            #! PC = 0x555555555327 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm3_0, ymm10_0, ymm15_0, table);
inline vpternlogq64 (ymm3_1, ymm10_1, ymm15_1, table);
inline vpternlogq64 (ymm3_2, ymm10_2, ymm15_2, table);
inline vpternlogq64 (ymm3_3, ymm10_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm12,%ymm5            #! PC = 0x55555555532e *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm5_0, ymm12_0, ymm14_0, table);
inline vpternlogq64 (ymm5_1, ymm12_1, ymm14_1, table);
inline vpternlogq64 (ymm5_2, ymm12_2, ymm14_2, table);
inline vpternlogq64 (ymm5_3, ymm12_3, ymm14_3, table);
(* vpsrldq $0x8,%ymm8,%ymm7                        #! PC = 0x555555555335 *)
mov ymm7_0 ymm8_1; mov ymm7_1 0@uint64;
mov ymm7_2 ymm8_3; mov ymm7_3 0@uint64;
(* vpandn %ymm7,%ymm8,%ymm7                        #! PC = 0x55555555533b *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm7_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm7_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm7_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm7_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555533f *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555534b *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x555555555351 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x555555555357 *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x55555555535d *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm13,%ymm6            #! PC = 0x555555555363 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm6_0, ymm13_0, ymm15_0, table);
inline vpternlogq64 (ymm6_1, ymm13_1, ymm15_1, table);
inline vpternlogq64 (ymm6_2, ymm13_2, ymm15_2, table);
inline vpternlogq64 (ymm6_3, ymm13_3, ymm15_3, table);
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x55555555536a *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x555555555370 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x555555555376 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x55555555537c *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x555555555382 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x555555555388 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x55555555538e *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555394 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x55555555539a *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553a0 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm14,%ymm9,%ymm2             #! PC = 0x5555555553a6 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm2_0, ymm9_0, ymm14_0, table);
inline vpternlogq64 (ymm2_1, ymm9_1, ymm14_1, table);
inline vpternlogq64 (ymm2_2, ymm9_2, ymm14_2, table);
inline vpternlogq64 (ymm2_3, ymm9_3, ymm14_3, table);
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x5555555553ad *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x5555555553b3 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x5555555553b9 *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x5555555553bf *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x5555555553c5 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x5555555553cb *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x5555555553d1 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x5555555553d7 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x5555555553dd *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553e3 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm8,%ymm1             #! PC = 0x5555555553e9 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm1_0, ymm8_0, ymm15_0, table);
inline vpternlogq64 (ymm1_1, ymm8_1, ymm15_1, table);
inline vpternlogq64 (ymm1_2, ymm8_2, ymm15_2, table);
inline vpternlogq64 (ymm1_3, ymm8_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm11,%ymm4            #! PC = 0x5555555553f0 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm4_0, ymm11_0, ymm14_0, table);
inline vpternlogq64 (ymm4_1, ymm11_1, ymm14_1, table);
inline vpternlogq64 (ymm4_2, ymm11_2, ymm14_2, table);
inline vpternlogq64 (ymm4_3, ymm11_3, ymm14_3, table);
(* vpternlogq $0x96,(%r10),%ymm7,%ymm0             #! EA = L0x555555555e00; Value = 0x0000000080000001; PC = 0x5555555553f7 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm0_0, ymm7_0, L0x555555555e00, table);
inline vpternlogq64 (ymm0_1, ymm7_1, L0x555555555e08, table);
inline vpternlogq64 (ymm0_2, ymm7_2, L0x555555555e10, table);
inline vpternlogq64 (ymm0_3, ymm7_3, L0x555555555e18, table);
(* lea    0x20(%r10),%r10                          #! PC = 0x5555555553fe *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555402 *)
(* dec %eax *)
nop;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555404 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555404 = 0x555555555404;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpternlogq $0x96,%ymm1,%ymm9,%ymm12             #! PC = 0x55555555522d *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm12_0, ymm9_0, ymm1_0, table);
inline vpternlogq64 (ymm12_1, ymm9_1, ymm1_1, table);
inline vpternlogq64 (ymm12_2, ymm9_2, ymm1_2, table);
inline vpternlogq64 (ymm12_3, ymm9_3, ymm1_3, table);
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x555555555234 *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555238 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x55555555523e *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vprolq $0x1,%ymm12,%ymm8                        #! PC = 0x555555555244 *)
rol ymm8_0 ymm12_0 1; rol ymm8_1 ymm12_1 1;
rol ymm8_2 ymm12_2 1; rol ymm8_3 ymm12_3 1;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x55555555524b *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x555555555251 *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555256 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm0,%ymm13             #! PC = 0x55555555525c *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm13_0, ymm0_0, ymm7_0, table);
inline vpternlogq64 (ymm13_1, ymm0_1, ymm7_1, table);
inline vpternlogq64 (ymm13_2, ymm0_2, ymm7_2, table);
inline vpternlogq64 (ymm13_3, ymm0_3, ymm7_3, table);
(* vprolq $0x1,%ymm13,%ymm8                        #! PC = 0x555555555263 *)
rol ymm8_0 ymm13_0 1; rol ymm8_1 ymm13_1 1;
rol ymm8_2 ymm13_2 1; rol ymm8_3 ymm13_3 1;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x55555555526a *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x55555555526f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm7               #! PC = 0x555555555275 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm7_0 blen_0; mov ymm7_1 blen_1;
mov ymm7_2 blen_2; mov ymm7_3 blen_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527b *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vprolvq %ymm16,%ymm2,%ymm2                      #! PC = 0x555555555280 *)
rol ymm2_0 ymm2_0  3; rol ymm2_1 ymm2_1 18;
rol ymm2_2 ymm2_2 36; rol ymm2_3 ymm2_3 41;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm3             #! PC = 0x555555555286 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm3_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm3_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm3_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm3_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm18,%ymm3,%ymm3                      #! PC = 0x55555555528d *)
rol ymm3_0 ymm3_0 45; rol ymm3_1 ymm3_1  6;
rol ymm3_2 ymm3_2 56; rol ymm3_3 ymm3_3 39;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm4             #! PC = 0x555555555293 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm4_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm4_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm4_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm4_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm19,%ymm4,%ymm4                      #! PC = 0x55555555529a *)
rol ymm4_0 ymm4_0 10; rol ymm4_1 ymm4_1 61;
rol ymm4_2 ymm4_2 55; rol ymm4_3 ymm4_3  8;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm5             #! PC = 0x5555555552a0 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm5_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm5_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm5_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm5_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm20,%ymm5,%ymm5                      #! PC = 0x5555555552a7 *)
rol ymm5_0 ymm5_0  2; rol ymm5_1 ymm5_1 15;
rol ymm5_2 ymm5_2 25; rol ymm5_3 ymm5_3 20;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ad *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552b3 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm6             #! PC = 0x5555555552b9 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm6_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm6_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm6_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm6_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm21,%ymm6,%ymm8                      #! PC = 0x5555555552c0 *)
rol ymm8_0 ymm6_0 44; rol ymm8_1 ymm6_1 43;
rol ymm8_2 ymm6_2 21; rol ymm8_3 ymm6_3 14;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x5555555552c6 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x5555555552cc *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpternlogq $0x96,%ymm7,%ymm15,%ymm1             #! PC = 0x5555555552d2 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm1_0, ymm15_0, ymm7_0, table);
inline vpternlogq64 (ymm1_1, ymm15_1, ymm7_1, table);
inline vpternlogq64 (ymm1_2, ymm15_2, ymm7_2, table);
inline vpternlogq64 (ymm1_3, ymm15_3, ymm7_3, table);
(* vprolvq %ymm17,%ymm1,%ymm9                      #! PC = 0x5555555552d9 *)
rol ymm9_0 ymm1_0  1; rol ymm9_1 ymm1_1 62;
rol ymm9_2 ymm1_2 28; rol ymm9_3 ymm1_3 27;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x5555555552df *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x5555555552e5 *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x5555555552eb *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x5555555552f1 *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x5555555552f7 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x5555555552fd *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x555555555303 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555309 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x55555555530f *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x555555555315 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x55555555531b *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x555555555321 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm10,%ymm3            #! PC = 0x555555555327 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm3_0, ymm10_0, ymm15_0, table);
inline vpternlogq64 (ymm3_1, ymm10_1, ymm15_1, table);
inline vpternlogq64 (ymm3_2, ymm10_2, ymm15_2, table);
inline vpternlogq64 (ymm3_3, ymm10_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm12,%ymm5            #! PC = 0x55555555532e *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm5_0, ymm12_0, ymm14_0, table);
inline vpternlogq64 (ymm5_1, ymm12_1, ymm14_1, table);
inline vpternlogq64 (ymm5_2, ymm12_2, ymm14_2, table);
inline vpternlogq64 (ymm5_3, ymm12_3, ymm14_3, table);
(* vpsrldq $0x8,%ymm8,%ymm7                        #! PC = 0x555555555335 *)
mov ymm7_0 ymm8_1; mov ymm7_1 0@uint64;
mov ymm7_2 ymm8_3; mov ymm7_3 0@uint64;
(* vpandn %ymm7,%ymm8,%ymm7                        #! PC = 0x55555555533b *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm7_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm7_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm7_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm7_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555533f *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555534b *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x555555555351 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x555555555357 *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x55555555535d *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm13,%ymm6            #! PC = 0x555555555363 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm6_0, ymm13_0, ymm15_0, table);
inline vpternlogq64 (ymm6_1, ymm13_1, ymm15_1, table);
inline vpternlogq64 (ymm6_2, ymm13_2, ymm15_2, table);
inline vpternlogq64 (ymm6_3, ymm13_3, ymm15_3, table);
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x55555555536a *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x555555555370 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x555555555376 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x55555555537c *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x555555555382 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x555555555388 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x55555555538e *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555394 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x55555555539a *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553a0 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm14,%ymm9,%ymm2             #! PC = 0x5555555553a6 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm2_0, ymm9_0, ymm14_0, table);
inline vpternlogq64 (ymm2_1, ymm9_1, ymm14_1, table);
inline vpternlogq64 (ymm2_2, ymm9_2, ymm14_2, table);
inline vpternlogq64 (ymm2_3, ymm9_3, ymm14_3, table);
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x5555555553ad *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x5555555553b3 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x5555555553b9 *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x5555555553bf *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x5555555553c5 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x5555555553cb *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x5555555553d1 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x5555555553d7 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x5555555553dd *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553e3 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpternlogq $0xc6,%ymm15,%ymm8,%ymm1             #! PC = 0x5555555553e9 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm1_0, ymm8_0, ymm15_0, table);
inline vpternlogq64 (ymm1_1, ymm8_1, ymm15_1, table);
inline vpternlogq64 (ymm1_2, ymm8_2, ymm15_2, table);
inline vpternlogq64 (ymm1_3, ymm8_3, ymm15_3, table);
(* vpternlogq $0xc6,%ymm14,%ymm11,%ymm4            #! PC = 0x5555555553f0 *)
mov table 0xc6@uint8;
inline vpternlogq64 (ymm4_0, ymm11_0, ymm14_0, table);
inline vpternlogq64 (ymm4_1, ymm11_1, ymm14_1, table);
inline vpternlogq64 (ymm4_2, ymm11_2, ymm14_2, table);
inline vpternlogq64 (ymm4_3, ymm11_3, ymm14_3, table);
(* vpternlogq $0x96,(%r10),%ymm7,%ymm0             #! EA = L0x555555555e20; Value = 0x8000000080008008; PC = 0x5555555553f7 *)
mov table 0x96@uint8;
inline vpternlogq64 (ymm0_0, ymm7_0, L0x555555555e20, table);
inline vpternlogq64 (ymm0_1, ymm7_1, L0x555555555e28, table);
inline vpternlogq64 (ymm0_2, ymm7_2, L0x555555555e30, table);
inline vpternlogq64 (ymm0_3, ymm7_3, L0x555555555e38, table);
(* lea    0x20(%r10),%r10                          #! PC = 0x5555555553fe *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555402 *)
(* dec %eax *)
nop;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555404 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555404 = 0x555555555404;
(* #! <- SP = 0x7fffffffd8f0 *)
#! 0x7fffffffd8f0 = 0x7fffffffd8f0;
(* #retq                                           #! PC = 0x55555555540a *)
#retq                                           #! 0x55555555540a = 0x55555555540a;

mov a00 ymm0_0; mov a00 ymm0_1; mov a00 ymm0_2; mov a00 ymm0_3;
mov a01 ymm1_0; mov a02 ymm1_1; mov a03 ymm1_2; mov a04 ymm1_3;
mov a20 ymm2_0; mov a40 ymm2_1; mov a10 ymm2_2; mov a30 ymm2_3;
mov a31 ymm3_0; mov a12 ymm3_1; mov a43 ymm3_2; mov a24 ymm3_3;
mov a21 ymm4_0; mov a42 ymm4_1; mov a13 ymm4_2; mov a34 ymm4_3;
mov a41 ymm5_0; mov a32 ymm5_1; mov a23 ymm5_2; mov a14 ymm5_3;
mov a11 ymm6_0; mov a22 ymm6_1; mov a33 ymm6_2; mov a44 ymm6_3;

{
  true
  &&
  true
}

