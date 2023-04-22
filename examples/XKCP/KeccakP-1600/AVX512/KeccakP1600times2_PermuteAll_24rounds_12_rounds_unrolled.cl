(*
on popper, equivalence against XKCP Keccak-p[1600,24]x2 SSSE3, 2 threads:
$ ./_build/default/cv_cec.exe -v -jobs 2 \
        -ov a00,a01,a02,a03,a04,a05,a06,a07,a08,a09,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24#b00,b01,b02,b03,b04,b05,b06,b07,b08,b09,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19,b20,b21,b22,b23,b24
        KeccakP1600times2_PermuteAll_24rounds_12_rounds_unrolled.cl KeccakP1600times2_PermuteAll_24rounds_2_rounds_unrolled.cl
Parsing CryptoLine file:		[OK]		1.272321 seconds
Checking well-formedness:		[OK]		1.707630 seconds
Parsing CryptoLine file:		[OK]		0.045098 seconds
Checking well-formedness:		[OK]		0.017611 seconds
Equivalence of output group #0:		[OK]		785.903484 seconds
Equivalence of output group #1:		[OK]		793.575348 seconds
Final result:				[OK]		805.656673 seconds

on popper, equivalence against XKCP C reference, outputs a's, 1 thread:
Parsing CryptoLine file:		[OK]		1.285871 seconds
Checking well-formedness:		[OK]		1.702861 seconds
Parsing CryptoLine file:		[OK]		0.017113 seconds
Checking well-formedness:		[OK]		0.006476 seconds
Output group #0:
  Converting programs to AIG:		[OK]		5.769414 seconds
  Checking equivalence:			[OK]		549.431187 seconds
Final result:				[OK]		555.200704 seconds

on popper equivalence against XKCP C reference, outputs b's (with inputs swapped), 1 thread:
Parsing CryptoLine file:		[OK]		1.283760 seconds
Checking well-formedness:		[OK]		1.708715 seconds
Parsing CryptoLine file:		[OK]		0.017107 seconds
Checking well-formedness:		[OK]		0.006413 seconds
Output group #0:
  Converting programs to AIG:		[OK]		5.781087 seconds
  Checking equivalence:			[OK]		576.277313 seconds
Final result:				[OK]		582.058529 seconds
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

proc main (uint64 A00, uint64 A01, uint64 A02, uint64 A03, uint64 A04,
           uint64 A05, uint64 A06, uint64 A07, uint64 A08, uint64 A09,
           uint64 A10, uint64 A11, uint64 A12, uint64 A13, uint64 A14,
           uint64 A15, uint64 A16, uint64 A17, uint64 A18, uint64 A19,
           uint64 A20, uint64 A21, uint64 A22, uint64 A23, uint64 A24,
           uint64 B00, uint64 B01, uint64 B02, uint64 B03, uint64 B04,
           uint64 B05, uint64 B06, uint64 B07, uint64 B08, uint64 B09,
           uint64 B10, uint64 B11, uint64 B12, uint64 B13, uint64 B14,
           uint64 B15, uint64 B16, uint64 B17, uint64 B18, uint64 B19,
           uint64 B20, uint64 B21, uint64 B22, uint64 B23, uint64 B24) =
{
  true
  &&
  true
}

(* ===== Initialization ===== *)

mov L0x7fffffffdb80 A00;
mov L0x7fffffffdb88 B00;
mov L0x7fffffffdb90 A01;
mov L0x7fffffffdb98 B01;
mov L0x7fffffffdba0 A02;
mov L0x7fffffffdba8 B02;
mov L0x7fffffffdbb0 A03;
mov L0x7fffffffdbb8 B03;
mov L0x7fffffffdbc0 A04;
mov L0x7fffffffdbc8 B04;
mov L0x7fffffffdbd0 A05;
mov L0x7fffffffdbd8 B05;
mov L0x7fffffffdbe0 A06;
mov L0x7fffffffdbe8 B06;
mov L0x7fffffffdbf0 A07;
mov L0x7fffffffdbf8 B07;
mov L0x7fffffffdc00 A08;
mov L0x7fffffffdc08 B08;
mov L0x7fffffffdc10 A09;
mov L0x7fffffffdc18 B09;
mov L0x7fffffffdc20 A10;
mov L0x7fffffffdc28 B10;
mov L0x7fffffffdc30 A11;
mov L0x7fffffffdc38 B11;
mov L0x7fffffffdc40 A12;
mov L0x7fffffffdc48 B12;
mov L0x7fffffffdc50 A13;
mov L0x7fffffffdc58 B13;
mov L0x7fffffffdc60 A14;
mov L0x7fffffffdc68 B14;
mov L0x7fffffffdc70 A15;
mov L0x7fffffffdc78 B15;
mov L0x7fffffffdc80 A16;
mov L0x7fffffffdc88 B16;
mov L0x7fffffffdc90 A17;
mov L0x7fffffffdc98 B17;
mov L0x7fffffffdca0 A18;
mov L0x7fffffffdca8 B18;
mov L0x7fffffffdcb0 A19;
mov L0x7fffffffdcb8 B19;
mov L0x7fffffffdcc0 A20;
mov L0x7fffffffdcc8 B20;
mov L0x7fffffffdcd0 A21;
mov L0x7fffffffdcd8 B21;
mov L0x7fffffffdce0 A22;
mov L0x7fffffffdce8 B22;
mov L0x7fffffffdcf0 A23;
mov L0x7fffffffdcf8 B23;
mov L0x7fffffffdd00 A24;
mov L0x7fffffffdd08 B24;

nondet rdi@uint64;
nondet rsp@uint64;

(* ===== Program ===== *)

(* #! -> SP = 0x7fffffffdb38 *)
#! 0x7fffffffdb38 = 0x7fffffffdb38;
(* mov    %rdi,%rax                                #! PC = 0x555555573296 *)
mov rax rdi;
(* movabs $0x8000000000008009,%r11                 #! PC = 0x555555573299 *)
mov r11 0x8000000000008009@uint64;
(* movabs $0x8000000080008081,%rcx                 #! PC = 0x5555555732a5 *)
mov rcx 0x8000000080008081@uint64;
(* mov    $0x8000000a,%r14d                        #! PC = 0x5555555732af *)
mov r14 0x8000000a@uint64;
(* mov    $0x80000001,%edx                         #! PC = 0x5555555732b7 *)
mov rdx 0x80000001@uint64;
(* mov    $0x2,%r13d                               #! PC = 0x5555555732bc *)
mov r13 0x2@uint64;
(* mov    $0x808b,%r10d                            #! PC = 0x5555555732c4 *)
mov r10 0x808b@uint64;
(* mov    $0x80008009,%r12d                        #! PC = 0x5555555732ca *)
mov r12 0x80008009@uint64;
(* movabs $0x8000000080008000,%r9                  #! PC = 0x5555555732d1 *)
mov r9 0x8000000080008000@uint64;
(* mov    $0x88,%ebp                               #! PC = 0x5555555732db *)
mov rbp 0x88@uint64;
(* movabs $0x800000000000808a,%r8                  #! PC = 0x5555555732e1 *)
mov r8 0x800000000000808a@uint64;
(* mov    $0x8a,%ebx                               #! PC = 0x5555555732eb *)
mov rbx 0x8a@uint64;
(* sub    $0x20,%rsp                               #! PC = 0x5555555732f0 *)
subb carry rsp rsp 0x20@uint64;
(* vmovdqa 0x40(%rdi),%xmm7                        #! EA = L0x7fffffffdbc0; Value = 0x422f323135585641; PC = 0x5555555732f4 *)
mov xmm7_0 L0x7fffffffdbc0;
mov xmm7_1 L0x7fffffffdbc8;
(* vmovdqa64 (%rdi),%xmm24                         #! EA = L0x7fffffffdb80; Value = 0x2f2f2f2f2f2f2f2f; PC = 0x5555555732f9 *)
mov xmm24_0 L0x7fffffffdb80;
mov xmm24_1 L0x7fffffffdb88;
(* vmovdqa %xmm7,-0x78(%rsp)                       #! EA = L0x7fffffffda70; PC = 0x5555555732ff *)
mov L0x7fffffffda70 xmm7_0;
mov L0x7fffffffda78 xmm7_1;
(* vmovdqa 0x70(%rdi),%xmm7                        #! EA = L0x7fffffffdbf0; Value = 0x00007fffffffdd20; PC = 0x555555573305 *)
mov xmm7_0 L0x7fffffffdbf0;
mov xmm7_1 L0x7fffffffdbf8;
(* vmovdqa 0x20(%rdi),%xmm5                        #! EA = L0x7fffffffdba0; Value = 0x0000000000000000; PC = 0x55555557330a *)
mov xmm5_0 L0x7fffffffdba0;
mov xmm5_1 L0x7fffffffdba8;
(* vmovdqa %xmm7,-0x68(%rsp)                       #! EA = L0x7fffffffda80; PC = 0x55555557330f *)
mov L0x7fffffffda80 xmm7_0;
mov L0x7fffffffda88 xmm7_1;
(* vmovdqa 0x80(%rdi),%xmm7                        #! EA = L0x7fffffffdc00; Value = 0x0000000000000000; PC = 0x555555573315 *)
mov xmm7_0 L0x7fffffffdc00;
mov xmm7_1 L0x7fffffffdc08;
(* vmovdqa64 0x10(%rdi),%xmm30                     #! EA = L0x7fffffffdb90; Value = 0x2f2f2f2f2f2f2f2f; PC = 0x55555557331d *)
mov xmm30_0 L0x7fffffffdb90;
mov xmm30_1 L0x7fffffffdb98;
(* vmovdqa %xmm7,-0x58(%rsp)                       #! EA = L0x7fffffffda90; PC = 0x555555573324 *)
mov L0x7fffffffda90 xmm7_0;
mov L0x7fffffffda98 xmm7_1;
(* vmovdqa 0xa0(%rdi),%xmm7                        #! EA = L0x7fffffffdc20; Value = 0x0000006000000018; PC = 0x55555557332a *)
mov xmm7_0 L0x7fffffffdc20;
mov xmm7_1 L0x7fffffffdc28;
(* vmovdqa64 0x50(%rdi),%xmm31                     #! EA = L0x7fffffffdbd0; Value = 0x3438303135353873; PC = 0x555555573332 *)
mov xmm31_0 L0x7fffffffdbd0;
mov xmm31_1 L0x7fffffffdbd8;
(* vmovdqa %xmm7,-0x28(%rsp)                       #! EA = L0x7fffffffdac0; PC = 0x555555573339 *)
mov L0x7fffffffdac0 xmm7_0;
mov L0x7fffffffdac8 xmm7_1;
(* vmovdqa 0xb0(%rdi),%xmm7                        #! EA = L0x7fffffffdc30; Value = 0x00007fffffffdc40; PC = 0x55555557333f *)
mov xmm7_0 L0x7fffffffdc30;
mov xmm7_1 L0x7fffffffdc38;
(* vmovdqa64 0x60(%rdi),%xmm16                     #! EA = L0x7fffffffdbe0; Value = 0x08f3fc747b72b994; PC = 0x555555573347 *)
mov xmm16_0 L0x7fffffffdbe0;
mov xmm16_1 L0x7fffffffdbe8;
(* vmovdqa %xmm7,-0x48(%rsp)                       #! EA = L0x7fffffffdaa0; PC = 0x55555557334e *)
mov L0x7fffffffdaa0 xmm7_0;
mov L0x7fffffffdaa8 xmm7_1;
(* vmovdqa 0xf0(%rdi),%xmm7                        #! EA = L0x7fffffffdc70; Value = 0x401267ce56041893; PC = 0x555555573354 *)
mov xmm7_0 L0x7fffffffdc70;
mov xmm7_1 L0x7fffffffdc78;
(* vmovdqa 0x30(%rdi),%xmm4                        #! EA = L0x7fffffffdbb0; Value = 0x0000000000000000; PC = 0x55555557335c *)
mov xmm4_0 L0x7fffffffdbb0;
mov xmm4_1 L0x7fffffffdbb8;
(* vmovdqa64 0x90(%rdi),%xmm27                     #! EA = L0x7fffffffdc10; Value = 0x00007fffffffdff8; PC = 0x555555573361 *)
mov xmm27_0 L0x7fffffffdc10;
mov xmm27_1 L0x7fffffffdc18;
(* vmovdqa64 0xc0(%rdi),%xmm17                     #! EA = L0x7fffffffdc40; Value = 0x0000555555571dac; PC = 0x555555573368 *)
mov xmm17_0 L0x7fffffffdc40;
mov xmm17_1 L0x7fffffffdc48;
(* vmovdqa 0xd0(%rdi),%xmm14                       #! EA = L0x7fffffffdc50; Value = 0x00005555555c0de0; PC = 0x55555557336f *)
mov xmm14_0 L0x7fffffffdc50;
mov xmm14_1 L0x7fffffffdc58;
(* vmovdqa64 0xe0(%rdi),%xmm23                     #! EA = L0x7fffffffdc60; Value = 0x0000000000000000; PC = 0x555555573377 *)
mov xmm23_0 L0x7fffffffdc60;
mov xmm23_1 L0x7fffffffdc68;
(* vmovdqa 0x100(%rdi),%xmm1                       #! EA = L0x7fffffffdc80; Value = 0x4010281159071b97; PC = 0x55555557337e *)
mov xmm1_0 L0x7fffffffdc80;
mov xmm1_1 L0x7fffffffdc88;
(* vmovdqa64 0x110(%rdi),%xmm28                    #! EA = L0x7fffffffdc90; Value = 0x400a2c163c450bfe; PC = 0x555555573386 *)
mov xmm28_0 L0x7fffffffdc90;
mov xmm28_1 L0x7fffffffdc98;
(* vmovdqa 0x120(%rdi),%xmm2                       #! EA = L0x7fffffffdca0; Value = 0x00005555555c0460; PC = 0x55555557338d *)
mov xmm2_0 L0x7fffffffdca0;
mov xmm2_1 L0x7fffffffdca8;
(* vmovdqa %xmm7,-0x38(%rsp)                       #! EA = L0x7fffffffdab0; PC = 0x555555573395 *)
mov L0x7fffffffdab0 xmm7_0;
mov L0x7fffffffdab8 xmm7_1;
(* vmovdqa 0x130(%rdi),%xmm7                       #! EA = L0x7fffffffdcb0; Value = 0x00007fffffffddb0; PC = 0x55555557339b *)
mov xmm7_0 L0x7fffffffdcb0;
mov xmm7_1 L0x7fffffffdcb8;
(* vmovdqa 0x140(%rdi),%xmm13                      #! EA = L0x7fffffffdcc0; Value = 0x00007fffffffdff8; PC = 0x5555555733a3 *)
mov xmm13_0 L0x7fffffffdcc0;
mov xmm13_1 L0x7fffffffdcc8;
(* vmovdqa64 0x150(%rdi),%xmm29                    #! EA = L0x7fffffffdcd0; Value = 0x0000003000000018; PC = 0x5555555733ab *)
mov xmm29_0 L0x7fffffffdcd0;
mov xmm29_1 L0x7fffffffdcd8;
(* vmovdqa64 0x160(%rdi),%xmm20                    #! EA = L0x7fffffffdce0; Value = 0x00007fffffffdcf0; PC = 0x5555555733b2 *)
mov xmm20_0 L0x7fffffffdce0;
mov xmm20_1 L0x7fffffffdce8;
(* vmovdqa 0x170(%rdi),%xmm15                      #! EA = L0x7fffffffdcf0; Value = 0x0000000000000d68; PC = 0x5555555733b9 *)
mov xmm15_0 L0x7fffffffdcf0;
mov xmm15_1 L0x7fffffffdcf8;
(* vmovdqa64 0x180(%rdi),%xmm18                    #! EA = L0x7fffffffdd00; Value = 0x00005555555c0460; PC = 0x5555555733c1 *)
mov xmm18_0 L0x7fffffffdd00;
mov xmm18_1 L0x7fffffffdd08;
(* vmovdqa64 %xmm24,%xmm22                         #! PC = 0x5555555733c8 *)
mov xmm22_0 xmm24_0;
mov xmm22_1 xmm24_1;
(* vmovdqa64 %xmm5,%xmm25                          #! PC = 0x5555555733ce *)
mov xmm25_0 xmm5_0;
mov xmm25_1 xmm5_1;
(* mov    $0x8082,%edi                             #! PC = 0x5555555733d4 *)
mov rdi 0x8082@uint64;
(* mov    $0x1,%esi                                #! PC = 0x5555555733d9 *)
mov rsi 0x1@uint64;
(* mov    $0x8000808b,%r15d                        #! PC = 0x5555555733de *)
mov r15 0x8000808b@uint64;
(* vmovdqa64 %xmm30,%xmm5                          #! PC = 0x5555555733e4 *)
mov xmm5_0 xmm30_0;
mov xmm5_1 xmm30_1;
(* vmovdqa64 %xmm31,%xmm19                         #! PC = 0x5555555733ea *)
mov xmm19_0 xmm31_0;
mov xmm19_1 xmm31_1;
(* vmovdqa64 %xmm16,%xmm6                          #! PC = 0x5555555733f0 *)
mov xmm6_0 xmm16_0;
mov xmm6_1 xmm16_1;
(* vmovdqa %xmm13,%xmm8                            #! PC = 0x5555555733f6 *)
mov xmm8_0 xmm13_0;
mov xmm8_1 xmm13_1;
(* vmovdqa64 %xmm29,%xmm24                         #! PC = 0x5555555733fb *)
mov xmm24_0 xmm29_0;
mov xmm24_1 xmm29_1;
(* vmovdqa -0x68(%rsp),%xmm13                      #! EA = L0x7fffffffda80; Value = 0x00007fffffffdd20; PC = 0x555555573401 *)
mov xmm13_0 L0x7fffffffda80;
mov xmm13_1 L0x7fffffffda88;
(* vmovdqa64 %xmm25,%xmm9                          #! PC = 0x555555573407 *)
mov xmm9_0 xmm25_0;
mov xmm9_1 xmm25_1;
(* vmovdqa -0x58(%rsp),%xmm11                      #! EA = L0x7fffffffda90; Value = 0x0000000000000000; PC = 0x55555557340d *)
mov xmm11_0 L0x7fffffffda90;
mov xmm11_1 L0x7fffffffda98;
(* vmovdqa64 -0x28(%rsp),%xmm31                    #! EA = L0x7fffffffdac0; Value = 0x0000006000000018; PC = 0x555555573413 *)
mov xmm31_0 L0x7fffffffdac0;
mov xmm31_1 L0x7fffffffdac8;
(* vpternlogq $0x96,%xmm17,%xmm13,%xmm9            #! PC = 0x55555557341e *)
mov table 0x96@uint8;
call vpternlogq64 (xmm9_0, xmm13_0, xmm17_0, table);
call vpternlogq64 (xmm9_1, xmm13_1, xmm17_1, table);
(* vmovdqa -0x78(%rsp),%xmm13                      #! EA = L0x7fffffffda70; Value = 0x422f323135585641; PC = 0x555555573425 *)
mov xmm13_0 L0x7fffffffda70;
mov xmm13_1 L0x7fffffffda78;
(* vmovdqa -0x38(%rsp),%xmm0                       #! EA = L0x7fffffffdab0; Value = 0x401267ce56041893; PC = 0x55555557342b *)
mov xmm0_0 L0x7fffffffdab0;
mov xmm0_1 L0x7fffffffdab8;
(* vmovdqa64 %xmm22,%xmm12                         #! PC = 0x555555573431 *)
mov xmm12_0 xmm22_0;
mov xmm12_1 xmm22_1;
(* vmovdqa %xmm4,%xmm3                             #! PC = 0x555555573437 *)
mov xmm3_0 xmm4_0;
mov xmm3_1 xmm4_1;
(* vpternlogq $0x96,%xmm20,%xmm28,%xmm9            #! PC = 0x55555557343b *)
mov table 0x96@uint8;
call vpternlogq64 (xmm9_0, xmm28_0, xmm20_0, table);
call vpternlogq64 (xmm9_1, xmm28_1, xmm20_1, table);
(* vpternlogq $0x96,%xmm31,%xmm19,%xmm12           #! PC = 0x555555573442 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm12_0, xmm19_0, xmm31_0, table);
call vpternlogq64 (xmm12_1, xmm19_1, xmm31_1, table);
(* vpternlogq $0x96,%xmm14,%xmm11,%xmm3            #! PC = 0x555555573449 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm3_0, xmm11_0, xmm14_0, table);
call vpternlogq64 (xmm3_1, xmm11_1, xmm14_1, table);
(* vpternlogq $0x96,%xmm23,%xmm27,%xmm13           #! PC = 0x555555573450 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm13_0, xmm27_0, xmm23_0, table);
call vpternlogq64 (xmm13_1, xmm27_1, xmm23_1, table);
(* vpternlogq $0x96,%xmm8,%xmm0,%xmm12             #! PC = 0x555555573457 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm12_0, xmm0_0, xmm8_0, table);
call vpternlogq64 (xmm12_1, xmm0_1, xmm8_1, table);
(* vpternlogq $0x96,%xmm15,%xmm2,%xmm3             #! PC = 0x55555557345e *)
mov table 0x96@uint8;
call vpternlogq64 (xmm3_0, xmm2_0, xmm15_0, table);
call vpternlogq64 (xmm3_1, xmm2_1, xmm15_1, table);
(* vpternlogq $0x96,%xmm18,%xmm7,%xmm13            #! PC = 0x555555573465 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm13_0, xmm7_0, xmm18_0, table);
call vpternlogq64 (xmm13_1, xmm7_1, xmm18_1, table);
(* vprolq $0x1,%xmm9,%xmm11                        #! PC = 0x55555557346c *)
rol xmm11_0 xmm9_0 0x1;
rol xmm11_1 xmm9_1 0x1;
(* vprolq $0x1,%xmm3,%xmm29                        #! PC = 0x555555573473 *)
rol xmm29_0 xmm3_0 0x1;
rol xmm29_1 xmm3_1 0x1;
(* vprolq $0x1,%xmm13,%xmm30                       #! PC = 0x55555557347a *)
rol xmm30_0 xmm13_0 0x1;
rol xmm30_1 xmm13_1 0x1;
(* vprolq $0x1,%xmm12,%xmm16                       #! PC = 0x555555573481 *)
rol xmm16_0 xmm12_0 0x1;
rol xmm16_1 xmm12_1 0x1;
(* vmovdqa %xmm5,%xmm10                            #! PC = 0x555555573488 *)
mov xmm10_0 xmm5_0;
mov xmm10_1 xmm5_1;
(* vpternlogq $0x96,-0x48(%rsp),%xmm6,%xmm10       #! EA = L0x7fffffffdaa0; Value = 0x00007fffffffdc40; PC = 0x55555557348c *)
mov table 0x96@uint8;
call vpternlogq64 (xmm10_0, xmm6_0, L0x7fffffffdaa0, table);
call vpternlogq64 (xmm10_1, xmm6_1, L0x7fffffffdaa8, table);
(* vpternlogq $0x96,%xmm24,%xmm1,%xmm10            #! PC = 0x555555573498 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm10_0, xmm1_0, xmm24_0, table);
call vpternlogq64 (xmm10_1, xmm1_1, xmm24_1, table);
(* vpxor  %xmm12,%xmm11,%xmm11                     #! PC = 0x55555557349f *)
xor xmm11_0@uint64 xmm11_0 xmm12_0;
xor xmm11_1@uint64 xmm11_1 xmm12_1;
(* vprolq $0x1,%xmm10,%xmm0                        #! PC = 0x5555555734a4 *)
rol xmm0_0 xmm10_0 0x1;
rol xmm0_1 xmm10_1 0x1;
(* vpxorq %xmm9,%xmm30,%xmm30                      #! PC = 0x5555555734ab *)
xor xmm30_0@uint64 xmm30_0 xmm9_0;
xor xmm30_1@uint64 xmm30_1 xmm9_1;
(* vpxorq %xmm3,%xmm16,%xmm16                      #! PC = 0x5555555734b1 *)
xor xmm16_0@uint64 xmm16_0 xmm3_0;
xor xmm16_1@uint64 xmm16_1 xmm3_1;
(* vpxorq %xmm10,%xmm29,%xmm29                     #! PC = 0x5555555734b7 *)
xor xmm29_0@uint64 xmm29_0 xmm10_0;
xor xmm29_1@uint64 xmm29_1 xmm10_1;
(* vpxor  %xmm11,%xmm6,%xmm6                       #! PC = 0x5555555734bd *)
xor xmm6_0@uint64 xmm6_0 xmm11_0;
xor xmm6_1@uint64 xmm6_1 xmm11_1;
(* vprorq $0x14,%xmm6,%xmm6                        #! PC = 0x5555555734c2 *)
ror xmm6_0 xmm6_0 0x14;
ror xmm6_1 xmm6_1 0x14;
(* vpxorq %xmm29,%xmm17,%xmm21                     #! PC = 0x5555555734c9 *)
xor xmm21_0@uint64 xmm17_0 xmm29_0;
xor xmm21_1@uint64 xmm17_1 xmm29_1;
(* vpxorq %xmm30,%xmm2,%xmm26                      #! PC = 0x5555555734cf *)
xor xmm26_0@uint64 xmm2_0 xmm30_0;
xor xmm26_1@uint64 xmm2_1 xmm30_1;
(* vpxorq %xmm16,%xmm18,%xmm9                      #! PC = 0x5555555734d5 *)
xor xmm9_0@uint64 xmm18_0 xmm16_0;
xor xmm9_1@uint64 xmm18_1 xmm16_1;
(* vprorq $0x15,%xmm21,%xmm21                      #! PC = 0x5555555734db *)
ror xmm21_0 xmm21_0 0x15;
ror xmm21_1 xmm21_1 0x15;
(* vprolq $0x15,%xmm26,%xmm26                      #! PC = 0x5555555734e2 *)
rol xmm26_0 xmm26_0 0x15;
rol xmm26_1 xmm26_1 0x15;
(* vprolq $0xe,%xmm9,%xmm9                         #! PC = 0x5555555734e9 *)
rol xmm9_0 xmm9_0 0xe;
rol xmm9_1 xmm9_1 0xe;
(* vpxor  %xmm13,%xmm0,%xmm0                       #! PC = 0x5555555734f0 *)
xor xmm0_0@uint64 xmm0_0 xmm13_0;
xor xmm0_1@uint64 xmm0_1 xmm13_1;
(* vpxorq %xmm0,%xmm22,%xmm22                      #! PC = 0x5555555734f5 *)
xor xmm22_0@uint64 xmm22_0 xmm0_0;
xor xmm22_1@uint64 xmm22_1 xmm0_1;
(* vmovdqa64 %xmm22,%xmm17                         #! PC = 0x5555555734fb *)
mov xmm17_0 xmm22_0;
mov xmm17_1 xmm22_1;
(* vmovdqa64 %xmm6,%xmm18                          #! PC = 0x555555573501 *)
mov xmm18_0 xmm6_0;
mov xmm18_1 xmm6_1;
(* vpternlogq $0xd2,%xmm26,%xmm21,%xmm18           #! PC = 0x555555573507 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm18_0, xmm21_0, xmm26_0, table);
call vpternlogq64 (xmm18_1, xmm21_1, xmm26_1, table);
(* vpternlogq $0xd2,%xmm21,%xmm6,%xmm17            #! PC = 0x55555557350e *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm17_0, xmm6_0, xmm21_0, table);
call vpternlogq64 (xmm17_1, xmm6_1, xmm21_1, table);
(* vpxorq %xmm30,%xmm4,%xmm4                       #! PC = 0x555555573515 *)
xor xmm4_0@uint64 xmm4_0 xmm30_0;
xor xmm4_1@uint64 xmm4_1 xmm30_1;
(* vpternlogq $0xd2,%xmm9,%xmm26,%xmm21            #! PC = 0x55555557351b *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm21_0, xmm26_0, xmm9_0, table);
call vpternlogq64 (xmm21_1, xmm26_1, xmm9_1, table);
(* vpxorq %xmm16,%xmm27,%xmm27                     #! PC = 0x555555573522 *)
xor xmm27_0@uint64 xmm27_0 xmm16_0;
xor xmm27_1@uint64 xmm27_1 xmm16_1;
(* vpternlogq $0xd2,%xmm22,%xmm9,%xmm26            #! PC = 0x555555573528 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm26_0, xmm9_0, xmm22_0, table);
call vpternlogq64 (xmm26_1, xmm9_1, xmm22_1, table);
(* vpternlogq $0xd2,%xmm6,%xmm22,%xmm9             #! PC = 0x55555557352f *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm9_0, xmm22_0, xmm6_0, table);
call vpternlogq64 (xmm9_1, xmm22_1, xmm6_1, table);
(* vmovdqa64 %xmm31,%xmm6                          #! PC = 0x555555573536 *)
mov xmm6_0 xmm31_0;
mov xmm6_1 xmm31_1;
(* vprolq $0x1c,%xmm4,%xmm4                        #! PC = 0x55555557353c *)
rol xmm4_0 xmm4_0 0x1c;
rol xmm4_1 xmm4_1 0x1c;
(* vprolq $0x14,%xmm27,%xmm27                      #! PC = 0x555555573543 *)
rol xmm27_0 xmm27_0 0x14;
rol xmm27_1 xmm27_1 0x14;
(* vpxor  %xmm6,%xmm0,%xmm3                        #! PC = 0x55555557354a *)
xor xmm3_0@uint64 xmm0_0 xmm6_0;
xor xmm3_1@uint64 xmm0_1 xmm6_1;
(* vpxorq %xmm11,%xmm1,%xmm22                      #! PC = 0x55555557354e *)
xor xmm22_0@uint64 xmm1_0 xmm11_0;
xor xmm22_1@uint64 xmm1_1 xmm11_1;
(* vpxorq %xmm29,%xmm20,%xmm13                     #! PC = 0x555555573554 *)
xor xmm13_0@uint64 xmm20_0 xmm29_0;
xor xmm13_1@uint64 xmm20_1 xmm29_1;
(* vprolq $0x3,%xmm3,%xmm3                         #! PC = 0x55555557355a *)
rol xmm3_0 xmm3_0 0x3;
rol xmm3_1 xmm3_1 0x3;
(* vprorq $0x13,%xmm22,%xmm22                      #! PC = 0x555555573561 *)
ror xmm22_0 xmm22_0 0x13;
ror xmm22_1 xmm22_1 0x13;
(* vprorq $0x3,%xmm13,%xmm13                       #! PC = 0x555555573568 *)
ror xmm13_0 xmm13_0 0x3;
ror xmm13_1 xmm13_1 0x3;
(* vmovdqa64 %xmm4,%xmm20                          #! PC = 0x55555557356f *)
mov xmm20_0 xmm4_0;
mov xmm20_1 xmm4_1;
(* vmovdqa64 %xmm27,%xmm31                         #! PC = 0x555555573575 *)
mov xmm31_0 xmm27_0;
mov xmm31_1 xmm27_1;
(* vpbroadcastq %rsi,%xmm2                         #! PC = 0x55555557357b *)
mov xmm2_0 rsi;
mov xmm2_1 rsi;
(* vpternlogq $0xd2,%xmm3,%xmm27,%xmm20            #! PC = 0x555555573581 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm20_0, xmm27_0, xmm3_0, table);
call vpternlogq64 (xmm20_1, xmm27_1, xmm3_1, table);
(* vpternlogq $0xd2,%xmm22,%xmm3,%xmm31            #! PC = 0x555555573588 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm31_0, xmm3_0, xmm22_0, table);
call vpternlogq64 (xmm31_1, xmm3_1, xmm22_1, table);
(* vpternlogq $0xd2,%xmm13,%xmm22,%xmm3            #! PC = 0x55555557358f *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm3_0, xmm22_0, xmm13_0, table);
call vpternlogq64 (xmm3_1, xmm22_1, xmm13_1, table);
(* vpternlogq $0xd2,%xmm4,%xmm13,%xmm22            #! PC = 0x555555573596 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm22_0, xmm13_0, xmm4_0, table);
call vpternlogq64 (xmm22_1, xmm13_1, xmm4_1, table);
(* vpternlogq $0xd2,%xmm27,%xmm4,%xmm13            #! PC = 0x55555557359d *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm13_0, xmm4_0, xmm27_0, table);
call vpternlogq64 (xmm13_1, xmm4_1, xmm27_1, table);
(* vpxorq -0x68(%rsp),%xmm29,%xmm4                 #! EA = L0x7fffffffda80; Value = 0x00007fffffffdd20; PC = 0x5555555735a4 *)
xor xmm4_0@uint64 xmm29_0 L0x7fffffffda80;
xor xmm4_1@uint64 xmm29_1 L0x7fffffffda88;
(* vpxor  %xmm11,%xmm5,%xmm5                       #! PC = 0x5555555735af *)
xor xmm5_0@uint64 xmm5_0 xmm11_0;
xor xmm5_1@uint64 xmm5_1 xmm11_1;
(* vprolq $0x6,%xmm4,%xmm4                         #! PC = 0x5555555735b4 *)
rol xmm4_0 xmm4_0 0x6;
rol xmm4_1 xmm4_1 0x6;
(* vpxorq %xmm2,%xmm17,%xmm17                      #! PC = 0x5555555735bb *)
xor xmm17_0@uint64 xmm17_0 xmm2_0;
xor xmm17_1@uint64 xmm17_1 xmm2_1;
(* vpxor  %xmm0,%xmm8,%xmm6                        #! PC = 0x5555555735c1 *)
xor xmm6_0@uint64 xmm8_0 xmm0_0;
xor xmm6_1@uint64 xmm8_1 xmm0_1;
(* vprolq $0x1,%xmm5,%xmm2                         #! PC = 0x5555555735c5 *)
rol xmm2_0 xmm5_0 0x1;
rol xmm2_1 xmm5_1 0x1;
(* vpxorq %xmm16,%xmm7,%xmm1                       #! PC = 0x5555555735cc *)
xor xmm1_0@uint64 xmm7_0 xmm16_0;
xor xmm1_1@uint64 xmm7_1 xmm16_1;
(* vpxorq %xmm30,%xmm14,%xmm14                     #! PC = 0x5555555735d2 *)
xor xmm14_0@uint64 xmm14_0 xmm30_0;
xor xmm14_1@uint64 xmm14_1 xmm30_1;
(* vprolq $0x12,%xmm6,%xmm6                        #! PC = 0x5555555735d8 *)
rol xmm6_0 xmm6_0 0x12;
rol xmm6_1 xmm6_1 0x12;
(* vprolq $0x19,%xmm14,%xmm14                      #! PC = 0x5555555735df *)
rol xmm14_0 xmm14_0 0x19;
rol xmm14_1 xmm14_1 0x19;
(* vprolq $0x8,%xmm1,%xmm1                         #! PC = 0x5555555735e6 *)
rol xmm1_0 xmm1_0 0x8;
rol xmm1_1 xmm1_1 0x8;
(* vmovdqa %xmm2,%xmm12                            #! PC = 0x5555555735ed *)
mov xmm12_0 xmm2_0;
mov xmm12_1 xmm2_1;
(* vmovdqa %xmm4,%xmm5                             #! PC = 0x5555555735f1 *)
mov xmm5_0 xmm4_0;
mov xmm5_1 xmm4_1;
(* vpxor  -0x48(%rsp),%xmm11,%xmm8                 #! EA = L0x7fffffffdaa0; Value = 0x00007fffffffdc40; PC = 0x5555555735f5 *)
xor xmm8_0@uint64 xmm11_0 L0x7fffffffdaa0;
xor xmm8_1@uint64 xmm11_1 L0x7fffffffdaa8;
(* vpxorq %xmm0,%xmm19,%xmm19                      #! PC = 0x5555555735fb *)
xor xmm19_0@uint64 xmm19_0 xmm0_0;
xor xmm19_1@uint64 xmm19_1 xmm0_1;
(* vpternlogq $0xd2,%xmm14,%xmm4,%xmm12            #! PC = 0x555555573601 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm12_0, xmm4_0, xmm14_0, table);
call vpternlogq64 (xmm12_1, xmm4_1, xmm14_1, table);
(* vpternlogq $0xd2,%xmm1,%xmm14,%xmm5             #! PC = 0x555555573608 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm5_0, xmm14_0, xmm1_0, table);
call vpternlogq64 (xmm5_1, xmm14_1, xmm1_1, table);
(* vpternlogq $0xd2,%xmm6,%xmm1,%xmm14             #! PC = 0x55555557360f *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm14_0, xmm1_0, xmm6_0, table);
call vpternlogq64 (xmm14_1, xmm1_1, xmm6_1, table);
(* vpternlogq $0xd2,%xmm2,%xmm6,%xmm1              #! PC = 0x555555573616 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm1_0, xmm6_0, xmm2_0, table);
call vpternlogq64 (xmm1_1, xmm6_1, xmm2_1, table);
(* vpternlogq $0xd2,%xmm4,%xmm2,%xmm6              #! PC = 0x55555557361d *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm6_0, xmm2_0, xmm4_0, table);
call vpternlogq64 (xmm6_1, xmm2_1, xmm4_1, table);
(* vpxorq %xmm30,%xmm15,%xmm2                      #! PC = 0x555555573624 *)
xor xmm2_0@uint64 xmm15_0 xmm30_0;
xor xmm2_1@uint64 xmm15_1 xmm30_1;
(* vpxorq -0x78(%rsp),%xmm16,%xmm15                #! EA = L0x7fffffffda70; Value = 0x422f323135585641; PC = 0x55555557362a *)
xor xmm15_0@uint64 xmm16_0 L0x7fffffffda70;
xor xmm15_1@uint64 xmm16_1 L0x7fffffffda78;
(* vpxorq -0x58(%rsp),%xmm30,%xmm30                #! EA = L0x7fffffffda90; Value = 0x0000000000000000; PC = 0x555555573635 *)
xor xmm30_0@uint64 xmm30_0 L0x7fffffffda90;
xor xmm30_1@uint64 xmm30_1 L0x7fffffffda98;
(* vprorq $0x1c,%xmm19,%xmm4                       #! PC = 0x555555573640 *)
ror xmm4_0 xmm19_0 0x1c;
ror xmm4_1 xmm19_1 0x1c;
(* vprolq $0x1b,%xmm15,%xmm15                      #! PC = 0x555555573647 *)
rol xmm15_0 xmm15_0 0x1b;
rol xmm15_1 xmm15_1 0x1b;
(* vpxorq %xmm29,%xmm28,%xmm10                     #! PC = 0x55555557364e *)
xor xmm10_0@uint64 xmm28_0 xmm29_0;
xor xmm10_1@uint64 xmm28_1 xmm29_1;
(* vpxor  -0x38(%rsp),%xmm0,%xmm0                  #! EA = L0x7fffffffdab0; Value = 0x401267ce56041893; PC = 0x555555573654 *)
xor xmm0_0@uint64 xmm0_0 L0x7fffffffdab0;
xor xmm0_1@uint64 xmm0_1 L0x7fffffffdab8;
(* vpxorq %xmm29,%xmm25,%xmm29                     #! PC = 0x55555557365a *)
xor xmm29_0@uint64 xmm25_0 xmm29_0;
xor xmm29_1@uint64 xmm25_1 xmm29_1;
(* vprorq $0x2,%xmm29,%xmm29                       #! PC = 0x555555573660 *)
ror xmm29_0 xmm29_0 0x2;
ror xmm29_1 xmm29_1 0x2;
(* vprorq $0x9,%xmm30,%xmm30                       #! PC = 0x555555573667 *)
ror xmm30_0 xmm30_0 0x9;
ror xmm30_1 xmm30_1 0x9;
(* vprolq $0xa,%xmm8,%xmm8                         #! PC = 0x55555557366e *)
rol xmm8_0 xmm8_0 0xa;
rol xmm8_1 xmm8_1 0xa;
(* vprolq $0xf,%xmm10,%xmm10                       #! PC = 0x555555573675 *)
rol xmm10_0 xmm10_0 0xf;
rol xmm10_1 xmm10_1 0xf;
(* vprorq $0x8,%xmm2,%xmm2                         #! PC = 0x55555557367c *)
ror xmm2_0 xmm2_0 0x8;
ror xmm2_1 xmm2_1 0x8;
(* vpxorq %xmm11,%xmm24,%xmm11                     #! PC = 0x555555573683 *)
xor xmm11_0@uint64 xmm24_0 xmm11_0;
xor xmm11_1@uint64 xmm24_1 xmm11_1;
(* vpxorq %xmm16,%xmm23,%xmm16                     #! PC = 0x555555573689 *)
xor xmm16_0@uint64 xmm23_0 xmm16_0;
xor xmm16_1@uint64 xmm23_1 xmm16_1;
(* vprorq $0x17,%xmm0,%xmm0                        #! PC = 0x55555557368f *)
ror xmm0_0 xmm0_0 0x17;
ror xmm0_1 xmm0_1 0x17;
(* vprolq $0x2,%xmm11,%xmm11                       #! PC = 0x555555573696 *)
rol xmm11_0 xmm11_0 0x2;
rol xmm11_1 xmm11_1 0x2;
(* vprorq $0x19,%xmm16,%xmm16                      #! PC = 0x55555557369d *)
ror xmm16_0 xmm16_0 0x19;
ror xmm16_1 xmm16_1 0x19;
(* vmovdqa %xmm15,%xmm7                            #! PC = 0x5555555736a4 *)
mov xmm7_0 xmm15_0;
mov xmm7_1 xmm15_1;
(* vmovdqa64 %xmm4,%xmm19                          #! PC = 0x5555555736a8 *)
mov xmm19_0 xmm4_0;
mov xmm19_1 xmm4_1;
(* vpternlogq $0xd2,%xmm8,%xmm4,%xmm7              #! PC = 0x5555555736ae *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm7_0, xmm4_0, xmm8_0, table);
call vpternlogq64 (xmm7_1, xmm4_1, xmm8_1, table);
(* vpternlogq $0xd2,%xmm10,%xmm8,%xmm19            #! PC = 0x5555555736b5 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm19_0, xmm8_0, xmm10_0, table);
call vpternlogq64 (xmm19_1, xmm8_1, xmm10_1, table);
(* vmovdqa64 %xmm29,%xmm27                         #! PC = 0x5555555736bc *)
mov xmm27_0 xmm29_0;
mov xmm27_1 xmm29_1;
(* vpternlogq $0xd2,%xmm2,%xmm10,%xmm8             #! PC = 0x5555555736c2 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm8_0, xmm10_0, xmm2_0, table);
call vpternlogq64 (xmm8_1, xmm10_1, xmm2_1, table);
(* vpternlogq $0xd2,%xmm15,%xmm2,%xmm10            #! PC = 0x5555555736c9 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm10_0, xmm2_0, xmm15_0, table);
call vpternlogq64 (xmm10_1, xmm2_1, xmm15_1, table);
(* vpternlogq $0xd2,%xmm4,%xmm15,%xmm2             #! PC = 0x5555555736d0 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm2_0, xmm15_0, xmm4_0, table);
call vpternlogq64 (xmm2_1, xmm15_1, xmm4_1, table);
(* vmovdqa64 %xmm30,%xmm15                         #! PC = 0x5555555736d7 *)
mov xmm15_0 xmm30_0;
mov xmm15_1 xmm30_1;
(* vpternlogq $0xd2,%xmm0,%xmm16,%xmm15            #! PC = 0x5555555736dd *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm15_0, xmm16_0, xmm0_0, table);
call vpternlogq64 (xmm15_1, xmm16_1, xmm0_1, table);
(* vpternlogq $0xd2,%xmm16,%xmm30,%xmm27           #! PC = 0x5555555736e4 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm27_0, xmm30_0, xmm16_0, table);
call vpternlogq64 (xmm27_1, xmm30_1, xmm16_1, table);
(* vpternlogq $0xd2,%xmm11,%xmm0,%xmm16            #! PC = 0x5555555736eb *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm16_0, xmm0_0, xmm11_0, table);
call vpternlogq64 (xmm16_1, xmm0_1, xmm11_1, table);
(* vmovdqa64 %xmm16,%xmm24                         #! PC = 0x5555555736f2 *)
mov xmm24_0 xmm16_0;
mov xmm24_1 xmm16_1;
(* vpternlogq $0x96,%xmm21,%xmm14,%xmm24           #! PC = 0x5555555736f8 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm24_0, xmm14_0, xmm21_0, table);
call vpternlogq64 (xmm24_1, xmm14_1, xmm21_1, table);
(* vpternlogq $0x96,%xmm3,%xmm8,%xmm24             #! PC = 0x5555555736ff *)
mov table 0x96@uint8;
call vpternlogq64 (xmm24_0, xmm8_0, xmm3_0, table);
call vpternlogq64 (xmm24_1, xmm8_1, xmm3_1, table);
(* vprolq $0x1,%xmm24,%xmm23                       #! PC = 0x555555573706 *)
rol xmm23_0 xmm24_0 0x1;
rol xmm23_1 xmm24_1 0x1;
(* vpternlogq $0xd2,%xmm29,%xmm11,%xmm0            #! PC = 0x55555557370d *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm0_0, xmm11_0, xmm29_0, table);
call vpternlogq64 (xmm0_1, xmm11_1, xmm29_1, table);
(* vmovdqa64 %xmm22,%xmm4                          #! PC = 0x555555573714 *)
mov xmm4_0 xmm22_0;
mov xmm4_1 xmm22_1;
(* vpternlogq $0x96,%xmm1,%xmm0,%xmm4              #! PC = 0x55555557371a *)
mov table 0x96@uint8;
call vpternlogq64 (xmm4_0, xmm0_0, xmm1_0, table);
call vpternlogq64 (xmm4_1, xmm0_1, xmm1_1, table);
(* vpternlogq $0x96,%xmm10,%xmm26,%xmm4            #! PC = 0x555555573721 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm4_0, xmm26_0, xmm10_0, table);
call vpternlogq64 (xmm4_1, xmm26_1, xmm10_1, table);
(* vpternlogq $0xd2,%xmm30,%xmm29,%xmm11           #! PC = 0x555555573728 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm11_0, xmm29_0, xmm30_0, table);
call vpternlogq64 (xmm11_1, xmm29_1, xmm30_1, table);
(* vmovdqa64 %xmm23,-0x78(%rsp)                    #! EA = L0x7fffffffda70; PC = 0x55555557372f *)
mov L0x7fffffffda70 xmm23_0;
mov L0x7fffffffda78 xmm23_1;
(* vprolq $0x1,%xmm4,%xmm23                        #! PC = 0x55555557373a *)
rol xmm23_0 xmm4_0 0x1;
rol xmm23_1 xmm4_1 0x1;
(* vmovdqa64 %xmm2,%xmm28                          #! PC = 0x555555573741 *)
mov xmm28_0 xmm2_0;
mov xmm28_1 xmm2_1;
(* vpternlogq $0x96,%xmm11,%xmm13,%xmm28           #! PC = 0x555555573747 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm28_0, xmm13_0, xmm11_0, table);
call vpternlogq64 (xmm28_1, xmm13_1, xmm11_1, table);
(* vpternlogq $0x96,%xmm9,%xmm6,%xmm28             #! PC = 0x55555557374e *)
mov table 0x96@uint8;
call vpternlogq64 (xmm28_0, xmm6_0, xmm9_0, table);
call vpternlogq64 (xmm28_1, xmm6_1, xmm9_1, table);
(* vmovdqa64 %xmm17,%xmm30                         #! PC = 0x555555573755 *)
mov xmm30_0 xmm17_0;
mov xmm30_1 xmm17_1;
(* vpternlogq $0x96,%xmm20,%xmm7,%xmm30            #! PC = 0x55555557375b *)
mov table 0x96@uint8;
call vpternlogq64 (xmm30_0, xmm7_0, xmm20_0, table);
call vpternlogq64 (xmm30_1, xmm7_1, xmm20_1, table);
(* vmovdqa64 %xmm23,-0x68(%rsp)                    #! EA = L0x7fffffffda80; PC = 0x555555573762 *)
mov L0x7fffffffda80 xmm23_0;
mov L0x7fffffffda88 xmm23_1;
(* vprolq $0x1,%xmm28,%xmm23                       #! PC = 0x55555557376d *)
rol xmm23_0 xmm28_0 0x1;
rol xmm23_1 xmm28_1 0x1;
(* vpternlogq $0x96,%xmm12,%xmm27,%xmm30           #! PC = 0x555555573774 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm30_0, xmm27_0, xmm12_0, table);
call vpternlogq64 (xmm30_1, xmm27_1, xmm12_1, table);
(* vmovdqa64 %xmm5,%xmm25                          #! PC = 0x55555557377b *)
mov xmm25_0 xmm5_0;
mov xmm25_1 xmm5_1;
(* vpternlogq $0x96,%xmm19,%xmm18,%xmm25           #! PC = 0x555555573781 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm25_0, xmm18_0, xmm19_0, table);
call vpternlogq64 (xmm25_1, xmm18_1, xmm19_1, table);
(* vpternlogq $0x96,%xmm15,%xmm31,%xmm25           #! PC = 0x555555573788 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm25_0, xmm31_0, xmm15_0, table);
call vpternlogq64 (xmm25_1, xmm31_1, xmm15_1, table);
(* vprolq $0x1,%xmm25,%xmm29                       #! PC = 0x55555557378f *)
rol xmm29_0 xmm25_0 0x1;
rol xmm29_1 xmm25_1 0x1;
(* vmovdqa64 %xmm23,-0x58(%rsp)                    #! EA = L0x7fffffffda90; PC = 0x555555573796 *)
mov L0x7fffffffda90 xmm23_0;
mov L0x7fffffffda98 xmm23_1;
(* vprolq $0x1,%xmm30,%xmm23                       #! PC = 0x5555555737a1 *)
rol xmm23_0 xmm30_0 0x1;
rol xmm23_1 xmm30_1 0x1;
(* vpxorq -0x78(%rsp),%xmm30,%xmm30                #! EA = L0x7fffffffda70; Value = 0xcaacff3b18b952e1; PC = 0x5555555737a8 *)
xor xmm30_0@uint64 xmm30_0 L0x7fffffffda70;
xor xmm30_1@uint64 xmm30_1 L0x7fffffffda78;
(* vpxorq -0x68(%rsp),%xmm25,%xmm25                #! EA = L0x7fffffffda80; Value = 0x4a62cd3a95b2469e; PC = 0x5555555737b3 *)
xor xmm25_0@uint64 xmm25_0 L0x7fffffffda80;
xor xmm25_1@uint64 xmm25_1 L0x7fffffffda88;
(* vpxorq -0x58(%rsp),%xmm24,%xmm24                #! EA = L0x7fffffffda90; Value = 0xdd134d26c78c02d7; PC = 0x5555555737be *)
xor xmm24_0@uint64 xmm24_0 L0x7fffffffda90;
xor xmm24_1@uint64 xmm24_1 L0x7fffffffda98;
(* vpxorq %xmm30,%xmm31,%xmm31                     #! PC = 0x5555555737c9 *)
xor xmm31_0@uint64 xmm31_0 xmm30_0;
xor xmm31_1@uint64 xmm31_1 xmm30_1;
(* vprorq $0x14,%xmm31,%xmm31                      #! PC = 0x5555555737cf *)
ror xmm31_0 xmm31_0 0x14;
ror xmm31_1 xmm31_1 0x14;
(* vpxorq %xmm4,%xmm23,%xmm23                      #! PC = 0x5555555737d6 *)
xor xmm23_0@uint64 xmm23_0 xmm4_0;
xor xmm23_1@uint64 xmm23_1 xmm4_1;
(* vpxorq %xmm25,%xmm14,%xmm14                     #! PC = 0x5555555737dc *)
xor xmm14_0@uint64 xmm14_0 xmm25_0;
xor xmm14_1@uint64 xmm14_1 xmm25_1;
(* vpxorq %xmm24,%xmm10,%xmm10                     #! PC = 0x5555555737e2 *)
xor xmm10_0@uint64 xmm10_0 xmm24_0;
xor xmm10_1@uint64 xmm10_1 xmm24_1;
(* vpxorq %xmm23,%xmm11,%xmm11                     #! PC = 0x5555555737e8 *)
xor xmm11_0@uint64 xmm11_0 xmm23_0;
xor xmm11_1@uint64 xmm11_1 xmm23_1;
(* vprorq $0x15,%xmm14,%xmm14                      #! PC = 0x5555555737ee *)
ror xmm14_0 xmm14_0 0x15;
ror xmm14_1 xmm14_1 0x15;
(* vprolq $0x15,%xmm10,%xmm10                      #! PC = 0x5555555737f5 *)
rol xmm10_0 xmm10_0 0x15;
rol xmm10_1 xmm10_1 0x15;
(* vprolq $0xe,%xmm11,%xmm11                       #! PC = 0x5555555737fc *)
rol xmm11_0 xmm11_0 0xe;
rol xmm11_1 xmm11_1 0xe;
(* vpxorq %xmm28,%xmm29,%xmm29                     #! PC = 0x555555573803 *)
xor xmm29_0@uint64 xmm29_0 xmm28_0;
xor xmm29_1@uint64 xmm29_1 xmm28_1;
(* vpxorq %xmm17,%xmm29,%xmm4                      #! PC = 0x555555573809 *)
xor xmm4_0@uint64 xmm29_0 xmm17_0;
xor xmm4_1@uint64 xmm29_1 xmm17_1;
(* vmovdqa64 %xmm4,%xmm28                          #! PC = 0x55555557380f *)
mov xmm28_0 xmm4_0;
mov xmm28_1 xmm4_1;
(* vmovdqa64 %xmm31,%xmm17                         #! PC = 0x555555573815 *)
mov xmm17_0 xmm31_0;
mov xmm17_1 xmm31_1;
(* vpternlogq $0xd2,%xmm10,%xmm14,%xmm17           #! PC = 0x55555557381b *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm17_0, xmm14_0, xmm10_0, table);
call vpternlogq64 (xmm17_1, xmm14_1, xmm10_1, table);
(* vpternlogq $0xd2,%xmm14,%xmm31,%xmm28           #! PC = 0x555555573822 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm28_0, xmm31_0, xmm14_0, table);
call vpternlogq64 (xmm28_1, xmm31_1, xmm14_1, table);
(* vpternlogq $0xd2,%xmm11,%xmm10,%xmm14           #! PC = 0x555555573829 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm14_0, xmm10_0, xmm11_0, table);
call vpternlogq64 (xmm14_1, xmm10_1, xmm11_1, table);
(* vpternlogq $0xd2,%xmm4,%xmm11,%xmm10            #! PC = 0x555555573830 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm10_0, xmm11_0, xmm4_0, table);
call vpternlogq64 (xmm10_1, xmm11_1, xmm4_1, table);
(* vpternlogq $0xd2,%xmm31,%xmm4,%xmm11            #! PC = 0x555555573837 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm11_0, xmm4_0, xmm31_0, table);
call vpternlogq64 (xmm11_1, xmm4_1, xmm31_1, table);
(* vpbroadcastq %rdi,%xmm4                         #! PC = 0x55555557383e *)
mov xmm4_0 rdi;
mov xmm4_1 rdi;
(* vpxorq %xmm4,%xmm28,%xmm28                      #! PC = 0x555555573844 *)
xor xmm28_0@uint64 xmm28_0 xmm4_0;
xor xmm28_1@uint64 xmm28_1 xmm4_1;
(* vpxorq %xmm23,%xmm13,%xmm13                     #! PC = 0x55555557384a *)
xor xmm13_0@uint64 xmm13_0 xmm23_0;
xor xmm13_1@uint64 xmm13_1 xmm23_1;
(* vpxorq %xmm24,%xmm26,%xmm4                      #! PC = 0x555555573850 *)
xor xmm4_0@uint64 xmm26_0 xmm24_0;
xor xmm4_1@uint64 xmm26_1 xmm24_1;
(* vprolq $0x1c,%xmm4,%xmm4                        #! PC = 0x555555573856 *)
rol xmm4_0 xmm4_0 0x1c;
rol xmm4_1 xmm4_1 0x1c;
(* vprolq $0x14,%xmm13,%xmm13                      #! PC = 0x55555557385d *)
rol xmm13_0 xmm13_0 0x14;
rol xmm13_1 xmm13_1 0x14;
(* vpxorq %xmm29,%xmm12,%xmm12                     #! PC = 0x555555573864 *)
xor xmm12_0@uint64 xmm12_0 xmm29_0;
xor xmm12_1@uint64 xmm12_1 xmm29_1;
(* vpxorq %xmm30,%xmm19,%xmm19                     #! PC = 0x55555557386a *)
xor xmm19_0@uint64 xmm19_0 xmm30_0;
xor xmm19_1@uint64 xmm19_1 xmm30_1;
(* vpxorq %xmm25,%xmm16,%xmm16                     #! PC = 0x555555573870 *)
xor xmm16_0@uint64 xmm16_0 xmm25_0;
xor xmm16_1@uint64 xmm16_1 xmm25_1;
(* vpxorq %xmm30,%xmm18,%xmm18                     #! PC = 0x555555573876 *)
xor xmm18_0@uint64 xmm18_0 xmm30_0;
xor xmm18_1@uint64 xmm18_1 xmm30_1;
(* vpxorq %xmm25,%xmm3,%xmm3                       #! PC = 0x55555557387c *)
xor xmm3_0@uint64 xmm3_0 xmm25_0;
xor xmm3_1@uint64 xmm3_1 xmm25_1;
(* vprolq $0x1,%xmm18,%xmm18                       #! PC = 0x555555573882 *)
rol xmm18_0 xmm18_0 0x1;
rol xmm18_1 xmm18_1 0x1;
(* vprolq $0x6,%xmm3,%xmm3                         #! PC = 0x555555573889 *)
rol xmm3_0 xmm3_0 0x6;
rol xmm3_1 xmm3_1 0x6;
(* vprolq $0x3,%xmm12,%xmm12                       #! PC = 0x555555573890 *)
rol xmm12_0 xmm12_0 0x3;
rol xmm12_1 xmm12_1 0x3;
(* vprorq $0x13,%xmm19,%xmm19                      #! PC = 0x555555573897 *)
ror xmm19_0 xmm19_0 0x13;
ror xmm19_1 xmm19_1 0x13;
(* vprorq $0x3,%xmm16,%xmm16                       #! PC = 0x55555557389e *)
ror xmm16_0 xmm16_0 0x3;
ror xmm16_1 xmm16_1 0x3;
(* vpxorq %xmm29,%xmm27,%xmm27                     #! PC = 0x5555555738a5 *)
xor xmm27_0@uint64 xmm27_0 xmm29_0;
xor xmm27_1@uint64 xmm27_1 xmm29_1;
(* vpxorq %xmm24,%xmm1,%xmm1                       #! PC = 0x5555555738ab *)
xor xmm1_0@uint64 xmm1_0 xmm24_0;
xor xmm1_1@uint64 xmm1_1 xmm24_1;
(* vpxorq %xmm23,%xmm2,%xmm2                       #! PC = 0x5555555738b1 *)
xor xmm2_0@uint64 xmm2_0 xmm23_0;
xor xmm2_1@uint64 xmm2_1 xmm23_1;
(* vpxorq %xmm29,%xmm20,%xmm20                     #! PC = 0x5555555738b7 *)
xor xmm20_0@uint64 xmm20_0 xmm29_0;
xor xmm20_1@uint64 xmm20_1 xmm29_1;
(* vpxorq %xmm23,%xmm9,%xmm9                       #! PC = 0x5555555738bd *)
xor xmm9_0@uint64 xmm9_0 xmm23_0;
xor xmm9_1@uint64 xmm9_1 xmm23_1;
(* vprorq $0x1c,%xmm20,%xmm20                      #! PC = 0x5555555738c3 *)
ror xmm20_0 xmm20_0 0x1c;
ror xmm20_1 xmm20_1 0x1c;
(* vprolq $0x1b,%xmm9,%xmm9                        #! PC = 0x5555555738ca *)
rol xmm9_0 xmm9_0 0x1b;
rol xmm9_1 xmm9_1 0x1b;
(* vprolq $0x12,%xmm27,%xmm27                      #! PC = 0x5555555738d1 *)
rol xmm27_0 xmm27_0 0x12;
rol xmm27_1 xmm27_1 0x12;
(* vprolq $0x19,%xmm1,%xmm1                        #! PC = 0x5555555738d8 *)
rol xmm1_0 xmm1_0 0x19;
rol xmm1_1 xmm1_1 0x19;
(* vprolq $0x8,%xmm2,%xmm2                         #! PC = 0x5555555738df *)
rol xmm2_0 xmm2_0 0x8;
rol xmm2_1 xmm2_1 0x8;
(* vpxorq %xmm30,%xmm5,%xmm5                       #! PC = 0x5555555738e6 *)
xor xmm5_0@uint64 xmm5_0 xmm30_0;
xor xmm5_1@uint64 xmm5_1 xmm30_1;
(* vpxorq %xmm25,%xmm8,%xmm8                       #! PC = 0x5555555738ec *)
xor xmm8_0@uint64 xmm8_0 xmm25_0;
xor xmm8_1@uint64 xmm8_1 xmm25_1;
(* vpxorq %xmm24,%xmm0,%xmm0                       #! PC = 0x5555555738f2 *)
xor xmm0_0@uint64 xmm0_0 xmm24_0;
xor xmm0_1@uint64 xmm0_1 xmm24_1;
(* vprolq $0xa,%xmm5,%xmm5                         #! PC = 0x5555555738f8 *)
rol xmm5_0 xmm5_0 0xa;
rol xmm5_1 xmm5_1 0xa;
(* vprolq $0xf,%xmm8,%xmm8                         #! PC = 0x5555555738ff *)
rol xmm8_0 xmm8_0 0xf;
rol xmm8_1 xmm8_1 0xf;
(* vprorq $0x8,%xmm0,%xmm0                         #! PC = 0x555555573906 *)
ror xmm0_0 xmm0_0 0x8;
ror xmm0_1 xmm0_1 0x8;
(* vmovdqa64 %xmm4,%xmm26                          #! PC = 0x55555557390d *)
mov xmm26_0 xmm4_0;
mov xmm26_1 xmm4_1;
(* vmovdqa64 %xmm13,%xmm31                         #! PC = 0x555555573913 *)
mov xmm31_0 xmm13_0;
mov xmm31_1 xmm13_1;
(* vpternlogq $0xd2,%xmm12,%xmm13,%xmm26           #! PC = 0x555555573919 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm26_0, xmm13_0, xmm12_0, table);
call vpternlogq64 (xmm26_1, xmm13_1, xmm12_1, table);
(* vpternlogq $0xd2,%xmm19,%xmm12,%xmm31           #! PC = 0x555555573920 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm31_0, xmm12_0, xmm19_0, table);
call vpternlogq64 (xmm31_1, xmm12_1, xmm19_1, table);
(* vpternlogq $0xd2,%xmm16,%xmm19,%xmm12           #! PC = 0x555555573927 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm12_0, xmm19_0, xmm16_0, table);
call vpternlogq64 (xmm12_1, xmm19_1, xmm16_1, table);
(* vpternlogq $0xd2,%xmm4,%xmm16,%xmm19            #! PC = 0x55555557392e *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm19_0, xmm16_0, xmm4_0, table);
call vpternlogq64 (xmm19_1, xmm16_1, xmm4_1, table);
(* vpternlogq $0xd2,%xmm13,%xmm4,%xmm16            #! PC = 0x555555573935 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm16_0, xmm4_0, xmm13_0, table);
call vpternlogq64 (xmm16_1, xmm4_1, xmm13_1, table);
(* vmovdqa64 %xmm18,%xmm13                         #! PC = 0x55555557393c *)
mov xmm13_0 xmm18_0;
mov xmm13_1 xmm18_1;
(* vmovdqa %xmm3,%xmm4                             #! PC = 0x555555573942 *)
mov xmm4_0 xmm3_0;
mov xmm4_1 xmm3_1;
(* vpternlogq $0xd2,%xmm1,%xmm3,%xmm13             #! PC = 0x555555573946 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm13_0, xmm3_0, xmm1_0, table);
call vpternlogq64 (xmm13_1, xmm3_1, xmm1_1, table);
(* vpternlogq $0xd2,%xmm2,%xmm1,%xmm4              #! PC = 0x55555557394d *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm4_0, xmm1_0, xmm2_0, table);
call vpternlogq64 (xmm4_1, xmm1_1, xmm2_1, table);
(* vpxorq %xmm25,%xmm21,%xmm21                     #! PC = 0x555555573954 *)
xor xmm21_0@uint64 xmm21_0 xmm25_0;
xor xmm21_1@uint64 xmm21_1 xmm25_1;
(* vpternlogq $0xd2,%xmm27,%xmm2,%xmm1             #! PC = 0x55555557395a *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm1_0, xmm2_0, xmm27_0, table);
call vpternlogq64 (xmm1_1, xmm2_1, xmm27_1, table);
(* vpxorq %xmm24,%xmm22,%xmm22                     #! PC = 0x555555573961 *)
xor xmm22_0@uint64 xmm22_0 xmm24_0;
xor xmm22_1@uint64 xmm22_1 xmm24_1;
(* vpternlogq $0xd2,%xmm18,%xmm27,%xmm2            #! PC = 0x555555573967 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm2_0, xmm27_0, xmm18_0, table);
call vpternlogq64 (xmm2_1, xmm27_1, xmm18_1, table);
(* vpternlogq $0xd2,%xmm3,%xmm18,%xmm27            #! PC = 0x55555557396e *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm27_0, xmm18_0, xmm3_0, table);
call vpternlogq64 (xmm27_1, xmm18_1, xmm3_1, table);
(* vmovdqa %xmm9,%xmm3                             #! PC = 0x555555573975 *)
mov xmm3_0 xmm9_0;
mov xmm3_1 xmm9_1;
(* vmovdqa64 %xmm20,%xmm18                         #! PC = 0x555555573979 *)
mov xmm18_0 xmm20_0;
mov xmm18_1 xmm20_1;
(* vprorq $0x2,%xmm21,%xmm21                       #! PC = 0x55555557397f *)
ror xmm21_0 xmm21_0 0x2;
ror xmm21_1 xmm21_1 0x2;
(* vprorq $0x9,%xmm22,%xmm22                       #! PC = 0x555555573986 *)
ror xmm22_0 xmm22_0 0x9;
ror xmm22_1 xmm22_1 0x9;
(* vpternlogq $0xd2,%xmm5,%xmm20,%xmm3             #! PC = 0x55555557398d *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm3_0, xmm20_0, xmm5_0, table);
call vpternlogq64 (xmm3_1, xmm20_1, xmm5_1, table);
(* vpternlogq $0xd2,%xmm8,%xmm5,%xmm18             #! PC = 0x555555573994 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm18_0, xmm5_0, xmm8_0, table);
call vpternlogq64 (xmm18_1, xmm5_1, xmm8_1, table);
(* vpxorq %xmm29,%xmm7,%xmm7                       #! PC = 0x55555557399b *)
xor xmm7_0@uint64 xmm7_0 xmm29_0;
xor xmm7_1@uint64 xmm7_1 xmm29_1;
(* vpternlogq $0xd2,%xmm0,%xmm8,%xmm5              #! PC = 0x5555555739a1 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm5_0, xmm8_0, xmm0_0, table);
call vpternlogq64 (xmm5_1, xmm8_1, xmm0_1, table);
(* vpxorq %xmm23,%xmm6,%xmm6                       #! PC = 0x5555555739a8 *)
xor xmm6_0@uint64 xmm6_0 xmm23_0;
xor xmm6_1@uint64 xmm6_1 xmm23_1;
(* vpternlogq $0xd2,%xmm9,%xmm0,%xmm8              #! PC = 0x5555555739ae *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm8_0, xmm0_0, xmm9_0, table);
call vpternlogq64 (xmm8_1, xmm0_1, xmm9_1, table);
(* vpternlogq $0xd2,%xmm20,%xmm9,%xmm0             #! PC = 0x5555555739b5 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm0_0, xmm9_0, xmm20_0, table);
call vpternlogq64 (xmm0_1, xmm9_1, xmm20_1, table);
(* vpxorq %xmm30,%xmm15,%xmm9                      #! PC = 0x5555555739bc *)
xor xmm9_0@uint64 xmm15_0 xmm30_0;
xor xmm9_1@uint64 xmm15_1 xmm30_1;
(* vprorq $0x17,%xmm7,%xmm7                        #! PC = 0x5555555739c2 *)
ror xmm7_0 xmm7_0 0x17;
ror xmm7_1 xmm7_1 0x17;
(* vprolq $0x2,%xmm9,%xmm9                         #! PC = 0x5555555739c9 *)
rol xmm9_0 xmm9_0 0x2;
rol xmm9_1 xmm9_1 0x2;
(* vprorq $0x19,%xmm6,%xmm6                        #! PC = 0x5555555739d0 *)
ror xmm6_0 xmm6_0 0x19;
ror xmm6_1 xmm6_1 0x19;
(* vmovdqa64 %xmm21,%xmm23                         #! PC = 0x5555555739d7 *)
mov xmm23_0 xmm21_0;
mov xmm23_1 xmm21_1;
(* vmovdqa64 %xmm22,%xmm24                         #! PC = 0x5555555739dd *)
mov xmm24_0 xmm22_0;
mov xmm24_1 xmm22_1;
(* vmovdqa %xmm12,%xmm15                           #! PC = 0x5555555739e3 *)
mov xmm15_0 xmm12_0;
mov xmm15_1 xmm12_1;
(* vmovdqa64 %xmm27,%xmm25                         #! PC = 0x5555555739e8 *)
mov xmm25_0 xmm27_0;
mov xmm25_1 xmm27_1;
(* vpternlogq $0x96,%xmm11,%xmm16,%xmm25           #! PC = 0x5555555739ee *)
mov table 0x96@uint8;
call vpternlogq64 (xmm25_0, xmm16_0, xmm11_0, table);
call vpternlogq64 (xmm25_1, xmm16_1, xmm11_1, table);
(* vpternlogq $0xd2,%xmm7,%xmm6,%xmm24             #! PC = 0x5555555739f5 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm24_0, xmm6_0, xmm7_0, table);
call vpternlogq64 (xmm24_1, xmm6_1, xmm7_1, table);
(* vpternlogq $0xd2,%xmm6,%xmm22,%xmm23            #! PC = 0x5555555739fc *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm23_0, xmm22_0, xmm6_0, table);
call vpternlogq64 (xmm23_1, xmm22_1, xmm6_1, table);
(* vpternlogq $0xd2,%xmm9,%xmm7,%xmm6              #! PC = 0x555555573a03 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm6_0, xmm7_0, xmm9_0, table);
call vpternlogq64 (xmm6_1, xmm7_1, xmm9_1, table);
(* vpternlogq $0x96,%xmm6,%xmm14,%xmm15            #! PC = 0x555555573a0a *)
mov table 0x96@uint8;
call vpternlogq64 (xmm15_0, xmm14_0, xmm6_0, table);
call vpternlogq64 (xmm15_1, xmm14_1, xmm6_1, table);
(* vpternlogq $0x96,%xmm1,%xmm5,%xmm15             #! PC = 0x555555573a11 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm15_0, xmm5_0, xmm1_0, table);
call vpternlogq64 (xmm15_1, xmm5_1, xmm1_1, table);
(* vprolq $0x1,%xmm15,%xmm29                       #! PC = 0x555555573a18 *)
rol xmm29_0 xmm15_0 0x1;
rol xmm29_1 xmm15_1 0x1;
(* vpternlogq $0xd2,%xmm21,%xmm9,%xmm7             #! PC = 0x555555573a1f *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm7_0, xmm9_0, xmm21_0, table);
call vpternlogq64 (xmm7_1, xmm9_1, xmm21_1, table);
(* vpternlogq $0xd2,%xmm22,%xmm21,%xmm9            #! PC = 0x555555573a26 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm9_0, xmm21_0, xmm22_0, table);
call vpternlogq64 (xmm9_1, xmm21_1, xmm22_1, table);
(* vmovdqa64 %xmm7,%xmm21                          #! PC = 0x555555573a2d *)
mov xmm21_0 xmm7_0;
mov xmm21_1 xmm7_1;
(* vpternlogq $0x96,%xmm2,%xmm8,%xmm21             #! PC = 0x555555573a33 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm21_0, xmm8_0, xmm2_0, table);
call vpternlogq64 (xmm21_1, xmm8_1, xmm2_1, table);
(* vpternlogq $0x96,%xmm10,%xmm19,%xmm21           #! PC = 0x555555573a3a *)
mov table 0x96@uint8;
call vpternlogq64 (xmm21_0, xmm19_0, xmm10_0, table);
call vpternlogq64 (xmm21_1, xmm19_1, xmm10_1, table);
(* vmovdqa64 %xmm29,-0x78(%rsp)                    #! EA = L0x7fffffffda70; PC = 0x555555573a41 *)
mov L0x7fffffffda70 xmm29_0;
mov L0x7fffffffda78 xmm29_1;
(* vprolq $0x1,%xmm21,%xmm29                       #! PC = 0x555555573a4c *)
rol xmm29_0 xmm21_0 0x1;
rol xmm29_1 xmm21_1 0x1;
(* vpternlogq $0x96,%xmm0,%xmm9,%xmm25             #! PC = 0x555555573a53 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm25_0, xmm9_0, xmm0_0, table);
call vpternlogq64 (xmm25_1, xmm9_1, xmm0_1, table);
(* vmovdqa64 %xmm28,%xmm22                         #! PC = 0x555555573a5a *)
mov xmm22_0 xmm28_0;
mov xmm22_1 xmm28_1;
(* vpternlogq $0x96,%xmm3,%xmm23,%xmm22            #! PC = 0x555555573a60 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm22_0, xmm23_0, xmm3_0, table);
call vpternlogq64 (xmm22_1, xmm23_1, xmm3_1, table);
(* vpternlogq $0x96,%xmm26,%xmm13,%xmm22           #! PC = 0x555555573a67 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm22_0, xmm13_0, xmm26_0, table);
call vpternlogq64 (xmm22_1, xmm13_1, xmm26_1, table);
(* vmovdqa64 %xmm18,%xmm20                         #! PC = 0x555555573a6e *)
mov xmm20_0 xmm18_0;
mov xmm20_1 xmm18_1;
(* vmovdqa64 %xmm29,-0x68(%rsp)                    #! EA = L0x7fffffffda80; PC = 0x555555573a74 *)
mov L0x7fffffffda80 xmm29_0;
mov L0x7fffffffda88 xmm29_1;
(* vprolq $0x1,%xmm25,%xmm29                       #! PC = 0x555555573a7f *)
rol xmm29_0 xmm25_0 0x1;
rol xmm29_1 xmm25_1 0x1;
(* vpternlogq $0x96,%xmm31,%xmm4,%xmm20            #! PC = 0x555555573a86 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm20_0, xmm4_0, xmm31_0, table);
call vpternlogq64 (xmm20_1, xmm4_1, xmm31_1, table);
(* vpternlogq $0x96,%xmm24,%xmm17,%xmm20           #! PC = 0x555555573a8d *)
mov table 0x96@uint8;
call vpternlogq64 (xmm20_0, xmm17_0, xmm24_0, table);
call vpternlogq64 (xmm20_1, xmm17_1, xmm24_1, table);
(* vprolq $0x1,%xmm20,%xmm30                       #! PC = 0x555555573a94 *)
rol xmm30_0 xmm20_0 0x1;
rol xmm30_1 xmm20_1 0x1;
(* vpxorq -0x68(%rsp),%xmm20,%xmm20                #! EA = L0x7fffffffda80; Value = 0x586cf48fc8650868; PC = 0x555555573a9b *)
xor xmm20_0@uint64 xmm20_0 L0x7fffffffda80;
xor xmm20_1@uint64 xmm20_1 L0x7fffffffda88;
(* mov    %r15,%rsi                                #! PC = 0x555555573aa6 *)
mov rsi r15;
(* vmovdqa64 %xmm29,-0x58(%rsp)                    #! EA = L0x7fffffffda90; PC = 0x555555573aa9 *)
mov L0x7fffffffda90 xmm29_0;
mov L0x7fffffffda98 xmm29_1;
(* vprolq $0x1,%xmm22,%xmm29                       #! PC = 0x555555573ab4 *)
rol xmm29_0 xmm22_0 0x1;
rol xmm29_1 xmm22_1 0x1;
(* vpxorq -0x78(%rsp),%xmm22,%xmm22                #! EA = L0x7fffffffda70; Value = 0xabc5d4dc102304a9; PC = 0x555555573abb *)
xor xmm22_0@uint64 xmm22_0 L0x7fffffffda70;
xor xmm22_1@uint64 xmm22_1 L0x7fffffffda78;
(* vpxor  -0x58(%rsp),%xmm15,%xmm15                #! EA = L0x7fffffffda90; Value = 0xf7405c61e6c6ef9f; PC = 0x555555573ac6 *)
xor xmm15_0@uint64 xmm15_0 L0x7fffffffda90;
xor xmm15_1@uint64 xmm15_1 L0x7fffffffda98;
(* vpxorq %xmm22,%xmm31,%xmm31                     #! PC = 0x555555573acc *)
xor xmm31_0@uint64 xmm31_0 xmm22_0;
xor xmm31_1@uint64 xmm31_1 xmm22_1;
(* vprorq $0x14,%xmm31,%xmm31                      #! PC = 0x555555573ad2 *)
ror xmm31_0 xmm31_0 0x14;
ror xmm31_1 xmm31_1 0x14;
(* vpxorq %xmm20,%xmm1,%xmm1                       #! PC = 0x555555573ad9 *)
xor xmm1_0@uint64 xmm1_0 xmm20_0;
xor xmm1_1@uint64 xmm1_1 xmm20_1;
(* vpxorq %xmm21,%xmm29,%xmm29                     #! PC = 0x555555573adf *)
xor xmm29_0@uint64 xmm29_0 xmm21_0;
xor xmm29_1@uint64 xmm29_1 xmm21_1;
(* vpxor  %xmm15,%xmm8,%xmm8                       #! PC = 0x555555573ae5 *)
xor xmm8_0@uint64 xmm8_0 xmm15_0;
xor xmm8_1@uint64 xmm8_1 xmm15_1;
(* vpxorq %xmm29,%xmm9,%xmm9                       #! PC = 0x555555573aea *)
xor xmm9_0@uint64 xmm9_0 xmm29_0;
xor xmm9_1@uint64 xmm9_1 xmm29_1;
(* vpxorq %xmm25,%xmm30,%xmm30                     #! PC = 0x555555573af0 *)
xor xmm30_0@uint64 xmm30_0 xmm25_0;
xor xmm30_1@uint64 xmm30_1 xmm25_1;
(* vprorq $0x15,%xmm1,%xmm1                        #! PC = 0x555555573af6 *)
ror xmm1_0 xmm1_0 0x15;
ror xmm1_1 xmm1_1 0x15;
(* vprolq $0x15,%xmm8,%xmm8                        #! PC = 0x555555573afd *)
rol xmm8_0 xmm8_0 0x15;
rol xmm8_1 xmm8_1 0x15;
(* vprolq $0xe,%xmm9,%xmm9                         #! PC = 0x555555573b04 *)
rol xmm9_0 xmm9_0 0xe;
rol xmm9_1 xmm9_1 0xe;
(* vpxor  %xmm15,%xmm10,%xmm10                     #! PC = 0x555555573b0b *)
xor xmm10_0@uint64 xmm10_0 xmm15_0;
xor xmm10_1@uint64 xmm10_1 xmm15_1;
(* vpxorq %xmm29,%xmm16,%xmm16                     #! PC = 0x555555573b10 *)
xor xmm16_0@uint64 xmm16_0 xmm29_0;
xor xmm16_1@uint64 xmm16_1 xmm29_1;
(* vprolq $0x1c,%xmm10,%xmm10                      #! PC = 0x555555573b16 *)
rol xmm10_0 xmm10_0 0x1c;
rol xmm10_1 xmm10_1 0x1c;
(* vprolq $0x14,%xmm16,%xmm16                      #! PC = 0x555555573b1d *)
rol xmm16_0 xmm16_0 0x14;
rol xmm16_1 xmm16_1 0x14;
(* vpxorq %xmm30,%xmm13,%xmm13                     #! PC = 0x555555573b24 *)
xor xmm13_0@uint64 xmm13_0 xmm30_0;
xor xmm13_1@uint64 xmm13_1 xmm30_1;
(* vpxorq %xmm22,%xmm18,%xmm18                     #! PC = 0x555555573b2a *)
xor xmm18_0@uint64 xmm18_0 xmm22_0;
xor xmm18_1@uint64 xmm18_1 xmm22_1;
(* vpxorq %xmm20,%xmm6,%xmm6                       #! PC = 0x555555573b30 *)
xor xmm6_0@uint64 xmm6_0 xmm20_0;
xor xmm6_1@uint64 xmm6_1 xmm20_1;
(* vpxorq %xmm22,%xmm17,%xmm17                     #! PC = 0x555555573b36 *)
xor xmm17_0@uint64 xmm17_0 xmm22_0;
xor xmm17_1@uint64 xmm17_1 xmm22_1;
(* vpxorq %xmm20,%xmm12,%xmm12                     #! PC = 0x555555573b3c *)
xor xmm12_0@uint64 xmm12_0 xmm20_0;
xor xmm12_1@uint64 xmm12_1 xmm20_1;
(* vprolq $0x1,%xmm17,%xmm17                       #! PC = 0x555555573b42 *)
rol xmm17_0 xmm17_0 0x1;
rol xmm17_1 xmm17_1 0x1;
(* vprolq $0x6,%xmm12,%xmm12                       #! PC = 0x555555573b49 *)
rol xmm12_0 xmm12_0 0x6;
rol xmm12_1 xmm12_1 0x6;
(* vprolq $0x3,%xmm13,%xmm13                       #! PC = 0x555555573b50 *)
rol xmm13_0 xmm13_0 0x3;
rol xmm13_1 xmm13_1 0x3;
(* vprorq $0x13,%xmm18,%xmm18                      #! PC = 0x555555573b57 *)
ror xmm18_0 xmm18_0 0x13;
ror xmm18_1 xmm18_1 0x13;
(* vprorq $0x3,%xmm6,%xmm6                         #! PC = 0x555555573b5e *)
ror xmm6_0 xmm6_0 0x3;
ror xmm6_1 xmm6_1 0x3;
(* vpxorq %xmm30,%xmm23,%xmm23                     #! PC = 0x555555573b65 *)
xor xmm23_0@uint64 xmm23_0 xmm30_0;
xor xmm23_1@uint64 xmm23_1 xmm30_1;
(* vpxor  %xmm15,%xmm2,%xmm2                       #! PC = 0x555555573b6b *)
xor xmm2_0@uint64 xmm2_0 xmm15_0;
xor xmm2_1@uint64 xmm2_1 xmm15_1;
(* vpxorq %xmm29,%xmm0,%xmm0                       #! PC = 0x555555573b70 *)
xor xmm0_0@uint64 xmm0_0 xmm29_0;
xor xmm0_1@uint64 xmm0_1 xmm29_1;
(* vpxorq %xmm30,%xmm26,%xmm26                     #! PC = 0x555555573b76 *)
xor xmm26_0@uint64 xmm26_0 xmm30_0;
xor xmm26_1@uint64 xmm26_1 xmm30_1;
(* vpxorq %xmm29,%xmm11,%xmm11                     #! PC = 0x555555573b7c *)
xor xmm11_0@uint64 xmm11_0 xmm29_0;
xor xmm11_1@uint64 xmm11_1 xmm29_1;
(* vprorq $0x1c,%xmm26,%xmm26                      #! PC = 0x555555573b82 *)
ror xmm26_0 xmm26_0 0x1c;
ror xmm26_1 xmm26_1 0x1c;
(* vprolq $0x1b,%xmm11,%xmm11                      #! PC = 0x555555573b89 *)
rol xmm11_0 xmm11_0 0x1b;
rol xmm11_1 xmm11_1 0x1b;
(* vprolq $0x12,%xmm23,%xmm23                      #! PC = 0x555555573b90 *)
rol xmm23_0 xmm23_0 0x12;
rol xmm23_1 xmm23_1 0x12;
(* vprolq $0x19,%xmm2,%xmm2                        #! PC = 0x555555573b97 *)
rol xmm2_0 xmm2_0 0x19;
rol xmm2_1 xmm2_1 0x19;
(* vprolq $0x8,%xmm0,%xmm0                         #! PC = 0x555555573b9e *)
rol xmm0_0 xmm0_0 0x8;
rol xmm0_1 xmm0_1 0x8;
(* vpxorq %xmm22,%xmm4,%xmm4                       #! PC = 0x555555573ba5 *)
xor xmm4_0@uint64 xmm4_0 xmm22_0;
xor xmm4_1@uint64 xmm4_1 xmm22_1;
(* vpxorq %xmm20,%xmm5,%xmm5                       #! PC = 0x555555573bab *)
xor xmm5_0@uint64 xmm5_0 xmm20_0;
xor xmm5_1@uint64 xmm5_1 xmm20_1;
(* vpxor  %xmm15,%xmm7,%xmm7                       #! PC = 0x555555573bb1 *)
xor xmm7_0@uint64 xmm7_0 xmm15_0;
xor xmm7_1@uint64 xmm7_1 xmm15_1;
(* vpxorq %xmm28,%xmm30,%xmm28                     #! PC = 0x555555573bb6 *)
xor xmm28_0@uint64 xmm30_0 xmm28_0;
xor xmm28_1@uint64 xmm30_1 xmm28_1;
(* vprolq $0xa,%xmm4,%xmm4                         #! PC = 0x555555573bbc *)
rol xmm4_0 xmm4_0 0xa;
rol xmm4_1 xmm4_1 0xa;
(* vprolq $0xf,%xmm5,%xmm5                         #! PC = 0x555555573bc3 *)
rol xmm5_0 xmm5_0 0xf;
rol xmm5_1 xmm5_1 0xf;
(* vprorq $0x8,%xmm7,%xmm7                         #! PC = 0x555555573bca *)
ror xmm7_0 xmm7_0 0x8;
ror xmm7_1 xmm7_1 0x8;
(* vmovdqa64 %xmm28,%xmm25                         #! PC = 0x555555573bd1 *)
mov xmm25_0 xmm28_0;
mov xmm25_1 xmm28_1;
(* vmovdqa64 %xmm31,%xmm21                         #! PC = 0x555555573bd7 *)
mov xmm21_0 xmm31_0;
mov xmm21_1 xmm31_1;
(* vpternlogq $0xd2,%xmm8,%xmm1,%xmm21             #! PC = 0x555555573bdd *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm21_0, xmm1_0, xmm8_0, table);
call vpternlogq64 (xmm21_1, xmm1_1, xmm8_1, table);
(* vpternlogq $0xd2,%xmm1,%xmm31,%xmm25            #! PC = 0x555555573be4 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm25_0, xmm31_0, xmm1_0, table);
call vpternlogq64 (xmm25_1, xmm31_1, xmm1_1, table);
(* vpternlogq $0xd2,%xmm9,%xmm8,%xmm1              #! PC = 0x555555573beb *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm1_0, xmm8_0, xmm9_0, table);
call vpternlogq64 (xmm1_1, xmm8_1, xmm9_1, table);
(* vpternlogq $0xd2,%xmm28,%xmm9,%xmm8             #! PC = 0x555555573bf2 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm8_0, xmm9_0, xmm28_0, table);
call vpternlogq64 (xmm8_1, xmm9_1, xmm28_1, table);
(* vpternlogq $0xd2,%xmm31,%xmm28,%xmm9            #! PC = 0x555555573bf9 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm9_0, xmm28_0, xmm31_0, table);
call vpternlogq64 (xmm9_1, xmm28_1, xmm31_1, table);
(* vpbroadcastq %r8,%xmm28                         #! PC = 0x555555573c00 *)
mov xmm28_0 r8;
mov xmm28_1 r8;
(* vpxorq %xmm28,%xmm25,%xmm25                     #! PC = 0x555555573c06 *)
xor xmm25_0@uint64 xmm25_0 xmm28_0;
xor xmm25_1@uint64 xmm25_1 xmm28_1;
(* vmovdqa64 %xmm16,%xmm31                         #! PC = 0x555555573c0c *)
mov xmm31_0 xmm16_0;
mov xmm31_1 xmm16_1;
(* vmovdqa64 %xmm10,%xmm28                         #! PC = 0x555555573c12 *)
mov xmm28_0 xmm10_0;
mov xmm28_1 xmm10_1;
(* vpternlogq $0xd2,%xmm13,%xmm16,%xmm28           #! PC = 0x555555573c18 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm28_0, xmm16_0, xmm13_0, table);
call vpternlogq64 (xmm28_1, xmm16_1, xmm13_1, table);
(* vpternlogq $0xd2,%xmm18,%xmm13,%xmm31           #! PC = 0x555555573c1f *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm31_0, xmm13_0, xmm18_0, table);
call vpternlogq64 (xmm31_1, xmm13_1, xmm18_1, table);
(* vpternlogq $0xd2,%xmm6,%xmm18,%xmm13            #! PC = 0x555555573c26 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm13_0, xmm18_0, xmm6_0, table);
call vpternlogq64 (xmm13_1, xmm18_1, xmm6_1, table);
(* vpternlogq $0xd2,%xmm10,%xmm6,%xmm18            #! PC = 0x555555573c2d *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm18_0, xmm6_0, xmm10_0, table);
call vpternlogq64 (xmm18_1, xmm6_1, xmm10_1, table);
(* vpternlogq $0xd2,%xmm16,%xmm10,%xmm6            #! PC = 0x555555573c34 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm6_0, xmm10_0, xmm16_0, table);
call vpternlogq64 (xmm6_1, xmm10_1, xmm16_1, table);
(* vmovdqa64 %xmm17,%xmm16                         #! PC = 0x555555573c3b *)
mov xmm16_0 xmm17_0;
mov xmm16_1 xmm17_1;
(* vmovdqa %xmm12,%xmm10                           #! PC = 0x555555573c41 *)
mov xmm10_0 xmm12_0;
mov xmm10_1 xmm12_1;
(* vpternlogq $0xd2,%xmm2,%xmm12,%xmm16            #! PC = 0x555555573c46 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm16_0, xmm12_0, xmm2_0, table);
call vpternlogq64 (xmm16_1, xmm12_1, xmm2_1, table);
(* vpternlogq $0xd2,%xmm0,%xmm2,%xmm10             #! PC = 0x555555573c4d *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm10_0, xmm2_0, xmm0_0, table);
call vpternlogq64 (xmm10_1, xmm2_1, xmm0_1, table);
(* vpxorq %xmm20,%xmm14,%xmm14                     #! PC = 0x555555573c54 *)
xor xmm14_0@uint64 xmm14_0 xmm20_0;
xor xmm14_1@uint64 xmm14_1 xmm20_1;
(* vpternlogq $0xd2,%xmm23,%xmm0,%xmm2             #! PC = 0x555555573c5a *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm2_0, xmm0_0, xmm23_0, table);
call vpternlogq64 (xmm2_1, xmm0_1, xmm23_1, table);
(* vpxorq %xmm15,%xmm19,%xmm19                     #! PC = 0x555555573c61 *)
xor xmm19_0@uint64 xmm19_0 xmm15_0;
xor xmm19_1@uint64 xmm19_1 xmm15_1;
(* vpternlogq $0xd2,%xmm17,%xmm23,%xmm0            #! PC = 0x555555573c67 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm0_0, xmm23_0, xmm17_0, table);
call vpternlogq64 (xmm0_1, xmm23_1, xmm17_1, table);
(* vpternlogq $0xd2,%xmm12,%xmm17,%xmm23           #! PC = 0x555555573c6e *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm23_0, xmm17_0, xmm12_0, table);
call vpternlogq64 (xmm23_1, xmm17_1, xmm12_1, table);
(* vmovdqa %xmm11,%xmm12                           #! PC = 0x555555573c75 *)
mov xmm12_0 xmm11_0;
mov xmm12_1 xmm11_1;
(* vmovdqa64 %xmm26,%xmm17                         #! PC = 0x555555573c7a *)
mov xmm17_0 xmm26_0;
mov xmm17_1 xmm26_1;
(* vprorq $0x2,%xmm14,%xmm20                       #! PC = 0x555555573c80 *)
ror xmm20_0 xmm14_0 0x2;
ror xmm20_1 xmm14_1 0x2;
(* vprorq $0x9,%xmm19,%xmm19                       #! PC = 0x555555573c87 *)
ror xmm19_0 xmm19_0 0x9;
ror xmm19_1 xmm19_1 0x9;
(* vpternlogq $0xd2,%xmm4,%xmm26,%xmm12            #! PC = 0x555555573c8e *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm12_0, xmm26_0, xmm4_0, table);
call vpternlogq64 (xmm12_1, xmm26_1, xmm4_1, table);
(* vpternlogq $0xd2,%xmm5,%xmm4,%xmm17             #! PC = 0x555555573c95 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm17_0, xmm4_0, xmm5_0, table);
call vpternlogq64 (xmm17_1, xmm4_1, xmm5_1, table);
(* vpxorq %xmm30,%xmm3,%xmm3                       #! PC = 0x555555573c9c *)
xor xmm3_0@uint64 xmm3_0 xmm30_0;
xor xmm3_1@uint64 xmm3_1 xmm30_1;
(* vpternlogq $0xd2,%xmm7,%xmm5,%xmm4              #! PC = 0x555555573ca2 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm4_0, xmm5_0, xmm7_0, table);
call vpternlogq64 (xmm4_1, xmm5_1, xmm7_1, table);
(* vpxorq %xmm29,%xmm27,%xmm27                     #! PC = 0x555555573ca9 *)
xor xmm27_0@uint64 xmm27_0 xmm29_0;
xor xmm27_1@uint64 xmm27_1 xmm29_1;
(* vpternlogq $0xd2,%xmm11,%xmm7,%xmm5             #! PC = 0x555555573caf *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm5_0, xmm7_0, xmm11_0, table);
call vpternlogq64 (xmm5_1, xmm7_1, xmm11_1, table);
(* vpternlogq $0xd2,%xmm26,%xmm11,%xmm7            #! PC = 0x555555573cb6 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm7_0, xmm11_0, xmm26_0, table);
call vpternlogq64 (xmm7_1, xmm11_1, xmm26_1, table);
(* vpxorq %xmm22,%xmm24,%xmm11                     #! PC = 0x555555573cbd *)
xor xmm11_0@uint64 xmm24_0 xmm22_0;
xor xmm11_1@uint64 xmm24_1 xmm22_1;
(* vprorq $0x17,%xmm3,%xmm3                        #! PC = 0x555555573cc3 *)
ror xmm3_0 xmm3_0 0x17;
ror xmm3_1 xmm3_1 0x17;
(* vprolq $0x2,%xmm11,%xmm11                       #! PC = 0x555555573cca *)
rol xmm11_0 xmm11_0 0x2;
rol xmm11_1 xmm11_1 0x2;
(* vprorq $0x19,%xmm27,%xmm27                      #! PC = 0x555555573cd1 *)
ror xmm27_0 xmm27_0 0x19;
ror xmm27_1 xmm27_1 0x19;
(* vmovdqa64 %xmm20,%xmm14                         #! PC = 0x555555573cd8 *)
mov xmm14_0 xmm20_0;
mov xmm14_1 xmm20_1;
(* vmovdqa64 %xmm19,%xmm24                         #! PC = 0x555555573cde *)
mov xmm24_0 xmm19_0;
mov xmm24_1 xmm19_1;
(* vmovdqa %xmm5,%xmm15                            #! PC = 0x555555573ce4 *)
mov xmm15_0 xmm5_0;
mov xmm15_1 xmm5_1;
(* vpternlogq $0x96,%xmm0,%xmm8,%xmm15             #! PC = 0x555555573ce8 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm15_0, xmm8_0, xmm0_0, table);
call vpternlogq64 (xmm15_1, xmm8_1, xmm0_1, table);
(* vmovdqa64 %xmm25,%xmm22                         #! PC = 0x555555573cef *)
mov xmm22_0 xmm25_0;
mov xmm22_1 xmm25_1;
(* vpternlogq $0xd2,%xmm3,%xmm27,%xmm24            #! PC = 0x555555573cf5 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm24_0, xmm27_0, xmm3_0, table);
call vpternlogq64 (xmm24_1, xmm27_1, xmm3_1, table);
(* vpternlogq $0xd2,%xmm27,%xmm19,%xmm14           #! PC = 0x555555573cfc *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm14_0, xmm19_0, xmm27_0, table);
call vpternlogq64 (xmm14_1, xmm19_1, xmm27_1, table);
(* vpternlogq $0xd2,%xmm11,%xmm3,%xmm27            #! PC = 0x555555573d03 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm27_0, xmm3_0, xmm11_0, table);
call vpternlogq64 (xmm27_1, xmm3_1, xmm11_1, table);
(* vpternlogq $0xd2,%xmm20,%xmm11,%xmm3            #! PC = 0x555555573d0a *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm3_0, xmm11_0, xmm20_0, table);
call vpternlogq64 (xmm3_1, xmm11_1, xmm20_1, table);
(* vpternlogq $0xd2,%xmm19,%xmm20,%xmm11           #! PC = 0x555555573d11 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm11_0, xmm20_0, xmm19_0, table);
call vpternlogq64 (xmm11_1, xmm20_1, xmm19_1, table);
(* vmovdqa64 %xmm2,%xmm19                          #! PC = 0x555555573d18 *)
mov xmm19_0 xmm2_0;
mov xmm19_1 xmm2_1;
(* vpternlogq $0x96,%xmm13,%xmm27,%xmm19           #! PC = 0x555555573d1e *)
mov table 0x96@uint8;
call vpternlogq64 (xmm19_0, xmm27_0, xmm13_0, table);
call vpternlogq64 (xmm19_1, xmm27_1, xmm13_1, table);
(* vpternlogq $0x96,%xmm1,%xmm4,%xmm19             #! PC = 0x555555573d25 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm19_0, xmm4_0, xmm1_0, table);
call vpternlogq64 (xmm19_1, xmm4_1, xmm1_1, table);
(* vprolq $0x1,%xmm19,%xmm29                       #! PC = 0x555555573d2c *)
rol xmm29_0 xmm19_0 0x1;
rol xmm29_1 xmm19_1 0x1;
(* vpternlogq $0x96,%xmm18,%xmm3,%xmm15            #! PC = 0x555555573d33 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm15_0, xmm3_0, xmm18_0, table);
call vpternlogq64 (xmm15_1, xmm3_1, xmm18_1, table);
(* vmovdqa64 %xmm11,%xmm26                         #! PC = 0x555555573d3a *)
mov xmm26_0 xmm11_0;
mov xmm26_1 xmm11_1;
(* vpternlogq $0x96,%xmm7,%xmm6,%xmm26             #! PC = 0x555555573d40 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm26_0, xmm6_0, xmm7_0, table);
call vpternlogq64 (xmm26_1, xmm6_1, xmm7_1, table);
(* vpternlogq $0x96,%xmm23,%xmm9,%xmm26            #! PC = 0x555555573d47 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm26_0, xmm9_0, xmm23_0, table);
call vpternlogq64 (xmm26_1, xmm9_1, xmm23_1, table);
(* vpternlogq $0x96,%xmm14,%xmm16,%xmm22           #! PC = 0x555555573d4e *)
mov table 0x96@uint8;
call vpternlogq64 (xmm22_0, xmm16_0, xmm14_0, table);
call vpternlogq64 (xmm22_1, xmm16_1, xmm14_1, table);
(* vmovdqa64 %xmm29,-0x78(%rsp)                    #! EA = L0x7fffffffda70; PC = 0x555555573d55 *)
mov L0x7fffffffda70 xmm29_0;
mov L0x7fffffffda78 xmm29_1;
(* vprolq $0x1,%xmm15,%xmm29                       #! PC = 0x555555573d60 *)
rol xmm29_0 xmm15_0 0x1;
rol xmm29_1 xmm15_1 0x1;
(* vpternlogq $0x96,%xmm12,%xmm28,%xmm22           #! PC = 0x555555573d67 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm22_0, xmm28_0, xmm12_0, table);
call vpternlogq64 (xmm22_1, xmm28_1, xmm12_1, table);
(* vmovdqa64 %xmm31,%xmm20                         #! PC = 0x555555573d6e *)
mov xmm20_0 xmm31_0;
mov xmm20_1 xmm31_1;
(* vpternlogq $0x96,%xmm21,%xmm17,%xmm20           #! PC = 0x555555573d74 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm20_0, xmm17_0, xmm21_0, table);
call vpternlogq64 (xmm20_1, xmm17_1, xmm21_1, table);
(* vpternlogq $0x96,%xmm24,%xmm10,%xmm20           #! PC = 0x555555573d7b *)
mov table 0x96@uint8;
call vpternlogq64 (xmm20_0, xmm10_0, xmm24_0, table);
call vpternlogq64 (xmm20_1, xmm10_1, xmm24_1, table);
(* vprolq $0x1,%xmm20,%xmm30                       #! PC = 0x555555573d82 *)
rol xmm30_0 xmm20_0 0x1;
rol xmm30_1 xmm20_1 0x1;
(* vmovdqa64 %xmm29,-0x68(%rsp)                    #! EA = L0x7fffffffda80; PC = 0x555555573d89 *)
mov L0x7fffffffda80 xmm29_0;
mov L0x7fffffffda88 xmm29_1;
(* vprolq $0x1,%xmm26,%xmm29                       #! PC = 0x555555573d94 *)
rol xmm29_0 xmm26_0 0x1;
rol xmm29_1 xmm26_1 0x1;
(* vpxorq -0x68(%rsp),%xmm20,%xmm20                #! EA = L0x7fffffffda80; Value = 0xc6f54600740ba260; PC = 0x555555573d9b *)
xor xmm20_0@uint64 xmm20_0 L0x7fffffffda80;
xor xmm20_1@uint64 xmm20_1 L0x7fffffffda88;
(* movabs $0x800000000000008b,%rdi                 #! PC = 0x555555573da6 *)
mov rdi 0x800000000000008b@uint64;
(* vpxorq %xmm20,%xmm2,%xmm2                       #! PC = 0x555555573db0 *)
xor xmm2_0@uint64 xmm2_0 xmm20_0;
xor xmm2_1@uint64 xmm2_1 xmm20_1;
(* vpxorq %xmm26,%xmm30,%xmm30                     #! PC = 0x555555573db6 *)
xor xmm30_0@uint64 xmm30_0 xmm26_0;
xor xmm30_1@uint64 xmm30_1 xmm26_1;
(* vprorq $0x15,%xmm2,%xmm2                        #! PC = 0x555555573dbc *)
ror xmm2_0 xmm2_0 0x15;
ror xmm2_1 xmm2_1 0x15;
(* vmovdqa64 %xmm29,-0x58(%rsp)                    #! EA = L0x7fffffffda90; PC = 0x555555573dc3 *)
mov L0x7fffffffda90 xmm29_0;
mov L0x7fffffffda98 xmm29_1;
(* vprolq $0x1,%xmm22,%xmm29                       #! PC = 0x555555573dce *)
rol xmm29_0 xmm22_0 0x1;
rol xmm29_1 xmm22_1 0x1;
(* vpxorq -0x78(%rsp),%xmm22,%xmm22                #! EA = L0x7fffffffda70; Value = 0x42e7743202a2ed8f; PC = 0x555555573dd5 *)
xor xmm22_0@uint64 xmm22_0 L0x7fffffffda70;
xor xmm22_1@uint64 xmm22_1 L0x7fffffffda78;
(* vpxorq -0x58(%rsp),%xmm19,%xmm19                #! EA = L0x7fffffffda90; Value = 0x16296aaabf98eceb; PC = 0x555555573de0 *)
xor xmm19_0@uint64 xmm19_0 L0x7fffffffda90;
xor xmm19_1@uint64 xmm19_1 L0x7fffffffda98;
(* vpxorq %xmm22,%xmm31,%xmm31                     #! PC = 0x555555573deb *)
xor xmm31_0@uint64 xmm31_0 xmm22_0;
xor xmm31_1@uint64 xmm31_1 xmm22_1;
(* vprorq $0x14,%xmm31,%xmm31                      #! PC = 0x555555573df1 *)
ror xmm31_0 xmm31_0 0x14;
ror xmm31_1 xmm31_1 0x14;
(* vpxorq %xmm19,%xmm5,%xmm5                       #! PC = 0x555555573df8 *)
xor xmm5_0@uint64 xmm5_0 xmm19_0;
xor xmm5_1@uint64 xmm5_1 xmm19_1;
(* vpxorq %xmm15,%xmm29,%xmm29                     #! PC = 0x555555573dfe *)
xor xmm29_0@uint64 xmm29_0 xmm15_0;
xor xmm29_1@uint64 xmm29_1 xmm15_1;
(* vpxorq %xmm29,%xmm11,%xmm11                     #! PC = 0x555555573e04 *)
xor xmm11_0@uint64 xmm11_0 xmm29_0;
xor xmm11_1@uint64 xmm11_1 xmm29_1;
(* vprolq $0x15,%xmm5,%xmm5                        #! PC = 0x555555573e0a *)
rol xmm5_0 xmm5_0 0x15;
rol xmm5_1 xmm5_1 0x15;
(* vprolq $0xe,%xmm11,%xmm11                       #! PC = 0x555555573e11 *)
rol xmm11_0 xmm11_0 0xe;
rol xmm11_1 xmm11_1 0xe;
(* vpxorq %xmm19,%xmm8,%xmm8                       #! PC = 0x555555573e18 *)
xor xmm8_0@uint64 xmm8_0 xmm19_0;
xor xmm8_1@uint64 xmm8_1 xmm19_1;
(* vpxorq %xmm29,%xmm6,%xmm6                       #! PC = 0x555555573e1e *)
xor xmm6_0@uint64 xmm6_0 xmm29_0;
xor xmm6_1@uint64 xmm6_1 xmm29_1;
(* vprolq $0x1c,%xmm8,%xmm8                        #! PC = 0x555555573e24 *)
rol xmm8_0 xmm8_0 0x1c;
rol xmm8_1 xmm8_1 0x1c;
(* vprolq $0x14,%xmm6,%xmm6                        #! PC = 0x555555573e2b *)
rol xmm6_0 xmm6_0 0x14;
rol xmm6_1 xmm6_1 0x14;
(* vpxorq %xmm30,%xmm16,%xmm16                     #! PC = 0x555555573e32 *)
xor xmm16_0@uint64 xmm16_0 xmm30_0;
xor xmm16_1@uint64 xmm16_1 xmm30_1;
(* vpxorq %xmm22,%xmm17,%xmm17                     #! PC = 0x555555573e38 *)
xor xmm17_0@uint64 xmm17_0 xmm22_0;
xor xmm17_1@uint64 xmm17_1 xmm22_1;
(* vpxorq %xmm20,%xmm27,%xmm27                     #! PC = 0x555555573e3e *)
xor xmm27_0@uint64 xmm27_0 xmm20_0;
xor xmm27_1@uint64 xmm27_1 xmm20_1;
(* vpxorq %xmm22,%xmm21,%xmm21                     #! PC = 0x555555573e44 *)
xor xmm21_0@uint64 xmm21_0 xmm22_0;
xor xmm21_1@uint64 xmm21_1 xmm22_1;
(* vpxorq %xmm20,%xmm13,%xmm13                     #! PC = 0x555555573e4a *)
xor xmm13_0@uint64 xmm13_0 xmm20_0;
xor xmm13_1@uint64 xmm13_1 xmm20_1;
(* vprolq $0x1,%xmm21,%xmm21                       #! PC = 0x555555573e50 *)
rol xmm21_0 xmm21_0 0x1;
rol xmm21_1 xmm21_1 0x1;
(* vprolq $0x6,%xmm13,%xmm13                       #! PC = 0x555555573e57 *)
rol xmm13_0 xmm13_0 0x6;
rol xmm13_1 xmm13_1 0x6;
(* vprolq $0x3,%xmm16,%xmm16                       #! PC = 0x555555573e5e *)
rol xmm16_0 xmm16_0 0x3;
rol xmm16_1 xmm16_1 0x3;
(* vprorq $0x13,%xmm17,%xmm17                      #! PC = 0x555555573e65 *)
ror xmm17_0 xmm17_0 0x13;
ror xmm17_1 xmm17_1 0x13;
(* vprorq $0x3,%xmm27,%xmm27                       #! PC = 0x555555573e6c *)
ror xmm27_0 xmm27_0 0x3;
ror xmm27_1 xmm27_1 0x3;
(* vpxorq %xmm30,%xmm14,%xmm14                     #! PC = 0x555555573e73 *)
xor xmm14_0@uint64 xmm14_0 xmm30_0;
xor xmm14_1@uint64 xmm14_1 xmm30_1;
(* vpxorq %xmm19,%xmm0,%xmm0                       #! PC = 0x555555573e79 *)
xor xmm0_0@uint64 xmm0_0 xmm19_0;
xor xmm0_1@uint64 xmm0_1 xmm19_1;
(* vpxorq %xmm29,%xmm7,%xmm7                       #! PC = 0x555555573e7f *)
xor xmm7_0@uint64 xmm7_0 xmm29_0;
xor xmm7_1@uint64 xmm7_1 xmm29_1;
(* vpxorq %xmm30,%xmm28,%xmm28                     #! PC = 0x555555573e85 *)
xor xmm28_0@uint64 xmm28_0 xmm30_0;
xor xmm28_1@uint64 xmm28_1 xmm30_1;
(* vpxorq %xmm29,%xmm9,%xmm9                       #! PC = 0x555555573e8b *)
xor xmm9_0@uint64 xmm9_0 xmm29_0;
xor xmm9_1@uint64 xmm9_1 xmm29_1;
(* vprorq $0x1c,%xmm28,%xmm28                      #! PC = 0x555555573e91 *)
ror xmm28_0 xmm28_0 0x1c;
ror xmm28_1 xmm28_1 0x1c;
(* vprolq $0x1b,%xmm9,%xmm9                        #! PC = 0x555555573e98 *)
rol xmm9_0 xmm9_0 0x1b;
rol xmm9_1 xmm9_1 0x1b;
(* vprolq $0x12,%xmm14,%xmm14                      #! PC = 0x555555573e9f *)
rol xmm14_0 xmm14_0 0x12;
rol xmm14_1 xmm14_1 0x12;
(* vprolq $0x19,%xmm0,%xmm0                        #! PC = 0x555555573ea6 *)
rol xmm0_0 xmm0_0 0x19;
rol xmm0_1 xmm0_1 0x19;
(* vprolq $0x8,%xmm7,%xmm7                         #! PC = 0x555555573ead *)
rol xmm7_0 xmm7_0 0x8;
rol xmm7_1 xmm7_1 0x8;
(* vpxorq %xmm22,%xmm10,%xmm10                     #! PC = 0x555555573eb4 *)
xor xmm10_0@uint64 xmm10_0 xmm22_0;
xor xmm10_1@uint64 xmm10_1 xmm22_1;
(* vpxorq %xmm20,%xmm4,%xmm4                       #! PC = 0x555555573eba *)
xor xmm4_0@uint64 xmm4_0 xmm20_0;
xor xmm4_1@uint64 xmm4_1 xmm20_1;
(* vpxorq %xmm19,%xmm3,%xmm3                       #! PC = 0x555555573ec0 *)
xor xmm3_0@uint64 xmm3_0 xmm19_0;
xor xmm3_1@uint64 xmm3_1 xmm19_1;
(* vpxorq %xmm25,%xmm30,%xmm25                     #! PC = 0x555555573ec6 *)
xor xmm25_0@uint64 xmm30_0 xmm25_0;
xor xmm25_1@uint64 xmm30_1 xmm25_1;
(* vprolq $0xa,%xmm10,%xmm10                       #! PC = 0x555555573ecc *)
rol xmm10_0 xmm10_0 0xa;
rol xmm10_1 xmm10_1 0xa;
(* vprolq $0xf,%xmm4,%xmm4                         #! PC = 0x555555573ed3 *)
rol xmm4_0 xmm4_0 0xf;
rol xmm4_1 xmm4_1 0xf;
(* vprorq $0x8,%xmm3,%xmm3                         #! PC = 0x555555573eda *)
ror xmm3_0 xmm3_0 0x8;
ror xmm3_1 xmm3_1 0x8;
(* vmovdqa64 %xmm25,%xmm15                         #! PC = 0x555555573ee1 *)
mov xmm15_0 xmm25_0;
mov xmm15_1 xmm25_1;
(* vmovdqa64 %xmm31,%xmm26                         #! PC = 0x555555573ee7 *)
mov xmm26_0 xmm31_0;
mov xmm26_1 xmm31_1;
(* vpternlogq $0xd2,%xmm5,%xmm2,%xmm26             #! PC = 0x555555573eed *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm26_0, xmm2_0, xmm5_0, table);
call vpternlogq64 (xmm26_1, xmm2_1, xmm5_1, table);
(* vpternlogq $0xd2,%xmm2,%xmm31,%xmm15            #! PC = 0x555555573ef4 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm15_0, xmm31_0, xmm2_0, table);
call vpternlogq64 (xmm15_1, xmm31_1, xmm2_1, table);
(* vpternlogq $0xd2,%xmm11,%xmm5,%xmm2             #! PC = 0x555555573efb *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm2_0, xmm5_0, xmm11_0, table);
call vpternlogq64 (xmm2_1, xmm5_1, xmm11_1, table);
(* vpternlogq $0xd2,%xmm25,%xmm11,%xmm5            #! PC = 0x555555573f02 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm5_0, xmm11_0, xmm25_0, table);
call vpternlogq64 (xmm5_1, xmm11_1, xmm25_1, table);
(* vpternlogq $0xd2,%xmm31,%xmm25,%xmm11           #! PC = 0x555555573f09 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm11_0, xmm25_0, xmm31_0, table);
call vpternlogq64 (xmm11_1, xmm25_1, xmm31_1, table);
(* vpbroadcastq %r9,%xmm25                         #! PC = 0x555555573f10 *)
mov xmm25_0 r9;
mov xmm25_1 r9;
(* vpxorq %xmm25,%xmm15,%xmm15                     #! PC = 0x555555573f16 *)
xor xmm15_0@uint64 xmm15_0 xmm25_0;
xor xmm15_1@uint64 xmm15_1 xmm25_1;
(* vmovdqa64 %xmm6,%xmm31                          #! PC = 0x555555573f1c *)
mov xmm31_0 xmm6_0;
mov xmm31_1 xmm6_1;
(* vmovdqa64 %xmm8,%xmm25                          #! PC = 0x555555573f22 *)
mov xmm25_0 xmm8_0;
mov xmm25_1 xmm8_1;
(* vpternlogq $0xd2,%xmm16,%xmm6,%xmm25            #! PC = 0x555555573f28 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm25_0, xmm6_0, xmm16_0, table);
call vpternlogq64 (xmm25_1, xmm6_1, xmm16_1, table);
(* vpternlogq $0xd2,%xmm17,%xmm16,%xmm31           #! PC = 0x555555573f2f *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm31_0, xmm16_0, xmm17_0, table);
call vpternlogq64 (xmm31_1, xmm16_1, xmm17_1, table);
(* vpternlogq $0xd2,%xmm27,%xmm17,%xmm16           #! PC = 0x555555573f36 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm16_0, xmm17_0, xmm27_0, table);
call vpternlogq64 (xmm16_1, xmm17_1, xmm27_1, table);
(* vpternlogq $0xd2,%xmm8,%xmm27,%xmm17            #! PC = 0x555555573f3d *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm17_0, xmm27_0, xmm8_0, table);
call vpternlogq64 (xmm17_1, xmm27_1, xmm8_1, table);
(* vpternlogq $0xd2,%xmm6,%xmm8,%xmm27             #! PC = 0x555555573f44 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm27_0, xmm8_0, xmm6_0, table);
call vpternlogq64 (xmm27_1, xmm8_1, xmm6_1, table);
(* vmovdqa64 %xmm21,%xmm6                          #! PC = 0x555555573f4b *)
mov xmm6_0 xmm21_0;
mov xmm6_1 xmm21_1;
(* vmovdqa %xmm13,%xmm8                            #! PC = 0x555555573f51 *)
mov xmm8_0 xmm13_0;
mov xmm8_1 xmm13_1;
(* vpternlogq $0xd2,%xmm0,%xmm13,%xmm6             #! PC = 0x555555573f56 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm6_0, xmm13_0, xmm0_0, table);
call vpternlogq64 (xmm6_1, xmm13_1, xmm0_1, table);
(* vpternlogq $0xd2,%xmm7,%xmm0,%xmm8              #! PC = 0x555555573f5d *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm8_0, xmm0_0, xmm7_0, table);
call vpternlogq64 (xmm8_1, xmm0_1, xmm7_1, table);
(* vpxorq %xmm20,%xmm1,%xmm1                       #! PC = 0x555555573f64 *)
xor xmm1_0@uint64 xmm1_0 xmm20_0;
xor xmm1_1@uint64 xmm1_1 xmm20_1;
(* vpternlogq $0xd2,%xmm14,%xmm7,%xmm0             #! PC = 0x555555573f6a *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm0_0, xmm7_0, xmm14_0, table);
call vpternlogq64 (xmm0_1, xmm7_1, xmm14_1, table);
(* vpxorq %xmm19,%xmm18,%xmm18                     #! PC = 0x555555573f71 *)
xor xmm18_0@uint64 xmm18_0 xmm19_0;
xor xmm18_1@uint64 xmm18_1 xmm19_1;
(* vpternlogq $0xd2,%xmm21,%xmm14,%xmm7            #! PC = 0x555555573f77 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm7_0, xmm14_0, xmm21_0, table);
call vpternlogq64 (xmm7_1, xmm14_1, xmm21_1, table);
(* vpternlogq $0xd2,%xmm13,%xmm21,%xmm14           #! PC = 0x555555573f7e *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm14_0, xmm21_0, xmm13_0, table);
call vpternlogq64 (xmm14_1, xmm21_1, xmm13_1, table);
(* vmovdqa64 %xmm9,%xmm21                          #! PC = 0x555555573f85 *)
mov xmm21_0 xmm9_0;
mov xmm21_1 xmm9_1;
(* vmovdqa64 %xmm28,%xmm13                         #! PC = 0x555555573f8b *)
mov xmm13_0 xmm28_0;
mov xmm13_1 xmm28_1;
(* vprorq $0x2,%xmm1,%xmm1                         #! PC = 0x555555573f91 *)
ror xmm1_0 xmm1_0 0x2;
ror xmm1_1 xmm1_1 0x2;
(* vprorq $0x9,%xmm18,%xmm18                       #! PC = 0x555555573f98 *)
ror xmm18_0 xmm18_0 0x9;
ror xmm18_1 xmm18_1 0x9;
(* vpternlogq $0xd2,%xmm10,%xmm28,%xmm21           #! PC = 0x555555573f9f *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm21_0, xmm28_0, xmm10_0, table);
call vpternlogq64 (xmm21_1, xmm28_1, xmm10_1, table);
(* vpternlogq $0xd2,%xmm4,%xmm10,%xmm13            #! PC = 0x555555573fa6 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm13_0, xmm10_0, xmm4_0, table);
call vpternlogq64 (xmm13_1, xmm10_1, xmm4_1, table);
(* vpxorq %xmm30,%xmm12,%xmm12                     #! PC = 0x555555573fad *)
xor xmm12_0@uint64 xmm12_0 xmm30_0;
xor xmm12_1@uint64 xmm12_1 xmm30_1;
(* vpternlogq $0xd2,%xmm3,%xmm4,%xmm10             #! PC = 0x555555573fb3 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm10_0, xmm4_0, xmm3_0, table);
call vpternlogq64 (xmm10_1, xmm4_1, xmm3_1, table);
(* vpxorq %xmm29,%xmm23,%xmm23                     #! PC = 0x555555573fba *)
xor xmm23_0@uint64 xmm23_0 xmm29_0;
xor xmm23_1@uint64 xmm23_1 xmm29_1;
(* vpternlogq $0xd2,%xmm9,%xmm3,%xmm4              #! PC = 0x555555573fc0 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm4_0, xmm3_0, xmm9_0, table);
call vpternlogq64 (xmm4_1, xmm3_1, xmm9_1, table);
(* vpternlogq $0xd2,%xmm28,%xmm9,%xmm3             #! PC = 0x555555573fc7 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm3_0, xmm9_0, xmm28_0, table);
call vpternlogq64 (xmm3_1, xmm9_1, xmm28_1, table);
(* vpxorq %xmm22,%xmm24,%xmm9                      #! PC = 0x555555573fce *)
xor xmm9_0@uint64 xmm24_0 xmm22_0;
xor xmm9_1@uint64 xmm24_1 xmm22_1;
(* vprorq $0x17,%xmm12,%xmm12                      #! PC = 0x555555573fd4 *)
ror xmm12_0 xmm12_0 0x17;
ror xmm12_1 xmm12_1 0x17;
(* vprolq $0x2,%xmm9,%xmm9                         #! PC = 0x555555573fdb *)
rol xmm9_0 xmm9_0 0x2;
rol xmm9_1 xmm9_1 0x2;
(* vprorq $0x19,%xmm23,%xmm23                      #! PC = 0x555555573fe2 *)
ror xmm23_0 xmm23_0 0x19;
ror xmm23_1 xmm23_1 0x19;
(* vmovdqa64 %xmm1,%xmm28                          #! PC = 0x555555573fe9 *)
mov xmm28_0 xmm1_0;
mov xmm28_1 xmm1_1;
(* vmovdqa64 %xmm18,%xmm24                         #! PC = 0x555555573fef *)
mov xmm24_0 xmm18_0;
mov xmm24_1 xmm18_1;
(* vmovdqa64 %xmm2,%xmm19                          #! PC = 0x555555573ff5 *)
mov xmm19_0 xmm2_0;
mov xmm19_1 xmm2_1;
(* vpternlogq $0x96,%xmm0,%xmm16,%xmm19            #! PC = 0x555555573ffb *)
mov table 0x96@uint8;
call vpternlogq64 (xmm19_0, xmm16_0, xmm0_0, table);
call vpternlogq64 (xmm19_1, xmm16_1, xmm0_1, table);
(* vmovdqa64 %xmm15,%xmm22                         #! PC = 0x555555574002 *)
mov xmm22_0 xmm15_0;
mov xmm22_1 xmm15_1;
(* vpternlogq $0xd2,%xmm12,%xmm23,%xmm24           #! PC = 0x555555574008 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm24_0, xmm23_0, xmm12_0, table);
call vpternlogq64 (xmm24_1, xmm23_1, xmm12_1, table);
(* vpternlogq $0xd2,%xmm23,%xmm18,%xmm28           #! PC = 0x55555557400f *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm28_0, xmm18_0, xmm23_0, table);
call vpternlogq64 (xmm28_1, xmm18_1, xmm23_1, table);
(* vpternlogq $0xd2,%xmm9,%xmm12,%xmm23            #! PC = 0x555555574016 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm23_0, xmm12_0, xmm9_0, table);
call vpternlogq64 (xmm23_1, xmm12_1, xmm9_1, table);
(* vpternlogq $0x96,%xmm23,%xmm10,%xmm19           #! PC = 0x55555557401d *)
mov table 0x96@uint8;
call vpternlogq64 (xmm19_0, xmm10_0, xmm23_0, table);
call vpternlogq64 (xmm19_1, xmm10_1, xmm23_1, table);
(* vprolq $0x1,%xmm19,%xmm29                       #! PC = 0x555555574024 *)
rol xmm29_0 xmm19_0 0x1;
rol xmm29_1 xmm19_1 0x1;
(* vpternlogq $0xd2,%xmm1,%xmm9,%xmm12             #! PC = 0x55555557402b *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm12_0, xmm9_0, xmm1_0, table);
call vpternlogq64 (xmm12_1, xmm9_1, xmm1_1, table);
(* vpternlogq $0xd2,%xmm18,%xmm1,%xmm9             #! PC = 0x555555574032 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm9_0, xmm1_0, xmm18_0, table);
call vpternlogq64 (xmm9_1, xmm1_1, xmm18_1, table);
(* vmovdqa %xmm5,%xmm1                             #! PC = 0x555555574039 *)
mov xmm1_0 xmm5_0;
mov xmm1_1 xmm5_1;
(* vpternlogq $0x96,%xmm7,%xmm17,%xmm1             #! PC = 0x55555557403d *)
mov table 0x96@uint8;
call vpternlogq64 (xmm1_0, xmm17_0, xmm7_0, table);
call vpternlogq64 (xmm1_1, xmm17_1, xmm7_1, table);
(* vpternlogq $0x96,%xmm12,%xmm4,%xmm1             #! PC = 0x555555574044 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm1_0, xmm4_0, xmm12_0, table);
call vpternlogq64 (xmm1_1, xmm4_1, xmm12_1, table);
(* vmovdqa64 %xmm29,-0x78(%rsp)                    #! EA = L0x7fffffffda70; PC = 0x55555557404b *)
mov L0x7fffffffda70 xmm29_0;
mov L0x7fffffffda78 xmm29_1;
(* vprolq $0x1,%xmm1,%xmm29                        #! PC = 0x555555574056 *)
rol xmm29_0 xmm1_0 0x1;
rol xmm29_1 xmm1_1 0x1;
(* vmovdqa64 %xmm11,%xmm18                         #! PC = 0x55555557405d *)
mov xmm18_0 xmm11_0;
mov xmm18_1 xmm11_1;
(* vpternlogq $0x96,%xmm14,%xmm27,%xmm18           #! PC = 0x555555574063 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm18_0, xmm27_0, xmm14_0, table);
call vpternlogq64 (xmm18_1, xmm27_1, xmm14_1, table);
(* vpternlogq $0x96,%xmm9,%xmm3,%xmm18             #! PC = 0x55555557406a *)
mov table 0x96@uint8;
call vpternlogq64 (xmm18_0, xmm3_0, xmm9_0, table);
call vpternlogq64 (xmm18_1, xmm3_1, xmm9_1, table);
(* vpternlogq $0x96,%xmm6,%xmm25,%xmm22            #! PC = 0x555555574071 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm22_0, xmm25_0, xmm6_0, table);
call vpternlogq64 (xmm22_1, xmm25_1, xmm6_1, table);
(* vpternlogq $0x96,%xmm28,%xmm21,%xmm22           #! PC = 0x555555574078 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm22_0, xmm21_0, xmm28_0, table);
call vpternlogq64 (xmm22_1, xmm21_1, xmm28_1, table);
(* vmovdqa64 %xmm29,-0x68(%rsp)                    #! EA = L0x7fffffffda80; PC = 0x55555557407f *)
mov L0x7fffffffda80 xmm29_0;
mov L0x7fffffffda88 xmm29_1;
(* vprolq $0x1,%xmm18,%xmm29                       #! PC = 0x55555557408a *)
rol xmm29_0 xmm18_0 0x1;
rol xmm29_1 xmm18_1 0x1;
(* vmovdqa64 %xmm26,%xmm20                         #! PC = 0x555555574091 *)
mov xmm20_0 xmm26_0;
mov xmm20_1 xmm26_1;
(* vpternlogq $0x96,%xmm8,%xmm31,%xmm20            #! PC = 0x555555574097 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm20_0, xmm31_0, xmm8_0, table);
call vpternlogq64 (xmm20_1, xmm31_1, xmm8_1, table);
(* vpternlogq $0x96,%xmm24,%xmm13,%xmm20           #! PC = 0x55555557409e *)
mov table 0x96@uint8;
call vpternlogq64 (xmm20_0, xmm13_0, xmm24_0, table);
call vpternlogq64 (xmm20_1, xmm13_1, xmm24_1, table);
(* vprolq $0x1,%xmm20,%xmm30                       #! PC = 0x5555555740a5 *)
rol xmm30_0 xmm20_0 0x1;
rol xmm30_1 xmm20_1 0x1;
(* movabs $0x8000000000008089,%r8                  #! PC = 0x5555555740ac *)
mov r8 0x8000000000008089@uint64;
(* vmovdqa64 %xmm29,-0x58(%rsp)                    #! EA = L0x7fffffffda90; PC = 0x5555555740b6 *)
mov L0x7fffffffda90 xmm29_0;
mov L0x7fffffffda98 xmm29_1;
(* vprolq $0x1,%xmm22,%xmm29                       #! PC = 0x5555555740c1 *)
rol xmm29_0 xmm22_0 0x1;
rol xmm29_1 xmm22_1 0x1;
(* vpxorq -0x78(%rsp),%xmm22,%xmm22                #! EA = L0x7fffffffda70; Value = 0xc0f20faef243da5c; PC = 0x5555555740c8 *)
xor xmm22_0@uint64 xmm22_0 L0x7fffffffda70;
xor xmm22_1@uint64 xmm22_1 L0x7fffffffda78;
(* vpxorq -0x68(%rsp),%xmm20,%xmm20                #! EA = L0x7fffffffda80; Value = 0xbd4595d1f5a0ffd3; PC = 0x5555555740d3 *)
xor xmm20_0@uint64 xmm20_0 L0x7fffffffda80;
xor xmm20_1@uint64 xmm20_1 L0x7fffffffda88;
(* vpxorq -0x58(%rsp),%xmm19,%xmm19                #! EA = L0x7fffffffda90; Value = 0x0efaa9297224a0b6; PC = 0x5555555740de *)
xor xmm19_0@uint64 xmm19_0 L0x7fffffffda90;
xor xmm19_1@uint64 xmm19_1 L0x7fffffffda98;
(* vpxorq %xmm22,%xmm31,%xmm31                     #! PC = 0x5555555740e9 *)
xor xmm31_0@uint64 xmm31_0 xmm22_0;
xor xmm31_1@uint64 xmm31_1 xmm22_1;
(* vprorq $0x14,%xmm31,%xmm31                      #! PC = 0x5555555740ef *)
ror xmm31_0 xmm31_0 0x14;
ror xmm31_1 xmm31_1 0x14;
(* vpxorq %xmm1,%xmm29,%xmm29                      #! PC = 0x5555555740f6 *)
xor xmm29_0@uint64 xmm29_0 xmm1_0;
xor xmm29_1@uint64 xmm29_1 xmm1_1;
(* vpxorq %xmm20,%xmm0,%xmm0                       #! PC = 0x5555555740fc *)
xor xmm0_0@uint64 xmm0_0 xmm20_0;
xor xmm0_1@uint64 xmm0_1 xmm20_1;
(* vpxorq %xmm19,%xmm4,%xmm4                       #! PC = 0x555555574102 *)
xor xmm4_0@uint64 xmm4_0 xmm19_0;
xor xmm4_1@uint64 xmm4_1 xmm19_1;
(* vpxorq %xmm29,%xmm9,%xmm9                       #! PC = 0x555555574108 *)
xor xmm9_0@uint64 xmm9_0 xmm29_0;
xor xmm9_1@uint64 xmm9_1 xmm29_1;
(* vprorq $0x15,%xmm0,%xmm0                        #! PC = 0x55555557410e *)
ror xmm0_0 xmm0_0 0x15;
ror xmm0_1 xmm0_1 0x15;
(* vprolq $0x15,%xmm4,%xmm4                        #! PC = 0x555555574115 *)
rol xmm4_0 xmm4_0 0x15;
rol xmm4_1 xmm4_1 0x15;
(* vprolq $0xe,%xmm9,%xmm9                         #! PC = 0x55555557411c *)
rol xmm9_0 xmm9_0 0xe;
rol xmm9_1 xmm9_1 0xe;
(* vpxorq %xmm18,%xmm30,%xmm30                     #! PC = 0x555555574123 *)
xor xmm30_0@uint64 xmm30_0 xmm18_0;
xor xmm30_1@uint64 xmm30_1 xmm18_1;
(* vpxorq %xmm15,%xmm30,%xmm1                      #! PC = 0x555555574129 *)
xor xmm1_0@uint64 xmm30_0 xmm15_0;
xor xmm1_1@uint64 xmm30_1 xmm15_1;
(* vmovdqa64 %xmm1,%xmm18                          #! PC = 0x55555557412f *)
mov xmm18_0 xmm1_0;
mov xmm18_1 xmm1_1;
(* vmovdqa64 %xmm31,%xmm15                         #! PC = 0x555555574135 *)
mov xmm15_0 xmm31_0;
mov xmm15_1 xmm31_1;
(* vpternlogq $0xd2,%xmm4,%xmm0,%xmm15             #! PC = 0x55555557413b *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm15_0, xmm0_0, xmm4_0, table);
call vpternlogq64 (xmm15_1, xmm0_1, xmm4_1, table);
(* vpternlogq $0xd2,%xmm0,%xmm31,%xmm18            #! PC = 0x555555574142 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm18_0, xmm31_0, xmm0_0, table);
call vpternlogq64 (xmm18_1, xmm31_1, xmm0_1, table);
(* vpternlogq $0xd2,%xmm9,%xmm4,%xmm0              #! PC = 0x555555574149 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm0_0, xmm4_0, xmm9_0, table);
call vpternlogq64 (xmm0_1, xmm4_1, xmm9_1, table);
(* vpternlogq $0xd2,%xmm1,%xmm9,%xmm4              #! PC = 0x555555574150 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm4_0, xmm9_0, xmm1_0, table);
call vpternlogq64 (xmm4_1, xmm9_1, xmm1_1, table);
(* vpternlogq $0xd2,%xmm31,%xmm1,%xmm9             #! PC = 0x555555574157 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm9_0, xmm1_0, xmm31_0, table);
call vpternlogq64 (xmm9_1, xmm1_1, xmm31_1, table);
(* vpbroadcastq %r10,%xmm1                         #! PC = 0x55555557415e *)
mov xmm1_0 r10;
mov xmm1_1 r10;
(* vpxorq %xmm1,%xmm18,%xmm18                      #! PC = 0x555555574164 *)
xor xmm18_0@uint64 xmm18_0 xmm1_0;
xor xmm18_1@uint64 xmm18_1 xmm1_1;
(* vpxorq %xmm19,%xmm5,%xmm5                       #! PC = 0x55555557416a *)
xor xmm5_0@uint64 xmm5_0 xmm19_0;
xor xmm5_1@uint64 xmm5_1 xmm19_1;
(* vpxorq %xmm29,%xmm27,%xmm1                      #! PC = 0x555555574170 *)
xor xmm1_0@uint64 xmm27_0 xmm29_0;
xor xmm1_1@uint64 xmm27_1 xmm29_1;
(* vprolq $0x1c,%xmm5,%xmm5                        #! PC = 0x555555574176 *)
rol xmm5_0 xmm5_0 0x1c;
rol xmm5_1 xmm5_1 0x1c;
(* vprolq $0x14,%xmm1,%xmm1                        #! PC = 0x55555557417d *)
rol xmm1_0 xmm1_0 0x14;
rol xmm1_1 xmm1_1 0x14;
(* vpxorq %xmm30,%xmm6,%xmm6                       #! PC = 0x555555574184 *)
xor xmm6_0@uint64 xmm6_0 xmm30_0;
xor xmm6_1@uint64 xmm6_1 xmm30_1;
(* vpxorq %xmm22,%xmm13,%xmm13                     #! PC = 0x55555557418a *)
xor xmm13_0@uint64 xmm13_0 xmm22_0;
xor xmm13_1@uint64 xmm13_1 xmm22_1;
(* vpxorq %xmm20,%xmm23,%xmm23                     #! PC = 0x555555574190 *)
xor xmm23_0@uint64 xmm23_0 xmm20_0;
xor xmm23_1@uint64 xmm23_1 xmm20_1;
(* vprolq $0x3,%xmm6,%xmm6                         #! PC = 0x555555574196 *)
rol xmm6_0 xmm6_0 0x3;
rol xmm6_1 xmm6_1 0x3;
(* vprorq $0x13,%xmm13,%xmm13                      #! PC = 0x55555557419d *)
ror xmm13_0 xmm13_0 0x13;
ror xmm13_1 xmm13_1 0x13;
(* vprorq $0x3,%xmm23,%xmm23                       #! PC = 0x5555555741a4 *)
ror xmm23_0 xmm23_0 0x3;
ror xmm23_1 xmm23_1 0x3;
(* vmovdqa64 %xmm5,%xmm27                          #! PC = 0x5555555741ab *)
mov xmm27_0 xmm5_0;
mov xmm27_1 xmm5_1;
(* vmovdqa64 %xmm1,%xmm31                          #! PC = 0x5555555741b1 *)
mov xmm31_0 xmm1_0;
mov xmm31_1 xmm1_1;
(* vpxorq %xmm22,%xmm26,%xmm26                     #! PC = 0x5555555741b7 *)
xor xmm26_0@uint64 xmm26_0 xmm22_0;
xor xmm26_1@uint64 xmm26_1 xmm22_1;
(* vpxorq %xmm20,%xmm16,%xmm16                     #! PC = 0x5555555741bd *)
xor xmm16_0@uint64 xmm16_0 xmm20_0;
xor xmm16_1@uint64 xmm16_1 xmm20_1;
(* vprolq $0x1,%xmm26,%xmm26                       #! PC = 0x5555555741c3 *)
rol xmm26_0 xmm26_0 0x1;
rol xmm26_1 xmm26_1 0x1;
(* vprolq $0x6,%xmm16,%xmm16                       #! PC = 0x5555555741ca *)
rol xmm16_0 xmm16_0 0x6;
rol xmm16_1 xmm16_1 0x6;
(* vpternlogq $0xd2,%xmm6,%xmm1,%xmm27             #! PC = 0x5555555741d1 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm27_0, xmm1_0, xmm6_0, table);
call vpternlogq64 (xmm27_1, xmm1_1, xmm6_1, table);
(* vpternlogq $0xd2,%xmm13,%xmm6,%xmm31            #! PC = 0x5555555741d8 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm31_0, xmm6_0, xmm13_0, table);
call vpternlogq64 (xmm31_1, xmm6_1, xmm13_1, table);
(* vpxorq %xmm30,%xmm28,%xmm28                     #! PC = 0x5555555741df *)
xor xmm28_0@uint64 xmm28_0 xmm30_0;
xor xmm28_1@uint64 xmm28_1 xmm30_1;
(* vpternlogq $0xd2,%xmm23,%xmm13,%xmm6            #! PC = 0x5555555741e5 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm6_0, xmm13_0, xmm23_0, table);
call vpternlogq64 (xmm6_1, xmm13_1, xmm23_1, table);
(* vpxorq %xmm29,%xmm3,%xmm3                       #! PC = 0x5555555741ec *)
xor xmm3_0@uint64 xmm3_0 xmm29_0;
xor xmm3_1@uint64 xmm3_1 xmm29_1;
(* vpternlogq $0xd2,%xmm5,%xmm23,%xmm13            #! PC = 0x5555555741f2 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm13_0, xmm23_0, xmm5_0, table);
call vpternlogq64 (xmm13_1, xmm23_1, xmm5_1, table);
(* vpxorq %xmm30,%xmm25,%xmm25                     #! PC = 0x5555555741f9 *)
xor xmm25_0@uint64 xmm25_0 xmm30_0;
xor xmm25_1@uint64 xmm25_1 xmm30_1;
(* vpternlogq $0xd2,%xmm1,%xmm5,%xmm23             #! PC = 0x5555555741ff *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm23_0, xmm5_0, xmm1_0, table);
call vpternlogq64 (xmm23_1, xmm5_1, xmm1_1, table);
(* vpxorq %xmm29,%xmm11,%xmm11                     #! PC = 0x555555574206 *)
xor xmm11_0@uint64 xmm11_0 xmm29_0;
xor xmm11_1@uint64 xmm11_1 xmm29_1;
(* vpxorq %xmm19,%xmm7,%xmm1                       #! PC = 0x55555557420c *)
xor xmm1_0@uint64 xmm7_0 xmm19_0;
xor xmm1_1@uint64 xmm7_1 xmm19_1;
(* vprorq $0x1c,%xmm25,%xmm25                      #! PC = 0x555555574212 *)
ror xmm25_0 xmm25_0 0x1c;
ror xmm25_1 xmm25_1 0x1c;
(* vprolq $0x1b,%xmm11,%xmm11                      #! PC = 0x555555574219 *)
rol xmm11_0 xmm11_0 0x1b;
rol xmm11_1 xmm11_1 0x1b;
(* vprolq $0x12,%xmm28,%xmm28                      #! PC = 0x555555574220 *)
rol xmm28_0 xmm28_0 0x12;
rol xmm28_1 xmm28_1 0x12;
(* vprolq $0x19,%xmm1,%xmm1                        #! PC = 0x555555574227 *)
rol xmm1_0 xmm1_0 0x19;
rol xmm1_1 xmm1_1 0x19;
(* vprolq $0x8,%xmm3,%xmm3                         #! PC = 0x55555557422e *)
rol xmm3_0 xmm3_0 0x8;
rol xmm3_1 xmm3_1 0x8;
(* vpxorq %xmm22,%xmm8,%xmm8                       #! PC = 0x555555574235 *)
xor xmm8_0@uint64 xmm8_0 xmm22_0;
xor xmm8_1@uint64 xmm8_1 xmm22_1;
(* vpxorq %xmm20,%xmm10,%xmm10                     #! PC = 0x55555557423b *)
xor xmm10_0@uint64 xmm10_0 xmm20_0;
xor xmm10_1@uint64 xmm10_1 xmm20_1;
(* vpxorq %xmm19,%xmm12,%xmm12                     #! PC = 0x555555574241 *)
xor xmm12_0@uint64 xmm12_0 xmm19_0;
xor xmm12_1@uint64 xmm12_1 xmm19_1;
(* vprolq $0xa,%xmm8,%xmm8                         #! PC = 0x555555574247 *)
rol xmm8_0 xmm8_0 0xa;
rol xmm8_1 xmm8_1 0xa;
(* vprolq $0xf,%xmm10,%xmm10                       #! PC = 0x55555557424e *)
rol xmm10_0 xmm10_0 0xf;
rol xmm10_1 xmm10_1 0xf;
(* vprorq $0x8,%xmm12,%xmm12                       #! PC = 0x555555574255 *)
ror xmm12_0 xmm12_0 0x8;
ror xmm12_1 xmm12_1 0x8;
(* vmovdqa64 %xmm26,%xmm5                          #! PC = 0x55555557425c *)
mov xmm5_0 xmm26_0;
mov xmm5_1 xmm26_1;
(* vmovdqa64 %xmm16,%xmm7                          #! PC = 0x555555574262 *)
mov xmm7_0 xmm16_0;
mov xmm7_1 xmm16_1;
(* vpternlogq $0xd2,%xmm1,%xmm16,%xmm5             #! PC = 0x555555574268 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm5_0, xmm16_0, xmm1_0, table);
call vpternlogq64 (xmm5_1, xmm16_1, xmm1_1, table);
(* vpternlogq $0xd2,%xmm3,%xmm1,%xmm7              #! PC = 0x55555557426f *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm7_0, xmm1_0, xmm3_0, table);
call vpternlogq64 (xmm7_1, xmm1_1, xmm3_1, table);
(* vpxorq %xmm20,%xmm2,%xmm2                       #! PC = 0x555555574276 *)
xor xmm2_0@uint64 xmm2_0 xmm20_0;
xor xmm2_1@uint64 xmm2_1 xmm20_1;
(* vpternlogq $0xd2,%xmm28,%xmm3,%xmm1             #! PC = 0x55555557427c *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm1_0, xmm3_0, xmm28_0, table);
call vpternlogq64 (xmm1_1, xmm3_1, xmm28_1, table);
(* vpxorq %xmm19,%xmm17,%xmm17                     #! PC = 0x555555574283 *)
xor xmm17_0@uint64 xmm17_0 xmm19_0;
xor xmm17_1@uint64 xmm17_1 xmm19_1;
(* vpternlogq $0xd2,%xmm26,%xmm28,%xmm3            #! PC = 0x555555574289 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm3_0, xmm28_0, xmm26_0, table);
call vpternlogq64 (xmm3_1, xmm28_1, xmm26_1, table);
(* vpternlogq $0xd2,%xmm16,%xmm26,%xmm28           #! PC = 0x555555574290 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm28_0, xmm26_0, xmm16_0, table);
call vpternlogq64 (xmm28_1, xmm26_1, xmm16_1, table);
(* vmovdqa64 %xmm11,%xmm26                         #! PC = 0x555555574297 *)
mov xmm26_0 xmm11_0;
mov xmm26_1 xmm11_1;
(* vmovdqa64 %xmm25,%xmm16                         #! PC = 0x55555557429d *)
mov xmm16_0 xmm25_0;
mov xmm16_1 xmm25_1;
(* vprorq $0x2,%xmm2,%xmm2                         #! PC = 0x5555555742a3 *)
ror xmm2_0 xmm2_0 0x2;
ror xmm2_1 xmm2_1 0x2;
(* vprorq $0x9,%xmm17,%xmm17                       #! PC = 0x5555555742aa *)
ror xmm17_0 xmm17_0 0x9;
ror xmm17_1 xmm17_1 0x9;
(* vpternlogq $0xd2,%xmm8,%xmm25,%xmm26            #! PC = 0x5555555742b1 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm26_0, xmm25_0, xmm8_0, table);
call vpternlogq64 (xmm26_1, xmm25_1, xmm8_1, table);
(* vpternlogq $0xd2,%xmm10,%xmm8,%xmm16            #! PC = 0x5555555742b8 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm16_0, xmm8_0, xmm10_0, table);
call vpternlogq64 (xmm16_1, xmm8_1, xmm10_1, table);
(* vpxorq %xmm30,%xmm21,%xmm21                     #! PC = 0x5555555742bf *)
xor xmm21_0@uint64 xmm21_0 xmm30_0;
xor xmm21_1@uint64 xmm21_1 xmm30_1;
(* vpternlogq $0xd2,%xmm12,%xmm10,%xmm8            #! PC = 0x5555555742c5 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm8_0, xmm10_0, xmm12_0, table);
call vpternlogq64 (xmm8_1, xmm10_1, xmm12_1, table);
(* vpxorq %xmm29,%xmm14,%xmm14                     #! PC = 0x5555555742cc *)
xor xmm14_0@uint64 xmm14_0 xmm29_0;
xor xmm14_1@uint64 xmm14_1 xmm29_1;
(* vpternlogq $0xd2,%xmm11,%xmm12,%xmm10           #! PC = 0x5555555742d2 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm10_0, xmm12_0, xmm11_0, table);
call vpternlogq64 (xmm10_1, xmm12_1, xmm11_1, table);
(* vpternlogq $0xd2,%xmm25,%xmm11,%xmm12           #! PC = 0x5555555742d9 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm12_0, xmm11_0, xmm25_0, table);
call vpternlogq64 (xmm12_1, xmm11_1, xmm25_1, table);
(* vpxorq %xmm22,%xmm24,%xmm11                     #! PC = 0x5555555742e0 *)
xor xmm11_0@uint64 xmm24_0 xmm22_0;
xor xmm11_1@uint64 xmm24_1 xmm22_1;
(* vprorq $0x17,%xmm21,%xmm21                      #! PC = 0x5555555742e6 *)
ror xmm21_0 xmm21_0 0x17;
ror xmm21_1 xmm21_1 0x17;
(* vprolq $0x2,%xmm11,%xmm11                       #! PC = 0x5555555742ed *)
rol xmm11_0 xmm11_0 0x2;
rol xmm11_1 xmm11_1 0x2;
(* vprorq $0x19,%xmm14,%xmm14                      #! PC = 0x5555555742f4 *)
ror xmm14_0 xmm14_0 0x19;
ror xmm14_1 xmm14_1 0x19;
(* vmovdqa64 %xmm2,%xmm19                          #! PC = 0x5555555742fb *)
mov xmm19_0 xmm2_0;
mov xmm19_1 xmm2_1;
(* vmovdqa64 %xmm17,%xmm25                         #! PC = 0x555555574301 *)
mov xmm25_0 xmm17_0;
mov xmm25_1 xmm17_1;
(* vmovdqa64 %xmm12,%xmm22                         #! PC = 0x555555574307 *)
mov xmm22_0 xmm12_0;
mov xmm22_1 xmm12_1;
(* vmovdqa64 %xmm18,%xmm24                         #! PC = 0x55555557430d *)
mov xmm24_0 xmm18_0;
mov xmm24_1 xmm18_1;
(* vpternlogq $0x96,%xmm27,%xmm26,%xmm24           #! PC = 0x555555574313 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm24_0, xmm26_0, xmm27_0, table);
call vpternlogq64 (xmm24_1, xmm26_1, xmm27_1, table);
(* vpternlogq $0xd2,%xmm21,%xmm14,%xmm25           #! PC = 0x55555557431a *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm25_0, xmm14_0, xmm21_0, table);
call vpternlogq64 (xmm25_1, xmm14_1, xmm21_1, table);
(* vpternlogq $0xd2,%xmm14,%xmm17,%xmm19           #! PC = 0x555555574321 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm19_0, xmm17_0, xmm14_0, table);
call vpternlogq64 (xmm19_1, xmm17_1, xmm14_1, table);
(* vpternlogq $0xd2,%xmm11,%xmm21,%xmm14           #! PC = 0x555555574328 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm14_0, xmm21_0, xmm11_0, table);
call vpternlogq64 (xmm14_1, xmm21_1, xmm11_1, table);
(* vpternlogq $0xd2,%xmm2,%xmm11,%xmm21            #! PC = 0x55555557432f *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm21_0, xmm11_0, xmm2_0, table);
call vpternlogq64 (xmm21_1, xmm11_1, xmm2_1, table);
(* vpternlogq $0xd2,%xmm17,%xmm2,%xmm11            #! PC = 0x555555574336 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm11_0, xmm2_0, xmm17_0, table);
call vpternlogq64 (xmm11_1, xmm2_1, xmm17_1, table);
(* vmovdqa64 %xmm14,%xmm17                         #! PC = 0x55555557433d *)
mov xmm17_0 xmm14_0;
mov xmm17_1 xmm14_1;
(* vpternlogq $0x96,%xmm0,%xmm1,%xmm17             #! PC = 0x555555574343 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm17_0, xmm1_0, xmm0_0, table);
call vpternlogq64 (xmm17_1, xmm1_1, xmm0_1, table);
(* vpternlogq $0x96,%xmm6,%xmm8,%xmm17             #! PC = 0x55555557434a *)
mov table 0x96@uint8;
call vpternlogq64 (xmm17_0, xmm8_0, xmm6_0, table);
call vpternlogq64 (xmm17_1, xmm8_1, xmm6_1, table);
(* vprolq $0x1,%xmm17,%xmm29                       #! PC = 0x555555574351 *)
rol xmm29_0 xmm17_0 0x1;
rol xmm29_1 xmm17_1 0x1;
(* vmovdqa %xmm13,%xmm2                            #! PC = 0x555555574358 *)
mov xmm2_0 xmm13_0;
mov xmm2_1 xmm13_1;
(* vpternlogq $0x96,%xmm3,%xmm21,%xmm2             #! PC = 0x55555557435c *)
mov table 0x96@uint8;
call vpternlogq64 (xmm2_0, xmm21_0, xmm3_0, table);
call vpternlogq64 (xmm2_1, xmm21_1, xmm3_1, table);
(* vpternlogq $0x96,%xmm10,%xmm4,%xmm2             #! PC = 0x555555574363 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm2_0, xmm4_0, xmm10_0, table);
call vpternlogq64 (xmm2_1, xmm4_1, xmm10_1, table);
(* vpternlogq $0x96,%xmm11,%xmm23,%xmm22           #! PC = 0x55555557436a *)
mov table 0x96@uint8;
call vpternlogq64 (xmm22_0, xmm23_0, xmm11_0, table);
call vpternlogq64 (xmm22_1, xmm23_1, xmm11_1, table);
(* vpternlogq $0x96,%xmm9,%xmm28,%xmm22            #! PC = 0x555555574371 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm22_0, xmm28_0, xmm9_0, table);
call vpternlogq64 (xmm22_1, xmm28_1, xmm9_1, table);
(* vmovdqa64 %xmm29,-0x78(%rsp)                    #! EA = L0x7fffffffda70; PC = 0x555555574378 *)
mov L0x7fffffffda70 xmm29_0;
mov L0x7fffffffda78 xmm29_1;
(* vprolq $0x1,%xmm2,%xmm29                        #! PC = 0x555555574383 *)
rol xmm29_0 xmm2_0 0x1;
rol xmm29_1 xmm2_1 0x1;
(* vpternlogq $0x96,%xmm5,%xmm19,%xmm24            #! PC = 0x55555557438a *)
mov table 0x96@uint8;
call vpternlogq64 (xmm24_0, xmm19_0, xmm5_0, table);
call vpternlogq64 (xmm24_1, xmm19_1, xmm5_1, table);
(* vmovdqa64 %xmm7,%xmm20                          #! PC = 0x555555574391 *)
mov xmm20_0 xmm7_0;
mov xmm20_1 xmm7_1;
(* vpternlogq $0x96,%xmm16,%xmm15,%xmm20           #! PC = 0x555555574397 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm20_0, xmm15_0, xmm16_0, table);
call vpternlogq64 (xmm20_1, xmm15_1, xmm16_1, table);
(* vpternlogq $0x96,%xmm25,%xmm31,%xmm20           #! PC = 0x55555557439e *)
mov table 0x96@uint8;
call vpternlogq64 (xmm20_0, xmm31_0, xmm25_0, table);
call vpternlogq64 (xmm20_1, xmm31_1, xmm25_1, table);
(* vprolq $0x1,%xmm20,%xmm30                       #! PC = 0x5555555743a5 *)
rol xmm30_0 xmm20_0 0x1;
rol xmm30_1 xmm20_1 0x1;
(* vmovdqa64 %xmm29,-0x68(%rsp)                    #! EA = L0x7fffffffda80; PC = 0x5555555743ac *)
mov L0x7fffffffda80 xmm29_0;
mov L0x7fffffffda88 xmm29_1;
(* vprolq $0x1,%xmm22,%xmm29                       #! PC = 0x5555555743b7 *)
rol xmm29_0 xmm22_0 0x1;
rol xmm29_1 xmm22_1 0x1;
(* vpxorq -0x68(%rsp),%xmm20,%xmm20                #! EA = L0x7fffffffda80; Value = 0x8fb660f359e4ed17; PC = 0x5555555743be *)
xor xmm20_0@uint64 xmm20_0 L0x7fffffffda80;
xor xmm20_1@uint64 xmm20_1 L0x7fffffffda88;
(* movabs $0x8000000000008003,%r9                  #! PC = 0x5555555743c9 *)
mov r9 0x8000000000008003@uint64;
(* vpxorq %xmm20,%xmm1,%xmm1                       #! PC = 0x5555555743d3 *)
xor xmm1_0@uint64 xmm1_0 xmm20_0;
xor xmm1_1@uint64 xmm1_1 xmm20_1;
(* vprorq $0x15,%xmm1,%xmm1                        #! PC = 0x5555555743d9 *)
ror xmm1_0 xmm1_0 0x15;
ror xmm1_1 xmm1_1 0x15;
(* vpxorq %xmm22,%xmm30,%xmm30                     #! PC = 0x5555555743e0 *)
xor xmm30_0@uint64 xmm30_0 xmm22_0;
xor xmm30_1@uint64 xmm30_1 xmm22_1;
(* vmovdqa64 %xmm29,-0x58(%rsp)                    #! EA = L0x7fffffffda90; PC = 0x5555555743e6 *)
mov L0x7fffffffda90 xmm29_0;
mov L0x7fffffffda98 xmm29_1;
(* vprolq $0x1,%xmm24,%xmm29                       #! PC = 0x5555555743f1 *)
rol xmm29_0 xmm24_0 0x1;
rol xmm29_1 xmm24_1 0x1;
(* vpxorq -0x78(%rsp),%xmm24,%xmm24                #! EA = L0x7fffffffda70; Value = 0xd2f6db044f2e5468; PC = 0x5555555743f8 *)
xor xmm24_0@uint64 xmm24_0 L0x7fffffffda70;
xor xmm24_1@uint64 xmm24_1 L0x7fffffffda78;
(* vpxorq -0x58(%rsp),%xmm17,%xmm17                #! EA = L0x7fffffffda90; Value = 0x89dd32f7519fd22d; PC = 0x555555574403 *)
xor xmm17_0@uint64 xmm17_0 L0x7fffffffda90;
xor xmm17_1@uint64 xmm17_1 L0x7fffffffda98;
(* vpxorq %xmm24,%xmm31,%xmm31                     #! PC = 0x55555557440e *)
xor xmm31_0@uint64 xmm31_0 xmm24_0;
xor xmm31_1@uint64 xmm31_1 xmm24_1;
(* vprorq $0x14,%xmm31,%xmm31                      #! PC = 0x555555574414 *)
ror xmm31_0 xmm31_0 0x14;
ror xmm31_1 xmm31_1 0x14;
(* vpxorq %xmm17,%xmm10,%xmm10                     #! PC = 0x55555557441b *)
xor xmm10_0@uint64 xmm10_0 xmm17_0;
xor xmm10_1@uint64 xmm10_1 xmm17_1;
(* vpxorq %xmm2,%xmm29,%xmm29                      #! PC = 0x555555574421 *)
xor xmm29_0@uint64 xmm29_0 xmm2_0;
xor xmm29_1@uint64 xmm29_1 xmm2_1;
(* vpxorq %xmm29,%xmm11,%xmm11                     #! PC = 0x555555574427 *)
xor xmm11_0@uint64 xmm11_0 xmm29_0;
xor xmm11_1@uint64 xmm11_1 xmm29_1;
(* vprolq $0x15,%xmm10,%xmm10                      #! PC = 0x55555557442d *)
rol xmm10_0 xmm10_0 0x15;
rol xmm10_1 xmm10_1 0x15;
(* vprolq $0xe,%xmm11,%xmm11                       #! PC = 0x555555574434 *)
rol xmm11_0 xmm11_0 0xe;
rol xmm11_1 xmm11_1 0xe;
(* vpxorq %xmm18,%xmm30,%xmm2                      #! PC = 0x55555557443b *)
xor xmm2_0@uint64 xmm30_0 xmm18_0;
xor xmm2_1@uint64 xmm30_1 xmm18_1;
(* vmovdqa64 %xmm2,%xmm18                          #! PC = 0x555555574441 *)
mov xmm18_0 xmm2_0;
mov xmm18_1 xmm2_1;
(* vmovdqa64 %xmm31,%xmm22                         #! PC = 0x555555574447 *)
mov xmm22_0 xmm31_0;
mov xmm22_1 xmm31_1;
(* vpternlogq $0xd2,%xmm1,%xmm31,%xmm18            #! PC = 0x55555557444d *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm18_0, xmm31_0, xmm1_0, table);
call vpternlogq64 (xmm18_1, xmm31_1, xmm1_1, table);
(* vpternlogq $0xd2,%xmm10,%xmm1,%xmm22            #! PC = 0x555555574454 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm22_0, xmm1_0, xmm10_0, table);
call vpternlogq64 (xmm22_1, xmm1_1, xmm10_1, table);
(* vpternlogq $0xd2,%xmm11,%xmm10,%xmm1            #! PC = 0x55555557445b *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm1_0, xmm10_0, xmm11_0, table);
call vpternlogq64 (xmm1_1, xmm10_1, xmm11_1, table);
(* vpternlogq $0xd2,%xmm2,%xmm11,%xmm10            #! PC = 0x555555574462 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm10_0, xmm11_0, xmm2_0, table);
call vpternlogq64 (xmm10_1, xmm11_1, xmm2_1, table);
(* vpternlogq $0xd2,%xmm31,%xmm2,%xmm11            #! PC = 0x555555574469 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm11_0, xmm2_0, xmm31_0, table);
call vpternlogq64 (xmm11_1, xmm2_1, xmm31_1, table);
(* vpbroadcastq %rdx,%xmm2                         #! PC = 0x555555574470 *)
mov xmm2_0 rdx;
mov xmm2_1 rdx;
(* vpxorq %xmm2,%xmm18,%xmm18                      #! PC = 0x555555574476 *)
xor xmm18_0@uint64 xmm18_0 xmm2_0;
xor xmm18_1@uint64 xmm18_1 xmm2_1;
(* vpxorq %xmm17,%xmm4,%xmm4                       #! PC = 0x55555557447c *)
xor xmm4_0@uint64 xmm4_0 xmm17_0;
xor xmm4_1@uint64 xmm4_1 xmm17_1;
(* vpxorq %xmm29,%xmm23,%xmm2                      #! PC = 0x555555574482 *)
xor xmm2_0@uint64 xmm23_0 xmm29_0;
xor xmm2_1@uint64 xmm23_1 xmm29_1;
(* vprolq $0x1c,%xmm4,%xmm4                        #! PC = 0x555555574488 *)
rol xmm4_0 xmm4_0 0x1c;
rol xmm4_1 xmm4_1 0x1c;
(* vprolq $0x14,%xmm2,%xmm2                        #! PC = 0x55555557448f *)
rol xmm2_0 xmm2_0 0x14;
rol xmm2_1 xmm2_1 0x14;
(* vpxorq %xmm30,%xmm5,%xmm5                       #! PC = 0x555555574496 *)
xor xmm5_0@uint64 xmm5_0 xmm30_0;
xor xmm5_1@uint64 xmm5_1 xmm30_1;
(* vpxorq %xmm24,%xmm16,%xmm16                     #! PC = 0x55555557449c *)
xor xmm16_0@uint64 xmm16_0 xmm24_0;
xor xmm16_1@uint64 xmm16_1 xmm24_1;
(* vpxorq %xmm20,%xmm14,%xmm14                     #! PC = 0x5555555744a2 *)
xor xmm14_0@uint64 xmm14_0 xmm20_0;
xor xmm14_1@uint64 xmm14_1 xmm20_1;
(* vprolq $0x3,%xmm5,%xmm5                         #! PC = 0x5555555744a8 *)
rol xmm5_0 xmm5_0 0x3;
rol xmm5_1 xmm5_1 0x3;
(* vprorq $0x13,%xmm16,%xmm16                      #! PC = 0x5555555744af *)
ror xmm16_0 xmm16_0 0x13;
ror xmm16_1 xmm16_1 0x13;
(* vprorq $0x3,%xmm14,%xmm14                       #! PC = 0x5555555744b6 *)
ror xmm14_0 xmm14_0 0x3;
ror xmm14_1 xmm14_1 0x3;
(* vmovdqa64 %xmm4,%xmm31                          #! PC = 0x5555555744bd *)
mov xmm31_0 xmm4_0;
mov xmm31_1 xmm4_1;
(* vmovdqa64 %xmm2,%xmm23                          #! PC = 0x5555555744c3 *)
mov xmm23_0 xmm2_0;
mov xmm23_1 xmm2_1;
(* vpxorq %xmm24,%xmm15,%xmm15                     #! PC = 0x5555555744c9 *)
xor xmm15_0@uint64 xmm15_0 xmm24_0;
xor xmm15_1@uint64 xmm15_1 xmm24_1;
(* vpxorq %xmm20,%xmm6,%xmm6                       #! PC = 0x5555555744cf *)
xor xmm6_0@uint64 xmm6_0 xmm20_0;
xor xmm6_1@uint64 xmm6_1 xmm20_1;
(* vprolq $0x1,%xmm15,%xmm15                       #! PC = 0x5555555744d5 *)
rol xmm15_0 xmm15_0 0x1;
rol xmm15_1 xmm15_1 0x1;
(* vprolq $0x6,%xmm6,%xmm6                         #! PC = 0x5555555744dc *)
rol xmm6_0 xmm6_0 0x6;
rol xmm6_1 xmm6_1 0x6;
(* vpternlogq $0xd2,%xmm5,%xmm2,%xmm31             #! PC = 0x5555555744e3 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm31_0, xmm2_0, xmm5_0, table);
call vpternlogq64 (xmm31_1, xmm2_1, xmm5_1, table);
(* vpternlogq $0xd2,%xmm16,%xmm5,%xmm23            #! PC = 0x5555555744ea *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm23_0, xmm5_0, xmm16_0, table);
call vpternlogq64 (xmm23_1, xmm5_1, xmm16_1, table);
(* vpxorq %xmm30,%xmm19,%xmm19                     #! PC = 0x5555555744f1 *)
xor xmm19_0@uint64 xmm19_0 xmm30_0;
xor xmm19_1@uint64 xmm19_1 xmm30_1;
(* vpternlogq $0xd2,%xmm14,%xmm16,%xmm5            #! PC = 0x5555555744f7 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm5_0, xmm16_0, xmm14_0, table);
call vpternlogq64 (xmm5_1, xmm16_1, xmm14_1, table);
(* vpxorq %xmm17,%xmm3,%xmm3                       #! PC = 0x5555555744fe *)
xor xmm3_0@uint64 xmm3_0 xmm17_0;
xor xmm3_1@uint64 xmm3_1 xmm17_1;
(* vpternlogq $0xd2,%xmm4,%xmm14,%xmm16            #! PC = 0x555555574504 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm16_0, xmm14_0, xmm4_0, table);
call vpternlogq64 (xmm16_1, xmm14_1, xmm4_1, table);
(* vpxorq %xmm30,%xmm27,%xmm27                     #! PC = 0x55555557450b *)
xor xmm27_0@uint64 xmm27_0 xmm30_0;
xor xmm27_1@uint64 xmm27_1 xmm30_1;
(* vpternlogq $0xd2,%xmm2,%xmm4,%xmm14             #! PC = 0x555555574511 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm14_0, xmm4_0, xmm2_0, table);
call vpternlogq64 (xmm14_1, xmm4_1, xmm2_1, table);
(* vpxorq %xmm29,%xmm9,%xmm9                       #! PC = 0x555555574518 *)
xor xmm9_0@uint64 xmm9_0 xmm29_0;
xor xmm9_1@uint64 xmm9_1 xmm29_1;
(* vpxorq %xmm29,%xmm12,%xmm2                      #! PC = 0x55555557451e *)
xor xmm2_0@uint64 xmm12_0 xmm29_0;
xor xmm2_1@uint64 xmm12_1 xmm29_1;
(* vprorq $0x1c,%xmm27,%xmm27                      #! PC = 0x555555574524 *)
ror xmm27_0 xmm27_0 0x1c;
ror xmm27_1 xmm27_1 0x1c;
(* vprolq $0x1b,%xmm9,%xmm9                        #! PC = 0x55555557452b *)
rol xmm9_0 xmm9_0 0x1b;
rol xmm9_1 xmm9_1 0x1b;
(* vprolq $0x12,%xmm19,%xmm19                      #! PC = 0x555555574532 *)
rol xmm19_0 xmm19_0 0x12;
rol xmm19_1 xmm19_1 0x12;
(* vprolq $0x19,%xmm3,%xmm3                        #! PC = 0x555555574539 *)
rol xmm3_0 xmm3_0 0x19;
rol xmm3_1 xmm3_1 0x19;
(* vprolq $0x8,%xmm2,%xmm2                         #! PC = 0x555555574540 *)
rol xmm2_0 xmm2_0 0x8;
rol xmm2_1 xmm2_1 0x8;
(* vpxorq %xmm24,%xmm7,%xmm7                       #! PC = 0x555555574547 *)
xor xmm7_0@uint64 xmm7_0 xmm24_0;
xor xmm7_1@uint64 xmm7_1 xmm24_1;
(* vpxorq %xmm20,%xmm8,%xmm8                       #! PC = 0x55555557454d *)
xor xmm8_0@uint64 xmm8_0 xmm20_0;
xor xmm8_1@uint64 xmm8_1 xmm20_1;
(* vpxorq %xmm17,%xmm21,%xmm21                     #! PC = 0x555555574553 *)
xor xmm21_0@uint64 xmm21_0 xmm17_0;
xor xmm21_1@uint64 xmm21_1 xmm17_1;
(* vprolq $0xa,%xmm7,%xmm7                         #! PC = 0x555555574559 *)
rol xmm7_0 xmm7_0 0xa;
rol xmm7_1 xmm7_1 0xa;
(* vprolq $0xf,%xmm8,%xmm8                         #! PC = 0x555555574560 *)
rol xmm8_0 xmm8_0 0xf;
rol xmm8_1 xmm8_1 0xf;
(* vprorq $0x8,%xmm21,%xmm21                       #! PC = 0x555555574567 *)
ror xmm21_0 xmm21_0 0x8;
ror xmm21_1 xmm21_1 0x8;
(* vmovdqa %xmm15,%xmm4                            #! PC = 0x55555557456e *)
mov xmm4_0 xmm15_0;
mov xmm4_1 xmm15_1;
(* vmovdqa %xmm6,%xmm12                            #! PC = 0x555555574572 *)
mov xmm12_0 xmm6_0;
mov xmm12_1 xmm6_1;
(* vpternlogq $0xd2,%xmm3,%xmm6,%xmm4              #! PC = 0x555555574576 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm4_0, xmm6_0, xmm3_0, table);
call vpternlogq64 (xmm4_1, xmm6_1, xmm3_1, table);
(* vpternlogq $0xd2,%xmm2,%xmm3,%xmm12             #! PC = 0x55555557457d *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm12_0, xmm3_0, xmm2_0, table);
call vpternlogq64 (xmm12_1, xmm3_1, xmm2_1, table);
(* vpxorq %xmm17,%xmm13,%xmm13                     #! PC = 0x555555574584 *)
xor xmm13_0@uint64 xmm13_0 xmm17_0;
xor xmm13_1@uint64 xmm13_1 xmm17_1;
(* vpternlogq $0xd2,%xmm19,%xmm2,%xmm3             #! PC = 0x55555557458a *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm3_0, xmm2_0, xmm19_0, table);
call vpternlogq64 (xmm3_1, xmm2_1, xmm19_1, table);
(* vpxorq %xmm20,%xmm0,%xmm0                       #! PC = 0x555555574591 *)
xor xmm0_0@uint64 xmm0_0 xmm20_0;
xor xmm0_1@uint64 xmm0_1 xmm20_1;
(* vpternlogq $0xd2,%xmm15,%xmm19,%xmm2            #! PC = 0x555555574597 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm2_0, xmm19_0, xmm15_0, table);
call vpternlogq64 (xmm2_1, xmm19_1, xmm15_1, table);
(* vpternlogq $0xd2,%xmm6,%xmm15,%xmm19            #! PC = 0x55555557459e *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm19_0, xmm15_0, xmm6_0, table);
call vpternlogq64 (xmm19_1, xmm15_1, xmm6_1, table);
(* vmovdqa %xmm9,%xmm6                             #! PC = 0x5555555745a5 *)
mov xmm6_0 xmm9_0;
mov xmm6_1 xmm9_1;
(* vmovdqa64 %xmm27,%xmm15                         #! PC = 0x5555555745a9 *)
mov xmm15_0 xmm27_0;
mov xmm15_1 xmm27_1;
(* vprorq $0x2,%xmm0,%xmm20                        #! PC = 0x5555555745af *)
ror xmm20_0 xmm0_0 0x2;
ror xmm20_1 xmm0_1 0x2;
(* vpternlogq $0xd2,%xmm7,%xmm27,%xmm6             #! PC = 0x5555555745b6 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm6_0, xmm27_0, xmm7_0, table);
call vpternlogq64 (xmm6_1, xmm27_1, xmm7_1, table);
(* vpternlogq $0xd2,%xmm8,%xmm7,%xmm15             #! PC = 0x5555555745bd *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm15_0, xmm7_0, xmm8_0, table);
call vpternlogq64 (xmm15_1, xmm7_1, xmm8_1, table);
(* vpxorq %xmm30,%xmm26,%xmm26                     #! PC = 0x5555555745c4 *)
xor xmm26_0@uint64 xmm26_0 xmm30_0;
xor xmm26_1@uint64 xmm26_1 xmm30_1;
(* vpternlogq $0xd2,%xmm21,%xmm8,%xmm7             #! PC = 0x5555555745ca *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm7_0, xmm8_0, xmm21_0, table);
call vpternlogq64 (xmm7_1, xmm8_1, xmm21_1, table);
(* vpxorq %xmm29,%xmm28,%xmm28                     #! PC = 0x5555555745d1 *)
xor xmm28_0@uint64 xmm28_0 xmm29_0;
xor xmm28_1@uint64 xmm28_1 xmm29_1;
(* vpternlogq $0xd2,%xmm9,%xmm21,%xmm8             #! PC = 0x5555555745d7 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm8_0, xmm21_0, xmm9_0, table);
call vpternlogq64 (xmm8_1, xmm21_1, xmm9_1, table);
(* vpternlogq $0xd2,%xmm27,%xmm9,%xmm21            #! PC = 0x5555555745de *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm21_0, xmm9_0, xmm27_0, table);
call vpternlogq64 (xmm21_1, xmm9_1, xmm27_1, table);
(* vpxorq %xmm24,%xmm25,%xmm9                      #! PC = 0x5555555745e5 *)
xor xmm9_0@uint64 xmm25_0 xmm24_0;
xor xmm9_1@uint64 xmm25_1 xmm24_1;
(* vprorq $0x9,%xmm13,%xmm24                       #! PC = 0x5555555745eb *)
ror xmm24_0 xmm13_0 0x9;
ror xmm24_1 xmm13_1 0x9;
(* vprorq $0x17,%xmm26,%xmm26                      #! PC = 0x5555555745f2 *)
ror xmm26_0 xmm26_0 0x17;
ror xmm26_1 xmm26_1 0x17;
(* vprolq $0x2,%xmm9,%xmm9                         #! PC = 0x5555555745f9 *)
rol xmm9_0 xmm9_0 0x2;
rol xmm9_1 xmm9_1 0x2;
(* vprorq $0x19,%xmm28,%xmm28                      #! PC = 0x555555574600 *)
ror xmm28_0 xmm28_0 0x19;
ror xmm28_1 xmm28_1 0x19;
(* vmovdqa64 %xmm20,%xmm13                         #! PC = 0x555555574607 *)
mov xmm13_0 xmm20_0;
mov xmm13_1 xmm20_1;
(* vmovdqa64 %xmm5,%xmm25                          #! PC = 0x55555557460d *)
mov xmm25_0 xmm5_0;
mov xmm25_1 xmm5_1;
(* vmovdqa64 %xmm24,%xmm17                         #! PC = 0x555555574613 *)
mov xmm17_0 xmm24_0;
mov xmm17_1 xmm24_1;
(* vmovdqa64 %xmm26,%xmm0                          #! PC = 0x555555574619 *)
mov xmm0_0 xmm26_0;
mov xmm0_1 xmm26_1;
(* vpternlogq $0xd2,%xmm20,%xmm9,%xmm0             #! PC = 0x55555557461f *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm0_0, xmm9_0, xmm20_0, table);
call vpternlogq64 (xmm0_1, xmm9_1, xmm20_1, table);
(* vpternlogq $0xd2,%xmm28,%xmm24,%xmm13           #! PC = 0x555555574626 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm13_0, xmm24_0, xmm28_0, table);
call vpternlogq64 (xmm13_1, xmm24_1, xmm28_1, table);
(* vpternlogq $0xd2,%xmm26,%xmm28,%xmm17           #! PC = 0x55555557462d *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm17_0, xmm28_0, xmm26_0, table);
call vpternlogq64 (xmm17_1, xmm28_1, xmm26_1, table);
(* vpternlogq $0xd2,%xmm9,%xmm26,%xmm28            #! PC = 0x555555574634 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm28_0, xmm26_0, xmm9_0, table);
call vpternlogq64 (xmm28_1, xmm26_1, xmm9_1, table);
(* vpternlogq $0x96,%xmm28,%xmm1,%xmm25            #! PC = 0x55555557463b *)
mov table 0x96@uint8;
call vpternlogq64 (xmm25_0, xmm1_0, xmm28_0, table);
call vpternlogq64 (xmm25_1, xmm1_1, xmm28_1, table);
(* vpternlogq $0x96,%xmm3,%xmm7,%xmm25             #! PC = 0x555555574642 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm25_0, xmm7_0, xmm3_0, table);
call vpternlogq64 (xmm25_1, xmm7_1, xmm3_1, table);
(* vpternlogq $0xd2,%xmm24,%xmm20,%xmm9            #! PC = 0x555555574649 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm9_0, xmm20_0, xmm24_0, table);
call vpternlogq64 (xmm9_1, xmm20_1, xmm24_1, table);
(* vprolq $0x1,%xmm25,%xmm20                       #! PC = 0x555555574650 *)
rol xmm20_0 xmm25_0 0x1;
rol xmm20_1 xmm25_1 0x1;
(* vmovdqa64 %xmm0,%xmm24                          #! PC = 0x555555574657 *)
mov xmm24_0 xmm0_0;
mov xmm24_1 xmm0_1;
(* vpternlogq $0x96,%xmm2,%xmm8,%xmm24             #! PC = 0x55555557465d *)
mov table 0x96@uint8;
call vpternlogq64 (xmm24_0, xmm8_0, xmm2_0, table);
call vpternlogq64 (xmm24_1, xmm8_1, xmm2_1, table);
(* vpternlogq $0x96,%xmm10,%xmm16,%xmm24           #! PC = 0x555555574664 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm24_0, xmm16_0, xmm10_0, table);
call vpternlogq64 (xmm24_1, xmm16_1, xmm10_1, table);
(* vmovdqa64 %xmm19,%xmm29                         #! PC = 0x55555557466b *)
mov xmm29_0 xmm19_0;
mov xmm29_1 xmm19_1;
(* vpternlogq $0x96,%xmm11,%xmm14,%xmm29           #! PC = 0x555555574671 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm29_0, xmm14_0, xmm11_0, table);
call vpternlogq64 (xmm29_1, xmm14_1, xmm11_1, table);
(* vmovdqa64 %xmm20,-0x78(%rsp)                    #! EA = L0x7fffffffda70; PC = 0x555555574678 *)
mov L0x7fffffffda70 xmm20_0;
mov L0x7fffffffda78 xmm20_1;
(* vprolq $0x1,%xmm24,%xmm20                       #! PC = 0x555555574683 *)
rol xmm20_0 xmm24_0 0x1;
rol xmm20_1 xmm24_1 0x1;
(* vpternlogq $0x96,%xmm21,%xmm9,%xmm29            #! PC = 0x55555557468a *)
mov table 0x96@uint8;
call vpternlogq64 (xmm29_0, xmm9_0, xmm21_0, table);
call vpternlogq64 (xmm29_1, xmm9_1, xmm21_1, table);
(* vmovdqa64 %xmm18,%xmm27                         #! PC = 0x555555574691 *)
mov xmm27_0 xmm18_0;
mov xmm27_1 xmm18_1;
(* vpternlogq $0x96,%xmm6,%xmm13,%xmm27            #! PC = 0x555555574697 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm27_0, xmm13_0, xmm6_0, table);
call vpternlogq64 (xmm27_1, xmm13_1, xmm6_1, table);
(* vpternlogq $0x96,%xmm31,%xmm4,%xmm27            #! PC = 0x55555557469e *)
mov table 0x96@uint8;
call vpternlogq64 (xmm27_0, xmm4_0, xmm31_0, table);
call vpternlogq64 (xmm27_1, xmm4_1, xmm31_1, table);
(* vmovdqa64 %xmm15,%xmm26                         #! PC = 0x5555555746a5 *)
mov xmm26_0 xmm15_0;
mov xmm26_1 xmm15_1;
(* vmovdqa64 %xmm20,-0x68(%rsp)                    #! EA = L0x7fffffffda80; PC = 0x5555555746ab *)
mov L0x7fffffffda80 xmm20_0;
mov L0x7fffffffda88 xmm20_1;
(* vprolq $0x1,%xmm29,%xmm20                       #! PC = 0x5555555746b6 *)
rol xmm20_0 xmm29_0 0x1;
rol xmm20_1 xmm29_1 0x1;
(* vpternlogq $0x96,%xmm23,%xmm12,%xmm26           #! PC = 0x5555555746bd *)
mov table 0x96@uint8;
call vpternlogq64 (xmm26_0, xmm12_0, xmm23_0, table);
call vpternlogq64 (xmm26_1, xmm12_1, xmm23_1, table);
(* vpternlogq $0x96,%xmm17,%xmm22,%xmm26           #! PC = 0x5555555746c4 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm26_0, xmm22_0, xmm17_0, table);
call vpternlogq64 (xmm26_1, xmm22_1, xmm17_1, table);
(* vprolq $0x1,%xmm26,%xmm30                       #! PC = 0x5555555746cb *)
rol xmm30_0 xmm26_0 0x1;
rol xmm30_1 xmm26_1 0x1;
(* vpxorq -0x68(%rsp),%xmm26,%xmm26                #! EA = L0x7fffffffda80; Value = 0x0bede207529e9989; PC = 0x5555555746d2 *)
xor xmm26_0@uint64 xmm26_0 L0x7fffffffda80;
xor xmm26_1@uint64 xmm26_1 L0x7fffffffda88;
(* movabs $0x8000000000008002,%r10                 #! PC = 0x5555555746dd *)
mov r10 0x8000000000008002@uint64;
(* vmovdqa64 %xmm20,-0x58(%rsp)                    #! EA = L0x7fffffffda90; PC = 0x5555555746e7 *)
mov L0x7fffffffda90 xmm20_0;
mov L0x7fffffffda98 xmm20_1;
(* vprolq $0x1,%xmm27,%xmm20                       #! PC = 0x5555555746f2 *)
rol xmm20_0 xmm27_0 0x1;
rol xmm20_1 xmm27_1 0x1;
(* vpxorq -0x78(%rsp),%xmm27,%xmm27                #! EA = L0x7fffffffda70; Value = 0x0f463ed3fd981674; PC = 0x5555555746f9 *)
xor xmm27_0@uint64 xmm27_0 L0x7fffffffda70;
xor xmm27_1@uint64 xmm27_1 L0x7fffffffda78;
(* vpxorq -0x58(%rsp),%xmm25,%xmm25                #! EA = L0x7fffffffda90; Value = 0xc4d7c13553e98b0c; PC = 0x555555574704 *)
xor xmm25_0@uint64 xmm25_0 L0x7fffffffda90;
xor xmm25_1@uint64 xmm25_1 L0x7fffffffda98;
(* vpxorq %xmm27,%xmm23,%xmm23                     #! PC = 0x55555557470f *)
xor xmm23_0@uint64 xmm23_0 xmm27_0;
xor xmm23_1@uint64 xmm23_1 xmm27_1;
(* vprorq $0x14,%xmm23,%xmm23                      #! PC = 0x555555574715 *)
ror xmm23_0 xmm23_0 0x14;
ror xmm23_1 xmm23_1 0x14;
(* vpxorq %xmm26,%xmm3,%xmm3                       #! PC = 0x55555557471c *)
xor xmm3_0@uint64 xmm3_0 xmm26_0;
xor xmm3_1@uint64 xmm3_1 xmm26_1;
(* vpxorq %xmm20,%xmm24,%xmm24                     #! PC = 0x555555574722 *)
xor xmm24_0@uint64 xmm24_0 xmm20_0;
xor xmm24_1@uint64 xmm24_1 xmm20_1;
(* vpxorq %xmm25,%xmm8,%xmm8                       #! PC = 0x555555574728 *)
xor xmm8_0@uint64 xmm8_0 xmm25_0;
xor xmm8_1@uint64 xmm8_1 xmm25_1;
(* vpxorq %xmm24,%xmm9,%xmm9                       #! PC = 0x55555557472e *)
xor xmm9_0@uint64 xmm9_0 xmm24_0;
xor xmm9_1@uint64 xmm9_1 xmm24_1;
(* vpxorq %xmm30,%xmm29,%xmm29                     #! PC = 0x555555574734 *)
xor xmm29_0@uint64 xmm29_0 xmm30_0;
xor xmm29_1@uint64 xmm29_1 xmm30_1;
(* vprorq $0x15,%xmm3,%xmm3                        #! PC = 0x55555557473a *)
ror xmm3_0 xmm3_0 0x15;
ror xmm3_1 xmm3_1 0x15;
(* vprolq $0x15,%xmm8,%xmm8                        #! PC = 0x555555574741 *)
rol xmm8_0 xmm8_0 0x15;
rol xmm8_1 xmm8_1 0x15;
(* vprolq $0xe,%xmm9,%xmm9                         #! PC = 0x555555574748 *)
rol xmm9_0 xmm9_0 0xe;
rol xmm9_1 xmm9_1 0xe;
(* vpxorq %xmm25,%xmm10,%xmm10                     #! PC = 0x55555557474f *)
xor xmm10_0@uint64 xmm10_0 xmm25_0;
xor xmm10_1@uint64 xmm10_1 xmm25_1;
(* vpxorq %xmm24,%xmm14,%xmm14                     #! PC = 0x555555574755 *)
xor xmm14_0@uint64 xmm14_0 xmm24_0;
xor xmm14_1@uint64 xmm14_1 xmm24_1;
(* vprolq $0x1c,%xmm10,%xmm10                      #! PC = 0x55555557475b *)
rol xmm10_0 xmm10_0 0x1c;
rol xmm10_1 xmm10_1 0x1c;
(* vprolq $0x14,%xmm14,%xmm14                      #! PC = 0x555555574762 *)
rol xmm14_0 xmm14_0 0x14;
rol xmm14_1 xmm14_1 0x14;
(* vpxorq %xmm29,%xmm4,%xmm4                       #! PC = 0x555555574769 *)
xor xmm4_0@uint64 xmm4_0 xmm29_0;
xor xmm4_1@uint64 xmm4_1 xmm29_1;
(* vpxorq %xmm27,%xmm15,%xmm15                     #! PC = 0x55555557476f *)
xor xmm15_0@uint64 xmm15_0 xmm27_0;
xor xmm15_1@uint64 xmm15_1 xmm27_1;
(* vpxorq %xmm26,%xmm28,%xmm28                     #! PC = 0x555555574775 *)
xor xmm28_0@uint64 xmm28_0 xmm26_0;
xor xmm28_1@uint64 xmm28_1 xmm26_1;
(* vpxorq %xmm27,%xmm22,%xmm22                     #! PC = 0x55555557477b *)
xor xmm22_0@uint64 xmm22_0 xmm27_0;
xor xmm22_1@uint64 xmm22_1 xmm27_1;
(* vpxorq %xmm26,%xmm5,%xmm5                       #! PC = 0x555555574781 *)
xor xmm5_0@uint64 xmm5_0 xmm26_0;
xor xmm5_1@uint64 xmm5_1 xmm26_1;
(* vprolq $0x1,%xmm22,%xmm22                       #! PC = 0x555555574787 *)
rol xmm22_0 xmm22_0 0x1;
rol xmm22_1 xmm22_1 0x1;
(* vprolq $0x6,%xmm5,%xmm5                         #! PC = 0x55555557478e *)
rol xmm5_0 xmm5_0 0x6;
rol xmm5_1 xmm5_1 0x6;
(* vprolq $0x3,%xmm4,%xmm4                         #! PC = 0x555555574795 *)
rol xmm4_0 xmm4_0 0x3;
rol xmm4_1 xmm4_1 0x3;
(* vprorq $0x13,%xmm15,%xmm15                      #! PC = 0x55555557479c *)
ror xmm15_0 xmm15_0 0x13;
ror xmm15_1 xmm15_1 0x13;
(* vprorq $0x3,%xmm28,%xmm28                       #! PC = 0x5555555747a3 *)
ror xmm28_0 xmm28_0 0x3;
ror xmm28_1 xmm28_1 0x3;
(* vpxorq %xmm29,%xmm13,%xmm13                     #! PC = 0x5555555747aa *)
xor xmm13_0@uint64 xmm13_0 xmm29_0;
xor xmm13_1@uint64 xmm13_1 xmm29_1;
(* vpxorq %xmm25,%xmm2,%xmm2                       #! PC = 0x5555555747b0 *)
xor xmm2_0@uint64 xmm2_0 xmm25_0;
xor xmm2_1@uint64 xmm2_1 xmm25_1;
(* vpxorq %xmm24,%xmm21,%xmm21                     #! PC = 0x5555555747b6 *)
xor xmm21_0@uint64 xmm21_0 xmm24_0;
xor xmm21_1@uint64 xmm21_1 xmm24_1;
(* vpxorq %xmm29,%xmm31,%xmm31                     #! PC = 0x5555555747bc *)
xor xmm31_0@uint64 xmm31_0 xmm29_0;
xor xmm31_1@uint64 xmm31_1 xmm29_1;
(* vpxorq %xmm24,%xmm11,%xmm11                     #! PC = 0x5555555747c2 *)
xor xmm11_0@uint64 xmm11_0 xmm24_0;
xor xmm11_1@uint64 xmm11_1 xmm24_1;
(* vprorq $0x1c,%xmm31,%xmm31                      #! PC = 0x5555555747c8 *)
ror xmm31_0 xmm31_0 0x1c;
ror xmm31_1 xmm31_1 0x1c;
(* vprolq $0x1b,%xmm11,%xmm11                      #! PC = 0x5555555747cf *)
rol xmm11_0 xmm11_0 0x1b;
rol xmm11_1 xmm11_1 0x1b;
(* vprolq $0x12,%xmm13,%xmm13                      #! PC = 0x5555555747d6 *)
rol xmm13_0 xmm13_0 0x12;
rol xmm13_1 xmm13_1 0x12;
(* vprolq $0x19,%xmm2,%xmm2                        #! PC = 0x5555555747dd *)
rol xmm2_0 xmm2_0 0x19;
rol xmm2_1 xmm2_1 0x19;
(* vprolq $0x8,%xmm21,%xmm21                       #! PC = 0x5555555747e4 *)
rol xmm21_0 xmm21_0 0x8;
rol xmm21_1 xmm21_1 0x8;
(* vpxorq %xmm27,%xmm12,%xmm12                     #! PC = 0x5555555747eb *)
xor xmm12_0@uint64 xmm12_0 xmm27_0;
xor xmm12_1@uint64 xmm12_1 xmm27_1;
(* vpxorq %xmm26,%xmm7,%xmm7                       #! PC = 0x5555555747f1 *)
xor xmm7_0@uint64 xmm7_0 xmm26_0;
xor xmm7_1@uint64 xmm7_1 xmm26_1;
(* vpxorq %xmm25,%xmm0,%xmm0                       #! PC = 0x5555555747f7 *)
xor xmm0_0@uint64 xmm0_0 xmm25_0;
xor xmm0_1@uint64 xmm0_1 xmm25_1;
(* vpxorq %xmm26,%xmm1,%xmm1                       #! PC = 0x5555555747fd *)
xor xmm1_0@uint64 xmm1_0 xmm26_0;
xor xmm1_1@uint64 xmm1_1 xmm26_1;
(* vpxorq %xmm25,%xmm16,%xmm16                     #! PC = 0x555555574803 *)
xor xmm16_0@uint64 xmm16_0 xmm25_0;
xor xmm16_1@uint64 xmm16_1 xmm25_1;
(* vpxorq %xmm18,%xmm29,%xmm18                     #! PC = 0x555555574809 *)
xor xmm18_0@uint64 xmm29_0 xmm18_0;
xor xmm18_1@uint64 xmm29_1 xmm18_1;
(* vprorq $0x2,%xmm1,%xmm1                         #! PC = 0x55555557480f *)
ror xmm1_0 xmm1_0 0x2;
ror xmm1_1 xmm1_1 0x2;
(* vprorq $0x9,%xmm16,%xmm25                       #! PC = 0x555555574816 *)
ror xmm25_0 xmm16_0 0x9;
ror xmm25_1 xmm16_1 0x9;
(* vprolq $0xa,%xmm12,%xmm12                       #! PC = 0x55555557481d *)
rol xmm12_0 xmm12_0 0xa;
rol xmm12_1 xmm12_1 0xa;
(* vprolq $0xf,%xmm7,%xmm7                         #! PC = 0x555555574824 *)
rol xmm7_0 xmm7_0 0xf;
rol xmm7_1 xmm7_1 0xf;
(* vprorq $0x8,%xmm0,%xmm0                         #! PC = 0x55555557482b *)
ror xmm0_0 xmm0_0 0x8;
ror xmm0_1 xmm0_1 0x8;
(* vpxorq %xmm29,%xmm6,%xmm6                       #! PC = 0x555555574832 *)
xor xmm6_0@uint64 xmm6_0 xmm29_0;
xor xmm6_1@uint64 xmm6_1 xmm29_1;
(* vpxorq %xmm27,%xmm17,%xmm17                     #! PC = 0x555555574838 *)
xor xmm17_0@uint64 xmm17_0 xmm27_0;
xor xmm17_1@uint64 xmm17_1 xmm27_1;
(* vpxorq %xmm24,%xmm19,%xmm19                     #! PC = 0x55555557483e *)
xor xmm19_0@uint64 xmm19_0 xmm24_0;
xor xmm19_1@uint64 xmm19_1 xmm24_1;
(* vprorq $0x17,%xmm6,%xmm6                        #! PC = 0x555555574844 *)
ror xmm6_0 xmm6_0 0x17;
ror xmm6_1 xmm6_1 0x17;
(* vprolq $0x2,%xmm17,%xmm17                       #! PC = 0x55555557484b *)
rol xmm17_0 xmm17_0 0x2;
rol xmm17_1 xmm17_1 0x2;
(* vprorq $0x19,%xmm19,%xmm19                      #! PC = 0x555555574852 *)
ror xmm19_0 xmm19_0 0x19;
ror xmm19_1 xmm19_1 0x19;
(* vmovdqa64 %xmm18,%xmm30                         #! PC = 0x555555574859 *)
mov xmm30_0 xmm18_0;
mov xmm30_1 xmm18_1;
(* vmovdqa64 %xmm23,%xmm20                         #! PC = 0x55555557485f *)
mov xmm20_0 xmm23_0;
mov xmm20_1 xmm23_1;
(* vpternlogq $0xd2,%xmm3,%xmm23,%xmm30            #! PC = 0x555555574865 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm30_0, xmm23_0, xmm3_0, table);
call vpternlogq64 (xmm30_1, xmm23_1, xmm3_1, table);
(* vpternlogq $0xd2,%xmm8,%xmm3,%xmm20             #! PC = 0x55555557486c *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm20_0, xmm3_0, xmm8_0, table);
call vpternlogq64 (xmm20_1, xmm3_1, xmm8_1, table);
(* vpternlogq $0xd2,%xmm9,%xmm8,%xmm3              #! PC = 0x555555574873 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm3_0, xmm8_0, xmm9_0, table);
call vpternlogq64 (xmm3_1, xmm8_1, xmm9_1, table);
(* vpternlogq $0xd2,%xmm18,%xmm9,%xmm8             #! PC = 0x55555557487a *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm8_0, xmm9_0, xmm18_0, table);
call vpternlogq64 (xmm8_1, xmm9_1, xmm18_1, table);
(* vpternlogq $0xd2,%xmm23,%xmm18,%xmm9            #! PC = 0x555555574881 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm9_0, xmm18_0, xmm23_0, table);
call vpternlogq64 (xmm9_1, xmm18_1, xmm23_1, table);
(* vpbroadcastq %rcx,%xmm18                        #! PC = 0x555555574888 *)
mov xmm18_0 rcx;
mov xmm18_1 rcx;
(* vpxorq %xmm30,%xmm18,%xmm18                     #! PC = 0x55555557488e *)
xor xmm18_0@uint64 xmm18_0 xmm30_0;
xor xmm18_1@uint64 xmm18_1 xmm30_1;
(* vmovdqa64 %xmm14,%xmm23                         #! PC = 0x555555574894 *)
mov xmm23_0 xmm14_0;
mov xmm23_1 xmm14_1;
(* vmovdqa64 %xmm10,%xmm30                         #! PC = 0x55555557489a *)
mov xmm30_0 xmm10_0;
mov xmm30_1 xmm10_1;
(* vpternlogq $0xd2,%xmm4,%xmm14,%xmm30            #! PC = 0x5555555748a0 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm30_0, xmm14_0, xmm4_0, table);
call vpternlogq64 (xmm30_1, xmm14_1, xmm4_1, table);
(* vpternlogq $0xd2,%xmm15,%xmm4,%xmm23            #! PC = 0x5555555748a7 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm23_0, xmm4_0, xmm15_0, table);
call vpternlogq64 (xmm23_1, xmm4_1, xmm15_1, table);
(* vpternlogq $0xd2,%xmm28,%xmm15,%xmm4            #! PC = 0x5555555748ae *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm4_0, xmm15_0, xmm28_0, table);
call vpternlogq64 (xmm4_1, xmm15_1, xmm28_1, table);
(* vpternlogq $0xd2,%xmm10,%xmm28,%xmm15           #! PC = 0x5555555748b5 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm15_0, xmm28_0, xmm10_0, table);
call vpternlogq64 (xmm15_1, xmm28_1, xmm10_1, table);
(* vpternlogq $0xd2,%xmm14,%xmm10,%xmm28           #! PC = 0x5555555748bc *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm28_0, xmm10_0, xmm14_0, table);
call vpternlogq64 (xmm28_1, xmm10_1, xmm14_1, table);
(* vmovdqa64 %xmm22,%xmm14                         #! PC = 0x5555555748c3 *)
mov xmm14_0 xmm22_0;
mov xmm14_1 xmm22_1;
(* vmovdqa %xmm5,%xmm10                            #! PC = 0x5555555748c9 *)
mov xmm10_0 xmm5_0;
mov xmm10_1 xmm5_1;
(* vpternlogq $0xd2,%xmm2,%xmm5,%xmm14             #! PC = 0x5555555748cd *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm14_0, xmm5_0, xmm2_0, table);
call vpternlogq64 (xmm14_1, xmm5_1, xmm2_1, table);
(* vpternlogq $0xd2,%xmm21,%xmm2,%xmm10            #! PC = 0x5555555748d4 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm10_0, xmm2_0, xmm21_0, table);
call vpternlogq64 (xmm10_1, xmm2_1, xmm21_1, table);
(* vpternlogq $0xd2,%xmm13,%xmm21,%xmm2            #! PC = 0x5555555748db *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm2_0, xmm21_0, xmm13_0, table);
call vpternlogq64 (xmm2_1, xmm21_1, xmm13_1, table);
(* vpternlogq $0xd2,%xmm22,%xmm13,%xmm21           #! PC = 0x5555555748e2 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm21_0, xmm13_0, xmm22_0, table);
call vpternlogq64 (xmm21_1, xmm13_1, xmm22_1, table);
(* vpternlogq $0xd2,%xmm5,%xmm22,%xmm13            #! PC = 0x5555555748e9 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm13_0, xmm22_0, xmm5_0, table);
call vpternlogq64 (xmm13_1, xmm22_1, xmm5_1, table);
(* vmovdqa %xmm11,%xmm5                            #! PC = 0x5555555748f0 *)
mov xmm5_0 xmm11_0;
mov xmm5_1 xmm11_1;
(* vmovdqa64 %xmm31,%xmm22                         #! PC = 0x5555555748f4 *)
mov xmm22_0 xmm31_0;
mov xmm22_1 xmm31_1;
(* vpternlogq $0xd2,%xmm12,%xmm31,%xmm5            #! PC = 0x5555555748fa *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm5_0, xmm31_0, xmm12_0, table);
call vpternlogq64 (xmm5_1, xmm31_1, xmm12_1, table);
(* vpternlogq $0xd2,%xmm7,%xmm12,%xmm22            #! PC = 0x555555574901 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm22_0, xmm12_0, xmm7_0, table);
call vpternlogq64 (xmm22_1, xmm12_1, xmm7_1, table);
(* vmovdqa64 %xmm25,%xmm16                         #! PC = 0x555555574908 *)
mov xmm16_0 xmm25_0;
mov xmm16_1 xmm25_1;
(* vpternlogq $0xd2,%xmm0,%xmm7,%xmm12             #! PC = 0x55555557490e *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm12_0, xmm7_0, xmm0_0, table);
call vpternlogq64 (xmm12_1, xmm7_1, xmm0_1, table);
(* vpternlogq $0xd2,%xmm11,%xmm0,%xmm7             #! PC = 0x555555574915 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm7_0, xmm0_0, xmm11_0, table);
call vpternlogq64 (xmm7_1, xmm0_1, xmm11_1, table);
(* vpternlogq $0xd2,%xmm31,%xmm11,%xmm0            #! PC = 0x55555557491c *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm0_0, xmm11_0, xmm31_0, table);
call vpternlogq64 (xmm0_1, xmm11_1, xmm31_1, table);
(* vmovdqa %xmm1,%xmm11                            #! PC = 0x555555574923 *)
mov xmm11_0 xmm1_0;
mov xmm11_1 xmm1_1;
(* vpternlogq $0xd2,%xmm19,%xmm25,%xmm11           #! PC = 0x555555574927 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm11_0, xmm25_0, xmm19_0, table);
call vpternlogq64 (xmm11_1, xmm25_1, xmm19_1, table);
(* vpternlogq $0xd2,%xmm6,%xmm19,%xmm16            #! PC = 0x55555557492e *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm16_0, xmm19_0, xmm6_0, table);
call vpternlogq64 (xmm16_1, xmm19_1, xmm6_1, table);
(* vpternlogq $0xd2,%xmm17,%xmm6,%xmm19            #! PC = 0x555555574935 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm19_0, xmm6_0, xmm17_0, table);
call vpternlogq64 (xmm19_1, xmm6_1, xmm17_1, table);
(* vpternlogq $0xd2,%xmm1,%xmm17,%xmm6             #! PC = 0x55555557493c *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm6_0, xmm17_0, xmm1_0, table);
call vpternlogq64 (xmm6_1, xmm17_1, xmm1_1, table);
(* vpternlogq $0xd2,%xmm25,%xmm1,%xmm17            #! PC = 0x555555574943 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm17_0, xmm1_0, xmm25_0, table);
call vpternlogq64 (xmm17_1, xmm1_1, xmm25_1, table);
(* vmovdqa64 %xmm2,%xmm25                          #! PC = 0x55555557494a *)
mov xmm25_0 xmm2_0;
mov xmm25_1 xmm2_1;
(* vpternlogq $0x96,%xmm4,%xmm19,%xmm25            #! PC = 0x555555574950 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm25_0, xmm19_0, xmm4_0, table);
call vpternlogq64 (xmm25_1, xmm19_1, xmm4_1, table);
(* vpternlogq $0x96,%xmm3,%xmm12,%xmm25            #! PC = 0x555555574957 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm25_0, xmm12_0, xmm3_0, table);
call vpternlogq64 (xmm25_1, xmm12_1, xmm3_1, table);
(* vprolq $0x1,%xmm25,%xmm1                        #! PC = 0x55555557495e *)
rol xmm1_0 xmm25_0 0x1;
rol xmm1_1 xmm25_1 0x1;
(* vmovdqa64 %xmm7,%xmm24                          #! PC = 0x555555574965 *)
mov xmm24_0 xmm7_0;
mov xmm24_1 xmm7_1;
(* vpternlogq $0x96,%xmm21,%xmm8,%xmm24            #! PC = 0x55555557496b *)
mov table 0x96@uint8;
call vpternlogq64 (xmm24_0, xmm8_0, xmm21_0, table);
call vpternlogq64 (xmm24_1, xmm8_1, xmm21_1, table);
(* vpternlogq $0x96,%xmm15,%xmm6,%xmm24            #! PC = 0x555555574972 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm24_0, xmm6_0, xmm15_0, table);
call vpternlogq64 (xmm24_1, xmm6_1, xmm15_1, table);
(* vmovdqa64 %xmm17,%xmm29                         #! PC = 0x555555574979 *)
mov xmm29_0 xmm17_0;
mov xmm29_1 xmm17_1;
(* vpternlogq $0x96,%xmm0,%xmm28,%xmm29            #! PC = 0x55555557497f *)
mov table 0x96@uint8;
call vpternlogq64 (xmm29_0, xmm28_0, xmm0_0, table);
call vpternlogq64 (xmm29_1, xmm28_1, xmm0_1, table);
(* vmovdqa %xmm1,-0x78(%rsp)                       #! EA = L0x7fffffffda70; PC = 0x555555574986 *)
mov L0x7fffffffda70 xmm1_0;
mov L0x7fffffffda78 xmm1_1;
(* vprolq $0x1,%xmm24,%xmm1                        #! PC = 0x55555557498c *)
rol xmm1_0 xmm24_0 0x1;
rol xmm1_1 xmm24_1 0x1;
(* vpternlogq $0x96,%xmm13,%xmm9,%xmm29            #! PC = 0x555555574993 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm29_0, xmm9_0, xmm13_0, table);
call vpternlogq64 (xmm29_1, xmm9_1, xmm13_1, table);
(* vmovdqa64 %xmm18,%xmm27                         #! PC = 0x55555557499a *)
mov xmm27_0 xmm18_0;
mov xmm27_1 xmm18_1;
(* vpternlogq $0x96,%xmm11,%xmm14,%xmm27           #! PC = 0x5555555749a0 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm27_0, xmm14_0, xmm11_0, table);
call vpternlogq64 (xmm27_1, xmm14_1, xmm11_1, table);
(* vpternlogq $0x96,%xmm5,%xmm30,%xmm27            #! PC = 0x5555555749a7 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm27_0, xmm30_0, xmm5_0, table);
call vpternlogq64 (xmm27_1, xmm30_1, xmm5_1, table);
(* vmovdqa64 %xmm23,%xmm26                         #! PC = 0x5555555749ae *)
mov xmm26_0 xmm23_0;
mov xmm26_1 xmm23_1;
(* vmovdqa %xmm1,-0x68(%rsp)                       #! EA = L0x7fffffffda80; PC = 0x5555555749b4 *)
mov L0x7fffffffda80 xmm1_0;
mov L0x7fffffffda88 xmm1_1;
(* vprolq $0x1,%xmm29,%xmm1                        #! PC = 0x5555555749ba *)
rol xmm1_0 xmm29_0 0x1;
rol xmm1_1 xmm29_1 0x1;
(* vpternlogq $0x96,%xmm20,%xmm22,%xmm26           #! PC = 0x5555555749c1 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm26_0, xmm22_0, xmm20_0, table);
call vpternlogq64 (xmm26_1, xmm22_1, xmm20_1, table);
(* vpternlogq $0x96,%xmm16,%xmm10,%xmm26           #! PC = 0x5555555749c8 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm26_0, xmm10_0, xmm16_0, table);
call vpternlogq64 (xmm26_1, xmm10_1, xmm16_1, table);
(* vprolq $0x1,%xmm26,%xmm31                       #! PC = 0x5555555749cf *)
rol xmm31_0 xmm26_0 0x1;
rol xmm31_1 xmm26_1 0x1;
(* vpxorq -0x68(%rsp),%xmm26,%xmm26                #! EA = L0x7fffffffda80; Value = 0x9c68d6a8a6768590; PC = 0x5555555749d6 *)
xor xmm26_0@uint64 xmm26_0 L0x7fffffffda80;
xor xmm26_1@uint64 xmm26_1 L0x7fffffffda88;
(* movabs $0x8000000000000080,%rdx                 #! PC = 0x5555555749e1 *)
mov rdx 0x8000000000000080@uint64;
(* vmovdqa %xmm1,-0x58(%rsp)                       #! EA = L0x7fffffffda90; PC = 0x5555555749eb *)
mov L0x7fffffffda90 xmm1_0;
mov L0x7fffffffda98 xmm1_1;
(* vprolq $0x1,%xmm27,%xmm1                        #! PC = 0x5555555749f1 *)
rol xmm1_0 xmm27_0 0x1;
rol xmm1_1 xmm27_1 0x1;
(* vpxorq -0x78(%rsp),%xmm27,%xmm27                #! EA = L0x7fffffffda70; Value = 0xc38bc2eb5cea4aca; PC = 0x5555555749f8 *)
xor xmm27_0@uint64 xmm27_0 L0x7fffffffda70;
xor xmm27_1@uint64 xmm27_1 L0x7fffffffda78;
(* vpxorq -0x58(%rsp),%xmm25,%xmm25                #! EA = L0x7fffffffda90; Value = 0xb278cea4b26e2a4d; PC = 0x555555574a03 *)
xor xmm25_0@uint64 xmm25_0 L0x7fffffffda90;
xor xmm25_1@uint64 xmm25_1 L0x7fffffffda98;
(* vpxorq %xmm27,%xmm23,%xmm23                     #! PC = 0x555555574a0e *)
xor xmm23_0@uint64 xmm23_0 xmm27_0;
xor xmm23_1@uint64 xmm23_1 xmm27_1;
(* vprorq $0x14,%xmm23,%xmm23                      #! PC = 0x555555574a14 *)
ror xmm23_0 xmm23_0 0x14;
ror xmm23_1 xmm23_1 0x14;
(* vpxorq %xmm26,%xmm2,%xmm2                       #! PC = 0x555555574a1b *)
xor xmm2_0@uint64 xmm2_0 xmm26_0;
xor xmm2_1@uint64 xmm2_1 xmm26_1;
(* vpxorq %xmm1,%xmm24,%xmm24                      #! PC = 0x555555574a21 *)
xor xmm24_0@uint64 xmm24_0 xmm1_0;
xor xmm24_1@uint64 xmm24_1 xmm1_1;
(* vpxorq %xmm25,%xmm7,%xmm7                       #! PC = 0x555555574a27 *)
xor xmm7_0@uint64 xmm7_0 xmm25_0;
xor xmm7_1@uint64 xmm7_1 xmm25_1;
(* vpxorq %xmm24,%xmm17,%xmm17                     #! PC = 0x555555574a2d *)
xor xmm17_0@uint64 xmm17_0 xmm24_0;
xor xmm17_1@uint64 xmm17_1 xmm24_1;
(* vprorq $0x15,%xmm2,%xmm2                        #! PC = 0x555555574a33 *)
ror xmm2_0 xmm2_0 0x15;
ror xmm2_1 xmm2_1 0x15;
(* vprolq $0x15,%xmm7,%xmm7                        #! PC = 0x555555574a3a *)
rol xmm7_0 xmm7_0 0x15;
rol xmm7_1 xmm7_1 0x15;
(* vprolq $0xe,%xmm17,%xmm17                       #! PC = 0x555555574a41 *)
rol xmm17_0 xmm17_0 0xe;
rol xmm17_1 xmm17_1 0xe;
(* vpxorq %xmm31,%xmm29,%xmm29                     #! PC = 0x555555574a48 *)
xor xmm29_0@uint64 xmm29_0 xmm31_0;
xor xmm29_1@uint64 xmm29_1 xmm31_1;
(* vpxorq %xmm29,%xmm18,%xmm1                      #! PC = 0x555555574a4e *)
xor xmm1_0@uint64 xmm18_0 xmm29_0;
xor xmm1_1@uint64 xmm18_1 xmm29_1;
(* vmovdqa64 %xmm1,%xmm31                          #! PC = 0x555555574a54 *)
mov xmm31_0 xmm1_0;
mov xmm31_1 xmm1_1;
(* vmovdqa64 %xmm23,%xmm18                         #! PC = 0x555555574a5a *)
mov xmm18_0 xmm23_0;
mov xmm18_1 xmm23_1;
(* vpternlogq $0xd2,%xmm2,%xmm23,%xmm31            #! PC = 0x555555574a60 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm31_0, xmm23_0, xmm2_0, table);
call vpternlogq64 (xmm31_1, xmm23_1, xmm2_1, table);
(* vpternlogq $0xd2,%xmm7,%xmm2,%xmm18             #! PC = 0x555555574a67 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm18_0, xmm2_0, xmm7_0, table);
call vpternlogq64 (xmm18_1, xmm2_1, xmm7_1, table);
(* vpxorq %xmm25,%xmm8,%xmm8                       #! PC = 0x555555574a6e *)
xor xmm8_0@uint64 xmm8_0 xmm25_0;
xor xmm8_1@uint64 xmm8_1 xmm25_1;
(* vpternlogq $0xd2,%xmm17,%xmm7,%xmm2             #! PC = 0x555555574a74 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm2_0, xmm7_0, xmm17_0, table);
call vpternlogq64 (xmm2_1, xmm7_1, xmm17_1, table);
(* vpternlogq $0xd2,%xmm1,%xmm17,%xmm7             #! PC = 0x555555574a7b *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm7_0, xmm17_0, xmm1_0, table);
call vpternlogq64 (xmm7_1, xmm17_1, xmm1_1, table);
(* vpternlogq $0xd2,%xmm23,%xmm1,%xmm17            #! PC = 0x555555574a82 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm17_0, xmm1_0, xmm23_0, table);
call vpternlogq64 (xmm17_1, xmm1_1, xmm23_1, table);
(* vpxorq %xmm24,%xmm28,%xmm1                      #! PC = 0x555555574a89 *)
xor xmm1_0@uint64 xmm28_0 xmm24_0;
xor xmm1_1@uint64 xmm28_1 xmm24_1;
(* vprolq $0x1c,%xmm8,%xmm8                        #! PC = 0x555555574a8f *)
rol xmm8_0 xmm8_0 0x1c;
rol xmm8_1 xmm8_1 0x1c;
(* vprolq $0x14,%xmm1,%xmm1                        #! PC = 0x555555574a96 *)
rol xmm1_0 xmm1_0 0x14;
rol xmm1_1 xmm1_1 0x14;
(* vpxorq %xmm29,%xmm14,%xmm14                     #! PC = 0x555555574a9d *)
xor xmm14_0@uint64 xmm14_0 xmm29_0;
xor xmm14_1@uint64 xmm14_1 xmm29_1;
(* vpxorq %xmm27,%xmm22,%xmm22                     #! PC = 0x555555574aa3 *)
xor xmm22_0@uint64 xmm22_0 xmm27_0;
xor xmm22_1@uint64 xmm22_1 xmm27_1;
(* vpxorq %xmm26,%xmm19,%xmm19                     #! PC = 0x555555574aa9 *)
xor xmm19_0@uint64 xmm19_0 xmm26_0;
xor xmm19_1@uint64 xmm19_1 xmm26_1;
(* vprolq $0x3,%xmm14,%xmm14                       #! PC = 0x555555574aaf *)
rol xmm14_0 xmm14_0 0x3;
rol xmm14_1 xmm14_1 0x3;
(* vprorq $0x13,%xmm22,%xmm22                      #! PC = 0x555555574ab6 *)
ror xmm22_0 xmm22_0 0x13;
ror xmm22_1 xmm22_1 0x13;
(* vprorq $0x3,%xmm19,%xmm19                       #! PC = 0x555555574abd *)
ror xmm19_0 xmm19_0 0x3;
ror xmm19_1 xmm19_1 0x3;
(* vpbroadcastq %r11,%xmm23                        #! PC = 0x555555574ac4 *)
mov xmm23_0 r11;
mov xmm23_1 r11;
(* vpxorq %xmm31,%xmm23,%xmm23                     #! PC = 0x555555574aca *)
xor xmm23_0@uint64 xmm23_0 xmm31_0;
xor xmm23_1@uint64 xmm23_1 xmm31_1;
(* vmovdqa64 %xmm1,%xmm28                          #! PC = 0x555555574ad0 *)
mov xmm28_0 xmm1_0;
mov xmm28_1 xmm1_1;
(* vmovdqa64 %xmm8,%xmm31                          #! PC = 0x555555574ad6 *)
mov xmm31_0 xmm8_0;
mov xmm31_1 xmm8_1;
(* vpxorq %xmm27,%xmm20,%xmm20                     #! PC = 0x555555574adc *)
xor xmm20_0@uint64 xmm20_0 xmm27_0;
xor xmm20_1@uint64 xmm20_1 xmm27_1;
(* vpxorq %xmm26,%xmm4,%xmm4                       #! PC = 0x555555574ae2 *)
xor xmm4_0@uint64 xmm4_0 xmm26_0;
xor xmm4_1@uint64 xmm4_1 xmm26_1;
(* vprolq $0x1,%xmm20,%xmm20                       #! PC = 0x555555574ae8 *)
rol xmm20_0 xmm20_0 0x1;
rol xmm20_1 xmm20_1 0x1;
(* vprolq $0x6,%xmm4,%xmm4                         #! PC = 0x555555574aef *)
rol xmm4_0 xmm4_0 0x6;
rol xmm4_1 xmm4_1 0x6;
(* vpternlogq $0xd2,%xmm14,%xmm1,%xmm31            #! PC = 0x555555574af6 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm31_0, xmm1_0, xmm14_0, table);
call vpternlogq64 (xmm31_1, xmm1_1, xmm14_1, table);
(* vpternlogq $0xd2,%xmm22,%xmm14,%xmm28           #! PC = 0x555555574afd *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm28_0, xmm14_0, xmm22_0, table);
call vpternlogq64 (xmm28_1, xmm14_1, xmm22_1, table);
(* vpxorq %xmm29,%xmm11,%xmm11                     #! PC = 0x555555574b04 *)
xor xmm11_0@uint64 xmm11_0 xmm29_0;
xor xmm11_1@uint64 xmm11_1 xmm29_1;
(* vpternlogq $0xd2,%xmm19,%xmm22,%xmm14           #! PC = 0x555555574b0a *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm14_0, xmm22_0, xmm19_0, table);
call vpternlogq64 (xmm14_1, xmm22_1, xmm19_1, table);
(* vpxorq %xmm24,%xmm0,%xmm0                       #! PC = 0x555555574b11 *)
xor xmm0_0@uint64 xmm0_0 xmm24_0;
xor xmm0_1@uint64 xmm0_1 xmm24_1;
(* vpternlogq $0xd2,%xmm8,%xmm19,%xmm22            #! PC = 0x555555574b17 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm22_0, xmm19_0, xmm8_0, table);
call vpternlogq64 (xmm22_1, xmm19_1, xmm8_1, table);
(* vpxorq %xmm29,%xmm30,%xmm30                     #! PC = 0x555555574b1e *)
xor xmm30_0@uint64 xmm30_0 xmm29_0;
xor xmm30_1@uint64 xmm30_1 xmm29_1;
(* vpternlogq $0xd2,%xmm1,%xmm8,%xmm19             #! PC = 0x555555574b24 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm19_0, xmm8_0, xmm1_0, table);
call vpternlogq64 (xmm19_1, xmm8_1, xmm1_1, table);
(* vpxorq %xmm24,%xmm9,%xmm9                       #! PC = 0x555555574b2b *)
xor xmm9_0@uint64 xmm9_0 xmm24_0;
xor xmm9_1@uint64 xmm9_1 xmm24_1;
(* vpxorq %xmm25,%xmm21,%xmm1                      #! PC = 0x555555574b31 *)
xor xmm1_0@uint64 xmm21_0 xmm25_0;
xor xmm1_1@uint64 xmm21_1 xmm25_1;
(* vprorq $0x1c,%xmm30,%xmm30                      #! PC = 0x555555574b37 *)
ror xmm30_0 xmm30_0 0x1c;
ror xmm30_1 xmm30_1 0x1c;
(* vprolq $0x1b,%xmm9,%xmm9                        #! PC = 0x555555574b3e *)
rol xmm9_0 xmm9_0 0x1b;
rol xmm9_1 xmm9_1 0x1b;
(* vprolq $0x12,%xmm11,%xmm11                      #! PC = 0x555555574b45 *)
rol xmm11_0 xmm11_0 0x12;
rol xmm11_1 xmm11_1 0x12;
(* vprolq $0x19,%xmm1,%xmm1                        #! PC = 0x555555574b4c *)
rol xmm1_0 xmm1_0 0x19;
rol xmm1_1 xmm1_1 0x19;
(* vprolq $0x8,%xmm0,%xmm0                         #! PC = 0x555555574b53 *)
rol xmm0_0 xmm0_0 0x8;
rol xmm0_1 xmm0_1 0x8;
(* vpxorq %xmm27,%xmm10,%xmm10                     #! PC = 0x555555574b5a *)
xor xmm10_0@uint64 xmm10_0 xmm27_0;
xor xmm10_1@uint64 xmm10_1 xmm27_1;
(* vpxorq %xmm26,%xmm12,%xmm12                     #! PC = 0x555555574b60 *)
xor xmm12_0@uint64 xmm12_0 xmm26_0;
xor xmm12_1@uint64 xmm12_1 xmm26_1;
(* vpxorq %xmm25,%xmm6,%xmm6                       #! PC = 0x555555574b66 *)
xor xmm6_0@uint64 xmm6_0 xmm25_0;
xor xmm6_1@uint64 xmm6_1 xmm25_1;
(* vpxorq %xmm26,%xmm3,%xmm3                       #! PC = 0x555555574b6c *)
xor xmm3_0@uint64 xmm3_0 xmm26_0;
xor xmm3_1@uint64 xmm3_1 xmm26_1;
(* vpxorq %xmm25,%xmm15,%xmm15                     #! PC = 0x555555574b72 *)
xor xmm15_0@uint64 xmm15_0 xmm25_0;
xor xmm15_1@uint64 xmm15_1 xmm25_1;
(* vprorq $0x2,%xmm3,%xmm3                         #! PC = 0x555555574b78 *)
ror xmm3_0 xmm3_0 0x2;
ror xmm3_1 xmm3_1 0x2;
(* vprorq $0x9,%xmm15,%xmm25                       #! PC = 0x555555574b7f *)
ror xmm25_0 xmm15_0 0x9;
ror xmm25_1 xmm15_1 0x9;
(* vprolq $0xa,%xmm10,%xmm10                       #! PC = 0x555555574b86 *)
rol xmm10_0 xmm10_0 0xa;
rol xmm10_1 xmm10_1 0xa;
(* vprolq $0xf,%xmm12,%xmm12                       #! PC = 0x555555574b8d *)
rol xmm12_0 xmm12_0 0xf;
rol xmm12_1 xmm12_1 0xf;
(* vprorq $0x8,%xmm6,%xmm6                         #! PC = 0x555555574b94 *)
ror xmm6_0 xmm6_0 0x8;
ror xmm6_1 xmm6_1 0x8;
(* vpxorq %xmm29,%xmm5,%xmm5                       #! PC = 0x555555574b9b *)
xor xmm5_0@uint64 xmm5_0 xmm29_0;
xor xmm5_1@uint64 xmm5_1 xmm29_1;
(* vpxorq %xmm27,%xmm16,%xmm16                     #! PC = 0x555555574ba1 *)
xor xmm16_0@uint64 xmm16_0 xmm27_0;
xor xmm16_1@uint64 xmm16_1 xmm27_1;
(* vpxorq %xmm24,%xmm13,%xmm13                     #! PC = 0x555555574ba7 *)
xor xmm13_0@uint64 xmm13_0 xmm24_0;
xor xmm13_1@uint64 xmm13_1 xmm24_1;
(* vprorq $0x17,%xmm5,%xmm5                        #! PC = 0x555555574bad *)
ror xmm5_0 xmm5_0 0x17;
ror xmm5_1 xmm5_1 0x17;
(* vprolq $0x2,%xmm16,%xmm16                       #! PC = 0x555555574bb4 *)
rol xmm16_0 xmm16_0 0x2;
rol xmm16_1 xmm16_1 0x2;
(* vprorq $0x19,%xmm13,%xmm13                      #! PC = 0x555555574bbb *)
ror xmm13_0 xmm13_0 0x19;
ror xmm13_1 xmm13_1 0x19;
(* vmovdqa64 %xmm20,%xmm21                         #! PC = 0x555555574bc2 *)
mov xmm21_0 xmm20_0;
mov xmm21_1 xmm20_1;
(* vmovdqa %xmm4,%xmm8                             #! PC = 0x555555574bc8 *)
mov xmm8_0 xmm4_0;
mov xmm8_1 xmm4_1;
(* vpternlogq $0xd2,%xmm1,%xmm4,%xmm21             #! PC = 0x555555574bcc *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm21_0, xmm4_0, xmm1_0, table);
call vpternlogq64 (xmm21_1, xmm4_1, xmm1_1, table);
(* vpternlogq $0xd2,%xmm0,%xmm1,%xmm8              #! PC = 0x555555574bd3 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm8_0, xmm1_0, xmm0_0, table);
call vpternlogq64 (xmm8_1, xmm1_1, xmm0_1, table);
(* vpternlogq $0xd2,%xmm11,%xmm0,%xmm1             #! PC = 0x555555574bda *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm1_0, xmm0_0, xmm11_0, table);
call vpternlogq64 (xmm1_1, xmm0_1, xmm11_1, table);
(* vpternlogq $0xd2,%xmm20,%xmm11,%xmm0            #! PC = 0x555555574be1 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm0_0, xmm11_0, xmm20_0, table);
call vpternlogq64 (xmm0_1, xmm11_1, xmm20_1, table);
(* vpternlogq $0xd2,%xmm4,%xmm20,%xmm11            #! PC = 0x555555574be8 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm11_0, xmm20_0, xmm4_0, table);
call vpternlogq64 (xmm11_1, xmm20_1, xmm4_1, table);
(* vmovdqa %xmm9,%xmm4                             #! PC = 0x555555574bef *)
mov xmm4_0 xmm9_0;
mov xmm4_1 xmm9_1;
(* vmovdqa64 %xmm30,%xmm20                         #! PC = 0x555555574bf3 *)
mov xmm20_0 xmm30_0;
mov xmm20_1 xmm30_1;
(* vpternlogq $0xd2,%xmm10,%xmm30,%xmm4            #! PC = 0x555555574bf9 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm4_0, xmm30_0, xmm10_0, table);
call vpternlogq64 (xmm4_1, xmm30_1, xmm10_1, table);
(* vpternlogq $0xd2,%xmm12,%xmm10,%xmm20           #! PC = 0x555555574c00 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm20_0, xmm10_0, xmm12_0, table);
call vpternlogq64 (xmm20_1, xmm10_1, xmm12_1, table);
(* vmovdqa64 %xmm25,%xmm15                         #! PC = 0x555555574c07 *)
mov xmm15_0 xmm25_0;
mov xmm15_1 xmm25_1;
(* vpternlogq $0xd2,%xmm6,%xmm12,%xmm10            #! PC = 0x555555574c0d *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm10_0, xmm12_0, xmm6_0, table);
call vpternlogq64 (xmm10_1, xmm12_1, xmm6_1, table);
(* vpternlogq $0xd2,%xmm9,%xmm6,%xmm12             #! PC = 0x555555574c14 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm12_0, xmm6_0, xmm9_0, table);
call vpternlogq64 (xmm12_1, xmm6_1, xmm9_1, table);
(* vpternlogq $0xd2,%xmm30,%xmm9,%xmm6             #! PC = 0x555555574c1b *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm6_0, xmm9_0, xmm30_0, table);
call vpternlogq64 (xmm6_1, xmm9_1, xmm30_1, table);
(* vmovdqa %xmm3,%xmm9                             #! PC = 0x555555574c22 *)
mov xmm9_0 xmm3_0;
mov xmm9_1 xmm3_1;
(* vpternlogq $0xd2,%xmm13,%xmm25,%xmm9            #! PC = 0x555555574c26 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm9_0, xmm25_0, xmm13_0, table);
call vpternlogq64 (xmm9_1, xmm25_1, xmm13_1, table);
(* vpternlogq $0xd2,%xmm5,%xmm13,%xmm15            #! PC = 0x555555574c2d *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm15_0, xmm13_0, xmm5_0, table);
call vpternlogq64 (xmm15_1, xmm13_1, xmm5_1, table);
(* vpternlogq $0xd2,%xmm16,%xmm5,%xmm13            #! PC = 0x555555574c34 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm13_0, xmm5_0, xmm16_0, table);
call vpternlogq64 (xmm13_1, xmm5_1, xmm16_1, table);
(* vpternlogq $0xd2,%xmm3,%xmm16,%xmm5             #! PC = 0x555555574c3b *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm5_0, xmm16_0, xmm3_0, table);
call vpternlogq64 (xmm5_1, xmm16_1, xmm3_1, table);
(* vpternlogq $0xd2,%xmm25,%xmm3,%xmm16            #! PC = 0x555555574c42 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm16_0, xmm3_0, xmm25_0, table);
call vpternlogq64 (xmm16_1, xmm3_1, xmm25_1, table);
(* vmovdqa64 %xmm2,%xmm25                          #! PC = 0x555555574c49 *)
mov xmm25_0 xmm2_0;
mov xmm25_1 xmm2_1;
(* vpternlogq $0x96,%xmm1,%xmm14,%xmm25            #! PC = 0x555555574c4f *)
mov table 0x96@uint8;
call vpternlogq64 (xmm25_0, xmm14_0, xmm1_0, table);
call vpternlogq64 (xmm25_1, xmm14_1, xmm1_1, table);
(* vpternlogq $0x96,%xmm13,%xmm10,%xmm25           #! PC = 0x555555574c56 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm25_0, xmm10_0, xmm13_0, table);
call vpternlogq64 (xmm25_1, xmm10_1, xmm13_1, table);
(* vprolq $0x1,%xmm25,%xmm29                       #! PC = 0x555555574c5d *)
rol xmm29_0 xmm25_0 0x1;
rol xmm29_1 xmm25_1 0x1;
(* vmovdqa64 %xmm7,%xmm24                          #! PC = 0x555555574c64 *)
mov xmm24_0 xmm7_0;
mov xmm24_1 xmm7_1;
(* vpternlogq $0x96,%xmm0,%xmm22,%xmm24            #! PC = 0x555555574c6a *)
mov table 0x96@uint8;
call vpternlogq64 (xmm24_0, xmm22_0, xmm0_0, table);
call vpternlogq64 (xmm24_1, xmm22_1, xmm0_1, table);
(* vpternlogq $0x96,%xmm5,%xmm12,%xmm24            #! PC = 0x555555574c71 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm24_0, xmm12_0, xmm5_0, table);
call vpternlogq64 (xmm24_1, xmm12_1, xmm5_1, table);
(* vmovdqa64 %xmm17,%xmm3                          #! PC = 0x555555574c78 *)
mov xmm3_0 xmm17_0;
mov xmm3_1 xmm17_1;
(* vpternlogq $0x96,%xmm11,%xmm19,%xmm3            #! PC = 0x555555574c7e *)
mov table 0x96@uint8;
call vpternlogq64 (xmm3_0, xmm19_0, xmm11_0, table);
call vpternlogq64 (xmm3_1, xmm19_1, xmm11_1, table);
(* vmovdqa64 %xmm29,-0x78(%rsp)                    #! EA = L0x7fffffffda70; PC = 0x555555574c85 *)
mov L0x7fffffffda70 xmm29_0;
mov L0x7fffffffda78 xmm29_1;
(* vprolq $0x1,%xmm24,%xmm29                       #! PC = 0x555555574c90 *)
rol xmm29_0 xmm24_0 0x1;
rol xmm29_1 xmm24_1 0x1;
(* vpternlogq $0x96,%xmm16,%xmm6,%xmm3             #! PC = 0x555555574c97 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm3_0, xmm6_0, xmm16_0, table);
call vpternlogq64 (xmm3_1, xmm6_1, xmm16_1, table);
(* vmovdqa64 %xmm23,%xmm27                         #! PC = 0x555555574c9e *)
mov xmm27_0 xmm23_0;
mov xmm27_1 xmm23_1;
(* vpternlogq $0x96,%xmm21,%xmm31,%xmm27           #! PC = 0x555555574ca4 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm27_0, xmm31_0, xmm21_0, table);
call vpternlogq64 (xmm27_1, xmm31_1, xmm21_1, table);
(* vpternlogq $0x96,%xmm9,%xmm4,%xmm27             #! PC = 0x555555574cab *)
mov table 0x96@uint8;
call vpternlogq64 (xmm27_0, xmm4_0, xmm9_0, table);
call vpternlogq64 (xmm27_1, xmm4_1, xmm9_1, table);
(* vmovdqa64 %xmm18,%xmm26                         #! PC = 0x555555574cb2 *)
mov xmm26_0 xmm18_0;
mov xmm26_1 xmm18_1;
(* vmovdqa64 %xmm29,-0x68(%rsp)                    #! EA = L0x7fffffffda80; PC = 0x555555574cb8 *)
mov L0x7fffffffda80 xmm29_0;
mov L0x7fffffffda88 xmm29_1;
(* vprolq $0x1,%xmm3,%xmm29                        #! PC = 0x555555574cc3 *)
rol xmm29_0 xmm3_0 0x1;
rol xmm29_1 xmm3_1 0x1;
(* vpternlogq $0x96,%xmm8,%xmm28,%xmm26            #! PC = 0x555555574cca *)
mov table 0x96@uint8;
call vpternlogq64 (xmm26_0, xmm28_0, xmm8_0, table);
call vpternlogq64 (xmm26_1, xmm28_1, xmm8_1, table);
(* vpternlogq $0x96,%xmm15,%xmm20,%xmm26           #! PC = 0x555555574cd1 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm26_0, xmm20_0, xmm15_0, table);
call vpternlogq64 (xmm26_1, xmm20_1, xmm15_1, table);
(* vprolq $0x1,%xmm26,%xmm30                       #! PC = 0x555555574cd8 *)
rol xmm30_0 xmm26_0 0x1;
rol xmm30_1 xmm26_1 0x1;
(* vpxorq -0x68(%rsp),%xmm26,%xmm26                #! EA = L0x7fffffffda80; Value = 0x8ce12543c425bc42; PC = 0x555555574cdf *)
xor xmm26_0@uint64 xmm26_0 L0x7fffffffda80;
xor xmm26_1@uint64 xmm26_1 L0x7fffffffda88;
(* mov    $0x800a,%ecx                             #! PC = 0x555555574cea *)
mov rcx 0x800a@uint64;
(* vmovdqa64 %xmm29,-0x58(%rsp)                    #! EA = L0x7fffffffda90; PC = 0x555555574cef *)
mov L0x7fffffffda90 xmm29_0;
mov L0x7fffffffda98 xmm29_1;
(* vprolq $0x1,%xmm27,%xmm29                       #! PC = 0x555555574cfa *)
rol xmm29_0 xmm27_0 0x1;
rol xmm29_1 xmm27_1 0x1;
(* vpxorq -0x78(%rsp),%xmm27,%xmm27                #! EA = L0x7fffffffda70; Value = 0x542dfe732b55285d; PC = 0x555555574d01 *)
xor xmm27_0@uint64 xmm27_0 L0x7fffffffda70;
xor xmm27_1@uint64 xmm27_1 L0x7fffffffda78;
(* vpxorq -0x58(%rsp),%xmm25,%xmm25                #! EA = L0x7fffffffda90; Value = 0x09394e48abc8db89; PC = 0x555555574d0c *)
xor xmm25_0@uint64 xmm25_0 L0x7fffffffda90;
xor xmm25_1@uint64 xmm25_1 L0x7fffffffda98;
(* vpxorq %xmm27,%xmm28,%xmm28                     #! PC = 0x555555574d17 *)
xor xmm28_0@uint64 xmm28_0 xmm27_0;
xor xmm28_1@uint64 xmm28_1 xmm27_1;
(* vprorq $0x14,%xmm28,%xmm28                      #! PC = 0x555555574d1d *)
ror xmm28_0 xmm28_0 0x14;
ror xmm28_1 xmm28_1 0x14;
(* vpxorq %xmm26,%xmm1,%xmm1                       #! PC = 0x555555574d24 *)
xor xmm1_0@uint64 xmm1_0 xmm26_0;
xor xmm1_1@uint64 xmm1_1 xmm26_1;
(* vpxorq %xmm29,%xmm24,%xmm24                     #! PC = 0x555555574d2a *)
xor xmm24_0@uint64 xmm24_0 xmm29_0;
xor xmm24_1@uint64 xmm24_1 xmm29_1;
(* vpxorq %xmm25,%xmm12,%xmm12                     #! PC = 0x555555574d30 *)
xor xmm12_0@uint64 xmm12_0 xmm25_0;
xor xmm12_1@uint64 xmm12_1 xmm25_1;
(* vpxorq %xmm24,%xmm16,%xmm16                     #! PC = 0x555555574d36 *)
xor xmm16_0@uint64 xmm16_0 xmm24_0;
xor xmm16_1@uint64 xmm16_1 xmm24_1;
(* vpxorq %xmm30,%xmm3,%xmm3                       #! PC = 0x555555574d3c *)
xor xmm3_0@uint64 xmm3_0 xmm30_0;
xor xmm3_1@uint64 xmm3_1 xmm30_1;
(* vprorq $0x15,%xmm1,%xmm1                        #! PC = 0x555555574d42 *)
ror xmm1_0 xmm1_0 0x15;
ror xmm1_1 xmm1_1 0x15;
(* vprolq $0x15,%xmm12,%xmm12                      #! PC = 0x555555574d49 *)
rol xmm12_0 xmm12_0 0x15;
rol xmm12_1 xmm12_1 0x15;
(* vprolq $0xe,%xmm16,%xmm16                       #! PC = 0x555555574d50 *)
rol xmm16_0 xmm16_0 0xe;
rol xmm16_1 xmm16_1 0xe;
(* vpxorq %xmm25,%xmm7,%xmm7                       #! PC = 0x555555574d57 *)
xor xmm7_0@uint64 xmm7_0 xmm25_0;
xor xmm7_1@uint64 xmm7_1 xmm25_1;
(* vpxorq %xmm24,%xmm19,%xmm19                     #! PC = 0x555555574d5d *)
xor xmm19_0@uint64 xmm19_0 xmm24_0;
xor xmm19_1@uint64 xmm19_1 xmm24_1;
(* vprolq $0x1c,%xmm7,%xmm7                        #! PC = 0x555555574d63 *)
rol xmm7_0 xmm7_0 0x1c;
rol xmm7_1 xmm7_1 0x1c;
(* vprolq $0x14,%xmm19,%xmm19                      #! PC = 0x555555574d6a *)
rol xmm19_0 xmm19_0 0x14;
rol xmm19_1 xmm19_1 0x14;
(* vpxorq %xmm3,%xmm21,%xmm21                      #! PC = 0x555555574d71 *)
xor xmm21_0@uint64 xmm21_0 xmm3_0;
xor xmm21_1@uint64 xmm21_1 xmm3_1;
(* vpxorq %xmm27,%xmm20,%xmm20                     #! PC = 0x555555574d77 *)
xor xmm20_0@uint64 xmm20_0 xmm27_0;
xor xmm20_1@uint64 xmm20_1 xmm27_1;
(* vpxorq %xmm26,%xmm13,%xmm13                     #! PC = 0x555555574d7d *)
xor xmm13_0@uint64 xmm13_0 xmm26_0;
xor xmm13_1@uint64 xmm13_1 xmm26_1;
(* vpxorq %xmm27,%xmm18,%xmm18                     #! PC = 0x555555574d83 *)
xor xmm18_0@uint64 xmm18_0 xmm27_0;
xor xmm18_1@uint64 xmm18_1 xmm27_1;
(* vpxorq %xmm26,%xmm14,%xmm14                     #! PC = 0x555555574d89 *)
xor xmm14_0@uint64 xmm14_0 xmm26_0;
xor xmm14_1@uint64 xmm14_1 xmm26_1;
(* vprolq $0x1,%xmm18,%xmm18                       #! PC = 0x555555574d8f *)
rol xmm18_0 xmm18_0 0x1;
rol xmm18_1 xmm18_1 0x1;
(* vprolq $0x6,%xmm14,%xmm14                       #! PC = 0x555555574d96 *)
rol xmm14_0 xmm14_0 0x6;
rol xmm14_1 xmm14_1 0x6;
(* vprolq $0x3,%xmm21,%xmm21                       #! PC = 0x555555574d9d *)
rol xmm21_0 xmm21_0 0x3;
rol xmm21_1 xmm21_1 0x3;
(* vprorq $0x13,%xmm20,%xmm20                      #! PC = 0x555555574da4 *)
ror xmm20_0 xmm20_0 0x13;
ror xmm20_1 xmm20_1 0x13;
(* vprorq $0x3,%xmm13,%xmm13                       #! PC = 0x555555574dab *)
ror xmm13_0 xmm13_0 0x3;
ror xmm13_1 xmm13_1 0x3;
(* vpxor  %xmm3,%xmm9,%xmm9                        #! PC = 0x555555574db2 *)
xor xmm9_0@uint64 xmm9_0 xmm3_0;
xor xmm9_1@uint64 xmm9_1 xmm3_1;
(* vpxorq %xmm25,%xmm0,%xmm0                       #! PC = 0x555555574db6 *)
xor xmm0_0@uint64 xmm0_0 xmm25_0;
xor xmm0_1@uint64 xmm0_1 xmm25_1;
(* vpxorq %xmm24,%xmm6,%xmm6                       #! PC = 0x555555574dbc *)
xor xmm6_0@uint64 xmm6_0 xmm24_0;
xor xmm6_1@uint64 xmm6_1 xmm24_1;
(* vpxorq %xmm3,%xmm31,%xmm31                      #! PC = 0x555555574dc2 *)
xor xmm31_0@uint64 xmm31_0 xmm3_0;
xor xmm31_1@uint64 xmm31_1 xmm3_1;
(* vpxorq %xmm24,%xmm17,%xmm17                     #! PC = 0x555555574dc8 *)
xor xmm17_0@uint64 xmm17_0 xmm24_0;
xor xmm17_1@uint64 xmm17_1 xmm24_1;
(* vprorq $0x1c,%xmm31,%xmm31                      #! PC = 0x555555574dce *)
ror xmm31_0 xmm31_0 0x1c;
ror xmm31_1 xmm31_1 0x1c;
(* vprolq $0x1b,%xmm17,%xmm17                      #! PC = 0x555555574dd5 *)
rol xmm17_0 xmm17_0 0x1b;
rol xmm17_1 xmm17_1 0x1b;
(* vprolq $0x12,%xmm9,%xmm9                        #! PC = 0x555555574ddc *)
rol xmm9_0 xmm9_0 0x12;
rol xmm9_1 xmm9_1 0x12;
(* vprolq $0x19,%xmm0,%xmm0                        #! PC = 0x555555574de3 *)
rol xmm0_0 xmm0_0 0x19;
rol xmm0_1 xmm0_1 0x19;
(* vprolq $0x8,%xmm6,%xmm6                         #! PC = 0x555555574dea *)
rol xmm6_0 xmm6_0 0x8;
rol xmm6_1 xmm6_1 0x8;
(* vpxorq %xmm27,%xmm8,%xmm8                       #! PC = 0x555555574df1 *)
xor xmm8_0@uint64 xmm8_0 xmm27_0;
xor xmm8_1@uint64 xmm8_1 xmm27_1;
(* vpxorq %xmm26,%xmm10,%xmm10                     #! PC = 0x555555574df7 *)
xor xmm10_0@uint64 xmm10_0 xmm26_0;
xor xmm10_1@uint64 xmm10_1 xmm26_1;
(* vpxorq %xmm25,%xmm5,%xmm5                       #! PC = 0x555555574dfd *)
xor xmm5_0@uint64 xmm5_0 xmm25_0;
xor xmm5_1@uint64 xmm5_1 xmm25_1;
(* vpxorq %xmm26,%xmm2,%xmm2                       #! PC = 0x555555574e03 *)
xor xmm2_0@uint64 xmm2_0 xmm26_0;
xor xmm2_1@uint64 xmm2_1 xmm26_1;
(* vpxorq %xmm25,%xmm22,%xmm22                     #! PC = 0x555555574e09 *)
xor xmm22_0@uint64 xmm22_0 xmm25_0;
xor xmm22_1@uint64 xmm22_1 xmm25_1;
(* vpxorq %xmm3,%xmm23,%xmm23                      #! PC = 0x555555574e0f *)
xor xmm23_0@uint64 xmm23_0 xmm3_0;
xor xmm23_1@uint64 xmm23_1 xmm3_1;
(* vprorq $0x2,%xmm2,%xmm2                         #! PC = 0x555555574e15 *)
ror xmm2_0 xmm2_0 0x2;
ror xmm2_1 xmm2_1 0x2;
(* vprorq $0x9,%xmm22,%xmm22                       #! PC = 0x555555574e1c *)
ror xmm22_0 xmm22_0 0x9;
ror xmm22_1 xmm22_1 0x9;
(* vprolq $0xa,%xmm8,%xmm8                         #! PC = 0x555555574e23 *)
rol xmm8_0 xmm8_0 0xa;
rol xmm8_1 xmm8_1 0xa;
(* vprolq $0xf,%xmm10,%xmm10                       #! PC = 0x555555574e2a *)
rol xmm10_0 xmm10_0 0xf;
rol xmm10_1 xmm10_1 0xf;
(* vprorq $0x8,%xmm5,%xmm5                         #! PC = 0x555555574e31 *)
ror xmm5_0 xmm5_0 0x8;
ror xmm5_1 xmm5_1 0x8;
(* vpxor  %xmm3,%xmm4,%xmm3                        #! PC = 0x555555574e38 *)
xor xmm3_0@uint64 xmm4_0 xmm3_0;
xor xmm3_1@uint64 xmm4_1 xmm3_1;
(* vpxorq %xmm27,%xmm15,%xmm15                     #! PC = 0x555555574e3c *)
xor xmm15_0@uint64 xmm15_0 xmm27_0;
xor xmm15_1@uint64 xmm15_1 xmm27_1;
(* vpxorq %xmm24,%xmm11,%xmm11                     #! PC = 0x555555574e42 *)
xor xmm11_0@uint64 xmm11_0 xmm24_0;
xor xmm11_1@uint64 xmm11_1 xmm24_1;
(* vprorq $0x17,%xmm3,%xmm3                        #! PC = 0x555555574e48 *)
ror xmm3_0 xmm3_0 0x17;
ror xmm3_1 xmm3_1 0x17;
(* vprolq $0x2,%xmm15,%xmm15                       #! PC = 0x555555574e4f *)
rol xmm15_0 xmm15_0 0x2;
rol xmm15_1 xmm15_1 0x2;
(* vprorq $0x19,%xmm11,%xmm11                      #! PC = 0x555555574e56 *)
ror xmm11_0 xmm11_0 0x19;
ror xmm11_1 xmm11_1 0x19;
(* vmovdqa64 %xmm23,%xmm30                         #! PC = 0x555555574e5d *)
mov xmm30_0 xmm23_0;
mov xmm30_1 xmm23_1;
(* vmovdqa64 %xmm28,%xmm29                         #! PC = 0x555555574e63 *)
mov xmm29_0 xmm28_0;
mov xmm29_1 xmm28_1;
(* vpternlogq $0xd2,%xmm1,%xmm28,%xmm30            #! PC = 0x555555574e69 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm30_0, xmm28_0, xmm1_0, table);
call vpternlogq64 (xmm30_1, xmm28_1, xmm1_1, table);
(* vpternlogq $0xd2,%xmm12,%xmm1,%xmm29            #! PC = 0x555555574e70 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm29_0, xmm1_0, xmm12_0, table);
call vpternlogq64 (xmm29_1, xmm1_1, xmm12_1, table);
(* vpternlogq $0xd2,%xmm16,%xmm12,%xmm1            #! PC = 0x555555574e77 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm1_0, xmm12_0, xmm16_0, table);
call vpternlogq64 (xmm1_1, xmm12_1, xmm16_1, table);
(* vpternlogq $0xd2,%xmm23,%xmm16,%xmm12           #! PC = 0x555555574e7e *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm12_0, xmm16_0, xmm23_0, table);
call vpternlogq64 (xmm12_1, xmm16_1, xmm23_1, table);
(* vpternlogq $0xd2,%xmm28,%xmm23,%xmm16           #! PC = 0x555555574e85 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm16_0, xmm23_0, xmm28_0, table);
call vpternlogq64 (xmm16_1, xmm23_1, xmm28_1, table);
(* vpbroadcastq %rbx,%xmm23                        #! PC = 0x555555574e8c *)
mov xmm23_0 rbx;
mov xmm23_1 rbx;
(* vpxorq %xmm30,%xmm23,%xmm23                     #! PC = 0x555555574e92 *)
xor xmm23_0@uint64 xmm23_0 xmm30_0;
xor xmm23_1@uint64 xmm23_1 xmm30_1;
(* vmovdqa64 %xmm7,%xmm28                          #! PC = 0x555555574e98 *)
mov xmm28_0 xmm7_0;
mov xmm28_1 xmm7_1;
(* vmovdqa64 %xmm19,%xmm30                         #! PC = 0x555555574e9e *)
mov xmm30_0 xmm19_0;
mov xmm30_1 xmm19_1;
(* vpternlogq $0xd2,%xmm21,%xmm19,%xmm28           #! PC = 0x555555574ea4 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm28_0, xmm19_0, xmm21_0, table);
call vpternlogq64 (xmm28_1, xmm19_1, xmm21_1, table);
(* vpternlogq $0xd2,%xmm20,%xmm21,%xmm30           #! PC = 0x555555574eab *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm30_0, xmm21_0, xmm20_0, table);
call vpternlogq64 (xmm30_1, xmm21_1, xmm20_1, table);
(* vpternlogq $0xd2,%xmm13,%xmm20,%xmm21           #! PC = 0x555555574eb2 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm21_0, xmm20_0, xmm13_0, table);
call vpternlogq64 (xmm21_1, xmm20_1, xmm13_1, table);
(* vpternlogq $0xd2,%xmm7,%xmm13,%xmm20            #! PC = 0x555555574eb9 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm20_0, xmm13_0, xmm7_0, table);
call vpternlogq64 (xmm20_1, xmm13_1, xmm7_1, table);
(* vpternlogq $0xd2,%xmm19,%xmm7,%xmm13            #! PC = 0x555555574ec0 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm13_0, xmm7_0, xmm19_0, table);
call vpternlogq64 (xmm13_1, xmm7_1, xmm19_1, table);
(* vmovdqa64 %xmm18,%xmm19                         #! PC = 0x555555574ec7 *)
mov xmm19_0 xmm18_0;
mov xmm19_1 xmm18_1;
(* vmovdqa %xmm14,%xmm7                            #! PC = 0x555555574ecd *)
mov xmm7_0 xmm14_0;
mov xmm7_1 xmm14_1;
(* vpternlogq $0xd2,%xmm0,%xmm14,%xmm19            #! PC = 0x555555574ed1 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm19_0, xmm14_0, xmm0_0, table);
call vpternlogq64 (xmm19_1, xmm14_1, xmm0_1, table);
(* vpternlogq $0xd2,%xmm6,%xmm0,%xmm7              #! PC = 0x555555574ed8 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm7_0, xmm0_0, xmm6_0, table);
call vpternlogq64 (xmm7_1, xmm0_1, xmm6_1, table);
(* vpternlogq $0xd2,%xmm9,%xmm6,%xmm0              #! PC = 0x555555574edf *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm0_0, xmm6_0, xmm9_0, table);
call vpternlogq64 (xmm0_1, xmm6_1, xmm9_1, table);
(* vpternlogq $0xd2,%xmm18,%xmm9,%xmm6             #! PC = 0x555555574ee6 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm6_0, xmm9_0, xmm18_0, table);
call vpternlogq64 (xmm6_1, xmm9_1, xmm18_1, table);
(* vpternlogq $0xd2,%xmm14,%xmm18,%xmm9            #! PC = 0x555555574eed *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm9_0, xmm18_0, xmm14_0, table);
call vpternlogq64 (xmm9_1, xmm18_1, xmm14_1, table);
(* vmovdqa64 %xmm17,%xmm14                         #! PC = 0x555555574ef4 *)
mov xmm14_0 xmm17_0;
mov xmm14_1 xmm17_1;
(* vmovdqa64 %xmm31,%xmm18                         #! PC = 0x555555574efa *)
mov xmm18_0 xmm31_0;
mov xmm18_1 xmm31_1;
(* vpternlogq $0xd2,%xmm8,%xmm31,%xmm14            #! PC = 0x555555574f00 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm14_0, xmm31_0, xmm8_0, table);
call vpternlogq64 (xmm14_1, xmm31_1, xmm8_1, table);
(* vpternlogq $0xd2,%xmm10,%xmm8,%xmm18            #! PC = 0x555555574f07 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm18_0, xmm8_0, xmm10_0, table);
call vpternlogq64 (xmm18_1, xmm8_1, xmm10_1, table);
(* vmovdqa64 %xmm22,%xmm24                         #! PC = 0x555555574f0e *)
mov xmm24_0 xmm22_0;
mov xmm24_1 xmm22_1;
(* vpternlogq $0xd2,%xmm5,%xmm10,%xmm8             #! PC = 0x555555574f14 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm8_0, xmm10_0, xmm5_0, table);
call vpternlogq64 (xmm8_1, xmm10_1, xmm5_1, table);
(* vpternlogq $0xd2,%xmm17,%xmm5,%xmm10            #! PC = 0x555555574f1b *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm10_0, xmm5_0, xmm17_0, table);
call vpternlogq64 (xmm10_1, xmm5_1, xmm17_1, table);
(* vpternlogq $0xd2,%xmm31,%xmm17,%xmm5            #! PC = 0x555555574f22 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm5_0, xmm17_0, xmm31_0, table);
call vpternlogq64 (xmm5_1, xmm17_1, xmm31_1, table);
(* vmovdqa64 %xmm2,%xmm17                          #! PC = 0x555555574f29 *)
mov xmm17_0 xmm2_0;
mov xmm17_1 xmm2_1;
(* vpternlogq $0xd2,%xmm11,%xmm22,%xmm17           #! PC = 0x555555574f2f *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm17_0, xmm22_0, xmm11_0, table);
call vpternlogq64 (xmm17_1, xmm22_1, xmm11_1, table);
(* vpternlogq $0xd2,%xmm3,%xmm11,%xmm24            #! PC = 0x555555574f36 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm24_0, xmm11_0, xmm3_0, table);
call vpternlogq64 (xmm24_1, xmm11_1, xmm3_1, table);
(* vpternlogq $0xd2,%xmm15,%xmm3,%xmm11            #! PC = 0x555555574f3d *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm11_0, xmm3_0, xmm15_0, table);
call vpternlogq64 (xmm11_1, xmm3_1, xmm15_1, table);
(* vpternlogq $0xd2,%xmm2,%xmm15,%xmm3             #! PC = 0x555555574f44 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm3_0, xmm15_0, xmm2_0, table);
call vpternlogq64 (xmm3_1, xmm15_1, xmm2_1, table);
(* vpternlogq $0xd2,%xmm22,%xmm2,%xmm15            #! PC = 0x555555574f4b *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm15_0, xmm2_0, xmm22_0, table);
call vpternlogq64 (xmm15_1, xmm2_1, xmm22_1, table);
(* vmovdqa64 %xmm11,%xmm22                         #! PC = 0x555555574f52 *)
mov xmm22_0 xmm11_0;
mov xmm22_1 xmm11_1;
(* vpternlogq $0x96,%xmm1,%xmm0,%xmm22             #! PC = 0x555555574f58 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm22_0, xmm0_0, xmm1_0, table);
call vpternlogq64 (xmm22_1, xmm0_1, xmm1_1, table);
(* vpternlogq $0x96,%xmm21,%xmm8,%xmm22            #! PC = 0x555555574f5f *)
mov table 0x96@uint8;
call vpternlogq64 (xmm22_0, xmm8_0, xmm21_0, table);
call vpternlogq64 (xmm22_1, xmm8_1, xmm21_1, table);
(* vprolq $0x1,%xmm22,%xmm2                        #! PC = 0x555555574f66 *)
rol xmm2_0 xmm22_0 0x1;
rol xmm2_1 xmm22_1 0x1;
(* vmovdqa64 %xmm20,%xmm4                          #! PC = 0x555555574f6d *)
mov xmm4_0 xmm20_0;
mov xmm4_1 xmm20_1;
(* vpternlogq $0x96,%xmm6,%xmm3,%xmm4              #! PC = 0x555555574f73 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm4_0, xmm3_0, xmm6_0, table);
call vpternlogq64 (xmm4_1, xmm3_1, xmm6_1, table);
(* vpternlogq $0x96,%xmm10,%xmm12,%xmm4            #! PC = 0x555555574f7a *)
mov table 0x96@uint8;
call vpternlogq64 (xmm4_0, xmm12_0, xmm10_0, table);
call vpternlogq64 (xmm4_1, xmm12_1, xmm10_1, table);
(* vmovdqa64 %xmm5,%xmm27                          #! PC = 0x555555574f81 *)
mov xmm27_0 xmm5_0;
mov xmm27_1 xmm5_1;
(* vpternlogq $0x96,%xmm15,%xmm13,%xmm27           #! PC = 0x555555574f87 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm27_0, xmm13_0, xmm15_0, table);
call vpternlogq64 (xmm27_1, xmm13_1, xmm15_1, table);
(* vmovdqa %xmm2,-0x78(%rsp)                       #! EA = L0x7fffffffda70; PC = 0x555555574f8e *)
mov L0x7fffffffda70 xmm2_0;
mov L0x7fffffffda78 xmm2_1;
(* vprolq $0x1,%xmm4,%xmm2                         #! PC = 0x555555574f94 *)
rol xmm2_0 xmm4_0 0x1;
rol xmm2_1 xmm4_1 0x1;
(* vpternlogq $0x96,%xmm16,%xmm9,%xmm27            #! PC = 0x555555574f9b *)
mov table 0x96@uint8;
call vpternlogq64 (xmm27_0, xmm9_0, xmm16_0, table);
call vpternlogq64 (xmm27_1, xmm9_1, xmm16_1, table);
(* vmovdqa64 %xmm23,%xmm26                         #! PC = 0x555555574fa2 *)
mov xmm26_0 xmm23_0;
mov xmm26_1 xmm23_1;
(* vpternlogq $0x96,%xmm28,%xmm14,%xmm26           #! PC = 0x555555574fa8 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm26_0, xmm14_0, xmm28_0, table);
call vpternlogq64 (xmm26_1, xmm14_1, xmm28_1, table);
(* vpternlogq $0x96,%xmm19,%xmm17,%xmm26           #! PC = 0x555555574faf *)
mov table 0x96@uint8;
call vpternlogq64 (xmm26_0, xmm17_0, xmm19_0, table);
call vpternlogq64 (xmm26_1, xmm17_1, xmm19_1, table);
(* vmovdqa64 %xmm7,%xmm25                          #! PC = 0x555555574fb6 *)
mov xmm25_0 xmm7_0;
mov xmm25_1 xmm7_1;
(* vmovdqa %xmm2,-0x68(%rsp)                       #! EA = L0x7fffffffda80; PC = 0x555555574fbc *)
mov L0x7fffffffda80 xmm2_0;
mov L0x7fffffffda88 xmm2_1;
(* vprolq $0x1,%xmm27,%xmm2                        #! PC = 0x555555574fc2 *)
rol xmm2_0 xmm27_0 0x1;
rol xmm2_1 xmm27_1 0x1;
(* vpternlogq $0x96,%xmm18,%xmm29,%xmm25           #! PC = 0x555555574fc9 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm25_0, xmm29_0, xmm18_0, table);
call vpternlogq64 (xmm25_1, xmm29_1, xmm18_1, table);
(* vpternlogq $0x96,%xmm24,%xmm30,%xmm25           #! PC = 0x555555574fd0 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm25_0, xmm30_0, xmm24_0, table);
call vpternlogq64 (xmm25_1, xmm30_1, xmm24_1, table);
(* vprolq $0x1,%xmm25,%xmm31                       #! PC = 0x555555574fd7 *)
rol xmm31_0 xmm25_0 0x1;
rol xmm31_1 xmm25_1 0x1;
(* vpxorq -0x68(%rsp),%xmm25,%xmm25                #! EA = L0x7fffffffda80; Value = 0xbdeaed907f7a42a9; PC = 0x555555574fde *)
xor xmm25_0@uint64 xmm25_0 L0x7fffffffda80;
xor xmm25_1@uint64 xmm25_1 L0x7fffffffda88;
(* movabs $0x800000008000000a,%r11                 #! PC = 0x555555574fe9 *)
mov r11 0x800000008000000a@uint64;
(* vmovdqa %xmm2,-0x58(%rsp)                       #! EA = L0x7fffffffda90; PC = 0x555555574ff3 *)
mov L0x7fffffffda90 xmm2_0;
mov L0x7fffffffda98 xmm2_1;
(* vprolq $0x1,%xmm26,%xmm2                        #! PC = 0x555555574ff9 *)
rol xmm2_0 xmm26_0 0x1;
rol xmm2_1 xmm26_1 0x1;
(* vpxorq -0x78(%rsp),%xmm26,%xmm26                #! EA = L0x7fffffffda70; Value = 0x48630acc28bd8aba; PC = 0x555555575000 *)
xor xmm26_0@uint64 xmm26_0 L0x7fffffffda70;
xor xmm26_1@uint64 xmm26_1 L0x7fffffffda78;
(* vpxorq -0x58(%rsp),%xmm22,%xmm22                #! EA = L0x7fffffffda90; Value = 0xe0ef93849b93c6c6; PC = 0x55555557500b *)
xor xmm22_0@uint64 xmm22_0 L0x7fffffffda90;
xor xmm22_1@uint64 xmm22_1 L0x7fffffffda98;
(* vpxorq %xmm26,%xmm30,%xmm30                     #! PC = 0x555555575016 *)
xor xmm30_0@uint64 xmm30_0 xmm26_0;
xor xmm30_1@uint64 xmm30_1 xmm26_1;
(* vprorq $0x14,%xmm30,%xmm30                      #! PC = 0x55555557501c *)
ror xmm30_0 xmm30_0 0x14;
ror xmm30_1 xmm30_1 0x14;
(* vpxorq %xmm25,%xmm0,%xmm0                       #! PC = 0x555555575023 *)
xor xmm0_0@uint64 xmm0_0 xmm25_0;
xor xmm0_1@uint64 xmm0_1 xmm25_1;
(* vpxor  %xmm2,%xmm4,%xmm4                        #! PC = 0x555555575029 *)
xor xmm4_0@uint64 xmm4_0 xmm2_0;
xor xmm4_1@uint64 xmm4_1 xmm2_1;
(* vpxor  %xmm4,%xmm15,%xmm2                       #! PC = 0x55555557502d *)
xor xmm2_0@uint64 xmm15_0 xmm4_0;
xor xmm2_1@uint64 xmm15_1 xmm4_1;
(* vpxorq %xmm22,%xmm10,%xmm10                     #! PC = 0x555555575031 *)
xor xmm10_0@uint64 xmm10_0 xmm22_0;
xor xmm10_1@uint64 xmm10_1 xmm22_1;
(* vpxorq %xmm31,%xmm27,%xmm27                     #! PC = 0x555555575037 *)
xor xmm27_0@uint64 xmm27_0 xmm31_0;
xor xmm27_1@uint64 xmm27_1 xmm31_1;
(* vprorq $0x15,%xmm0,%xmm0                        #! PC = 0x55555557503d *)
ror xmm0_0 xmm0_0 0x15;
ror xmm0_1 xmm0_1 0x15;
(* vprolq $0x15,%xmm10,%xmm10                      #! PC = 0x555555575044 *)
rol xmm10_0 xmm10_0 0x15;
rol xmm10_1 xmm10_1 0x15;
(* vprolq $0xe,%xmm2,%xmm2                         #! PC = 0x55555557504b *)
rol xmm2_0 xmm2_0 0xe;
rol xmm2_1 xmm2_1 0xe;
(* vpxorq %xmm22,%xmm12,%xmm12                     #! PC = 0x555555575052 *)
xor xmm12_0@uint64 xmm12_0 xmm22_0;
xor xmm12_1@uint64 xmm12_1 xmm22_1;
(* vpxor  %xmm4,%xmm13,%xmm13                      #! PC = 0x555555575058 *)
xor xmm13_0@uint64 xmm13_0 xmm4_0;
xor xmm13_1@uint64 xmm13_1 xmm4_1;
(* vprolq $0x1c,%xmm12,%xmm12                      #! PC = 0x55555557505c *)
rol xmm12_0 xmm12_0 0x1c;
rol xmm12_1 xmm12_1 0x1c;
(* vprolq $0x14,%xmm13,%xmm13                      #! PC = 0x555555575063 *)
rol xmm13_0 xmm13_0 0x14;
rol xmm13_1 xmm13_1 0x14;
(* vpxorq %xmm27,%xmm19,%xmm19                     #! PC = 0x55555557506a *)
xor xmm19_0@uint64 xmm19_0 xmm27_0;
xor xmm19_1@uint64 xmm19_1 xmm27_1;
(* vpxorq %xmm26,%xmm18,%xmm18                     #! PC = 0x555555575070 *)
xor xmm18_0@uint64 xmm18_0 xmm26_0;
xor xmm18_1@uint64 xmm18_1 xmm26_1;
(* vpxorq %xmm25,%xmm11,%xmm11                     #! PC = 0x555555575076 *)
xor xmm11_0@uint64 xmm11_0 xmm25_0;
xor xmm11_1@uint64 xmm11_1 xmm25_1;
(* vpxorq %xmm26,%xmm29,%xmm29                     #! PC = 0x55555557507c *)
xor xmm29_0@uint64 xmm29_0 xmm26_0;
xor xmm29_1@uint64 xmm29_1 xmm26_1;
(* vpxorq %xmm25,%xmm21,%xmm21                     #! PC = 0x555555575082 *)
xor xmm21_0@uint64 xmm21_0 xmm25_0;
xor xmm21_1@uint64 xmm21_1 xmm25_1;
(* vprolq $0x1,%xmm29,%xmm29                       #! PC = 0x555555575088 *)
rol xmm29_0 xmm29_0 0x1;
rol xmm29_1 xmm29_1 0x1;
(* vprolq $0x6,%xmm21,%xmm21                       #! PC = 0x55555557508f *)
rol xmm21_0 xmm21_0 0x6;
rol xmm21_1 xmm21_1 0x6;
(* vprolq $0x3,%xmm19,%xmm19                       #! PC = 0x555555575096 *)
rol xmm19_0 xmm19_0 0x3;
rol xmm19_1 xmm19_1 0x3;
(* vprorq $0x13,%xmm18,%xmm18                      #! PC = 0x55555557509d *)
ror xmm18_0 xmm18_0 0x13;
ror xmm18_1 xmm18_1 0x13;
(* vprorq $0x3,%xmm11,%xmm11                       #! PC = 0x5555555750a4 *)
ror xmm11_0 xmm11_0 0x3;
ror xmm11_1 xmm11_1 0x3;
(* vpxorq %xmm27,%xmm17,%xmm17                     #! PC = 0x5555555750ab *)
xor xmm17_0@uint64 xmm17_0 xmm27_0;
xor xmm17_1@uint64 xmm17_1 xmm27_1;
(* vpxorq %xmm22,%xmm6,%xmm6                       #! PC = 0x5555555750b1 *)
xor xmm6_0@uint64 xmm6_0 xmm22_0;
xor xmm6_1@uint64 xmm6_1 xmm22_1;
(* vpxor  %xmm4,%xmm5,%xmm5                        #! PC = 0x5555555750b7 *)
xor xmm5_0@uint64 xmm5_0 xmm4_0;
xor xmm5_1@uint64 xmm5_1 xmm4_1;
(* vpxorq %xmm27,%xmm28,%xmm28                     #! PC = 0x5555555750bb *)
xor xmm28_0@uint64 xmm28_0 xmm27_0;
xor xmm28_1@uint64 xmm28_1 xmm27_1;
(* vpxorq %xmm4,%xmm16,%xmm16                      #! PC = 0x5555555750c1 *)
xor xmm16_0@uint64 xmm16_0 xmm4_0;
xor xmm16_1@uint64 xmm16_1 xmm4_1;
(* vprorq $0x1c,%xmm28,%xmm28                      #! PC = 0x5555555750c7 *)
ror xmm28_0 xmm28_0 0x1c;
ror xmm28_1 xmm28_1 0x1c;
(* vprolq $0x1b,%xmm16,%xmm16                      #! PC = 0x5555555750ce *)
rol xmm16_0 xmm16_0 0x1b;
rol xmm16_1 xmm16_1 0x1b;
(* vprolq $0x12,%xmm17,%xmm17                      #! PC = 0x5555555750d5 *)
rol xmm17_0 xmm17_0 0x12;
rol xmm17_1 xmm17_1 0x12;
(* vprolq $0x19,%xmm6,%xmm6                        #! PC = 0x5555555750dc *)
rol xmm6_0 xmm6_0 0x19;
rol xmm6_1 xmm6_1 0x19;
(* vprolq $0x8,%xmm5,%xmm5                         #! PC = 0x5555555750e3 *)
rol xmm5_0 xmm5_0 0x8;
rol xmm5_1 xmm5_1 0x8;
(* vpxorq %xmm26,%xmm7,%xmm7                       #! PC = 0x5555555750ea *)
xor xmm7_0@uint64 xmm7_0 xmm26_0;
xor xmm7_1@uint64 xmm7_1 xmm26_1;
(* vpxorq %xmm25,%xmm8,%xmm8                       #! PC = 0x5555555750f0 *)
xor xmm8_0@uint64 xmm8_0 xmm25_0;
xor xmm8_1@uint64 xmm8_1 xmm25_1;
(* vpxorq %xmm22,%xmm3,%xmm3                       #! PC = 0x5555555750f6 *)
xor xmm3_0@uint64 xmm3_0 xmm22_0;
xor xmm3_1@uint64 xmm3_1 xmm22_1;
(* vpxorq %xmm25,%xmm1,%xmm1                       #! PC = 0x5555555750fc *)
xor xmm1_0@uint64 xmm1_0 xmm25_0;
xor xmm1_1@uint64 xmm1_1 xmm25_1;
(* vpxorq %xmm22,%xmm20,%xmm20                     #! PC = 0x555555575102 *)
xor xmm20_0@uint64 xmm20_0 xmm22_0;
xor xmm20_1@uint64 xmm20_1 xmm22_1;
(* vpxorq %xmm27,%xmm23,%xmm23                     #! PC = 0x555555575108 *)
xor xmm23_0@uint64 xmm23_0 xmm27_0;
xor xmm23_1@uint64 xmm23_1 xmm27_1;
(* vprorq $0x2,%xmm1,%xmm1                         #! PC = 0x55555557510e *)
ror xmm1_0 xmm1_0 0x2;
ror xmm1_1 xmm1_1 0x2;
(* vprorq $0x9,%xmm20,%xmm20                       #! PC = 0x555555575115 *)
ror xmm20_0 xmm20_0 0x9;
ror xmm20_1 xmm20_1 0x9;
(* vprolq $0xa,%xmm7,%xmm7                         #! PC = 0x55555557511c *)
rol xmm7_0 xmm7_0 0xa;
rol xmm7_1 xmm7_1 0xa;
(* vprolq $0xf,%xmm8,%xmm8                         #! PC = 0x555555575123 *)
rol xmm8_0 xmm8_0 0xf;
rol xmm8_1 xmm8_1 0xf;
(* vprorq $0x8,%xmm3,%xmm3                         #! PC = 0x55555557512a *)
ror xmm3_0 xmm3_0 0x8;
ror xmm3_1 xmm3_1 0x8;
(* vpxorq %xmm27,%xmm14,%xmm14                     #! PC = 0x555555575131 *)
xor xmm14_0@uint64 xmm14_0 xmm27_0;
xor xmm14_1@uint64 xmm14_1 xmm27_1;
(* vpxorq %xmm26,%xmm24,%xmm24                     #! PC = 0x555555575137 *)
xor xmm24_0@uint64 xmm24_0 xmm26_0;
xor xmm24_1@uint64 xmm24_1 xmm26_1;
(* vpxor  %xmm4,%xmm9,%xmm9                        #! PC = 0x55555557513d *)
xor xmm9_0@uint64 xmm9_0 xmm4_0;
xor xmm9_1@uint64 xmm9_1 xmm4_1;
(* vprorq $0x17,%xmm14,%xmm14                      #! PC = 0x555555575141 *)
ror xmm14_0 xmm14_0 0x17;
ror xmm14_1 xmm14_1 0x17;
(* vprolq $0x2,%xmm24,%xmm24                       #! PC = 0x555555575148 *)
rol xmm24_0 xmm24_0 0x2;
rol xmm24_1 xmm24_1 0x2;
(* vprorq $0x19,%xmm9,%xmm9                        #! PC = 0x55555557514f *)
ror xmm9_0 xmm9_0 0x19;
ror xmm9_1 xmm9_1 0x19;
(* vmovdqa64 %xmm23,%xmm31                         #! PC = 0x555555575156 *)
mov xmm31_0 xmm23_0;
mov xmm31_1 xmm23_1;
(* vmovdqa64 %xmm30,%xmm15                         #! PC = 0x55555557515c *)
mov xmm15_0 xmm30_0;
mov xmm15_1 xmm30_1;
(* vpternlogq $0xd2,%xmm0,%xmm30,%xmm31            #! PC = 0x555555575162 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm31_0, xmm30_0, xmm0_0, table);
call vpternlogq64 (xmm31_1, xmm30_1, xmm0_1, table);
(* vpternlogq $0xd2,%xmm10,%xmm0,%xmm15            #! PC = 0x555555575169 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm15_0, xmm0_0, xmm10_0, table);
call vpternlogq64 (xmm15_1, xmm0_1, xmm10_1, table);
(* vpternlogq $0xd2,%xmm2,%xmm10,%xmm0             #! PC = 0x555555575170 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm0_0, xmm10_0, xmm2_0, table);
call vpternlogq64 (xmm0_1, xmm10_1, xmm2_1, table);
(* vpternlogq $0xd2,%xmm23,%xmm2,%xmm10            #! PC = 0x555555575177 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm10_0, xmm2_0, xmm23_0, table);
call vpternlogq64 (xmm10_1, xmm2_1, xmm23_1, table);
(* vpternlogq $0xd2,%xmm30,%xmm23,%xmm2            #! PC = 0x55555557517e *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm2_0, xmm23_0, xmm30_0, table);
call vpternlogq64 (xmm2_1, xmm23_1, xmm30_1, table);
(* vpbroadcastq %rbp,%xmm23                        #! PC = 0x555555575185 *)
mov xmm23_0 rbp;
mov xmm23_1 rbp;
(* vpxorq %xmm31,%xmm23,%xmm23                     #! PC = 0x55555557518b *)
xor xmm23_0@uint64 xmm23_0 xmm31_0;
xor xmm23_1@uint64 xmm23_1 xmm31_1;
(* vmovdqa64 %xmm12,%xmm30                         #! PC = 0x555555575191 *)
mov xmm30_0 xmm12_0;
mov xmm30_1 xmm12_1;
(* vmovdqa64 %xmm13,%xmm31                         #! PC = 0x555555575197 *)
mov xmm31_0 xmm13_0;
mov xmm31_1 xmm13_1;
(* vpternlogq $0xd2,%xmm19,%xmm13,%xmm30           #! PC = 0x55555557519d *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm30_0, xmm13_0, xmm19_0, table);
call vpternlogq64 (xmm30_1, xmm13_1, xmm19_1, table);
(* vpternlogq $0xd2,%xmm18,%xmm19,%xmm31           #! PC = 0x5555555751a4 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm31_0, xmm19_0, xmm18_0, table);
call vpternlogq64 (xmm31_1, xmm19_1, xmm18_1, table);
(* vpternlogq $0xd2,%xmm11,%xmm18,%xmm19           #! PC = 0x5555555751ab *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm19_0, xmm18_0, xmm11_0, table);
call vpternlogq64 (xmm19_1, xmm18_1, xmm11_1, table);
(* vpternlogq $0xd2,%xmm12,%xmm11,%xmm18           #! PC = 0x5555555751b2 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm18_0, xmm11_0, xmm12_0, table);
call vpternlogq64 (xmm18_1, xmm11_1, xmm12_1, table);
(* vpternlogq $0xd2,%xmm13,%xmm12,%xmm11           #! PC = 0x5555555751b9 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm11_0, xmm12_0, xmm13_0, table);
call vpternlogq64 (xmm11_1, xmm12_1, xmm13_1, table);
(* vmovdqa64 %xmm29,%xmm13                         #! PC = 0x5555555751c0 *)
mov xmm13_0 xmm29_0;
mov xmm13_1 xmm29_1;
(* vmovdqa64 %xmm21,%xmm12                         #! PC = 0x5555555751c6 *)
mov xmm12_0 xmm21_0;
mov xmm12_1 xmm21_1;
(* vpternlogq $0xd2,%xmm6,%xmm21,%xmm13            #! PC = 0x5555555751cc *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm13_0, xmm21_0, xmm6_0, table);
call vpternlogq64 (xmm13_1, xmm21_1, xmm6_1, table);
(* vpternlogq $0xd2,%xmm5,%xmm6,%xmm12             #! PC = 0x5555555751d3 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm12_0, xmm6_0, xmm5_0, table);
call vpternlogq64 (xmm12_1, xmm6_1, xmm5_1, table);
(* vpternlogq $0xd2,%xmm17,%xmm5,%xmm6             #! PC = 0x5555555751da *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm6_0, xmm5_0, xmm17_0, table);
call vpternlogq64 (xmm6_1, xmm5_1, xmm17_1, table);
(* vpternlogq $0xd2,%xmm29,%xmm17,%xmm5            #! PC = 0x5555555751e1 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm5_0, xmm17_0, xmm29_0, table);
call vpternlogq64 (xmm5_1, xmm17_1, xmm29_1, table);
(* vpternlogq $0xd2,%xmm21,%xmm29,%xmm17           #! PC = 0x5555555751e8 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm17_0, xmm29_0, xmm21_0, table);
call vpternlogq64 (xmm17_1, xmm29_1, xmm21_1, table);
(* vmovdqa64 %xmm16,%xmm21                         #! PC = 0x5555555751ef *)
mov xmm21_0 xmm16_0;
mov xmm21_1 xmm16_1;
(* vmovdqa64 %xmm28,%xmm29                         #! PC = 0x5555555751f5 *)
mov xmm29_0 xmm28_0;
mov xmm29_1 xmm28_1;
(* vpternlogq $0xd2,%xmm7,%xmm28,%xmm21            #! PC = 0x5555555751fb *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm21_0, xmm28_0, xmm7_0, table);
call vpternlogq64 (xmm21_1, xmm28_1, xmm7_1, table);
(* vpternlogq $0xd2,%xmm8,%xmm7,%xmm29             #! PC = 0x555555575202 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm29_0, xmm7_0, xmm8_0, table);
call vpternlogq64 (xmm29_1, xmm7_1, xmm8_1, table);
(* vmovdqa %xmm1,%xmm4                             #! PC = 0x555555575209 *)
mov xmm4_0 xmm1_0;
mov xmm4_1 xmm1_1;
(* vpternlogq $0xd2,%xmm3,%xmm8,%xmm7              #! PC = 0x55555557520d *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm7_0, xmm8_0, xmm3_0, table);
call vpternlogq64 (xmm7_1, xmm8_1, xmm3_1, table);
(* vpternlogq $0xd2,%xmm16,%xmm3,%xmm8             #! PC = 0x555555575214 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm8_0, xmm3_0, xmm16_0, table);
call vpternlogq64 (xmm8_1, xmm3_1, xmm16_1, table);
(* vpternlogq $0xd2,%xmm28,%xmm16,%xmm3            #! PC = 0x55555557521b *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm3_0, xmm16_0, xmm28_0, table);
call vpternlogq64 (xmm3_1, xmm16_1, xmm28_1, table);
(* vmovdqa64 %xmm20,%xmm16                         #! PC = 0x555555575222 *)
mov xmm16_0 xmm20_0;
mov xmm16_1 xmm20_1;
(* vpternlogq $0xd2,%xmm9,%xmm20,%xmm4             #! PC = 0x555555575228 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm4_0, xmm20_0, xmm9_0, table);
call vpternlogq64 (xmm4_1, xmm20_1, xmm9_1, table);
(* vpternlogq $0xd2,%xmm14,%xmm9,%xmm16            #! PC = 0x55555557522f *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm16_0, xmm9_0, xmm14_0, table);
call vpternlogq64 (xmm16_1, xmm9_1, xmm14_1, table);
(* vmovdqa64 %xmm19,%xmm22                         #! PC = 0x555555575236 *)
mov xmm22_0 xmm19_0;
mov xmm22_1 xmm19_1;
(* vpternlogq $0xd2,%xmm24,%xmm14,%xmm9            #! PC = 0x55555557523c *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm9_0, xmm14_0, xmm24_0, table);
call vpternlogq64 (xmm9_1, xmm14_1, xmm24_1, table);
(* vpternlogq $0x96,%xmm9,%xmm0,%xmm22             #! PC = 0x555555575243 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm22_0, xmm0_0, xmm9_0, table);
call vpternlogq64 (xmm22_1, xmm0_1, xmm9_1, table);
(* vpternlogq $0x96,%xmm6,%xmm7,%xmm22             #! PC = 0x55555557524a *)
mov table 0x96@uint8;
call vpternlogq64 (xmm22_0, xmm7_0, xmm6_0, table);
call vpternlogq64 (xmm22_1, xmm7_1, xmm6_1, table);
(* vpternlogq $0xd2,%xmm1,%xmm24,%xmm14            #! PC = 0x555555575251 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm14_0, xmm24_0, xmm1_0, table);
call vpternlogq64 (xmm14_1, xmm24_1, xmm1_1, table);
(* vpternlogq $0xd2,%xmm20,%xmm1,%xmm24            #! PC = 0x555555575258 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm24_0, xmm1_0, xmm20_0, table);
call vpternlogq64 (xmm24_1, xmm1_1, xmm20_1, table);
(* vprolq $0x1,%xmm22,%xmm1                        #! PC = 0x55555557525f *)
rol xmm1_0 xmm22_0 0x1;
rol xmm1_1 xmm22_1 0x1;
(* vmovdqa64 %xmm14,%xmm20                         #! PC = 0x555555575266 *)
mov xmm20_0 xmm14_0;
mov xmm20_1 xmm14_1;
(* vpternlogq $0x96,%xmm5,%xmm8,%xmm20             #! PC = 0x55555557526c *)
mov table 0x96@uint8;
call vpternlogq64 (xmm20_0, xmm8_0, xmm5_0, table);
call vpternlogq64 (xmm20_1, xmm8_1, xmm5_1, table);
(* vpternlogq $0x96,%xmm10,%xmm18,%xmm20           #! PC = 0x555555575273 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm20_0, xmm18_0, xmm10_0, table);
call vpternlogq64 (xmm20_1, xmm18_1, xmm10_1, table);
(* vmovdqa64 %xmm17,%xmm27                         #! PC = 0x55555557527a *)
mov xmm27_0 xmm17_0;
mov xmm27_1 xmm17_1;
(* vpternlogq $0x96,%xmm2,%xmm11,%xmm27            #! PC = 0x555555575280 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm27_0, xmm11_0, xmm2_0, table);
call vpternlogq64 (xmm27_1, xmm11_1, xmm2_1, table);
(* vmovdqa %xmm1,-0x78(%rsp)                       #! EA = L0x7fffffffda70; PC = 0x555555575287 *)
mov L0x7fffffffda70 xmm1_0;
mov L0x7fffffffda78 xmm1_1;
(* vprolq $0x1,%xmm20,%xmm1                        #! PC = 0x55555557528d *)
rol xmm1_0 xmm20_0 0x1;
rol xmm1_1 xmm20_1 0x1;
(* vpternlogq $0x96,%xmm3,%xmm24,%xmm27            #! PC = 0x555555575294 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm27_0, xmm24_0, xmm3_0, table);
call vpternlogq64 (xmm27_1, xmm24_1, xmm3_1, table);
(* vmovdqa64 %xmm23,%xmm26                         #! PC = 0x55555557529b *)
mov xmm26_0 xmm23_0;
mov xmm26_1 xmm23_1;
(* vpternlogq $0x96,%xmm21,%xmm4,%xmm26            #! PC = 0x5555555752a1 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm26_0, xmm4_0, xmm21_0, table);
call vpternlogq64 (xmm26_1, xmm4_1, xmm21_1, table);
(* vpternlogq $0x96,%xmm30,%xmm13,%xmm26           #! PC = 0x5555555752a8 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm26_0, xmm13_0, xmm30_0, table);
call vpternlogq64 (xmm26_1, xmm13_1, xmm30_1, table);
(* vmovdqa64 %xmm29,%xmm25                         #! PC = 0x5555555752af *)
mov xmm25_0 xmm29_0;
mov xmm25_1 xmm29_1;
(* vmovdqa %xmm1,-0x68(%rsp)                       #! EA = L0x7fffffffda80; PC = 0x5555555752b5 *)
mov L0x7fffffffda80 xmm1_0;
mov L0x7fffffffda88 xmm1_1;
(* vprolq $0x1,%xmm27,%xmm1                        #! PC = 0x5555555752bb *)
rol xmm1_0 xmm27_0 0x1;
rol xmm1_1 xmm27_1 0x1;
(* vpternlogq $0x96,%xmm31,%xmm12,%xmm25           #! PC = 0x5555555752c2 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm25_0, xmm12_0, xmm31_0, table);
call vpternlogq64 (xmm25_1, xmm12_1, xmm31_1, table);
(* vpternlogq $0x96,%xmm16,%xmm15,%xmm25           #! PC = 0x5555555752c9 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm25_0, xmm15_0, xmm16_0, table);
call vpternlogq64 (xmm25_1, xmm15_1, xmm16_1, table);
(* vprolq $0x1,%xmm25,%xmm28                       #! PC = 0x5555555752d0 *)
rol xmm28_0 xmm25_0 0x1;
rol xmm28_1 xmm25_1 0x1;
(* vpxorq -0x68(%rsp),%xmm25,%xmm25                #! EA = L0x7fffffffda80; Value = 0x56de72ab98d1b32a; PC = 0x5555555752d7 *)
xor xmm25_0@uint64 xmm25_0 L0x7fffffffda80;
xor xmm25_1@uint64 xmm25_1 L0x7fffffffda88;
(* movabs $0x8000000080008081,%rbx                 #! PC = 0x5555555752e2 *)
mov rbx 0x8000000080008081@uint64;
(* vmovdqa %xmm1,-0x58(%rsp)                       #! EA = L0x7fffffffda90; PC = 0x5555555752ec *)
mov L0x7fffffffda90 xmm1_0;
mov L0x7fffffffda98 xmm1_1;
(* vprolq $0x1,%xmm26,%xmm1                        #! PC = 0x5555555752f2 *)
rol xmm1_0 xmm26_0 0x1;
rol xmm1_1 xmm26_1 0x1;
(* vpxorq -0x78(%rsp),%xmm26,%xmm26                #! EA = L0x7fffffffda70; Value = 0xa85e2e68c08ee383; PC = 0x5555555752f9 *)
xor xmm26_0@uint64 xmm26_0 L0x7fffffffda70;
xor xmm26_1@uint64 xmm26_1 L0x7fffffffda78;
(* vpxorq -0x58(%rsp),%xmm22,%xmm22                #! EA = L0x7fffffffda90; Value = 0x6029bb6a5417b77f; PC = 0x555555575304 *)
xor xmm22_0@uint64 xmm22_0 L0x7fffffffda90;
xor xmm22_1@uint64 xmm22_1 L0x7fffffffda98;
(* vpxorq %xmm26,%xmm31,%xmm31                     #! PC = 0x55555557530f *)
xor xmm31_0@uint64 xmm31_0 xmm26_0;
xor xmm31_1@uint64 xmm31_1 xmm26_1;
(* vprorq $0x14,%xmm31,%xmm31                      #! PC = 0x555555575315 *)
ror xmm31_0 xmm31_0 0x14;
ror xmm31_1 xmm31_1 0x14;
(* vpxorq %xmm25,%xmm6,%xmm6                       #! PC = 0x55555557531c *)
xor xmm6_0@uint64 xmm6_0 xmm25_0;
xor xmm6_1@uint64 xmm6_1 xmm25_1;
(* vpxorq %xmm1,%xmm20,%xmm20                      #! PC = 0x555555575322 *)
xor xmm20_0@uint64 xmm20_0 xmm1_0;
xor xmm20_1@uint64 xmm20_1 xmm1_1;
(* vpxorq %xmm20,%xmm24,%xmm1                      #! PC = 0x555555575328 *)
xor xmm1_0@uint64 xmm24_0 xmm20_0;
xor xmm1_1@uint64 xmm24_1 xmm20_1;
(* vpxorq %xmm22,%xmm8,%xmm8                       #! PC = 0x55555557532e *)
xor xmm8_0@uint64 xmm8_0 xmm22_0;
xor xmm8_1@uint64 xmm8_1 xmm22_1;
(* vprorq $0x15,%xmm6,%xmm6                        #! PC = 0x555555575334 *)
ror xmm6_0 xmm6_0 0x15;
ror xmm6_1 xmm6_1 0x15;
(* vprolq $0x15,%xmm8,%xmm8                        #! PC = 0x55555557533b *)
rol xmm8_0 xmm8_0 0x15;
rol xmm8_1 xmm8_1 0x15;
(* vprolq $0xe,%xmm1,%xmm1                         #! PC = 0x555555575342 *)
rol xmm1_0 xmm1_0 0xe;
rol xmm1_1 xmm1_1 0xe;
(* vpxorq %xmm28,%xmm27,%xmm27                     #! PC = 0x555555575349 *)
xor xmm27_0@uint64 xmm27_0 xmm28_0;
xor xmm27_1@uint64 xmm27_1 xmm28_1;
(* vpxorq %xmm22,%xmm10,%xmm10                     #! PC = 0x55555557534f *)
xor xmm10_0@uint64 xmm10_0 xmm22_0;
xor xmm10_1@uint64 xmm10_1 xmm22_1;
(* vpxorq %xmm20,%xmm11,%xmm11                     #! PC = 0x555555575355 *)
xor xmm11_0@uint64 xmm11_0 xmm20_0;
xor xmm11_1@uint64 xmm11_1 xmm20_1;
(* vprolq $0x1c,%xmm10,%xmm10                      #! PC = 0x55555557535b *)
rol xmm10_0 xmm10_0 0x1c;
rol xmm10_1 xmm10_1 0x1c;
(* vprolq $0x14,%xmm11,%xmm11                      #! PC = 0x555555575362 *)
rol xmm11_0 xmm11_0 0x14;
rol xmm11_1 xmm11_1 0x14;
(* vpxorq %xmm27,%xmm13,%xmm13                     #! PC = 0x555555575369 *)
xor xmm13_0@uint64 xmm13_0 xmm27_0;
xor xmm13_1@uint64 xmm13_1 xmm27_1;
(* vpxorq %xmm26,%xmm29,%xmm29                     #! PC = 0x55555557536f *)
xor xmm29_0@uint64 xmm29_0 xmm26_0;
xor xmm29_1@uint64 xmm29_1 xmm26_1;
(* vpxorq %xmm25,%xmm9,%xmm9                       #! PC = 0x555555575375 *)
xor xmm9_0@uint64 xmm9_0 xmm25_0;
xor xmm9_1@uint64 xmm9_1 xmm25_1;
(* vpxorq %xmm26,%xmm15,%xmm15                     #! PC = 0x55555557537b *)
xor xmm15_0@uint64 xmm15_0 xmm26_0;
xor xmm15_1@uint64 xmm15_1 xmm26_1;
(* vprolq $0x1,%xmm15,%xmm15                       #! PC = 0x555555575381 *)
rol xmm15_0 xmm15_0 0x1;
rol xmm15_1 xmm15_1 0x1;
(* vprolq $0x3,%xmm13,%xmm13                       #! PC = 0x555555575388 *)
rol xmm13_0 xmm13_0 0x3;
rol xmm13_1 xmm13_1 0x3;
(* vprorq $0x13,%xmm29,%xmm29                      #! PC = 0x55555557538f *)
ror xmm29_0 xmm29_0 0x13;
ror xmm29_1 xmm29_1 0x13;
(* vprorq $0x3,%xmm9,%xmm9                         #! PC = 0x555555575396 *)
ror xmm9_0 xmm9_0 0x3;
ror xmm9_1 xmm9_1 0x3;
(* vpxorq %xmm25,%xmm19,%xmm19                     #! PC = 0x55555557539d *)
xor xmm19_0@uint64 xmm19_0 xmm25_0;
xor xmm19_1@uint64 xmm19_1 xmm25_1;
(* vpxorq %xmm22,%xmm5,%xmm5                       #! PC = 0x5555555753a3 *)
xor xmm5_0@uint64 xmm5_0 xmm22_0;
xor xmm5_1@uint64 xmm5_1 xmm22_1;
(* vpxorq %xmm27,%xmm23,%xmm23                     #! PC = 0x5555555753a9 *)
xor xmm23_0@uint64 xmm23_0 xmm27_0;
xor xmm23_1@uint64 xmm23_1 xmm27_1;
(* vprolq $0x6,%xmm19,%xmm19                       #! PC = 0x5555555753af *)
rol xmm19_0 xmm19_0 0x6;
rol xmm19_1 xmm19_1 0x6;
(* vprolq $0x19,%xmm5,%xmm5                        #! PC = 0x5555555753b6 *)
rol xmm5_0 xmm5_0 0x19;
rol xmm5_1 xmm5_1 0x19;
(* vmovdqa64 %xmm23,%xmm24                         #! PC = 0x5555555753bd *)
mov xmm24_0 xmm23_0;
mov xmm24_1 xmm23_1;
(* vmovdqa64 %xmm31,%xmm28                         #! PC = 0x5555555753c3 *)
mov xmm28_0 xmm31_0;
mov xmm28_1 xmm31_1;
(* vpxorq %xmm27,%xmm4,%xmm4                       #! PC = 0x5555555753c9 *)
xor xmm4_0@uint64 xmm4_0 xmm27_0;
xor xmm4_1@uint64 xmm4_1 xmm27_1;
(* vpxorq %xmm20,%xmm3,%xmm3                       #! PC = 0x5555555753cf *)
xor xmm3_0@uint64 xmm3_0 xmm20_0;
xor xmm3_1@uint64 xmm3_1 xmm20_1;
(* vpxorq %xmm27,%xmm30,%xmm30                     #! PC = 0x5555555753d5 *)
xor xmm30_0@uint64 xmm30_0 xmm27_0;
xor xmm30_1@uint64 xmm30_1 xmm27_1;
(* vpxorq %xmm20,%xmm2,%xmm2                       #! PC = 0x5555555753db *)
xor xmm2_0@uint64 xmm2_0 xmm20_0;
xor xmm2_1@uint64 xmm2_1 xmm20_1;
(* vpxorq %xmm25,%xmm0,%xmm0                       #! PC = 0x5555555753e1 *)
xor xmm0_0@uint64 xmm0_0 xmm25_0;
xor xmm0_1@uint64 xmm0_1 xmm25_1;
(* vpxorq %xmm22,%xmm18,%xmm18                     #! PC = 0x5555555753e7 *)
xor xmm18_0@uint64 xmm18_0 xmm22_0;
xor xmm18_1@uint64 xmm18_1 xmm22_1;
(* vprorq $0x1c,%xmm30,%xmm30                      #! PC = 0x5555555753ed *)
ror xmm30_0 xmm30_0 0x1c;
ror xmm30_1 xmm30_1 0x1c;
(* vprolq $0x1b,%xmm2,%xmm2                        #! PC = 0x5555555753f4 *)
rol xmm2_0 xmm2_0 0x1b;
rol xmm2_1 xmm2_1 0x1b;
(* vprorq $0x2,%xmm0,%xmm0                         #! PC = 0x5555555753fb *)
ror xmm0_0 xmm0_0 0x2;
ror xmm0_1 xmm0_1 0x2;
(* vprorq $0x9,%xmm18,%xmm18                       #! PC = 0x555555575402 *)
ror xmm18_0 xmm18_0 0x9;
ror xmm18_1 xmm18_1 0x9;
(* vpternlogq $0xd2,%xmm6,%xmm31,%xmm24            #! PC = 0x555555575409 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm24_0, xmm31_0, xmm6_0, table);
call vpternlogq64 (xmm24_1, xmm31_1, xmm6_1, table);
(* vpternlogq $0xd2,%xmm8,%xmm6,%xmm28             #! PC = 0x555555575410 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm28_0, xmm6_0, xmm8_0, table);
call vpternlogq64 (xmm28_1, xmm6_1, xmm8_1, table);
(* vprolq $0x12,%xmm4,%xmm4                        #! PC = 0x555555575417 *)
rol xmm4_0 xmm4_0 0x12;
rol xmm4_1 xmm4_1 0x12;
(* vpternlogq $0xd2,%xmm1,%xmm8,%xmm6              #! PC = 0x55555557541e *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm6_0, xmm8_0, xmm1_0, table);
call vpternlogq64 (xmm6_1, xmm8_1, xmm1_1, table);
(* vprolq $0x8,%xmm3,%xmm3                         #! PC = 0x555555575425 *)
rol xmm3_0 xmm3_0 0x8;
rol xmm3_1 xmm3_1 0x8;
(* vpxorq %xmm26,%xmm12,%xmm12                     #! PC = 0x55555557542c *)
xor xmm12_0@uint64 xmm12_0 xmm26_0;
xor xmm12_1@uint64 xmm12_1 xmm26_1;
(* vpxorq %xmm25,%xmm7,%xmm7                       #! PC = 0x555555575432 *)
xor xmm7_0@uint64 xmm7_0 xmm25_0;
xor xmm7_1@uint64 xmm7_1 xmm25_1;
(* vpxorq %xmm22,%xmm14,%xmm14                     #! PC = 0x555555575438 *)
xor xmm14_0@uint64 xmm14_0 xmm22_0;
xor xmm14_1@uint64 xmm14_1 xmm22_1;
(* vpxorq %xmm27,%xmm21,%xmm21                     #! PC = 0x55555557543e *)
xor xmm21_0@uint64 xmm21_0 xmm27_0;
xor xmm21_1@uint64 xmm21_1 xmm27_1;
(* vpxorq %xmm26,%xmm16,%xmm16                     #! PC = 0x555555575444 *)
xor xmm16_0@uint64 xmm16_0 xmm26_0;
xor xmm16_1@uint64 xmm16_1 xmm26_1;
(* vpxorq %xmm20,%xmm17,%xmm17                     #! PC = 0x55555557544a *)
xor xmm17_0@uint64 xmm17_0 xmm20_0;
xor xmm17_1@uint64 xmm17_1 xmm20_1;
(* vprolq $0xa,%xmm12,%xmm12                       #! PC = 0x555555575450 *)
rol xmm12_0 xmm12_0 0xa;
rol xmm12_1 xmm12_1 0xa;
(* vprolq $0xf,%xmm7,%xmm7                         #! PC = 0x555555575457 *)
rol xmm7_0 xmm7_0 0xf;
rol xmm7_1 xmm7_1 0xf;
(* vprorq $0x8,%xmm14,%xmm14                       #! PC = 0x55555557545e *)
ror xmm14_0 xmm14_0 0x8;
ror xmm14_1 xmm14_1 0x8;
(* vprorq $0x17,%xmm21,%xmm21                      #! PC = 0x555555575465 *)
ror xmm21_0 xmm21_0 0x17;
ror xmm21_1 xmm21_1 0x17;
(* vprolq $0x2,%xmm16,%xmm16                       #! PC = 0x55555557546c *)
rol xmm16_0 xmm16_0 0x2;
rol xmm16_1 xmm16_1 0x2;
(* vprorq $0x19,%xmm17,%xmm17                      #! PC = 0x555555575473 *)
ror xmm17_0 xmm17_0 0x19;
ror xmm17_1 xmm17_1 0x19;
(* vmovdqa %xmm6,-0x18(%rsp)                       #! EA = L0x7fffffffdad0; PC = 0x55555557547a *)
mov L0x7fffffffdad0 xmm6_0;
mov L0x7fffffffdad8 xmm6_1;
(* vpbroadcastq %r12,%xmm6                         #! PC = 0x555555575480 *)
mov xmm6_0 r12;
mov xmm6_1 r12;
(* vpternlogq $0xd2,%xmm23,%xmm1,%xmm8             #! PC = 0x555555575486 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm8_0, xmm1_0, xmm23_0, table);
call vpternlogq64 (xmm8_1, xmm1_1, xmm23_1, table);
(* vpxorq %xmm24,%xmm6,%xmm6                       #! PC = 0x55555557548d *)
xor xmm6_0@uint64 xmm6_0 xmm24_0;
xor xmm6_1@uint64 xmm6_1 xmm24_1;
(* vpternlogq $0xd2,%xmm31,%xmm23,%xmm1            #! PC = 0x555555575493 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm1_0, xmm23_0, xmm31_0, table);
call vpternlogq64 (xmm1_1, xmm23_1, xmm31_1, table);
(* vmovdqa64 %xmm11,%xmm24                         #! PC = 0x55555557549a *)
mov xmm24_0 xmm11_0;
mov xmm24_1 xmm11_1;
(* vmovdqa64 %xmm10,%xmm31                         #! PC = 0x5555555754a0 *)
mov xmm31_0 xmm10_0;
mov xmm31_1 xmm10_1;
(* vpternlogq $0xd2,%xmm13,%xmm11,%xmm31           #! PC = 0x5555555754a6 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm31_0, xmm11_0, xmm13_0, table);
call vpternlogq64 (xmm31_1, xmm11_1, xmm13_1, table);
(* vpternlogq $0xd2,%xmm29,%xmm13,%xmm24           #! PC = 0x5555555754ad *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm24_0, xmm13_0, xmm29_0, table);
call vpternlogq64 (xmm24_1, xmm13_1, xmm29_1, table);
(* vpternlogq $0xd2,%xmm9,%xmm29,%xmm13            #! PC = 0x5555555754b4 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm13_0, xmm29_0, xmm9_0, table);
call vpternlogq64 (xmm13_1, xmm29_1, xmm9_1, table);
(* vpternlogq $0xd2,%xmm10,%xmm9,%xmm29            #! PC = 0x5555555754bb *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm29_0, xmm9_0, xmm10_0, table);
call vpternlogq64 (xmm29_1, xmm9_1, xmm10_1, table);
(* vpternlogq $0xd2,%xmm11,%xmm10,%xmm9            #! PC = 0x5555555754c2 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm9_0, xmm10_0, xmm11_0, table);
call vpternlogq64 (xmm9_1, xmm10_1, xmm11_1, table);
(* vmovdqa %xmm15,%xmm10                           #! PC = 0x5555555754c9 *)
mov xmm10_0 xmm15_0;
mov xmm10_1 xmm15_1;
(* vpternlogq $0xd2,%xmm5,%xmm19,%xmm10            #! PC = 0x5555555754ce *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm10_0, xmm19_0, xmm5_0, table);
call vpternlogq64 (xmm10_1, xmm19_1, xmm5_1, table);
(* vmovdqa64 %xmm29,-0x8(%rsp)                     #! EA = L0x7fffffffdae0; PC = 0x5555555754d5 *)
mov L0x7fffffffdae0 xmm29_0;
mov L0x7fffffffdae8 xmm29_1;
(* vmovdqa64 %xmm10,%xmm29                         #! PC = 0x5555555754e0 *)
mov xmm29_0 xmm10_0;
mov xmm29_1 xmm10_1;
(* vmovdqa64 %xmm19,%xmm10                         #! PC = 0x5555555754e6 *)
mov xmm10_0 xmm19_0;
mov xmm10_1 xmm19_1;
(* vpternlogq $0xd2,%xmm3,%xmm5,%xmm10             #! PC = 0x5555555754ec *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm10_0, xmm5_0, xmm3_0, table);
call vpternlogq64 (xmm10_1, xmm5_1, xmm3_1, table);
(* vmovdqa64 %xmm0,%xmm23                          #! PC = 0x5555555754f3 *)
mov xmm23_0 xmm0_0;
mov xmm23_1 xmm0_1;
(* vpternlogq $0xd2,%xmm4,%xmm3,%xmm5              #! PC = 0x5555555754f9 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm5_0, xmm3_0, xmm4_0, table);
call vpternlogq64 (xmm5_1, xmm3_1, xmm4_1, table);
(* vmovdqa64 %xmm18,%xmm11                         #! PC = 0x555555575500 *)
mov xmm11_0 xmm18_0;
mov xmm11_1 xmm18_1;
(* vpternlogq $0xd2,%xmm15,%xmm4,%xmm3             #! PC = 0x555555575506 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm3_0, xmm4_0, xmm15_0, table);
call vpternlogq64 (xmm3_1, xmm4_1, xmm15_1, table);
(* vpternlogq $0xd2,%xmm19,%xmm15,%xmm4            #! PC = 0x55555557550d *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm4_0, xmm15_0, xmm19_0, table);
call vpternlogq64 (xmm4_1, xmm15_1, xmm19_1, table);
(* vmovdqa %xmm2,%xmm15                            #! PC = 0x555555575514 *)
mov xmm15_0 xmm2_0;
mov xmm15_1 xmm2_1;
(* vmovdqa64 %xmm30,%xmm19                         #! PC = 0x555555575518 *)
mov xmm19_0 xmm30_0;
mov xmm19_1 xmm30_1;
(* vpternlogq $0xd2,%xmm12,%xmm30,%xmm15           #! PC = 0x55555557551e *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm15_0, xmm30_0, xmm12_0, table);
call vpternlogq64 (xmm15_1, xmm30_1, xmm12_1, table);
(* vpternlogq $0xd2,%xmm7,%xmm12,%xmm19            #! PC = 0x555555575525 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm19_0, xmm12_0, xmm7_0, table);
call vpternlogq64 (xmm19_1, xmm12_1, xmm7_1, table);
(* vpternlogq $0xd2,%xmm17,%xmm18,%xmm23           #! PC = 0x55555557552c *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm23_0, xmm18_0, xmm17_0, table);
call vpternlogq64 (xmm23_1, xmm18_1, xmm17_1, table);
(* vpternlogq $0xd2,%xmm14,%xmm7,%xmm12            #! PC = 0x555555575533 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm12_0, xmm7_0, xmm14_0, table);
call vpternlogq64 (xmm12_1, xmm7_1, xmm14_1, table);
(* vpternlogq $0xd2,%xmm21,%xmm17,%xmm11           #! PC = 0x55555557553a *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm11_0, xmm17_0, xmm21_0, table);
call vpternlogq64 (xmm11_1, xmm17_1, xmm21_1, table);
(* vpternlogq $0xd2,%xmm2,%xmm14,%xmm7             #! PC = 0x555555575541 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm7_0, xmm14_0, xmm2_0, table);
call vpternlogq64 (xmm7_1, xmm14_1, xmm2_1, table);
(* vpternlogq $0xd2,%xmm16,%xmm21,%xmm17           #! PC = 0x555555575548 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm17_0, xmm21_0, xmm16_0, table);
call vpternlogq64 (xmm17_1, xmm21_1, xmm16_1, table);
(* vmovdqa64 %xmm5,%xmm20                          #! PC = 0x55555557554f *)
mov xmm20_0 xmm5_0;
mov xmm20_1 xmm5_1;
(* vpternlogq $0xd2,%xmm0,%xmm16,%xmm21            #! PC = 0x555555575555 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm21_0, xmm16_0, xmm0_0, table);
call vpternlogq64 (xmm21_1, xmm16_1, xmm0_1, table);
(* vpternlogq $0xd2,%xmm18,%xmm0,%xmm16            #! PC = 0x55555557555c *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm16_0, xmm0_0, xmm18_0, table);
call vpternlogq64 (xmm16_1, xmm0_1, xmm18_1, table);
(* vpternlogq $0xd2,%xmm30,%xmm2,%xmm14            #! PC = 0x555555575563 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm14_0, xmm2_0, xmm30_0, table);
call vpternlogq64 (xmm14_1, xmm2_1, xmm30_1, table);
(* vpternlogq $0x96,%xmm13,%xmm17,%xmm20           #! PC = 0x55555557556a *)
mov table 0x96@uint8;
call vpternlogq64 (xmm20_0, xmm17_0, xmm13_0, table);
call vpternlogq64 (xmm20_1, xmm17_1, xmm13_1, table);
(* vmovdqa64 %xmm6,%xmm18                          #! PC = 0x555555575571 *)
mov xmm18_0 xmm6_0;
mov xmm18_1 xmm6_1;
(* vmovdqa %xmm7,%xmm0                             #! PC = 0x555555575577 *)
mov xmm0_0 xmm7_0;
mov xmm0_1 xmm7_1;
(* vmovdqa64 %xmm16,%xmm26                         #! PC = 0x55555557557b *)
mov xmm26_0 xmm16_0;
mov xmm26_1 xmm16_1;
(* vpternlogq $0x96,%xmm23,%xmm29,%xmm18           #! PC = 0x555555575581 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm18_0, xmm29_0, xmm23_0, table);
call vpternlogq64 (xmm18_1, xmm29_1, xmm23_1, table);
(* vpternlogq $0x96,%xmm3,%xmm8,%xmm0              #! PC = 0x555555575588 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm0_0, xmm8_0, xmm3_0, table);
call vpternlogq64 (xmm0_1, xmm8_1, xmm3_1, table);
(* vpternlogq $0x96,%xmm14,%xmm9,%xmm26            #! PC = 0x55555557558f *)
mov table 0x96@uint8;
call vpternlogq64 (xmm26_0, xmm9_0, xmm14_0, table);
call vpternlogq64 (xmm26_1, xmm9_1, xmm14_1, table);
(* vmovdqa64 %xmm24,%xmm30                         #! PC = 0x555555575596 *)
mov xmm30_0 xmm24_0;
mov xmm30_1 xmm24_1;
(* vpternlogq $0x96,-0x18(%rsp),%xmm12,%xmm20      #! EA = L0x7fffffffdad0; Value = 0x5369937853f13190; PC = 0x55555557559c *)
mov table 0x96@uint8;
call vpternlogq64 (xmm20_0, xmm12_0, L0x7fffffffdad0, table);
call vpternlogq64 (xmm20_1, xmm12_1, L0x7fffffffdad8, table);
(* vpternlogq $0x96,%xmm15,%xmm31,%xmm18           #! PC = 0x5555555755a8 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm18_0, xmm31_0, xmm15_0, table);
call vpternlogq64 (xmm18_1, xmm31_1, xmm15_1, table);
(* vpternlogq $0x96,%xmm4,%xmm1,%xmm26             #! PC = 0x5555555755af *)
mov table 0x96@uint8;
call vpternlogq64 (xmm26_0, xmm1_0, xmm4_0, table);
call vpternlogq64 (xmm26_1, xmm1_1, xmm4_1, table);
(* vprolq $0x1,%xmm20,%xmm22                       #! PC = 0x5555555755b6 *)
rol xmm22_0 xmm20_0 0x1;
rol xmm22_1 xmm20_1 0x1;
(* vpternlogq $0x96,%xmm28,%xmm19,%xmm30           #! PC = 0x5555555755bd *)
mov table 0x96@uint8;
call vpternlogq64 (xmm30_0, xmm19_0, xmm28_0, table);
call vpternlogq64 (xmm30_1, xmm19_1, xmm28_1, table);
(* vpternlogq $0x96,-0x8(%rsp),%xmm21,%xmm0        #! EA = L0x7fffffffdae0; Value = 0xa0269aa97340c93c; PC = 0x5555555755c4 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm0_0, xmm21_0, L0x7fffffffdae0, table);
call vpternlogq64 (xmm0_1, xmm21_1, L0x7fffffffdae8, table);
(* vprolq $0x1,%xmm0,%xmm27                        #! PC = 0x5555555755d0 *)
rol xmm27_0 xmm0_0 0x1;
rol xmm27_1 xmm0_1 0x1;
(* vprolq $0x1,%xmm26,%xmm25                       #! PC = 0x5555555755d7 *)
rol xmm25_0 xmm26_0 0x1;
rol xmm25_1 xmm26_1 0x1;
(* vprolq $0x1,%xmm18,%xmm2                        #! PC = 0x5555555755de *)
rol xmm2_0 xmm18_0 0x1;
rol xmm2_1 xmm18_1 0x1;
(* vpternlogq $0x96,%xmm11,%xmm10,%xmm30           #! PC = 0x5555555755e5 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm30_0, xmm10_0, xmm11_0, table);
call vpternlogq64 (xmm30_1, xmm10_1, xmm11_1, table);
(* vmovdqa %xmm4,0x8(%rsp)                         #! EA = L0x7fffffffdaf0; PC = 0x5555555755ec *)
mov L0x7fffffffdaf0 xmm4_0;
mov L0x7fffffffdaf8 xmm4_1;
(* vprolq $0x1,%xmm30,%xmm4                        #! PC = 0x5555555755f2 *)
rol xmm4_0 xmm30_0 0x1;
rol xmm4_1 xmm30_1 0x1;
(* vpxorq %xmm22,%xmm18,%xmm18                     #! PC = 0x5555555755f9 *)
xor xmm18_0@uint64 xmm18_0 xmm22_0;
xor xmm18_1@uint64 xmm18_1 xmm22_1;
(* vpxorq %xmm25,%xmm20,%xmm20                     #! PC = 0x5555555755ff *)
xor xmm20_0@uint64 xmm20_0 xmm25_0;
xor xmm20_1@uint64 xmm20_1 xmm25_1;
(* vpxor  %xmm2,%xmm0,%xmm0                        #! PC = 0x555555575605 *)
xor xmm0_0@uint64 xmm0_0 xmm2_0;
xor xmm0_1@uint64 xmm0_1 xmm2_1;
(* vpxorq %xmm27,%xmm30,%xmm30                     #! PC = 0x555555575609 *)
xor xmm30_0@uint64 xmm30_0 xmm27_0;
xor xmm30_1@uint64 xmm30_1 xmm27_1;
(* vpxorq %xmm18,%xmm24,%xmm24                     #! PC = 0x55555557560f *)
xor xmm24_0@uint64 xmm24_0 xmm18_0;
xor xmm24_1@uint64 xmm24_1 xmm18_1;
(* vpxorq %xmm4,%xmm26,%xmm26                      #! PC = 0x555555575615 *)
xor xmm26_0@uint64 xmm26_0 xmm4_0;
xor xmm26_1@uint64 xmm26_1 xmm4_1;
(* vprorq $0x14,%xmm24,%xmm24                      #! PC = 0x55555557561b *)
ror xmm24_0 xmm24_0 0x14;
ror xmm24_1 xmm24_1 0x14;
(* vpxorq %xmm20,%xmm7,%xmm4                       #! PC = 0x555555575622 *)
xor xmm4_0@uint64 xmm7_0 xmm20_0;
xor xmm4_1@uint64 xmm7_1 xmm20_1;
(* vpxorq %xmm30,%xmm5,%xmm25                      #! PC = 0x555555575628 *)
xor xmm25_0@uint64 xmm5_0 xmm30_0;
xor xmm25_1@uint64 xmm5_1 xmm30_1;
(* vpxorq %xmm0,%xmm16,%xmm2                       #! PC = 0x55555557562e *)
xor xmm2_0@uint64 xmm16_0 xmm0_0;
xor xmm2_1@uint64 xmm16_1 xmm0_1;
(* vprolq $0xe,%xmm2,%xmm2                         #! PC = 0x555555575634 *)
rol xmm2_0 xmm2_0 0xe;
rol xmm2_1 xmm2_1 0xe;
(* vprorq $0x15,%xmm25,%xmm25                      #! PC = 0x55555557563b *)
ror xmm25_0 xmm25_0 0x15;
ror xmm25_1 xmm25_1 0x15;
(* vprolq $0x15,%xmm4,%xmm4                        #! PC = 0x555555575642 *)
rol xmm4_0 xmm4_0 0x15;
rol xmm4_1 xmm4_1 0x15;
(* vpxorq %xmm26,%xmm6,%xmm6                       #! PC = 0x555555575649 *)
xor xmm6_0@uint64 xmm6_0 xmm26_0;
xor xmm6_1@uint64 xmm6_1 xmm26_1;
(* vmovdqa64 %xmm6,%xmm22                          #! PC = 0x55555557564f *)
mov xmm22_0 xmm6_0;
mov xmm22_1 xmm6_1;
(* vmovdqa64 %xmm24,%xmm5                          #! PC = 0x555555575655 *)
mov xmm5_0 xmm24_0;
mov xmm5_1 xmm24_1;
(* vpxorq %xmm20,%xmm8,%xmm8                       #! PC = 0x55555557565b *)
xor xmm8_0@uint64 xmm8_0 xmm20_0;
xor xmm8_1@uint64 xmm8_1 xmm20_1;
(* vpxor  %xmm0,%xmm9,%xmm9                        #! PC = 0x555555575661 *)
xor xmm9_0@uint64 xmm9_0 xmm0_0;
xor xmm9_1@uint64 xmm9_1 xmm0_1;
(* vpxorq %xmm26,%xmm29,%xmm29                     #! PC = 0x555555575665 *)
xor xmm29_0@uint64 xmm29_0 xmm26_0;
xor xmm29_1@uint64 xmm29_1 xmm26_1;
(* vprolq $0x1c,%xmm8,%xmm8                        #! PC = 0x55555557566b *)
rol xmm8_0 xmm8_0 0x1c;
rol xmm8_1 xmm8_1 0x1c;
(* vprolq $0x14,%xmm9,%xmm9                        #! PC = 0x555555575672 *)
rol xmm9_0 xmm9_0 0x14;
rol xmm9_1 xmm9_1 0x14;
(* vprolq $0x3,%xmm29,%xmm29                       #! PC = 0x555555575679 *)
rol xmm29_0 xmm29_0 0x3;
rol xmm29_1 xmm29_1 0x3;
(* vpternlogq $0xd2,%xmm25,%xmm24,%xmm22           #! PC = 0x555555575680 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm22_0, xmm24_0, xmm25_0, table);
call vpternlogq64 (xmm22_1, xmm24_1, xmm25_1, table);
(* vpxorq %xmm18,%xmm19,%xmm19                     #! PC = 0x555555575687 *)
xor xmm19_0@uint64 xmm19_0 xmm18_0;
xor xmm19_1@uint64 xmm19_1 xmm18_1;
(* vpternlogq $0xd2,%xmm4,%xmm25,%xmm5             #! PC = 0x55555557568d *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm5_0, xmm25_0, xmm4_0, table);
call vpternlogq64 (xmm5_1, xmm25_1, xmm4_1, table);
(* vmovdqa %xmm2,%xmm7                             #! PC = 0x555555575694 *)
mov xmm7_0 xmm2_0;
mov xmm7_1 xmm2_1;
(* vpternlogq $0xd2,%xmm2,%xmm4,%xmm25             #! PC = 0x555555575698 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm25_0, xmm4_0, xmm2_0, table);
call vpternlogq64 (xmm25_1, xmm4_1, xmm2_1, table);
(* vpxorq %xmm30,%xmm17,%xmm27                     #! PC = 0x55555557569f *)
xor xmm27_0@uint64 xmm17_0 xmm30_0;
xor xmm27_1@uint64 xmm17_1 xmm30_1;
(* vpternlogq $0xd2,%xmm6,%xmm2,%xmm4              #! PC = 0x5555555756a5 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm4_0, xmm2_0, xmm6_0, table);
call vpternlogq64 (xmm4_1, xmm2_1, xmm6_1, table);
(* vpxorq %xmm18,%xmm28,%xmm28                     #! PC = 0x5555555756ac *)
xor xmm28_0@uint64 xmm28_0 xmm18_0;
xor xmm28_1@uint64 xmm28_1 xmm18_1;
(* vpbroadcastq %r14,%xmm2                         #! PC = 0x5555555756b2 *)
mov xmm2_0 r14;
mov xmm2_1 r14;
(* vpxorq %xmm30,%xmm13,%xmm13                     #! PC = 0x5555555756b8 *)
xor xmm13_0@uint64 xmm13_0 xmm30_0;
xor xmm13_1@uint64 xmm13_1 xmm30_1;
(* vprolq $0x1,%xmm28,%xmm28                       #! PC = 0x5555555756be *)
rol xmm28_0 xmm28_0 0x1;
rol xmm28_1 xmm28_1 0x1;
(* vprorq $0x3,%xmm27,%xmm27                       #! PC = 0x5555555756c5 *)
ror xmm27_0 xmm27_0 0x3;
ror xmm27_1 xmm27_1 0x3;
(* vprolq $0x6,%xmm13,%xmm13                       #! PC = 0x5555555756cc *)
rol xmm13_0 xmm13_0 0x6;
rol xmm13_1 xmm13_1 0x6;
(* vpxorq %xmm20,%xmm3,%xmm17                      #! PC = 0x5555555756d3 *)
xor xmm17_0@uint64 xmm3_0 xmm20_0;
xor xmm17_1@uint64 xmm3_1 xmm20_1;
(* vpxor  %xmm0,%xmm14,%xmm14                      #! PC = 0x5555555756d9 *)
xor xmm14_0@uint64 xmm14_0 xmm0_0;
xor xmm14_1@uint64 xmm14_1 xmm0_1;
(* vpxorq %xmm22,%xmm2,%xmm22                      #! PC = 0x5555555756dd *)
xor xmm22_0@uint64 xmm2_0 xmm22_0;
xor xmm22_1@uint64 xmm2_1 xmm22_1;
(* vpxorq %xmm26,%xmm23,%xmm23                     #! PC = 0x5555555756e3 *)
xor xmm23_0@uint64 xmm23_0 xmm26_0;
xor xmm23_1@uint64 xmm23_1 xmm26_1;
(* vprorq $0x13,%xmm19,%xmm2                       #! PC = 0x5555555756e9 *)
ror xmm2_0 xmm19_0 0x13;
ror xmm2_1 xmm19_1 0x13;
(* vprolq $0x12,%xmm23,%xmm23                      #! PC = 0x5555555756f0 *)
rol xmm23_0 xmm23_0 0x12;
rol xmm23_1 xmm23_1 0x12;
(* vprolq $0x19,%xmm17,%xmm17                      #! PC = 0x5555555756f7 *)
rol xmm17_0 xmm17_0 0x19;
rol xmm17_1 xmm17_1 0x19;
(* vprolq $0x8,%xmm14,%xmm14                       #! PC = 0x5555555756fe *)
rol xmm14_0 xmm14_0 0x8;
rol xmm14_1 xmm14_1 0x8;
(* vpternlogq $0xd2,%xmm24,%xmm6,%xmm7             #! PC = 0x555555575705 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm7_0, xmm6_0, xmm24_0, table);
call vpternlogq64 (xmm7_1, xmm6_1, xmm24_1, table);
(* vmovdqa64 %xmm8,%xmm19                          #! PC = 0x55555557570c *)
mov xmm19_0 xmm8_0;
mov xmm19_1 xmm8_1;
(* vmovdqa %xmm9,%xmm6                             #! PC = 0x555555575712 *)
mov xmm6_0 xmm9_0;
mov xmm6_1 xmm9_1;
(* vmovdqa64 %xmm29,%xmm24                         #! PC = 0x555555575716 *)
mov xmm24_0 xmm29_0;
mov xmm24_1 xmm29_1;
(* vpternlogq $0xd2,%xmm27,%xmm2,%xmm24            #! PC = 0x55555557571c *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm24_0, xmm2_0, xmm27_0, table);
call vpternlogq64 (xmm24_1, xmm2_1, xmm27_1, table);
(* vpxor  %xmm0,%xmm1,%xmm1                        #! PC = 0x555555575723 *)
xor xmm1_0@uint64 xmm1_0 xmm0_0;
xor xmm1_1@uint64 xmm1_1 xmm0_1;
(* vpternlogq $0xd2,%xmm29,%xmm9,%xmm19            #! PC = 0x555555575727 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm19_0, xmm9_0, xmm29_0, table);
call vpternlogq64 (xmm19_1, xmm9_1, xmm29_1, table);
(* vpternlogq $0xd2,%xmm2,%xmm29,%xmm6             #! PC = 0x55555557572e *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm6_0, xmm29_0, xmm2_0, table);
call vpternlogq64 (xmm6_1, xmm29_1, xmm2_1, table);
(* vpxorq %xmm26,%xmm31,%xmm31                     #! PC = 0x555555575735 *)
xor xmm31_0@uint64 xmm31_0 xmm26_0;
xor xmm31_1@uint64 xmm31_1 xmm26_1;
(* vpternlogq $0xd2,%xmm8,%xmm27,%xmm2             #! PC = 0x55555557573b *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm2_0, xmm27_0, xmm8_0, table);
call vpternlogq64 (xmm2_1, xmm27_1, xmm8_1, table);
(* vpternlogq $0xd2,%xmm9,%xmm8,%xmm27             #! PC = 0x555555575742 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm27_0, xmm8_0, xmm9_0, table);
call vpternlogq64 (xmm27_1, xmm8_1, xmm9_1, table);
(* vmovdqa64 %xmm28,%xmm8                          #! PC = 0x555555575749 *)
mov xmm8_0 xmm28_0;
mov xmm8_1 xmm28_1;
(* vmovdqa %xmm13,%xmm9                            #! PC = 0x55555557574f *)
mov xmm9_0 xmm13_0;
mov xmm9_1 xmm13_1;
(* vprolq $0x1b,%xmm1,%xmm3                        #! PC = 0x555555575754 *)
rol xmm3_0 xmm1_0 0x1b;
rol xmm3_1 xmm1_1 0x1b;
(* vpternlogq $0xd2,%xmm14,%xmm17,%xmm9            #! PC = 0x55555557575b *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm9_0, xmm17_0, xmm14_0, table);
call vpternlogq64 (xmm9_1, xmm17_1, xmm14_1, table);
(* vprorq $0x1c,%xmm31,%xmm31                      #! PC = 0x555555575762 *)
ror xmm31_0 xmm31_0 0x1c;
ror xmm31_1 xmm31_1 0x1c;
(* vpternlogq $0xd2,%xmm17,%xmm13,%xmm8            #! PC = 0x555555575769 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm8_0, xmm13_0, xmm17_0, table);
call vpternlogq64 (xmm8_1, xmm13_1, xmm17_1, table);
(* vmovdqa %xmm7,-0x78(%rsp)                       #! EA = L0x7fffffffda70; PC = 0x555555575770 *)
mov L0x7fffffffda70 xmm7_0;
mov L0x7fffffffda78 xmm7_1;
(* vpternlogq $0xd2,%xmm23,%xmm14,%xmm17           #! PC = 0x555555575776 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm17_0, xmm14_0, xmm23_0, table);
call vpternlogq64 (xmm17_1, xmm14_1, xmm23_1, table);
(* vpxorq %xmm20,%xmm21,%xmm7                      #! PC = 0x55555557577d *)
xor xmm7_0@uint64 xmm21_0 xmm20_0;
xor xmm7_1@uint64 xmm21_1 xmm20_1;
(* vpternlogq $0xd2,%xmm28,%xmm23,%xmm14           #! PC = 0x555555575783 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm14_0, xmm23_0, xmm28_0, table);
call vpternlogq64 (xmm14_1, xmm23_1, xmm28_1, table);
(* vmovdqa %xmm2,-0x58(%rsp)                       #! EA = L0x7fffffffda90; PC = 0x55555557578a *)
mov L0x7fffffffda90 xmm2_0;
mov L0x7fffffffda98 xmm2_1;
(* vpternlogq $0xd2,%xmm13,%xmm28,%xmm23           #! PC = 0x555555575790 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm23_0, xmm28_0, xmm13_0, table);
call vpternlogq64 (xmm23_1, xmm28_1, xmm13_1, table);
(* vpxorq %xmm30,%xmm12,%xmm2                      #! PC = 0x555555575797 *)
xor xmm2_0@uint64 xmm12_0 xmm30_0;
xor xmm2_1@uint64 xmm12_1 xmm30_1;
(* vpxorq %xmm18,%xmm10,%xmm28                     #! PC = 0x55555557579d *)
xor xmm28_0@uint64 xmm10_0 xmm18_0;
xor xmm28_1@uint64 xmm10_1 xmm18_1;
(* vprolq $0xa,%xmm28,%xmm28                       #! PC = 0x5555555757a3 *)
rol xmm28_0 xmm28_0 0xa;
rol xmm28_1 xmm28_1 0xa;
(* vprolq $0xf,%xmm2,%xmm2                         #! PC = 0x5555555757aa *)
rol xmm2_0 xmm2_0 0xf;
rol xmm2_1 xmm2_1 0xf;
(* vprorq $0x8,%xmm7,%xmm7                         #! PC = 0x5555555757b1 *)
ror xmm7_0 xmm7_0 0x8;
ror xmm7_1 xmm7_1 0x8;
(* vmovdqa %xmm3,%xmm10                            #! PC = 0x5555555757b8 *)
mov xmm10_0 xmm3_0;
mov xmm10_1 xmm3_1;
(* vmovdqa64 %xmm31,%xmm1                          #! PC = 0x5555555757bc *)
mov xmm1_0 xmm31_0;
mov xmm1_1 xmm31_1;
(* vmovdqa %xmm9,-0x48(%rsp)                       #! EA = L0x7fffffffdaa0; PC = 0x5555555757c2 *)
mov L0x7fffffffdaa0 xmm9_0;
mov L0x7fffffffdaa8 xmm9_1;
(* vpternlogq $0xd2,%xmm28,%xmm31,%xmm10           #! PC = 0x5555555757c8 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm10_0, xmm31_0, xmm28_0, table);
call vpternlogq64 (xmm10_1, xmm31_1, xmm28_1, table);
(* vpternlogq $0xd2,%xmm2,%xmm28,%xmm1             #! PC = 0x5555555757cf *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm1_0, xmm28_0, xmm2_0, table);
call vpternlogq64 (xmm1_1, xmm28_1, xmm2_1, table);
(* vpternlogq $0xd2,%xmm7,%xmm2,%xmm28             #! PC = 0x5555555757d6 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm28_0, xmm2_0, xmm7_0, table);
call vpternlogq64 (xmm28_1, xmm2_1, xmm7_1, table);
(* vpternlogq $0xd2,%xmm3,%xmm7,%xmm2              #! PC = 0x5555555757dd *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm2_0, xmm7_0, xmm3_0, table);
call vpternlogq64 (xmm2_1, xmm7_1, xmm3_1, table);
(* vpternlogq $0xd2,%xmm31,%xmm3,%xmm7             #! PC = 0x5555555757e4 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm7_0, xmm3_0, xmm31_0, table);
call vpternlogq64 (xmm7_1, xmm3_1, xmm31_1, table);
(* vpxorq -0x18(%rsp),%xmm30,%xmm3                 #! EA = L0x7fffffffdad0; Value = 0x5369937853f13190; PC = 0x5555555757eb *)
xor xmm3_0@uint64 xmm30_0 L0x7fffffffdad0;
xor xmm3_1@uint64 xmm30_1 L0x7fffffffdad8;
(* vpxorq -0x8(%rsp),%xmm20,%xmm9                  #! EA = L0x7fffffffdae0; Value = 0xa0269aa97340c93c; PC = 0x5555555757f6 *)
xor xmm9_0@uint64 xmm20_0 L0x7fffffffdae0;
xor xmm9_1@uint64 xmm20_1 L0x7fffffffdae8;
(* vpxorq 0x8(%rsp),%xmm0,%xmm20                   #! EA = L0x7fffffffdaf0; Value = 0x8522ea69dc138f2b; PC = 0x555555575801 *)
xor xmm20_0@uint64 xmm0_0 L0x7fffffffdaf0;
xor xmm20_1@uint64 xmm0_1 L0x7fffffffdaf8;
(* vprorq $0x2,%xmm3,%xmm3                         #! PC = 0x55555557580c *)
ror xmm3_0 xmm3_0 0x2;
ror xmm3_1 xmm3_1 0x2;
(* vprorq $0x9,%xmm9,%xmm9                         #! PC = 0x555555575813 *)
ror xmm9_0 xmm9_0 0x9;
ror xmm9_1 xmm9_1 0x9;
(* vprorq $0x19,%xmm20,%xmm20                      #! PC = 0x55555557581a *)
ror xmm20_0 xmm20_0 0x19;
ror xmm20_1 xmm20_1 0x19;
(* vpxorq %xmm26,%xmm15,%xmm15                     #! PC = 0x555555575821 *)
xor xmm15_0@uint64 xmm15_0 xmm26_0;
xor xmm15_1@uint64 xmm15_1 xmm26_1;
(* vprorq $0x17,%xmm15,%xmm15                      #! PC = 0x555555575827 *)
ror xmm15_0 xmm15_0 0x17;
ror xmm15_1 xmm15_1 0x17;
(* vpxorq %xmm18,%xmm11,%xmm18                     #! PC = 0x55555557582e *)
xor xmm18_0@uint64 xmm11_0 xmm18_0;
xor xmm18_1@uint64 xmm11_1 xmm18_1;
(* vprolq $0x2,%xmm18,%xmm18                       #! PC = 0x555555575834 *)
rol xmm18_0 xmm18_0 0x2;
rol xmm18_1 xmm18_1 0x2;
(* vmovdqa %xmm3,%xmm0                             #! PC = 0x55555557583b *)
mov xmm0_0 xmm3_0;
mov xmm0_1 xmm3_1;
(* vpternlogq $0xd2,%xmm20,%xmm9,%xmm0             #! PC = 0x55555557583f *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm0_0, xmm9_0, xmm20_0, table);
call vpternlogq64 (xmm0_1, xmm9_1, xmm20_1, table);
(* vmovdqa %xmm8,-0x28(%rsp)                       #! EA = L0x7fffffffdac0; PC = 0x555555575846 *)
mov L0x7fffffffdac0 xmm8_0;
mov L0x7fffffffdac8 xmm8_1;
(* vmovdqa %xmm0,%xmm8                             #! PC = 0x55555557584c *)
mov xmm8_0 xmm0_0;
mov xmm8_1 xmm0_1;
(* vmovdqa %xmm9,%xmm0                             #! PC = 0x555555575850 *)
mov xmm0_0 xmm9_0;
mov xmm0_1 xmm9_1;
(* vpternlogq $0xd2,%xmm15,%xmm20,%xmm0            #! PC = 0x555555575854 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm0_0, xmm20_0, xmm15_0, table);
call vpternlogq64 (xmm0_1, xmm20_1, xmm15_1, table);
(* vmovdqa64 %xmm24,-0x68(%rsp)                    #! EA = L0x7fffffffda80; PC = 0x55555557585b *)
mov L0x7fffffffda80 xmm24_0;
mov L0x7fffffffda88 xmm24_1;
(* vpternlogq $0xd2,%xmm18,%xmm15,%xmm20           #! PC = 0x555555575866 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm20_0, xmm15_0, xmm18_0, table);
call vpternlogq64 (xmm20_1, xmm15_1, xmm18_1, table);
(* vmovdqa %xmm10,-0x38(%rsp)                      #! EA = L0x7fffffffdab0; PC = 0x55555557586d *)
mov L0x7fffffffdab0 xmm10_0;
mov L0x7fffffffdab8 xmm10_1;
(* vpternlogq $0xd2,%xmm3,%xmm18,%xmm15            #! PC = 0x555555575873 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm15_0, xmm18_0, xmm3_0, table);
call vpternlogq64 (xmm15_1, xmm18_1, xmm3_1, table);
(* vmovdqa64 %xmm0,%xmm24                          #! PC = 0x55555557587a *)
mov xmm24_0 xmm0_0;
mov xmm24_1 xmm0_1;
(* vpternlogq $0xd2,%xmm9,%xmm3,%xmm18             #! PC = 0x555555575880 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm18_0, xmm3_0, xmm9_0, table);
call vpternlogq64 (xmm18_1, xmm3_1, xmm9_1, table);
(* movabs $0x8000000000008080,%rbp                 #! PC = 0x555555575887 *)
mov rbp 0x8000000000008080@uint64;
(* mov    $0x80000001,%r12d                        #! PC = 0x555555575891 *)
mov r12 0x80000001@uint64;
(* movabs $0x8000000080008008,%r14                 #! PC = 0x555555575897 *)
mov r14 0x8000000080008008@uint64;
(* #jne    0x555555575998 <KeccakP1600times2_PermuteAll_24rounds+9992>#! PC = 0x5555555758a5 *)
#jne    0x555555575998 <KeccakP1600times2_PermuteAll_24rounds+9992>#! 0x5555555758a5 = 0x5555555758a5;
(* mov    $0x1,%r13d                               #! PC = 0x555555575998 *)
mov r13 0x1@uint64;
(* #jmp    0x555555573401 <KeccakP1600times2_PermuteAll_24rounds+369>#! PC = 0x55555557599e *)
#jmp    0x555555573401 <KeccakP1600times2_PermuteAll_24rounds+369>#! 0x55555557599e = 0x55555557599e;
(* vmovdqa -0x68(%rsp),%xmm13                      #! EA = L0x7fffffffda80; Value = 0x78810c50495e3275; PC = 0x555555573401 *)
mov xmm13_0 L0x7fffffffda80;
mov xmm13_1 L0x7fffffffda88;
(* vmovdqa64 %xmm25,%xmm9                          #! PC = 0x555555573407 *)
mov xmm9_0 xmm25_0;
mov xmm9_1 xmm25_1;
(* vmovdqa -0x58(%rsp),%xmm11                      #! EA = L0x7fffffffda90; Value = 0xd384611c1d2019af; PC = 0x55555557340d *)
mov xmm11_0 L0x7fffffffda90;
mov xmm11_1 L0x7fffffffda98;
(* vmovdqa64 -0x28(%rsp),%xmm31                    #! EA = L0x7fffffffdac0; Value = 0x11c71af25a096099; PC = 0x555555573413 *)
mov xmm31_0 L0x7fffffffdac0;
mov xmm31_1 L0x7fffffffdac8;
(* vpternlogq $0x96,%xmm17,%xmm13,%xmm9            #! PC = 0x55555557341e *)
mov table 0x96@uint8;
call vpternlogq64 (xmm9_0, xmm13_0, xmm17_0, table);
call vpternlogq64 (xmm9_1, xmm13_1, xmm17_1, table);
(* vmovdqa -0x78(%rsp),%xmm13                      #! EA = L0x7fffffffda70; Value = 0x2f159e0e626e3157; PC = 0x555555573425 *)
mov xmm13_0 L0x7fffffffda70;
mov xmm13_1 L0x7fffffffda78;
(* vmovdqa -0x38(%rsp),%xmm0                       #! EA = L0x7fffffffdab0; Value = 0x6bbaf52f2afd0855; PC = 0x55555557342b *)
mov xmm0_0 L0x7fffffffdab0;
mov xmm0_1 L0x7fffffffdab8;
(* vmovdqa64 %xmm22,%xmm12                         #! PC = 0x555555573431 *)
mov xmm12_0 xmm22_0;
mov xmm12_1 xmm22_1;
(* vmovdqa %xmm4,%xmm3                             #! PC = 0x555555573437 *)
mov xmm3_0 xmm4_0;
mov xmm3_1 xmm4_1;
(* vpternlogq $0x96,%xmm20,%xmm28,%xmm9            #! PC = 0x55555557343b *)
mov table 0x96@uint8;
call vpternlogq64 (xmm9_0, xmm28_0, xmm20_0, table);
call vpternlogq64 (xmm9_1, xmm28_1, xmm20_1, table);
(* vpternlogq $0x96,%xmm31,%xmm19,%xmm12           #! PC = 0x555555573442 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm12_0, xmm19_0, xmm31_0, table);
call vpternlogq64 (xmm12_1, xmm19_1, xmm31_1, table);
(* vpternlogq $0x96,%xmm14,%xmm11,%xmm3            #! PC = 0x555555573449 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm3_0, xmm11_0, xmm14_0, table);
call vpternlogq64 (xmm3_1, xmm11_1, xmm14_1, table);
(* vpternlogq $0x96,%xmm23,%xmm27,%xmm13           #! PC = 0x555555573450 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm13_0, xmm27_0, xmm23_0, table);
call vpternlogq64 (xmm13_1, xmm27_1, xmm23_1, table);
(* vpternlogq $0x96,%xmm8,%xmm0,%xmm12             #! PC = 0x555555573457 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm12_0, xmm0_0, xmm8_0, table);
call vpternlogq64 (xmm12_1, xmm0_1, xmm8_1, table);
(* vpternlogq $0x96,%xmm15,%xmm2,%xmm3             #! PC = 0x55555557345e *)
mov table 0x96@uint8;
call vpternlogq64 (xmm3_0, xmm2_0, xmm15_0, table);
call vpternlogq64 (xmm3_1, xmm2_1, xmm15_1, table);
(* vpternlogq $0x96,%xmm18,%xmm7,%xmm13            #! PC = 0x555555573465 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm13_0, xmm7_0, xmm18_0, table);
call vpternlogq64 (xmm13_1, xmm7_1, xmm18_1, table);
(* vprolq $0x1,%xmm9,%xmm11                        #! PC = 0x55555557346c *)
rol xmm11_0 xmm9_0 0x1;
rol xmm11_1 xmm9_1 0x1;
(* vprolq $0x1,%xmm3,%xmm29                        #! PC = 0x555555573473 *)
rol xmm29_0 xmm3_0 0x1;
rol xmm29_1 xmm3_1 0x1;
(* vprolq $0x1,%xmm13,%xmm30                       #! PC = 0x55555557347a *)
rol xmm30_0 xmm13_0 0x1;
rol xmm30_1 xmm13_1 0x1;
(* vprolq $0x1,%xmm12,%xmm16                       #! PC = 0x555555573481 *)
rol xmm16_0 xmm12_0 0x1;
rol xmm16_1 xmm12_1 0x1;
(* vmovdqa %xmm5,%xmm10                            #! PC = 0x555555573488 *)
mov xmm10_0 xmm5_0;
mov xmm10_1 xmm5_1;
(* vpternlogq $0x96,-0x48(%rsp),%xmm6,%xmm10       #! EA = L0x7fffffffdaa0; Value = 0x9f23c8b00dc49645; PC = 0x55555557348c *)
mov table 0x96@uint8;
call vpternlogq64 (xmm10_0, xmm6_0, L0x7fffffffdaa0, table);
call vpternlogq64 (xmm10_1, xmm6_1, L0x7fffffffdaa8, table);
(* vpternlogq $0x96,%xmm24,%xmm1,%xmm10            #! PC = 0x555555573498 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm10_0, xmm1_0, xmm24_0, table);
call vpternlogq64 (xmm10_1, xmm1_1, xmm24_1, table);
(* vpxor  %xmm12,%xmm11,%xmm11                     #! PC = 0x55555557349f *)
xor xmm11_0@uint64 xmm11_0 xmm12_0;
xor xmm11_1@uint64 xmm11_1 xmm12_1;
(* vprolq $0x1,%xmm10,%xmm0                        #! PC = 0x5555555734a4 *)
rol xmm0_0 xmm10_0 0x1;
rol xmm0_1 xmm10_1 0x1;
(* vpxorq %xmm9,%xmm30,%xmm30                      #! PC = 0x5555555734ab *)
xor xmm30_0@uint64 xmm30_0 xmm9_0;
xor xmm30_1@uint64 xmm30_1 xmm9_1;
(* vpxorq %xmm3,%xmm16,%xmm16                      #! PC = 0x5555555734b1 *)
xor xmm16_0@uint64 xmm16_0 xmm3_0;
xor xmm16_1@uint64 xmm16_1 xmm3_1;
(* vpxorq %xmm10,%xmm29,%xmm29                     #! PC = 0x5555555734b7 *)
xor xmm29_0@uint64 xmm29_0 xmm10_0;
xor xmm29_1@uint64 xmm29_1 xmm10_1;
(* vpxor  %xmm11,%xmm6,%xmm6                       #! PC = 0x5555555734bd *)
xor xmm6_0@uint64 xmm6_0 xmm11_0;
xor xmm6_1@uint64 xmm6_1 xmm11_1;
(* vprorq $0x14,%xmm6,%xmm6                        #! PC = 0x5555555734c2 *)
ror xmm6_0 xmm6_0 0x14;
ror xmm6_1 xmm6_1 0x14;
(* vpxorq %xmm29,%xmm17,%xmm21                     #! PC = 0x5555555734c9 *)
xor xmm21_0@uint64 xmm17_0 xmm29_0;
xor xmm21_1@uint64 xmm17_1 xmm29_1;
(* vpxorq %xmm30,%xmm2,%xmm26                      #! PC = 0x5555555734cf *)
xor xmm26_0@uint64 xmm2_0 xmm30_0;
xor xmm26_1@uint64 xmm2_1 xmm30_1;
(* vpxorq %xmm16,%xmm18,%xmm9                      #! PC = 0x5555555734d5 *)
xor xmm9_0@uint64 xmm18_0 xmm16_0;
xor xmm9_1@uint64 xmm18_1 xmm16_1;
(* vprorq $0x15,%xmm21,%xmm21                      #! PC = 0x5555555734db *)
ror xmm21_0 xmm21_0 0x15;
ror xmm21_1 xmm21_1 0x15;
(* vprolq $0x15,%xmm26,%xmm26                      #! PC = 0x5555555734e2 *)
rol xmm26_0 xmm26_0 0x15;
rol xmm26_1 xmm26_1 0x15;
(* vprolq $0xe,%xmm9,%xmm9                         #! PC = 0x5555555734e9 *)
rol xmm9_0 xmm9_0 0xe;
rol xmm9_1 xmm9_1 0xe;
(* vpxor  %xmm13,%xmm0,%xmm0                       #! PC = 0x5555555734f0 *)
xor xmm0_0@uint64 xmm0_0 xmm13_0;
xor xmm0_1@uint64 xmm0_1 xmm13_1;
(* vpxorq %xmm0,%xmm22,%xmm22                      #! PC = 0x5555555734f5 *)
xor xmm22_0@uint64 xmm22_0 xmm0_0;
xor xmm22_1@uint64 xmm22_1 xmm0_1;
(* vmovdqa64 %xmm22,%xmm17                         #! PC = 0x5555555734fb *)
mov xmm17_0 xmm22_0;
mov xmm17_1 xmm22_1;
(* vmovdqa64 %xmm6,%xmm18                          #! PC = 0x555555573501 *)
mov xmm18_0 xmm6_0;
mov xmm18_1 xmm6_1;
(* vpternlogq $0xd2,%xmm26,%xmm21,%xmm18           #! PC = 0x555555573507 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm18_0, xmm21_0, xmm26_0, table);
call vpternlogq64 (xmm18_1, xmm21_1, xmm26_1, table);
(* vpternlogq $0xd2,%xmm21,%xmm6,%xmm17            #! PC = 0x55555557350e *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm17_0, xmm6_0, xmm21_0, table);
call vpternlogq64 (xmm17_1, xmm6_1, xmm21_1, table);
(* vpxorq %xmm30,%xmm4,%xmm4                       #! PC = 0x555555573515 *)
xor xmm4_0@uint64 xmm4_0 xmm30_0;
xor xmm4_1@uint64 xmm4_1 xmm30_1;
(* vpternlogq $0xd2,%xmm9,%xmm26,%xmm21            #! PC = 0x55555557351b *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm21_0, xmm26_0, xmm9_0, table);
call vpternlogq64 (xmm21_1, xmm26_1, xmm9_1, table);
(* vpxorq %xmm16,%xmm27,%xmm27                     #! PC = 0x555555573522 *)
xor xmm27_0@uint64 xmm27_0 xmm16_0;
xor xmm27_1@uint64 xmm27_1 xmm16_1;
(* vpternlogq $0xd2,%xmm22,%xmm9,%xmm26            #! PC = 0x555555573528 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm26_0, xmm9_0, xmm22_0, table);
call vpternlogq64 (xmm26_1, xmm9_1, xmm22_1, table);
(* vpternlogq $0xd2,%xmm6,%xmm22,%xmm9             #! PC = 0x55555557352f *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm9_0, xmm22_0, xmm6_0, table);
call vpternlogq64 (xmm9_1, xmm22_1, xmm6_1, table);
(* vmovdqa64 %xmm31,%xmm6                          #! PC = 0x555555573536 *)
mov xmm6_0 xmm31_0;
mov xmm6_1 xmm31_1;
(* vprolq $0x1c,%xmm4,%xmm4                        #! PC = 0x55555557353c *)
rol xmm4_0 xmm4_0 0x1c;
rol xmm4_1 xmm4_1 0x1c;
(* vprolq $0x14,%xmm27,%xmm27                      #! PC = 0x555555573543 *)
rol xmm27_0 xmm27_0 0x14;
rol xmm27_1 xmm27_1 0x14;
(* vpxor  %xmm6,%xmm0,%xmm3                        #! PC = 0x55555557354a *)
xor xmm3_0@uint64 xmm0_0 xmm6_0;
xor xmm3_1@uint64 xmm0_1 xmm6_1;
(* vpxorq %xmm11,%xmm1,%xmm22                      #! PC = 0x55555557354e *)
xor xmm22_0@uint64 xmm1_0 xmm11_0;
xor xmm22_1@uint64 xmm1_1 xmm11_1;
(* vpxorq %xmm29,%xmm20,%xmm13                     #! PC = 0x555555573554 *)
xor xmm13_0@uint64 xmm20_0 xmm29_0;
xor xmm13_1@uint64 xmm20_1 xmm29_1;
(* vprolq $0x3,%xmm3,%xmm3                         #! PC = 0x55555557355a *)
rol xmm3_0 xmm3_0 0x3;
rol xmm3_1 xmm3_1 0x3;
(* vprorq $0x13,%xmm22,%xmm22                      #! PC = 0x555555573561 *)
ror xmm22_0 xmm22_0 0x13;
ror xmm22_1 xmm22_1 0x13;
(* vprorq $0x3,%xmm13,%xmm13                       #! PC = 0x555555573568 *)
ror xmm13_0 xmm13_0 0x3;
ror xmm13_1 xmm13_1 0x3;
(* vmovdqa64 %xmm4,%xmm20                          #! PC = 0x55555557356f *)
mov xmm20_0 xmm4_0;
mov xmm20_1 xmm4_1;
(* vmovdqa64 %xmm27,%xmm31                         #! PC = 0x555555573575 *)
mov xmm31_0 xmm27_0;
mov xmm31_1 xmm27_1;
(* vpbroadcastq %rsi,%xmm2                         #! PC = 0x55555557357b *)
mov xmm2_0 rsi;
mov xmm2_1 rsi;
(* vpternlogq $0xd2,%xmm3,%xmm27,%xmm20            #! PC = 0x555555573581 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm20_0, xmm27_0, xmm3_0, table);
call vpternlogq64 (xmm20_1, xmm27_1, xmm3_1, table);
(* vpternlogq $0xd2,%xmm22,%xmm3,%xmm31            #! PC = 0x555555573588 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm31_0, xmm3_0, xmm22_0, table);
call vpternlogq64 (xmm31_1, xmm3_1, xmm22_1, table);
(* vpternlogq $0xd2,%xmm13,%xmm22,%xmm3            #! PC = 0x55555557358f *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm3_0, xmm22_0, xmm13_0, table);
call vpternlogq64 (xmm3_1, xmm22_1, xmm13_1, table);
(* vpternlogq $0xd2,%xmm4,%xmm13,%xmm22            #! PC = 0x555555573596 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm22_0, xmm13_0, xmm4_0, table);
call vpternlogq64 (xmm22_1, xmm13_1, xmm4_1, table);
(* vpternlogq $0xd2,%xmm27,%xmm4,%xmm13            #! PC = 0x55555557359d *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm13_0, xmm4_0, xmm27_0, table);
call vpternlogq64 (xmm13_1, xmm4_1, xmm27_1, table);
(* vpxorq -0x68(%rsp),%xmm29,%xmm4                 #! EA = L0x7fffffffda80; Value = 0x78810c50495e3275; PC = 0x5555555735a4 *)
xor xmm4_0@uint64 xmm29_0 L0x7fffffffda80;
xor xmm4_1@uint64 xmm29_1 L0x7fffffffda88;
(* vpxor  %xmm11,%xmm5,%xmm5                       #! PC = 0x5555555735af *)
xor xmm5_0@uint64 xmm5_0 xmm11_0;
xor xmm5_1@uint64 xmm5_1 xmm11_1;
(* vprolq $0x6,%xmm4,%xmm4                         #! PC = 0x5555555735b4 *)
rol xmm4_0 xmm4_0 0x6;
rol xmm4_1 xmm4_1 0x6;
(* vpxorq %xmm2,%xmm17,%xmm17                      #! PC = 0x5555555735bb *)
xor xmm17_0@uint64 xmm17_0 xmm2_0;
xor xmm17_1@uint64 xmm17_1 xmm2_1;
(* vpxor  %xmm0,%xmm8,%xmm6                        #! PC = 0x5555555735c1 *)
xor xmm6_0@uint64 xmm8_0 xmm0_0;
xor xmm6_1@uint64 xmm8_1 xmm0_1;
(* vprolq $0x1,%xmm5,%xmm2                         #! PC = 0x5555555735c5 *)
rol xmm2_0 xmm5_0 0x1;
rol xmm2_1 xmm5_1 0x1;
(* vpxorq %xmm16,%xmm7,%xmm1                       #! PC = 0x5555555735cc *)
xor xmm1_0@uint64 xmm7_0 xmm16_0;
xor xmm1_1@uint64 xmm7_1 xmm16_1;
(* vpxorq %xmm30,%xmm14,%xmm14                     #! PC = 0x5555555735d2 *)
xor xmm14_0@uint64 xmm14_0 xmm30_0;
xor xmm14_1@uint64 xmm14_1 xmm30_1;
(* vprolq $0x12,%xmm6,%xmm6                        #! PC = 0x5555555735d8 *)
rol xmm6_0 xmm6_0 0x12;
rol xmm6_1 xmm6_1 0x12;
(* vprolq $0x19,%xmm14,%xmm14                      #! PC = 0x5555555735df *)
rol xmm14_0 xmm14_0 0x19;
rol xmm14_1 xmm14_1 0x19;
(* vprolq $0x8,%xmm1,%xmm1                         #! PC = 0x5555555735e6 *)
rol xmm1_0 xmm1_0 0x8;
rol xmm1_1 xmm1_1 0x8;
(* vmovdqa %xmm2,%xmm12                            #! PC = 0x5555555735ed *)
mov xmm12_0 xmm2_0;
mov xmm12_1 xmm2_1;
(* vmovdqa %xmm4,%xmm5                             #! PC = 0x5555555735f1 *)
mov xmm5_0 xmm4_0;
mov xmm5_1 xmm4_1;
(* vpxor  -0x48(%rsp),%xmm11,%xmm8                 #! EA = L0x7fffffffdaa0; Value = 0x9f23c8b00dc49645; PC = 0x5555555735f5 *)
xor xmm8_0@uint64 xmm11_0 L0x7fffffffdaa0;
xor xmm8_1@uint64 xmm11_1 L0x7fffffffdaa8;
(* vpxorq %xmm0,%xmm19,%xmm19                      #! PC = 0x5555555735fb *)
xor xmm19_0@uint64 xmm19_0 xmm0_0;
xor xmm19_1@uint64 xmm19_1 xmm0_1;
(* vpternlogq $0xd2,%xmm14,%xmm4,%xmm12            #! PC = 0x555555573601 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm12_0, xmm4_0, xmm14_0, table);
call vpternlogq64 (xmm12_1, xmm4_1, xmm14_1, table);
(* vpternlogq $0xd2,%xmm1,%xmm14,%xmm5             #! PC = 0x555555573608 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm5_0, xmm14_0, xmm1_0, table);
call vpternlogq64 (xmm5_1, xmm14_1, xmm1_1, table);
(* vpternlogq $0xd2,%xmm6,%xmm1,%xmm14             #! PC = 0x55555557360f *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm14_0, xmm1_0, xmm6_0, table);
call vpternlogq64 (xmm14_1, xmm1_1, xmm6_1, table);
(* vpternlogq $0xd2,%xmm2,%xmm6,%xmm1              #! PC = 0x555555573616 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm1_0, xmm6_0, xmm2_0, table);
call vpternlogq64 (xmm1_1, xmm6_1, xmm2_1, table);
(* vpternlogq $0xd2,%xmm4,%xmm2,%xmm6              #! PC = 0x55555557361d *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm6_0, xmm2_0, xmm4_0, table);
call vpternlogq64 (xmm6_1, xmm2_1, xmm4_1, table);
(* vpxorq %xmm30,%xmm15,%xmm2                      #! PC = 0x555555573624 *)
xor xmm2_0@uint64 xmm15_0 xmm30_0;
xor xmm2_1@uint64 xmm15_1 xmm30_1;
(* vpxorq -0x78(%rsp),%xmm16,%xmm15                #! EA = L0x7fffffffda70; Value = 0x2f159e0e626e3157; PC = 0x55555557362a *)
xor xmm15_0@uint64 xmm16_0 L0x7fffffffda70;
xor xmm15_1@uint64 xmm16_1 L0x7fffffffda78;
(* vpxorq -0x58(%rsp),%xmm30,%xmm30                #! EA = L0x7fffffffda90; Value = 0xd384611c1d2019af; PC = 0x555555573635 *)
xor xmm30_0@uint64 xmm30_0 L0x7fffffffda90;
xor xmm30_1@uint64 xmm30_1 L0x7fffffffda98;
(* vprorq $0x1c,%xmm19,%xmm4                       #! PC = 0x555555573640 *)
ror xmm4_0 xmm19_0 0x1c;
ror xmm4_1 xmm19_1 0x1c;
(* vprolq $0x1b,%xmm15,%xmm15                      #! PC = 0x555555573647 *)
rol xmm15_0 xmm15_0 0x1b;
rol xmm15_1 xmm15_1 0x1b;
(* vpxorq %xmm29,%xmm28,%xmm10                     #! PC = 0x55555557364e *)
xor xmm10_0@uint64 xmm28_0 xmm29_0;
xor xmm10_1@uint64 xmm28_1 xmm29_1;
(* vpxor  -0x38(%rsp),%xmm0,%xmm0                  #! EA = L0x7fffffffdab0; Value = 0x6bbaf52f2afd0855; PC = 0x555555573654 *)
xor xmm0_0@uint64 xmm0_0 L0x7fffffffdab0;
xor xmm0_1@uint64 xmm0_1 L0x7fffffffdab8;
(* vpxorq %xmm29,%xmm25,%xmm29                     #! PC = 0x55555557365a *)
xor xmm29_0@uint64 xmm25_0 xmm29_0;
xor xmm29_1@uint64 xmm25_1 xmm29_1;
(* vprorq $0x2,%xmm29,%xmm29                       #! PC = 0x555555573660 *)
ror xmm29_0 xmm29_0 0x2;
ror xmm29_1 xmm29_1 0x2;
(* vprorq $0x9,%xmm30,%xmm30                       #! PC = 0x555555573667 *)
ror xmm30_0 xmm30_0 0x9;
ror xmm30_1 xmm30_1 0x9;
(* vprolq $0xa,%xmm8,%xmm8                         #! PC = 0x55555557366e *)
rol xmm8_0 xmm8_0 0xa;
rol xmm8_1 xmm8_1 0xa;
(* vprolq $0xf,%xmm10,%xmm10                       #! PC = 0x555555573675 *)
rol xmm10_0 xmm10_0 0xf;
rol xmm10_1 xmm10_1 0xf;
(* vprorq $0x8,%xmm2,%xmm2                         #! PC = 0x55555557367c *)
ror xmm2_0 xmm2_0 0x8;
ror xmm2_1 xmm2_1 0x8;
(* vpxorq %xmm11,%xmm24,%xmm11                     #! PC = 0x555555573683 *)
xor xmm11_0@uint64 xmm24_0 xmm11_0;
xor xmm11_1@uint64 xmm24_1 xmm11_1;
(* vpxorq %xmm16,%xmm23,%xmm16                     #! PC = 0x555555573689 *)
xor xmm16_0@uint64 xmm23_0 xmm16_0;
xor xmm16_1@uint64 xmm23_1 xmm16_1;
(* vprorq $0x17,%xmm0,%xmm0                        #! PC = 0x55555557368f *)
ror xmm0_0 xmm0_0 0x17;
ror xmm0_1 xmm0_1 0x17;
(* vprolq $0x2,%xmm11,%xmm11                       #! PC = 0x555555573696 *)
rol xmm11_0 xmm11_0 0x2;
rol xmm11_1 xmm11_1 0x2;
(* vprorq $0x19,%xmm16,%xmm16                      #! PC = 0x55555557369d *)
ror xmm16_0 xmm16_0 0x19;
ror xmm16_1 xmm16_1 0x19;
(* vmovdqa %xmm15,%xmm7                            #! PC = 0x5555555736a4 *)
mov xmm7_0 xmm15_0;
mov xmm7_1 xmm15_1;
(* vmovdqa64 %xmm4,%xmm19                          #! PC = 0x5555555736a8 *)
mov xmm19_0 xmm4_0;
mov xmm19_1 xmm4_1;
(* vpternlogq $0xd2,%xmm8,%xmm4,%xmm7              #! PC = 0x5555555736ae *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm7_0, xmm4_0, xmm8_0, table);
call vpternlogq64 (xmm7_1, xmm4_1, xmm8_1, table);
(* vpternlogq $0xd2,%xmm10,%xmm8,%xmm19            #! PC = 0x5555555736b5 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm19_0, xmm8_0, xmm10_0, table);
call vpternlogq64 (xmm19_1, xmm8_1, xmm10_1, table);
(* vmovdqa64 %xmm29,%xmm27                         #! PC = 0x5555555736bc *)
mov xmm27_0 xmm29_0;
mov xmm27_1 xmm29_1;
(* vpternlogq $0xd2,%xmm2,%xmm10,%xmm8             #! PC = 0x5555555736c2 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm8_0, xmm10_0, xmm2_0, table);
call vpternlogq64 (xmm8_1, xmm10_1, xmm2_1, table);
(* vpternlogq $0xd2,%xmm15,%xmm2,%xmm10            #! PC = 0x5555555736c9 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm10_0, xmm2_0, xmm15_0, table);
call vpternlogq64 (xmm10_1, xmm2_1, xmm15_1, table);
(* vpternlogq $0xd2,%xmm4,%xmm15,%xmm2             #! PC = 0x5555555736d0 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm2_0, xmm15_0, xmm4_0, table);
call vpternlogq64 (xmm2_1, xmm15_1, xmm4_1, table);
(* vmovdqa64 %xmm30,%xmm15                         #! PC = 0x5555555736d7 *)
mov xmm15_0 xmm30_0;
mov xmm15_1 xmm30_1;
(* vpternlogq $0xd2,%xmm0,%xmm16,%xmm15            #! PC = 0x5555555736dd *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm15_0, xmm16_0, xmm0_0, table);
call vpternlogq64 (xmm15_1, xmm16_1, xmm0_1, table);
(* vpternlogq $0xd2,%xmm16,%xmm30,%xmm27           #! PC = 0x5555555736e4 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm27_0, xmm30_0, xmm16_0, table);
call vpternlogq64 (xmm27_1, xmm30_1, xmm16_1, table);
(* vpternlogq $0xd2,%xmm11,%xmm0,%xmm16            #! PC = 0x5555555736eb *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm16_0, xmm0_0, xmm11_0, table);
call vpternlogq64 (xmm16_1, xmm0_1, xmm11_1, table);
(* vmovdqa64 %xmm16,%xmm24                         #! PC = 0x5555555736f2 *)
mov xmm24_0 xmm16_0;
mov xmm24_1 xmm16_1;
(* vpternlogq $0x96,%xmm21,%xmm14,%xmm24           #! PC = 0x5555555736f8 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm24_0, xmm14_0, xmm21_0, table);
call vpternlogq64 (xmm24_1, xmm14_1, xmm21_1, table);
(* vpternlogq $0x96,%xmm3,%xmm8,%xmm24             #! PC = 0x5555555736ff *)
mov table 0x96@uint8;
call vpternlogq64 (xmm24_0, xmm8_0, xmm3_0, table);
call vpternlogq64 (xmm24_1, xmm8_1, xmm3_1, table);
(* vprolq $0x1,%xmm24,%xmm23                       #! PC = 0x555555573706 *)
rol xmm23_0 xmm24_0 0x1;
rol xmm23_1 xmm24_1 0x1;
(* vpternlogq $0xd2,%xmm29,%xmm11,%xmm0            #! PC = 0x55555557370d *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm0_0, xmm11_0, xmm29_0, table);
call vpternlogq64 (xmm0_1, xmm11_1, xmm29_1, table);
(* vmovdqa64 %xmm22,%xmm4                          #! PC = 0x555555573714 *)
mov xmm4_0 xmm22_0;
mov xmm4_1 xmm22_1;
(* vpternlogq $0x96,%xmm1,%xmm0,%xmm4              #! PC = 0x55555557371a *)
mov table 0x96@uint8;
call vpternlogq64 (xmm4_0, xmm0_0, xmm1_0, table);
call vpternlogq64 (xmm4_1, xmm0_1, xmm1_1, table);
(* vpternlogq $0x96,%xmm10,%xmm26,%xmm4            #! PC = 0x555555573721 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm4_0, xmm26_0, xmm10_0, table);
call vpternlogq64 (xmm4_1, xmm26_1, xmm10_1, table);
(* vpternlogq $0xd2,%xmm30,%xmm29,%xmm11           #! PC = 0x555555573728 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm11_0, xmm29_0, xmm30_0, table);
call vpternlogq64 (xmm11_1, xmm29_1, xmm30_1, table);
(* vmovdqa64 %xmm23,-0x78(%rsp)                    #! EA = L0x7fffffffda70; PC = 0x55555557372f *)
mov L0x7fffffffda70 xmm23_0;
mov L0x7fffffffda78 xmm23_1;
(* vprolq $0x1,%xmm4,%xmm23                        #! PC = 0x55555557373a *)
rol xmm23_0 xmm4_0 0x1;
rol xmm23_1 xmm4_1 0x1;
(* vmovdqa64 %xmm2,%xmm28                          #! PC = 0x555555573741 *)
mov xmm28_0 xmm2_0;
mov xmm28_1 xmm2_1;
(* vpternlogq $0x96,%xmm11,%xmm13,%xmm28           #! PC = 0x555555573747 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm28_0, xmm13_0, xmm11_0, table);
call vpternlogq64 (xmm28_1, xmm13_1, xmm11_1, table);
(* vpternlogq $0x96,%xmm9,%xmm6,%xmm28             #! PC = 0x55555557374e *)
mov table 0x96@uint8;
call vpternlogq64 (xmm28_0, xmm6_0, xmm9_0, table);
call vpternlogq64 (xmm28_1, xmm6_1, xmm9_1, table);
(* vmovdqa64 %xmm17,%xmm30                         #! PC = 0x555555573755 *)
mov xmm30_0 xmm17_0;
mov xmm30_1 xmm17_1;
(* vpternlogq $0x96,%xmm20,%xmm7,%xmm30            #! PC = 0x55555557375b *)
mov table 0x96@uint8;
call vpternlogq64 (xmm30_0, xmm7_0, xmm20_0, table);
call vpternlogq64 (xmm30_1, xmm7_1, xmm20_1, table);
(* vmovdqa64 %xmm23,-0x68(%rsp)                    #! EA = L0x7fffffffda80; PC = 0x555555573762 *)
mov L0x7fffffffda80 xmm23_0;
mov L0x7fffffffda88 xmm23_1;
(* vprolq $0x1,%xmm28,%xmm23                       #! PC = 0x55555557376d *)
rol xmm23_0 xmm28_0 0x1;
rol xmm23_1 xmm28_1 0x1;
(* vpternlogq $0x96,%xmm12,%xmm27,%xmm30           #! PC = 0x555555573774 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm30_0, xmm27_0, xmm12_0, table);
call vpternlogq64 (xmm30_1, xmm27_1, xmm12_1, table);
(* vmovdqa64 %xmm5,%xmm25                          #! PC = 0x55555557377b *)
mov xmm25_0 xmm5_0;
mov xmm25_1 xmm5_1;
(* vpternlogq $0x96,%xmm19,%xmm18,%xmm25           #! PC = 0x555555573781 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm25_0, xmm18_0, xmm19_0, table);
call vpternlogq64 (xmm25_1, xmm18_1, xmm19_1, table);
(* vpternlogq $0x96,%xmm15,%xmm31,%xmm25           #! PC = 0x555555573788 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm25_0, xmm31_0, xmm15_0, table);
call vpternlogq64 (xmm25_1, xmm31_1, xmm15_1, table);
(* vprolq $0x1,%xmm25,%xmm29                       #! PC = 0x55555557378f *)
rol xmm29_0 xmm25_0 0x1;
rol xmm29_1 xmm25_1 0x1;
(* vmovdqa64 %xmm23,-0x58(%rsp)                    #! EA = L0x7fffffffda90; PC = 0x555555573796 *)
mov L0x7fffffffda90 xmm23_0;
mov L0x7fffffffda98 xmm23_1;
(* vprolq $0x1,%xmm30,%xmm23                       #! PC = 0x5555555737a1 *)
rol xmm23_0 xmm30_0 0x1;
rol xmm23_1 xmm30_1 0x1;
(* vpxorq -0x78(%rsp),%xmm30,%xmm30                #! EA = L0x7fffffffda70; Value = 0x1a103e6298b39ede; PC = 0x5555555737a8 *)
xor xmm30_0@uint64 xmm30_0 L0x7fffffffda70;
xor xmm30_1@uint64 xmm30_1 L0x7fffffffda78;
(* vpxorq -0x68(%rsp),%xmm25,%xmm25                #! EA = L0x7fffffffda80; Value = 0x5eacdd5d2b313bdf; PC = 0x5555555737b3 *)
xor xmm25_0@uint64 xmm25_0 L0x7fffffffda80;
xor xmm25_1@uint64 xmm25_1 L0x7fffffffda88;
(* vpxorq -0x58(%rsp),%xmm24,%xmm24                #! EA = L0x7fffffffda90; Value = 0x339637b9c0fe06d0; PC = 0x5555555737be *)
xor xmm24_0@uint64 xmm24_0 L0x7fffffffda90;
xor xmm24_1@uint64 xmm24_1 L0x7fffffffda98;
(* vpxorq %xmm30,%xmm31,%xmm31                     #! PC = 0x5555555737c9 *)
xor xmm31_0@uint64 xmm31_0 xmm30_0;
xor xmm31_1@uint64 xmm31_1 xmm30_1;
(* vprorq $0x14,%xmm31,%xmm31                      #! PC = 0x5555555737cf *)
ror xmm31_0 xmm31_0 0x14;
ror xmm31_1 xmm31_1 0x14;
(* vpxorq %xmm4,%xmm23,%xmm23                      #! PC = 0x5555555737d6 *)
xor xmm23_0@uint64 xmm23_0 xmm4_0;
xor xmm23_1@uint64 xmm23_1 xmm4_1;
(* vpxorq %xmm25,%xmm14,%xmm14                     #! PC = 0x5555555737dc *)
xor xmm14_0@uint64 xmm14_0 xmm25_0;
xor xmm14_1@uint64 xmm14_1 xmm25_1;
(* vpxorq %xmm24,%xmm10,%xmm10                     #! PC = 0x5555555737e2 *)
xor xmm10_0@uint64 xmm10_0 xmm24_0;
xor xmm10_1@uint64 xmm10_1 xmm24_1;
(* vpxorq %xmm23,%xmm11,%xmm11                     #! PC = 0x5555555737e8 *)
xor xmm11_0@uint64 xmm11_0 xmm23_0;
xor xmm11_1@uint64 xmm11_1 xmm23_1;
(* vprorq $0x15,%xmm14,%xmm14                      #! PC = 0x5555555737ee *)
ror xmm14_0 xmm14_0 0x15;
ror xmm14_1 xmm14_1 0x15;
(* vprolq $0x15,%xmm10,%xmm10                      #! PC = 0x5555555737f5 *)
rol xmm10_0 xmm10_0 0x15;
rol xmm10_1 xmm10_1 0x15;
(* vprolq $0xe,%xmm11,%xmm11                       #! PC = 0x5555555737fc *)
rol xmm11_0 xmm11_0 0xe;
rol xmm11_1 xmm11_1 0xe;
(* vpxorq %xmm28,%xmm29,%xmm29                     #! PC = 0x555555573803 *)
xor xmm29_0@uint64 xmm29_0 xmm28_0;
xor xmm29_1@uint64 xmm29_1 xmm28_1;
(* vpxorq %xmm17,%xmm29,%xmm4                      #! PC = 0x555555573809 *)
xor xmm4_0@uint64 xmm29_0 xmm17_0;
xor xmm4_1@uint64 xmm29_1 xmm17_1;
(* vmovdqa64 %xmm4,%xmm28                          #! PC = 0x55555557380f *)
mov xmm28_0 xmm4_0;
mov xmm28_1 xmm4_1;
(* vmovdqa64 %xmm31,%xmm17                         #! PC = 0x555555573815 *)
mov xmm17_0 xmm31_0;
mov xmm17_1 xmm31_1;
(* vpternlogq $0xd2,%xmm10,%xmm14,%xmm17           #! PC = 0x55555557381b *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm17_0, xmm14_0, xmm10_0, table);
call vpternlogq64 (xmm17_1, xmm14_1, xmm10_1, table);
(* vpternlogq $0xd2,%xmm14,%xmm31,%xmm28           #! PC = 0x555555573822 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm28_0, xmm31_0, xmm14_0, table);
call vpternlogq64 (xmm28_1, xmm31_1, xmm14_1, table);
(* vpternlogq $0xd2,%xmm11,%xmm10,%xmm14           #! PC = 0x555555573829 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm14_0, xmm10_0, xmm11_0, table);
call vpternlogq64 (xmm14_1, xmm10_1, xmm11_1, table);
(* vpternlogq $0xd2,%xmm4,%xmm11,%xmm10            #! PC = 0x555555573830 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm10_0, xmm11_0, xmm4_0, table);
call vpternlogq64 (xmm10_1, xmm11_1, xmm4_1, table);
(* vpternlogq $0xd2,%xmm31,%xmm4,%xmm11            #! PC = 0x555555573837 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm11_0, xmm4_0, xmm31_0, table);
call vpternlogq64 (xmm11_1, xmm4_1, xmm31_1, table);
(* vpbroadcastq %rdi,%xmm4                         #! PC = 0x55555557383e *)
mov xmm4_0 rdi;
mov xmm4_1 rdi;
(* vpxorq %xmm4,%xmm28,%xmm28                      #! PC = 0x555555573844 *)
xor xmm28_0@uint64 xmm28_0 xmm4_0;
xor xmm28_1@uint64 xmm28_1 xmm4_1;
(* vpxorq %xmm23,%xmm13,%xmm13                     #! PC = 0x55555557384a *)
xor xmm13_0@uint64 xmm13_0 xmm23_0;
xor xmm13_1@uint64 xmm13_1 xmm23_1;
(* vpxorq %xmm24,%xmm26,%xmm4                      #! PC = 0x555555573850 *)
xor xmm4_0@uint64 xmm26_0 xmm24_0;
xor xmm4_1@uint64 xmm26_1 xmm24_1;
(* vprolq $0x1c,%xmm4,%xmm4                        #! PC = 0x555555573856 *)
rol xmm4_0 xmm4_0 0x1c;
rol xmm4_1 xmm4_1 0x1c;
(* vprolq $0x14,%xmm13,%xmm13                      #! PC = 0x55555557385d *)
rol xmm13_0 xmm13_0 0x14;
rol xmm13_1 xmm13_1 0x14;
(* vpxorq %xmm29,%xmm12,%xmm12                     #! PC = 0x555555573864 *)
xor xmm12_0@uint64 xmm12_0 xmm29_0;
xor xmm12_1@uint64 xmm12_1 xmm29_1;
(* vpxorq %xmm30,%xmm19,%xmm19                     #! PC = 0x55555557386a *)
xor xmm19_0@uint64 xmm19_0 xmm30_0;
xor xmm19_1@uint64 xmm19_1 xmm30_1;
(* vpxorq %xmm25,%xmm16,%xmm16                     #! PC = 0x555555573870 *)
xor xmm16_0@uint64 xmm16_0 xmm25_0;
xor xmm16_1@uint64 xmm16_1 xmm25_1;
(* vpxorq %xmm30,%xmm18,%xmm18                     #! PC = 0x555555573876 *)
xor xmm18_0@uint64 xmm18_0 xmm30_0;
xor xmm18_1@uint64 xmm18_1 xmm30_1;
(* vpxorq %xmm25,%xmm3,%xmm3                       #! PC = 0x55555557387c *)
xor xmm3_0@uint64 xmm3_0 xmm25_0;
xor xmm3_1@uint64 xmm3_1 xmm25_1;
(* vprolq $0x1,%xmm18,%xmm18                       #! PC = 0x555555573882 *)
rol xmm18_0 xmm18_0 0x1;
rol xmm18_1 xmm18_1 0x1;
(* vprolq $0x6,%xmm3,%xmm3                         #! PC = 0x555555573889 *)
rol xmm3_0 xmm3_0 0x6;
rol xmm3_1 xmm3_1 0x6;
(* vprolq $0x3,%xmm12,%xmm12                       #! PC = 0x555555573890 *)
rol xmm12_0 xmm12_0 0x3;
rol xmm12_1 xmm12_1 0x3;
(* vprorq $0x13,%xmm19,%xmm19                      #! PC = 0x555555573897 *)
ror xmm19_0 xmm19_0 0x13;
ror xmm19_1 xmm19_1 0x13;
(* vprorq $0x3,%xmm16,%xmm16                       #! PC = 0x55555557389e *)
ror xmm16_0 xmm16_0 0x3;
ror xmm16_1 xmm16_1 0x3;
(* vpxorq %xmm29,%xmm27,%xmm27                     #! PC = 0x5555555738a5 *)
xor xmm27_0@uint64 xmm27_0 xmm29_0;
xor xmm27_1@uint64 xmm27_1 xmm29_1;
(* vpxorq %xmm24,%xmm1,%xmm1                       #! PC = 0x5555555738ab *)
xor xmm1_0@uint64 xmm1_0 xmm24_0;
xor xmm1_1@uint64 xmm1_1 xmm24_1;
(* vpxorq %xmm23,%xmm2,%xmm2                       #! PC = 0x5555555738b1 *)
xor xmm2_0@uint64 xmm2_0 xmm23_0;
xor xmm2_1@uint64 xmm2_1 xmm23_1;
(* vpxorq %xmm29,%xmm20,%xmm20                     #! PC = 0x5555555738b7 *)
xor xmm20_0@uint64 xmm20_0 xmm29_0;
xor xmm20_1@uint64 xmm20_1 xmm29_1;
(* vpxorq %xmm23,%xmm9,%xmm9                       #! PC = 0x5555555738bd *)
xor xmm9_0@uint64 xmm9_0 xmm23_0;
xor xmm9_1@uint64 xmm9_1 xmm23_1;
(* vprorq $0x1c,%xmm20,%xmm20                      #! PC = 0x5555555738c3 *)
ror xmm20_0 xmm20_0 0x1c;
ror xmm20_1 xmm20_1 0x1c;
(* vprolq $0x1b,%xmm9,%xmm9                        #! PC = 0x5555555738ca *)
rol xmm9_0 xmm9_0 0x1b;
rol xmm9_1 xmm9_1 0x1b;
(* vprolq $0x12,%xmm27,%xmm27                      #! PC = 0x5555555738d1 *)
rol xmm27_0 xmm27_0 0x12;
rol xmm27_1 xmm27_1 0x12;
(* vprolq $0x19,%xmm1,%xmm1                        #! PC = 0x5555555738d8 *)
rol xmm1_0 xmm1_0 0x19;
rol xmm1_1 xmm1_1 0x19;
(* vprolq $0x8,%xmm2,%xmm2                         #! PC = 0x5555555738df *)
rol xmm2_0 xmm2_0 0x8;
rol xmm2_1 xmm2_1 0x8;
(* vpxorq %xmm30,%xmm5,%xmm5                       #! PC = 0x5555555738e6 *)
xor xmm5_0@uint64 xmm5_0 xmm30_0;
xor xmm5_1@uint64 xmm5_1 xmm30_1;
(* vpxorq %xmm25,%xmm8,%xmm8                       #! PC = 0x5555555738ec *)
xor xmm8_0@uint64 xmm8_0 xmm25_0;
xor xmm8_1@uint64 xmm8_1 xmm25_1;
(* vpxorq %xmm24,%xmm0,%xmm0                       #! PC = 0x5555555738f2 *)
xor xmm0_0@uint64 xmm0_0 xmm24_0;
xor xmm0_1@uint64 xmm0_1 xmm24_1;
(* vprolq $0xa,%xmm5,%xmm5                         #! PC = 0x5555555738f8 *)
rol xmm5_0 xmm5_0 0xa;
rol xmm5_1 xmm5_1 0xa;
(* vprolq $0xf,%xmm8,%xmm8                         #! PC = 0x5555555738ff *)
rol xmm8_0 xmm8_0 0xf;
rol xmm8_1 xmm8_1 0xf;
(* vprorq $0x8,%xmm0,%xmm0                         #! PC = 0x555555573906 *)
ror xmm0_0 xmm0_0 0x8;
ror xmm0_1 xmm0_1 0x8;
(* vmovdqa64 %xmm4,%xmm26                          #! PC = 0x55555557390d *)
mov xmm26_0 xmm4_0;
mov xmm26_1 xmm4_1;
(* vmovdqa64 %xmm13,%xmm31                         #! PC = 0x555555573913 *)
mov xmm31_0 xmm13_0;
mov xmm31_1 xmm13_1;
(* vpternlogq $0xd2,%xmm12,%xmm13,%xmm26           #! PC = 0x555555573919 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm26_0, xmm13_0, xmm12_0, table);
call vpternlogq64 (xmm26_1, xmm13_1, xmm12_1, table);
(* vpternlogq $0xd2,%xmm19,%xmm12,%xmm31           #! PC = 0x555555573920 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm31_0, xmm12_0, xmm19_0, table);
call vpternlogq64 (xmm31_1, xmm12_1, xmm19_1, table);
(* vpternlogq $0xd2,%xmm16,%xmm19,%xmm12           #! PC = 0x555555573927 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm12_0, xmm19_0, xmm16_0, table);
call vpternlogq64 (xmm12_1, xmm19_1, xmm16_1, table);
(* vpternlogq $0xd2,%xmm4,%xmm16,%xmm19            #! PC = 0x55555557392e *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm19_0, xmm16_0, xmm4_0, table);
call vpternlogq64 (xmm19_1, xmm16_1, xmm4_1, table);
(* vpternlogq $0xd2,%xmm13,%xmm4,%xmm16            #! PC = 0x555555573935 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm16_0, xmm4_0, xmm13_0, table);
call vpternlogq64 (xmm16_1, xmm4_1, xmm13_1, table);
(* vmovdqa64 %xmm18,%xmm13                         #! PC = 0x55555557393c *)
mov xmm13_0 xmm18_0;
mov xmm13_1 xmm18_1;
(* vmovdqa %xmm3,%xmm4                             #! PC = 0x555555573942 *)
mov xmm4_0 xmm3_0;
mov xmm4_1 xmm3_1;
(* vpternlogq $0xd2,%xmm1,%xmm3,%xmm13             #! PC = 0x555555573946 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm13_0, xmm3_0, xmm1_0, table);
call vpternlogq64 (xmm13_1, xmm3_1, xmm1_1, table);
(* vpternlogq $0xd2,%xmm2,%xmm1,%xmm4              #! PC = 0x55555557394d *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm4_0, xmm1_0, xmm2_0, table);
call vpternlogq64 (xmm4_1, xmm1_1, xmm2_1, table);
(* vpxorq %xmm25,%xmm21,%xmm21                     #! PC = 0x555555573954 *)
xor xmm21_0@uint64 xmm21_0 xmm25_0;
xor xmm21_1@uint64 xmm21_1 xmm25_1;
(* vpternlogq $0xd2,%xmm27,%xmm2,%xmm1             #! PC = 0x55555557395a *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm1_0, xmm2_0, xmm27_0, table);
call vpternlogq64 (xmm1_1, xmm2_1, xmm27_1, table);
(* vpxorq %xmm24,%xmm22,%xmm22                     #! PC = 0x555555573961 *)
xor xmm22_0@uint64 xmm22_0 xmm24_0;
xor xmm22_1@uint64 xmm22_1 xmm24_1;
(* vpternlogq $0xd2,%xmm18,%xmm27,%xmm2            #! PC = 0x555555573967 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm2_0, xmm27_0, xmm18_0, table);
call vpternlogq64 (xmm2_1, xmm27_1, xmm18_1, table);
(* vpternlogq $0xd2,%xmm3,%xmm18,%xmm27            #! PC = 0x55555557396e *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm27_0, xmm18_0, xmm3_0, table);
call vpternlogq64 (xmm27_1, xmm18_1, xmm3_1, table);
(* vmovdqa %xmm9,%xmm3                             #! PC = 0x555555573975 *)
mov xmm3_0 xmm9_0;
mov xmm3_1 xmm9_1;
(* vmovdqa64 %xmm20,%xmm18                         #! PC = 0x555555573979 *)
mov xmm18_0 xmm20_0;
mov xmm18_1 xmm20_1;
(* vprorq $0x2,%xmm21,%xmm21                       #! PC = 0x55555557397f *)
ror xmm21_0 xmm21_0 0x2;
ror xmm21_1 xmm21_1 0x2;
(* vprorq $0x9,%xmm22,%xmm22                       #! PC = 0x555555573986 *)
ror xmm22_0 xmm22_0 0x9;
ror xmm22_1 xmm22_1 0x9;
(* vpternlogq $0xd2,%xmm5,%xmm20,%xmm3             #! PC = 0x55555557398d *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm3_0, xmm20_0, xmm5_0, table);
call vpternlogq64 (xmm3_1, xmm20_1, xmm5_1, table);
(* vpternlogq $0xd2,%xmm8,%xmm5,%xmm18             #! PC = 0x555555573994 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm18_0, xmm5_0, xmm8_0, table);
call vpternlogq64 (xmm18_1, xmm5_1, xmm8_1, table);
(* vpxorq %xmm29,%xmm7,%xmm7                       #! PC = 0x55555557399b *)
xor xmm7_0@uint64 xmm7_0 xmm29_0;
xor xmm7_1@uint64 xmm7_1 xmm29_1;
(* vpternlogq $0xd2,%xmm0,%xmm8,%xmm5              #! PC = 0x5555555739a1 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm5_0, xmm8_0, xmm0_0, table);
call vpternlogq64 (xmm5_1, xmm8_1, xmm0_1, table);
(* vpxorq %xmm23,%xmm6,%xmm6                       #! PC = 0x5555555739a8 *)
xor xmm6_0@uint64 xmm6_0 xmm23_0;
xor xmm6_1@uint64 xmm6_1 xmm23_1;
(* vpternlogq $0xd2,%xmm9,%xmm0,%xmm8              #! PC = 0x5555555739ae *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm8_0, xmm0_0, xmm9_0, table);
call vpternlogq64 (xmm8_1, xmm0_1, xmm9_1, table);
(* vpternlogq $0xd2,%xmm20,%xmm9,%xmm0             #! PC = 0x5555555739b5 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm0_0, xmm9_0, xmm20_0, table);
call vpternlogq64 (xmm0_1, xmm9_1, xmm20_1, table);
(* vpxorq %xmm30,%xmm15,%xmm9                      #! PC = 0x5555555739bc *)
xor xmm9_0@uint64 xmm15_0 xmm30_0;
xor xmm9_1@uint64 xmm15_1 xmm30_1;
(* vprorq $0x17,%xmm7,%xmm7                        #! PC = 0x5555555739c2 *)
ror xmm7_0 xmm7_0 0x17;
ror xmm7_1 xmm7_1 0x17;
(* vprolq $0x2,%xmm9,%xmm9                         #! PC = 0x5555555739c9 *)
rol xmm9_0 xmm9_0 0x2;
rol xmm9_1 xmm9_1 0x2;
(* vprorq $0x19,%xmm6,%xmm6                        #! PC = 0x5555555739d0 *)
ror xmm6_0 xmm6_0 0x19;
ror xmm6_1 xmm6_1 0x19;
(* vmovdqa64 %xmm21,%xmm23                         #! PC = 0x5555555739d7 *)
mov xmm23_0 xmm21_0;
mov xmm23_1 xmm21_1;
(* vmovdqa64 %xmm22,%xmm24                         #! PC = 0x5555555739dd *)
mov xmm24_0 xmm22_0;
mov xmm24_1 xmm22_1;
(* vmovdqa %xmm12,%xmm15                           #! PC = 0x5555555739e3 *)
mov xmm15_0 xmm12_0;
mov xmm15_1 xmm12_1;
(* vmovdqa64 %xmm27,%xmm25                         #! PC = 0x5555555739e8 *)
mov xmm25_0 xmm27_0;
mov xmm25_1 xmm27_1;
(* vpternlogq $0x96,%xmm11,%xmm16,%xmm25           #! PC = 0x5555555739ee *)
mov table 0x96@uint8;
call vpternlogq64 (xmm25_0, xmm16_0, xmm11_0, table);
call vpternlogq64 (xmm25_1, xmm16_1, xmm11_1, table);
(* vpternlogq $0xd2,%xmm7,%xmm6,%xmm24             #! PC = 0x5555555739f5 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm24_0, xmm6_0, xmm7_0, table);
call vpternlogq64 (xmm24_1, xmm6_1, xmm7_1, table);
(* vpternlogq $0xd2,%xmm6,%xmm22,%xmm23            #! PC = 0x5555555739fc *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm23_0, xmm22_0, xmm6_0, table);
call vpternlogq64 (xmm23_1, xmm22_1, xmm6_1, table);
(* vpternlogq $0xd2,%xmm9,%xmm7,%xmm6              #! PC = 0x555555573a03 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm6_0, xmm7_0, xmm9_0, table);
call vpternlogq64 (xmm6_1, xmm7_1, xmm9_1, table);
(* vpternlogq $0x96,%xmm6,%xmm14,%xmm15            #! PC = 0x555555573a0a *)
mov table 0x96@uint8;
call vpternlogq64 (xmm15_0, xmm14_0, xmm6_0, table);
call vpternlogq64 (xmm15_1, xmm14_1, xmm6_1, table);
(* vpternlogq $0x96,%xmm1,%xmm5,%xmm15             #! PC = 0x555555573a11 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm15_0, xmm5_0, xmm1_0, table);
call vpternlogq64 (xmm15_1, xmm5_1, xmm1_1, table);
(* vprolq $0x1,%xmm15,%xmm29                       #! PC = 0x555555573a18 *)
rol xmm29_0 xmm15_0 0x1;
rol xmm29_1 xmm15_1 0x1;
(* vpternlogq $0xd2,%xmm21,%xmm9,%xmm7             #! PC = 0x555555573a1f *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm7_0, xmm9_0, xmm21_0, table);
call vpternlogq64 (xmm7_1, xmm9_1, xmm21_1, table);
(* vpternlogq $0xd2,%xmm22,%xmm21,%xmm9            #! PC = 0x555555573a26 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm9_0, xmm21_0, xmm22_0, table);
call vpternlogq64 (xmm9_1, xmm21_1, xmm22_1, table);
(* vmovdqa64 %xmm7,%xmm21                          #! PC = 0x555555573a2d *)
mov xmm21_0 xmm7_0;
mov xmm21_1 xmm7_1;
(* vpternlogq $0x96,%xmm2,%xmm8,%xmm21             #! PC = 0x555555573a33 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm21_0, xmm8_0, xmm2_0, table);
call vpternlogq64 (xmm21_1, xmm8_1, xmm2_1, table);
(* vpternlogq $0x96,%xmm10,%xmm19,%xmm21           #! PC = 0x555555573a3a *)
mov table 0x96@uint8;
call vpternlogq64 (xmm21_0, xmm19_0, xmm10_0, table);
call vpternlogq64 (xmm21_1, xmm19_1, xmm10_1, table);
(* vmovdqa64 %xmm29,-0x78(%rsp)                    #! EA = L0x7fffffffda70; PC = 0x555555573a41 *)
mov L0x7fffffffda70 xmm29_0;
mov L0x7fffffffda78 xmm29_1;
(* vprolq $0x1,%xmm21,%xmm29                       #! PC = 0x555555573a4c *)
rol xmm29_0 xmm21_0 0x1;
rol xmm29_1 xmm21_1 0x1;
(* vpternlogq $0x96,%xmm0,%xmm9,%xmm25             #! PC = 0x555555573a53 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm25_0, xmm9_0, xmm0_0, table);
call vpternlogq64 (xmm25_1, xmm9_1, xmm0_1, table);
(* vmovdqa64 %xmm28,%xmm22                         #! PC = 0x555555573a5a *)
mov xmm22_0 xmm28_0;
mov xmm22_1 xmm28_1;
(* vpternlogq $0x96,%xmm3,%xmm23,%xmm22            #! PC = 0x555555573a60 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm22_0, xmm23_0, xmm3_0, table);
call vpternlogq64 (xmm22_1, xmm23_1, xmm3_1, table);
(* vpternlogq $0x96,%xmm26,%xmm13,%xmm22           #! PC = 0x555555573a67 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm22_0, xmm13_0, xmm26_0, table);
call vpternlogq64 (xmm22_1, xmm13_1, xmm26_1, table);
(* vmovdqa64 %xmm18,%xmm20                         #! PC = 0x555555573a6e *)
mov xmm20_0 xmm18_0;
mov xmm20_1 xmm18_1;
(* vmovdqa64 %xmm29,-0x68(%rsp)                    #! EA = L0x7fffffffda80; PC = 0x555555573a74 *)
mov L0x7fffffffda80 xmm29_0;
mov L0x7fffffffda88 xmm29_1;
(* vprolq $0x1,%xmm25,%xmm29                       #! PC = 0x555555573a7f *)
rol xmm29_0 xmm25_0 0x1;
rol xmm29_1 xmm25_1 0x1;
(* vpternlogq $0x96,%xmm31,%xmm4,%xmm20            #! PC = 0x555555573a86 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm20_0, xmm4_0, xmm31_0, table);
call vpternlogq64 (xmm20_1, xmm4_1, xmm31_1, table);
(* vpternlogq $0x96,%xmm24,%xmm17,%xmm20           #! PC = 0x555555573a8d *)
mov table 0x96@uint8;
call vpternlogq64 (xmm20_0, xmm17_0, xmm24_0, table);
call vpternlogq64 (xmm20_1, xmm17_1, xmm24_1, table);
(* vprolq $0x1,%xmm20,%xmm30                       #! PC = 0x555555573a94 *)
rol xmm30_0 xmm20_0 0x1;
rol xmm30_1 xmm20_1 0x1;
(* vpxorq -0x68(%rsp),%xmm20,%xmm20                #! EA = L0x7fffffffda80; Value = 0x7199e03832b82cef; PC = 0x555555573a9b *)
xor xmm20_0@uint64 xmm20_0 L0x7fffffffda80;
xor xmm20_1@uint64 xmm20_1 L0x7fffffffda88;
(* mov    %r15,%rsi                                #! PC = 0x555555573aa6 *)
mov rsi r15;
(* vmovdqa64 %xmm29,-0x58(%rsp)                    #! EA = L0x7fffffffda90; PC = 0x555555573aa9 *)
mov L0x7fffffffda90 xmm29_0;
mov L0x7fffffffda98 xmm29_1;
(* vprolq $0x1,%xmm22,%xmm29                       #! PC = 0x555555573ab4 *)
rol xmm29_0 xmm22_0 0x1;
rol xmm29_1 xmm22_1 0x1;
(* vpxorq -0x78(%rsp),%xmm22,%xmm22                #! EA = L0x7fffffffda70; Value = 0x5ebd2eca407d02f4; PC = 0x555555573abb *)
xor xmm22_0@uint64 xmm22_0 L0x7fffffffda70;
xor xmm22_1@uint64 xmm22_1 L0x7fffffffda78;
(* vpxor  -0x58(%rsp),%xmm15,%xmm15                #! EA = L0x7fffffffda90; Value = 0xb44e45160d780d07; PC = 0x555555573ac6 *)
xor xmm15_0@uint64 xmm15_0 L0x7fffffffda90;
xor xmm15_1@uint64 xmm15_1 L0x7fffffffda98;
(* vpxorq %xmm22,%xmm31,%xmm31                     #! PC = 0x555555573acc *)
xor xmm31_0@uint64 xmm31_0 xmm22_0;
xor xmm31_1@uint64 xmm31_1 xmm22_1;
(* vprorq $0x14,%xmm31,%xmm31                      #! PC = 0x555555573ad2 *)
ror xmm31_0 xmm31_0 0x14;
ror xmm31_1 xmm31_1 0x14;
(* vpxorq %xmm20,%xmm1,%xmm1                       #! PC = 0x555555573ad9 *)
xor xmm1_0@uint64 xmm1_0 xmm20_0;
xor xmm1_1@uint64 xmm1_1 xmm20_1;
(* vpxorq %xmm21,%xmm29,%xmm29                     #! PC = 0x555555573adf *)
xor xmm29_0@uint64 xmm29_0 xmm21_0;
xor xmm29_1@uint64 xmm29_1 xmm21_1;
(* vpxor  %xmm15,%xmm8,%xmm8                       #! PC = 0x555555573ae5 *)
xor xmm8_0@uint64 xmm8_0 xmm15_0;
xor xmm8_1@uint64 xmm8_1 xmm15_1;
(* vpxorq %xmm29,%xmm9,%xmm9                       #! PC = 0x555555573aea *)
xor xmm9_0@uint64 xmm9_0 xmm29_0;
xor xmm9_1@uint64 xmm9_1 xmm29_1;
(* vpxorq %xmm25,%xmm30,%xmm30                     #! PC = 0x555555573af0 *)
xor xmm30_0@uint64 xmm30_0 xmm25_0;
xor xmm30_1@uint64 xmm30_1 xmm25_1;
(* vprorq $0x15,%xmm1,%xmm1                        #! PC = 0x555555573af6 *)
ror xmm1_0 xmm1_0 0x15;
ror xmm1_1 xmm1_1 0x15;
(* vprolq $0x15,%xmm8,%xmm8                        #! PC = 0x555555573afd *)
rol xmm8_0 xmm8_0 0x15;
rol xmm8_1 xmm8_1 0x15;
(* vprolq $0xe,%xmm9,%xmm9                         #! PC = 0x555555573b04 *)
rol xmm9_0 xmm9_0 0xe;
rol xmm9_1 xmm9_1 0xe;
(* vpxor  %xmm15,%xmm10,%xmm10                     #! PC = 0x555555573b0b *)
xor xmm10_0@uint64 xmm10_0 xmm15_0;
xor xmm10_1@uint64 xmm10_1 xmm15_1;
(* vpxorq %xmm29,%xmm16,%xmm16                     #! PC = 0x555555573b10 *)
xor xmm16_0@uint64 xmm16_0 xmm29_0;
xor xmm16_1@uint64 xmm16_1 xmm29_1;
(* vprolq $0x1c,%xmm10,%xmm10                      #! PC = 0x555555573b16 *)
rol xmm10_0 xmm10_0 0x1c;
rol xmm10_1 xmm10_1 0x1c;
(* vprolq $0x14,%xmm16,%xmm16                      #! PC = 0x555555573b1d *)
rol xmm16_0 xmm16_0 0x14;
rol xmm16_1 xmm16_1 0x14;
(* vpxorq %xmm30,%xmm13,%xmm13                     #! PC = 0x555555573b24 *)
xor xmm13_0@uint64 xmm13_0 xmm30_0;
xor xmm13_1@uint64 xmm13_1 xmm30_1;
(* vpxorq %xmm22,%xmm18,%xmm18                     #! PC = 0x555555573b2a *)
xor xmm18_0@uint64 xmm18_0 xmm22_0;
xor xmm18_1@uint64 xmm18_1 xmm22_1;
(* vpxorq %xmm20,%xmm6,%xmm6                       #! PC = 0x555555573b30 *)
xor xmm6_0@uint64 xmm6_0 xmm20_0;
xor xmm6_1@uint64 xmm6_1 xmm20_1;
(* vpxorq %xmm22,%xmm17,%xmm17                     #! PC = 0x555555573b36 *)
xor xmm17_0@uint64 xmm17_0 xmm22_0;
xor xmm17_1@uint64 xmm17_1 xmm22_1;
(* vpxorq %xmm20,%xmm12,%xmm12                     #! PC = 0x555555573b3c *)
xor xmm12_0@uint64 xmm12_0 xmm20_0;
xor xmm12_1@uint64 xmm12_1 xmm20_1;
(* vprolq $0x1,%xmm17,%xmm17                       #! PC = 0x555555573b42 *)
rol xmm17_0 xmm17_0 0x1;
rol xmm17_1 xmm17_1 0x1;
(* vprolq $0x6,%xmm12,%xmm12                       #! PC = 0x555555573b49 *)
rol xmm12_0 xmm12_0 0x6;
rol xmm12_1 xmm12_1 0x6;
(* vprolq $0x3,%xmm13,%xmm13                       #! PC = 0x555555573b50 *)
rol xmm13_0 xmm13_0 0x3;
rol xmm13_1 xmm13_1 0x3;
(* vprorq $0x13,%xmm18,%xmm18                      #! PC = 0x555555573b57 *)
ror xmm18_0 xmm18_0 0x13;
ror xmm18_1 xmm18_1 0x13;
(* vprorq $0x3,%xmm6,%xmm6                         #! PC = 0x555555573b5e *)
ror xmm6_0 xmm6_0 0x3;
ror xmm6_1 xmm6_1 0x3;
(* vpxorq %xmm30,%xmm23,%xmm23                     #! PC = 0x555555573b65 *)
xor xmm23_0@uint64 xmm23_0 xmm30_0;
xor xmm23_1@uint64 xmm23_1 xmm30_1;
(* vpxor  %xmm15,%xmm2,%xmm2                       #! PC = 0x555555573b6b *)
xor xmm2_0@uint64 xmm2_0 xmm15_0;
xor xmm2_1@uint64 xmm2_1 xmm15_1;
(* vpxorq %xmm29,%xmm0,%xmm0                       #! PC = 0x555555573b70 *)
xor xmm0_0@uint64 xmm0_0 xmm29_0;
xor xmm0_1@uint64 xmm0_1 xmm29_1;
(* vpxorq %xmm30,%xmm26,%xmm26                     #! PC = 0x555555573b76 *)
xor xmm26_0@uint64 xmm26_0 xmm30_0;
xor xmm26_1@uint64 xmm26_1 xmm30_1;
(* vpxorq %xmm29,%xmm11,%xmm11                     #! PC = 0x555555573b7c *)
xor xmm11_0@uint64 xmm11_0 xmm29_0;
xor xmm11_1@uint64 xmm11_1 xmm29_1;
(* vprorq $0x1c,%xmm26,%xmm26                      #! PC = 0x555555573b82 *)
ror xmm26_0 xmm26_0 0x1c;
ror xmm26_1 xmm26_1 0x1c;
(* vprolq $0x1b,%xmm11,%xmm11                      #! PC = 0x555555573b89 *)
rol xmm11_0 xmm11_0 0x1b;
rol xmm11_1 xmm11_1 0x1b;
(* vprolq $0x12,%xmm23,%xmm23                      #! PC = 0x555555573b90 *)
rol xmm23_0 xmm23_0 0x12;
rol xmm23_1 xmm23_1 0x12;
(* vprolq $0x19,%xmm2,%xmm2                        #! PC = 0x555555573b97 *)
rol xmm2_0 xmm2_0 0x19;
rol xmm2_1 xmm2_1 0x19;
(* vprolq $0x8,%xmm0,%xmm0                         #! PC = 0x555555573b9e *)
rol xmm0_0 xmm0_0 0x8;
rol xmm0_1 xmm0_1 0x8;
(* vpxorq %xmm22,%xmm4,%xmm4                       #! PC = 0x555555573ba5 *)
xor xmm4_0@uint64 xmm4_0 xmm22_0;
xor xmm4_1@uint64 xmm4_1 xmm22_1;
(* vpxorq %xmm20,%xmm5,%xmm5                       #! PC = 0x555555573bab *)
xor xmm5_0@uint64 xmm5_0 xmm20_0;
xor xmm5_1@uint64 xmm5_1 xmm20_1;
(* vpxor  %xmm15,%xmm7,%xmm7                       #! PC = 0x555555573bb1 *)
xor xmm7_0@uint64 xmm7_0 xmm15_0;
xor xmm7_1@uint64 xmm7_1 xmm15_1;
(* vpxorq %xmm28,%xmm30,%xmm28                     #! PC = 0x555555573bb6 *)
xor xmm28_0@uint64 xmm30_0 xmm28_0;
xor xmm28_1@uint64 xmm30_1 xmm28_1;
(* vprolq $0xa,%xmm4,%xmm4                         #! PC = 0x555555573bbc *)
rol xmm4_0 xmm4_0 0xa;
rol xmm4_1 xmm4_1 0xa;
(* vprolq $0xf,%xmm5,%xmm5                         #! PC = 0x555555573bc3 *)
rol xmm5_0 xmm5_0 0xf;
rol xmm5_1 xmm5_1 0xf;
(* vprorq $0x8,%xmm7,%xmm7                         #! PC = 0x555555573bca *)
ror xmm7_0 xmm7_0 0x8;
ror xmm7_1 xmm7_1 0x8;
(* vmovdqa64 %xmm28,%xmm25                         #! PC = 0x555555573bd1 *)
mov xmm25_0 xmm28_0;
mov xmm25_1 xmm28_1;
(* vmovdqa64 %xmm31,%xmm21                         #! PC = 0x555555573bd7 *)
mov xmm21_0 xmm31_0;
mov xmm21_1 xmm31_1;
(* vpternlogq $0xd2,%xmm8,%xmm1,%xmm21             #! PC = 0x555555573bdd *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm21_0, xmm1_0, xmm8_0, table);
call vpternlogq64 (xmm21_1, xmm1_1, xmm8_1, table);
(* vpternlogq $0xd2,%xmm1,%xmm31,%xmm25            #! PC = 0x555555573be4 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm25_0, xmm31_0, xmm1_0, table);
call vpternlogq64 (xmm25_1, xmm31_1, xmm1_1, table);
(* vpternlogq $0xd2,%xmm9,%xmm8,%xmm1              #! PC = 0x555555573beb *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm1_0, xmm8_0, xmm9_0, table);
call vpternlogq64 (xmm1_1, xmm8_1, xmm9_1, table);
(* vpternlogq $0xd2,%xmm28,%xmm9,%xmm8             #! PC = 0x555555573bf2 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm8_0, xmm9_0, xmm28_0, table);
call vpternlogq64 (xmm8_1, xmm9_1, xmm28_1, table);
(* vpternlogq $0xd2,%xmm31,%xmm28,%xmm9            #! PC = 0x555555573bf9 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm9_0, xmm28_0, xmm31_0, table);
call vpternlogq64 (xmm9_1, xmm28_1, xmm31_1, table);
(* vpbroadcastq %r8,%xmm28                         #! PC = 0x555555573c00 *)
mov xmm28_0 r8;
mov xmm28_1 r8;
(* vpxorq %xmm28,%xmm25,%xmm25                     #! PC = 0x555555573c06 *)
xor xmm25_0@uint64 xmm25_0 xmm28_0;
xor xmm25_1@uint64 xmm25_1 xmm28_1;
(* vmovdqa64 %xmm16,%xmm31                         #! PC = 0x555555573c0c *)
mov xmm31_0 xmm16_0;
mov xmm31_1 xmm16_1;
(* vmovdqa64 %xmm10,%xmm28                         #! PC = 0x555555573c12 *)
mov xmm28_0 xmm10_0;
mov xmm28_1 xmm10_1;
(* vpternlogq $0xd2,%xmm13,%xmm16,%xmm28           #! PC = 0x555555573c18 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm28_0, xmm16_0, xmm13_0, table);
call vpternlogq64 (xmm28_1, xmm16_1, xmm13_1, table);
(* vpternlogq $0xd2,%xmm18,%xmm13,%xmm31           #! PC = 0x555555573c1f *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm31_0, xmm13_0, xmm18_0, table);
call vpternlogq64 (xmm31_1, xmm13_1, xmm18_1, table);
(* vpternlogq $0xd2,%xmm6,%xmm18,%xmm13            #! PC = 0x555555573c26 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm13_0, xmm18_0, xmm6_0, table);
call vpternlogq64 (xmm13_1, xmm18_1, xmm6_1, table);
(* vpternlogq $0xd2,%xmm10,%xmm6,%xmm18            #! PC = 0x555555573c2d *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm18_0, xmm6_0, xmm10_0, table);
call vpternlogq64 (xmm18_1, xmm6_1, xmm10_1, table);
(* vpternlogq $0xd2,%xmm16,%xmm10,%xmm6            #! PC = 0x555555573c34 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm6_0, xmm10_0, xmm16_0, table);
call vpternlogq64 (xmm6_1, xmm10_1, xmm16_1, table);
(* vmovdqa64 %xmm17,%xmm16                         #! PC = 0x555555573c3b *)
mov xmm16_0 xmm17_0;
mov xmm16_1 xmm17_1;
(* vmovdqa %xmm12,%xmm10                           #! PC = 0x555555573c41 *)
mov xmm10_0 xmm12_0;
mov xmm10_1 xmm12_1;
(* vpternlogq $0xd2,%xmm2,%xmm12,%xmm16            #! PC = 0x555555573c46 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm16_0, xmm12_0, xmm2_0, table);
call vpternlogq64 (xmm16_1, xmm12_1, xmm2_1, table);
(* vpternlogq $0xd2,%xmm0,%xmm2,%xmm10             #! PC = 0x555555573c4d *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm10_0, xmm2_0, xmm0_0, table);
call vpternlogq64 (xmm10_1, xmm2_1, xmm0_1, table);
(* vpxorq %xmm20,%xmm14,%xmm14                     #! PC = 0x555555573c54 *)
xor xmm14_0@uint64 xmm14_0 xmm20_0;
xor xmm14_1@uint64 xmm14_1 xmm20_1;
(* vpternlogq $0xd2,%xmm23,%xmm0,%xmm2             #! PC = 0x555555573c5a *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm2_0, xmm0_0, xmm23_0, table);
call vpternlogq64 (xmm2_1, xmm0_1, xmm23_1, table);
(* vpxorq %xmm15,%xmm19,%xmm19                     #! PC = 0x555555573c61 *)
xor xmm19_0@uint64 xmm19_0 xmm15_0;
xor xmm19_1@uint64 xmm19_1 xmm15_1;
(* vpternlogq $0xd2,%xmm17,%xmm23,%xmm0            #! PC = 0x555555573c67 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm0_0, xmm23_0, xmm17_0, table);
call vpternlogq64 (xmm0_1, xmm23_1, xmm17_1, table);
(* vpternlogq $0xd2,%xmm12,%xmm17,%xmm23           #! PC = 0x555555573c6e *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm23_0, xmm17_0, xmm12_0, table);
call vpternlogq64 (xmm23_1, xmm17_1, xmm12_1, table);
(* vmovdqa %xmm11,%xmm12                           #! PC = 0x555555573c75 *)
mov xmm12_0 xmm11_0;
mov xmm12_1 xmm11_1;
(* vmovdqa64 %xmm26,%xmm17                         #! PC = 0x555555573c7a *)
mov xmm17_0 xmm26_0;
mov xmm17_1 xmm26_1;
(* vprorq $0x2,%xmm14,%xmm20                       #! PC = 0x555555573c80 *)
ror xmm20_0 xmm14_0 0x2;
ror xmm20_1 xmm14_1 0x2;
(* vprorq $0x9,%xmm19,%xmm19                       #! PC = 0x555555573c87 *)
ror xmm19_0 xmm19_0 0x9;
ror xmm19_1 xmm19_1 0x9;
(* vpternlogq $0xd2,%xmm4,%xmm26,%xmm12            #! PC = 0x555555573c8e *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm12_0, xmm26_0, xmm4_0, table);
call vpternlogq64 (xmm12_1, xmm26_1, xmm4_1, table);
(* vpternlogq $0xd2,%xmm5,%xmm4,%xmm17             #! PC = 0x555555573c95 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm17_0, xmm4_0, xmm5_0, table);
call vpternlogq64 (xmm17_1, xmm4_1, xmm5_1, table);
(* vpxorq %xmm30,%xmm3,%xmm3                       #! PC = 0x555555573c9c *)
xor xmm3_0@uint64 xmm3_0 xmm30_0;
xor xmm3_1@uint64 xmm3_1 xmm30_1;
(* vpternlogq $0xd2,%xmm7,%xmm5,%xmm4              #! PC = 0x555555573ca2 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm4_0, xmm5_0, xmm7_0, table);
call vpternlogq64 (xmm4_1, xmm5_1, xmm7_1, table);
(* vpxorq %xmm29,%xmm27,%xmm27                     #! PC = 0x555555573ca9 *)
xor xmm27_0@uint64 xmm27_0 xmm29_0;
xor xmm27_1@uint64 xmm27_1 xmm29_1;
(* vpternlogq $0xd2,%xmm11,%xmm7,%xmm5             #! PC = 0x555555573caf *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm5_0, xmm7_0, xmm11_0, table);
call vpternlogq64 (xmm5_1, xmm7_1, xmm11_1, table);
(* vpternlogq $0xd2,%xmm26,%xmm11,%xmm7            #! PC = 0x555555573cb6 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm7_0, xmm11_0, xmm26_0, table);
call vpternlogq64 (xmm7_1, xmm11_1, xmm26_1, table);
(* vpxorq %xmm22,%xmm24,%xmm11                     #! PC = 0x555555573cbd *)
xor xmm11_0@uint64 xmm24_0 xmm22_0;
xor xmm11_1@uint64 xmm24_1 xmm22_1;
(* vprorq $0x17,%xmm3,%xmm3                        #! PC = 0x555555573cc3 *)
ror xmm3_0 xmm3_0 0x17;
ror xmm3_1 xmm3_1 0x17;
(* vprolq $0x2,%xmm11,%xmm11                       #! PC = 0x555555573cca *)
rol xmm11_0 xmm11_0 0x2;
rol xmm11_1 xmm11_1 0x2;
(* vprorq $0x19,%xmm27,%xmm27                      #! PC = 0x555555573cd1 *)
ror xmm27_0 xmm27_0 0x19;
ror xmm27_1 xmm27_1 0x19;
(* vmovdqa64 %xmm20,%xmm14                         #! PC = 0x555555573cd8 *)
mov xmm14_0 xmm20_0;
mov xmm14_1 xmm20_1;
(* vmovdqa64 %xmm19,%xmm24                         #! PC = 0x555555573cde *)
mov xmm24_0 xmm19_0;
mov xmm24_1 xmm19_1;
(* vmovdqa %xmm5,%xmm15                            #! PC = 0x555555573ce4 *)
mov xmm15_0 xmm5_0;
mov xmm15_1 xmm5_1;
(* vpternlogq $0x96,%xmm0,%xmm8,%xmm15             #! PC = 0x555555573ce8 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm15_0, xmm8_0, xmm0_0, table);
call vpternlogq64 (xmm15_1, xmm8_1, xmm0_1, table);
(* vmovdqa64 %xmm25,%xmm22                         #! PC = 0x555555573cef *)
mov xmm22_0 xmm25_0;
mov xmm22_1 xmm25_1;
(* vpternlogq $0xd2,%xmm3,%xmm27,%xmm24            #! PC = 0x555555573cf5 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm24_0, xmm27_0, xmm3_0, table);
call vpternlogq64 (xmm24_1, xmm27_1, xmm3_1, table);
(* vpternlogq $0xd2,%xmm27,%xmm19,%xmm14           #! PC = 0x555555573cfc *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm14_0, xmm19_0, xmm27_0, table);
call vpternlogq64 (xmm14_1, xmm19_1, xmm27_1, table);
(* vpternlogq $0xd2,%xmm11,%xmm3,%xmm27            #! PC = 0x555555573d03 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm27_0, xmm3_0, xmm11_0, table);
call vpternlogq64 (xmm27_1, xmm3_1, xmm11_1, table);
(* vpternlogq $0xd2,%xmm20,%xmm11,%xmm3            #! PC = 0x555555573d0a *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm3_0, xmm11_0, xmm20_0, table);
call vpternlogq64 (xmm3_1, xmm11_1, xmm20_1, table);
(* vpternlogq $0xd2,%xmm19,%xmm20,%xmm11           #! PC = 0x555555573d11 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm11_0, xmm20_0, xmm19_0, table);
call vpternlogq64 (xmm11_1, xmm20_1, xmm19_1, table);
(* vmovdqa64 %xmm2,%xmm19                          #! PC = 0x555555573d18 *)
mov xmm19_0 xmm2_0;
mov xmm19_1 xmm2_1;
(* vpternlogq $0x96,%xmm13,%xmm27,%xmm19           #! PC = 0x555555573d1e *)
mov table 0x96@uint8;
call vpternlogq64 (xmm19_0, xmm27_0, xmm13_0, table);
call vpternlogq64 (xmm19_1, xmm27_1, xmm13_1, table);
(* vpternlogq $0x96,%xmm1,%xmm4,%xmm19             #! PC = 0x555555573d25 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm19_0, xmm4_0, xmm1_0, table);
call vpternlogq64 (xmm19_1, xmm4_1, xmm1_1, table);
(* vprolq $0x1,%xmm19,%xmm29                       #! PC = 0x555555573d2c *)
rol xmm29_0 xmm19_0 0x1;
rol xmm29_1 xmm19_1 0x1;
(* vpternlogq $0x96,%xmm18,%xmm3,%xmm15            #! PC = 0x555555573d33 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm15_0, xmm3_0, xmm18_0, table);
call vpternlogq64 (xmm15_1, xmm3_1, xmm18_1, table);
(* vmovdqa64 %xmm11,%xmm26                         #! PC = 0x555555573d3a *)
mov xmm26_0 xmm11_0;
mov xmm26_1 xmm11_1;
(* vpternlogq $0x96,%xmm7,%xmm6,%xmm26             #! PC = 0x555555573d40 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm26_0, xmm6_0, xmm7_0, table);
call vpternlogq64 (xmm26_1, xmm6_1, xmm7_1, table);
(* vpternlogq $0x96,%xmm23,%xmm9,%xmm26            #! PC = 0x555555573d47 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm26_0, xmm9_0, xmm23_0, table);
call vpternlogq64 (xmm26_1, xmm9_1, xmm23_1, table);
(* vpternlogq $0x96,%xmm14,%xmm16,%xmm22           #! PC = 0x555555573d4e *)
mov table 0x96@uint8;
call vpternlogq64 (xmm22_0, xmm16_0, xmm14_0, table);
call vpternlogq64 (xmm22_1, xmm16_1, xmm14_1, table);
(* vmovdqa64 %xmm29,-0x78(%rsp)                    #! EA = L0x7fffffffda70; PC = 0x555555573d55 *)
mov L0x7fffffffda70 xmm29_0;
mov L0x7fffffffda78 xmm29_1;
(* vprolq $0x1,%xmm15,%xmm29                       #! PC = 0x555555573d60 *)
rol xmm29_0 xmm15_0 0x1;
rol xmm29_1 xmm15_1 0x1;
(* vpternlogq $0x96,%xmm12,%xmm28,%xmm22           #! PC = 0x555555573d67 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm22_0, xmm28_0, xmm12_0, table);
call vpternlogq64 (xmm22_1, xmm28_1, xmm12_1, table);
(* vmovdqa64 %xmm31,%xmm20                         #! PC = 0x555555573d6e *)
mov xmm20_0 xmm31_0;
mov xmm20_1 xmm31_1;
(* vpternlogq $0x96,%xmm21,%xmm17,%xmm20           #! PC = 0x555555573d74 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm20_0, xmm17_0, xmm21_0, table);
call vpternlogq64 (xmm20_1, xmm17_1, xmm21_1, table);
(* vpternlogq $0x96,%xmm24,%xmm10,%xmm20           #! PC = 0x555555573d7b *)
mov table 0x96@uint8;
call vpternlogq64 (xmm20_0, xmm10_0, xmm24_0, table);
call vpternlogq64 (xmm20_1, xmm10_1, xmm24_1, table);
(* vprolq $0x1,%xmm20,%xmm30                       #! PC = 0x555555573d82 *)
rol xmm30_0 xmm20_0 0x1;
rol xmm30_1 xmm20_1 0x1;
(* vmovdqa64 %xmm29,-0x68(%rsp)                    #! EA = L0x7fffffffda80; PC = 0x555555573d89 *)
mov L0x7fffffffda80 xmm29_0;
mov L0x7fffffffda88 xmm29_1;
(* vprolq $0x1,%xmm26,%xmm29                       #! PC = 0x555555573d94 *)
rol xmm29_0 xmm26_0 0x1;
rol xmm29_1 xmm26_1 0x1;
(* vpxorq -0x68(%rsp),%xmm20,%xmm20                #! EA = L0x7fffffffda80; Value = 0x030021b9027fc326; PC = 0x555555573d9b *)
xor xmm20_0@uint64 xmm20_0 L0x7fffffffda80;
xor xmm20_1@uint64 xmm20_1 L0x7fffffffda88;
(* movabs $0x800000000000008b,%rdi                 #! PC = 0x555555573da6 *)
mov rdi 0x800000000000008b@uint64;
(* vpxorq %xmm20,%xmm2,%xmm2                       #! PC = 0x555555573db0 *)
xor xmm2_0@uint64 xmm2_0 xmm20_0;
xor xmm2_1@uint64 xmm2_1 xmm20_1;
(* vpxorq %xmm26,%xmm30,%xmm30                     #! PC = 0x555555573db6 *)
xor xmm30_0@uint64 xmm30_0 xmm26_0;
xor xmm30_1@uint64 xmm30_1 xmm26_1;
(* vprorq $0x15,%xmm2,%xmm2                        #! PC = 0x555555573dbc *)
ror xmm2_0 xmm2_0 0x15;
ror xmm2_1 xmm2_1 0x15;
(* vmovdqa64 %xmm29,-0x58(%rsp)                    #! EA = L0x7fffffffda90; PC = 0x555555573dc3 *)
mov L0x7fffffffda90 xmm29_0;
mov L0x7fffffffda98 xmm29_1;
(* vprolq $0x1,%xmm22,%xmm29                       #! PC = 0x555555573dce *)
rol xmm29_0 xmm22_0 0x1;
rol xmm29_1 xmm22_1 0x1;
(* vpxorq -0x78(%rsp),%xmm22,%xmm22                #! EA = L0x7fffffffda70; Value = 0xf3498a775fec5697; PC = 0x555555573dd5 *)
xor xmm22_0@uint64 xmm22_0 L0x7fffffffda70;
xor xmm22_1@uint64 xmm22_1 L0x7fffffffda78;
(* vpxorq -0x58(%rsp),%xmm19,%xmm19                #! EA = L0x7fffffffda90; Value = 0x43bb4c8de9ca84e7; PC = 0x555555573de0 *)
xor xmm19_0@uint64 xmm19_0 L0x7fffffffda90;
xor xmm19_1@uint64 xmm19_1 L0x7fffffffda98;
(* vpxorq %xmm22,%xmm31,%xmm31                     #! PC = 0x555555573deb *)
xor xmm31_0@uint64 xmm31_0 xmm22_0;
xor xmm31_1@uint64 xmm31_1 xmm22_1;
(* vprorq $0x14,%xmm31,%xmm31                      #! PC = 0x555555573df1 *)
ror xmm31_0 xmm31_0 0x14;
ror xmm31_1 xmm31_1 0x14;
(* vpxorq %xmm19,%xmm5,%xmm5                       #! PC = 0x555555573df8 *)
xor xmm5_0@uint64 xmm5_0 xmm19_0;
xor xmm5_1@uint64 xmm5_1 xmm19_1;
(* vpxorq %xmm15,%xmm29,%xmm29                     #! PC = 0x555555573dfe *)
xor xmm29_0@uint64 xmm29_0 xmm15_0;
xor xmm29_1@uint64 xmm29_1 xmm15_1;
(* vpxorq %xmm29,%xmm11,%xmm11                     #! PC = 0x555555573e04 *)
xor xmm11_0@uint64 xmm11_0 xmm29_0;
xor xmm11_1@uint64 xmm11_1 xmm29_1;
(* vprolq $0x15,%xmm5,%xmm5                        #! PC = 0x555555573e0a *)
rol xmm5_0 xmm5_0 0x15;
rol xmm5_1 xmm5_1 0x15;
(* vprolq $0xe,%xmm11,%xmm11                       #! PC = 0x555555573e11 *)
rol xmm11_0 xmm11_0 0xe;
rol xmm11_1 xmm11_1 0xe;
(* vpxorq %xmm19,%xmm8,%xmm8                       #! PC = 0x555555573e18 *)
xor xmm8_0@uint64 xmm8_0 xmm19_0;
xor xmm8_1@uint64 xmm8_1 xmm19_1;
(* vpxorq %xmm29,%xmm6,%xmm6                       #! PC = 0x555555573e1e *)
xor xmm6_0@uint64 xmm6_0 xmm29_0;
xor xmm6_1@uint64 xmm6_1 xmm29_1;
(* vprolq $0x1c,%xmm8,%xmm8                        #! PC = 0x555555573e24 *)
rol xmm8_0 xmm8_0 0x1c;
rol xmm8_1 xmm8_1 0x1c;
(* vprolq $0x14,%xmm6,%xmm6                        #! PC = 0x555555573e2b *)
rol xmm6_0 xmm6_0 0x14;
rol xmm6_1 xmm6_1 0x14;
(* vpxorq %xmm30,%xmm16,%xmm16                     #! PC = 0x555555573e32 *)
xor xmm16_0@uint64 xmm16_0 xmm30_0;
xor xmm16_1@uint64 xmm16_1 xmm30_1;
(* vpxorq %xmm22,%xmm17,%xmm17                     #! PC = 0x555555573e38 *)
xor xmm17_0@uint64 xmm17_0 xmm22_0;
xor xmm17_1@uint64 xmm17_1 xmm22_1;
(* vpxorq %xmm20,%xmm27,%xmm27                     #! PC = 0x555555573e3e *)
xor xmm27_0@uint64 xmm27_0 xmm20_0;
xor xmm27_1@uint64 xmm27_1 xmm20_1;
(* vpxorq %xmm22,%xmm21,%xmm21                     #! PC = 0x555555573e44 *)
xor xmm21_0@uint64 xmm21_0 xmm22_0;
xor xmm21_1@uint64 xmm21_1 xmm22_1;
(* vpxorq %xmm20,%xmm13,%xmm13                     #! PC = 0x555555573e4a *)
xor xmm13_0@uint64 xmm13_0 xmm20_0;
xor xmm13_1@uint64 xmm13_1 xmm20_1;
(* vprolq $0x1,%xmm21,%xmm21                       #! PC = 0x555555573e50 *)
rol xmm21_0 xmm21_0 0x1;
rol xmm21_1 xmm21_1 0x1;
(* vprolq $0x6,%xmm13,%xmm13                       #! PC = 0x555555573e57 *)
rol xmm13_0 xmm13_0 0x6;
rol xmm13_1 xmm13_1 0x6;
(* vprolq $0x3,%xmm16,%xmm16                       #! PC = 0x555555573e5e *)
rol xmm16_0 xmm16_0 0x3;
rol xmm16_1 xmm16_1 0x3;
(* vprorq $0x13,%xmm17,%xmm17                      #! PC = 0x555555573e65 *)
ror xmm17_0 xmm17_0 0x13;
ror xmm17_1 xmm17_1 0x13;
(* vprorq $0x3,%xmm27,%xmm27                       #! PC = 0x555555573e6c *)
ror xmm27_0 xmm27_0 0x3;
ror xmm27_1 xmm27_1 0x3;
(* vpxorq %xmm30,%xmm14,%xmm14                     #! PC = 0x555555573e73 *)
xor xmm14_0@uint64 xmm14_0 xmm30_0;
xor xmm14_1@uint64 xmm14_1 xmm30_1;
(* vpxorq %xmm19,%xmm0,%xmm0                       #! PC = 0x555555573e79 *)
xor xmm0_0@uint64 xmm0_0 xmm19_0;
xor xmm0_1@uint64 xmm0_1 xmm19_1;
(* vpxorq %xmm29,%xmm7,%xmm7                       #! PC = 0x555555573e7f *)
xor xmm7_0@uint64 xmm7_0 xmm29_0;
xor xmm7_1@uint64 xmm7_1 xmm29_1;
(* vpxorq %xmm30,%xmm28,%xmm28                     #! PC = 0x555555573e85 *)
xor xmm28_0@uint64 xmm28_0 xmm30_0;
xor xmm28_1@uint64 xmm28_1 xmm30_1;
(* vpxorq %xmm29,%xmm9,%xmm9                       #! PC = 0x555555573e8b *)
xor xmm9_0@uint64 xmm9_0 xmm29_0;
xor xmm9_1@uint64 xmm9_1 xmm29_1;
(* vprorq $0x1c,%xmm28,%xmm28                      #! PC = 0x555555573e91 *)
ror xmm28_0 xmm28_0 0x1c;
ror xmm28_1 xmm28_1 0x1c;
(* vprolq $0x1b,%xmm9,%xmm9                        #! PC = 0x555555573e98 *)
rol xmm9_0 xmm9_0 0x1b;
rol xmm9_1 xmm9_1 0x1b;
(* vprolq $0x12,%xmm14,%xmm14                      #! PC = 0x555555573e9f *)
rol xmm14_0 xmm14_0 0x12;
rol xmm14_1 xmm14_1 0x12;
(* vprolq $0x19,%xmm0,%xmm0                        #! PC = 0x555555573ea6 *)
rol xmm0_0 xmm0_0 0x19;
rol xmm0_1 xmm0_1 0x19;
(* vprolq $0x8,%xmm7,%xmm7                         #! PC = 0x555555573ead *)
rol xmm7_0 xmm7_0 0x8;
rol xmm7_1 xmm7_1 0x8;
(* vpxorq %xmm22,%xmm10,%xmm10                     #! PC = 0x555555573eb4 *)
xor xmm10_0@uint64 xmm10_0 xmm22_0;
xor xmm10_1@uint64 xmm10_1 xmm22_1;
(* vpxorq %xmm20,%xmm4,%xmm4                       #! PC = 0x555555573eba *)
xor xmm4_0@uint64 xmm4_0 xmm20_0;
xor xmm4_1@uint64 xmm4_1 xmm20_1;
(* vpxorq %xmm19,%xmm3,%xmm3                       #! PC = 0x555555573ec0 *)
xor xmm3_0@uint64 xmm3_0 xmm19_0;
xor xmm3_1@uint64 xmm3_1 xmm19_1;
(* vpxorq %xmm25,%xmm30,%xmm25                     #! PC = 0x555555573ec6 *)
xor xmm25_0@uint64 xmm30_0 xmm25_0;
xor xmm25_1@uint64 xmm30_1 xmm25_1;
(* vprolq $0xa,%xmm10,%xmm10                       #! PC = 0x555555573ecc *)
rol xmm10_0 xmm10_0 0xa;
rol xmm10_1 xmm10_1 0xa;
(* vprolq $0xf,%xmm4,%xmm4                         #! PC = 0x555555573ed3 *)
rol xmm4_0 xmm4_0 0xf;
rol xmm4_1 xmm4_1 0xf;
(* vprorq $0x8,%xmm3,%xmm3                         #! PC = 0x555555573eda *)
ror xmm3_0 xmm3_0 0x8;
ror xmm3_1 xmm3_1 0x8;
(* vmovdqa64 %xmm25,%xmm15                         #! PC = 0x555555573ee1 *)
mov xmm15_0 xmm25_0;
mov xmm15_1 xmm25_1;
(* vmovdqa64 %xmm31,%xmm26                         #! PC = 0x555555573ee7 *)
mov xmm26_0 xmm31_0;
mov xmm26_1 xmm31_1;
(* vpternlogq $0xd2,%xmm5,%xmm2,%xmm26             #! PC = 0x555555573eed *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm26_0, xmm2_0, xmm5_0, table);
call vpternlogq64 (xmm26_1, xmm2_1, xmm5_1, table);
(* vpternlogq $0xd2,%xmm2,%xmm31,%xmm15            #! PC = 0x555555573ef4 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm15_0, xmm31_0, xmm2_0, table);
call vpternlogq64 (xmm15_1, xmm31_1, xmm2_1, table);
(* vpternlogq $0xd2,%xmm11,%xmm5,%xmm2             #! PC = 0x555555573efb *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm2_0, xmm5_0, xmm11_0, table);
call vpternlogq64 (xmm2_1, xmm5_1, xmm11_1, table);
(* vpternlogq $0xd2,%xmm25,%xmm11,%xmm5            #! PC = 0x555555573f02 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm5_0, xmm11_0, xmm25_0, table);
call vpternlogq64 (xmm5_1, xmm11_1, xmm25_1, table);
(* vpternlogq $0xd2,%xmm31,%xmm25,%xmm11           #! PC = 0x555555573f09 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm11_0, xmm25_0, xmm31_0, table);
call vpternlogq64 (xmm11_1, xmm25_1, xmm31_1, table);
(* vpbroadcastq %r9,%xmm25                         #! PC = 0x555555573f10 *)
mov xmm25_0 r9;
mov xmm25_1 r9;
(* vpxorq %xmm25,%xmm15,%xmm15                     #! PC = 0x555555573f16 *)
xor xmm15_0@uint64 xmm15_0 xmm25_0;
xor xmm15_1@uint64 xmm15_1 xmm25_1;
(* vmovdqa64 %xmm6,%xmm31                          #! PC = 0x555555573f1c *)
mov xmm31_0 xmm6_0;
mov xmm31_1 xmm6_1;
(* vmovdqa64 %xmm8,%xmm25                          #! PC = 0x555555573f22 *)
mov xmm25_0 xmm8_0;
mov xmm25_1 xmm8_1;
(* vpternlogq $0xd2,%xmm16,%xmm6,%xmm25            #! PC = 0x555555573f28 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm25_0, xmm6_0, xmm16_0, table);
call vpternlogq64 (xmm25_1, xmm6_1, xmm16_1, table);
(* vpternlogq $0xd2,%xmm17,%xmm16,%xmm31           #! PC = 0x555555573f2f *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm31_0, xmm16_0, xmm17_0, table);
call vpternlogq64 (xmm31_1, xmm16_1, xmm17_1, table);
(* vpternlogq $0xd2,%xmm27,%xmm17,%xmm16           #! PC = 0x555555573f36 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm16_0, xmm17_0, xmm27_0, table);
call vpternlogq64 (xmm16_1, xmm17_1, xmm27_1, table);
(* vpternlogq $0xd2,%xmm8,%xmm27,%xmm17            #! PC = 0x555555573f3d *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm17_0, xmm27_0, xmm8_0, table);
call vpternlogq64 (xmm17_1, xmm27_1, xmm8_1, table);
(* vpternlogq $0xd2,%xmm6,%xmm8,%xmm27             #! PC = 0x555555573f44 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm27_0, xmm8_0, xmm6_0, table);
call vpternlogq64 (xmm27_1, xmm8_1, xmm6_1, table);
(* vmovdqa64 %xmm21,%xmm6                          #! PC = 0x555555573f4b *)
mov xmm6_0 xmm21_0;
mov xmm6_1 xmm21_1;
(* vmovdqa %xmm13,%xmm8                            #! PC = 0x555555573f51 *)
mov xmm8_0 xmm13_0;
mov xmm8_1 xmm13_1;
(* vpternlogq $0xd2,%xmm0,%xmm13,%xmm6             #! PC = 0x555555573f56 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm6_0, xmm13_0, xmm0_0, table);
call vpternlogq64 (xmm6_1, xmm13_1, xmm0_1, table);
(* vpternlogq $0xd2,%xmm7,%xmm0,%xmm8              #! PC = 0x555555573f5d *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm8_0, xmm0_0, xmm7_0, table);
call vpternlogq64 (xmm8_1, xmm0_1, xmm7_1, table);
(* vpxorq %xmm20,%xmm1,%xmm1                       #! PC = 0x555555573f64 *)
xor xmm1_0@uint64 xmm1_0 xmm20_0;
xor xmm1_1@uint64 xmm1_1 xmm20_1;
(* vpternlogq $0xd2,%xmm14,%xmm7,%xmm0             #! PC = 0x555555573f6a *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm0_0, xmm7_0, xmm14_0, table);
call vpternlogq64 (xmm0_1, xmm7_1, xmm14_1, table);
(* vpxorq %xmm19,%xmm18,%xmm18                     #! PC = 0x555555573f71 *)
xor xmm18_0@uint64 xmm18_0 xmm19_0;
xor xmm18_1@uint64 xmm18_1 xmm19_1;
(* vpternlogq $0xd2,%xmm21,%xmm14,%xmm7            #! PC = 0x555555573f77 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm7_0, xmm14_0, xmm21_0, table);
call vpternlogq64 (xmm7_1, xmm14_1, xmm21_1, table);
(* vpternlogq $0xd2,%xmm13,%xmm21,%xmm14           #! PC = 0x555555573f7e *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm14_0, xmm21_0, xmm13_0, table);
call vpternlogq64 (xmm14_1, xmm21_1, xmm13_1, table);
(* vmovdqa64 %xmm9,%xmm21                          #! PC = 0x555555573f85 *)
mov xmm21_0 xmm9_0;
mov xmm21_1 xmm9_1;
(* vmovdqa64 %xmm28,%xmm13                         #! PC = 0x555555573f8b *)
mov xmm13_0 xmm28_0;
mov xmm13_1 xmm28_1;
(* vprorq $0x2,%xmm1,%xmm1                         #! PC = 0x555555573f91 *)
ror xmm1_0 xmm1_0 0x2;
ror xmm1_1 xmm1_1 0x2;
(* vprorq $0x9,%xmm18,%xmm18                       #! PC = 0x555555573f98 *)
ror xmm18_0 xmm18_0 0x9;
ror xmm18_1 xmm18_1 0x9;
(* vpternlogq $0xd2,%xmm10,%xmm28,%xmm21           #! PC = 0x555555573f9f *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm21_0, xmm28_0, xmm10_0, table);
call vpternlogq64 (xmm21_1, xmm28_1, xmm10_1, table);
(* vpternlogq $0xd2,%xmm4,%xmm10,%xmm13            #! PC = 0x555555573fa6 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm13_0, xmm10_0, xmm4_0, table);
call vpternlogq64 (xmm13_1, xmm10_1, xmm4_1, table);
(* vpxorq %xmm30,%xmm12,%xmm12                     #! PC = 0x555555573fad *)
xor xmm12_0@uint64 xmm12_0 xmm30_0;
xor xmm12_1@uint64 xmm12_1 xmm30_1;
(* vpternlogq $0xd2,%xmm3,%xmm4,%xmm10             #! PC = 0x555555573fb3 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm10_0, xmm4_0, xmm3_0, table);
call vpternlogq64 (xmm10_1, xmm4_1, xmm3_1, table);
(* vpxorq %xmm29,%xmm23,%xmm23                     #! PC = 0x555555573fba *)
xor xmm23_0@uint64 xmm23_0 xmm29_0;
xor xmm23_1@uint64 xmm23_1 xmm29_1;
(* vpternlogq $0xd2,%xmm9,%xmm3,%xmm4              #! PC = 0x555555573fc0 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm4_0, xmm3_0, xmm9_0, table);
call vpternlogq64 (xmm4_1, xmm3_1, xmm9_1, table);
(* vpternlogq $0xd2,%xmm28,%xmm9,%xmm3             #! PC = 0x555555573fc7 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm3_0, xmm9_0, xmm28_0, table);
call vpternlogq64 (xmm3_1, xmm9_1, xmm28_1, table);
(* vpxorq %xmm22,%xmm24,%xmm9                      #! PC = 0x555555573fce *)
xor xmm9_0@uint64 xmm24_0 xmm22_0;
xor xmm9_1@uint64 xmm24_1 xmm22_1;
(* vprorq $0x17,%xmm12,%xmm12                      #! PC = 0x555555573fd4 *)
ror xmm12_0 xmm12_0 0x17;
ror xmm12_1 xmm12_1 0x17;
(* vprolq $0x2,%xmm9,%xmm9                         #! PC = 0x555555573fdb *)
rol xmm9_0 xmm9_0 0x2;
rol xmm9_1 xmm9_1 0x2;
(* vprorq $0x19,%xmm23,%xmm23                      #! PC = 0x555555573fe2 *)
ror xmm23_0 xmm23_0 0x19;
ror xmm23_1 xmm23_1 0x19;
(* vmovdqa64 %xmm1,%xmm28                          #! PC = 0x555555573fe9 *)
mov xmm28_0 xmm1_0;
mov xmm28_1 xmm1_1;
(* vmovdqa64 %xmm18,%xmm24                         #! PC = 0x555555573fef *)
mov xmm24_0 xmm18_0;
mov xmm24_1 xmm18_1;
(* vmovdqa64 %xmm2,%xmm19                          #! PC = 0x555555573ff5 *)
mov xmm19_0 xmm2_0;
mov xmm19_1 xmm2_1;
(* vpternlogq $0x96,%xmm0,%xmm16,%xmm19            #! PC = 0x555555573ffb *)
mov table 0x96@uint8;
call vpternlogq64 (xmm19_0, xmm16_0, xmm0_0, table);
call vpternlogq64 (xmm19_1, xmm16_1, xmm0_1, table);
(* vmovdqa64 %xmm15,%xmm22                         #! PC = 0x555555574002 *)
mov xmm22_0 xmm15_0;
mov xmm22_1 xmm15_1;
(* vpternlogq $0xd2,%xmm12,%xmm23,%xmm24           #! PC = 0x555555574008 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm24_0, xmm23_0, xmm12_0, table);
call vpternlogq64 (xmm24_1, xmm23_1, xmm12_1, table);
(* vpternlogq $0xd2,%xmm23,%xmm18,%xmm28           #! PC = 0x55555557400f *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm28_0, xmm18_0, xmm23_0, table);
call vpternlogq64 (xmm28_1, xmm18_1, xmm23_1, table);
(* vpternlogq $0xd2,%xmm9,%xmm12,%xmm23            #! PC = 0x555555574016 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm23_0, xmm12_0, xmm9_0, table);
call vpternlogq64 (xmm23_1, xmm12_1, xmm9_1, table);
(* vpternlogq $0x96,%xmm23,%xmm10,%xmm19           #! PC = 0x55555557401d *)
mov table 0x96@uint8;
call vpternlogq64 (xmm19_0, xmm10_0, xmm23_0, table);
call vpternlogq64 (xmm19_1, xmm10_1, xmm23_1, table);
(* vprolq $0x1,%xmm19,%xmm29                       #! PC = 0x555555574024 *)
rol xmm29_0 xmm19_0 0x1;
rol xmm29_1 xmm19_1 0x1;
(* vpternlogq $0xd2,%xmm1,%xmm9,%xmm12             #! PC = 0x55555557402b *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm12_0, xmm9_0, xmm1_0, table);
call vpternlogq64 (xmm12_1, xmm9_1, xmm1_1, table);
(* vpternlogq $0xd2,%xmm18,%xmm1,%xmm9             #! PC = 0x555555574032 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm9_0, xmm1_0, xmm18_0, table);
call vpternlogq64 (xmm9_1, xmm1_1, xmm18_1, table);
(* vmovdqa %xmm5,%xmm1                             #! PC = 0x555555574039 *)
mov xmm1_0 xmm5_0;
mov xmm1_1 xmm5_1;
(* vpternlogq $0x96,%xmm7,%xmm17,%xmm1             #! PC = 0x55555557403d *)
mov table 0x96@uint8;
call vpternlogq64 (xmm1_0, xmm17_0, xmm7_0, table);
call vpternlogq64 (xmm1_1, xmm17_1, xmm7_1, table);
(* vpternlogq $0x96,%xmm12,%xmm4,%xmm1             #! PC = 0x555555574044 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm1_0, xmm4_0, xmm12_0, table);
call vpternlogq64 (xmm1_1, xmm4_1, xmm12_1, table);
(* vmovdqa64 %xmm29,-0x78(%rsp)                    #! EA = L0x7fffffffda70; PC = 0x55555557404b *)
mov L0x7fffffffda70 xmm29_0;
mov L0x7fffffffda78 xmm29_1;
(* vprolq $0x1,%xmm1,%xmm29                        #! PC = 0x555555574056 *)
rol xmm29_0 xmm1_0 0x1;
rol xmm29_1 xmm1_1 0x1;
(* vmovdqa64 %xmm11,%xmm18                         #! PC = 0x55555557405d *)
mov xmm18_0 xmm11_0;
mov xmm18_1 xmm11_1;
(* vpternlogq $0x96,%xmm14,%xmm27,%xmm18           #! PC = 0x555555574063 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm18_0, xmm27_0, xmm14_0, table);
call vpternlogq64 (xmm18_1, xmm27_1, xmm14_1, table);
(* vpternlogq $0x96,%xmm9,%xmm3,%xmm18             #! PC = 0x55555557406a *)
mov table 0x96@uint8;
call vpternlogq64 (xmm18_0, xmm3_0, xmm9_0, table);
call vpternlogq64 (xmm18_1, xmm3_1, xmm9_1, table);
(* vpternlogq $0x96,%xmm6,%xmm25,%xmm22            #! PC = 0x555555574071 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm22_0, xmm25_0, xmm6_0, table);
call vpternlogq64 (xmm22_1, xmm25_1, xmm6_1, table);
(* vpternlogq $0x96,%xmm28,%xmm21,%xmm22           #! PC = 0x555555574078 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm22_0, xmm21_0, xmm28_0, table);
call vpternlogq64 (xmm22_1, xmm21_1, xmm28_1, table);
(* vmovdqa64 %xmm29,-0x68(%rsp)                    #! EA = L0x7fffffffda80; PC = 0x55555557407f *)
mov L0x7fffffffda80 xmm29_0;
mov L0x7fffffffda88 xmm29_1;
(* vprolq $0x1,%xmm18,%xmm29                       #! PC = 0x55555557408a *)
rol xmm29_0 xmm18_0 0x1;
rol xmm29_1 xmm18_1 0x1;
(* vmovdqa64 %xmm26,%xmm20                         #! PC = 0x555555574091 *)
mov xmm20_0 xmm26_0;
mov xmm20_1 xmm26_1;
(* vpternlogq $0x96,%xmm8,%xmm31,%xmm20            #! PC = 0x555555574097 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm20_0, xmm31_0, xmm8_0, table);
call vpternlogq64 (xmm20_1, xmm31_1, xmm8_1, table);
(* vpternlogq $0x96,%xmm24,%xmm13,%xmm20           #! PC = 0x55555557409e *)
mov table 0x96@uint8;
call vpternlogq64 (xmm20_0, xmm13_0, xmm24_0, table);
call vpternlogq64 (xmm20_1, xmm13_1, xmm24_1, table);
(* vprolq $0x1,%xmm20,%xmm30                       #! PC = 0x5555555740a5 *)
rol xmm30_0 xmm20_0 0x1;
rol xmm30_1 xmm20_1 0x1;
(* movabs $0x8000000000008089,%r8                  #! PC = 0x5555555740ac *)
mov r8 0x8000000000008089@uint64;
(* vmovdqa64 %xmm29,-0x58(%rsp)                    #! EA = L0x7fffffffda90; PC = 0x5555555740b6 *)
mov L0x7fffffffda90 xmm29_0;
mov L0x7fffffffda98 xmm29_1;
(* vprolq $0x1,%xmm22,%xmm29                       #! PC = 0x5555555740c1 *)
rol xmm29_0 xmm22_0 0x1;
rol xmm29_1 xmm22_1 0x1;
(* vpxorq -0x78(%rsp),%xmm22,%xmm22                #! EA = L0x7fffffffda70; Value = 0xb527e214309e29ea; PC = 0x5555555740c8 *)
xor xmm22_0@uint64 xmm22_0 L0x7fffffffda70;
xor xmm22_1@uint64 xmm22_1 L0x7fffffffda78;
(* vpxorq -0x68(%rsp),%xmm20,%xmm20                #! EA = L0x7fffffffda80; Value = 0xd292492f85bbee60; PC = 0x5555555740d3 *)
xor xmm20_0@uint64 xmm20_0 L0x7fffffffda80;
xor xmm20_1@uint64 xmm20_1 L0x7fffffffda88;
(* vpxorq -0x58(%rsp),%xmm19,%xmm19                #! EA = L0x7fffffffda90; Value = 0x4a32343f12169224; PC = 0x5555555740de *)
xor xmm19_0@uint64 xmm19_0 L0x7fffffffda90;
xor xmm19_1@uint64 xmm19_1 L0x7fffffffda98;
(* vpxorq %xmm22,%xmm31,%xmm31                     #! PC = 0x5555555740e9 *)
xor xmm31_0@uint64 xmm31_0 xmm22_0;
xor xmm31_1@uint64 xmm31_1 xmm22_1;
(* vprorq $0x14,%xmm31,%xmm31                      #! PC = 0x5555555740ef *)
ror xmm31_0 xmm31_0 0x14;
ror xmm31_1 xmm31_1 0x14;
(* vpxorq %xmm1,%xmm29,%xmm29                      #! PC = 0x5555555740f6 *)
xor xmm29_0@uint64 xmm29_0 xmm1_0;
xor xmm29_1@uint64 xmm29_1 xmm1_1;
(* vpxorq %xmm20,%xmm0,%xmm0                       #! PC = 0x5555555740fc *)
xor xmm0_0@uint64 xmm0_0 xmm20_0;
xor xmm0_1@uint64 xmm0_1 xmm20_1;
(* vpxorq %xmm19,%xmm4,%xmm4                       #! PC = 0x555555574102 *)
xor xmm4_0@uint64 xmm4_0 xmm19_0;
xor xmm4_1@uint64 xmm4_1 xmm19_1;
(* vpxorq %xmm29,%xmm9,%xmm9                       #! PC = 0x555555574108 *)
xor xmm9_0@uint64 xmm9_0 xmm29_0;
xor xmm9_1@uint64 xmm9_1 xmm29_1;
(* vprorq $0x15,%xmm0,%xmm0                        #! PC = 0x55555557410e *)
ror xmm0_0 xmm0_0 0x15;
ror xmm0_1 xmm0_1 0x15;
(* vprolq $0x15,%xmm4,%xmm4                        #! PC = 0x555555574115 *)
rol xmm4_0 xmm4_0 0x15;
rol xmm4_1 xmm4_1 0x15;
(* vprolq $0xe,%xmm9,%xmm9                         #! PC = 0x55555557411c *)
rol xmm9_0 xmm9_0 0xe;
rol xmm9_1 xmm9_1 0xe;
(* vpxorq %xmm18,%xmm30,%xmm30                     #! PC = 0x555555574123 *)
xor xmm30_0@uint64 xmm30_0 xmm18_0;
xor xmm30_1@uint64 xmm30_1 xmm18_1;
(* vpxorq %xmm15,%xmm30,%xmm1                      #! PC = 0x555555574129 *)
xor xmm1_0@uint64 xmm30_0 xmm15_0;
xor xmm1_1@uint64 xmm30_1 xmm15_1;
(* vmovdqa64 %xmm1,%xmm18                          #! PC = 0x55555557412f *)
mov xmm18_0 xmm1_0;
mov xmm18_1 xmm1_1;
(* vmovdqa64 %xmm31,%xmm15                         #! PC = 0x555555574135 *)
mov xmm15_0 xmm31_0;
mov xmm15_1 xmm31_1;
(* vpternlogq $0xd2,%xmm4,%xmm0,%xmm15             #! PC = 0x55555557413b *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm15_0, xmm0_0, xmm4_0, table);
call vpternlogq64 (xmm15_1, xmm0_1, xmm4_1, table);
(* vpternlogq $0xd2,%xmm0,%xmm31,%xmm18            #! PC = 0x555555574142 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm18_0, xmm31_0, xmm0_0, table);
call vpternlogq64 (xmm18_1, xmm31_1, xmm0_1, table);
(* vpternlogq $0xd2,%xmm9,%xmm4,%xmm0              #! PC = 0x555555574149 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm0_0, xmm4_0, xmm9_0, table);
call vpternlogq64 (xmm0_1, xmm4_1, xmm9_1, table);
(* vpternlogq $0xd2,%xmm1,%xmm9,%xmm4              #! PC = 0x555555574150 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm4_0, xmm9_0, xmm1_0, table);
call vpternlogq64 (xmm4_1, xmm9_1, xmm1_1, table);
(* vpternlogq $0xd2,%xmm31,%xmm1,%xmm9             #! PC = 0x555555574157 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm9_0, xmm1_0, xmm31_0, table);
call vpternlogq64 (xmm9_1, xmm1_1, xmm31_1, table);
(* vpbroadcastq %r10,%xmm1                         #! PC = 0x55555557415e *)
mov xmm1_0 r10;
mov xmm1_1 r10;
(* vpxorq %xmm1,%xmm18,%xmm18                      #! PC = 0x555555574164 *)
xor xmm18_0@uint64 xmm18_0 xmm1_0;
xor xmm18_1@uint64 xmm18_1 xmm1_1;
(* vpxorq %xmm19,%xmm5,%xmm5                       #! PC = 0x55555557416a *)
xor xmm5_0@uint64 xmm5_0 xmm19_0;
xor xmm5_1@uint64 xmm5_1 xmm19_1;
(* vpxorq %xmm29,%xmm27,%xmm1                      #! PC = 0x555555574170 *)
xor xmm1_0@uint64 xmm27_0 xmm29_0;
xor xmm1_1@uint64 xmm27_1 xmm29_1;
(* vprolq $0x1c,%xmm5,%xmm5                        #! PC = 0x555555574176 *)
rol xmm5_0 xmm5_0 0x1c;
rol xmm5_1 xmm5_1 0x1c;
(* vprolq $0x14,%xmm1,%xmm1                        #! PC = 0x55555557417d *)
rol xmm1_0 xmm1_0 0x14;
rol xmm1_1 xmm1_1 0x14;
(* vpxorq %xmm30,%xmm6,%xmm6                       #! PC = 0x555555574184 *)
xor xmm6_0@uint64 xmm6_0 xmm30_0;
xor xmm6_1@uint64 xmm6_1 xmm30_1;
(* vpxorq %xmm22,%xmm13,%xmm13                     #! PC = 0x55555557418a *)
xor xmm13_0@uint64 xmm13_0 xmm22_0;
xor xmm13_1@uint64 xmm13_1 xmm22_1;
(* vpxorq %xmm20,%xmm23,%xmm23                     #! PC = 0x555555574190 *)
xor xmm23_0@uint64 xmm23_0 xmm20_0;
xor xmm23_1@uint64 xmm23_1 xmm20_1;
(* vprolq $0x3,%xmm6,%xmm6                         #! PC = 0x555555574196 *)
rol xmm6_0 xmm6_0 0x3;
rol xmm6_1 xmm6_1 0x3;
(* vprorq $0x13,%xmm13,%xmm13                      #! PC = 0x55555557419d *)
ror xmm13_0 xmm13_0 0x13;
ror xmm13_1 xmm13_1 0x13;
(* vprorq $0x3,%xmm23,%xmm23                       #! PC = 0x5555555741a4 *)
ror xmm23_0 xmm23_0 0x3;
ror xmm23_1 xmm23_1 0x3;
(* vmovdqa64 %xmm5,%xmm27                          #! PC = 0x5555555741ab *)
mov xmm27_0 xmm5_0;
mov xmm27_1 xmm5_1;
(* vmovdqa64 %xmm1,%xmm31                          #! PC = 0x5555555741b1 *)
mov xmm31_0 xmm1_0;
mov xmm31_1 xmm1_1;
(* vpxorq %xmm22,%xmm26,%xmm26                     #! PC = 0x5555555741b7 *)
xor xmm26_0@uint64 xmm26_0 xmm22_0;
xor xmm26_1@uint64 xmm26_1 xmm22_1;
(* vpxorq %xmm20,%xmm16,%xmm16                     #! PC = 0x5555555741bd *)
xor xmm16_0@uint64 xmm16_0 xmm20_0;
xor xmm16_1@uint64 xmm16_1 xmm20_1;
(* vprolq $0x1,%xmm26,%xmm26                       #! PC = 0x5555555741c3 *)
rol xmm26_0 xmm26_0 0x1;
rol xmm26_1 xmm26_1 0x1;
(* vprolq $0x6,%xmm16,%xmm16                       #! PC = 0x5555555741ca *)
rol xmm16_0 xmm16_0 0x6;
rol xmm16_1 xmm16_1 0x6;
(* vpternlogq $0xd2,%xmm6,%xmm1,%xmm27             #! PC = 0x5555555741d1 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm27_0, xmm1_0, xmm6_0, table);
call vpternlogq64 (xmm27_1, xmm1_1, xmm6_1, table);
(* vpternlogq $0xd2,%xmm13,%xmm6,%xmm31            #! PC = 0x5555555741d8 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm31_0, xmm6_0, xmm13_0, table);
call vpternlogq64 (xmm31_1, xmm6_1, xmm13_1, table);
(* vpxorq %xmm30,%xmm28,%xmm28                     #! PC = 0x5555555741df *)
xor xmm28_0@uint64 xmm28_0 xmm30_0;
xor xmm28_1@uint64 xmm28_1 xmm30_1;
(* vpternlogq $0xd2,%xmm23,%xmm13,%xmm6            #! PC = 0x5555555741e5 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm6_0, xmm13_0, xmm23_0, table);
call vpternlogq64 (xmm6_1, xmm13_1, xmm23_1, table);
(* vpxorq %xmm29,%xmm3,%xmm3                       #! PC = 0x5555555741ec *)
xor xmm3_0@uint64 xmm3_0 xmm29_0;
xor xmm3_1@uint64 xmm3_1 xmm29_1;
(* vpternlogq $0xd2,%xmm5,%xmm23,%xmm13            #! PC = 0x5555555741f2 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm13_0, xmm23_0, xmm5_0, table);
call vpternlogq64 (xmm13_1, xmm23_1, xmm5_1, table);
(* vpxorq %xmm30,%xmm25,%xmm25                     #! PC = 0x5555555741f9 *)
xor xmm25_0@uint64 xmm25_0 xmm30_0;
xor xmm25_1@uint64 xmm25_1 xmm30_1;
(* vpternlogq $0xd2,%xmm1,%xmm5,%xmm23             #! PC = 0x5555555741ff *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm23_0, xmm5_0, xmm1_0, table);
call vpternlogq64 (xmm23_1, xmm5_1, xmm1_1, table);
(* vpxorq %xmm29,%xmm11,%xmm11                     #! PC = 0x555555574206 *)
xor xmm11_0@uint64 xmm11_0 xmm29_0;
xor xmm11_1@uint64 xmm11_1 xmm29_1;
(* vpxorq %xmm19,%xmm7,%xmm1                       #! PC = 0x55555557420c *)
xor xmm1_0@uint64 xmm7_0 xmm19_0;
xor xmm1_1@uint64 xmm7_1 xmm19_1;
(* vprorq $0x1c,%xmm25,%xmm25                      #! PC = 0x555555574212 *)
ror xmm25_0 xmm25_0 0x1c;
ror xmm25_1 xmm25_1 0x1c;
(* vprolq $0x1b,%xmm11,%xmm11                      #! PC = 0x555555574219 *)
rol xmm11_0 xmm11_0 0x1b;
rol xmm11_1 xmm11_1 0x1b;
(* vprolq $0x12,%xmm28,%xmm28                      #! PC = 0x555555574220 *)
rol xmm28_0 xmm28_0 0x12;
rol xmm28_1 xmm28_1 0x12;
(* vprolq $0x19,%xmm1,%xmm1                        #! PC = 0x555555574227 *)
rol xmm1_0 xmm1_0 0x19;
rol xmm1_1 xmm1_1 0x19;
(* vprolq $0x8,%xmm3,%xmm3                         #! PC = 0x55555557422e *)
rol xmm3_0 xmm3_0 0x8;
rol xmm3_1 xmm3_1 0x8;
(* vpxorq %xmm22,%xmm8,%xmm8                       #! PC = 0x555555574235 *)
xor xmm8_0@uint64 xmm8_0 xmm22_0;
xor xmm8_1@uint64 xmm8_1 xmm22_1;
(* vpxorq %xmm20,%xmm10,%xmm10                     #! PC = 0x55555557423b *)
xor xmm10_0@uint64 xmm10_0 xmm20_0;
xor xmm10_1@uint64 xmm10_1 xmm20_1;
(* vpxorq %xmm19,%xmm12,%xmm12                     #! PC = 0x555555574241 *)
xor xmm12_0@uint64 xmm12_0 xmm19_0;
xor xmm12_1@uint64 xmm12_1 xmm19_1;
(* vprolq $0xa,%xmm8,%xmm8                         #! PC = 0x555555574247 *)
rol xmm8_0 xmm8_0 0xa;
rol xmm8_1 xmm8_1 0xa;
(* vprolq $0xf,%xmm10,%xmm10                       #! PC = 0x55555557424e *)
rol xmm10_0 xmm10_0 0xf;
rol xmm10_1 xmm10_1 0xf;
(* vprorq $0x8,%xmm12,%xmm12                       #! PC = 0x555555574255 *)
ror xmm12_0 xmm12_0 0x8;
ror xmm12_1 xmm12_1 0x8;
(* vmovdqa64 %xmm26,%xmm5                          #! PC = 0x55555557425c *)
mov xmm5_0 xmm26_0;
mov xmm5_1 xmm26_1;
(* vmovdqa64 %xmm16,%xmm7                          #! PC = 0x555555574262 *)
mov xmm7_0 xmm16_0;
mov xmm7_1 xmm16_1;
(* vpternlogq $0xd2,%xmm1,%xmm16,%xmm5             #! PC = 0x555555574268 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm5_0, xmm16_0, xmm1_0, table);
call vpternlogq64 (xmm5_1, xmm16_1, xmm1_1, table);
(* vpternlogq $0xd2,%xmm3,%xmm1,%xmm7              #! PC = 0x55555557426f *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm7_0, xmm1_0, xmm3_0, table);
call vpternlogq64 (xmm7_1, xmm1_1, xmm3_1, table);
(* vpxorq %xmm20,%xmm2,%xmm2                       #! PC = 0x555555574276 *)
xor xmm2_0@uint64 xmm2_0 xmm20_0;
xor xmm2_1@uint64 xmm2_1 xmm20_1;
(* vpternlogq $0xd2,%xmm28,%xmm3,%xmm1             #! PC = 0x55555557427c *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm1_0, xmm3_0, xmm28_0, table);
call vpternlogq64 (xmm1_1, xmm3_1, xmm28_1, table);
(* vpxorq %xmm19,%xmm17,%xmm17                     #! PC = 0x555555574283 *)
xor xmm17_0@uint64 xmm17_0 xmm19_0;
xor xmm17_1@uint64 xmm17_1 xmm19_1;
(* vpternlogq $0xd2,%xmm26,%xmm28,%xmm3            #! PC = 0x555555574289 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm3_0, xmm28_0, xmm26_0, table);
call vpternlogq64 (xmm3_1, xmm28_1, xmm26_1, table);
(* vpternlogq $0xd2,%xmm16,%xmm26,%xmm28           #! PC = 0x555555574290 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm28_0, xmm26_0, xmm16_0, table);
call vpternlogq64 (xmm28_1, xmm26_1, xmm16_1, table);
(* vmovdqa64 %xmm11,%xmm26                         #! PC = 0x555555574297 *)
mov xmm26_0 xmm11_0;
mov xmm26_1 xmm11_1;
(* vmovdqa64 %xmm25,%xmm16                         #! PC = 0x55555557429d *)
mov xmm16_0 xmm25_0;
mov xmm16_1 xmm25_1;
(* vprorq $0x2,%xmm2,%xmm2                         #! PC = 0x5555555742a3 *)
ror xmm2_0 xmm2_0 0x2;
ror xmm2_1 xmm2_1 0x2;
(* vprorq $0x9,%xmm17,%xmm17                       #! PC = 0x5555555742aa *)
ror xmm17_0 xmm17_0 0x9;
ror xmm17_1 xmm17_1 0x9;
(* vpternlogq $0xd2,%xmm8,%xmm25,%xmm26            #! PC = 0x5555555742b1 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm26_0, xmm25_0, xmm8_0, table);
call vpternlogq64 (xmm26_1, xmm25_1, xmm8_1, table);
(* vpternlogq $0xd2,%xmm10,%xmm8,%xmm16            #! PC = 0x5555555742b8 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm16_0, xmm8_0, xmm10_0, table);
call vpternlogq64 (xmm16_1, xmm8_1, xmm10_1, table);
(* vpxorq %xmm30,%xmm21,%xmm21                     #! PC = 0x5555555742bf *)
xor xmm21_0@uint64 xmm21_0 xmm30_0;
xor xmm21_1@uint64 xmm21_1 xmm30_1;
(* vpternlogq $0xd2,%xmm12,%xmm10,%xmm8            #! PC = 0x5555555742c5 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm8_0, xmm10_0, xmm12_0, table);
call vpternlogq64 (xmm8_1, xmm10_1, xmm12_1, table);
(* vpxorq %xmm29,%xmm14,%xmm14                     #! PC = 0x5555555742cc *)
xor xmm14_0@uint64 xmm14_0 xmm29_0;
xor xmm14_1@uint64 xmm14_1 xmm29_1;
(* vpternlogq $0xd2,%xmm11,%xmm12,%xmm10           #! PC = 0x5555555742d2 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm10_0, xmm12_0, xmm11_0, table);
call vpternlogq64 (xmm10_1, xmm12_1, xmm11_1, table);
(* vpternlogq $0xd2,%xmm25,%xmm11,%xmm12           #! PC = 0x5555555742d9 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm12_0, xmm11_0, xmm25_0, table);
call vpternlogq64 (xmm12_1, xmm11_1, xmm25_1, table);
(* vpxorq %xmm22,%xmm24,%xmm11                     #! PC = 0x5555555742e0 *)
xor xmm11_0@uint64 xmm24_0 xmm22_0;
xor xmm11_1@uint64 xmm24_1 xmm22_1;
(* vprorq $0x17,%xmm21,%xmm21                      #! PC = 0x5555555742e6 *)
ror xmm21_0 xmm21_0 0x17;
ror xmm21_1 xmm21_1 0x17;
(* vprolq $0x2,%xmm11,%xmm11                       #! PC = 0x5555555742ed *)
rol xmm11_0 xmm11_0 0x2;
rol xmm11_1 xmm11_1 0x2;
(* vprorq $0x19,%xmm14,%xmm14                      #! PC = 0x5555555742f4 *)
ror xmm14_0 xmm14_0 0x19;
ror xmm14_1 xmm14_1 0x19;
(* vmovdqa64 %xmm2,%xmm19                          #! PC = 0x5555555742fb *)
mov xmm19_0 xmm2_0;
mov xmm19_1 xmm2_1;
(* vmovdqa64 %xmm17,%xmm25                         #! PC = 0x555555574301 *)
mov xmm25_0 xmm17_0;
mov xmm25_1 xmm17_1;
(* vmovdqa64 %xmm12,%xmm22                         #! PC = 0x555555574307 *)
mov xmm22_0 xmm12_0;
mov xmm22_1 xmm12_1;
(* vmovdqa64 %xmm18,%xmm24                         #! PC = 0x55555557430d *)
mov xmm24_0 xmm18_0;
mov xmm24_1 xmm18_1;
(* vpternlogq $0x96,%xmm27,%xmm26,%xmm24           #! PC = 0x555555574313 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm24_0, xmm26_0, xmm27_0, table);
call vpternlogq64 (xmm24_1, xmm26_1, xmm27_1, table);
(* vpternlogq $0xd2,%xmm21,%xmm14,%xmm25           #! PC = 0x55555557431a *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm25_0, xmm14_0, xmm21_0, table);
call vpternlogq64 (xmm25_1, xmm14_1, xmm21_1, table);
(* vpternlogq $0xd2,%xmm14,%xmm17,%xmm19           #! PC = 0x555555574321 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm19_0, xmm17_0, xmm14_0, table);
call vpternlogq64 (xmm19_1, xmm17_1, xmm14_1, table);
(* vpternlogq $0xd2,%xmm11,%xmm21,%xmm14           #! PC = 0x555555574328 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm14_0, xmm21_0, xmm11_0, table);
call vpternlogq64 (xmm14_1, xmm21_1, xmm11_1, table);
(* vpternlogq $0xd2,%xmm2,%xmm11,%xmm21            #! PC = 0x55555557432f *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm21_0, xmm11_0, xmm2_0, table);
call vpternlogq64 (xmm21_1, xmm11_1, xmm2_1, table);
(* vpternlogq $0xd2,%xmm17,%xmm2,%xmm11            #! PC = 0x555555574336 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm11_0, xmm2_0, xmm17_0, table);
call vpternlogq64 (xmm11_1, xmm2_1, xmm17_1, table);
(* vmovdqa64 %xmm14,%xmm17                         #! PC = 0x55555557433d *)
mov xmm17_0 xmm14_0;
mov xmm17_1 xmm14_1;
(* vpternlogq $0x96,%xmm0,%xmm1,%xmm17             #! PC = 0x555555574343 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm17_0, xmm1_0, xmm0_0, table);
call vpternlogq64 (xmm17_1, xmm1_1, xmm0_1, table);
(* vpternlogq $0x96,%xmm6,%xmm8,%xmm17             #! PC = 0x55555557434a *)
mov table 0x96@uint8;
call vpternlogq64 (xmm17_0, xmm8_0, xmm6_0, table);
call vpternlogq64 (xmm17_1, xmm8_1, xmm6_1, table);
(* vprolq $0x1,%xmm17,%xmm29                       #! PC = 0x555555574351 *)
rol xmm29_0 xmm17_0 0x1;
rol xmm29_1 xmm17_1 0x1;
(* vmovdqa %xmm13,%xmm2                            #! PC = 0x555555574358 *)
mov xmm2_0 xmm13_0;
mov xmm2_1 xmm13_1;
(* vpternlogq $0x96,%xmm3,%xmm21,%xmm2             #! PC = 0x55555557435c *)
mov table 0x96@uint8;
call vpternlogq64 (xmm2_0, xmm21_0, xmm3_0, table);
call vpternlogq64 (xmm2_1, xmm21_1, xmm3_1, table);
(* vpternlogq $0x96,%xmm10,%xmm4,%xmm2             #! PC = 0x555555574363 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm2_0, xmm4_0, xmm10_0, table);
call vpternlogq64 (xmm2_1, xmm4_1, xmm10_1, table);
(* vpternlogq $0x96,%xmm11,%xmm23,%xmm22           #! PC = 0x55555557436a *)
mov table 0x96@uint8;
call vpternlogq64 (xmm22_0, xmm23_0, xmm11_0, table);
call vpternlogq64 (xmm22_1, xmm23_1, xmm11_1, table);
(* vpternlogq $0x96,%xmm9,%xmm28,%xmm22            #! PC = 0x555555574371 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm22_0, xmm28_0, xmm9_0, table);
call vpternlogq64 (xmm22_1, xmm28_1, xmm9_1, table);
(* vmovdqa64 %xmm29,-0x78(%rsp)                    #! EA = L0x7fffffffda70; PC = 0x555555574378 *)
mov L0x7fffffffda70 xmm29_0;
mov L0x7fffffffda78 xmm29_1;
(* vprolq $0x1,%xmm2,%xmm29                        #! PC = 0x555555574383 *)
rol xmm29_0 xmm2_0 0x1;
rol xmm29_1 xmm2_1 0x1;
(* vpternlogq $0x96,%xmm5,%xmm19,%xmm24            #! PC = 0x55555557438a *)
mov table 0x96@uint8;
call vpternlogq64 (xmm24_0, xmm19_0, xmm5_0, table);
call vpternlogq64 (xmm24_1, xmm19_1, xmm5_1, table);
(* vmovdqa64 %xmm7,%xmm20                          #! PC = 0x555555574391 *)
mov xmm20_0 xmm7_0;
mov xmm20_1 xmm7_1;
(* vpternlogq $0x96,%xmm16,%xmm15,%xmm20           #! PC = 0x555555574397 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm20_0, xmm15_0, xmm16_0, table);
call vpternlogq64 (xmm20_1, xmm15_1, xmm16_1, table);
(* vpternlogq $0x96,%xmm25,%xmm31,%xmm20           #! PC = 0x55555557439e *)
mov table 0x96@uint8;
call vpternlogq64 (xmm20_0, xmm31_0, xmm25_0, table);
call vpternlogq64 (xmm20_1, xmm31_1, xmm25_1, table);
(* vprolq $0x1,%xmm20,%xmm30                       #! PC = 0x5555555743a5 *)
rol xmm30_0 xmm20_0 0x1;
rol xmm30_1 xmm20_1 0x1;
(* vmovdqa64 %xmm29,-0x68(%rsp)                    #! EA = L0x7fffffffda80; PC = 0x5555555743ac *)
mov L0x7fffffffda80 xmm29_0;
mov L0x7fffffffda88 xmm29_1;
(* vprolq $0x1,%xmm22,%xmm29                       #! PC = 0x5555555743b7 *)
rol xmm29_0 xmm22_0 0x1;
rol xmm29_1 xmm22_1 0x1;
(* vpxorq -0x68(%rsp),%xmm20,%xmm20                #! EA = L0x7fffffffda80; Value = 0x5060c044dcf01eb6; PC = 0x5555555743be *)
xor xmm20_0@uint64 xmm20_0 L0x7fffffffda80;
xor xmm20_1@uint64 xmm20_1 L0x7fffffffda88;
(* movabs $0x8000000000008003,%r9                  #! PC = 0x5555555743c9 *)
mov r9 0x8000000000008003@uint64;
(* vpxorq %xmm20,%xmm1,%xmm1                       #! PC = 0x5555555743d3 *)
xor xmm1_0@uint64 xmm1_0 xmm20_0;
xor xmm1_1@uint64 xmm1_1 xmm20_1;
(* vprorq $0x15,%xmm1,%xmm1                        #! PC = 0x5555555743d9 *)
ror xmm1_0 xmm1_0 0x15;
ror xmm1_1 xmm1_1 0x15;
(* vpxorq %xmm22,%xmm30,%xmm30                     #! PC = 0x5555555743e0 *)
xor xmm30_0@uint64 xmm30_0 xmm22_0;
xor xmm30_1@uint64 xmm30_1 xmm22_1;
(* vmovdqa64 %xmm29,-0x58(%rsp)                    #! EA = L0x7fffffffda90; PC = 0x5555555743e6 *)
mov L0x7fffffffda90 xmm29_0;
mov L0x7fffffffda98 xmm29_1;
(* vprolq $0x1,%xmm24,%xmm29                       #! PC = 0x5555555743f1 *)
rol xmm29_0 xmm24_0 0x1;
rol xmm29_1 xmm24_1 0x1;
(* vpxorq -0x78(%rsp),%xmm24,%xmm24                #! EA = L0x7fffffffda70; Value = 0x5e4371d8c37501d7; PC = 0x5555555743f8 *)
xor xmm24_0@uint64 xmm24_0 L0x7fffffffda70;
xor xmm24_1@uint64 xmm24_1 L0x7fffffffda78;
(* vpxorq -0x58(%rsp),%xmm17,%xmm17                #! EA = L0x7fffffffda90; Value = 0x820184ee4eccf33c; PC = 0x555555574403 *)
xor xmm17_0@uint64 xmm17_0 L0x7fffffffda90;
xor xmm17_1@uint64 xmm17_1 L0x7fffffffda98;
(* vpxorq %xmm24,%xmm31,%xmm31                     #! PC = 0x55555557440e *)
xor xmm31_0@uint64 xmm31_0 xmm24_0;
xor xmm31_1@uint64 xmm31_1 xmm24_1;
(* vprorq $0x14,%xmm31,%xmm31                      #! PC = 0x555555574414 *)
ror xmm31_0 xmm31_0 0x14;
ror xmm31_1 xmm31_1 0x14;
(* vpxorq %xmm17,%xmm10,%xmm10                     #! PC = 0x55555557441b *)
xor xmm10_0@uint64 xmm10_0 xmm17_0;
xor xmm10_1@uint64 xmm10_1 xmm17_1;
(* vpxorq %xmm2,%xmm29,%xmm29                      #! PC = 0x555555574421 *)
xor xmm29_0@uint64 xmm29_0 xmm2_0;
xor xmm29_1@uint64 xmm29_1 xmm2_1;
(* vpxorq %xmm29,%xmm11,%xmm11                     #! PC = 0x555555574427 *)
xor xmm11_0@uint64 xmm11_0 xmm29_0;
xor xmm11_1@uint64 xmm11_1 xmm29_1;
(* vprolq $0x15,%xmm10,%xmm10                      #! PC = 0x55555557442d *)
rol xmm10_0 xmm10_0 0x15;
rol xmm10_1 xmm10_1 0x15;
(* vprolq $0xe,%xmm11,%xmm11                       #! PC = 0x555555574434 *)
rol xmm11_0 xmm11_0 0xe;
rol xmm11_1 xmm11_1 0xe;
(* vpxorq %xmm18,%xmm30,%xmm2                      #! PC = 0x55555557443b *)
xor xmm2_0@uint64 xmm30_0 xmm18_0;
xor xmm2_1@uint64 xmm30_1 xmm18_1;
(* vmovdqa64 %xmm2,%xmm18                          #! PC = 0x555555574441 *)
mov xmm18_0 xmm2_0;
mov xmm18_1 xmm2_1;
(* vmovdqa64 %xmm31,%xmm22                         #! PC = 0x555555574447 *)
mov xmm22_0 xmm31_0;
mov xmm22_1 xmm31_1;
(* vpternlogq $0xd2,%xmm1,%xmm31,%xmm18            #! PC = 0x55555557444d *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm18_0, xmm31_0, xmm1_0, table);
call vpternlogq64 (xmm18_1, xmm31_1, xmm1_1, table);
(* vpternlogq $0xd2,%xmm10,%xmm1,%xmm22            #! PC = 0x555555574454 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm22_0, xmm1_0, xmm10_0, table);
call vpternlogq64 (xmm22_1, xmm1_1, xmm10_1, table);
(* vpternlogq $0xd2,%xmm11,%xmm10,%xmm1            #! PC = 0x55555557445b *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm1_0, xmm10_0, xmm11_0, table);
call vpternlogq64 (xmm1_1, xmm10_1, xmm11_1, table);
(* vpternlogq $0xd2,%xmm2,%xmm11,%xmm10            #! PC = 0x555555574462 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm10_0, xmm11_0, xmm2_0, table);
call vpternlogq64 (xmm10_1, xmm11_1, xmm2_1, table);
(* vpternlogq $0xd2,%xmm31,%xmm2,%xmm11            #! PC = 0x555555574469 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm11_0, xmm2_0, xmm31_0, table);
call vpternlogq64 (xmm11_1, xmm2_1, xmm31_1, table);
(* vpbroadcastq %rdx,%xmm2                         #! PC = 0x555555574470 *)
mov xmm2_0 rdx;
mov xmm2_1 rdx;
(* vpxorq %xmm2,%xmm18,%xmm18                      #! PC = 0x555555574476 *)
xor xmm18_0@uint64 xmm18_0 xmm2_0;
xor xmm18_1@uint64 xmm18_1 xmm2_1;
(* vpxorq %xmm17,%xmm4,%xmm4                       #! PC = 0x55555557447c *)
xor xmm4_0@uint64 xmm4_0 xmm17_0;
xor xmm4_1@uint64 xmm4_1 xmm17_1;
(* vpxorq %xmm29,%xmm23,%xmm2                      #! PC = 0x555555574482 *)
xor xmm2_0@uint64 xmm23_0 xmm29_0;
xor xmm2_1@uint64 xmm23_1 xmm29_1;
(* vprolq $0x1c,%xmm4,%xmm4                        #! PC = 0x555555574488 *)
rol xmm4_0 xmm4_0 0x1c;
rol xmm4_1 xmm4_1 0x1c;
(* vprolq $0x14,%xmm2,%xmm2                        #! PC = 0x55555557448f *)
rol xmm2_0 xmm2_0 0x14;
rol xmm2_1 xmm2_1 0x14;
(* vpxorq %xmm30,%xmm5,%xmm5                       #! PC = 0x555555574496 *)
xor xmm5_0@uint64 xmm5_0 xmm30_0;
xor xmm5_1@uint64 xmm5_1 xmm30_1;
(* vpxorq %xmm24,%xmm16,%xmm16                     #! PC = 0x55555557449c *)
xor xmm16_0@uint64 xmm16_0 xmm24_0;
xor xmm16_1@uint64 xmm16_1 xmm24_1;
(* vpxorq %xmm20,%xmm14,%xmm14                     #! PC = 0x5555555744a2 *)
xor xmm14_0@uint64 xmm14_0 xmm20_0;
xor xmm14_1@uint64 xmm14_1 xmm20_1;
(* vprolq $0x3,%xmm5,%xmm5                         #! PC = 0x5555555744a8 *)
rol xmm5_0 xmm5_0 0x3;
rol xmm5_1 xmm5_1 0x3;
(* vprorq $0x13,%xmm16,%xmm16                      #! PC = 0x5555555744af *)
ror xmm16_0 xmm16_0 0x13;
ror xmm16_1 xmm16_1 0x13;
(* vprorq $0x3,%xmm14,%xmm14                       #! PC = 0x5555555744b6 *)
ror xmm14_0 xmm14_0 0x3;
ror xmm14_1 xmm14_1 0x3;
(* vmovdqa64 %xmm4,%xmm31                          #! PC = 0x5555555744bd *)
mov xmm31_0 xmm4_0;
mov xmm31_1 xmm4_1;
(* vmovdqa64 %xmm2,%xmm23                          #! PC = 0x5555555744c3 *)
mov xmm23_0 xmm2_0;
mov xmm23_1 xmm2_1;
(* vpxorq %xmm24,%xmm15,%xmm15                     #! PC = 0x5555555744c9 *)
xor xmm15_0@uint64 xmm15_0 xmm24_0;
xor xmm15_1@uint64 xmm15_1 xmm24_1;
(* vpxorq %xmm20,%xmm6,%xmm6                       #! PC = 0x5555555744cf *)
xor xmm6_0@uint64 xmm6_0 xmm20_0;
xor xmm6_1@uint64 xmm6_1 xmm20_1;
(* vprolq $0x1,%xmm15,%xmm15                       #! PC = 0x5555555744d5 *)
rol xmm15_0 xmm15_0 0x1;
rol xmm15_1 xmm15_1 0x1;
(* vprolq $0x6,%xmm6,%xmm6                         #! PC = 0x5555555744dc *)
rol xmm6_0 xmm6_0 0x6;
rol xmm6_1 xmm6_1 0x6;
(* vpternlogq $0xd2,%xmm5,%xmm2,%xmm31             #! PC = 0x5555555744e3 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm31_0, xmm2_0, xmm5_0, table);
call vpternlogq64 (xmm31_1, xmm2_1, xmm5_1, table);
(* vpternlogq $0xd2,%xmm16,%xmm5,%xmm23            #! PC = 0x5555555744ea *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm23_0, xmm5_0, xmm16_0, table);
call vpternlogq64 (xmm23_1, xmm5_1, xmm16_1, table);
(* vpxorq %xmm30,%xmm19,%xmm19                     #! PC = 0x5555555744f1 *)
xor xmm19_0@uint64 xmm19_0 xmm30_0;
xor xmm19_1@uint64 xmm19_1 xmm30_1;
(* vpternlogq $0xd2,%xmm14,%xmm16,%xmm5            #! PC = 0x5555555744f7 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm5_0, xmm16_0, xmm14_0, table);
call vpternlogq64 (xmm5_1, xmm16_1, xmm14_1, table);
(* vpxorq %xmm17,%xmm3,%xmm3                       #! PC = 0x5555555744fe *)
xor xmm3_0@uint64 xmm3_0 xmm17_0;
xor xmm3_1@uint64 xmm3_1 xmm17_1;
(* vpternlogq $0xd2,%xmm4,%xmm14,%xmm16            #! PC = 0x555555574504 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm16_0, xmm14_0, xmm4_0, table);
call vpternlogq64 (xmm16_1, xmm14_1, xmm4_1, table);
(* vpxorq %xmm30,%xmm27,%xmm27                     #! PC = 0x55555557450b *)
xor xmm27_0@uint64 xmm27_0 xmm30_0;
xor xmm27_1@uint64 xmm27_1 xmm30_1;
(* vpternlogq $0xd2,%xmm2,%xmm4,%xmm14             #! PC = 0x555555574511 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm14_0, xmm4_0, xmm2_0, table);
call vpternlogq64 (xmm14_1, xmm4_1, xmm2_1, table);
(* vpxorq %xmm29,%xmm9,%xmm9                       #! PC = 0x555555574518 *)
xor xmm9_0@uint64 xmm9_0 xmm29_0;
xor xmm9_1@uint64 xmm9_1 xmm29_1;
(* vpxorq %xmm29,%xmm12,%xmm2                      #! PC = 0x55555557451e *)
xor xmm2_0@uint64 xmm12_0 xmm29_0;
xor xmm2_1@uint64 xmm12_1 xmm29_1;
(* vprorq $0x1c,%xmm27,%xmm27                      #! PC = 0x555555574524 *)
ror xmm27_0 xmm27_0 0x1c;
ror xmm27_1 xmm27_1 0x1c;
(* vprolq $0x1b,%xmm9,%xmm9                        #! PC = 0x55555557452b *)
rol xmm9_0 xmm9_0 0x1b;
rol xmm9_1 xmm9_1 0x1b;
(* vprolq $0x12,%xmm19,%xmm19                      #! PC = 0x555555574532 *)
rol xmm19_0 xmm19_0 0x12;
rol xmm19_1 xmm19_1 0x12;
(* vprolq $0x19,%xmm3,%xmm3                        #! PC = 0x555555574539 *)
rol xmm3_0 xmm3_0 0x19;
rol xmm3_1 xmm3_1 0x19;
(* vprolq $0x8,%xmm2,%xmm2                         #! PC = 0x555555574540 *)
rol xmm2_0 xmm2_0 0x8;
rol xmm2_1 xmm2_1 0x8;
(* vpxorq %xmm24,%xmm7,%xmm7                       #! PC = 0x555555574547 *)
xor xmm7_0@uint64 xmm7_0 xmm24_0;
xor xmm7_1@uint64 xmm7_1 xmm24_1;
(* vpxorq %xmm20,%xmm8,%xmm8                       #! PC = 0x55555557454d *)
xor xmm8_0@uint64 xmm8_0 xmm20_0;
xor xmm8_1@uint64 xmm8_1 xmm20_1;
(* vpxorq %xmm17,%xmm21,%xmm21                     #! PC = 0x555555574553 *)
xor xmm21_0@uint64 xmm21_0 xmm17_0;
xor xmm21_1@uint64 xmm21_1 xmm17_1;
(* vprolq $0xa,%xmm7,%xmm7                         #! PC = 0x555555574559 *)
rol xmm7_0 xmm7_0 0xa;
rol xmm7_1 xmm7_1 0xa;
(* vprolq $0xf,%xmm8,%xmm8                         #! PC = 0x555555574560 *)
rol xmm8_0 xmm8_0 0xf;
rol xmm8_1 xmm8_1 0xf;
(* vprorq $0x8,%xmm21,%xmm21                       #! PC = 0x555555574567 *)
ror xmm21_0 xmm21_0 0x8;
ror xmm21_1 xmm21_1 0x8;
(* vmovdqa %xmm15,%xmm4                            #! PC = 0x55555557456e *)
mov xmm4_0 xmm15_0;
mov xmm4_1 xmm15_1;
(* vmovdqa %xmm6,%xmm12                            #! PC = 0x555555574572 *)
mov xmm12_0 xmm6_0;
mov xmm12_1 xmm6_1;
(* vpternlogq $0xd2,%xmm3,%xmm6,%xmm4              #! PC = 0x555555574576 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm4_0, xmm6_0, xmm3_0, table);
call vpternlogq64 (xmm4_1, xmm6_1, xmm3_1, table);
(* vpternlogq $0xd2,%xmm2,%xmm3,%xmm12             #! PC = 0x55555557457d *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm12_0, xmm3_0, xmm2_0, table);
call vpternlogq64 (xmm12_1, xmm3_1, xmm2_1, table);
(* vpxorq %xmm17,%xmm13,%xmm13                     #! PC = 0x555555574584 *)
xor xmm13_0@uint64 xmm13_0 xmm17_0;
xor xmm13_1@uint64 xmm13_1 xmm17_1;
(* vpternlogq $0xd2,%xmm19,%xmm2,%xmm3             #! PC = 0x55555557458a *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm3_0, xmm2_0, xmm19_0, table);
call vpternlogq64 (xmm3_1, xmm2_1, xmm19_1, table);
(* vpxorq %xmm20,%xmm0,%xmm0                       #! PC = 0x555555574591 *)
xor xmm0_0@uint64 xmm0_0 xmm20_0;
xor xmm0_1@uint64 xmm0_1 xmm20_1;
(* vpternlogq $0xd2,%xmm15,%xmm19,%xmm2            #! PC = 0x555555574597 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm2_0, xmm19_0, xmm15_0, table);
call vpternlogq64 (xmm2_1, xmm19_1, xmm15_1, table);
(* vpternlogq $0xd2,%xmm6,%xmm15,%xmm19            #! PC = 0x55555557459e *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm19_0, xmm15_0, xmm6_0, table);
call vpternlogq64 (xmm19_1, xmm15_1, xmm6_1, table);
(* vmovdqa %xmm9,%xmm6                             #! PC = 0x5555555745a5 *)
mov xmm6_0 xmm9_0;
mov xmm6_1 xmm9_1;
(* vmovdqa64 %xmm27,%xmm15                         #! PC = 0x5555555745a9 *)
mov xmm15_0 xmm27_0;
mov xmm15_1 xmm27_1;
(* vprorq $0x2,%xmm0,%xmm20                        #! PC = 0x5555555745af *)
ror xmm20_0 xmm0_0 0x2;
ror xmm20_1 xmm0_1 0x2;
(* vpternlogq $0xd2,%xmm7,%xmm27,%xmm6             #! PC = 0x5555555745b6 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm6_0, xmm27_0, xmm7_0, table);
call vpternlogq64 (xmm6_1, xmm27_1, xmm7_1, table);
(* vpternlogq $0xd2,%xmm8,%xmm7,%xmm15             #! PC = 0x5555555745bd *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm15_0, xmm7_0, xmm8_0, table);
call vpternlogq64 (xmm15_1, xmm7_1, xmm8_1, table);
(* vpxorq %xmm30,%xmm26,%xmm26                     #! PC = 0x5555555745c4 *)
xor xmm26_0@uint64 xmm26_0 xmm30_0;
xor xmm26_1@uint64 xmm26_1 xmm30_1;
(* vpternlogq $0xd2,%xmm21,%xmm8,%xmm7             #! PC = 0x5555555745ca *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm7_0, xmm8_0, xmm21_0, table);
call vpternlogq64 (xmm7_1, xmm8_1, xmm21_1, table);
(* vpxorq %xmm29,%xmm28,%xmm28                     #! PC = 0x5555555745d1 *)
xor xmm28_0@uint64 xmm28_0 xmm29_0;
xor xmm28_1@uint64 xmm28_1 xmm29_1;
(* vpternlogq $0xd2,%xmm9,%xmm21,%xmm8             #! PC = 0x5555555745d7 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm8_0, xmm21_0, xmm9_0, table);
call vpternlogq64 (xmm8_1, xmm21_1, xmm9_1, table);
(* vpternlogq $0xd2,%xmm27,%xmm9,%xmm21            #! PC = 0x5555555745de *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm21_0, xmm9_0, xmm27_0, table);
call vpternlogq64 (xmm21_1, xmm9_1, xmm27_1, table);
(* vpxorq %xmm24,%xmm25,%xmm9                      #! PC = 0x5555555745e5 *)
xor xmm9_0@uint64 xmm25_0 xmm24_0;
xor xmm9_1@uint64 xmm25_1 xmm24_1;
(* vprorq $0x9,%xmm13,%xmm24                       #! PC = 0x5555555745eb *)
ror xmm24_0 xmm13_0 0x9;
ror xmm24_1 xmm13_1 0x9;
(* vprorq $0x17,%xmm26,%xmm26                      #! PC = 0x5555555745f2 *)
ror xmm26_0 xmm26_0 0x17;
ror xmm26_1 xmm26_1 0x17;
(* vprolq $0x2,%xmm9,%xmm9                         #! PC = 0x5555555745f9 *)
rol xmm9_0 xmm9_0 0x2;
rol xmm9_1 xmm9_1 0x2;
(* vprorq $0x19,%xmm28,%xmm28                      #! PC = 0x555555574600 *)
ror xmm28_0 xmm28_0 0x19;
ror xmm28_1 xmm28_1 0x19;
(* vmovdqa64 %xmm20,%xmm13                         #! PC = 0x555555574607 *)
mov xmm13_0 xmm20_0;
mov xmm13_1 xmm20_1;
(* vmovdqa64 %xmm5,%xmm25                          #! PC = 0x55555557460d *)
mov xmm25_0 xmm5_0;
mov xmm25_1 xmm5_1;
(* vmovdqa64 %xmm24,%xmm17                         #! PC = 0x555555574613 *)
mov xmm17_0 xmm24_0;
mov xmm17_1 xmm24_1;
(* vmovdqa64 %xmm26,%xmm0                          #! PC = 0x555555574619 *)
mov xmm0_0 xmm26_0;
mov xmm0_1 xmm26_1;
(* vpternlogq $0xd2,%xmm20,%xmm9,%xmm0             #! PC = 0x55555557461f *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm0_0, xmm9_0, xmm20_0, table);
call vpternlogq64 (xmm0_1, xmm9_1, xmm20_1, table);
(* vpternlogq $0xd2,%xmm28,%xmm24,%xmm13           #! PC = 0x555555574626 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm13_0, xmm24_0, xmm28_0, table);
call vpternlogq64 (xmm13_1, xmm24_1, xmm28_1, table);
(* vpternlogq $0xd2,%xmm26,%xmm28,%xmm17           #! PC = 0x55555557462d *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm17_0, xmm28_0, xmm26_0, table);
call vpternlogq64 (xmm17_1, xmm28_1, xmm26_1, table);
(* vpternlogq $0xd2,%xmm9,%xmm26,%xmm28            #! PC = 0x555555574634 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm28_0, xmm26_0, xmm9_0, table);
call vpternlogq64 (xmm28_1, xmm26_1, xmm9_1, table);
(* vpternlogq $0x96,%xmm28,%xmm1,%xmm25            #! PC = 0x55555557463b *)
mov table 0x96@uint8;
call vpternlogq64 (xmm25_0, xmm1_0, xmm28_0, table);
call vpternlogq64 (xmm25_1, xmm1_1, xmm28_1, table);
(* vpternlogq $0x96,%xmm3,%xmm7,%xmm25             #! PC = 0x555555574642 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm25_0, xmm7_0, xmm3_0, table);
call vpternlogq64 (xmm25_1, xmm7_1, xmm3_1, table);
(* vpternlogq $0xd2,%xmm24,%xmm20,%xmm9            #! PC = 0x555555574649 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm9_0, xmm20_0, xmm24_0, table);
call vpternlogq64 (xmm9_1, xmm20_1, xmm24_1, table);
(* vprolq $0x1,%xmm25,%xmm20                       #! PC = 0x555555574650 *)
rol xmm20_0 xmm25_0 0x1;
rol xmm20_1 xmm25_1 0x1;
(* vmovdqa64 %xmm0,%xmm24                          #! PC = 0x555555574657 *)
mov xmm24_0 xmm0_0;
mov xmm24_1 xmm0_1;
(* vpternlogq $0x96,%xmm2,%xmm8,%xmm24             #! PC = 0x55555557465d *)
mov table 0x96@uint8;
call vpternlogq64 (xmm24_0, xmm8_0, xmm2_0, table);
call vpternlogq64 (xmm24_1, xmm8_1, xmm2_1, table);
(* vpternlogq $0x96,%xmm10,%xmm16,%xmm24           #! PC = 0x555555574664 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm24_0, xmm16_0, xmm10_0, table);
call vpternlogq64 (xmm24_1, xmm16_1, xmm10_1, table);
(* vmovdqa64 %xmm19,%xmm29                         #! PC = 0x55555557466b *)
mov xmm29_0 xmm19_0;
mov xmm29_1 xmm19_1;
(* vpternlogq $0x96,%xmm11,%xmm14,%xmm29           #! PC = 0x555555574671 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm29_0, xmm14_0, xmm11_0, table);
call vpternlogq64 (xmm29_1, xmm14_1, xmm11_1, table);
(* vmovdqa64 %xmm20,-0x78(%rsp)                    #! EA = L0x7fffffffda70; PC = 0x555555574678 *)
mov L0x7fffffffda70 xmm20_0;
mov L0x7fffffffda78 xmm20_1;
(* vprolq $0x1,%xmm24,%xmm20                       #! PC = 0x555555574683 *)
rol xmm20_0 xmm24_0 0x1;
rol xmm20_1 xmm24_1 0x1;
(* vpternlogq $0x96,%xmm21,%xmm9,%xmm29            #! PC = 0x55555557468a *)
mov table 0x96@uint8;
call vpternlogq64 (xmm29_0, xmm9_0, xmm21_0, table);
call vpternlogq64 (xmm29_1, xmm9_1, xmm21_1, table);
(* vmovdqa64 %xmm18,%xmm27                         #! PC = 0x555555574691 *)
mov xmm27_0 xmm18_0;
mov xmm27_1 xmm18_1;
(* vpternlogq $0x96,%xmm6,%xmm13,%xmm27            #! PC = 0x555555574697 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm27_0, xmm13_0, xmm6_0, table);
call vpternlogq64 (xmm27_1, xmm13_1, xmm6_1, table);
(* vpternlogq $0x96,%xmm31,%xmm4,%xmm27            #! PC = 0x55555557469e *)
mov table 0x96@uint8;
call vpternlogq64 (xmm27_0, xmm4_0, xmm31_0, table);
call vpternlogq64 (xmm27_1, xmm4_1, xmm31_1, table);
(* vmovdqa64 %xmm15,%xmm26                         #! PC = 0x5555555746a5 *)
mov xmm26_0 xmm15_0;
mov xmm26_1 xmm15_1;
(* vmovdqa64 %xmm20,-0x68(%rsp)                    #! EA = L0x7fffffffda80; PC = 0x5555555746ab *)
mov L0x7fffffffda80 xmm20_0;
mov L0x7fffffffda88 xmm20_1;
(* vprolq $0x1,%xmm29,%xmm20                       #! PC = 0x5555555746b6 *)
rol xmm20_0 xmm29_0 0x1;
rol xmm20_1 xmm29_1 0x1;
(* vpternlogq $0x96,%xmm23,%xmm12,%xmm26           #! PC = 0x5555555746bd *)
mov table 0x96@uint8;
call vpternlogq64 (xmm26_0, xmm12_0, xmm23_0, table);
call vpternlogq64 (xmm26_1, xmm12_1, xmm23_1, table);
(* vpternlogq $0x96,%xmm17,%xmm22,%xmm26           #! PC = 0x5555555746c4 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm26_0, xmm22_0, xmm17_0, table);
call vpternlogq64 (xmm26_1, xmm22_1, xmm17_1, table);
(* vprolq $0x1,%xmm26,%xmm30                       #! PC = 0x5555555746cb *)
rol xmm30_0 xmm26_0 0x1;
rol xmm30_1 xmm26_1 0x1;
(* vpxorq -0x68(%rsp),%xmm26,%xmm26                #! EA = L0x7fffffffda80; Value = 0x142cec1df910a065; PC = 0x5555555746d2 *)
xor xmm26_0@uint64 xmm26_0 L0x7fffffffda80;
xor xmm26_1@uint64 xmm26_1 L0x7fffffffda88;
(* movabs $0x8000000000008002,%r10                 #! PC = 0x5555555746dd *)
mov r10 0x8000000000008002@uint64;
(* vmovdqa64 %xmm20,-0x58(%rsp)                    #! EA = L0x7fffffffda90; PC = 0x5555555746e7 *)
mov L0x7fffffffda90 xmm20_0;
mov L0x7fffffffda98 xmm20_1;
(* vprolq $0x1,%xmm27,%xmm20                       #! PC = 0x5555555746f2 *)
rol xmm20_0 xmm27_0 0x1;
rol xmm20_1 xmm27_1 0x1;
(* vpxorq -0x78(%rsp),%xmm27,%xmm27                #! EA = L0x7fffffffda70; Value = 0x3e0f21ec8e668e0d; PC = 0x5555555746f9 *)
xor xmm27_0@uint64 xmm27_0 L0x7fffffffda70;
xor xmm27_1@uint64 xmm27_1 L0x7fffffffda78;
(* vpxorq -0x58(%rsp),%xmm25,%xmm25                #! EA = L0x7fffffffda90; Value = 0x6a4278618259ee29; PC = 0x555555574704 *)
xor xmm25_0@uint64 xmm25_0 L0x7fffffffda90;
xor xmm25_1@uint64 xmm25_1 L0x7fffffffda98;
(* vpxorq %xmm27,%xmm23,%xmm23                     #! PC = 0x55555557470f *)
xor xmm23_0@uint64 xmm23_0 xmm27_0;
xor xmm23_1@uint64 xmm23_1 xmm27_1;
(* vprorq $0x14,%xmm23,%xmm23                      #! PC = 0x555555574715 *)
ror xmm23_0 xmm23_0 0x14;
ror xmm23_1 xmm23_1 0x14;
(* vpxorq %xmm26,%xmm3,%xmm3                       #! PC = 0x55555557471c *)
xor xmm3_0@uint64 xmm3_0 xmm26_0;
xor xmm3_1@uint64 xmm3_1 xmm26_1;
(* vpxorq %xmm20,%xmm24,%xmm24                     #! PC = 0x555555574722 *)
xor xmm24_0@uint64 xmm24_0 xmm20_0;
xor xmm24_1@uint64 xmm24_1 xmm20_1;
(* vpxorq %xmm25,%xmm8,%xmm8                       #! PC = 0x555555574728 *)
xor xmm8_0@uint64 xmm8_0 xmm25_0;
xor xmm8_1@uint64 xmm8_1 xmm25_1;
(* vpxorq %xmm24,%xmm9,%xmm9                       #! PC = 0x55555557472e *)
xor xmm9_0@uint64 xmm9_0 xmm24_0;
xor xmm9_1@uint64 xmm9_1 xmm24_1;
(* vpxorq %xmm30,%xmm29,%xmm29                     #! PC = 0x555555574734 *)
xor xmm29_0@uint64 xmm29_0 xmm30_0;
xor xmm29_1@uint64 xmm29_1 xmm30_1;
(* vprorq $0x15,%xmm3,%xmm3                        #! PC = 0x55555557473a *)
ror xmm3_0 xmm3_0 0x15;
ror xmm3_1 xmm3_1 0x15;
(* vprolq $0x15,%xmm8,%xmm8                        #! PC = 0x555555574741 *)
rol xmm8_0 xmm8_0 0x15;
rol xmm8_1 xmm8_1 0x15;
(* vprolq $0xe,%xmm9,%xmm9                         #! PC = 0x555555574748 *)
rol xmm9_0 xmm9_0 0xe;
rol xmm9_1 xmm9_1 0xe;
(* vpxorq %xmm25,%xmm10,%xmm10                     #! PC = 0x55555557474f *)
xor xmm10_0@uint64 xmm10_0 xmm25_0;
xor xmm10_1@uint64 xmm10_1 xmm25_1;
(* vpxorq %xmm24,%xmm14,%xmm14                     #! PC = 0x555555574755 *)
xor xmm14_0@uint64 xmm14_0 xmm24_0;
xor xmm14_1@uint64 xmm14_1 xmm24_1;
(* vprolq $0x1c,%xmm10,%xmm10                      #! PC = 0x55555557475b *)
rol xmm10_0 xmm10_0 0x1c;
rol xmm10_1 xmm10_1 0x1c;
(* vprolq $0x14,%xmm14,%xmm14                      #! PC = 0x555555574762 *)
rol xmm14_0 xmm14_0 0x14;
rol xmm14_1 xmm14_1 0x14;
(* vpxorq %xmm29,%xmm4,%xmm4                       #! PC = 0x555555574769 *)
xor xmm4_0@uint64 xmm4_0 xmm29_0;
xor xmm4_1@uint64 xmm4_1 xmm29_1;
(* vpxorq %xmm27,%xmm15,%xmm15                     #! PC = 0x55555557476f *)
xor xmm15_0@uint64 xmm15_0 xmm27_0;
xor xmm15_1@uint64 xmm15_1 xmm27_1;
(* vpxorq %xmm26,%xmm28,%xmm28                     #! PC = 0x555555574775 *)
xor xmm28_0@uint64 xmm28_0 xmm26_0;
xor xmm28_1@uint64 xmm28_1 xmm26_1;
(* vpxorq %xmm27,%xmm22,%xmm22                     #! PC = 0x55555557477b *)
xor xmm22_0@uint64 xmm22_0 xmm27_0;
xor xmm22_1@uint64 xmm22_1 xmm27_1;
(* vpxorq %xmm26,%xmm5,%xmm5                       #! PC = 0x555555574781 *)
xor xmm5_0@uint64 xmm5_0 xmm26_0;
xor xmm5_1@uint64 xmm5_1 xmm26_1;
(* vprolq $0x1,%xmm22,%xmm22                       #! PC = 0x555555574787 *)
rol xmm22_0 xmm22_0 0x1;
rol xmm22_1 xmm22_1 0x1;
(* vprolq $0x6,%xmm5,%xmm5                         #! PC = 0x55555557478e *)
rol xmm5_0 xmm5_0 0x6;
rol xmm5_1 xmm5_1 0x6;
(* vprolq $0x3,%xmm4,%xmm4                         #! PC = 0x555555574795 *)
rol xmm4_0 xmm4_0 0x3;
rol xmm4_1 xmm4_1 0x3;
(* vprorq $0x13,%xmm15,%xmm15                      #! PC = 0x55555557479c *)
ror xmm15_0 xmm15_0 0x13;
ror xmm15_1 xmm15_1 0x13;
(* vprorq $0x3,%xmm28,%xmm28                       #! PC = 0x5555555747a3 *)
ror xmm28_0 xmm28_0 0x3;
ror xmm28_1 xmm28_1 0x3;
(* vpxorq %xmm29,%xmm13,%xmm13                     #! PC = 0x5555555747aa *)
xor xmm13_0@uint64 xmm13_0 xmm29_0;
xor xmm13_1@uint64 xmm13_1 xmm29_1;
(* vpxorq %xmm25,%xmm2,%xmm2                       #! PC = 0x5555555747b0 *)
xor xmm2_0@uint64 xmm2_0 xmm25_0;
xor xmm2_1@uint64 xmm2_1 xmm25_1;
(* vpxorq %xmm24,%xmm21,%xmm21                     #! PC = 0x5555555747b6 *)
xor xmm21_0@uint64 xmm21_0 xmm24_0;
xor xmm21_1@uint64 xmm21_1 xmm24_1;
(* vpxorq %xmm29,%xmm31,%xmm31                     #! PC = 0x5555555747bc *)
xor xmm31_0@uint64 xmm31_0 xmm29_0;
xor xmm31_1@uint64 xmm31_1 xmm29_1;
(* vpxorq %xmm24,%xmm11,%xmm11                     #! PC = 0x5555555747c2 *)
xor xmm11_0@uint64 xmm11_0 xmm24_0;
xor xmm11_1@uint64 xmm11_1 xmm24_1;
(* vprorq $0x1c,%xmm31,%xmm31                      #! PC = 0x5555555747c8 *)
ror xmm31_0 xmm31_0 0x1c;
ror xmm31_1 xmm31_1 0x1c;
(* vprolq $0x1b,%xmm11,%xmm11                      #! PC = 0x5555555747cf *)
rol xmm11_0 xmm11_0 0x1b;
rol xmm11_1 xmm11_1 0x1b;
(* vprolq $0x12,%xmm13,%xmm13                      #! PC = 0x5555555747d6 *)
rol xmm13_0 xmm13_0 0x12;
rol xmm13_1 xmm13_1 0x12;
(* vprolq $0x19,%xmm2,%xmm2                        #! PC = 0x5555555747dd *)
rol xmm2_0 xmm2_0 0x19;
rol xmm2_1 xmm2_1 0x19;
(* vprolq $0x8,%xmm21,%xmm21                       #! PC = 0x5555555747e4 *)
rol xmm21_0 xmm21_0 0x8;
rol xmm21_1 xmm21_1 0x8;
(* vpxorq %xmm27,%xmm12,%xmm12                     #! PC = 0x5555555747eb *)
xor xmm12_0@uint64 xmm12_0 xmm27_0;
xor xmm12_1@uint64 xmm12_1 xmm27_1;
(* vpxorq %xmm26,%xmm7,%xmm7                       #! PC = 0x5555555747f1 *)
xor xmm7_0@uint64 xmm7_0 xmm26_0;
xor xmm7_1@uint64 xmm7_1 xmm26_1;
(* vpxorq %xmm25,%xmm0,%xmm0                       #! PC = 0x5555555747f7 *)
xor xmm0_0@uint64 xmm0_0 xmm25_0;
xor xmm0_1@uint64 xmm0_1 xmm25_1;
(* vpxorq %xmm26,%xmm1,%xmm1                       #! PC = 0x5555555747fd *)
xor xmm1_0@uint64 xmm1_0 xmm26_0;
xor xmm1_1@uint64 xmm1_1 xmm26_1;
(* vpxorq %xmm25,%xmm16,%xmm16                     #! PC = 0x555555574803 *)
xor xmm16_0@uint64 xmm16_0 xmm25_0;
xor xmm16_1@uint64 xmm16_1 xmm25_1;
(* vpxorq %xmm18,%xmm29,%xmm18                     #! PC = 0x555555574809 *)
xor xmm18_0@uint64 xmm29_0 xmm18_0;
xor xmm18_1@uint64 xmm29_1 xmm18_1;
(* vprorq $0x2,%xmm1,%xmm1                         #! PC = 0x55555557480f *)
ror xmm1_0 xmm1_0 0x2;
ror xmm1_1 xmm1_1 0x2;
(* vprorq $0x9,%xmm16,%xmm25                       #! PC = 0x555555574816 *)
ror xmm25_0 xmm16_0 0x9;
ror xmm25_1 xmm16_1 0x9;
(* vprolq $0xa,%xmm12,%xmm12                       #! PC = 0x55555557481d *)
rol xmm12_0 xmm12_0 0xa;
rol xmm12_1 xmm12_1 0xa;
(* vprolq $0xf,%xmm7,%xmm7                         #! PC = 0x555555574824 *)
rol xmm7_0 xmm7_0 0xf;
rol xmm7_1 xmm7_1 0xf;
(* vprorq $0x8,%xmm0,%xmm0                         #! PC = 0x55555557482b *)
ror xmm0_0 xmm0_0 0x8;
ror xmm0_1 xmm0_1 0x8;
(* vpxorq %xmm29,%xmm6,%xmm6                       #! PC = 0x555555574832 *)
xor xmm6_0@uint64 xmm6_0 xmm29_0;
xor xmm6_1@uint64 xmm6_1 xmm29_1;
(* vpxorq %xmm27,%xmm17,%xmm17                     #! PC = 0x555555574838 *)
xor xmm17_0@uint64 xmm17_0 xmm27_0;
xor xmm17_1@uint64 xmm17_1 xmm27_1;
(* vpxorq %xmm24,%xmm19,%xmm19                     #! PC = 0x55555557483e *)
xor xmm19_0@uint64 xmm19_0 xmm24_0;
xor xmm19_1@uint64 xmm19_1 xmm24_1;
(* vprorq $0x17,%xmm6,%xmm6                        #! PC = 0x555555574844 *)
ror xmm6_0 xmm6_0 0x17;
ror xmm6_1 xmm6_1 0x17;
(* vprolq $0x2,%xmm17,%xmm17                       #! PC = 0x55555557484b *)
rol xmm17_0 xmm17_0 0x2;
rol xmm17_1 xmm17_1 0x2;
(* vprorq $0x19,%xmm19,%xmm19                      #! PC = 0x555555574852 *)
ror xmm19_0 xmm19_0 0x19;
ror xmm19_1 xmm19_1 0x19;
(* vmovdqa64 %xmm18,%xmm30                         #! PC = 0x555555574859 *)
mov xmm30_0 xmm18_0;
mov xmm30_1 xmm18_1;
(* vmovdqa64 %xmm23,%xmm20                         #! PC = 0x55555557485f *)
mov xmm20_0 xmm23_0;
mov xmm20_1 xmm23_1;
(* vpternlogq $0xd2,%xmm3,%xmm23,%xmm30            #! PC = 0x555555574865 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm30_0, xmm23_0, xmm3_0, table);
call vpternlogq64 (xmm30_1, xmm23_1, xmm3_1, table);
(* vpternlogq $0xd2,%xmm8,%xmm3,%xmm20             #! PC = 0x55555557486c *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm20_0, xmm3_0, xmm8_0, table);
call vpternlogq64 (xmm20_1, xmm3_1, xmm8_1, table);
(* vpternlogq $0xd2,%xmm9,%xmm8,%xmm3              #! PC = 0x555555574873 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm3_0, xmm8_0, xmm9_0, table);
call vpternlogq64 (xmm3_1, xmm8_1, xmm9_1, table);
(* vpternlogq $0xd2,%xmm18,%xmm9,%xmm8             #! PC = 0x55555557487a *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm8_0, xmm9_0, xmm18_0, table);
call vpternlogq64 (xmm8_1, xmm9_1, xmm18_1, table);
(* vpternlogq $0xd2,%xmm23,%xmm18,%xmm9            #! PC = 0x555555574881 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm9_0, xmm18_0, xmm23_0, table);
call vpternlogq64 (xmm9_1, xmm18_1, xmm23_1, table);
(* vpbroadcastq %rcx,%xmm18                        #! PC = 0x555555574888 *)
mov xmm18_0 rcx;
mov xmm18_1 rcx;
(* vpxorq %xmm30,%xmm18,%xmm18                     #! PC = 0x55555557488e *)
xor xmm18_0@uint64 xmm18_0 xmm30_0;
xor xmm18_1@uint64 xmm18_1 xmm30_1;
(* vmovdqa64 %xmm14,%xmm23                         #! PC = 0x555555574894 *)
mov xmm23_0 xmm14_0;
mov xmm23_1 xmm14_1;
(* vmovdqa64 %xmm10,%xmm30                         #! PC = 0x55555557489a *)
mov xmm30_0 xmm10_0;
mov xmm30_1 xmm10_1;
(* vpternlogq $0xd2,%xmm4,%xmm14,%xmm30            #! PC = 0x5555555748a0 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm30_0, xmm14_0, xmm4_0, table);
call vpternlogq64 (xmm30_1, xmm14_1, xmm4_1, table);
(* vpternlogq $0xd2,%xmm15,%xmm4,%xmm23            #! PC = 0x5555555748a7 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm23_0, xmm4_0, xmm15_0, table);
call vpternlogq64 (xmm23_1, xmm4_1, xmm15_1, table);
(* vpternlogq $0xd2,%xmm28,%xmm15,%xmm4            #! PC = 0x5555555748ae *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm4_0, xmm15_0, xmm28_0, table);
call vpternlogq64 (xmm4_1, xmm15_1, xmm28_1, table);
(* vpternlogq $0xd2,%xmm10,%xmm28,%xmm15           #! PC = 0x5555555748b5 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm15_0, xmm28_0, xmm10_0, table);
call vpternlogq64 (xmm15_1, xmm28_1, xmm10_1, table);
(* vpternlogq $0xd2,%xmm14,%xmm10,%xmm28           #! PC = 0x5555555748bc *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm28_0, xmm10_0, xmm14_0, table);
call vpternlogq64 (xmm28_1, xmm10_1, xmm14_1, table);
(* vmovdqa64 %xmm22,%xmm14                         #! PC = 0x5555555748c3 *)
mov xmm14_0 xmm22_0;
mov xmm14_1 xmm22_1;
(* vmovdqa %xmm5,%xmm10                            #! PC = 0x5555555748c9 *)
mov xmm10_0 xmm5_0;
mov xmm10_1 xmm5_1;
(* vpternlogq $0xd2,%xmm2,%xmm5,%xmm14             #! PC = 0x5555555748cd *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm14_0, xmm5_0, xmm2_0, table);
call vpternlogq64 (xmm14_1, xmm5_1, xmm2_1, table);
(* vpternlogq $0xd2,%xmm21,%xmm2,%xmm10            #! PC = 0x5555555748d4 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm10_0, xmm2_0, xmm21_0, table);
call vpternlogq64 (xmm10_1, xmm2_1, xmm21_1, table);
(* vpternlogq $0xd2,%xmm13,%xmm21,%xmm2            #! PC = 0x5555555748db *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm2_0, xmm21_0, xmm13_0, table);
call vpternlogq64 (xmm2_1, xmm21_1, xmm13_1, table);
(* vpternlogq $0xd2,%xmm22,%xmm13,%xmm21           #! PC = 0x5555555748e2 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm21_0, xmm13_0, xmm22_0, table);
call vpternlogq64 (xmm21_1, xmm13_1, xmm22_1, table);
(* vpternlogq $0xd2,%xmm5,%xmm22,%xmm13            #! PC = 0x5555555748e9 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm13_0, xmm22_0, xmm5_0, table);
call vpternlogq64 (xmm13_1, xmm22_1, xmm5_1, table);
(* vmovdqa %xmm11,%xmm5                            #! PC = 0x5555555748f0 *)
mov xmm5_0 xmm11_0;
mov xmm5_1 xmm11_1;
(* vmovdqa64 %xmm31,%xmm22                         #! PC = 0x5555555748f4 *)
mov xmm22_0 xmm31_0;
mov xmm22_1 xmm31_1;
(* vpternlogq $0xd2,%xmm12,%xmm31,%xmm5            #! PC = 0x5555555748fa *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm5_0, xmm31_0, xmm12_0, table);
call vpternlogq64 (xmm5_1, xmm31_1, xmm12_1, table);
(* vpternlogq $0xd2,%xmm7,%xmm12,%xmm22            #! PC = 0x555555574901 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm22_0, xmm12_0, xmm7_0, table);
call vpternlogq64 (xmm22_1, xmm12_1, xmm7_1, table);
(* vmovdqa64 %xmm25,%xmm16                         #! PC = 0x555555574908 *)
mov xmm16_0 xmm25_0;
mov xmm16_1 xmm25_1;
(* vpternlogq $0xd2,%xmm0,%xmm7,%xmm12             #! PC = 0x55555557490e *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm12_0, xmm7_0, xmm0_0, table);
call vpternlogq64 (xmm12_1, xmm7_1, xmm0_1, table);
(* vpternlogq $0xd2,%xmm11,%xmm0,%xmm7             #! PC = 0x555555574915 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm7_0, xmm0_0, xmm11_0, table);
call vpternlogq64 (xmm7_1, xmm0_1, xmm11_1, table);
(* vpternlogq $0xd2,%xmm31,%xmm11,%xmm0            #! PC = 0x55555557491c *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm0_0, xmm11_0, xmm31_0, table);
call vpternlogq64 (xmm0_1, xmm11_1, xmm31_1, table);
(* vmovdqa %xmm1,%xmm11                            #! PC = 0x555555574923 *)
mov xmm11_0 xmm1_0;
mov xmm11_1 xmm1_1;
(* vpternlogq $0xd2,%xmm19,%xmm25,%xmm11           #! PC = 0x555555574927 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm11_0, xmm25_0, xmm19_0, table);
call vpternlogq64 (xmm11_1, xmm25_1, xmm19_1, table);
(* vpternlogq $0xd2,%xmm6,%xmm19,%xmm16            #! PC = 0x55555557492e *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm16_0, xmm19_0, xmm6_0, table);
call vpternlogq64 (xmm16_1, xmm19_1, xmm6_1, table);
(* vpternlogq $0xd2,%xmm17,%xmm6,%xmm19            #! PC = 0x555555574935 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm19_0, xmm6_0, xmm17_0, table);
call vpternlogq64 (xmm19_1, xmm6_1, xmm17_1, table);
(* vpternlogq $0xd2,%xmm1,%xmm17,%xmm6             #! PC = 0x55555557493c *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm6_0, xmm17_0, xmm1_0, table);
call vpternlogq64 (xmm6_1, xmm17_1, xmm1_1, table);
(* vpternlogq $0xd2,%xmm25,%xmm1,%xmm17            #! PC = 0x555555574943 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm17_0, xmm1_0, xmm25_0, table);
call vpternlogq64 (xmm17_1, xmm1_1, xmm25_1, table);
(* vmovdqa64 %xmm2,%xmm25                          #! PC = 0x55555557494a *)
mov xmm25_0 xmm2_0;
mov xmm25_1 xmm2_1;
(* vpternlogq $0x96,%xmm4,%xmm19,%xmm25            #! PC = 0x555555574950 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm25_0, xmm19_0, xmm4_0, table);
call vpternlogq64 (xmm25_1, xmm19_1, xmm4_1, table);
(* vpternlogq $0x96,%xmm3,%xmm12,%xmm25            #! PC = 0x555555574957 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm25_0, xmm12_0, xmm3_0, table);
call vpternlogq64 (xmm25_1, xmm12_1, xmm3_1, table);
(* vprolq $0x1,%xmm25,%xmm1                        #! PC = 0x55555557495e *)
rol xmm1_0 xmm25_0 0x1;
rol xmm1_1 xmm25_1 0x1;
(* vmovdqa64 %xmm7,%xmm24                          #! PC = 0x555555574965 *)
mov xmm24_0 xmm7_0;
mov xmm24_1 xmm7_1;
(* vpternlogq $0x96,%xmm21,%xmm8,%xmm24            #! PC = 0x55555557496b *)
mov table 0x96@uint8;
call vpternlogq64 (xmm24_0, xmm8_0, xmm21_0, table);
call vpternlogq64 (xmm24_1, xmm8_1, xmm21_1, table);
(* vpternlogq $0x96,%xmm15,%xmm6,%xmm24            #! PC = 0x555555574972 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm24_0, xmm6_0, xmm15_0, table);
call vpternlogq64 (xmm24_1, xmm6_1, xmm15_1, table);
(* vmovdqa64 %xmm17,%xmm29                         #! PC = 0x555555574979 *)
mov xmm29_0 xmm17_0;
mov xmm29_1 xmm17_1;
(* vpternlogq $0x96,%xmm0,%xmm28,%xmm29            #! PC = 0x55555557497f *)
mov table 0x96@uint8;
call vpternlogq64 (xmm29_0, xmm28_0, xmm0_0, table);
call vpternlogq64 (xmm29_1, xmm28_1, xmm0_1, table);
(* vmovdqa %xmm1,-0x78(%rsp)                       #! EA = L0x7fffffffda70; PC = 0x555555574986 *)
mov L0x7fffffffda70 xmm1_0;
mov L0x7fffffffda78 xmm1_1;
(* vprolq $0x1,%xmm24,%xmm1                        #! PC = 0x55555557498c *)
rol xmm1_0 xmm24_0 0x1;
rol xmm1_1 xmm24_1 0x1;
(* vpternlogq $0x96,%xmm13,%xmm9,%xmm29            #! PC = 0x555555574993 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm29_0, xmm9_0, xmm13_0, table);
call vpternlogq64 (xmm29_1, xmm9_1, xmm13_1, table);
(* vmovdqa64 %xmm18,%xmm27                         #! PC = 0x55555557499a *)
mov xmm27_0 xmm18_0;
mov xmm27_1 xmm18_1;
(* vpternlogq $0x96,%xmm11,%xmm14,%xmm27           #! PC = 0x5555555749a0 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm27_0, xmm14_0, xmm11_0, table);
call vpternlogq64 (xmm27_1, xmm14_1, xmm11_1, table);
(* vpternlogq $0x96,%xmm5,%xmm30,%xmm27            #! PC = 0x5555555749a7 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm27_0, xmm30_0, xmm5_0, table);
call vpternlogq64 (xmm27_1, xmm30_1, xmm5_1, table);
(* vmovdqa64 %xmm23,%xmm26                         #! PC = 0x5555555749ae *)
mov xmm26_0 xmm23_0;
mov xmm26_1 xmm23_1;
(* vmovdqa %xmm1,-0x68(%rsp)                       #! EA = L0x7fffffffda80; PC = 0x5555555749b4 *)
mov L0x7fffffffda80 xmm1_0;
mov L0x7fffffffda88 xmm1_1;
(* vprolq $0x1,%xmm29,%xmm1                        #! PC = 0x5555555749ba *)
rol xmm1_0 xmm29_0 0x1;
rol xmm1_1 xmm29_1 0x1;
(* vpternlogq $0x96,%xmm20,%xmm22,%xmm26           #! PC = 0x5555555749c1 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm26_0, xmm22_0, xmm20_0, table);
call vpternlogq64 (xmm26_1, xmm22_1, xmm20_1, table);
(* vpternlogq $0x96,%xmm16,%xmm10,%xmm26           #! PC = 0x5555555749c8 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm26_0, xmm10_0, xmm16_0, table);
call vpternlogq64 (xmm26_1, xmm10_1, xmm16_1, table);
(* vprolq $0x1,%xmm26,%xmm31                       #! PC = 0x5555555749cf *)
rol xmm31_0 xmm26_0 0x1;
rol xmm31_1 xmm26_1 0x1;
(* vpxorq -0x68(%rsp),%xmm26,%xmm26                #! EA = L0x7fffffffda80; Value = 0xabf8b03e25c26d3f; PC = 0x5555555749d6 *)
xor xmm26_0@uint64 xmm26_0 L0x7fffffffda80;
xor xmm26_1@uint64 xmm26_1 L0x7fffffffda88;
(* movabs $0x8000000000000080,%rdx                 #! PC = 0x5555555749e1 *)
mov rdx 0x8000000000000080@uint64;
(* vmovdqa %xmm1,-0x58(%rsp)                       #! EA = L0x7fffffffda90; PC = 0x5555555749eb *)
mov L0x7fffffffda90 xmm1_0;
mov L0x7fffffffda98 xmm1_1;
(* vprolq $0x1,%xmm27,%xmm1                        #! PC = 0x5555555749f1 *)
rol xmm1_0 xmm27_0 0x1;
rol xmm1_1 xmm27_1 0x1;
(* vpxorq -0x78(%rsp),%xmm27,%xmm27                #! EA = L0x7fffffffda70; Value = 0xc29ac7f7ae2f2847; PC = 0x5555555749f8 *)
xor xmm27_0@uint64 xmm27_0 L0x7fffffffda70;
xor xmm27_1@uint64 xmm27_1 L0x7fffffffda78;
(* vpxorq -0x58(%rsp),%xmm25,%xmm25                #! EA = L0x7fffffffda90; Value = 0xc294a8de496979d8; PC = 0x555555574a03 *)
xor xmm25_0@uint64 xmm25_0 L0x7fffffffda90;
xor xmm25_1@uint64 xmm25_1 L0x7fffffffda98;
(* vpxorq %xmm27,%xmm23,%xmm23                     #! PC = 0x555555574a0e *)
xor xmm23_0@uint64 xmm23_0 xmm27_0;
xor xmm23_1@uint64 xmm23_1 xmm27_1;
(* vprorq $0x14,%xmm23,%xmm23                      #! PC = 0x555555574a14 *)
ror xmm23_0 xmm23_0 0x14;
ror xmm23_1 xmm23_1 0x14;
(* vpxorq %xmm26,%xmm2,%xmm2                       #! PC = 0x555555574a1b *)
xor xmm2_0@uint64 xmm2_0 xmm26_0;
xor xmm2_1@uint64 xmm2_1 xmm26_1;
(* vpxorq %xmm1,%xmm24,%xmm24                      #! PC = 0x555555574a21 *)
xor xmm24_0@uint64 xmm24_0 xmm1_0;
xor xmm24_1@uint64 xmm24_1 xmm1_1;
(* vpxorq %xmm25,%xmm7,%xmm7                       #! PC = 0x555555574a27 *)
xor xmm7_0@uint64 xmm7_0 xmm25_0;
xor xmm7_1@uint64 xmm7_1 xmm25_1;
(* vpxorq %xmm24,%xmm17,%xmm17                     #! PC = 0x555555574a2d *)
xor xmm17_0@uint64 xmm17_0 xmm24_0;
xor xmm17_1@uint64 xmm17_1 xmm24_1;
(* vprorq $0x15,%xmm2,%xmm2                        #! PC = 0x555555574a33 *)
ror xmm2_0 xmm2_0 0x15;
ror xmm2_1 xmm2_1 0x15;
(* vprolq $0x15,%xmm7,%xmm7                        #! PC = 0x555555574a3a *)
rol xmm7_0 xmm7_0 0x15;
rol xmm7_1 xmm7_1 0x15;
(* vprolq $0xe,%xmm17,%xmm17                       #! PC = 0x555555574a41 *)
rol xmm17_0 xmm17_0 0xe;
rol xmm17_1 xmm17_1 0xe;
(* vpxorq %xmm31,%xmm29,%xmm29                     #! PC = 0x555555574a48 *)
xor xmm29_0@uint64 xmm29_0 xmm31_0;
xor xmm29_1@uint64 xmm29_1 xmm31_1;
(* vpxorq %xmm29,%xmm18,%xmm1                      #! PC = 0x555555574a4e *)
xor xmm1_0@uint64 xmm18_0 xmm29_0;
xor xmm1_1@uint64 xmm18_1 xmm29_1;
(* vmovdqa64 %xmm1,%xmm31                          #! PC = 0x555555574a54 *)
mov xmm31_0 xmm1_0;
mov xmm31_1 xmm1_1;
(* vmovdqa64 %xmm23,%xmm18                         #! PC = 0x555555574a5a *)
mov xmm18_0 xmm23_0;
mov xmm18_1 xmm23_1;
(* vpternlogq $0xd2,%xmm2,%xmm23,%xmm31            #! PC = 0x555555574a60 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm31_0, xmm23_0, xmm2_0, table);
call vpternlogq64 (xmm31_1, xmm23_1, xmm2_1, table);
(* vpternlogq $0xd2,%xmm7,%xmm2,%xmm18             #! PC = 0x555555574a67 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm18_0, xmm2_0, xmm7_0, table);
call vpternlogq64 (xmm18_1, xmm2_1, xmm7_1, table);
(* vpxorq %xmm25,%xmm8,%xmm8                       #! PC = 0x555555574a6e *)
xor xmm8_0@uint64 xmm8_0 xmm25_0;
xor xmm8_1@uint64 xmm8_1 xmm25_1;
(* vpternlogq $0xd2,%xmm17,%xmm7,%xmm2             #! PC = 0x555555574a74 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm2_0, xmm7_0, xmm17_0, table);
call vpternlogq64 (xmm2_1, xmm7_1, xmm17_1, table);
(* vpternlogq $0xd2,%xmm1,%xmm17,%xmm7             #! PC = 0x555555574a7b *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm7_0, xmm17_0, xmm1_0, table);
call vpternlogq64 (xmm7_1, xmm17_1, xmm1_1, table);
(* vpternlogq $0xd2,%xmm23,%xmm1,%xmm17            #! PC = 0x555555574a82 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm17_0, xmm1_0, xmm23_0, table);
call vpternlogq64 (xmm17_1, xmm1_1, xmm23_1, table);
(* vpxorq %xmm24,%xmm28,%xmm1                      #! PC = 0x555555574a89 *)
xor xmm1_0@uint64 xmm28_0 xmm24_0;
xor xmm1_1@uint64 xmm28_1 xmm24_1;
(* vprolq $0x1c,%xmm8,%xmm8                        #! PC = 0x555555574a8f *)
rol xmm8_0 xmm8_0 0x1c;
rol xmm8_1 xmm8_1 0x1c;
(* vprolq $0x14,%xmm1,%xmm1                        #! PC = 0x555555574a96 *)
rol xmm1_0 xmm1_0 0x14;
rol xmm1_1 xmm1_1 0x14;
(* vpxorq %xmm29,%xmm14,%xmm14                     #! PC = 0x555555574a9d *)
xor xmm14_0@uint64 xmm14_0 xmm29_0;
xor xmm14_1@uint64 xmm14_1 xmm29_1;
(* vpxorq %xmm27,%xmm22,%xmm22                     #! PC = 0x555555574aa3 *)
xor xmm22_0@uint64 xmm22_0 xmm27_0;
xor xmm22_1@uint64 xmm22_1 xmm27_1;
(* vpxorq %xmm26,%xmm19,%xmm19                     #! PC = 0x555555574aa9 *)
xor xmm19_0@uint64 xmm19_0 xmm26_0;
xor xmm19_1@uint64 xmm19_1 xmm26_1;
(* vprolq $0x3,%xmm14,%xmm14                       #! PC = 0x555555574aaf *)
rol xmm14_0 xmm14_0 0x3;
rol xmm14_1 xmm14_1 0x3;
(* vprorq $0x13,%xmm22,%xmm22                      #! PC = 0x555555574ab6 *)
ror xmm22_0 xmm22_0 0x13;
ror xmm22_1 xmm22_1 0x13;
(* vprorq $0x3,%xmm19,%xmm19                       #! PC = 0x555555574abd *)
ror xmm19_0 xmm19_0 0x3;
ror xmm19_1 xmm19_1 0x3;
(* vpbroadcastq %r11,%xmm23                        #! PC = 0x555555574ac4 *)
mov xmm23_0 r11;
mov xmm23_1 r11;
(* vpxorq %xmm31,%xmm23,%xmm23                     #! PC = 0x555555574aca *)
xor xmm23_0@uint64 xmm23_0 xmm31_0;
xor xmm23_1@uint64 xmm23_1 xmm31_1;
(* vmovdqa64 %xmm1,%xmm28                          #! PC = 0x555555574ad0 *)
mov xmm28_0 xmm1_0;
mov xmm28_1 xmm1_1;
(* vmovdqa64 %xmm8,%xmm31                          #! PC = 0x555555574ad6 *)
mov xmm31_0 xmm8_0;
mov xmm31_1 xmm8_1;
(* vpxorq %xmm27,%xmm20,%xmm20                     #! PC = 0x555555574adc *)
xor xmm20_0@uint64 xmm20_0 xmm27_0;
xor xmm20_1@uint64 xmm20_1 xmm27_1;
(* vpxorq %xmm26,%xmm4,%xmm4                       #! PC = 0x555555574ae2 *)
xor xmm4_0@uint64 xmm4_0 xmm26_0;
xor xmm4_1@uint64 xmm4_1 xmm26_1;
(* vprolq $0x1,%xmm20,%xmm20                       #! PC = 0x555555574ae8 *)
rol xmm20_0 xmm20_0 0x1;
rol xmm20_1 xmm20_1 0x1;
(* vprolq $0x6,%xmm4,%xmm4                         #! PC = 0x555555574aef *)
rol xmm4_0 xmm4_0 0x6;
rol xmm4_1 xmm4_1 0x6;
(* vpternlogq $0xd2,%xmm14,%xmm1,%xmm31            #! PC = 0x555555574af6 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm31_0, xmm1_0, xmm14_0, table);
call vpternlogq64 (xmm31_1, xmm1_1, xmm14_1, table);
(* vpternlogq $0xd2,%xmm22,%xmm14,%xmm28           #! PC = 0x555555574afd *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm28_0, xmm14_0, xmm22_0, table);
call vpternlogq64 (xmm28_1, xmm14_1, xmm22_1, table);
(* vpxorq %xmm29,%xmm11,%xmm11                     #! PC = 0x555555574b04 *)
xor xmm11_0@uint64 xmm11_0 xmm29_0;
xor xmm11_1@uint64 xmm11_1 xmm29_1;
(* vpternlogq $0xd2,%xmm19,%xmm22,%xmm14           #! PC = 0x555555574b0a *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm14_0, xmm22_0, xmm19_0, table);
call vpternlogq64 (xmm14_1, xmm22_1, xmm19_1, table);
(* vpxorq %xmm24,%xmm0,%xmm0                       #! PC = 0x555555574b11 *)
xor xmm0_0@uint64 xmm0_0 xmm24_0;
xor xmm0_1@uint64 xmm0_1 xmm24_1;
(* vpternlogq $0xd2,%xmm8,%xmm19,%xmm22            #! PC = 0x555555574b17 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm22_0, xmm19_0, xmm8_0, table);
call vpternlogq64 (xmm22_1, xmm19_1, xmm8_1, table);
(* vpxorq %xmm29,%xmm30,%xmm30                     #! PC = 0x555555574b1e *)
xor xmm30_0@uint64 xmm30_0 xmm29_0;
xor xmm30_1@uint64 xmm30_1 xmm29_1;
(* vpternlogq $0xd2,%xmm1,%xmm8,%xmm19             #! PC = 0x555555574b24 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm19_0, xmm8_0, xmm1_0, table);
call vpternlogq64 (xmm19_1, xmm8_1, xmm1_1, table);
(* vpxorq %xmm24,%xmm9,%xmm9                       #! PC = 0x555555574b2b *)
xor xmm9_0@uint64 xmm9_0 xmm24_0;
xor xmm9_1@uint64 xmm9_1 xmm24_1;
(* vpxorq %xmm25,%xmm21,%xmm1                      #! PC = 0x555555574b31 *)
xor xmm1_0@uint64 xmm21_0 xmm25_0;
xor xmm1_1@uint64 xmm21_1 xmm25_1;
(* vprorq $0x1c,%xmm30,%xmm30                      #! PC = 0x555555574b37 *)
ror xmm30_0 xmm30_0 0x1c;
ror xmm30_1 xmm30_1 0x1c;
(* vprolq $0x1b,%xmm9,%xmm9                        #! PC = 0x555555574b3e *)
rol xmm9_0 xmm9_0 0x1b;
rol xmm9_1 xmm9_1 0x1b;
(* vprolq $0x12,%xmm11,%xmm11                      #! PC = 0x555555574b45 *)
rol xmm11_0 xmm11_0 0x12;
rol xmm11_1 xmm11_1 0x12;
(* vprolq $0x19,%xmm1,%xmm1                        #! PC = 0x555555574b4c *)
rol xmm1_0 xmm1_0 0x19;
rol xmm1_1 xmm1_1 0x19;
(* vprolq $0x8,%xmm0,%xmm0                         #! PC = 0x555555574b53 *)
rol xmm0_0 xmm0_0 0x8;
rol xmm0_1 xmm0_1 0x8;
(* vpxorq %xmm27,%xmm10,%xmm10                     #! PC = 0x555555574b5a *)
xor xmm10_0@uint64 xmm10_0 xmm27_0;
xor xmm10_1@uint64 xmm10_1 xmm27_1;
(* vpxorq %xmm26,%xmm12,%xmm12                     #! PC = 0x555555574b60 *)
xor xmm12_0@uint64 xmm12_0 xmm26_0;
xor xmm12_1@uint64 xmm12_1 xmm26_1;
(* vpxorq %xmm25,%xmm6,%xmm6                       #! PC = 0x555555574b66 *)
xor xmm6_0@uint64 xmm6_0 xmm25_0;
xor xmm6_1@uint64 xmm6_1 xmm25_1;
(* vpxorq %xmm26,%xmm3,%xmm3                       #! PC = 0x555555574b6c *)
xor xmm3_0@uint64 xmm3_0 xmm26_0;
xor xmm3_1@uint64 xmm3_1 xmm26_1;
(* vpxorq %xmm25,%xmm15,%xmm15                     #! PC = 0x555555574b72 *)
xor xmm15_0@uint64 xmm15_0 xmm25_0;
xor xmm15_1@uint64 xmm15_1 xmm25_1;
(* vprorq $0x2,%xmm3,%xmm3                         #! PC = 0x555555574b78 *)
ror xmm3_0 xmm3_0 0x2;
ror xmm3_1 xmm3_1 0x2;
(* vprorq $0x9,%xmm15,%xmm25                       #! PC = 0x555555574b7f *)
ror xmm25_0 xmm15_0 0x9;
ror xmm25_1 xmm15_1 0x9;
(* vprolq $0xa,%xmm10,%xmm10                       #! PC = 0x555555574b86 *)
rol xmm10_0 xmm10_0 0xa;
rol xmm10_1 xmm10_1 0xa;
(* vprolq $0xf,%xmm12,%xmm12                       #! PC = 0x555555574b8d *)
rol xmm12_0 xmm12_0 0xf;
rol xmm12_1 xmm12_1 0xf;
(* vprorq $0x8,%xmm6,%xmm6                         #! PC = 0x555555574b94 *)
ror xmm6_0 xmm6_0 0x8;
ror xmm6_1 xmm6_1 0x8;
(* vpxorq %xmm29,%xmm5,%xmm5                       #! PC = 0x555555574b9b *)
xor xmm5_0@uint64 xmm5_0 xmm29_0;
xor xmm5_1@uint64 xmm5_1 xmm29_1;
(* vpxorq %xmm27,%xmm16,%xmm16                     #! PC = 0x555555574ba1 *)
xor xmm16_0@uint64 xmm16_0 xmm27_0;
xor xmm16_1@uint64 xmm16_1 xmm27_1;
(* vpxorq %xmm24,%xmm13,%xmm13                     #! PC = 0x555555574ba7 *)
xor xmm13_0@uint64 xmm13_0 xmm24_0;
xor xmm13_1@uint64 xmm13_1 xmm24_1;
(* vprorq $0x17,%xmm5,%xmm5                        #! PC = 0x555555574bad *)
ror xmm5_0 xmm5_0 0x17;
ror xmm5_1 xmm5_1 0x17;
(* vprolq $0x2,%xmm16,%xmm16                       #! PC = 0x555555574bb4 *)
rol xmm16_0 xmm16_0 0x2;
rol xmm16_1 xmm16_1 0x2;
(* vprorq $0x19,%xmm13,%xmm13                      #! PC = 0x555555574bbb *)
ror xmm13_0 xmm13_0 0x19;
ror xmm13_1 xmm13_1 0x19;
(* vmovdqa64 %xmm20,%xmm21                         #! PC = 0x555555574bc2 *)
mov xmm21_0 xmm20_0;
mov xmm21_1 xmm20_1;
(* vmovdqa %xmm4,%xmm8                             #! PC = 0x555555574bc8 *)
mov xmm8_0 xmm4_0;
mov xmm8_1 xmm4_1;
(* vpternlogq $0xd2,%xmm1,%xmm4,%xmm21             #! PC = 0x555555574bcc *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm21_0, xmm4_0, xmm1_0, table);
call vpternlogq64 (xmm21_1, xmm4_1, xmm1_1, table);
(* vpternlogq $0xd2,%xmm0,%xmm1,%xmm8              #! PC = 0x555555574bd3 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm8_0, xmm1_0, xmm0_0, table);
call vpternlogq64 (xmm8_1, xmm1_1, xmm0_1, table);
(* vpternlogq $0xd2,%xmm11,%xmm0,%xmm1             #! PC = 0x555555574bda *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm1_0, xmm0_0, xmm11_0, table);
call vpternlogq64 (xmm1_1, xmm0_1, xmm11_1, table);
(* vpternlogq $0xd2,%xmm20,%xmm11,%xmm0            #! PC = 0x555555574be1 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm0_0, xmm11_0, xmm20_0, table);
call vpternlogq64 (xmm0_1, xmm11_1, xmm20_1, table);
(* vpternlogq $0xd2,%xmm4,%xmm20,%xmm11            #! PC = 0x555555574be8 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm11_0, xmm20_0, xmm4_0, table);
call vpternlogq64 (xmm11_1, xmm20_1, xmm4_1, table);
(* vmovdqa %xmm9,%xmm4                             #! PC = 0x555555574bef *)
mov xmm4_0 xmm9_0;
mov xmm4_1 xmm9_1;
(* vmovdqa64 %xmm30,%xmm20                         #! PC = 0x555555574bf3 *)
mov xmm20_0 xmm30_0;
mov xmm20_1 xmm30_1;
(* vpternlogq $0xd2,%xmm10,%xmm30,%xmm4            #! PC = 0x555555574bf9 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm4_0, xmm30_0, xmm10_0, table);
call vpternlogq64 (xmm4_1, xmm30_1, xmm10_1, table);
(* vpternlogq $0xd2,%xmm12,%xmm10,%xmm20           #! PC = 0x555555574c00 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm20_0, xmm10_0, xmm12_0, table);
call vpternlogq64 (xmm20_1, xmm10_1, xmm12_1, table);
(* vmovdqa64 %xmm25,%xmm15                         #! PC = 0x555555574c07 *)
mov xmm15_0 xmm25_0;
mov xmm15_1 xmm25_1;
(* vpternlogq $0xd2,%xmm6,%xmm12,%xmm10            #! PC = 0x555555574c0d *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm10_0, xmm12_0, xmm6_0, table);
call vpternlogq64 (xmm10_1, xmm12_1, xmm6_1, table);
(* vpternlogq $0xd2,%xmm9,%xmm6,%xmm12             #! PC = 0x555555574c14 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm12_0, xmm6_0, xmm9_0, table);
call vpternlogq64 (xmm12_1, xmm6_1, xmm9_1, table);
(* vpternlogq $0xd2,%xmm30,%xmm9,%xmm6             #! PC = 0x555555574c1b *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm6_0, xmm9_0, xmm30_0, table);
call vpternlogq64 (xmm6_1, xmm9_1, xmm30_1, table);
(* vmovdqa %xmm3,%xmm9                             #! PC = 0x555555574c22 *)
mov xmm9_0 xmm3_0;
mov xmm9_1 xmm3_1;
(* vpternlogq $0xd2,%xmm13,%xmm25,%xmm9            #! PC = 0x555555574c26 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm9_0, xmm25_0, xmm13_0, table);
call vpternlogq64 (xmm9_1, xmm25_1, xmm13_1, table);
(* vpternlogq $0xd2,%xmm5,%xmm13,%xmm15            #! PC = 0x555555574c2d *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm15_0, xmm13_0, xmm5_0, table);
call vpternlogq64 (xmm15_1, xmm13_1, xmm5_1, table);
(* vpternlogq $0xd2,%xmm16,%xmm5,%xmm13            #! PC = 0x555555574c34 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm13_0, xmm5_0, xmm16_0, table);
call vpternlogq64 (xmm13_1, xmm5_1, xmm16_1, table);
(* vpternlogq $0xd2,%xmm3,%xmm16,%xmm5             #! PC = 0x555555574c3b *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm5_0, xmm16_0, xmm3_0, table);
call vpternlogq64 (xmm5_1, xmm16_1, xmm3_1, table);
(* vpternlogq $0xd2,%xmm25,%xmm3,%xmm16            #! PC = 0x555555574c42 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm16_0, xmm3_0, xmm25_0, table);
call vpternlogq64 (xmm16_1, xmm3_1, xmm25_1, table);
(* vmovdqa64 %xmm2,%xmm25                          #! PC = 0x555555574c49 *)
mov xmm25_0 xmm2_0;
mov xmm25_1 xmm2_1;
(* vpternlogq $0x96,%xmm1,%xmm14,%xmm25            #! PC = 0x555555574c4f *)
mov table 0x96@uint8;
call vpternlogq64 (xmm25_0, xmm14_0, xmm1_0, table);
call vpternlogq64 (xmm25_1, xmm14_1, xmm1_1, table);
(* vpternlogq $0x96,%xmm13,%xmm10,%xmm25           #! PC = 0x555555574c56 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm25_0, xmm10_0, xmm13_0, table);
call vpternlogq64 (xmm25_1, xmm10_1, xmm13_1, table);
(* vprolq $0x1,%xmm25,%xmm29                       #! PC = 0x555555574c5d *)
rol xmm29_0 xmm25_0 0x1;
rol xmm29_1 xmm25_1 0x1;
(* vmovdqa64 %xmm7,%xmm24                          #! PC = 0x555555574c64 *)
mov xmm24_0 xmm7_0;
mov xmm24_1 xmm7_1;
(* vpternlogq $0x96,%xmm0,%xmm22,%xmm24            #! PC = 0x555555574c6a *)
mov table 0x96@uint8;
call vpternlogq64 (xmm24_0, xmm22_0, xmm0_0, table);
call vpternlogq64 (xmm24_1, xmm22_1, xmm0_1, table);
(* vpternlogq $0x96,%xmm5,%xmm12,%xmm24            #! PC = 0x555555574c71 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm24_0, xmm12_0, xmm5_0, table);
call vpternlogq64 (xmm24_1, xmm12_1, xmm5_1, table);
(* vmovdqa64 %xmm17,%xmm3                          #! PC = 0x555555574c78 *)
mov xmm3_0 xmm17_0;
mov xmm3_1 xmm17_1;
(* vpternlogq $0x96,%xmm11,%xmm19,%xmm3            #! PC = 0x555555574c7e *)
mov table 0x96@uint8;
call vpternlogq64 (xmm3_0, xmm19_0, xmm11_0, table);
call vpternlogq64 (xmm3_1, xmm19_1, xmm11_1, table);
(* vmovdqa64 %xmm29,-0x78(%rsp)                    #! EA = L0x7fffffffda70; PC = 0x555555574c85 *)
mov L0x7fffffffda70 xmm29_0;
mov L0x7fffffffda78 xmm29_1;
(* vprolq $0x1,%xmm24,%xmm29                       #! PC = 0x555555574c90 *)
rol xmm29_0 xmm24_0 0x1;
rol xmm29_1 xmm24_1 0x1;
(* vpternlogq $0x96,%xmm16,%xmm6,%xmm3             #! PC = 0x555555574c97 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm3_0, xmm6_0, xmm16_0, table);
call vpternlogq64 (xmm3_1, xmm6_1, xmm16_1, table);
(* vmovdqa64 %xmm23,%xmm27                         #! PC = 0x555555574c9e *)
mov xmm27_0 xmm23_0;
mov xmm27_1 xmm23_1;
(* vpternlogq $0x96,%xmm21,%xmm31,%xmm27           #! PC = 0x555555574ca4 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm27_0, xmm31_0, xmm21_0, table);
call vpternlogq64 (xmm27_1, xmm31_1, xmm21_1, table);
(* vpternlogq $0x96,%xmm9,%xmm4,%xmm27             #! PC = 0x555555574cab *)
mov table 0x96@uint8;
call vpternlogq64 (xmm27_0, xmm4_0, xmm9_0, table);
call vpternlogq64 (xmm27_1, xmm4_1, xmm9_1, table);
(* vmovdqa64 %xmm18,%xmm26                         #! PC = 0x555555574cb2 *)
mov xmm26_0 xmm18_0;
mov xmm26_1 xmm18_1;
(* vmovdqa64 %xmm29,-0x68(%rsp)                    #! EA = L0x7fffffffda80; PC = 0x555555574cb8 *)
mov L0x7fffffffda80 xmm29_0;
mov L0x7fffffffda88 xmm29_1;
(* vprolq $0x1,%xmm3,%xmm29                        #! PC = 0x555555574cc3 *)
rol xmm29_0 xmm3_0 0x1;
rol xmm29_1 xmm3_1 0x1;
(* vpternlogq $0x96,%xmm8,%xmm28,%xmm26            #! PC = 0x555555574cca *)
mov table 0x96@uint8;
call vpternlogq64 (xmm26_0, xmm28_0, xmm8_0, table);
call vpternlogq64 (xmm26_1, xmm28_1, xmm8_1, table);
(* vpternlogq $0x96,%xmm15,%xmm20,%xmm26           #! PC = 0x555555574cd1 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm26_0, xmm20_0, xmm15_0, table);
call vpternlogq64 (xmm26_1, xmm20_1, xmm15_1, table);
(* vprolq $0x1,%xmm26,%xmm30                       #! PC = 0x555555574cd8 *)
rol xmm30_0 xmm26_0 0x1;
rol xmm30_1 xmm26_1 0x1;
(* vpxorq -0x68(%rsp),%xmm26,%xmm26                #! EA = L0x7fffffffda80; Value = 0x394f078ba3e203c8; PC = 0x555555574cdf *)
xor xmm26_0@uint64 xmm26_0 L0x7fffffffda80;
xor xmm26_1@uint64 xmm26_1 L0x7fffffffda88;
(* mov    $0x800a,%ecx                             #! PC = 0x555555574cea *)
mov rcx 0x800a@uint64;
(* vmovdqa64 %xmm29,-0x58(%rsp)                    #! EA = L0x7fffffffda90; PC = 0x555555574cef *)
mov L0x7fffffffda90 xmm29_0;
mov L0x7fffffffda98 xmm29_1;
(* vprolq $0x1,%xmm27,%xmm29                       #! PC = 0x555555574cfa *)
rol xmm29_0 xmm27_0 0x1;
rol xmm29_1 xmm27_1 0x1;
(* vpxorq -0x78(%rsp),%xmm27,%xmm27                #! EA = L0x7fffffffda70; Value = 0x66609c419218e5ff; PC = 0x555555574d01 *)
xor xmm27_0@uint64 xmm27_0 L0x7fffffffda70;
xor xmm27_1@uint64 xmm27_1 L0x7fffffffda78;
(* vpxorq -0x58(%rsp),%xmm25,%xmm25                #! EA = L0x7fffffffda90; Value = 0x9e9bff14ff16bddc; PC = 0x555555574d0c *)
xor xmm25_0@uint64 xmm25_0 L0x7fffffffda90;
xor xmm25_1@uint64 xmm25_1 L0x7fffffffda98;
(* vpxorq %xmm27,%xmm28,%xmm28                     #! PC = 0x555555574d17 *)
xor xmm28_0@uint64 xmm28_0 xmm27_0;
xor xmm28_1@uint64 xmm28_1 xmm27_1;
(* vprorq $0x14,%xmm28,%xmm28                      #! PC = 0x555555574d1d *)
ror xmm28_0 xmm28_0 0x14;
ror xmm28_1 xmm28_1 0x14;
(* vpxorq %xmm26,%xmm1,%xmm1                       #! PC = 0x555555574d24 *)
xor xmm1_0@uint64 xmm1_0 xmm26_0;
xor xmm1_1@uint64 xmm1_1 xmm26_1;
(* vpxorq %xmm29,%xmm24,%xmm24                     #! PC = 0x555555574d2a *)
xor xmm24_0@uint64 xmm24_0 xmm29_0;
xor xmm24_1@uint64 xmm24_1 xmm29_1;
(* vpxorq %xmm25,%xmm12,%xmm12                     #! PC = 0x555555574d30 *)
xor xmm12_0@uint64 xmm12_0 xmm25_0;
xor xmm12_1@uint64 xmm12_1 xmm25_1;
(* vpxorq %xmm24,%xmm16,%xmm16                     #! PC = 0x555555574d36 *)
xor xmm16_0@uint64 xmm16_0 xmm24_0;
xor xmm16_1@uint64 xmm16_1 xmm24_1;
(* vpxorq %xmm30,%xmm3,%xmm3                       #! PC = 0x555555574d3c *)
xor xmm3_0@uint64 xmm3_0 xmm30_0;
xor xmm3_1@uint64 xmm3_1 xmm30_1;
(* vprorq $0x15,%xmm1,%xmm1                        #! PC = 0x555555574d42 *)
ror xmm1_0 xmm1_0 0x15;
ror xmm1_1 xmm1_1 0x15;
(* vprolq $0x15,%xmm12,%xmm12                      #! PC = 0x555555574d49 *)
rol xmm12_0 xmm12_0 0x15;
rol xmm12_1 xmm12_1 0x15;
(* vprolq $0xe,%xmm16,%xmm16                       #! PC = 0x555555574d50 *)
rol xmm16_0 xmm16_0 0xe;
rol xmm16_1 xmm16_1 0xe;
(* vpxorq %xmm25,%xmm7,%xmm7                       #! PC = 0x555555574d57 *)
xor xmm7_0@uint64 xmm7_0 xmm25_0;
xor xmm7_1@uint64 xmm7_1 xmm25_1;
(* vpxorq %xmm24,%xmm19,%xmm19                     #! PC = 0x555555574d5d *)
xor xmm19_0@uint64 xmm19_0 xmm24_0;
xor xmm19_1@uint64 xmm19_1 xmm24_1;
(* vprolq $0x1c,%xmm7,%xmm7                        #! PC = 0x555555574d63 *)
rol xmm7_0 xmm7_0 0x1c;
rol xmm7_1 xmm7_1 0x1c;
(* vprolq $0x14,%xmm19,%xmm19                      #! PC = 0x555555574d6a *)
rol xmm19_0 xmm19_0 0x14;
rol xmm19_1 xmm19_1 0x14;
(* vpxorq %xmm3,%xmm21,%xmm21                      #! PC = 0x555555574d71 *)
xor xmm21_0@uint64 xmm21_0 xmm3_0;
xor xmm21_1@uint64 xmm21_1 xmm3_1;
(* vpxorq %xmm27,%xmm20,%xmm20                     #! PC = 0x555555574d77 *)
xor xmm20_0@uint64 xmm20_0 xmm27_0;
xor xmm20_1@uint64 xmm20_1 xmm27_1;
(* vpxorq %xmm26,%xmm13,%xmm13                     #! PC = 0x555555574d7d *)
xor xmm13_0@uint64 xmm13_0 xmm26_0;
xor xmm13_1@uint64 xmm13_1 xmm26_1;
(* vpxorq %xmm27,%xmm18,%xmm18                     #! PC = 0x555555574d83 *)
xor xmm18_0@uint64 xmm18_0 xmm27_0;
xor xmm18_1@uint64 xmm18_1 xmm27_1;
(* vpxorq %xmm26,%xmm14,%xmm14                     #! PC = 0x555555574d89 *)
xor xmm14_0@uint64 xmm14_0 xmm26_0;
xor xmm14_1@uint64 xmm14_1 xmm26_1;
(* vprolq $0x1,%xmm18,%xmm18                       #! PC = 0x555555574d8f *)
rol xmm18_0 xmm18_0 0x1;
rol xmm18_1 xmm18_1 0x1;
(* vprolq $0x6,%xmm14,%xmm14                       #! PC = 0x555555574d96 *)
rol xmm14_0 xmm14_0 0x6;
rol xmm14_1 xmm14_1 0x6;
(* vprolq $0x3,%xmm21,%xmm21                       #! PC = 0x555555574d9d *)
rol xmm21_0 xmm21_0 0x3;
rol xmm21_1 xmm21_1 0x3;
(* vprorq $0x13,%xmm20,%xmm20                      #! PC = 0x555555574da4 *)
ror xmm20_0 xmm20_0 0x13;
ror xmm20_1 xmm20_1 0x13;
(* vprorq $0x3,%xmm13,%xmm13                       #! PC = 0x555555574dab *)
ror xmm13_0 xmm13_0 0x3;
ror xmm13_1 xmm13_1 0x3;
(* vpxor  %xmm3,%xmm9,%xmm9                        #! PC = 0x555555574db2 *)
xor xmm9_0@uint64 xmm9_0 xmm3_0;
xor xmm9_1@uint64 xmm9_1 xmm3_1;
(* vpxorq %xmm25,%xmm0,%xmm0                       #! PC = 0x555555574db6 *)
xor xmm0_0@uint64 xmm0_0 xmm25_0;
xor xmm0_1@uint64 xmm0_1 xmm25_1;
(* vpxorq %xmm24,%xmm6,%xmm6                       #! PC = 0x555555574dbc *)
xor xmm6_0@uint64 xmm6_0 xmm24_0;
xor xmm6_1@uint64 xmm6_1 xmm24_1;
(* vpxorq %xmm3,%xmm31,%xmm31                      #! PC = 0x555555574dc2 *)
xor xmm31_0@uint64 xmm31_0 xmm3_0;
xor xmm31_1@uint64 xmm31_1 xmm3_1;
(* vpxorq %xmm24,%xmm17,%xmm17                     #! PC = 0x555555574dc8 *)
xor xmm17_0@uint64 xmm17_0 xmm24_0;
xor xmm17_1@uint64 xmm17_1 xmm24_1;
(* vprorq $0x1c,%xmm31,%xmm31                      #! PC = 0x555555574dce *)
ror xmm31_0 xmm31_0 0x1c;
ror xmm31_1 xmm31_1 0x1c;
(* vprolq $0x1b,%xmm17,%xmm17                      #! PC = 0x555555574dd5 *)
rol xmm17_0 xmm17_0 0x1b;
rol xmm17_1 xmm17_1 0x1b;
(* vprolq $0x12,%xmm9,%xmm9                        #! PC = 0x555555574ddc *)
rol xmm9_0 xmm9_0 0x12;
rol xmm9_1 xmm9_1 0x12;
(* vprolq $0x19,%xmm0,%xmm0                        #! PC = 0x555555574de3 *)
rol xmm0_0 xmm0_0 0x19;
rol xmm0_1 xmm0_1 0x19;
(* vprolq $0x8,%xmm6,%xmm6                         #! PC = 0x555555574dea *)
rol xmm6_0 xmm6_0 0x8;
rol xmm6_1 xmm6_1 0x8;
(* vpxorq %xmm27,%xmm8,%xmm8                       #! PC = 0x555555574df1 *)
xor xmm8_0@uint64 xmm8_0 xmm27_0;
xor xmm8_1@uint64 xmm8_1 xmm27_1;
(* vpxorq %xmm26,%xmm10,%xmm10                     #! PC = 0x555555574df7 *)
xor xmm10_0@uint64 xmm10_0 xmm26_0;
xor xmm10_1@uint64 xmm10_1 xmm26_1;
(* vpxorq %xmm25,%xmm5,%xmm5                       #! PC = 0x555555574dfd *)
xor xmm5_0@uint64 xmm5_0 xmm25_0;
xor xmm5_1@uint64 xmm5_1 xmm25_1;
(* vpxorq %xmm26,%xmm2,%xmm2                       #! PC = 0x555555574e03 *)
xor xmm2_0@uint64 xmm2_0 xmm26_0;
xor xmm2_1@uint64 xmm2_1 xmm26_1;
(* vpxorq %xmm25,%xmm22,%xmm22                     #! PC = 0x555555574e09 *)
xor xmm22_0@uint64 xmm22_0 xmm25_0;
xor xmm22_1@uint64 xmm22_1 xmm25_1;
(* vpxorq %xmm3,%xmm23,%xmm23                      #! PC = 0x555555574e0f *)
xor xmm23_0@uint64 xmm23_0 xmm3_0;
xor xmm23_1@uint64 xmm23_1 xmm3_1;
(* vprorq $0x2,%xmm2,%xmm2                         #! PC = 0x555555574e15 *)
ror xmm2_0 xmm2_0 0x2;
ror xmm2_1 xmm2_1 0x2;
(* vprorq $0x9,%xmm22,%xmm22                       #! PC = 0x555555574e1c *)
ror xmm22_0 xmm22_0 0x9;
ror xmm22_1 xmm22_1 0x9;
(* vprolq $0xa,%xmm8,%xmm8                         #! PC = 0x555555574e23 *)
rol xmm8_0 xmm8_0 0xa;
rol xmm8_1 xmm8_1 0xa;
(* vprolq $0xf,%xmm10,%xmm10                       #! PC = 0x555555574e2a *)
rol xmm10_0 xmm10_0 0xf;
rol xmm10_1 xmm10_1 0xf;
(* vprorq $0x8,%xmm5,%xmm5                         #! PC = 0x555555574e31 *)
ror xmm5_0 xmm5_0 0x8;
ror xmm5_1 xmm5_1 0x8;
(* vpxor  %xmm3,%xmm4,%xmm3                        #! PC = 0x555555574e38 *)
xor xmm3_0@uint64 xmm4_0 xmm3_0;
xor xmm3_1@uint64 xmm4_1 xmm3_1;
(* vpxorq %xmm27,%xmm15,%xmm15                     #! PC = 0x555555574e3c *)
xor xmm15_0@uint64 xmm15_0 xmm27_0;
xor xmm15_1@uint64 xmm15_1 xmm27_1;
(* vpxorq %xmm24,%xmm11,%xmm11                     #! PC = 0x555555574e42 *)
xor xmm11_0@uint64 xmm11_0 xmm24_0;
xor xmm11_1@uint64 xmm11_1 xmm24_1;
(* vprorq $0x17,%xmm3,%xmm3                        #! PC = 0x555555574e48 *)
ror xmm3_0 xmm3_0 0x17;
ror xmm3_1 xmm3_1 0x17;
(* vprolq $0x2,%xmm15,%xmm15                       #! PC = 0x555555574e4f *)
rol xmm15_0 xmm15_0 0x2;
rol xmm15_1 xmm15_1 0x2;
(* vprorq $0x19,%xmm11,%xmm11                      #! PC = 0x555555574e56 *)
ror xmm11_0 xmm11_0 0x19;
ror xmm11_1 xmm11_1 0x19;
(* vmovdqa64 %xmm23,%xmm30                         #! PC = 0x555555574e5d *)
mov xmm30_0 xmm23_0;
mov xmm30_1 xmm23_1;
(* vmovdqa64 %xmm28,%xmm29                         #! PC = 0x555555574e63 *)
mov xmm29_0 xmm28_0;
mov xmm29_1 xmm28_1;
(* vpternlogq $0xd2,%xmm1,%xmm28,%xmm30            #! PC = 0x555555574e69 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm30_0, xmm28_0, xmm1_0, table);
call vpternlogq64 (xmm30_1, xmm28_1, xmm1_1, table);
(* vpternlogq $0xd2,%xmm12,%xmm1,%xmm29            #! PC = 0x555555574e70 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm29_0, xmm1_0, xmm12_0, table);
call vpternlogq64 (xmm29_1, xmm1_1, xmm12_1, table);
(* vpternlogq $0xd2,%xmm16,%xmm12,%xmm1            #! PC = 0x555555574e77 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm1_0, xmm12_0, xmm16_0, table);
call vpternlogq64 (xmm1_1, xmm12_1, xmm16_1, table);
(* vpternlogq $0xd2,%xmm23,%xmm16,%xmm12           #! PC = 0x555555574e7e *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm12_0, xmm16_0, xmm23_0, table);
call vpternlogq64 (xmm12_1, xmm16_1, xmm23_1, table);
(* vpternlogq $0xd2,%xmm28,%xmm23,%xmm16           #! PC = 0x555555574e85 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm16_0, xmm23_0, xmm28_0, table);
call vpternlogq64 (xmm16_1, xmm23_1, xmm28_1, table);
(* vpbroadcastq %rbx,%xmm23                        #! PC = 0x555555574e8c *)
mov xmm23_0 rbx;
mov xmm23_1 rbx;
(* vpxorq %xmm30,%xmm23,%xmm23                     #! PC = 0x555555574e92 *)
xor xmm23_0@uint64 xmm23_0 xmm30_0;
xor xmm23_1@uint64 xmm23_1 xmm30_1;
(* vmovdqa64 %xmm7,%xmm28                          #! PC = 0x555555574e98 *)
mov xmm28_0 xmm7_0;
mov xmm28_1 xmm7_1;
(* vmovdqa64 %xmm19,%xmm30                         #! PC = 0x555555574e9e *)
mov xmm30_0 xmm19_0;
mov xmm30_1 xmm19_1;
(* vpternlogq $0xd2,%xmm21,%xmm19,%xmm28           #! PC = 0x555555574ea4 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm28_0, xmm19_0, xmm21_0, table);
call vpternlogq64 (xmm28_1, xmm19_1, xmm21_1, table);
(* vpternlogq $0xd2,%xmm20,%xmm21,%xmm30           #! PC = 0x555555574eab *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm30_0, xmm21_0, xmm20_0, table);
call vpternlogq64 (xmm30_1, xmm21_1, xmm20_1, table);
(* vpternlogq $0xd2,%xmm13,%xmm20,%xmm21           #! PC = 0x555555574eb2 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm21_0, xmm20_0, xmm13_0, table);
call vpternlogq64 (xmm21_1, xmm20_1, xmm13_1, table);
(* vpternlogq $0xd2,%xmm7,%xmm13,%xmm20            #! PC = 0x555555574eb9 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm20_0, xmm13_0, xmm7_0, table);
call vpternlogq64 (xmm20_1, xmm13_1, xmm7_1, table);
(* vpternlogq $0xd2,%xmm19,%xmm7,%xmm13            #! PC = 0x555555574ec0 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm13_0, xmm7_0, xmm19_0, table);
call vpternlogq64 (xmm13_1, xmm7_1, xmm19_1, table);
(* vmovdqa64 %xmm18,%xmm19                         #! PC = 0x555555574ec7 *)
mov xmm19_0 xmm18_0;
mov xmm19_1 xmm18_1;
(* vmovdqa %xmm14,%xmm7                            #! PC = 0x555555574ecd *)
mov xmm7_0 xmm14_0;
mov xmm7_1 xmm14_1;
(* vpternlogq $0xd2,%xmm0,%xmm14,%xmm19            #! PC = 0x555555574ed1 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm19_0, xmm14_0, xmm0_0, table);
call vpternlogq64 (xmm19_1, xmm14_1, xmm0_1, table);
(* vpternlogq $0xd2,%xmm6,%xmm0,%xmm7              #! PC = 0x555555574ed8 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm7_0, xmm0_0, xmm6_0, table);
call vpternlogq64 (xmm7_1, xmm0_1, xmm6_1, table);
(* vpternlogq $0xd2,%xmm9,%xmm6,%xmm0              #! PC = 0x555555574edf *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm0_0, xmm6_0, xmm9_0, table);
call vpternlogq64 (xmm0_1, xmm6_1, xmm9_1, table);
(* vpternlogq $0xd2,%xmm18,%xmm9,%xmm6             #! PC = 0x555555574ee6 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm6_0, xmm9_0, xmm18_0, table);
call vpternlogq64 (xmm6_1, xmm9_1, xmm18_1, table);
(* vpternlogq $0xd2,%xmm14,%xmm18,%xmm9            #! PC = 0x555555574eed *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm9_0, xmm18_0, xmm14_0, table);
call vpternlogq64 (xmm9_1, xmm18_1, xmm14_1, table);
(* vmovdqa64 %xmm17,%xmm14                         #! PC = 0x555555574ef4 *)
mov xmm14_0 xmm17_0;
mov xmm14_1 xmm17_1;
(* vmovdqa64 %xmm31,%xmm18                         #! PC = 0x555555574efa *)
mov xmm18_0 xmm31_0;
mov xmm18_1 xmm31_1;
(* vpternlogq $0xd2,%xmm8,%xmm31,%xmm14            #! PC = 0x555555574f00 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm14_0, xmm31_0, xmm8_0, table);
call vpternlogq64 (xmm14_1, xmm31_1, xmm8_1, table);
(* vpternlogq $0xd2,%xmm10,%xmm8,%xmm18            #! PC = 0x555555574f07 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm18_0, xmm8_0, xmm10_0, table);
call vpternlogq64 (xmm18_1, xmm8_1, xmm10_1, table);
(* vmovdqa64 %xmm22,%xmm24                         #! PC = 0x555555574f0e *)
mov xmm24_0 xmm22_0;
mov xmm24_1 xmm22_1;
(* vpternlogq $0xd2,%xmm5,%xmm10,%xmm8             #! PC = 0x555555574f14 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm8_0, xmm10_0, xmm5_0, table);
call vpternlogq64 (xmm8_1, xmm10_1, xmm5_1, table);
(* vpternlogq $0xd2,%xmm17,%xmm5,%xmm10            #! PC = 0x555555574f1b *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm10_0, xmm5_0, xmm17_0, table);
call vpternlogq64 (xmm10_1, xmm5_1, xmm17_1, table);
(* vpternlogq $0xd2,%xmm31,%xmm17,%xmm5            #! PC = 0x555555574f22 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm5_0, xmm17_0, xmm31_0, table);
call vpternlogq64 (xmm5_1, xmm17_1, xmm31_1, table);
(* vmovdqa64 %xmm2,%xmm17                          #! PC = 0x555555574f29 *)
mov xmm17_0 xmm2_0;
mov xmm17_1 xmm2_1;
(* vpternlogq $0xd2,%xmm11,%xmm22,%xmm17           #! PC = 0x555555574f2f *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm17_0, xmm22_0, xmm11_0, table);
call vpternlogq64 (xmm17_1, xmm22_1, xmm11_1, table);
(* vpternlogq $0xd2,%xmm3,%xmm11,%xmm24            #! PC = 0x555555574f36 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm24_0, xmm11_0, xmm3_0, table);
call vpternlogq64 (xmm24_1, xmm11_1, xmm3_1, table);
(* vpternlogq $0xd2,%xmm15,%xmm3,%xmm11            #! PC = 0x555555574f3d *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm11_0, xmm3_0, xmm15_0, table);
call vpternlogq64 (xmm11_1, xmm3_1, xmm15_1, table);
(* vpternlogq $0xd2,%xmm2,%xmm15,%xmm3             #! PC = 0x555555574f44 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm3_0, xmm15_0, xmm2_0, table);
call vpternlogq64 (xmm3_1, xmm15_1, xmm2_1, table);
(* vpternlogq $0xd2,%xmm22,%xmm2,%xmm15            #! PC = 0x555555574f4b *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm15_0, xmm2_0, xmm22_0, table);
call vpternlogq64 (xmm15_1, xmm2_1, xmm22_1, table);
(* vmovdqa64 %xmm11,%xmm22                         #! PC = 0x555555574f52 *)
mov xmm22_0 xmm11_0;
mov xmm22_1 xmm11_1;
(* vpternlogq $0x96,%xmm1,%xmm0,%xmm22             #! PC = 0x555555574f58 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm22_0, xmm0_0, xmm1_0, table);
call vpternlogq64 (xmm22_1, xmm0_1, xmm1_1, table);
(* vpternlogq $0x96,%xmm21,%xmm8,%xmm22            #! PC = 0x555555574f5f *)
mov table 0x96@uint8;
call vpternlogq64 (xmm22_0, xmm8_0, xmm21_0, table);
call vpternlogq64 (xmm22_1, xmm8_1, xmm21_1, table);
(* vprolq $0x1,%xmm22,%xmm2                        #! PC = 0x555555574f66 *)
rol xmm2_0 xmm22_0 0x1;
rol xmm2_1 xmm22_1 0x1;
(* vmovdqa64 %xmm20,%xmm4                          #! PC = 0x555555574f6d *)
mov xmm4_0 xmm20_0;
mov xmm4_1 xmm20_1;
(* vpternlogq $0x96,%xmm6,%xmm3,%xmm4              #! PC = 0x555555574f73 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm4_0, xmm3_0, xmm6_0, table);
call vpternlogq64 (xmm4_1, xmm3_1, xmm6_1, table);
(* vpternlogq $0x96,%xmm10,%xmm12,%xmm4            #! PC = 0x555555574f7a *)
mov table 0x96@uint8;
call vpternlogq64 (xmm4_0, xmm12_0, xmm10_0, table);
call vpternlogq64 (xmm4_1, xmm12_1, xmm10_1, table);
(* vmovdqa64 %xmm5,%xmm27                          #! PC = 0x555555574f81 *)
mov xmm27_0 xmm5_0;
mov xmm27_1 xmm5_1;
(* vpternlogq $0x96,%xmm15,%xmm13,%xmm27           #! PC = 0x555555574f87 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm27_0, xmm13_0, xmm15_0, table);
call vpternlogq64 (xmm27_1, xmm13_1, xmm15_1, table);
(* vmovdqa %xmm2,-0x78(%rsp)                       #! EA = L0x7fffffffda70; PC = 0x555555574f8e *)
mov L0x7fffffffda70 xmm2_0;
mov L0x7fffffffda78 xmm2_1;
(* vprolq $0x1,%xmm4,%xmm2                         #! PC = 0x555555574f94 *)
rol xmm2_0 xmm4_0 0x1;
rol xmm2_1 xmm4_1 0x1;
(* vpternlogq $0x96,%xmm16,%xmm9,%xmm27            #! PC = 0x555555574f9b *)
mov table 0x96@uint8;
call vpternlogq64 (xmm27_0, xmm9_0, xmm16_0, table);
call vpternlogq64 (xmm27_1, xmm9_1, xmm16_1, table);
(* vmovdqa64 %xmm23,%xmm26                         #! PC = 0x555555574fa2 *)
mov xmm26_0 xmm23_0;
mov xmm26_1 xmm23_1;
(* vpternlogq $0x96,%xmm28,%xmm14,%xmm26           #! PC = 0x555555574fa8 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm26_0, xmm14_0, xmm28_0, table);
call vpternlogq64 (xmm26_1, xmm14_1, xmm28_1, table);
(* vpternlogq $0x96,%xmm19,%xmm17,%xmm26           #! PC = 0x555555574faf *)
mov table 0x96@uint8;
call vpternlogq64 (xmm26_0, xmm17_0, xmm19_0, table);
call vpternlogq64 (xmm26_1, xmm17_1, xmm19_1, table);
(* vmovdqa64 %xmm7,%xmm25                          #! PC = 0x555555574fb6 *)
mov xmm25_0 xmm7_0;
mov xmm25_1 xmm7_1;
(* vmovdqa %xmm2,-0x68(%rsp)                       #! EA = L0x7fffffffda80; PC = 0x555555574fbc *)
mov L0x7fffffffda80 xmm2_0;
mov L0x7fffffffda88 xmm2_1;
(* vprolq $0x1,%xmm27,%xmm2                        #! PC = 0x555555574fc2 *)
rol xmm2_0 xmm27_0 0x1;
rol xmm2_1 xmm27_1 0x1;
(* vpternlogq $0x96,%xmm18,%xmm29,%xmm25           #! PC = 0x555555574fc9 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm25_0, xmm29_0, xmm18_0, table);
call vpternlogq64 (xmm25_1, xmm29_1, xmm18_1, table);
(* vpternlogq $0x96,%xmm24,%xmm30,%xmm25           #! PC = 0x555555574fd0 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm25_0, xmm30_0, xmm24_0, table);
call vpternlogq64 (xmm25_1, xmm30_1, xmm24_1, table);
(* vprolq $0x1,%xmm25,%xmm31                       #! PC = 0x555555574fd7 *)
rol xmm31_0 xmm25_0 0x1;
rol xmm31_1 xmm25_1 0x1;
(* vpxorq -0x68(%rsp),%xmm25,%xmm25                #! EA = L0x7fffffffda80; Value = 0xd1b6ea8d3bc8e874; PC = 0x555555574fde *)
xor xmm25_0@uint64 xmm25_0 L0x7fffffffda80;
xor xmm25_1@uint64 xmm25_1 L0x7fffffffda88;
(* movabs $0x800000008000000a,%r11                 #! PC = 0x555555574fe9 *)
mov r11 0x800000008000000a@uint64;
(* vmovdqa %xmm2,-0x58(%rsp)                       #! EA = L0x7fffffffda90; PC = 0x555555574ff3 *)
mov L0x7fffffffda90 xmm2_0;
mov L0x7fffffffda98 xmm2_1;
(* vprolq $0x1,%xmm26,%xmm2                        #! PC = 0x555555574ff9 *)
rol xmm2_0 xmm26_0 0x1;
rol xmm2_1 xmm26_1 0x1;
(* vpxorq -0x78(%rsp),%xmm26,%xmm26                #! EA = L0x7fffffffda70; Value = 0xf03c23484728b27a; PC = 0x555555575000 *)
xor xmm26_0@uint64 xmm26_0 L0x7fffffffda70;
xor xmm26_1@uint64 xmm26_1 L0x7fffffffda78;
(* vpxorq -0x58(%rsp),%xmm22,%xmm22                #! EA = L0x7fffffffda90; Value = 0xd767ec9c98cfa64f; PC = 0x55555557500b *)
xor xmm22_0@uint64 xmm22_0 L0x7fffffffda90;
xor xmm22_1@uint64 xmm22_1 L0x7fffffffda98;
(* vpxorq %xmm26,%xmm30,%xmm30                     #! PC = 0x555555575016 *)
xor xmm30_0@uint64 xmm30_0 xmm26_0;
xor xmm30_1@uint64 xmm30_1 xmm26_1;
(* vprorq $0x14,%xmm30,%xmm30                      #! PC = 0x55555557501c *)
ror xmm30_0 xmm30_0 0x14;
ror xmm30_1 xmm30_1 0x14;
(* vpxorq %xmm25,%xmm0,%xmm0                       #! PC = 0x555555575023 *)
xor xmm0_0@uint64 xmm0_0 xmm25_0;
xor xmm0_1@uint64 xmm0_1 xmm25_1;
(* vpxor  %xmm2,%xmm4,%xmm4                        #! PC = 0x555555575029 *)
xor xmm4_0@uint64 xmm4_0 xmm2_0;
xor xmm4_1@uint64 xmm4_1 xmm2_1;
(* vpxor  %xmm4,%xmm15,%xmm2                       #! PC = 0x55555557502d *)
xor xmm2_0@uint64 xmm15_0 xmm4_0;
xor xmm2_1@uint64 xmm15_1 xmm4_1;
(* vpxorq %xmm22,%xmm10,%xmm10                     #! PC = 0x555555575031 *)
xor xmm10_0@uint64 xmm10_0 xmm22_0;
xor xmm10_1@uint64 xmm10_1 xmm22_1;
(* vpxorq %xmm31,%xmm27,%xmm27                     #! PC = 0x555555575037 *)
xor xmm27_0@uint64 xmm27_0 xmm31_0;
xor xmm27_1@uint64 xmm27_1 xmm31_1;
(* vprorq $0x15,%xmm0,%xmm0                        #! PC = 0x55555557503d *)
ror xmm0_0 xmm0_0 0x15;
ror xmm0_1 xmm0_1 0x15;
(* vprolq $0x15,%xmm10,%xmm10                      #! PC = 0x555555575044 *)
rol xmm10_0 xmm10_0 0x15;
rol xmm10_1 xmm10_1 0x15;
(* vprolq $0xe,%xmm2,%xmm2                         #! PC = 0x55555557504b *)
rol xmm2_0 xmm2_0 0xe;
rol xmm2_1 xmm2_1 0xe;
(* vpxorq %xmm22,%xmm12,%xmm12                     #! PC = 0x555555575052 *)
xor xmm12_0@uint64 xmm12_0 xmm22_0;
xor xmm12_1@uint64 xmm12_1 xmm22_1;
(* vpxor  %xmm4,%xmm13,%xmm13                      #! PC = 0x555555575058 *)
xor xmm13_0@uint64 xmm13_0 xmm4_0;
xor xmm13_1@uint64 xmm13_1 xmm4_1;
(* vprolq $0x1c,%xmm12,%xmm12                      #! PC = 0x55555557505c *)
rol xmm12_0 xmm12_0 0x1c;
rol xmm12_1 xmm12_1 0x1c;
(* vprolq $0x14,%xmm13,%xmm13                      #! PC = 0x555555575063 *)
rol xmm13_0 xmm13_0 0x14;
rol xmm13_1 xmm13_1 0x14;
(* vpxorq %xmm27,%xmm19,%xmm19                     #! PC = 0x55555557506a *)
xor xmm19_0@uint64 xmm19_0 xmm27_0;
xor xmm19_1@uint64 xmm19_1 xmm27_1;
(* vpxorq %xmm26,%xmm18,%xmm18                     #! PC = 0x555555575070 *)
xor xmm18_0@uint64 xmm18_0 xmm26_0;
xor xmm18_1@uint64 xmm18_1 xmm26_1;
(* vpxorq %xmm25,%xmm11,%xmm11                     #! PC = 0x555555575076 *)
xor xmm11_0@uint64 xmm11_0 xmm25_0;
xor xmm11_1@uint64 xmm11_1 xmm25_1;
(* vpxorq %xmm26,%xmm29,%xmm29                     #! PC = 0x55555557507c *)
xor xmm29_0@uint64 xmm29_0 xmm26_0;
xor xmm29_1@uint64 xmm29_1 xmm26_1;
(* vpxorq %xmm25,%xmm21,%xmm21                     #! PC = 0x555555575082 *)
xor xmm21_0@uint64 xmm21_0 xmm25_0;
xor xmm21_1@uint64 xmm21_1 xmm25_1;
(* vprolq $0x1,%xmm29,%xmm29                       #! PC = 0x555555575088 *)
rol xmm29_0 xmm29_0 0x1;
rol xmm29_1 xmm29_1 0x1;
(* vprolq $0x6,%xmm21,%xmm21                       #! PC = 0x55555557508f *)
rol xmm21_0 xmm21_0 0x6;
rol xmm21_1 xmm21_1 0x6;
(* vprolq $0x3,%xmm19,%xmm19                       #! PC = 0x555555575096 *)
rol xmm19_0 xmm19_0 0x3;
rol xmm19_1 xmm19_1 0x3;
(* vprorq $0x13,%xmm18,%xmm18                      #! PC = 0x55555557509d *)
ror xmm18_0 xmm18_0 0x13;
ror xmm18_1 xmm18_1 0x13;
(* vprorq $0x3,%xmm11,%xmm11                       #! PC = 0x5555555750a4 *)
ror xmm11_0 xmm11_0 0x3;
ror xmm11_1 xmm11_1 0x3;
(* vpxorq %xmm27,%xmm17,%xmm17                     #! PC = 0x5555555750ab *)
xor xmm17_0@uint64 xmm17_0 xmm27_0;
xor xmm17_1@uint64 xmm17_1 xmm27_1;
(* vpxorq %xmm22,%xmm6,%xmm6                       #! PC = 0x5555555750b1 *)
xor xmm6_0@uint64 xmm6_0 xmm22_0;
xor xmm6_1@uint64 xmm6_1 xmm22_1;
(* vpxor  %xmm4,%xmm5,%xmm5                        #! PC = 0x5555555750b7 *)
xor xmm5_0@uint64 xmm5_0 xmm4_0;
xor xmm5_1@uint64 xmm5_1 xmm4_1;
(* vpxorq %xmm27,%xmm28,%xmm28                     #! PC = 0x5555555750bb *)
xor xmm28_0@uint64 xmm28_0 xmm27_0;
xor xmm28_1@uint64 xmm28_1 xmm27_1;
(* vpxorq %xmm4,%xmm16,%xmm16                      #! PC = 0x5555555750c1 *)
xor xmm16_0@uint64 xmm16_0 xmm4_0;
xor xmm16_1@uint64 xmm16_1 xmm4_1;
(* vprorq $0x1c,%xmm28,%xmm28                      #! PC = 0x5555555750c7 *)
ror xmm28_0 xmm28_0 0x1c;
ror xmm28_1 xmm28_1 0x1c;
(* vprolq $0x1b,%xmm16,%xmm16                      #! PC = 0x5555555750ce *)
rol xmm16_0 xmm16_0 0x1b;
rol xmm16_1 xmm16_1 0x1b;
(* vprolq $0x12,%xmm17,%xmm17                      #! PC = 0x5555555750d5 *)
rol xmm17_0 xmm17_0 0x12;
rol xmm17_1 xmm17_1 0x12;
(* vprolq $0x19,%xmm6,%xmm6                        #! PC = 0x5555555750dc *)
rol xmm6_0 xmm6_0 0x19;
rol xmm6_1 xmm6_1 0x19;
(* vprolq $0x8,%xmm5,%xmm5                         #! PC = 0x5555555750e3 *)
rol xmm5_0 xmm5_0 0x8;
rol xmm5_1 xmm5_1 0x8;
(* vpxorq %xmm26,%xmm7,%xmm7                       #! PC = 0x5555555750ea *)
xor xmm7_0@uint64 xmm7_0 xmm26_0;
xor xmm7_1@uint64 xmm7_1 xmm26_1;
(* vpxorq %xmm25,%xmm8,%xmm8                       #! PC = 0x5555555750f0 *)
xor xmm8_0@uint64 xmm8_0 xmm25_0;
xor xmm8_1@uint64 xmm8_1 xmm25_1;
(* vpxorq %xmm22,%xmm3,%xmm3                       #! PC = 0x5555555750f6 *)
xor xmm3_0@uint64 xmm3_0 xmm22_0;
xor xmm3_1@uint64 xmm3_1 xmm22_1;
(* vpxorq %xmm25,%xmm1,%xmm1                       #! PC = 0x5555555750fc *)
xor xmm1_0@uint64 xmm1_0 xmm25_0;
xor xmm1_1@uint64 xmm1_1 xmm25_1;
(* vpxorq %xmm22,%xmm20,%xmm20                     #! PC = 0x555555575102 *)
xor xmm20_0@uint64 xmm20_0 xmm22_0;
xor xmm20_1@uint64 xmm20_1 xmm22_1;
(* vpxorq %xmm27,%xmm23,%xmm23                     #! PC = 0x555555575108 *)
xor xmm23_0@uint64 xmm23_0 xmm27_0;
xor xmm23_1@uint64 xmm23_1 xmm27_1;
(* vprorq $0x2,%xmm1,%xmm1                         #! PC = 0x55555557510e *)
ror xmm1_0 xmm1_0 0x2;
ror xmm1_1 xmm1_1 0x2;
(* vprorq $0x9,%xmm20,%xmm20                       #! PC = 0x555555575115 *)
ror xmm20_0 xmm20_0 0x9;
ror xmm20_1 xmm20_1 0x9;
(* vprolq $0xa,%xmm7,%xmm7                         #! PC = 0x55555557511c *)
rol xmm7_0 xmm7_0 0xa;
rol xmm7_1 xmm7_1 0xa;
(* vprolq $0xf,%xmm8,%xmm8                         #! PC = 0x555555575123 *)
rol xmm8_0 xmm8_0 0xf;
rol xmm8_1 xmm8_1 0xf;
(* vprorq $0x8,%xmm3,%xmm3                         #! PC = 0x55555557512a *)
ror xmm3_0 xmm3_0 0x8;
ror xmm3_1 xmm3_1 0x8;
(* vpxorq %xmm27,%xmm14,%xmm14                     #! PC = 0x555555575131 *)
xor xmm14_0@uint64 xmm14_0 xmm27_0;
xor xmm14_1@uint64 xmm14_1 xmm27_1;
(* vpxorq %xmm26,%xmm24,%xmm24                     #! PC = 0x555555575137 *)
xor xmm24_0@uint64 xmm24_0 xmm26_0;
xor xmm24_1@uint64 xmm24_1 xmm26_1;
(* vpxor  %xmm4,%xmm9,%xmm9                        #! PC = 0x55555557513d *)
xor xmm9_0@uint64 xmm9_0 xmm4_0;
xor xmm9_1@uint64 xmm9_1 xmm4_1;
(* vprorq $0x17,%xmm14,%xmm14                      #! PC = 0x555555575141 *)
ror xmm14_0 xmm14_0 0x17;
ror xmm14_1 xmm14_1 0x17;
(* vprolq $0x2,%xmm24,%xmm24                       #! PC = 0x555555575148 *)
rol xmm24_0 xmm24_0 0x2;
rol xmm24_1 xmm24_1 0x2;
(* vprorq $0x19,%xmm9,%xmm9                        #! PC = 0x55555557514f *)
ror xmm9_0 xmm9_0 0x19;
ror xmm9_1 xmm9_1 0x19;
(* vmovdqa64 %xmm23,%xmm31                         #! PC = 0x555555575156 *)
mov xmm31_0 xmm23_0;
mov xmm31_1 xmm23_1;
(* vmovdqa64 %xmm30,%xmm15                         #! PC = 0x55555557515c *)
mov xmm15_0 xmm30_0;
mov xmm15_1 xmm30_1;
(* vpternlogq $0xd2,%xmm0,%xmm30,%xmm31            #! PC = 0x555555575162 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm31_0, xmm30_0, xmm0_0, table);
call vpternlogq64 (xmm31_1, xmm30_1, xmm0_1, table);
(* vpternlogq $0xd2,%xmm10,%xmm0,%xmm15            #! PC = 0x555555575169 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm15_0, xmm0_0, xmm10_0, table);
call vpternlogq64 (xmm15_1, xmm0_1, xmm10_1, table);
(* vpternlogq $0xd2,%xmm2,%xmm10,%xmm0             #! PC = 0x555555575170 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm0_0, xmm10_0, xmm2_0, table);
call vpternlogq64 (xmm0_1, xmm10_1, xmm2_1, table);
(* vpternlogq $0xd2,%xmm23,%xmm2,%xmm10            #! PC = 0x555555575177 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm10_0, xmm2_0, xmm23_0, table);
call vpternlogq64 (xmm10_1, xmm2_1, xmm23_1, table);
(* vpternlogq $0xd2,%xmm30,%xmm23,%xmm2            #! PC = 0x55555557517e *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm2_0, xmm23_0, xmm30_0, table);
call vpternlogq64 (xmm2_1, xmm23_1, xmm30_1, table);
(* vpbroadcastq %rbp,%xmm23                        #! PC = 0x555555575185 *)
mov xmm23_0 rbp;
mov xmm23_1 rbp;
(* vpxorq %xmm31,%xmm23,%xmm23                     #! PC = 0x55555557518b *)
xor xmm23_0@uint64 xmm23_0 xmm31_0;
xor xmm23_1@uint64 xmm23_1 xmm31_1;
(* vmovdqa64 %xmm12,%xmm30                         #! PC = 0x555555575191 *)
mov xmm30_0 xmm12_0;
mov xmm30_1 xmm12_1;
(* vmovdqa64 %xmm13,%xmm31                         #! PC = 0x555555575197 *)
mov xmm31_0 xmm13_0;
mov xmm31_1 xmm13_1;
(* vpternlogq $0xd2,%xmm19,%xmm13,%xmm30           #! PC = 0x55555557519d *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm30_0, xmm13_0, xmm19_0, table);
call vpternlogq64 (xmm30_1, xmm13_1, xmm19_1, table);
(* vpternlogq $0xd2,%xmm18,%xmm19,%xmm31           #! PC = 0x5555555751a4 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm31_0, xmm19_0, xmm18_0, table);
call vpternlogq64 (xmm31_1, xmm19_1, xmm18_1, table);
(* vpternlogq $0xd2,%xmm11,%xmm18,%xmm19           #! PC = 0x5555555751ab *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm19_0, xmm18_0, xmm11_0, table);
call vpternlogq64 (xmm19_1, xmm18_1, xmm11_1, table);
(* vpternlogq $0xd2,%xmm12,%xmm11,%xmm18           #! PC = 0x5555555751b2 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm18_0, xmm11_0, xmm12_0, table);
call vpternlogq64 (xmm18_1, xmm11_1, xmm12_1, table);
(* vpternlogq $0xd2,%xmm13,%xmm12,%xmm11           #! PC = 0x5555555751b9 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm11_0, xmm12_0, xmm13_0, table);
call vpternlogq64 (xmm11_1, xmm12_1, xmm13_1, table);
(* vmovdqa64 %xmm29,%xmm13                         #! PC = 0x5555555751c0 *)
mov xmm13_0 xmm29_0;
mov xmm13_1 xmm29_1;
(* vmovdqa64 %xmm21,%xmm12                         #! PC = 0x5555555751c6 *)
mov xmm12_0 xmm21_0;
mov xmm12_1 xmm21_1;
(* vpternlogq $0xd2,%xmm6,%xmm21,%xmm13            #! PC = 0x5555555751cc *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm13_0, xmm21_0, xmm6_0, table);
call vpternlogq64 (xmm13_1, xmm21_1, xmm6_1, table);
(* vpternlogq $0xd2,%xmm5,%xmm6,%xmm12             #! PC = 0x5555555751d3 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm12_0, xmm6_0, xmm5_0, table);
call vpternlogq64 (xmm12_1, xmm6_1, xmm5_1, table);
(* vpternlogq $0xd2,%xmm17,%xmm5,%xmm6             #! PC = 0x5555555751da *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm6_0, xmm5_0, xmm17_0, table);
call vpternlogq64 (xmm6_1, xmm5_1, xmm17_1, table);
(* vpternlogq $0xd2,%xmm29,%xmm17,%xmm5            #! PC = 0x5555555751e1 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm5_0, xmm17_0, xmm29_0, table);
call vpternlogq64 (xmm5_1, xmm17_1, xmm29_1, table);
(* vpternlogq $0xd2,%xmm21,%xmm29,%xmm17           #! PC = 0x5555555751e8 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm17_0, xmm29_0, xmm21_0, table);
call vpternlogq64 (xmm17_1, xmm29_1, xmm21_1, table);
(* vmovdqa64 %xmm16,%xmm21                         #! PC = 0x5555555751ef *)
mov xmm21_0 xmm16_0;
mov xmm21_1 xmm16_1;
(* vmovdqa64 %xmm28,%xmm29                         #! PC = 0x5555555751f5 *)
mov xmm29_0 xmm28_0;
mov xmm29_1 xmm28_1;
(* vpternlogq $0xd2,%xmm7,%xmm28,%xmm21            #! PC = 0x5555555751fb *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm21_0, xmm28_0, xmm7_0, table);
call vpternlogq64 (xmm21_1, xmm28_1, xmm7_1, table);
(* vpternlogq $0xd2,%xmm8,%xmm7,%xmm29             #! PC = 0x555555575202 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm29_0, xmm7_0, xmm8_0, table);
call vpternlogq64 (xmm29_1, xmm7_1, xmm8_1, table);
(* vmovdqa %xmm1,%xmm4                             #! PC = 0x555555575209 *)
mov xmm4_0 xmm1_0;
mov xmm4_1 xmm1_1;
(* vpternlogq $0xd2,%xmm3,%xmm8,%xmm7              #! PC = 0x55555557520d *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm7_0, xmm8_0, xmm3_0, table);
call vpternlogq64 (xmm7_1, xmm8_1, xmm3_1, table);
(* vpternlogq $0xd2,%xmm16,%xmm3,%xmm8             #! PC = 0x555555575214 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm8_0, xmm3_0, xmm16_0, table);
call vpternlogq64 (xmm8_1, xmm3_1, xmm16_1, table);
(* vpternlogq $0xd2,%xmm28,%xmm16,%xmm3            #! PC = 0x55555557521b *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm3_0, xmm16_0, xmm28_0, table);
call vpternlogq64 (xmm3_1, xmm16_1, xmm28_1, table);
(* vmovdqa64 %xmm20,%xmm16                         #! PC = 0x555555575222 *)
mov xmm16_0 xmm20_0;
mov xmm16_1 xmm20_1;
(* vpternlogq $0xd2,%xmm9,%xmm20,%xmm4             #! PC = 0x555555575228 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm4_0, xmm20_0, xmm9_0, table);
call vpternlogq64 (xmm4_1, xmm20_1, xmm9_1, table);
(* vpternlogq $0xd2,%xmm14,%xmm9,%xmm16            #! PC = 0x55555557522f *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm16_0, xmm9_0, xmm14_0, table);
call vpternlogq64 (xmm16_1, xmm9_1, xmm14_1, table);
(* vmovdqa64 %xmm19,%xmm22                         #! PC = 0x555555575236 *)
mov xmm22_0 xmm19_0;
mov xmm22_1 xmm19_1;
(* vpternlogq $0xd2,%xmm24,%xmm14,%xmm9            #! PC = 0x55555557523c *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm9_0, xmm14_0, xmm24_0, table);
call vpternlogq64 (xmm9_1, xmm14_1, xmm24_1, table);
(* vpternlogq $0x96,%xmm9,%xmm0,%xmm22             #! PC = 0x555555575243 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm22_0, xmm0_0, xmm9_0, table);
call vpternlogq64 (xmm22_1, xmm0_1, xmm9_1, table);
(* vpternlogq $0x96,%xmm6,%xmm7,%xmm22             #! PC = 0x55555557524a *)
mov table 0x96@uint8;
call vpternlogq64 (xmm22_0, xmm7_0, xmm6_0, table);
call vpternlogq64 (xmm22_1, xmm7_1, xmm6_1, table);
(* vpternlogq $0xd2,%xmm1,%xmm24,%xmm14            #! PC = 0x555555575251 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm14_0, xmm24_0, xmm1_0, table);
call vpternlogq64 (xmm14_1, xmm24_1, xmm1_1, table);
(* vpternlogq $0xd2,%xmm20,%xmm1,%xmm24            #! PC = 0x555555575258 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm24_0, xmm1_0, xmm20_0, table);
call vpternlogq64 (xmm24_1, xmm1_1, xmm20_1, table);
(* vprolq $0x1,%xmm22,%xmm1                        #! PC = 0x55555557525f *)
rol xmm1_0 xmm22_0 0x1;
rol xmm1_1 xmm22_1 0x1;
(* vmovdqa64 %xmm14,%xmm20                         #! PC = 0x555555575266 *)
mov xmm20_0 xmm14_0;
mov xmm20_1 xmm14_1;
(* vpternlogq $0x96,%xmm5,%xmm8,%xmm20             #! PC = 0x55555557526c *)
mov table 0x96@uint8;
call vpternlogq64 (xmm20_0, xmm8_0, xmm5_0, table);
call vpternlogq64 (xmm20_1, xmm8_1, xmm5_1, table);
(* vpternlogq $0x96,%xmm10,%xmm18,%xmm20           #! PC = 0x555555575273 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm20_0, xmm18_0, xmm10_0, table);
call vpternlogq64 (xmm20_1, xmm18_1, xmm10_1, table);
(* vmovdqa64 %xmm17,%xmm27                         #! PC = 0x55555557527a *)
mov xmm27_0 xmm17_0;
mov xmm27_1 xmm17_1;
(* vpternlogq $0x96,%xmm2,%xmm11,%xmm27            #! PC = 0x555555575280 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm27_0, xmm11_0, xmm2_0, table);
call vpternlogq64 (xmm27_1, xmm11_1, xmm2_1, table);
(* vmovdqa %xmm1,-0x78(%rsp)                       #! EA = L0x7fffffffda70; PC = 0x555555575287 *)
mov L0x7fffffffda70 xmm1_0;
mov L0x7fffffffda78 xmm1_1;
(* vprolq $0x1,%xmm20,%xmm1                        #! PC = 0x55555557528d *)
rol xmm1_0 xmm20_0 0x1;
rol xmm1_1 xmm20_1 0x1;
(* vpternlogq $0x96,%xmm3,%xmm24,%xmm27            #! PC = 0x555555575294 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm27_0, xmm24_0, xmm3_0, table);
call vpternlogq64 (xmm27_1, xmm24_1, xmm3_1, table);
(* vmovdqa64 %xmm23,%xmm26                         #! PC = 0x55555557529b *)
mov xmm26_0 xmm23_0;
mov xmm26_1 xmm23_1;
(* vpternlogq $0x96,%xmm21,%xmm4,%xmm26            #! PC = 0x5555555752a1 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm26_0, xmm4_0, xmm21_0, table);
call vpternlogq64 (xmm26_1, xmm4_1, xmm21_1, table);
(* vpternlogq $0x96,%xmm30,%xmm13,%xmm26           #! PC = 0x5555555752a8 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm26_0, xmm13_0, xmm30_0, table);
call vpternlogq64 (xmm26_1, xmm13_1, xmm30_1, table);
(* vmovdqa64 %xmm29,%xmm25                         #! PC = 0x5555555752af *)
mov xmm25_0 xmm29_0;
mov xmm25_1 xmm29_1;
(* vmovdqa %xmm1,-0x68(%rsp)                       #! EA = L0x7fffffffda80; PC = 0x5555555752b5 *)
mov L0x7fffffffda80 xmm1_0;
mov L0x7fffffffda88 xmm1_1;
(* vprolq $0x1,%xmm27,%xmm1                        #! PC = 0x5555555752bb *)
rol xmm1_0 xmm27_0 0x1;
rol xmm1_1 xmm27_1 0x1;
(* vpternlogq $0x96,%xmm31,%xmm12,%xmm25           #! PC = 0x5555555752c2 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm25_0, xmm12_0, xmm31_0, table);
call vpternlogq64 (xmm25_1, xmm12_1, xmm31_1, table);
(* vpternlogq $0x96,%xmm16,%xmm15,%xmm25           #! PC = 0x5555555752c9 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm25_0, xmm15_0, xmm16_0, table);
call vpternlogq64 (xmm25_1, xmm15_1, xmm16_1, table);
(* vprolq $0x1,%xmm25,%xmm28                       #! PC = 0x5555555752d0 *)
rol xmm28_0 xmm25_0 0x1;
rol xmm28_1 xmm25_1 0x1;
(* vpxorq -0x68(%rsp),%xmm25,%xmm25                #! EA = L0x7fffffffda80; Value = 0xdbbcccc9e871dc4f; PC = 0x5555555752d7 *)
xor xmm25_0@uint64 xmm25_0 L0x7fffffffda80;
xor xmm25_1@uint64 xmm25_1 L0x7fffffffda88;
(* movabs $0x8000000080008081,%rbx                 #! PC = 0x5555555752e2 *)
mov rbx 0x8000000080008081@uint64;
(* vmovdqa %xmm1,-0x58(%rsp)                       #! EA = L0x7fffffffda90; PC = 0x5555555752ec *)
mov L0x7fffffffda90 xmm1_0;
mov L0x7fffffffda98 xmm1_1;
(* vprolq $0x1,%xmm26,%xmm1                        #! PC = 0x5555555752f2 *)
rol xmm1_0 xmm26_0 0x1;
rol xmm1_1 xmm26_1 0x1;
(* vpxorq -0x78(%rsp),%xmm26,%xmm26                #! EA = L0x7fffffffda70; Value = 0x29ec8af227b9bb13; PC = 0x5555555752f9 *)
xor xmm26_0@uint64 xmm26_0 L0x7fffffffda70;
xor xmm26_1@uint64 xmm26_1 L0x7fffffffda78;
(* vpxorq -0x58(%rsp),%xmm22,%xmm22                #! EA = L0x7fffffffda90; Value = 0x2e2bb45ca3dcfd7f; PC = 0x555555575304 *)
xor xmm22_0@uint64 xmm22_0 L0x7fffffffda90;
xor xmm22_1@uint64 xmm22_1 L0x7fffffffda98;
(* vpxorq %xmm26,%xmm31,%xmm31                     #! PC = 0x55555557530f *)
xor xmm31_0@uint64 xmm31_0 xmm26_0;
xor xmm31_1@uint64 xmm31_1 xmm26_1;
(* vprorq $0x14,%xmm31,%xmm31                      #! PC = 0x555555575315 *)
ror xmm31_0 xmm31_0 0x14;
ror xmm31_1 xmm31_1 0x14;
(* vpxorq %xmm25,%xmm6,%xmm6                       #! PC = 0x55555557531c *)
xor xmm6_0@uint64 xmm6_0 xmm25_0;
xor xmm6_1@uint64 xmm6_1 xmm25_1;
(* vpxorq %xmm1,%xmm20,%xmm20                      #! PC = 0x555555575322 *)
xor xmm20_0@uint64 xmm20_0 xmm1_0;
xor xmm20_1@uint64 xmm20_1 xmm1_1;
(* vpxorq %xmm20,%xmm24,%xmm1                      #! PC = 0x555555575328 *)
xor xmm1_0@uint64 xmm24_0 xmm20_0;
xor xmm1_1@uint64 xmm24_1 xmm20_1;
(* vpxorq %xmm22,%xmm8,%xmm8                       #! PC = 0x55555557532e *)
xor xmm8_0@uint64 xmm8_0 xmm22_0;
xor xmm8_1@uint64 xmm8_1 xmm22_1;
(* vprorq $0x15,%xmm6,%xmm6                        #! PC = 0x555555575334 *)
ror xmm6_0 xmm6_0 0x15;
ror xmm6_1 xmm6_1 0x15;
(* vprolq $0x15,%xmm8,%xmm8                        #! PC = 0x55555557533b *)
rol xmm8_0 xmm8_0 0x15;
rol xmm8_1 xmm8_1 0x15;
(* vprolq $0xe,%xmm1,%xmm1                         #! PC = 0x555555575342 *)
rol xmm1_0 xmm1_0 0xe;
rol xmm1_1 xmm1_1 0xe;
(* vpxorq %xmm28,%xmm27,%xmm27                     #! PC = 0x555555575349 *)
xor xmm27_0@uint64 xmm27_0 xmm28_0;
xor xmm27_1@uint64 xmm27_1 xmm28_1;
(* vpxorq %xmm22,%xmm10,%xmm10                     #! PC = 0x55555557534f *)
xor xmm10_0@uint64 xmm10_0 xmm22_0;
xor xmm10_1@uint64 xmm10_1 xmm22_1;
(* vpxorq %xmm20,%xmm11,%xmm11                     #! PC = 0x555555575355 *)
xor xmm11_0@uint64 xmm11_0 xmm20_0;
xor xmm11_1@uint64 xmm11_1 xmm20_1;
(* vprolq $0x1c,%xmm10,%xmm10                      #! PC = 0x55555557535b *)
rol xmm10_0 xmm10_0 0x1c;
rol xmm10_1 xmm10_1 0x1c;
(* vprolq $0x14,%xmm11,%xmm11                      #! PC = 0x555555575362 *)
rol xmm11_0 xmm11_0 0x14;
rol xmm11_1 xmm11_1 0x14;
(* vpxorq %xmm27,%xmm13,%xmm13                     #! PC = 0x555555575369 *)
xor xmm13_0@uint64 xmm13_0 xmm27_0;
xor xmm13_1@uint64 xmm13_1 xmm27_1;
(* vpxorq %xmm26,%xmm29,%xmm29                     #! PC = 0x55555557536f *)
xor xmm29_0@uint64 xmm29_0 xmm26_0;
xor xmm29_1@uint64 xmm29_1 xmm26_1;
(* vpxorq %xmm25,%xmm9,%xmm9                       #! PC = 0x555555575375 *)
xor xmm9_0@uint64 xmm9_0 xmm25_0;
xor xmm9_1@uint64 xmm9_1 xmm25_1;
(* vpxorq %xmm26,%xmm15,%xmm15                     #! PC = 0x55555557537b *)
xor xmm15_0@uint64 xmm15_0 xmm26_0;
xor xmm15_1@uint64 xmm15_1 xmm26_1;
(* vprolq $0x1,%xmm15,%xmm15                       #! PC = 0x555555575381 *)
rol xmm15_0 xmm15_0 0x1;
rol xmm15_1 xmm15_1 0x1;
(* vprolq $0x3,%xmm13,%xmm13                       #! PC = 0x555555575388 *)
rol xmm13_0 xmm13_0 0x3;
rol xmm13_1 xmm13_1 0x3;
(* vprorq $0x13,%xmm29,%xmm29                      #! PC = 0x55555557538f *)
ror xmm29_0 xmm29_0 0x13;
ror xmm29_1 xmm29_1 0x13;
(* vprorq $0x3,%xmm9,%xmm9                         #! PC = 0x555555575396 *)
ror xmm9_0 xmm9_0 0x3;
ror xmm9_1 xmm9_1 0x3;
(* vpxorq %xmm25,%xmm19,%xmm19                     #! PC = 0x55555557539d *)
xor xmm19_0@uint64 xmm19_0 xmm25_0;
xor xmm19_1@uint64 xmm19_1 xmm25_1;
(* vpxorq %xmm22,%xmm5,%xmm5                       #! PC = 0x5555555753a3 *)
xor xmm5_0@uint64 xmm5_0 xmm22_0;
xor xmm5_1@uint64 xmm5_1 xmm22_1;
(* vpxorq %xmm27,%xmm23,%xmm23                     #! PC = 0x5555555753a9 *)
xor xmm23_0@uint64 xmm23_0 xmm27_0;
xor xmm23_1@uint64 xmm23_1 xmm27_1;
(* vprolq $0x6,%xmm19,%xmm19                       #! PC = 0x5555555753af *)
rol xmm19_0 xmm19_0 0x6;
rol xmm19_1 xmm19_1 0x6;
(* vprolq $0x19,%xmm5,%xmm5                        #! PC = 0x5555555753b6 *)
rol xmm5_0 xmm5_0 0x19;
rol xmm5_1 xmm5_1 0x19;
(* vmovdqa64 %xmm23,%xmm24                         #! PC = 0x5555555753bd *)
mov xmm24_0 xmm23_0;
mov xmm24_1 xmm23_1;
(* vmovdqa64 %xmm31,%xmm28                         #! PC = 0x5555555753c3 *)
mov xmm28_0 xmm31_0;
mov xmm28_1 xmm31_1;
(* vpxorq %xmm27,%xmm4,%xmm4                       #! PC = 0x5555555753c9 *)
xor xmm4_0@uint64 xmm4_0 xmm27_0;
xor xmm4_1@uint64 xmm4_1 xmm27_1;
(* vpxorq %xmm20,%xmm3,%xmm3                       #! PC = 0x5555555753cf *)
xor xmm3_0@uint64 xmm3_0 xmm20_0;
xor xmm3_1@uint64 xmm3_1 xmm20_1;
(* vpxorq %xmm27,%xmm30,%xmm30                     #! PC = 0x5555555753d5 *)
xor xmm30_0@uint64 xmm30_0 xmm27_0;
xor xmm30_1@uint64 xmm30_1 xmm27_1;
(* vpxorq %xmm20,%xmm2,%xmm2                       #! PC = 0x5555555753db *)
xor xmm2_0@uint64 xmm2_0 xmm20_0;
xor xmm2_1@uint64 xmm2_1 xmm20_1;
(* vpxorq %xmm25,%xmm0,%xmm0                       #! PC = 0x5555555753e1 *)
xor xmm0_0@uint64 xmm0_0 xmm25_0;
xor xmm0_1@uint64 xmm0_1 xmm25_1;
(* vpxorq %xmm22,%xmm18,%xmm18                     #! PC = 0x5555555753e7 *)
xor xmm18_0@uint64 xmm18_0 xmm22_0;
xor xmm18_1@uint64 xmm18_1 xmm22_1;
(* vprorq $0x1c,%xmm30,%xmm30                      #! PC = 0x5555555753ed *)
ror xmm30_0 xmm30_0 0x1c;
ror xmm30_1 xmm30_1 0x1c;
(* vprolq $0x1b,%xmm2,%xmm2                        #! PC = 0x5555555753f4 *)
rol xmm2_0 xmm2_0 0x1b;
rol xmm2_1 xmm2_1 0x1b;
(* vprorq $0x2,%xmm0,%xmm0                         #! PC = 0x5555555753fb *)
ror xmm0_0 xmm0_0 0x2;
ror xmm0_1 xmm0_1 0x2;
(* vprorq $0x9,%xmm18,%xmm18                       #! PC = 0x555555575402 *)
ror xmm18_0 xmm18_0 0x9;
ror xmm18_1 xmm18_1 0x9;
(* vpternlogq $0xd2,%xmm6,%xmm31,%xmm24            #! PC = 0x555555575409 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm24_0, xmm31_0, xmm6_0, table);
call vpternlogq64 (xmm24_1, xmm31_1, xmm6_1, table);
(* vpternlogq $0xd2,%xmm8,%xmm6,%xmm28             #! PC = 0x555555575410 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm28_0, xmm6_0, xmm8_0, table);
call vpternlogq64 (xmm28_1, xmm6_1, xmm8_1, table);
(* vprolq $0x12,%xmm4,%xmm4                        #! PC = 0x555555575417 *)
rol xmm4_0 xmm4_0 0x12;
rol xmm4_1 xmm4_1 0x12;
(* vpternlogq $0xd2,%xmm1,%xmm8,%xmm6              #! PC = 0x55555557541e *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm6_0, xmm8_0, xmm1_0, table);
call vpternlogq64 (xmm6_1, xmm8_1, xmm1_1, table);
(* vprolq $0x8,%xmm3,%xmm3                         #! PC = 0x555555575425 *)
rol xmm3_0 xmm3_0 0x8;
rol xmm3_1 xmm3_1 0x8;
(* vpxorq %xmm26,%xmm12,%xmm12                     #! PC = 0x55555557542c *)
xor xmm12_0@uint64 xmm12_0 xmm26_0;
xor xmm12_1@uint64 xmm12_1 xmm26_1;
(* vpxorq %xmm25,%xmm7,%xmm7                       #! PC = 0x555555575432 *)
xor xmm7_0@uint64 xmm7_0 xmm25_0;
xor xmm7_1@uint64 xmm7_1 xmm25_1;
(* vpxorq %xmm22,%xmm14,%xmm14                     #! PC = 0x555555575438 *)
xor xmm14_0@uint64 xmm14_0 xmm22_0;
xor xmm14_1@uint64 xmm14_1 xmm22_1;
(* vpxorq %xmm27,%xmm21,%xmm21                     #! PC = 0x55555557543e *)
xor xmm21_0@uint64 xmm21_0 xmm27_0;
xor xmm21_1@uint64 xmm21_1 xmm27_1;
(* vpxorq %xmm26,%xmm16,%xmm16                     #! PC = 0x555555575444 *)
xor xmm16_0@uint64 xmm16_0 xmm26_0;
xor xmm16_1@uint64 xmm16_1 xmm26_1;
(* vpxorq %xmm20,%xmm17,%xmm17                     #! PC = 0x55555557544a *)
xor xmm17_0@uint64 xmm17_0 xmm20_0;
xor xmm17_1@uint64 xmm17_1 xmm20_1;
(* vprolq $0xa,%xmm12,%xmm12                       #! PC = 0x555555575450 *)
rol xmm12_0 xmm12_0 0xa;
rol xmm12_1 xmm12_1 0xa;
(* vprolq $0xf,%xmm7,%xmm7                         #! PC = 0x555555575457 *)
rol xmm7_0 xmm7_0 0xf;
rol xmm7_1 xmm7_1 0xf;
(* vprorq $0x8,%xmm14,%xmm14                       #! PC = 0x55555557545e *)
ror xmm14_0 xmm14_0 0x8;
ror xmm14_1 xmm14_1 0x8;
(* vprorq $0x17,%xmm21,%xmm21                      #! PC = 0x555555575465 *)
ror xmm21_0 xmm21_0 0x17;
ror xmm21_1 xmm21_1 0x17;
(* vprolq $0x2,%xmm16,%xmm16                       #! PC = 0x55555557546c *)
rol xmm16_0 xmm16_0 0x2;
rol xmm16_1 xmm16_1 0x2;
(* vprorq $0x19,%xmm17,%xmm17                      #! PC = 0x555555575473 *)
ror xmm17_0 xmm17_0 0x19;
ror xmm17_1 xmm17_1 0x19;
(* vmovdqa %xmm6,-0x18(%rsp)                       #! EA = L0x7fffffffdad0; PC = 0x55555557547a *)
mov L0x7fffffffdad0 xmm6_0;
mov L0x7fffffffdad8 xmm6_1;
(* vpbroadcastq %r12,%xmm6                         #! PC = 0x555555575480 *)
mov xmm6_0 r12;
mov xmm6_1 r12;
(* vpternlogq $0xd2,%xmm23,%xmm1,%xmm8             #! PC = 0x555555575486 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm8_0, xmm1_0, xmm23_0, table);
call vpternlogq64 (xmm8_1, xmm1_1, xmm23_1, table);
(* vpxorq %xmm24,%xmm6,%xmm6                       #! PC = 0x55555557548d *)
xor xmm6_0@uint64 xmm6_0 xmm24_0;
xor xmm6_1@uint64 xmm6_1 xmm24_1;
(* vpternlogq $0xd2,%xmm31,%xmm23,%xmm1            #! PC = 0x555555575493 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm1_0, xmm23_0, xmm31_0, table);
call vpternlogq64 (xmm1_1, xmm23_1, xmm31_1, table);
(* vmovdqa64 %xmm11,%xmm24                         #! PC = 0x55555557549a *)
mov xmm24_0 xmm11_0;
mov xmm24_1 xmm11_1;
(* vmovdqa64 %xmm10,%xmm31                         #! PC = 0x5555555754a0 *)
mov xmm31_0 xmm10_0;
mov xmm31_1 xmm10_1;
(* vpternlogq $0xd2,%xmm13,%xmm11,%xmm31           #! PC = 0x5555555754a6 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm31_0, xmm11_0, xmm13_0, table);
call vpternlogq64 (xmm31_1, xmm11_1, xmm13_1, table);
(* vpternlogq $0xd2,%xmm29,%xmm13,%xmm24           #! PC = 0x5555555754ad *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm24_0, xmm13_0, xmm29_0, table);
call vpternlogq64 (xmm24_1, xmm13_1, xmm29_1, table);
(* vpternlogq $0xd2,%xmm9,%xmm29,%xmm13            #! PC = 0x5555555754b4 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm13_0, xmm29_0, xmm9_0, table);
call vpternlogq64 (xmm13_1, xmm29_1, xmm9_1, table);
(* vpternlogq $0xd2,%xmm10,%xmm9,%xmm29            #! PC = 0x5555555754bb *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm29_0, xmm9_0, xmm10_0, table);
call vpternlogq64 (xmm29_1, xmm9_1, xmm10_1, table);
(* vpternlogq $0xd2,%xmm11,%xmm10,%xmm9            #! PC = 0x5555555754c2 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm9_0, xmm10_0, xmm11_0, table);
call vpternlogq64 (xmm9_1, xmm10_1, xmm11_1, table);
(* vmovdqa %xmm15,%xmm10                           #! PC = 0x5555555754c9 *)
mov xmm10_0 xmm15_0;
mov xmm10_1 xmm15_1;
(* vpternlogq $0xd2,%xmm5,%xmm19,%xmm10            #! PC = 0x5555555754ce *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm10_0, xmm19_0, xmm5_0, table);
call vpternlogq64 (xmm10_1, xmm19_1, xmm5_1, table);
(* vmovdqa64 %xmm29,-0x8(%rsp)                     #! EA = L0x7fffffffdae0; PC = 0x5555555754d5 *)
mov L0x7fffffffdae0 xmm29_0;
mov L0x7fffffffdae8 xmm29_1;
(* vmovdqa64 %xmm10,%xmm29                         #! PC = 0x5555555754e0 *)
mov xmm29_0 xmm10_0;
mov xmm29_1 xmm10_1;
(* vmovdqa64 %xmm19,%xmm10                         #! PC = 0x5555555754e6 *)
mov xmm10_0 xmm19_0;
mov xmm10_1 xmm19_1;
(* vpternlogq $0xd2,%xmm3,%xmm5,%xmm10             #! PC = 0x5555555754ec *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm10_0, xmm5_0, xmm3_0, table);
call vpternlogq64 (xmm10_1, xmm5_1, xmm3_1, table);
(* vmovdqa64 %xmm0,%xmm23                          #! PC = 0x5555555754f3 *)
mov xmm23_0 xmm0_0;
mov xmm23_1 xmm0_1;
(* vpternlogq $0xd2,%xmm4,%xmm3,%xmm5              #! PC = 0x5555555754f9 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm5_0, xmm3_0, xmm4_0, table);
call vpternlogq64 (xmm5_1, xmm3_1, xmm4_1, table);
(* vmovdqa64 %xmm18,%xmm11                         #! PC = 0x555555575500 *)
mov xmm11_0 xmm18_0;
mov xmm11_1 xmm18_1;
(* vpternlogq $0xd2,%xmm15,%xmm4,%xmm3             #! PC = 0x555555575506 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm3_0, xmm4_0, xmm15_0, table);
call vpternlogq64 (xmm3_1, xmm4_1, xmm15_1, table);
(* vpternlogq $0xd2,%xmm19,%xmm15,%xmm4            #! PC = 0x55555557550d *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm4_0, xmm15_0, xmm19_0, table);
call vpternlogq64 (xmm4_1, xmm15_1, xmm19_1, table);
(* vmovdqa %xmm2,%xmm15                            #! PC = 0x555555575514 *)
mov xmm15_0 xmm2_0;
mov xmm15_1 xmm2_1;
(* vmovdqa64 %xmm30,%xmm19                         #! PC = 0x555555575518 *)
mov xmm19_0 xmm30_0;
mov xmm19_1 xmm30_1;
(* vpternlogq $0xd2,%xmm12,%xmm30,%xmm15           #! PC = 0x55555557551e *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm15_0, xmm30_0, xmm12_0, table);
call vpternlogq64 (xmm15_1, xmm30_1, xmm12_1, table);
(* vpternlogq $0xd2,%xmm7,%xmm12,%xmm19            #! PC = 0x555555575525 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm19_0, xmm12_0, xmm7_0, table);
call vpternlogq64 (xmm19_1, xmm12_1, xmm7_1, table);
(* vpternlogq $0xd2,%xmm17,%xmm18,%xmm23           #! PC = 0x55555557552c *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm23_0, xmm18_0, xmm17_0, table);
call vpternlogq64 (xmm23_1, xmm18_1, xmm17_1, table);
(* vpternlogq $0xd2,%xmm14,%xmm7,%xmm12            #! PC = 0x555555575533 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm12_0, xmm7_0, xmm14_0, table);
call vpternlogq64 (xmm12_1, xmm7_1, xmm14_1, table);
(* vpternlogq $0xd2,%xmm21,%xmm17,%xmm11           #! PC = 0x55555557553a *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm11_0, xmm17_0, xmm21_0, table);
call vpternlogq64 (xmm11_1, xmm17_1, xmm21_1, table);
(* vpternlogq $0xd2,%xmm2,%xmm14,%xmm7             #! PC = 0x555555575541 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm7_0, xmm14_0, xmm2_0, table);
call vpternlogq64 (xmm7_1, xmm14_1, xmm2_1, table);
(* vpternlogq $0xd2,%xmm16,%xmm21,%xmm17           #! PC = 0x555555575548 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm17_0, xmm21_0, xmm16_0, table);
call vpternlogq64 (xmm17_1, xmm21_1, xmm16_1, table);
(* vmovdqa64 %xmm5,%xmm20                          #! PC = 0x55555557554f *)
mov xmm20_0 xmm5_0;
mov xmm20_1 xmm5_1;
(* vpternlogq $0xd2,%xmm0,%xmm16,%xmm21            #! PC = 0x555555575555 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm21_0, xmm16_0, xmm0_0, table);
call vpternlogq64 (xmm21_1, xmm16_1, xmm0_1, table);
(* vpternlogq $0xd2,%xmm18,%xmm0,%xmm16            #! PC = 0x55555557555c *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm16_0, xmm0_0, xmm18_0, table);
call vpternlogq64 (xmm16_1, xmm0_1, xmm18_1, table);
(* vpternlogq $0xd2,%xmm30,%xmm2,%xmm14            #! PC = 0x555555575563 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm14_0, xmm2_0, xmm30_0, table);
call vpternlogq64 (xmm14_1, xmm2_1, xmm30_1, table);
(* vpternlogq $0x96,%xmm13,%xmm17,%xmm20           #! PC = 0x55555557556a *)
mov table 0x96@uint8;
call vpternlogq64 (xmm20_0, xmm17_0, xmm13_0, table);
call vpternlogq64 (xmm20_1, xmm17_1, xmm13_1, table);
(* vmovdqa64 %xmm6,%xmm18                          #! PC = 0x555555575571 *)
mov xmm18_0 xmm6_0;
mov xmm18_1 xmm6_1;
(* vmovdqa %xmm7,%xmm0                             #! PC = 0x555555575577 *)
mov xmm0_0 xmm7_0;
mov xmm0_1 xmm7_1;
(* vmovdqa64 %xmm16,%xmm26                         #! PC = 0x55555557557b *)
mov xmm26_0 xmm16_0;
mov xmm26_1 xmm16_1;
(* vpternlogq $0x96,%xmm23,%xmm29,%xmm18           #! PC = 0x555555575581 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm18_0, xmm29_0, xmm23_0, table);
call vpternlogq64 (xmm18_1, xmm29_1, xmm23_1, table);
(* vpternlogq $0x96,%xmm3,%xmm8,%xmm0              #! PC = 0x555555575588 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm0_0, xmm8_0, xmm3_0, table);
call vpternlogq64 (xmm0_1, xmm8_1, xmm3_1, table);
(* vpternlogq $0x96,%xmm14,%xmm9,%xmm26            #! PC = 0x55555557558f *)
mov table 0x96@uint8;
call vpternlogq64 (xmm26_0, xmm9_0, xmm14_0, table);
call vpternlogq64 (xmm26_1, xmm9_1, xmm14_1, table);
(* vmovdqa64 %xmm24,%xmm30                         #! PC = 0x555555575596 *)
mov xmm30_0 xmm24_0;
mov xmm30_1 xmm24_1;
(* vpternlogq $0x96,-0x18(%rsp),%xmm12,%xmm20      #! EA = L0x7fffffffdad0; Value = 0x153d1e51a4362eb1; PC = 0x55555557559c *)
mov table 0x96@uint8;
call vpternlogq64 (xmm20_0, xmm12_0, L0x7fffffffdad0, table);
call vpternlogq64 (xmm20_1, xmm12_1, L0x7fffffffdad8, table);
(* vpternlogq $0x96,%xmm15,%xmm31,%xmm18           #! PC = 0x5555555755a8 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm18_0, xmm31_0, xmm15_0, table);
call vpternlogq64 (xmm18_1, xmm31_1, xmm15_1, table);
(* vpternlogq $0x96,%xmm4,%xmm1,%xmm26             #! PC = 0x5555555755af *)
mov table 0x96@uint8;
call vpternlogq64 (xmm26_0, xmm1_0, xmm4_0, table);
call vpternlogq64 (xmm26_1, xmm1_1, xmm4_1, table);
(* vprolq $0x1,%xmm20,%xmm22                       #! PC = 0x5555555755b6 *)
rol xmm22_0 xmm20_0 0x1;
rol xmm22_1 xmm20_1 0x1;
(* vpternlogq $0x96,%xmm28,%xmm19,%xmm30           #! PC = 0x5555555755bd *)
mov table 0x96@uint8;
call vpternlogq64 (xmm30_0, xmm19_0, xmm28_0, table);
call vpternlogq64 (xmm30_1, xmm19_1, xmm28_1, table);
(* vpternlogq $0x96,-0x8(%rsp),%xmm21,%xmm0        #! EA = L0x7fffffffdae0; Value = 0x9a54677876c6d6e1; PC = 0x5555555755c4 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm0_0, xmm21_0, L0x7fffffffdae0, table);
call vpternlogq64 (xmm0_1, xmm21_1, L0x7fffffffdae8, table);
(* vprolq $0x1,%xmm0,%xmm27                        #! PC = 0x5555555755d0 *)
rol xmm27_0 xmm0_0 0x1;
rol xmm27_1 xmm0_1 0x1;
(* vprolq $0x1,%xmm26,%xmm25                       #! PC = 0x5555555755d7 *)
rol xmm25_0 xmm26_0 0x1;
rol xmm25_1 xmm26_1 0x1;
(* vprolq $0x1,%xmm18,%xmm2                        #! PC = 0x5555555755de *)
rol xmm2_0 xmm18_0 0x1;
rol xmm2_1 xmm18_1 0x1;
(* vpternlogq $0x96,%xmm11,%xmm10,%xmm30           #! PC = 0x5555555755e5 *)
mov table 0x96@uint8;
call vpternlogq64 (xmm30_0, xmm10_0, xmm11_0, table);
call vpternlogq64 (xmm30_1, xmm10_1, xmm11_1, table);
(* vmovdqa %xmm4,0x8(%rsp)                         #! EA = L0x7fffffffdaf0; PC = 0x5555555755ec *)
mov L0x7fffffffdaf0 xmm4_0;
mov L0x7fffffffdaf8 xmm4_1;
(* vprolq $0x1,%xmm30,%xmm4                        #! PC = 0x5555555755f2 *)
rol xmm4_0 xmm30_0 0x1;
rol xmm4_1 xmm30_1 0x1;
(* vpxorq %xmm22,%xmm18,%xmm18                     #! PC = 0x5555555755f9 *)
xor xmm18_0@uint64 xmm18_0 xmm22_0;
xor xmm18_1@uint64 xmm18_1 xmm22_1;
(* vpxorq %xmm25,%xmm20,%xmm20                     #! PC = 0x5555555755ff *)
xor xmm20_0@uint64 xmm20_0 xmm25_0;
xor xmm20_1@uint64 xmm20_1 xmm25_1;
(* vpxor  %xmm2,%xmm0,%xmm0                        #! PC = 0x555555575605 *)
xor xmm0_0@uint64 xmm0_0 xmm2_0;
xor xmm0_1@uint64 xmm0_1 xmm2_1;
(* vpxorq %xmm27,%xmm30,%xmm30                     #! PC = 0x555555575609 *)
xor xmm30_0@uint64 xmm30_0 xmm27_0;
xor xmm30_1@uint64 xmm30_1 xmm27_1;
(* vpxorq %xmm18,%xmm24,%xmm24                     #! PC = 0x55555557560f *)
xor xmm24_0@uint64 xmm24_0 xmm18_0;
xor xmm24_1@uint64 xmm24_1 xmm18_1;
(* vpxorq %xmm4,%xmm26,%xmm26                      #! PC = 0x555555575615 *)
xor xmm26_0@uint64 xmm26_0 xmm4_0;
xor xmm26_1@uint64 xmm26_1 xmm4_1;
(* vprorq $0x14,%xmm24,%xmm24                      #! PC = 0x55555557561b *)
ror xmm24_0 xmm24_0 0x14;
ror xmm24_1 xmm24_1 0x14;
(* vpxorq %xmm20,%xmm7,%xmm4                       #! PC = 0x555555575622 *)
xor xmm4_0@uint64 xmm7_0 xmm20_0;
xor xmm4_1@uint64 xmm7_1 xmm20_1;
(* vpxorq %xmm30,%xmm5,%xmm25                      #! PC = 0x555555575628 *)
xor xmm25_0@uint64 xmm5_0 xmm30_0;
xor xmm25_1@uint64 xmm5_1 xmm30_1;
(* vpxorq %xmm0,%xmm16,%xmm2                       #! PC = 0x55555557562e *)
xor xmm2_0@uint64 xmm16_0 xmm0_0;
xor xmm2_1@uint64 xmm16_1 xmm0_1;
(* vprolq $0xe,%xmm2,%xmm2                         #! PC = 0x555555575634 *)
rol xmm2_0 xmm2_0 0xe;
rol xmm2_1 xmm2_1 0xe;
(* vprorq $0x15,%xmm25,%xmm25                      #! PC = 0x55555557563b *)
ror xmm25_0 xmm25_0 0x15;
ror xmm25_1 xmm25_1 0x15;
(* vprolq $0x15,%xmm4,%xmm4                        #! PC = 0x555555575642 *)
rol xmm4_0 xmm4_0 0x15;
rol xmm4_1 xmm4_1 0x15;
(* vpxorq %xmm26,%xmm6,%xmm6                       #! PC = 0x555555575649 *)
xor xmm6_0@uint64 xmm6_0 xmm26_0;
xor xmm6_1@uint64 xmm6_1 xmm26_1;
(* vmovdqa64 %xmm6,%xmm22                          #! PC = 0x55555557564f *)
mov xmm22_0 xmm6_0;
mov xmm22_1 xmm6_1;
(* vmovdqa64 %xmm24,%xmm5                          #! PC = 0x555555575655 *)
mov xmm5_0 xmm24_0;
mov xmm5_1 xmm24_1;
(* vpxorq %xmm20,%xmm8,%xmm8                       #! PC = 0x55555557565b *)
xor xmm8_0@uint64 xmm8_0 xmm20_0;
xor xmm8_1@uint64 xmm8_1 xmm20_1;
(* vpxor  %xmm0,%xmm9,%xmm9                        #! PC = 0x555555575661 *)
xor xmm9_0@uint64 xmm9_0 xmm0_0;
xor xmm9_1@uint64 xmm9_1 xmm0_1;
(* vpxorq %xmm26,%xmm29,%xmm29                     #! PC = 0x555555575665 *)
xor xmm29_0@uint64 xmm29_0 xmm26_0;
xor xmm29_1@uint64 xmm29_1 xmm26_1;
(* vprolq $0x1c,%xmm8,%xmm8                        #! PC = 0x55555557566b *)
rol xmm8_0 xmm8_0 0x1c;
rol xmm8_1 xmm8_1 0x1c;
(* vprolq $0x14,%xmm9,%xmm9                        #! PC = 0x555555575672 *)
rol xmm9_0 xmm9_0 0x14;
rol xmm9_1 xmm9_1 0x14;
(* vprolq $0x3,%xmm29,%xmm29                       #! PC = 0x555555575679 *)
rol xmm29_0 xmm29_0 0x3;
rol xmm29_1 xmm29_1 0x3;
(* vpternlogq $0xd2,%xmm25,%xmm24,%xmm22           #! PC = 0x555555575680 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm22_0, xmm24_0, xmm25_0, table);
call vpternlogq64 (xmm22_1, xmm24_1, xmm25_1, table);
(* vpxorq %xmm18,%xmm19,%xmm19                     #! PC = 0x555555575687 *)
xor xmm19_0@uint64 xmm19_0 xmm18_0;
xor xmm19_1@uint64 xmm19_1 xmm18_1;
(* vpternlogq $0xd2,%xmm4,%xmm25,%xmm5             #! PC = 0x55555557568d *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm5_0, xmm25_0, xmm4_0, table);
call vpternlogq64 (xmm5_1, xmm25_1, xmm4_1, table);
(* vmovdqa %xmm2,%xmm7                             #! PC = 0x555555575694 *)
mov xmm7_0 xmm2_0;
mov xmm7_1 xmm2_1;
(* vpternlogq $0xd2,%xmm2,%xmm4,%xmm25             #! PC = 0x555555575698 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm25_0, xmm4_0, xmm2_0, table);
call vpternlogq64 (xmm25_1, xmm4_1, xmm2_1, table);
(* vpxorq %xmm30,%xmm17,%xmm27                     #! PC = 0x55555557569f *)
xor xmm27_0@uint64 xmm17_0 xmm30_0;
xor xmm27_1@uint64 xmm17_1 xmm30_1;
(* vpternlogq $0xd2,%xmm6,%xmm2,%xmm4              #! PC = 0x5555555756a5 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm4_0, xmm2_0, xmm6_0, table);
call vpternlogq64 (xmm4_1, xmm2_1, xmm6_1, table);
(* vpxorq %xmm18,%xmm28,%xmm28                     #! PC = 0x5555555756ac *)
xor xmm28_0@uint64 xmm28_0 xmm18_0;
xor xmm28_1@uint64 xmm28_1 xmm18_1;
(* vpbroadcastq %r14,%xmm2                         #! PC = 0x5555555756b2 *)
mov xmm2_0 r14;
mov xmm2_1 r14;
(* vpxorq %xmm30,%xmm13,%xmm13                     #! PC = 0x5555555756b8 *)
xor xmm13_0@uint64 xmm13_0 xmm30_0;
xor xmm13_1@uint64 xmm13_1 xmm30_1;
(* vprolq $0x1,%xmm28,%xmm28                       #! PC = 0x5555555756be *)
rol xmm28_0 xmm28_0 0x1;
rol xmm28_1 xmm28_1 0x1;
(* vprorq $0x3,%xmm27,%xmm27                       #! PC = 0x5555555756c5 *)
ror xmm27_0 xmm27_0 0x3;
ror xmm27_1 xmm27_1 0x3;
(* vprolq $0x6,%xmm13,%xmm13                       #! PC = 0x5555555756cc *)
rol xmm13_0 xmm13_0 0x6;
rol xmm13_1 xmm13_1 0x6;
(* vpxorq %xmm20,%xmm3,%xmm17                      #! PC = 0x5555555756d3 *)
xor xmm17_0@uint64 xmm3_0 xmm20_0;
xor xmm17_1@uint64 xmm3_1 xmm20_1;
(* vpxor  %xmm0,%xmm14,%xmm14                      #! PC = 0x5555555756d9 *)
xor xmm14_0@uint64 xmm14_0 xmm0_0;
xor xmm14_1@uint64 xmm14_1 xmm0_1;
(* vpxorq %xmm22,%xmm2,%xmm22                      #! PC = 0x5555555756dd *)
xor xmm22_0@uint64 xmm2_0 xmm22_0;
xor xmm22_1@uint64 xmm2_1 xmm22_1;
(* vpxorq %xmm26,%xmm23,%xmm23                     #! PC = 0x5555555756e3 *)
xor xmm23_0@uint64 xmm23_0 xmm26_0;
xor xmm23_1@uint64 xmm23_1 xmm26_1;
(* vprorq $0x13,%xmm19,%xmm2                       #! PC = 0x5555555756e9 *)
ror xmm2_0 xmm19_0 0x13;
ror xmm2_1 xmm19_1 0x13;
(* vprolq $0x12,%xmm23,%xmm23                      #! PC = 0x5555555756f0 *)
rol xmm23_0 xmm23_0 0x12;
rol xmm23_1 xmm23_1 0x12;
(* vprolq $0x19,%xmm17,%xmm17                      #! PC = 0x5555555756f7 *)
rol xmm17_0 xmm17_0 0x19;
rol xmm17_1 xmm17_1 0x19;
(* vprolq $0x8,%xmm14,%xmm14                       #! PC = 0x5555555756fe *)
rol xmm14_0 xmm14_0 0x8;
rol xmm14_1 xmm14_1 0x8;
(* vpternlogq $0xd2,%xmm24,%xmm6,%xmm7             #! PC = 0x555555575705 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm7_0, xmm6_0, xmm24_0, table);
call vpternlogq64 (xmm7_1, xmm6_1, xmm24_1, table);
(* vmovdqa64 %xmm8,%xmm19                          #! PC = 0x55555557570c *)
mov xmm19_0 xmm8_0;
mov xmm19_1 xmm8_1;
(* vmovdqa %xmm9,%xmm6                             #! PC = 0x555555575712 *)
mov xmm6_0 xmm9_0;
mov xmm6_1 xmm9_1;
(* vmovdqa64 %xmm29,%xmm24                         #! PC = 0x555555575716 *)
mov xmm24_0 xmm29_0;
mov xmm24_1 xmm29_1;
(* vpternlogq $0xd2,%xmm27,%xmm2,%xmm24            #! PC = 0x55555557571c *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm24_0, xmm2_0, xmm27_0, table);
call vpternlogq64 (xmm24_1, xmm2_1, xmm27_1, table);
(* vpxor  %xmm0,%xmm1,%xmm1                        #! PC = 0x555555575723 *)
xor xmm1_0@uint64 xmm1_0 xmm0_0;
xor xmm1_1@uint64 xmm1_1 xmm0_1;
(* vpternlogq $0xd2,%xmm29,%xmm9,%xmm19            #! PC = 0x555555575727 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm19_0, xmm9_0, xmm29_0, table);
call vpternlogq64 (xmm19_1, xmm9_1, xmm29_1, table);
(* vpternlogq $0xd2,%xmm2,%xmm29,%xmm6             #! PC = 0x55555557572e *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm6_0, xmm29_0, xmm2_0, table);
call vpternlogq64 (xmm6_1, xmm29_1, xmm2_1, table);
(* vpxorq %xmm26,%xmm31,%xmm31                     #! PC = 0x555555575735 *)
xor xmm31_0@uint64 xmm31_0 xmm26_0;
xor xmm31_1@uint64 xmm31_1 xmm26_1;
(* vpternlogq $0xd2,%xmm8,%xmm27,%xmm2             #! PC = 0x55555557573b *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm2_0, xmm27_0, xmm8_0, table);
call vpternlogq64 (xmm2_1, xmm27_1, xmm8_1, table);
(* vpternlogq $0xd2,%xmm9,%xmm8,%xmm27             #! PC = 0x555555575742 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm27_0, xmm8_0, xmm9_0, table);
call vpternlogq64 (xmm27_1, xmm8_1, xmm9_1, table);
(* vmovdqa64 %xmm28,%xmm8                          #! PC = 0x555555575749 *)
mov xmm8_0 xmm28_0;
mov xmm8_1 xmm28_1;
(* vmovdqa %xmm13,%xmm9                            #! PC = 0x55555557574f *)
mov xmm9_0 xmm13_0;
mov xmm9_1 xmm13_1;
(* vprolq $0x1b,%xmm1,%xmm3                        #! PC = 0x555555575754 *)
rol xmm3_0 xmm1_0 0x1b;
rol xmm3_1 xmm1_1 0x1b;
(* vpternlogq $0xd2,%xmm14,%xmm17,%xmm9            #! PC = 0x55555557575b *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm9_0, xmm17_0, xmm14_0, table);
call vpternlogq64 (xmm9_1, xmm17_1, xmm14_1, table);
(* vprorq $0x1c,%xmm31,%xmm31                      #! PC = 0x555555575762 *)
ror xmm31_0 xmm31_0 0x1c;
ror xmm31_1 xmm31_1 0x1c;
(* vpternlogq $0xd2,%xmm17,%xmm13,%xmm8            #! PC = 0x555555575769 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm8_0, xmm13_0, xmm17_0, table);
call vpternlogq64 (xmm8_1, xmm13_1, xmm17_1, table);
(* vmovdqa %xmm7,-0x78(%rsp)                       #! EA = L0x7fffffffda70; PC = 0x555555575770 *)
mov L0x7fffffffda70 xmm7_0;
mov L0x7fffffffda78 xmm7_1;
(* vpternlogq $0xd2,%xmm23,%xmm14,%xmm17           #! PC = 0x555555575776 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm17_0, xmm14_0, xmm23_0, table);
call vpternlogq64 (xmm17_1, xmm14_1, xmm23_1, table);
(* vpxorq %xmm20,%xmm21,%xmm7                      #! PC = 0x55555557577d *)
xor xmm7_0@uint64 xmm21_0 xmm20_0;
xor xmm7_1@uint64 xmm21_1 xmm20_1;
(* vpternlogq $0xd2,%xmm28,%xmm23,%xmm14           #! PC = 0x555555575783 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm14_0, xmm23_0, xmm28_0, table);
call vpternlogq64 (xmm14_1, xmm23_1, xmm28_1, table);
(* vmovdqa %xmm2,-0x58(%rsp)                       #! EA = L0x7fffffffda90; PC = 0x55555557578a *)
mov L0x7fffffffda90 xmm2_0;
mov L0x7fffffffda98 xmm2_1;
(* vpternlogq $0xd2,%xmm13,%xmm28,%xmm23           #! PC = 0x555555575790 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm23_0, xmm28_0, xmm13_0, table);
call vpternlogq64 (xmm23_1, xmm28_1, xmm13_1, table);
(* vpxorq %xmm30,%xmm12,%xmm2                      #! PC = 0x555555575797 *)
xor xmm2_0@uint64 xmm12_0 xmm30_0;
xor xmm2_1@uint64 xmm12_1 xmm30_1;
(* vpxorq %xmm18,%xmm10,%xmm28                     #! PC = 0x55555557579d *)
xor xmm28_0@uint64 xmm10_0 xmm18_0;
xor xmm28_1@uint64 xmm10_1 xmm18_1;
(* vprolq $0xa,%xmm28,%xmm28                       #! PC = 0x5555555757a3 *)
rol xmm28_0 xmm28_0 0xa;
rol xmm28_1 xmm28_1 0xa;
(* vprolq $0xf,%xmm2,%xmm2                         #! PC = 0x5555555757aa *)
rol xmm2_0 xmm2_0 0xf;
rol xmm2_1 xmm2_1 0xf;
(* vprorq $0x8,%xmm7,%xmm7                         #! PC = 0x5555555757b1 *)
ror xmm7_0 xmm7_0 0x8;
ror xmm7_1 xmm7_1 0x8;
(* vmovdqa %xmm3,%xmm10                            #! PC = 0x5555555757b8 *)
mov xmm10_0 xmm3_0;
mov xmm10_1 xmm3_1;
(* vmovdqa64 %xmm31,%xmm1                          #! PC = 0x5555555757bc *)
mov xmm1_0 xmm31_0;
mov xmm1_1 xmm31_1;
(* vmovdqa %xmm9,-0x48(%rsp)                       #! EA = L0x7fffffffdaa0; PC = 0x5555555757c2 *)
mov L0x7fffffffdaa0 xmm9_0;
mov L0x7fffffffdaa8 xmm9_1;
(* vpternlogq $0xd2,%xmm28,%xmm31,%xmm10           #! PC = 0x5555555757c8 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm10_0, xmm31_0, xmm28_0, table);
call vpternlogq64 (xmm10_1, xmm31_1, xmm28_1, table);
(* vpternlogq $0xd2,%xmm2,%xmm28,%xmm1             #! PC = 0x5555555757cf *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm1_0, xmm28_0, xmm2_0, table);
call vpternlogq64 (xmm1_1, xmm28_1, xmm2_1, table);
(* vpternlogq $0xd2,%xmm7,%xmm2,%xmm28             #! PC = 0x5555555757d6 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm28_0, xmm2_0, xmm7_0, table);
call vpternlogq64 (xmm28_1, xmm2_1, xmm7_1, table);
(* vpternlogq $0xd2,%xmm3,%xmm7,%xmm2              #! PC = 0x5555555757dd *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm2_0, xmm7_0, xmm3_0, table);
call vpternlogq64 (xmm2_1, xmm7_1, xmm3_1, table);
(* vpternlogq $0xd2,%xmm31,%xmm3,%xmm7             #! PC = 0x5555555757e4 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm7_0, xmm3_0, xmm31_0, table);
call vpternlogq64 (xmm7_1, xmm3_1, xmm31_1, table);
(* vpxorq -0x18(%rsp),%xmm30,%xmm3                 #! EA = L0x7fffffffdad0; Value = 0x153d1e51a4362eb1; PC = 0x5555555757eb *)
xor xmm3_0@uint64 xmm30_0 L0x7fffffffdad0;
xor xmm3_1@uint64 xmm30_1 L0x7fffffffdad8;
(* vpxorq -0x8(%rsp),%xmm20,%xmm9                  #! EA = L0x7fffffffdae0; Value = 0x9a54677876c6d6e1; PC = 0x5555555757f6 *)
xor xmm9_0@uint64 xmm20_0 L0x7fffffffdae0;
xor xmm9_1@uint64 xmm20_1 L0x7fffffffdae8;
(* vpxorq 0x8(%rsp),%xmm0,%xmm20                   #! EA = L0x7fffffffdaf0; Value = 0xa1eab8cfb36eaa09; PC = 0x555555575801 *)
xor xmm20_0@uint64 xmm0_0 L0x7fffffffdaf0;
xor xmm20_1@uint64 xmm0_1 L0x7fffffffdaf8;
(* vprorq $0x2,%xmm3,%xmm3                         #! PC = 0x55555557580c *)
ror xmm3_0 xmm3_0 0x2;
ror xmm3_1 xmm3_1 0x2;
(* vprorq $0x9,%xmm9,%xmm9                         #! PC = 0x555555575813 *)
ror xmm9_0 xmm9_0 0x9;
ror xmm9_1 xmm9_1 0x9;
(* vprorq $0x19,%xmm20,%xmm20                      #! PC = 0x55555557581a *)
ror xmm20_0 xmm20_0 0x19;
ror xmm20_1 xmm20_1 0x19;
(* vpxorq %xmm26,%xmm15,%xmm15                     #! PC = 0x555555575821 *)
xor xmm15_0@uint64 xmm15_0 xmm26_0;
xor xmm15_1@uint64 xmm15_1 xmm26_1;
(* vprorq $0x17,%xmm15,%xmm15                      #! PC = 0x555555575827 *)
ror xmm15_0 xmm15_0 0x17;
ror xmm15_1 xmm15_1 0x17;
(* vpxorq %xmm18,%xmm11,%xmm18                     #! PC = 0x55555557582e *)
xor xmm18_0@uint64 xmm11_0 xmm18_0;
xor xmm18_1@uint64 xmm11_1 xmm18_1;
(* vprolq $0x2,%xmm18,%xmm18                       #! PC = 0x555555575834 *)
rol xmm18_0 xmm18_0 0x2;
rol xmm18_1 xmm18_1 0x2;
(* vmovdqa %xmm3,%xmm0                             #! PC = 0x55555557583b *)
mov xmm0_0 xmm3_0;
mov xmm0_1 xmm3_1;
(* vpternlogq $0xd2,%xmm20,%xmm9,%xmm0             #! PC = 0x55555557583f *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm0_0, xmm9_0, xmm20_0, table);
call vpternlogq64 (xmm0_1, xmm9_1, xmm20_1, table);
(* vmovdqa %xmm8,-0x28(%rsp)                       #! EA = L0x7fffffffdac0; PC = 0x555555575846 *)
mov L0x7fffffffdac0 xmm8_0;
mov L0x7fffffffdac8 xmm8_1;
(* vmovdqa %xmm0,%xmm8                             #! PC = 0x55555557584c *)
mov xmm8_0 xmm0_0;
mov xmm8_1 xmm0_1;
(* vmovdqa %xmm9,%xmm0                             #! PC = 0x555555575850 *)
mov xmm0_0 xmm9_0;
mov xmm0_1 xmm9_1;
(* vpternlogq $0xd2,%xmm15,%xmm20,%xmm0            #! PC = 0x555555575854 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm0_0, xmm20_0, xmm15_0, table);
call vpternlogq64 (xmm0_1, xmm20_1, xmm15_1, table);
(* vmovdqa64 %xmm24,-0x68(%rsp)                    #! EA = L0x7fffffffda80; PC = 0x55555557585b *)
mov L0x7fffffffda80 xmm24_0;
mov L0x7fffffffda88 xmm24_1;
(* vpternlogq $0xd2,%xmm18,%xmm15,%xmm20           #! PC = 0x555555575866 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm20_0, xmm15_0, xmm18_0, table);
call vpternlogq64 (xmm20_1, xmm15_1, xmm18_1, table);
(* vmovdqa %xmm10,-0x38(%rsp)                      #! EA = L0x7fffffffdab0; PC = 0x55555557586d *)
mov L0x7fffffffdab0 xmm10_0;
mov L0x7fffffffdab8 xmm10_1;
(* vpternlogq $0xd2,%xmm3,%xmm18,%xmm15            #! PC = 0x555555575873 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm15_0, xmm18_0, xmm3_0, table);
call vpternlogq64 (xmm15_1, xmm18_1, xmm3_1, table);
(* vmovdqa64 %xmm0,%xmm24                          #! PC = 0x55555557587a *)
mov xmm24_0 xmm0_0;
mov xmm24_1 xmm0_1;
(* vpternlogq $0xd2,%xmm9,%xmm3,%xmm18             #! PC = 0x555555575880 *)
mov table 0xd2@uint8;
call vpternlogq64 (xmm18_0, xmm3_0, xmm9_0, table);
call vpternlogq64 (xmm18_1, xmm3_1, xmm9_1, table);
(* movabs $0x8000000000008080,%rbp                 #! PC = 0x555555575887 *)
mov rbp 0x8000000000008080@uint64;
(* mov    $0x80000001,%r12d                        #! PC = 0x555555575891 *)
mov r12 0x80000001@uint64;
(* movabs $0x8000000080008008,%r14                 #! PC = 0x555555575897 *)
mov r14 0x8000000080008008@uint64;
(* #jne    0x555555575998 <KeccakP1600times2_PermuteAll_24rounds+9992>#! PC = 0x5555555758a5 *)
#jne    0x555555575998 <KeccakP1600times2_PermuteAll_24rounds+9992>#! 0x5555555758a5 = 0x5555555758a5;
(* vmovdqa %xmm5,0x10(%rax)                        #! EA = L0x7fffffffdb90; PC = 0x5555555758ab *)
mov L0x7fffffffdb90 xmm5_0;
mov L0x7fffffffdb98 xmm5_1;
(* vmovdqa -0x78(%rsp),%xmm5                       #! EA = L0x7fffffffda70; Value = 0xf9346e6c0c7b0acb; PC = 0x5555555758b0 *)
mov xmm5_0 L0x7fffffffda70;
mov xmm5_1 L0x7fffffffda78;
(* vmovdqa64 -0x68(%rsp),%xmm24                    #! EA = L0x7fffffffda80; Value = 0xc9655c6075029b86; PC = 0x5555555758b6 *)
mov xmm24_0 L0x7fffffffda80;
mov xmm24_1 L0x7fffffffda88;
(* vmovdqa -0x48(%rsp),%xmm9                       #! EA = L0x7fffffffdaa0; Value = 0xff7b0b0b37cddf13; PC = 0x5555555758c1 *)
mov xmm9_0 L0x7fffffffdaa0;
mov xmm9_1 L0x7fffffffdaa8;
(* vmovdqa %xmm5,0x40(%rax)                        #! EA = L0x7fffffffdbc0; PC = 0x5555555758c7 *)
mov L0x7fffffffdbc0 xmm5_0;
mov L0x7fffffffdbc8 xmm5_1;
(* vmovdqa %xmm8,%xmm13                            #! PC = 0x5555555758cc *)
mov xmm13_0 xmm8_0;
mov xmm13_1 xmm8_1;
(* vmovdqa -0x58(%rsp),%xmm5                       #! EA = L0x7fffffffda90; Value = 0xf1e126bcf190e73d; PC = 0x5555555758d1 *)
mov xmm5_0 L0x7fffffffda90;
mov xmm5_1 L0x7fffffffda98;
(* vmovdqa -0x28(%rsp),%xmm8                       #! EA = L0x7fffffffdac0; Value = 0x99658a1f78cd5b35; PC = 0x5555555758d7 *)
mov xmm8_0 L0x7fffffffdac0;
mov xmm8_1 L0x7fffffffdac8;
(* vmovdqa64 %xmm22,(%rax)                         #! EA = L0x7fffffffdb80; PC = 0x5555555758dd *)
mov L0x7fffffffdb80 xmm22_0;
mov L0x7fffffffdb88 xmm22_1;
(* vmovdqa64 %xmm25,0x20(%rax)                     #! EA = L0x7fffffffdba0; PC = 0x5555555758e3 *)
mov L0x7fffffffdba0 xmm25_0;
mov L0x7fffffffdba8 xmm25_1;
(* vmovdqa %xmm4,0x30(%rax)                        #! EA = L0x7fffffffdbb0; PC = 0x5555555758ea *)
mov L0x7fffffffdbb0 xmm4_0;
mov L0x7fffffffdbb8 xmm4_1;
(* vmovdqa64 %xmm19,0x50(%rax)                     #! EA = L0x7fffffffdbd0; PC = 0x5555555758ef *)
mov L0x7fffffffdbd0 xmm19_0;
mov L0x7fffffffdbd8 xmm19_1;
(* vmovdqa %xmm6,0x60(%rax)                        #! EA = L0x7fffffffdbe0; PC = 0x5555555758f6 *)
mov L0x7fffffffdbe0 xmm6_0;
mov L0x7fffffffdbe8 xmm6_1;
(* vmovdqa64 %xmm24,0x70(%rax)                     #! EA = L0x7fffffffdbf0; PC = 0x5555555758fb *)
mov L0x7fffffffdbf0 xmm24_0;
mov L0x7fffffffdbf8 xmm24_1;
(* vmovdqa %xmm5,0x80(%rax)                        #! EA = L0x7fffffffdc00; PC = 0x555555575902 *)
mov L0x7fffffffdc00 xmm5_0;
mov L0x7fffffffdc08 xmm5_1;
(* vmovdqa64 %xmm27,0x90(%rax)                     #! EA = L0x7fffffffdc10; PC = 0x55555557590a *)
mov L0x7fffffffdc10 xmm27_0;
mov L0x7fffffffdc18 xmm27_1;
(* vmovdqa %xmm8,0xa0(%rax)                        #! EA = L0x7fffffffdc20; PC = 0x555555575911 *)
mov L0x7fffffffdc20 xmm8_0;
mov L0x7fffffffdc28 xmm8_1;
(* vmovdqa %xmm9,0xb0(%rax)                        #! EA = L0x7fffffffdc30; PC = 0x555555575919 *)
mov L0x7fffffffdc30 xmm9_0;
mov L0x7fffffffdc38 xmm9_1;
(* vmovdqa64 %xmm17,0xc0(%rax)                     #! EA = L0x7fffffffdc40; PC = 0x555555575921 *)
mov L0x7fffffffdc40 xmm17_0;
mov L0x7fffffffdc48 xmm17_1;
(* vmovdqa %xmm14,0xd0(%rax)                       #! EA = L0x7fffffffdc50; PC = 0x555555575928 *)
mov L0x7fffffffdc50 xmm14_0;
mov L0x7fffffffdc58 xmm14_1;
(* vmovdqa64 %xmm23,0xe0(%rax)                     #! EA = L0x7fffffffdc60; PC = 0x555555575930 *)
mov L0x7fffffffdc60 xmm23_0;
mov L0x7fffffffdc68 xmm23_1;
(* vmovdqa %xmm10,0xf0(%rax)                       #! EA = L0x7fffffffdc70; PC = 0x555555575937 *)
mov L0x7fffffffdc70 xmm10_0;
mov L0x7fffffffdc78 xmm10_1;
(* vmovdqa %xmm1,0x100(%rax)                       #! EA = L0x7fffffffdc80; PC = 0x55555557593f *)
mov L0x7fffffffdc80 xmm1_0;
mov L0x7fffffffdc88 xmm1_1;
(* vmovdqa64 %xmm28,0x110(%rax)                    #! EA = L0x7fffffffdc90; PC = 0x555555575947 *)
mov L0x7fffffffdc90 xmm28_0;
mov L0x7fffffffdc98 xmm28_1;
(* vmovdqa %xmm2,0x120(%rax)                       #! EA = L0x7fffffffdca0; PC = 0x55555557594e *)
mov L0x7fffffffdca0 xmm2_0;
mov L0x7fffffffdca8 xmm2_1;
(* vmovdqa %xmm7,0x130(%rax)                       #! EA = L0x7fffffffdcb0; PC = 0x555555575956 *)
mov L0x7fffffffdcb0 xmm7_0;
mov L0x7fffffffdcb8 xmm7_1;
(* vmovdqa %xmm13,0x140(%rax)                      #! EA = L0x7fffffffdcc0; PC = 0x55555557595e *)
mov L0x7fffffffdcc0 xmm13_0;
mov L0x7fffffffdcc8 xmm13_1;
(* vmovdqa %xmm0,0x150(%rax)                       #! EA = L0x7fffffffdcd0; PC = 0x555555575966 *)
mov L0x7fffffffdcd0 xmm0_0;
mov L0x7fffffffdcd8 xmm0_1;
(* vmovdqa64 %xmm20,0x160(%rax)                    #! EA = L0x7fffffffdce0; PC = 0x55555557596e *)
mov L0x7fffffffdce0 xmm20_0;
mov L0x7fffffffdce8 xmm20_1;
(* vmovdqa %xmm15,0x170(%rax)                      #! EA = L0x7fffffffdcf0; PC = 0x555555575975 *)
mov L0x7fffffffdcf0 xmm15_0;
mov L0x7fffffffdcf8 xmm15_1;
(* vmovdqa64 %xmm18,0x180(%rax)                    #! EA = L0x7fffffffdd00; PC = 0x55555557597d *)
mov L0x7fffffffdd00 xmm18_0;
mov L0x7fffffffdd08 xmm18_1;
(* add    $0x20,%rsp                               #! PC = 0x555555575984 *)
adds carry rsp rsp 0x20@uint64;
(* #! <- SP = 0x7fffffffdb38 *)
#! 0x7fffffffdb38 = 0x7fffffffdb38;
(* #ret                                            #! PC = 0x555555575992 *)
#ret                                            #! 0x555555575992 = 0x555555575992;

(* ===== Outputs ===== *)

mov a00 L0x7fffffffdb80;
mov b00 L0x7fffffffdb88;
mov a01 L0x7fffffffdb90;
mov b01 L0x7fffffffdb98;
mov a02 L0x7fffffffdba0;
mov b02 L0x7fffffffdba8;
mov a03 L0x7fffffffdbb0;
mov b03 L0x7fffffffdbb8;
mov a04 L0x7fffffffdbc0;
mov b04 L0x7fffffffdbc8;
mov a05 L0x7fffffffdbd0;
mov b05 L0x7fffffffdbd8;
mov a06 L0x7fffffffdbe0;
mov b06 L0x7fffffffdbe8;
mov a07 L0x7fffffffdbf0;
mov b07 L0x7fffffffdbf8;
mov a08 L0x7fffffffdc00;
mov b08 L0x7fffffffdc08;
mov a09 L0x7fffffffdc10;
mov b09 L0x7fffffffdc18;
mov a10 L0x7fffffffdc20;
mov b10 L0x7fffffffdc28;
mov a11 L0x7fffffffdc30;
mov b11 L0x7fffffffdc38;
mov a12 L0x7fffffffdc40;
mov b12 L0x7fffffffdc48;
mov a13 L0x7fffffffdc50;
mov b13 L0x7fffffffdc58;
mov a14 L0x7fffffffdc60;
mov b14 L0x7fffffffdc68;
mov a15 L0x7fffffffdc70;
mov b15 L0x7fffffffdc78;
mov a16 L0x7fffffffdc80;
mov b16 L0x7fffffffdc88;
mov a17 L0x7fffffffdc90;
mov b17 L0x7fffffffdc98;
mov a18 L0x7fffffffdca0;
mov b18 L0x7fffffffdca8;
mov a19 L0x7fffffffdcb0;
mov b19 L0x7fffffffdcb8;
mov a20 L0x7fffffffdcc0;
mov b20 L0x7fffffffdcc8;
mov a21 L0x7fffffffdcd0;
mov b21 L0x7fffffffdcd8;
mov a22 L0x7fffffffdce0;
mov b22 L0x7fffffffdce8;
mov a23 L0x7fffffffdcf0;
mov b23 L0x7fffffffdcf8;
mov a24 L0x7fffffffdd00;
mov b24 L0x7fffffffdd08;

{
  true
  &&
  true
}

